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

-- DATE "10/23/2018 13:22:08"

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
	pennext : OUT std_logic_vector(7 DOWNTO 0);
	penout : OUT std_logic_vector(2 DOWNTO 0)
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
SIGNAL ww_pennext : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_penout : std_logic_vector(2 DOWNTO 0);
SIGNAL \pennext~0_combout\ : std_logic;
SIGNAL \pennext~1_combout\ : std_logic;
SIGNAL \pennext~2_combout\ : std_logic;
SIGNAL \pennext~3_combout\ : std_logic;
SIGNAL \pennext~4_combout\ : std_logic;
SIGNAL \pennext~5_combout\ : std_logic;
SIGNAL \pennext~6_combout\ : std_logic;
SIGNAL \pennext~7_combout\ : std_logic;
SIGNAL \pennext~8_combout\ : std_logic;
SIGNAL \penout~0_combout\ : std_logic;
SIGNAL \penout~1_combout\ : std_logic;
SIGNAL \penout~2_combout\ : std_logic;
SIGNAL \penout~3_combout\ : std_logic;
SIGNAL \penin~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_pennext~0_combout\ : std_logic;

BEGIN

ww_penin <= penin;
pennext <= ww_pennext;
penout <= ww_penout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pennext~0_combout\ <= NOT \pennext~0_combout\;

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(2),
	combout => \penin~combout\(2));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(1),
	combout => \penin~combout\(1));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(5),
	combout => \penin~combout\(5));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(4),
	combout => \penin~combout\(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(7),
	combout => \penin~combout\(7));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(6),
	combout => \penin~combout\(6));

-- Location: LC_X6_Y5_N8
\pennext~0\ : maxv_lcell
-- Equation(s):
-- \pennext~0_combout\ = (!\penin~combout\(5) & (!\penin~combout\(4) & (!\penin~combout\(7) & !\penin~combout\(6))))

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
	dataa => \penin~combout\(5),
	datab => \penin~combout\(4),
	datac => \penin~combout\(7),
	datad => \penin~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pennext~0_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(3),
	combout => \penin~combout\(3));

-- Location: LC_X15_Y3_N5
\pennext~1\ : maxv_lcell
-- Equation(s):
-- \pennext~1_combout\ = (((\pennext~0_combout\ & !\penin~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \pennext~0_combout\,
	datad => \penin~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pennext~1_combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\penin[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_penin(0),
	combout => \penin~combout\(0));

-- Location: LC_X15_Y3_N2
\pennext~2\ : maxv_lcell
-- Equation(s):
-- \pennext~2_combout\ = (\penin~combout\(0) & ((\penin~combout\(2)) # ((\penin~combout\(1)) # (!\pennext~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(2),
	datab => \penin~combout\(1),
	datac => \pennext~1_combout\,
	datad => \penin~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pennext~2_combout\);

-- Location: LC_X15_Y3_N6
\pennext~3\ : maxv_lcell
-- Equation(s):
-- \pennext~3_combout\ = (\penin~combout\(1) & ((\penin~combout\(2)) # ((\penin~combout\(3)) # (!\pennext~0_combout\))))

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
	dataa => \penin~combout\(2),
	datab => \penin~combout\(1),
	datac => \pennext~0_combout\,
	datad => \penin~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pennext~3_combout\);

-- Location: LC_X15_Y3_N8
\pennext~4\ : maxv_lcell
-- Equation(s):
-- \pennext~4_combout\ = ((\penin~combout\(2) & ((\penin~combout\(3)) # (!\pennext~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \penin~combout\(3),
	datac => \pennext~0_combout\,
	datad => \penin~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pennext~4_combout\);

-- Location: LC_X15_Y3_N0
\pennext~5\ : maxv_lcell
-- Equation(s):
-- \pennext~5_combout\ = (((!\pennext~0_combout\ & \penin~combout\(3))))

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
	datac => \pennext~0_combout\,
	datad => \penin~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pennext~5_combout\);

-- Location: LC_X6_Y5_N5
\pennext~6\ : maxv_lcell
-- Equation(s):
-- \pennext~6_combout\ = (\penin~combout\(4) & ((\penin~combout\(5)) # ((\penin~combout\(7)) # (\penin~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(5),
	datab => \penin~combout\(4),
	datac => \penin~combout\(7),
	datad => \penin~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pennext~6_combout\);

-- Location: LC_X6_Y5_N3
\pennext~7\ : maxv_lcell
-- Equation(s):
-- \pennext~7_combout\ = (\penin~combout\(5) & (((\penin~combout\(7)) # (\penin~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(5),
	datac => \penin~combout\(7),
	datad => \penin~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pennext~7_combout\);

-- Location: LC_X6_Y5_N4
\pennext~8\ : maxv_lcell
-- Equation(s):
-- \pennext~8_combout\ = (((\penin~combout\(7) & \penin~combout\(6))))

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
	datac => \penin~combout\(7),
	datad => \penin~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pennext~8_combout\);

-- Location: LC_X6_Y5_N9
\penout~0\ : maxv_lcell
-- Equation(s):
-- \penout~0_combout\ = (!\penin~combout\(4) & ((\penin~combout\(3)) # ((\penin~combout\(1) & !\penin~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2232",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(3),
	datab => \penin~combout\(4),
	datac => \penin~combout\(1),
	datad => \penin~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \penout~0_combout\);

-- Location: LC_X6_Y5_N2
\penout~1\ : maxv_lcell
-- Equation(s):
-- \penout~1_combout\ = (\penin~combout\(7)) # ((!\penin~combout\(6) & ((\penin~combout\(5)) # (\penout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(5),
	datab => \penout~0_combout\,
	datac => \penin~combout\(7),
	datad => \penin~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \penout~1_combout\);

-- Location: LC_X6_Y5_N7
\penout~2\ : maxv_lcell
-- Equation(s):
-- \penout~2_combout\ = ((!\penin~combout\(5) & ((\penin~combout\(3)) # (\penin~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \penin~combout\(3),
	datac => \penin~combout\(5),
	datad => \penin~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \penout~2_combout\);

-- Location: LC_X6_Y5_N6
\penout~3\ : maxv_lcell
-- Equation(s):
-- \penout~3_combout\ = (\penin~combout\(6)) # ((\penin~combout\(7)) # ((\penout~2_combout\ & !\penin~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \penin~combout\(6),
	datab => \penout~2_combout\,
	datac => \penin~combout\(7),
	datad => \penin~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \penout~3_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pennext~2_combout\,
	oe => VCC,
	padio => ww_pennext(0));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pennext~3_combout\,
	oe => VCC,
	padio => ww_pennext(1));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pennext~4_combout\,
	oe => VCC,
	padio => ww_pennext(2));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pennext~5_combout\,
	oe => VCC,
	padio => ww_pennext(3));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pennext~6_combout\,
	oe => VCC,
	padio => ww_pennext(4));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pennext~7_combout\,
	oe => VCC,
	padio => ww_pennext(5));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \pennext~8_combout\,
	oe => VCC,
	padio => ww_pennext(6));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\pennext[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_pennext(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\penout[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \penout~1_combout\,
	oe => VCC,
	padio => ww_penout(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\penout[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \penout~3_combout\,
	oe => VCC,
	padio => ww_penout(1));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\penout[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_pennext~0_combout\,
	oe => VCC,
	padio => ww_penout(2));
END structure;


