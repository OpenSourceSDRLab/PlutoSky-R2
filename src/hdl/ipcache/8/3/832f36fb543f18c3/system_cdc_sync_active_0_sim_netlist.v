// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Jan 11 07:49:10 2026
// Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_cdc_sync_active_0_sim_netlist.v
// Design      : system_cdc_sync_active_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits
   (out_bits,
    out_resetn,
    in_bits,
    out_clk);
  output [0:0]out_bits;
  input out_resetn;
  input [0:0]in_bits;
  input out_clk;

  wire cdc_sync_stage1;
  wire \cdc_sync_stage1[0]_i_1_n_0 ;
  wire \cdc_sync_stage2[0]_i_1_n_0 ;
  wire [0:0]in_bits;
  wire [0:0]out_bits;
  wire out_clk;
  wire out_resetn;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cdc_sync_stage1[0]_i_1 
       (.I0(in_bits),
        .I1(out_resetn),
        .O(\cdc_sync_stage1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage1_reg[0] 
       (.C(out_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage1[0]_i_1_n_0 ),
        .Q(cdc_sync_stage1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cdc_sync_stage2[0]_i_1 
       (.I0(cdc_sync_stage1),
        .I1(out_resetn),
        .O(\cdc_sync_stage2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdc_sync_stage2_reg[0] 
       (.C(out_clk),
        .CE(1'b1),
        .D(\cdc_sync_stage2[0]_i_1_n_0 ),
        .Q(out_bits),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_cdc_sync_active_0,sync_bits,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "sync_bits,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (in_bits,
    out_resetn,
    out_clk,
    out_bits);
  input [0:0]in_bits;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 out_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input out_resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 out_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_clk, ASSOCIATED_RESET out_resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_axi_ad9361_0_l_clk, INSERT_VIP 0" *) input out_clk;
  output [0:0]out_bits;

  wire [0:0]in_bits;
  wire [0:0]out_bits;
  wire out_clk;
  wire out_resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits inst
       (.in_bits(in_bits),
        .out_bits(out_bits),
        .out_clk(out_clk),
        .out_resetn(out_resetn));
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
