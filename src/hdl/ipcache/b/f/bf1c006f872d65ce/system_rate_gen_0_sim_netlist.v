// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Jan 11 07:49:11 2026
// Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_rate_gen_0_sim_netlist.v
// Design      : system_rate_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_rate_gen_0,util_pulse_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "util_pulse_gen,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rstn,
    pulse_width,
    pulse_period,
    load_config,
    pulse,
    pulse_counter);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_axi_ad9361_0_l_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input [31:0]pulse_width;
  input [31:0]pulse_period;
  input load_config;
  output pulse;
  output [31:0]pulse_counter;

  wire clk;
  wire load_config;
  wire p_0_in;
  wire pulse;
  wire [31:0]pulse_counter;
  wire [31:0]pulse_period;
  wire [31:0]pulse_width;
  wire rstn;

  LUT1 #(
    .INIT(2'h1)) 
    i_3
       (.I0(rstn),
        .O(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_pulse_gen inst
       (.Q(pulse_counter),
        .clk(clk),
        .load_config(load_config),
        .pulse(pulse),
        .pulse_period(pulse_period),
        .pulse_width(pulse_width),
        .rstn(rstn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_pulse_gen
   (Q,
    pulse,
    clk,
    rstn,
    pulse_period,
    load_config,
    pulse_width);
  output [31:0]Q;
  output pulse;
  input clk;
  input rstn;
  input [31:0]pulse_period;
  input load_config;
  input [31:0]pulse_width;

  wire [31:0]Q;
  wire clk;
  wire [31:1]data1;
  wire load_config;
  wire pulse;
  wire pulse0_carry__0_i_1_n_0;
  wire pulse0_carry__0_i_2_n_0;
  wire pulse0_carry__0_i_3_n_0;
  wire pulse0_carry__0_i_4_n_0;
  wire pulse0_carry__0_n_0;
  wire pulse0_carry__0_n_1;
  wire pulse0_carry__0_n_2;
  wire pulse0_carry__0_n_3;
  wire pulse0_carry__1_i_1_n_0;
  wire pulse0_carry__1_i_2_n_0;
  wire pulse0_carry__1_i_3_n_0;
  wire pulse0_carry__1_n_1;
  wire pulse0_carry__1_n_2;
  wire pulse0_carry__1_n_3;
  wire pulse0_carry_i_1_n_0;
  wire pulse0_carry_i_2_n_0;
  wire pulse0_carry_i_3_n_0;
  wire pulse0_carry_i_4_n_0;
  wire pulse0_carry_n_0;
  wire pulse0_carry_n_1;
  wire pulse0_carry_n_2;
  wire pulse0_carry_n_3;
  wire pulse_i_10_n_0;
  wire pulse_i_1_n_0;
  wire pulse_i_2_n_0;
  wire pulse_i_3_n_0;
  wire pulse_i_4_n_0;
  wire pulse_i_5_n_0;
  wire pulse_i_6_n_0;
  wire pulse_i_7_n_0;
  wire pulse_i_8_n_0;
  wire pulse_i_9_n_0;
  wire [31:0]pulse_period;
  wire [31:0]pulse_period_cnt;
  wire pulse_period_cnt0_carry__0_i_1_n_0;
  wire pulse_period_cnt0_carry__0_i_2_n_0;
  wire pulse_period_cnt0_carry__0_i_3_n_0;
  wire pulse_period_cnt0_carry__0_i_4_n_0;
  wire pulse_period_cnt0_carry__0_n_0;
  wire pulse_period_cnt0_carry__0_n_1;
  wire pulse_period_cnt0_carry__0_n_2;
  wire pulse_period_cnt0_carry__0_n_3;
  wire pulse_period_cnt0_carry__1_i_1_n_0;
  wire pulse_period_cnt0_carry__1_i_2_n_0;
  wire pulse_period_cnt0_carry__1_i_3_n_0;
  wire pulse_period_cnt0_carry__1_i_4_n_0;
  wire pulse_period_cnt0_carry__1_n_0;
  wire pulse_period_cnt0_carry__1_n_1;
  wire pulse_period_cnt0_carry__1_n_2;
  wire pulse_period_cnt0_carry__1_n_3;
  wire pulse_period_cnt0_carry__2_i_1_n_0;
  wire pulse_period_cnt0_carry__2_i_2_n_0;
  wire pulse_period_cnt0_carry__2_i_3_n_0;
  wire pulse_period_cnt0_carry__2_i_4_n_0;
  wire pulse_period_cnt0_carry__2_n_0;
  wire pulse_period_cnt0_carry__2_n_1;
  wire pulse_period_cnt0_carry__2_n_2;
  wire pulse_period_cnt0_carry__2_n_3;
  wire pulse_period_cnt0_carry__3_i_1_n_0;
  wire pulse_period_cnt0_carry__3_i_2_n_0;
  wire pulse_period_cnt0_carry__3_i_3_n_0;
  wire pulse_period_cnt0_carry__3_i_4_n_0;
  wire pulse_period_cnt0_carry__3_n_0;
  wire pulse_period_cnt0_carry__3_n_1;
  wire pulse_period_cnt0_carry__3_n_2;
  wire pulse_period_cnt0_carry__3_n_3;
  wire pulse_period_cnt0_carry__4_i_1_n_0;
  wire pulse_period_cnt0_carry__4_i_2_n_0;
  wire pulse_period_cnt0_carry__4_i_3_n_0;
  wire pulse_period_cnt0_carry__4_i_4_n_0;
  wire pulse_period_cnt0_carry__4_n_0;
  wire pulse_period_cnt0_carry__4_n_1;
  wire pulse_period_cnt0_carry__4_n_2;
  wire pulse_period_cnt0_carry__4_n_3;
  wire pulse_period_cnt0_carry__5_i_1_n_0;
  wire pulse_period_cnt0_carry__5_i_2_n_0;
  wire pulse_period_cnt0_carry__5_i_3_n_0;
  wire pulse_period_cnt0_carry__5_i_4_n_0;
  wire pulse_period_cnt0_carry__5_n_0;
  wire pulse_period_cnt0_carry__5_n_1;
  wire pulse_period_cnt0_carry__5_n_2;
  wire pulse_period_cnt0_carry__5_n_3;
  wire pulse_period_cnt0_carry__6_i_1_n_0;
  wire pulse_period_cnt0_carry__6_i_2_n_0;
  wire pulse_period_cnt0_carry__6_i_3_n_0;
  wire pulse_period_cnt0_carry__6_n_2;
  wire pulse_period_cnt0_carry__6_n_3;
  wire pulse_period_cnt0_carry_i_1_n_0;
  wire pulse_period_cnt0_carry_i_2_n_0;
  wire pulse_period_cnt0_carry_i_3_n_0;
  wire pulse_period_cnt0_carry_i_4_n_0;
  wire pulse_period_cnt0_carry_n_0;
  wire pulse_period_cnt0_carry_n_1;
  wire pulse_period_cnt0_carry_n_2;
  wire pulse_period_cnt0_carry_n_3;
  wire \pulse_period_cnt[31]_i_2_n_0 ;
  wire \pulse_period_cnt[31]_i_3_n_0 ;
  wire [31:0]pulse_period_d;
  wire pulse_period_d_0;
  wire [31:0]pulse_period_read;
  wire \pulse_period_read[0]_i_1_n_0 ;
  wire \pulse_period_read[0]_i_2_n_0 ;
  wire \pulse_period_read[0]_i_3_n_0 ;
  wire \pulse_period_read[0]_i_4_n_0 ;
  wire \pulse_period_read[0]_i_5_n_0 ;
  wire \pulse_period_read[0]_i_6_n_0 ;
  wire \pulse_period_read[0]_i_7_n_0 ;
  wire \pulse_period_read[1]_i_1_n_0 ;
  wire \pulse_period_read[2]_i_1_n_0 ;
  wire \pulse_period_read[31]_i_1_n_0 ;
  wire [31:0]pulse_width;
  wire [31:0]pulse_width_d;
  wire [31:0]pulse_width_read;
  wire rstn;
  wire [3:0]NLW_pulse0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pulse0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_pulse0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_pulse0_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_pulse_period_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_pulse_period_cnt0_carry__6_O_UNCONNECTED;

  CARRY4 pulse0_carry
       (.CI(1'b0),
        .CO({pulse0_carry_n_0,pulse0_carry_n_1,pulse0_carry_n_2,pulse0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pulse0_carry_O_UNCONNECTED[3:0]),
        .S({pulse0_carry_i_1_n_0,pulse0_carry_i_2_n_0,pulse0_carry_i_3_n_0,pulse0_carry_i_4_n_0}));
  CARRY4 pulse0_carry__0
       (.CI(pulse0_carry_n_0),
        .CO({pulse0_carry__0_n_0,pulse0_carry__0_n_1,pulse0_carry__0_n_2,pulse0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pulse0_carry__0_O_UNCONNECTED[3:0]),
        .S({pulse0_carry__0_i_1_n_0,pulse0_carry__0_i_2_n_0,pulse0_carry__0_i_3_n_0,pulse0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry__0_i_1
       (.I0(pulse_width_d[23]),
        .I1(Q[23]),
        .I2(pulse_width_d[22]),
        .I3(Q[22]),
        .I4(Q[21]),
        .I5(pulse_width_d[21]),
        .O(pulse0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry__0_i_2
       (.I0(pulse_width_d[20]),
        .I1(Q[20]),
        .I2(pulse_width_d[19]),
        .I3(Q[19]),
        .I4(Q[18]),
        .I5(pulse_width_d[18]),
        .O(pulse0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry__0_i_3
       (.I0(pulse_width_d[17]),
        .I1(Q[17]),
        .I2(pulse_width_d[16]),
        .I3(Q[16]),
        .I4(Q[15]),
        .I5(pulse_width_d[15]),
        .O(pulse0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry__0_i_4
       (.I0(pulse_width_d[14]),
        .I1(Q[14]),
        .I2(pulse_width_d[13]),
        .I3(Q[13]),
        .I4(Q[12]),
        .I5(pulse_width_d[12]),
        .O(pulse0_carry__0_i_4_n_0));
  CARRY4 pulse0_carry__1
       (.CI(pulse0_carry__0_n_0),
        .CO({NLW_pulse0_carry__1_CO_UNCONNECTED[3],pulse0_carry__1_n_1,pulse0_carry__1_n_2,pulse0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pulse0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,pulse0_carry__1_i_1_n_0,pulse0_carry__1_i_2_n_0,pulse0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    pulse0_carry__1_i_1
       (.I0(Q[31]),
        .I1(pulse_width_d[31]),
        .I2(Q[30]),
        .I3(pulse_width_d[30]),
        .O(pulse0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry__1_i_2
       (.I0(pulse_width_d[29]),
        .I1(Q[29]),
        .I2(pulse_width_d[28]),
        .I3(Q[28]),
        .I4(Q[27]),
        .I5(pulse_width_d[27]),
        .O(pulse0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry__1_i_3
       (.I0(pulse_width_d[26]),
        .I1(Q[26]),
        .I2(pulse_width_d[25]),
        .I3(Q[25]),
        .I4(Q[24]),
        .I5(pulse_width_d[24]),
        .O(pulse0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry_i_1
       (.I0(pulse_width_d[11]),
        .I1(Q[11]),
        .I2(pulse_width_d[10]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(pulse_width_d[9]),
        .O(pulse0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry_i_2
       (.I0(pulse_width_d[8]),
        .I1(Q[8]),
        .I2(pulse_width_d[7]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(pulse_width_d[6]),
        .O(pulse0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry_i_3
       (.I0(pulse_width_d[5]),
        .I1(Q[5]),
        .I2(pulse_width_d[4]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(pulse_width_d[3]),
        .O(pulse0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pulse0_carry_i_4
       (.I0(pulse_width_d[2]),
        .I1(Q[2]),
        .I2(pulse_width_d[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(pulse_width_d[0]),
        .O(pulse0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A800)) 
    pulse_i_1
       (.I0(rstn),
        .I1(pulse0_carry__1_n_1),
        .I2(pulse),
        .I3(Q[0]),
        .I4(pulse_i_2_n_0),
        .I5(pulse_i_3_n_0),
        .O(pulse_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pulse_i_10
       (.I0(Q[27]),
        .I1(Q[26]),
        .I2(Q[29]),
        .I3(Q[28]),
        .O(pulse_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pulse_i_2
       (.I0(pulse_i_4_n_0),
        .I1(pulse_i_5_n_0),
        .I2(pulse_i_6_n_0),
        .I3(pulse_i_7_n_0),
        .O(pulse_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pulse_i_3
       (.I0(pulse_i_8_n_0),
        .I1(pulse_i_9_n_0),
        .I2(Q[31]),
        .I3(Q[30]),
        .I4(Q[1]),
        .I5(pulse_i_10_n_0),
        .O(pulse_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pulse_i_4
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[8]),
        .O(pulse_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pulse_i_5
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(pulse_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pulse_i_6
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(Q[17]),
        .I3(Q[16]),
        .O(pulse_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pulse_i_7
       (.I0(Q[11]),
        .I1(Q[10]),
        .I2(Q[13]),
        .I3(Q[12]),
        .O(pulse_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pulse_i_8
       (.I0(Q[23]),
        .I1(Q[22]),
        .I2(Q[25]),
        .I3(Q[24]),
        .O(pulse_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pulse_i_9
       (.I0(Q[19]),
        .I1(Q[18]),
        .I2(Q[21]),
        .I3(Q[20]),
        .O(pulse_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_period_cnt0_carry
       (.CI(1'b0),
        .CO({pulse_period_cnt0_carry_n_0,pulse_period_cnt0_carry_n_1,pulse_period_cnt0_carry_n_2,pulse_period_cnt0_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(data1[4:1]),
        .S({pulse_period_cnt0_carry_i_1_n_0,pulse_period_cnt0_carry_i_2_n_0,pulse_period_cnt0_carry_i_3_n_0,pulse_period_cnt0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_period_cnt0_carry__0
       (.CI(pulse_period_cnt0_carry_n_0),
        .CO({pulse_period_cnt0_carry__0_n_0,pulse_period_cnt0_carry__0_n_1,pulse_period_cnt0_carry__0_n_2,pulse_period_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(data1[8:5]),
        .S({pulse_period_cnt0_carry__0_i_1_n_0,pulse_period_cnt0_carry__0_i_2_n_0,pulse_period_cnt0_carry__0_i_3_n_0,pulse_period_cnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__0_i_1
       (.I0(Q[8]),
        .O(pulse_period_cnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__0_i_2
       (.I0(Q[7]),
        .O(pulse_period_cnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__0_i_3
       (.I0(Q[6]),
        .O(pulse_period_cnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__0_i_4
       (.I0(Q[5]),
        .O(pulse_period_cnt0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_period_cnt0_carry__1
       (.CI(pulse_period_cnt0_carry__0_n_0),
        .CO({pulse_period_cnt0_carry__1_n_0,pulse_period_cnt0_carry__1_n_1,pulse_period_cnt0_carry__1_n_2,pulse_period_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(data1[12:9]),
        .S({pulse_period_cnt0_carry__1_i_1_n_0,pulse_period_cnt0_carry__1_i_2_n_0,pulse_period_cnt0_carry__1_i_3_n_0,pulse_period_cnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__1_i_1
       (.I0(Q[12]),
        .O(pulse_period_cnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__1_i_2
       (.I0(Q[11]),
        .O(pulse_period_cnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__1_i_3
       (.I0(Q[10]),
        .O(pulse_period_cnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__1_i_4
       (.I0(Q[9]),
        .O(pulse_period_cnt0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_period_cnt0_carry__2
       (.CI(pulse_period_cnt0_carry__1_n_0),
        .CO({pulse_period_cnt0_carry__2_n_0,pulse_period_cnt0_carry__2_n_1,pulse_period_cnt0_carry__2_n_2,pulse_period_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(data1[16:13]),
        .S({pulse_period_cnt0_carry__2_i_1_n_0,pulse_period_cnt0_carry__2_i_2_n_0,pulse_period_cnt0_carry__2_i_3_n_0,pulse_period_cnt0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__2_i_1
       (.I0(Q[16]),
        .O(pulse_period_cnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__2_i_2
       (.I0(Q[15]),
        .O(pulse_period_cnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__2_i_3
       (.I0(Q[14]),
        .O(pulse_period_cnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__2_i_4
       (.I0(Q[13]),
        .O(pulse_period_cnt0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_period_cnt0_carry__3
       (.CI(pulse_period_cnt0_carry__2_n_0),
        .CO({pulse_period_cnt0_carry__3_n_0,pulse_period_cnt0_carry__3_n_1,pulse_period_cnt0_carry__3_n_2,pulse_period_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(data1[20:17]),
        .S({pulse_period_cnt0_carry__3_i_1_n_0,pulse_period_cnt0_carry__3_i_2_n_0,pulse_period_cnt0_carry__3_i_3_n_0,pulse_period_cnt0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__3_i_1
       (.I0(Q[20]),
        .O(pulse_period_cnt0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__3_i_2
       (.I0(Q[19]),
        .O(pulse_period_cnt0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__3_i_3
       (.I0(Q[18]),
        .O(pulse_period_cnt0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__3_i_4
       (.I0(Q[17]),
        .O(pulse_period_cnt0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_period_cnt0_carry__4
       (.CI(pulse_period_cnt0_carry__3_n_0),
        .CO({pulse_period_cnt0_carry__4_n_0,pulse_period_cnt0_carry__4_n_1,pulse_period_cnt0_carry__4_n_2,pulse_period_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(data1[24:21]),
        .S({pulse_period_cnt0_carry__4_i_1_n_0,pulse_period_cnt0_carry__4_i_2_n_0,pulse_period_cnt0_carry__4_i_3_n_0,pulse_period_cnt0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__4_i_1
       (.I0(Q[24]),
        .O(pulse_period_cnt0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__4_i_2
       (.I0(Q[23]),
        .O(pulse_period_cnt0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__4_i_3
       (.I0(Q[22]),
        .O(pulse_period_cnt0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__4_i_4
       (.I0(Q[21]),
        .O(pulse_period_cnt0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_period_cnt0_carry__5
       (.CI(pulse_period_cnt0_carry__4_n_0),
        .CO({pulse_period_cnt0_carry__5_n_0,pulse_period_cnt0_carry__5_n_1,pulse_period_cnt0_carry__5_n_2,pulse_period_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(data1[28:25]),
        .S({pulse_period_cnt0_carry__5_i_1_n_0,pulse_period_cnt0_carry__5_i_2_n_0,pulse_period_cnt0_carry__5_i_3_n_0,pulse_period_cnt0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__5_i_1
       (.I0(Q[28]),
        .O(pulse_period_cnt0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__5_i_2
       (.I0(Q[27]),
        .O(pulse_period_cnt0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__5_i_3
       (.I0(Q[26]),
        .O(pulse_period_cnt0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__5_i_4
       (.I0(Q[25]),
        .O(pulse_period_cnt0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 pulse_period_cnt0_carry__6
       (.CI(pulse_period_cnt0_carry__5_n_0),
        .CO({NLW_pulse_period_cnt0_carry__6_CO_UNCONNECTED[3:2],pulse_period_cnt0_carry__6_n_2,pulse_period_cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[30:29]}),
        .O({NLW_pulse_period_cnt0_carry__6_O_UNCONNECTED[3],data1[31:29]}),
        .S({1'b0,pulse_period_cnt0_carry__6_i_1_n_0,pulse_period_cnt0_carry__6_i_2_n_0,pulse_period_cnt0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__6_i_1
       (.I0(Q[31]),
        .O(pulse_period_cnt0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__6_i_2
       (.I0(Q[30]),
        .O(pulse_period_cnt0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry__6_i_3
       (.I0(Q[29]),
        .O(pulse_period_cnt0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry_i_1
       (.I0(Q[4]),
        .O(pulse_period_cnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry_i_2
       (.I0(Q[3]),
        .O(pulse_period_cnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry_i_3
       (.I0(Q[2]),
        .O(pulse_period_cnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pulse_period_cnt0_carry_i_4
       (.I0(Q[1]),
        .O(pulse_period_cnt0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h33333332)) 
    \pulse_period_cnt[0]_i_1 
       (.I0(pulse_period_d[0]),
        .I1(Q[0]),
        .I2(\pulse_period_cnt[31]_i_3_n_0 ),
        .I3(\pulse_period_cnt[31]_i_2_n_0 ),
        .I4(pulse_i_3_n_0),
        .O(pulse_period_cnt[0]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[10]_i_1 
       (.I0(data1[10]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[10]),
        .O(pulse_period_cnt[10]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[11]_i_1 
       (.I0(data1[11]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[11]),
        .O(pulse_period_cnt[11]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[12]_i_1 
       (.I0(data1[12]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[12]),
        .O(pulse_period_cnt[12]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[13]_i_1 
       (.I0(data1[13]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[13]),
        .O(pulse_period_cnt[13]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[14]_i_1 
       (.I0(data1[14]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[14]),
        .O(pulse_period_cnt[14]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[15]_i_1 
       (.I0(data1[15]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[15]),
        .O(pulse_period_cnt[15]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[16]_i_1 
       (.I0(data1[16]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[16]),
        .O(pulse_period_cnt[16]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[17]_i_1 
       (.I0(data1[17]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[17]),
        .O(pulse_period_cnt[17]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[18]_i_1 
       (.I0(data1[18]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[18]),
        .O(pulse_period_cnt[18]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[19]_i_1 
       (.I0(data1[19]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[19]),
        .O(pulse_period_cnt[19]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[1]_i_1 
       (.I0(data1[1]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[1]),
        .O(pulse_period_cnt[1]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[20]_i_1 
       (.I0(data1[20]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[20]),
        .O(pulse_period_cnt[20]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[21]_i_1 
       (.I0(data1[21]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[21]),
        .O(pulse_period_cnt[21]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[22]_i_1 
       (.I0(data1[22]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[22]),
        .O(pulse_period_cnt[22]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[23]_i_1 
       (.I0(data1[23]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[23]),
        .O(pulse_period_cnt[23]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[24]_i_1 
       (.I0(data1[24]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[24]),
        .O(pulse_period_cnt[24]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[25]_i_1 
       (.I0(data1[25]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[25]),
        .O(pulse_period_cnt[25]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[26]_i_1 
       (.I0(data1[26]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[26]),
        .O(pulse_period_cnt[26]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[27]_i_1 
       (.I0(data1[27]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[27]),
        .O(pulse_period_cnt[27]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[28]_i_1 
       (.I0(data1[28]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[28]),
        .O(pulse_period_cnt[28]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[29]_i_1 
       (.I0(data1[29]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[29]),
        .O(pulse_period_cnt[29]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[2]_i_1 
       (.I0(data1[2]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[2]),
        .O(pulse_period_cnt[2]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[30]_i_1 
       (.I0(data1[30]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[30]),
        .O(pulse_period_cnt[30]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[31]_i_1 
       (.I0(data1[31]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[31]),
        .O(pulse_period_cnt[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pulse_period_cnt[31]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(pulse_i_4_n_0),
        .O(\pulse_period_cnt[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pulse_period_cnt[31]_i_3 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(pulse_i_6_n_0),
        .O(\pulse_period_cnt[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[3]_i_1 
       (.I0(data1[3]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[3]),
        .O(pulse_period_cnt[3]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[4]_i_1 
       (.I0(data1[4]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[4]),
        .O(pulse_period_cnt[4]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[5]_i_1 
       (.I0(data1[5]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[5]),
        .O(pulse_period_cnt[5]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[6]_i_1 
       (.I0(data1[6]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[6]),
        .O(pulse_period_cnt[6]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[7]_i_1 
       (.I0(data1[7]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[7]),
        .O(pulse_period_cnt[7]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[8]_i_1 
       (.I0(data1[8]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[8]),
        .O(pulse_period_cnt[8]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \pulse_period_cnt[9]_i_1 
       (.I0(data1[9]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(pulse_period_d[9]),
        .O(pulse_period_cnt[9]));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(pulse_period_cnt[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \pulse_period_d[31]_i_1 
       (.I0(Q[0]),
        .I1(pulse_i_3_n_0),
        .I2(\pulse_period_cnt[31]_i_2_n_0 ),
        .I3(\pulse_period_cnt[31]_i_3_n_0 ),
        .O(pulse_period_d_0));
  FDSE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[0] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[0]),
        .Q(pulse_period_d[0]),
        .S(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[10] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[10]),
        .Q(pulse_period_d[10]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[11] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[11]),
        .Q(pulse_period_d[11]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[12] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[12]),
        .Q(pulse_period_d[12]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[13] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[13]),
        .Q(pulse_period_d[13]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[14] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[14]),
        .Q(pulse_period_d[14]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[15] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[15]),
        .Q(pulse_period_d[15]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[16] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[16]),
        .Q(pulse_period_d[16]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[17] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[17]),
        .Q(pulse_period_d[17]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[18] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[18]),
        .Q(pulse_period_d[18]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[19] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[19]),
        .Q(pulse_period_d[19]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[1] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[1]),
        .Q(pulse_period_d[1]),
        .S(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[20] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[20]),
        .Q(pulse_period_d[20]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[21] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[21]),
        .Q(pulse_period_d[21]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[22] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[22]),
        .Q(pulse_period_d[22]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[23] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[23]),
        .Q(pulse_period_d[23]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[24] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[24]),
        .Q(pulse_period_d[24]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[25] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[25]),
        .Q(pulse_period_d[25]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[26] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[26]),
        .Q(pulse_period_d[26]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[27] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[27]),
        .Q(pulse_period_d[27]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[28] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[28]),
        .Q(pulse_period_d[28]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[29] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[29]),
        .Q(pulse_period_d[29]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[2] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[2]),
        .Q(pulse_period_d[2]),
        .S(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[30] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[30]),
        .Q(pulse_period_d[30]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[31] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[31]),
        .Q(pulse_period_d[31]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[3] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[3]),
        .Q(pulse_period_d[3]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[4] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[4]),
        .Q(pulse_period_d[4]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[5] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[5]),
        .Q(pulse_period_d[5]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[6] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[6]),
        .Q(pulse_period_d[6]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[7] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[7]),
        .Q(pulse_period_d[7]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[8] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[8]),
        .Q(pulse_period_d[8]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_d_reg[9] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_period_read[9]),
        .Q(pulse_period_d[9]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFE0FF)) 
    \pulse_period_read[0]_i_1 
       (.I0(pulse_period[0]),
        .I1(\pulse_period_read[0]_i_2_n_0 ),
        .I2(load_config),
        .I3(rstn),
        .I4(pulse_period_read[0]),
        .O(\pulse_period_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \pulse_period_read[0]_i_2 
       (.I0(\pulse_period_read[0]_i_3_n_0 ),
        .I1(\pulse_period_read[0]_i_4_n_0 ),
        .I2(\pulse_period_read[0]_i_5_n_0 ),
        .I3(\pulse_period_read[0]_i_6_n_0 ),
        .I4(pulse_period[1]),
        .I5(\pulse_period_read[0]_i_7_n_0 ),
        .O(\pulse_period_read[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pulse_period_read[0]_i_3 
       (.I0(pulse_period[28]),
        .I1(pulse_period[29]),
        .I2(pulse_period[26]),
        .I3(pulse_period[27]),
        .I4(pulse_period[31]),
        .I5(pulse_period[30]),
        .O(\pulse_period_read[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pulse_period_read[0]_i_4 
       (.I0(pulse_period[10]),
        .I1(pulse_period[11]),
        .I2(pulse_period[8]),
        .I3(pulse_period[9]),
        .I4(pulse_period[13]),
        .I5(pulse_period[12]),
        .O(\pulse_period_read[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pulse_period_read[0]_i_5 
       (.I0(pulse_period[4]),
        .I1(pulse_period[5]),
        .I2(pulse_period[2]),
        .I3(pulse_period[3]),
        .I4(pulse_period[7]),
        .I5(pulse_period[6]),
        .O(\pulse_period_read[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pulse_period_read[0]_i_6 
       (.I0(pulse_period[22]),
        .I1(pulse_period[23]),
        .I2(pulse_period[20]),
        .I3(pulse_period[21]),
        .I4(pulse_period[25]),
        .I5(pulse_period[24]),
        .O(\pulse_period_read[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pulse_period_read[0]_i_7 
       (.I0(pulse_period[16]),
        .I1(pulse_period[17]),
        .I2(pulse_period[14]),
        .I3(pulse_period[15]),
        .I4(pulse_period[19]),
        .I5(pulse_period[18]),
        .O(\pulse_period_read[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF8F)) 
    \pulse_period_read[1]_i_1 
       (.I0(pulse_period[1]),
        .I1(load_config),
        .I2(rstn),
        .I3(pulse_period_read[1]),
        .O(\pulse_period_read[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF8F)) 
    \pulse_period_read[2]_i_1 
       (.I0(pulse_period[2]),
        .I1(load_config),
        .I2(rstn),
        .I3(pulse_period_read[2]),
        .O(\pulse_period_read[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pulse_period_read[31]_i_1 
       (.I0(rstn),
        .O(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\pulse_period_read[0]_i_1_n_0 ),
        .Q(pulse_period_read[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[10] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[10]),
        .Q(pulse_period_read[10]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[11] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[11]),
        .Q(pulse_period_read[11]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[12] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[12]),
        .Q(pulse_period_read[12]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[13] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[13]),
        .Q(pulse_period_read[13]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[14] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[14]),
        .Q(pulse_period_read[14]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[15] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[15]),
        .Q(pulse_period_read[15]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[16] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[16]),
        .Q(pulse_period_read[16]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[17] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[17]),
        .Q(pulse_period_read[17]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[18] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[18]),
        .Q(pulse_period_read[18]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[19] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[19]),
        .Q(pulse_period_read[19]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\pulse_period_read[1]_i_1_n_0 ),
        .Q(pulse_period_read[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[20] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[20]),
        .Q(pulse_period_read[20]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[21] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[21]),
        .Q(pulse_period_read[21]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[22] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[22]),
        .Q(pulse_period_read[22]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[23] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[23]),
        .Q(pulse_period_read[23]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[24] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[24]),
        .Q(pulse_period_read[24]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[25] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[25]),
        .Q(pulse_period_read[25]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[26] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[26]),
        .Q(pulse_period_read[26]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[27] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[27]),
        .Q(pulse_period_read[27]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[28] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[28]),
        .Q(pulse_period_read[28]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[29] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[29]),
        .Q(pulse_period_read[29]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\pulse_period_read[2]_i_1_n_0 ),
        .Q(pulse_period_read[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[30] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[30]),
        .Q(pulse_period_read[30]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[31] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[31]),
        .Q(pulse_period_read[31]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[3] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[3]),
        .Q(pulse_period_read[3]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[4] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[4]),
        .Q(pulse_period_read[4]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[5] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[5]),
        .Q(pulse_period_read[5]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[6] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[6]),
        .Q(pulse_period_read[6]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[7] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[7]),
        .Q(pulse_period_read[7]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[8] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[8]),
        .Q(pulse_period_read[8]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_period_read_reg[9] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_period[9]),
        .Q(pulse_period_read[9]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(pulse_i_1_n_0),
        .Q(pulse),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[0] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[0]),
        .Q(pulse_width_d[0]),
        .S(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[10] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[10]),
        .Q(pulse_width_d[10]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[11] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[11]),
        .Q(pulse_width_d[11]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[12] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[12]),
        .Q(pulse_width_d[12]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[13] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[13]),
        .Q(pulse_width_d[13]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[14] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[14]),
        .Q(pulse_width_d[14]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[15] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[15]),
        .Q(pulse_width_d[15]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[16] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[16]),
        .Q(pulse_width_d[16]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[17] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[17]),
        .Q(pulse_width_d[17]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[18] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[18]),
        .Q(pulse_width_d[18]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[19] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[19]),
        .Q(pulse_width_d[19]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[1] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[1]),
        .Q(pulse_width_d[1]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[20] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[20]),
        .Q(pulse_width_d[20]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[21] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[21]),
        .Q(pulse_width_d[21]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[22] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[22]),
        .Q(pulse_width_d[22]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[23] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[23]),
        .Q(pulse_width_d[23]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[24] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[24]),
        .Q(pulse_width_d[24]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[25] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[25]),
        .Q(pulse_width_d[25]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[26] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[26]),
        .Q(pulse_width_d[26]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[27] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[27]),
        .Q(pulse_width_d[27]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[28] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[28]),
        .Q(pulse_width_d[28]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[29] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[29]),
        .Q(pulse_width_d[29]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[2] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[2]),
        .Q(pulse_width_d[2]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[30] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[30]),
        .Q(pulse_width_d[30]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[31] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[31]),
        .Q(pulse_width_d[31]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[3] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[3]),
        .Q(pulse_width_d[3]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[4] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[4]),
        .Q(pulse_width_d[4]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[5] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[5]),
        .Q(pulse_width_d[5]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[6] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[6]),
        .Q(pulse_width_d[6]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[7] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[7]),
        .Q(pulse_width_d[7]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[8] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[8]),
        .Q(pulse_width_d[8]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_d_reg[9] 
       (.C(clk),
        .CE(pulse_period_d_0),
        .D(pulse_width_read[9]),
        .Q(pulse_width_d[9]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[0] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[0]),
        .Q(pulse_width_read[0]),
        .S(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[10] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[10]),
        .Q(pulse_width_read[10]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[11] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[11]),
        .Q(pulse_width_read[11]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[12] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[12]),
        .Q(pulse_width_read[12]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[13] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[13]),
        .Q(pulse_width_read[13]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[14] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[14]),
        .Q(pulse_width_read[14]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[15] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[15]),
        .Q(pulse_width_read[15]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[16] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[16]),
        .Q(pulse_width_read[16]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[17] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[17]),
        .Q(pulse_width_read[17]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[18] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[18]),
        .Q(pulse_width_read[18]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[19] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[19]),
        .Q(pulse_width_read[19]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[1] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[1]),
        .Q(pulse_width_read[1]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[20] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[20]),
        .Q(pulse_width_read[20]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[21] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[21]),
        .Q(pulse_width_read[21]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[22] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[22]),
        .Q(pulse_width_read[22]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[23] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[23]),
        .Q(pulse_width_read[23]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[24] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[24]),
        .Q(pulse_width_read[24]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[25] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[25]),
        .Q(pulse_width_read[25]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[26] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[26]),
        .Q(pulse_width_read[26]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[27] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[27]),
        .Q(pulse_width_read[27]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[28] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[28]),
        .Q(pulse_width_read[28]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[29] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[29]),
        .Q(pulse_width_read[29]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[2] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[2]),
        .Q(pulse_width_read[2]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[30] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[30]),
        .Q(pulse_width_read[30]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[31] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[31]),
        .Q(pulse_width_read[31]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[3] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[3]),
        .Q(pulse_width_read[3]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[4] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[4]),
        .Q(pulse_width_read[4]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[5] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[5]),
        .Q(pulse_width_read[5]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[6] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[6]),
        .Q(pulse_width_read[6]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[7] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[7]),
        .Q(pulse_width_read[7]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[8] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[8]),
        .Q(pulse_width_read[8]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pulse_width_read_reg[9] 
       (.C(clk),
        .CE(load_config),
        .D(pulse_width[9]),
        .Q(pulse_width_read[9]),
        .R(\pulse_period_read[31]_i_1_n_0 ));
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
