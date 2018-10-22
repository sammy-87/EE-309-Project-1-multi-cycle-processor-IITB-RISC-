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

-- DATE "10/23/2018 00:23:41"

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

ENTITY 	ALU_final IS
    PORT (
	alu_a : IN std_logic_vector(15 DOWNTO 0);
	alu_b : IN std_logic_vector(15 DOWNTO 0);
	k1 : IN std_logic;
	op : IN std_logic;
	alu_out : OUT std_logic_vector(15 DOWNTO 0);
	c_out : OUT std_logic
	);
END ALU_final;

-- Design Ports Information


ARCHITECTURE structure OF ALU_final IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_alu_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_alu_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_k1 : std_logic;
SIGNAL ww_op : std_logic;
SIGNAL ww_alu_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_c_out : std_logic;
SIGNAL \k1~combout\ : std_logic;
SIGNAL \op~combout\ : std_logic;
SIGNAL \alu_out~0_combout\ : std_logic;
SIGNAL \alu_out~1_combout\ : std_logic;
SIGNAL \alu_out~2_combout\ : std_logic;
SIGNAL \A1|ist_add:1:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~3_combout\ : std_logic;
SIGNAL \alu_out~4_combout\ : std_logic;
SIGNAL \alu_out~5_combout\ : std_logic;
SIGNAL \A1|ist_add:3:F1|s0~0_combout\ : std_logic;
SIGNAL \alu_out~6_combout\ : std_logic;
SIGNAL \A1|ist_add:2:F1|cout~0_combout\ : std_logic;
SIGNAL \A1|ist_add:3:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~7_combout\ : std_logic;
SIGNAL \alu_out~8_combout\ : std_logic;
SIGNAL \A1|ist_add:4:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~9_combout\ : std_logic;
SIGNAL \alu_out~10_combout\ : std_logic;
SIGNAL \A1|ist_add:5:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~11_combout\ : std_logic;
SIGNAL \alu_out~12_combout\ : std_logic;
SIGNAL \A1|ist_add:6:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~13_combout\ : std_logic;
SIGNAL \alu_out~14_combout\ : std_logic;
SIGNAL \A1|ist_add:7:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~15_combout\ : std_logic;
SIGNAL \alu_out~16_combout\ : std_logic;
SIGNAL \A1|ist_add:8:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~17_combout\ : std_logic;
SIGNAL \alu_out~18_combout\ : std_logic;
SIGNAL \A1|ist_add:9:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~19_combout\ : std_logic;
SIGNAL \alu_out~20_combout\ : std_logic;
SIGNAL \A1|ist_add:10:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~21_combout\ : std_logic;
SIGNAL \alu_out~22_combout\ : std_logic;
SIGNAL \A1|ist_add:11:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~23_combout\ : std_logic;
SIGNAL \alu_out~24_combout\ : std_logic;
SIGNAL \A1|ist_add:12:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~25_combout\ : std_logic;
SIGNAL \alu_out~26_combout\ : std_logic;
SIGNAL \A1|ist_add:13:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~27_combout\ : std_logic;
SIGNAL \alu_out~28_combout\ : std_logic;
SIGNAL \A1|ist_add:14:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_out~29_combout\ : std_logic;
SIGNAL \alu_out~30_combout\ : std_logic;
SIGNAL \A1|ist_add:15:F1|cout~0_combout\ : std_logic;
SIGNAL \alu_a~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \alu_b~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_alu_a <= alu_a;
ww_alu_b <= alu_b;
ww_k1 <= k1;
ww_op <= op;
alu_out <= ww_alu_out;
c_out <= ww_c_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(0),
	combout => \alu_b~combout\(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_k1,
	combout => \k1~combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_op,
	combout => \op~combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(0),
	combout => \alu_a~combout\(0));

-- Location: LC_X6_Y7_N3
\alu_out~0\ : maxv_lcell
-- Equation(s):
-- \alu_out~0_combout\ = (\alu_b~combout\(0) & (((!\alu_a~combout\(0))))) # (!\alu_b~combout\(0) & ((\alu_a~combout\(0)) # ((\k1~combout\ & !\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(0),
	datab => \k1~combout\,
	datac => \op~combout\,
	datad => \alu_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~0_combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(1),
	combout => \alu_a~combout\(1));

-- Location: LC_X16_Y7_N6
\alu_out~1\ : maxv_lcell
-- Equation(s):
-- \alu_out~1_combout\ = (\k1~combout\ & (\op~combout\)) # (!\k1~combout\ & (((\alu_a~combout\(0) & \alu_b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \k1~combout\,
	datac => \alu_a~combout\(0),
	datad => \alu_b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~1_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(1),
	combout => \alu_b~combout\(1));

-- Location: LC_X16_Y7_N5
\alu_out~2\ : maxv_lcell
-- Equation(s):
-- \alu_out~2_combout\ = (\k1~combout\ & ((\alu_a~combout\(1) & ((!\alu_b~combout\(1)))) # (!\alu_a~combout\(1) & ((\alu_b~combout\(1)) # (!\alu_out~1_combout\))))) # (!\k1~combout\ & (\alu_a~combout\(1) $ (\alu_out~1_combout\ $ (\alu_b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "659e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(1),
	datab => \k1~combout\,
	datac => \alu_out~1_combout\,
	datad => \alu_b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~2_combout\);

-- Location: LC_X16_Y7_N7
\A1|ist_add:1:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:1:F1|cout~0_combout\ = (\alu_a~combout\(1) & ((\alu_b~combout\(1)) # ((\alu_b~combout\(0) & \alu_a~combout\(0))))) # (!\alu_a~combout\(1) & (\alu_b~combout\(0) & (\alu_a~combout\(0) & \alu_b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(1),
	datab => \alu_b~combout\(0),
	datac => \alu_a~combout\(0),
	datad => \alu_b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:1:F1|cout~0_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(2),
	combout => \alu_b~combout\(2));

-- Location: LC_X16_Y7_N4
\alu_out~3\ : maxv_lcell
-- Equation(s):
-- \alu_out~3_combout\ = (\alu_b~combout\(2) $ (((!\k1~combout\ & \A1|ist_add:1:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \k1~combout\,
	datac => \A1|ist_add:1:F1|cout~0_combout\,
	datad => \alu_b~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~3_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(2),
	combout => \alu_a~combout\(2));

-- Location: LC_X16_Y7_N3
\alu_out~4\ : maxv_lcell
-- Equation(s):
-- \alu_out~4_combout\ = (\alu_out~3_combout\ & (((!\alu_a~combout\(2))))) # (!\alu_out~3_combout\ & ((\alu_a~combout\(2)) # ((!\op~combout\ & \k1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \k1~combout\,
	datac => \alu_out~3_combout\,
	datad => \alu_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~4_combout\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(3),
	combout => \alu_a~combout\(3));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(3),
	combout => \alu_b~combout\(3));

-- Location: LC_X16_Y7_N8
\alu_out~5\ : maxv_lcell
-- Equation(s):
-- \alu_out~5_combout\ = ((\alu_a~combout\(3) & ((!\alu_b~combout\(3)))) # (!\alu_a~combout\(3) & ((\alu_b~combout\(3)) # (!\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datac => \alu_a~combout\(3),
	datad => \alu_b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~5_combout\);

-- Location: LC_X16_Y7_N0
\A1|ist_add:3:F1|s0~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:3:F1|s0~0_combout\ = \alu_a~combout\(3) $ (((\alu_b~combout\(2) & ((\A1|ist_add:1:F1|cout~0_combout\) # (\alu_a~combout\(2)))) # (!\alu_b~combout\(2) & (\A1|ist_add:1:F1|cout~0_combout\ & \alu_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "566a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(3),
	datab => \alu_b~combout\(2),
	datac => \A1|ist_add:1:F1|cout~0_combout\,
	datad => \alu_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:3:F1|s0~0_combout\);

-- Location: LC_X16_Y7_N2
\alu_out~6\ : maxv_lcell
-- Equation(s):
-- \alu_out~6_combout\ = (\k1~combout\ & (\alu_out~5_combout\)) # (!\k1~combout\ & ((\A1|ist_add:3:F1|s0~0_combout\ $ (\alu_b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8bb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out~5_combout\,
	datab => \k1~combout\,
	datac => \A1|ist_add:3:F1|s0~0_combout\,
	datad => \alu_b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~6_combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(4),
	combout => \alu_b~combout\(4));

-- Location: LC_X16_Y7_N1
\A1|ist_add:2:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:2:F1|cout~0_combout\ = ((\alu_b~combout\(2) & ((\A1|ist_add:1:F1|cout~0_combout\) # (\alu_a~combout\(2)))) # (!\alu_b~combout\(2) & (\A1|ist_add:1:F1|cout~0_combout\ & \alu_a~combout\(2))))

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
	datab => \alu_b~combout\(2),
	datac => \A1|ist_add:1:F1|cout~0_combout\,
	datad => \alu_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:2:F1|cout~0_combout\);

-- Location: LC_X16_Y7_N9
\A1|ist_add:3:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:3:F1|cout~0_combout\ = (\alu_b~combout\(3) & (((\alu_a~combout\(3)) # (\A1|ist_add:2:F1|cout~0_combout\)))) # (!\alu_b~combout\(3) & (((\alu_a~combout\(3) & \A1|ist_add:2:F1|cout~0_combout\))))

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
	dataa => \alu_b~combout\(3),
	datac => \alu_a~combout\(3),
	datad => \A1|ist_add:2:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:3:F1|cout~0_combout\);

-- Location: LC_X8_Y7_N6
\alu_out~7\ : maxv_lcell
-- Equation(s):
-- \alu_out~7_combout\ = \alu_b~combout\(4) $ ((((!\k1~combout\ & \A1|ist_add:3:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(4),
	datac => \k1~combout\,
	datad => \A1|ist_add:3:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~7_combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(4),
	combout => \alu_a~combout\(4));

-- Location: LC_X8_Y7_N5
\alu_out~8\ : maxv_lcell
-- Equation(s):
-- \alu_out~8_combout\ = (\alu_out~7_combout\ & (((!\alu_a~combout\(4))))) # (!\alu_out~7_combout\ & ((\alu_a~combout\(4)) # ((\k1~combout\ & !\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out~7_combout\,
	datab => \k1~combout\,
	datac => \op~combout\,
	datad => \alu_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~8_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(5),
	combout => \alu_b~combout\(5));

-- Location: LC_X8_Y7_N9
\A1|ist_add:4:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:4:F1|cout~0_combout\ = ((\alu_a~combout\(4) & ((\alu_b~combout\(4)) # (\A1|ist_add:3:F1|cout~0_combout\))) # (!\alu_a~combout\(4) & (\alu_b~combout\(4) & \A1|ist_add:3:F1|cout~0_combout\)))

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
	datab => \alu_a~combout\(4),
	datac => \alu_b~combout\(4),
	datad => \A1|ist_add:3:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:4:F1|cout~0_combout\);

-- Location: LC_X8_Y7_N4
\alu_out~9\ : maxv_lcell
-- Equation(s):
-- \alu_out~9_combout\ = \alu_b~combout\(5) $ ((((!\k1~combout\ & \A1|ist_add:4:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(5),
	datac => \k1~combout\,
	datad => \A1|ist_add:4:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~9_combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(5),
	combout => \alu_a~combout\(5));

-- Location: LC_X8_Y7_N7
\alu_out~10\ : maxv_lcell
-- Equation(s):
-- \alu_out~10_combout\ = (\alu_out~9_combout\ & (((!\alu_a~combout\(5))))) # (!\alu_out~9_combout\ & ((\alu_a~combout\(5)) # ((\k1~combout\ & !\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out~9_combout\,
	datab => \k1~combout\,
	datac => \alu_a~combout\(5),
	datad => \op~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~10_combout\);

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(6),
	combout => \alu_a~combout\(6));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(6),
	combout => \alu_b~combout\(6));

-- Location: LC_X8_Y7_N2
\A1|ist_add:5:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:5:F1|cout~0_combout\ = (\alu_a~combout\(5) & (((\alu_b~combout\(5)) # (\A1|ist_add:4:F1|cout~0_combout\)))) # (!\alu_a~combout\(5) & (((\alu_b~combout\(5) & \A1|ist_add:4:F1|cout~0_combout\))))

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
	dataa => \alu_a~combout\(5),
	datac => \alu_b~combout\(5),
	datad => \A1|ist_add:4:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:5:F1|cout~0_combout\);

-- Location: LC_X6_Y7_N9
\alu_out~11\ : maxv_lcell
-- Equation(s):
-- \alu_out~11_combout\ = (\alu_b~combout\(6) $ (((!\k1~combout\ & \A1|ist_add:5:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \k1~combout\,
	datac => \alu_b~combout\(6),
	datad => \A1|ist_add:5:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~11_combout\);

-- Location: LC_X6_Y7_N2
\alu_out~12\ : maxv_lcell
-- Equation(s):
-- \alu_out~12_combout\ = (\alu_a~combout\(6) & (!\alu_out~11_combout\)) # (!\alu_a~combout\(6) & ((\alu_out~11_combout\) # ((!\op~combout\ & \k1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6766",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(6),
	datab => \alu_out~11_combout\,
	datac => \op~combout\,
	datad => \k1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~12_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(7),
	combout => \alu_b~combout\(7));

-- Location: LC_X6_Y7_N6
\A1|ist_add:6:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:6:F1|cout~0_combout\ = ((\alu_b~combout\(6) & ((\alu_a~combout\(6)) # (\A1|ist_add:5:F1|cout~0_combout\))) # (!\alu_b~combout\(6) & (\alu_a~combout\(6) & \A1|ist_add:5:F1|cout~0_combout\)))

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
	datab => \alu_b~combout\(6),
	datac => \alu_a~combout\(6),
	datad => \A1|ist_add:5:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:6:F1|cout~0_combout\);

-- Location: LC_X6_Y7_N4
\alu_out~13\ : maxv_lcell
-- Equation(s):
-- \alu_out~13_combout\ = \alu_b~combout\(7) $ ((((\A1|ist_add:6:F1|cout~0_combout\ & !\k1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(7),
	datac => \A1|ist_add:6:F1|cout~0_combout\,
	datad => \k1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~13_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(7),
	combout => \alu_a~combout\(7));

-- Location: LC_X6_Y7_N1
\alu_out~14\ : maxv_lcell
-- Equation(s):
-- \alu_out~14_combout\ = (\alu_out~13_combout\ & (!\alu_a~combout\(7))) # (!\alu_out~13_combout\ & ((\alu_a~combout\(7)) # ((!\op~combout\ & \k1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6766",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out~13_combout\,
	datab => \alu_a~combout\(7),
	datac => \op~combout\,
	datad => \k1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~14_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(8),
	combout => \alu_a~combout\(8));

-- Location: LC_X6_Y7_N0
\A1|ist_add:7:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:7:F1|cout~0_combout\ = (\alu_b~combout\(7) & (((\A1|ist_add:6:F1|cout~0_combout\) # (\alu_a~combout\(7))))) # (!\alu_b~combout\(7) & (((\A1|ist_add:6:F1|cout~0_combout\ & \alu_a~combout\(7)))))

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
	dataa => \alu_b~combout\(7),
	datac => \A1|ist_add:6:F1|cout~0_combout\,
	datad => \alu_a~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:7:F1|cout~0_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(8),
	combout => \alu_b~combout\(8));

-- Location: LC_X6_Y7_N7
\alu_out~15\ : maxv_lcell
-- Equation(s):
-- \alu_out~15_combout\ = (\alu_b~combout\(8) $ (((\A1|ist_add:7:F1|cout~0_combout\ & !\k1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|ist_add:7:F1|cout~0_combout\,
	datac => \alu_b~combout\(8),
	datad => \k1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~15_combout\);

-- Location: LC_X6_Y7_N5
\alu_out~16\ : maxv_lcell
-- Equation(s):
-- \alu_out~16_combout\ = (\alu_a~combout\(8) & (((!\alu_out~15_combout\)))) # (!\alu_a~combout\(8) & ((\alu_out~15_combout\) # ((!\op~combout\ & \k1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3d3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \alu_a~combout\(8),
	datac => \alu_out~15_combout\,
	datad => \k1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~16_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(9),
	combout => \alu_b~combout\(9));

-- Location: LC_X6_Y7_N8
\A1|ist_add:8:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:8:F1|cout~0_combout\ = ((\A1|ist_add:7:F1|cout~0_combout\ & ((\alu_b~combout\(8)) # (\alu_a~combout\(8)))) # (!\A1|ist_add:7:F1|cout~0_combout\ & (\alu_b~combout\(8) & \alu_a~combout\(8))))

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
	datab => \A1|ist_add:7:F1|cout~0_combout\,
	datac => \alu_b~combout\(8),
	datad => \alu_a~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:8:F1|cout~0_combout\);

-- Location: LC_X10_Y5_N6
\alu_out~17\ : maxv_lcell
-- Equation(s):
-- \alu_out~17_combout\ = \alu_b~combout\(9) $ (((\A1|ist_add:8:F1|cout~0_combout\ & ((!\k1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(9),
	datab => \A1|ist_add:8:F1|cout~0_combout\,
	datad => \k1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~17_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(9),
	combout => \alu_a~combout\(9));

-- Location: LC_X10_Y5_N3
\alu_out~18\ : maxv_lcell
-- Equation(s):
-- \alu_out~18_combout\ = (\alu_out~17_combout\ & (((!\alu_a~combout\(9))))) # (!\alu_out~17_combout\ & ((\alu_a~combout\(9)) # ((\k1~combout\ & !\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out~17_combout\,
	datab => \k1~combout\,
	datac => \op~combout\,
	datad => \alu_a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~18_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(10),
	combout => \alu_b~combout\(10));

-- Location: LC_X10_Y5_N8
\A1|ist_add:9:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:9:F1|cout~0_combout\ = (\alu_b~combout\(9) & ((\A1|ist_add:8:F1|cout~0_combout\) # ((\alu_a~combout\(9))))) # (!\alu_b~combout\(9) & (\A1|ist_add:8:F1|cout~0_combout\ & ((\alu_a~combout\(9)))))

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
	dataa => \alu_b~combout\(9),
	datab => \A1|ist_add:8:F1|cout~0_combout\,
	datad => \alu_a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:9:F1|cout~0_combout\);

-- Location: LC_X10_Y5_N4
\alu_out~19\ : maxv_lcell
-- Equation(s):
-- \alu_out~19_combout\ = \alu_b~combout\(10) $ (((!\k1~combout\ & ((\A1|ist_add:9:F1|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(10),
	datab => \k1~combout\,
	datad => \A1|ist_add:9:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~19_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(10),
	combout => \alu_a~combout\(10));

-- Location: LC_X10_Y5_N2
\alu_out~20\ : maxv_lcell
-- Equation(s):
-- \alu_out~20_combout\ = (\alu_out~19_combout\ & (((!\alu_a~combout\(10))))) # (!\alu_out~19_combout\ & ((\alu_a~combout\(10)) # ((!\op~combout\ & \k1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5b5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out~19_combout\,
	datab => \op~combout\,
	datac => \alu_a~combout\(10),
	datad => \k1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~20_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(11),
	combout => \alu_b~combout\(11));

-- Location: LC_X10_Y5_N9
\A1|ist_add:10:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:10:F1|cout~0_combout\ = (\alu_b~combout\(10) & (((\alu_a~combout\(10)) # (\A1|ist_add:9:F1|cout~0_combout\)))) # (!\alu_b~combout\(10) & (((\alu_a~combout\(10) & \A1|ist_add:9:F1|cout~0_combout\))))

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
	dataa => \alu_b~combout\(10),
	datac => \alu_a~combout\(10),
	datad => \A1|ist_add:9:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:10:F1|cout~0_combout\);

-- Location: LC_X10_Y5_N5
\alu_out~21\ : maxv_lcell
-- Equation(s):
-- \alu_out~21_combout\ = (\alu_b~combout\(11) $ (((!\k1~combout\ & \A1|ist_add:10:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \k1~combout\,
	datac => \alu_b~combout\(11),
	datad => \A1|ist_add:10:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~21_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(11),
	combout => \alu_a~combout\(11));

-- Location: LC_X10_Y5_N7
\alu_out~22\ : maxv_lcell
-- Equation(s):
-- \alu_out~22_combout\ = (\alu_out~21_combout\ & (((!\alu_a~combout\(11))))) # (!\alu_out~21_combout\ & ((\alu_a~combout\(11)) # ((\k1~combout\ & !\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out~21_combout\,
	datab => \k1~combout\,
	datac => \op~combout\,
	datad => \alu_a~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~22_combout\);

-- Location: LC_X10_Y5_N1
\A1|ist_add:11:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:11:F1|cout~0_combout\ = ((\A1|ist_add:10:F1|cout~0_combout\ & ((\alu_b~combout\(11)) # (\alu_a~combout\(11)))) # (!\A1|ist_add:10:F1|cout~0_combout\ & (\alu_b~combout\(11) & \alu_a~combout\(11))))

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
	datab => \A1|ist_add:10:F1|cout~0_combout\,
	datac => \alu_b~combout\(11),
	datad => \alu_a~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:11:F1|cout~0_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(12),
	combout => \alu_b~combout\(12));

-- Location: LC_X10_Y7_N3
\alu_out~23\ : maxv_lcell
-- Equation(s):
-- \alu_out~23_combout\ = (\alu_b~combout\(12) $ (((!\k1~combout\ & \A1|ist_add:11:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \k1~combout\,
	datac => \A1|ist_add:11:F1|cout~0_combout\,
	datad => \alu_b~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~23_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(12),
	combout => \alu_a~combout\(12));

-- Location: LC_X10_Y7_N6
\alu_out~24\ : maxv_lcell
-- Equation(s):
-- \alu_out~24_combout\ = (\alu_out~23_combout\ & (((!\alu_a~combout\(12))))) # (!\alu_out~23_combout\ & ((\alu_a~combout\(12)) # ((\k1~combout\ & !\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_out~23_combout\,
	datab => \k1~combout\,
	datac => \op~combout\,
	datad => \alu_a~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~24_combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(13),
	combout => \alu_a~combout\(13));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(13),
	combout => \alu_b~combout\(13));

-- Location: LC_X10_Y7_N9
\A1|ist_add:12:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:12:F1|cout~0_combout\ = ((\alu_a~combout\(12) & ((\A1|ist_add:11:F1|cout~0_combout\) # (\alu_b~combout\(12)))) # (!\alu_a~combout\(12) & (\A1|ist_add:11:F1|cout~0_combout\ & \alu_b~combout\(12))))

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
	datab => \alu_a~combout\(12),
	datac => \A1|ist_add:11:F1|cout~0_combout\,
	datad => \alu_b~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:12:F1|cout~0_combout\);

-- Location: LC_X10_Y7_N5
\alu_out~25\ : maxv_lcell
-- Equation(s):
-- \alu_out~25_combout\ = (\alu_b~combout\(13) $ (((!\k1~combout\ & \A1|ist_add:12:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \k1~combout\,
	datac => \alu_b~combout\(13),
	datad => \A1|ist_add:12:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~25_combout\);

-- Location: LC_X10_Y7_N8
\alu_out~26\ : maxv_lcell
-- Equation(s):
-- \alu_out~26_combout\ = (\alu_a~combout\(13) & (((!\alu_out~25_combout\)))) # (!\alu_a~combout\(13) & ((\alu_out~25_combout\) # ((\k1~combout\ & !\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(13),
	datab => \k1~combout\,
	datac => \alu_out~25_combout\,
	datad => \op~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~26_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(14),
	combout => \alu_a~combout\(14));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(14),
	combout => \alu_b~combout\(14));

-- Location: LC_X10_Y7_N2
\A1|ist_add:13:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:13:F1|cout~0_combout\ = (\alu_a~combout\(13) & (((\alu_b~combout\(13)) # (\A1|ist_add:12:F1|cout~0_combout\)))) # (!\alu_a~combout\(13) & (((\alu_b~combout\(13) & \A1|ist_add:12:F1|cout~0_combout\))))

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
	dataa => \alu_a~combout\(13),
	datac => \alu_b~combout\(13),
	datad => \A1|ist_add:12:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:13:F1|cout~0_combout\);

-- Location: LC_X10_Y7_N0
\alu_out~27\ : maxv_lcell
-- Equation(s):
-- \alu_out~27_combout\ = \alu_b~combout\(14) $ (((!\k1~combout\ & ((\A1|ist_add:13:F1|cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b~combout\(14),
	datab => \k1~combout\,
	datad => \A1|ist_add:13:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~27_combout\);

-- Location: LC_X10_Y7_N1
\alu_out~28\ : maxv_lcell
-- Equation(s):
-- \alu_out~28_combout\ = (\alu_a~combout\(14) & (((!\alu_out~27_combout\)))) # (!\alu_a~combout\(14) & ((\alu_out~27_combout\) # ((!\op~combout\ & \k1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\,
	datab => \k1~combout\,
	datac => \alu_a~combout\(14),
	datad => \alu_out~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~28_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_a(15),
	combout => \alu_a~combout\(15));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_b[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_alu_b(15),
	combout => \alu_b~combout\(15));

-- Location: LC_X10_Y7_N4
\A1|ist_add:14:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:14:F1|cout~0_combout\ = ((\A1|ist_add:13:F1|cout~0_combout\ & ((\alu_a~combout\(14)) # (\alu_b~combout\(14)))) # (!\A1|ist_add:13:F1|cout~0_combout\ & (\alu_a~combout\(14) & \alu_b~combout\(14))))

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
	datab => \A1|ist_add:13:F1|cout~0_combout\,
	datac => \alu_a~combout\(14),
	datad => \alu_b~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:14:F1|cout~0_combout\);

-- Location: LC_X8_Y7_N8
\alu_out~29\ : maxv_lcell
-- Equation(s):
-- \alu_out~29_combout\ = (\alu_b~combout\(15) $ (((!\k1~combout\ & \A1|ist_add:14:F1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_b~combout\(15),
	datac => \k1~combout\,
	datad => \A1|ist_add:14:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~29_combout\);

-- Location: LC_X8_Y7_N1
\alu_out~30\ : maxv_lcell
-- Equation(s):
-- \alu_out~30_combout\ = (\alu_a~combout\(15) & (((!\alu_out~29_combout\)))) # (!\alu_a~combout\(15) & ((\alu_out~29_combout\) # ((\k1~combout\ & !\op~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a~combout\(15),
	datab => \k1~combout\,
	datac => \op~combout\,
	datad => \alu_out~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \alu_out~30_combout\);

-- Location: LC_X8_Y7_N3
\A1|ist_add:15:F1|cout~0\ : maxv_lcell
-- Equation(s):
-- \A1|ist_add:15:F1|cout~0_combout\ = (\alu_a~combout\(15) & ((\alu_b~combout\(15)) # ((\A1|ist_add:14:F1|cout~0_combout\)))) # (!\alu_a~combout\(15) & (\alu_b~combout\(15) & ((\A1|ist_add:14:F1|cout~0_combout\))))

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
	dataa => \alu_a~combout\(15),
	datab => \alu_b~combout\(15),
	datad => \A1|ist_add:14:F1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \A1|ist_add:15:F1|cout~0_combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~0_combout\,
	oe => VCC,
	padio => ww_alu_out(0));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~2_combout\,
	oe => VCC,
	padio => ww_alu_out(1));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~4_combout\,
	oe => VCC,
	padio => ww_alu_out(2));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~6_combout\,
	oe => VCC,
	padio => ww_alu_out(3));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~8_combout\,
	oe => VCC,
	padio => ww_alu_out(4));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~10_combout\,
	oe => VCC,
	padio => ww_alu_out(5));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~12_combout\,
	oe => VCC,
	padio => ww_alu_out(6));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~14_combout\,
	oe => VCC,
	padio => ww_alu_out(7));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~16_combout\,
	oe => VCC,
	padio => ww_alu_out(8));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~18_combout\,
	oe => VCC,
	padio => ww_alu_out(9));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~20_combout\,
	oe => VCC,
	padio => ww_alu_out(10));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~22_combout\,
	oe => VCC,
	padio => ww_alu_out(11));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~24_combout\,
	oe => VCC,
	padio => ww_alu_out(12));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~26_combout\,
	oe => VCC,
	padio => ww_alu_out(13));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~28_combout\,
	oe => VCC,
	padio => ww_alu_out(14));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\alu_out[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \alu_out~30_combout\,
	oe => VCC,
	padio => ww_alu_out(15));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A1|ist_add:15:F1|cout~0_combout\,
	oe => VCC,
	padio => ww_c_out);
END structure;


