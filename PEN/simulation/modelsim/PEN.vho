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

-- DATE "10/26/2018 17:31:32"

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

ENTITY 	PEN IS
    PORT (
	penin : IN std_logic_vector(7 DOWNTO 0);
	tp : BUFFER std_logic;
	pennext : BUFFER std_logic_vector(7 DOWNTO 0);
	penout : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END PEN;

-- Design Ports Information


ARCHITECTURE structure OF PEN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_penin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tp : std_logic;
SIGNAL ww_pennext : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_penout : std_logic_vector(2 DOWNTO 0);
SIGNAL \next_var~2_combout\ : std_logic;
SIGNAL \penout~0_combout\ : std_logic;
SIGNAL \next_var~7_combout\ : std_logic;
SIGNAL \next_var~5_combout\ : std_logic;
SIGNAL \next_var~3_combout\ : std_logic;
SIGNAL \next_var~6_combout\ : std_logic;
SIGNAL \next_var~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \next_var~9_combout\ : std_logic;
SIGNAL \next_var~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \penout~1_combout\ : std_logic;
SIGNAL \penout~2_combout\ : std_logic;
SIGNAL \penout~3_combout\ : std_logic;
SIGNAL \penout~4_combout\ : std_logic;
SIGNAL \penin~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_penin <= penin;
tp <= ww_tp;
pennext <= ww_pennext;
penout <= ww_penout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(7),
	combout => \penin~combout\(7));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(6),
	combout => \penin~combout\(6));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(0),
	combout => \penin~combout\(0));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(2),
	combout => \penin~combout\(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(1),
	combout => \penin~combout\(1));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(3),
	combout => \penin~combout\(3));

-- Location: LC_X12_Y1_N9
\next_var~2\ : maxv_lcell
-- Equation(s):
-- \next_var~2_combout\ = (!\penin~combout\(0) & (!\penin~combout\(2) & (!\penin~combout\(1) & !\penin~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(0),
	datab => \penin~combout\(2),
	datac => \penin~combout\(1),
	datad => \penin~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_var~2_combout\);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(5),
	combout => \penin~combout\(5));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(4),
	combout => \penin~combout\(4));

-- Location: LC_X13_Y1_N7
\penout~0\ : maxv_lcell
-- Equation(s):
-- \penout~0_combout\ = (!\penin~combout\(5) & (((!\penin~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(5),
	datad => \penin~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \penout~0_combout\);

-- Location: LC_X13_Y1_N8
\next_var~7\ : maxv_lcell
-- Equation(s):
-- \next_var~7_combout\ = (\penin~combout\(7) & ((\penin~combout\(6)) # ((!\penout~0_combout\) # (!\next_var~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(7),
	datab => \penin~combout\(6),
	datac => \next_var~2_combout\,
	datad => \penout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_var~7_combout\);

-- Location: LC_X12_Y1_N4
\next_var~5\ : maxv_lcell
-- Equation(s):
-- \next_var~5_combout\ = (\penin~combout\(1) & (((\penin~combout\(0)))))

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
	dataa => \penin~combout\(1),
	datac => \penin~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_var~5_combout\);

-- Location: LC_X13_Y1_N6
\next_var~3\ : maxv_lcell
-- Equation(s):
-- \next_var~3_combout\ = (((!\next_var~2_combout\ & \penin~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \next_var~2_combout\,
	datad => \penin~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_var~3_combout\);

-- Location: LC_X12_Y1_N6
\next_var~6\ : maxv_lcell
-- Equation(s):
-- \next_var~6_combout\ = (\penin~combout\(2) & ((\penin~combout\(1)) # ((\penin~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(1),
	datab => \penin~combout\(2),
	datac => \penin~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_var~6_combout\);

-- Location: LC_X12_Y1_N3
\next_var~4\ : maxv_lcell
-- Equation(s):
-- \next_var~4_combout\ = (\penin~combout\(3) & ((\penin~combout\(0)) # ((\penin~combout\(2)) # (\penin~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(0),
	datab => \penin~combout\(2),
	datac => \penin~combout\(1),
	datad => \penin~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_var~4_combout\);

-- Location: LC_X12_Y1_N7
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!\next_var~5_combout\ & (!\next_var~3_combout\ & (!\next_var~6_combout\ & !\next_var~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_var~5_combout\,
	datab => \next_var~3_combout\,
	datac => \next_var~6_combout\,
	datad => \next_var~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X13_Y1_N3
\next_var~9\ : maxv_lcell
-- Equation(s):
-- \next_var~9_combout\ = (\penin~combout\(6) & ((\penin~combout\(5)) # ((\penin~combout\(4)) # (!\next_var~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(5),
	datab => \penin~combout\(6),
	datac => \next_var~2_combout\,
	datad => \penin~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_var~9_combout\);

-- Location: LC_X13_Y1_N5
\next_var~8\ : maxv_lcell
-- Equation(s):
-- \next_var~8_combout\ = (\penin~combout\(5) & (((\penin~combout\(4)) # (!\next_var~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(5),
	datac => \next_var~2_combout\,
	datad => \penin~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \next_var~8_combout\);

-- Location: LC_X13_Y1_N9
\Equal0~1\ : maxv_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!\next_var~7_combout\ & (\Equal0~0_combout\ & (!\next_var~9_combout\ & !\next_var~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \next_var~7_combout\,
	datab => \Equal0~0_combout\,
	datac => \next_var~9_combout\,
	datad => \next_var~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X13_Y1_N4
\penout~1\ : maxv_lcell
-- Equation(s):
-- \penout~1_combout\ = (\penin~combout\(3)) # ((!\penin~combout\(4) & ((\penin~combout\(5)) # (!\penin~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(5),
	datab => \penin~combout\(6),
	datac => \penin~combout\(3),
	datad => \penin~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \penout~1_combout\);

-- Location: LC_X12_Y1_N5
\penout~2\ : maxv_lcell
-- Equation(s):
-- \penout~2_combout\ = (!\penin~combout\(0) & ((\penin~combout\(1)) # ((!\penin~combout\(2) & \penout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5150",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(0),
	datab => \penin~combout\(2),
	datac => \penin~combout\(1),
	datad => \penout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \penout~2_combout\);

-- Location: LC_X12_Y1_N8
\penout~3\ : maxv_lcell
-- Equation(s):
-- \penout~3_combout\ = (!\penin~combout\(1) & (((!\penin~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(1),
	datac => \penin~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \penout~3_combout\);

-- Location: LC_X12_Y1_N2
\penout~4\ : maxv_lcell
-- Equation(s):
-- \penout~4_combout\ = (\penout~3_combout\ & ((\penin~combout\(2)) # ((\penin~combout\(3)) # (\penout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penout~3_combout\,
	datab => \penin~combout\(2),
	datac => \penin~combout\(3),
	datad => \penout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \penout~4_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tp~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~1_combout\,
	oe => VCC,
	padio => ww_tp);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_pennext(0));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \next_var~5_combout\,
	oe => VCC,
	padio => ww_pennext(1));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \next_var~6_combout\,
	oe => VCC,
	padio => ww_pennext(2));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \next_var~4_combout\,
	oe => VCC,
	padio => ww_pennext(3));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \next_var~3_combout\,
	oe => VCC,
	padio => ww_pennext(4));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \next_var~8_combout\,
	oe => VCC,
	padio => ww_pennext(5));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \next_var~9_combout\,
	oe => VCC,
	padio => ww_pennext(6));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \next_var~7_combout\,
	oe => VCC,
	padio => ww_pennext(7));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\penout[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \penout~2_combout\,
	oe => VCC,
	padio => ww_penout(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\penout[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \penout~4_combout\,
	oe => VCC,
	padio => ww_penout(1));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\penout[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \next_var~2_combout\,
	oe => VCC,
	padio => ww_penout(2));
END structure;


