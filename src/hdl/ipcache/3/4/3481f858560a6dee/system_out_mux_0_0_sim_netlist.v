// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Jan 11 07:49:37 2026
// Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_out_mux_0_0_sim_netlist.v
// Design      : system_out_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_bus_mux
   (data_out,
    data_in_1,
    data_in_0,
    select_path);
  output [15:0]data_out;
  input [15:0]data_in_1;
  input [15:0]data_in_0;
  input select_path;

  wire [15:0]data_in_0;
  wire [15:0]data_in_1;
  wire [15:0]data_out;
  wire select_path;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[0]_INST_0 
       (.I0(data_in_1[0]),
        .I1(data_in_0[0]),
        .I2(select_path),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[10]_INST_0 
       (.I0(data_in_1[10]),
        .I1(data_in_0[10]),
        .I2(select_path),
        .O(data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[11]_INST_0 
       (.I0(data_in_1[11]),
        .I1(data_in_0[11]),
        .I2(select_path),
        .O(data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[12]_INST_0 
       (.I0(data_in_1[12]),
        .I1(data_in_0[12]),
        .I2(select_path),
        .O(data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[13]_INST_0 
       (.I0(data_in_1[13]),
        .I1(data_in_0[13]),
        .I2(select_path),
        .O(data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[14]_INST_0 
       (.I0(data_in_1[14]),
        .I1(data_in_0[14]),
        .I2(select_path),
        .O(data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[15]_INST_0 
       (.I0(data_in_1[15]),
        .I1(data_in_0[15]),
        .I2(select_path),
        .O(data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[1]_INST_0 
       (.I0(data_in_1[1]),
        .I1(data_in_0[1]),
        .I2(select_path),
        .O(data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[2]_INST_0 
       (.I0(data_in_1[2]),
        .I1(data_in_0[2]),
        .I2(select_path),
        .O(data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[3]_INST_0 
       (.I0(data_in_1[3]),
        .I1(data_in_0[3]),
        .I2(select_path),
        .O(data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[4]_INST_0 
       (.I0(data_in_1[4]),
        .I1(data_in_0[4]),
        .I2(select_path),
        .O(data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[5]_INST_0 
       (.I0(data_in_1[5]),
        .I1(data_in_0[5]),
        .I2(select_path),
        .O(data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[6]_INST_0 
       (.I0(data_in_1[6]),
        .I1(data_in_0[6]),
        .I2(select_path),
        .O(data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[7]_INST_0 
       (.I0(data_in_1[7]),
        .I1(data_in_0[7]),
        .I2(select_path),
        .O(data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[8]_INST_0 
       (.I0(data_in_1[8]),
        .I1(data_in_0[8]),
        .I2(select_path),
        .O(data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_out[9]_INST_0 
       (.I0(data_in_1[9]),
        .I1(data_in_0[9]),
        .I2(select_path),
        .O(data_out[9]));
endmodule

(* CHECK_LICENSE_TYPE = "system_out_mux_0_0,ad_bus_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ad_bus_mux,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (select_path,
    valid_in_0,
    enable_in_0,
    data_in_0,
    valid_in_1,
    enable_in_1,
    data_in_1,
    valid_out,
    enable_out,
    data_out);
  input select_path;
  input valid_in_0;
  input enable_in_0;
  input [15:0]data_in_0;
  input valid_in_1;
  input enable_in_1;
  input [15:0]data_in_1;
  output valid_out;
  output enable_out;
  output [15:0]data_out;

  wire [15:0]data_in_0;
  wire [15:0]data_in_1;
  wire [15:0]data_out;
  wire enable_in_0;
  wire enable_in_1;
  wire enable_out;
  wire select_path;
  wire valid_in_0;
  wire valid_in_1;
  wire valid_out;

  LUT3 #(
    .INIT(8'hB8)) 
    enable_out_INST_0
       (.I0(enable_in_1),
        .I1(select_path),
        .I2(enable_in_0),
        .O(enable_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_bus_mux inst
       (.data_in_0(data_in_0),
        .data_in_1(data_in_1),
        .data_out(data_out),
        .select_path(select_path));
  LUT3 #(
    .INIT(8'hB8)) 
    valid_out_INST_0
       (.I0(valid_in_1),
        .I1(select_path),
        .I2(valid_in_0),
        .O(valid_out));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
