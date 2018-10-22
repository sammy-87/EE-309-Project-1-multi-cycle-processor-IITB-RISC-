-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "10/22/2018 23:32:29"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Nand_self IS
    PORT (
	x : IN std_logic_vector(15 DOWNTO 0);
	y : IN std_logic_vector(15 DOWNTO 0);
	s0 : OUT std_logic_vector(15 DOWNTO 0)
	);
END Nand_self;

-- Design Ports Information


ARCHITECTURE structure OF Nand_self IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_s0 : std_logic_vector(15 DOWNTO 0);
SIGNAL \s0~0_combout\ : std_logic;
SIGNAL \s0~1_combout\ : std_logic;
SIGNAL \s0~2_combout\ : std_logic;
SIGNAL \s0~3_combout\ : std_logic;
SIGNAL \s0~4_combout\ : std_logic;
SIGNAL \s0~5_combout\ : std_logic;
SIGNAL \s0~6_combout\ : std_logic;
SIGNAL \s0~7_combout\ : std_logic;
SIGNAL \s0~8_combout\ : std_logic;
SIGNAL \s0~9_combout\ : std_logic;
SIGNAL \s0~10_combout\ : std_logic;
SIGNAL \s0~11_combout\ : std_logic;
SIGNAL \s0~12_combout\ : std_logic;
SIGNAL \s0~13_combout\ : std_logic;
SIGNAL \s0~14_combout\ : std_logic;
SIGNAL \s0~15_combout\ : std_logic;
SIGNAL \x~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \y~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_s0~15_combout\ : std_logic;
SIGNAL \ALT_INV_s0~14_combout\ : std_logic;
SIGNAL \ALT_INV_s0~13_combout\ : std_logic;
SIGNAL \ALT_INV_s0~12_combout\ : std_logic;
SIGNAL \ALT_INV_s0~11_combout\ : std_logic;
SIGNAL \ALT_INV_s0~10_combout\ : std_logic;
SIGNAL \ALT_INV_s0~9_combout\ : std_logic;
SIGNAL \ALT_INV_s0~8_combout\ : std_logic;
SIGNAL \ALT_INV_s0~7_combout\ : std_logic;
SIGNAL \ALT_INV_s0~6_combout\ : std_logic;
SIGNAL \ALT_INV_s0~5_combout\ : std_logic;
SIGNAL \ALT_INV_s0~4_combout\ : std_logic;
SIGNAL \ALT_INV_s0~3_combout\ : std_logic;
SIGNAL \ALT_INV_s0~2_combout\ : std_logic;
SIGNAL \ALT_INV_s0~1_combout\ : std_logic;
SIGNAL \ALT_INV_s0~0_combout\ : std_logic;

BEGIN

ww_x <= x;
ww_y <= y;
s0 <= ww_s0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s0~15_combout\ <= NOT \s0~15_combout\;
\ALT_INV_s0~14_combout\ <= NOT \s0~14_combout\;
\ALT_INV_s0~13_combout\ <= NOT \s0~13_combout\;
\ALT_INV_s0~12_combout\ <= NOT \s0~12_combout\;
\ALT_INV_s0~11_combout\ <= NOT \s0~11_combout\;
\ALT_INV_s0~10_combout\ <= NOT \s0~10_combout\;
\ALT_INV_s0~9_combout\ <= NOT \s0~9_combout\;
\ALT_INV_s0~8_combout\ <= NOT \s0~8_combout\;
\ALT_INV_s0~7_combout\ <= NOT \s0~7_combout\;
\ALT_INV_s0~6_combout\ <= NOT \s0~6_combout\;
\ALT_INV_s0~5_combout\ <= NOT \s0~5_combout\;
\ALT_INV_s0~4_combout\ <= NOT \s0~4_combout\;
\ALT_INV_s0~3_combout\ <= NOT \s0~3_combout\;
\ALT_INV_s0~2_combout\ <= NOT \s0~2_combout\;
\ALT_INV_s0~1_combout\ <= NOT \s0~1_combout\;
\ALT_INV_s0~0_combout\ <= NOT \s0~0_combout\;

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(0),
	combout => \y~combout\(0));

-- Location: LC_X12_Y3_N2
\s0~0\ : maxv_lcell
-- Equation(s):
-- \s0~0_combout\ = (((\x~combout\(0) & \y~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\(0),
	datad => \y~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~0_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(1),
	combout => \y~combout\(1));

-- Location: LC_X16_Y5_N9
\s0~1\ : maxv_lcell
-- Equation(s):
-- \s0~1_combout\ = (\x~combout\(1) & (((\y~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(1),
	datad => \y~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~1_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(2),
	combout => \y~combout\(2));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(2),
	combout => \x~combout\(2));

-- Location: LC_X9_Y10_N3
\s0~2\ : maxv_lcell
-- Equation(s):
-- \s0~2_combout\ = (((\y~combout\(2) & \x~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \y~combout\(2),
	datad => \x~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~2_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(3),
	combout => \y~combout\(3));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(3),
	combout => \x~combout\(3));

-- Location: LC_X10_Y10_N2
\s0~3\ : maxv_lcell
-- Equation(s):
-- \s0~3_combout\ = (((\y~combout\(3) & \x~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \y~combout\(3),
	datad => \x~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~3_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(4),
	combout => \y~combout\(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(4),
	combout => \x~combout\(4));

-- Location: LC_X5_Y4_N2
\s0~4\ : maxv_lcell
-- Equation(s):
-- \s0~4_combout\ = (\y~combout\(4) & (((\x~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(4),
	datac => \x~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~4_combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(5),
	combout => \y~combout\(5));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(5),
	combout => \x~combout\(5));

-- Location: LC_X12_Y10_N2
\s0~5\ : maxv_lcell
-- Equation(s):
-- \s0~5_combout\ = (\y~combout\(5) & (((\x~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(5),
	datac => \x~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~5_combout\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(6),
	combout => \y~combout\(6));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(6),
	combout => \x~combout\(6));

-- Location: LC_X16_Y8_N3
\s0~6\ : maxv_lcell
-- Equation(s):
-- \s0~6_combout\ = (\y~combout\(6) & (((\x~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(6),
	datad => \x~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~6_combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(7),
	combout => \x~combout\(7));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(7),
	combout => \y~combout\(7));

-- Location: LC_X16_Y7_N2
\s0~7\ : maxv_lcell
-- Equation(s):
-- \s0~7_combout\ = (\x~combout\(7) & (((\y~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(7),
	datad => \y~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~7_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(8),
	combout => \y~combout\(8));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(8),
	combout => \x~combout\(8));

-- Location: LC_X1_Y6_N3
\s0~8\ : maxv_lcell
-- Equation(s):
-- \s0~8_combout\ = ((\y~combout\(8) & ((\x~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(8),
	datad => \x~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~8_combout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(9),
	combout => \x~combout\(9));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(9),
	combout => \y~combout\(9));

-- Location: LC_X5_Y10_N2
\s0~9\ : maxv_lcell
-- Equation(s):
-- \s0~9_combout\ = (((\x~combout\(9) & \y~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \x~combout\(9),
	datad => \y~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~9_combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(10),
	combout => \y~combout\(10));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(10),
	combout => \x~combout\(10));

-- Location: LC_X8_Y10_N1
\s0~10\ : maxv_lcell
-- Equation(s):
-- \s0~10_combout\ = ((\y~combout\(10) & (\x~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(10),
	datac => \x~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~10_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(11),
	combout => \x~combout\(11));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(11),
	combout => \y~combout\(11));

-- Location: LC_X9_Y4_N7
\s0~11\ : maxv_lcell
-- Equation(s):
-- \s0~11_combout\ = ((\x~combout\(11) & ((\y~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(11),
	datad => \y~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~11_combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(12),
	combout => \y~combout\(12));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(12),
	combout => \x~combout\(12));

-- Location: LC_X1_Y7_N8
\s0~12\ : maxv_lcell
-- Equation(s):
-- \s0~12_combout\ = ((\y~combout\(12) & ((\x~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(12),
	datad => \x~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~12_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(13),
	combout => \y~combout\(13));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(13),
	combout => \x~combout\(13));

-- Location: LC_X1_Y10_N4
\s0~13\ : maxv_lcell
-- Equation(s):
-- \s0~13_combout\ = ((\y~combout\(13) & ((\x~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(13),
	datad => \x~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~13_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(14),
	combout => \y~combout\(14));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(14),
	combout => \x~combout\(14));

-- Location: LC_X2_Y4_N5
\s0~14\ : maxv_lcell
-- Equation(s):
-- \s0~14_combout\ = (\y~combout\(14) & (((\x~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(14),
	datac => \x~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~14_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(15),
	combout => \x~combout\(15));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(15),
	combout => \y~combout\(15));

-- Location: LC_X16_Y5_N4
\s0~15\ : maxv_lcell
-- Equation(s):
-- \s0~15_combout\ = ((\x~combout\(15) & ((\y~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(15),
	datad => \y~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \s0~15_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~0_combout\,
	oe => VCC,
	padio => ww_s0(0));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~1_combout\,
	oe => VCC,
	padio => ww_s0(1));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~2_combout\,
	oe => VCC,
	padio => ww_s0(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~3_combout\,
	oe => VCC,
	padio => ww_s0(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~4_combout\,
	oe => VCC,
	padio => ww_s0(4));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~5_combout\,
	oe => VCC,
	padio => ww_s0(5));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~6_combout\,
	oe => VCC,
	padio => ww_s0(6));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~7_combout\,
	oe => VCC,
	padio => ww_s0(7));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~8_combout\,
	oe => VCC,
	padio => ww_s0(8));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~9_combout\,
	oe => VCC,
	padio => ww_s0(9));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~10_combout\,
	oe => VCC,
	padio => ww_s0(10));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~11_combout\,
	oe => VCC,
	padio => ww_s0(11));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~12_combout\,
	oe => VCC,
	padio => ww_s0(12));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~13_combout\,
	oe => VCC,
	padio => ww_s0(13));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~14_combout\,
	oe => VCC,
	padio => ww_s0(14));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s0~15_combout\,
	oe => VCC,
	padio => ww_s0(15));
END structure;


