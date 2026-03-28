-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sun Jan 11 07:49:37 2026
-- Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_out_mux_0_0_stub.vhdl
-- Design      : system_out_mux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    select_path : in STD_LOGIC;
    valid_in_0 : in STD_LOGIC;
    enable_in_0 : in STD_LOGIC;
    data_in_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_in_1 : in STD_LOGIC;
    enable_in_1 : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out : out STD_LOGIC;
    enable_out : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "select_path,valid_in_0,enable_in_0,data_in_0[15:0],valid_in_1,enable_in_1,data_in_1[15:0],valid_out,enable_out,data_out[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ad_bus_mux,Vivado 2022.2";
begin
end;
