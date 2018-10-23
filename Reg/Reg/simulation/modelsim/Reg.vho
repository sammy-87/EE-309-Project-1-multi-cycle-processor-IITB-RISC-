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

-- DATE "10/23/2018 11:09:42"

-- 
-- Device: Altera 5M240ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Reg IS
    PORT (
	d : IN std_logic_vector(15 DOWNTO 0);
	en : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	q : OUT std_logic_vector(15 DOWNTO 0)
	);
END Reg;

-- Design Ports Information


ARCHITECTURE structure OF Reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \en~combout\ : std_logic;
SIGNAL \q[0]~reg0_regout\ : std_logic;
SIGNAL \q[1]~reg0_regout\ : std_logic;
SIGNAL \q[2]~reg0_regout\ : std_logic;
SIGNAL \q[3]~reg0_regout\ : std_logic;
SIGNAL \q[4]~reg0_regout\ : std_logic;
SIGNAL \q[5]~reg0_regout\ : std_logic;
SIGNAL \q[6]~reg0_regout\ : std_logic;
SIGNAL \q[7]~reg0_regout\ : std_logic;
SIGNAL \q[8]~reg0_regout\ : std_logic;
SIGNAL \q[9]~reg0_regout\ : std_logic;
SIGNAL \q[10]~reg0_regout\ : std_logic;
SIGNAL \q[11]~reg0_regout\ : std_logic;
SIGNAL \q[12]~reg0_regout\ : std_logic;
SIGNAL \q[13]~reg0_regout\ : std_logic;
SIGNAL \q[14]~reg0_regout\ : std_logic;
SIGNAL \q[15]~reg0_regout\ : std_logic;
SIGNAL \d~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_d <= d;
ww_en <= en;
ww_rst <= rst;
ww_clk <= clk;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(0),
	combout => \d~combout\(0));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_en,
	combout => \en~combout\);

-- Location: LC_X10_Y1_N6
\q[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[0]~reg0_regout\ = DFFEAS((((\d~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \d~combout\(0),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[0]~reg0_regout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(1),
	combout => \d~combout\(1));

-- Location: LC_X10_Y1_N2
\q[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[1]~reg0_regout\ = DFFEAS((((\d~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \d~combout\(1),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[1]~reg0_regout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(2),
	combout => \d~combout\(2));

-- Location: LC_X7_Y4_N6
\q[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[2]~reg0_regout\ = DFFEAS(((\d~combout\(2))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d~combout\(2),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[2]~reg0_regout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(3),
	combout => \d~combout\(3));

-- Location: LC_X7_Y4_N4
\q[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[3]~reg0_regout\ = DFFEAS(((\d~combout\(3))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d~combout\(3),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[3]~reg0_regout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(4),
	combout => \d~combout\(4));

-- Location: LC_X10_Y1_N8
\q[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[4]~reg0_regout\ = DFFEAS((\d~combout\(4)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \d~combout\(4),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[4]~reg0_regout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(5),
	combout => \d~combout\(5));

-- Location: LC_X10_Y3_N2
\q[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[5]~reg0_regout\ = DFFEAS((((\d~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \d~combout\(5),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[5]~reg0_regout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(6),
	combout => \d~combout\(6));

-- Location: LC_X12_Y2_N4
\q[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[6]~reg0_regout\ = DFFEAS((((\d~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \d~combout\(6),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[6]~reg0_regout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(7),
	combout => \d~combout\(7));

-- Location: LC_X7_Y4_N8
\q[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[7]~reg0_regout\ = DFFEAS(((\d~combout\(7))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d~combout\(7),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[7]~reg0_regout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(8),
	combout => \d~combout\(8));

-- Location: LC_X7_Y4_N5
\q[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[8]~reg0_regout\ = DFFEAS(((\d~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d~combout\(8),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[8]~reg0_regout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(9),
	combout => \d~combout\(9));

-- Location: LC_X10_Y1_N7
\q[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[9]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, \d~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \d~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[9]~reg0_regout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(10),
	combout => \d~combout\(10));

-- Location: LC_X10_Y1_N9
\q[10]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[10]~reg0_regout\ = DFFEAS(((\d~combout\(10))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d~combout\(10),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[10]~reg0_regout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(11),
	combout => \d~combout\(11));

-- Location: LC_X10_Y1_N5
\q[11]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[11]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, \d~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[11]~reg0_regout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(12),
	combout => \d~combout\(12));

-- Location: LC_X12_Y1_N9
\q[12]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[12]~reg0_regout\ = DFFEAS((((\d~combout\(12)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \d~combout\(12),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[12]~reg0_regout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(13),
	combout => \d~combout\(13));

-- Location: LC_X7_Y4_N7
\q[13]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[13]~reg0_regout\ = DFFEAS(((\d~combout\(13))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d~combout\(13),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[13]~reg0_regout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(14),
	combout => \d~combout\(14));

-- Location: LC_X7_Y4_N2
\q[14]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[14]~reg0_regout\ = DFFEAS(((\d~combout\(14))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \d~combout\(14),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[14]~reg0_regout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d(15),
	combout => \d~combout\(15));

-- Location: LC_X10_Y1_N4
\q[15]~reg0\ : maxv_lcell
-- Equation(s):
-- \q[15]~reg0_regout\ = DFFEAS((((\d~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \en~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \d~combout\(15),
	aclr => \rst~combout\,
	ena => \en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[15]~reg0_regout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[0]~reg0_regout\,
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[1]~reg0_regout\,
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[2]~reg0_regout\,
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[3]~reg0_regout\,
	oe => VCC,
	padio => ww_q(3));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[4]~reg0_regout\,
	oe => VCC,
	padio => ww_q(4));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[5]~reg0_regout\,
	oe => VCC,
	padio => ww_q(5));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[6]~reg0_regout\,
	oe => VCC,
	padio => ww_q(6));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[7]~reg0_regout\,
	oe => VCC,
	padio => ww_q(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[8]~reg0_regout\,
	oe => VCC,
	padio => ww_q(8));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[9]~reg0_regout\,
	oe => VCC,
	padio => ww_q(9));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[10]~reg0_regout\,
	oe => VCC,
	padio => ww_q(10));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[11]~reg0_regout\,
	oe => VCC,
	padio => ww_q(11));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[12]~reg0_regout\,
	oe => VCC,
	padio => ww_q(12));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[13]~reg0_regout\,
	oe => VCC,
	padio => ww_q(13));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[14]~reg0_regout\,
	oe => VCC,
	padio => ww_q(14));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q[15]~reg0_regout\,
	oe => VCC,
	padio => ww_q(15));
END structure;


