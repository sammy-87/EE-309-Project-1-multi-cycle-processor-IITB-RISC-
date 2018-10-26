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

-- DATE "10/26/2018 12:25:42"

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

ENTITY 	memory IS
    PORT (
	mem_d : IN std_logic_vector(15 DOWNTO 0);
	mem_a : IN std_logic_vector(15 DOWNTO 0);
	rd_bar : IN std_logic;
	wr_bar : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	mem_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END memory;

-- Design Ports Information


ARCHITECTURE structure OF memory IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mem_d : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mem_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rd_bar : std_logic;
SIGNAL ww_wr_bar : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mem_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAM[26][0]~regout\ : std_logic;
SIGNAL \RAM[28][0]~regout\ : std_logic;
SIGNAL \RAM[19][0]~regout\ : std_logic;
SIGNAL \RAM[21][0]~regout\ : std_logic;
SIGNAL \RAM[18][0]~regout\ : std_logic;
SIGNAL \RAM[20][0]~regout\ : std_logic;
SIGNAL \RAM[27][0]~regout\ : std_logic;
SIGNAL \RAM[29][0]~regout\ : std_logic;
SIGNAL \RAM[9][0]~regout\ : std_logic;
SIGNAL \RAM[10][0]~regout\ : std_logic;
SIGNAL \RAM[6][0]~regout\ : std_logic;
SIGNAL \RAM[5][0]~regout\ : std_logic;
SIGNAL \RAM[1][0]~regout\ : std_logic;
SIGNAL \RAM[2][0]~regout\ : std_logic;
SIGNAL \RAM[14][0]~regout\ : std_logic;
SIGNAL \RAM[13][0]~regout\ : std_logic;
SIGNAL \RAM[25][1]~regout\ : std_logic;
SIGNAL \RAM[26][1]~regout\ : std_logic;
SIGNAL \RAM[21][1]~regout\ : std_logic;
SIGNAL \RAM[22][1]~regout\ : std_logic;
SIGNAL \RAM[17][1]~regout\ : std_logic;
SIGNAL \RAM[18][1]~regout\ : std_logic;
SIGNAL \RAM[29][1]~regout\ : std_logic;
SIGNAL \RAM[30][1]~regout\ : std_logic;
SIGNAL \RAM[9][1]~regout\ : std_logic;
SIGNAL \RAM[12][1]~regout\ : std_logic;
SIGNAL \RAM[6][1]~regout\ : std_logic;
SIGNAL \RAM[3][1]~regout\ : std_logic;
SIGNAL \RAM[4][1]~regout\ : std_logic;
SIGNAL \RAM[1][1]~regout\ : std_logic;
SIGNAL \RAM[14][1]~regout\ : std_logic;
SIGNAL \RAM[11][1]~regout\ : std_logic;
SIGNAL \RAM[28][2]~regout\ : std_logic;
SIGNAL \RAM[25][2]~regout\ : std_logic;
SIGNAL \RAM[22][2]~regout\ : std_logic;
SIGNAL \RAM[19][2]~regout\ : std_logic;
SIGNAL \RAM[20][2]~regout\ : std_logic;
SIGNAL \RAM[17][2]~regout\ : std_logic;
SIGNAL \RAM[30][2]~regout\ : std_logic;
SIGNAL \RAM[27][2]~regout\ : std_logic;
SIGNAL \RAM[10][2]~regout\ : std_logic;
SIGNAL \RAM[12][2]~regout\ : std_logic;
SIGNAL \RAM[3][2]~regout\ : std_logic;
SIGNAL \RAM[5][2]~regout\ : std_logic;
SIGNAL \RAM[2][2]~regout\ : std_logic;
SIGNAL \RAM[4][2]~regout\ : std_logic;
SIGNAL \RAM[11][2]~regout\ : std_logic;
SIGNAL \RAM[13][2]~regout\ : std_logic;
SIGNAL \RAM[26][3]~regout\ : std_logic;
SIGNAL \RAM[28][3]~regout\ : std_logic;
SIGNAL \RAM[19][3]~regout\ : std_logic;
SIGNAL \RAM[21][3]~regout\ : std_logic;
SIGNAL \RAM[18][3]~regout\ : std_logic;
SIGNAL \RAM[20][3]~regout\ : std_logic;
SIGNAL \RAM[27][3]~regout\ : std_logic;
SIGNAL \RAM[29][3]~regout\ : std_logic;
SIGNAL \RAM[9][3]~regout\ : std_logic;
SIGNAL \RAM[10][3]~regout\ : std_logic;
SIGNAL \RAM[5][3]~regout\ : std_logic;
SIGNAL \RAM[6][3]~regout\ : std_logic;
SIGNAL \RAM[1][3]~regout\ : std_logic;
SIGNAL \RAM[2][3]~regout\ : std_logic;
SIGNAL \RAM[13][3]~regout\ : std_logic;
SIGNAL \RAM[14][3]~regout\ : std_logic;
SIGNAL \RAM[25][4]~regout\ : std_logic;
SIGNAL \RAM[26][4]~regout\ : std_logic;
SIGNAL \RAM[21][4]~regout\ : std_logic;
SIGNAL \RAM[22][4]~regout\ : std_logic;
SIGNAL \RAM[17][4]~regout\ : std_logic;
SIGNAL \RAM[18][4]~regout\ : std_logic;
SIGNAL \RAM[29][4]~regout\ : std_logic;
SIGNAL \RAM[30][4]~regout\ : std_logic;
SIGNAL \RAM[12][4]~regout\ : std_logic;
SIGNAL \RAM[9][4]~regout\ : std_logic;
SIGNAL \RAM[6][4]~regout\ : std_logic;
SIGNAL \RAM[3][4]~regout\ : std_logic;
SIGNAL \RAM[4][4]~regout\ : std_logic;
SIGNAL \RAM[1][4]~regout\ : std_logic;
SIGNAL \RAM[14][4]~regout\ : std_logic;
SIGNAL \RAM[11][4]~regout\ : std_logic;
SIGNAL \RAM[28][5]~regout\ : std_logic;
SIGNAL \RAM[25][5]~regout\ : std_logic;
SIGNAL \RAM[22][5]~regout\ : std_logic;
SIGNAL \RAM[19][5]~regout\ : std_logic;
SIGNAL \RAM[20][5]~regout\ : std_logic;
SIGNAL \RAM[17][5]~regout\ : std_logic;
SIGNAL \RAM[30][5]~regout\ : std_logic;
SIGNAL \RAM[27][5]~regout\ : std_logic;
SIGNAL \RAM[10][5]~regout\ : std_logic;
SIGNAL \RAM[12][5]~regout\ : std_logic;
SIGNAL \RAM[3][5]~regout\ : std_logic;
SIGNAL \RAM[5][5]~regout\ : std_logic;
SIGNAL \RAM[2][5]~regout\ : std_logic;
SIGNAL \RAM[4][5]~regout\ : std_logic;
SIGNAL \RAM[11][5]~regout\ : std_logic;
SIGNAL \RAM[13][5]~regout\ : std_logic;
SIGNAL \RAM[21][6]~regout\ : std_logic;
SIGNAL \RAM[25][6]~regout\ : std_logic;
SIGNAL \RAM[22][6]~regout\ : std_logic;
SIGNAL \RAM[26][6]~regout\ : std_logic;
SIGNAL \RAM[20][6]~regout\ : std_logic;
SIGNAL \RAM[24][6]~regout\ : std_logic;
SIGNAL \RAM[23][6]~regout\ : std_logic;
SIGNAL \RAM[27][6]~regout\ : std_logic;
SIGNAL \RAM[9][6]~regout\ : std_logic;
SIGNAL \RAM[10][6]~regout\ : std_logic;
SIGNAL \RAM[5][6]~regout\ : std_logic;
SIGNAL \RAM[6][6]~regout\ : std_logic;
SIGNAL \RAM[1][6]~regout\ : std_logic;
SIGNAL \RAM[2][6]~regout\ : std_logic;
SIGNAL \RAM[13][6]~regout\ : std_logic;
SIGNAL \RAM[14][6]~regout\ : std_logic;
SIGNAL \RAM[22][7]~regout\ : std_logic;
SIGNAL \RAM[26][7]~regout\ : std_logic;
SIGNAL \RAM[21][7]~regout\ : std_logic;
SIGNAL \RAM[25][7]~regout\ : std_logic;
SIGNAL \RAM[20][7]~regout\ : std_logic;
SIGNAL \RAM[24][7]~regout\ : std_logic;
SIGNAL \RAM[23][7]~regout\ : std_logic;
SIGNAL \RAM[27][7]~regout\ : std_logic;
SIGNAL \RAM[9][7]~regout\ : std_logic;
SIGNAL \RAM[10][7]~regout\ : std_logic;
SIGNAL \RAM[6][7]~regout\ : std_logic;
SIGNAL \RAM[5][7]~regout\ : std_logic;
SIGNAL \RAM[1][7]~regout\ : std_logic;
SIGNAL \RAM[2][7]~regout\ : std_logic;
SIGNAL \RAM[14][7]~regout\ : std_logic;
SIGNAL \RAM[13][7]~regout\ : std_logic;
SIGNAL \RAM[21][8]~regout\ : std_logic;
SIGNAL \RAM[25][8]~regout\ : std_logic;
SIGNAL \RAM[22][8]~regout\ : std_logic;
SIGNAL \RAM[26][8]~regout\ : std_logic;
SIGNAL \RAM[20][8]~regout\ : std_logic;
SIGNAL \RAM[24][8]~regout\ : std_logic;
SIGNAL \RAM[23][8]~regout\ : std_logic;
SIGNAL \RAM[27][8]~regout\ : std_logic;
SIGNAL \RAM[10][8]~regout\ : std_logic;
SIGNAL \RAM[9][8]~regout\ : std_logic;
SIGNAL \RAM[5][8]~regout\ : std_logic;
SIGNAL \RAM[6][8]~regout\ : std_logic;
SIGNAL \RAM[2][8]~regout\ : std_logic;
SIGNAL \RAM[1][8]~regout\ : std_logic;
SIGNAL \RAM[13][8]~regout\ : std_logic;
SIGNAL \RAM[14][8]~regout\ : std_logic;
SIGNAL \RAM[22][9]~regout\ : std_logic;
SIGNAL \RAM[26][9]~regout\ : std_logic;
SIGNAL \RAM[21][9]~regout\ : std_logic;
SIGNAL \RAM[25][9]~regout\ : std_logic;
SIGNAL \RAM[20][9]~regout\ : std_logic;
SIGNAL \RAM[24][9]~regout\ : std_logic;
SIGNAL \RAM[23][9]~regout\ : std_logic;
SIGNAL \RAM[27][9]~regout\ : std_logic;
SIGNAL \RAM[9][9]~regout\ : std_logic;
SIGNAL \RAM[10][9]~regout\ : std_logic;
SIGNAL \RAM[6][9]~regout\ : std_logic;
SIGNAL \RAM[5][9]~regout\ : std_logic;
SIGNAL \RAM[1][9]~regout\ : std_logic;
SIGNAL \RAM[2][9]~regout\ : std_logic;
SIGNAL \RAM[14][9]~regout\ : std_logic;
SIGNAL \RAM[13][9]~regout\ : std_logic;
SIGNAL \RAM[21][10]~regout\ : std_logic;
SIGNAL \RAM[25][10]~regout\ : std_logic;
SIGNAL \RAM[22][10]~regout\ : std_logic;
SIGNAL \RAM[26][10]~regout\ : std_logic;
SIGNAL \RAM[20][10]~regout\ : std_logic;
SIGNAL \RAM[24][10]~regout\ : std_logic;
SIGNAL \RAM[23][10]~regout\ : std_logic;
SIGNAL \RAM[27][10]~regout\ : std_logic;
SIGNAL \RAM[10][10]~regout\ : std_logic;
SIGNAL \RAM[9][10]~regout\ : std_logic;
SIGNAL \RAM[5][10]~regout\ : std_logic;
SIGNAL \RAM[6][10]~regout\ : std_logic;
SIGNAL \RAM[2][10]~regout\ : std_logic;
SIGNAL \RAM[1][10]~regout\ : std_logic;
SIGNAL \RAM[13][10]~regout\ : std_logic;
SIGNAL \RAM[14][10]~regout\ : std_logic;
SIGNAL \RAM[22][11]~regout\ : std_logic;
SIGNAL \RAM[26][11]~regout\ : std_logic;
SIGNAL \RAM[21][11]~regout\ : std_logic;
SIGNAL \RAM[25][11]~regout\ : std_logic;
SIGNAL \RAM[20][11]~regout\ : std_logic;
SIGNAL \RAM[24][11]~regout\ : std_logic;
SIGNAL \RAM[23][11]~regout\ : std_logic;
SIGNAL \RAM[27][11]~regout\ : std_logic;
SIGNAL \RAM[9][11]~regout\ : std_logic;
SIGNAL \RAM[10][11]~regout\ : std_logic;
SIGNAL \RAM[6][11]~regout\ : std_logic;
SIGNAL \RAM[5][11]~regout\ : std_logic;
SIGNAL \RAM[1][11]~regout\ : std_logic;
SIGNAL \RAM[2][11]~regout\ : std_logic;
SIGNAL \RAM[14][11]~regout\ : std_logic;
SIGNAL \RAM[13][11]~regout\ : std_logic;
SIGNAL \RAM[25][12]~regout\ : std_logic;
SIGNAL \RAM[21][12]~regout\ : std_logic;
SIGNAL \RAM[22][12]~regout\ : std_logic;
SIGNAL \RAM[26][12]~regout\ : std_logic;
SIGNAL \RAM[20][12]~regout\ : std_logic;
SIGNAL \RAM[24][12]~regout\ : std_logic;
SIGNAL \RAM[27][12]~regout\ : std_logic;
SIGNAL \RAM[23][12]~regout\ : std_logic;
SIGNAL \RAM[5][12]~regout\ : std_logic;
SIGNAL \RAM[6][12]~regout\ : std_logic;
SIGNAL \RAM[10][12]~regout\ : std_logic;
SIGNAL \RAM[9][12]~regout\ : std_logic;
SIGNAL \RAM[2][12]~regout\ : std_logic;
SIGNAL \RAM[1][12]~regout\ : std_logic;
SIGNAL \RAM[13][12]~regout\ : std_logic;
SIGNAL \RAM[14][12]~regout\ : std_logic;
SIGNAL \RAM[26][13]~regout\ : std_logic;
SIGNAL \RAM[22][13]~regout\ : std_logic;
SIGNAL \RAM[21][13]~regout\ : std_logic;
SIGNAL \RAM[25][13]~regout\ : std_logic;
SIGNAL \RAM[24][13]~regout\ : std_logic;
SIGNAL \RAM[20][13]~regout\ : std_logic;
SIGNAL \RAM[23][13]~regout\ : std_logic;
SIGNAL \RAM[27][13]~regout\ : std_logic;
SIGNAL \RAM[9][13]~regout\ : std_logic;
SIGNAL \RAM[10][13]~regout\ : std_logic;
SIGNAL \RAM[6][13]~regout\ : std_logic;
SIGNAL \RAM[5][13]~regout\ : std_logic;
SIGNAL \RAM[1][13]~regout\ : std_logic;
SIGNAL \RAM[2][13]~regout\ : std_logic;
SIGNAL \RAM[14][13]~regout\ : std_logic;
SIGNAL \RAM[13][13]~regout\ : std_logic;
SIGNAL \RAM[25][14]~regout\ : std_logic;
SIGNAL \RAM[21][14]~regout\ : std_logic;
SIGNAL \RAM[22][14]~regout\ : std_logic;
SIGNAL \RAM[26][14]~regout\ : std_logic;
SIGNAL \RAM[20][14]~regout\ : std_logic;
SIGNAL \RAM[24][14]~regout\ : std_logic;
SIGNAL \RAM[27][14]~regout\ : std_logic;
SIGNAL \RAM[23][14]~regout\ : std_logic;
SIGNAL \RAM[5][14]~regout\ : std_logic;
SIGNAL \RAM[6][14]~regout\ : std_logic;
SIGNAL \RAM[10][14]~regout\ : std_logic;
SIGNAL \RAM[9][14]~regout\ : std_logic;
SIGNAL \RAM[2][14]~regout\ : std_logic;
SIGNAL \RAM[1][14]~regout\ : std_logic;
SIGNAL \RAM[13][14]~regout\ : std_logic;
SIGNAL \RAM[14][14]~regout\ : std_logic;
SIGNAL \RAM[26][15]~regout\ : std_logic;
SIGNAL \RAM[22][15]~regout\ : std_logic;
SIGNAL \RAM[21][15]~regout\ : std_logic;
SIGNAL \RAM[25][15]~regout\ : std_logic;
SIGNAL \RAM[24][15]~regout\ : std_logic;
SIGNAL \RAM[20][15]~regout\ : std_logic;
SIGNAL \RAM[23][15]~regout\ : std_logic;
SIGNAL \RAM[27][15]~regout\ : std_logic;
SIGNAL \RAM[9][15]~regout\ : std_logic;
SIGNAL \RAM[10][15]~regout\ : std_logic;
SIGNAL \RAM[6][15]~regout\ : std_logic;
SIGNAL \RAM[5][15]~regout\ : std_logic;
SIGNAL \RAM[1][15]~regout\ : std_logic;
SIGNAL \RAM[2][15]~regout\ : std_logic;
SIGNAL \RAM[14][15]~regout\ : std_logic;
SIGNAL \RAM[13][15]~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \wr_bar~combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \Decoder0~27_combout\ : std_logic;
SIGNAL \RAM[11][0]~regout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~26_combout\ : std_logic;
SIGNAL \RAM[8][0]~regout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \Decoder0~25_combout\ : std_logic;
SIGNAL \Mux15~10\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~24_combout\ : std_logic;
SIGNAL \Mux15~11\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \Decoder0~39_combout\ : std_logic;
SIGNAL \RAM[15][0]~regout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~38_combout\ : std_logic;
SIGNAL \RAM[12][0]~regout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~37_combout\ : std_logic;
SIGNAL \Mux15~17\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \Decoder0~36_combout\ : std_logic;
SIGNAL \Mux15~18\ : std_logic;
SIGNAL \Decoder0~35_combout\ : std_logic;
SIGNAL \RAM[3][0]~regout\ : std_logic;
SIGNAL \Decoder0~34_combout\ : std_logic;
SIGNAL \RAM[0][0]~regout\ : std_logic;
SIGNAL \Decoder0~33_combout\ : std_logic;
SIGNAL \Mux15~14\ : std_logic;
SIGNAL \Decoder0~32_combout\ : std_logic;
SIGNAL \Mux15~15\ : std_logic;
SIGNAL \Decoder0~31_combout\ : std_logic;
SIGNAL \RAM[7][0]~regout\ : std_logic;
SIGNAL \Decoder0~30_combout\ : std_logic;
SIGNAL \RAM[4][0]~regout\ : std_logic;
SIGNAL \Decoder0~29_combout\ : std_logic;
SIGNAL \Mux15~12\ : std_logic;
SIGNAL \Decoder0~28_combout\ : std_logic;
SIGNAL \Mux15~13\ : std_logic;
SIGNAL \Mux15~16_combout\ : std_logic;
SIGNAL \Mux15~19_combout\ : std_logic;
SIGNAL \Decoder0~23_combout\ : std_logic;
SIGNAL \RAM[31][0]~regout\ : std_logic;
SIGNAL \Decoder0~22_combout\ : std_logic;
SIGNAL \RAM[25][0]~regout\ : std_logic;
SIGNAL \Decoder0~21_combout\ : std_logic;
SIGNAL \Mux15~7\ : std_logic;
SIGNAL \Decoder0~20_combout\ : std_logic;
SIGNAL \Mux15~8\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \RAM[30][0]~regout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \RAM[24][0]~regout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Mux15~0\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Mux15~1\ : std_logic;
SIGNAL \Decoder0~19_combout\ : std_logic;
SIGNAL \RAM[22][0]~regout\ : std_logic;
SIGNAL \Decoder0~18_combout\ : std_logic;
SIGNAL \RAM[16][0]~regout\ : std_logic;
SIGNAL \Decoder0~17_combout\ : std_logic;
SIGNAL \Mux15~4\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \Mux15~5\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \RAM[23][0]~regout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \RAM[17][0]~regout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \Mux15~2\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \Mux15~3\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \rd_bar~combout\ : std_logic;
SIGNAL \mem_out[0]~0_combout\ : std_logic;
SIGNAL \mem_out[0]~reg0_regout\ : std_logic;
SIGNAL \RAM[31][1]~regout\ : std_logic;
SIGNAL \RAM[28][1]~regout\ : std_logic;
SIGNAL \Mux14~7\ : std_logic;
SIGNAL \Mux14~8\ : std_logic;
SIGNAL \RAM[27][1]~regout\ : std_logic;
SIGNAL \RAM[24][1]~regout\ : std_logic;
SIGNAL \Mux14~0\ : std_logic;
SIGNAL \Mux14~1\ : std_logic;
SIGNAL \RAM[23][1]~regout\ : std_logic;
SIGNAL \RAM[20][1]~regout\ : std_logic;
SIGNAL \Mux14~2\ : std_logic;
SIGNAL \Mux14~3\ : std_logic;
SIGNAL \RAM[19][1]~regout\ : std_logic;
SIGNAL \RAM[16][1]~regout\ : std_logic;
SIGNAL \Mux14~4\ : std_logic;
SIGNAL \Mux14~5\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \RAM[15][1]~regout\ : std_logic;
SIGNAL \RAM[10][1]~regout\ : std_logic;
SIGNAL \Mux14~17\ : std_logic;
SIGNAL \Mux14~18\ : std_logic;
SIGNAL \RAM[13][1]~regout\ : std_logic;
SIGNAL \RAM[8][1]~regout\ : std_logic;
SIGNAL \Mux14~10\ : std_logic;
SIGNAL \Mux14~11\ : std_logic;
SIGNAL \RAM[5][1]~regout\ : std_logic;
SIGNAL \RAM[0][1]~regout\ : std_logic;
SIGNAL \Mux14~14\ : std_logic;
SIGNAL \Mux14~15\ : std_logic;
SIGNAL \RAM[7][1]~regout\ : std_logic;
SIGNAL \RAM[2][1]~regout\ : std_logic;
SIGNAL \Mux14~12\ : std_logic;
SIGNAL \Mux14~13\ : std_logic;
SIGNAL \Mux14~16_combout\ : std_logic;
SIGNAL \Mux14~19_combout\ : std_logic;
SIGNAL \mem_out[1]~reg0_regout\ : std_logic;
SIGNAL \RAM[15][2]~regout\ : std_logic;
SIGNAL \RAM[9][2]~regout\ : std_logic;
SIGNAL \Mux13~17\ : std_logic;
SIGNAL \Mux13~18\ : std_logic;
SIGNAL \RAM[14][2]~regout\ : std_logic;
SIGNAL \RAM[8][2]~regout\ : std_logic;
SIGNAL \Mux13~10\ : std_logic;
SIGNAL \Mux13~11\ : std_logic;
SIGNAL \RAM[7][2]~regout\ : std_logic;
SIGNAL \RAM[1][2]~regout\ : std_logic;
SIGNAL \Mux13~12\ : std_logic;
SIGNAL \Mux13~13\ : std_logic;
SIGNAL \RAM[6][2]~regout\ : std_logic;
SIGNAL \RAM[0][2]~regout\ : std_logic;
SIGNAL \Mux13~14\ : std_logic;
SIGNAL \Mux13~15\ : std_logic;
SIGNAL \Mux13~16_combout\ : std_logic;
SIGNAL \Mux13~19_combout\ : std_logic;
SIGNAL \RAM[31][2]~regout\ : std_logic;
SIGNAL \RAM[26][2]~regout\ : std_logic;
SIGNAL \Mux13~7\ : std_logic;
SIGNAL \Mux13~8\ : std_logic;
SIGNAL \RAM[21][2]~regout\ : std_logic;
SIGNAL \RAM[16][2]~regout\ : std_logic;
SIGNAL \Mux13~4\ : std_logic;
SIGNAL \Mux13~5\ : std_logic;
SIGNAL \RAM[23][2]~regout\ : std_logic;
SIGNAL \RAM[18][2]~regout\ : std_logic;
SIGNAL \Mux13~2\ : std_logic;
SIGNAL \Mux13~3\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \RAM[29][2]~regout\ : std_logic;
SIGNAL \RAM[24][2]~regout\ : std_logic;
SIGNAL \Mux13~0\ : std_logic;
SIGNAL \Mux13~1\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \mem_out[2]~reg0_regout\ : std_logic;
SIGNAL \RAM[31][3]~regout\ : std_logic;
SIGNAL \RAM[25][3]~regout\ : std_logic;
SIGNAL \Mux12~7\ : std_logic;
SIGNAL \Mux12~8\ : std_logic;
SIGNAL \RAM[30][3]~regout\ : std_logic;
SIGNAL \RAM[24][3]~regout\ : std_logic;
SIGNAL \Mux12~0\ : std_logic;
SIGNAL \Mux12~1\ : std_logic;
SIGNAL \RAM[22][3]~regout\ : std_logic;
SIGNAL \RAM[16][3]~regout\ : std_logic;
SIGNAL \Mux12~4\ : std_logic;
SIGNAL \Mux12~5\ : std_logic;
SIGNAL \RAM[23][3]~regout\ : std_logic;
SIGNAL \RAM[17][3]~regout\ : std_logic;
SIGNAL \Mux12~2\ : std_logic;
SIGNAL \Mux12~3\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \RAM[11][3]~regout\ : std_logic;
SIGNAL \RAM[8][3]~regout\ : std_logic;
SIGNAL \Mux12~10\ : std_logic;
SIGNAL \Mux12~11\ : std_logic;
SIGNAL \RAM[15][3]~regout\ : std_logic;
SIGNAL \RAM[12][3]~regout\ : std_logic;
SIGNAL \Mux12~17\ : std_logic;
SIGNAL \Mux12~18\ : std_logic;
SIGNAL \RAM[7][3]~regout\ : std_logic;
SIGNAL \RAM[4][3]~regout\ : std_logic;
SIGNAL \Mux12~12\ : std_logic;
SIGNAL \Mux12~13\ : std_logic;
SIGNAL \RAM[3][3]~regout\ : std_logic;
SIGNAL \RAM[0][3]~regout\ : std_logic;
SIGNAL \Mux12~14\ : std_logic;
SIGNAL \Mux12~15\ : std_logic;
SIGNAL \Mux12~16_combout\ : std_logic;
SIGNAL \Mux12~19_combout\ : std_logic;
SIGNAL \mem_out[3]~reg0_regout\ : std_logic;
SIGNAL \RAM[15][4]~regout\ : std_logic;
SIGNAL \RAM[10][4]~regout\ : std_logic;
SIGNAL \Mux11~17\ : std_logic;
SIGNAL \Mux11~18\ : std_logic;
SIGNAL \RAM[13][4]~regout\ : std_logic;
SIGNAL \RAM[8][4]~regout\ : std_logic;
SIGNAL \Mux11~10\ : std_logic;
SIGNAL \Mux11~11\ : std_logic;
SIGNAL \RAM[5][4]~regout\ : std_logic;
SIGNAL \RAM[0][4]~regout\ : std_logic;
SIGNAL \Mux11~14\ : std_logic;
SIGNAL \Mux11~15\ : std_logic;
SIGNAL \RAM[7][4]~regout\ : std_logic;
SIGNAL \RAM[2][4]~regout\ : std_logic;
SIGNAL \Mux11~12\ : std_logic;
SIGNAL \Mux11~13\ : std_logic;
SIGNAL \Mux11~16_combout\ : std_logic;
SIGNAL \Mux11~19_combout\ : std_logic;
SIGNAL \RAM[31][4]~regout\ : std_logic;
SIGNAL \RAM[28][4]~regout\ : std_logic;
SIGNAL \Mux11~7\ : std_logic;
SIGNAL \Mux11~8\ : std_logic;
SIGNAL \RAM[27][4]~regout\ : std_logic;
SIGNAL \RAM[24][4]~regout\ : std_logic;
SIGNAL \Mux11~0\ : std_logic;
SIGNAL \Mux11~1\ : std_logic;
SIGNAL \RAM[23][4]~regout\ : std_logic;
SIGNAL \RAM[20][4]~regout\ : std_logic;
SIGNAL \Mux11~2\ : std_logic;
SIGNAL \Mux11~3\ : std_logic;
SIGNAL \RAM[19][4]~regout\ : std_logic;
SIGNAL \RAM[16][4]~regout\ : std_logic;
SIGNAL \Mux11~4\ : std_logic;
SIGNAL \Mux11~5\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \mem_out[4]~reg0_regout\ : std_logic;
SIGNAL \RAM[31][5]~regout\ : std_logic;
SIGNAL \RAM[26][5]~regout\ : std_logic;
SIGNAL \Mux10~7\ : std_logic;
SIGNAL \Mux10~8\ : std_logic;
SIGNAL \RAM[29][5]~regout\ : std_logic;
SIGNAL \RAM[24][5]~regout\ : std_logic;
SIGNAL \Mux10~0\ : std_logic;
SIGNAL \Mux10~1\ : std_logic;
SIGNAL \RAM[23][5]~regout\ : std_logic;
SIGNAL \RAM[18][5]~regout\ : std_logic;
SIGNAL \Mux10~2\ : std_logic;
SIGNAL \Mux10~3\ : std_logic;
SIGNAL \RAM[21][5]~regout\ : std_logic;
SIGNAL \RAM[16][5]~regout\ : std_logic;
SIGNAL \Mux10~4\ : std_logic;
SIGNAL \Mux10~5\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \RAM[14][5]~regout\ : std_logic;
SIGNAL \RAM[8][5]~regout\ : std_logic;
SIGNAL \Mux10~10\ : std_logic;
SIGNAL \Mux10~11\ : std_logic;
SIGNAL \RAM[15][5]~regout\ : std_logic;
SIGNAL \RAM[9][5]~regout\ : std_logic;
SIGNAL \Mux10~17\ : std_logic;
SIGNAL \Mux10~18\ : std_logic;
SIGNAL \RAM[7][5]~regout\ : std_logic;
SIGNAL \RAM[1][5]~regout\ : std_logic;
SIGNAL \Mux10~12\ : std_logic;
SIGNAL \Mux10~13\ : std_logic;
SIGNAL \RAM[6][5]~regout\ : std_logic;
SIGNAL \RAM[0][5]~regout\ : std_logic;
SIGNAL \Mux10~14\ : std_logic;
SIGNAL \Mux10~15\ : std_logic;
SIGNAL \Mux10~16_combout\ : std_logic;
SIGNAL \Mux10~19_combout\ : std_logic;
SIGNAL \mem_out[5]~reg0_regout\ : std_logic;
SIGNAL \RAM[31][6]~regout\ : std_logic;
SIGNAL \RAM[19][6]~regout\ : std_logic;
SIGNAL \Mux9~7\ : std_logic;
SIGNAL \Mux9~8\ : std_logic;
SIGNAL \RAM[29][6]~regout\ : std_logic;
SIGNAL \RAM[17][6]~regout\ : std_logic;
SIGNAL \Mux9~0\ : std_logic;
SIGNAL \Mux9~1\ : std_logic;
SIGNAL \RAM[30][6]~regout\ : std_logic;
SIGNAL \RAM[18][6]~regout\ : std_logic;
SIGNAL \Mux9~2\ : std_logic;
SIGNAL \Mux9~3\ : std_logic;
SIGNAL \RAM[28][6]~regout\ : std_logic;
SIGNAL \RAM[16][6]~regout\ : std_logic;
SIGNAL \Mux9~4\ : std_logic;
SIGNAL \Mux9~5\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \RAM[11][6]~regout\ : std_logic;
SIGNAL \RAM[8][6]~regout\ : std_logic;
SIGNAL \Mux9~10\ : std_logic;
SIGNAL \Mux9~11\ : std_logic;
SIGNAL \RAM[15][6]~regout\ : std_logic;
SIGNAL \RAM[12][6]~regout\ : std_logic;
SIGNAL \Mux9~17\ : std_logic;
SIGNAL \Mux9~18\ : std_logic;
SIGNAL \RAM[3][6]~regout\ : std_logic;
SIGNAL \RAM[0][6]~regout\ : std_logic;
SIGNAL \Mux9~14\ : std_logic;
SIGNAL \Mux9~15\ : std_logic;
SIGNAL \RAM[7][6]~regout\ : std_logic;
SIGNAL \RAM[4][6]~regout\ : std_logic;
SIGNAL \Mux9~12\ : std_logic;
SIGNAL \Mux9~13\ : std_logic;
SIGNAL \Mux9~16_combout\ : std_logic;
SIGNAL \Mux9~19_combout\ : std_logic;
SIGNAL \mem_out[6]~reg0_regout\ : std_logic;
SIGNAL \RAM[31][7]~regout\ : std_logic;
SIGNAL \RAM[19][7]~regout\ : std_logic;
SIGNAL \Mux8~7\ : std_logic;
SIGNAL \Mux8~8\ : std_logic;
SIGNAL \RAM[30][7]~regout\ : std_logic;
SIGNAL \RAM[18][7]~regout\ : std_logic;
SIGNAL \Mux8~0\ : std_logic;
SIGNAL \Mux8~1\ : std_logic;
SIGNAL \RAM[28][7]~regout\ : std_logic;
SIGNAL \RAM[16][7]~regout\ : std_logic;
SIGNAL \Mux8~4\ : std_logic;
SIGNAL \Mux8~5\ : std_logic;
SIGNAL \RAM[29][7]~regout\ : std_logic;
SIGNAL \RAM[17][7]~regout\ : std_logic;
SIGNAL \Mux8~2\ : std_logic;
SIGNAL \Mux8~3\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \RAM[11][7]~regout\ : std_logic;
SIGNAL \RAM[8][7]~regout\ : std_logic;
SIGNAL \Mux8~10\ : std_logic;
SIGNAL \Mux8~11\ : std_logic;
SIGNAL \RAM[15][7]~regout\ : std_logic;
SIGNAL \RAM[12][7]~regout\ : std_logic;
SIGNAL \Mux8~17\ : std_logic;
SIGNAL \Mux8~18\ : std_logic;
SIGNAL \RAM[3][7]~regout\ : std_logic;
SIGNAL \RAM[0][7]~regout\ : std_logic;
SIGNAL \Mux8~14\ : std_logic;
SIGNAL \Mux8~15\ : std_logic;
SIGNAL \RAM[7][7]~regout\ : std_logic;
SIGNAL \RAM[4][7]~regout\ : std_logic;
SIGNAL \Mux8~12\ : std_logic;
SIGNAL \Mux8~13\ : std_logic;
SIGNAL \Mux8~16_combout\ : std_logic;
SIGNAL \Mux8~19_combout\ : std_logic;
SIGNAL \mem_out[7]~reg0_regout\ : std_logic;
SIGNAL \RAM[31][8]~regout\ : std_logic;
SIGNAL \RAM[19][8]~regout\ : std_logic;
SIGNAL \Mux7~7\ : std_logic;
SIGNAL \Mux7~8\ : std_logic;
SIGNAL \RAM[29][8]~regout\ : std_logic;
SIGNAL \RAM[17][8]~regout\ : std_logic;
SIGNAL \Mux7~0\ : std_logic;
SIGNAL \Mux7~1\ : std_logic;
SIGNAL \RAM[28][8]~regout\ : std_logic;
SIGNAL \RAM[16][8]~regout\ : std_logic;
SIGNAL \Mux7~4\ : std_logic;
SIGNAL \Mux7~5\ : std_logic;
SIGNAL \RAM[30][8]~regout\ : std_logic;
SIGNAL \RAM[18][8]~regout\ : std_logic;
SIGNAL \Mux7~2\ : std_logic;
SIGNAL \Mux7~3\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \RAM[11][8]~regout\ : std_logic;
SIGNAL \RAM[8][8]~regout\ : std_logic;
SIGNAL \Mux7~10\ : std_logic;
SIGNAL \Mux7~11\ : std_logic;
SIGNAL \RAM[15][8]~regout\ : std_logic;
SIGNAL \RAM[12][8]~regout\ : std_logic;
SIGNAL \Mux7~17\ : std_logic;
SIGNAL \Mux7~18\ : std_logic;
SIGNAL \RAM[3][8]~regout\ : std_logic;
SIGNAL \RAM[0][8]~regout\ : std_logic;
SIGNAL \Mux7~14\ : std_logic;
SIGNAL \Mux7~15\ : std_logic;
SIGNAL \RAM[7][8]~regout\ : std_logic;
SIGNAL \RAM[4][8]~regout\ : std_logic;
SIGNAL \Mux7~12\ : std_logic;
SIGNAL \Mux7~13\ : std_logic;
SIGNAL \Mux7~16_combout\ : std_logic;
SIGNAL \Mux7~19_combout\ : std_logic;
SIGNAL \mem_out[8]~reg0_regout\ : std_logic;
SIGNAL \RAM[31][9]~regout\ : std_logic;
SIGNAL \RAM[19][9]~regout\ : std_logic;
SIGNAL \Mux6~7\ : std_logic;
SIGNAL \Mux6~8\ : std_logic;
SIGNAL \RAM[28][9]~regout\ : std_logic;
SIGNAL \RAM[16][9]~regout\ : std_logic;
SIGNAL \Mux6~4\ : std_logic;
SIGNAL \Mux6~5\ : std_logic;
SIGNAL \RAM[29][9]~regout\ : std_logic;
SIGNAL \RAM[17][9]~regout\ : std_logic;
SIGNAL \Mux6~2\ : std_logic;
SIGNAL \Mux6~3\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \RAM[30][9]~regout\ : std_logic;
SIGNAL \RAM[18][9]~regout\ : std_logic;
SIGNAL \Mux6~0\ : std_logic;
SIGNAL \Mux6~1\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \RAM[11][9]~regout\ : std_logic;
SIGNAL \RAM[8][9]~regout\ : std_logic;
SIGNAL \Mux6~10\ : std_logic;
SIGNAL \Mux6~11\ : std_logic;
SIGNAL \RAM[15][9]~regout\ : std_logic;
SIGNAL \RAM[12][9]~regout\ : std_logic;
SIGNAL \Mux6~17\ : std_logic;
SIGNAL \Mux6~18\ : std_logic;
SIGNAL \RAM[7][9]~regout\ : std_logic;
SIGNAL \RAM[4][9]~regout\ : std_logic;
SIGNAL \Mux6~12\ : std_logic;
SIGNAL \Mux6~13\ : std_logic;
SIGNAL \RAM[3][9]~regout\ : std_logic;
SIGNAL \RAM[0][9]~regout\ : std_logic;
SIGNAL \Mux6~14\ : std_logic;
SIGNAL \Mux6~15\ : std_logic;
SIGNAL \Mux6~16_combout\ : std_logic;
SIGNAL \Mux6~19_combout\ : std_logic;
SIGNAL \mem_out[9]~reg0_regout\ : std_logic;
SIGNAL \RAM[29][10]~regout\ : std_logic;
SIGNAL \RAM[17][10]~regout\ : std_logic;
SIGNAL \Mux5~0\ : std_logic;
SIGNAL \Mux5~1\ : std_logic;
SIGNAL \RAM[31][10]~regout\ : std_logic;
SIGNAL \RAM[19][10]~regout\ : std_logic;
SIGNAL \Mux5~7\ : std_logic;
SIGNAL \Mux5~8\ : std_logic;
SIGNAL \RAM[28][10]~regout\ : std_logic;
SIGNAL \RAM[16][10]~regout\ : std_logic;
SIGNAL \Mux5~4\ : std_logic;
SIGNAL \Mux5~5\ : std_logic;
SIGNAL \RAM[30][10]~regout\ : std_logic;
SIGNAL \RAM[18][10]~regout\ : std_logic;
SIGNAL \Mux5~2\ : std_logic;
SIGNAL \Mux5~3\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \RAM[11][10]~regout\ : std_logic;
SIGNAL \RAM[8][10]~regout\ : std_logic;
SIGNAL \Mux5~10\ : std_logic;
SIGNAL \Mux5~11\ : std_logic;
SIGNAL \RAM[15][10]~regout\ : std_logic;
SIGNAL \RAM[12][10]~regout\ : std_logic;
SIGNAL \Mux5~17\ : std_logic;
SIGNAL \Mux5~18\ : std_logic;
SIGNAL \RAM[3][10]~regout\ : std_logic;
SIGNAL \RAM[0][10]~regout\ : std_logic;
SIGNAL \Mux5~14\ : std_logic;
SIGNAL \Mux5~15\ : std_logic;
SIGNAL \RAM[7][10]~regout\ : std_logic;
SIGNAL \RAM[4][10]~regout\ : std_logic;
SIGNAL \Mux5~12\ : std_logic;
SIGNAL \Mux5~13\ : std_logic;
SIGNAL \Mux5~16_combout\ : std_logic;
SIGNAL \Mux5~19_combout\ : std_logic;
SIGNAL \mem_out[10]~reg0_regout\ : std_logic;
SIGNAL \RAM[30][11]~regout\ : std_logic;
SIGNAL \RAM[18][11]~regout\ : std_logic;
SIGNAL \Mux4~0\ : std_logic;
SIGNAL \Mux4~1\ : std_logic;
SIGNAL \RAM[31][11]~regout\ : std_logic;
SIGNAL \RAM[19][11]~regout\ : std_logic;
SIGNAL \Mux4~7\ : std_logic;
SIGNAL \Mux4~8\ : std_logic;
SIGNAL \RAM[28][11]~regout\ : std_logic;
SIGNAL \RAM[16][11]~regout\ : std_logic;
SIGNAL \Mux4~4\ : std_logic;
SIGNAL \Mux4~5\ : std_logic;
SIGNAL \RAM[29][11]~regout\ : std_logic;
SIGNAL \RAM[17][11]~regout\ : std_logic;
SIGNAL \Mux4~2\ : std_logic;
SIGNAL \Mux4~3\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \RAM[11][11]~regout\ : std_logic;
SIGNAL \RAM[8][11]~regout\ : std_logic;
SIGNAL \Mux4~10\ : std_logic;
SIGNAL \Mux4~11\ : std_logic;
SIGNAL \RAM[15][11]~regout\ : std_logic;
SIGNAL \RAM[12][11]~regout\ : std_logic;
SIGNAL \Mux4~17\ : std_logic;
SIGNAL \Mux4~18\ : std_logic;
SIGNAL \RAM[3][11]~regout\ : std_logic;
SIGNAL \RAM[0][11]~regout\ : std_logic;
SIGNAL \Mux4~14\ : std_logic;
SIGNAL \Mux4~15\ : std_logic;
SIGNAL \RAM[7][11]~regout\ : std_logic;
SIGNAL \RAM[4][11]~regout\ : std_logic;
SIGNAL \Mux4~12\ : std_logic;
SIGNAL \Mux4~13\ : std_logic;
SIGNAL \Mux4~16_combout\ : std_logic;
SIGNAL \Mux4~19_combout\ : std_logic;
SIGNAL \mem_out[11]~reg0_regout\ : std_logic;
SIGNAL \RAM[29][12]~regout\ : std_logic;
SIGNAL \RAM[17][12]~regout\ : std_logic;
SIGNAL \Mux3~0\ : std_logic;
SIGNAL \Mux3~1\ : std_logic;
SIGNAL \RAM[31][12]~regout\ : std_logic;
SIGNAL \RAM[19][12]~regout\ : std_logic;
SIGNAL \Mux3~7\ : std_logic;
SIGNAL \Mux3~8\ : std_logic;
SIGNAL \RAM[28][12]~regout\ : std_logic;
SIGNAL \RAM[16][12]~regout\ : std_logic;
SIGNAL \Mux3~4\ : std_logic;
SIGNAL \Mux3~5\ : std_logic;
SIGNAL \RAM[30][12]~regout\ : std_logic;
SIGNAL \RAM[18][12]~regout\ : std_logic;
SIGNAL \Mux3~2\ : std_logic;
SIGNAL \Mux3~3\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \RAM[7][12]~regout\ : std_logic;
SIGNAL \RAM[4][12]~regout\ : std_logic;
SIGNAL \Mux3~10\ : std_logic;
SIGNAL \Mux3~11\ : std_logic;
SIGNAL \RAM[15][12]~regout\ : std_logic;
SIGNAL \RAM[12][12]~regout\ : std_logic;
SIGNAL \Mux3~17\ : std_logic;
SIGNAL \Mux3~18\ : std_logic;
SIGNAL \RAM[11][12]~regout\ : std_logic;
SIGNAL \RAM[8][12]~regout\ : std_logic;
SIGNAL \Mux3~12\ : std_logic;
SIGNAL \Mux3~13\ : std_logic;
SIGNAL \RAM[3][12]~regout\ : std_logic;
SIGNAL \RAM[0][12]~regout\ : std_logic;
SIGNAL \Mux3~14\ : std_logic;
SIGNAL \Mux3~15\ : std_logic;
SIGNAL \Mux3~16_combout\ : std_logic;
SIGNAL \Mux3~19_combout\ : std_logic;
SIGNAL \mem_out[12]~reg0_regout\ : std_logic;
SIGNAL \RAM[30][13]~regout\ : std_logic;
SIGNAL \RAM[18][13]~regout\ : std_logic;
SIGNAL \Mux2~0\ : std_logic;
SIGNAL \Mux2~1\ : std_logic;
SIGNAL \RAM[19][13]~regout\ : std_logic;
SIGNAL \Mux2~7\ : std_logic;
SIGNAL \RAM[31][13]~regout\ : std_logic;
SIGNAL \Mux2~8\ : std_logic;
SIGNAL \RAM[28][13]~regout\ : std_logic;
SIGNAL \RAM[16][13]~regout\ : std_logic;
SIGNAL \Mux2~4\ : std_logic;
SIGNAL \Mux2~5\ : std_logic;
SIGNAL \RAM[29][13]~regout\ : std_logic;
SIGNAL \RAM[17][13]~regout\ : std_logic;
SIGNAL \Mux2~2\ : std_logic;
SIGNAL \Mux2~3\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \RAM[11][13]~regout\ : std_logic;
SIGNAL \RAM[8][13]~regout\ : std_logic;
SIGNAL \Mux2~10\ : std_logic;
SIGNAL \Mux2~11\ : std_logic;
SIGNAL \RAM[15][13]~regout\ : std_logic;
SIGNAL \RAM[12][13]~regout\ : std_logic;
SIGNAL \Mux2~17\ : std_logic;
SIGNAL \Mux2~18\ : std_logic;
SIGNAL \RAM[3][13]~regout\ : std_logic;
SIGNAL \RAM[0][13]~regout\ : std_logic;
SIGNAL \Mux2~14\ : std_logic;
SIGNAL \Mux2~15\ : std_logic;
SIGNAL \RAM[7][13]~regout\ : std_logic;
SIGNAL \RAM[4][13]~regout\ : std_logic;
SIGNAL \Mux2~12\ : std_logic;
SIGNAL \Mux2~13\ : std_logic;
SIGNAL \Mux2~16_combout\ : std_logic;
SIGNAL \Mux2~19_combout\ : std_logic;
SIGNAL \mem_out[13]~reg0_regout\ : std_logic;
SIGNAL \RAM[7][14]~regout\ : std_logic;
SIGNAL \RAM[4][14]~regout\ : std_logic;
SIGNAL \Mux1~10\ : std_logic;
SIGNAL \Mux1~11\ : std_logic;
SIGNAL \RAM[15][14]~regout\ : std_logic;
SIGNAL \RAM[12][14]~regout\ : std_logic;
SIGNAL \Mux1~17\ : std_logic;
SIGNAL \Mux1~18\ : std_logic;
SIGNAL \RAM[0][14]~regout\ : std_logic;
SIGNAL \Mux1~14\ : std_logic;
SIGNAL \RAM[3][14]~regout\ : std_logic;
SIGNAL \Mux1~15\ : std_logic;
SIGNAL \RAM[11][14]~regout\ : std_logic;
SIGNAL \RAM[8][14]~regout\ : std_logic;
SIGNAL \Mux1~12\ : std_logic;
SIGNAL \Mux1~13\ : std_logic;
SIGNAL \Mux1~16_combout\ : std_logic;
SIGNAL \Mux1~19_combout\ : std_logic;
SIGNAL \RAM[31][14]~regout\ : std_logic;
SIGNAL \RAM[19][14]~regout\ : std_logic;
SIGNAL \Mux1~7\ : std_logic;
SIGNAL \Mux1~8\ : std_logic;
SIGNAL \RAM[29][14]~regout\ : std_logic;
SIGNAL \RAM[17][14]~regout\ : std_logic;
SIGNAL \Mux1~0\ : std_logic;
SIGNAL \Mux1~1\ : std_logic;
SIGNAL \RAM[28][14]~regout\ : std_logic;
SIGNAL \RAM[16][14]~regout\ : std_logic;
SIGNAL \Mux1~4\ : std_logic;
SIGNAL \Mux1~5\ : std_logic;
SIGNAL \RAM[30][14]~regout\ : std_logic;
SIGNAL \RAM[18][14]~regout\ : std_logic;
SIGNAL \Mux1~2\ : std_logic;
SIGNAL \Mux1~3\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \mem_out[14]~reg0_regout\ : std_logic;
SIGNAL \RAM[30][15]~regout\ : std_logic;
SIGNAL \RAM[18][15]~regout\ : std_logic;
SIGNAL \Mux0~0\ : std_logic;
SIGNAL \Mux0~1\ : std_logic;
SIGNAL \RAM[31][15]~regout\ : std_logic;
SIGNAL \RAM[19][15]~regout\ : std_logic;
SIGNAL \Mux0~7\ : std_logic;
SIGNAL \Mux0~8\ : std_logic;
SIGNAL \RAM[28][15]~regout\ : std_logic;
SIGNAL \RAM[16][15]~regout\ : std_logic;
SIGNAL \Mux0~4\ : std_logic;
SIGNAL \Mux0~5\ : std_logic;
SIGNAL \RAM[29][15]~regout\ : std_logic;
SIGNAL \RAM[17][15]~regout\ : std_logic;
SIGNAL \Mux0~2\ : std_logic;
SIGNAL \Mux0~3\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \RAM[15][15]~regout\ : std_logic;
SIGNAL \RAM[12][15]~regout\ : std_logic;
SIGNAL \Mux0~17\ : std_logic;
SIGNAL \Mux0~18\ : std_logic;
SIGNAL \RAM[11][15]~regout\ : std_logic;
SIGNAL \RAM[8][15]~regout\ : std_logic;
SIGNAL \Mux0~10\ : std_logic;
SIGNAL \Mux0~11\ : std_logic;
SIGNAL \RAM[3][15]~regout\ : std_logic;
SIGNAL \RAM[0][15]~regout\ : std_logic;
SIGNAL \Mux0~14\ : std_logic;
SIGNAL \Mux0~15\ : std_logic;
SIGNAL \RAM[7][15]~regout\ : std_logic;
SIGNAL \RAM[4][15]~regout\ : std_logic;
SIGNAL \Mux0~12\ : std_logic;
SIGNAL \Mux0~13\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \mem_out[15]~reg0_regout\ : std_logic;
SIGNAL \mem_d~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem_a~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_mem_d <= mem_d;
ww_mem_a <= mem_a;
ww_rd_bar <= rd_bar;
ww_wr_bar <= wr_bar;
ww_rst <= rst;
ww_clk <= clk;
mem_out <= ww_mem_out;
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

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(4),
	combout => \mem_a~combout\(4));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(3),
	combout => \mem_a~combout\(3));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(1),
	combout => \mem_a~combout\(1));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(0),
	combout => \mem_d~combout\(0));

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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(2),
	combout => \mem_a~combout\(2));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(0),
	combout => \mem_a~combout\(0));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_bar~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_bar,
	combout => \wr_bar~combout\);

-- Location: LC_X12_Y10_N0
\Decoder0~10\ : maxv_lcell
-- Equation(s):
-- \Decoder0~10_combout\ = (!\mem_a~combout\(2) & (\mem_a~combout\(1) & (\mem_a~combout\(0) & !\wr_bar~combout\)))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(0),
	datad => \wr_bar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~10_combout\);

-- Location: LC_X11_Y10_N4
\Decoder0~27\ : maxv_lcell
-- Equation(s):
-- \Decoder0~27_combout\ = (!\mem_a~combout\(4) & (((\Decoder0~10_combout\ & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datac => \Decoder0~10_combout\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~27_combout\);

-- Location: LC_X4_Y10_N6
\RAM[11][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][0]~regout\ = DFFEAS((((\mem_d~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, , , , )

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
	datad => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][0]~regout\);

-- Location: LC_X10_Y6_N5
\Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \Decoder0~4_combout\ = (!\mem_a~combout\(1) & (!\wr_bar~combout\ & (!\mem_a~combout\(2) & !\mem_a~combout\(0))))

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
	dataa => \mem_a~combout\(1),
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(2),
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~4_combout\);

-- Location: LC_X8_Y8_N9
\Decoder0~26\ : maxv_lcell
-- Equation(s):
-- \Decoder0~26_combout\ = (\mem_a~combout\(3) & (((!\mem_a~combout\(4) & \Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~26_combout\);

-- Location: LC_X4_Y10_N0
\RAM[8][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][0]~regout\ = DFFEAS((((\mem_d~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, , , , )

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
	datad => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][0]~regout\);

-- Location: LC_X12_Y10_N5
\Decoder0~12\ : maxv_lcell
-- Equation(s):
-- \Decoder0~12_combout\ = (!\mem_a~combout\(2) & (!\mem_a~combout\(1) & (\mem_a~combout\(0) & !\wr_bar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(0),
	datad => \wr_bar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~12_combout\);

-- Location: LC_X10_Y10_N4
\Decoder0~25\ : maxv_lcell
-- Equation(s):
-- \Decoder0~25_combout\ = (!\mem_a~combout\(4) & (\mem_a~combout\(3) & ((\Decoder0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_a~combout\(3),
	datad => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~25_combout\);

-- Location: LC_X5_Y10_N4
\RAM[9][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~10\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[9][0])) # (!\mem_a~combout\(0) & ((\RAM[8][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(0),
	datad => \RAM[8][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~10\,
	regout => \RAM[9][0]~regout\);

-- Location: LC_X13_Y9_N3
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = (!\mem_a~combout\(0) & (!\wr_bar~combout\ & (!\mem_a~combout\(2) & \mem_a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(2),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X12_Y10_N3
\Decoder0~24\ : maxv_lcell
-- Equation(s):
-- \Decoder0~24_combout\ = ((\mem_a~combout\(3) & (!\mem_a~combout\(4) & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~24_combout\);

-- Location: LC_X5_Y10_N5
\RAM[10][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~11\ = (\mem_a~combout\(1) & ((\Mux15~10\ & (\RAM[11][0]~regout\)) # (!\Mux15~10\ & ((RAM[10][0]))))) # (!\mem_a~combout\(1) & (((\Mux15~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[11][0]~regout\,
	datac => \mem_d~combout\(0),
	datad => \Mux15~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~11\,
	regout => \RAM[10][0]~regout\);

-- Location: LC_X8_Y6_N1
\Decoder0~14\ : maxv_lcell
-- Equation(s):
-- \Decoder0~14_combout\ = (\mem_a~combout\(2) & (\mem_a~combout\(1) & (!\wr_bar~combout\ & \mem_a~combout\(0))))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \wr_bar~combout\,
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~14_combout\);

-- Location: LC_X12_Y7_N5
\Decoder0~39\ : maxv_lcell
-- Equation(s):
-- \Decoder0~39_combout\ = ((\Decoder0~14_combout\ & (\mem_a~combout\(3) & !\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~14_combout\,
	datac => \mem_a~combout\(3),
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~39_combout\);

-- Location: LC_X9_Y8_N7
\RAM[15][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][0]~regout\ = DFFEAS(((\mem_d~combout\(0))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, , , , )

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
	datab => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][0]~regout\);

-- Location: LC_X12_Y10_N6
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = (\mem_a~combout\(2) & (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & !\wr_bar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(0),
	datad => \wr_bar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X12_Y10_N9
\Decoder0~38\ : maxv_lcell
-- Equation(s):
-- \Decoder0~38_combout\ = ((\mem_a~combout\(3) & (!\mem_a~combout\(4) & \Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~38_combout\);

-- Location: LC_X11_Y4_N5
\RAM[12][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][0]~regout\ = DFFEAS((((\mem_d~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, , , , )

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
	datad => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][0]~regout\);

-- Location: LC_X14_Y5_N3
\Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \Decoder0~6_combout\ = (!\wr_bar~combout\ & (\mem_a~combout\(2) & (!\mem_a~combout\(0) & \mem_a~combout\(1))))

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
	dataa => \wr_bar~combout\,
	datab => \mem_a~combout\(2),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~6_combout\);

-- Location: LC_X9_Y5_N2
\Decoder0~37\ : maxv_lcell
-- Equation(s):
-- \Decoder0~37_combout\ = (\Decoder0~6_combout\ & (!\mem_a~combout\(4) & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~37_combout\);

-- Location: LC_X10_Y4_N8
\RAM[14][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~17\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[14][0])) # (!\mem_a~combout\(1) & ((\RAM[12][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(0),
	datad => \RAM[12][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~17\,
	regout => \RAM[14][0]~regout\);

-- Location: LC_X14_Y5_N1
\Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \Decoder0~8_combout\ = (!\wr_bar~combout\ & (\mem_a~combout\(2) & (\mem_a~combout\(0) & !\mem_a~combout\(1))))

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
	dataa => \wr_bar~combout\,
	datab => \mem_a~combout\(2),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~8_combout\);

-- Location: LC_X12_Y7_N7
\Decoder0~36\ : maxv_lcell
-- Equation(s):
-- \Decoder0~36_combout\ = ((!\mem_a~combout\(4) & (\mem_a~combout\(3) & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~36_combout\);

-- Location: LC_X10_Y4_N4
\RAM[13][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~18\ = (\mem_a~combout\(0) & ((\Mux15~17\ & (\RAM[15][0]~regout\)) # (!\Mux15~17\ & ((RAM[13][0]))))) # (!\mem_a~combout\(0) & (((\Mux15~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[15][0]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(0),
	datad => \Mux15~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~18\,
	regout => \RAM[13][0]~regout\);

-- Location: LC_X6_Y9_N7
\Decoder0~35\ : maxv_lcell
-- Equation(s):
-- \Decoder0~35_combout\ = (!\mem_a~combout\(3) & (!\mem_a~combout\(4) & ((\Decoder0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(4),
	datad => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~35_combout\);

-- Location: LC_X5_Y6_N4
\RAM[3][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][0]~regout\ = DFFEAS((\mem_d~combout\(0)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, , , , )

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
	dataa => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][0]~regout\);

-- Location: LC_X8_Y8_N0
\Decoder0~34\ : maxv_lcell
-- Equation(s):
-- \Decoder0~34_combout\ = (!\mem_a~combout\(3) & (((!\mem_a~combout\(4) & \Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~34_combout\);

-- Location: LC_X5_Y8_N7
\RAM[0][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(0), , , VCC)

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
	datac => \mem_d~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][0]~regout\);

-- Location: LC_X10_Y10_N7
\Decoder0~33\ : maxv_lcell
-- Equation(s):
-- \Decoder0~33_combout\ = (!\mem_a~combout\(4) & (!\mem_a~combout\(3) & ((\Decoder0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_a~combout\(3),
	datad => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~33_combout\);

-- Location: LC_X5_Y8_N5
\RAM[1][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~14\ = (\mem_a~combout\(0) & (((RAM[1][0]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\RAM[0][0]~regout\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[0][0]~regout\,
	datac => \mem_d~combout\(0),
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~14\,
	regout => \RAM[1][0]~regout\);

-- Location: LC_X9_Y5_N4
\Decoder0~32\ : maxv_lcell
-- Equation(s):
-- \Decoder0~32_combout\ = ((!\mem_a~combout\(4) & (!\mem_a~combout\(3) & \Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~32_combout\);

-- Location: LC_X8_Y7_N4
\RAM[2][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~15\ = (\mem_a~combout\(1) & ((\Mux15~14\ & (\RAM[3][0]~regout\)) # (!\Mux15~14\ & ((RAM[2][0]))))) # (!\mem_a~combout\(1) & (((\Mux15~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[3][0]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(0),
	datad => \Mux15~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~15\,
	regout => \RAM[2][0]~regout\);

-- Location: LC_X8_Y6_N4
\Decoder0~31\ : maxv_lcell
-- Equation(s):
-- \Decoder0~31_combout\ = ((\Decoder0~14_combout\ & (!\mem_a~combout\(3) & !\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~14_combout\,
	datac => \mem_a~combout\(3),
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~31_combout\);

-- Location: LC_X7_Y4_N4
\RAM[7][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(0), , , VCC)

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
	datac => \mem_d~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][0]~regout\);

-- Location: LC_X11_Y8_N9
\Decoder0~30\ : maxv_lcell
-- Equation(s):
-- \Decoder0~30_combout\ = (!\mem_a~combout\(3) & (!\mem_a~combout\(4) & ((\Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(4),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~30_combout\);

-- Location: LC_X6_Y8_N9
\RAM[4][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, \mem_d~combout\(0), , , VCC)

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
	datac => \mem_d~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][0]~regout\);

-- Location: LC_X9_Y5_N8
\Decoder0~29\ : maxv_lcell
-- Equation(s):
-- \Decoder0~29_combout\ = (\Decoder0~6_combout\ & (!\mem_a~combout\(4) & (!\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~29_combout\);

-- Location: LC_X6_Y8_N0
\RAM[6][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~12\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[6][0])) # (!\mem_a~combout\(1) & ((\RAM[4][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(0),
	datad => \RAM[4][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~12\,
	regout => \RAM[6][0]~regout\);

-- Location: LC_X12_Y7_N1
\Decoder0~28\ : maxv_lcell
-- Equation(s):
-- \Decoder0~28_combout\ = ((!\mem_a~combout\(4) & (!\mem_a~combout\(3) & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~28_combout\);

-- Location: LC_X7_Y4_N0
\RAM[5][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~13\ = (\mem_a~combout\(0) & ((\Mux15~12\ & (\RAM[7][0]~regout\)) # (!\Mux15~12\ & ((RAM[5][0]))))) # (!\mem_a~combout\(0) & (((\Mux15~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[7][0]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(0),
	datad => \Mux15~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~13\,
	regout => \RAM[5][0]~regout\);

-- Location: LC_X8_Y7_N5
\Mux15~16\ : maxv_lcell
-- Equation(s):
-- \Mux15~16_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\Mux15~13\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & (\Mux15~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux15~15\,
	datad => \Mux15~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~16_combout\);

-- Location: LC_X8_Y7_N6
\Mux15~19\ : maxv_lcell
-- Equation(s):
-- \Mux15~19_combout\ = (\mem_a~combout\(3) & ((\Mux15~16_combout\ & ((\Mux15~18\))) # (!\Mux15~16_combout\ & (\Mux15~11\)))) # (!\mem_a~combout\(3) & (((\Mux15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux15~11\,
	datac => \Mux15~18\,
	datad => \Mux15~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~19_combout\);

-- Location: LC_X8_Y6_N7
\Decoder0~23\ : maxv_lcell
-- Equation(s):
-- \Decoder0~23_combout\ = ((\Decoder0~14_combout\ & (\mem_a~combout\(3) & \mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~14_combout\,
	datac => \mem_a~combout\(3),
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~23_combout\);

-- Location: LC_X4_Y4_N3
\RAM[31][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][0]~regout\ = DFFEAS(((\mem_d~combout\(0))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datab => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][0]~regout\);

-- Location: LC_X12_Y10_N7
\Decoder0~22\ : maxv_lcell
-- Equation(s):
-- \Decoder0~22_combout\ = (\Decoder0~12_combout\ & (\mem_a~combout\(3) & (\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~22_combout\);

-- Location: LC_X3_Y8_N6
\RAM[25][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[25][0]~regout\ = DFFEAS((((\mem_d~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~22_combout\, , , , )

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
	datad => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[25][0]~regout\);

-- Location: LC_X6_Y9_N8
\Decoder0~21\ : maxv_lcell
-- Equation(s):
-- \Decoder0~21_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(4) & ((\Decoder0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(4),
	datad => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~21_combout\);

-- Location: LC_X3_Y7_N3
\RAM[27][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~7\ = (\mem_a~combout\(1) & ((\mem_a~combout\(2)) # ((RAM[27][0])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(2) & ((\RAM[25][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(0),
	datad => \RAM[25][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~7\,
	regout => \RAM[27][0]~regout\);

-- Location: LC_X14_Y5_N9
\Decoder0~20\ : maxv_lcell
-- Equation(s):
-- \Decoder0~20_combout\ = ((\mem_a~combout\(4) & (\mem_a~combout\(3) & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~20_combout\);

-- Location: LC_X3_Y7_N6
\RAM[29][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~8\ = (\mem_a~combout\(2) & ((\Mux15~7\ & (\RAM[31][0]~regout\)) # (!\Mux15~7\ & ((RAM[29][0]))))) # (!\mem_a~combout\(2) & (((\Mux15~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[31][0]~regout\,
	datac => \mem_d~combout\(0),
	datad => \Mux15~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~8\,
	regout => \RAM[29][0]~regout\);

-- Location: LC_X14_Y5_N4
\Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \Decoder0~7_combout\ = ((\mem_a~combout\(4) & (\Decoder0~6_combout\ & \mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \Decoder0~6_combout\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~7_combout\);

-- Location: LC_X5_Y6_N3
\RAM[30][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][0]~regout\ = DFFEAS((\mem_d~combout\(0)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, , , , )

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
	dataa => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][0]~regout\);

-- Location: LC_X8_Y8_N1
\Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \Decoder0~5_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(4) & \Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~5_combout\);

-- Location: LC_X9_Y4_N9
\RAM[24][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[24][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~5_combout\, \mem_d~combout\(0), , , VCC)

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
	datac => \mem_d~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[24][0]~regout\);

-- Location: LC_X15_Y7_N3
\Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(4) & \Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3_combout\);

-- Location: LC_X9_Y4_N6
\RAM[26][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~0\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[26][0])) # (!\mem_a~combout\(1) & ((\RAM[24][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(0),
	datad => \RAM[24][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~0\,
	regout => \RAM[26][0]~regout\);

-- Location: LC_X11_Y8_N8
\Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(4) & ((\Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(4),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1_combout\);

-- Location: LC_X8_Y6_N2
\RAM[28][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~1\ = (\mem_a~combout\(2) & ((\Mux15~0\ & (\RAM[30][0]~regout\)) # (!\Mux15~0\ & ((RAM[28][0]))))) # (!\mem_a~combout\(2) & (((\Mux15~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[30][0]~regout\,
	datac => \mem_d~combout\(0),
	datad => \Mux15~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~1\,
	regout => \RAM[28][0]~regout\);

-- Location: LC_X9_Y5_N6
\Decoder0~19\ : maxv_lcell
-- Equation(s):
-- \Decoder0~19_combout\ = (\Decoder0~6_combout\ & (\mem_a~combout\(4) & (!\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~19_combout\);

-- Location: LC_X12_Y9_N0
\RAM[22][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[22][0]~regout\ = DFFEAS((((\mem_d~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~19_combout\, , , , )

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
	datad => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[22][0]~regout\);

-- Location: LC_X9_Y7_N6
\Decoder0~18\ : maxv_lcell
-- Equation(s):
-- \Decoder0~18_combout\ = ((\Decoder0~4_combout\ & (\mem_a~combout\(4) & !\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~4_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~18_combout\);

-- Location: LC_X13_Y6_N9
\RAM[16][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][0]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, \mem_d~combout\(0), , , VCC)

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
	datac => \mem_d~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][0]~regout\);

-- Location: LC_X15_Y7_N6
\Decoder0~17\ : maxv_lcell
-- Equation(s):
-- \Decoder0~17_combout\ = (!\mem_a~combout\(3) & (((\mem_a~combout\(4) & \Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~17_combout\);

-- Location: LC_X13_Y6_N8
\RAM[18][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~4\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[18][0])) # (!\mem_a~combout\(1) & ((\RAM[16][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(0),
	datad => \RAM[16][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~4\,
	regout => \RAM[18][0]~regout\);

-- Location: LC_X11_Y8_N5
\Decoder0~16\ : maxv_lcell
-- Equation(s):
-- \Decoder0~16_combout\ = (!\mem_a~combout\(3) & (\mem_a~combout\(4) & ((\Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(4),
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~16_combout\);

-- Location: LC_X13_Y7_N4
\RAM[20][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~5\ = (\mem_a~combout\(2) & ((\Mux15~4\ & (\RAM[22][0]~regout\)) # (!\Mux15~4\ & ((RAM[20][0]))))) # (!\mem_a~combout\(2) & (((\Mux15~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[22][0]~regout\,
	datac => \mem_d~combout\(0),
	datad => \Mux15~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~5\,
	regout => \RAM[20][0]~regout\);

-- Location: LC_X12_Y7_N4
\Decoder0~15\ : maxv_lcell
-- Equation(s):
-- \Decoder0~15_combout\ = ((\Decoder0~14_combout\ & (!\mem_a~combout\(3) & \mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~14_combout\,
	datac => \mem_a~combout\(3),
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~15_combout\);

-- Location: LC_X14_Y5_N6
\RAM[23][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[23][0]~regout\ = DFFEAS((((\mem_d~combout\(0)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~15_combout\, , , , )

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
	datad => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[23][0]~regout\);

-- Location: LC_X10_Y10_N8
\Decoder0~13\ : maxv_lcell
-- Equation(s):
-- \Decoder0~13_combout\ = (\mem_a~combout\(4) & (!\mem_a~combout\(3) & ((\Decoder0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_a~combout\(3),
	datad => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~13_combout\);

-- Location: LC_X13_Y8_N0
\RAM[17][0]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][0]~regout\ = DFFEAS(((\mem_d~combout\(0))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, , , , )

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
	datab => \mem_d~combout\(0),
	aclr => \rst~combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][0]~regout\);

-- Location: LC_X8_Y9_N6
\Decoder0~11\ : maxv_lcell
-- Equation(s):
-- \Decoder0~11_combout\ = (\Decoder0~10_combout\ & (!\mem_a~combout\(3) & (\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~10_combout\,
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~11_combout\);

-- Location: LC_X14_Y7_N8
\RAM[19][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~2\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[19][0])) # (!\mem_a~combout\(1) & ((\RAM[17][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(0),
	datad => \RAM[17][0]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~2\,
	regout => \RAM[19][0]~regout\);

-- Location: LC_X14_Y5_N8
\Decoder0~9\ : maxv_lcell
-- Equation(s):
-- \Decoder0~9_combout\ = ((\mem_a~combout\(4) & (!\mem_a~combout\(3) & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \mem_a~combout\(4),
	datac => \mem_a~combout\(3),
	datad => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~9_combout\);

-- Location: LC_X14_Y7_N9
\RAM[21][0]\ : maxv_lcell
-- Equation(s):
-- \Mux15~3\ = (\mem_a~combout\(2) & ((\Mux15~2\ & (\RAM[23][0]~regout\)) # (!\Mux15~2\ & ((RAM[21][0]))))) # (!\mem_a~combout\(2) & (((\Mux15~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[23][0]~regout\,
	datac => \mem_d~combout\(0),
	datad => \Mux15~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~3\,
	regout => \RAM[21][0]~regout\);

-- Location: LC_X8_Y7_N0
\Mux15~6\ : maxv_lcell
-- Equation(s):
-- \Mux15~6_combout\ = (\mem_a~combout\(0) & ((\mem_a~combout\(3)) # ((\Mux15~3\)))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(3) & (\Mux15~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(3),
	datac => \Mux15~5\,
	datad => \Mux15~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~6_combout\);

-- Location: LC_X8_Y7_N1
\Mux15~9\ : maxv_lcell
-- Equation(s):
-- \Mux15~9_combout\ = (\mem_a~combout\(3) & ((\Mux15~6_combout\ & (\Mux15~8\)) # (!\Mux15~6_combout\ & ((\Mux15~1\))))) # (!\mem_a~combout\(3) & (((\Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux15~8\,
	datac => \Mux15~1\,
	datad => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~9_combout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rd_bar~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rd_bar,
	combout => \rd_bar~combout\);

-- Location: LC_X8_Y8_N2
\mem_out[0]~0\ : maxv_lcell
-- Equation(s):
-- \mem_out[0]~0_combout\ = (!\rd_bar~combout\ & (!\rst~combout\ & ((\wr_bar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rd_bar~combout\,
	datab => \rst~combout\,
	datad => \wr_bar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out[0]~0_combout\);

-- Location: LC_X8_Y7_N2
\mem_out[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[0]~reg0_regout\ = DFFEAS((\mem_a~combout\(4) & (((\Mux15~9_combout\)))) # (!\mem_a~combout\(4) & (((\Mux15~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(4),
	datac => \Mux15~19_combout\,
	datad => \Mux15~9_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[0]~reg0_regout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(1),
	combout => \mem_d~combout\(1));

-- Location: LC_X13_Y10_N7
\RAM[31][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][1]~regout\ = DFFEAS((((\mem_d~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(1),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][1]~regout\);

-- Location: LC_X13_Y7_N0
\RAM[28][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][1]~regout\ = DFFEAS((((\mem_d~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, , , , )

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
	datad => \mem_d~combout\(1),
	aclr => \rst~combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][1]~regout\);

-- Location: LC_X14_Y8_N3
\RAM[29][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~7\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[29][1])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[28][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(1),
	datad => \RAM[28][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~7\,
	regout => \RAM[29][1]~regout\);

-- Location: LC_X14_Y8_N4
\RAM[30][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~8\ = (\mem_a~combout\(1) & ((\Mux14~7\ & (\RAM[31][1]~regout\)) # (!\Mux14~7\ & ((RAM[30][1]))))) # (!\mem_a~combout\(1) & (((\Mux14~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[31][1]~regout\,
	datac => \mem_d~combout\(1),
	datad => \Mux14~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~8\,
	regout => \RAM[30][1]~regout\);

-- Location: LC_X13_Y4_N7
\RAM[27][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[27][1]~regout\ = DFFEAS((((\mem_d~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~21_combout\, , , , )

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
	datad => \mem_d~combout\(1),
	aclr => \rst~combout\,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[27][1]~regout\);

-- Location: LC_X14_Y9_N2
\RAM[24][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[24][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~5_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[24][1]~regout\);

-- Location: LC_X14_Y9_N9
\RAM[25][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~0\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[25][1])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[24][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(1),
	datad => \RAM[24][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~0\,
	regout => \RAM[25][1]~regout\);

-- Location: LC_X9_Y4_N5
\RAM[26][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~1\ = (\mem_a~combout\(1) & ((\Mux14~0\ & (\RAM[27][1]~regout\)) # (!\Mux14~0\ & ((RAM[26][1]))))) # (!\mem_a~combout\(1) & (((\Mux14~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[27][1]~regout\,
	datac => \mem_d~combout\(1),
	datad => \Mux14~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~1\,
	regout => \RAM[26][1]~regout\);

-- Location: LC_X15_Y8_N8
\RAM[23][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[23][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~15_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[23][1]~regout\);

-- Location: LC_X13_Y7_N2
\RAM[20][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[20][1]~regout\ = DFFEAS((((\mem_d~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~16_combout\, , , , )

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
	datad => \mem_d~combout\(1),
	aclr => \rst~combout\,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[20][1]~regout\);

-- Location: LC_X14_Y7_N0
\RAM[21][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~2\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[21][1])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[20][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(1),
	datad => \RAM[20][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~2\,
	regout => \RAM[21][1]~regout\);

-- Location: LC_X15_Y8_N4
\RAM[22][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~3\ = (\mem_a~combout\(1) & ((\Mux14~2\ & (\RAM[23][1]~regout\)) # (!\Mux14~2\ & ((RAM[22][1]))))) # (!\mem_a~combout\(1) & (((\Mux14~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[23][1]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(1),
	datad => \Mux14~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~3\,
	regout => \RAM[22][1]~regout\);

-- Location: LC_X13_Y9_N2
\RAM[19][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][1]~regout\);

-- Location: LC_X13_Y5_N1
\RAM[16][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][1]~regout\);

-- Location: LC_X13_Y5_N7
\RAM[17][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~4\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[17][1])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[16][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(1),
	datad => \RAM[16][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~4\,
	regout => \RAM[17][1]~regout\);

-- Location: LC_X13_Y9_N9
\RAM[18][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~5\ = (\mem_a~combout\(1) & ((\Mux14~4\ & (\RAM[19][1]~regout\)) # (!\Mux14~4\ & ((RAM[18][1]))))) # (!\mem_a~combout\(1) & (((\Mux14~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[19][1]~regout\,
	datac => \mem_d~combout\(1),
	datad => \Mux14~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~5\,
	regout => \RAM[18][1]~regout\);

-- Location: LC_X10_Y8_N9
\Mux14~6\ : maxv_lcell
-- Equation(s):
-- \Mux14~6_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\Mux14~3\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\Mux14~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux14~3\,
	datad => \Mux14~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~6_combout\);

-- Location: LC_X10_Y8_N6
\Mux14~9\ : maxv_lcell
-- Equation(s):
-- \Mux14~9_combout\ = (\mem_a~combout\(3) & ((\Mux14~6_combout\ & (\Mux14~8\)) # (!\Mux14~6_combout\ & ((\Mux14~1\))))) # (!\mem_a~combout\(3) & (((\Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux14~8\,
	datac => \Mux14~1\,
	datad => \Mux14~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~9_combout\);

-- Location: LC_X11_Y10_N0
\RAM[15][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][1]~regout\);

-- Location: LC_X12_Y10_N8
\RAM[10][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[10][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~24_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[10][1]~regout\);

-- Location: LC_X12_Y10_N1
\RAM[14][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~17\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((RAM[14][1])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\RAM[10][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(1),
	datad => \RAM[10][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~17\,
	regout => \RAM[14][1]~regout\);

-- Location: LC_X11_Y10_N6
\RAM[11][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~18\ = (\mem_a~combout\(0) & ((\Mux14~17\ & (\RAM[15][1]~regout\)) # (!\Mux14~17\ & ((RAM[11][1]))))) # (!\mem_a~combout\(0) & (((\Mux14~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[15][1]~regout\,
	datac => \mem_d~combout\(1),
	datad => \Mux14~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~18\,
	regout => \RAM[11][1]~regout\);

-- Location: LC_X10_Y9_N5
\RAM[13][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[13][1]~regout\ = DFFEAS((((\mem_d~combout\(1)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~36_combout\, , , , )

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
	datad => \mem_d~combout\(1),
	aclr => \rst~combout\,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[13][1]~regout\);

-- Location: LC_X9_Y10_N5
\RAM[8][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][1]~regout\ = DFFEAS(((\mem_d~combout\(1))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, , , , )

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
	datab => \mem_d~combout\(1),
	aclr => \rst~combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][1]~regout\);

-- Location: LC_X10_Y10_N5
\RAM[9][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~10\ = (\mem_a~combout\(2) & (\mem_a~combout\(0))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(0) & (RAM[9][1])) # (!\mem_a~combout\(0) & ((\RAM[8][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(1),
	datad => \RAM[8][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~10\,
	regout => \RAM[9][1]~regout\);

-- Location: LC_X10_Y10_N6
\RAM[12][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~11\ = (\mem_a~combout\(2) & ((\Mux14~10\ & (\RAM[13][1]~regout\)) # (!\Mux14~10\ & ((RAM[12][1]))))) # (!\mem_a~combout\(2) & (((\Mux14~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[13][1]~regout\,
	datac => \mem_d~combout\(1),
	datad => \Mux14~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~11\,
	regout => \RAM[12][1]~regout\);

-- Location: LC_X5_Y9_N3
\RAM[5][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[5][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~28_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[5][1]~regout\);

-- Location: LC_X5_Y8_N4
\RAM[0][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][1]~regout\);

-- Location: LC_X6_Y8_N1
\RAM[4][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~14\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (RAM[4][1])) # (!\mem_a~combout\(2) & ((\RAM[0][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(1),
	datad => \RAM[0][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~14\,
	regout => \RAM[4][1]~regout\);

-- Location: LC_X5_Y8_N3
\RAM[1][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~15\ = (\mem_a~combout\(0) & ((\Mux14~14\ & (\RAM[5][1]~regout\)) # (!\Mux14~14\ & ((RAM[1][1]))))) # (!\mem_a~combout\(0) & (((\Mux14~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[5][1]~regout\,
	datac => \mem_d~combout\(1),
	datad => \Mux14~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~15\,
	regout => \RAM[1][1]~regout\);

-- Location: LC_X4_Y8_N2
\RAM[7][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][1]~regout\);

-- Location: LC_X3_Y6_N9
\RAM[2][1]\ : maxv_lcell
-- Equation(s):
-- \RAM[2][1]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~32_combout\, \mem_d~combout\(1), , , VCC)

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
	datac => \mem_d~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[2][1]~regout\);

-- Location: LC_X3_Y6_N2
\RAM[6][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~12\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((RAM[6][1])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\RAM[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(1),
	datad => \RAM[2][1]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~12\,
	regout => \RAM[6][1]~regout\);

-- Location: LC_X4_Y8_N3
\RAM[3][1]\ : maxv_lcell
-- Equation(s):
-- \Mux14~13\ = (\mem_a~combout\(0) & ((\Mux14~12\ & (\RAM[7][1]~regout\)) # (!\Mux14~12\ & ((RAM[3][1]))))) # (!\mem_a~combout\(0) & (((\Mux14~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[7][1]~regout\,
	datac => \mem_d~combout\(1),
	datad => \Mux14~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~13\,
	regout => \RAM[3][1]~regout\);

-- Location: LC_X4_Y8_N4
\Mux14~16\ : maxv_lcell
-- Equation(s):
-- \Mux14~16_combout\ = (\mem_a~combout\(1) & ((\mem_a~combout\(3)) # ((\Mux14~13\)))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(3) & (\Mux14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(3),
	datac => \Mux14~15\,
	datad => \Mux14~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~16_combout\);

-- Location: LC_X10_Y8_N7
\Mux14~19\ : maxv_lcell
-- Equation(s):
-- \Mux14~19_combout\ = (\mem_a~combout\(3) & ((\Mux14~16_combout\ & (\Mux14~18\)) # (!\Mux14~16_combout\ & ((\Mux14~11\))))) # (!\mem_a~combout\(3) & (((\Mux14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux14~18\,
	datac => \Mux14~11\,
	datad => \Mux14~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~19_combout\);

-- Location: LC_X10_Y8_N8
\mem_out[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[1]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & (\Mux14~9_combout\)) # (!\mem_a~combout\(4) & ((\Mux14~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux14~9_combout\,
	datad => \Mux14~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[1]~reg0_regout\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(2),
	combout => \mem_d~combout\(2));

-- Location: LC_X11_Y9_N5
\RAM[15][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][2]~regout\ = DFFEAS((((\mem_d~combout\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, , , , )

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
	datad => \mem_d~combout\(2),
	aclr => \rst~combout\,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][2]~regout\);

-- Location: LC_X10_Y10_N0
\RAM[9][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[9][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~25_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[9][2]~regout\);

-- Location: LC_X11_Y8_N2
\RAM[11][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~17\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[11][2])) # (!\mem_a~combout\(1) & ((\RAM[9][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(2),
	datad => \RAM[9][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~17\,
	regout => \RAM[11][2]~regout\);

-- Location: LC_X11_Y8_N3
\RAM[13][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~18\ = (\mem_a~combout\(2) & ((\Mux13~17\ & (\RAM[15][2]~regout\)) # (!\Mux13~17\ & ((RAM[13][2]))))) # (!\mem_a~combout\(2) & (((\Mux13~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[15][2]~regout\,
	datac => \mem_d~combout\(2),
	datad => \Mux13~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~18\,
	regout => \RAM[13][2]~regout\);

-- Location: LC_X11_Y9_N0
\RAM[14][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[14][2]~regout\ = DFFEAS((((\mem_d~combout\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~37_combout\, , , , )

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
	datad => \mem_d~combout\(2),
	aclr => \rst~combout\,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[14][2]~regout\);

-- Location: LC_X9_Y8_N9
\RAM[8][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][2]~regout\ = DFFEAS((((\mem_d~combout\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, , , , )

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
	datad => \mem_d~combout\(2),
	aclr => \rst~combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][2]~regout\);

-- Location: LC_X12_Y6_N9
\RAM[10][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~10\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[10][2])) # (!\mem_a~combout\(1) & ((\RAM[8][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(2),
	datad => \RAM[8][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~10\,
	regout => \RAM[10][2]~regout\);

-- Location: LC_X12_Y6_N0
\RAM[12][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~11\ = (\mem_a~combout\(2) & ((\Mux13~10\ & (\RAM[14][2]~regout\)) # (!\Mux13~10\ & ((RAM[12][2]))))) # (!\mem_a~combout\(2) & (((\Mux13~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[14][2]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(2),
	datad => \Mux13~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~11\,
	regout => \RAM[12][2]~regout\);

-- Location: LC_X8_Y9_N9
\RAM[7][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][2]~regout\);

-- Location: LC_X8_Y9_N8
\RAM[1][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[1][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~33_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[1][2]~regout\);

-- Location: LC_X7_Y9_N8
\RAM[3][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~12\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[3][2])) # (!\mem_a~combout\(1) & ((\RAM[1][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(2),
	datad => \RAM[1][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~12\,
	regout => \RAM[3][2]~regout\);

-- Location: LC_X7_Y9_N9
\RAM[5][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~13\ = (\mem_a~combout\(2) & ((\Mux13~12\ & (\RAM[7][2]~regout\)) # (!\Mux13~12\ & ((RAM[5][2]))))) # (!\mem_a~combout\(2) & (((\Mux13~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[7][2]~regout\,
	datac => \mem_d~combout\(2),
	datad => \Mux13~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~13\,
	regout => \RAM[5][2]~regout\);

-- Location: LC_X9_Y5_N5
\RAM[6][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[6][2]~regout\ = DFFEAS((\mem_d~combout\(2)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~29_combout\, , , , )

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
	dataa => \mem_d~combout\(2),
	aclr => \rst~combout\,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[6][2]~regout\);

-- Location: LC_X6_Y6_N2
\RAM[0][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][2]~regout\ = DFFEAS((((\mem_d~combout\(2)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, , , , )

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
	datad => \mem_d~combout\(2),
	aclr => \rst~combout\,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][2]~regout\);

-- Location: LC_X6_Y6_N4
\RAM[2][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~14\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[2][2])) # (!\mem_a~combout\(1) & ((\RAM[0][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(2),
	datad => \RAM[0][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~14\,
	regout => \RAM[2][2]~regout\);

-- Location: LC_X11_Y6_N2
\RAM[4][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~15\ = (\mem_a~combout\(2) & ((\Mux13~14\ & (\RAM[6][2]~regout\)) # (!\Mux13~14\ & ((RAM[4][2]))))) # (!\mem_a~combout\(2) & (((\Mux13~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[6][2]~regout\,
	datac => \mem_d~combout\(2),
	datad => \Mux13~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~15\,
	regout => \RAM[4][2]~regout\);

-- Location: LC_X11_Y6_N3
\Mux13~16\ : maxv_lcell
-- Equation(s):
-- \Mux13~16_combout\ = (\mem_a~combout\(0) & ((\mem_a~combout\(3)) # ((\Mux13~13\)))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(3) & ((\Mux13~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(3),
	datac => \Mux13~13\,
	datad => \Mux13~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~16_combout\);

-- Location: LC_X11_Y6_N7
\Mux13~19\ : maxv_lcell
-- Equation(s):
-- \Mux13~19_combout\ = (\mem_a~combout\(3) & ((\Mux13~16_combout\ & (\Mux13~18\)) # (!\Mux13~16_combout\ & ((\Mux13~11\))))) # (!\mem_a~combout\(3) & (((\Mux13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux13~18\,
	datac => \Mux13~11\,
	datad => \Mux13~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~19_combout\);

-- Location: LC_X14_Y5_N0
\RAM[31][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][2]~regout\);

-- Location: LC_X15_Y7_N5
\RAM[26][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[26][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~3_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[26][2]~regout\);

-- Location: LC_X15_Y6_N1
\RAM[30][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((RAM[30][2])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\RAM[26][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(2),
	datad => \RAM[26][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~7\,
	regout => \RAM[30][2]~regout\);

-- Location: LC_X15_Y6_N2
\RAM[27][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~8\ = (\mem_a~combout\(0) & ((\Mux13~7\ & (\RAM[31][2]~regout\)) # (!\Mux13~7\ & ((RAM[27][2]))))) # (!\mem_a~combout\(0) & (((\Mux13~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][2]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(2),
	datad => \Mux13~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~8\,
	regout => \RAM[27][2]~regout\);

-- Location: LC_X9_Y9_N5
\RAM[21][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[21][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~9_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[21][2]~regout\);

-- Location: LC_X13_Y6_N3
\RAM[16][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][2]~regout\);

-- Location: LC_X10_Y6_N3
\RAM[20][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~4\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (RAM[20][2])) # (!\mem_a~combout\(2) & ((\RAM[16][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(2),
	datad => \RAM[16][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~4\,
	regout => \RAM[20][2]~regout\);

-- Location: LC_X10_Y6_N4
\RAM[17][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~5\ = (\mem_a~combout\(0) & ((\Mux13~4\ & (\RAM[21][2]~regout\)) # (!\Mux13~4\ & ((RAM[17][2]))))) # (!\mem_a~combout\(0) & (((\Mux13~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[21][2]~regout\,
	datac => \mem_d~combout\(2),
	datad => \Mux13~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~5\,
	regout => \RAM[17][2]~regout\);

-- Location: LC_X15_Y8_N6
\RAM[23][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[23][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~15_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[23][2]~regout\);

-- Location: LC_X13_Y6_N7
\RAM[18][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][2]~regout\);

-- Location: LC_X14_Y6_N6
\RAM[22][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~2\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (RAM[22][2])) # (!\mem_a~combout\(2) & ((\RAM[18][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(2),
	datad => \RAM[18][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~2\,
	regout => \RAM[22][2]~regout\);

-- Location: LC_X14_Y6_N7
\RAM[19][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~3\ = (\mem_a~combout\(0) & ((\Mux13~2\ & (\RAM[23][2]~regout\)) # (!\Mux13~2\ & ((RAM[19][2]))))) # (!\mem_a~combout\(0) & (((\Mux13~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[23][2]~regout\,
	datac => \mem_d~combout\(2),
	datad => \Mux13~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~3\,
	regout => \RAM[19][2]~regout\);

-- Location: LC_X10_Y6_N9
\Mux13~6\ : maxv_lcell
-- Equation(s):
-- \Mux13~6_combout\ = (\mem_a~combout\(1) & ((\mem_a~combout\(3)) # ((\Mux13~3\)))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(3) & (\Mux13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(3),
	datac => \Mux13~5\,
	datad => \Mux13~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~6_combout\);

-- Location: LC_X7_Y8_N9
\RAM[29][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][2]~regout\);

-- Location: LC_X8_Y6_N9
\RAM[24][2]\ : maxv_lcell
-- Equation(s):
-- \RAM[24][2]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~5_combout\, \mem_d~combout\(2), , , VCC)

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
	datac => \mem_d~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[24][2]~regout\);

-- Location: LC_X8_Y6_N8
\RAM[28][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~0\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((RAM[28][2])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\RAM[24][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(2),
	datad => \RAM[24][2]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~0\,
	regout => \RAM[28][2]~regout\);

-- Location: LC_X7_Y8_N5
\RAM[25][2]\ : maxv_lcell
-- Equation(s):
-- \Mux13~1\ = (\mem_a~combout\(0) & ((\Mux13~0\ & (\RAM[29][2]~regout\)) # (!\Mux13~0\ & ((RAM[25][2]))))) # (!\mem_a~combout\(0) & (((\Mux13~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[29][2]~regout\,
	datac => \mem_d~combout\(2),
	datad => \Mux13~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~1\,
	regout => \RAM[25][2]~regout\);

-- Location: LC_X11_Y6_N9
\Mux13~9\ : maxv_lcell
-- Equation(s):
-- \Mux13~9_combout\ = (\mem_a~combout\(3) & ((\Mux13~6_combout\ & (\Mux13~8\)) # (!\Mux13~6_combout\ & ((\Mux13~1\))))) # (!\mem_a~combout\(3) & (((\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~8\,
	datab => \mem_a~combout\(3),
	datac => \Mux13~6_combout\,
	datad => \Mux13~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~9_combout\);

-- Location: LC_X11_Y6_N5
\mem_out[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[2]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & ((\Mux13~9_combout\))) # (!\mem_a~combout\(4) & (\Mux13~19_combout\))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux13~19_combout\,
	datad => \Mux13~9_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[2]~reg0_regout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(3),
	combout => \mem_d~combout\(3));

-- Location: LC_X2_Y7_N0
\RAM[31][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][3]~regout\);

-- Location: LC_X2_Y7_N4
\RAM[25][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[25][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~22_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[25][3]~regout\);

-- Location: LC_X3_Y7_N4
\RAM[27][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~7\ = (\mem_a~combout\(1) & ((\mem_a~combout\(2)) # ((RAM[27][3])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(2) & ((\RAM[25][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(3),
	datad => \RAM[25][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~7\,
	regout => \RAM[27][3]~regout\);

-- Location: LC_X3_Y7_N5
\RAM[29][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~8\ = (\mem_a~combout\(2) & ((\Mux12~7\ & (\RAM[31][3]~regout\)) # (!\Mux12~7\ & ((RAM[29][3]))))) # (!\mem_a~combout\(2) & (((\Mux12~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][3]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(3),
	datad => \Mux12~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~8\,
	regout => \RAM[29][3]~regout\);

-- Location: LC_X2_Y6_N8
\RAM[30][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][3]~regout\);

-- Location: LC_X9_Y4_N8
\RAM[24][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[24][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~5_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[24][3]~regout\);

-- Location: LC_X9_Y4_N7
\RAM[26][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~0\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[26][3])) # (!\mem_a~combout\(1) & ((\RAM[24][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(3),
	datad => \RAM[24][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0\,
	regout => \RAM[26][3]~regout\);

-- Location: LC_X8_Y6_N6
\RAM[28][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~1\ = (\mem_a~combout\(2) & ((\Mux12~0\ & (\RAM[30][3]~regout\)) # (!\Mux12~0\ & ((RAM[28][3]))))) # (!\mem_a~combout\(2) & (((\Mux12~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[30][3]~regout\,
	datac => \mem_d~combout\(3),
	datad => \Mux12~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~1\,
	regout => \RAM[28][3]~regout\);

-- Location: LC_X14_Y6_N4
\RAM[22][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[22][3]~regout\ = DFFEAS((((\mem_d~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~19_combout\, , , , )

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
	datad => \mem_d~combout\(3),
	aclr => \rst~combout\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[22][3]~regout\);

-- Location: LC_X13_Y6_N1
\RAM[16][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][3]~regout\ = DFFEAS((((\mem_d~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, , , , )

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
	datad => \mem_d~combout\(3),
	aclr => \rst~combout\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][3]~regout\);

-- Location: LC_X13_Y6_N2
\RAM[18][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~4\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[18][3])) # (!\mem_a~combout\(1) & ((\RAM[16][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(3),
	datad => \RAM[16][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~4\,
	regout => \RAM[18][3]~regout\);

-- Location: LC_X10_Y6_N0
\RAM[20][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~5\ = (\mem_a~combout\(2) & ((\Mux12~4\ & (\RAM[22][3]~regout\)) # (!\Mux12~4\ & ((RAM[20][3]))))) # (!\mem_a~combout\(2) & (((\Mux12~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[22][3]~regout\,
	datac => \mem_d~combout\(3),
	datad => \Mux12~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~5\,
	regout => \RAM[20][3]~regout\);

-- Location: LC_X14_Y5_N5
\RAM[23][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[23][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~15_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[23][3]~regout\);

-- Location: LC_X13_Y5_N0
\RAM[17][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][3]~regout\ = DFFEAS((((\mem_d~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, , , , )

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
	datad => \mem_d~combout\(3),
	aclr => \rst~combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][3]~regout\);

-- Location: LC_X14_Y7_N6
\RAM[19][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~2\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[19][3])) # (!\mem_a~combout\(1) & ((\RAM[17][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(3),
	datad => \RAM[17][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~2\,
	regout => \RAM[19][3]~regout\);

-- Location: LC_X14_Y7_N7
\RAM[21][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~3\ = (\mem_a~combout\(2) & ((\Mux12~2\ & (\RAM[23][3]~regout\)) # (!\Mux12~2\ & ((RAM[21][3]))))) # (!\mem_a~combout\(2) & (((\Mux12~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[23][3]~regout\,
	datac => \mem_d~combout\(3),
	datad => \Mux12~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~3\,
	regout => \RAM[21][3]~regout\);

-- Location: LC_X9_Y6_N3
\Mux12~6\ : maxv_lcell
-- Equation(s):
-- \Mux12~6_combout\ = (\mem_a~combout\(0) & ((\mem_a~combout\(3)) # ((\Mux12~3\)))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(3) & (\Mux12~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(3),
	datac => \Mux12~5\,
	datad => \Mux12~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~6_combout\);

-- Location: LC_X9_Y6_N4
\Mux12~9\ : maxv_lcell
-- Equation(s):
-- \Mux12~9_combout\ = (\mem_a~combout\(3) & ((\Mux12~6_combout\ & (\Mux12~8\)) # (!\Mux12~6_combout\ & ((\Mux12~1\))))) # (!\mem_a~combout\(3) & (((\Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~8\,
	datab => \mem_a~combout\(3),
	datac => \Mux12~1\,
	datad => \Mux12~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~9_combout\);

-- Location: LC_X4_Y10_N4
\RAM[11][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][3]~regout\);

-- Location: LC_X4_Y10_N7
\RAM[8][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][3]~regout\);

-- Location: LC_X5_Y10_N6
\RAM[9][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~10\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[9][3])) # (!\mem_a~combout\(0) & ((\RAM[8][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(3),
	datad => \RAM[8][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~10\,
	regout => \RAM[9][3]~regout\);

-- Location: LC_X5_Y10_N7
\RAM[10][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~11\ = (\mem_a~combout\(1) & ((\Mux12~10\ & (\RAM[11][3]~regout\)) # (!\Mux12~10\ & ((RAM[10][3]))))) # (!\mem_a~combout\(1) & (((\Mux12~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[11][3]~regout\,
	datac => \mem_d~combout\(3),
	datad => \Mux12~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~11\,
	regout => \RAM[10][3]~regout\);

-- Location: LC_X12_Y7_N6
\RAM[15][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][3]~regout\ = DFFEAS((((\mem_d~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, , , , )

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
	datad => \mem_d~combout\(3),
	aclr => \rst~combout\,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][3]~regout\);

-- Location: LC_X12_Y6_N5
\RAM[12][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][3]~regout\);

-- Location: LC_X11_Y7_N6
\RAM[13][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~17\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[13][3])) # (!\mem_a~combout\(0) & ((\RAM[12][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(3),
	datad => \RAM[12][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~17\,
	regout => \RAM[13][3]~regout\);

-- Location: LC_X11_Y7_N7
\RAM[14][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~18\ = (\mem_a~combout\(1) & ((\Mux12~17\ & (\RAM[15][3]~regout\)) # (!\Mux12~17\ & ((RAM[14][3]))))) # (!\mem_a~combout\(1) & (((\Mux12~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[15][3]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(3),
	datad => \Mux12~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~18\,
	regout => \RAM[14][3]~regout\);

-- Location: LC_X7_Y4_N9
\RAM[7][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][3]~regout\ = DFFEAS((((\mem_d~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, , , , )

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
	datad => \mem_d~combout\(3),
	aclr => \rst~combout\,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][3]~regout\);

-- Location: LC_X8_Y4_N9
\RAM[4][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][3]~regout\ = DFFEAS((((\mem_d~combout\(3)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, , , , )

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
	datad => \mem_d~combout\(3),
	aclr => \rst~combout\,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][3]~regout\);

-- Location: LC_X6_Y4_N3
\RAM[5][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~12\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[5][3])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(3),
	datad => \RAM[4][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~12\,
	regout => \RAM[5][3]~regout\);

-- Location: LC_X6_Y4_N4
\RAM[6][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~13\ = (\mem_a~combout\(1) & ((\Mux12~12\ & (\RAM[7][3]~regout\)) # (!\Mux12~12\ & ((RAM[6][3]))))) # (!\mem_a~combout\(1) & (((\Mux12~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[7][3]~regout\,
	datac => \mem_d~combout\(3),
	datad => \Mux12~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~13\,
	regout => \RAM[6][3]~regout\);

-- Location: LC_X4_Y6_N2
\RAM[3][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][3]~regout\);

-- Location: LC_X5_Y8_N2
\RAM[0][3]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][3]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(3), , , VCC)

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
	datac => \mem_d~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][3]~regout\);

-- Location: LC_X5_Y8_N9
\RAM[1][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~14\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[1][3])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(3),
	datad => \RAM[0][3]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~14\,
	regout => \RAM[1][3]~regout\);

-- Location: LC_X4_Y6_N3
\RAM[2][3]\ : maxv_lcell
-- Equation(s):
-- \Mux12~15\ = (\mem_a~combout\(1) & ((\Mux12~14\ & (\RAM[3][3]~regout\)) # (!\Mux12~14\ & ((RAM[2][3]))))) # (!\mem_a~combout\(1) & (((\Mux12~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[3][3]~regout\,
	datac => \mem_d~combout\(3),
	datad => \Mux12~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~15\,
	regout => \RAM[2][3]~regout\);

-- Location: LC_X9_Y6_N1
\Mux12~16\ : maxv_lcell
-- Equation(s):
-- \Mux12~16_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\Mux12~13\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\Mux12~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux12~13\,
	datad => \Mux12~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~16_combout\);

-- Location: LC_X9_Y6_N2
\Mux12~19\ : maxv_lcell
-- Equation(s):
-- \Mux12~19_combout\ = (\mem_a~combout\(3) & ((\Mux12~16_combout\ & ((\Mux12~18\))) # (!\Mux12~16_combout\ & (\Mux12~11\)))) # (!\mem_a~combout\(3) & (((\Mux12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~11\,
	datab => \mem_a~combout\(3),
	datac => \Mux12~18\,
	datad => \Mux12~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~19_combout\);

-- Location: LC_X9_Y6_N9
\mem_out[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[3]~reg0_regout\ = DFFEAS((\mem_a~combout\(4) & (((\Mux12~9_combout\)))) # (!\mem_a~combout\(4) & (((\Mux12~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(4),
	datac => \Mux12~9_combout\,
	datad => \Mux12~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[3]~reg0_regout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(4),
	combout => \mem_d~combout\(4));

-- Location: LC_X11_Y10_N9
\RAM[15][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, \mem_d~combout\(4), , , VCC)

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
	datac => \mem_d~combout\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][4]~regout\);

-- Location: LC_X12_Y10_N2
\RAM[10][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[10][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~24_combout\, \mem_d~combout\(4), , , VCC)

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
	datac => \mem_d~combout\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[10][4]~regout\);

-- Location: LC_X12_Y10_N4
\RAM[14][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~17\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((RAM[14][4])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\RAM[10][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(4),
	datad => \RAM[10][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~17\,
	regout => \RAM[14][4]~regout\);

-- Location: LC_X11_Y10_N3
\RAM[11][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~18\ = (\mem_a~combout\(0) & ((\Mux11~17\ & (\RAM[15][4]~regout\)) # (!\Mux11~17\ & ((RAM[11][4]))))) # (!\mem_a~combout\(0) & (((\Mux11~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[15][4]~regout\,
	datac => \mem_d~combout\(4),
	datad => \Mux11~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~18\,
	regout => \RAM[11][4]~regout\);

-- Location: LC_X10_Y9_N0
\RAM[13][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[13][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~36_combout\, \mem_d~combout\(4), , , VCC)

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
	datac => \mem_d~combout\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[13][4]~regout\);

-- Location: LC_X9_Y10_N2
\RAM[8][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, \mem_d~combout\(4), , , VCC)

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
	datac => \mem_d~combout\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][4]~regout\);

-- Location: LC_X10_Y10_N2
\RAM[12][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~10\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((RAM[12][4])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\RAM[8][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(4),
	datad => \RAM[8][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~10\,
	regout => \RAM[12][4]~regout\);

-- Location: LC_X10_Y10_N3
\RAM[9][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~11\ = (\mem_a~combout\(0) & ((\Mux11~10\ & (\RAM[13][4]~regout\)) # (!\Mux11~10\ & ((RAM[9][4]))))) # (!\mem_a~combout\(0) & (((\Mux11~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[13][4]~regout\,
	datac => \mem_d~combout\(4),
	datad => \Mux11~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~11\,
	regout => \RAM[9][4]~regout\);

-- Location: LC_X7_Y9_N5
\RAM[5][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[5][4]~regout\ = DFFEAS((((\mem_d~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~28_combout\, , , , )

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
	datad => \mem_d~combout\(4),
	aclr => \rst~combout\,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[5][4]~regout\);

-- Location: LC_X5_Y7_N0
\RAM[0][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][4]~regout\ = DFFEAS(((\mem_d~combout\(4))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, , , , )

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
	datab => \mem_d~combout\(4),
	aclr => \rst~combout\,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][4]~regout\);

-- Location: LC_X6_Y8_N4
\RAM[4][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~14\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (RAM[4][4])) # (!\mem_a~combout\(2) & ((\RAM[0][4]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(4),
	datad => \RAM[0][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~14\,
	regout => \RAM[4][4]~regout\);

-- Location: LC_X10_Y8_N5
\RAM[1][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~15\ = (\mem_a~combout\(0) & ((\Mux11~14\ & (\RAM[5][4]~regout\)) # (!\Mux11~14\ & ((RAM[1][4]))))) # (!\mem_a~combout\(0) & (((\Mux11~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[5][4]~regout\,
	datac => \mem_d~combout\(4),
	datad => \Mux11~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~15\,
	regout => \RAM[1][4]~regout\);

-- Location: LC_X4_Y8_N1
\RAM[7][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(4), , , VCC)

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
	datac => \mem_d~combout\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][4]~regout\);

-- Location: LC_X3_Y6_N1
\RAM[2][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[2][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~32_combout\, \mem_d~combout\(4), , , VCC)

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
	datac => \mem_d~combout\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[2][4]~regout\);

-- Location: LC_X3_Y6_N6
\RAM[6][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~12\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((RAM[6][4])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\RAM[2][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(4),
	datad => \RAM[2][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~12\,
	regout => \RAM[6][4]~regout\);

-- Location: LC_X4_Y8_N6
\RAM[3][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~13\ = (\mem_a~combout\(0) & ((\Mux11~12\ & (\RAM[7][4]~regout\)) # (!\Mux11~12\ & ((RAM[3][4]))))) # (!\mem_a~combout\(0) & (((\Mux11~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[7][4]~regout\,
	datac => \mem_d~combout\(4),
	datad => \Mux11~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~13\,
	regout => \RAM[3][4]~regout\);

-- Location: LC_X10_Y8_N3
\Mux11~16\ : maxv_lcell
-- Equation(s):
-- \Mux11~16_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(1))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(1) & ((\Mux11~13\))) # (!\mem_a~combout\(1) & (\Mux11~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(1),
	datac => \Mux11~15\,
	datad => \Mux11~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~16_combout\);

-- Location: LC_X10_Y8_N4
\Mux11~19\ : maxv_lcell
-- Equation(s):
-- \Mux11~19_combout\ = (\mem_a~combout\(3) & ((\Mux11~16_combout\ & (\Mux11~18\)) # (!\Mux11~16_combout\ & ((\Mux11~11\))))) # (!\mem_a~combout\(3) & (((\Mux11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux11~18\,
	datac => \Mux11~11\,
	datad => \Mux11~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~19_combout\);

-- Location: LC_X13_Y10_N2
\RAM[31][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][4]~regout\ = DFFEAS((((\mem_d~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(4),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][4]~regout\);

-- Location: LC_X13_Y7_N7
\RAM[28][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][4]~regout\ = DFFEAS((((\mem_d~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, , , , )

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
	datad => \mem_d~combout\(4),
	aclr => \rst~combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][4]~regout\);

-- Location: LC_X14_Y8_N1
\RAM[29][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~7\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[29][4])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[28][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(4),
	datad => \RAM[28][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~7\,
	regout => \RAM[29][4]~regout\);

-- Location: LC_X14_Y8_N2
\RAM[30][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~8\ = (\mem_a~combout\(1) & ((\Mux11~7\ & (\RAM[31][4]~regout\)) # (!\Mux11~7\ & ((RAM[30][4]))))) # (!\mem_a~combout\(1) & (((\Mux11~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][4]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(4),
	datad => \Mux11~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~8\,
	regout => \RAM[30][4]~regout\);

-- Location: LC_X15_Y9_N3
\RAM[27][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[27][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~21_combout\, \mem_d~combout\(4), , , VCC)

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
	datac => \mem_d~combout\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[27][4]~regout\);

-- Location: LC_X14_Y9_N1
\RAM[24][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[24][4]~regout\ = DFFEAS((((\mem_d~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~5_combout\, , , , )

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
	datad => \mem_d~combout\(4),
	aclr => \rst~combout\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[24][4]~regout\);

-- Location: LC_X14_Y9_N4
\RAM[25][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~0\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[25][4])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[24][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(4),
	datad => \RAM[24][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0\,
	regout => \RAM[25][4]~regout\);

-- Location: LC_X15_Y9_N7
\RAM[26][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~1\ = (\mem_a~combout\(1) & ((\Mux11~0\ & (\RAM[27][4]~regout\)) # (!\Mux11~0\ & ((RAM[26][4]))))) # (!\mem_a~combout\(1) & (((\Mux11~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[27][4]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(4),
	datad => \Mux11~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~1\,
	regout => \RAM[26][4]~regout\);

-- Location: LC_X15_Y8_N2
\RAM[23][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[23][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~15_combout\, \mem_d~combout\(4), , , VCC)

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
	datac => \mem_d~combout\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[23][4]~regout\);

-- Location: LC_X13_Y7_N3
\RAM[20][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[20][4]~regout\ = DFFEAS((((\mem_d~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~16_combout\, , , , )

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
	datad => \mem_d~combout\(4),
	aclr => \rst~combout\,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[20][4]~regout\);

-- Location: LC_X14_Y7_N5
\RAM[21][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~2\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[21][4])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[20][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(4),
	datad => \RAM[20][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~2\,
	regout => \RAM[21][4]~regout\);

-- Location: LC_X15_Y8_N9
\RAM[22][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~3\ = (\mem_a~combout\(1) & ((\Mux11~2\ & (\RAM[23][4]~regout\)) # (!\Mux11~2\ & ((RAM[22][4]))))) # (!\mem_a~combout\(1) & (((\Mux11~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[23][4]~regout\,
	datac => \mem_d~combout\(4),
	datad => \Mux11~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~3\,
	regout => \RAM[22][4]~regout\);

-- Location: LC_X14_Y6_N8
\RAM[19][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][4]~regout\ = DFFEAS((((\mem_d~combout\(4)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, , , , )

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
	datad => \mem_d~combout\(4),
	aclr => \rst~combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][4]~regout\);

-- Location: LC_X13_Y5_N3
\RAM[16][4]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][4]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, \mem_d~combout\(4), , , VCC)

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
	datac => \mem_d~combout\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][4]~regout\);

-- Location: LC_X13_Y5_N2
\RAM[17][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~4\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[17][4])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[16][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(4),
	datad => \RAM[16][4]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~4\,
	regout => \RAM[17][4]~regout\);

-- Location: LC_X13_Y6_N5
\RAM[18][4]\ : maxv_lcell
-- Equation(s):
-- \Mux11~5\ = (\mem_a~combout\(1) & ((\Mux11~4\ & (\RAM[19][4]~regout\)) # (!\Mux11~4\ & ((RAM[18][4]))))) # (!\mem_a~combout\(1) & (((\Mux11~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[19][4]~regout\,
	datac => \mem_d~combout\(4),
	datad => \Mux11~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~5\,
	regout => \RAM[18][4]~regout\);

-- Location: LC_X10_Y8_N1
\Mux11~6\ : maxv_lcell
-- Equation(s):
-- \Mux11~6_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\Mux11~3\)) # (!\mem_a~combout\(2) & ((\Mux11~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux11~3\,
	datac => \mem_a~combout\(2),
	datad => \Mux11~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~6_combout\);

-- Location: LC_X10_Y8_N2
\Mux11~9\ : maxv_lcell
-- Equation(s):
-- \Mux11~9_combout\ = (\mem_a~combout\(3) & ((\Mux11~6_combout\ & (\Mux11~8\)) # (!\Mux11~6_combout\ & ((\Mux11~1\))))) # (!\mem_a~combout\(3) & (((\Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~8\,
	datab => \mem_a~combout\(3),
	datac => \Mux11~1\,
	datad => \Mux11~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~9_combout\);

-- Location: LC_X10_Y8_N0
\mem_out[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[4]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & ((\Mux11~9_combout\))) # (!\mem_a~combout\(4) & (\Mux11~19_combout\))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux11~19_combout\,
	datad => \Mux11~9_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[4]~reg0_regout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(5),
	combout => \mem_d~combout\(5));

-- Location: LC_X14_Y5_N2
\RAM[31][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][5]~regout\ = DFFEAS((((\mem_d~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][5]~regout\);

-- Location: LC_X16_Y6_N7
\RAM[26][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[26][5]~regout\ = DFFEAS((((\mem_d~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~3_combout\, , , , )

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
	datad => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[26][5]~regout\);

-- Location: LC_X15_Y6_N7
\RAM[30][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((RAM[30][5])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\RAM[26][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(5),
	datad => \RAM[26][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~7\,
	regout => \RAM[30][5]~regout\);

-- Location: LC_X15_Y6_N8
\RAM[27][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~8\ = (\mem_a~combout\(0) & ((\Mux10~7\ & (\RAM[31][5]~regout\)) # (!\Mux10~7\ & ((RAM[27][5]))))) # (!\mem_a~combout\(0) & (((\Mux10~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][5]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(5),
	datad => \Mux10~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~8\,
	regout => \RAM[27][5]~regout\);

-- Location: LC_X7_Y8_N7
\RAM[29][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(5), , , VCC)

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
	datac => \mem_d~combout\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][5]~regout\);

-- Location: LC_X8_Y6_N3
\RAM[24][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[24][5]~regout\ = DFFEAS((((\mem_d~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~5_combout\, , , , )

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
	datad => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[24][5]~regout\);

-- Location: LC_X8_Y6_N5
\RAM[28][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~0\ = (\mem_a~combout\(2) & ((\mem_a~combout\(0)) # ((RAM[28][5])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(0) & ((\RAM[24][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(5),
	datad => \RAM[24][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0\,
	regout => \RAM[28][5]~regout\);

-- Location: LC_X7_Y8_N2
\RAM[25][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~1\ = (\mem_a~combout\(0) & ((\Mux10~0\ & (\RAM[29][5]~regout\)) # (!\Mux10~0\ & ((RAM[25][5]))))) # (!\mem_a~combout\(0) & (((\Mux10~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[29][5]~regout\,
	datac => \mem_d~combout\(5),
	datad => \Mux10~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~1\,
	regout => \RAM[25][5]~regout\);

-- Location: LC_X14_Y5_N7
\RAM[23][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[23][5]~regout\ = DFFEAS((((\mem_d~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~15_combout\, , , , )

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
	datad => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[23][5]~regout\);

-- Location: LC_X13_Y6_N4
\RAM[18][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][5]~regout\ = DFFEAS(((\mem_d~combout\(5))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, , , , )

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
	datab => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][5]~regout\);

-- Location: LC_X14_Y6_N1
\RAM[22][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~2\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (RAM[22][5])) # (!\mem_a~combout\(2) & ((\RAM[18][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(5),
	datad => \RAM[18][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~2\,
	regout => \RAM[22][5]~regout\);

-- Location: LC_X14_Y6_N2
\RAM[19][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~3\ = (\mem_a~combout\(0) & ((\Mux10~2\ & (\RAM[23][5]~regout\)) # (!\Mux10~2\ & ((RAM[19][5]))))) # (!\mem_a~combout\(0) & (((\Mux10~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[23][5]~regout\,
	datac => \mem_d~combout\(5),
	datad => \Mux10~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~3\,
	regout => \RAM[19][5]~regout\);

-- Location: LC_X9_Y9_N0
\RAM[21][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[21][5]~regout\ = DFFEAS((((\mem_d~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~9_combout\, , , , )

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
	datad => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[21][5]~regout\);

-- Location: LC_X13_Y6_N0
\RAM[16][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][5]~regout\ = DFFEAS(((\mem_d~combout\(5))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, , , , )

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
	datab => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][5]~regout\);

-- Location: LC_X10_Y6_N6
\RAM[20][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~4\ = (\mem_a~combout\(0) & (\mem_a~combout\(2))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(2) & (RAM[20][5])) # (!\mem_a~combout\(2) & ((\RAM[16][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(5),
	datad => \RAM[16][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~4\,
	regout => \RAM[20][5]~regout\);

-- Location: LC_X10_Y6_N7
\RAM[17][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~5\ = (\mem_a~combout\(0) & ((\Mux10~4\ & (\RAM[21][5]~regout\)) # (!\Mux10~4\ & ((RAM[17][5]))))) # (!\mem_a~combout\(0) & (((\Mux10~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[21][5]~regout\,
	datac => \mem_d~combout\(5),
	datad => \Mux10~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~5\,
	regout => \RAM[17][5]~regout\);

-- Location: LC_X7_Y6_N5
\Mux10~6\ : maxv_lcell
-- Equation(s):
-- \Mux10~6_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(1))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(1) & (\Mux10~3\)) # (!\mem_a~combout\(1) & ((\Mux10~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(1),
	datac => \Mux10~3\,
	datad => \Mux10~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~6_combout\);

-- Location: LC_X7_Y6_N6
\Mux10~9\ : maxv_lcell
-- Equation(s):
-- \Mux10~9_combout\ = (\mem_a~combout\(3) & ((\Mux10~6_combout\ & (\Mux10~8\)) # (!\Mux10~6_combout\ & ((\Mux10~1\))))) # (!\mem_a~combout\(3) & (((\Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~8\,
	datab => \mem_a~combout\(3),
	datac => \Mux10~1\,
	datad => \Mux10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~9_combout\);

-- Location: LC_X11_Y9_N6
\RAM[14][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[14][5]~regout\ = DFFEAS((((\mem_d~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~37_combout\, , , , )

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
	datad => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[14][5]~regout\);

-- Location: LC_X9_Y8_N2
\RAM[8][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, \mem_d~combout\(5), , , VCC)

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
	datac => \mem_d~combout\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][5]~regout\);

-- Location: LC_X12_Y6_N2
\RAM[10][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~10\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[10][5])) # (!\mem_a~combout\(1) & ((\RAM[8][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(5),
	datad => \RAM[8][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~10\,
	regout => \RAM[10][5]~regout\);

-- Location: LC_X12_Y6_N3
\RAM[12][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~11\ = (\mem_a~combout\(2) & ((\Mux10~10\ & (\RAM[14][5]~regout\)) # (!\Mux10~10\ & ((RAM[12][5]))))) # (!\mem_a~combout\(2) & (((\Mux10~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[14][5]~regout\,
	datac => \mem_d~combout\(5),
	datad => \Mux10~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~11\,
	regout => \RAM[12][5]~regout\);

-- Location: LC_X11_Y9_N8
\RAM[15][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][5]~regout\ = DFFEAS((((\mem_d~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, , , , )

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
	datad => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][5]~regout\);

-- Location: LC_X10_Y10_N1
\RAM[9][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[9][5]~regout\ = DFFEAS((((\mem_d~combout\(5)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~25_combout\, , , , )

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
	datad => \mem_d~combout\(5),
	aclr => \rst~combout\,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[9][5]~regout\);

-- Location: LC_X11_Y8_N6
\RAM[11][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~17\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[11][5])) # (!\mem_a~combout\(1) & ((\RAM[9][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(5),
	datad => \RAM[9][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~17\,
	regout => \RAM[11][5]~regout\);

-- Location: LC_X11_Y8_N7
\RAM[13][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~18\ = (\mem_a~combout\(2) & ((\Mux10~17\ & (\RAM[15][5]~regout\)) # (!\Mux10~17\ & ((RAM[13][5]))))) # (!\mem_a~combout\(2) & (((\Mux10~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[15][5]~regout\,
	datac => \mem_d~combout\(5),
	datad => \Mux10~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~18\,
	regout => \RAM[13][5]~regout\);

-- Location: LC_X8_Y9_N4
\RAM[7][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(5), , , VCC)

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
	datac => \mem_d~combout\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][5]~regout\);

-- Location: LC_X8_Y9_N7
\RAM[1][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[1][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~33_combout\, \mem_d~combout\(5), , , VCC)

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
	datac => \mem_d~combout\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[1][5]~regout\);

-- Location: LC_X7_Y9_N2
\RAM[3][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~12\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[3][5])) # (!\mem_a~combout\(1) & ((\RAM[1][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(5),
	datad => \RAM[1][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~12\,
	regout => \RAM[3][5]~regout\);

-- Location: LC_X7_Y9_N0
\RAM[5][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~13\ = (\mem_a~combout\(2) & ((\Mux10~12\ & (\RAM[7][5]~regout\)) # (!\Mux10~12\ & ((RAM[5][5]))))) # (!\mem_a~combout\(2) & (((\Mux10~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[7][5]~regout\,
	datac => \mem_d~combout\(5),
	datad => \Mux10~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~13\,
	regout => \RAM[5][5]~regout\);

-- Location: LC_X6_Y8_N8
\RAM[6][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[6][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~29_combout\, \mem_d~combout\(5), , , VCC)

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
	datac => \mem_d~combout\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[6][5]~regout\);

-- Location: LC_X6_Y6_N9
\RAM[0][5]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][5]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(5), , , VCC)

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
	datac => \mem_d~combout\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][5]~regout\);

-- Location: LC_X6_Y6_N8
\RAM[2][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~14\ = (\mem_a~combout\(2) & (\mem_a~combout\(1))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(1) & (RAM[2][5])) # (!\mem_a~combout\(1) & ((\RAM[0][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(5),
	datad => \RAM[0][5]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~14\,
	regout => \RAM[2][5]~regout\);

-- Location: LC_X6_Y8_N7
\RAM[4][5]\ : maxv_lcell
-- Equation(s):
-- \Mux10~15\ = (\mem_a~combout\(2) & ((\Mux10~14\ & (\RAM[6][5]~regout\)) # (!\Mux10~14\ & ((RAM[4][5]))))) # (!\mem_a~combout\(2) & (((\Mux10~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[6][5]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(5),
	datad => \Mux10~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~15\,
	regout => \RAM[4][5]~regout\);

-- Location: LC_X7_Y6_N0
\Mux10~16\ : maxv_lcell
-- Equation(s):
-- \Mux10~16_combout\ = (\mem_a~combout\(0) & ((\mem_a~combout\(3)) # ((\Mux10~13\)))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(3) & ((\Mux10~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(3),
	datac => \Mux10~13\,
	datad => \Mux10~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~16_combout\);

-- Location: LC_X7_Y6_N1
\Mux10~19\ : maxv_lcell
-- Equation(s):
-- \Mux10~19_combout\ = (\mem_a~combout\(3) & ((\Mux10~16_combout\ & ((\Mux10~18\))) # (!\Mux10~16_combout\ & (\Mux10~11\)))) # (!\mem_a~combout\(3) & (((\Mux10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~11\,
	datab => \mem_a~combout\(3),
	datac => \Mux10~18\,
	datad => \Mux10~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~19_combout\);

-- Location: LC_X7_Y6_N2
\mem_out[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[5]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & (\Mux10~9_combout\)) # (!\mem_a~combout\(4) & ((\Mux10~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux10~9_combout\,
	datad => \Mux10~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[5]~reg0_regout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(6),
	combout => \mem_d~combout\(6));

-- Location: LC_X4_Y5_N1
\RAM[31][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][6]~regout\ = DFFEAS((((\mem_d~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(6),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][6]~regout\);

-- Location: LC_X4_Y5_N5
\RAM[19][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][6]~regout\ = DFFEAS((((\mem_d~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, , , , )

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
	datad => \mem_d~combout\(6),
	aclr => \rst~combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][6]~regout\);

-- Location: LC_X5_Y5_N8
\RAM[23][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[23][6])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[19][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(6),
	datad => \RAM[19][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~7\,
	regout => \RAM[23][6]~regout\);

-- Location: LC_X5_Y5_N1
\RAM[27][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~8\ = (\mem_a~combout\(3) & ((\Mux9~7\ & (\RAM[31][6]~regout\)) # (!\Mux9~7\ & ((RAM[27][6]))))) # (!\mem_a~combout\(3) & (((\Mux9~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][6]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(6),
	datad => \Mux9~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~8\,
	regout => \RAM[27][6]~regout\);

-- Location: LC_X11_Y5_N0
\RAM[29][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(6), , , VCC)

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
	datac => \mem_d~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][6]~regout\);

-- Location: LC_X12_Y4_N7
\RAM[17][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][6]~regout\ = DFFEAS((((\mem_d~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, , , , )

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
	datad => \mem_d~combout\(6),
	aclr => \rst~combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][6]~regout\);

-- Location: LC_X12_Y5_N3
\RAM[21][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~0\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[21][6])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[17][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(6),
	datad => \RAM[17][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0\,
	regout => \RAM[21][6]~regout\);

-- Location: LC_X12_Y5_N4
\RAM[25][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~1\ = (\mem_a~combout\(3) & ((\Mux9~0\ & (\RAM[29][6]~regout\)) # (!\Mux9~0\ & ((RAM[25][6]))))) # (!\mem_a~combout\(3) & (((\Mux9~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[29][6]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(6),
	datad => \Mux9~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~1\,
	regout => \RAM[25][6]~regout\);

-- Location: LC_X2_Y6_N2
\RAM[30][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, \mem_d~combout\(6), , , VCC)

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
	datac => \mem_d~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][6]~regout\);

-- Location: LC_X1_Y6_N2
\RAM[18][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, \mem_d~combout\(6), , , VCC)

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
	datac => \mem_d~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][6]~regout\);

-- Location: LC_X1_Y6_N4
\RAM[22][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[22][6])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[18][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(6),
	datad => \RAM[18][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~2\,
	regout => \RAM[22][6]~regout\);

-- Location: LC_X2_Y6_N1
\RAM[26][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~3\ = (\mem_a~combout\(3) & ((\Mux9~2\ & (\RAM[30][6]~regout\)) # (!\Mux9~2\ & ((RAM[26][6]))))) # (!\mem_a~combout\(3) & (((\Mux9~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[30][6]~regout\,
	datac => \mem_d~combout\(6),
	datad => \Mux9~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~3\,
	regout => \RAM[26][6]~regout\);

-- Location: LC_X11_Y5_N4
\RAM[28][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, \mem_d~combout\(6), , , VCC)

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
	datac => \mem_d~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][6]~regout\);

-- Location: LC_X10_Y7_N3
\RAM[16][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, \mem_d~combout\(6), , , VCC)

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
	datac => \mem_d~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][6]~regout\);

-- Location: LC_X10_Y5_N4
\RAM[20][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~4\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[20][6])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[16][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(6),
	datad => \RAM[16][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~4\,
	regout => \RAM[20][6]~regout\);

-- Location: LC_X10_Y5_N5
\RAM[24][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~5\ = (\mem_a~combout\(3) & ((\Mux9~4\ & (\RAM[28][6]~regout\)) # (!\Mux9~4\ & ((RAM[24][6]))))) # (!\mem_a~combout\(3) & (((\Mux9~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[28][6]~regout\,
	datac => \mem_d~combout\(6),
	datad => \Mux9~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~5\,
	regout => \RAM[24][6]~regout\);

-- Location: LC_X9_Y6_N5
\Mux9~6\ : maxv_lcell
-- Equation(s):
-- \Mux9~6_combout\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (\Mux9~3\)) # (!\mem_a~combout\(1) & ((\Mux9~5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \Mux9~3\,
	datad => \Mux9~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~6_combout\);

-- Location: LC_X9_Y6_N6
\Mux9~9\ : maxv_lcell
-- Equation(s):
-- \Mux9~9_combout\ = (\mem_a~combout\(0) & ((\Mux9~6_combout\ & (\Mux9~8\)) # (!\Mux9~6_combout\ & ((\Mux9~1\))))) # (!\mem_a~combout\(0) & (((\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \Mux9~8\,
	datac => \Mux9~1\,
	datad => \Mux9~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~9_combout\);

-- Location: LC_X7_Y10_N9
\RAM[11][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, \mem_d~combout\(6), , , VCC)

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
	datac => \mem_d~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][6]~regout\);

-- Location: LC_X7_Y10_N7
\RAM[8][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, \mem_d~combout\(6), , , VCC)

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
	datac => \mem_d~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][6]~regout\);

-- Location: LC_X8_Y10_N0
\RAM[9][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~10\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[9][6])) # (!\mem_a~combout\(0) & ((\RAM[8][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(6),
	datad => \RAM[8][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~10\,
	regout => \RAM[9][6]~regout\);

-- Location: LC_X8_Y10_N1
\RAM[10][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~11\ = (\mem_a~combout\(1) & ((\Mux9~10\ & (\RAM[11][6]~regout\)) # (!\Mux9~10\ & ((RAM[10][6]))))) # (!\mem_a~combout\(1) & (((\Mux9~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[11][6]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(6),
	datad => \Mux9~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~11\,
	regout => \RAM[10][6]~regout\);

-- Location: LC_X12_Y7_N9
\RAM[15][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, \mem_d~combout\(6), , , VCC)

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
	datac => \mem_d~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][6]~regout\);

-- Location: LC_X12_Y6_N8
\RAM[12][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][6]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, \mem_d~combout\(6), , , VCC)

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
	datac => \mem_d~combout\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][6]~regout\);

-- Location: LC_X11_Y7_N2
\RAM[13][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~17\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[13][6])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[12][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(6),
	datad => \RAM[12][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~17\,
	regout => \RAM[13][6]~regout\);

-- Location: LC_X11_Y7_N3
\RAM[14][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~18\ = (\mem_a~combout\(1) & ((\Mux9~17\ & (\RAM[15][6]~regout\)) # (!\Mux9~17\ & ((RAM[14][6]))))) # (!\mem_a~combout\(1) & (((\Mux9~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[15][6]~regout\,
	datac => \mem_d~combout\(6),
	datad => \Mux9~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~18\,
	regout => \RAM[14][6]~regout\);

-- Location: LC_X5_Y7_N9
\RAM[3][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][6]~regout\ = DFFEAS((\mem_d~combout\(6)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, , , , )

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
	dataa => \mem_d~combout\(6),
	aclr => \rst~combout\,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][6]~regout\);

-- Location: LC_X5_Y7_N4
\RAM[0][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][6]~regout\ = DFFEAS((\mem_d~combout\(6)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, , , , )

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
	dataa => \mem_d~combout\(6),
	aclr => \rst~combout\,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][6]~regout\);

-- Location: LC_X4_Y7_N1
\RAM[1][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~14\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[1][6])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(6),
	datad => \RAM[0][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~14\,
	regout => \RAM[1][6]~regout\);

-- Location: LC_X4_Y7_N0
\RAM[2][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~15\ = (\mem_a~combout\(1) & ((\Mux9~14\ & (\RAM[3][6]~regout\)) # (!\Mux9~14\ & ((RAM[2][6]))))) # (!\mem_a~combout\(1) & (((\Mux9~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[3][6]~regout\,
	datac => \mem_d~combout\(6),
	datad => \Mux9~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~15\,
	regout => \RAM[2][6]~regout\);

-- Location: LC_X7_Y4_N7
\RAM[7][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][6]~regout\ = DFFEAS((((\mem_d~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, , , , )

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
	datad => \mem_d~combout\(6),
	aclr => \rst~combout\,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][6]~regout\);

-- Location: LC_X8_Y4_N3
\RAM[4][6]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][6]~regout\ = DFFEAS((((\mem_d~combout\(6)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, , , , )

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
	datad => \mem_d~combout\(6),
	aclr => \rst~combout\,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][6]~regout\);

-- Location: LC_X6_Y4_N7
\RAM[5][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~12\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[5][6])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[4][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(6),
	datad => \RAM[4][6]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~12\,
	regout => \RAM[5][6]~regout\);

-- Location: LC_X6_Y4_N8
\RAM[6][6]\ : maxv_lcell
-- Equation(s):
-- \Mux9~13\ = (\mem_a~combout\(1) & ((\Mux9~12\ & (\RAM[7][6]~regout\)) # (!\Mux9~12\ & ((RAM[6][6]))))) # (!\mem_a~combout\(1) & (((\Mux9~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[7][6]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(6),
	datad => \Mux9~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~13\,
	regout => \RAM[6][6]~regout\);

-- Location: LC_X9_Y6_N7
\Mux9~16\ : maxv_lcell
-- Equation(s):
-- \Mux9~16_combout\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3)) # (\Mux9~13\)))) # (!\mem_a~combout\(2) & (\Mux9~15\ & (!\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \Mux9~15\,
	datac => \mem_a~combout\(3),
	datad => \Mux9~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~16_combout\);

-- Location: LC_X9_Y6_N8
\Mux9~19\ : maxv_lcell
-- Equation(s):
-- \Mux9~19_combout\ = (\mem_a~combout\(3) & ((\Mux9~16_combout\ & ((\Mux9~18\))) # (!\Mux9~16_combout\ & (\Mux9~11\)))) # (!\mem_a~combout\(3) & (((\Mux9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~11\,
	datab => \mem_a~combout\(3),
	datac => \Mux9~18\,
	datad => \Mux9~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~19_combout\);

-- Location: LC_X9_Y6_N0
\mem_out[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[6]~reg0_regout\ = DFFEAS((\mem_a~combout\(4) & (((\Mux9~9_combout\)))) # (!\mem_a~combout\(4) & (((\Mux9~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(4),
	datac => \Mux9~9_combout\,
	datad => \Mux9~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[6]~reg0_regout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(7),
	combout => \mem_d~combout\(7));

-- Location: LC_X4_Y5_N0
\RAM[31][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][7]~regout\ = DFFEAS((((\mem_d~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(7),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][7]~regout\);

-- Location: LC_X4_Y5_N4
\RAM[19][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][7]~regout\ = DFFEAS((((\mem_d~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, , , , )

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
	datad => \mem_d~combout\(7),
	aclr => \rst~combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][7]~regout\);

-- Location: LC_X5_Y5_N6
\RAM[23][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[23][7])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[19][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(7),
	datad => \RAM[19][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~7\,
	regout => \RAM[23][7]~regout\);

-- Location: LC_X5_Y5_N0
\RAM[27][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~8\ = (\mem_a~combout\(3) & ((\Mux8~7\ & (\RAM[31][7]~regout\)) # (!\Mux8~7\ & ((RAM[27][7]))))) # (!\mem_a~combout\(3) & (((\Mux8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][7]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(7),
	datad => \Mux8~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~8\,
	regout => \RAM[27][7]~regout\);

-- Location: LC_X5_Y6_N9
\RAM[30][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, \mem_d~combout\(7), , , VCC)

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
	datac => \mem_d~combout\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][7]~regout\);

-- Location: LC_X3_Y4_N8
\RAM[18][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, \mem_d~combout\(7), , , VCC)

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
	datac => \mem_d~combout\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][7]~regout\);

-- Location: LC_X3_Y4_N0
\RAM[22][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~0\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[22][7])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[18][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(7),
	datad => \RAM[18][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0\,
	regout => \RAM[22][7]~regout\);

-- Location: LC_X7_Y6_N7
\RAM[26][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~1\ = (\mem_a~combout\(3) & ((\Mux8~0\ & (\RAM[30][7]~regout\)) # (!\Mux8~0\ & ((RAM[26][7]))))) # (!\mem_a~combout\(3) & (((\Mux8~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[30][7]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(7),
	datad => \Mux8~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~1\,
	regout => \RAM[26][7]~regout\);

-- Location: LC_X11_Y5_N5
\RAM[28][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][7]~regout\ = DFFEAS((((\mem_d~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, , , , )

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
	datad => \mem_d~combout\(7),
	aclr => \rst~combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][7]~regout\);

-- Location: LC_X13_Y5_N9
\RAM[16][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, \mem_d~combout\(7), , , VCC)

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
	datac => \mem_d~combout\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][7]~regout\);

-- Location: LC_X10_Y5_N6
\RAM[20][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~4\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[20][7])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[16][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(7),
	datad => \RAM[16][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~4\,
	regout => \RAM[20][7]~regout\);

-- Location: LC_X10_Y5_N7
\RAM[24][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~5\ = (\mem_a~combout\(3) & ((\Mux8~4\ & (\RAM[28][7]~regout\)) # (!\Mux8~4\ & ((RAM[24][7]))))) # (!\mem_a~combout\(3) & (((\Mux8~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[28][7]~regout\,
	datac => \mem_d~combout\(7),
	datad => \Mux8~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~5\,
	regout => \RAM[24][7]~regout\);

-- Location: LC_X11_Y5_N3
\RAM[29][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][7]~regout\ = DFFEAS((((\mem_d~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, , , , )

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
	datad => \mem_d~combout\(7),
	aclr => \rst~combout\,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][7]~regout\);

-- Location: LC_X13_Y5_N5
\RAM[17][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, \mem_d~combout\(7), , , VCC)

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
	datac => \mem_d~combout\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][7]~regout\);

-- Location: LC_X12_Y5_N9
\RAM[21][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[21][7])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[17][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(7),
	datad => \RAM[17][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~2\,
	regout => \RAM[21][7]~regout\);

-- Location: LC_X12_Y5_N5
\RAM[25][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~3\ = (\mem_a~combout\(3) & ((\Mux8~2\ & (\RAM[29][7]~regout\)) # (!\Mux8~2\ & ((RAM[25][7]))))) # (!\mem_a~combout\(3) & (((\Mux8~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[29][7]~regout\,
	datac => \mem_d~combout\(7),
	datad => \Mux8~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~3\,
	regout => \RAM[25][7]~regout\);

-- Location: LC_X7_Y6_N3
\Mux8~6\ : maxv_lcell
-- Equation(s):
-- \Mux8~6_combout\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((\Mux8~3\)))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & (\Mux8~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \Mux8~5\,
	datad => \Mux8~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~6_combout\);

-- Location: LC_X7_Y6_N4
\Mux8~9\ : maxv_lcell
-- Equation(s):
-- \Mux8~9_combout\ = (\mem_a~combout\(1) & ((\Mux8~6_combout\ & (\Mux8~8\)) # (!\Mux8~6_combout\ & ((\Mux8~1\))))) # (!\mem_a~combout\(1) & (((\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~8\,
	datab => \mem_a~combout\(1),
	datac => \Mux8~1\,
	datad => \Mux8~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~9_combout\);

-- Location: LC_X4_Y10_N2
\RAM[11][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][7]~regout\ = DFFEAS((\mem_d~combout\(7)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, , , , )

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
	dataa => \mem_d~combout\(7),
	aclr => \rst~combout\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][7]~regout\);

-- Location: LC_X4_Y10_N5
\RAM[8][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][7]~regout\ = DFFEAS((\mem_d~combout\(7)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, , , , )

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
	dataa => \mem_d~combout\(7),
	aclr => \rst~combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][7]~regout\);

-- Location: LC_X5_Y10_N8
\RAM[9][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~10\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[9][7])) # (!\mem_a~combout\(0) & ((\RAM[8][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(7),
	datad => \RAM[8][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~10\,
	regout => \RAM[9][7]~regout\);

-- Location: LC_X5_Y10_N9
\RAM[10][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~11\ = (\mem_a~combout\(1) & ((\Mux8~10\ & (\RAM[11][7]~regout\)) # (!\Mux8~10\ & ((RAM[10][7]))))) # (!\mem_a~combout\(1) & (((\Mux8~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[11][7]~regout\,
	datac => \mem_d~combout\(7),
	datad => \Mux8~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~11\,
	regout => \RAM[10][7]~regout\);

-- Location: LC_X9_Y8_N0
\RAM[15][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][7]~regout\ = DFFEAS((((\mem_d~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, , , , )

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
	datad => \mem_d~combout\(7),
	aclr => \rst~combout\,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][7]~regout\);

-- Location: LC_X11_Y4_N9
\RAM[12][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][7]~regout\ = DFFEAS((((\mem_d~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, , , , )

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
	datad => \mem_d~combout\(7),
	aclr => \rst~combout\,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][7]~regout\);

-- Location: LC_X10_Y4_N0
\RAM[14][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~17\ = (\mem_a~combout\(1) & (((RAM[14][7]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\RAM[12][7]~regout\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[12][7]~regout\,
	datac => \mem_d~combout\(7),
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~17\,
	regout => \RAM[14][7]~regout\);

-- Location: LC_X10_Y4_N1
\RAM[13][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~18\ = (\mem_a~combout\(0) & ((\Mux8~17\ & (\RAM[15][7]~regout\)) # (!\Mux8~17\ & ((RAM[13][7]))))) # (!\mem_a~combout\(0) & (((\Mux8~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[15][7]~regout\,
	datac => \mem_d~combout\(7),
	datad => \Mux8~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~18\,
	regout => \RAM[13][7]~regout\);

-- Location: LC_X5_Y6_N1
\RAM[3][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, \mem_d~combout\(7), , , VCC)

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
	datac => \mem_d~combout\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][7]~regout\);

-- Location: LC_X5_Y8_N1
\RAM[0][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(7), , , VCC)

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
	datac => \mem_d~combout\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][7]~regout\);

-- Location: LC_X5_Y8_N6
\RAM[1][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~14\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[1][7])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[0][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(7),
	datad => \RAM[0][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~14\,
	regout => \RAM[1][7]~regout\);

-- Location: LC_X6_Y6_N6
\RAM[2][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~15\ = (\mem_a~combout\(1) & ((\Mux8~14\ & (\RAM[3][7]~regout\)) # (!\Mux8~14\ & ((RAM[2][7]))))) # (!\mem_a~combout\(1) & (((\Mux8~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[3][7]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(7),
	datad => \Mux8~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~15\,
	regout => \RAM[2][7]~regout\);

-- Location: LC_X7_Y4_N2
\RAM[7][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][7]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(7), , , VCC)

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
	datac => \mem_d~combout\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][7]~regout\);

-- Location: LC_X6_Y8_N5
\RAM[4][7]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][7]~regout\ = DFFEAS((((\mem_d~combout\(7)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, , , , )

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
	datad => \mem_d~combout\(7),
	aclr => \rst~combout\,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][7]~regout\);

-- Location: LC_X6_Y4_N5
\RAM[6][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~12\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[6][7])) # (!\mem_a~combout\(1) & ((\RAM[4][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(7),
	datad => \RAM[4][7]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~12\,
	regout => \RAM[6][7]~regout\);

-- Location: LC_X6_Y4_N6
\RAM[5][7]\ : maxv_lcell
-- Equation(s):
-- \Mux8~13\ = (\mem_a~combout\(0) & ((\Mux8~12\ & (\RAM[7][7]~regout\)) # (!\Mux8~12\ & ((RAM[5][7]))))) # (!\mem_a~combout\(0) & (((\Mux8~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[7][7]~regout\,
	datac => \mem_d~combout\(7),
	datad => \Mux8~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~13\,
	regout => \RAM[5][7]~regout\);

-- Location: LC_X6_Y6_N0
\Mux8~16\ : maxv_lcell
-- Equation(s):
-- \Mux8~16_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\Mux8~13\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & (\Mux8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux8~15\,
	datad => \Mux8~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~16_combout\);

-- Location: LC_X7_Y6_N8
\Mux8~19\ : maxv_lcell
-- Equation(s):
-- \Mux8~19_combout\ = (\mem_a~combout\(3) & ((\Mux8~16_combout\ & ((\Mux8~18\))) # (!\Mux8~16_combout\ & (\Mux8~11\)))) # (!\mem_a~combout\(3) & (((\Mux8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux8~11\,
	datac => \Mux8~18\,
	datad => \Mux8~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~19_combout\);

-- Location: LC_X7_Y6_N9
\mem_out[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[7]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & (\Mux8~9_combout\)) # (!\mem_a~combout\(4) & ((\Mux8~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux8~9_combout\,
	datad => \Mux8~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[7]~reg0_regout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(8),
	combout => \mem_d~combout\(8));

-- Location: LC_X4_Y5_N6
\RAM[31][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][8]~regout\ = DFFEAS((((\mem_d~combout\(8)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(8),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][8]~regout\);

-- Location: LC_X4_Y5_N3
\RAM[19][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][8]~regout\ = DFFEAS((((\mem_d~combout\(8)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, , , , )

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
	datad => \mem_d~combout\(8),
	aclr => \rst~combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][8]~regout\);

-- Location: LC_X5_Y5_N9
\RAM[23][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[23][8])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[19][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(8),
	datad => \RAM[19][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~7\,
	regout => \RAM[23][8]~regout\);

-- Location: LC_X5_Y5_N7
\RAM[27][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~8\ = (\mem_a~combout\(3) & ((\Mux7~7\ & (\RAM[31][8]~regout\)) # (!\Mux7~7\ & ((RAM[27][8]))))) # (!\mem_a~combout\(3) & (((\Mux7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[31][8]~regout\,
	datac => \mem_d~combout\(8),
	datad => \Mux7~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~8\,
	regout => \RAM[27][8]~regout\);

-- Location: LC_X12_Y4_N2
\RAM[29][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(8), , , VCC)

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
	datac => \mem_d~combout\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][8]~regout\);

-- Location: LC_X12_Y4_N0
\RAM[17][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, \mem_d~combout\(8), , , VCC)

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
	datac => \mem_d~combout\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][8]~regout\);

-- Location: LC_X12_Y5_N1
\RAM[21][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~0\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (RAM[21][8])) # (!\mem_a~combout\(2) & ((\RAM[17][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(8),
	datad => \RAM[17][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0\,
	regout => \RAM[21][8]~regout\);

-- Location: LC_X12_Y5_N2
\RAM[25][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~1\ = (\mem_a~combout\(3) & ((\Mux7~0\ & (\RAM[29][8]~regout\)) # (!\Mux7~0\ & ((RAM[25][8]))))) # (!\mem_a~combout\(3) & (((\Mux7~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[29][8]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(8),
	datad => \Mux7~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~1\,
	regout => \RAM[25][8]~regout\);

-- Location: LC_X11_Y5_N6
\RAM[28][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, \mem_d~combout\(8), , , VCC)

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
	datac => \mem_d~combout\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][8]~regout\);

-- Location: LC_X10_Y7_N2
\RAM[16][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][8]~regout\ = DFFEAS(((\mem_d~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, , , , )

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
	datab => \mem_d~combout\(8),
	aclr => \rst~combout\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][8]~regout\);

-- Location: LC_X10_Y5_N8
\RAM[20][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~4\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[20][8])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[16][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(8),
	datad => \RAM[16][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~4\,
	regout => \RAM[20][8]~regout\);

-- Location: LC_X10_Y5_N9
\RAM[24][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~5\ = (\mem_a~combout\(3) & ((\Mux7~4\ & (\RAM[28][8]~regout\)) # (!\Mux7~4\ & ((RAM[24][8]))))) # (!\mem_a~combout\(3) & (((\Mux7~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[28][8]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(8),
	datad => \Mux7~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~5\,
	regout => \RAM[24][8]~regout\);

-- Location: LC_X5_Y6_N5
\RAM[30][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, \mem_d~combout\(8), , , VCC)

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
	datac => \mem_d~combout\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][8]~regout\);

-- Location: LC_X3_Y5_N2
\RAM[18][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][8]~regout\ = DFFEAS(((\mem_d~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, , , , )

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
	datab => \mem_d~combout\(8),
	aclr => \rst~combout\,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][8]~regout\);

-- Location: LC_X3_Y5_N8
\RAM[22][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[22][8])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[18][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(8),
	datad => \RAM[18][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~2\,
	regout => \RAM[22][8]~regout\);

-- Location: LC_X8_Y5_N8
\RAM[26][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~3\ = (\Mux7~2\ & ((\RAM[30][8]~regout\) # ((!\mem_a~combout\(3))))) # (!\Mux7~2\ & (((RAM[26][8] & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[30][8]~regout\,
	datab => \Mux7~2\,
	datac => \mem_d~combout\(8),
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~3\,
	regout => \RAM[26][8]~regout\);

-- Location: LC_X8_Y5_N9
\Mux7~6\ : maxv_lcell
-- Equation(s):
-- \Mux7~6_combout\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((\Mux7~3\)))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & (\Mux7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \Mux7~5\,
	datad => \Mux7~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~6_combout\);

-- Location: LC_X8_Y5_N0
\Mux7~9\ : maxv_lcell
-- Equation(s):
-- \Mux7~9_combout\ = (\mem_a~combout\(0) & ((\Mux7~6_combout\ & (\Mux7~8\)) # (!\Mux7~6_combout\ & ((\Mux7~1\))))) # (!\mem_a~combout\(0) & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \Mux7~8\,
	datac => \Mux7~1\,
	datad => \Mux7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~9_combout\);

-- Location: LC_X4_Y9_N2
\RAM[11][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][8]~regout\ = DFFEAS((\mem_d~combout\(8)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, , , , )

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
	dataa => \mem_d~combout\(8),
	aclr => \rst~combout\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][8]~regout\);

-- Location: LC_X5_Y9_N4
\RAM[8][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][8]~regout\ = DFFEAS(((\mem_d~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, , , , )

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
	datab => \mem_d~combout\(8),
	aclr => \rst~combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][8]~regout\);

-- Location: LC_X6_Y9_N2
\RAM[10][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~10\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[10][8])) # (!\mem_a~combout\(1) & ((\RAM[8][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(8),
	datad => \RAM[8][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~10\,
	regout => \RAM[10][8]~regout\);

-- Location: LC_X6_Y9_N0
\RAM[9][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~11\ = (\mem_a~combout\(0) & ((\Mux7~10\ & (\RAM[11][8]~regout\)) # (!\Mux7~10\ & ((RAM[9][8]))))) # (!\mem_a~combout\(0) & (((\Mux7~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[11][8]~regout\,
	datac => \mem_d~combout\(8),
	datad => \Mux7~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~11\,
	regout => \RAM[9][8]~regout\);

-- Location: LC_X12_Y7_N8
\RAM[15][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][8]~regout\ = DFFEAS(((\mem_d~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, , , , )

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
	datab => \mem_d~combout\(8),
	aclr => \rst~combout\,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][8]~regout\);

-- Location: LC_X12_Y6_N1
\RAM[12][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][8]~regout\ = DFFEAS(((\mem_d~combout\(8))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, , , , )

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
	datab => \mem_d~combout\(8),
	aclr => \rst~combout\,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][8]~regout\);

-- Location: LC_X11_Y7_N8
\RAM[13][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~17\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[13][8])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[12][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(8),
	datad => \RAM[12][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~17\,
	regout => \RAM[13][8]~regout\);

-- Location: LC_X11_Y7_N9
\RAM[14][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~18\ = (\mem_a~combout\(1) & ((\Mux7~17\ & (\RAM[15][8]~regout\)) # (!\Mux7~17\ & ((RAM[14][8]))))) # (!\mem_a~combout\(1) & (((\Mux7~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[15][8]~regout\,
	datac => \mem_d~combout\(8),
	datad => \Mux7~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~18\,
	regout => \RAM[14][8]~regout\);

-- Location: LC_X5_Y6_N2
\RAM[3][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, \mem_d~combout\(8), , , VCC)

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
	datac => \mem_d~combout\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][8]~regout\);

-- Location: LC_X6_Y6_N1
\RAM[0][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(8), , , VCC)

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
	datac => \mem_d~combout\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][8]~regout\);

-- Location: LC_X6_Y5_N8
\RAM[2][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~14\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[2][8])) # (!\mem_a~combout\(1) & ((\RAM[0][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(8),
	datad => \RAM[0][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~14\,
	regout => \RAM[2][8]~regout\);

-- Location: LC_X6_Y5_N9
\RAM[1][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~15\ = (\mem_a~combout\(0) & ((\Mux7~14\ & (\RAM[3][8]~regout\)) # (!\Mux7~14\ & ((RAM[1][8]))))) # (!\mem_a~combout\(0) & (((\Mux7~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[3][8]~regout\,
	datac => \mem_d~combout\(8),
	datad => \Mux7~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~15\,
	regout => \RAM[1][8]~regout\);

-- Location: LC_X7_Y4_N5
\RAM[7][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(8), , , VCC)

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
	datac => \mem_d~combout\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][8]~regout\);

-- Location: LC_X8_Y4_N6
\RAM[4][8]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][8]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, \mem_d~combout\(8), , , VCC)

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
	datac => \mem_d~combout\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][8]~regout\);

-- Location: LC_X6_Y4_N9
\RAM[5][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~12\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[5][8])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[4][8]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(8),
	datad => \RAM[4][8]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~12\,
	regout => \RAM[5][8]~regout\);

-- Location: LC_X6_Y4_N0
\RAM[6][8]\ : maxv_lcell
-- Equation(s):
-- \Mux7~13\ = (\mem_a~combout\(1) & ((\Mux7~12\ & (\RAM[7][8]~regout\)) # (!\Mux7~12\ & ((RAM[6][8]))))) # (!\mem_a~combout\(1) & (((\Mux7~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[7][8]~regout\,
	datac => \mem_d~combout\(8),
	datad => \Mux7~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~13\,
	regout => \RAM[6][8]~regout\);

-- Location: LC_X7_Y5_N2
\Mux7~16\ : maxv_lcell
-- Equation(s):
-- \Mux7~16_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\Mux7~13\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & (\Mux7~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux7~15\,
	datad => \Mux7~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~16_combout\);

-- Location: LC_X7_Y5_N3
\Mux7~19\ : maxv_lcell
-- Equation(s):
-- \Mux7~19_combout\ = (\mem_a~combout\(3) & ((\Mux7~16_combout\ & ((\Mux7~18\))) # (!\Mux7~16_combout\ & (\Mux7~11\)))) # (!\mem_a~combout\(3) & (((\Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux7~11\,
	datac => \Mux7~18\,
	datad => \Mux7~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~19_combout\);

-- Location: LC_X8_Y5_N3
\mem_out[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[8]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & (\Mux7~9_combout\)) # (!\mem_a~combout\(4) & ((\Mux7~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux7~9_combout\,
	datad => \Mux7~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[8]~reg0_regout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(9),
	combout => \mem_d~combout\(9));

-- Location: LC_X4_Y4_N2
\RAM[31][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][9]~regout\ = DFFEAS((((\mem_d~combout\(9)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(9),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][9]~regout\);

-- Location: LC_X4_Y4_N4
\RAM[19][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][9]~regout\ = DFFEAS((((\mem_d~combout\(9)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, , , , )

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
	datad => \mem_d~combout\(9),
	aclr => \rst~combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][9]~regout\);

-- Location: LC_X5_Y4_N2
\RAM[23][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[23][9])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[19][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(9),
	datad => \RAM[19][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~7\,
	regout => \RAM[23][9]~regout\);

-- Location: LC_X5_Y4_N1
\RAM[27][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~8\ = (\mem_a~combout\(3) & ((\Mux6~7\ & (\RAM[31][9]~regout\)) # (!\Mux6~7\ & ((RAM[27][9]))))) # (!\mem_a~combout\(3) & (((\Mux6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[31][9]~regout\,
	datac => \mem_d~combout\(9),
	datad => \Mux6~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~8\,
	regout => \RAM[27][9]~regout\);

-- Location: LC_X13_Y7_N9
\RAM[28][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][9]~regout\ = DFFEAS((\mem_d~combout\(9)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, , , , )

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
	dataa => \mem_d~combout\(9),
	aclr => \rst~combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][9]~regout\);

-- Location: LC_X10_Y7_N1
\RAM[16][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, \mem_d~combout\(9), , , VCC)

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
	datac => \mem_d~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][9]~regout\);

-- Location: LC_X9_Y7_N9
\RAM[20][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~4\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[20][9])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[16][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(9),
	datad => \RAM[16][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~4\,
	regout => \RAM[20][9]~regout\);

-- Location: LC_X9_Y7_N5
\RAM[24][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~5\ = (\mem_a~combout\(3) & ((\Mux6~4\ & (\RAM[28][9]~regout\)) # (!\Mux6~4\ & ((RAM[24][9]))))) # (!\mem_a~combout\(3) & (((\Mux6~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[28][9]~regout\,
	datac => \mem_d~combout\(9),
	datad => \Mux6~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~5\,
	regout => \RAM[24][9]~regout\);

-- Location: LC_X11_Y5_N7
\RAM[29][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(9), , , VCC)

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
	datac => \mem_d~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][9]~regout\);

-- Location: LC_X13_Y5_N8
\RAM[17][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][9]~regout\ = DFFEAS((\mem_d~combout\(9)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, , , , )

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
	dataa => \mem_d~combout\(9),
	aclr => \rst~combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][9]~regout\);

-- Location: LC_X12_Y5_N8
\RAM[21][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~2\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (RAM[21][9])) # (!\mem_a~combout\(2) & ((\RAM[17][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(9),
	datad => \RAM[17][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2\,
	regout => \RAM[21][9]~regout\);

-- Location: LC_X12_Y5_N0
\RAM[25][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~3\ = (\mem_a~combout\(3) & ((\Mux6~2\ & (\RAM[29][9]~regout\)) # (!\Mux6~2\ & ((RAM[25][9]))))) # (!\mem_a~combout\(3) & (((\Mux6~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[29][9]~regout\,
	datac => \mem_d~combout\(9),
	datad => \Mux6~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~3\,
	regout => \RAM[25][9]~regout\);

-- Location: LC_X11_Y6_N6
\Mux6~6\ : maxv_lcell
-- Equation(s):
-- \Mux6~6_combout\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((\Mux6~3\))) # (!\mem_a~combout\(0) & (\Mux6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \Mux6~5\,
	datac => \mem_a~combout\(0),
	datad => \Mux6~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~6_combout\);

-- Location: LC_X2_Y6_N4
\RAM[30][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, \mem_d~combout\(9), , , VCC)

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
	datac => \mem_d~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][9]~regout\);

-- Location: LC_X3_Y4_N9
\RAM[18][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, \mem_d~combout\(9), , , VCC)

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
	datac => \mem_d~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][9]~regout\);

-- Location: LC_X3_Y4_N7
\RAM[22][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~0\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[22][9])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[18][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(9),
	datad => \RAM[18][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0\,
	regout => \RAM[22][9]~regout\);

-- Location: LC_X2_Y6_N9
\RAM[26][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~1\ = (\mem_a~combout\(3) & ((\Mux6~0\ & (\RAM[30][9]~regout\)) # (!\Mux6~0\ & ((RAM[26][9]))))) # (!\mem_a~combout\(3) & (((\Mux6~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[30][9]~regout\,
	datac => \mem_d~combout\(9),
	datad => \Mux6~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1\,
	regout => \RAM[26][9]~regout\);

-- Location: LC_X11_Y6_N4
\Mux6~9\ : maxv_lcell
-- Equation(s):
-- \Mux6~9_combout\ = (\mem_a~combout\(1) & ((\Mux6~6_combout\ & (\Mux6~8\)) # (!\Mux6~6_combout\ & ((\Mux6~1\))))) # (!\mem_a~combout\(1) & (((\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \Mux6~8\,
	datac => \Mux6~6_combout\,
	datad => \Mux6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~9_combout\);

-- Location: LC_X7_Y10_N1
\RAM[11][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][9]~regout\ = DFFEAS(((\mem_d~combout\(9))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, , , , )

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
	datab => \mem_d~combout\(9),
	aclr => \rst~combout\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][9]~regout\);

-- Location: LC_X9_Y10_N1
\RAM[8][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, \mem_d~combout\(9), , , VCC)

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
	datac => \mem_d~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][9]~regout\);

-- Location: LC_X8_Y10_N8
\RAM[9][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~10\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[9][9])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[8][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(9),
	datad => \RAM[8][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~10\,
	regout => \RAM[9][9]~regout\);

-- Location: LC_X8_Y10_N9
\RAM[10][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~11\ = (\mem_a~combout\(1) & ((\Mux6~10\ & (\RAM[11][9]~regout\)) # (!\Mux6~10\ & ((RAM[10][9]))))) # (!\mem_a~combout\(1) & (((\Mux6~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[11][9]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(9),
	datad => \Mux6~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~11\,
	regout => \RAM[10][9]~regout\);

-- Location: LC_X12_Y7_N2
\RAM[15][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, \mem_d~combout\(9), , , VCC)

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
	datac => \mem_d~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][9]~regout\);

-- Location: LC_X11_Y4_N3
\RAM[12][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, \mem_d~combout\(9), , , VCC)

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
	datac => \mem_d~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][9]~regout\);

-- Location: LC_X11_Y4_N2
\RAM[14][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~17\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((RAM[14][9])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\RAM[12][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(9),
	datad => \RAM[12][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~17\,
	regout => \RAM[14][9]~regout\);

-- Location: LC_X12_Y7_N3
\RAM[13][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~18\ = (\mem_a~combout\(0) & ((\Mux6~17\ & (\RAM[15][9]~regout\)) # (!\Mux6~17\ & ((RAM[13][9]))))) # (!\mem_a~combout\(0) & (((\Mux6~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[15][9]~regout\,
	datac => \mem_d~combout\(9),
	datad => \Mux6~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~18\,
	regout => \RAM[13][9]~regout\);

-- Location: LC_X7_Y4_N6
\RAM[7][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][9]~regout\ = DFFEAS((((\mem_d~combout\(9)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, , , , )

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
	datad => \mem_d~combout\(9),
	aclr => \rst~combout\,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][9]~regout\);

-- Location: LC_X8_Y4_N1
\RAM[4][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][9]~regout\ = DFFEAS((((\mem_d~combout\(9)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, , , , )

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
	datad => \mem_d~combout\(9),
	aclr => \rst~combout\,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][9]~regout\);

-- Location: LC_X7_Y5_N4
\RAM[6][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~12\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[6][9])) # (!\mem_a~combout\(1) & ((\RAM[4][9]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(9),
	datad => \RAM[4][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~12\,
	regout => \RAM[6][9]~regout\);

-- Location: LC_X7_Y5_N5
\RAM[5][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~13\ = (\mem_a~combout\(0) & ((\Mux6~12\ & (\RAM[7][9]~regout\)) # (!\Mux6~12\ & ((RAM[5][9]))))) # (!\mem_a~combout\(0) & (((\Mux6~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[7][9]~regout\,
	datac => \mem_d~combout\(9),
	datad => \Mux6~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~13\,
	regout => \RAM[5][9]~regout\);

-- Location: LC_X5_Y6_N8
\RAM[3][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][9]~regout\ = DFFEAS(((\mem_d~combout\(9))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, , , , )

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
	datab => \mem_d~combout\(9),
	aclr => \rst~combout\,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][9]~regout\);

-- Location: LC_X5_Y8_N8
\RAM[0][9]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][9]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(9), , , VCC)

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
	datac => \mem_d~combout\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][9]~regout\);

-- Location: LC_X5_Y8_N0
\RAM[1][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~14\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[1][9])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[0][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(9),
	datad => \RAM[0][9]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~14\,
	regout => \RAM[1][9]~regout\);

-- Location: LC_X6_Y6_N3
\RAM[2][9]\ : maxv_lcell
-- Equation(s):
-- \Mux6~15\ = (\mem_a~combout\(1) & ((\Mux6~14\ & (\RAM[3][9]~regout\)) # (!\Mux6~14\ & ((RAM[2][9]))))) # (!\mem_a~combout\(1) & (((\Mux6~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[3][9]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(9),
	datad => \Mux6~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~15\,
	regout => \RAM[2][9]~regout\);

-- Location: LC_X11_Y6_N8
\Mux6~16\ : maxv_lcell
-- Equation(s):
-- \Mux6~16_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\Mux6~13\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\Mux6~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux6~13\,
	datad => \Mux6~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~16_combout\);

-- Location: LC_X11_Y6_N0
\Mux6~19\ : maxv_lcell
-- Equation(s):
-- \Mux6~19_combout\ = (\mem_a~combout\(3) & ((\Mux6~16_combout\ & ((\Mux6~18\))) # (!\Mux6~16_combout\ & (\Mux6~11\)))) # (!\mem_a~combout\(3) & (((\Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~11\,
	datab => \mem_a~combout\(3),
	datac => \Mux6~18\,
	datad => \Mux6~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~19_combout\);

-- Location: LC_X11_Y6_N1
\mem_out[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[9]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & (\Mux6~9_combout\)) # (!\mem_a~combout\(4) & ((\Mux6~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux6~9_combout\,
	datad => \Mux6~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[9]~reg0_regout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(10),
	combout => \mem_d~combout\(10));

-- Location: LC_X11_Y5_N2
\RAM[29][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(10), , , VCC)

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
	datac => \mem_d~combout\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][10]~regout\);

-- Location: LC_X13_Y8_N9
\RAM[17][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, \mem_d~combout\(10), , , VCC)

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
	datac => \mem_d~combout\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][10]~regout\);

-- Location: LC_X12_Y8_N0
\RAM[21][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~0\ = (\mem_a~combout\(2) & (((RAM[21][10]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\RAM[17][10]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[17][10]~regout\,
	datac => \mem_d~combout\(10),
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0\,
	regout => \RAM[21][10]~regout\);

-- Location: LC_X12_Y8_N1
\RAM[25][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~1\ = (\mem_a~combout\(3) & ((\Mux5~0\ & (\RAM[29][10]~regout\)) # (!\Mux5~0\ & ((RAM[25][10]))))) # (!\mem_a~combout\(3) & (((\Mux5~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[29][10]~regout\,
	datac => \mem_d~combout\(10),
	datad => \Mux5~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~1\,
	regout => \RAM[25][10]~regout\);

-- Location: LC_X4_Y4_N1
\RAM[31][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][10]~regout\ = DFFEAS((((\mem_d~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(10),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][10]~regout\);

-- Location: LC_X4_Y4_N7
\RAM[19][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][10]~regout\ = DFFEAS((((\mem_d~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, , , , )

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
	datad => \mem_d~combout\(10),
	aclr => \rst~combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][10]~regout\);

-- Location: LC_X5_Y4_N3
\RAM[23][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~7\ = (\mem_a~combout\(2) & (((RAM[23][10]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\RAM[19][10]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[19][10]~regout\,
	datac => \mem_d~combout\(10),
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~7\,
	regout => \RAM[23][10]~regout\);

-- Location: LC_X5_Y4_N4
\RAM[27][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~8\ = (\mem_a~combout\(3) & ((\Mux5~7\ & (\RAM[31][10]~regout\)) # (!\Mux5~7\ & ((RAM[27][10]))))) # (!\mem_a~combout\(3) & (((\Mux5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][10]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(10),
	datad => \Mux5~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~8\,
	regout => \RAM[27][10]~regout\);

-- Location: LC_X8_Y4_N0
\RAM[28][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][10]~regout\ = DFFEAS((((\mem_d~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, , , , )

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
	datad => \mem_d~combout\(10),
	aclr => \rst~combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][10]~regout\);

-- Location: LC_X10_Y7_N5
\RAM[16][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, \mem_d~combout\(10), , , VCC)

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
	datac => \mem_d~combout\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][10]~regout\);

-- Location: LC_X9_Y7_N7
\RAM[20][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~4\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[20][10])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[16][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(10),
	datad => \RAM[16][10]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~4\,
	regout => \RAM[20][10]~regout\);

-- Location: LC_X9_Y4_N0
\RAM[24][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~5\ = (\mem_a~combout\(3) & ((\Mux5~4\ & (\RAM[28][10]~regout\)) # (!\Mux5~4\ & ((RAM[24][10]))))) # (!\mem_a~combout\(3) & (((\Mux5~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[28][10]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(10),
	datad => \Mux5~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~5\,
	regout => \RAM[24][10]~regout\);

-- Location: LC_X13_Y4_N4
\RAM[30][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, \mem_d~combout\(10), , , VCC)

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
	datac => \mem_d~combout\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][10]~regout\);

-- Location: LC_X3_Y4_N2
\RAM[18][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, \mem_d~combout\(10), , , VCC)

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
	datac => \mem_d~combout\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][10]~regout\);

-- Location: LC_X3_Y4_N6
\RAM[22][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[22][10])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[18][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(10),
	datad => \RAM[18][10]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~2\,
	regout => \RAM[22][10]~regout\);

-- Location: LC_X9_Y4_N3
\RAM[26][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~3\ = (\mem_a~combout\(3) & ((\Mux5~2\ & (\RAM[30][10]~regout\)) # (!\Mux5~2\ & ((RAM[26][10]))))) # (!\mem_a~combout\(3) & (((\Mux5~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[30][10]~regout\,
	datac => \mem_d~combout\(10),
	datad => \Mux5~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~3\,
	regout => \RAM[26][10]~regout\);

-- Location: LC_X9_Y4_N4
\Mux5~6\ : maxv_lcell
-- Equation(s):
-- \Mux5~6_combout\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((\Mux5~3\))) # (!\mem_a~combout\(1) & (\Mux5~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \Mux5~5\,
	datad => \Mux5~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~6_combout\);

-- Location: LC_X8_Y5_N4
\Mux5~9\ : maxv_lcell
-- Equation(s):
-- \Mux5~9_combout\ = (\mem_a~combout\(0) & ((\Mux5~6_combout\ & ((\Mux5~8\))) # (!\Mux5~6_combout\ & (\Mux5~1\)))) # (!\mem_a~combout\(0) & (((\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \Mux5~1\,
	datac => \Mux5~8\,
	datad => \Mux5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~9_combout\);

-- Location: LC_X4_Y9_N5
\RAM[11][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][10]~regout\ = DFFEAS(((\mem_d~combout\(10))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, , , , )

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
	datab => \mem_d~combout\(10),
	aclr => \rst~combout\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][10]~regout\);

-- Location: LC_X5_Y9_N7
\RAM[8][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][10]~regout\ = DFFEAS(((\mem_d~combout\(10))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, , , , )

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
	datab => \mem_d~combout\(10),
	aclr => \rst~combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][10]~regout\);

-- Location: LC_X6_Y9_N3
\RAM[10][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~10\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[10][10])) # (!\mem_a~combout\(1) & ((\RAM[8][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(10),
	datad => \RAM[8][10]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~10\,
	regout => \RAM[10][10]~regout\);

-- Location: LC_X6_Y9_N9
\RAM[9][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~11\ = (\mem_a~combout\(0) & ((\Mux5~10\ & (\RAM[11][10]~regout\)) # (!\Mux5~10\ & ((RAM[9][10]))))) # (!\mem_a~combout\(0) & (((\Mux5~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[11][10]~regout\,
	datac => \mem_d~combout\(10),
	datad => \Mux5~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~11\,
	regout => \RAM[9][10]~regout\);

-- Location: LC_X12_Y7_N0
\RAM[15][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, \mem_d~combout\(10), , , VCC)

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
	datac => \mem_d~combout\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][10]~regout\);

-- Location: LC_X12_Y6_N6
\RAM[12][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][10]~regout\ = DFFEAS((((\mem_d~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, , , , )

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
	datad => \mem_d~combout\(10),
	aclr => \rst~combout\,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][10]~regout\);

-- Location: LC_X11_Y7_N4
\RAM[13][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~17\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[13][10])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[12][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(10),
	datad => \RAM[12][10]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~17\,
	regout => \RAM[13][10]~regout\);

-- Location: LC_X11_Y7_N5
\RAM[14][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~18\ = (\mem_a~combout\(1) & ((\Mux5~17\ & (\RAM[15][10]~regout\)) # (!\Mux5~17\ & ((RAM[14][10]))))) # (!\mem_a~combout\(1) & (((\Mux5~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[15][10]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(10),
	datad => \Mux5~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~18\,
	regout => \RAM[14][10]~regout\);

-- Location: LC_X5_Y7_N5
\RAM[3][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][10]~regout\ = DFFEAS((((\mem_d~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, , , , )

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
	datad => \mem_d~combout\(10),
	aclr => \rst~combout\,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][10]~regout\);

-- Location: LC_X5_Y7_N8
\RAM[0][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][10]~regout\ = DFFEAS((((\mem_d~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, , , , )

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
	datad => \mem_d~combout\(10),
	aclr => \rst~combout\,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][10]~regout\);

-- Location: LC_X4_Y7_N8
\RAM[2][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~14\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[2][10])) # (!\mem_a~combout\(1) & ((\RAM[0][10]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(10),
	datad => \RAM[0][10]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~14\,
	regout => \RAM[2][10]~regout\);

-- Location: LC_X4_Y7_N6
\RAM[1][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~15\ = (\mem_a~combout\(0) & ((\Mux5~14\ & (\RAM[3][10]~regout\)) # (!\Mux5~14\ & ((RAM[1][10]))))) # (!\mem_a~combout\(0) & (((\Mux5~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[3][10]~regout\,
	datac => \mem_d~combout\(10),
	datad => \Mux5~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~15\,
	regout => \RAM[1][10]~regout\);

-- Location: LC_X7_Y7_N4
\RAM[7][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][10]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(10), , , VCC)

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
	datac => \mem_d~combout\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][10]~regout\);

-- Location: LC_X8_Y4_N7
\RAM[4][10]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][10]~regout\ = DFFEAS((((\mem_d~combout\(10)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, , , , )

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
	datad => \mem_d~combout\(10),
	aclr => \rst~combout\,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][10]~regout\);

-- Location: LC_X7_Y4_N8
\RAM[5][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~12\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[5][10])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[4][10]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(10),
	datad => \RAM[4][10]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~12\,
	regout => \RAM[5][10]~regout\);

-- Location: LC_X7_Y7_N6
\RAM[6][10]\ : maxv_lcell
-- Equation(s):
-- \Mux5~13\ = (\mem_a~combout\(1) & ((\Mux5~12\ & (\RAM[7][10]~regout\)) # (!\Mux5~12\ & ((RAM[6][10]))))) # (!\mem_a~combout\(1) & (((\Mux5~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[7][10]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(10),
	datad => \Mux5~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~13\,
	regout => \RAM[6][10]~regout\);

-- Location: LC_X7_Y7_N7
\Mux5~16\ : maxv_lcell
-- Equation(s):
-- \Mux5~16_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\Mux5~13\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & (\Mux5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux5~15\,
	datad => \Mux5~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~16_combout\);

-- Location: LC_X8_Y5_N1
\Mux5~19\ : maxv_lcell
-- Equation(s):
-- \Mux5~19_combout\ = (\mem_a~combout\(3) & ((\Mux5~16_combout\ & ((\Mux5~18\))) # (!\Mux5~16_combout\ & (\Mux5~11\)))) # (!\mem_a~combout\(3) & (((\Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux5~11\,
	datac => \Mux5~18\,
	datad => \Mux5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~19_combout\);

-- Location: LC_X8_Y5_N2
\mem_out[10]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[10]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & (\Mux5~9_combout\)) # (!\mem_a~combout\(4) & ((\Mux5~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux5~9_combout\,
	datad => \Mux5~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[10]~reg0_regout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(11),
	combout => \mem_d~combout\(11));

-- Location: LC_X13_Y8_N6
\RAM[30][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, \mem_d~combout\(11), , , VCC)

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
	datac => \mem_d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][11]~regout\);

-- Location: LC_X13_Y9_N7
\RAM[18][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][11]~regout\ = DFFEAS((\mem_d~combout\(11)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, , , , )

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
	dataa => \mem_d~combout\(11),
	aclr => \rst~combout\,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][11]~regout\);

-- Location: LC_X12_Y9_N1
\RAM[22][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~0\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[22][11])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[18][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(11),
	datad => \RAM[18][11]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0\,
	regout => \RAM[22][11]~regout\);

-- Location: LC_X12_Y9_N2
\RAM[26][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~1\ = (\mem_a~combout\(3) & ((\Mux4~0\ & (\RAM[30][11]~regout\)) # (!\Mux4~0\ & ((RAM[26][11]))))) # (!\mem_a~combout\(3) & (((\Mux4~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[30][11]~regout\,
	datac => \mem_d~combout\(11),
	datad => \Mux4~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1\,
	regout => \RAM[26][11]~regout\);

-- Location: LC_X4_Y4_N8
\RAM[31][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, \mem_d~combout\(11), , , VCC)

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
	datac => \mem_d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][11]~regout\);

-- Location: LC_X4_Y4_N6
\RAM[19][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, \mem_d~combout\(11), , , VCC)

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
	datac => \mem_d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][11]~regout\);

-- Location: LC_X5_Y4_N8
\RAM[23][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~7\ = (\mem_a~combout\(2) & (((RAM[23][11]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\RAM[19][11]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[19][11]~regout\,
	datac => \mem_d~combout\(11),
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~7\,
	regout => \RAM[23][11]~regout\);

-- Location: LC_X5_Y4_N9
\RAM[27][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~8\ = (\mem_a~combout\(3) & ((\Mux4~7\ & (\RAM[31][11]~regout\)) # (!\Mux4~7\ & ((RAM[27][11]))))) # (!\mem_a~combout\(3) & (((\Mux4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][11]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(11),
	datad => \Mux4~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~8\,
	regout => \RAM[27][11]~regout\);

-- Location: LC_X10_Y7_N6
\RAM[28][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][11]~regout\ = DFFEAS((((\mem_d~combout\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, , , , )

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
	datad => \mem_d~combout\(11),
	aclr => \rst~combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][11]~regout\);

-- Location: LC_X10_Y7_N4
\RAM[16][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][11]~regout\ = DFFEAS((((\mem_d~combout\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, , , , )

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
	datad => \mem_d~combout\(11),
	aclr => \rst~combout\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][11]~regout\);

-- Location: LC_X9_Y7_N0
\RAM[20][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~4\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[20][11])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[16][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(11),
	datad => \RAM[16][11]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~4\,
	regout => \RAM[20][11]~regout\);

-- Location: LC_X9_Y7_N1
\RAM[24][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~5\ = (\mem_a~combout\(3) & ((\Mux4~4\ & (\RAM[28][11]~regout\)) # (!\Mux4~4\ & ((RAM[24][11]))))) # (!\mem_a~combout\(3) & (((\Mux4~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[28][11]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(11),
	datad => \Mux4~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~5\,
	regout => \RAM[24][11]~regout\);

-- Location: LC_X7_Y8_N4
\RAM[29][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(11), , , VCC)

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
	datac => \mem_d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][11]~regout\);

-- Location: LC_X13_Y8_N5
\RAM[17][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, \mem_d~combout\(11), , , VCC)

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
	datac => \mem_d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][11]~regout\);

-- Location: LC_X12_Y8_N2
\RAM[21][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[21][11])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[17][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(11),
	datad => \RAM[17][11]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~2\,
	regout => \RAM[21][11]~regout\);

-- Location: LC_X12_Y8_N3
\RAM[25][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~3\ = (\mem_a~combout\(3) & ((\Mux4~2\ & (\RAM[29][11]~regout\)) # (!\Mux4~2\ & ((RAM[25][11]))))) # (!\mem_a~combout\(3) & (((\Mux4~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[29][11]~regout\,
	datac => \mem_d~combout\(11),
	datad => \Mux4~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~3\,
	regout => \RAM[25][11]~regout\);

-- Location: LC_X8_Y8_N8
\Mux4~6\ : maxv_lcell
-- Equation(s):
-- \Mux4~6_combout\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((\Mux4~3\))) # (!\mem_a~combout\(0) & (\Mux4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \Mux4~5\,
	datad => \Mux4~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~6_combout\);

-- Location: LC_X8_Y8_N7
\Mux4~9\ : maxv_lcell
-- Equation(s):
-- \Mux4~9_combout\ = (\mem_a~combout\(1) & ((\Mux4~6_combout\ & ((\Mux4~8\))) # (!\Mux4~6_combout\ & (\Mux4~1\)))) # (!\mem_a~combout\(1) & (((\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \Mux4~1\,
	datac => \Mux4~8\,
	datad => \Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~9_combout\);

-- Location: LC_X7_Y10_N6
\RAM[11][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][11]~regout\ = DFFEAS(((\mem_d~combout\(11))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, , , , )

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
	datab => \mem_d~combout\(11),
	aclr => \rst~combout\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][11]~regout\);

-- Location: LC_X7_Y10_N0
\RAM[8][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][11]~regout\ = DFFEAS(((\mem_d~combout\(11))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, , , , )

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
	datab => \mem_d~combout\(11),
	aclr => \rst~combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][11]~regout\);

-- Location: LC_X8_Y10_N5
\RAM[9][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~10\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[9][11])) # (!\mem_a~combout\(0) & ((\RAM[8][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(11),
	datad => \RAM[8][11]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~10\,
	regout => \RAM[9][11]~regout\);

-- Location: LC_X8_Y10_N6
\RAM[10][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~11\ = (\mem_a~combout\(1) & ((\Mux4~10\ & (\RAM[11][11]~regout\)) # (!\Mux4~10\ & ((RAM[10][11]))))) # (!\mem_a~combout\(1) & (((\Mux4~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[11][11]~regout\,
	datac => \mem_d~combout\(11),
	datad => \Mux4~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~11\,
	regout => \RAM[10][11]~regout\);

-- Location: LC_X9_Y8_N6
\RAM[15][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, \mem_d~combout\(11), , , VCC)

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
	datac => \mem_d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][11]~regout\);

-- Location: LC_X11_Y4_N7
\RAM[12][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, \mem_d~combout\(11), , , VCC)

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
	datac => \mem_d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][11]~regout\);

-- Location: LC_X10_Y4_N9
\RAM[14][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~17\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[14][11])) # (!\mem_a~combout\(1) & ((\RAM[12][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(11),
	datad => \RAM[12][11]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~17\,
	regout => \RAM[14][11]~regout\);

-- Location: LC_X10_Y4_N5
\RAM[13][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~18\ = (\mem_a~combout\(0) & ((\Mux4~17\ & (\RAM[15][11]~regout\)) # (!\Mux4~17\ & ((RAM[13][11]))))) # (!\mem_a~combout\(0) & (((\Mux4~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[15][11]~regout\,
	datac => \mem_d~combout\(11),
	datad => \Mux4~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~18\,
	regout => \RAM[13][11]~regout\);

-- Location: LC_X5_Y7_N6
\RAM[3][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, \mem_d~combout\(11), , , VCC)

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
	datac => \mem_d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][11]~regout\);

-- Location: LC_X5_Y7_N1
\RAM[0][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][11]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(11), , , VCC)

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
	datac => \mem_d~combout\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][11]~regout\);

-- Location: LC_X4_Y7_N2
\RAM[1][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~14\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[1][11])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[0][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(11),
	datad => \RAM[0][11]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~14\,
	regout => \RAM[1][11]~regout\);

-- Location: LC_X4_Y7_N3
\RAM[2][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~15\ = (\mem_a~combout\(1) & ((\Mux4~14\ & (\RAM[3][11]~regout\)) # (!\Mux4~14\ & ((RAM[2][11]))))) # (!\mem_a~combout\(1) & (((\Mux4~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[3][11]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(11),
	datad => \Mux4~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~15\,
	regout => \RAM[2][11]~regout\);

-- Location: LC_X8_Y9_N5
\RAM[7][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][11]~regout\ = DFFEAS((((\mem_d~combout\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, , , , )

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
	datad => \mem_d~combout\(11),
	aclr => \rst~combout\,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][11]~regout\);

-- Location: LC_X8_Y4_N4
\RAM[4][11]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][11]~regout\ = DFFEAS((((\mem_d~combout\(11)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, , , , )

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
	datad => \mem_d~combout\(11),
	aclr => \rst~combout\,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][11]~regout\);

-- Location: LC_X7_Y5_N6
\RAM[6][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~12\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[6][11])) # (!\mem_a~combout\(1) & ((\RAM[4][11]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(11),
	datad => \RAM[4][11]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~12\,
	regout => \RAM[6][11]~regout\);

-- Location: LC_X8_Y8_N3
\RAM[5][11]\ : maxv_lcell
-- Equation(s):
-- \Mux4~13\ = (\mem_a~combout\(0) & ((\Mux4~12\ & (\RAM[7][11]~regout\)) # (!\Mux4~12\ & ((RAM[5][11]))))) # (!\mem_a~combout\(0) & (((\Mux4~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[7][11]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(11),
	datad => \Mux4~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~13\,
	regout => \RAM[5][11]~regout\);

-- Location: LC_X8_Y8_N4
\Mux4~16\ : maxv_lcell
-- Equation(s):
-- \Mux4~16_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\Mux4~13\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & (\Mux4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux4~15\,
	datad => \Mux4~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~16_combout\);

-- Location: LC_X8_Y8_N5
\Mux4~19\ : maxv_lcell
-- Equation(s):
-- \Mux4~19_combout\ = (\mem_a~combout\(3) & ((\Mux4~16_combout\ & ((\Mux4~18\))) # (!\Mux4~16_combout\ & (\Mux4~11\)))) # (!\mem_a~combout\(3) & (((\Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux4~11\,
	datac => \Mux4~18\,
	datad => \Mux4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~19_combout\);

-- Location: LC_X8_Y8_N6
\mem_out[11]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[11]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & (\Mux4~9_combout\)) # (!\mem_a~combout\(4) & ((\Mux4~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux4~9_combout\,
	datad => \Mux4~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[11]~reg0_regout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(12),
	combout => \mem_d~combout\(12));

-- Location: LC_X12_Y4_N5
\RAM[29][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][12]~regout\);

-- Location: LC_X13_Y8_N1
\RAM[17][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][12]~regout\);

-- Location: LC_X12_Y8_N8
\RAM[25][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~0\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (RAM[25][12])) # (!\mem_a~combout\(3) & ((\RAM[17][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(12),
	datad => \RAM[17][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0\,
	regout => \RAM[25][12]~regout\);

-- Location: LC_X12_Y8_N6
\RAM[21][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~1\ = (\mem_a~combout\(2) & ((\Mux3~0\ & (\RAM[29][12]~regout\)) # (!\Mux3~0\ & ((RAM[21][12]))))) # (!\mem_a~combout\(2) & (((\Mux3~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[29][12]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(12),
	datad => \Mux3~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1\,
	regout => \RAM[21][12]~regout\);

-- Location: LC_X4_Y5_N8
\RAM[31][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][12]~regout\);

-- Location: LC_X4_Y5_N2
\RAM[19][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][12]~regout\);

-- Location: LC_X5_Y5_N3
\RAM[27][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~7\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (RAM[27][12])) # (!\mem_a~combout\(3) & ((\RAM[19][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(12),
	datad => \RAM[19][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~7\,
	regout => \RAM[27][12]~regout\);

-- Location: LC_X5_Y5_N4
\RAM[23][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~8\ = (\mem_a~combout\(2) & ((\Mux3~7\ & (\RAM[31][12]~regout\)) # (!\Mux3~7\ & ((RAM[23][12]))))) # (!\mem_a~combout\(2) & (((\Mux3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][12]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(12),
	datad => \Mux3~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~8\,
	regout => \RAM[23][12]~regout\);

-- Location: LC_X10_Y7_N0
\RAM[28][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][12]~regout\);

-- Location: LC_X10_Y7_N9
\RAM[16][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][12]~regout\);

-- Location: LC_X9_Y7_N8
\RAM[20][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~4\ = (\mem_a~combout\(2) & (((RAM[20][12]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\RAM[16][12]~regout\ & ((!\mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[16][12]~regout\,
	datac => \mem_d~combout\(12),
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~4\,
	regout => \RAM[20][12]~regout\);

-- Location: LC_X9_Y7_N4
\RAM[24][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~5\ = (\mem_a~combout\(3) & ((\Mux3~4\ & (\RAM[28][12]~regout\)) # (!\Mux3~4\ & ((RAM[24][12]))))) # (!\mem_a~combout\(3) & (((\Mux3~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[28][12]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(12),
	datad => \Mux3~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~5\,
	regout => \RAM[24][12]~regout\);

-- Location: LC_X13_Y8_N4
\RAM[30][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][12]~regout\);

-- Location: LC_X13_Y9_N8
\RAM[18][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][12]~regout\);

-- Location: LC_X12_Y9_N3
\RAM[22][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[22][12])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[18][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(12),
	datad => \RAM[18][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2\,
	regout => \RAM[22][12]~regout\);

-- Location: LC_X12_Y9_N4
\RAM[26][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~3\ = (\mem_a~combout\(3) & ((\Mux3~2\ & (\RAM[30][12]~regout\)) # (!\Mux3~2\ & ((RAM[26][12]))))) # (!\mem_a~combout\(3) & (((\Mux3~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[30][12]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(12),
	datad => \Mux3~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3\,
	regout => \RAM[26][12]~regout\);

-- Location: LC_X8_Y7_N3
\Mux3~6\ : maxv_lcell
-- Equation(s):
-- \Mux3~6_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((\Mux3~3\))) # (!\mem_a~combout\(1) & (\Mux3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \Mux3~5\,
	datac => \mem_a~combout\(1),
	datad => \Mux3~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~6_combout\);

-- Location: LC_X8_Y7_N7
\Mux3~9\ : maxv_lcell
-- Equation(s):
-- \Mux3~9_combout\ = (\mem_a~combout\(0) & ((\Mux3~6_combout\ & ((\Mux3~8\))) # (!\Mux3~6_combout\ & (\Mux3~1\)))) # (!\mem_a~combout\(0) & (((\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \Mux3~1\,
	datac => \Mux3~8\,
	datad => \Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~9_combout\);

-- Location: LC_X7_Y7_N8
\RAM[7][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][12]~regout\);

-- Location: LC_X8_Y4_N5
\RAM[4][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][12]~regout\);

-- Location: LC_X7_Y4_N3
\RAM[5][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~10\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[5][12])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[4][12]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(12),
	datad => \RAM[4][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~10\,
	regout => \RAM[5][12]~regout\);

-- Location: LC_X7_Y7_N3
\RAM[6][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~11\ = (\mem_a~combout\(1) & ((\Mux3~10\ & (\RAM[7][12]~regout\)) # (!\Mux3~10\ & ((RAM[6][12]))))) # (!\mem_a~combout\(1) & (((\Mux3~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[7][12]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(12),
	datad => \Mux3~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~11\,
	regout => \RAM[6][12]~regout\);

-- Location: LC_X11_Y9_N1
\RAM[15][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][12]~regout\);

-- Location: LC_X12_Y6_N4
\RAM[12][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][12]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, \mem_d~combout\(12), , , VCC)

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
	datac => \mem_d~combout\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][12]~regout\);

-- Location: LC_X11_Y7_N1
\RAM[13][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~17\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[13][12])) # (!\mem_a~combout\(0) & ((\RAM[12][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(12),
	datad => \RAM[12][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~17\,
	regout => \RAM[13][12]~regout\);

-- Location: LC_X11_Y7_N0
\RAM[14][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~18\ = (\mem_a~combout\(1) & ((\Mux3~17\ & (\RAM[15][12]~regout\)) # (!\Mux3~17\ & ((RAM[14][12]))))) # (!\mem_a~combout\(1) & (((\Mux3~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[15][12]~regout\,
	datac => \mem_d~combout\(12),
	datad => \Mux3~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~18\,
	regout => \RAM[14][12]~regout\);

-- Location: LC_X4_Y9_N4
\RAM[11][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][12]~regout\ = DFFEAS(((\mem_d~combout\(12))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, , , , )

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
	datab => \mem_d~combout\(12),
	aclr => \rst~combout\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][12]~regout\);

-- Location: LC_X5_Y9_N5
\RAM[8][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][12]~regout\ = DFFEAS((\mem_d~combout\(12)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, , , , )

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
	dataa => \mem_d~combout\(12),
	aclr => \rst~combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][12]~regout\);

-- Location: LC_X6_Y9_N5
\RAM[10][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~12\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[10][12])) # (!\mem_a~combout\(1) & ((\RAM[8][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(12),
	datad => \RAM[8][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~12\,
	regout => \RAM[10][12]~regout\);

-- Location: LC_X6_Y9_N6
\RAM[9][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~13\ = (\mem_a~combout\(0) & ((\Mux3~12\ & (\RAM[11][12]~regout\)) # (!\Mux3~12\ & ((RAM[9][12]))))) # (!\mem_a~combout\(0) & (((\Mux3~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[11][12]~regout\,
	datac => \mem_d~combout\(12),
	datad => \Mux3~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~13\,
	regout => \RAM[9][12]~regout\);

-- Location: LC_X5_Y6_N7
\RAM[3][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][12]~regout\ = DFFEAS((((\mem_d~combout\(12)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, , , , )

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
	datad => \mem_d~combout\(12),
	aclr => \rst~combout\,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][12]~regout\);

-- Location: LC_X6_Y6_N7
\RAM[0][12]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][12]~regout\ = DFFEAS((((\mem_d~combout\(12)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, , , , )

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
	datad => \mem_d~combout\(12),
	aclr => \rst~combout\,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][12]~regout\);

-- Location: LC_X6_Y5_N4
\RAM[2][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~14\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[2][12])) # (!\mem_a~combout\(1) & ((\RAM[0][12]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(12),
	datad => \RAM[0][12]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~14\,
	regout => \RAM[2][12]~regout\);

-- Location: LC_X6_Y5_N5
\RAM[1][12]\ : maxv_lcell
-- Equation(s):
-- \Mux3~15\ = (\mem_a~combout\(0) & ((\Mux3~14\ & (\RAM[3][12]~regout\)) # (!\Mux3~14\ & ((RAM[1][12]))))) # (!\mem_a~combout\(0) & (((\Mux3~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[3][12]~regout\,
	datac => \mem_d~combout\(12),
	datad => \Mux3~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~15\,
	regout => \RAM[1][12]~regout\);

-- Location: LC_X7_Y7_N5
\Mux3~16\ : maxv_lcell
-- Equation(s):
-- \Mux3~16_combout\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (\Mux3~13\)) # (!\mem_a~combout\(3) & ((\Mux3~15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux3~13\,
	datad => \Mux3~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~16_combout\);

-- Location: LC_X8_Y7_N8
\Mux3~19\ : maxv_lcell
-- Equation(s):
-- \Mux3~19_combout\ = (\mem_a~combout\(2) & ((\Mux3~16_combout\ & ((\Mux3~18\))) # (!\Mux3~16_combout\ & (\Mux3~11\)))) # (!\mem_a~combout\(2) & (((\Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \Mux3~11\,
	datac => \Mux3~18\,
	datad => \Mux3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~19_combout\);

-- Location: LC_X8_Y7_N9
\mem_out[12]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[12]~reg0_regout\ = DFFEAS((\mem_a~combout\(4) & (((\Mux3~9_combout\)))) # (!\mem_a~combout\(4) & (((\Mux3~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(4),
	datac => \Mux3~9_combout\,
	datad => \Mux3~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[12]~reg0_regout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(13),
	combout => \mem_d~combout\(13));

-- Location: LC_X13_Y8_N3
\RAM[30][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][13]~regout\ = DFFEAS(((\mem_d~combout\(13))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, , , , )

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
	datab => \mem_d~combout\(13),
	aclr => \rst~combout\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][13]~regout\);

-- Location: LC_X13_Y9_N6
\RAM[18][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][13]~regout\ = DFFEAS((\mem_d~combout\(13)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, , , , )

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
	dataa => \mem_d~combout\(13),
	aclr => \rst~combout\,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][13]~regout\);

-- Location: LC_X12_Y9_N5
\RAM[26][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~0\ = (\mem_a~combout\(3) & (((RAM[26][13]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\RAM[18][13]~regout\ & ((!\mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[18][13]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(13),
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0\,
	regout => \RAM[26][13]~regout\);

-- Location: LC_X12_Y9_N6
\RAM[22][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~1\ = (\mem_a~combout\(2) & ((\Mux2~0\ & (\RAM[30][13]~regout\)) # (!\Mux2~0\ & ((RAM[22][13]))))) # (!\mem_a~combout\(2) & (((\Mux2~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[30][13]~regout\,
	datac => \mem_d~combout\(13),
	datad => \Mux2~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1\,
	regout => \RAM[22][13]~regout\);

-- Location: LC_X4_Y4_N0
\RAM[19][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, \mem_d~combout\(13), , , VCC)

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
	datac => \mem_d~combout\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][13]~regout\);

-- Location: LC_X5_Y4_N7
\RAM[23][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[23][13])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[19][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(13),
	datad => \RAM[19][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~7\,
	regout => \RAM[23][13]~regout\);

-- Location: LC_X9_Y9_N2
\RAM[31][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][13]~regout\ = DFFEAS((((\mem_d~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(13),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][13]~regout\);

-- Location: LC_X5_Y4_N0
\RAM[27][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~8\ = (\mem_a~combout\(3) & ((\Mux2~7\ & ((\RAM[31][13]~regout\))) # (!\Mux2~7\ & (RAM[27][13])))) # (!\mem_a~combout\(3) & (\Mux2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \Mux2~7\,
	datac => \mem_d~combout\(13),
	datad => \RAM[31][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~8\,
	regout => \RAM[27][13]~regout\);

-- Location: LC_X11_Y5_N9
\RAM[28][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, \mem_d~combout\(13), , , VCC)

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
	datac => \mem_d~combout\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][13]~regout\);

-- Location: LC_X13_Y5_N6
\RAM[16][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][13]~regout\ = DFFEAS(((\mem_d~combout\(13))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, , , , )

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
	datab => \mem_d~combout\(13),
	aclr => \rst~combout\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][13]~regout\);

-- Location: LC_X10_Y5_N1
\RAM[24][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~4\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (RAM[24][13])) # (!\mem_a~combout\(3) & ((\RAM[16][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(13),
	datad => \RAM[16][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~4\,
	regout => \RAM[24][13]~regout\);

-- Location: LC_X10_Y5_N0
\RAM[20][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~5\ = (\mem_a~combout\(2) & ((\Mux2~4\ & (\RAM[28][13]~regout\)) # (!\Mux2~4\ & ((RAM[20][13]))))) # (!\mem_a~combout\(2) & (((\Mux2~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[28][13]~regout\,
	datac => \mem_d~combout\(13),
	datad => \Mux2~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~5\,
	regout => \RAM[20][13]~regout\);

-- Location: LC_X11_Y5_N1
\RAM[29][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(13), , , VCC)

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
	datac => \mem_d~combout\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][13]~regout\);

-- Location: LC_X13_Y5_N4
\RAM[17][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][13]~regout\ = DFFEAS(((\mem_d~combout\(13))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, , , , )

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
	datab => \mem_d~combout\(13),
	aclr => \rst~combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][13]~regout\);

-- Location: LC_X12_Y5_N6
\RAM[21][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~2\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (RAM[21][13])) # (!\mem_a~combout\(2) & ((\RAM[17][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(13),
	datad => \RAM[17][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2\,
	regout => \RAM[21][13]~regout\);

-- Location: LC_X12_Y5_N7
\RAM[25][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~3\ = (\mem_a~combout\(3) & ((\Mux2~2\ & (\RAM[29][13]~regout\)) # (!\Mux2~2\ & ((RAM[25][13]))))) # (!\mem_a~combout\(3) & (((\Mux2~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[29][13]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(13),
	datad => \Mux2~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3\,
	regout => \RAM[25][13]~regout\);

-- Location: LC_X9_Y5_N7
\Mux2~6\ : maxv_lcell
-- Equation(s):
-- \Mux2~6_combout\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((\Mux2~3\)))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & (\Mux2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \Mux2~5\,
	datad => \Mux2~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~6_combout\);

-- Location: LC_X8_Y5_N5
\Mux2~9\ : maxv_lcell
-- Equation(s):
-- \Mux2~9_combout\ = (\mem_a~combout\(1) & ((\Mux2~6_combout\ & ((\Mux2~8\))) # (!\Mux2~6_combout\ & (\Mux2~1\)))) # (!\mem_a~combout\(1) & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \Mux2~1\,
	datac => \Mux2~8\,
	datad => \Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~9_combout\);

-- Location: LC_X7_Y10_N5
\RAM[11][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][13]~regout\ = DFFEAS((((\mem_d~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, , , , )

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
	datad => \mem_d~combout\(13),
	aclr => \rst~combout\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][13]~regout\);

-- Location: LC_X7_Y10_N4
\RAM[8][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][13]~regout\ = DFFEAS((((\mem_d~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, , , , )

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
	datad => \mem_d~combout\(13),
	aclr => \rst~combout\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][13]~regout\);

-- Location: LC_X8_Y10_N2
\RAM[9][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~10\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[9][13])) # (!\mem_a~combout\(0) & ((\RAM[8][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(13),
	datad => \RAM[8][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~10\,
	regout => \RAM[9][13]~regout\);

-- Location: LC_X8_Y10_N7
\RAM[10][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~11\ = (\mem_a~combout\(1) & ((\Mux2~10\ & (\RAM[11][13]~regout\)) # (!\Mux2~10\ & ((RAM[10][13]))))) # (!\mem_a~combout\(1) & (((\Mux2~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[11][13]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(13),
	datad => \Mux2~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~11\,
	regout => \RAM[10][13]~regout\);

-- Location: LC_X9_Y8_N1
\RAM[15][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][13]~regout\ = DFFEAS((((\mem_d~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, , , , )

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
	datad => \mem_d~combout\(13),
	aclr => \rst~combout\,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][13]~regout\);

-- Location: LC_X11_Y4_N1
\RAM[12][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, \mem_d~combout\(13), , , VCC)

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
	datac => \mem_d~combout\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][13]~regout\);

-- Location: LC_X10_Y4_N2
\RAM[14][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~17\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((RAM[14][13])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\RAM[12][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(13),
	datad => \RAM[12][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~17\,
	regout => \RAM[14][13]~regout\);

-- Location: LC_X10_Y4_N3
\RAM[13][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~18\ = (\mem_a~combout\(0) & ((\Mux2~17\ & (\RAM[15][13]~regout\)) # (!\Mux2~17\ & ((RAM[13][13]))))) # (!\mem_a~combout\(0) & (((\Mux2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[15][13]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(13),
	datad => \Mux2~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~18\,
	regout => \RAM[13][13]~regout\);

-- Location: LC_X5_Y7_N2
\RAM[3][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, \mem_d~combout\(13), , , VCC)

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
	datac => \mem_d~combout\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][13]~regout\);

-- Location: LC_X5_Y7_N7
\RAM[0][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(13), , , VCC)

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
	datac => \mem_d~combout\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][13]~regout\);

-- Location: LC_X4_Y7_N4
\RAM[1][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~14\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[1][13])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[0][13]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(13),
	datad => \RAM[0][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~14\,
	regout => \RAM[1][13]~regout\);

-- Location: LC_X4_Y7_N5
\RAM[2][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~15\ = (\mem_a~combout\(1) & ((\Mux2~14\ & (\RAM[3][13]~regout\)) # (!\Mux2~14\ & ((RAM[2][13]))))) # (!\mem_a~combout\(1) & (((\Mux2~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[3][13]~regout\,
	datac => \mem_d~combout\(13),
	datad => \Mux2~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~15\,
	regout => \RAM[2][13]~regout\);

-- Location: LC_X8_Y9_N0
\RAM[7][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][13]~regout\ = DFFEAS((((\mem_d~combout\(13)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, , , , )

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
	datad => \mem_d~combout\(13),
	aclr => \rst~combout\,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][13]~regout\);

-- Location: LC_X8_Y4_N2
\RAM[4][13]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][13]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, \mem_d~combout\(13), , , VCC)

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
	datac => \mem_d~combout\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][13]~regout\);

-- Location: LC_X9_Y5_N3
\RAM[6][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~12\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[6][13])) # (!\mem_a~combout\(1) & ((\RAM[4][13]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(13),
	datad => \RAM[4][13]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~12\,
	regout => \RAM[6][13]~regout\);

-- Location: LC_X9_Y5_N0
\RAM[5][13]\ : maxv_lcell
-- Equation(s):
-- \Mux2~13\ = (\mem_a~combout\(0) & ((\Mux2~12\ & (\RAM[7][13]~regout\)) # (!\Mux2~12\ & ((RAM[5][13]))))) # (!\mem_a~combout\(0) & (((\Mux2~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[7][13]~regout\,
	datac => \mem_d~combout\(13),
	datad => \Mux2~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~13\,
	regout => \RAM[5][13]~regout\);

-- Location: LC_X9_Y5_N1
\Mux2~16\ : maxv_lcell
-- Equation(s):
-- \Mux2~16_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((\Mux2~13\))) # (!\mem_a~combout\(2) & (\Mux2~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \Mux2~15\,
	datad => \Mux2~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~16_combout\);

-- Location: LC_X8_Y5_N6
\Mux2~19\ : maxv_lcell
-- Equation(s):
-- \Mux2~19_combout\ = (\mem_a~combout\(3) & ((\Mux2~16_combout\ & ((\Mux2~18\))) # (!\Mux2~16_combout\ & (\Mux2~11\)))) # (!\mem_a~combout\(3) & (((\Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux2~11\,
	datac => \Mux2~18\,
	datad => \Mux2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~19_combout\);

-- Location: LC_X8_Y5_N7
\mem_out[13]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[13]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & (\Mux2~9_combout\)) # (!\mem_a~combout\(4) & ((\Mux2~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux2~9_combout\,
	datad => \Mux2~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[13]~reg0_regout\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(14),
	combout => \mem_d~combout\(14));

-- Location: LC_X7_Y7_N2
\RAM[7][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][14]~regout\ = DFFEAS((\mem_d~combout\(14)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, , , , )

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
	dataa => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][14]~regout\);

-- Location: LC_X6_Y8_N2
\RAM[4][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][14]~regout\ = DFFEAS((((\mem_d~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, , , , )

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
	datad => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][14]~regout\);

-- Location: LC_X7_Y5_N7
\RAM[5][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~10\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[5][14])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[4][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(14),
	datad => \RAM[4][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~10\,
	regout => \RAM[5][14]~regout\);

-- Location: LC_X7_Y5_N8
\RAM[6][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~11\ = (\mem_a~combout\(1) & ((\Mux1~10\ & (\RAM[7][14]~regout\)) # (!\Mux1~10\ & ((RAM[6][14]))))) # (!\mem_a~combout\(1) & (((\Mux1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[7][14]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(14),
	datad => \Mux1~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~11\,
	regout => \RAM[6][14]~regout\);

-- Location: LC_X11_Y9_N2
\RAM[15][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, \mem_d~combout\(14), , , VCC)

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
	datac => \mem_d~combout\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][14]~regout\);

-- Location: LC_X10_Y9_N2
\RAM[12][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][14]~regout\ = DFFEAS((((\mem_d~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, , , , )

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
	datad => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][14]~regout\);

-- Location: LC_X10_Y9_N4
\RAM[13][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~17\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[13][14])) # (!\mem_a~combout\(0) & ((\RAM[12][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(14),
	datad => \RAM[12][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~17\,
	regout => \RAM[13][14]~regout\);

-- Location: LC_X11_Y9_N4
\RAM[14][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~18\ = (\mem_a~combout\(1) & ((\Mux1~17\ & (\RAM[15][14]~regout\)) # (!\Mux1~17\ & ((RAM[14][14]))))) # (!\mem_a~combout\(1) & (((\Mux1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[15][14]~regout\,
	datac => \mem_d~combout\(14),
	datad => \Mux1~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~18\,
	regout => \RAM[14][14]~regout\);

-- Location: LC_X5_Y7_N3
\RAM[0][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][14]~regout\ = DFFEAS((\mem_d~combout\(14)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, , , , )

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
	dataa => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][14]~regout\);

-- Location: LC_X4_Y7_N7
\RAM[2][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~14\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[2][14])) # (!\mem_a~combout\(1) & ((\RAM[0][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(14),
	datad => \RAM[0][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~14\,
	regout => \RAM[2][14]~regout\);

-- Location: LC_X4_Y6_N5
\RAM[3][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][14]~regout\ = DFFEAS((\mem_d~combout\(14)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, , , , )

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
	dataa => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][14]~regout\);

-- Location: LC_X4_Y7_N9
\RAM[1][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~15\ = (\mem_a~combout\(0) & ((\Mux1~14\ & ((\RAM[3][14]~regout\))) # (!\Mux1~14\ & (RAM[1][14])))) # (!\mem_a~combout\(0) & (\Mux1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \Mux1~14\,
	datac => \mem_d~combout\(14),
	datad => \RAM[3][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~15\,
	regout => \RAM[1][14]~regout\);

-- Location: LC_X7_Y10_N3
\RAM[11][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, \mem_d~combout\(14), , , VCC)

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
	datac => \mem_d~combout\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][14]~regout\);

-- Location: LC_X6_Y10_N2
\RAM[8][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, \mem_d~combout\(14), , , VCC)

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
	datac => \mem_d~combout\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][14]~regout\);

-- Location: LC_X6_Y10_N6
\RAM[10][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~12\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((RAM[10][14])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\RAM[8][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(14),
	datad => \RAM[8][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~12\,
	regout => \RAM[10][14]~regout\);

-- Location: LC_X6_Y7_N2
\RAM[9][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~13\ = (\mem_a~combout\(0) & ((\Mux1~12\ & (\RAM[11][14]~regout\)) # (!\Mux1~12\ & ((RAM[9][14]))))) # (!\mem_a~combout\(0) & (((\Mux1~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[11][14]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(14),
	datad => \Mux1~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~13\,
	regout => \RAM[9][14]~regout\);

-- Location: LC_X6_Y7_N8
\Mux1~16\ : maxv_lcell
-- Equation(s):
-- \Mux1~16_combout\ = (\mem_a~combout\(3) & ((\mem_a~combout\(2)) # ((\Mux1~13\)))) # (!\mem_a~combout\(3) & (!\mem_a~combout\(2) & (\Mux1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \Mux1~15\,
	datad => \Mux1~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~16_combout\);

-- Location: LC_X6_Y7_N7
\Mux1~19\ : maxv_lcell
-- Equation(s):
-- \Mux1~19_combout\ = (\mem_a~combout\(2) & ((\Mux1~16_combout\ & ((\Mux1~18\))) # (!\Mux1~16_combout\ & (\Mux1~11\)))) # (!\mem_a~combout\(2) & (((\Mux1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~11\,
	datab => \mem_a~combout\(2),
	datac => \Mux1~18\,
	datad => \Mux1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~19_combout\);

-- Location: LC_X4_Y5_N9
\RAM[31][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][14]~regout\ = DFFEAS((\mem_d~combout\(14)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	dataa => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][14]~regout\);

-- Location: LC_X4_Y5_N7
\RAM[19][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][14]~regout\ = DFFEAS((\mem_d~combout\(14)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, , , , )

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
	dataa => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][14]~regout\);

-- Location: LC_X5_Y5_N2
\RAM[27][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~7\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (RAM[27][14])) # (!\mem_a~combout\(3) & ((\RAM[19][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(14),
	datad => \RAM[19][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~7\,
	regout => \RAM[27][14]~regout\);

-- Location: LC_X5_Y5_N5
\RAM[23][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~8\ = (\mem_a~combout\(2) & ((\Mux1~7\ & (\RAM[31][14]~regout\)) # (!\Mux1~7\ & ((RAM[23][14]))))) # (!\mem_a~combout\(2) & (((\Mux1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[31][14]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(14),
	datad => \Mux1~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~8\,
	regout => \RAM[23][14]~regout\);

-- Location: LC_X7_Y8_N1
\RAM[29][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][14]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(14), , , VCC)

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
	datac => \mem_d~combout\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][14]~regout\);

-- Location: LC_X13_Y8_N7
\RAM[17][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][14]~regout\ = DFFEAS((((\mem_d~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, , , , )

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
	datad => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][14]~regout\);

-- Location: LC_X12_Y8_N4
\RAM[25][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~0\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (RAM[25][14])) # (!\mem_a~combout\(3) & ((\RAM[17][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(14),
	datad => \RAM[17][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0\,
	regout => \RAM[25][14]~regout\);

-- Location: LC_X12_Y8_N5
\RAM[21][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~1\ = (\mem_a~combout\(2) & ((\Mux1~0\ & (\RAM[29][14]~regout\)) # (!\Mux1~0\ & ((RAM[21][14]))))) # (!\mem_a~combout\(2) & (((\Mux1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[29][14]~regout\,
	datac => \mem_d~combout\(14),
	datad => \Mux1~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1\,
	regout => \RAM[21][14]~regout\);

-- Location: LC_X8_Y6_N0
\RAM[28][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][14]~regout\ = DFFEAS((((\mem_d~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, , , , )

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
	datad => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][14]~regout\);

-- Location: LC_X10_Y7_N8
\RAM[16][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][14]~regout\ = DFFEAS((((\mem_d~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, , , , )

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
	datad => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][14]~regout\);

-- Location: LC_X9_Y7_N2
\RAM[20][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~4\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[20][14])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[16][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(14),
	datad => \RAM[16][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4\,
	regout => \RAM[20][14]~regout\);

-- Location: LC_X9_Y7_N3
\RAM[24][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~5\ = (\mem_a~combout\(3) & ((\Mux1~4\ & (\RAM[28][14]~regout\)) # (!\Mux1~4\ & ((RAM[24][14]))))) # (!\mem_a~combout\(3) & (((\Mux1~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[28][14]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(14),
	datad => \Mux1~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~5\,
	regout => \RAM[24][14]~regout\);

-- Location: LC_X13_Y8_N2
\RAM[30][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][14]~regout\ = DFFEAS((((\mem_d~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, , , , )

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
	datad => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][14]~regout\);

-- Location: LC_X13_Y9_N4
\RAM[18][14]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][14]~regout\ = DFFEAS((((\mem_d~combout\(14)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, , , , )

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
	datad => \mem_d~combout\(14),
	aclr => \rst~combout\,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][14]~regout\);

-- Location: LC_X12_Y9_N7
\RAM[22][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[22][14])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[18][14]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(14),
	datad => \RAM[18][14]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2\,
	regout => \RAM[22][14]~regout\);

-- Location: LC_X12_Y9_N8
\RAM[26][14]\ : maxv_lcell
-- Equation(s):
-- \Mux1~3\ = (\mem_a~combout\(3) & ((\Mux1~2\ & (\RAM[30][14]~regout\)) # (!\Mux1~2\ & ((RAM[26][14]))))) # (!\mem_a~combout\(3) & (((\Mux1~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[30][14]~regout\,
	datac => \mem_d~combout\(14),
	datad => \Mux1~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3\,
	regout => \RAM[26][14]~regout\);

-- Location: LC_X6_Y7_N9
\Mux1~6\ : maxv_lcell
-- Equation(s):
-- \Mux1~6_combout\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0)) # (\Mux1~3\)))) # (!\mem_a~combout\(1) & (\Mux1~5\ & (!\mem_a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \Mux1~5\,
	datac => \mem_a~combout\(0),
	datad => \Mux1~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~6_combout\);

-- Location: LC_X6_Y7_N0
\Mux1~9\ : maxv_lcell
-- Equation(s):
-- \Mux1~9_combout\ = (\mem_a~combout\(0) & ((\Mux1~6_combout\ & (\Mux1~8\)) # (!\Mux1~6_combout\ & ((\Mux1~1\))))) # (!\mem_a~combout\(0) & (((\Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~8\,
	datab => \mem_a~combout\(0),
	datac => \Mux1~1\,
	datad => \Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~9_combout\);

-- Location: LC_X6_Y7_N1
\mem_out[14]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[14]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & ((\Mux1~9_combout\))) # (!\mem_a~combout\(4) & (\Mux1~19_combout\))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux1~19_combout\,
	datad => \Mux1~9_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[14]~reg0_regout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_d[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_d(15),
	combout => \mem_d~combout\(15));

-- Location: LC_X14_Y8_N5
\RAM[30][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[30][15]~regout\ = DFFEAS((\mem_d~combout\(15)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~7_combout\, , , , )

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
	dataa => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[30][15]~regout\);

-- Location: LC_X16_Y7_N7
\RAM[18][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[18][15]~regout\ = DFFEAS((((\mem_d~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~17_combout\, , , , )

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
	datad => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[18][15]~regout\);

-- Location: LC_X15_Y7_N7
\RAM[26][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~0\ = (\mem_a~combout\(3) & ((\mem_a~combout\(2)) # ((RAM[26][15])))) # (!\mem_a~combout\(3) & (!\mem_a~combout\(2) & ((\RAM[18][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(15),
	datad => \RAM[18][15]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0\,
	regout => \RAM[26][15]~regout\);

-- Location: LC_X15_Y7_N8
\RAM[22][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~1\ = (\mem_a~combout\(2) & ((\Mux0~0\ & (\RAM[30][15]~regout\)) # (!\Mux0~0\ & ((RAM[22][15]))))) # (!\mem_a~combout\(2) & (((\Mux0~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[30][15]~regout\,
	datab => \mem_a~combout\(2),
	datac => \mem_d~combout\(15),
	datad => \Mux0~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1\,
	regout => \RAM[22][15]~regout\);

-- Location: LC_X4_Y4_N9
\RAM[31][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[31][15]~regout\ = DFFEAS((((\mem_d~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~23_combout\, , , , )

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
	datad => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[31][15]~regout\);

-- Location: LC_X4_Y4_N5
\RAM[19][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[19][15]~regout\ = DFFEAS((((\mem_d~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~11_combout\, , , , )

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
	datad => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[19][15]~regout\);

-- Location: LC_X5_Y4_N5
\RAM[23][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~7\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[23][15])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[19][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(15),
	datad => \RAM[19][15]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~7\,
	regout => \RAM[23][15]~regout\);

-- Location: LC_X5_Y4_N6
\RAM[27][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~8\ = (\mem_a~combout\(3) & ((\Mux0~7\ & (\RAM[31][15]~regout\)) # (!\Mux0~7\ & ((RAM[27][15]))))) # (!\mem_a~combout\(3) & (((\Mux0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \RAM[31][15]~regout\,
	datac => \mem_d~combout\(15),
	datad => \Mux0~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~8\,
	regout => \RAM[27][15]~regout\);

-- Location: LC_X11_Y5_N8
\RAM[28][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[28][15]~regout\ = DFFEAS((((\mem_d~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~1_combout\, , , , )

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
	datad => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[28][15]~regout\);

-- Location: LC_X10_Y7_N7
\RAM[16][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[16][15]~regout\ = DFFEAS((((\mem_d~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~18_combout\, , , , )

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
	datad => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[16][15]~regout\);

-- Location: LC_X10_Y5_N2
\RAM[24][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~4\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (RAM[24][15])) # (!\mem_a~combout\(3) & ((\RAM[16][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(15),
	datad => \RAM[16][15]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~4\,
	regout => \RAM[24][15]~regout\);

-- Location: LC_X10_Y5_N3
\RAM[20][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~5\ = (\mem_a~combout\(2) & ((\Mux0~4\ & (\RAM[28][15]~regout\)) # (!\Mux0~4\ & ((RAM[20][15]))))) # (!\mem_a~combout\(2) & (((\Mux0~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \RAM[28][15]~regout\,
	datac => \mem_d~combout\(15),
	datad => \Mux0~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~5\,
	regout => \RAM[20][15]~regout\);

-- Location: LC_X7_Y8_N8
\RAM[29][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[29][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~20_combout\, \mem_d~combout\(15), , , VCC)

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
	datac => \mem_d~combout\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[29][15]~regout\);

-- Location: LC_X13_Y8_N8
\RAM[17][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[17][15]~regout\ = DFFEAS(((\mem_d~combout\(15))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~13_combout\, , , , )

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
	datab => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[17][15]~regout\);

-- Location: LC_X12_Y8_N9
\RAM[21][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~2\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((RAM[21][15])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\RAM[17][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(15),
	datad => \RAM[17][15]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~2\,
	regout => \RAM[21][15]~regout\);

-- Location: LC_X7_Y8_N6
\RAM[25][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~3\ = (\mem_a~combout\(3) & ((\Mux0~2\ & (\RAM[29][15]~regout\)) # (!\Mux0~2\ & ((RAM[25][15]))))) # (!\mem_a~combout\(3) & (((\Mux0~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[29][15]~regout\,
	datab => \mem_a~combout\(3),
	datac => \mem_d~combout\(15),
	datad => \Mux0~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~3\,
	regout => \RAM[25][15]~regout\);

-- Location: LC_X6_Y7_N3
\Mux0~6\ : maxv_lcell
-- Equation(s):
-- \Mux0~6_combout\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((\Mux0~3\))) # (!\mem_a~combout\(0) & (\Mux0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \Mux0~5\,
	datad => \Mux0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~6_combout\);

-- Location: LC_X6_Y7_N4
\Mux0~9\ : maxv_lcell
-- Equation(s):
-- \Mux0~9_combout\ = (\mem_a~combout\(1) & ((\Mux0~6_combout\ & ((\Mux0~8\))) # (!\Mux0~6_combout\ & (\Mux0~1\)))) # (!\mem_a~combout\(1) & (((\Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(1),
	datab => \Mux0~1\,
	datac => \Mux0~8\,
	datad => \Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~9_combout\);

-- Location: LC_X9_Y8_N5
\RAM[15][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[15][15]~regout\ = DFFEAS((((\mem_d~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~39_combout\, , , , )

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
	datad => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[15][15]~regout\);

-- Location: LC_X11_Y4_N4
\RAM[12][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[12][15]~regout\ = DFFEAS((((\mem_d~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~38_combout\, , , , )

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
	datad => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[12][15]~regout\);

-- Location: LC_X10_Y4_N6
\RAM[14][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~17\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((RAM[14][15])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\RAM[12][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(15),
	datad => \RAM[12][15]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~17\,
	regout => \RAM[14][15]~regout\);

-- Location: LC_X10_Y4_N7
\RAM[13][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~18\ = (\mem_a~combout\(0) & ((\Mux0~17\ & (\RAM[15][15]~regout\)) # (!\Mux0~17\ & ((RAM[13][15]))))) # (!\mem_a~combout\(0) & (((\Mux0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[15][15]~regout\,
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(15),
	datad => \Mux0~17\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~18\,
	regout => \RAM[13][15]~regout\);

-- Location: LC_X7_Y10_N8
\RAM[11][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[11][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~27_combout\, \mem_d~combout\(15), , , VCC)

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
	datac => \mem_d~combout\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[11][15]~regout\);

-- Location: LC_X7_Y10_N2
\RAM[8][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[8][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~26_combout\, \mem_d~combout\(15), , , VCC)

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
	datac => \mem_d~combout\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[8][15]~regout\);

-- Location: LC_X8_Y10_N3
\RAM[9][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~10\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (RAM[9][15])) # (!\mem_a~combout\(0) & ((\RAM[8][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d~combout\(15),
	datad => \RAM[8][15]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~10\,
	regout => \RAM[9][15]~regout\);

-- Location: LC_X8_Y10_N4
\RAM[10][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~11\ = (\mem_a~combout\(1) & ((\Mux0~10\ & (\RAM[11][15]~regout\)) # (!\Mux0~10\ & ((RAM[10][15]))))) # (!\mem_a~combout\(1) & (((\Mux0~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \RAM[11][15]~regout\,
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(15),
	datad => \Mux0~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~11\,
	regout => \RAM[10][15]~regout\);

-- Location: LC_X5_Y6_N6
\RAM[3][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[3][15]~regout\ = DFFEAS((((\mem_d~combout\(15)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~35_combout\, , , , )

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
	datad => \mem_d~combout\(15),
	aclr => \rst~combout\,
	ena => \Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[3][15]~regout\);

-- Location: LC_X6_Y6_N5
\RAM[0][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[0][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~34_combout\, \mem_d~combout\(15), , , VCC)

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
	datac => \mem_d~combout\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[0][15]~regout\);

-- Location: LC_X6_Y5_N6
\RAM[1][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~14\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((RAM[1][15])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\RAM[0][15]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(15),
	datad => \RAM[0][15]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~14\,
	regout => \RAM[1][15]~regout\);

-- Location: LC_X6_Y5_N7
\RAM[2][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~15\ = (\mem_a~combout\(1) & ((\Mux0~14\ & (\RAM[3][15]~regout\)) # (!\Mux0~14\ & ((RAM[2][15]))))) # (!\mem_a~combout\(1) & (((\Mux0~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \RAM[3][15]~regout\,
	datac => \mem_d~combout\(15),
	datad => \Mux0~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~15\,
	regout => \RAM[2][15]~regout\);

-- Location: LC_X7_Y4_N1
\RAM[7][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[7][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~31_combout\, \mem_d~combout\(15), , , VCC)

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
	datac => \mem_d~combout\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[7][15]~regout\);

-- Location: LC_X8_Y4_N8
\RAM[4][15]\ : maxv_lcell
-- Equation(s):
-- \RAM[4][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \Decoder0~30_combout\, \mem_d~combout\(15), , , VCC)

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
	datac => \mem_d~combout\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM[4][15]~regout\);

-- Location: LC_X7_Y5_N0
\RAM[6][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~12\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (RAM[6][15])) # (!\mem_a~combout\(1) & ((\RAM[4][15]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d~combout\(15),
	datad => \RAM[4][15]~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~12\,
	regout => \RAM[6][15]~regout\);

-- Location: LC_X7_Y5_N1
\RAM[5][15]\ : maxv_lcell
-- Equation(s):
-- \Mux0~13\ = (\mem_a~combout\(0) & ((\Mux0~12\ & (\RAM[7][15]~regout\)) # (!\Mux0~12\ & ((RAM[5][15]))))) # (!\mem_a~combout\(0) & (((\Mux0~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \RAM[7][15]~regout\,
	datac => \mem_d~combout\(15),
	datad => \Mux0~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~13\,
	regout => \RAM[5][15]~regout\);

-- Location: LC_X6_Y5_N0
\Mux0~16\ : maxv_lcell
-- Equation(s):
-- \Mux0~16_combout\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((\Mux0~13\)))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & (\Mux0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \Mux0~15\,
	datad => \Mux0~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~16_combout\);

-- Location: LC_X6_Y7_N5
\Mux0~19\ : maxv_lcell
-- Equation(s):
-- \Mux0~19_combout\ = (\mem_a~combout\(3) & ((\Mux0~16_combout\ & (\Mux0~18\)) # (!\Mux0~16_combout\ & ((\Mux0~11\))))) # (!\mem_a~combout\(3) & (((\Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \Mux0~18\,
	datac => \Mux0~11\,
	datad => \Mux0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~19_combout\);

-- Location: LC_X6_Y7_N6
\mem_out[15]~reg0\ : maxv_lcell
-- Equation(s):
-- \mem_out[15]~reg0_regout\ = DFFEAS(((\mem_a~combout\(4) & (\Mux0~9_combout\)) # (!\mem_a~combout\(4) & ((\Mux0~19_combout\)))), GLOBAL(\clk~combout\), VCC, , \mem_out[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \mem_a~combout\(4),
	datac => \Mux0~9_combout\,
	datad => \Mux0~19_combout\,
	aclr => GND,
	ena => \mem_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem_out[15]~reg0_regout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(5));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(6));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(7));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(8));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(9));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(10));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(11));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(12));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(13));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(14));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(15));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[0]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(0));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[1]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[2]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(2));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[3]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(3));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[4]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(4));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[5]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(5));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[6]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[7]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(7));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[8]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(8));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[9]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(9));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[10]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(10));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[11]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(11));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[12]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(12));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[13]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(13));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[14]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(14));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out[15]~reg0_regout\,
	oe => VCC,
	padio => ww_mem_out(15));
END structure;


