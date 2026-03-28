-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sun Jan 11 07:49:10 2026
-- Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_cdc_sync_active_0_sim_netlist.vhdl
-- Design      : system_cdc_sync_active_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits is
  port (
    out_bits : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_resetn : in STD_LOGIC;
    in_bits : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits is
  signal cdc_sync_stage1 : STD_LOGIC;
  signal \cdc_sync_stage1[0]_i_1_n_0\ : STD_LOGIC;
  signal \cdc_sync_stage2[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cdc_sync_stage1[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cdc_sync_stage2[0]_i_1\ : label is "soft_lutpair0";
begin
\cdc_sync_stage1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_bits(0),
      I1 => out_resetn,
      O => \cdc_sync_stage1[0]_i_1_n_0\
    );
\cdc_sync_stage1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => '1',
      D => \cdc_sync_stage1[0]_i_1_n_0\,
      Q => cdc_sync_stage1,
      R => '0'
    );
\cdc_sync_stage2[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cdc_sync_stage1,
      I1 => out_resetn,
      O => \cdc_sync_stage2[0]_i_1_n_0\
    );
\cdc_sync_stage2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => '1',
      D => \cdc_sync_stage2[0]_i_1_n_0\,
      Q => out_bits(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    in_bits : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_resetn : in STD_LOGIC;
    out_clk : in STD_LOGIC;
    out_bits : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_cdc_sync_active_0,sync_bits,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "sync_bits,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of out_clk : signal is "xilinx.com:signal:clock:1.0 out_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of out_clk : signal is "XIL_INTERFACENAME out_clk, ASSOCIATED_RESET out_resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_axi_ad9361_0_l_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_resetn : signal is "xilinx.com:signal:reset:1.0 out_resetn RST";
  attribute X_INTERFACE_PARAMETER of out_resetn : signal is "XIL_INTERFACENAME out_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_bits
     port map (
      in_bits(0) => in_bits(0),
      out_bits(0) => out_bits(0),
      out_clk => out_clk,
      out_resetn => out_resetn
    );
end STRUCTURE;
