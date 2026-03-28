// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Jan 11 07:49:11 2026
// Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_rate_gen_0_stub.v
// Design      : system_rate_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_pulse_gen,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rstn, pulse_width, pulse_period, 
  load_config, pulse, pulse_counter)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,pulse_width[31:0],pulse_period[31:0],load_config,pulse,pulse_counter[31:0]" */;
  input clk;
  input rstn;
  input [31:0]pulse_width;
  input [31:0]pulse_period;
  input load_config;
  output pulse;
  output [31:0]pulse_counter;
endmodule
