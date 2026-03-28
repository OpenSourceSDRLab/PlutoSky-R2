-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sun Jan 11 07:49:37 2026
-- Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_out_mux_0_0_sim_netlist.vhdl
-- Design      : system_out_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_bus_mux is
  port (
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    select_path : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_bus_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_bus_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[9]_INST_0\ : label is "soft_lutpair4";
begin
\data_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(0),
      I1 => data_in_0(0),
      I2 => select_path,
      O => data_out(0)
    );
\data_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(10),
      I1 => data_in_0(10),
      I2 => select_path,
      O => data_out(10)
    );
\data_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(11),
      I1 => data_in_0(11),
      I2 => select_path,
      O => data_out(11)
    );
\data_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(12),
      I1 => data_in_0(12),
      I2 => select_path,
      O => data_out(12)
    );
\data_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(13),
      I1 => data_in_0(13),
      I2 => select_path,
      O => data_out(13)
    );
\data_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(14),
      I1 => data_in_0(14),
      I2 => select_path,
      O => data_out(14)
    );
\data_out[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(15),
      I1 => data_in_0(15),
      I2 => select_path,
      O => data_out(15)
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(1),
      I1 => data_in_0(1),
      I2 => select_path,
      O => data_out(1)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(2),
      I1 => data_in_0(2),
      I2 => select_path,
      O => data_out(2)
    );
\data_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(3),
      I1 => data_in_0(3),
      I2 => select_path,
      O => data_out(3)
    );
\data_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(4),
      I1 => data_in_0(4),
      I2 => select_path,
      O => data_out(4)
    );
\data_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(5),
      I1 => data_in_0(5),
      I2 => select_path,
      O => data_out(5)
    );
\data_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(6),
      I1 => data_in_0(6),
      I2 => select_path,
      O => data_out(6)
    );
\data_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(7),
      I1 => data_in_0(7),
      I2 => select_path,
      O => data_out(7)
    );
\data_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(8),
      I1 => data_in_0(8),
      I2 => select_path,
      O => data_out(8)
    );
\data_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data_in_1(9),
      I1 => data_in_0(9),
      I2 => select_path,
      O => data_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_out_mux_0_0,ad_bus_mux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ad_bus_mux,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
enable_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => enable_in_1,
      I1 => select_path,
      I2 => enable_in_0,
      O => enable_out
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ad_bus_mux
     port map (
      data_in_0(15 downto 0) => data_in_0(15 downto 0),
      data_in_1(15 downto 0) => data_in_1(15 downto 0),
      data_out(15 downto 0) => data_out(15 downto 0),
      select_path => select_path
    );
valid_out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => valid_in_1,
      I1 => select_path,
      I2 => valid_in_0,
      O => valid_out
    );
end STRUCTURE;
