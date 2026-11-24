#!/usr/bin/env python3
# -*- coding: utf-8 -*-

#
# SPDX-License-Identifier: GPL-3.0
#
# GNU Radio Python Flow Graph
# Title: Live Video Receiver B
# GNU Radio version: 3.10.12.0

from PyQt5 import Qt
from gnuradio import qtgui
from PyQt5 import QtCore
from gnuradio import blocks
from gnuradio import digital
from gnuradio import gr
from gnuradio.filter import firdes
from gnuradio.fft import window
import sys
import signal
from PyQt5 import Qt
from argparse import ArgumentParser
from gnuradio.eng_arg import eng_float, intx
from gnuradio import eng_notation
from gnuradio import iio
import r2_camera_only_rx_epy_block_0 as epy_block_0  # embedded python block
import sip
import threading


def snipfcn_reduce_video_buffering(self):
    # Keep scheduler batches small; Windows rounds byte buffers to at least 64 KiB.
    for name in ('blocks_char_to_float_0_0_1_0','blocks_unpack_k_bits_bb_0',
                 'blocks_throttle2_1','channels_channel_model_0',
                 'digital_pfb_clock_sync_xxx_0','digital_linear_equalizer_0',
                 'digital_costas_loop_cc_0','digital_constellation_decoder_cb_0',
                 'digital_diff_decoder_bb_0','digital_map_bb_0'):
        block=getattr(self,name,None)
        if block is not None:
            if hasattr(block,'set_max_noutput_items'):block.set_max_noutput_items(8192)
    modulator=getattr(self,'digital_constellation_modulator_0',None)
    if modulator is not None:
        for name in ('bytes2chunks','symbol_mapper','diffenc','chunks2symbols','rrc_filter'):
            block=getattr(modulator,name,None)
            if block is not None:
                block.set_max_noutput_items(8192)
    source=getattr(self,'epy_block_1',None)
    if source is not None:
        consumer=getattr(self,'r2_sink',None)
        if consumer is None:consumer=getattr(self,'blocks_throttle2_1',None)
        if consumer is not None:
            samples_per_byte=4*float(self.sps)
            source._consumed_bytes=lambda: consumer.nitems_read(0)/samples_per_byte


def snippets_main_after_init(tb):
    snipfcn_reduce_video_buffering(tb)

class r2_camera_only_rx(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "Live Video Receiver B", catch_exceptions=True)
        Qt.QWidget.__init__(self)
        self.setWindowTitle("Live Video Receiver B")
        qtgui.util.check_set_qss()
        try:
            self.setWindowIcon(Qt.QIcon.fromTheme('gnuradio-grc'))
        except BaseException as exc:
            print(f"Qt GUI: Could not set Icon: {str(exc)}", file=sys.stderr)
        self.top_scroll_layout = Qt.QVBoxLayout()
        self.setLayout(self.top_scroll_layout)
        self.top_scroll = Qt.QScrollArea()
        self.top_scroll.setFrameStyle(Qt.QFrame.NoFrame)
        self.top_scroll_layout.addWidget(self.top_scroll)
        self.top_scroll.setWidgetResizable(True)
        self.top_widget = Qt.QWidget()
        self.top_scroll.setWidget(self.top_widget)
        self.top_layout = Qt.QVBoxLayout(self.top_widget)
        self.top_grid_layout = Qt.QGridLayout()
        self.top_layout.addLayout(self.top_grid_layout)

        self.settings = Qt.QSettings("gnuradio/flowgraphs", "r2_camera_only_rx")

        try:
            geometry = self.settings.value("geometry")
            if geometry:
                self.restoreGeometry(geometry)
        except BaseException as exc:
            print(f"Qt GUI: Could not restore geometry: {str(exc)}", file=sys.stderr)
        self.flowgraph_started = threading.Event()

        ##################################################
        # Variables
        ##################################################
        self.bit_rate = bit_rate = 2048000
        self.symbol_rate = symbol_rate = bit_rate/2
        self.sps = sps = 4
        self.qpsk = qpsk = digital.constellation_rect([0.707+0.707j, -0.707+0.707j, -0.707-0.707j, 0.707-0.707j], [0, 1, 2, 3],
        4, 2, 2, 1, 1).base()
        self.nfilts = nfilts = 32
        self.variable_adaptive_algorithm = variable_adaptive_algorithm = digital.adaptive_algorithm_cma( qpsk, 0.001, 4).base()
        self.uhd_gain = uhd_gain = 35
        self.samp_rate_after_constellation = samp_rate_after_constellation = int(symbol_rate*sps)
        self.rx_uri = rx_uri = 'ip:192.168.2.1'
        self.rrc_taps = rrc_taps = firdes.root_raised_cosine(nfilts, nfilts, 1.0/float(sps), 0.35, 11*sps*nfilts)
        self.phase_bw = phase_bw = 0.0628
        self.one_frame_data = one_frame_data = 796
        self.freq = freq = 2.0e9
        self.excess_bw = excess_bw = 0.35
        self.bandwidth = bandwidth = int(symbol_rate*1.2)

        ##################################################
        # Blocks
        ##################################################

        self._uhd_gain_range = qtgui.Range(0, 70, 1, 35, 200)
        self._uhd_gain_win = qtgui.RangeWidget(self._uhd_gain_range, self.set_uhd_gain, "RX Gain (dB)", "counter_slider", int, QtCore.Qt.Horizontal)
        self.top_grid_layout.addWidget(self._uhd_gain_win, 0, 0, 1, 1)
        for r in range(0, 1):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(0, 1):
            self.top_grid_layout.setColumnStretch(c, 1)
        self.monitor_tabs = Qt.QTabWidget()
        self.monitor_tabs_widget_0 = Qt.QWidget()
        self.monitor_tabs_layout_0 = Qt.QBoxLayout(Qt.QBoxLayout.TopToBottom, self.monitor_tabs_widget_0)
        self.monitor_tabs_grid_layout_0 = Qt.QGridLayout()
        self.monitor_tabs_layout_0.addLayout(self.monitor_tabs_grid_layout_0)
        self.monitor_tabs.addTab(self.monitor_tabs_widget_0, 'Live video')
        self.monitor_tabs_widget_1 = Qt.QWidget()
        self.monitor_tabs_layout_1 = Qt.QBoxLayout(Qt.QBoxLayout.TopToBottom, self.monitor_tabs_widget_1)
        self.monitor_tabs_grid_layout_1 = Qt.QGridLayout()
        self.monitor_tabs_layout_1.addLayout(self.monitor_tabs_grid_layout_1)
        self.monitor_tabs.addTab(self.monitor_tabs_widget_1, 'Receiver constellations (4 stages)')
        self.monitor_tabs_widget_2 = Qt.QWidget()
        self.monitor_tabs_layout_2 = Qt.QBoxLayout(Qt.QBoxLayout.TopToBottom, self.monitor_tabs_widget_2)
        self.monitor_tabs_grid_layout_2 = Qt.QGridLayout()
        self.monitor_tabs_layout_2.addLayout(self.monitor_tabs_grid_layout_2)
        self.monitor_tabs.addTab(self.monitor_tabs_widget_2, 'Received spectrum and time domain')
        self.top_grid_layout.addWidget(self.monitor_tabs, 1, 0, 1, 4)
        for r in range(1, 2):
            self.top_grid_layout.setRowStretch(r, 1)
        for c in range(0, 4):
            self.top_grid_layout.setColumnStretch(c, 1)
        self.rx_iq_time = qtgui.time_sink_c(
            2048, #size
            samp_rate_after_constellation, #samp_rate
            'Received I/Q time domain', #name
            1, #number of inputs
            None # parent
        )
        self.rx_iq_time.set_update_time(0.10)
        self.rx_iq_time.set_y_axis(-1.5, 1.5)

        self.rx_iq_time.set_y_label('Amplitude', "")

        self.rx_iq_time.enable_tags(True)
        self.rx_iq_time.set_trigger_mode(qtgui.TRIG_MODE_FREE, qtgui.TRIG_SLOPE_POS, 0.0, 0, 0, "")
        self.rx_iq_time.enable_autoscale(False)
        self.rx_iq_time.enable_grid(True)
        self.rx_iq_time.enable_axis_labels(True)
        self.rx_iq_time.enable_control_panel(False)
        self.rx_iq_time.enable_stem_plot(False)


        labels = ['Signal 1', 'Signal 2', 'Signal 3', 'Signal 4', 'Signal 5',
            'Signal 6', 'Signal 7', 'Signal 8', 'Signal 9', 'Signal 10']
        widths = [1, 1, 1, 1, 1,
            1, 1, 1, 1, 1]
        colors = ['blue', 'red', 'green', 'black', 'cyan',
            'magenta', 'yellow', 'dark red', 'dark green', 'dark blue']
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
            1.0, 1.0, 1.0, 1.0, 1.0]
        styles = [1, 1, 1, 1, 1,
            1, 1, 1, 1, 1]
        markers = [-1, -1, -1, -1, -1,
            -1, -1, -1, -1, -1]


        for i in range(2):
            if len(labels[i]) == 0:
                if (i % 2 == 0):
                    self.rx_iq_time.set_line_label(i, "Re{{Data {0}}}".format(i/2))
                else:
                    self.rx_iq_time.set_line_label(i, "Im{{Data {0}}}".format(i/2))
            else:
                self.rx_iq_time.set_line_label(i, labels[i])
            self.rx_iq_time.set_line_width(i, widths[i])
            self.rx_iq_time.set_line_color(i, colors[i])
            self.rx_iq_time.set_line_style(i, styles[i])
            self.rx_iq_time.set_line_marker(i, markers[i])
            self.rx_iq_time.set_line_alpha(i, alphas[i])

        self._rx_iq_time_win = sip.wrapinstance(self.rx_iq_time.qwidget(), Qt.QWidget)
        self.monitor_tabs_grid_layout_2.addWidget(self._rx_iq_time_win, 0, 0, 1, 1)
        for r in range(0, 1):
            self.monitor_tabs_grid_layout_2.setRowStretch(r, 1)
        for c in range(0, 1):
            self.monitor_tabs_grid_layout_2.setColumnStretch(c, 1)
        self.r2_source = iio.fmcomms2_source_fc32(rx_uri if rx_uri else iio.get_pluto_uri(), [True, True], 32768)
        self.r2_source.set_len_tag_key('')
        self.r2_source.set_frequency(int(freq))
        self.r2_source.set_samplerate(samp_rate_after_constellation)
        self.r2_source.set_gain_mode(0, 'manual')
        self.r2_source.set_gain(0, uhd_gain)
        self.r2_source.set_quadrature(True)
        self.r2_source.set_rfdc(True)
        self.r2_source.set_bbdc(True)
        self.r2_source.set_filter_params('Auto', '', 0, 0)
        self.qtgui_freq_sink_x_0 = qtgui.freq_sink_c(
            1024, #size
            window.WIN_BLACKMAN_hARRIS, #wintype
            freq, #fc
            samp_rate_after_constellation, #bw
            "Received spectrum", #name
            1,
            None # parent
        )
        self.qtgui_freq_sink_x_0.set_update_time(0.10)
        self.qtgui_freq_sink_x_0.set_y_axis((-140), 10)
        self.qtgui_freq_sink_x_0.set_y_label('Relative Gain', 'dB')
        self.qtgui_freq_sink_x_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, 0.0, 0, "")
        self.qtgui_freq_sink_x_0.enable_autoscale(False)
        self.qtgui_freq_sink_x_0.enable_grid(True)
        self.qtgui_freq_sink_x_0.set_fft_average(1.0)
        self.qtgui_freq_sink_x_0.enable_axis_labels(True)
        self.qtgui_freq_sink_x_0.enable_control_panel(False)
        self.qtgui_freq_sink_x_0.set_fft_window_normalized(False)

        self.qtgui_freq_sink_x_0.disable_legend()


        labels = ['', '', '', '', '',
            '', '', '', '', '']
        widths = [1, 1, 1, 1, 1,
            1, 1, 1, 1, 1]
        colors = ["blue", "red", "green", "black", "cyan",
            "magenta", "yellow", "dark red", "dark green", "dark blue"]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
            1.0, 1.0, 1.0, 1.0, 1.0]

        for i in range(1):
            if len(labels[i]) == 0:
                self.qtgui_freq_sink_x_0.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_freq_sink_x_0.set_line_label(i, labels[i])
            self.qtgui_freq_sink_x_0.set_line_width(i, widths[i])
            self.qtgui_freq_sink_x_0.set_line_color(i, colors[i])
            self.qtgui_freq_sink_x_0.set_line_alpha(i, alphas[i])

        self._qtgui_freq_sink_x_0_win = sip.wrapinstance(self.qtgui_freq_sink_x_0.qwidget(), Qt.QWidget)
        self.monitor_tabs_grid_layout_2.addWidget(self._qtgui_freq_sink_x_0_win, 0, 1, 1, 1)
        for r in range(0, 1):
            self.monitor_tabs_grid_layout_2.setRowStretch(r, 1)
        for c in range(1, 2):
            self.monitor_tabs_grid_layout_2.setColumnStretch(c, 1)
        self.qtgui_const_sink_x_0_0_2 = qtgui.const_sink_c(
            1024, #size
            "Linear equalization", #name
            1, #number of inputs
            None # parent
        )
        self.qtgui_const_sink_x_0_0_2.set_update_time(0.10)
        self.qtgui_const_sink_x_0_0_2.set_y_axis((-2), 2)
        self.qtgui_const_sink_x_0_0_2.set_x_axis((-2), 2)
        self.qtgui_const_sink_x_0_0_2.set_trigger_mode(qtgui.TRIG_MODE_FREE, qtgui.TRIG_SLOPE_POS, 0.0, 0, "")
        self.qtgui_const_sink_x_0_0_2.enable_autoscale(False)
        self.qtgui_const_sink_x_0_0_2.enable_grid(True)
        self.qtgui_const_sink_x_0_0_2.enable_axis_labels(True)

        self.qtgui_const_sink_x_0_0_2.disable_legend()

        labels = ['', '', '', '', '',
            '', '', '', '', '']
        widths = [1, 1, 1, 1, 1,
            1, 1, 1, 1, 1]
        colors = ["blue", "red", "red", "red", "red",
            "red", "red", "red", "red", "red"]
        styles = [0, 0, 0, 0, 0,
            0, 0, 0, 0, 0]
        markers = [0, 0, 0, 0, 0,
            0, 0, 0, 0, 0]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
            1.0, 1.0, 1.0, 1.0, 1.0]

        for i in range(1):
            if len(labels[i]) == 0:
                self.qtgui_const_sink_x_0_0_2.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_const_sink_x_0_0_2.set_line_label(i, labels[i])
            self.qtgui_const_sink_x_0_0_2.set_line_width(i, widths[i])
            self.qtgui_const_sink_x_0_0_2.set_line_color(i, colors[i])
            self.qtgui_const_sink_x_0_0_2.set_line_style(i, styles[i])
            self.qtgui_const_sink_x_0_0_2.set_line_marker(i, markers[i])
            self.qtgui_const_sink_x_0_0_2.set_line_alpha(i, alphas[i])

        self._qtgui_const_sink_x_0_0_2_win = sip.wrapinstance(self.qtgui_const_sink_x_0_0_2.qwidget(), Qt.QWidget)
        self.monitor_tabs_grid_layout_1.addWidget(self._qtgui_const_sink_x_0_0_2_win, 1, 0, 1, 1)
        for r in range(1, 2):
            self.monitor_tabs_grid_layout_1.setRowStretch(r, 1)
        for c in range(0, 1):
            self.monitor_tabs_grid_layout_1.setColumnStretch(c, 1)
        self.qtgui_const_sink_x_0_0_1_0 = qtgui.const_sink_c(
            1024, #size
            "Timing synchronization", #name
            1, #number of inputs
            None # parent
        )
        self.qtgui_const_sink_x_0_0_1_0.set_update_time(0.10)
        self.qtgui_const_sink_x_0_0_1_0.set_y_axis((-2), 2)
        self.qtgui_const_sink_x_0_0_1_0.set_x_axis((-2), 2)
        self.qtgui_const_sink_x_0_0_1_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, qtgui.TRIG_SLOPE_POS, 0.0, 0, "")
        self.qtgui_const_sink_x_0_0_1_0.enable_autoscale(False)
        self.qtgui_const_sink_x_0_0_1_0.enable_grid(True)
        self.qtgui_const_sink_x_0_0_1_0.enable_axis_labels(True)

        self.qtgui_const_sink_x_0_0_1_0.disable_legend()

        labels = ['', '', '', '', '',
            '', '', '', '', '']
        widths = [1, 1, 1, 1, 1,
            1, 1, 1, 1, 1]
        colors = ["blue", "red", "red", "red", "red",
            "red", "red", "red", "red", "red"]
        styles = [0, 0, 0, 0, 0,
            0, 0, 0, 0, 0]
        markers = [0, 0, 0, 0, 0,
            0, 0, 0, 0, 0]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
            1.0, 1.0, 1.0, 1.0, 1.0]

        for i in range(1):
            if len(labels[i]) == 0:
                self.qtgui_const_sink_x_0_0_1_0.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_const_sink_x_0_0_1_0.set_line_label(i, labels[i])
            self.qtgui_const_sink_x_0_0_1_0.set_line_width(i, widths[i])
            self.qtgui_const_sink_x_0_0_1_0.set_line_color(i, colors[i])
            self.qtgui_const_sink_x_0_0_1_0.set_line_style(i, styles[i])
            self.qtgui_const_sink_x_0_0_1_0.set_line_marker(i, markers[i])
            self.qtgui_const_sink_x_0_0_1_0.set_line_alpha(i, alphas[i])

        self._qtgui_const_sink_x_0_0_1_0_win = sip.wrapinstance(self.qtgui_const_sink_x_0_0_1_0.qwidget(), Qt.QWidget)
        self.monitor_tabs_grid_layout_1.addWidget(self._qtgui_const_sink_x_0_0_1_0_win, 0, 1, 1, 1)
        for r in range(0, 1):
            self.monitor_tabs_grid_layout_1.setRowStretch(r, 1)
        for c in range(1, 2):
            self.monitor_tabs_grid_layout_1.setColumnStretch(c, 1)
        self.qtgui_const_sink_x_0_0_0 = qtgui.const_sink_c(
            1024, #size
            "Raw received samples", #name
            1, #number of inputs
            None # parent
        )
        self.qtgui_const_sink_x_0_0_0.set_update_time(0.10)
        self.qtgui_const_sink_x_0_0_0.set_y_axis((-2), 2)
        self.qtgui_const_sink_x_0_0_0.set_x_axis((-2), 2)
        self.qtgui_const_sink_x_0_0_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, qtgui.TRIG_SLOPE_POS, 0.0, 0, "")
        self.qtgui_const_sink_x_0_0_0.enable_autoscale(False)
        self.qtgui_const_sink_x_0_0_0.enable_grid(True)
        self.qtgui_const_sink_x_0_0_0.enable_axis_labels(True)

        self.qtgui_const_sink_x_0_0_0.disable_legend()

        labels = ['', '', '', '', '',
            '', '', '', '', '']
        widths = [1, 1, 1, 1, 1,
            1, 1, 1, 1, 1]
        colors = ["blue", "red", "red", "red", "red",
            "red", "red", "red", "red", "red"]
        styles = [0, 0, 0, 0, 0,
            0, 0, 0, 0, 0]
        markers = [0, 0, 0, 0, 0,
            0, 0, 0, 0, 0]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
            1.0, 1.0, 1.0, 1.0, 1.0]

        for i in range(1):
            if len(labels[i]) == 0:
                self.qtgui_const_sink_x_0_0_0.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_const_sink_x_0_0_0.set_line_label(i, labels[i])
            self.qtgui_const_sink_x_0_0_0.set_line_width(i, widths[i])
            self.qtgui_const_sink_x_0_0_0.set_line_color(i, colors[i])
            self.qtgui_const_sink_x_0_0_0.set_line_style(i, styles[i])
            self.qtgui_const_sink_x_0_0_0.set_line_marker(i, markers[i])
            self.qtgui_const_sink_x_0_0_0.set_line_alpha(i, alphas[i])

        self._qtgui_const_sink_x_0_0_0_win = sip.wrapinstance(self.qtgui_const_sink_x_0_0_0.qwidget(), Qt.QWidget)
        self.monitor_tabs_grid_layout_1.addWidget(self._qtgui_const_sink_x_0_0_0_win, 0, 0, 1, 1)
        for r in range(0, 1):
            self.monitor_tabs_grid_layout_1.setRowStretch(r, 1)
        for c in range(0, 1):
            self.monitor_tabs_grid_layout_1.setColumnStretch(c, 1)
        self.qtgui_const_sink_x_0 = qtgui.const_sink_c(
            1024, #size
            "Costas loop", #name
            1, #number of inputs
            None # parent
        )
        self.qtgui_const_sink_x_0.set_update_time(0.10)
        self.qtgui_const_sink_x_0.set_y_axis((-2), 2)
        self.qtgui_const_sink_x_0.set_x_axis((-2), 2)
        self.qtgui_const_sink_x_0.set_trigger_mode(qtgui.TRIG_MODE_FREE, qtgui.TRIG_SLOPE_POS, 0.0, 0, "")
        self.qtgui_const_sink_x_0.enable_autoscale(False)
        self.qtgui_const_sink_x_0.enable_grid(True)
        self.qtgui_const_sink_x_0.enable_axis_labels(True)

        self.qtgui_const_sink_x_0.disable_legend()

        labels = ['', '', '', '', '',
            '', '', '', '', '']
        widths = [1, 1, 1, 1, 1,
            1, 1, 1, 1, 1]
        colors = ["blue", "red", "red", "red", "red",
            "red", "red", "red", "red", "red"]
        styles = [0, 0, 0, 0, 0,
            0, 0, 0, 0, 0]
        markers = [0, 0, 0, 0, 0,
            0, 0, 0, 0, 0]
        alphas = [1.0, 1.0, 1.0, 1.0, 1.0,
            1.0, 1.0, 1.0, 1.0, 1.0]

        for i in range(1):
            if len(labels[i]) == 0:
                self.qtgui_const_sink_x_0.set_line_label(i, "Data {0}".format(i))
            else:
                self.qtgui_const_sink_x_0.set_line_label(i, labels[i])
            self.qtgui_const_sink_x_0.set_line_width(i, widths[i])
            self.qtgui_const_sink_x_0.set_line_color(i, colors[i])
            self.qtgui_const_sink_x_0.set_line_style(i, styles[i])
            self.qtgui_const_sink_x_0.set_line_marker(i, markers[i])
            self.qtgui_const_sink_x_0.set_line_alpha(i, alphas[i])

        self._qtgui_const_sink_x_0_win = sip.wrapinstance(self.qtgui_const_sink_x_0.qwidget(), Qt.QWidget)
        self.monitor_tabs_grid_layout_1.addWidget(self._qtgui_const_sink_x_0_win, 1, 1, 1, 1)
        for r in range(1, 2):
            self.monitor_tabs_grid_layout_1.setRowStretch(r, 1)
        for c in range(1, 2):
            self.monitor_tabs_grid_layout_1.setColumnStretch(c, 1)
        self.epy_block_0 = epy_block_0.VideoReceiver()
        self.digital_pfb_clock_sync_xxx_0 = digital.pfb_clock_sync_ccf(sps, (2*3.14/100.0), rrc_taps, nfilts, 0, 0.5, 2)
        self.digital_map_bb_0 = digital.map_bb([0,1,2,3])
        self.digital_linear_equalizer_0 = digital.linear_equalizer(15, 2, variable_adaptive_algorithm, True, [ ], 'corr_est')
        self.digital_diff_decoder_bb_0 = digital.diff_decoder_bb(4, digital.DIFF_DIFFERENTIAL)
        self.digital_costas_loop_cc_0 = digital.costas_loop_cc(phase_bw, 4, False)
        self.digital_constellation_decoder_cb_0 = digital.constellation_decoder_cb(qpsk)
        self.blocks_unpack_k_bits_bb_0 = blocks.unpack_k_bits_bb(2)


        ##################################################
        # Connections
        ##################################################
        self.connect((self.blocks_unpack_k_bits_bb_0, 0), (self.epy_block_0, 0))
        self.connect((self.digital_constellation_decoder_cb_0, 0), (self.digital_diff_decoder_bb_0, 0))
        self.connect((self.digital_costas_loop_cc_0, 0), (self.digital_constellation_decoder_cb_0, 0))
        self.connect((self.digital_costas_loop_cc_0, 0), (self.qtgui_const_sink_x_0, 0))
        self.connect((self.digital_diff_decoder_bb_0, 0), (self.digital_map_bb_0, 0))
        self.connect((self.digital_linear_equalizer_0, 0), (self.digital_costas_loop_cc_0, 0))
        self.connect((self.digital_linear_equalizer_0, 0), (self.qtgui_const_sink_x_0_0_2, 0))
        self.connect((self.digital_map_bb_0, 0), (self.blocks_unpack_k_bits_bb_0, 0))
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.digital_linear_equalizer_0, 0))
        self.connect((self.digital_pfb_clock_sync_xxx_0, 0), (self.qtgui_const_sink_x_0_0_1_0, 0))
        self.connect((self.r2_source, 0), (self.digital_pfb_clock_sync_xxx_0, 0))
        self.connect((self.r2_source, 0), (self.qtgui_const_sink_x_0_0_0, 0))
        self.connect((self.r2_source, 0), (self.qtgui_freq_sink_x_0, 0))
        self.connect((self.r2_source, 0), (self.rx_iq_time, 0))


    def closeEvent(self, event):
        self.settings = Qt.QSettings("gnuradio/flowgraphs", "r2_camera_only_rx")
        self.settings.setValue("geometry", self.saveGeometry())
        self.stop()
        self.wait()

        event.accept()

    def get_bit_rate(self):
        return self.bit_rate

    def set_bit_rate(self, bit_rate):
        self.bit_rate = bit_rate
        self.set_symbol_rate(self.bit_rate/2)

    def get_symbol_rate(self):
        return self.symbol_rate

    def set_symbol_rate(self, symbol_rate):
        self.symbol_rate = symbol_rate
        self.set_bandwidth(int(self.symbol_rate*1.2))
        self.set_samp_rate_after_constellation(int(self.symbol_rate*self.sps))

    def get_sps(self):
        return self.sps

    def set_sps(self, sps):
        self.sps = sps
        self.set_rrc_taps(firdes.root_raised_cosine(self.nfilts, self.nfilts, 1.0/float(self.sps), 0.35, 11*self.sps*self.nfilts))
        self.set_samp_rate_after_constellation(int(self.symbol_rate*self.sps))

    def get_qpsk(self):
        return self.qpsk

    def set_qpsk(self, qpsk):
        self.qpsk = qpsk
        self.digital_constellation_decoder_cb_0.set_constellation(self.qpsk)

    def get_nfilts(self):
        return self.nfilts

    def set_nfilts(self, nfilts):
        self.nfilts = nfilts
        self.set_rrc_taps(firdes.root_raised_cosine(self.nfilts, self.nfilts, 1.0/float(self.sps), 0.35, 11*self.sps*self.nfilts))

    def get_variable_adaptive_algorithm(self):
        return self.variable_adaptive_algorithm

    def set_variable_adaptive_algorithm(self, variable_adaptive_algorithm):
        self.variable_adaptive_algorithm = variable_adaptive_algorithm

    def get_uhd_gain(self):
        return self.uhd_gain

    def set_uhd_gain(self, uhd_gain):
        self.uhd_gain = uhd_gain
        self.r2_source.set_gain(0, self.uhd_gain)

    def get_samp_rate_after_constellation(self):
        return self.samp_rate_after_constellation

    def set_samp_rate_after_constellation(self, samp_rate_after_constellation):
        self.samp_rate_after_constellation = samp_rate_after_constellation
        self.qtgui_freq_sink_x_0.set_frequency_range(self.freq, self.samp_rate_after_constellation)
        self.r2_source.set_samplerate(self.samp_rate_after_constellation)
        self.rx_iq_time.set_samp_rate(self.samp_rate_after_constellation)

    def get_rx_uri(self):
        return self.rx_uri

    def set_rx_uri(self, rx_uri):
        self.rx_uri = rx_uri

    def get_rrc_taps(self):
        return self.rrc_taps

    def set_rrc_taps(self, rrc_taps):
        self.rrc_taps = rrc_taps
        self.digital_pfb_clock_sync_xxx_0.update_taps(self.rrc_taps)

    def get_phase_bw(self):
        return self.phase_bw

    def set_phase_bw(self, phase_bw):
        self.phase_bw = phase_bw
        self.digital_costas_loop_cc_0.set_loop_bandwidth(self.phase_bw)

    def get_one_frame_data(self):
        return self.one_frame_data

    def set_one_frame_data(self, one_frame_data):
        self.one_frame_data = one_frame_data

    def get_freq(self):
        return self.freq

    def set_freq(self, freq):
        self.freq = freq
        self.qtgui_freq_sink_x_0.set_frequency_range(self.freq, self.samp_rate_after_constellation)
        self.r2_source.set_frequency(int(self.freq))

    def get_excess_bw(self):
        return self.excess_bw

    def set_excess_bw(self, excess_bw):
        self.excess_bw = excess_bw

    def get_bandwidth(self):
        return self.bandwidth

    def set_bandwidth(self, bandwidth):
        self.bandwidth = bandwidth




def main(top_block_cls=r2_camera_only_rx, options=None):

    qapp = Qt.QApplication(sys.argv)

    tb = top_block_cls()
    snippets_main_after_init(tb)
    tb.start()
    tb.flowgraph_started.set()

    tb.show()

    def sig_handler(sig=None, frame=None):
        tb.stop()
        tb.wait()

        Qt.QApplication.quit()

    signal.signal(signal.SIGINT, sig_handler)
    signal.signal(signal.SIGTERM, sig_handler)

    timer = Qt.QTimer()
    timer.start(500)
    timer.timeout.connect(lambda: None)

    qapp.exec_()

if __name__ == '__main__':
    main()
