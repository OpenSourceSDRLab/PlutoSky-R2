"""B210 wire-compatible receiver with sequence-based assembly and visible status."""
import os
import json
import time
import zlib
import numpy as np
from gnuradio import gr


class blk_cal_error(gr.sync_block):
    def __init__(self, preamble=[0xac,0xdd,0xa4,0xe2,0xf2,0x8c,0x20,0xfc],
                 payload_data_len=36, risks=0.1, repet=3,
                 file_name='received_video_checked.mp4', debug=False):
        gr.sync_block.__init__(self,name='PlutoSky R2 File Receiver',
                               in_sig=[np.int8],out_sig=[np.float32])
        self.preamble=list(preamble)
        self.payload_data_len=int(payload_data_len)
        self.repet=int(repet)
        self.risks=float(risks)
        self.debug=debug
        self._file_name=file_name
        self._pre=np.unpackbits(np.frombuffer(bytes(preamble),dtype=np.uint8))
        self._pattern=self._pre.astype(np.int16)*2-1
        self._pre_bits=len(self._pre)
        self._frame_bits=(len(preamble)+(4+self.payload_data_len)*self.repet)*8
        self._header_bits=4*8*self.repet
        self._log=None
        self._reset()

    def _reset(self):
        self._buffer=np.empty(0,dtype=np.uint8)
        self._metadata=[]
        self._frames={}
        self.file_info_len=0
        self.file_info_crc=0
        self.encoded_received=0
        self.file_complete=False
        self.file_crc_ok=False
        self.encoded_crc=0
        self.total_file_frame_num=0
        self.duplicates=0
        self.invalid_frames=0
        self.max_sequence=1
        self.expected_frames=0
        self.crc_attempts=0
        self.training_frames=0
        self._state='waiting'
        self._last_status=0.0
        self._last_data=0.0
        self._status='Waiting for debug frames and file header'

    def start(self):
        self._reset()
        path=self._file_name
        if not os.path.isabs(path):
            path=os.path.join(os.path.dirname(os.path.abspath(__file__)),path)
        self._output_path=os.path.abspath(path)
        self._log=open(self._output_path+'.status.jsonl','w',encoding='utf-8')
        self._publish('start',True)
        return True

    def stop(self):
        self._publish('stop',True)
        if self._log:
            self._log.close()
            self._log=None
        return True

    def get_status(self):
        return self._status

    def _progress(self):
        if self.file_complete and self.file_crc_ok:return 100.0
        if not self.file_info_len:return 0.0
        return min(99.9,100.0*self.encoded_received/self.file_info_len)

    def _publish(self,event='receiving',force=False):
        now=time.monotonic()
        if not force and now-self._last_status<1.0:return
        self._last_status=now
        gaps=max(0,self.max_sequence-1-len(self._frames))
        remaining=max(0,self.expected_frames-len(self._frames))
        if self._state=='complete':label='Reception complete, CRC OK'
        elif self._state=='crc_failed':label='CRC failed, send again from TX'
        elif self._state=='save_failed':label='CRC OK but saving failed: close the file in other programs and send again'
        elif self._state=='receiving':
            idle=self._last_data and now-self._last_data>3.0
            label='No new file frames yet' if idle else 'Receiving'
        elif self._metadata:label='File header received, waiting for data frames'
        elif self.training_frames:label='Debug frames OK, waiting for the file'
        else:label='Waiting for debug frames and file header'
        self._status=(f'{label} | Frames {len(self._frames)}/{self.expected_frames} '
                      f'| Sequence gaps {gaps} | Missing {remaining} | Duplicates {self.duplicates}')
        record=dict(event=event,state=self._state,progress=round(self._progress(),6),
                    encoded_received=self.encoded_received,encoded_total=self.file_info_len,
                    unique_frames=len(self._frames),expected_frames=self.expected_frames,
                    missing_so_far=gaps,not_received_frames=remaining,duplicate_frames=self.duplicates,
                    invalid_frames=self.invalid_frames,training_frames=self.training_frames,
                    crc_ok=self.file_crc_ok,crc_attempts=self.crc_attempts,
                    expected_crc32=f'{self.file_info_crc:08x}',received_crc32=f'{self.encoded_crc:08x}',
                    output_file=self._output_path)
        if self._log:
            self._log.write(json.dumps(record,ensure_ascii=False)+'\n')
            self._log.flush()
        if force:print('[QPSK RX] '+self._status,flush=True)

    def _majority(self,bits,unit_bytes):
        a=bits.reshape(self.repet,unit_bytes*8)
        return np.packbits((a.sum(axis=0)*2>=self.repet).astype(np.uint8)).tobytes()

    def _commit_metadata(self):
        if not self._metadata:return False
        # Vote across the repeated metadata frames, without changing the wire format.
        votes=np.stack([np.unpackbits(np.frombuffer(x,dtype=np.uint8)) for x in self._metadata])
        raw=np.packbits((votes.sum(axis=0)*2>=len(votes)).astype(np.uint8)).tobytes()
        self._metadata=[]
        size=int.from_bytes(raw[:4],'big')
        crc=int.from_bytes(raw[4:8],'big')
        if not 0<size<=512*1024*1024:
            self.invalid_frames+=1
            return False
        self._frames={}
        self.file_info_len=size
        self.file_info_crc=crc
        self.expected_frames=(size+self.payload_data_len-1)//self.payload_data_len
        self.encoded_received=0
        self.max_sequence=1
        self.file_complete=False
        self.file_crc_ok=False
        self.encoded_crc=0
        self.crc_attempts=0
        self.duplicates=0
        self._state='receiving'
        self._publish('file_header',True)
        return True

    @staticmethod
    def _decode_zero_runs(encoded):
        out=bytearray()
        i=0
        while i<len(encoded):
            value=encoded[i];i+=1
            if value:
                out.append(value)
            else:
                if i==len(encoded):raise ValueError('incomplete zero run')
                out.extend(bytes(encoded[i]));i+=1
        return bytes(out)

    def _finish(self):
        self.crc_attempts+=1
        encoded=b''.join(self._frames[n] for n in range(2,self.expected_frames+2))
        self.encoded_crc=zlib.crc32(encoded)&0xffffffff
        if self.encoded_crc!=self.file_info_crc:
            self.file_complete=False
            self.file_crc_ok=False
            self._state='crc_failed'
            self._publish('crc_failed',True)
            return
        try:
            decoded=self._decode_zero_runs(encoded)
        except ValueError:
            self._state='crc_failed'
            self._publish('invalid_zero_run',True)
            return
        temporary=self._output_path+'.part'
        try:
            with open(temporary,'wb') as f:f.write(decoded)
            os.replace(temporary,self._output_path)
        except OSError as exc:
            self._state='save_failed'
            self._publish('save_failed',True)
            print('[QPSK RX] '+str(exc),flush=True)
            return
        self.file_crc_ok=True
        self.file_complete=True
        self._state='complete'
        self._publish('complete',True)

    def _handle_frame(self,bits):
        a=self._pre_bits
        sn=int.from_bytes(self._majority(bits[a:a+self._header_bits],4),'big')
        payload_bits=bits[a+self._header_bits:]
        if sn==0:
            self.training_frames+=1
            return True
        if sn==1:
            raw=np.packbits(payload_bits[:64]).tobytes()
            size=int.from_bytes(raw[:4],'big')
            if not 0<size<=512*1024*1024:
                self.invalid_frames+=1
                return False
            self._metadata.append(raw)
            self._metadata=self._metadata[-16:]
            return True
        if self._metadata:self._commit_metadata()
        if not self.file_info_len:
            return True # Wait for a file header; never guess a length.
        if not 2<=sn<self.expected_frames+2:
            self.invalid_frames+=1
            return False
        if self.file_complete:
            return True
        payload=self._majority(payload_bits,self.payload_data_len)
        offset=(sn-2)*self.payload_data_len
        payload=payload[:min(self.payload_data_len,self.file_info_len-offset)]
        old=self._frames.get(sn)
        if old is not None:
            self.duplicates+=1
            if self._state!='crc_failed' or old==payload:
                return True
            # A later correct copy can repair a failed CRC without counting new bytes.
        else:
            self.encoded_received+=len(payload)
        self._frames[sn]=payload
        self.total_file_frame_num=len(self._frames)
        self.max_sequence=max(self.max_sequence,sn)
        self._last_data=time.monotonic()
        if len(self._frames)==self.expected_frames:self._finish()
        return True

    def work(self,input_items,output_items):
        incoming=np.asarray(input_items[0],dtype=np.uint8)&1
        self._buffer=np.concatenate((self._buffer,incoming))
        offset=0
        while len(self._buffer)-offset>=self._frame_bits:
            data=self._buffer[offset:]
            # C-level correlation avoids a Python loop over every bit in noise.
            signs=data.astype(np.int16)*2-1
            scores=np.correlate(signs,self._pattern,mode='valid')
            candidates=np.flatnonzero(scores>self._pre_bits*(1-2*self.risks))
            if not len(candidates):
                offset=len(self._buffer)-self._pre_bits+1
                break
            start=offset+int(candidates[0])
            if len(self._buffer)-start<self._frame_bits:
                offset=start
                break
            valid=self._handle_frame(self._buffer[start:start+self._frame_bits])
            offset=start+(self._frame_bits if valid else 1)
        if offset:self._buffer=self._buffer[offset:]
        self._publish()
        output_items[0][:]=self._progress()
        return len(output_items[0])
