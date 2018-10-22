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

-- DATE "10/22/2018 23:18:26"

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

ENTITY 	Add IS
    PORT (
	x : IN std_logic_vector(15 DOWNTO 0);
	y : IN std_logic_vector(15 DOWNTO 0);
	s0 : OUT std_logic_vector(15 DOWNTO 0);
	c_out : OUT std_logic
	);
END Add;

-- Design Ports Information


ARCHITECTURE structure OF Add IS
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
SIGNAL ww_c_out : std_logic;
SIGNAL \F0|s0~0_combout\ : std_logic;
SIGNAL \ist_add:1:F1|s0~0_combout\ : std_logic;
SIGNAL \ist_add:1:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:2:F1|s0~0_combout\ : std_logic;
SIGNAL \ist_add:2:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:3:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:3:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:4:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:4:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:5:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:5:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:6:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:6:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:7:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:7:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:8:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:8:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:9:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:9:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:10:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:10:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:11:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:11:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:12:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:12:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:13:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:13:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:14:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:14:F1|cout~0_combout\ : std_logic;
SIGNAL \ist_add:15:F1|s0~combout\ : std_logic;
SIGNAL \ist_add:15:F1|cout~0_combout\ : std_logic;
SIGNAL \x~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \y~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_x <= x;
ww_y <= y;
s0 <= ww_s0;
c_out <= ww_c_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(0),
	combout => \x~combout\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(0),
	combout => \y~combout\(0));

-- Location: LC_X1_Y7_N8
\F0|s0~0\ : maxv_lcell
-- Equation(s):
-- \F0|s0~0_combout\ = ((\x~combout\(0) $ (\y~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
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
	combout => \F0|s0~0_combout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(1),
	combout => \x~combout\(1));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(1),
	combout => \y~combout\(1));

-- Location: LC_X1_Y7_N5
\ist_add:1:F1|s0~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:1:F1|s0~0_combout\ = \x~combout\(1) $ (\y~combout\(1) $ (((\y~combout\(0) & \x~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(0),
	datab => \x~combout\(0),
	datac => \x~combout\(1),
	datad => \y~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:1:F1|s0~0_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(2),
	combout => \y~combout\(2));

-- Location: LC_X1_Y7_N7
\ist_add:1:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:1:F1|cout~0_combout\ = (\x~combout\(1) & ((\y~combout\(1)) # ((\y~combout\(0) & \x~combout\(0))))) # (!\x~combout\(1) & (\y~combout\(0) & (\x~combout\(0) & \y~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f880",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(0),
	datab => \x~combout\(0),
	datac => \x~combout\(1),
	datad => \y~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:1:F1|cout~0_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(2),
	combout => \x~combout\(2));

-- Location: LC_X1_Y7_N4
\ist_add:2:F1|s0~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:2:F1|s0~0_combout\ = \y~combout\(2) $ (\ist_add:1:F1|cout~0_combout\ $ ((\x~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(2),
	datab => \ist_add:1:F1|cout~0_combout\,
	datac => \x~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:2:F1|s0~0_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(3),
	combout => \y~combout\(3));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(3),
	combout => \x~combout\(3));

-- Location: LC_X1_Y7_N2
\ist_add:2:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:2:F1|cout~0_combout\ = (\y~combout\(2) & ((\ist_add:1:F1|cout~0_combout\) # ((\x~combout\(2))))) # (!\y~combout\(2) & (\ist_add:1:F1|cout~0_combout\ & (\x~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(2),
	datab => \ist_add:1:F1|cout~0_combout\,
	datac => \x~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:2:F1|cout~0_combout\);

-- Location: LC_X1_Y7_N6
\ist_add:3:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:3:F1|s0~combout\ = (\y~combout\(3) $ (\x~combout\(3) $ (\ist_add:2:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(3),
	datac => \x~combout\(3),
	datad => \ist_add:2:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:3:F1|s0~combout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(4),
	combout => \x~combout\(4));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(4),
	combout => \y~combout\(4));

-- Location: LC_X1_Y7_N9
\ist_add:3:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:3:F1|cout~0_combout\ = ((\y~combout\(3) & ((\x~combout\(3)) # (\ist_add:2:F1|cout~0_combout\))) # (!\y~combout\(3) & (\x~combout\(3) & \ist_add:2:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(3),
	datac => \x~combout\(3),
	datad => \ist_add:2:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:3:F1|cout~0_combout\);

-- Location: LC_X4_Y7_N2
\ist_add:4:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:4:F1|s0~combout\ = (\x~combout\(4) $ (\y~combout\(4) $ (\ist_add:3:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(4),
	datac => \y~combout\(4),
	datad => \ist_add:3:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:4:F1|s0~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(5),
	combout => \x~combout\(5));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(5),
	combout => \y~combout\(5));

-- Location: LC_X4_Y7_N5
\ist_add:4:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:4:F1|cout~0_combout\ = ((\x~combout\(4) & ((\y~combout\(4)) # (\ist_add:3:F1|cout~0_combout\))) # (!\x~combout\(4) & (\y~combout\(4) & \ist_add:3:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(4),
	datac => \y~combout\(4),
	datad => \ist_add:3:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:4:F1|cout~0_combout\);

-- Location: LC_X4_Y7_N9
\ist_add:5:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:5:F1|s0~combout\ = \x~combout\(5) $ (\y~combout\(5) $ ((\ist_add:4:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(5),
	datab => \y~combout\(5),
	datac => \ist_add:4:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:5:F1|s0~combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(6),
	combout => \y~combout\(6));

-- Location: LC_X4_Y7_N6
\ist_add:5:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:5:F1|cout~0_combout\ = (\x~combout\(5) & ((\y~combout\(5)) # ((\ist_add:4:F1|cout~0_combout\)))) # (!\x~combout\(5) & (\y~combout\(5) & ((\ist_add:4:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(5),
	datab => \y~combout\(5),
	datad => \ist_add:4:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:5:F1|cout~0_combout\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(6),
	combout => \x~combout\(6));

-- Location: LC_X4_Y7_N8
\ist_add:6:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:6:F1|s0~combout\ = \y~combout\(6) $ (((\ist_add:5:F1|cout~0_combout\ $ (\x~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(6),
	datac => \ist_add:5:F1|cout~0_combout\,
	datad => \x~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:6:F1|s0~combout\);

-- Location: LC_X4_Y7_N4
\ist_add:6:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:6:F1|cout~0_combout\ = (\y~combout\(6) & (((\ist_add:5:F1|cout~0_combout\) # (\x~combout\(6))))) # (!\y~combout\(6) & (((\ist_add:5:F1|cout~0_combout\ & \x~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(6),
	datac => \ist_add:5:F1|cout~0_combout\,
	datad => \x~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:6:F1|cout~0_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(7),
	combout => \y~combout\(7));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(7),
	combout => \x~combout\(7));

-- Location: LC_X6_Y7_N3
\ist_add:7:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:7:F1|s0~combout\ = \ist_add:6:F1|cout~0_combout\ $ (\y~combout\(7) $ ((\x~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ist_add:6:F1|cout~0_combout\,
	datab => \y~combout\(7),
	datac => \x~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:7:F1|s0~combout\);

-- Location: LC_X6_Y7_N6
\ist_add:7:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:7:F1|cout~0_combout\ = (\ist_add:6:F1|cout~0_combout\ & ((\y~combout\(7)) # ((\x~combout\(7))))) # (!\ist_add:6:F1|cout~0_combout\ & (\y~combout\(7) & (\x~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ist_add:6:F1|cout~0_combout\,
	datab => \y~combout\(7),
	datac => \x~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:7:F1|cout~0_combout\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(8),
	combout => \y~combout\(8));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(8),
	combout => \x~combout\(8));

-- Location: LC_X6_Y7_N8
\ist_add:8:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:8:F1|s0~combout\ = \ist_add:7:F1|cout~0_combout\ $ (\y~combout\(8) $ ((\x~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ist_add:7:F1|cout~0_combout\,
	datab => \y~combout\(8),
	datac => \x~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:8:F1|s0~combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(9),
	combout => \x~combout\(9));

-- Location: LC_X6_Y7_N7
\ist_add:8:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:8:F1|cout~0_combout\ = ((\y~combout\(8) & ((\x~combout\(8)) # (\ist_add:7:F1|cout~0_combout\))) # (!\y~combout\(8) & (\x~combout\(8) & \ist_add:7:F1|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(8),
	datac => \x~combout\(8),
	datad => \ist_add:7:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:8:F1|cout~0_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(9),
	combout => \y~combout\(9));

-- Location: LC_X6_Y7_N5
\ist_add:9:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:9:F1|s0~combout\ = (\x~combout\(9) $ (\ist_add:8:F1|cout~0_combout\ $ (\y~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(9),
	datac => \ist_add:8:F1|cout~0_combout\,
	datad => \y~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:9:F1|s0~combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(10),
	combout => \x~combout\(10));

-- Location: LC_X6_Y7_N0
\ist_add:9:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:9:F1|cout~0_combout\ = ((\x~combout\(9) & ((\ist_add:8:F1|cout~0_combout\) # (\y~combout\(9)))) # (!\x~combout\(9) & (\ist_add:8:F1|cout~0_combout\ & \y~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(9),
	datac => \ist_add:8:F1|cout~0_combout\,
	datad => \y~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:9:F1|cout~0_combout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(10),
	combout => \y~combout\(10));

-- Location: LC_X6_Y7_N9
\ist_add:10:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:10:F1|s0~combout\ = (\x~combout\(10) $ (\ist_add:9:F1|cout~0_combout\ $ (\y~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(10),
	datac => \ist_add:9:F1|cout~0_combout\,
	datad => \y~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:10:F1|s0~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(11),
	combout => \y~combout\(11));

-- Location: LC_X6_Y7_N1
\ist_add:10:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:10:F1|cout~0_combout\ = ((\x~combout\(10) & ((\ist_add:9:F1|cout~0_combout\) # (\y~combout\(10)))) # (!\x~combout\(10) & (\ist_add:9:F1|cout~0_combout\ & \y~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \x~combout\(10),
	datac => \ist_add:9:F1|cout~0_combout\,
	datad => \y~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:10:F1|cout~0_combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(11),
	combout => \x~combout\(11));

-- Location: LC_X6_Y7_N2
\ist_add:11:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:11:F1|s0~combout\ = \y~combout\(11) $ (\ist_add:10:F1|cout~0_combout\ $ (((\x~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(11),
	datab => \ist_add:10:F1|cout~0_combout\,
	datad => \x~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:11:F1|s0~combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(12),
	combout => \x~combout\(12));

-- Location: LC_X6_Y7_N4
\ist_add:11:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:11:F1|cout~0_combout\ = (\y~combout\(11) & ((\ist_add:10:F1|cout~0_combout\) # ((\x~combout\(11))))) # (!\y~combout\(11) & (\ist_add:10:F1|cout~0_combout\ & ((\x~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\(11),
	datab => \ist_add:10:F1|cout~0_combout\,
	datad => \x~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:11:F1|cout~0_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(12),
	combout => \y~combout\(12));

-- Location: LC_X7_Y7_N5
\ist_add:12:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:12:F1|s0~combout\ = \x~combout\(12) $ (\ist_add:11:F1|cout~0_combout\ $ ((\y~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(12),
	datab => \ist_add:11:F1|cout~0_combout\,
	datac => \y~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:12:F1|s0~combout\);

-- Location: LC_X7_Y7_N9
\ist_add:12:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:12:F1|cout~0_combout\ = (\x~combout\(12) & ((\ist_add:11:F1|cout~0_combout\) # ((\y~combout\(12))))) # (!\x~combout\(12) & (\ist_add:11:F1|cout~0_combout\ & (\y~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(12),
	datab => \ist_add:11:F1|cout~0_combout\,
	datac => \y~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:12:F1|cout~0_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(13),
	combout => \x~combout\(13));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(13),
	combout => \y~combout\(13));

-- Location: LC_X7_Y7_N3
\ist_add:13:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:13:F1|s0~combout\ = (\ist_add:12:F1|cout~0_combout\ $ (\x~combout\(13) $ (\y~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ist_add:12:F1|cout~0_combout\,
	datac => \x~combout\(13),
	datad => \y~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:13:F1|s0~combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(14),
	combout => \y~combout\(14));

-- Location: LC_X7_Y7_N7
\ist_add:13:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:13:F1|cout~0_combout\ = ((\ist_add:12:F1|cout~0_combout\ & ((\x~combout\(13)) # (\y~combout\(13)))) # (!\ist_add:12:F1|cout~0_combout\ & (\x~combout\(13) & \y~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ist_add:12:F1|cout~0_combout\,
	datac => \x~combout\(13),
	datad => \y~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:13:F1|cout~0_combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(14),
	combout => \x~combout\(14));

-- Location: LC_X7_Y7_N8
\ist_add:14:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:14:F1|s0~combout\ = (\y~combout\(14) $ (\ist_add:13:F1|cout~0_combout\ $ (\x~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(14),
	datac => \ist_add:13:F1|cout~0_combout\,
	datad => \x~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:14:F1|s0~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_x(15),
	combout => \x~combout\(15));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_y(15),
	combout => \y~combout\(15));

-- Location: LC_X7_Y7_N2
\ist_add:14:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:14:F1|cout~0_combout\ = ((\y~combout\(14) & ((\ist_add:13:F1|cout~0_combout\) # (\x~combout\(14)))) # (!\y~combout\(14) & (\ist_add:13:F1|cout~0_combout\ & \x~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y~combout\(14),
	datac => \ist_add:13:F1|cout~0_combout\,
	datad => \x~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:14:F1|cout~0_combout\);

-- Location: LC_X7_Y7_N6
\ist_add:15:F1|s0\ : maxv_lcell
-- Equation(s):
-- \ist_add:15:F1|s0~combout\ = \x~combout\(15) $ (((\y~combout\(15) $ (\ist_add:14:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(15),
	datac => \y~combout\(15),
	datad => \ist_add:14:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:15:F1|s0~combout\);

-- Location: LC_X7_Y7_N0
\ist_add:15:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \ist_add:15:F1|cout~0_combout\ = (\x~combout\(15) & (((\y~combout\(15)) # (\ist_add:14:F1|cout~0_combout\)))) # (!\x~combout\(15) & (((\y~combout\(15) & \ist_add:14:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\(15),
	datac => \y~combout\(15),
	datad => \ist_add:14:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ist_add:15:F1|cout~0_combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \F0|s0~0_combout\,
	oe => VCC,
	padio => ww_s0(0));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:1:F1|s0~0_combout\,
	oe => VCC,
	padio => ww_s0(1));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:2:F1|s0~0_combout\,
	oe => VCC,
	padio => ww_s0(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:3:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(3));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:4:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(4));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:5:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(5));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:6:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(6));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:7:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(7));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:8:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(8));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:9:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(9));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:10:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(10));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:11:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(11));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:12:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(12));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:13:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(13));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:14:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(14));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\s0[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:15:F1|s0~combout\,
	oe => VCC,
	padio => ww_s0(15));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ist_add:15:F1|cout~0_combout\,
	oe => VCC,
	padio => ww_c_out);
END structure;


