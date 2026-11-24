#!/usr/bin/env python
# coding=utf-8
"""
Embedded Python Blocks:

Each time this file is saved, GRC will instantiate the first class it finds
to get ports and parameters of your block. The arguments to __init__  will
be the parameters. All of them are required to have default values!
"""

import os
import numpy as np
from gnuradio import gr
import time
import zlib
import pmt


class epb_blk(gr.sync_block):  # other base classes are basic_block, decim_block, interp_block
    """Embedded Python Block example - a simple multiply const"""

    def __init__(self, file_path="", payload_data_len=36, preamble=[0xac, 0xdd, 0xa4, 0xe2, 0xf2, 0x8c, 0x20, 0xfc], n_zero_frame=3, repet=3):  # only default arguments here
        """arguments to this function show up as parameters in GRC"""
        gr.sync_block.__init__(
                self,
                name='MyFileSink',   # will show up in GRC
                in_sig=None,
                out_sig=[np.uint8]
                )
                
        # if an attribute with the same name as a parameter is found,
        # a callback is registered (properties work, too).
        self.in_port_name = 'test/transfer'
        self.message_port_register_in(pmt.intern(self.in_port_name))
        self.set_msg_handler(pmt.intern(self.in_port_name), self.handle_msg)
        
        self.file_data = []
        self.test_data = []
        self.current_position = 0
        self.test_current_position = 0
        self.test = 1
        
        # TEST MODE DATAS: build the debug frames
        self.test_data.extend(preamble)
        self.test_data.extend([0, 0, 0, 0]*repet)
        self.test_data.extend([(x&0xFF) for x in range(payload_data_len)]*repet)
        self.test_data_len = len(self.test_data)
        
        self._file_path = file_path
        self._build_preamble = list(preamble)
        self._build_payload_len = payload_data_len
        self._build_n_zero_frame = n_zero_frame
        self._build_repet = repet
        self.file_data_len = 0

    def start(self):
        file_path = self._file_path
        if not os.path.isabs(file_path):
            file_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), file_path)
        preamble = self._build_preamble
        payload_data_len = self._build_payload_len
        n_zero_frame = self._build_n_zero_frame
        repet = self._build_repet
        self.file_data = []
        self.current_position = 0
        # SEND MODE DATAS: build the file data frames
        with open(file_path, 'rb') as file:
            file_data = file.read()
            file_data_len = len(file_data)
            file_data_crc32 = zlib.crc32(file_data) & 0xFFFFFFFF
            file_data_pos = 0
            
            # 1) run-length encode the zeros in file_data (n consecutive zeros become 0 + the number of zeros, when the number > 0xff)
            tmp_data = []
            zero_num = 0
            for d in file_data:
                if d == 0:
                    zero_num += 1
                    if zero_num > 0xff:
                        tmp_data.append(0x00)
                        tmp_data.append(0xff)
                        zero_num -= 0xff
                else:
                    if zero_num == 0:
                        tmp_data.append(d) 
                    else:
                        tmp_data.append(0)
                        tmp_data.append(zero_num)
                        tmp_data.append(d) 
                        zero_num = 0

            if zero_num:
                tmp_data.extend([0, zero_num])

            tmp_data_len = len(tmp_data)    
            tmp_data_crc32 =  zlib.crc32(bytes(tmp_data)) & 0xFFFFFFFF

            tmp_data_pos = 0

            frame_num = 1
            # 1) fill in the header (file header)
            # n_zero_frame
            # leading empty frames, so that the receiver can lock onto the start of the file
            # preamble + [4bytes frame_num]*repet + [4bytes total_data_len + 4bytes total_data_crc32 + [0x55]*(payload_data_len*repet-8)]
            for idx in range(n_zero_frame):
                self.file_data.extend(preamble)
                self.file_data.extend([(frame_num>>24) & 0xFF, (frame_num>>16) & 0xFF, (frame_num>>8) & 0xFF, (frame_num>>0) & 0xFF]*repet)
                self.file_data.extend([(tmp_data_len>>24) & 0xFF, (tmp_data_len>>16) & 0xFF, (tmp_data_len>>8) & 0xFF, (tmp_data_len>>0) & 0xFF, (tmp_data_crc32>>24) & 0xFF, (tmp_data_crc32>>16) & 0xFF, (tmp_data_crc32>>8) & 0xFF, (tmp_data_crc32>>0) & 0xFF])
                self.file_data.extend([0x55]*(payload_data_len*repet-8))

            frame_num = 2
            # 2) n frames
            left = tmp_data_len
            read = 0
            while left > 0:
                if left >= payload_data_len:
                    self.file_data.extend(preamble)
                    self.file_data.extend([(frame_num>>24) & 0xFF, (frame_num>>16) & 0xFF, (frame_num>>8) & 0xFF, (frame_num>>0) & 0xFF]*repet)
                    self.file_data.extend(tmp_data[read:read+payload_data_len]*repet)
                    if frame_num < 10:
                        self.file_data.extend(preamble)
                        self.file_data.extend([(frame_num>>24) & 0xFF, (frame_num>>16) & 0xFF, (frame_num>>8) & 0xFF, (frame_num>>0) & 0xFF]*repet)
                        self.file_data.extend(tmp_data[read:read+payload_data_len]*repet)
                    left -= payload_data_len
                else:# remainder: pad with zeros to form 1 frame
                    self.file_data.extend(preamble)
                    self.file_data.extend([(frame_num>>24) & 0xFF, (frame_num>>16) & 0xFF, (frame_num>>8) & 0xFF, (frame_num>>0) & 0xFF]*repet)
                    # self.file_data.extend(tmp_data[read:read+left]*repet)
                    # self.file_data.extend([0]*((payload_data_len-left)*repet))
                    segment = tmp_data[read:read+left] + [0] * (payload_data_len - left)
                    self.file_data.extend(segment * repet)
                    left = 0
               
                frame_num += 1
                read += payload_data_len
                # print(f"left:{left}, frame_num:{frame_num}, read:{read}, file_data_len:{len(self.file_data)}")
            self.file_data_len = len(self.file_data)
            print("total file data len:%d->%d, pre_file_frame_num:%d, frame num:%d" %(tmp_data_len, self.file_data_len, n_zero_frame, frame_num))

        return True

    def handle_msg(self, msg):
        x = pmt.to_python(msg)[1]
        if x == 1:
            self.current_position = 0
            self.test = 0
        else:
            self.test = 1
        #print(pmt.to_python(msg)[1])
         
    def work(self, input_items, output_items):
        # Check if there is enough data left in the file
        o_len = len(output_items[0])
        #print(">>>>>",o_len)
        if self.test == 1:
            for idx in range(0,o_len,self.test_data_len):
                left = o_len - idx
                if left >= self.test_data_len:
                    output_items[0][idx:idx+self.test_data_len] = (self.test_data*2)[self.test_current_position:self.test_current_position+self.test_data_len]
                    self.test_current_position += self.test_data_len
                    self.test_current_position %= self.test_data_len
                else:
                    #print(left)
                    output_items[0][idx:idx+left] = (self.test_data*2)[self.test_current_position:self.test_current_position+left]
                    self.test_current_position += left
                    self.test_current_position %= self.test_data_len
        else:
            left = self.file_data_len - self.current_position
            #print(o_len,left)
            if left >= o_len:
                output_items[0][0:o_len] = self.file_data[self.current_position:self.current_position+o_len]
                self.current_position += o_len
            elif left > 0:
                output_items[0][0:left] = self.file_data[self.current_position:self.current_position+left]
                output_items[0][left:] = [0]*(o_len-left)
                self.current_position += left
                self.test = 1
            else:
                self.test = 1

        return len(output_items[0]) 
