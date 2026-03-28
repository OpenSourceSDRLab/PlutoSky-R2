-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Sun Jan 11 07:49:11 2026
-- Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_rate_gen_0_sim_netlist.vhdl
-- Design      : system_rate_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_pulse_gen is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pulse : out STD_LOGIC;
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    pulse_period : in STD_LOGIC_VECTOR ( 31 downto 0 );
    load_config : in STD_LOGIC;
    pulse_width : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_pulse_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_pulse_gen is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^pulse\ : STD_LOGIC;
  signal \pulse0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pulse0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pulse0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pulse0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pulse0_carry__0_n_0\ : STD_LOGIC;
  signal \pulse0_carry__0_n_1\ : STD_LOGIC;
  signal \pulse0_carry__0_n_2\ : STD_LOGIC;
  signal \pulse0_carry__0_n_3\ : STD_LOGIC;
  signal \pulse0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pulse0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pulse0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pulse0_carry__1_n_1\ : STD_LOGIC;
  signal \pulse0_carry__1_n_2\ : STD_LOGIC;
  signal \pulse0_carry__1_n_3\ : STD_LOGIC;
  signal pulse0_carry_i_1_n_0 : STD_LOGIC;
  signal pulse0_carry_i_2_n_0 : STD_LOGIC;
  signal pulse0_carry_i_3_n_0 : STD_LOGIC;
  signal pulse0_carry_i_4_n_0 : STD_LOGIC;
  signal pulse0_carry_n_0 : STD_LOGIC;
  signal pulse0_carry_n_1 : STD_LOGIC;
  signal pulse0_carry_n_2 : STD_LOGIC;
  signal pulse0_carry_n_3 : STD_LOGIC;
  signal pulse_i_10_n_0 : STD_LOGIC;
  signal pulse_i_1_n_0 : STD_LOGIC;
  signal pulse_i_2_n_0 : STD_LOGIC;
  signal pulse_i_3_n_0 : STD_LOGIC;
  signal pulse_i_4_n_0 : STD_LOGIC;
  signal pulse_i_5_n_0 : STD_LOGIC;
  signal pulse_i_6_n_0 : STD_LOGIC;
  signal pulse_i_7_n_0 : STD_LOGIC;
  signal pulse_i_8_n_0 : STD_LOGIC;
  signal pulse_i_9_n_0 : STD_LOGIC;
  signal pulse_period_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pulse_period_cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__6_n_2\ : STD_LOGIC;
  signal \pulse_period_cnt0_carry__6_n_3\ : STD_LOGIC;
  signal pulse_period_cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal pulse_period_cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal pulse_period_cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal pulse_period_cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal pulse_period_cnt0_carry_n_0 : STD_LOGIC;
  signal pulse_period_cnt0_carry_n_1 : STD_LOGIC;
  signal pulse_period_cnt0_carry_n_2 : STD_LOGIC;
  signal pulse_period_cnt0_carry_n_3 : STD_LOGIC;
  signal \pulse_period_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_period_cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal pulse_period_d : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pulse_period_d_0 : STD_LOGIC;
  signal pulse_period_read : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \pulse_period_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_read[0]_i_2_n_0\ : STD_LOGIC;
  signal \pulse_period_read[0]_i_3_n_0\ : STD_LOGIC;
  signal \pulse_period_read[0]_i_4_n_0\ : STD_LOGIC;
  signal \pulse_period_read[0]_i_5_n_0\ : STD_LOGIC;
  signal \pulse_period_read[0]_i_6_n_0\ : STD_LOGIC;
  signal \pulse_period_read[0]_i_7_n_0\ : STD_LOGIC;
  signal \pulse_period_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_read[2]_i_1_n_0\ : STD_LOGIC;
  signal \pulse_period_read[31]_i_1_n_0\ : STD_LOGIC;
  signal pulse_width_d : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pulse_width_read : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_pulse0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pulse0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pulse_period_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pulse_period_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of pulse_period_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \pulse_period_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \pulse_period_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \pulse_period_cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \pulse_period_cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \pulse_period_cnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \pulse_period_cnt0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \pulse_period_cnt0_carry__6\ : label is 35;
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  pulse <= \^pulse\;
pulse0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pulse0_carry_n_0,
      CO(2) => pulse0_carry_n_1,
      CO(1) => pulse0_carry_n_2,
      CO(0) => pulse0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pulse0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pulse0_carry_i_1_n_0,
      S(2) => pulse0_carry_i_2_n_0,
      S(1) => pulse0_carry_i_3_n_0,
      S(0) => pulse0_carry_i_4_n_0
    );
\pulse0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pulse0_carry_n_0,
      CO(3) => \pulse0_carry__0_n_0\,
      CO(2) => \pulse0_carry__0_n_1\,
      CO(1) => \pulse0_carry__0_n_2\,
      CO(0) => \pulse0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pulse0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pulse0_carry__0_i_1_n_0\,
      S(2) => \pulse0_carry__0_i_2_n_0\,
      S(1) => \pulse0_carry__0_i_3_n_0\,
      S(0) => \pulse0_carry__0_i_4_n_0\
    );
\pulse0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(23),
      I1 => \^q\(23),
      I2 => pulse_width_d(22),
      I3 => \^q\(22),
      I4 => \^q\(21),
      I5 => pulse_width_d(21),
      O => \pulse0_carry__0_i_1_n_0\
    );
\pulse0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(20),
      I1 => \^q\(20),
      I2 => pulse_width_d(19),
      I3 => \^q\(19),
      I4 => \^q\(18),
      I5 => pulse_width_d(18),
      O => \pulse0_carry__0_i_2_n_0\
    );
\pulse0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(17),
      I1 => \^q\(17),
      I2 => pulse_width_d(16),
      I3 => \^q\(16),
      I4 => \^q\(15),
      I5 => pulse_width_d(15),
      O => \pulse0_carry__0_i_3_n_0\
    );
\pulse0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(14),
      I1 => \^q\(14),
      I2 => pulse_width_d(13),
      I3 => \^q\(13),
      I4 => \^q\(12),
      I5 => pulse_width_d(12),
      O => \pulse0_carry__0_i_4_n_0\
    );
\pulse0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse0_carry__0_n_0\,
      CO(3) => \NLW_pulse0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \pulse0_carry__1_n_1\,
      CO(1) => \pulse0_carry__1_n_2\,
      CO(0) => \pulse0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pulse0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \pulse0_carry__1_i_1_n_0\,
      S(1) => \pulse0_carry__1_i_2_n_0\,
      S(0) => \pulse0_carry__1_i_3_n_0\
    );
\pulse0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(31),
      I1 => pulse_width_d(31),
      I2 => \^q\(30),
      I3 => pulse_width_d(30),
      O => \pulse0_carry__1_i_1_n_0\
    );
\pulse0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(29),
      I1 => \^q\(29),
      I2 => pulse_width_d(28),
      I3 => \^q\(28),
      I4 => \^q\(27),
      I5 => pulse_width_d(27),
      O => \pulse0_carry__1_i_2_n_0\
    );
\pulse0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(26),
      I1 => \^q\(26),
      I2 => pulse_width_d(25),
      I3 => \^q\(25),
      I4 => \^q\(24),
      I5 => pulse_width_d(24),
      O => \pulse0_carry__1_i_3_n_0\
    );
pulse0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(11),
      I1 => \^q\(11),
      I2 => pulse_width_d(10),
      I3 => \^q\(10),
      I4 => \^q\(9),
      I5 => pulse_width_d(9),
      O => pulse0_carry_i_1_n_0
    );
pulse0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(8),
      I1 => \^q\(8),
      I2 => pulse_width_d(7),
      I3 => \^q\(7),
      I4 => \^q\(6),
      I5 => pulse_width_d(6),
      O => pulse0_carry_i_2_n_0
    );
pulse0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(5),
      I1 => \^q\(5),
      I2 => pulse_width_d(4),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => pulse_width_d(3),
      O => pulse0_carry_i_3_n_0
    );
pulse0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pulse_width_d(2),
      I1 => \^q\(2),
      I2 => pulse_width_d(1),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => pulse_width_d(0),
      O => pulse0_carry_i_4_n_0
    );
pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A800"
    )
        port map (
      I0 => rstn,
      I1 => \pulse0_carry__1_n_1\,
      I2 => \^pulse\,
      I3 => \^q\(0),
      I4 => pulse_i_2_n_0,
      I5 => pulse_i_3_n_0,
      O => pulse_i_1_n_0
    );
pulse_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^q\(26),
      I2 => \^q\(29),
      I3 => \^q\(28),
      O => pulse_i_10_n_0
    );
pulse_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pulse_i_4_n_0,
      I1 => pulse_i_5_n_0,
      I2 => pulse_i_6_n_0,
      I3 => pulse_i_7_n_0,
      O => pulse_i_2_n_0
    );
pulse_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pulse_i_8_n_0,
      I1 => pulse_i_9_n_0,
      I2 => \^q\(31),
      I3 => \^q\(30),
      I4 => \^q\(1),
      I5 => pulse_i_10_n_0,
      O => pulse_i_3_n_0
    );
pulse_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(9),
      I3 => \^q\(8),
      O => pulse_i_4_n_0
    );
pulse_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(5),
      I3 => \^q\(4),
      O => pulse_i_5_n_0
    );
pulse_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(14),
      I2 => \^q\(17),
      I3 => \^q\(16),
      O => pulse_i_6_n_0
    );
pulse_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(10),
      I2 => \^q\(13),
      I3 => \^q\(12),
      O => pulse_i_7_n_0
    );
pulse_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^q\(22),
      I2 => \^q\(25),
      I3 => \^q\(24),
      O => pulse_i_8_n_0
    );
pulse_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^q\(18),
      I2 => \^q\(21),
      I3 => \^q\(20),
      O => pulse_i_9_n_0
    );
pulse_period_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pulse_period_cnt0_carry_n_0,
      CO(2) => pulse_period_cnt0_carry_n_1,
      CO(1) => pulse_period_cnt0_carry_n_2,
      CO(0) => pulse_period_cnt0_carry_n_3,
      CYINIT => \^q\(0),
      DI(3 downto 0) => \^q\(4 downto 1),
      O(3 downto 0) => data1(4 downto 1),
      S(3) => pulse_period_cnt0_carry_i_1_n_0,
      S(2) => pulse_period_cnt0_carry_i_2_n_0,
      S(1) => pulse_period_cnt0_carry_i_3_n_0,
      S(0) => pulse_period_cnt0_carry_i_4_n_0
    );
\pulse_period_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pulse_period_cnt0_carry_n_0,
      CO(3) => \pulse_period_cnt0_carry__0_n_0\,
      CO(2) => \pulse_period_cnt0_carry__0_n_1\,
      CO(1) => \pulse_period_cnt0_carry__0_n_2\,
      CO(0) => \pulse_period_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(8 downto 5),
      O(3 downto 0) => data1(8 downto 5),
      S(3) => \pulse_period_cnt0_carry__0_i_1_n_0\,
      S(2) => \pulse_period_cnt0_carry__0_i_2_n_0\,
      S(1) => \pulse_period_cnt0_carry__0_i_3_n_0\,
      S(0) => \pulse_period_cnt0_carry__0_i_4_n_0\
    );
\pulse_period_cnt0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \pulse_period_cnt0_carry__0_i_1_n_0\
    );
\pulse_period_cnt0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      O => \pulse_period_cnt0_carry__0_i_2_n_0\
    );
\pulse_period_cnt0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \pulse_period_cnt0_carry__0_i_3_n_0\
    );
\pulse_period_cnt0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \pulse_period_cnt0_carry__0_i_4_n_0\
    );
\pulse_period_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_period_cnt0_carry__0_n_0\,
      CO(3) => \pulse_period_cnt0_carry__1_n_0\,
      CO(2) => \pulse_period_cnt0_carry__1_n_1\,
      CO(1) => \pulse_period_cnt0_carry__1_n_2\,
      CO(0) => \pulse_period_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(12 downto 9),
      O(3 downto 0) => data1(12 downto 9),
      S(3) => \pulse_period_cnt0_carry__1_i_1_n_0\,
      S(2) => \pulse_period_cnt0_carry__1_i_2_n_0\,
      S(1) => \pulse_period_cnt0_carry__1_i_3_n_0\,
      S(0) => \pulse_period_cnt0_carry__1_i_4_n_0\
    );
\pulse_period_cnt0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      O => \pulse_period_cnt0_carry__1_i_1_n_0\
    );
\pulse_period_cnt0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(11),
      O => \pulse_period_cnt0_carry__1_i_2_n_0\
    );
\pulse_period_cnt0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(10),
      O => \pulse_period_cnt0_carry__1_i_3_n_0\
    );
\pulse_period_cnt0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \pulse_period_cnt0_carry__1_i_4_n_0\
    );
\pulse_period_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_period_cnt0_carry__1_n_0\,
      CO(3) => \pulse_period_cnt0_carry__2_n_0\,
      CO(2) => \pulse_period_cnt0_carry__2_n_1\,
      CO(1) => \pulse_period_cnt0_carry__2_n_2\,
      CO(0) => \pulse_period_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(16 downto 13),
      O(3 downto 0) => data1(16 downto 13),
      S(3) => \pulse_period_cnt0_carry__2_i_1_n_0\,
      S(2) => \pulse_period_cnt0_carry__2_i_2_n_0\,
      S(1) => \pulse_period_cnt0_carry__2_i_3_n_0\,
      S(0) => \pulse_period_cnt0_carry__2_i_4_n_0\
    );
\pulse_period_cnt0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(16),
      O => \pulse_period_cnt0_carry__2_i_1_n_0\
    );
\pulse_period_cnt0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(15),
      O => \pulse_period_cnt0_carry__2_i_2_n_0\
    );
\pulse_period_cnt0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      O => \pulse_period_cnt0_carry__2_i_3_n_0\
    );
\pulse_period_cnt0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(13),
      O => \pulse_period_cnt0_carry__2_i_4_n_0\
    );
\pulse_period_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_period_cnt0_carry__2_n_0\,
      CO(3) => \pulse_period_cnt0_carry__3_n_0\,
      CO(2) => \pulse_period_cnt0_carry__3_n_1\,
      CO(1) => \pulse_period_cnt0_carry__3_n_2\,
      CO(0) => \pulse_period_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(20 downto 17),
      O(3 downto 0) => data1(20 downto 17),
      S(3) => \pulse_period_cnt0_carry__3_i_1_n_0\,
      S(2) => \pulse_period_cnt0_carry__3_i_2_n_0\,
      S(1) => \pulse_period_cnt0_carry__3_i_3_n_0\,
      S(0) => \pulse_period_cnt0_carry__3_i_4_n_0\
    );
\pulse_period_cnt0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(20),
      O => \pulse_period_cnt0_carry__3_i_1_n_0\
    );
\pulse_period_cnt0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(19),
      O => \pulse_period_cnt0_carry__3_i_2_n_0\
    );
\pulse_period_cnt0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(18),
      O => \pulse_period_cnt0_carry__3_i_3_n_0\
    );
\pulse_period_cnt0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(17),
      O => \pulse_period_cnt0_carry__3_i_4_n_0\
    );
\pulse_period_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_period_cnt0_carry__3_n_0\,
      CO(3) => \pulse_period_cnt0_carry__4_n_0\,
      CO(2) => \pulse_period_cnt0_carry__4_n_1\,
      CO(1) => \pulse_period_cnt0_carry__4_n_2\,
      CO(0) => \pulse_period_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(24 downto 21),
      O(3 downto 0) => data1(24 downto 21),
      S(3) => \pulse_period_cnt0_carry__4_i_1_n_0\,
      S(2) => \pulse_period_cnt0_carry__4_i_2_n_0\,
      S(1) => \pulse_period_cnt0_carry__4_i_3_n_0\,
      S(0) => \pulse_period_cnt0_carry__4_i_4_n_0\
    );
\pulse_period_cnt0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(24),
      O => \pulse_period_cnt0_carry__4_i_1_n_0\
    );
\pulse_period_cnt0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(23),
      O => \pulse_period_cnt0_carry__4_i_2_n_0\
    );
\pulse_period_cnt0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(22),
      O => \pulse_period_cnt0_carry__4_i_3_n_0\
    );
\pulse_period_cnt0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(21),
      O => \pulse_period_cnt0_carry__4_i_4_n_0\
    );
\pulse_period_cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_period_cnt0_carry__4_n_0\,
      CO(3) => \pulse_period_cnt0_carry__5_n_0\,
      CO(2) => \pulse_period_cnt0_carry__5_n_1\,
      CO(1) => \pulse_period_cnt0_carry__5_n_2\,
      CO(0) => \pulse_period_cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(28 downto 25),
      O(3 downto 0) => data1(28 downto 25),
      S(3) => \pulse_period_cnt0_carry__5_i_1_n_0\,
      S(2) => \pulse_period_cnt0_carry__5_i_2_n_0\,
      S(1) => \pulse_period_cnt0_carry__5_i_3_n_0\,
      S(0) => \pulse_period_cnt0_carry__5_i_4_n_0\
    );
\pulse_period_cnt0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(28),
      O => \pulse_period_cnt0_carry__5_i_1_n_0\
    );
\pulse_period_cnt0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(27),
      O => \pulse_period_cnt0_carry__5_i_2_n_0\
    );
\pulse_period_cnt0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(26),
      O => \pulse_period_cnt0_carry__5_i_3_n_0\
    );
\pulse_period_cnt0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(25),
      O => \pulse_period_cnt0_carry__5_i_4_n_0\
    );
\pulse_period_cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \pulse_period_cnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_pulse_period_cnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pulse_period_cnt0_carry__6_n_2\,
      CO(0) => \pulse_period_cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^q\(30 downto 29),
      O(3) => \NLW_pulse_period_cnt0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data1(31 downto 29),
      S(3) => '0',
      S(2) => \pulse_period_cnt0_carry__6_i_1_n_0\,
      S(1) => \pulse_period_cnt0_carry__6_i_2_n_0\,
      S(0) => \pulse_period_cnt0_carry__6_i_3_n_0\
    );
\pulse_period_cnt0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(31),
      O => \pulse_period_cnt0_carry__6_i_1_n_0\
    );
\pulse_period_cnt0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(30),
      O => \pulse_period_cnt0_carry__6_i_2_n_0\
    );
\pulse_period_cnt0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(29),
      O => \pulse_period_cnt0_carry__6_i_3_n_0\
    );
pulse_period_cnt0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => pulse_period_cnt0_carry_i_1_n_0
    );
pulse_period_cnt0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => pulse_period_cnt0_carry_i_2_n_0
    );
pulse_period_cnt0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => pulse_period_cnt0_carry_i_3_n_0
    );
pulse_period_cnt0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => pulse_period_cnt0_carry_i_4_n_0
    );
\pulse_period_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333332"
    )
        port map (
      I0 => pulse_period_d(0),
      I1 => \^q\(0),
      I2 => \pulse_period_cnt[31]_i_3_n_0\,
      I3 => \pulse_period_cnt[31]_i_2_n_0\,
      I4 => pulse_i_3_n_0,
      O => pulse_period_cnt(0)
    );
\pulse_period_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(10),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(10),
      O => pulse_period_cnt(10)
    );
\pulse_period_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(11),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(11),
      O => pulse_period_cnt(11)
    );
\pulse_period_cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(12),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(12),
      O => pulse_period_cnt(12)
    );
\pulse_period_cnt[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(13),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(13),
      O => pulse_period_cnt(13)
    );
\pulse_period_cnt[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(14),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(14),
      O => pulse_period_cnt(14)
    );
\pulse_period_cnt[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(15),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(15),
      O => pulse_period_cnt(15)
    );
\pulse_period_cnt[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(16),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(16),
      O => pulse_period_cnt(16)
    );
\pulse_period_cnt[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(17),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(17),
      O => pulse_period_cnt(17)
    );
\pulse_period_cnt[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(18),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(18),
      O => pulse_period_cnt(18)
    );
\pulse_period_cnt[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(19),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(19),
      O => pulse_period_cnt(19)
    );
\pulse_period_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(1),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(1),
      O => pulse_period_cnt(1)
    );
\pulse_period_cnt[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(20),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(20),
      O => pulse_period_cnt(20)
    );
\pulse_period_cnt[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(21),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(21),
      O => pulse_period_cnt(21)
    );
\pulse_period_cnt[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(22),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(22),
      O => pulse_period_cnt(22)
    );
\pulse_period_cnt[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(23),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(23),
      O => pulse_period_cnt(23)
    );
\pulse_period_cnt[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(24),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(24),
      O => pulse_period_cnt(24)
    );
\pulse_period_cnt[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(25),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(25),
      O => pulse_period_cnt(25)
    );
\pulse_period_cnt[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(26),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(26),
      O => pulse_period_cnt(26)
    );
\pulse_period_cnt[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(27),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(27),
      O => pulse_period_cnt(27)
    );
\pulse_period_cnt[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(28),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(28),
      O => pulse_period_cnt(28)
    );
\pulse_period_cnt[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(29),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(29),
      O => pulse_period_cnt(29)
    );
\pulse_period_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(2),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(2),
      O => pulse_period_cnt(2)
    );
\pulse_period_cnt[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(30),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(30),
      O => pulse_period_cnt(30)
    );
\pulse_period_cnt[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(31),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(31),
      O => pulse_period_cnt(31)
    );
\pulse_period_cnt[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => pulse_i_4_n_0,
      O => \pulse_period_cnt[31]_i_2_n_0\
    );
\pulse_period_cnt[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      I2 => \^q\(10),
      I3 => \^q\(11),
      I4 => pulse_i_6_n_0,
      O => \pulse_period_cnt[31]_i_3_n_0\
    );
\pulse_period_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(3),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(3),
      O => pulse_period_cnt(3)
    );
\pulse_period_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(4),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(4),
      O => pulse_period_cnt(4)
    );
\pulse_period_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(5),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(5),
      O => pulse_period_cnt(5)
    );
\pulse_period_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(6),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(6),
      O => pulse_period_cnt(6)
    );
\pulse_period_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(7),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(7),
      O => pulse_period_cnt(7)
    );
\pulse_period_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(8),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(8),
      O => pulse_period_cnt(8)
    );
\pulse_period_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => data1(9),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      I4 => \^q\(0),
      I5 => pulse_period_d(9),
      O => pulse_period_cnt(9)
    );
\pulse_period_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(0),
      Q => \^q\(0),
      R => '0'
    );
\pulse_period_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(10),
      Q => \^q\(10),
      R => '0'
    );
\pulse_period_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(11),
      Q => \^q\(11),
      R => '0'
    );
\pulse_period_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(12),
      Q => \^q\(12),
      R => '0'
    );
\pulse_period_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(13),
      Q => \^q\(13),
      R => '0'
    );
\pulse_period_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(14),
      Q => \^q\(14),
      R => '0'
    );
\pulse_period_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(15),
      Q => \^q\(15),
      R => '0'
    );
\pulse_period_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(16),
      Q => \^q\(16),
      R => '0'
    );
\pulse_period_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(17),
      Q => \^q\(17),
      R => '0'
    );
\pulse_period_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(18),
      Q => \^q\(18),
      R => '0'
    );
\pulse_period_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(19),
      Q => \^q\(19),
      R => '0'
    );
\pulse_period_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(1),
      Q => \^q\(1),
      R => '0'
    );
\pulse_period_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(20),
      Q => \^q\(20),
      R => '0'
    );
\pulse_period_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(21),
      Q => \^q\(21),
      R => '0'
    );
\pulse_period_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(22),
      Q => \^q\(22),
      R => '0'
    );
\pulse_period_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(23),
      Q => \^q\(23),
      R => '0'
    );
\pulse_period_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(24),
      Q => \^q\(24),
      R => '0'
    );
\pulse_period_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(25),
      Q => \^q\(25),
      R => '0'
    );
\pulse_period_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(26),
      Q => \^q\(26),
      R => '0'
    );
\pulse_period_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(27),
      Q => \^q\(27),
      R => '0'
    );
\pulse_period_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(28),
      Q => \^q\(28),
      R => '0'
    );
\pulse_period_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(29),
      Q => \^q\(29),
      R => '0'
    );
\pulse_period_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(2),
      Q => \^q\(2),
      R => '0'
    );
\pulse_period_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(30),
      Q => \^q\(30),
      R => '0'
    );
\pulse_period_cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(31),
      Q => \^q\(31),
      R => '0'
    );
\pulse_period_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(3),
      Q => \^q\(3),
      R => '0'
    );
\pulse_period_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(4),
      Q => \^q\(4),
      R => '0'
    );
\pulse_period_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(5),
      Q => \^q\(5),
      R => '0'
    );
\pulse_period_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(6),
      Q => \^q\(6),
      R => '0'
    );
\pulse_period_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(7),
      Q => \^q\(7),
      R => '0'
    );
\pulse_period_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(8),
      Q => \^q\(8),
      R => '0'
    );
\pulse_period_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_period_cnt(9),
      Q => \^q\(9),
      R => '0'
    );
\pulse_period_d[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => pulse_i_3_n_0,
      I2 => \pulse_period_cnt[31]_i_2_n_0\,
      I3 => \pulse_period_cnt[31]_i_3_n_0\,
      O => pulse_period_d_0
    );
\pulse_period_d_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(0),
      Q => pulse_period_d(0),
      S => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(10),
      Q => pulse_period_d(10),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(11),
      Q => pulse_period_d(11),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(12),
      Q => pulse_period_d(12),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(13),
      Q => pulse_period_d(13),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(14),
      Q => pulse_period_d(14),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(15),
      Q => pulse_period_d(15),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(16),
      Q => pulse_period_d(16),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(17),
      Q => pulse_period_d(17),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(18),
      Q => pulse_period_d(18),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(19),
      Q => pulse_period_d(19),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(1),
      Q => pulse_period_d(1),
      S => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(20),
      Q => pulse_period_d(20),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(21),
      Q => pulse_period_d(21),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(22),
      Q => pulse_period_d(22),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(23),
      Q => pulse_period_d(23),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(24),
      Q => pulse_period_d(24),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(25),
      Q => pulse_period_d(25),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(26),
      Q => pulse_period_d(26),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(27),
      Q => pulse_period_d(27),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(28),
      Q => pulse_period_d(28),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(29),
      Q => pulse_period_d(29),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(2),
      Q => pulse_period_d(2),
      S => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(30),
      Q => pulse_period_d(30),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(31),
      Q => pulse_period_d(31),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(3),
      Q => pulse_period_d(3),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(4),
      Q => pulse_period_d(4),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(5),
      Q => pulse_period_d(5),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(6),
      Q => pulse_period_d(6),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(7),
      Q => pulse_period_d(7),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(8),
      Q => pulse_period_d(8),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_d_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_period_read(9),
      Q => pulse_period_d(9),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFE0FF"
    )
        port map (
      I0 => pulse_period(0),
      I1 => \pulse_period_read[0]_i_2_n_0\,
      I2 => load_config,
      I3 => rstn,
      I4 => pulse_period_read(0),
      O => \pulse_period_read[0]_i_1_n_0\
    );
\pulse_period_read[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \pulse_period_read[0]_i_3_n_0\,
      I1 => \pulse_period_read[0]_i_4_n_0\,
      I2 => \pulse_period_read[0]_i_5_n_0\,
      I3 => \pulse_period_read[0]_i_6_n_0\,
      I4 => pulse_period(1),
      I5 => \pulse_period_read[0]_i_7_n_0\,
      O => \pulse_period_read[0]_i_2_n_0\
    );
\pulse_period_read[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pulse_period(28),
      I1 => pulse_period(29),
      I2 => pulse_period(26),
      I3 => pulse_period(27),
      I4 => pulse_period(31),
      I5 => pulse_period(30),
      O => \pulse_period_read[0]_i_3_n_0\
    );
\pulse_period_read[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pulse_period(10),
      I1 => pulse_period(11),
      I2 => pulse_period(8),
      I3 => pulse_period(9),
      I4 => pulse_period(13),
      I5 => pulse_period(12),
      O => \pulse_period_read[0]_i_4_n_0\
    );
\pulse_period_read[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pulse_period(4),
      I1 => pulse_period(5),
      I2 => pulse_period(2),
      I3 => pulse_period(3),
      I4 => pulse_period(7),
      I5 => pulse_period(6),
      O => \pulse_period_read[0]_i_5_n_0\
    );
\pulse_period_read[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pulse_period(22),
      I1 => pulse_period(23),
      I2 => pulse_period(20),
      I3 => pulse_period(21),
      I4 => pulse_period(25),
      I5 => pulse_period(24),
      O => \pulse_period_read[0]_i_6_n_0\
    );
\pulse_period_read[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => pulse_period(16),
      I1 => pulse_period(17),
      I2 => pulse_period(14),
      I3 => pulse_period(15),
      I4 => pulse_period(19),
      I5 => pulse_period(18),
      O => \pulse_period_read[0]_i_7_n_0\
    );
\pulse_period_read[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF8F"
    )
        port map (
      I0 => pulse_period(1),
      I1 => load_config,
      I2 => rstn,
      I3 => pulse_period_read(1),
      O => \pulse_period_read[1]_i_1_n_0\
    );
\pulse_period_read[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF8F"
    )
        port map (
      I0 => pulse_period(2),
      I1 => load_config,
      I2 => rstn,
      I3 => pulse_period_read(2),
      O => \pulse_period_read[2]_i_1_n_0\
    );
\pulse_period_read[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \pulse_period_read[0]_i_1_n_0\,
      Q => pulse_period_read(0),
      R => '0'
    );
\pulse_period_read_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(10),
      Q => pulse_period_read(10),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(11),
      Q => pulse_period_read(11),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(12),
      Q => pulse_period_read(12),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(13),
      Q => pulse_period_read(13),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(14),
      Q => pulse_period_read(14),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(15),
      Q => pulse_period_read(15),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(16),
      Q => pulse_period_read(16),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(17),
      Q => pulse_period_read(17),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(18),
      Q => pulse_period_read(18),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(19),
      Q => pulse_period_read(19),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \pulse_period_read[1]_i_1_n_0\,
      Q => pulse_period_read(1),
      R => '0'
    );
\pulse_period_read_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(20),
      Q => pulse_period_read(20),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(21),
      Q => pulse_period_read(21),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(22),
      Q => pulse_period_read(22),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(23),
      Q => pulse_period_read(23),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(24),
      Q => pulse_period_read(24),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(25),
      Q => pulse_period_read(25),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(26),
      Q => pulse_period_read(26),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(27),
      Q => pulse_period_read(27),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(28),
      Q => pulse_period_read(28),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(29),
      Q => pulse_period_read(29),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \pulse_period_read[2]_i_1_n_0\,
      Q => pulse_period_read(2),
      R => '0'
    );
\pulse_period_read_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(30),
      Q => pulse_period_read(30),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(31),
      Q => pulse_period_read(31),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(3),
      Q => pulse_period_read(3),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(4),
      Q => pulse_period_read(4),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(5),
      Q => pulse_period_read(5),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(6),
      Q => pulse_period_read(6),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(7),
      Q => pulse_period_read(7),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(8),
      Q => pulse_period_read(8),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_period_read_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_period(9),
      Q => pulse_period_read(9),
      R => \pulse_period_read[31]_i_1_n_0\
    );
pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pulse_i_1_n_0,
      Q => \^pulse\,
      R => '0'
    );
\pulse_width_d_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(0),
      Q => pulse_width_d(0),
      S => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(10),
      Q => pulse_width_d(10),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(11),
      Q => pulse_width_d(11),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(12),
      Q => pulse_width_d(12),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(13),
      Q => pulse_width_d(13),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(14),
      Q => pulse_width_d(14),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(15),
      Q => pulse_width_d(15),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(16),
      Q => pulse_width_d(16),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(17),
      Q => pulse_width_d(17),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(18),
      Q => pulse_width_d(18),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(19),
      Q => pulse_width_d(19),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(1),
      Q => pulse_width_d(1),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(20),
      Q => pulse_width_d(20),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(21),
      Q => pulse_width_d(21),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(22),
      Q => pulse_width_d(22),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(23),
      Q => pulse_width_d(23),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(24),
      Q => pulse_width_d(24),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(25),
      Q => pulse_width_d(25),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(26),
      Q => pulse_width_d(26),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(27),
      Q => pulse_width_d(27),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(28),
      Q => pulse_width_d(28),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(29),
      Q => pulse_width_d(29),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(2),
      Q => pulse_width_d(2),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(30),
      Q => pulse_width_d(30),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(31),
      Q => pulse_width_d(31),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(3),
      Q => pulse_width_d(3),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(4),
      Q => pulse_width_d(4),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(5),
      Q => pulse_width_d(5),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(6),
      Q => pulse_width_d(6),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(7),
      Q => pulse_width_d(7),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(8),
      Q => pulse_width_d(8),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_d_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pulse_period_d_0,
      D => pulse_width_read(9),
      Q => pulse_width_d(9),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(0),
      Q => pulse_width_read(0),
      S => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(10),
      Q => pulse_width_read(10),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(11),
      Q => pulse_width_read(11),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(12),
      Q => pulse_width_read(12),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(13),
      Q => pulse_width_read(13),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(14),
      Q => pulse_width_read(14),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(15),
      Q => pulse_width_read(15),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(16),
      Q => pulse_width_read(16),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(17),
      Q => pulse_width_read(17),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(18),
      Q => pulse_width_read(18),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(19),
      Q => pulse_width_read(19),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(1),
      Q => pulse_width_read(1),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(20),
      Q => pulse_width_read(20),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(21),
      Q => pulse_width_read(21),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(22),
      Q => pulse_width_read(22),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(23),
      Q => pulse_width_read(23),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(24),
      Q => pulse_width_read(24),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(25),
      Q => pulse_width_read(25),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(26),
      Q => pulse_width_read(26),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(27),
      Q => pulse_width_read(27),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(28),
      Q => pulse_width_read(28),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(29),
      Q => pulse_width_read(29),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(2),
      Q => pulse_width_read(2),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(30),
      Q => pulse_width_read(30),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(31),
      Q => pulse_width_read(31),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(3),
      Q => pulse_width_read(3),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(4),
      Q => pulse_width_read(4),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(5),
      Q => pulse_width_read(5),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(6),
      Q => pulse_width_read(6),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(7),
      Q => pulse_width_read(7),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(8),
      Q => pulse_width_read(8),
      R => \pulse_period_read[31]_i_1_n_0\
    );
\pulse_width_read_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => load_config,
      D => pulse_width(9),
      Q => pulse_width_read(9),
      R => \pulse_period_read[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    pulse_width : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pulse_period : in STD_LOGIC_VECTOR ( 31 downto 0 );
    load_config : in STD_LOGIC;
    pulse : out STD_LOGIC;
    pulse_counter : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_rate_gen_0,util_pulse_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "util_pulse_gen,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal p_0_in : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_axi_ad9361_0_l_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => p_0_in
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_pulse_gen
     port map (
      Q(31 downto 0) => pulse_counter(31 downto 0),
      clk => clk,
      load_config => load_config,
      pulse => pulse,
      pulse_period(31 downto 0) => pulse_period(31 downto 0),
      pulse_width(31 downto 0) => pulse_width(31 downto 0),
      rstn => rstn
    );
end STRUCTURE;
