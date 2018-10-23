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

-- DATE "10/23/2018 14:23:19"

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

ENTITY 	rf IS
    PORT (
	rf_a1 : IN std_logic_vector(2 DOWNTO 0);
	rf_a2 : IN std_logic_vector(2 DOWNTO 0);
	rf_a3 : IN std_logic_vector(2 DOWNTO 0);
	rst : IN std_logic;
	clk : IN std_logic;
	wr : IN std_logic;
	rf_d3 : IN std_logic_vector(15 DOWNTO 0);
	rf_d1 : OUT std_logic_vector(15 DOWNTO 0);
	rf_d2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END rf;

-- Design Ports Information


ARCHITECTURE structure OF rf IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rf_a1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rf_a2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rf_a3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_rf_d3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rf_d1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rf_d2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \wr~combout\ : std_logic;
SIGNAL \wrarr1[1]~5_combout\ : std_logic;
SIGNAL \wrarr1[0]~6_combout\ : std_logic;
SIGNAL \temp1~2\ : std_logic;
SIGNAL \wrarr1[2]~4_combout\ : std_logic;
SIGNAL \temp2~2\ : std_logic;
SIGNAL \wrarr1[3]~7_combout\ : std_logic;
SIGNAL \temp1~3\ : std_logic;
SIGNAL \wrarr1[6]~1_combout\ : std_logic;
SIGNAL \wrarr1[4]~2_combout\ : std_logic;
SIGNAL \temp1~0\ : std_logic;
SIGNAL \wrarr1[5]~0_combout\ : std_logic;
SIGNAL \temp2~0\ : std_logic;
SIGNAL \wrarr1[7]~3_combout\ : std_logic;
SIGNAL \temp1~1\ : std_logic;
SIGNAL \temp1~4_combout\ : std_logic;
SIGNAL \temp1~7\ : std_logic;
SIGNAL \temp2~7\ : std_logic;
SIGNAL \temp1~8\ : std_logic;
SIGNAL \temp1~5\ : std_logic;
SIGNAL \temp2~5\ : std_logic;
SIGNAL \temp1~6\ : std_logic;
SIGNAL \temp1~9_combout\ : std_logic;
SIGNAL \temp1~12\ : std_logic;
SIGNAL \temp2~12\ : std_logic;
SIGNAL \temp1~13\ : std_logic;
SIGNAL \temp2~10\ : std_logic;
SIGNAL \temp1~10\ : std_logic;
SIGNAL \temp1~11\ : std_logic;
SIGNAL \temp1~14_combout\ : std_logic;
SIGNAL \temp2~15\ : std_logic;
SIGNAL \temp1~15\ : std_logic;
SIGNAL \temp1~16\ : std_logic;
SIGNAL \temp1~17\ : std_logic;
SIGNAL \temp2~17\ : std_logic;
SIGNAL \temp1~18\ : std_logic;
SIGNAL \temp1~19_combout\ : std_logic;
SIGNAL \temp1~20\ : std_logic;
SIGNAL \temp2~20\ : std_logic;
SIGNAL \temp1~21\ : std_logic;
SIGNAL \temp1~22\ : std_logic;
SIGNAL \temp2~22\ : std_logic;
SIGNAL \temp1~23\ : std_logic;
SIGNAL \temp1~24_combout\ : std_logic;
SIGNAL \temp1~25\ : std_logic;
SIGNAL \temp2~25\ : std_logic;
SIGNAL \temp1~26\ : std_logic;
SIGNAL \temp1~27\ : std_logic;
SIGNAL \temp2~27\ : std_logic;
SIGNAL \temp1~28\ : std_logic;
SIGNAL \temp1~29_combout\ : std_logic;
SIGNAL \temp1~30\ : std_logic;
SIGNAL \temp2~30\ : std_logic;
SIGNAL \temp1~31\ : std_logic;
SIGNAL \temp1~32\ : std_logic;
SIGNAL \temp2~32\ : std_logic;
SIGNAL \temp1~33\ : std_logic;
SIGNAL \temp1~34_combout\ : std_logic;
SIGNAL \temp2~37\ : std_logic;
SIGNAL \temp1~37\ : std_logic;
SIGNAL \temp1~38\ : std_logic;
SIGNAL \temp1~35\ : std_logic;
SIGNAL \temp2~35\ : std_logic;
SIGNAL \temp1~36\ : std_logic;
SIGNAL \temp1~39_combout\ : std_logic;
SIGNAL \temp1~40\ : std_logic;
SIGNAL \temp2~40\ : std_logic;
SIGNAL \temp1~41\ : std_logic;
SIGNAL \temp1~42\ : std_logic;
SIGNAL \temp2~42\ : std_logic;
SIGNAL \temp1~43\ : std_logic;
SIGNAL \temp1~44_combout\ : std_logic;
SIGNAL \temp1~47\ : std_logic;
SIGNAL \temp2~47\ : std_logic;
SIGNAL \temp1~48\ : std_logic;
SIGNAL \temp1~45\ : std_logic;
SIGNAL \temp2~45\ : std_logic;
SIGNAL \temp1~46\ : std_logic;
SIGNAL \temp1~49_combout\ : std_logic;
SIGNAL \temp1~50\ : std_logic;
SIGNAL \temp2~50\ : std_logic;
SIGNAL \temp1~51\ : std_logic;
SIGNAL \temp1~52\ : std_logic;
SIGNAL \temp2~52\ : std_logic;
SIGNAL \temp1~53\ : std_logic;
SIGNAL \temp1~54_combout\ : std_logic;
SIGNAL \temp1~57\ : std_logic;
SIGNAL \temp2~57\ : std_logic;
SIGNAL \temp1~58\ : std_logic;
SIGNAL \temp2~55\ : std_logic;
SIGNAL \temp1~55\ : std_logic;
SIGNAL \temp1~56\ : std_logic;
SIGNAL \temp1~59_combout\ : std_logic;
SIGNAL \temp1~62\ : std_logic;
SIGNAL \temp2~62\ : std_logic;
SIGNAL \temp1~63\ : std_logic;
SIGNAL \temp1~60\ : std_logic;
SIGNAL \temp2~60\ : std_logic;
SIGNAL \temp1~61\ : std_logic;
SIGNAL \temp1~64_combout\ : std_logic;
SIGNAL \temp1~67\ : std_logic;
SIGNAL \temp2~67\ : std_logic;
SIGNAL \temp1~68\ : std_logic;
SIGNAL \temp2~65\ : std_logic;
SIGNAL \temp1~65\ : std_logic;
SIGNAL \temp1~66\ : std_logic;
SIGNAL \temp1~69_combout\ : std_logic;
SIGNAL \temp2~70\ : std_logic;
SIGNAL \temp1~70\ : std_logic;
SIGNAL \temp1~71\ : std_logic;
SIGNAL \temp1~72\ : std_logic;
SIGNAL \temp2~72\ : std_logic;
SIGNAL \temp1~73\ : std_logic;
SIGNAL \temp1~74_combout\ : std_logic;
SIGNAL \temp1~75\ : std_logic;
SIGNAL \temp2~75\ : std_logic;
SIGNAL \temp1~76\ : std_logic;
SIGNAL \temp1~77\ : std_logic;
SIGNAL \temp2~77\ : std_logic;
SIGNAL \temp1~78\ : std_logic;
SIGNAL \temp1~79_combout\ : std_logic;
SIGNAL \temp2~1\ : std_logic;
SIGNAL \temp2~3\ : std_logic;
SIGNAL \temp2~4_combout\ : std_logic;
SIGNAL \temp2~6\ : std_logic;
SIGNAL \temp2~8\ : std_logic;
SIGNAL \temp2~9_combout\ : std_logic;
SIGNAL \temp2~11\ : std_logic;
SIGNAL \temp2~13\ : std_logic;
SIGNAL \temp2~14_combout\ : std_logic;
SIGNAL \temp2~16\ : std_logic;
SIGNAL \temp2~18\ : std_logic;
SIGNAL \temp2~19_combout\ : std_logic;
SIGNAL \temp2~21\ : std_logic;
SIGNAL \temp2~23\ : std_logic;
SIGNAL \temp2~24_combout\ : std_logic;
SIGNAL \temp2~26\ : std_logic;
SIGNAL \temp2~28\ : std_logic;
SIGNAL \temp2~29_combout\ : std_logic;
SIGNAL \temp2~33\ : std_logic;
SIGNAL \temp2~31\ : std_logic;
SIGNAL \temp2~34_combout\ : std_logic;
SIGNAL \temp2~36\ : std_logic;
SIGNAL \temp2~38\ : std_logic;
SIGNAL \temp2~39_combout\ : std_logic;
SIGNAL \temp2~41\ : std_logic;
SIGNAL \temp2~43\ : std_logic;
SIGNAL \temp2~44_combout\ : std_logic;
SIGNAL \temp2~46\ : std_logic;
SIGNAL \temp2~48\ : std_logic;
SIGNAL \temp2~49_combout\ : std_logic;
SIGNAL \temp2~51\ : std_logic;
SIGNAL \temp2~53\ : std_logic;
SIGNAL \temp2~54_combout\ : std_logic;
SIGNAL \temp2~56\ : std_logic;
SIGNAL \temp2~58\ : std_logic;
SIGNAL \temp2~59_combout\ : std_logic;
SIGNAL \temp2~61\ : std_logic;
SIGNAL \temp2~63\ : std_logic;
SIGNAL \temp2~64_combout\ : std_logic;
SIGNAL \temp2~68\ : std_logic;
SIGNAL \temp2~66\ : std_logic;
SIGNAL \temp2~69_combout\ : std_logic;
SIGNAL \temp2~71\ : std_logic;
SIGNAL \temp2~73\ : std_logic;
SIGNAL \temp2~74_combout\ : std_logic;
SIGNAL \temp2~76\ : std_logic;
SIGNAL \temp2~78\ : std_logic;
SIGNAL \temp2~79_combout\ : std_logic;
SIGNAL \inst_reg:5:R0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf_a1~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_reg:0:R0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:6:R0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:1:R0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:2:R0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf_a2~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_reg:4:R0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_reg:7:R0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf_a3~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_reg:3:R0|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \rf_d3~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_rf_a1 <= rf_a1;
ww_rf_a2 <= rf_a2;
ww_rf_a3 <= rf_a3;
ww_rst <= rst;
ww_clk <= clk;
ww_wr <= wr;
ww_rf_d3 <= rf_d3;
rf_d1 <= ww_rf_d1;
rf_d2 <= ww_rf_d2;
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

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a1(0),
	combout => \rf_a1~combout\(0));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a1(1),
	combout => \rf_a1~combout\(1));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(0),
	combout => \rf_d3~combout\(0));

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

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a3(1),
	combout => \rf_a3~combout\(1));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr,
	combout => \wr~combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a3(2),
	combout => \rf_a3~combout\(2));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a3(0),
	combout => \rf_a3~combout\(0));

-- Location: LC_X7_Y6_N7
\wrarr1[1]~5\ : maxv_lcell
-- Equation(s):
-- \wrarr1[1]~5_combout\ = (!\rf_a3~combout\(1) & (\wr~combout\ & (!\rf_a3~combout\(2) & \rf_a3~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3~combout\(1),
	datab => \wr~combout\,
	datac => \rf_a3~combout\(2),
	datad => \rf_a3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr1[1]~5_combout\);

-- Location: LC_X8_Y4_N6
\inst_reg:1:R0|q[0]\ : maxv_lcell
-- Equation(s):
-- \temp1~2\ = (\rf_a1~combout\(0) & ((\rf_a1~combout\(1)) # ((B2_q[0])))) # (!\rf_a1~combout\(0) & (!\rf_a1~combout\(1) & ((\inst_reg:0:R0|q\(0)))))
-- \inst_reg:1:R0|q\(0) = DFFEAS(\temp1~2\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(0),
	datad => \inst_reg:0:R0|q\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~2\,
	regout => \inst_reg:1:R0|q\(0));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a2(0),
	combout => \rf_a2~combout\(0));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a2(1),
	combout => \rf_a2~combout\(1));

-- Location: LC_X7_Y6_N3
\wrarr1[0]~6\ : maxv_lcell
-- Equation(s):
-- \wrarr1[0]~6_combout\ = (!\rf_a3~combout\(1) & (\wr~combout\ & (!\rf_a3~combout\(2) & !\rf_a3~combout\(0))))

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
	dataa => \rf_a3~combout\(1),
	datab => \wr~combout\,
	datac => \rf_a3~combout\(2),
	datad => \rf_a3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr1[0]~6_combout\);

-- Location: LC_X8_Y4_N2
\inst_reg:0:R0|q[0]\ : maxv_lcell
-- Equation(s):
-- \temp2~2\ = (\rf_a2~combout\(0) & ((\inst_reg:1:R0|q\(0)) # ((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & (((B1_q[0] & !\rf_a2~combout\(1)))))
-- \inst_reg:0:R0|q\(0) = DFFEAS(\temp2~2\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:1:R0|q\(0),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(0),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~2\,
	regout => \inst_reg:0:R0|q\(0));

-- Location: LC_X7_Y6_N9
\wrarr1[2]~4\ : maxv_lcell
-- Equation(s):
-- \wrarr1[2]~4_combout\ = (\rf_a3~combout\(1) & (\wr~combout\ & (!\rf_a3~combout\(2) & !\rf_a3~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3~combout\(1),
	datab => \wr~combout\,
	datac => \rf_a3~combout\(2),
	datad => \rf_a3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr1[2]~4_combout\);

-- Location: LC_X8_Y6_N3
\inst_reg:2:R0|q[0]\ : maxv_lcell
-- Equation(s):
-- \temp1~3\ = (\temp1~2\ & ((\inst_reg:3:R0|q\(0)) # ((!\rf_a1~combout\(1))))) # (!\temp1~2\ & (((B3_q[0] & \rf_a1~combout\(1)))))
-- \inst_reg:2:R0|q\(0) = DFFEAS(\temp1~3\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp1~2\,
	datab => \inst_reg:3:R0|q\(0),
	datac => \rf_d3~combout\(0),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~3\,
	regout => \inst_reg:2:R0|q\(0));

-- Location: LC_X7_Y6_N0
\wrarr1[3]~7\ : maxv_lcell
-- Equation(s):
-- \wrarr1[3]~7_combout\ = (\rf_a3~combout\(1) & (\wr~combout\ & (!\rf_a3~combout\(2) & \rf_a3~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3~combout\(1),
	datab => \wr~combout\,
	datac => \rf_a3~combout\(2),
	datad => \rf_a3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr1[3]~7_combout\);

-- Location: LC_X8_Y6_N9
\inst_reg:3:R0|q[0]\ : maxv_lcell
-- Equation(s):
-- \temp2~3\ = (\rf_a2~combout\(1) & ((\temp2~2\ & ((B4_q[0]))) # (!\temp2~2\ & (\inst_reg:2:R0|q\(0))))) # (!\rf_a2~combout\(1) & (((\temp2~2\))))
-- \inst_reg:3:R0|q\(0) = DFFEAS(\temp2~3\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:2:R0|q\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(0),
	datad => \temp2~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~3\,
	regout => \inst_reg:3:R0|q\(0));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a1(2),
	combout => \rf_a1~combout\(2));

-- Location: LC_X7_Y6_N1
\wrarr1[6]~1\ : maxv_lcell
-- Equation(s):
-- \wrarr1[6]~1_combout\ = (\rf_a3~combout\(1) & (\wr~combout\ & (\rf_a3~combout\(2) & !\rf_a3~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3~combout\(1),
	datab => \wr~combout\,
	datac => \rf_a3~combout\(2),
	datad => \rf_a3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr1[6]~1_combout\);

-- Location: LC_X10_Y6_N3
\inst_reg:6:R0|q[0]\ : maxv_lcell
-- Equation(s):
-- \temp1~0\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[0])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(0))))))
-- \inst_reg:6:R0|q\(0) = DFFEAS(\temp1~0\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(0),
	datad => \inst_reg:4:R0|q\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~0\,
	regout => \inst_reg:6:R0|q\(0));

-- Location: LC_X7_Y6_N6
\wrarr1[4]~2\ : maxv_lcell
-- Equation(s):
-- \wrarr1[4]~2_combout\ = (!\rf_a3~combout\(1) & (\wr~combout\ & (\rf_a3~combout\(2) & !\rf_a3~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3~combout\(1),
	datab => \wr~combout\,
	datac => \rf_a3~combout\(2),
	datad => \rf_a3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr1[4]~2_combout\);

-- Location: LC_X10_Y6_N0
\inst_reg:4:R0|q[0]\ : maxv_lcell
-- Equation(s):
-- \temp2~0\ = (\rf_a2~combout\(0) & (\rf_a2~combout\(1))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & ((\inst_reg:6:R0|q\(0)))) # (!\rf_a2~combout\(1) & (B5_q[0]))))
-- \inst_reg:4:R0|q\(0) = DFFEAS(\temp2~0\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(0),
	datad => \inst_reg:6:R0|q\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~0\,
	regout => \inst_reg:4:R0|q\(0));

-- Location: LC_X7_Y6_N5
\wrarr1[5]~0\ : maxv_lcell
-- Equation(s):
-- \wrarr1[5]~0_combout\ = (!\rf_a3~combout\(1) & (\wr~combout\ & (\rf_a3~combout\(2) & \rf_a3~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3~combout\(1),
	datab => \wr~combout\,
	datac => \rf_a3~combout\(2),
	datad => \rf_a3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr1[5]~0_combout\);

-- Location: LC_X9_Y5_N4
\inst_reg:5:R0|q[0]\ : maxv_lcell
-- Equation(s):
-- \temp1~1\ = (\temp1~0\ & ((\inst_reg:7:R0|q\(0)) # ((!\rf_a1~combout\(0))))) # (!\temp1~0\ & (((B6_q[0] & \rf_a1~combout\(0)))))
-- \inst_reg:5:R0|q\(0) = DFFEAS(\temp1~1\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:7:R0|q\(0),
	datab => \temp1~0\,
	datac => \rf_d3~combout\(0),
	datad => \rf_a1~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~1\,
	regout => \inst_reg:5:R0|q\(0));

-- Location: LC_X7_Y6_N4
\wrarr1[7]~3\ : maxv_lcell
-- Equation(s):
-- \wrarr1[7]~3_combout\ = (\rf_a3~combout\(1) & (\wr~combout\ & (\rf_a3~combout\(2) & \rf_a3~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a3~combout\(1),
	datab => \wr~combout\,
	datac => \rf_a3~combout\(2),
	datad => \rf_a3~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr1[7]~3_combout\);

-- Location: LC_X9_Y5_N5
\inst_reg:7:R0|q[0]\ : maxv_lcell
-- Equation(s):
-- \temp2~1\ = (\rf_a2~combout\(0) & ((\temp2~0\ & ((B8_q[0]))) # (!\temp2~0\ & (\inst_reg:5:R0|q\(0))))) # (!\rf_a2~combout\(0) & (((\temp2~0\))))
-- \inst_reg:7:R0|q\(0) = DFFEAS(\temp2~1\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:5:R0|q\(0),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(0),
	datad => \temp2~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~1\,
	regout => \inst_reg:7:R0|q\(0));

-- Location: LC_X8_Y5_N9
\temp1~4\ : maxv_lcell
-- Equation(s):
-- \temp1~4_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & ((\temp1~1\))) # (!\rf_a1~combout\(2) & (\temp1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~3\,
	datab => \rf_a1~combout\(2),
	datac => \wr~combout\,
	datad => \temp1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~4_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(1),
	combout => \rf_d3~combout\(1));

-- Location: LC_X8_Y4_N3
\inst_reg:1:R0|q[1]\ : maxv_lcell
-- Equation(s):
-- \temp1~7\ = (\rf_a1~combout\(0) & ((\rf_a1~combout\(1)) # ((B2_q[1])))) # (!\rf_a1~combout\(0) & (!\rf_a1~combout\(1) & ((\inst_reg:0:R0|q\(1)))))
-- \inst_reg:1:R0|q\(1) = DFFEAS(\temp1~7\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(1),
	datad => \inst_reg:0:R0|q\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~7\,
	regout => \inst_reg:1:R0|q\(1));

-- Location: LC_X8_Y4_N0
\inst_reg:0:R0|q[1]\ : maxv_lcell
-- Equation(s):
-- \temp2~7\ = (\rf_a2~combout\(1) & (\rf_a2~combout\(0))) # (!\rf_a2~combout\(1) & ((\rf_a2~combout\(0) & ((\inst_reg:1:R0|q\(1)))) # (!\rf_a2~combout\(0) & (B1_q[1]))))
-- \inst_reg:0:R0|q\(1) = DFFEAS(\temp2~7\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(1),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(1),
	datad => \inst_reg:1:R0|q\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~7\,
	regout => \inst_reg:0:R0|q\(1));

-- Location: LC_X8_Y6_N6
\inst_reg:2:R0|q[1]\ : maxv_lcell
-- Equation(s):
-- \temp1~8\ = (\temp1~7\ & ((\inst_reg:3:R0|q\(1)) # ((!\rf_a1~combout\(1))))) # (!\temp1~7\ & (((B3_q[1] & \rf_a1~combout\(1)))))
-- \inst_reg:2:R0|q\(1) = DFFEAS(\temp1~8\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:3:R0|q\(1),
	datab => \temp1~7\,
	datac => \rf_d3~combout\(1),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~8\,
	regout => \inst_reg:2:R0|q\(1));

-- Location: LC_X8_Y6_N4
\inst_reg:3:R0|q[1]\ : maxv_lcell
-- Equation(s):
-- \temp2~8\ = (\rf_a2~combout\(1) & ((\temp2~7\ & ((B4_q[1]))) # (!\temp2~7\ & (\inst_reg:2:R0|q\(1))))) # (!\rf_a2~combout\(1) & (((\temp2~7\))))
-- \inst_reg:3:R0|q\(1) = DFFEAS(\temp2~8\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:2:R0|q\(1),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(1),
	datad => \temp2~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~8\,
	regout => \inst_reg:3:R0|q\(1));

-- Location: LC_X10_Y6_N9
\inst_reg:6:R0|q[1]\ : maxv_lcell
-- Equation(s):
-- \temp1~5\ = (\rf_a1~combout\(1) & (((B7_q[1]) # (\rf_a1~combout\(0))))) # (!\rf_a1~combout\(1) & (\inst_reg:4:R0|q\(1) & ((!\rf_a1~combout\(0)))))
-- \inst_reg:6:R0|q\(1) = DFFEAS(\temp1~5\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:4:R0|q\(1),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(1),
	datad => \rf_a1~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~5\,
	regout => \inst_reg:6:R0|q\(1));

-- Location: LC_X10_Y6_N6
\inst_reg:4:R0|q[1]\ : maxv_lcell
-- Equation(s):
-- \temp2~5\ = (\rf_a2~combout\(0) & (\rf_a2~combout\(1))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & ((\inst_reg:6:R0|q\(1)))) # (!\rf_a2~combout\(1) & (B5_q[1]))))
-- \inst_reg:4:R0|q\(1) = DFFEAS(\temp2~5\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(1),
	datad => \inst_reg:6:R0|q\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~5\,
	regout => \inst_reg:4:R0|q\(1));

-- Location: LC_X9_Y5_N6
\inst_reg:5:R0|q[1]\ : maxv_lcell
-- Equation(s):
-- \temp1~6\ = (\rf_a1~combout\(0) & ((\temp1~5\ & (\inst_reg:7:R0|q\(1))) # (!\temp1~5\ & ((B6_q[1]))))) # (!\rf_a1~combout\(0) & (((\temp1~5\))))
-- \inst_reg:5:R0|q\(1) = DFFEAS(\temp1~6\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(1),
	datac => \rf_d3~combout\(1),
	datad => \temp1~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~6\,
	regout => \inst_reg:5:R0|q\(1));

-- Location: LC_X9_Y5_N9
\inst_reg:7:R0|q[1]\ : maxv_lcell
-- Equation(s):
-- \temp2~6\ = (\rf_a2~combout\(0) & ((\temp2~5\ & ((B8_q[1]))) # (!\temp2~5\ & (\inst_reg:5:R0|q\(1))))) # (!\rf_a2~combout\(0) & (((\temp2~5\))))
-- \inst_reg:7:R0|q\(1) = DFFEAS(\temp2~6\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:5:R0|q\(1),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(1),
	datad => \temp2~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~6\,
	regout => \inst_reg:7:R0|q\(1));

-- Location: LC_X8_Y5_N4
\temp1~9\ : maxv_lcell
-- Equation(s):
-- \temp1~9_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & ((\temp1~6\))) # (!\rf_a1~combout\(2) & (\temp1~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~8\,
	datab => \rf_a1~combout\(2),
	datac => \wr~combout\,
	datad => \temp1~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~9_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(2),
	combout => \rf_d3~combout\(2));

-- Location: LC_X8_Y4_N5
\inst_reg:1:R0|q[2]\ : maxv_lcell
-- Equation(s):
-- \temp1~12\ = (\rf_a1~combout\(0) & (((B2_q[2]) # (\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(2) & ((!\rf_a1~combout\(1)))))
-- \inst_reg:1:R0|q\(2) = DFFEAS(\temp1~12\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:0:R0|q\(2),
	datac => \rf_d3~combout\(2),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~12\,
	regout => \inst_reg:1:R0|q\(2));

-- Location: LC_X8_Y4_N1
\inst_reg:0:R0|q[2]\ : maxv_lcell
-- Equation(s):
-- \temp2~12\ = (\rf_a2~combout\(0) & ((\inst_reg:1:R0|q\(2)) # ((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & (((B1_q[2] & !\rf_a2~combout\(1)))))
-- \inst_reg:0:R0|q\(2) = DFFEAS(\temp2~12\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:1:R0|q\(2),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(2),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~12\,
	regout => \inst_reg:0:R0|q\(2));

-- Location: LC_X8_Y6_N7
\inst_reg:2:R0|q[2]\ : maxv_lcell
-- Equation(s):
-- \temp1~13\ = (\rf_a1~combout\(1) & ((\temp1~12\ & ((\inst_reg:3:R0|q\(2)))) # (!\temp1~12\ & (B3_q[2])))) # (!\rf_a1~combout\(1) & (\temp1~12\))
-- \inst_reg:2:R0|q\(2) = DFFEAS(\temp1~13\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \temp1~12\,
	datac => \rf_d3~combout\(2),
	datad => \inst_reg:3:R0|q\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~13\,
	regout => \inst_reg:2:R0|q\(2));

-- Location: LC_X8_Y6_N8
\inst_reg:3:R0|q[2]\ : maxv_lcell
-- Equation(s):
-- \temp2~13\ = (\temp2~12\ & (((B4_q[2]) # (!\rf_a2~combout\(1))))) # (!\temp2~12\ & (\inst_reg:2:R0|q\(2) & ((\rf_a2~combout\(1)))))
-- \inst_reg:3:R0|q\(2) = DFFEAS(\temp2~13\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp2~12\,
	datab => \inst_reg:2:R0|q\(2),
	datac => \rf_d3~combout\(2),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~13\,
	regout => \inst_reg:3:R0|q\(2));

-- Location: LC_X10_Y6_N2
\inst_reg:4:R0|q[2]\ : maxv_lcell
-- Equation(s):
-- \temp2~10\ = (\rf_a2~combout\(1) & ((\inst_reg:6:R0|q\(2)) # ((\rf_a2~combout\(0))))) # (!\rf_a2~combout\(1) & (((B5_q[2] & !\rf_a2~combout\(0)))))
-- \inst_reg:4:R0|q\(2) = DFFEAS(\temp2~10\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:6:R0|q\(2),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(2),
	datad => \rf_a2~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~10\,
	regout => \inst_reg:4:R0|q\(2));

-- Location: LC_X10_Y6_N4
\inst_reg:6:R0|q[2]\ : maxv_lcell
-- Equation(s):
-- \temp1~10\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[2])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(2))))))
-- \inst_reg:6:R0|q\(2) = DFFEAS(\temp1~10\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(2),
	datad => \inst_reg:4:R0|q\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~10\,
	regout => \inst_reg:6:R0|q\(2));

-- Location: LC_X9_Y5_N8
\inst_reg:5:R0|q[2]\ : maxv_lcell
-- Equation(s):
-- \temp1~11\ = (\rf_a1~combout\(0) & ((\temp1~10\ & (\inst_reg:7:R0|q\(2))) # (!\temp1~10\ & ((B6_q[2]))))) # (!\rf_a1~combout\(0) & (((\temp1~10\))))
-- \inst_reg:5:R0|q\(2) = DFFEAS(\temp1~11\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(2),
	datac => \rf_d3~combout\(2),
	datad => \temp1~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~11\,
	regout => \inst_reg:5:R0|q\(2));

-- Location: LC_X9_Y5_N0
\inst_reg:7:R0|q[2]\ : maxv_lcell
-- Equation(s):
-- \temp2~11\ = (\temp2~10\ & (((B8_q[2])) # (!\rf_a2~combout\(0)))) # (!\temp2~10\ & (\rf_a2~combout\(0) & ((\inst_reg:5:R0|q\(2)))))
-- \inst_reg:7:R0|q\(2) = DFFEAS(\temp2~11\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp2~10\,
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(2),
	datad => \inst_reg:5:R0|q\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~11\,
	regout => \inst_reg:7:R0|q\(2));

-- Location: LC_X8_Y5_N5
\temp1~14\ : maxv_lcell
-- Equation(s):
-- \temp1~14_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & ((\temp1~11\))) # (!\rf_a1~combout\(2) & (\temp1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~13\,
	datab => \rf_a1~combout\(2),
	datac => \wr~combout\,
	datad => \temp1~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~14_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(3),
	combout => \rf_d3~combout\(3));

-- Location: LC_X10_Y6_N1
\inst_reg:4:R0|q[3]\ : maxv_lcell
-- Equation(s):
-- \temp2~15\ = (\rf_a2~combout\(1) & ((\inst_reg:6:R0|q\(3)) # ((\rf_a2~combout\(0))))) # (!\rf_a2~combout\(1) & (((B5_q[3] & !\rf_a2~combout\(0)))))
-- \inst_reg:4:R0|q\(3) = DFFEAS(\temp2~15\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:6:R0|q\(3),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(3),
	datad => \rf_a2~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~15\,
	regout => \inst_reg:4:R0|q\(3));

-- Location: LC_X10_Y6_N5
\inst_reg:6:R0|q[3]\ : maxv_lcell
-- Equation(s):
-- \temp1~15\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[3])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(3))))))
-- \inst_reg:6:R0|q\(3) = DFFEAS(\temp1~15\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(3),
	datad => \inst_reg:4:R0|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~15\,
	regout => \inst_reg:6:R0|q\(3));

-- Location: LC_X9_Y5_N3
\inst_reg:5:R0|q[3]\ : maxv_lcell
-- Equation(s):
-- \temp1~16\ = (\rf_a1~combout\(0) & ((\temp1~15\ & (\inst_reg:7:R0|q\(3))) # (!\temp1~15\ & ((B6_q[3]))))) # (!\rf_a1~combout\(0) & (((\temp1~15\))))
-- \inst_reg:5:R0|q\(3) = DFFEAS(\temp1~16\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(3),
	datac => \rf_d3~combout\(3),
	datad => \temp1~15\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~16\,
	regout => \inst_reg:5:R0|q\(3));

-- Location: LC_X9_Y5_N7
\inst_reg:7:R0|q[3]\ : maxv_lcell
-- Equation(s):
-- \temp2~16\ = (\temp2~15\ & (((B8_q[3])) # (!\rf_a2~combout\(0)))) # (!\temp2~15\ & (\rf_a2~combout\(0) & ((\inst_reg:5:R0|q\(3)))))
-- \inst_reg:7:R0|q\(3) = DFFEAS(\temp2~16\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp2~15\,
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(3),
	datad => \inst_reg:5:R0|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~16\,
	regout => \inst_reg:7:R0|q\(3));

-- Location: LC_X8_Y4_N4
\inst_reg:1:R0|q[3]\ : maxv_lcell
-- Equation(s):
-- \temp1~17\ = (\rf_a1~combout\(0) & ((\rf_a1~combout\(1)) # ((B2_q[3])))) # (!\rf_a1~combout\(0) & (!\rf_a1~combout\(1) & ((\inst_reg:0:R0|q\(3)))))
-- \inst_reg:1:R0|q\(3) = DFFEAS(\temp1~17\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(3),
	datad => \inst_reg:0:R0|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~17\,
	regout => \inst_reg:1:R0|q\(3));

-- Location: LC_X8_Y4_N8
\inst_reg:0:R0|q[3]\ : maxv_lcell
-- Equation(s):
-- \temp2~17\ = (\rf_a2~combout\(1) & (((\rf_a2~combout\(0))))) # (!\rf_a2~combout\(1) & ((\rf_a2~combout\(0) & (\inst_reg:1:R0|q\(3))) # (!\rf_a2~combout\(0) & ((B1_q[3])))))
-- \inst_reg:0:R0|q\(3) = DFFEAS(\temp2~17\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:1:R0|q\(3),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(3),
	datad => \rf_a2~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~17\,
	regout => \inst_reg:0:R0|q\(3));

-- Location: LC_X9_Y4_N8
\inst_reg:2:R0|q[3]\ : maxv_lcell
-- Equation(s):
-- \temp1~18\ = (\rf_a1~combout\(1) & ((\temp1~17\ & ((\inst_reg:3:R0|q\(3)))) # (!\temp1~17\ & (B3_q[3])))) # (!\rf_a1~combout\(1) & (\temp1~17\))
-- \inst_reg:2:R0|q\(3) = DFFEAS(\temp1~18\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \temp1~17\,
	datac => \rf_d3~combout\(3),
	datad => \inst_reg:3:R0|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~18\,
	regout => \inst_reg:2:R0|q\(3));

-- Location: LC_X9_Y4_N3
\inst_reg:3:R0|q[3]\ : maxv_lcell
-- Equation(s):
-- \temp2~18\ = (\temp2~17\ & (((B4_q[3])) # (!\rf_a2~combout\(1)))) # (!\temp2~17\ & (\rf_a2~combout\(1) & ((\inst_reg:2:R0|q\(3)))))
-- \inst_reg:3:R0|q\(3) = DFFEAS(\temp2~18\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp2~17\,
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(3),
	datad => \inst_reg:2:R0|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~18\,
	regout => \inst_reg:3:R0|q\(3));

-- Location: LC_X9_Y4_N5
\temp1~19\ : maxv_lcell
-- Equation(s):
-- \temp1~19_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & (\temp1~16\)) # (!\rf_a1~combout\(2) & ((\temp1~18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a1~combout\(2),
	datab => \temp1~16\,
	datac => \wr~combout\,
	datad => \temp1~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~19_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(4),
	combout => \rf_d3~combout\(4));

-- Location: LC_X10_Y6_N7
\inst_reg:6:R0|q[4]\ : maxv_lcell
-- Equation(s):
-- \temp1~20\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[4])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(4))))))
-- \inst_reg:6:R0|q\(4) = DFFEAS(\temp1~20\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(4),
	datad => \inst_reg:4:R0|q\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~20\,
	regout => \inst_reg:6:R0|q\(4));

-- Location: LC_X10_Y6_N8
\inst_reg:4:R0|q[4]\ : maxv_lcell
-- Equation(s):
-- \temp2~20\ = (\rf_a2~combout\(0) & (((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & (\inst_reg:6:R0|q\(4))) # (!\rf_a2~combout\(1) & ((B5_q[4])))))
-- \inst_reg:4:R0|q\(4) = DFFEAS(\temp2~20\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \inst_reg:6:R0|q\(4),
	datac => \rf_d3~combout\(4),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~20\,
	regout => \inst_reg:4:R0|q\(4));

-- Location: LC_X6_Y6_N1
\inst_reg:5:R0|q[4]\ : maxv_lcell
-- Equation(s):
-- \temp1~21\ = (\rf_a1~combout\(0) & ((\temp1~20\ & (\inst_reg:7:R0|q\(4))) # (!\temp1~20\ & ((B6_q[4]))))) # (!\rf_a1~combout\(0) & (((\temp1~20\))))
-- \inst_reg:5:R0|q\(4) = DFFEAS(\temp1~21\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(4),
	datac => \rf_d3~combout\(4),
	datad => \temp1~20\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~21\,
	regout => \inst_reg:5:R0|q\(4));

-- Location: LC_X6_Y6_N0
\inst_reg:7:R0|q[4]\ : maxv_lcell
-- Equation(s):
-- \temp2~21\ = (\rf_a2~combout\(0) & ((\temp2~20\ & ((B8_q[4]))) # (!\temp2~20\ & (\inst_reg:5:R0|q\(4))))) # (!\rf_a2~combout\(0) & (((\temp2~20\))))
-- \inst_reg:7:R0|q\(4) = DFFEAS(\temp2~21\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \inst_reg:5:R0|q\(4),
	datac => \rf_d3~combout\(4),
	datad => \temp2~20\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~21\,
	regout => \inst_reg:7:R0|q\(4));

-- Location: LC_X2_Y6_N8
\inst_reg:1:R0|q[4]\ : maxv_lcell
-- Equation(s):
-- \temp1~22\ = (\rf_a1~combout\(0) & ((\rf_a1~combout\(1)) # ((B2_q[4])))) # (!\rf_a1~combout\(0) & (!\rf_a1~combout\(1) & ((\inst_reg:0:R0|q\(4)))))
-- \inst_reg:1:R0|q\(4) = DFFEAS(\temp1~22\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(4),
	datad => \inst_reg:0:R0|q\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~22\,
	regout => \inst_reg:1:R0|q\(4));

-- Location: LC_X2_Y6_N3
\inst_reg:0:R0|q[4]\ : maxv_lcell
-- Equation(s):
-- \temp2~22\ = (\rf_a2~combout\(0) & ((\rf_a2~combout\(1)) # ((\inst_reg:1:R0|q\(4))))) # (!\rf_a2~combout\(0) & (!\rf_a2~combout\(1) & (B1_q[4])))
-- \inst_reg:0:R0|q\(4) = DFFEAS(\temp2~22\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(4),
	datad => \inst_reg:1:R0|q\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~22\,
	regout => \inst_reg:0:R0|q\(4));

-- Location: LC_X3_Y6_N6
\inst_reg:2:R0|q[4]\ : maxv_lcell
-- Equation(s):
-- \temp1~23\ = (\temp1~22\ & ((\inst_reg:3:R0|q\(4)) # ((!\rf_a1~combout\(1))))) # (!\temp1~22\ & (((B3_q[4] & \rf_a1~combout\(1)))))
-- \inst_reg:2:R0|q\(4) = DFFEAS(\temp1~23\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp1~22\,
	datab => \inst_reg:3:R0|q\(4),
	datac => \rf_d3~combout\(4),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~23\,
	regout => \inst_reg:2:R0|q\(4));

-- Location: LC_X3_Y6_N0
\inst_reg:3:R0|q[4]\ : maxv_lcell
-- Equation(s):
-- \temp2~23\ = (\rf_a2~combout\(1) & ((\temp2~22\ & ((B4_q[4]))) # (!\temp2~22\ & (\inst_reg:2:R0|q\(4))))) # (!\rf_a2~combout\(1) & (((\temp2~22\))))
-- \inst_reg:3:R0|q\(4) = DFFEAS(\temp2~23\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:2:R0|q\(4),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(4),
	datad => \temp2~22\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~23\,
	regout => \inst_reg:3:R0|q\(4));

-- Location: LC_X8_Y5_N7
\temp1~24\ : maxv_lcell
-- Equation(s):
-- \temp1~24_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & (\temp1~21\)) # (!\rf_a1~combout\(2) & ((\temp1~23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~21\,
	datab => \wr~combout\,
	datac => \temp1~23\,
	datad => \rf_a1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~24_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(5),
	combout => \rf_d3~combout\(5));

-- Location: LC_X7_Y5_N8
\inst_reg:6:R0|q[5]\ : maxv_lcell
-- Equation(s):
-- \temp1~25\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[5])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(5))))))
-- \inst_reg:6:R0|q\(5) = DFFEAS(\temp1~25\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(5),
	datad => \inst_reg:4:R0|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~25\,
	regout => \inst_reg:6:R0|q\(5));

-- Location: LC_X7_Y5_N2
\inst_reg:4:R0|q[5]\ : maxv_lcell
-- Equation(s):
-- \temp2~25\ = (\rf_a2~combout\(0) & (((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & (\inst_reg:6:R0|q\(5))) # (!\rf_a2~combout\(1) & ((B5_q[5])))))
-- \inst_reg:4:R0|q\(5) = DFFEAS(\temp2~25\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:6:R0|q\(5),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(5),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~25\,
	regout => \inst_reg:4:R0|q\(5));

-- Location: LC_X9_Y5_N1
\inst_reg:5:R0|q[5]\ : maxv_lcell
-- Equation(s):
-- \temp1~26\ = (\rf_a1~combout\(0) & ((\temp1~25\ & ((\inst_reg:7:R0|q\(5)))) # (!\temp1~25\ & (B6_q[5])))) # (!\rf_a1~combout\(0) & (\temp1~25\))
-- \inst_reg:5:R0|q\(5) = DFFEAS(\temp1~26\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \temp1~25\,
	datac => \rf_d3~combout\(5),
	datad => \inst_reg:7:R0|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~26\,
	regout => \inst_reg:5:R0|q\(5));

-- Location: LC_X9_Y5_N2
\inst_reg:7:R0|q[5]\ : maxv_lcell
-- Equation(s):
-- \temp2~26\ = (\temp2~25\ & (((B8_q[5])) # (!\rf_a2~combout\(0)))) # (!\temp2~25\ & (\rf_a2~combout\(0) & ((\inst_reg:5:R0|q\(5)))))
-- \inst_reg:7:R0|q\(5) = DFFEAS(\temp2~26\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp2~25\,
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(5),
	datad => \inst_reg:5:R0|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~26\,
	regout => \inst_reg:7:R0|q\(5));

-- Location: LC_X8_Y4_N9
\inst_reg:1:R0|q[5]\ : maxv_lcell
-- Equation(s):
-- \temp1~27\ = (\rf_a1~combout\(0) & (((B2_q[5]) # (\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(5) & ((!\rf_a1~combout\(1)))))
-- \inst_reg:1:R0|q\(5) = DFFEAS(\temp1~27\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:0:R0|q\(5),
	datac => \rf_d3~combout\(5),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~27\,
	regout => \inst_reg:1:R0|q\(5));

-- Location: LC_X8_Y4_N7
\inst_reg:0:R0|q[5]\ : maxv_lcell
-- Equation(s):
-- \temp2~27\ = (\rf_a2~combout\(1) & (\rf_a2~combout\(0))) # (!\rf_a2~combout\(1) & ((\rf_a2~combout\(0) & ((\inst_reg:1:R0|q\(5)))) # (!\rf_a2~combout\(0) & (B1_q[5]))))
-- \inst_reg:0:R0|q\(5) = DFFEAS(\temp2~27\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(1),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(5),
	datad => \inst_reg:1:R0|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~27\,
	regout => \inst_reg:0:R0|q\(5));

-- Location: LC_X9_Y4_N6
\inst_reg:2:R0|q[5]\ : maxv_lcell
-- Equation(s):
-- \temp1~28\ = (\rf_a1~combout\(1) & ((\temp1~27\ & ((\inst_reg:3:R0|q\(5)))) # (!\temp1~27\ & (B3_q[5])))) # (!\rf_a1~combout\(1) & (\temp1~27\))
-- \inst_reg:2:R0|q\(5) = DFFEAS(\temp1~28\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \temp1~27\,
	datac => \rf_d3~combout\(5),
	datad => \inst_reg:3:R0|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~28\,
	regout => \inst_reg:2:R0|q\(5));

-- Location: LC_X9_Y4_N9
\inst_reg:3:R0|q[5]\ : maxv_lcell
-- Equation(s):
-- \temp2~28\ = (\rf_a2~combout\(1) & ((\temp2~27\ & ((B4_q[5]))) # (!\temp2~27\ & (\inst_reg:2:R0|q\(5))))) # (!\rf_a2~combout\(1) & (((\temp2~27\))))
-- \inst_reg:3:R0|q\(5) = DFFEAS(\temp2~28\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:2:R0|q\(5),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(5),
	datad => \temp2~27\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~28\,
	regout => \inst_reg:3:R0|q\(5));

-- Location: LC_X9_Y4_N7
\temp1~29\ : maxv_lcell
-- Equation(s):
-- \temp1~29_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & (\temp1~26\)) # (!\rf_a1~combout\(2) & ((\temp1~28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~26\,
	datab => \rf_a1~combout\(2),
	datac => \wr~combout\,
	datad => \temp1~28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~29_combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(6),
	combout => \rf_d3~combout\(6));

-- Location: LC_X7_Y5_N4
\inst_reg:6:R0|q[6]\ : maxv_lcell
-- Equation(s):
-- \temp1~30\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[6])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(6))))))
-- \inst_reg:6:R0|q\(6) = DFFEAS(\temp1~30\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(6),
	datad => \inst_reg:4:R0|q\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~30\,
	regout => \inst_reg:6:R0|q\(6));

-- Location: LC_X7_Y5_N3
\inst_reg:4:R0|q[6]\ : maxv_lcell
-- Equation(s):
-- \temp2~30\ = (\rf_a2~combout\(0) & (((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & (\inst_reg:6:R0|q\(6))) # (!\rf_a2~combout\(1) & ((B5_q[6])))))
-- \inst_reg:4:R0|q\(6) = DFFEAS(\temp2~30\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:6:R0|q\(6),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(6),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~30\,
	regout => \inst_reg:4:R0|q\(6));

-- Location: LC_X6_Y6_N6
\inst_reg:5:R0|q[6]\ : maxv_lcell
-- Equation(s):
-- \temp1~31\ = (\rf_a1~combout\(0) & ((\temp1~30\ & (\inst_reg:7:R0|q\(6))) # (!\temp1~30\ & ((B6_q[6]))))) # (!\rf_a1~combout\(0) & (((\temp1~30\))))
-- \inst_reg:5:R0|q\(6) = DFFEAS(\temp1~31\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(6),
	datac => \rf_d3~combout\(6),
	datad => \temp1~30\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~31\,
	regout => \inst_reg:5:R0|q\(6));

-- Location: LC_X6_Y6_N4
\inst_reg:7:R0|q[6]\ : maxv_lcell
-- Equation(s):
-- \temp2~31\ = (\rf_a2~combout\(0) & ((\temp2~30\ & ((B8_q[6]))) # (!\temp2~30\ & (\inst_reg:5:R0|q\(6))))) # (!\rf_a2~combout\(0) & (((\temp2~30\))))
-- \inst_reg:7:R0|q\(6) = DFFEAS(\temp2~31\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \inst_reg:5:R0|q\(6),
	datac => \rf_d3~combout\(6),
	datad => \temp2~30\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~31\,
	regout => \inst_reg:7:R0|q\(6));

-- Location: LC_X2_Y6_N6
\inst_reg:1:R0|q[6]\ : maxv_lcell
-- Equation(s):
-- \temp1~32\ = (\rf_a1~combout\(0) & ((\rf_a1~combout\(1)) # ((B2_q[6])))) # (!\rf_a1~combout\(0) & (!\rf_a1~combout\(1) & ((\inst_reg:0:R0|q\(6)))))
-- \inst_reg:1:R0|q\(6) = DFFEAS(\temp1~32\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(6),
	datad => \inst_reg:0:R0|q\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~32\,
	regout => \inst_reg:1:R0|q\(6));

-- Location: LC_X2_Y6_N4
\inst_reg:0:R0|q[6]\ : maxv_lcell
-- Equation(s):
-- \temp2~32\ = (\rf_a2~combout\(1) & (((\rf_a2~combout\(0))))) # (!\rf_a2~combout\(1) & ((\rf_a2~combout\(0) & (\inst_reg:1:R0|q\(6))) # (!\rf_a2~combout\(0) & ((B1_q[6])))))
-- \inst_reg:0:R0|q\(6) = DFFEAS(\temp2~32\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:1:R0|q\(6),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(6),
	datad => \rf_a2~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~32\,
	regout => \inst_reg:0:R0|q\(6));

-- Location: LC_X3_Y6_N8
\inst_reg:2:R0|q[6]\ : maxv_lcell
-- Equation(s):
-- \temp1~33\ = (\rf_a1~combout\(1) & ((\temp1~32\ & ((\inst_reg:3:R0|q\(6)))) # (!\temp1~32\ & (B3_q[6])))) # (!\rf_a1~combout\(1) & (\temp1~32\))
-- \inst_reg:2:R0|q\(6) = DFFEAS(\temp1~33\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \temp1~32\,
	datac => \rf_d3~combout\(6),
	datad => \inst_reg:3:R0|q\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~33\,
	regout => \inst_reg:2:R0|q\(6));

-- Location: LC_X3_Y6_N9
\inst_reg:3:R0|q[6]\ : maxv_lcell
-- Equation(s):
-- \temp2~33\ = (\rf_a2~combout\(1) & ((\temp2~32\ & ((B4_q[6]))) # (!\temp2~32\ & (\inst_reg:2:R0|q\(6))))) # (!\rf_a2~combout\(1) & (((\temp2~32\))))
-- \inst_reg:3:R0|q\(6) = DFFEAS(\temp2~33\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:2:R0|q\(6),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(6),
	datad => \temp2~32\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~33\,
	regout => \inst_reg:3:R0|q\(6));

-- Location: LC_X6_Y6_N7
\temp1~34\ : maxv_lcell
-- Equation(s):
-- \temp1~34_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & (\temp1~31\)) # (!\rf_a1~combout\(2) & ((\temp1~33\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr~combout\,
	datab => \rf_a1~combout\(2),
	datac => \temp1~31\,
	datad => \temp1~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~34_combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(7),
	combout => \rf_d3~combout\(7));

-- Location: LC_X2_Y6_N0
\inst_reg:0:R0|q[7]\ : maxv_lcell
-- Equation(s):
-- \temp2~37\ = (\rf_a2~combout\(0) & ((\rf_a2~combout\(1)) # ((\inst_reg:1:R0|q\(7))))) # (!\rf_a2~combout\(0) & (!\rf_a2~combout\(1) & (B1_q[7])))
-- \inst_reg:0:R0|q\(7) = DFFEAS(\temp2~37\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(7),
	datad => \inst_reg:1:R0|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~37\,
	regout => \inst_reg:0:R0|q\(7));

-- Location: LC_X2_Y6_N2
\inst_reg:1:R0|q[7]\ : maxv_lcell
-- Equation(s):
-- \temp1~37\ = (\rf_a1~combout\(0) & (((B2_q[7]) # (\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(7) & ((!\rf_a1~combout\(1)))))
-- \inst_reg:1:R0|q\(7) = DFFEAS(\temp1~37\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:0:R0|q\(7),
	datac => \rf_d3~combout\(7),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~37\,
	regout => \inst_reg:1:R0|q\(7));

-- Location: LC_X3_Y6_N2
\inst_reg:2:R0|q[7]\ : maxv_lcell
-- Equation(s):
-- \temp1~38\ = (\temp1~37\ & ((\inst_reg:3:R0|q\(7)) # ((!\rf_a1~combout\(1))))) # (!\temp1~37\ & (((B3_q[7] & \rf_a1~combout\(1)))))
-- \inst_reg:2:R0|q\(7) = DFFEAS(\temp1~38\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:3:R0|q\(7),
	datab => \temp1~37\,
	datac => \rf_d3~combout\(7),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~38\,
	regout => \inst_reg:2:R0|q\(7));

-- Location: LC_X3_Y6_N3
\inst_reg:3:R0|q[7]\ : maxv_lcell
-- Equation(s):
-- \temp2~38\ = (\temp2~37\ & (((B4_q[7])) # (!\rf_a2~combout\(1)))) # (!\temp2~37\ & (\rf_a2~combout\(1) & ((\inst_reg:2:R0|q\(7)))))
-- \inst_reg:3:R0|q\(7) = DFFEAS(\temp2~38\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp2~37\,
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(7),
	datad => \inst_reg:2:R0|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~38\,
	regout => \inst_reg:3:R0|q\(7));

-- Location: LC_X7_Y5_N9
\inst_reg:6:R0|q[7]\ : maxv_lcell
-- Equation(s):
-- \temp1~35\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[7])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(7))))))
-- \inst_reg:6:R0|q\(7) = DFFEAS(\temp1~35\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(7),
	datad => \inst_reg:4:R0|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~35\,
	regout => \inst_reg:6:R0|q\(7));

-- Location: LC_X7_Y5_N5
\inst_reg:4:R0|q[7]\ : maxv_lcell
-- Equation(s):
-- \temp2~35\ = (\rf_a2~combout\(0) & (\rf_a2~combout\(1))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & ((\inst_reg:6:R0|q\(7)))) # (!\rf_a2~combout\(1) & (B5_q[7]))))
-- \inst_reg:4:R0|q\(7) = DFFEAS(\temp2~35\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(7),
	datad => \inst_reg:6:R0|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~35\,
	regout => \inst_reg:4:R0|q\(7));

-- Location: LC_X6_Y5_N6
\inst_reg:5:R0|q[7]\ : maxv_lcell
-- Equation(s):
-- \temp1~36\ = (\rf_a1~combout\(0) & ((\temp1~35\ & (\inst_reg:7:R0|q\(7))) # (!\temp1~35\ & ((B6_q[7]))))) # (!\rf_a1~combout\(0) & (((\temp1~35\))))
-- \inst_reg:5:R0|q\(7) = DFFEAS(\temp1~36\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(7),
	datac => \rf_d3~combout\(7),
	datad => \temp1~35\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~36\,
	regout => \inst_reg:5:R0|q\(7));

-- Location: LC_X6_Y5_N1
\inst_reg:7:R0|q[7]\ : maxv_lcell
-- Equation(s):
-- \temp2~36\ = (\rf_a2~combout\(0) & ((\temp2~35\ & ((B8_q[7]))) # (!\temp2~35\ & (\inst_reg:5:R0|q\(7))))) # (!\rf_a2~combout\(0) & (((\temp2~35\))))
-- \inst_reg:7:R0|q\(7) = DFFEAS(\temp2~36\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:5:R0|q\(7),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(7),
	datad => \temp2~35\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~36\,
	regout => \inst_reg:7:R0|q\(7));

-- Location: LC_X6_Y5_N0
\temp1~39\ : maxv_lcell
-- Equation(s):
-- \temp1~39_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & ((\temp1~36\))) # (!\rf_a1~combout\(2) & (\temp1~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr~combout\,
	datab => \rf_a1~combout\(2),
	datac => \temp1~38\,
	datad => \temp1~36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~39_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(8),
	combout => \rf_d3~combout\(8));

-- Location: LC_X7_Y5_N6
\inst_reg:6:R0|q[8]\ : maxv_lcell
-- Equation(s):
-- \temp1~40\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[8])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(8))))))
-- \inst_reg:6:R0|q\(8) = DFFEAS(\temp1~40\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(8),
	datad => \inst_reg:4:R0|q\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~40\,
	regout => \inst_reg:6:R0|q\(8));

-- Location: LC_X7_Y5_N1
\inst_reg:4:R0|q[8]\ : maxv_lcell
-- Equation(s):
-- \temp2~40\ = (\rf_a2~combout\(0) & (((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & (\inst_reg:6:R0|q\(8))) # (!\rf_a2~combout\(1) & ((B5_q[8])))))
-- \inst_reg:4:R0|q\(8) = DFFEAS(\temp2~40\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:6:R0|q\(8),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(8),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~40\,
	regout => \inst_reg:4:R0|q\(8));

-- Location: LC_X7_Y4_N0
\inst_reg:5:R0|q[8]\ : maxv_lcell
-- Equation(s):
-- \temp1~41\ = (\rf_a1~combout\(0) & ((\temp1~40\ & (\inst_reg:7:R0|q\(8))) # (!\temp1~40\ & ((B6_q[8]))))) # (!\rf_a1~combout\(0) & (((\temp1~40\))))
-- \inst_reg:5:R0|q\(8) = DFFEAS(\temp1~41\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:7:R0|q\(8),
	datab => \rf_a1~combout\(0),
	datac => \rf_d3~combout\(8),
	datad => \temp1~40\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~41\,
	regout => \inst_reg:5:R0|q\(8));

-- Location: LC_X7_Y4_N5
\inst_reg:7:R0|q[8]\ : maxv_lcell
-- Equation(s):
-- \temp2~41\ = (\rf_a2~combout\(0) & ((\temp2~40\ & ((B8_q[8]))) # (!\temp2~40\ & (\inst_reg:5:R0|q\(8))))) # (!\rf_a2~combout\(0) & (((\temp2~40\))))
-- \inst_reg:7:R0|q\(8) = DFFEAS(\temp2~41\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \inst_reg:5:R0|q\(8),
	datac => \rf_d3~combout\(8),
	datad => \temp2~40\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~41\,
	regout => \inst_reg:7:R0|q\(8));

-- Location: LC_X2_Y6_N9
\inst_reg:1:R0|q[8]\ : maxv_lcell
-- Equation(s):
-- \temp1~42\ = (\rf_a1~combout\(0) & (((B2_q[8]) # (\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(8) & ((!\rf_a1~combout\(1)))))
-- \inst_reg:1:R0|q\(8) = DFFEAS(\temp1~42\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:0:R0|q\(8),
	datac => \rf_d3~combout\(8),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~42\,
	regout => \inst_reg:1:R0|q\(8));

-- Location: LC_X2_Y6_N7
\inst_reg:0:R0|q[8]\ : maxv_lcell
-- Equation(s):
-- \temp2~42\ = (\rf_a2~combout\(0) & ((\rf_a2~combout\(1)) # ((\inst_reg:1:R0|q\(8))))) # (!\rf_a2~combout\(0) & (!\rf_a2~combout\(1) & (B1_q[8])))
-- \inst_reg:0:R0|q\(8) = DFFEAS(\temp2~42\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(8),
	datad => \inst_reg:1:R0|q\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~42\,
	regout => \inst_reg:0:R0|q\(8));

-- Location: LC_X3_Y6_N5
\inst_reg:2:R0|q[8]\ : maxv_lcell
-- Equation(s):
-- \temp1~43\ = (\rf_a1~combout\(1) & ((\temp1~42\ & (\inst_reg:3:R0|q\(8))) # (!\temp1~42\ & ((B3_q[8]))))) # (!\rf_a1~combout\(1) & (((\temp1~42\))))
-- \inst_reg:2:R0|q\(8) = DFFEAS(\temp1~43\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:3:R0|q\(8),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(8),
	datad => \temp1~42\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~43\,
	regout => \inst_reg:2:R0|q\(8));

-- Location: LC_X3_Y6_N1
\inst_reg:3:R0|q[8]\ : maxv_lcell
-- Equation(s):
-- \temp2~43\ = (\rf_a2~combout\(1) & ((\temp2~42\ & ((B4_q[8]))) # (!\temp2~42\ & (\inst_reg:2:R0|q\(8))))) # (!\rf_a2~combout\(1) & (((\temp2~42\))))
-- \inst_reg:3:R0|q\(8) = DFFEAS(\temp2~43\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:2:R0|q\(8),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(8),
	datad => \temp2~42\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~43\,
	regout => \inst_reg:3:R0|q\(8));

-- Location: LC_X8_Y5_N3
\temp1~44\ : maxv_lcell
-- Equation(s):
-- \temp1~44_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & (\temp1~41\)) # (!\rf_a1~combout\(2) & ((\temp1~43\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~41\,
	datab => \wr~combout\,
	datac => \temp1~43\,
	datad => \rf_a1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~44_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(9),
	combout => \rf_d3~combout\(9));

-- Location: LC_X2_Y6_N5
\inst_reg:1:R0|q[9]\ : maxv_lcell
-- Equation(s):
-- \temp1~47\ = (\rf_a1~combout\(0) & ((\rf_a1~combout\(1)) # ((B2_q[9])))) # (!\rf_a1~combout\(0) & (!\rf_a1~combout\(1) & ((\inst_reg:0:R0|q\(9)))))
-- \inst_reg:1:R0|q\(9) = DFFEAS(\temp1~47\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(9),
	datad => \inst_reg:0:R0|q\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~47\,
	regout => \inst_reg:1:R0|q\(9));

-- Location: LC_X2_Y6_N1
\inst_reg:0:R0|q[9]\ : maxv_lcell
-- Equation(s):
-- \temp2~47\ = (\rf_a2~combout\(1) & (((\rf_a2~combout\(0))))) # (!\rf_a2~combout\(1) & ((\rf_a2~combout\(0) & (\inst_reg:1:R0|q\(9))) # (!\rf_a2~combout\(0) & ((B1_q[9])))))
-- \inst_reg:0:R0|q\(9) = DFFEAS(\temp2~47\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:1:R0|q\(9),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(9),
	datad => \rf_a2~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~47\,
	regout => \inst_reg:0:R0|q\(9));

-- Location: LC_X5_Y5_N9
\inst_reg:2:R0|q[9]\ : maxv_lcell
-- Equation(s):
-- \temp1~48\ = (\temp1~47\ & (((\inst_reg:3:R0|q\(9))) # (!\rf_a1~combout\(1)))) # (!\temp1~47\ & (\rf_a1~combout\(1) & (B3_q[9])))
-- \inst_reg:2:R0|q\(9) = DFFEAS(\temp1~48\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp1~47\,
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(9),
	datad => \inst_reg:3:R0|q\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~48\,
	regout => \inst_reg:2:R0|q\(9));

-- Location: LC_X5_Y5_N2
\inst_reg:3:R0|q[9]\ : maxv_lcell
-- Equation(s):
-- \temp2~48\ = (\rf_a2~combout\(1) & ((\temp2~47\ & ((B4_q[9]))) # (!\temp2~47\ & (\inst_reg:2:R0|q\(9))))) # (!\rf_a2~combout\(1) & (((\temp2~47\))))
-- \inst_reg:3:R0|q\(9) = DFFEAS(\temp2~48\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(1),
	datab => \inst_reg:2:R0|q\(9),
	datac => \rf_d3~combout\(9),
	datad => \temp2~47\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~48\,
	regout => \inst_reg:3:R0|q\(9));

-- Location: LC_X7_Y5_N7
\inst_reg:6:R0|q[9]\ : maxv_lcell
-- Equation(s):
-- \temp1~45\ = (\rf_a1~combout\(0) & (((\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & ((B7_q[9]))) # (!\rf_a1~combout\(1) & (\inst_reg:4:R0|q\(9)))))
-- \inst_reg:6:R0|q\(9) = DFFEAS(\temp1~45\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:4:R0|q\(9),
	datac => \rf_d3~combout\(9),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~45\,
	regout => \inst_reg:6:R0|q\(9));

-- Location: LC_X7_Y5_N0
\inst_reg:4:R0|q[9]\ : maxv_lcell
-- Equation(s):
-- \temp2~45\ = (\rf_a2~combout\(0) & (\rf_a2~combout\(1))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & ((\inst_reg:6:R0|q\(9)))) # (!\rf_a2~combout\(1) & (B5_q[9]))))
-- \inst_reg:4:R0|q\(9) = DFFEAS(\temp2~45\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(9),
	datad => \inst_reg:6:R0|q\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~45\,
	regout => \inst_reg:4:R0|q\(9));

-- Location: LC_X7_Y4_N9
\inst_reg:5:R0|q[9]\ : maxv_lcell
-- Equation(s):
-- \temp1~46\ = (\rf_a1~combout\(0) & ((\temp1~45\ & (\inst_reg:7:R0|q\(9))) # (!\temp1~45\ & ((B6_q[9]))))) # (!\rf_a1~combout\(0) & (((\temp1~45\))))
-- \inst_reg:5:R0|q\(9) = DFFEAS(\temp1~46\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(9),
	datac => \rf_d3~combout\(9),
	datad => \temp1~45\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~46\,
	regout => \inst_reg:5:R0|q\(9));

-- Location: LC_X7_Y4_N1
\inst_reg:7:R0|q[9]\ : maxv_lcell
-- Equation(s):
-- \temp2~46\ = (\rf_a2~combout\(0) & ((\temp2~45\ & ((B8_q[9]))) # (!\temp2~45\ & (\inst_reg:5:R0|q\(9))))) # (!\rf_a2~combout\(0) & (((\temp2~45\))))
-- \inst_reg:7:R0|q\(9) = DFFEAS(\temp2~46\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \inst_reg:5:R0|q\(9),
	datac => \rf_d3~combout\(9),
	datad => \temp2~45\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~46\,
	regout => \inst_reg:7:R0|q\(9));

-- Location: LC_X6_Y5_N4
\temp1~49\ : maxv_lcell
-- Equation(s):
-- \temp1~49_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & ((\temp1~46\))) # (!\rf_a1~combout\(2) & (\temp1~48\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr~combout\,
	datab => \rf_a1~combout\(2),
	datac => \temp1~48\,
	datad => \temp1~46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~49_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(10),
	combout => \rf_d3~combout\(10));

-- Location: LC_X7_Y6_N2
\inst_reg:6:R0|q[10]\ : maxv_lcell
-- Equation(s):
-- \temp1~50\ = (\rf_a1~combout\(0) & (((\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & ((B7_q[10]))) # (!\rf_a1~combout\(1) & (\inst_reg:4:R0|q\(10)))))
-- \inst_reg:6:R0|q\(10) = DFFEAS(\temp1~50\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:4:R0|q\(10),
	datab => \rf_a1~combout\(0),
	datac => \rf_d3~combout\(10),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~50\,
	regout => \inst_reg:6:R0|q\(10));

-- Location: LC_X7_Y6_N8
\inst_reg:4:R0|q[10]\ : maxv_lcell
-- Equation(s):
-- \temp2~50\ = (\rf_a2~combout\(0) & (\rf_a2~combout\(1))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & ((\inst_reg:6:R0|q\(10)))) # (!\rf_a2~combout\(1) & (B5_q[10]))))
-- \inst_reg:4:R0|q\(10) = DFFEAS(\temp2~50\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(10),
	datad => \inst_reg:6:R0|q\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~50\,
	regout => \inst_reg:4:R0|q\(10));

-- Location: LC_X7_Y4_N4
\inst_reg:5:R0|q[10]\ : maxv_lcell
-- Equation(s):
-- \temp1~51\ = (\temp1~50\ & (((\inst_reg:7:R0|q\(10))) # (!\rf_a1~combout\(0)))) # (!\temp1~50\ & (\rf_a1~combout\(0) & (B6_q[10])))
-- \inst_reg:5:R0|q\(10) = DFFEAS(\temp1~51\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp1~50\,
	datab => \rf_a1~combout\(0),
	datac => \rf_d3~combout\(10),
	datad => \inst_reg:7:R0|q\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~51\,
	regout => \inst_reg:5:R0|q\(10));

-- Location: LC_X7_Y4_N8
\inst_reg:7:R0|q[10]\ : maxv_lcell
-- Equation(s):
-- \temp2~51\ = (\rf_a2~combout\(0) & ((\temp2~50\ & ((B8_q[10]))) # (!\temp2~50\ & (\inst_reg:5:R0|q\(10))))) # (!\rf_a2~combout\(0) & (((\temp2~50\))))
-- \inst_reg:7:R0|q\(10) = DFFEAS(\temp2~51\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:5:R0|q\(10),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(10),
	datad => \temp2~50\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~51\,
	regout => \inst_reg:7:R0|q\(10));

-- Location: LC_X4_Y5_N3
\inst_reg:1:R0|q[10]\ : maxv_lcell
-- Equation(s):
-- \temp1~52\ = (\rf_a1~combout\(0) & (((B2_q[10]) # (\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(10) & ((!\rf_a1~combout\(1)))))
-- \inst_reg:1:R0|q\(10) = DFFEAS(\temp1~52\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:0:R0|q\(10),
	datab => \rf_a1~combout\(0),
	datac => \rf_d3~combout\(10),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~52\,
	regout => \inst_reg:1:R0|q\(10));

-- Location: LC_X4_Y5_N5
\inst_reg:0:R0|q[10]\ : maxv_lcell
-- Equation(s):
-- \temp2~52\ = (\rf_a2~combout\(0) & ((\inst_reg:1:R0|q\(10)) # ((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & (((B1_q[10] & !\rf_a2~combout\(1)))))
-- \inst_reg:0:R0|q\(10) = DFFEAS(\temp2~52\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:1:R0|q\(10),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(10),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~52\,
	regout => \inst_reg:0:R0|q\(10));

-- Location: LC_X5_Y5_N4
\inst_reg:2:R0|q[10]\ : maxv_lcell
-- Equation(s):
-- \temp1~53\ = (\rf_a1~combout\(1) & ((\temp1~52\ & (\inst_reg:3:R0|q\(10))) # (!\temp1~52\ & ((B3_q[10]))))) # (!\rf_a1~combout\(1) & (((\temp1~52\))))
-- \inst_reg:2:R0|q\(10) = DFFEAS(\temp1~53\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:3:R0|q\(10),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(10),
	datad => \temp1~52\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~53\,
	regout => \inst_reg:2:R0|q\(10));

-- Location: LC_X5_Y5_N6
\inst_reg:3:R0|q[10]\ : maxv_lcell
-- Equation(s):
-- \temp2~53\ = (\rf_a2~combout\(1) & ((\temp2~52\ & ((B4_q[10]))) # (!\temp2~52\ & (\inst_reg:2:R0|q\(10))))) # (!\rf_a2~combout\(1) & (((\temp2~52\))))
-- \inst_reg:3:R0|q\(10) = DFFEAS(\temp2~53\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(1),
	datab => \inst_reg:2:R0|q\(10),
	datac => \rf_d3~combout\(10),
	datad => \temp2~52\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~53\,
	regout => \inst_reg:3:R0|q\(10));

-- Location: LC_X8_Y5_N8
\temp1~54\ : maxv_lcell
-- Equation(s):
-- \temp1~54_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & (\temp1~51\)) # (!\rf_a1~combout\(2) & ((\temp1~53\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~51\,
	datab => \temp1~53\,
	datac => \wr~combout\,
	datad => \rf_a1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~54_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(11),
	combout => \rf_d3~combout\(11));

-- Location: LC_X4_Y5_N2
\inst_reg:1:R0|q[11]\ : maxv_lcell
-- Equation(s):
-- \temp1~57\ = (\rf_a1~combout\(1) & (((\rf_a1~combout\(0))))) # (!\rf_a1~combout\(1) & ((\rf_a1~combout\(0) & ((B2_q[11]))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(11)))))
-- \inst_reg:1:R0|q\(11) = DFFEAS(\temp1~57\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \inst_reg:0:R0|q\(11),
	datac => \rf_d3~combout\(11),
	datad => \rf_a1~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~57\,
	regout => \inst_reg:1:R0|q\(11));

-- Location: LC_X4_Y5_N7
\inst_reg:0:R0|q[11]\ : maxv_lcell
-- Equation(s):
-- \temp2~57\ = (\rf_a2~combout\(0) & ((\inst_reg:1:R0|q\(11)) # ((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & (((B1_q[11] & !\rf_a2~combout\(1)))))
-- \inst_reg:0:R0|q\(11) = DFFEAS(\temp2~57\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \inst_reg:1:R0|q\(11),
	datac => \rf_d3~combout\(11),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~57\,
	regout => \inst_reg:0:R0|q\(11));

-- Location: LC_X4_Y4_N0
\inst_reg:2:R0|q[11]\ : maxv_lcell
-- Equation(s):
-- \temp1~58\ = (\rf_a1~combout\(1) & ((\temp1~57\ & ((\inst_reg:3:R0|q\(11)))) # (!\temp1~57\ & (B3_q[11])))) # (!\rf_a1~combout\(1) & (\temp1~57\))
-- \inst_reg:2:R0|q\(11) = DFFEAS(\temp1~58\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \temp1~57\,
	datac => \rf_d3~combout\(11),
	datad => \inst_reg:3:R0|q\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~58\,
	regout => \inst_reg:2:R0|q\(11));

-- Location: LC_X4_Y4_N8
\inst_reg:3:R0|q[11]\ : maxv_lcell
-- Equation(s):
-- \temp2~58\ = (\temp2~57\ & (((B4_q[11]) # (!\rf_a2~combout\(1))))) # (!\temp2~57\ & (\inst_reg:2:R0|q\(11) & ((\rf_a2~combout\(1)))))
-- \inst_reg:3:R0|q\(11) = DFFEAS(\temp2~58\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp2~57\,
	datab => \inst_reg:2:R0|q\(11),
	datac => \rf_d3~combout\(11),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~58\,
	regout => \inst_reg:3:R0|q\(11));

-- Location: LC_X6_Y4_N9
\inst_reg:4:R0|q[11]\ : maxv_lcell
-- Equation(s):
-- \temp2~55\ = (\rf_a2~combout\(0) & (((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & (\inst_reg:6:R0|q\(11))) # (!\rf_a2~combout\(1) & ((B5_q[11])))))
-- \inst_reg:4:R0|q\(11) = DFFEAS(\temp2~55\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:6:R0|q\(11),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(11),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~55\,
	regout => \inst_reg:4:R0|q\(11));

-- Location: LC_X6_Y4_N6
\inst_reg:6:R0|q[11]\ : maxv_lcell
-- Equation(s):
-- \temp1~55\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[11])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(11))))))
-- \inst_reg:6:R0|q\(11) = DFFEAS(\temp1~55\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(11),
	datad => \inst_reg:4:R0|q\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~55\,
	regout => \inst_reg:6:R0|q\(11));

-- Location: LC_X6_Y5_N9
\inst_reg:5:R0|q[11]\ : maxv_lcell
-- Equation(s):
-- \temp1~56\ = (\rf_a1~combout\(0) & ((\temp1~55\ & (\inst_reg:7:R0|q\(11))) # (!\temp1~55\ & ((B6_q[11]))))) # (!\rf_a1~combout\(0) & (((\temp1~55\))))
-- \inst_reg:5:R0|q\(11) = DFFEAS(\temp1~56\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(11),
	datac => \rf_d3~combout\(11),
	datad => \temp1~55\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~56\,
	regout => \inst_reg:5:R0|q\(11));

-- Location: LC_X6_Y5_N7
\inst_reg:7:R0|q[11]\ : maxv_lcell
-- Equation(s):
-- \temp2~56\ = (\rf_a2~combout\(0) & ((\temp2~55\ & (B8_q[11])) # (!\temp2~55\ & ((\inst_reg:5:R0|q\(11)))))) # (!\rf_a2~combout\(0) & (\temp2~55\))
-- \inst_reg:7:R0|q\(11) = DFFEAS(\temp2~56\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \temp2~55\,
	datac => \rf_d3~combout\(11),
	datad => \inst_reg:5:R0|q\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~56\,
	regout => \inst_reg:7:R0|q\(11));

-- Location: LC_X6_Y5_N2
\temp1~59\ : maxv_lcell
-- Equation(s):
-- \temp1~59_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & ((\temp1~56\))) # (!\rf_a1~combout\(2) & (\temp1~58\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr~combout\,
	datab => \rf_a1~combout\(2),
	datac => \temp1~58\,
	datad => \temp1~56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~59_combout\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(12),
	combout => \rf_d3~combout\(12));

-- Location: LC_X4_Y5_N8
\inst_reg:1:R0|q[12]\ : maxv_lcell
-- Equation(s):
-- \temp1~62\ = (\rf_a1~combout\(1) & (((\rf_a1~combout\(0))))) # (!\rf_a1~combout\(1) & ((\rf_a1~combout\(0) & ((B2_q[12]))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(12)))))
-- \inst_reg:1:R0|q\(12) = DFFEAS(\temp1~62\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \inst_reg:0:R0|q\(12),
	datac => \rf_d3~combout\(12),
	datad => \rf_a1~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~62\,
	regout => \inst_reg:1:R0|q\(12));

-- Location: LC_X4_Y5_N0
\inst_reg:0:R0|q[12]\ : maxv_lcell
-- Equation(s):
-- \temp2~62\ = (\rf_a2~combout\(0) & ((\inst_reg:1:R0|q\(12)) # ((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & (((B1_q[12] & !\rf_a2~combout\(1)))))
-- \inst_reg:0:R0|q\(12) = DFFEAS(\temp2~62\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:1:R0|q\(12),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(12),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~62\,
	regout => \inst_reg:0:R0|q\(12));

-- Location: LC_X4_Y4_N4
\inst_reg:2:R0|q[12]\ : maxv_lcell
-- Equation(s):
-- \temp1~63\ = (\rf_a1~combout\(1) & ((\temp1~62\ & (\inst_reg:3:R0|q\(12))) # (!\temp1~62\ & ((B3_q[12]))))) # (!\rf_a1~combout\(1) & (((\temp1~62\))))
-- \inst_reg:2:R0|q\(12) = DFFEAS(\temp1~63\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \inst_reg:3:R0|q\(12),
	datac => \rf_d3~combout\(12),
	datad => \temp1~62\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~63\,
	regout => \inst_reg:2:R0|q\(12));

-- Location: LC_X4_Y4_N9
\inst_reg:3:R0|q[12]\ : maxv_lcell
-- Equation(s):
-- \temp2~63\ = (\temp2~62\ & (((B4_q[12]) # (!\rf_a2~combout\(1))))) # (!\temp2~62\ & (\inst_reg:2:R0|q\(12) & ((\rf_a2~combout\(1)))))
-- \inst_reg:3:R0|q\(12) = DFFEAS(\temp2~63\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:2:R0|q\(12),
	datab => \temp2~62\,
	datac => \rf_d3~combout\(12),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~63\,
	regout => \inst_reg:3:R0|q\(12));

-- Location: LC_X6_Y4_N4
\inst_reg:6:R0|q[12]\ : maxv_lcell
-- Equation(s):
-- \temp1~60\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[12])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(12))))))
-- \inst_reg:6:R0|q\(12) = DFFEAS(\temp1~60\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(12),
	datad => \inst_reg:4:R0|q\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~60\,
	regout => \inst_reg:6:R0|q\(12));

-- Location: LC_X6_Y4_N3
\inst_reg:4:R0|q[12]\ : maxv_lcell
-- Equation(s):
-- \temp2~60\ = (\rf_a2~combout\(0) & (((\rf_a2~combout\(1))))) # (!\rf_a2~combout\(0) & ((\rf_a2~combout\(1) & (\inst_reg:6:R0|q\(12))) # (!\rf_a2~combout\(1) & ((B5_q[12])))))
-- \inst_reg:4:R0|q\(12) = DFFEAS(\temp2~60\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:6:R0|q\(12),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(12),
	datad => \rf_a2~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~60\,
	regout => \inst_reg:4:R0|q\(12));

-- Location: LC_X6_Y6_N2
\inst_reg:5:R0|q[12]\ : maxv_lcell
-- Equation(s):
-- \temp1~61\ = (\rf_a1~combout\(0) & ((\temp1~60\ & ((\inst_reg:7:R0|q\(12)))) # (!\temp1~60\ & (B6_q[12])))) # (!\rf_a1~combout\(0) & (\temp1~60\))
-- \inst_reg:5:R0|q\(12) = DFFEAS(\temp1~61\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \temp1~60\,
	datac => \rf_d3~combout\(12),
	datad => \inst_reg:7:R0|q\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~61\,
	regout => \inst_reg:5:R0|q\(12));

-- Location: LC_X6_Y6_N9
\inst_reg:7:R0|q[12]\ : maxv_lcell
-- Equation(s):
-- \temp2~61\ = (\rf_a2~combout\(0) & ((\temp2~60\ & (B8_q[12])) # (!\temp2~60\ & ((\inst_reg:5:R0|q\(12)))))) # (!\rf_a2~combout\(0) & (\temp2~60\))
-- \inst_reg:7:R0|q\(12) = DFFEAS(\temp2~61\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \temp2~60\,
	datac => \rf_d3~combout\(12),
	datad => \inst_reg:5:R0|q\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~61\,
	regout => \inst_reg:7:R0|q\(12));

-- Location: LC_X6_Y6_N3
\temp1~64\ : maxv_lcell
-- Equation(s):
-- \temp1~64_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & ((\temp1~61\))) # (!\rf_a1~combout\(2) & (\temp1~63\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr~combout\,
	datab => \rf_a1~combout\(2),
	datac => \temp1~63\,
	datad => \temp1~61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~64_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(13),
	combout => \rf_d3~combout\(13));

-- Location: LC_X4_Y5_N9
\inst_reg:1:R0|q[13]\ : maxv_lcell
-- Equation(s):
-- \temp1~67\ = (\rf_a1~combout\(0) & (((B2_q[13]) # (\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(13) & ((!\rf_a1~combout\(1)))))
-- \inst_reg:1:R0|q\(13) = DFFEAS(\temp1~67\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:0:R0|q\(13),
	datab => \rf_a1~combout\(0),
	datac => \rf_d3~combout\(13),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~67\,
	regout => \inst_reg:1:R0|q\(13));

-- Location: LC_X4_Y5_N4
\inst_reg:0:R0|q[13]\ : maxv_lcell
-- Equation(s):
-- \temp2~67\ = (\rf_a2~combout\(0) & ((\rf_a2~combout\(1)) # ((\inst_reg:1:R0|q\(13))))) # (!\rf_a2~combout\(0) & (!\rf_a2~combout\(1) & (B1_q[13])))
-- \inst_reg:0:R0|q\(13) = DFFEAS(\temp2~67\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(13),
	datad => \inst_reg:1:R0|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~67\,
	regout => \inst_reg:0:R0|q\(13));

-- Location: LC_X5_Y5_N5
\inst_reg:2:R0|q[13]\ : maxv_lcell
-- Equation(s):
-- \temp1~68\ = (\rf_a1~combout\(1) & ((\temp1~67\ & (\inst_reg:3:R0|q\(13))) # (!\temp1~67\ & ((B3_q[13]))))) # (!\rf_a1~combout\(1) & (((\temp1~67\))))
-- \inst_reg:2:R0|q\(13) = DFFEAS(\temp1~68\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \inst_reg:3:R0|q\(13),
	datac => \rf_d3~combout\(13),
	datad => \temp1~67\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~68\,
	regout => \inst_reg:2:R0|q\(13));

-- Location: LC_X5_Y5_N7
\inst_reg:3:R0|q[13]\ : maxv_lcell
-- Equation(s):
-- \temp2~68\ = (\rf_a2~combout\(1) & ((\temp2~67\ & ((B4_q[13]))) # (!\temp2~67\ & (\inst_reg:2:R0|q\(13))))) # (!\rf_a2~combout\(1) & (((\temp2~67\))))
-- \inst_reg:3:R0|q\(13) = DFFEAS(\temp2~68\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:2:R0|q\(13),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(13),
	datad => \temp2~67\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~68\,
	regout => \inst_reg:3:R0|q\(13));

-- Location: LC_X6_Y4_N8
\inst_reg:4:R0|q[13]\ : maxv_lcell
-- Equation(s):
-- \temp2~65\ = (\rf_a2~combout\(1) & ((\rf_a2~combout\(0)) # ((\inst_reg:6:R0|q\(13))))) # (!\rf_a2~combout\(1) & (!\rf_a2~combout\(0) & (B5_q[13])))
-- \inst_reg:4:R0|q\(13) = DFFEAS(\temp2~65\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(1),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(13),
	datad => \inst_reg:6:R0|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~65\,
	regout => \inst_reg:4:R0|q\(13));

-- Location: LC_X6_Y4_N1
\inst_reg:6:R0|q[13]\ : maxv_lcell
-- Equation(s):
-- \temp1~65\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[13])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(13))))))
-- \inst_reg:6:R0|q\(13) = DFFEAS(\temp1~65\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(13),
	datad => \inst_reg:4:R0|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~65\,
	regout => \inst_reg:6:R0|q\(13));

-- Location: LC_X6_Y5_N8
\inst_reg:5:R0|q[13]\ : maxv_lcell
-- Equation(s):
-- \temp1~66\ = (\temp1~65\ & ((\inst_reg:7:R0|q\(13)) # ((!\rf_a1~combout\(0))))) # (!\temp1~65\ & (((B6_q[13] & \rf_a1~combout\(0)))))
-- \inst_reg:5:R0|q\(13) = DFFEAS(\temp1~66\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:7:R0|q\(13),
	datab => \temp1~65\,
	datac => \rf_d3~combout\(13),
	datad => \rf_a1~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~66\,
	regout => \inst_reg:5:R0|q\(13));

-- Location: LC_X6_Y5_N5
\inst_reg:7:R0|q[13]\ : maxv_lcell
-- Equation(s):
-- \temp2~66\ = (\rf_a2~combout\(0) & ((\temp2~65\ & (B8_q[13])) # (!\temp2~65\ & ((\inst_reg:5:R0|q\(13)))))) # (!\rf_a2~combout\(0) & (\temp2~65\))
-- \inst_reg:7:R0|q\(13) = DFFEAS(\temp2~66\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \temp2~65\,
	datac => \rf_d3~combout\(13),
	datad => \inst_reg:5:R0|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~66\,
	regout => \inst_reg:7:R0|q\(13));

-- Location: LC_X6_Y5_N3
\temp1~69\ : maxv_lcell
-- Equation(s):
-- \temp1~69_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & ((\temp1~66\))) # (!\rf_a1~combout\(2) & (\temp1~68\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~68\,
	datab => \rf_a1~combout\(2),
	datac => \wr~combout\,
	datad => \temp1~66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~69_combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(14),
	combout => \rf_d3~combout\(14));

-- Location: LC_X6_Y4_N7
\inst_reg:4:R0|q[14]\ : maxv_lcell
-- Equation(s):
-- \temp2~70\ = (\rf_a2~combout\(1) & ((\inst_reg:6:R0|q\(14)) # ((\rf_a2~combout\(0))))) # (!\rf_a2~combout\(1) & (((B5_q[14] & !\rf_a2~combout\(0)))))
-- \inst_reg:4:R0|q\(14) = DFFEAS(\temp2~70\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:6:R0|q\(14),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(14),
	datad => \rf_a2~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~70\,
	regout => \inst_reg:4:R0|q\(14));

-- Location: LC_X6_Y4_N0
\inst_reg:6:R0|q[14]\ : maxv_lcell
-- Equation(s):
-- \temp1~70\ = (\rf_a1~combout\(0) & (((\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & ((B7_q[14]))) # (!\rf_a1~combout\(1) & (\inst_reg:4:R0|q\(14)))))
-- \inst_reg:6:R0|q\(14) = DFFEAS(\temp1~70\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:4:R0|q\(14),
	datac => \rf_d3~combout\(14),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~70\,
	regout => \inst_reg:6:R0|q\(14));

-- Location: LC_X7_Y4_N3
\inst_reg:5:R0|q[14]\ : maxv_lcell
-- Equation(s):
-- \temp1~71\ = (\rf_a1~combout\(0) & ((\temp1~70\ & (\inst_reg:7:R0|q\(14))) # (!\temp1~70\ & ((B6_q[14]))))) # (!\rf_a1~combout\(0) & (((\temp1~70\))))
-- \inst_reg:5:R0|q\(14) = DFFEAS(\temp1~71\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(14),
	datac => \rf_d3~combout\(14),
	datad => \temp1~70\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~71\,
	regout => \inst_reg:5:R0|q\(14));

-- Location: LC_X7_Y4_N2
\inst_reg:7:R0|q[14]\ : maxv_lcell
-- Equation(s):
-- \temp2~71\ = (\rf_a2~combout\(0) & ((\temp2~70\ & (B8_q[14])) # (!\temp2~70\ & ((\inst_reg:5:R0|q\(14)))))) # (!\rf_a2~combout\(0) & (\temp2~70\))
-- \inst_reg:7:R0|q\(14) = DFFEAS(\temp2~71\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \temp2~70\,
	datac => \rf_d3~combout\(14),
	datad => \inst_reg:5:R0|q\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~71\,
	regout => \inst_reg:7:R0|q\(14));

-- Location: LC_X5_Y4_N8
\inst_reg:1:R0|q[14]\ : maxv_lcell
-- Equation(s):
-- \temp1~72\ = (\rf_a1~combout\(1) & (((\rf_a1~combout\(0))))) # (!\rf_a1~combout\(1) & ((\rf_a1~combout\(0) & ((B2_q[14]))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(14)))))
-- \inst_reg:1:R0|q\(14) = DFFEAS(\temp1~72\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(1),
	datab => \inst_reg:0:R0|q\(14),
	datac => \rf_d3~combout\(14),
	datad => \rf_a1~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~72\,
	regout => \inst_reg:1:R0|q\(14));

-- Location: LC_X5_Y4_N9
\inst_reg:0:R0|q[14]\ : maxv_lcell
-- Equation(s):
-- \temp2~72\ = (\rf_a2~combout\(1) & (\rf_a2~combout\(0))) # (!\rf_a2~combout\(1) & ((\rf_a2~combout\(0) & ((\inst_reg:1:R0|q\(14)))) # (!\rf_a2~combout\(0) & (B1_q[14]))))
-- \inst_reg:0:R0|q\(14) = DFFEAS(\temp2~72\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(1),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(14),
	datad => \inst_reg:1:R0|q\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~72\,
	regout => \inst_reg:0:R0|q\(14));

-- Location: LC_X4_Y4_N5
\inst_reg:2:R0|q[14]\ : maxv_lcell
-- Equation(s):
-- \temp1~73\ = (\temp1~72\ & ((\inst_reg:3:R0|q\(14)) # ((!\rf_a1~combout\(1))))) # (!\temp1~72\ & (((B3_q[14] & \rf_a1~combout\(1)))))
-- \inst_reg:2:R0|q\(14) = DFFEAS(\temp1~73\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp1~72\,
	datab => \inst_reg:3:R0|q\(14),
	datac => \rf_d3~combout\(14),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~73\,
	regout => \inst_reg:2:R0|q\(14));

-- Location: LC_X4_Y4_N1
\inst_reg:3:R0|q[14]\ : maxv_lcell
-- Equation(s):
-- \temp2~73\ = (\temp2~72\ & (((B4_q[14])) # (!\rf_a2~combout\(1)))) # (!\temp2~72\ & (\rf_a2~combout\(1) & ((\inst_reg:2:R0|q\(14)))))
-- \inst_reg:3:R0|q\(14) = DFFEAS(\temp2~73\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp2~72\,
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(14),
	datad => \inst_reg:2:R0|q\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~73\,
	regout => \inst_reg:3:R0|q\(14));

-- Location: LC_X4_Y4_N6
\temp1~74\ : maxv_lcell
-- Equation(s):
-- \temp1~74_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & (\temp1~71\)) # (!\rf_a1~combout\(2) & ((\temp1~73\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a1~combout\(2),
	datab => \temp1~71\,
	datac => \wr~combout\,
	datad => \temp1~73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~74_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_d3[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_d3(15),
	combout => \rf_d3~combout\(15));

-- Location: LC_X6_Y4_N2
\inst_reg:6:R0|q[15]\ : maxv_lcell
-- Equation(s):
-- \temp1~75\ = (\rf_a1~combout\(0) & (\rf_a1~combout\(1))) # (!\rf_a1~combout\(0) & ((\rf_a1~combout\(1) & (B7_q[15])) # (!\rf_a1~combout\(1) & ((\inst_reg:4:R0|q\(15))))))
-- \inst_reg:6:R0|q\(15) = DFFEAS(\temp1~75\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[6]~1_combout\, \rf_d3~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(15),
	datad => \inst_reg:4:R0|q\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~75\,
	regout => \inst_reg:6:R0|q\(15));

-- Location: LC_X6_Y4_N5
\inst_reg:4:R0|q[15]\ : maxv_lcell
-- Equation(s):
-- \temp2~75\ = (\rf_a2~combout\(1) & ((\rf_a2~combout\(0)) # ((\inst_reg:6:R0|q\(15))))) # (!\rf_a2~combout\(1) & (!\rf_a2~combout\(0) & (B5_q[15])))
-- \inst_reg:4:R0|q\(15) = DFFEAS(\temp2~75\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[4]~2_combout\, \rf_d3~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(1),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(15),
	datad => \inst_reg:6:R0|q\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~75\,
	regout => \inst_reg:4:R0|q\(15));

-- Location: LC_X7_Y4_N6
\inst_reg:5:R0|q[15]\ : maxv_lcell
-- Equation(s):
-- \temp1~76\ = (\rf_a1~combout\(0) & ((\temp1~75\ & (\inst_reg:7:R0|q\(15))) # (!\temp1~75\ & ((B6_q[15]))))) # (!\rf_a1~combout\(0) & (((\temp1~75\))))
-- \inst_reg:5:R0|q\(15) = DFFEAS(\temp1~76\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[5]~0_combout\, \rf_d3~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a1~combout\(0),
	datab => \inst_reg:7:R0|q\(15),
	datac => \rf_d3~combout\(15),
	datad => \temp1~75\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~76\,
	regout => \inst_reg:5:R0|q\(15));

-- Location: LC_X7_Y4_N7
\inst_reg:7:R0|q[15]\ : maxv_lcell
-- Equation(s):
-- \temp2~76\ = (\rf_a2~combout\(0) & ((\temp2~75\ & ((B8_q[15]))) # (!\temp2~75\ & (\inst_reg:5:R0|q\(15))))) # (!\rf_a2~combout\(0) & (((\temp2~75\))))
-- \inst_reg:7:R0|q\(15) = DFFEAS(\temp2~76\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[7]~3_combout\, \rf_d3~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:5:R0|q\(15),
	datab => \rf_a2~combout\(0),
	datac => \rf_d3~combout\(15),
	datad => \temp2~75\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~76\,
	regout => \inst_reg:7:R0|q\(15));

-- Location: LC_X4_Y5_N1
\inst_reg:1:R0|q[15]\ : maxv_lcell
-- Equation(s):
-- \temp1~77\ = (\rf_a1~combout\(0) & (((B2_q[15]) # (\rf_a1~combout\(1))))) # (!\rf_a1~combout\(0) & (\inst_reg:0:R0|q\(15) & ((!\rf_a1~combout\(1)))))
-- \inst_reg:1:R0|q\(15) = DFFEAS(\temp1~77\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[1]~5_combout\, \rf_d3~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_reg:0:R0|q\(15),
	datab => \rf_a1~combout\(0),
	datac => \rf_d3~combout\(15),
	datad => \rf_a1~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~77\,
	regout => \inst_reg:1:R0|q\(15));

-- Location: LC_X4_Y5_N6
\inst_reg:0:R0|q[15]\ : maxv_lcell
-- Equation(s):
-- \temp2~77\ = (\rf_a2~combout\(0) & ((\rf_a2~combout\(1)) # ((\inst_reg:1:R0|q\(15))))) # (!\rf_a2~combout\(0) & (!\rf_a2~combout\(1) & (B1_q[15])))
-- \inst_reg:0:R0|q\(15) = DFFEAS(\temp2~77\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[0]~6_combout\, \rf_d3~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(0),
	datab => \rf_a2~combout\(1),
	datac => \rf_d3~combout\(15),
	datad => \inst_reg:1:R0|q\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~77\,
	regout => \inst_reg:0:R0|q\(15));

-- Location: LC_X5_Y5_N1
\inst_reg:2:R0|q[15]\ : maxv_lcell
-- Equation(s):
-- \temp1~78\ = (\temp1~77\ & (((\inst_reg:3:R0|q\(15))) # (!\rf_a1~combout\(1)))) # (!\temp1~77\ & (\rf_a1~combout\(1) & (B3_q[15])))
-- \inst_reg:2:R0|q\(15) = DFFEAS(\temp1~78\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[2]~4_combout\, \rf_d3~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \temp1~77\,
	datab => \rf_a1~combout\(1),
	datac => \rf_d3~combout\(15),
	datad => \inst_reg:3:R0|q\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~78\,
	regout => \inst_reg:2:R0|q\(15));

-- Location: LC_X5_Y5_N8
\inst_reg:3:R0|q[15]\ : maxv_lcell
-- Equation(s):
-- \temp2~78\ = (\rf_a2~combout\(1) & ((\temp2~77\ & (B4_q[15])) # (!\temp2~77\ & ((\inst_reg:2:R0|q\(15)))))) # (!\rf_a2~combout\(1) & (\temp2~77\))
-- \inst_reg:3:R0|q\(15) = DFFEAS(\temp2~78\, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr1[3]~7_combout\, \rf_d3~combout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rf_a2~combout\(1),
	datab => \temp2~77\,
	datac => \rf_d3~combout\(15),
	datad => \inst_reg:2:R0|q\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr1[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~78\,
	regout => \inst_reg:3:R0|q\(15));

-- Location: LC_X8_Y5_N6
\temp1~79\ : maxv_lcell
-- Equation(s):
-- \temp1~79_combout\ = (!\wr~combout\ & ((\rf_a1~combout\(2) & (\temp1~76\)) # (!\rf_a1~combout\(2) & ((\temp1~78\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp1~76\,
	datab => \wr~combout\,
	datac => \temp1~78\,
	datad => \rf_a1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp1~79_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rf_a2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rf_a2(2),
	combout => \rf_a2~combout\(2));

-- Location: LC_X8_Y6_N1
\temp2~4\ : maxv_lcell
-- Equation(s):
-- \temp2~4_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~1\)) # (!\rf_a2~combout\(2) & ((\temp2~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2~combout\(2),
	datab => \temp2~1\,
	datac => \wr~combout\,
	datad => \temp2~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~4_combout\);

-- Location: LC_X8_Y6_N5
\temp2~9\ : maxv_lcell
-- Equation(s):
-- \temp2~9_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~6\)) # (!\rf_a2~combout\(2) & ((\temp2~8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2~combout\(2),
	datab => \temp2~6\,
	datac => \wr~combout\,
	datad => \temp2~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~9_combout\);

-- Location: LC_X8_Y6_N2
\temp2~14\ : maxv_lcell
-- Equation(s):
-- \temp2~14_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~11\)) # (!\rf_a2~combout\(2) & ((\temp2~13\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2~combout\(2),
	datab => \temp2~11\,
	datac => \wr~combout\,
	datad => \temp2~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~14_combout\);

-- Location: LC_X9_Y4_N4
\temp2~19\ : maxv_lcell
-- Equation(s):
-- \temp2~19_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~16\)) # (!\rf_a2~combout\(2) & ((\temp2~18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2~combout\(2),
	datab => \temp2~16\,
	datac => \wr~combout\,
	datad => \temp2~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~19_combout\);

-- Location: LC_X6_Y6_N8
\temp2~24\ : maxv_lcell
-- Equation(s):
-- \temp2~24_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~21\)) # (!\rf_a2~combout\(2) & ((\temp2~23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr~combout\,
	datab => \temp2~21\,
	datac => \rf_a2~combout\(2),
	datad => \temp2~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~24_combout\);

-- Location: LC_X9_Y4_N2
\temp2~29\ : maxv_lcell
-- Equation(s):
-- \temp2~29_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~26\)) # (!\rf_a2~combout\(2) & ((\temp2~28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2~combout\(2),
	datab => \temp2~26\,
	datac => \wr~combout\,
	datad => \temp2~28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~29_combout\);

-- Location: LC_X6_Y6_N5
\temp2~34\ : maxv_lcell
-- Equation(s):
-- \temp2~34_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & ((\temp2~31\))) # (!\rf_a2~combout\(2) & (\temp2~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2~combout\(2),
	datab => \temp2~33\,
	datac => \wr~combout\,
	datad => \temp2~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~34_combout\);

-- Location: LC_X3_Y6_N4
\temp2~39\ : maxv_lcell
-- Equation(s):
-- \temp2~39_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~36\)) # (!\rf_a2~combout\(2) & ((\temp2~38\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp2~36\,
	datab => \wr~combout\,
	datac => \rf_a2~combout\(2),
	datad => \temp2~38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~39_combout\);

-- Location: LC_X3_Y6_N7
\temp2~44\ : maxv_lcell
-- Equation(s):
-- \temp2~44_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~41\)) # (!\rf_a2~combout\(2) & ((\temp2~43\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rf_a2~combout\(2),
	datab => \wr~combout\,
	datac => \temp2~41\,
	datad => \temp2~43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~44_combout\);

-- Location: LC_X5_Y4_N5
\temp2~49\ : maxv_lcell
-- Equation(s):
-- \temp2~49_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~46\)) # (!\rf_a2~combout\(2) & ((\temp2~48\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp2~46\,
	datab => \wr~combout\,
	datac => \temp2~48\,
	datad => \rf_a2~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~49_combout\);

-- Location: LC_X5_Y4_N6
\temp2~54\ : maxv_lcell
-- Equation(s):
-- \temp2~54_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~51\)) # (!\rf_a2~combout\(2) & ((\temp2~53\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp2~51\,
	datab => \wr~combout\,
	datac => \rf_a2~combout\(2),
	datad => \temp2~53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~54_combout\);

-- Location: LC_X4_Y4_N7
\temp2~59\ : maxv_lcell
-- Equation(s):
-- \temp2~59_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~56\)) # (!\rf_a2~combout\(2) & ((\temp2~58\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr~combout\,
	datab => \rf_a2~combout\(2),
	datac => \temp2~56\,
	datad => \temp2~58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~59_combout\);

-- Location: LC_X4_Y4_N3
\temp2~64\ : maxv_lcell
-- Equation(s):
-- \temp2~64_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~61\)) # (!\rf_a2~combout\(2) & ((\temp2~63\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5140",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr~combout\,
	datab => \rf_a2~combout\(2),
	datac => \temp2~61\,
	datad => \temp2~63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~64_combout\);

-- Location: LC_X5_Y4_N4
\temp2~69\ : maxv_lcell
-- Equation(s):
-- \temp2~69_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & ((\temp2~66\))) # (!\rf_a2~combout\(2) & (\temp2~68\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp2~68\,
	datab => \wr~combout\,
	datac => \temp2~66\,
	datad => \rf_a2~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~69_combout\);

-- Location: LC_X4_Y4_N2
\temp2~74\ : maxv_lcell
-- Equation(s):
-- \temp2~74_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~71\)) # (!\rf_a2~combout\(2) & ((\temp2~73\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp2~71\,
	datab => \rf_a2~combout\(2),
	datac => \wr~combout\,
	datad => \temp2~73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~74_combout\);

-- Location: LC_X5_Y4_N7
\temp2~79\ : maxv_lcell
-- Equation(s):
-- \temp2~79_combout\ = (!\wr~combout\ & ((\rf_a2~combout\(2) & (\temp2~76\)) # (!\rf_a2~combout\(2) & ((\temp2~78\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2230",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temp2~76\,
	datab => \wr~combout\,
	datac => \temp2~78\,
	datad => \rf_a2~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp2~79_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~4_combout\,
	oe => VCC,
	padio => ww_rf_d1(0));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~9_combout\,
	oe => VCC,
	padio => ww_rf_d1(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~14_combout\,
	oe => VCC,
	padio => ww_rf_d1(2));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~19_combout\,
	oe => VCC,
	padio => ww_rf_d1(3));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~24_combout\,
	oe => VCC,
	padio => ww_rf_d1(4));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~29_combout\,
	oe => VCC,
	padio => ww_rf_d1(5));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~34_combout\,
	oe => VCC,
	padio => ww_rf_d1(6));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~39_combout\,
	oe => VCC,
	padio => ww_rf_d1(7));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~44_combout\,
	oe => VCC,
	padio => ww_rf_d1(8));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~49_combout\,
	oe => VCC,
	padio => ww_rf_d1(9));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~54_combout\,
	oe => VCC,
	padio => ww_rf_d1(10));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~59_combout\,
	oe => VCC,
	padio => ww_rf_d1(11));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~64_combout\,
	oe => VCC,
	padio => ww_rf_d1(12));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~69_combout\,
	oe => VCC,
	padio => ww_rf_d1(13));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~74_combout\,
	oe => VCC,
	padio => ww_rf_d1(14));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d1[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp1~79_combout\,
	oe => VCC,
	padio => ww_rf_d1(15));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~4_combout\,
	oe => VCC,
	padio => ww_rf_d2(0));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~9_combout\,
	oe => VCC,
	padio => ww_rf_d2(1));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~14_combout\,
	oe => VCC,
	padio => ww_rf_d2(2));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~19_combout\,
	oe => VCC,
	padio => ww_rf_d2(3));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~24_combout\,
	oe => VCC,
	padio => ww_rf_d2(4));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~29_combout\,
	oe => VCC,
	padio => ww_rf_d2(5));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~34_combout\,
	oe => VCC,
	padio => ww_rf_d2(6));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~39_combout\,
	oe => VCC,
	padio => ww_rf_d2(7));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~44_combout\,
	oe => VCC,
	padio => ww_rf_d2(8));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~49_combout\,
	oe => VCC,
	padio => ww_rf_d2(9));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~54_combout\,
	oe => VCC,
	padio => ww_rf_d2(10));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~59_combout\,
	oe => VCC,
	padio => ww_rf_d2(11));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~64_combout\,
	oe => VCC,
	padio => ww_rf_d2(12));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~69_combout\,
	oe => VCC,
	padio => ww_rf_d2(13));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~74_combout\,
	oe => VCC,
	padio => ww_rf_d2(14));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rf_d2[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \temp2~79_combout\,
	oe => VCC,
	padio => ww_rf_d2(15));
END structure;


