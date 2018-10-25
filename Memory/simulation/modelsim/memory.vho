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

-- DATE "10/25/2018 23:44:10"

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
	mem_d : BUFFER std_logic_vector(15 DOWNTO 0);
	mem_a : IN std_logic_vector(4 DOWNTO 0);
	rd_bar : IN std_logic;
	wr_bar : IN std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	mem_out : BUFFER std_logic_vector(15 DOWNTO 0)
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
SIGNAL ww_mem_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rd_bar : std_logic;
SIGNAL ww_wr_bar : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mem_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem_d[0]~0\ : std_logic;
SIGNAL \mem_d[1]~1\ : std_logic;
SIGNAL \mem_d[2]~2\ : std_logic;
SIGNAL \mem_d[3]~3\ : std_logic;
SIGNAL \mem_d[4]~4\ : std_logic;
SIGNAL \mem_d[5]~5\ : std_logic;
SIGNAL \mem_d[6]~6\ : std_logic;
SIGNAL \mem_d[7]~7\ : std_logic;
SIGNAL \mem_d[8]~8\ : std_logic;
SIGNAL \mem_d[9]~9\ : std_logic;
SIGNAL \mem_d[10]~10\ : std_logic;
SIGNAL \mem_d[11]~11\ : std_logic;
SIGNAL \mem_d[12]~12\ : std_logic;
SIGNAL \mem_d[13]~13\ : std_logic;
SIGNAL \mem_d[14]~14\ : std_logic;
SIGNAL \mem_d[15]~15\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \wr_bar~combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \wrarr[11]~19_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \wrarr[8]~18_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \wrarr[9]~17_combout\ : std_logic;
SIGNAL \mem_out_var~10\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \wrarr[10]~16_combout\ : std_logic;
SIGNAL \mem_out_var~11\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \wrarr[0]~26_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \wrarr[1]~25_combout\ : std_logic;
SIGNAL \mem_out_var~14\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \wrarr[3]~27_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \wrarr[2]~24_combout\ : std_logic;
SIGNAL \mem_out_var~15\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \wrarr[7]~23_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \wrarr[4]~22_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \wrarr[6]~21_combout\ : std_logic;
SIGNAL \mem_out_var~12\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \wrarr[5]~20_combout\ : std_logic;
SIGNAL \mem_out_var~13\ : std_logic;
SIGNAL \mem_out_var~16_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \wrarr[12]~30_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \wrarr[14]~29_combout\ : std_logic;
SIGNAL \mem_out_var~17\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \wrarr[15]~31_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \wrarr[13]~28_combout\ : std_logic;
SIGNAL \mem_out_var~18\ : std_logic;
SIGNAL \mem_out_var~19_combout\ : std_logic;
SIGNAL \wrarr[31]~15_combout\ : std_logic;
SIGNAL \wrarr[19]~14_combout\ : std_logic;
SIGNAL \wrarr[23]~13_combout\ : std_logic;
SIGNAL \mem_out_var~7\ : std_logic;
SIGNAL \wrarr[27]~12_combout\ : std_logic;
SIGNAL \mem_out_var~8\ : std_logic;
SIGNAL \wrarr[18]~2_combout\ : std_logic;
SIGNAL \wrarr[26]~1_combout\ : std_logic;
SIGNAL \mem_out_var~0\ : std_logic;
SIGNAL \wrarr[30]~3_combout\ : std_logic;
SIGNAL \wrarr[22]~0_combout\ : std_logic;
SIGNAL \mem_out_var~1\ : std_logic;
SIGNAL \wrarr[28]~11_combout\ : std_logic;
SIGNAL \wrarr[16]~10_combout\ : std_logic;
SIGNAL \wrarr[24]~9_combout\ : std_logic;
SIGNAL \mem_out_var~4\ : std_logic;
SIGNAL \wrarr[20]~8_combout\ : std_logic;
SIGNAL \mem_out_var~5\ : std_logic;
SIGNAL \wrarr[29]~7_combout\ : std_logic;
SIGNAL \wrarr[17]~6_combout\ : std_logic;
SIGNAL \wrarr[21]~5_combout\ : std_logic;
SIGNAL \mem_out_var~2\ : std_logic;
SIGNAL \wrarr[25]~4_combout\ : std_logic;
SIGNAL \mem_out_var~3\ : std_logic;
SIGNAL \mem_out_var~6_combout\ : std_logic;
SIGNAL \mem_out_var~9_combout\ : std_logic;
SIGNAL \rd_bar~combout\ : std_logic;
SIGNAL \mem_out_var~20_combout\ : std_logic;
SIGNAL \mem_out_var~21_combout\ : std_logic;
SIGNAL \mem_out_var~26\ : std_logic;
SIGNAL \mem_out_var~27\ : std_logic;
SIGNAL \mem_out_var~24\ : std_logic;
SIGNAL \mem_out_var~25\ : std_logic;
SIGNAL \mem_out_var~28_combout\ : std_logic;
SIGNAL \mem_out_var~29\ : std_logic;
SIGNAL \mem_out_var~30\ : std_logic;
SIGNAL \mem_out_var~22\ : std_logic;
SIGNAL \mem_out_var~23\ : std_logic;
SIGNAL \mem_out_var~31_combout\ : std_logic;
SIGNAL \mem_out_var~34\ : std_logic;
SIGNAL \mem_out_var~35\ : std_logic;
SIGNAL \mem_out_var~36\ : std_logic;
SIGNAL \mem_out_var~37\ : std_logic;
SIGNAL \mem_out_var~38_combout\ : std_logic;
SIGNAL \mem_out_var~32\ : std_logic;
SIGNAL \mem_out_var~33\ : std_logic;
SIGNAL \mem_out_var~39\ : std_logic;
SIGNAL \mem_out_var~40\ : std_logic;
SIGNAL \mem_out_var~41_combout\ : std_logic;
SIGNAL \mem_out_var~42_combout\ : std_logic;
SIGNAL \mem_out_var~43\ : std_logic;
SIGNAL \mem_out_var~44\ : std_logic;
SIGNAL \mem_out_var~47\ : std_logic;
SIGNAL \mem_out_var~48\ : std_logic;
SIGNAL \mem_out_var~45\ : std_logic;
SIGNAL \mem_out_var~46\ : std_logic;
SIGNAL \mem_out_var~49_combout\ : std_logic;
SIGNAL \mem_out_var~50\ : std_logic;
SIGNAL \mem_out_var~51\ : std_logic;
SIGNAL \mem_out_var~52_combout\ : std_logic;
SIGNAL \mem_out_var~60\ : std_logic;
SIGNAL \mem_out_var~61\ : std_logic;
SIGNAL \mem_out_var~53\ : std_logic;
SIGNAL \mem_out_var~54\ : std_logic;
SIGNAL \mem_out_var~55\ : std_logic;
SIGNAL \mem_out_var~56\ : std_logic;
SIGNAL \mem_out_var~57\ : std_logic;
SIGNAL \mem_out_var~58\ : std_logic;
SIGNAL \mem_out_var~59_combout\ : std_logic;
SIGNAL \mem_out_var~62_combout\ : std_logic;
SIGNAL \mem_out_var~63_combout\ : std_logic;
SIGNAL \mem_out_var~76\ : std_logic;
SIGNAL \mem_out_var~77\ : std_logic;
SIGNAL \mem_out_var~78\ : std_logic;
SIGNAL \mem_out_var~79\ : std_logic;
SIGNAL \mem_out_var~80_combout\ : std_logic;
SIGNAL \mem_out_var~74\ : std_logic;
SIGNAL \mem_out_var~75\ : std_logic;
SIGNAL \mem_out_var~81\ : std_logic;
SIGNAL \mem_out_var~82\ : std_logic;
SIGNAL \mem_out_var~83_combout\ : std_logic;
SIGNAL \mem_out_var~68\ : std_logic;
SIGNAL \mem_out_var~69\ : std_logic;
SIGNAL \mem_out_var~66\ : std_logic;
SIGNAL \mem_out_var~67\ : std_logic;
SIGNAL \mem_out_var~70_combout\ : std_logic;
SIGNAL \mem_out_var~71\ : std_logic;
SIGNAL \mem_out_var~72\ : std_logic;
SIGNAL \mem_out_var~64\ : std_logic;
SIGNAL \mem_out_var~65\ : std_logic;
SIGNAL \mem_out_var~73_combout\ : std_logic;
SIGNAL \mem_out_var~84_combout\ : std_logic;
SIGNAL \mem_out_var~102\ : std_logic;
SIGNAL \mem_out_var~103\ : std_logic;
SIGNAL \mem_out_var~97\ : std_logic;
SIGNAL \mem_out_var~98\ : std_logic;
SIGNAL \mem_out_var~99\ : std_logic;
SIGNAL \mem_out_var~100\ : std_logic;
SIGNAL \mem_out_var~101_combout\ : std_logic;
SIGNAL \mem_out_var~95\ : std_logic;
SIGNAL \mem_out_var~96\ : std_logic;
SIGNAL \mem_out_var~104_combout\ : std_logic;
SIGNAL \mem_out_var~92\ : std_logic;
SIGNAL \mem_out_var~93\ : std_logic;
SIGNAL \mem_out_var~85\ : std_logic;
SIGNAL \mem_out_var~86\ : std_logic;
SIGNAL \mem_out_var~89\ : std_logic;
SIGNAL \mem_out_var~90\ : std_logic;
SIGNAL \mem_out_var~87\ : std_logic;
SIGNAL \mem_out_var~88\ : std_logic;
SIGNAL \mem_out_var~91_combout\ : std_logic;
SIGNAL \mem_out_var~94_combout\ : std_logic;
SIGNAL \mem_out_var~105_combout\ : std_logic;
SIGNAL \mem_out_var~106\ : std_logic;
SIGNAL \mem_out_var~107\ : std_logic;
SIGNAL \mem_out_var~113\ : std_logic;
SIGNAL \mem_out_var~114\ : std_logic;
SIGNAL \mem_out_var~108\ : std_logic;
SIGNAL \mem_out_var~109\ : std_logic;
SIGNAL \mem_out_var~110\ : std_logic;
SIGNAL \mem_out_var~111\ : std_logic;
SIGNAL \mem_out_var~112_combout\ : std_logic;
SIGNAL \mem_out_var~115_combout\ : std_logic;
SIGNAL \mem_out_var~120\ : std_logic;
SIGNAL \mem_out_var~121\ : std_logic;
SIGNAL \mem_out_var~118\ : std_logic;
SIGNAL \mem_out_var~119\ : std_logic;
SIGNAL \mem_out_var~122_combout\ : std_logic;
SIGNAL \mem_out_var~123\ : std_logic;
SIGNAL \mem_out_var~124\ : std_logic;
SIGNAL \mem_out_var~116\ : std_logic;
SIGNAL \mem_out_var~117\ : std_logic;
SIGNAL \mem_out_var~125_combout\ : std_logic;
SIGNAL \mem_out_var~126_combout\ : std_logic;
SIGNAL \mem_out_var~141\ : std_logic;
SIGNAL \mem_out_var~142\ : std_logic;
SIGNAL \mem_out_var~139\ : std_logic;
SIGNAL \mem_out_var~140\ : std_logic;
SIGNAL \mem_out_var~143_combout\ : std_logic;
SIGNAL \mem_out_var~144\ : std_logic;
SIGNAL \mem_out_var~145\ : std_logic;
SIGNAL \mem_out_var~137\ : std_logic;
SIGNAL \mem_out_var~138\ : std_logic;
SIGNAL \mem_out_var~146_combout\ : std_logic;
SIGNAL \mem_out_var~131\ : std_logic;
SIGNAL \mem_out_var~132\ : std_logic;
SIGNAL \mem_out_var~129\ : std_logic;
SIGNAL \mem_out_var~130\ : std_logic;
SIGNAL \mem_out_var~133_combout\ : std_logic;
SIGNAL \mem_out_var~134\ : std_logic;
SIGNAL \mem_out_var~135\ : std_logic;
SIGNAL \mem_out_var~127\ : std_logic;
SIGNAL \mem_out_var~128\ : std_logic;
SIGNAL \mem_out_var~136_combout\ : std_logic;
SIGNAL \mem_out_var~147_combout\ : std_logic;
SIGNAL \mem_out_var~150\ : std_logic;
SIGNAL \mem_out_var~151\ : std_logic;
SIGNAL \mem_out_var~152\ : std_logic;
SIGNAL \mem_out_var~153\ : std_logic;
SIGNAL \mem_out_var~154_combout\ : std_logic;
SIGNAL \mem_out_var~155\ : std_logic;
SIGNAL \mem_out_var~156\ : std_logic;
SIGNAL \mem_out_var~148\ : std_logic;
SIGNAL \mem_out_var~149\ : std_logic;
SIGNAL \mem_out_var~157_combout\ : std_logic;
SIGNAL \mem_out_var~160\ : std_logic;
SIGNAL \mem_out_var~161\ : std_logic;
SIGNAL \mem_out_var~162\ : std_logic;
SIGNAL \mem_out_var~163\ : std_logic;
SIGNAL \mem_out_var~164_combout\ : std_logic;
SIGNAL \mem_out_var~165\ : std_logic;
SIGNAL \mem_out_var~166\ : std_logic;
SIGNAL \mem_out_var~158\ : std_logic;
SIGNAL \mem_out_var~159\ : std_logic;
SIGNAL \mem_out_var~167_combout\ : std_logic;
SIGNAL \mem_out_var~168_combout\ : std_logic;
SIGNAL \mem_out_var~179\ : std_logic;
SIGNAL \mem_out_var~180\ : std_logic;
SIGNAL \mem_out_var~183\ : std_logic;
SIGNAL \mem_out_var~184\ : std_logic;
SIGNAL \mem_out_var~181\ : std_logic;
SIGNAL \mem_out_var~182\ : std_logic;
SIGNAL \mem_out_var~185_combout\ : std_logic;
SIGNAL \mem_out_var~186\ : std_logic;
SIGNAL \mem_out_var~187\ : std_logic;
SIGNAL \mem_out_var~188_combout\ : std_logic;
SIGNAL \mem_out_var~171\ : std_logic;
SIGNAL \mem_out_var~172\ : std_logic;
SIGNAL \mem_out_var~173\ : std_logic;
SIGNAL \mem_out_var~174\ : std_logic;
SIGNAL \mem_out_var~175_combout\ : std_logic;
SIGNAL \mem_out_var~176\ : std_logic;
SIGNAL \mem_out_var~177\ : std_logic;
SIGNAL \mem_out_var~169\ : std_logic;
SIGNAL \mem_out_var~170\ : std_logic;
SIGNAL \mem_out_var~178_combout\ : std_logic;
SIGNAL \mem_out_var~189_combout\ : std_logic;
SIGNAL \mem_out_var~202\ : std_logic;
SIGNAL \mem_out_var~203\ : std_logic;
SIGNAL \mem_out_var~204\ : std_logic;
SIGNAL \mem_out_var~205\ : std_logic;
SIGNAL \mem_out_var~206_combout\ : std_logic;
SIGNAL \mem_out_var~207\ : std_logic;
SIGNAL \mem_out_var~208\ : std_logic;
SIGNAL \mem_out_var~200\ : std_logic;
SIGNAL \mem_out_var~201\ : std_logic;
SIGNAL \mem_out_var~209_combout\ : std_logic;
SIGNAL \mem_out_var~192\ : std_logic;
SIGNAL \mem_out_var~193\ : std_logic;
SIGNAL \mem_out_var~194\ : std_logic;
SIGNAL \mem_out_var~195\ : std_logic;
SIGNAL \mem_out_var~196_combout\ : std_logic;
SIGNAL \mem_out_var~190\ : std_logic;
SIGNAL \mem_out_var~191\ : std_logic;
SIGNAL \mem_out_var~197\ : std_logic;
SIGNAL \mem_out_var~198\ : std_logic;
SIGNAL \mem_out_var~199_combout\ : std_logic;
SIGNAL \mem_out_var~210_combout\ : std_logic;
SIGNAL \mem_out_var~221\ : std_logic;
SIGNAL \mem_out_var~222\ : std_logic;
SIGNAL \mem_out_var~223\ : std_logic;
SIGNAL \mem_out_var~224\ : std_logic;
SIGNAL \mem_out_var~225\ : std_logic;
SIGNAL \mem_out_var~226\ : std_logic;
SIGNAL \mem_out_var~227_combout\ : std_logic;
SIGNAL \mem_out_var~228\ : std_logic;
SIGNAL \mem_out_var~229\ : std_logic;
SIGNAL \mem_out_var~230_combout\ : std_logic;
SIGNAL \mem_out_var~213\ : std_logic;
SIGNAL \mem_out_var~214\ : std_logic;
SIGNAL \mem_out_var~215\ : std_logic;
SIGNAL \mem_out_var~216\ : std_logic;
SIGNAL \mem_out_var~217_combout\ : std_logic;
SIGNAL \mem_out_var~218\ : std_logic;
SIGNAL \mem_out_var~219\ : std_logic;
SIGNAL \mem_out_var~211\ : std_logic;
SIGNAL \mem_out_var~212\ : std_logic;
SIGNAL \mem_out_var~220_combout\ : std_logic;
SIGNAL \mem_out_var~231_combout\ : std_logic;
SIGNAL \mem_out_var~239\ : std_logic;
SIGNAL \mem_out_var~240\ : std_logic;
SIGNAL \mem_out_var~236\ : std_logic;
SIGNAL \mem_out_var~237\ : std_logic;
SIGNAL \mem_out_var~234\ : std_logic;
SIGNAL \mem_out_var~235\ : std_logic;
SIGNAL \mem_out_var~238_combout\ : std_logic;
SIGNAL \mem_out_var~232\ : std_logic;
SIGNAL \mem_out_var~233\ : std_logic;
SIGNAL \mem_out_var~241_combout\ : std_logic;
SIGNAL \mem_out_var~242\ : std_logic;
SIGNAL \mem_out_var~243\ : std_logic;
SIGNAL \mem_out_var~249\ : std_logic;
SIGNAL \mem_out_var~250\ : std_logic;
SIGNAL \mem_out_var~244\ : std_logic;
SIGNAL \mem_out_var~245\ : std_logic;
SIGNAL \mem_out_var~246\ : std_logic;
SIGNAL \mem_out_var~247\ : std_logic;
SIGNAL \mem_out_var~248_combout\ : std_logic;
SIGNAL \mem_out_var~251_combout\ : std_logic;
SIGNAL \mem_out_var~252_combout\ : std_logic;
SIGNAL \mem_out_var~253\ : std_logic;
SIGNAL \mem_out_var~254\ : std_logic;
SIGNAL \mem_out_var~260\ : std_logic;
SIGNAL \mem_out_var~261\ : std_logic;
SIGNAL \mem_out_var~255\ : std_logic;
SIGNAL \mem_out_var~256\ : std_logic;
SIGNAL \mem_out_var~257\ : std_logic;
SIGNAL \mem_out_var~258\ : std_logic;
SIGNAL \mem_out_var~259_combout\ : std_logic;
SIGNAL \mem_out_var~262_combout\ : std_logic;
SIGNAL \mem_out_var~270\ : std_logic;
SIGNAL \mem_out_var~271\ : std_logic;
SIGNAL \mem_out_var~265\ : std_logic;
SIGNAL \mem_out_var~266\ : std_logic;
SIGNAL \mem_out_var~267\ : std_logic;
SIGNAL \mem_out_var~268\ : std_logic;
SIGNAL \mem_out_var~269_combout\ : std_logic;
SIGNAL \mem_out_var~263\ : std_logic;
SIGNAL \mem_out_var~264\ : std_logic;
SIGNAL \mem_out_var~272_combout\ : std_logic;
SIGNAL \mem_out_var~273_combout\ : std_logic;
SIGNAL \mem_out_var~284\ : std_logic;
SIGNAL \mem_out_var~285\ : std_logic;
SIGNAL \mem_out_var~286\ : std_logic;
SIGNAL \mem_out_var~287\ : std_logic;
SIGNAL \mem_out_var~288\ : std_logic;
SIGNAL \mem_out_var~289\ : std_logic;
SIGNAL \mem_out_var~290_combout\ : std_logic;
SIGNAL \mem_out_var~291\ : std_logic;
SIGNAL \mem_out_var~292\ : std_logic;
SIGNAL \mem_out_var~293_combout\ : std_logic;
SIGNAL \mem_out_var~278\ : std_logic;
SIGNAL \mem_out_var~279\ : std_logic;
SIGNAL \mem_out_var~276\ : std_logic;
SIGNAL \mem_out_var~277\ : std_logic;
SIGNAL \mem_out_var~280_combout\ : std_logic;
SIGNAL \mem_out_var~281\ : std_logic;
SIGNAL \mem_out_var~282\ : std_logic;
SIGNAL \mem_out_var~274\ : std_logic;
SIGNAL \mem_out_var~275\ : std_logic;
SIGNAL \mem_out_var~283_combout\ : std_logic;
SIGNAL \mem_out_var~294_combout\ : std_logic;
SIGNAL \mem_out_var~312\ : std_logic;
SIGNAL \mem_out_var~313\ : std_logic;
SIGNAL \mem_out_var~305\ : std_logic;
SIGNAL \mem_out_var~306\ : std_logic;
SIGNAL \mem_out_var~307\ : std_logic;
SIGNAL \mem_out_var~308\ : std_logic;
SIGNAL \mem_out_var~309\ : std_logic;
SIGNAL \mem_out_var~310\ : std_logic;
SIGNAL \mem_out_var~311_combout\ : std_logic;
SIGNAL \mem_out_var~314_combout\ : std_logic;
SIGNAL \mem_out_var~297\ : std_logic;
SIGNAL \mem_out_var~298\ : std_logic;
SIGNAL \mem_out_var~299\ : std_logic;
SIGNAL \mem_out_var~300\ : std_logic;
SIGNAL \mem_out_var~301_combout\ : std_logic;
SIGNAL \mem_out_var~295\ : std_logic;
SIGNAL \mem_out_var~296\ : std_logic;
SIGNAL \mem_out_var~302\ : std_logic;
SIGNAL \mem_out_var~303\ : std_logic;
SIGNAL \mem_out_var~304_combout\ : std_logic;
SIGNAL \mem_out_var~315_combout\ : std_logic;
SIGNAL \mem_out_var~323\ : std_logic;
SIGNAL \mem_out_var~324\ : std_logic;
SIGNAL \mem_out_var~318\ : std_logic;
SIGNAL \mem_out_var~319\ : std_logic;
SIGNAL \mem_out_var~320\ : std_logic;
SIGNAL \mem_out_var~321\ : std_logic;
SIGNAL \mem_out_var~322_combout\ : std_logic;
SIGNAL \mem_out_var~316\ : std_logic;
SIGNAL \mem_out_var~317\ : std_logic;
SIGNAL \mem_out_var~325_combout\ : std_logic;
SIGNAL \mem_out_var~326\ : std_logic;
SIGNAL \mem_out_var~327\ : std_logic;
SIGNAL \mem_out_var~328\ : std_logic;
SIGNAL \mem_out_var~329\ : std_logic;
SIGNAL \mem_out_var~330\ : std_logic;
SIGNAL \mem_out_var~331\ : std_logic;
SIGNAL \mem_out_var~332_combout\ : std_logic;
SIGNAL \mem_out_var~333\ : std_logic;
SIGNAL \mem_out_var~334\ : std_logic;
SIGNAL \mem_out_var~335_combout\ : std_logic;
SIGNAL \mem_out_var~336_combout\ : std_logic;
SIGNAL \inst_mem:13:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:15:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:14:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:12:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:2:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:1:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:5:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:7:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:6:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:16:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:25:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:21:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:3:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem_a~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_mem:17:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:22:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:30:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:26:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:29:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:18:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:24:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:28:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:20:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:19:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:23:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:31:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:8:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:27:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:0:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:4:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:9:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:11:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_mem:10:mem_reg|q\ : std_logic_vector(15 DOWNTO 0);

BEGIN

mem_d <= ww_mem_d;
ww_mem_a <= mem_a;
ww_rd_bar <= rd_bar;
ww_wr_bar <= wr_bar;
ww_rst <= rst;
ww_clk <= clk;
mem_out <= ww_mem_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(0),
	combout => \mem_d[0]~0\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(1),
	combout => \mem_d[1]~1\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(2),
	combout => \mem_d[2]~2\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(3),
	combout => \mem_d[3]~3\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(4),
	combout => \mem_d[4]~4\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(5),
	combout => \mem_d[5]~5\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(6),
	combout => \mem_d[6]~6\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(7),
	combout => \mem_d[7]~7\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(8),
	combout => \mem_d[8]~8\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(9),
	combout => \mem_d[9]~9\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(10),
	combout => \mem_d[10]~10\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(11),
	combout => \mem_d[11]~11\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(12),
	combout => \mem_d[12]~12\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(13),
	combout => \mem_d[13]~13\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(14),
	combout => \mem_d[14]~14\);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_d[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_mem_d(15),
	combout => \mem_d[15]~15\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(4),
	combout => \mem_a~combout\(4));

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

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_bar~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_bar,
	combout => \wr_bar~combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(3),
	combout => \mem_a~combout\(3));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(1),
	combout => \mem_a~combout\(1));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(2),
	combout => \mem_a~combout\(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mem_a(0),
	combout => \mem_a~combout\(0));

-- Location: LC_X2_Y7_N7
\Decoder0~12\ : maxv_lcell
-- Equation(s):
-- \Decoder0~12_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(1) & (!\mem_a~combout\(2) & \mem_a~combout\(0))))

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
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(2),
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~12_combout\);

-- Location: LC_X2_Y7_N9
\wrarr[11]~19\ : maxv_lcell
-- Equation(s):
-- \wrarr[11]~19_combout\ = ((!\wr_bar~combout\ & (\Decoder0~12_combout\ & !\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wr_bar~combout\,
	datac => \Decoder0~12_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[11]~19_combout\);

-- Location: LC_X1_Y6_N2
\inst_mem:11:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(0) = DFFEAS((((\mem_d[0]~0\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, , , , )

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
	datad => \mem_d[0]~0\,
	aclr => \rst~combout\,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(0));

-- Location: LC_X2_Y9_N7
\Decoder0~9\ : maxv_lcell
-- Equation(s):
-- \Decoder0~9_combout\ = (\mem_a~combout\(3) & (!\mem_a~combout\(1) & (!\mem_a~combout\(2) & !\mem_a~combout\(0))))

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
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(2),
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~9_combout\);

-- Location: LC_X2_Y9_N4
\wrarr[8]~18\ : maxv_lcell
-- Equation(s):
-- \wrarr[8]~18_combout\ = ((!\wr_bar~combout\ & (\Decoder0~9_combout\ & !\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wr_bar~combout\,
	datac => \Decoder0~9_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[8]~18_combout\);

-- Location: LC_X6_Y8_N5
\inst_mem:8:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(0) = DFFEAS(((\mem_d[0]~0\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, , , , )

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
	datab => \mem_d[0]~0\,
	aclr => \rst~combout\,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(0));

-- Location: LC_X9_Y7_N3
\Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \Decoder0~4_combout\ = (\mem_a~combout\(3) & (!\mem_a~combout\(1) & (\mem_a~combout\(0) & !\mem_a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~4_combout\);

-- Location: LC_X9_Y7_N2
\wrarr[9]~17\ : maxv_lcell
-- Equation(s):
-- \wrarr[9]~17_combout\ = ((!\wr_bar~combout\ & (!\mem_a~combout\(4) & \Decoder0~4_combout\)))

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
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(4),
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[9]~17_combout\);

-- Location: LC_X6_Y6_N2
\inst_mem:9:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~10\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B10_q[0]))) # (!\mem_a~combout\(0) & (\inst_mem:8:mem_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:8:mem_reg|q\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~10\,
	regout => \inst_mem:9:mem_reg|q\(0));

-- Location: LC_X2_Y9_N9
\Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \Decoder0~1_combout\ = (\mem_a~combout\(3) & (\mem_a~combout\(1) & (!\mem_a~combout\(2) & !\mem_a~combout\(0))))

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
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(2),
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~1_combout\);

-- Location: LC_X2_Y9_N3
\wrarr[10]~16\ : maxv_lcell
-- Equation(s):
-- \wrarr[10]~16_combout\ = ((!\wr_bar~combout\ & (\Decoder0~1_combout\ & !\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wr_bar~combout\,
	datac => \Decoder0~1_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[10]~16_combout\);

-- Location: LC_X6_Y6_N3
\inst_mem:10:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~11\ = (\mem_a~combout\(1) & ((\mem_out_var~10\ & (\inst_mem:11:mem_reg|q\(0))) # (!\mem_out_var~10\ & ((B11_q[0]))))) # (!\mem_a~combout\(1) & (((\mem_out_var~10\))))

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
	dataa => \inst_mem:11:mem_reg|q\(0),
	datab => \mem_a~combout\(1),
	datac => \mem_d[0]~0\,
	datad => \mem_out_var~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~11\,
	regout => \inst_mem:10:mem_reg|q\(0));

-- Location: LC_X9_Y7_N7
\Decoder0~10\ : maxv_lcell
-- Equation(s):
-- \Decoder0~10_combout\ = (!\mem_a~combout\(3) & (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & !\mem_a~combout\(2))))

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
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~10_combout\);

-- Location: LC_X9_Y7_N8
\wrarr[0]~26\ : maxv_lcell
-- Equation(s):
-- \wrarr[0]~26_combout\ = ((!\wr_bar~combout\ & (!\mem_a~combout\(4) & \Decoder0~10_combout\)))

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
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(4),
	datad => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[0]~26_combout\);

-- Location: LC_X4_Y7_N9
\inst_mem:0:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(0) = DFFEAS((((\mem_d[0]~0\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, , , , )

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
	datad => \mem_d[0]~0\,
	aclr => \rst~combout\,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(0));

-- Location: LC_X3_Y6_N4
\Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \Decoder0~6_combout\ = (!\mem_a~combout\(3) & (!\mem_a~combout\(1) & (\mem_a~combout\(0) & !\mem_a~combout\(2))))

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
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~6_combout\);

-- Location: LC_X3_Y6_N8
\wrarr[1]~25\ : maxv_lcell
-- Equation(s):
-- \wrarr[1]~25_combout\ = ((!\wr_bar~combout\ & (\Decoder0~6_combout\ & !\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wr_bar~combout\,
	datac => \Decoder0~6_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[1]~25_combout\);

-- Location: LC_X5_Y6_N8
\inst_mem:1:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~14\ = (\mem_a~combout\(0) & (((B2_q[0]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:0:mem_reg|q\(0) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:0:mem_reg|q\(0),
	datab => \mem_a~combout\(0),
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~14\,
	regout => \inst_mem:1:mem_reg|q\(0));

-- Location: LC_X10_Y10_N4
\Decoder0~14\ : maxv_lcell
-- Equation(s):
-- \Decoder0~14_combout\ = (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & (\mem_a~combout\(0) & \mem_a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~14_combout\);

-- Location: LC_X10_Y10_N7
\wrarr[3]~27\ : maxv_lcell
-- Equation(s):
-- \wrarr[3]~27_combout\ = (!\mem_a~combout\(4) & (((\Decoder0~14_combout\ & !\wr_bar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datac => \Decoder0~14_combout\,
	datad => \wr_bar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[3]~27_combout\);

-- Location: LC_X5_Y7_N2
\inst_mem:3:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, \mem_d[0]~0\, , , VCC)

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
	datac => \mem_d[0]~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(0));

-- Location: LC_X10_Y10_N8
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & (!\mem_a~combout\(0) & \mem_a~combout\(1))))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X10_Y10_N9
\wrarr[2]~24\ : maxv_lcell
-- Equation(s):
-- \wrarr[2]~24_combout\ = (!\mem_a~combout\(4) & (((!\wr_bar~combout\ & \Decoder0~2_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \wr_bar~combout\,
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[2]~24_combout\);

-- Location: LC_X5_Y6_N4
\inst_mem:2:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~15\ = (\mem_out_var~14\ & ((\inst_mem:3:mem_reg|q\(0)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~14\ & (((B3_q[0] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~14\,
	datab => \inst_mem:3:mem_reg|q\(0),
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~15\,
	regout => \inst_mem:2:mem_reg|q\(0));

-- Location: LC_X4_Y6_N7
\Decoder0~13\ : maxv_lcell
-- Equation(s):
-- \Decoder0~13_combout\ = (!\mem_a~combout\(3) & (\mem_a~combout\(0) & (\mem_a~combout\(1) & \mem_a~combout\(2))))

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
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(0),
	datac => \mem_a~combout\(1),
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~13_combout\);

-- Location: LC_X4_Y6_N9
\wrarr[7]~23\ : maxv_lcell
-- Equation(s):
-- \wrarr[7]~23_combout\ = ((\Decoder0~13_combout\ & (!\wr_bar~combout\ & !\mem_a~combout\(4))))

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
	datab => \Decoder0~13_combout\,
	datac => \wr_bar~combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[7]~23_combout\);

-- Location: LC_X4_Y5_N9
\inst_mem:7:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[0]~0\, , , VCC)

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
	datac => \mem_d[0]~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(0));

-- Location: LC_X4_Y6_N1
\Decoder0~8\ : maxv_lcell
-- Equation(s):
-- \Decoder0~8_combout\ = (!\mem_a~combout\(3) & (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & \mem_a~combout\(2))))

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
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(0),
	datac => \mem_a~combout\(1),
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~8_combout\);

-- Location: LC_X4_Y6_N4
\wrarr[4]~22\ : maxv_lcell
-- Equation(s):
-- \wrarr[4]~22_combout\ = ((\Decoder0~8_combout\ & (!\wr_bar~combout\ & !\mem_a~combout\(4))))

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
	datab => \Decoder0~8_combout\,
	datac => \wr_bar~combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[4]~22_combout\);

-- Location: LC_X5_Y5_N4
\inst_mem:4:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[0]~0\, , , VCC)

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
	datac => \mem_d[0]~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(0));

-- Location: LC_X6_Y10_N2
\Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \Decoder0~0_combout\ = (\mem_a~combout\(2) & (!\mem_a~combout\(0) & (!\mem_a~combout\(3) & \mem_a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_a~combout\(3),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~0_combout\);

-- Location: LC_X6_Y10_N3
\wrarr[6]~21\ : maxv_lcell
-- Equation(s):
-- \wrarr[6]~21_combout\ = (!\mem_a~combout\(4) & (((!\wr_bar~combout\ & \Decoder0~0_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \wr_bar~combout\,
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[6]~21_combout\);

-- Location: LC_X5_Y5_N5
\inst_mem:6:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~12\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B7_q[0]))) # (!\mem_a~combout\(1) & (\inst_mem:4:mem_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:4:mem_reg|q\(0),
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~12\,
	regout => \inst_mem:6:mem_reg|q\(0));

-- Location: LC_X10_Y10_N6
\Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \Decoder0~5_combout\ = (\mem_a~combout\(2) & (!\mem_a~combout\(3) & (\mem_a~combout\(0) & !\mem_a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~5_combout\);

-- Location: LC_X10_Y10_N3
\wrarr[5]~20\ : maxv_lcell
-- Equation(s):
-- \wrarr[5]~20_combout\ = (!\mem_a~combout\(4) & (((!\wr_bar~combout\ & \Decoder0~5_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \wr_bar~combout\,
	datad => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[5]~20_combout\);

-- Location: LC_X4_Y5_N0
\inst_mem:5:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~13\ = (\mem_a~combout\(0) & ((\mem_out_var~12\ & (\inst_mem:7:mem_reg|q\(0))) # (!\mem_out_var~12\ & ((B6_q[0]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~12\))))

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
	datab => \inst_mem:7:mem_reg|q\(0),
	datac => \mem_d[0]~0\,
	datad => \mem_out_var~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~13\,
	regout => \inst_mem:5:mem_reg|q\(0));

-- Location: LC_X5_Y6_N6
\mem_out_var~16\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~16_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((\mem_out_var~13\))) # (!\mem_a~combout\(2) & (\mem_out_var~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~15\,
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~16_combout\);

-- Location: LC_X2_Y9_N5
\Decoder0~11\ : maxv_lcell
-- Equation(s):
-- \Decoder0~11_combout\ = (\mem_a~combout\(3) & (!\mem_a~combout\(1) & (\mem_a~combout\(2) & !\mem_a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(2),
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~11_combout\);

-- Location: LC_X2_Y9_N2
\wrarr[12]~30\ : maxv_lcell
-- Equation(s):
-- \wrarr[12]~30_combout\ = ((!\wr_bar~combout\ & (\Decoder0~11_combout\ & !\mem_a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wr_bar~combout\,
	datac => \Decoder0~11_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[12]~30_combout\);

-- Location: LC_X11_Y4_N1
\inst_mem:12:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[0]~0\, , , VCC)

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
	datac => \mem_d[0]~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(0));

-- Location: LC_X11_Y10_N4
\Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3_combout\ = (\mem_a~combout\(1) & (\mem_a~combout\(3) & (!\mem_a~combout\(0) & \mem_a~combout\(2))))

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
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3_combout\);

-- Location: LC_X11_Y10_N5
\wrarr[14]~29\ : maxv_lcell
-- Equation(s):
-- \wrarr[14]~29_combout\ = ((!\wr_bar~combout\ & (!\mem_a~combout\(4) & \Decoder0~3_combout\)))

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
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(4),
	datad => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[14]~29_combout\);

-- Location: LC_X11_Y4_N0
\inst_mem:14:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~17\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B15_q[0])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\inst_mem:12:mem_reg|q\(0)))))

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
	datac => \mem_d[0]~0\,
	datad => \inst_mem:12:mem_reg|q\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~17\,
	regout => \inst_mem:14:mem_reg|q\(0));

-- Location: LC_X6_Y10_N9
\Decoder0~15\ : maxv_lcell
-- Equation(s):
-- \Decoder0~15_combout\ = (\mem_a~combout\(2) & (\mem_a~combout\(0) & (\mem_a~combout\(3) & \mem_a~combout\(1))))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_a~combout\(3),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~15_combout\);

-- Location: LC_X6_Y10_N8
\wrarr[15]~31\ : maxv_lcell
-- Equation(s):
-- \wrarr[15]~31_combout\ = (!\mem_a~combout\(4) & (((!\wr_bar~combout\ & \Decoder0~15_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \wr_bar~combout\,
	datad => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[15]~31_combout\);

-- Location: LC_X11_Y7_N6
\inst_mem:15:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[0]~0\, , , VCC)

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
	datac => \mem_d[0]~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(0));

-- Location: LC_X11_Y10_N8
\Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \Decoder0~7_combout\ = (!\mem_a~combout\(1) & (\mem_a~combout\(3) & (\mem_a~combout\(0) & \mem_a~combout\(2))))

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
	dataa => \mem_a~combout\(1),
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~7_combout\);

-- Location: LC_X11_Y10_N3
\wrarr[13]~28\ : maxv_lcell
-- Equation(s):
-- \wrarr[13]~28_combout\ = ((!\wr_bar~combout\ & (!\mem_a~combout\(4) & \Decoder0~7_combout\)))

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
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(4),
	datad => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[13]~28_combout\);

-- Location: LC_X11_Y7_N5
\inst_mem:13:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~18\ = (\mem_a~combout\(0) & ((\mem_out_var~17\ & ((\inst_mem:15:mem_reg|q\(0)))) # (!\mem_out_var~17\ & (B14_q[0])))) # (!\mem_a~combout\(0) & (\mem_out_var~17\))

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
	datab => \mem_out_var~17\,
	datac => \mem_d[0]~0\,
	datad => \inst_mem:15:mem_reg|q\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~18\,
	regout => \inst_mem:13:mem_reg|q\(0));

-- Location: LC_X5_Y6_N2
\mem_out_var~19\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~19_combout\ = (\mem_a~combout\(3) & ((\mem_out_var~16_combout\ & ((\mem_out_var~18\))) # (!\mem_out_var~16_combout\ & (\mem_out_var~11\)))) # (!\mem_a~combout\(3) & (((\mem_out_var~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~11\,
	datab => \mem_a~combout\(3),
	datac => \mem_out_var~16_combout\,
	datad => \mem_out_var~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~19_combout\);

-- Location: LC_X6_Y10_N5
\wrarr[31]~15\ : maxv_lcell
-- Equation(s):
-- \wrarr[31]~15_combout\ = (\mem_a~combout\(4) & (((!\wr_bar~combout\ & \Decoder0~15_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \wr_bar~combout\,
	datad => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[31]~15_combout\);

-- Location: LC_X3_Y7_N4
\inst_mem:31:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(0) = DFFEAS((((\mem_d[0]~0\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, , , , )

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
	datad => \mem_d[0]~0\,
	aclr => \rst~combout\,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(0));

-- Location: LC_X6_Y10_N7
\wrarr[19]~14\ : maxv_lcell
-- Equation(s):
-- \wrarr[19]~14_combout\ = (\mem_a~combout\(4) & (\Decoder0~14_combout\ & (!\wr_bar~combout\)))

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
	dataa => \mem_a~combout\(4),
	datab => \Decoder0~14_combout\,
	datac => \wr_bar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[19]~14_combout\);

-- Location: LC_X3_Y5_N7
\inst_mem:19:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, \mem_d[0]~0\, , , VCC)

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
	datac => \mem_d[0]~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(0));

-- Location: LC_X4_Y6_N3
\wrarr[23]~13\ : maxv_lcell
-- Equation(s):
-- \wrarr[23]~13_combout\ = ((\Decoder0~13_combout\ & (!\wr_bar~combout\ & \mem_a~combout\(4))))

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
	datab => \Decoder0~13_combout\,
	datac => \wr_bar~combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[23]~13_combout\);

-- Location: LC_X3_Y5_N0
\inst_mem:23:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~7\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B24_q[0]))) # (!\mem_a~combout\(2) & (\inst_mem:19:mem_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:19:mem_reg|q\(0),
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~7\,
	regout => \inst_mem:23:mem_reg|q\(0));

-- Location: LC_X2_Y7_N6
\wrarr[27]~12\ : maxv_lcell
-- Equation(s):
-- \wrarr[27]~12_combout\ = ((!\wr_bar~combout\ & (\Decoder0~12_combout\ & \mem_a~combout\(4))))

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
	datab => \wr_bar~combout\,
	datac => \Decoder0~12_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[27]~12_combout\);

-- Location: LC_X3_Y7_N2
\inst_mem:27:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~8\ = (\mem_a~combout\(3) & ((\mem_out_var~7\ & (\inst_mem:31:mem_reg|q\(0))) # (!\mem_out_var~7\ & ((B28_q[0]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~7\))))

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
	dataa => \inst_mem:31:mem_reg|q\(0),
	datab => \mem_a~combout\(3),
	datac => \mem_d[0]~0\,
	datad => \mem_out_var~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~8\,
	regout => \inst_mem:27:mem_reg|q\(0));

-- Location: LC_X10_Y10_N2
\wrarr[18]~2\ : maxv_lcell
-- Equation(s):
-- \wrarr[18]~2_combout\ = (\mem_a~combout\(4) & (((!\wr_bar~combout\ & \Decoder0~2_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \wr_bar~combout\,
	datad => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[18]~2_combout\);

-- Location: LC_X8_Y10_N1
\inst_mem:18:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(0) = DFFEAS((((\mem_d[0]~0\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datad => \mem_d[0]~0\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(0));

-- Location: LC_X2_Y9_N6
\wrarr[26]~1\ : maxv_lcell
-- Equation(s):
-- \wrarr[26]~1_combout\ = ((!\wr_bar~combout\ & (\Decoder0~1_combout\ & \mem_a~combout\(4))))

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
	datab => \wr_bar~combout\,
	datac => \Decoder0~1_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[26]~1_combout\);

-- Location: LC_X7_Y10_N8
\inst_mem:26:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~0\ = (\mem_a~combout\(3) & (((B27_q[0]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:18:mem_reg|q\(0) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:18:mem_reg|q\(0),
	datab => \mem_a~combout\(3),
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~0\,
	regout => \inst_mem:26:mem_reg|q\(0));

-- Location: LC_X11_Y10_N6
\wrarr[30]~3\ : maxv_lcell
-- Equation(s):
-- \wrarr[30]~3_combout\ = (\Decoder0~3_combout\ & (!\wr_bar~combout\ & (\mem_a~combout\(4))))

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
	dataa => \Decoder0~3_combout\,
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[30]~3_combout\);

-- Location: LC_X7_Y9_N2
\inst_mem:30:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(0) = DFFEAS((((\mem_d[0]~0\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, , , , )

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
	datad => \mem_d[0]~0\,
	aclr => \rst~combout\,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(0));

-- Location: LC_X6_Y10_N0
\wrarr[22]~0\ : maxv_lcell
-- Equation(s):
-- \wrarr[22]~0_combout\ = (\mem_a~combout\(4) & (((!\wr_bar~combout\ & \Decoder0~0_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \wr_bar~combout\,
	datad => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[22]~0_combout\);

-- Location: LC_X7_Y10_N9
\inst_mem:22:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~1\ = (\mem_out_var~0\ & ((\inst_mem:30:mem_reg|q\(0)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~0\ & (((B23_q[0] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~0\,
	datab => \inst_mem:30:mem_reg|q\(0),
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~1\,
	regout => \inst_mem:22:mem_reg|q\(0));

-- Location: LC_X2_Y9_N8
\wrarr[28]~11\ : maxv_lcell
-- Equation(s):
-- \wrarr[28]~11_combout\ = ((!\wr_bar~combout\ & (\Decoder0~11_combout\ & \mem_a~combout\(4))))

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
	datab => \wr_bar~combout\,
	datac => \Decoder0~11_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[28]~11_combout\);

-- Location: LC_X11_Y5_N6
\inst_mem:28:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[0]~0\, , , VCC)

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
	datac => \mem_d[0]~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(0));

-- Location: LC_X9_Y7_N5
\wrarr[16]~10\ : maxv_lcell
-- Equation(s):
-- \wrarr[16]~10_combout\ = (\Decoder0~10_combout\ & (!\wr_bar~combout\ & (\mem_a~combout\(4))))

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
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[16]~10_combout\);

-- Location: LC_X7_Y4_N3
\inst_mem:16:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(0) = DFFEAS((((\mem_d[0]~0\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, , , , )

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
	datad => \mem_d[0]~0\,
	aclr => \rst~combout\,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(0));

-- Location: LC_X2_Y9_N1
\wrarr[24]~9\ : maxv_lcell
-- Equation(s):
-- \wrarr[24]~9_combout\ = ((!\wr_bar~combout\ & (\Decoder0~9_combout\ & \mem_a~combout\(4))))

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
	datab => \wr_bar~combout\,
	datac => \Decoder0~9_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[24]~9_combout\);

-- Location: LC_X10_Y4_N6
\inst_mem:24:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~4\ = (\mem_a~combout\(3) & (((B25_q[0]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:16:mem_reg|q\(0) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:16:mem_reg|q\(0),
	datab => \mem_a~combout\(3),
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~4\,
	regout => \inst_mem:24:mem_reg|q\(0));

-- Location: LC_X4_Y6_N8
\wrarr[20]~8\ : maxv_lcell
-- Equation(s):
-- \wrarr[20]~8_combout\ = ((\Decoder0~8_combout\ & (!\wr_bar~combout\ & \mem_a~combout\(4))))

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
	datab => \Decoder0~8_combout\,
	datac => \wr_bar~combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[20]~8_combout\);

-- Location: LC_X11_Y5_N0
\inst_mem:20:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~5\ = (\mem_out_var~4\ & ((\inst_mem:28:mem_reg|q\(0)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~4\ & (((B21_q[0] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:28:mem_reg|q\(0),
	datab => \mem_out_var~4\,
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~5\,
	regout => \inst_mem:20:mem_reg|q\(0));

-- Location: LC_X11_Y10_N2
\wrarr[29]~7\ : maxv_lcell
-- Equation(s):
-- \wrarr[29]~7_combout\ = ((!\wr_bar~combout\ & (\mem_a~combout\(4) & \Decoder0~7_combout\)))

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
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(4),
	datad => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[29]~7_combout\);

-- Location: LC_X9_Y7_N4
\inst_mem:29:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, \mem_d[0]~0\, , , VCC)

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
	datac => \mem_d[0]~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(0));

-- Location: LC_X3_Y6_N3
\wrarr[17]~6\ : maxv_lcell
-- Equation(s):
-- \wrarr[17]~6_combout\ = ((!\wr_bar~combout\ & (\Decoder0~6_combout\ & \mem_a~combout\(4))))

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
	datab => \wr_bar~combout\,
	datac => \Decoder0~6_combout\,
	datad => \mem_a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[17]~6_combout\);

-- Location: LC_X2_Y6_N5
\inst_mem:17:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, \mem_d[0]~0\, , , VCC)

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
	datac => \mem_d[0]~0\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(0));

-- Location: LC_X10_Y10_N5
\wrarr[21]~5\ : maxv_lcell
-- Equation(s):
-- \wrarr[21]~5_combout\ = (\mem_a~combout\(4) & (((!\wr_bar~combout\ & \Decoder0~5_combout\))))

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
	dataa => \mem_a~combout\(4),
	datac => \wr_bar~combout\,
	datad => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[21]~5_combout\);

-- Location: LC_X9_Y7_N1
\inst_mem:21:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~2\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B22_q[0]))) # (!\mem_a~combout\(2) & (\inst_mem:17:mem_reg|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:17:mem_reg|q\(0),
	datac => \mem_d[0]~0\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~2\,
	regout => \inst_mem:21:mem_reg|q\(0));

-- Location: LC_X9_Y7_N0
\wrarr[25]~4\ : maxv_lcell
-- Equation(s):
-- \wrarr[25]~4_combout\ = ((!\wr_bar~combout\ & (\mem_a~combout\(4) & \Decoder0~4_combout\)))

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
	datab => \wr_bar~combout\,
	datac => \mem_a~combout\(4),
	datad => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wrarr[25]~4_combout\);

-- Location: LC_X12_Y7_N7
\inst_mem:25:mem_reg|q[0]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~3\ = (\mem_a~combout\(3) & ((\mem_out_var~2\ & (\inst_mem:29:mem_reg|q\(0))) # (!\mem_out_var~2\ & ((B26_q[0]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~2\))))

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
	dataa => \inst_mem:29:mem_reg|q\(0),
	datab => \mem_a~combout\(3),
	datac => \mem_d[0]~0\,
	datad => \mem_out_var~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~3\,
	regout => \inst_mem:25:mem_reg|q\(0));

-- Location: LC_X12_Y6_N7
\mem_out_var~6\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~6_combout\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((\mem_out_var~3\))) # (!\mem_a~combout\(0) & (\mem_out_var~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~5\,
	datab => \mem_a~combout\(1),
	datac => \mem_a~combout\(0),
	datad => \mem_out_var~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~6_combout\);

-- Location: LC_X5_Y6_N5
\mem_out_var~9\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~9_combout\ = (\mem_a~combout\(1) & ((\mem_out_var~6_combout\ & (\mem_out_var~8\)) # (!\mem_out_var~6_combout\ & ((\mem_out_var~1\))))) # (!\mem_a~combout\(1) & (((\mem_out_var~6_combout\))))

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
	dataa => \mem_a~combout\(1),
	datab => \mem_out_var~8\,
	datac => \mem_out_var~1\,
	datad => \mem_out_var~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~9_combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rd_bar~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rd_bar,
	combout => \rd_bar~combout\);

-- Location: LC_X7_Y6_N1
\mem_out_var~20\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~20_combout\ = (\rd_bar~combout\) # (((!\wr_bar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rd_bar~combout\,
	datac => \wr_bar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~20_combout\);

-- Location: LC_X5_Y6_N9
\mem_out_var~21\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~21_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & ((\mem_out_var~9_combout\))) # (!\mem_a~combout\(4) & (\mem_out_var~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_out_var~19_combout\,
	datac => \mem_out_var~9_combout\,
	datad => \mem_out_var~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~21_combout\);

-- Location: LC_X7_Y4_N6
\inst_mem:28:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(1) = DFFEAS(((\mem_d[1]~1\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, , , , )

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
	datab => \mem_d[1]~1\,
	aclr => \rst~combout\,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(1));

-- Location: LC_X10_Y8_N3
\inst_mem:16:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(1));

-- Location: LC_X10_Y8_N7
\inst_mem:20:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~26\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B21_q[1]))) # (!\mem_a~combout\(2) & (\inst_mem:16:mem_reg|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:16:mem_reg|q\(1),
	datab => \mem_a~combout\(3),
	datac => \mem_d[1]~1\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~26\,
	regout => \inst_mem:20:mem_reg|q\(1));

-- Location: LC_X12_Y4_N4
\inst_mem:24:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~27\ = (\mem_a~combout\(3) & ((\mem_out_var~26\ & (\inst_mem:28:mem_reg|q\(1))) # (!\mem_out_var~26\ & ((B25_q[1]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~26\))))

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
	dataa => \inst_mem:28:mem_reg|q\(1),
	datab => \mem_a~combout\(3),
	datac => \mem_d[1]~1\,
	datad => \mem_out_var~26\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~27\,
	regout => \inst_mem:24:mem_reg|q\(1));

-- Location: LC_X5_Y10_N7
\inst_mem:30:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(1));

-- Location: LC_X4_Y10_N9
\inst_mem:18:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(1) = DFFEAS((((\mem_d[1]~1\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datad => \mem_d[1]~1\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(1));

-- Location: LC_X4_Y10_N0
\inst_mem:22:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~24\ = (\mem_a~combout\(2) & (((B23_q[1]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\inst_mem:18:mem_reg|q\(1) & ((!\mem_a~combout\(3)))))

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
	datab => \inst_mem:18:mem_reg|q\(1),
	datac => \mem_d[1]~1\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~24\,
	regout => \inst_mem:22:mem_reg|q\(1));

-- Location: LC_X5_Y10_N9
\inst_mem:26:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~25\ = (\mem_a~combout\(3) & ((\mem_out_var~24\ & (\inst_mem:30:mem_reg|q\(1))) # (!\mem_out_var~24\ & ((B27_q[1]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~24\))))

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
	datab => \inst_mem:30:mem_reg|q\(1),
	datac => \mem_d[1]~1\,
	datad => \mem_out_var~24\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~25\,
	regout => \inst_mem:26:mem_reg|q\(1));

-- Location: LC_X5_Y10_N8
\mem_out_var~28\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~28_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((\mem_out_var~25\))) # (!\mem_a~combout\(1) & (\mem_out_var~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~27\,
	datab => \mem_out_var~25\,
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~28_combout\);

-- Location: LC_X5_Y8_N1
\inst_mem:31:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(1));

-- Location: LC_X4_Y9_N3
\inst_mem:19:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(1) = DFFEAS(((\mem_d[1]~1\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, , , , )

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
	datab => \mem_d[1]~1\,
	aclr => \rst~combout\,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(1));

-- Location: LC_X4_Y8_N9
\inst_mem:27:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~29\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B28_q[1]))) # (!\mem_a~combout\(3) & (\inst_mem:19:mem_reg|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \inst_mem:19:mem_reg|q\(1),
	datac => \mem_d[1]~1\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~29\,
	regout => \inst_mem:27:mem_reg|q\(1));

-- Location: LC_X4_Y8_N7
\inst_mem:23:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~30\ = (\mem_out_var~29\ & ((\inst_mem:31:mem_reg|q\(1)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~29\ & (((B24_q[1] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:31:mem_reg|q\(1),
	datab => \mem_out_var~29\,
	datac => \mem_d[1]~1\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~30\,
	regout => \inst_mem:23:mem_reg|q\(1));

-- Location: LC_X11_Y8_N0
\inst_mem:29:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(1));

-- Location: LC_X12_Y7_N6
\inst_mem:17:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(1));

-- Location: LC_X12_Y7_N5
\inst_mem:25:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~22\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B26_q[1])) # (!\mem_a~combout\(3) & ((\inst_mem:17:mem_reg|q\(1))))))

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
	datac => \mem_d[1]~1\,
	datad => \inst_mem:17:mem_reg|q\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~22\,
	regout => \inst_mem:25:mem_reg|q\(1));

-- Location: LC_X12_Y4_N2
\inst_mem:21:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~23\ = (\mem_a~combout\(2) & ((\mem_out_var~22\ & (\inst_mem:29:mem_reg|q\(1))) # (!\mem_out_var~22\ & ((B22_q[1]))))) # (!\mem_a~combout\(2) & (((\mem_out_var~22\))))

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
	datab => \inst_mem:29:mem_reg|q\(1),
	datac => \mem_d[1]~1\,
	datad => \mem_out_var~22\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~23\,
	regout => \inst_mem:21:mem_reg|q\(1));

-- Location: LC_X5_Y10_N0
\mem_out_var~31\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~31_combout\ = (\mem_out_var~28_combout\ & ((\mem_out_var~30\) # ((!\mem_a~combout\(0))))) # (!\mem_out_var~28_combout\ & (((\mem_a~combout\(0) & \mem_out_var~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~28_combout\,
	datab => \mem_out_var~30\,
	datac => \mem_a~combout\(0),
	datad => \mem_out_var~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~31_combout\);

-- Location: LC_X5_Y9_N1
\inst_mem:8:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(1));

-- Location: LC_X5_Y9_N6
\inst_mem:10:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~34\ = (\mem_a~combout\(1) & (((B11_q[1]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\inst_mem:8:mem_reg|q\(1) & ((!\mem_a~combout\(0)))))

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
	datab => \inst_mem:8:mem_reg|q\(1),
	datac => \mem_d[1]~1\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~34\,
	regout => \inst_mem:10:mem_reg|q\(1));

-- Location: LC_X11_Y9_N3
\inst_mem:11:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(1));

-- Location: LC_X11_Y9_N7
\inst_mem:9:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~35\ = (\mem_a~combout\(0) & ((\mem_out_var~34\ & ((\inst_mem:11:mem_reg|q\(1)))) # (!\mem_out_var~34\ & (B10_q[1])))) # (!\mem_a~combout\(0) & (\mem_out_var~34\))

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
	datab => \mem_out_var~34\,
	datac => \mem_d[1]~1\,
	datad => \inst_mem:11:mem_reg|q\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~35\,
	regout => \inst_mem:9:mem_reg|q\(1));

-- Location: LC_X13_Y9_N3
\inst_mem:0:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(1));

-- Location: LC_X13_Y9_N6
\inst_mem:2:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~36\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B3_q[1])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\inst_mem:0:mem_reg|q\(1)))))

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
	datac => \mem_d[1]~1\,
	datad => \inst_mem:0:mem_reg|q\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~36\,
	regout => \inst_mem:2:mem_reg|q\(1));

-- Location: LC_X12_Y9_N2
\inst_mem:3:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(1));

-- Location: LC_X12_Y9_N1
\inst_mem:1:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~37\ = (\mem_out_var~36\ & (((\inst_mem:3:mem_reg|q\(1))) # (!\mem_a~combout\(0)))) # (!\mem_out_var~36\ & (\mem_a~combout\(0) & (B2_q[1])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~36\,
	datab => \mem_a~combout\(0),
	datac => \mem_d[1]~1\,
	datad => \inst_mem:3:mem_reg|q\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~37\,
	regout => \inst_mem:1:mem_reg|q\(1));

-- Location: LC_X11_Y9_N4
\mem_out_var~38\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~38_combout\ = (\mem_a~combout\(3) & ((\mem_out_var~35\) # ((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (((!\mem_a~combout\(2) & \mem_out_var~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_out_var~35\,
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~38_combout\);

-- Location: LC_X6_Y10_N4
\inst_mem:7:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(1));

-- Location: LC_X5_Y4_N8
\inst_mem:4:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(1));

-- Location: LC_X5_Y4_N2
\inst_mem:5:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~32\ = (\mem_a~combout\(0) & (((B6_q[1]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:4:mem_reg|q\(1) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:4:mem_reg|q\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d[1]~1\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~32\,
	regout => \inst_mem:5:mem_reg|q\(1));

-- Location: LC_X6_Y10_N1
\inst_mem:6:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~33\ = (\mem_a~combout\(1) & ((\mem_out_var~32\ & (\inst_mem:7:mem_reg|q\(1))) # (!\mem_out_var~32\ & ((B7_q[1]))))) # (!\mem_a~combout\(1) & (((\mem_out_var~32\))))

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
	dataa => \inst_mem:7:mem_reg|q\(1),
	datab => \mem_a~combout\(1),
	datac => \mem_d[1]~1\,
	datad => \mem_out_var~32\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~33\,
	regout => \inst_mem:6:mem_reg|q\(1));

-- Location: LC_X13_Y8_N2
\inst_mem:12:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(1) = DFFEAS((((\mem_d[1]~1\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, , , , )

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
	datad => \mem_d[1]~1\,
	aclr => \rst~combout\,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(1));

-- Location: LC_X14_Y9_N8
\inst_mem:13:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~39\ = (\mem_a~combout\(0) & (((B14_q[1]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:12:mem_reg|q\(1) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:12:mem_reg|q\(1),
	datab => \mem_a~combout\(0),
	datac => \mem_d[1]~1\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~39\,
	regout => \inst_mem:13:mem_reg|q\(1));

-- Location: LC_X14_Y10_N5
\inst_mem:15:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(1) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[1]~1\, , , VCC)

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
	datac => \mem_d[1]~1\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(1));

-- Location: LC_X14_Y9_N1
\inst_mem:14:mem_reg|q[1]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~40\ = (\mem_out_var~39\ & (((\inst_mem:15:mem_reg|q\(1))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~39\ & (\mem_a~combout\(1) & (B15_q[1])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~39\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[1]~1\,
	datad => \inst_mem:15:mem_reg|q\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~40\,
	regout => \inst_mem:14:mem_reg|q\(1));

-- Location: LC_X6_Y10_N6
\mem_out_var~41\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~41_combout\ = (\mem_out_var~38_combout\ & (((\mem_out_var~40\) # (!\mem_a~combout\(2))))) # (!\mem_out_var~38_combout\ & (\mem_out_var~33\ & (\mem_a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~38_combout\,
	datab => \mem_out_var~33\,
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~41_combout\);

-- Location: LC_X5_Y10_N3
\mem_out_var~42\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~42_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & (\mem_out_var~31_combout\)) # (!\mem_a~combout\(4) & ((\mem_out_var~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_out_var~31_combout\,
	datac => \mem_out_var~41_combout\,
	datad => \mem_out_var~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~42_combout\);

-- Location: LC_X8_Y10_N7
\inst_mem:18:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(2) = DFFEAS(((\mem_d[2]~2\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datab => \mem_d[2]~2\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(2));

-- Location: LC_X7_Y10_N5
\inst_mem:26:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~43\ = (\mem_a~combout\(3) & (((B27_q[2]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:18:mem_reg|q\(2) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:18:mem_reg|q\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~43\,
	regout => \inst_mem:26:mem_reg|q\(2));

-- Location: LC_X7_Y9_N7
\inst_mem:30:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(2));

-- Location: LC_X7_Y9_N1
\inst_mem:22:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~44\ = (\mem_out_var~43\ & ((\inst_mem:30:mem_reg|q\(2)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~43\ & (((B23_q[2] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~43\,
	datab => \inst_mem:30:mem_reg|q\(2),
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~44\,
	regout => \inst_mem:22:mem_reg|q\(2));

-- Location: LC_X11_Y5_N5
\inst_mem:28:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(2));

-- Location: LC_X9_Y4_N6
\inst_mem:16:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(2) = DFFEAS((((\mem_d[2]~2\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, , , , )

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
	datad => \mem_d[2]~2\,
	aclr => \rst~combout\,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(2));

-- Location: LC_X10_Y4_N0
\inst_mem:24:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~47\ = (\mem_a~combout\(3) & (((B25_q[2]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:16:mem_reg|q\(2) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:16:mem_reg|q\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~47\,
	regout => \inst_mem:24:mem_reg|q\(2));

-- Location: LC_X11_Y5_N8
\inst_mem:20:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~48\ = (\mem_out_var~47\ & ((\inst_mem:28:mem_reg|q\(2)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~47\ & (((B21_q[2] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:28:mem_reg|q\(2),
	datab => \mem_out_var~47\,
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~48\,
	regout => \inst_mem:20:mem_reg|q\(2));

-- Location: LC_X9_Y7_N6
\inst_mem:29:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(2));

-- Location: LC_X2_Y6_N4
\inst_mem:17:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(2) = DFFEAS(((\mem_d[2]~2\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	datab => \mem_d[2]~2\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(2));

-- Location: LC_X9_Y7_N9
\inst_mem:21:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~45\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B22_q[2]))) # (!\mem_a~combout\(2) & (\inst_mem:17:mem_reg|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:17:mem_reg|q\(2),
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~45\,
	regout => \inst_mem:21:mem_reg|q\(2));

-- Location: LC_X8_Y6_N0
\inst_mem:25:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~46\ = (\mem_a~combout\(3) & ((\mem_out_var~45\ & (\inst_mem:29:mem_reg|q\(2))) # (!\mem_out_var~45\ & ((B26_q[2]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~45\))))

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
	dataa => \inst_mem:29:mem_reg|q\(2),
	datab => \mem_a~combout\(3),
	datac => \mem_d[2]~2\,
	datad => \mem_out_var~45\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~46\,
	regout => \inst_mem:25:mem_reg|q\(2));

-- Location: LC_X8_Y6_N7
\mem_out_var~49\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~49_combout\ = (\mem_a~combout\(0) & (((\mem_out_var~46\) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\mem_out_var~48\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~48\,
	datab => \mem_a~combout\(0),
	datac => \mem_out_var~46\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~49_combout\);

-- Location: LC_X3_Y5_N9
\inst_mem:19:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(2));

-- Location: LC_X3_Y5_N5
\inst_mem:23:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~50\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B24_q[2]))) # (!\mem_a~combout\(2) & (\inst_mem:19:mem_reg|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:19:mem_reg|q\(2),
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~50\,
	regout => \inst_mem:23:mem_reg|q\(2));

-- Location: LC_X3_Y4_N9
\inst_mem:31:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(2));

-- Location: LC_X3_Y4_N4
\inst_mem:27:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~51\ = (\mem_out_var~50\ & ((\inst_mem:31:mem_reg|q\(2)) # ((!\mem_a~combout\(3))))) # (!\mem_out_var~50\ & (((B28_q[2] & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~50\,
	datab => \inst_mem:31:mem_reg|q\(2),
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~51\,
	regout => \inst_mem:27:mem_reg|q\(2));

-- Location: LC_X8_Y6_N4
\mem_out_var~52\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~52_combout\ = (\mem_out_var~49_combout\ & (((\mem_out_var~51\) # (!\mem_a~combout\(1))))) # (!\mem_out_var~49_combout\ & (\mem_out_var~44\ & ((\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~44\,
	datab => \mem_out_var~49_combout\,
	datac => \mem_out_var~51\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~52_combout\);

-- Location: LC_X11_Y4_N9
\inst_mem:12:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(2));

-- Location: LC_X11_Y4_N5
\inst_mem:14:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~60\ = (\mem_a~combout\(1) & (((B15_q[2]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\inst_mem:12:mem_reg|q\(2) & ((!\mem_a~combout\(0)))))

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
	datab => \inst_mem:12:mem_reg|q\(2),
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~60\,
	regout => \inst_mem:14:mem_reg|q\(2));

-- Location: LC_X11_Y7_N2
\inst_mem:15:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(2));

-- Location: LC_X11_Y7_N3
\inst_mem:13:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~61\ = (\mem_a~combout\(0) & ((\mem_out_var~60\ & ((\inst_mem:15:mem_reg|q\(2)))) # (!\mem_out_var~60\ & (B14_q[2])))) # (!\mem_a~combout\(0) & (\mem_out_var~60\))

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
	datab => \mem_out_var~60\,
	datac => \mem_d[2]~2\,
	datad => \inst_mem:15:mem_reg|q\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~61\,
	regout => \inst_mem:13:mem_reg|q\(2));

-- Location: LC_X7_Y8_N9
\inst_mem:11:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(2) = DFFEAS((\mem_d[2]~2\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, , , , )

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
	dataa => \mem_d[2]~2\,
	aclr => \rst~combout\,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(2));

-- Location: LC_X2_Y8_N7
\inst_mem:8:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(2));

-- Location: LC_X6_Y6_N1
\inst_mem:9:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~53\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B10_q[2])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\inst_mem:8:mem_reg|q\(2)))))

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
	datac => \mem_d[2]~2\,
	datad => \inst_mem:8:mem_reg|q\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~53\,
	regout => \inst_mem:9:mem_reg|q\(2));

-- Location: LC_X6_Y6_N6
\inst_mem:10:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~54\ = (\mem_a~combout\(1) & ((\mem_out_var~53\ & (\inst_mem:11:mem_reg|q\(2))) # (!\mem_out_var~53\ & ((B11_q[2]))))) # (!\mem_a~combout\(1) & (((\mem_out_var~53\))))

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
	dataa => \inst_mem:11:mem_reg|q\(2),
	datab => \mem_a~combout\(1),
	datac => \mem_d[2]~2\,
	datad => \mem_out_var~53\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~54\,
	regout => \inst_mem:10:mem_reg|q\(2));

-- Location: LC_X5_Y5_N6
\inst_mem:4:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(2));

-- Location: LC_X5_Y5_N1
\inst_mem:6:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~55\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B7_q[2]))) # (!\mem_a~combout\(1) & (\inst_mem:4:mem_reg|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:4:mem_reg|q\(2),
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~55\,
	regout => \inst_mem:6:mem_reg|q\(2));

-- Location: LC_X4_Y5_N8
\inst_mem:7:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[2]~2\, , , VCC)

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
	datac => \mem_d[2]~2\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(2));

-- Location: LC_X4_Y5_N2
\inst_mem:5:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~56\ = (\mem_a~combout\(0) & ((\mem_out_var~55\ & ((\inst_mem:7:mem_reg|q\(2)))) # (!\mem_out_var~55\ & (B6_q[2])))) # (!\mem_a~combout\(0) & (\mem_out_var~55\))

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
	datab => \mem_out_var~55\,
	datac => \mem_d[2]~2\,
	datad => \inst_mem:7:mem_reg|q\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~56\,
	regout => \inst_mem:5:mem_reg|q\(2));

-- Location: LC_X5_Y7_N6
\inst_mem:3:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(2) = DFFEAS(((\mem_d[2]~2\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, , , , )

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
	datab => \mem_d[2]~2\,
	aclr => \rst~combout\,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(2));

-- Location: LC_X4_Y7_N5
\inst_mem:0:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(2) = DFFEAS((\mem_d[2]~2\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, , , , )

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
	dataa => \mem_d[2]~2\,
	aclr => \rst~combout\,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(2));

-- Location: LC_X5_Y6_N7
\inst_mem:1:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~57\ = (\mem_a~combout\(0) & (((B2_q[2]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:0:mem_reg|q\(2) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:0:mem_reg|q\(2),
	datab => \mem_a~combout\(0),
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~57\,
	regout => \inst_mem:1:mem_reg|q\(2));

-- Location: LC_X5_Y6_N3
\inst_mem:2:mem_reg|q[2]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~58\ = (\mem_out_var~57\ & ((\inst_mem:3:mem_reg|q\(2)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~57\ & (((B3_q[2] & \mem_a~combout\(1)))))

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
	dataa => \inst_mem:3:mem_reg|q\(2),
	datab => \mem_out_var~57\,
	datac => \mem_d[2]~2\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~58\,
	regout => \inst_mem:2:mem_reg|q\(2));

-- Location: LC_X5_Y6_N1
\mem_out_var~59\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~59_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\mem_out_var~56\)) # (!\mem_a~combout\(2) & ((\mem_out_var~58\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~56\,
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~59_combout\);

-- Location: LC_X8_Y6_N2
\mem_out_var~62\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~62_combout\ = (\mem_out_var~59_combout\ & ((\mem_out_var~61\) # ((!\mem_a~combout\(3))))) # (!\mem_out_var~59_combout\ & (((\mem_out_var~54\ & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~61\,
	datab => \mem_out_var~54\,
	datac => \mem_out_var~59_combout\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~62_combout\);

-- Location: LC_X8_Y6_N9
\mem_out_var~63\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~63_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & (\mem_out_var~52_combout\)) # (!\mem_a~combout\(4) & ((\mem_out_var~62_combout\)))))

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
	dataa => \mem_out_var~52_combout\,
	datab => \mem_out_var~20_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~63_combout\);

-- Location: LC_X5_Y9_N7
\inst_mem:8:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(3));

-- Location: LC_X5_Y9_N9
\inst_mem:10:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~76\ = (\mem_a~combout\(1) & (((B11_q[3]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\inst_mem:8:mem_reg|q\(3) & ((!\mem_a~combout\(0)))))

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
	datab => \inst_mem:8:mem_reg|q\(3),
	datac => \mem_d[3]~3\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~76\,
	regout => \inst_mem:10:mem_reg|q\(3));

-- Location: LC_X11_Y9_N1
\inst_mem:11:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(3));

-- Location: LC_X11_Y9_N6
\inst_mem:9:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~77\ = (\mem_a~combout\(0) & ((\mem_out_var~76\ & ((\inst_mem:11:mem_reg|q\(3)))) # (!\mem_out_var~76\ & (B10_q[3])))) # (!\mem_a~combout\(0) & (\mem_out_var~76\))

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
	datab => \mem_out_var~76\,
	datac => \mem_d[3]~3\,
	datad => \inst_mem:11:mem_reg|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~77\,
	regout => \inst_mem:9:mem_reg|q\(3));

-- Location: LC_X12_Y9_N8
\inst_mem:3:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(3));

-- Location: LC_X13_Y9_N0
\inst_mem:0:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(3));

-- Location: LC_X13_Y9_N4
\inst_mem:2:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~78\ = (\mem_a~combout\(1) & (((B3_q[3]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\inst_mem:0:mem_reg|q\(3) & ((!\mem_a~combout\(0)))))

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
	datab => \inst_mem:0:mem_reg|q\(3),
	datac => \mem_d[3]~3\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~78\,
	regout => \inst_mem:2:mem_reg|q\(3));

-- Location: LC_X12_Y9_N9
\inst_mem:1:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~79\ = (\mem_a~combout\(0) & ((\mem_out_var~78\ & (\inst_mem:3:mem_reg|q\(3))) # (!\mem_out_var~78\ & ((B2_q[3]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~78\))))

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
	dataa => \inst_mem:3:mem_reg|q\(3),
	datab => \mem_a~combout\(0),
	datac => \mem_d[3]~3\,
	datad => \mem_out_var~78\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~79\,
	regout => \inst_mem:1:mem_reg|q\(3));

-- Location: LC_X14_Y7_N5
\mem_out_var~80\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~80_combout\ = (\mem_a~combout\(3) & ((\mem_out_var~77\) # ((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (((!\mem_a~combout\(2) & \mem_out_var~79\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_out_var~77\,
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~80_combout\);

-- Location: LC_X13_Y6_N3
\inst_mem:4:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(3));

-- Location: LC_X13_Y6_N7
\inst_mem:5:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~74\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B6_q[3])) # (!\mem_a~combout\(0) & ((\inst_mem:4:mem_reg|q\(3))))))

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
	datac => \mem_d[3]~3\,
	datad => \inst_mem:4:mem_reg|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~74\,
	regout => \inst_mem:5:mem_reg|q\(3));

-- Location: LC_X13_Y7_N3
\inst_mem:7:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(3));

-- Location: LC_X13_Y7_N7
\inst_mem:6:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~75\ = (\mem_out_var~74\ & (((\inst_mem:7:mem_reg|q\(3))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~74\ & (\mem_a~combout\(1) & (B7_q[3])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~74\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[3]~3\,
	datad => \inst_mem:7:mem_reg|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~75\,
	regout => \inst_mem:6:mem_reg|q\(3));

-- Location: LC_X13_Y8_N5
\inst_mem:12:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(3));

-- Location: LC_X14_Y9_N3
\inst_mem:13:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~81\ = (\mem_a~combout\(0) & (((B14_q[3]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:12:mem_reg|q\(3) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:12:mem_reg|q\(3),
	datab => \mem_a~combout\(0),
	datac => \mem_d[3]~3\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~81\,
	regout => \inst_mem:13:mem_reg|q\(3));

-- Location: LC_X14_Y8_N3
\inst_mem:15:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(3));

-- Location: LC_X14_Y8_N5
\inst_mem:14:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~82\ = (\mem_a~combout\(1) & ((\mem_out_var~81\ & ((\inst_mem:15:mem_reg|q\(3)))) # (!\mem_out_var~81\ & (B15_q[3])))) # (!\mem_a~combout\(1) & (\mem_out_var~81\))

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
	dataa => \mem_a~combout\(1),
	datab => \mem_out_var~81\,
	datac => \mem_d[3]~3\,
	datad => \inst_mem:15:mem_reg|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~82\,
	regout => \inst_mem:14:mem_reg|q\(3));

-- Location: LC_X14_Y7_N6
\mem_out_var~83\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~83_combout\ = (\mem_out_var~80_combout\ & (((\mem_out_var~82\) # (!\mem_a~combout\(2))))) # (!\mem_out_var~80_combout\ & (\mem_out_var~75\ & (\mem_a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~80_combout\,
	datab => \mem_out_var~75\,
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~83_combout\);

-- Location: LC_X9_Y8_N0
\inst_mem:28:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(3));

-- Location: LC_X10_Y8_N6
\inst_mem:16:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(3));

-- Location: LC_X10_Y8_N1
\inst_mem:20:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~68\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B21_q[3]))) # (!\mem_a~combout\(2) & (\inst_mem:16:mem_reg|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:16:mem_reg|q\(3),
	datab => \mem_a~combout\(3),
	datac => \mem_d[3]~3\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~68\,
	regout => \inst_mem:20:mem_reg|q\(3));

-- Location: LC_X9_Y8_N4
\inst_mem:24:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~69\ = (\mem_a~combout\(3) & ((\mem_out_var~68\ & (\inst_mem:28:mem_reg|q\(3))) # (!\mem_out_var~68\ & ((B25_q[3]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~68\))))

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
	datab => \inst_mem:28:mem_reg|q\(3),
	datac => \mem_d[3]~3\,
	datad => \mem_out_var~68\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~69\,
	regout => \inst_mem:24:mem_reg|q\(3));

-- Location: LC_X4_Y10_N2
\inst_mem:18:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(3) = DFFEAS(((\mem_d[3]~3\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datab => \mem_d[3]~3\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(3));

-- Location: LC_X4_Y10_N6
\inst_mem:22:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~66\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B23_q[3]))) # (!\mem_a~combout\(2) & (\inst_mem:18:mem_reg|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:18:mem_reg|q\(3),
	datab => \mem_a~combout\(3),
	datac => \mem_d[3]~3\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~66\,
	regout => \inst_mem:22:mem_reg|q\(3));

-- Location: LC_X5_Y10_N1
\inst_mem:30:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(3));

-- Location: LC_X5_Y10_N2
\inst_mem:26:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~67\ = (\mem_a~combout\(3) & ((\mem_out_var~66\ & ((\inst_mem:30:mem_reg|q\(3)))) # (!\mem_out_var~66\ & (B27_q[3])))) # (!\mem_a~combout\(3) & (\mem_out_var~66\))

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
	datab => \mem_out_var~66\,
	datac => \mem_d[3]~3\,
	datad => \inst_mem:30:mem_reg|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~67\,
	regout => \inst_mem:26:mem_reg|q\(3));

-- Location: LC_X5_Y10_N6
\mem_out_var~70\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~70_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((\mem_out_var~67\))) # (!\mem_a~combout\(1) & (\mem_out_var~69\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~69\,
	datab => \mem_out_var~67\,
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~70_combout\);

-- Location: LC_X4_Y9_N2
\inst_mem:19:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(3) = DFFEAS(((\mem_d[3]~3\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, , , , )

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
	datab => \mem_d[3]~3\,
	aclr => \rst~combout\,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(3));

-- Location: LC_X4_Y8_N3
\inst_mem:27:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~71\ = (\mem_a~combout\(3) & (((B28_q[3]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:19:mem_reg|q\(3) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:19:mem_reg|q\(3),
	datab => \mem_a~combout\(3),
	datac => \mem_d[3]~3\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~71\,
	regout => \inst_mem:27:mem_reg|q\(3));

-- Location: LC_X3_Y7_N7
\inst_mem:31:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(3) = DFFEAS(((\mem_d[3]~3\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, , , , )

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
	datab => \mem_d[3]~3\,
	aclr => \rst~combout\,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(3));

-- Location: LC_X4_Y8_N8
\inst_mem:23:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~72\ = (\mem_out_var~71\ & ((\inst_mem:31:mem_reg|q\(3)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~71\ & (((B24_q[3] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~71\,
	datab => \inst_mem:31:mem_reg|q\(3),
	datac => \mem_d[3]~3\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~72\,
	regout => \inst_mem:23:mem_reg|q\(3));

-- Location: LC_X12_Y7_N8
\inst_mem:17:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(3) = DFFEAS((\mem_d[3]~3\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	dataa => \mem_d[3]~3\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(3));

-- Location: LC_X12_Y7_N0
\inst_mem:25:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~64\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B26_q[3])) # (!\mem_a~combout\(3) & ((\inst_mem:17:mem_reg|q\(3))))))

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
	datac => \mem_d[3]~3\,
	datad => \inst_mem:17:mem_reg|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~64\,
	regout => \inst_mem:25:mem_reg|q\(3));

-- Location: LC_X10_Y7_N9
\inst_mem:29:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(3) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, \mem_d[3]~3\, , , VCC)

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
	datac => \mem_d[3]~3\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(3));

-- Location: LC_X10_Y7_N2
\inst_mem:21:mem_reg|q[3]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~65\ = (\mem_out_var~64\ & (((\inst_mem:29:mem_reg|q\(3))) # (!\mem_a~combout\(2)))) # (!\mem_out_var~64\ & (\mem_a~combout\(2) & (B22_q[3])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~64\,
	datab => \mem_a~combout\(2),
	datac => \mem_d[3]~3\,
	datad => \inst_mem:29:mem_reg|q\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~65\,
	regout => \inst_mem:21:mem_reg|q\(3));

-- Location: LC_X7_Y7_N1
\mem_out_var~73\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~73_combout\ = (\mem_a~combout\(0) & ((\mem_out_var~70_combout\ & (\mem_out_var~72\)) # (!\mem_out_var~70_combout\ & ((\mem_out_var~65\))))) # (!\mem_a~combout\(0) & (\mem_out_var~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_out_var~70_combout\,
	datac => \mem_out_var~72\,
	datad => \mem_out_var~65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~73_combout\);

-- Location: LC_X7_Y7_N0
\mem_out_var~84\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~84_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & ((\mem_out_var~73_combout\))) # (!\mem_a~combout\(4) & (\mem_out_var~83_combout\))))

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
	dataa => \mem_out_var~20_combout\,
	datab => \mem_a~combout\(4),
	datac => \mem_out_var~83_combout\,
	datad => \mem_out_var~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~84_combout\);

-- Location: LC_X11_Y4_N2
\inst_mem:12:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(4));

-- Location: LC_X11_Y4_N3
\inst_mem:14:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~102\ = (\mem_a~combout\(1) & (((B15_q[4]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\inst_mem:12:mem_reg|q\(4) & ((!\mem_a~combout\(0)))))

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
	datab => \inst_mem:12:mem_reg|q\(4),
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~102\,
	regout => \inst_mem:14:mem_reg|q\(4));

-- Location: LC_X11_Y7_N8
\inst_mem:15:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(4));

-- Location: LC_X11_Y7_N9
\inst_mem:13:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~103\ = (\mem_a~combout\(0) & ((\mem_out_var~102\ & ((\inst_mem:15:mem_reg|q\(4)))) # (!\mem_out_var~102\ & (B14_q[4])))) # (!\mem_a~combout\(0) & (\mem_out_var~102\))

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
	datab => \mem_out_var~102\,
	datac => \mem_d[4]~4\,
	datad => \inst_mem:15:mem_reg|q\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~103\,
	regout => \inst_mem:13:mem_reg|q\(4));

-- Location: LC_X4_Y5_N1
\inst_mem:7:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(4));

-- Location: LC_X5_Y5_N3
\inst_mem:4:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(4));

-- Location: LC_X5_Y5_N7
\inst_mem:6:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~97\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (B7_q[4])) # (!\mem_a~combout\(1) & ((\inst_mem:4:mem_reg|q\(4))))))

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
	datac => \mem_d[4]~4\,
	datad => \inst_mem:4:mem_reg|q\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~97\,
	regout => \inst_mem:6:mem_reg|q\(4));

-- Location: LC_X4_Y5_N3
\inst_mem:5:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~98\ = (\mem_a~combout\(0) & ((\mem_out_var~97\ & (\inst_mem:7:mem_reg|q\(4))) # (!\mem_out_var~97\ & ((B6_q[4]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~97\))))

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
	datab => \inst_mem:7:mem_reg|q\(4),
	datac => \mem_d[4]~4\,
	datad => \mem_out_var~97\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~98\,
	regout => \inst_mem:5:mem_reg|q\(4));

-- Location: LC_X5_Y7_N5
\inst_mem:3:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(4) = DFFEAS((((\mem_d[4]~4\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, , , , )

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
	datad => \mem_d[4]~4\,
	aclr => \rst~combout\,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(4));

-- Location: LC_X4_Y7_N0
\inst_mem:0:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(4));

-- Location: LC_X3_Y6_N2
\inst_mem:1:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~99\ = (\mem_a~combout\(0) & (((B2_q[4]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:0:mem_reg|q\(4) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:0:mem_reg|q\(4),
	datab => \mem_a~combout\(0),
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~99\,
	regout => \inst_mem:1:mem_reg|q\(4));

-- Location: LC_X3_Y6_N7
\inst_mem:2:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~100\ = (\mem_out_var~99\ & ((\inst_mem:3:mem_reg|q\(4)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~99\ & (((B3_q[4] & \mem_a~combout\(1)))))

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
	dataa => \inst_mem:3:mem_reg|q\(4),
	datab => \mem_out_var~99\,
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~100\,
	regout => \inst_mem:2:mem_reg|q\(4));

-- Location: LC_X3_Y6_N6
\mem_out_var~101\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~101_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\mem_out_var~98\)) # (!\mem_a~combout\(2) & ((\mem_out_var~100\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_out_var~98\,
	datac => \mem_out_var~100\,
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~101_combout\);

-- Location: LC_X6_Y8_N2
\inst_mem:8:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(4) = DFFEAS((((\mem_d[4]~4\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, , , , )

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
	datad => \mem_d[4]~4\,
	aclr => \rst~combout\,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(4));

-- Location: LC_X9_Y6_N5
\inst_mem:9:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~95\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B10_q[4]))) # (!\mem_a~combout\(0) & (\inst_mem:8:mem_reg|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:8:mem_reg|q\(4),
	datab => \mem_a~combout\(1),
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~95\,
	regout => \inst_mem:9:mem_reg|q\(4));

-- Location: LC_X11_Y6_N4
\inst_mem:11:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(4));

-- Location: LC_X9_Y6_N2
\inst_mem:10:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~96\ = (\mem_out_var~95\ & (((\inst_mem:11:mem_reg|q\(4))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~95\ & (\mem_a~combout\(1) & (B11_q[4])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~95\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[4]~4\,
	datad => \inst_mem:11:mem_reg|q\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~96\,
	regout => \inst_mem:10:mem_reg|q\(4));

-- Location: LC_X9_Y6_N6
\mem_out_var~104\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~104_combout\ = (\mem_a~combout\(3) & ((\mem_out_var~101_combout\ & (\mem_out_var~103\)) # (!\mem_out_var~101_combout\ & ((\mem_out_var~96\))))) # (!\mem_a~combout\(3) & (((\mem_out_var~101_combout\))))

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
	dataa => \mem_a~combout\(3),
	datab => \mem_out_var~103\,
	datac => \mem_out_var~101_combout\,
	datad => \mem_out_var~96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~104_combout\);

-- Location: LC_X3_Y4_N5
\inst_mem:31:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(4));

-- Location: LC_X3_Y5_N1
\inst_mem:19:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(4));

-- Location: LC_X3_Y5_N8
\inst_mem:23:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~92\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B24_q[4]))) # (!\mem_a~combout\(2) & (\inst_mem:19:mem_reg|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:19:mem_reg|q\(4),
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~92\,
	regout => \inst_mem:23:mem_reg|q\(4));

-- Location: LC_X3_Y4_N3
\inst_mem:27:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~93\ = (\mem_out_var~92\ & ((\inst_mem:31:mem_reg|q\(4)) # ((!\mem_a~combout\(3))))) # (!\mem_out_var~92\ & (((B28_q[4] & \mem_a~combout\(3)))))

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
	dataa => \inst_mem:31:mem_reg|q\(4),
	datab => \mem_out_var~92\,
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~93\,
	regout => \inst_mem:27:mem_reg|q\(4));

-- Location: LC_X7_Y9_N3
\inst_mem:30:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(4));

-- Location: LC_X8_Y10_N4
\inst_mem:18:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(4) = DFFEAS((((\mem_d[4]~4\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datad => \mem_d[4]~4\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(4));

-- Location: LC_X7_Y10_N3
\inst_mem:26:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~85\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B27_q[4])) # (!\mem_a~combout\(3) & ((\inst_mem:18:mem_reg|q\(4))))))

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
	datac => \mem_d[4]~4\,
	datad => \inst_mem:18:mem_reg|q\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~85\,
	regout => \inst_mem:26:mem_reg|q\(4));

-- Location: LC_X7_Y9_N8
\inst_mem:22:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~86\ = (\mem_out_var~85\ & ((\inst_mem:30:mem_reg|q\(4)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~85\ & (((B23_q[4] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:30:mem_reg|q\(4),
	datab => \mem_out_var~85\,
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~86\,
	regout => \inst_mem:22:mem_reg|q\(4));

-- Location: LC_X11_Y5_N4
\inst_mem:28:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(4));

-- Location: LC_X9_Y4_N3
\inst_mem:16:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(4) = DFFEAS((((\mem_d[4]~4\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, , , , )

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
	datad => \mem_d[4]~4\,
	aclr => \rst~combout\,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(4));

-- Location: LC_X10_Y4_N7
\inst_mem:24:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~89\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B25_q[4]))) # (!\mem_a~combout\(3) & (\inst_mem:16:mem_reg|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \inst_mem:16:mem_reg|q\(4),
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~89\,
	regout => \inst_mem:24:mem_reg|q\(4));

-- Location: LC_X11_Y5_N7
\inst_mem:20:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~90\ = (\mem_out_var~89\ & ((\inst_mem:28:mem_reg|q\(4)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~89\ & (((B21_q[4] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:28:mem_reg|q\(4),
	datab => \mem_out_var~89\,
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~90\,
	regout => \inst_mem:20:mem_reg|q\(4));

-- Location: LC_X11_Y6_N1
\inst_mem:17:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, \mem_d[4]~4\, , , VCC)

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
	datac => \mem_d[4]~4\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(4));

-- Location: LC_X10_Y6_N7
\inst_mem:21:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~87\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B22_q[4]))) # (!\mem_a~combout\(2) & (\inst_mem:17:mem_reg|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:17:mem_reg|q\(4),
	datab => \mem_a~combout\(3),
	datac => \mem_d[4]~4\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~87\,
	regout => \inst_mem:21:mem_reg|q\(4));

-- Location: LC_X11_Y8_N9
\inst_mem:29:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(4) = DFFEAS((((\mem_d[4]~4\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, , , , )

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
	datad => \mem_d[4]~4\,
	aclr => \rst~combout\,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(4));

-- Location: LC_X10_Y6_N5
\inst_mem:25:mem_reg|q[4]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~88\ = (\mem_a~combout\(3) & ((\mem_out_var~87\ & ((\inst_mem:29:mem_reg|q\(4)))) # (!\mem_out_var~87\ & (B26_q[4])))) # (!\mem_a~combout\(3) & (\mem_out_var~87\))

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
	datab => \mem_out_var~87\,
	datac => \mem_d[4]~4\,
	datad => \inst_mem:29:mem_reg|q\(4),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~88\,
	regout => \inst_mem:25:mem_reg|q\(4));

-- Location: LC_X9_Y6_N7
\mem_out_var~91\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~91_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1)) # (\mem_out_var~88\)))) # (!\mem_a~combout\(0) & (\mem_out_var~90\ & (!\mem_a~combout\(1))))

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
	dataa => \mem_a~combout\(0),
	datab => \mem_out_var~90\,
	datac => \mem_a~combout\(1),
	datad => \mem_out_var~88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~91_combout\);

-- Location: LC_X9_Y6_N8
\mem_out_var~94\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~94_combout\ = (\mem_a~combout\(1) & ((\mem_out_var~91_combout\ & (\mem_out_var~93\)) # (!\mem_out_var~91_combout\ & ((\mem_out_var~86\))))) # (!\mem_a~combout\(1) & (((\mem_out_var~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~93\,
	datab => \mem_out_var~86\,
	datac => \mem_a~combout\(1),
	datad => \mem_out_var~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~94_combout\);

-- Location: LC_X9_Y6_N9
\mem_out_var~105\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~105_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & ((\mem_out_var~94_combout\))) # (!\mem_a~combout\(4) & (\mem_out_var~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~104_combout\,
	datab => \mem_out_var~20_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~105_combout\);

-- Location: LC_X10_Y7_N4
\inst_mem:29:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, \mem_d[5]~5\, , , VCC)

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
	datac => \mem_d[5]~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(5));

-- Location: LC_X12_Y7_N9
\inst_mem:17:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, \mem_d[5]~5\, , , VCC)

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
	datac => \mem_d[5]~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(5));

-- Location: LC_X12_Y7_N3
\inst_mem:25:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~106\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B26_q[5])) # (!\mem_a~combout\(3) & ((\inst_mem:17:mem_reg|q\(5))))))

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
	datac => \mem_d[5]~5\,
	datad => \inst_mem:17:mem_reg|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~106\,
	regout => \inst_mem:25:mem_reg|q\(5));

-- Location: LC_X10_Y7_N7
\inst_mem:21:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~107\ = (\mem_a~combout\(2) & ((\mem_out_var~106\ & (\inst_mem:29:mem_reg|q\(5))) # (!\mem_out_var~106\ & ((B22_q[5]))))) # (!\mem_a~combout\(2) & (((\mem_out_var~106\))))

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
	dataa => \inst_mem:29:mem_reg|q\(5),
	datab => \mem_a~combout\(2),
	datac => \mem_d[5]~5\,
	datad => \mem_out_var~106\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~107\,
	regout => \inst_mem:21:mem_reg|q\(5));

-- Location: LC_X4_Y9_N6
\inst_mem:19:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(5) = DFFEAS(((\mem_d[5]~5\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, , , , )

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
	datab => \mem_d[5]~5\,
	aclr => \rst~combout\,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(5));

-- Location: LC_X4_Y8_N1
\inst_mem:27:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~113\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B28_q[5]))) # (!\mem_a~combout\(3) & (\inst_mem:19:mem_reg|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \inst_mem:19:mem_reg|q\(5),
	datac => \mem_d[5]~5\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~113\,
	regout => \inst_mem:27:mem_reg|q\(5));

-- Location: LC_X5_Y8_N7
\inst_mem:31:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(5) = DFFEAS(((\mem_d[5]~5\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, , , , )

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
	datab => \mem_d[5]~5\,
	aclr => \rst~combout\,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(5));

-- Location: LC_X5_Y8_N5
\inst_mem:23:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~114\ = (\mem_out_var~113\ & ((\inst_mem:31:mem_reg|q\(5)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~113\ & (((B24_q[5] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~113\,
	datab => \inst_mem:31:mem_reg|q\(5),
	datac => \mem_d[5]~5\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~114\,
	regout => \inst_mem:23:mem_reg|q\(5));

-- Location: LC_X8_Y9_N4
\inst_mem:30:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(5) = DFFEAS((((\mem_d[5]~5\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, , , , )

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
	datad => \mem_d[5]~5\,
	aclr => \rst~combout\,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(5));

-- Location: LC_X8_Y10_N5
\inst_mem:18:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(5) = DFFEAS(((\mem_d[5]~5\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datab => \mem_d[5]~5\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(5));

-- Location: LC_X9_Y9_N8
\inst_mem:22:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~108\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B23_q[5]))) # (!\mem_a~combout\(2) & (\inst_mem:18:mem_reg|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:18:mem_reg|q\(5),
	datac => \mem_d[5]~5\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~108\,
	regout => \inst_mem:22:mem_reg|q\(5));

-- Location: LC_X9_Y9_N7
\inst_mem:26:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~109\ = (\mem_a~combout\(3) & ((\mem_out_var~108\ & (\inst_mem:30:mem_reg|q\(5))) # (!\mem_out_var~108\ & ((B27_q[5]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~108\))))

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
	datab => \inst_mem:30:mem_reg|q\(5),
	datac => \mem_d[5]~5\,
	datad => \mem_out_var~108\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~109\,
	regout => \inst_mem:26:mem_reg|q\(5));

-- Location: LC_X9_Y8_N7
\inst_mem:28:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[5]~5\, , , VCC)

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
	datac => \mem_d[5]~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(5));

-- Location: LC_X10_Y9_N3
\inst_mem:16:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(5) = DFFEAS((((\mem_d[5]~5\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, , , , )

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
	datad => \mem_d[5]~5\,
	aclr => \rst~combout\,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(5));

-- Location: LC_X10_Y8_N9
\inst_mem:20:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~110\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B21_q[5]))) # (!\mem_a~combout\(2) & (\inst_mem:16:mem_reg|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:16:mem_reg|q\(5),
	datab => \mem_a~combout\(3),
	datac => \mem_d[5]~5\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~110\,
	regout => \inst_mem:20:mem_reg|q\(5));

-- Location: LC_X9_Y8_N5
\inst_mem:24:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~111\ = (\mem_a~combout\(3) & ((\mem_out_var~110\ & (\inst_mem:28:mem_reg|q\(5))) # (!\mem_out_var~110\ & ((B25_q[5]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~110\))))

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
	datab => \inst_mem:28:mem_reg|q\(5),
	datac => \mem_d[5]~5\,
	datad => \mem_out_var~110\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~111\,
	regout => \inst_mem:24:mem_reg|q\(5));

-- Location: LC_X10_Y7_N1
\mem_out_var~112\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~112_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (\mem_out_var~109\)) # (!\mem_a~combout\(1) & ((\mem_out_var~111\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_out_var~109\,
	datac => \mem_out_var~111\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~112_combout\);

-- Location: LC_X10_Y7_N5
\mem_out_var~115\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~115_combout\ = (\mem_a~combout\(0) & ((\mem_out_var~112_combout\ & ((\mem_out_var~114\))) # (!\mem_out_var~112_combout\ & (\mem_out_var~107\)))) # (!\mem_a~combout\(0) & (((\mem_out_var~112_combout\))))

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
	datab => \mem_out_var~107\,
	datac => \mem_out_var~114\,
	datad => \mem_out_var~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~115_combout\);

-- Location: LC_X12_Y9_N4
\inst_mem:3:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, \mem_d[5]~5\, , , VCC)

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
	datac => \mem_d[5]~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(5));

-- Location: LC_X13_Y9_N7
\inst_mem:0:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, \mem_d[5]~5\, , , VCC)

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
	datac => \mem_d[5]~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(5));

-- Location: LC_X13_Y9_N1
\inst_mem:2:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~120\ = (\mem_a~combout\(1) & (((B3_q[5]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\inst_mem:0:mem_reg|q\(5) & ((!\mem_a~combout\(0)))))

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
	datab => \inst_mem:0:mem_reg|q\(5),
	datac => \mem_d[5]~5\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~120\,
	regout => \inst_mem:2:mem_reg|q\(5));

-- Location: LC_X12_Y9_N5
\inst_mem:1:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~121\ = (\mem_a~combout\(0) & ((\mem_out_var~120\ & (\inst_mem:3:mem_reg|q\(5))) # (!\mem_out_var~120\ & ((B2_q[5]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~120\))))

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
	dataa => \inst_mem:3:mem_reg|q\(5),
	datab => \mem_a~combout\(0),
	datac => \mem_d[5]~5\,
	datad => \mem_out_var~120\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~121\,
	regout => \inst_mem:1:mem_reg|q\(5));

-- Location: LC_X5_Y9_N8
\inst_mem:8:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[5]~5\, , , VCC)

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
	datac => \mem_d[5]~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(5));

-- Location: LC_X5_Y9_N2
\inst_mem:10:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~118\ = (\mem_a~combout\(1) & (((B11_q[5]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\inst_mem:8:mem_reg|q\(5) & ((!\mem_a~combout\(0)))))

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
	datab => \inst_mem:8:mem_reg|q\(5),
	datac => \mem_d[5]~5\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~118\,
	regout => \inst_mem:10:mem_reg|q\(5));

-- Location: LC_X11_Y9_N9
\inst_mem:11:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(5) = DFFEAS((((\mem_d[5]~5\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, , , , )

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
	datad => \mem_d[5]~5\,
	aclr => \rst~combout\,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(5));

-- Location: LC_X11_Y9_N2
\inst_mem:9:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~119\ = (\mem_a~combout\(0) & ((\mem_out_var~118\ & ((\inst_mem:11:mem_reg|q\(5)))) # (!\mem_out_var~118\ & (B10_q[5])))) # (!\mem_a~combout\(0) & (\mem_out_var~118\))

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
	datab => \mem_out_var~118\,
	datac => \mem_d[5]~5\,
	datad => \inst_mem:11:mem_reg|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~119\,
	regout => \inst_mem:9:mem_reg|q\(5));

-- Location: LC_X12_Y8_N8
\mem_out_var~122\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~122_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2)) # (\mem_out_var~119\)))) # (!\mem_a~combout\(3) & (\mem_out_var~121\ & (!\mem_a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~121\,
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~119\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~122_combout\);

-- Location: LC_X13_Y8_N9
\inst_mem:12:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[5]~5\, , , VCC)

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
	datac => \mem_d[5]~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(5));

-- Location: LC_X13_Y8_N1
\inst_mem:13:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~123\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B14_q[5])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\inst_mem:12:mem_reg|q\(5)))))

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
	datac => \mem_d[5]~5\,
	datad => \inst_mem:12:mem_reg|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~123\,
	regout => \inst_mem:13:mem_reg|q\(5));

-- Location: LC_X11_Y7_N0
\inst_mem:15:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(5) = DFFEAS((((\mem_d[5]~5\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, , , , )

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
	datad => \mem_d[5]~5\,
	aclr => \rst~combout\,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(5));

-- Location: LC_X12_Y8_N9
\inst_mem:14:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~124\ = (\mem_out_var~123\ & (((\inst_mem:15:mem_reg|q\(5))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~123\ & (\mem_a~combout\(1) & (B15_q[5])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~123\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[5]~5\,
	datad => \inst_mem:15:mem_reg|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~124\,
	regout => \inst_mem:14:mem_reg|q\(5));

-- Location: LC_X13_Y6_N8
\inst_mem:4:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[5]~5\, , , VCC)

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
	datac => \mem_d[5]~5\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(5));

-- Location: LC_X13_Y6_N4
\inst_mem:5:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~116\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B6_q[5])) # (!\mem_a~combout\(0) & ((\inst_mem:4:mem_reg|q\(5))))))

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
	datac => \mem_d[5]~5\,
	datad => \inst_mem:4:mem_reg|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~116\,
	regout => \inst_mem:5:mem_reg|q\(5));

-- Location: LC_X7_Y5_N3
\inst_mem:7:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(5) = DFFEAS((((\mem_d[5]~5\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, , , , )

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
	datad => \mem_d[5]~5\,
	aclr => \rst~combout\,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(5));

-- Location: LC_X12_Y8_N2
\inst_mem:6:mem_reg|q[5]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~117\ = (\mem_out_var~116\ & (((\inst_mem:7:mem_reg|q\(5))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~116\ & (\mem_a~combout\(1) & (B7_q[5])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~116\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[5]~5\,
	datad => \inst_mem:7:mem_reg|q\(5),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~117\,
	regout => \inst_mem:6:mem_reg|q\(5));

-- Location: LC_X12_Y8_N5
\mem_out_var~125\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~125_combout\ = (\mem_out_var~122_combout\ & ((\mem_out_var~124\) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~122_combout\ & (((\mem_a~combout\(2) & \mem_out_var~117\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~122_combout\,
	datab => \mem_out_var~124\,
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~125_combout\);

-- Location: LC_X10_Y7_N0
\mem_out_var~126\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~126_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & (\mem_out_var~115_combout\)) # (!\mem_a~combout\(4) & ((\mem_out_var~125_combout\)))))

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
	dataa => \mem_out_var~20_combout\,
	datab => \mem_a~combout\(4),
	datac => \mem_out_var~115_combout\,
	datad => \mem_out_var~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~126_combout\);

-- Location: LC_X5_Y7_N1
\inst_mem:3:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(6) = DFFEAS((((\mem_d[6]~6\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, , , , )

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
	datad => \mem_d[6]~6\,
	aclr => \rst~combout\,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(6));

-- Location: LC_X4_Y7_N2
\inst_mem:0:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(6) = DFFEAS((((\mem_d[6]~6\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, , , , )

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
	datad => \mem_d[6]~6\,
	aclr => \rst~combout\,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(6));

-- Location: LC_X6_Y7_N9
\inst_mem:1:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~141\ = (\mem_a~combout\(0) & (((B2_q[6]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:0:mem_reg|q\(6) & ((!\mem_a~combout\(1)))))

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
	datab => \inst_mem:0:mem_reg|q\(6),
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~141\,
	regout => \inst_mem:1:mem_reg|q\(6));

-- Location: LC_X6_Y7_N7
\inst_mem:2:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~142\ = (\mem_out_var~141\ & ((\inst_mem:3:mem_reg|q\(6)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~141\ & (((B3_q[6] & \mem_a~combout\(1)))))

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
	dataa => \inst_mem:3:mem_reg|q\(6),
	datab => \mem_out_var~141\,
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~142\,
	regout => \inst_mem:2:mem_reg|q\(6));

-- Location: LC_X4_Y5_N7
\inst_mem:7:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(6));

-- Location: LC_X5_Y5_N9
\inst_mem:4:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(6));

-- Location: LC_X5_Y5_N8
\inst_mem:6:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~139\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B7_q[6]))) # (!\mem_a~combout\(1) & (\inst_mem:4:mem_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:4:mem_reg|q\(6),
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~139\,
	regout => \inst_mem:6:mem_reg|q\(6));

-- Location: LC_X4_Y5_N4
\inst_mem:5:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~140\ = (\mem_a~combout\(0) & ((\mem_out_var~139\ & (\inst_mem:7:mem_reg|q\(6))) # (!\mem_out_var~139\ & ((B6_q[6]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~139\))))

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
	datab => \inst_mem:7:mem_reg|q\(6),
	datac => \mem_d[6]~6\,
	datad => \mem_out_var~139\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~140\,
	regout => \inst_mem:5:mem_reg|q\(6));

-- Location: LC_X6_Y6_N9
\mem_out_var~143\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~143_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((\mem_out_var~140\))) # (!\mem_a~combout\(2) & (\mem_out_var~142\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~142\,
	datab => \mem_a~combout\(3),
	datac => \mem_out_var~140\,
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~143_combout\);

-- Location: LC_X9_Y5_N3
\inst_mem:15:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(6));

-- Location: LC_X11_Y4_N8
\inst_mem:12:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(6));

-- Location: LC_X11_Y4_N7
\inst_mem:14:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~144\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B15_q[6])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\inst_mem:12:mem_reg|q\(6)))))

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
	datac => \mem_d[6]~6\,
	datad => \inst_mem:12:mem_reg|q\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~144\,
	regout => \inst_mem:14:mem_reg|q\(6));

-- Location: LC_X9_Y5_N0
\inst_mem:13:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~145\ = (\mem_a~combout\(0) & ((\mem_out_var~144\ & (\inst_mem:15:mem_reg|q\(6))) # (!\mem_out_var~144\ & ((B14_q[6]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~144\))))

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
	dataa => \inst_mem:15:mem_reg|q\(6),
	datab => \mem_a~combout\(0),
	datac => \mem_d[6]~6\,
	datad => \mem_out_var~144\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~145\,
	regout => \inst_mem:13:mem_reg|q\(6));

-- Location: LC_X11_Y6_N8
\inst_mem:11:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(6) = DFFEAS((\mem_d[6]~6\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, , , , )

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
	dataa => \mem_d[6]~6\,
	aclr => \rst~combout\,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(6));

-- Location: LC_X6_Y9_N4
\inst_mem:8:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(6) = DFFEAS(((\mem_d[6]~6\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, , , , )

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
	datab => \mem_d[6]~6\,
	aclr => \rst~combout\,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(6));

-- Location: LC_X9_Y6_N1
\inst_mem:9:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~137\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B10_q[6]))) # (!\mem_a~combout\(0) & (\inst_mem:8:mem_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:8:mem_reg|q\(6),
	datab => \mem_a~combout\(1),
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~137\,
	regout => \inst_mem:9:mem_reg|q\(6));

-- Location: LC_X9_Y6_N3
\inst_mem:10:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~138\ = (\mem_a~combout\(1) & ((\mem_out_var~137\ & (\inst_mem:11:mem_reg|q\(6))) # (!\mem_out_var~137\ & ((B11_q[6]))))) # (!\mem_a~combout\(1) & (((\mem_out_var~137\))))

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
	dataa => \inst_mem:11:mem_reg|q\(6),
	datab => \mem_a~combout\(1),
	datac => \mem_d[6]~6\,
	datad => \mem_out_var~137\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~138\,
	regout => \inst_mem:10:mem_reg|q\(6));

-- Location: LC_X9_Y5_N2
\mem_out_var~146\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~146_combout\ = (\mem_a~combout\(3) & ((\mem_out_var~143_combout\ & (\mem_out_var~145\)) # (!\mem_out_var~143_combout\ & ((\mem_out_var~138\))))) # (!\mem_a~combout\(3) & (\mem_out_var~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_out_var~143_combout\,
	datac => \mem_out_var~145\,
	datad => \mem_out_var~138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~146_combout\);

-- Location: LC_X6_Y4_N5
\inst_mem:16:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(6));

-- Location: LC_X10_Y4_N4
\inst_mem:24:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~131\ = (\mem_a~combout\(3) & (((B25_q[6]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:16:mem_reg|q\(6) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:16:mem_reg|q\(6),
	datab => \mem_a~combout\(3),
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~131\,
	regout => \inst_mem:24:mem_reg|q\(6));

-- Location: LC_X11_Y5_N1
\inst_mem:28:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(6));

-- Location: LC_X11_Y5_N2
\inst_mem:20:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~132\ = (\mem_out_var~131\ & ((\inst_mem:28:mem_reg|q\(6)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~131\ & (((B21_q[6] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~131\,
	datab => \inst_mem:28:mem_reg|q\(6),
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~132\,
	regout => \inst_mem:20:mem_reg|q\(6));

-- Location: LC_X11_Y6_N0
\inst_mem:17:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(6) = DFFEAS((\mem_d[6]~6\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	dataa => \mem_d[6]~6\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(6));

-- Location: LC_X10_Y6_N4
\inst_mem:21:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~129\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B22_q[6]))) # (!\mem_a~combout\(2) & (\inst_mem:17:mem_reg|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:17:mem_reg|q\(6),
	datab => \mem_a~combout\(3),
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~129\,
	regout => \inst_mem:21:mem_reg|q\(6));

-- Location: LC_X12_Y6_N4
\inst_mem:29:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(6) = DFFEAS((((\mem_d[6]~6\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, , , , )

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
	datad => \mem_d[6]~6\,
	aclr => \rst~combout\,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(6));

-- Location: LC_X10_Y6_N9
\inst_mem:25:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~130\ = (\mem_out_var~129\ & ((\inst_mem:29:mem_reg|q\(6)) # ((!\mem_a~combout\(3))))) # (!\mem_out_var~129\ & (((B26_q[6] & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~129\,
	datab => \inst_mem:29:mem_reg|q\(6),
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~130\,
	regout => \inst_mem:25:mem_reg|q\(6));

-- Location: LC_X8_Y6_N6
\mem_out_var~133\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~133_combout\ = (\mem_a~combout\(0) & (((\mem_out_var~130\) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\mem_out_var~132\ & ((!\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~132\,
	datab => \mem_a~combout\(0),
	datac => \mem_out_var~130\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~133_combout\);

-- Location: LC_X3_Y4_N6
\inst_mem:31:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(6));

-- Location: LC_X3_Y5_N4
\inst_mem:19:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(6));

-- Location: LC_X3_Y5_N3
\inst_mem:23:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~134\ = (\mem_a~combout\(2) & (((B24_q[6]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\inst_mem:19:mem_reg|q\(6) & ((!\mem_a~combout\(3)))))

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
	dataa => \inst_mem:19:mem_reg|q\(6),
	datab => \mem_a~combout\(2),
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~134\,
	regout => \inst_mem:23:mem_reg|q\(6));

-- Location: LC_X3_Y4_N2
\inst_mem:27:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~135\ = (\mem_out_var~134\ & ((\inst_mem:31:mem_reg|q\(6)) # ((!\mem_a~combout\(3))))) # (!\mem_out_var~134\ & (((B28_q[6] & \mem_a~combout\(3)))))

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
	dataa => \inst_mem:31:mem_reg|q\(6),
	datab => \mem_out_var~134\,
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~135\,
	regout => \inst_mem:27:mem_reg|q\(6));

-- Location: LC_X8_Y10_N8
\inst_mem:18:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(6));

-- Location: LC_X7_Y10_N4
\inst_mem:26:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~127\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B27_q[6])) # (!\mem_a~combout\(3) & ((\inst_mem:18:mem_reg|q\(6))))))

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
	datac => \mem_d[6]~6\,
	datad => \inst_mem:18:mem_reg|q\(6),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~127\,
	regout => \inst_mem:26:mem_reg|q\(6));

-- Location: LC_X6_Y4_N0
\inst_mem:30:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, \mem_d[6]~6\, , , VCC)

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
	datac => \mem_d[6]~6\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(6));

-- Location: LC_X7_Y10_N2
\inst_mem:22:mem_reg|q[6]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~128\ = (\mem_out_var~127\ & ((\inst_mem:30:mem_reg|q\(6)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~127\ & (((B23_q[6] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~127\,
	datab => \inst_mem:30:mem_reg|q\(6),
	datac => \mem_d[6]~6\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~128\,
	regout => \inst_mem:22:mem_reg|q\(6));

-- Location: LC_X7_Y6_N7
\mem_out_var~136\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~136_combout\ = (\mem_out_var~133_combout\ & ((\mem_out_var~135\) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~133_combout\ & (((\mem_out_var~128\ & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~133_combout\,
	datab => \mem_out_var~135\,
	datac => \mem_out_var~128\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~136_combout\);

-- Location: LC_X7_Y6_N3
\mem_out_var~147\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~147_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & ((\mem_out_var~136_combout\))) # (!\mem_a~combout\(4) & (\mem_out_var~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~146_combout\,
	datab => \mem_out_var~136_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~147_combout\);

-- Location: LC_X8_Y9_N2
\inst_mem:30:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(7) = DFFEAS(((\mem_d[7]~7\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, , , , )

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
	datab => \mem_d[7]~7\,
	aclr => \rst~combout\,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(7));

-- Location: LC_X8_Y10_N0
\inst_mem:18:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(7) = DFFEAS((((\mem_d[7]~7\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datad => \mem_d[7]~7\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(7));

-- Location: LC_X9_Y9_N4
\inst_mem:22:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~150\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B23_q[7]))) # (!\mem_a~combout\(2) & (\inst_mem:18:mem_reg|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:18:mem_reg|q\(7),
	datac => \mem_d[7]~7\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~150\,
	regout => \inst_mem:22:mem_reg|q\(7));

-- Location: LC_X9_Y9_N5
\inst_mem:26:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~151\ = (\mem_a~combout\(3) & ((\mem_out_var~150\ & (\inst_mem:30:mem_reg|q\(7))) # (!\mem_out_var~150\ & ((B27_q[7]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~150\))))

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
	datab => \inst_mem:30:mem_reg|q\(7),
	datac => \mem_d[7]~7\,
	datad => \mem_out_var~150\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~151\,
	regout => \inst_mem:26:mem_reg|q\(7));

-- Location: LC_X9_Y8_N9
\inst_mem:28:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(7));

-- Location: LC_X10_Y8_N0
\inst_mem:16:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(7));

-- Location: LC_X10_Y8_N8
\inst_mem:20:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~152\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B21_q[7]))) # (!\mem_a~combout\(2) & (\inst_mem:16:mem_reg|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:16:mem_reg|q\(7),
	datac => \mem_d[7]~7\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~152\,
	regout => \inst_mem:20:mem_reg|q\(7));

-- Location: LC_X9_Y8_N8
\inst_mem:24:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~153\ = (\mem_a~combout\(3) & ((\mem_out_var~152\ & (\inst_mem:28:mem_reg|q\(7))) # (!\mem_out_var~152\ & ((B25_q[7]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~152\))))

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
	datab => \inst_mem:28:mem_reg|q\(7),
	datac => \mem_d[7]~7\,
	datad => \mem_out_var~152\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~153\,
	regout => \inst_mem:24:mem_reg|q\(7));

-- Location: LC_X11_Y8_N5
\mem_out_var~154\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~154_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (\mem_out_var~151\)) # (!\mem_a~combout\(1) & ((\mem_out_var~153\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~151\,
	datab => \mem_a~combout\(0),
	datac => \mem_out_var~153\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~154_combout\);

-- Location: LC_X5_Y8_N8
\inst_mem:31:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(7));

-- Location: LC_X4_Y9_N7
\inst_mem:19:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(7) = DFFEAS((((\mem_d[7]~7\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, , , , )

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
	datad => \mem_d[7]~7\,
	aclr => \rst~combout\,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(7));

-- Location: LC_X4_Y8_N4
\inst_mem:27:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~155\ = (\mem_a~combout\(3) & (((B28_q[7]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:19:mem_reg|q\(7) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:19:mem_reg|q\(7),
	datab => \mem_a~combout\(3),
	datac => \mem_d[7]~7\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~155\,
	regout => \inst_mem:27:mem_reg|q\(7));

-- Location: LC_X5_Y8_N3
\inst_mem:23:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~156\ = (\mem_out_var~155\ & ((\inst_mem:31:mem_reg|q\(7)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~155\ & (((B24_q[7] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:31:mem_reg|q\(7),
	datab => \mem_out_var~155\,
	datac => \mem_d[7]~7\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~156\,
	regout => \inst_mem:23:mem_reg|q\(7));

-- Location: LC_X12_Y7_N1
\inst_mem:17:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(7));

-- Location: LC_X12_Y7_N2
\inst_mem:25:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~148\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B26_q[7])) # (!\mem_a~combout\(3) & ((\inst_mem:17:mem_reg|q\(7))))))

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
	datac => \mem_d[7]~7\,
	datad => \inst_mem:17:mem_reg|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~148\,
	regout => \inst_mem:25:mem_reg|q\(7));

-- Location: LC_X11_Y8_N6
\inst_mem:29:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(7));

-- Location: LC_X11_Y8_N3
\inst_mem:21:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~149\ = (\mem_a~combout\(2) & ((\mem_out_var~148\ & ((\inst_mem:29:mem_reg|q\(7)))) # (!\mem_out_var~148\ & (B22_q[7])))) # (!\mem_a~combout\(2) & (\mem_out_var~148\))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_out_var~148\,
	datac => \mem_d[7]~7\,
	datad => \inst_mem:29:mem_reg|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~149\,
	regout => \inst_mem:21:mem_reg|q\(7));

-- Location: LC_X11_Y8_N2
\mem_out_var~157\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~157_combout\ = (\mem_out_var~154_combout\ & (((\mem_out_var~156\)) # (!\mem_a~combout\(0)))) # (!\mem_out_var~154_combout\ & (\mem_a~combout\(0) & ((\mem_out_var~149\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~154_combout\,
	datab => \mem_a~combout\(0),
	datac => \mem_out_var~156\,
	datad => \mem_out_var~149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~157_combout\);

-- Location: LC_X6_Y9_N6
\inst_mem:8:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(7));

-- Location: LC_X6_Y9_N1
\inst_mem:10:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~160\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B11_q[7]))) # (!\mem_a~combout\(1) & (\inst_mem:8:mem_reg|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:8:mem_reg|q\(7),
	datac => \mem_d[7]~7\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~160\,
	regout => \inst_mem:10:mem_reg|q\(7));

-- Location: LC_X11_Y9_N8
\inst_mem:11:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(7));

-- Location: LC_X11_Y9_N0
\inst_mem:9:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~161\ = (\mem_a~combout\(0) & ((\mem_out_var~160\ & ((\inst_mem:11:mem_reg|q\(7)))) # (!\mem_out_var~160\ & (B10_q[7])))) # (!\mem_a~combout\(0) & (\mem_out_var~160\))

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
	datab => \mem_out_var~160\,
	datac => \mem_d[7]~7\,
	datad => \inst_mem:11:mem_reg|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~161\,
	regout => \inst_mem:9:mem_reg|q\(7));

-- Location: LC_X12_Y10_N6
\inst_mem:3:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(7) = DFFEAS((((\mem_d[7]~7\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, , , , )

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
	datad => \mem_d[7]~7\,
	aclr => \rst~combout\,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(7));

-- Location: LC_X13_Y9_N9
\inst_mem:0:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(7));

-- Location: LC_X13_Y9_N8
\inst_mem:2:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~162\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B3_q[7])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\inst_mem:0:mem_reg|q\(7)))))

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
	datac => \mem_d[7]~7\,
	datad => \inst_mem:0:mem_reg|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~162\,
	regout => \inst_mem:2:mem_reg|q\(7));

-- Location: LC_X12_Y10_N9
\inst_mem:1:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~163\ = (\mem_a~combout\(0) & ((\mem_out_var~162\ & (\inst_mem:3:mem_reg|q\(7))) # (!\mem_out_var~162\ & ((B2_q[7]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~162\))))

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
	dataa => \inst_mem:3:mem_reg|q\(7),
	datab => \mem_a~combout\(0),
	datac => \mem_d[7]~7\,
	datad => \mem_out_var~162\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~163\,
	regout => \inst_mem:1:mem_reg|q\(7));

-- Location: LC_X11_Y9_N5
\mem_out_var~164\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~164_combout\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (\mem_out_var~161\)) # (!\mem_a~combout\(3) & ((\mem_out_var~163\)))))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_out_var~161\,
	datac => \mem_a~combout\(3),
	datad => \mem_out_var~163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~164_combout\);

-- Location: LC_X13_Y8_N6
\inst_mem:12:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(7));

-- Location: LC_X14_Y9_N6
\inst_mem:13:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~165\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & ((B14_q[7]))) # (!\mem_a~combout\(0) & (\inst_mem:12:mem_reg|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(1),
	datab => \inst_mem:12:mem_reg|q\(7),
	datac => \mem_d[7]~7\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~165\,
	regout => \inst_mem:13:mem_reg|q\(7));

-- Location: LC_X14_Y10_N3
\inst_mem:15:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(7));

-- Location: LC_X14_Y9_N5
\inst_mem:14:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~166\ = (\mem_out_var~165\ & (((\inst_mem:15:mem_reg|q\(7))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~165\ & (\mem_a~combout\(1) & (B15_q[7])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~165\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[7]~7\,
	datad => \inst_mem:15:mem_reg|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~166\,
	regout => \inst_mem:14:mem_reg|q\(7));

-- Location: LC_X13_Y6_N9
\inst_mem:4:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(7) = DFFEAS(((\mem_d[7]~7\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, , , , )

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
	datab => \mem_d[7]~7\,
	aclr => \rst~combout\,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(7));

-- Location: LC_X13_Y6_N6
\inst_mem:5:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~158\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B6_q[7])) # (!\mem_a~combout\(0) & ((\inst_mem:4:mem_reg|q\(7))))))

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
	datac => \mem_d[7]~7\,
	datad => \inst_mem:4:mem_reg|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~158\,
	regout => \inst_mem:5:mem_reg|q\(7));

-- Location: LC_X13_Y7_N2
\inst_mem:7:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[7]~7\, , , VCC)

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
	datac => \mem_d[7]~7\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(7));

-- Location: LC_X13_Y7_N6
\inst_mem:6:mem_reg|q[7]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~159\ = (\mem_out_var~158\ & (((\inst_mem:7:mem_reg|q\(7))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~158\ & (\mem_a~combout\(1) & (B7_q[7])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~158\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[7]~7\,
	datad => \inst_mem:7:mem_reg|q\(7),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~159\,
	regout => \inst_mem:6:mem_reg|q\(7));

-- Location: LC_X11_Y8_N7
\mem_out_var~167\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~167_combout\ = (\mem_out_var~164_combout\ & ((\mem_out_var~166\) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~164_combout\ & (((\mem_a~combout\(2) & \mem_out_var~159\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~164_combout\,
	datab => \mem_out_var~166\,
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~167_combout\);

-- Location: LC_X11_Y8_N8
\mem_out_var~168\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~168_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & (\mem_out_var~157_combout\)) # (!\mem_a~combout\(4) & ((\mem_out_var~167_combout\)))))

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
	dataa => \mem_a~combout\(4),
	datab => \mem_out_var~157_combout\,
	datac => \mem_out_var~20_combout\,
	datad => \mem_out_var~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~168_combout\);

-- Location: LC_X7_Y8_N5
\inst_mem:11:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(8));

-- Location: LC_X6_Y8_N4
\inst_mem:8:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(8));

-- Location: LC_X7_Y8_N4
\inst_mem:9:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~179\ = (\mem_a~combout\(0) & (((B10_q[8]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:8:mem_reg|q\(8) & ((!\mem_a~combout\(1)))))

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
	datab => \inst_mem:8:mem_reg|q\(8),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~179\,
	regout => \inst_mem:9:mem_reg|q\(8));

-- Location: LC_X8_Y8_N7
\inst_mem:10:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~180\ = (\mem_out_var~179\ & ((\inst_mem:11:mem_reg|q\(8)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~179\ & (((B11_q[8] & \mem_a~combout\(1)))))

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
	dataa => \inst_mem:11:mem_reg|q\(8),
	datab => \mem_out_var~179\,
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~180\,
	regout => \inst_mem:10:mem_reg|q\(8));

-- Location: LC_X5_Y7_N0
\inst_mem:3:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(8) = DFFEAS((\mem_d[8]~8\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, , , , )

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
	dataa => \mem_d[8]~8\,
	aclr => \rst~combout\,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(8));

-- Location: LC_X4_Y7_N3
\inst_mem:0:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(8) = DFFEAS(((\mem_d[8]~8\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, , , , )

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
	datab => \mem_d[8]~8\,
	aclr => \rst~combout\,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(8));

-- Location: LC_X4_Y6_N5
\inst_mem:1:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~183\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B2_q[8])) # (!\mem_a~combout\(0) & ((\inst_mem:0:mem_reg|q\(8))))))

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
	datac => \mem_d[8]~8\,
	datad => \inst_mem:0:mem_reg|q\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~183\,
	regout => \inst_mem:1:mem_reg|q\(8));

-- Location: LC_X4_Y6_N6
\inst_mem:2:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~184\ = (\mem_a~combout\(1) & ((\mem_out_var~183\ & (\inst_mem:3:mem_reg|q\(8))) # (!\mem_out_var~183\ & ((B3_q[8]))))) # (!\mem_a~combout\(1) & (((\mem_out_var~183\))))

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
	datab => \inst_mem:3:mem_reg|q\(8),
	datac => \mem_d[8]~8\,
	datad => \mem_out_var~183\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~184\,
	regout => \inst_mem:2:mem_reg|q\(8));

-- Location: LC_X6_Y5_N3
\inst_mem:4:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(8));

-- Location: LC_X6_Y5_N5
\inst_mem:6:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~181\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B7_q[8]))) # (!\mem_a~combout\(1) & (\inst_mem:4:mem_reg|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:4:mem_reg|q\(8),
	datab => \mem_a~combout\(0),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~181\,
	regout => \inst_mem:6:mem_reg|q\(8));

-- Location: LC_X7_Y5_N9
\inst_mem:7:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(8));

-- Location: LC_X7_Y5_N4
\inst_mem:5:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~182\ = (\mem_out_var~181\ & (((\inst_mem:7:mem_reg|q\(8))) # (!\mem_a~combout\(0)))) # (!\mem_out_var~181\ & (\mem_a~combout\(0) & (B6_q[8])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~181\,
	datab => \mem_a~combout\(0),
	datac => \mem_d[8]~8\,
	datad => \inst_mem:7:mem_reg|q\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~182\,
	regout => \inst_mem:5:mem_reg|q\(8));

-- Location: LC_X4_Y6_N2
\mem_out_var~185\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~185_combout\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3)) # (\mem_out_var~182\)))) # (!\mem_a~combout\(2) & (\mem_out_var~184\ & (!\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~184\,
	datab => \mem_a~combout\(2),
	datac => \mem_a~combout\(3),
	datad => \mem_out_var~182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~185_combout\);

-- Location: LC_X9_Y5_N5
\inst_mem:15:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(8));

-- Location: LC_X10_Y5_N7
\inst_mem:12:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(8) = DFFEAS((((\mem_d[8]~8\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, , , , )

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
	datad => \mem_d[8]~8\,
	aclr => \rst~combout\,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(8));

-- Location: LC_X10_Y5_N5
\inst_mem:14:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~186\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B15_q[8]))) # (!\mem_a~combout\(1) & (\inst_mem:12:mem_reg|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:12:mem_reg|q\(8),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~186\,
	regout => \inst_mem:14:mem_reg|q\(8));

-- Location: LC_X9_Y5_N7
\inst_mem:13:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~187\ = (\mem_a~combout\(0) & ((\mem_out_var~186\ & (\inst_mem:15:mem_reg|q\(8))) # (!\mem_out_var~186\ & ((B14_q[8]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~186\))))

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
	dataa => \inst_mem:15:mem_reg|q\(8),
	datab => \mem_a~combout\(0),
	datac => \mem_d[8]~8\,
	datad => \mem_out_var~186\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~187\,
	regout => \inst_mem:13:mem_reg|q\(8));

-- Location: LC_X5_Y8_N4
\mem_out_var~188\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~188_combout\ = (\mem_out_var~185_combout\ & (((\mem_out_var~187\) # (!\mem_a~combout\(3))))) # (!\mem_out_var~185_combout\ & (\mem_out_var~180\ & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~180\,
	datab => \mem_out_var~185_combout\,
	datac => \mem_a~combout\(3),
	datad => \mem_out_var~187\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~188_combout\);

-- Location: LC_X2_Y6_N1
\inst_mem:17:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(8) = DFFEAS(((\mem_d[8]~8\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	datab => \mem_d[8]~8\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(8));

-- Location: LC_X10_Y6_N2
\inst_mem:21:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~171\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B22_q[8]))) # (!\mem_a~combout\(2) & (\inst_mem:17:mem_reg|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:17:mem_reg|q\(8),
	datab => \mem_a~combout\(3),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~171\,
	regout => \inst_mem:21:mem_reg|q\(8));

-- Location: LC_X10_Y7_N3
\inst_mem:29:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(8));

-- Location: LC_X10_Y6_N0
\inst_mem:25:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~172\ = (\mem_a~combout\(3) & ((\mem_out_var~171\ & ((\inst_mem:29:mem_reg|q\(8)))) # (!\mem_out_var~171\ & (B26_q[8])))) # (!\mem_a~combout\(3) & (\mem_out_var~171\))

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
	datab => \mem_out_var~171\,
	datac => \mem_d[8]~8\,
	datad => \inst_mem:29:mem_reg|q\(8),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~172\,
	regout => \inst_mem:25:mem_reg|q\(8));

-- Location: LC_X9_Y4_N5
\inst_mem:16:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(8) = DFFEAS((((\mem_d[8]~8\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, , , , )

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
	datad => \mem_d[8]~8\,
	aclr => \rst~combout\,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(8));

-- Location: LC_X8_Y4_N5
\inst_mem:24:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~173\ = (\mem_a~combout\(3) & (((B25_q[8]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:16:mem_reg|q\(8) & ((!\mem_a~combout\(2)))))

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
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:16:mem_reg|q\(8),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~173\,
	regout => \inst_mem:24:mem_reg|q\(8));

-- Location: LC_X7_Y4_N4
\inst_mem:28:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(8) = DFFEAS((((\mem_d[8]~8\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, , , , )

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
	datad => \mem_d[8]~8\,
	aclr => \rst~combout\,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(8));

-- Location: LC_X8_Y4_N3
\inst_mem:20:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~174\ = (\mem_out_var~173\ & ((\inst_mem:28:mem_reg|q\(8)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~173\ & (((B21_q[8] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~173\,
	datab => \inst_mem:28:mem_reg|q\(8),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~174\,
	regout => \inst_mem:20:mem_reg|q\(8));

-- Location: LC_X8_Y8_N6
\mem_out_var~175\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~175_combout\ = (\mem_a~combout\(0) & ((\mem_out_var~172\) # ((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (((\mem_out_var~174\ & !\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~172\,
	datab => \mem_out_var~174\,
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~175_combout\);

-- Location: LC_X3_Y5_N2
\inst_mem:19:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(8));

-- Location: LC_X3_Y5_N6
\inst_mem:23:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~176\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B24_q[8]))) # (!\mem_a~combout\(2) & (\inst_mem:19:mem_reg|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:19:mem_reg|q\(8),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~176\,
	regout => \inst_mem:23:mem_reg|q\(8));

-- Location: LC_X3_Y4_N7
\inst_mem:31:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(8));

-- Location: LC_X3_Y4_N8
\inst_mem:27:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~177\ = (\mem_out_var~176\ & ((\inst_mem:31:mem_reg|q\(8)) # ((!\mem_a~combout\(3))))) # (!\mem_out_var~176\ & (((B28_q[8] & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~176\,
	datab => \inst_mem:31:mem_reg|q\(8),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~177\,
	regout => \inst_mem:27:mem_reg|q\(8));

-- Location: LC_X3_Y8_N2
\inst_mem:18:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(8));

-- Location: LC_X3_Y8_N3
\inst_mem:26:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~169\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B27_q[8]))) # (!\mem_a~combout\(3) & (\inst_mem:18:mem_reg|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \inst_mem:18:mem_reg|q\(8),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~169\,
	regout => \inst_mem:26:mem_reg|q\(8));

-- Location: LC_X7_Y9_N9
\inst_mem:30:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, \mem_d[8]~8\, , , VCC)

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
	datac => \mem_d[8]~8\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(8));

-- Location: LC_X6_Y8_N9
\inst_mem:22:mem_reg|q[8]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~170\ = (\mem_out_var~169\ & ((\inst_mem:30:mem_reg|q\(8)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~169\ & (((B23_q[8] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~169\,
	datab => \inst_mem:30:mem_reg|q\(8),
	datac => \mem_d[8]~8\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~170\,
	regout => \inst_mem:22:mem_reg|q\(8));

-- Location: LC_X8_Y8_N2
\mem_out_var~178\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~178_combout\ = (\mem_out_var~175_combout\ & ((\mem_out_var~177\) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~175_combout\ & (((\mem_out_var~170\ & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~175_combout\,
	datab => \mem_out_var~177\,
	datac => \mem_out_var~170\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~178_combout\);

-- Location: LC_X8_Y8_N5
\mem_out_var~189\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~189_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & ((\mem_out_var~178_combout\))) # (!\mem_a~combout\(4) & (\mem_out_var~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(4),
	datab => \mem_out_var~20_combout\,
	datac => \mem_out_var~188_combout\,
	datad => \mem_out_var~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~189_combout\);

-- Location: LC_X6_Y9_N8
\inst_mem:8:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[9]~9\, , , VCC)

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
	datac => \mem_d[9]~9\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(9));

-- Location: LC_X6_Y9_N5
\inst_mem:10:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~202\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B11_q[9]))) # (!\mem_a~combout\(1) & (\inst_mem:8:mem_reg|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:8:mem_reg|q\(9),
	datab => \mem_a~combout\(0),
	datac => \mem_d[9]~9\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~202\,
	regout => \inst_mem:10:mem_reg|q\(9));

-- Location: LC_X7_Y8_N3
\inst_mem:11:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(9) = DFFEAS(((\mem_d[9]~9\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, , , , )

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
	datab => \mem_d[9]~9\,
	aclr => \rst~combout\,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(9));

-- Location: LC_X7_Y8_N7
\inst_mem:9:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~203\ = (\mem_a~combout\(0) & ((\mem_out_var~202\ & ((\inst_mem:11:mem_reg|q\(9)))) # (!\mem_out_var~202\ & (B10_q[9])))) # (!\mem_a~combout\(0) & (\mem_out_var~202\))

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
	datab => \mem_out_var~202\,
	datac => \mem_d[9]~9\,
	datad => \inst_mem:11:mem_reg|q\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~203\,
	regout => \inst_mem:9:mem_reg|q\(9));

-- Location: LC_X12_Y10_N5
\inst_mem:3:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, \mem_d[9]~9\, , , VCC)

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
	datac => \mem_d[9]~9\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(9));

-- Location: LC_X13_Y9_N2
\inst_mem:0:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, \mem_d[9]~9\, , , VCC)

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
	datac => \mem_d[9]~9\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(9));

-- Location: LC_X13_Y9_N5
\inst_mem:2:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~204\ = (\mem_a~combout\(1) & ((\mem_a~combout\(0)) # ((B3_q[9])))) # (!\mem_a~combout\(1) & (!\mem_a~combout\(0) & ((\inst_mem:0:mem_reg|q\(9)))))

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
	datac => \mem_d[9]~9\,
	datad => \inst_mem:0:mem_reg|q\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~204\,
	regout => \inst_mem:2:mem_reg|q\(9));

-- Location: LC_X12_Y10_N4
\inst_mem:1:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~205\ = (\mem_a~combout\(0) & ((\mem_out_var~204\ & (\inst_mem:3:mem_reg|q\(9))) # (!\mem_out_var~204\ & ((B2_q[9]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~204\))))

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
	dataa => \inst_mem:3:mem_reg|q\(9),
	datab => \mem_a~combout\(0),
	datac => \mem_d[9]~9\,
	datad => \mem_out_var~204\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~205\,
	regout => \inst_mem:1:mem_reg|q\(9));

-- Location: LC_X8_Y7_N2
\mem_out_var~206\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~206_combout\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (\mem_out_var~203\)) # (!\mem_a~combout\(3) & ((\mem_out_var~205\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_out_var~203\,
	datac => \mem_out_var~205\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~206_combout\);

-- Location: LC_X14_Y8_N0
\inst_mem:15:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[9]~9\, , , VCC)

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
	datac => \mem_d[9]~9\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(9));

-- Location: LC_X13_Y8_N0
\inst_mem:12:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[9]~9\, , , VCC)

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
	datac => \mem_d[9]~9\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(9));

-- Location: LC_X14_Y9_N7
\inst_mem:13:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~207\ = (\mem_a~combout\(0) & (((B14_q[9]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:12:mem_reg|q\(9) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:12:mem_reg|q\(9),
	datab => \mem_a~combout\(0),
	datac => \mem_d[9]~9\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~207\,
	regout => \inst_mem:13:mem_reg|q\(9));

-- Location: LC_X14_Y8_N6
\inst_mem:14:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~208\ = (\mem_a~combout\(1) & ((\mem_out_var~207\ & (\inst_mem:15:mem_reg|q\(9))) # (!\mem_out_var~207\ & ((B15_q[9]))))) # (!\mem_a~combout\(1) & (((\mem_out_var~207\))))

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
	datab => \inst_mem:15:mem_reg|q\(9),
	datac => \mem_d[9]~9\,
	datad => \mem_out_var~207\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~208\,
	regout => \inst_mem:14:mem_reg|q\(9));

-- Location: LC_X5_Y4_N3
\inst_mem:4:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(9) = DFFEAS(((\mem_d[9]~9\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, , , , )

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
	datab => \mem_d[9]~9\,
	aclr => \rst~combout\,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(9));

-- Location: LC_X5_Y4_N4
\inst_mem:5:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~200\ = (\mem_a~combout\(0) & (((B6_q[9]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:4:mem_reg|q\(9) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:4:mem_reg|q\(9),
	datab => \mem_a~combout\(0),
	datac => \mem_d[9]~9\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~200\,
	regout => \inst_mem:5:mem_reg|q\(9));

-- Location: LC_X13_Y7_N9
\inst_mem:7:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[9]~9\, , , VCC)

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
	datac => \mem_d[9]~9\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(9));

-- Location: LC_X13_Y7_N0
\inst_mem:6:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~201\ = (\mem_out_var~200\ & (((\inst_mem:7:mem_reg|q\(9))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~200\ & (\mem_a~combout\(1) & (B7_q[9])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~200\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[9]~9\,
	datad => \inst_mem:7:mem_reg|q\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~201\,
	regout => \inst_mem:6:mem_reg|q\(9));

-- Location: LC_X8_Y7_N8
\mem_out_var~209\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~209_combout\ = (\mem_a~combout\(2) & ((\mem_out_var~206_combout\ & (\mem_out_var~208\)) # (!\mem_out_var~206_combout\ & ((\mem_out_var~201\))))) # (!\mem_a~combout\(2) & (\mem_out_var~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_out_var~206_combout\,
	datac => \mem_out_var~208\,
	datad => \mem_out_var~201\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~209_combout\);

-- Location: LC_X6_Y4_N4
\inst_mem:30:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, \mem_d[9]~9\, , , VCC)

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
	datac => \mem_d[9]~9\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(9));

-- Location: LC_X8_Y10_N6
\inst_mem:18:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(9) = DFFEAS((((\mem_d[9]~9\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datad => \mem_d[9]~9\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(9));

-- Location: LC_X9_Y9_N3
\inst_mem:22:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~192\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B23_q[9]))) # (!\mem_a~combout\(2) & (\inst_mem:18:mem_reg|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:18:mem_reg|q\(9),
	datac => \mem_d[9]~9\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~192\,
	regout => \inst_mem:22:mem_reg|q\(9));

-- Location: LC_X9_Y9_N2
\inst_mem:26:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~193\ = (\mem_a~combout\(3) & ((\mem_out_var~192\ & (\inst_mem:30:mem_reg|q\(9))) # (!\mem_out_var~192\ & ((B27_q[9]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~192\))))

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
	datab => \inst_mem:30:mem_reg|q\(9),
	datac => \mem_d[9]~9\,
	datad => \mem_out_var~192\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~193\,
	regout => \inst_mem:26:mem_reg|q\(9));

-- Location: LC_X10_Y9_N2
\inst_mem:16:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(9) = DFFEAS((((\mem_d[9]~9\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, , , , )

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
	datad => \mem_d[9]~9\,
	aclr => \rst~combout\,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(9));

-- Location: LC_X10_Y8_N2
\inst_mem:20:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~194\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B21_q[9]))) # (!\mem_a~combout\(2) & (\inst_mem:16:mem_reg|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:16:mem_reg|q\(9),
	datab => \mem_a~combout\(3),
	datac => \mem_d[9]~9\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~194\,
	regout => \inst_mem:20:mem_reg|q\(9));

-- Location: LC_X9_Y8_N1
\inst_mem:28:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[9]~9\, , , VCC)

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
	datac => \mem_d[9]~9\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(9));

-- Location: LC_X9_Y8_N2
\inst_mem:24:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~195\ = (\mem_a~combout\(3) & ((\mem_out_var~194\ & ((\inst_mem:28:mem_reg|q\(9)))) # (!\mem_out_var~194\ & (B25_q[9])))) # (!\mem_a~combout\(3) & (\mem_out_var~194\))

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
	datab => \mem_out_var~194\,
	datac => \mem_d[9]~9\,
	datad => \inst_mem:28:mem_reg|q\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~195\,
	regout => \inst_mem:24:mem_reg|q\(9));

-- Location: LC_X8_Y8_N1
\mem_out_var~196\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~196_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (\mem_out_var~193\)) # (!\mem_a~combout\(1) & ((\mem_out_var~195\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~193\,
	datab => \mem_out_var~195\,
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~196_combout\);

-- Location: LC_X12_Y6_N0
\inst_mem:29:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(9) = DFFEAS(((\mem_d[9]~9\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, , , , )

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
	datab => \mem_d[9]~9\,
	aclr => \rst~combout\,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(9));

-- Location: LC_X12_Y6_N8
\inst_mem:17:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(9) = DFFEAS(((\mem_d[9]~9\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	datab => \mem_d[9]~9\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(9));

-- Location: LC_X12_Y5_N1
\inst_mem:25:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~190\ = (\mem_a~combout\(3) & (((B26_q[9]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:17:mem_reg|q\(9) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:17:mem_reg|q\(9),
	datab => \mem_a~combout\(3),
	datac => \mem_d[9]~9\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~190\,
	regout => \inst_mem:25:mem_reg|q\(9));

-- Location: LC_X12_Y5_N7
\inst_mem:21:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~191\ = (\mem_out_var~190\ & ((\inst_mem:29:mem_reg|q\(9)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~190\ & (((B22_q[9] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:29:mem_reg|q\(9),
	datab => \mem_out_var~190\,
	datac => \mem_d[9]~9\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~191\,
	regout => \inst_mem:21:mem_reg|q\(9));

-- Location: LC_X7_Y6_N6
\inst_mem:19:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(9) = DFFEAS(((\mem_d[9]~9\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, , , , )

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
	datab => \mem_d[9]~9\,
	aclr => \rst~combout\,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(9));

-- Location: LC_X8_Y7_N9
\inst_mem:27:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~197\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B28_q[9]))) # (!\mem_a~combout\(3) & (\inst_mem:19:mem_reg|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \inst_mem:19:mem_reg|q\(9),
	datac => \mem_d[9]~9\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~197\,
	regout => \inst_mem:27:mem_reg|q\(9));

-- Location: LC_X8_Y9_N6
\inst_mem:31:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(9) = DFFEAS((((\mem_d[9]~9\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, , , , )

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
	datad => \mem_d[9]~9\,
	aclr => \rst~combout\,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(9));

-- Location: LC_X8_Y7_N4
\inst_mem:23:mem_reg|q[9]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~198\ = (\mem_a~combout\(2) & ((\mem_out_var~197\ & ((\inst_mem:31:mem_reg|q\(9)))) # (!\mem_out_var~197\ & (B24_q[9])))) # (!\mem_a~combout\(2) & (\mem_out_var~197\))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_out_var~197\,
	datac => \mem_d[9]~9\,
	datad => \inst_mem:31:mem_reg|q\(9),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~198\,
	regout => \inst_mem:23:mem_reg|q\(9));

-- Location: LC_X8_Y7_N3
\mem_out_var~199\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~199_combout\ = (\mem_out_var~196_combout\ & (((\mem_out_var~198\) # (!\mem_a~combout\(0))))) # (!\mem_out_var~196_combout\ & (\mem_out_var~191\ & ((\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~196_combout\,
	datab => \mem_out_var~191\,
	datac => \mem_out_var~198\,
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~199_combout\);

-- Location: LC_X8_Y7_N6
\mem_out_var~210\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~210_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & ((\mem_out_var~199_combout\))) # (!\mem_a~combout\(4) & (\mem_out_var~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~209_combout\,
	datab => \mem_out_var~20_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~210_combout\);

-- Location: LC_X6_Y9_N3
\inst_mem:8:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(10) = DFFEAS(((\mem_d[10]~10\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, , , , )

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
	datab => \mem_d[10]~10\,
	aclr => \rst~combout\,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(10));

-- Location: LC_X6_Y6_N0
\inst_mem:9:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~221\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B10_q[10])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\inst_mem:8:mem_reg|q\(10)))))

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
	datac => \mem_d[10]~10\,
	datad => \inst_mem:8:mem_reg|q\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~221\,
	regout => \inst_mem:9:mem_reg|q\(10));

-- Location: LC_X7_Y7_N7
\inst_mem:11:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, \mem_d[10]~10\, , , VCC)

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
	datac => \mem_d[10]~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(10));

-- Location: LC_X7_Y7_N2
\inst_mem:10:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~222\ = (\mem_out_var~221\ & ((\inst_mem:11:mem_reg|q\(10)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~221\ & (((B11_q[10] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~221\,
	datab => \inst_mem:11:mem_reg|q\(10),
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~222\,
	regout => \inst_mem:10:mem_reg|q\(10));

-- Location: LC_X6_Y5_N6
\inst_mem:4:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[10]~10\, , , VCC)

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
	datac => \mem_d[10]~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(10));

-- Location: LC_X6_Y5_N4
\inst_mem:6:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~223\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B7_q[10]))) # (!\mem_a~combout\(1) & (\inst_mem:4:mem_reg|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:4:mem_reg|q\(10),
	datab => \mem_a~combout\(0),
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~223\,
	regout => \inst_mem:6:mem_reg|q\(10));

-- Location: LC_X7_Y5_N2
\inst_mem:7:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[10]~10\, , , VCC)

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
	datac => \mem_d[10]~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(10));

-- Location: LC_X7_Y5_N5
\inst_mem:5:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~224\ = (\mem_out_var~223\ & (((\inst_mem:7:mem_reg|q\(10))) # (!\mem_a~combout\(0)))) # (!\mem_out_var~223\ & (\mem_a~combout\(0) & (B6_q[10])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~223\,
	datab => \mem_a~combout\(0),
	datac => \mem_d[10]~10\,
	datad => \inst_mem:7:mem_reg|q\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~224\,
	regout => \inst_mem:5:mem_reg|q\(10));

-- Location: LC_X4_Y7_N8
\inst_mem:0:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(10) = DFFEAS((((\mem_d[10]~10\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, , , , )

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
	datad => \mem_d[10]~10\,
	aclr => \rst~combout\,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(10));

-- Location: LC_X6_Y7_N6
\inst_mem:1:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~225\ = (\mem_a~combout\(0) & (((B2_q[10]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:0:mem_reg|q\(10) & ((!\mem_a~combout\(1)))))

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
	datab => \inst_mem:0:mem_reg|q\(10),
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~225\,
	regout => \inst_mem:1:mem_reg|q\(10));

-- Location: LC_X5_Y7_N4
\inst_mem:3:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, \mem_d[10]~10\, , , VCC)

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
	datac => \mem_d[10]~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(10));

-- Location: LC_X6_Y7_N8
\inst_mem:2:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~226\ = (\mem_out_var~225\ & ((\inst_mem:3:mem_reg|q\(10)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~225\ & (((B3_q[10] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~225\,
	datab => \inst_mem:3:mem_reg|q\(10),
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~226\,
	regout => \inst_mem:2:mem_reg|q\(10));

-- Location: LC_X7_Y5_N7
\mem_out_var~227\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~227_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\mem_out_var~224\)) # (!\mem_a~combout\(2) & ((\mem_out_var~226\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~224\,
	datab => \mem_out_var~226\,
	datac => \mem_a~combout\(3),
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~227_combout\);

-- Location: LC_X9_Y5_N6
\inst_mem:15:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[10]~10\, , , VCC)

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
	datac => \mem_d[10]~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(10));

-- Location: LC_X10_Y5_N8
\inst_mem:12:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(10) = DFFEAS((((\mem_d[10]~10\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, , , , )

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
	datad => \mem_d[10]~10\,
	aclr => \rst~combout\,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(10));

-- Location: LC_X10_Y5_N4
\inst_mem:14:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~228\ = (\mem_a~combout\(0) & (\mem_a~combout\(1))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (B15_q[10])) # (!\mem_a~combout\(1) & ((\inst_mem:12:mem_reg|q\(10))))))

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
	datac => \mem_d[10]~10\,
	datad => \inst_mem:12:mem_reg|q\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~228\,
	regout => \inst_mem:14:mem_reg|q\(10));

-- Location: LC_X9_Y5_N9
\inst_mem:13:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~229\ = (\mem_a~combout\(0) & ((\mem_out_var~228\ & (\inst_mem:15:mem_reg|q\(10))) # (!\mem_out_var~228\ & ((B14_q[10]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~228\))))

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
	dataa => \inst_mem:15:mem_reg|q\(10),
	datab => \mem_a~combout\(0),
	datac => \mem_d[10]~10\,
	datad => \mem_out_var~228\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~229\,
	regout => \inst_mem:13:mem_reg|q\(10));

-- Location: LC_X7_Y5_N6
\mem_out_var~230\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~230_combout\ = (\mem_out_var~227_combout\ & (((\mem_out_var~229\) # (!\mem_a~combout\(3))))) # (!\mem_out_var~227_combout\ & (\mem_out_var~222\ & (\mem_a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~222\,
	datab => \mem_out_var~227_combout\,
	datac => \mem_a~combout\(3),
	datad => \mem_out_var~229\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~230_combout\);

-- Location: LC_X11_Y6_N3
\inst_mem:17:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(10) = DFFEAS((((\mem_d[10]~10\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	datad => \mem_d[10]~10\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(10));

-- Location: LC_X10_Y6_N1
\inst_mem:21:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~213\ = (\mem_a~combout\(2) & (((B22_q[10]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\inst_mem:17:mem_reg|q\(10) & ((!\mem_a~combout\(3)))))

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
	dataa => \inst_mem:17:mem_reg|q\(10),
	datab => \mem_a~combout\(2),
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~213\,
	regout => \inst_mem:21:mem_reg|q\(10));

-- Location: LC_X10_Y7_N6
\inst_mem:29:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(10) = DFFEAS((((\mem_d[10]~10\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, , , , )

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
	datad => \mem_d[10]~10\,
	aclr => \rst~combout\,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(10));

-- Location: LC_X10_Y6_N6
\inst_mem:25:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~214\ = (\mem_a~combout\(3) & ((\mem_out_var~213\ & ((\inst_mem:29:mem_reg|q\(10)))) # (!\mem_out_var~213\ & (B26_q[10])))) # (!\mem_a~combout\(3) & (\mem_out_var~213\))

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
	datab => \mem_out_var~213\,
	datac => \mem_d[10]~10\,
	datad => \inst_mem:29:mem_reg|q\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~214\,
	regout => \inst_mem:25:mem_reg|q\(10));

-- Location: LC_X7_Y4_N5
\inst_mem:28:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(10) = DFFEAS((((\mem_d[10]~10\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, , , , )

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
	datad => \mem_d[10]~10\,
	aclr => \rst~combout\,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(10));

-- Location: LC_X9_Y4_N4
\inst_mem:16:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(10) = DFFEAS((((\mem_d[10]~10\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, , , , )

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
	datad => \mem_d[10]~10\,
	aclr => \rst~combout\,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(10));

-- Location: LC_X8_Y4_N9
\inst_mem:24:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~215\ = (\mem_a~combout\(3) & (((B25_q[10]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:16:mem_reg|q\(10) & ((!\mem_a~combout\(2)))))

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
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:16:mem_reg|q\(10),
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~215\,
	regout => \inst_mem:24:mem_reg|q\(10));

-- Location: LC_X8_Y4_N6
\inst_mem:20:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~216\ = (\mem_out_var~215\ & ((\inst_mem:28:mem_reg|q\(10)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~215\ & (((B21_q[10] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:28:mem_reg|q\(10),
	datab => \mem_out_var~215\,
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~216\,
	regout => \inst_mem:20:mem_reg|q\(10));

-- Location: LC_X8_Y6_N5
\mem_out_var~217\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~217_combout\ = (\mem_a~combout\(0) & ((\mem_out_var~214\) # ((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (((\mem_out_var~216\ & !\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~214\,
	datab => \mem_a~combout\(0),
	datac => \mem_out_var~216\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~217_combout\);

-- Location: LC_X3_Y7_N0
\inst_mem:31:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[10]~10\, , , VCC)

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
	datac => \mem_d[10]~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(10));

-- Location: LC_X4_Y9_N1
\inst_mem:19:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(10) = DFFEAS((((\mem_d[10]~10\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, , , , )

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
	datad => \mem_d[10]~10\,
	aclr => \rst~combout\,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(10));

-- Location: LC_X4_Y8_N2
\inst_mem:23:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~218\ = (\mem_a~combout\(2) & (((B24_q[10]) # (\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & (\inst_mem:19:mem_reg|q\(10) & ((!\mem_a~combout\(3)))))

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
	datab => \inst_mem:19:mem_reg|q\(10),
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~218\,
	regout => \inst_mem:23:mem_reg|q\(10));

-- Location: LC_X4_Y8_N6
\inst_mem:27:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~219\ = (\mem_out_var~218\ & ((\inst_mem:31:mem_reg|q\(10)) # ((!\mem_a~combout\(3))))) # (!\mem_out_var~218\ & (((B28_q[10] & \mem_a~combout\(3)))))

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
	dataa => \inst_mem:31:mem_reg|q\(10),
	datab => \mem_out_var~218\,
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~219\,
	regout => \inst_mem:27:mem_reg|q\(10));

-- Location: LC_X3_Y8_N7
\inst_mem:18:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(10) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, \mem_d[10]~10\, , , VCC)

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
	datac => \mem_d[10]~10\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(10));

-- Location: LC_X3_Y8_N0
\inst_mem:26:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~211\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B27_q[10]))) # (!\mem_a~combout\(3) & (\inst_mem:18:mem_reg|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \inst_mem:18:mem_reg|q\(10),
	datac => \mem_d[10]~10\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~211\,
	regout => \inst_mem:26:mem_reg|q\(10));

-- Location: LC_X7_Y9_N4
\inst_mem:30:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(10) = DFFEAS((\mem_d[10]~10\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, , , , )

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
	dataa => \mem_d[10]~10\,
	aclr => \rst~combout\,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(10));

-- Location: LC_X9_Y9_N9
\inst_mem:22:mem_reg|q[10]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~212\ = (\mem_a~combout\(2) & ((\mem_out_var~211\ & ((\inst_mem:30:mem_reg|q\(10)))) # (!\mem_out_var~211\ & (B23_q[10])))) # (!\mem_a~combout\(2) & (\mem_out_var~211\))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_out_var~211\,
	datac => \mem_d[10]~10\,
	datad => \inst_mem:30:mem_reg|q\(10),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~212\,
	regout => \inst_mem:22:mem_reg|q\(10));

-- Location: LC_X8_Y8_N3
\mem_out_var~220\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~220_combout\ = (\mem_out_var~217_combout\ & ((\mem_out_var~219\) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~217_combout\ & (((\mem_out_var~212\ & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~217_combout\,
	datab => \mem_out_var~219\,
	datac => \mem_out_var~212\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~220_combout\);

-- Location: LC_X8_Y8_N4
\mem_out_var~231\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~231_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & ((\mem_out_var~220_combout\))) # (!\mem_a~combout\(4) & (\mem_out_var~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~230_combout\,
	datab => \mem_out_var~20_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~220_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~231_combout\);

-- Location: LC_X4_Y9_N5
\inst_mem:19:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(11));

-- Location: LC_X4_Y8_N0
\inst_mem:27:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~239\ = (\mem_a~combout\(3) & (((B28_q[11]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:19:mem_reg|q\(11) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:19:mem_reg|q\(11),
	datab => \mem_a~combout\(3),
	datac => \mem_d[11]~11\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~239\,
	regout => \inst_mem:27:mem_reg|q\(11));

-- Location: LC_X5_Y8_N2
\inst_mem:31:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(11));

-- Location: LC_X5_Y8_N6
\inst_mem:23:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~240\ = (\mem_out_var~239\ & ((\inst_mem:31:mem_reg|q\(11)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~239\ & (((B24_q[11] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~239\,
	datab => \inst_mem:31:mem_reg|q\(11),
	datac => \mem_d[11]~11\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~240\,
	regout => \inst_mem:23:mem_reg|q\(11));

-- Location: LC_X10_Y8_N5
\inst_mem:16:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(11));

-- Location: LC_X10_Y8_N4
\inst_mem:20:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~236\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B21_q[11]))) # (!\mem_a~combout\(2) & (\inst_mem:16:mem_reg|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:16:mem_reg|q\(11),
	datab => \mem_a~combout\(3),
	datac => \mem_d[11]~11\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~236\,
	regout => \inst_mem:20:mem_reg|q\(11));

-- Location: LC_X9_Y8_N3
\inst_mem:28:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(11));

-- Location: LC_X9_Y8_N6
\inst_mem:24:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~237\ = (\mem_a~combout\(3) & ((\mem_out_var~236\ & ((\inst_mem:28:mem_reg|q\(11)))) # (!\mem_out_var~236\ & (B25_q[11])))) # (!\mem_a~combout\(3) & (\mem_out_var~236\))

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
	datab => \mem_out_var~236\,
	datac => \mem_d[11]~11\,
	datad => \inst_mem:28:mem_reg|q\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~237\,
	regout => \inst_mem:24:mem_reg|q\(11));

-- Location: LC_X8_Y9_N7
\inst_mem:30:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(11) = DFFEAS(((\mem_d[11]~11\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, , , , )

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
	datab => \mem_d[11]~11\,
	aclr => \rst~combout\,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(11));

-- Location: LC_X4_Y10_N7
\inst_mem:18:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(11));

-- Location: LC_X4_Y10_N5
\inst_mem:22:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~234\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B23_q[11]))) # (!\mem_a~combout\(2) & (\inst_mem:18:mem_reg|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:18:mem_reg|q\(11),
	datab => \mem_a~combout\(3),
	datac => \mem_d[11]~11\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~234\,
	regout => \inst_mem:22:mem_reg|q\(11));

-- Location: LC_X9_Y9_N6
\inst_mem:26:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~235\ = (\mem_a~combout\(3) & ((\mem_out_var~234\ & (\inst_mem:30:mem_reg|q\(11))) # (!\mem_out_var~234\ & ((B27_q[11]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~234\))))

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
	datab => \inst_mem:30:mem_reg|q\(11),
	datac => \mem_d[11]~11\,
	datad => \mem_out_var~234\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~235\,
	regout => \inst_mem:26:mem_reg|q\(11));

-- Location: LC_X8_Y8_N9
\mem_out_var~238\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~238_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((\mem_out_var~235\))) # (!\mem_a~combout\(1) & (\mem_out_var~237\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~237\,
	datab => \mem_out_var~235\,
	datac => \mem_a~combout\(0),
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~238_combout\);

-- Location: LC_X12_Y6_N1
\inst_mem:29:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(11));

-- Location: LC_X12_Y6_N2
\inst_mem:17:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(11));

-- Location: LC_X12_Y5_N0
\inst_mem:25:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~232\ = (\mem_a~combout\(3) & (((B26_q[11]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:17:mem_reg|q\(11) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:17:mem_reg|q\(11),
	datab => \mem_a~combout\(3),
	datac => \mem_d[11]~11\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~232\,
	regout => \inst_mem:25:mem_reg|q\(11));

-- Location: LC_X12_Y5_N6
\inst_mem:21:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~233\ = (\mem_out_var~232\ & ((\inst_mem:29:mem_reg|q\(11)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~232\ & (((B22_q[11] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:29:mem_reg|q\(11),
	datab => \mem_out_var~232\,
	datac => \mem_d[11]~11\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~233\,
	regout => \inst_mem:21:mem_reg|q\(11));

-- Location: LC_X8_Y8_N8
\mem_out_var~241\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~241_combout\ = (\mem_out_var~238_combout\ & ((\mem_out_var~240\) # ((!\mem_a~combout\(0))))) # (!\mem_out_var~238_combout\ & (((\mem_a~combout\(0) & \mem_out_var~233\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~240\,
	datab => \mem_out_var~238_combout\,
	datac => \mem_a~combout\(0),
	datad => \mem_out_var~233\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~241_combout\);

-- Location: LC_X5_Y4_N6
\inst_mem:4:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(11) = DFFEAS((\mem_d[11]~11\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, , , , )

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
	dataa => \mem_d[11]~11\,
	aclr => \rst~combout\,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(11));

-- Location: LC_X5_Y4_N7
\inst_mem:5:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~242\ = (\mem_a~combout\(0) & (((B6_q[11]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:4:mem_reg|q\(11) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:4:mem_reg|q\(11),
	datab => \mem_a~combout\(0),
	datac => \mem_d[11]~11\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~242\,
	regout => \inst_mem:5:mem_reg|q\(11));

-- Location: LC_X13_Y7_N1
\inst_mem:7:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(11));

-- Location: LC_X13_Y7_N5
\inst_mem:6:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~243\ = (\mem_out_var~242\ & (((\inst_mem:7:mem_reg|q\(11))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~242\ & (\mem_a~combout\(1) & (B7_q[11])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~242\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[11]~11\,
	datad => \inst_mem:7:mem_reg|q\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~243\,
	regout => \inst_mem:6:mem_reg|q\(11));

-- Location: LC_X14_Y8_N2
\inst_mem:15:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(11) = DFFEAS(((\mem_d[11]~11\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, , , , )

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
	datab => \mem_d[11]~11\,
	aclr => \rst~combout\,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(11));

-- Location: LC_X13_Y8_N7
\inst_mem:12:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(11) = DFFEAS((((\mem_d[11]~11\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, , , , )

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
	datad => \mem_d[11]~11\,
	aclr => \rst~combout\,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(11));

-- Location: LC_X14_Y9_N2
\inst_mem:13:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~249\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B14_q[11])) # (!\mem_a~combout\(0) & ((\inst_mem:12:mem_reg|q\(11))))))

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
	datac => \mem_d[11]~11\,
	datad => \inst_mem:12:mem_reg|q\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~249\,
	regout => \inst_mem:13:mem_reg|q\(11));

-- Location: LC_X14_Y8_N4
\inst_mem:14:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~250\ = (\mem_a~combout\(1) & ((\mem_out_var~249\ & (\inst_mem:15:mem_reg|q\(11))) # (!\mem_out_var~249\ & ((B15_q[11]))))) # (!\mem_a~combout\(1) & (((\mem_out_var~249\))))

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
	datab => \inst_mem:15:mem_reg|q\(11),
	datac => \mem_d[11]~11\,
	datad => \mem_out_var~249\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~250\,
	regout => \inst_mem:14:mem_reg|q\(11));

-- Location: LC_X6_Y9_N9
\inst_mem:8:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(11));

-- Location: LC_X6_Y9_N0
\inst_mem:10:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~244\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B11_q[11]))) # (!\mem_a~combout\(1) & (\inst_mem:8:mem_reg|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:8:mem_reg|q\(11),
	datac => \mem_d[11]~11\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~244\,
	regout => \inst_mem:10:mem_reg|q\(11));

-- Location: LC_X7_Y8_N8
\inst_mem:11:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(11) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, \mem_d[11]~11\, , , VCC)

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
	datac => \mem_d[11]~11\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(11));

-- Location: LC_X7_Y8_N6
\inst_mem:9:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~245\ = (\mem_a~combout\(0) & ((\mem_out_var~244\ & ((\inst_mem:11:mem_reg|q\(11)))) # (!\mem_out_var~244\ & (B10_q[11])))) # (!\mem_a~combout\(0) & (\mem_out_var~244\))

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
	datab => \mem_out_var~244\,
	datac => \mem_d[11]~11\,
	datad => \inst_mem:11:mem_reg|q\(11),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~245\,
	regout => \inst_mem:9:mem_reg|q\(11));

-- Location: LC_X5_Y7_N7
\inst_mem:3:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(11) = DFFEAS(((\mem_d[11]~11\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, , , , )

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
	datab => \mem_d[11]~11\,
	aclr => \rst~combout\,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(11));

-- Location: LC_X4_Y7_N4
\inst_mem:0:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(11) = DFFEAS(((\mem_d[11]~11\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, , , , )

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
	datab => \mem_d[11]~11\,
	aclr => \rst~combout\,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(11));

-- Location: LC_X6_Y7_N2
\inst_mem:2:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~246\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B3_q[11]))) # (!\mem_a~combout\(1) & (\inst_mem:0:mem_reg|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:0:mem_reg|q\(11),
	datac => \mem_d[11]~11\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~246\,
	regout => \inst_mem:2:mem_reg|q\(11));

-- Location: LC_X6_Y7_N3
\inst_mem:1:mem_reg|q[11]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~247\ = (\mem_a~combout\(0) & ((\mem_out_var~246\ & (\inst_mem:3:mem_reg|q\(11))) # (!\mem_out_var~246\ & ((B2_q[11]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~246\))))

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
	datab => \inst_mem:3:mem_reg|q\(11),
	datac => \mem_d[11]~11\,
	datad => \mem_out_var~246\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~247\,
	regout => \inst_mem:1:mem_reg|q\(11));

-- Location: LC_X14_Y8_N7
\mem_out_var~248\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~248_combout\ = (\mem_a~combout\(3) & ((\mem_out_var~245\) # ((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (((\mem_out_var~247\ & !\mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~245\,
	datab => \mem_a~combout\(3),
	datac => \mem_out_var~247\,
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~248_combout\);

-- Location: LC_X14_Y8_N8
\mem_out_var~251\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~251_combout\ = (\mem_a~combout\(2) & ((\mem_out_var~248_combout\ & ((\mem_out_var~250\))) # (!\mem_out_var~248_combout\ & (\mem_out_var~243\)))) # (!\mem_a~combout\(2) & (((\mem_out_var~248_combout\))))

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
	dataa => \mem_out_var~243\,
	datab => \mem_a~combout\(2),
	datac => \mem_out_var~250\,
	datad => \mem_out_var~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~251_combout\);

-- Location: LC_X8_Y8_N0
\mem_out_var~252\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~252_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & (\mem_out_var~241_combout\)) # (!\mem_a~combout\(4) & ((\mem_out_var~251_combout\)))))

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
	dataa => \mem_out_var~241_combout\,
	datab => \mem_out_var~20_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~251_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~252_combout\);

-- Location: LC_X3_Y8_N9
\inst_mem:18:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(12));

-- Location: LC_X3_Y8_N6
\inst_mem:26:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~253\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B27_q[12])) # (!\mem_a~combout\(3) & ((\inst_mem:18:mem_reg|q\(12))))))

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
	datac => \mem_d[12]~12\,
	datad => \inst_mem:18:mem_reg|q\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~253\,
	regout => \inst_mem:26:mem_reg|q\(12));

-- Location: LC_X6_Y4_N2
\inst_mem:30:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(12) = DFFEAS((((\mem_d[12]~12\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, , , , )

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
	datad => \mem_d[12]~12\,
	aclr => \rst~combout\,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(12));

-- Location: LC_X6_Y8_N0
\inst_mem:22:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~254\ = (\mem_out_var~253\ & ((\inst_mem:30:mem_reg|q\(12)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~253\ & (((B23_q[12] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~253\,
	datab => \inst_mem:30:mem_reg|q\(12),
	datac => \mem_d[12]~12\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~254\,
	regout => \inst_mem:22:mem_reg|q\(12));

-- Location: LC_X3_Y7_N6
\inst_mem:31:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(12));

-- Location: LC_X2_Y7_N8
\inst_mem:19:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(12) = DFFEAS((((\mem_d[12]~12\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, , , , )

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
	datad => \mem_d[12]~12\,
	aclr => \rst~combout\,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(12));

-- Location: LC_X2_Y7_N4
\inst_mem:23:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~260\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B24_q[12])) # (!\mem_a~combout\(2) & ((\inst_mem:19:mem_reg|q\(12))))))

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
	datac => \mem_d[12]~12\,
	datad => \inst_mem:19:mem_reg|q\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~260\,
	regout => \inst_mem:23:mem_reg|q\(12));

-- Location: LC_X3_Y7_N8
\inst_mem:27:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~261\ = (\mem_a~combout\(3) & ((\mem_out_var~260\ & (\inst_mem:31:mem_reg|q\(12))) # (!\mem_out_var~260\ & ((B28_q[12]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~260\))))

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
	dataa => \inst_mem:31:mem_reg|q\(12),
	datab => \mem_a~combout\(3),
	datac => \mem_d[12]~12\,
	datad => \mem_out_var~260\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~261\,
	regout => \inst_mem:27:mem_reg|q\(12));

-- Location: LC_X11_Y6_N5
\inst_mem:17:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(12) = DFFEAS((((\mem_d[12]~12\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	datad => \mem_d[12]~12\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(12));

-- Location: LC_X12_Y5_N3
\inst_mem:21:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~255\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B22_q[12]))) # (!\mem_a~combout\(2) & (\inst_mem:17:mem_reg|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:17:mem_reg|q\(12),
	datab => \mem_a~combout\(3),
	datac => \mem_d[12]~12\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~255\,
	regout => \inst_mem:21:mem_reg|q\(12));

-- Location: LC_X12_Y6_N6
\inst_mem:29:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(12) = DFFEAS((((\mem_d[12]~12\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, , , , )

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
	datad => \mem_d[12]~12\,
	aclr => \rst~combout\,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(12));

-- Location: LC_X12_Y5_N5
\inst_mem:25:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~256\ = (\mem_out_var~255\ & (((\inst_mem:29:mem_reg|q\(12))) # (!\mem_a~combout\(3)))) # (!\mem_out_var~255\ & (\mem_a~combout\(3) & (B26_q[12])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~255\,
	datab => \mem_a~combout\(3),
	datac => \mem_d[12]~12\,
	datad => \inst_mem:29:mem_reg|q\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~256\,
	regout => \inst_mem:25:mem_reg|q\(12));

-- Location: LC_X9_Y4_N2
\inst_mem:16:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(12));

-- Location: LC_X10_Y4_N3
\inst_mem:24:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~257\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B25_q[12]))) # (!\mem_a~combout\(3) & (\inst_mem:16:mem_reg|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \inst_mem:16:mem_reg|q\(12),
	datac => \mem_d[12]~12\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~257\,
	regout => \inst_mem:24:mem_reg|q\(12));

-- Location: LC_X7_Y4_N9
\inst_mem:28:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(12));

-- Location: LC_X10_Y4_N1
\inst_mem:20:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~258\ = (\mem_out_var~257\ & ((\inst_mem:28:mem_reg|q\(12)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~257\ & (((B21_q[12] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~257\,
	datab => \inst_mem:28:mem_reg|q\(12),
	datac => \mem_d[12]~12\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~258\,
	regout => \inst_mem:20:mem_reg|q\(12));

-- Location: LC_X10_Y4_N2
\mem_out_var~259\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~259_combout\ = (\mem_a~combout\(0) & ((\mem_out_var~256\) # ((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (((!\mem_a~combout\(1) & \mem_out_var~258\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_out_var~256\,
	datac => \mem_a~combout\(1),
	datad => \mem_out_var~258\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~259_combout\);

-- Location: LC_X7_Y6_N4
\mem_out_var~262\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~262_combout\ = (\mem_out_var~259_combout\ & (((\mem_out_var~261\) # (!\mem_a~combout\(1))))) # (!\mem_out_var~259_combout\ & (\mem_out_var~254\ & ((\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~254\,
	datab => \mem_out_var~261\,
	datac => \mem_out_var~259_combout\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~262_combout\);

-- Location: LC_X9_Y5_N8
\inst_mem:15:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(12));

-- Location: LC_X10_Y5_N2
\inst_mem:12:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(12));

-- Location: LC_X10_Y5_N1
\inst_mem:14:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~270\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B15_q[12]))) # (!\mem_a~combout\(1) & (\inst_mem:12:mem_reg|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:12:mem_reg|q\(12),
	datac => \mem_d[12]~12\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~270\,
	regout => \inst_mem:14:mem_reg|q\(12));

-- Location: LC_X9_Y5_N4
\inst_mem:13:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~271\ = (\mem_a~combout\(0) & ((\mem_out_var~270\ & (\inst_mem:15:mem_reg|q\(12))) # (!\mem_out_var~270\ & ((B14_q[12]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~270\))))

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
	dataa => \inst_mem:15:mem_reg|q\(12),
	datab => \mem_a~combout\(0),
	datac => \mem_d[12]~12\,
	datad => \mem_out_var~270\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~271\,
	regout => \inst_mem:13:mem_reg|q\(12));

-- Location: LC_X6_Y5_N8
\inst_mem:4:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(12));

-- Location: LC_X6_Y5_N1
\inst_mem:6:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~265\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B7_q[12]))) # (!\mem_a~combout\(1) & (\inst_mem:4:mem_reg|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:4:mem_reg|q\(12),
	datab => \mem_a~combout\(0),
	datac => \mem_d[12]~12\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~265\,
	regout => \inst_mem:6:mem_reg|q\(12));

-- Location: LC_X7_Y5_N1
\inst_mem:7:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(12));

-- Location: LC_X7_Y5_N8
\inst_mem:5:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~266\ = (\mem_out_var~265\ & (((\inst_mem:7:mem_reg|q\(12))) # (!\mem_a~combout\(0)))) # (!\mem_out_var~265\ & (\mem_a~combout\(0) & (B6_q[12])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~265\,
	datab => \mem_a~combout\(0),
	datac => \mem_d[12]~12\,
	datad => \inst_mem:7:mem_reg|q\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~266\,
	regout => \inst_mem:5:mem_reg|q\(12));

-- Location: LC_X5_Y7_N3
\inst_mem:3:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(12) = DFFEAS(((\mem_d[12]~12\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, , , , )

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
	datab => \mem_d[12]~12\,
	aclr => \rst~combout\,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(12));

-- Location: LC_X1_Y6_N4
\inst_mem:0:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(12));

-- Location: LC_X3_Y6_N9
\inst_mem:1:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~267\ = (\mem_a~combout\(0) & (((B2_q[12]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:0:mem_reg|q\(12) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:0:mem_reg|q\(12),
	datab => \mem_a~combout\(0),
	datac => \mem_d[12]~12\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~267\,
	regout => \inst_mem:1:mem_reg|q\(12));

-- Location: LC_X3_Y6_N5
\inst_mem:2:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~268\ = (\mem_out_var~267\ & ((\inst_mem:3:mem_reg|q\(12)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~267\ & (((B3_q[12] & \mem_a~combout\(1)))))

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
	dataa => \inst_mem:3:mem_reg|q\(12),
	datab => \mem_out_var~267\,
	datac => \mem_d[12]~12\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~268\,
	regout => \inst_mem:2:mem_reg|q\(12));

-- Location: LC_X3_Y6_N1
\mem_out_var~269\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~269_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\mem_out_var~266\)) # (!\mem_a~combout\(2) & ((\mem_out_var~268\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(3),
	datab => \mem_out_var~266\,
	datac => \mem_out_var~268\,
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~269_combout\);

-- Location: LC_X6_Y8_N6
\inst_mem:8:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[12]~12\, , , VCC)

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
	datac => \mem_d[12]~12\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(12));

-- Location: LC_X6_Y6_N8
\inst_mem:9:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~263\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B10_q[12])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\inst_mem:8:mem_reg|q\(12)))))

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
	datac => \mem_d[12]~12\,
	datad => \inst_mem:8:mem_reg|q\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~263\,
	regout => \inst_mem:9:mem_reg|q\(12));

-- Location: LC_X11_Y6_N9
\inst_mem:11:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(12) = DFFEAS((((\mem_d[12]~12\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, , , , )

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
	datad => \mem_d[12]~12\,
	aclr => \rst~combout\,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(12));

-- Location: LC_X6_Y6_N5
\inst_mem:10:mem_reg|q[12]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~264\ = (\mem_out_var~263\ & (((\inst_mem:11:mem_reg|q\(12))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~263\ & (\mem_a~combout\(1) & (B11_q[12])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~263\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[12]~12\,
	datad => \inst_mem:11:mem_reg|q\(12),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~264\,
	regout => \inst_mem:10:mem_reg|q\(12));

-- Location: LC_X6_Y6_N4
\mem_out_var~272\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~272_combout\ = (\mem_out_var~269_combout\ & ((\mem_out_var~271\) # ((!\mem_a~combout\(3))))) # (!\mem_out_var~269_combout\ & (((\mem_out_var~264\ & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~271\,
	datab => \mem_out_var~269_combout\,
	datac => \mem_out_var~264\,
	datad => \mem_a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~272_combout\);

-- Location: LC_X7_Y6_N5
\mem_out_var~273\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~273_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & (\mem_out_var~262_combout\)) # (!\mem_a~combout\(4) & ((\mem_out_var~272_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~262_combout\,
	datab => \mem_out_var~272_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~273_combout\);

-- Location: LC_X13_Y6_N1
\inst_mem:4:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(13));

-- Location: LC_X13_Y6_N2
\inst_mem:5:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~284\ = (\mem_a~combout\(1) & (\mem_a~combout\(0))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (B6_q[13])) # (!\mem_a~combout\(0) & ((\inst_mem:4:mem_reg|q\(13))))))

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
	datac => \mem_d[13]~13\,
	datad => \inst_mem:4:mem_reg|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~284\,
	regout => \inst_mem:5:mem_reg|q\(13));

-- Location: LC_X13_Y7_N4
\inst_mem:7:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(13) = DFFEAS((((\mem_d[13]~13\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, , , , )

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
	datad => \mem_d[13]~13\,
	aclr => \rst~combout\,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(13));

-- Location: LC_X14_Y7_N8
\inst_mem:6:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~285\ = (\mem_out_var~284\ & (((\inst_mem:7:mem_reg|q\(13))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~284\ & (\mem_a~combout\(1) & (B7_q[13])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~284\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[13]~13\,
	datad => \inst_mem:7:mem_reg|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~285\,
	regout => \inst_mem:6:mem_reg|q\(13));

-- Location: LC_X7_Y8_N0
\inst_mem:11:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(13));

-- Location: LC_X5_Y9_N4
\inst_mem:8:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(13));

-- Location: LC_X5_Y9_N5
\inst_mem:10:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~286\ = (\mem_a~combout\(1) & (((B11_q[13]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\inst_mem:8:mem_reg|q\(13) & ((!\mem_a~combout\(0)))))

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
	datab => \inst_mem:8:mem_reg|q\(13),
	datac => \mem_d[13]~13\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~286\,
	regout => \inst_mem:10:mem_reg|q\(13));

-- Location: LC_X7_Y8_N1
\inst_mem:9:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~287\ = (\mem_a~combout\(0) & ((\mem_out_var~286\ & (\inst_mem:11:mem_reg|q\(13))) # (!\mem_out_var~286\ & ((B10_q[13]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~286\))))

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
	datab => \inst_mem:11:mem_reg|q\(13),
	datac => \mem_d[13]~13\,
	datad => \mem_out_var~286\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~287\,
	regout => \inst_mem:9:mem_reg|q\(13));

-- Location: LC_X4_Y7_N6
\inst_mem:0:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(13) = DFFEAS((((\mem_d[13]~13\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, , , , )

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
	datad => \mem_d[13]~13\,
	aclr => \rst~combout\,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(13));

-- Location: LC_X10_Y10_N1
\inst_mem:2:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~288\ = (\mem_a~combout\(1) & (((B3_q[13]) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\inst_mem:0:mem_reg|q\(13) & ((!\mem_a~combout\(0)))))

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
	dataa => \inst_mem:0:mem_reg|q\(13),
	datab => \mem_a~combout\(1),
	datac => \mem_d[13]~13\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~288\,
	regout => \inst_mem:2:mem_reg|q\(13));

-- Location: LC_X12_Y10_N2
\inst_mem:3:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(13));

-- Location: LC_X12_Y10_N8
\inst_mem:1:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~289\ = (\mem_out_var~288\ & (((\inst_mem:3:mem_reg|q\(13))) # (!\mem_a~combout\(0)))) # (!\mem_out_var~288\ & (\mem_a~combout\(0) & (B2_q[13])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~288\,
	datab => \mem_a~combout\(0),
	datac => \mem_d[13]~13\,
	datad => \inst_mem:3:mem_reg|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~289\,
	regout => \inst_mem:1:mem_reg|q\(13));

-- Location: LC_X12_Y7_N4
\mem_out_var~290\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~290_combout\ = (\mem_a~combout\(3) & ((\mem_out_var~287\) # ((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (((!\mem_a~combout\(2) & \mem_out_var~289\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~287\,
	datab => \mem_a~combout\(3),
	datac => \mem_a~combout\(2),
	datad => \mem_out_var~289\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~290_combout\);

-- Location: LC_X14_Y6_N2
\inst_mem:15:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(13) = DFFEAS((\mem_d[13]~13\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, , , , )

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
	dataa => \mem_d[13]~13\,
	aclr => \rst~combout\,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(13));

-- Location: LC_X13_Y8_N8
\inst_mem:12:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(13) = DFFEAS(((\mem_d[13]~13\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, , , , )

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
	datab => \mem_d[13]~13\,
	aclr => \rst~combout\,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(13));

-- Location: LC_X13_Y8_N3
\inst_mem:13:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~291\ = (\mem_a~combout\(0) & ((\mem_a~combout\(1)) # ((B14_q[13])))) # (!\mem_a~combout\(0) & (!\mem_a~combout\(1) & ((\inst_mem:12:mem_reg|q\(13)))))

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
	datac => \mem_d[13]~13\,
	datad => \inst_mem:12:mem_reg|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~291\,
	regout => \inst_mem:13:mem_reg|q\(13));

-- Location: LC_X14_Y7_N2
\inst_mem:14:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~292\ = (\mem_a~combout\(1) & ((\mem_out_var~291\ & (\inst_mem:15:mem_reg|q\(13))) # (!\mem_out_var~291\ & ((B15_q[13]))))) # (!\mem_a~combout\(1) & (((\mem_out_var~291\))))

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
	dataa => \inst_mem:15:mem_reg|q\(13),
	datab => \mem_a~combout\(1),
	datac => \mem_d[13]~13\,
	datad => \mem_out_var~291\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~292\,
	regout => \inst_mem:14:mem_reg|q\(13));

-- Location: LC_X14_Y7_N3
\mem_out_var~293\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~293_combout\ = (\mem_a~combout\(2) & ((\mem_out_var~290_combout\ & ((\mem_out_var~292\))) # (!\mem_out_var~290_combout\ & (\mem_out_var~285\)))) # (!\mem_a~combout\(2) & (((\mem_out_var~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~285\,
	datab => \mem_a~combout\(2),
	datac => \mem_out_var~290_combout\,
	datad => \mem_out_var~292\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~293_combout\);

-- Location: LC_X9_Y4_N9
\inst_mem:16:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(13));

-- Location: LC_X10_Y4_N8
\inst_mem:20:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~278\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((B21_q[13])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\inst_mem:16:mem_reg|q\(13)))))

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
	datac => \mem_d[13]~13\,
	datad => \inst_mem:16:mem_reg|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~278\,
	regout => \inst_mem:20:mem_reg|q\(13));

-- Location: LC_X9_Y4_N7
\inst_mem:28:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(13));

-- Location: LC_X10_Y4_N9
\inst_mem:24:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~279\ = (\mem_out_var~278\ & ((\inst_mem:28:mem_reg|q\(13)) # ((!\mem_a~combout\(3))))) # (!\mem_out_var~278\ & (((B25_q[13] & \mem_a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~278\,
	datab => \inst_mem:28:mem_reg|q\(13),
	datac => \mem_d[13]~13\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~279\,
	regout => \inst_mem:24:mem_reg|q\(13));

-- Location: LC_X5_Y10_N4
\inst_mem:30:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(13));

-- Location: LC_X4_Y10_N3
\inst_mem:18:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(13));

-- Location: LC_X4_Y10_N4
\inst_mem:22:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~276\ = (\mem_a~combout\(2) & ((\mem_a~combout\(3)) # ((B23_q[13])))) # (!\mem_a~combout\(2) & (!\mem_a~combout\(3) & ((\inst_mem:18:mem_reg|q\(13)))))

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
	datac => \mem_d[13]~13\,
	datad => \inst_mem:18:mem_reg|q\(13),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~276\,
	regout => \inst_mem:22:mem_reg|q\(13));

-- Location: LC_X5_Y10_N5
\inst_mem:26:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~277\ = (\mem_a~combout\(3) & ((\mem_out_var~276\ & (\inst_mem:30:mem_reg|q\(13))) # (!\mem_out_var~276\ & ((B27_q[13]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~276\))))

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
	datab => \inst_mem:30:mem_reg|q\(13),
	datac => \mem_d[13]~13\,
	datad => \mem_out_var~276\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~277\,
	regout => \inst_mem:26:mem_reg|q\(13));

-- Location: LC_X7_Y6_N8
\mem_out_var~280\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~280_combout\ = (\mem_a~combout\(1) & (((\mem_out_var~277\) # (\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & (\mem_out_var~279\ & ((!\mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~279\,
	datab => \mem_out_var~277\,
	datac => \mem_a~combout\(1),
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~280_combout\);

-- Location: LC_X4_Y9_N9
\inst_mem:19:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(13));

-- Location: LC_X4_Y8_N5
\inst_mem:27:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~281\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B28_q[13]))) # (!\mem_a~combout\(3) & (\inst_mem:19:mem_reg|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \inst_mem:19:mem_reg|q\(13),
	datac => \mem_d[13]~13\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~281\,
	regout => \inst_mem:27:mem_reg|q\(13));

-- Location: LC_X5_Y8_N9
\inst_mem:31:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[13]~13\, , , VCC)

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
	datac => \mem_d[13]~13\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(13));

-- Location: LC_X5_Y8_N0
\inst_mem:23:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~282\ = (\mem_out_var~281\ & ((\inst_mem:31:mem_reg|q\(13)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~281\ & (((B24_q[13] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~281\,
	datab => \inst_mem:31:mem_reg|q\(13),
	datac => \mem_d[13]~13\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~282\,
	regout => \inst_mem:23:mem_reg|q\(13));

-- Location: LC_X12_Y6_N5
\inst_mem:29:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(13) = DFFEAS(((\mem_d[13]~13\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, , , , )

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
	datab => \mem_d[13]~13\,
	aclr => \rst~combout\,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(13));

-- Location: LC_X12_Y6_N9
\inst_mem:17:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(13) = DFFEAS(((\mem_d[13]~13\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	datab => \mem_d[13]~13\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(13));

-- Location: LC_X12_Y5_N2
\inst_mem:25:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~274\ = (\mem_a~combout\(3) & (((B26_q[13]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:17:mem_reg|q\(13) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:17:mem_reg|q\(13),
	datab => \mem_a~combout\(3),
	datac => \mem_d[13]~13\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~274\,
	regout => \inst_mem:25:mem_reg|q\(13));

-- Location: LC_X12_Y5_N9
\inst_mem:21:mem_reg|q[13]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~275\ = (\mem_out_var~274\ & ((\inst_mem:29:mem_reg|q\(13)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~274\ & (((B22_q[13] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:29:mem_reg|q\(13),
	datab => \mem_out_var~274\,
	datac => \mem_d[13]~13\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~275\,
	regout => \inst_mem:21:mem_reg|q\(13));

-- Location: LC_X7_Y6_N0
\mem_out_var~283\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~283_combout\ = (\mem_out_var~280_combout\ & (((\mem_out_var~282\)) # (!\mem_a~combout\(0)))) # (!\mem_out_var~280_combout\ & (\mem_a~combout\(0) & ((\mem_out_var~275\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~280_combout\,
	datab => \mem_a~combout\(0),
	datac => \mem_out_var~282\,
	datad => \mem_out_var~275\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~283_combout\);

-- Location: LC_X7_Y6_N2
\mem_out_var~294\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~294_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & ((\mem_out_var~283_combout\))) # (!\mem_a~combout\(4) & (\mem_out_var~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~293_combout\,
	datab => \mem_out_var~283_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~294_combout\);

-- Location: LC_X10_Y5_N9
\inst_mem:12:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(14));

-- Location: LC_X10_Y5_N6
\inst_mem:14:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~312\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B15_q[14]))) # (!\mem_a~combout\(1) & (\inst_mem:12:mem_reg|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:12:mem_reg|q\(14),
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~312\,
	regout => \inst_mem:14:mem_reg|q\(14));

-- Location: LC_X11_Y7_N1
\inst_mem:15:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(14));

-- Location: LC_X11_Y7_N7
\inst_mem:13:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~313\ = (\mem_a~combout\(0) & ((\mem_out_var~312\ & ((\inst_mem:15:mem_reg|q\(14)))) # (!\mem_out_var~312\ & (B14_q[14])))) # (!\mem_a~combout\(0) & (\mem_out_var~312\))

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
	datab => \mem_out_var~312\,
	datac => \mem_d[14]~14\,
	datad => \inst_mem:15:mem_reg|q\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~313\,
	regout => \inst_mem:13:mem_reg|q\(14));

-- Location: LC_X7_Y7_N4
\inst_mem:11:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(14));

-- Location: LC_X6_Y9_N7
\inst_mem:8:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(14));

-- Location: LC_X7_Y8_N2
\inst_mem:9:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~305\ = (\mem_a~combout\(0) & (((B10_q[14]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:8:mem_reg|q\(14) & ((!\mem_a~combout\(1)))))

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
	datab => \inst_mem:8:mem_reg|q\(14),
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~305\,
	regout => \inst_mem:9:mem_reg|q\(14));

-- Location: LC_X7_Y7_N6
\inst_mem:10:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~306\ = (\mem_out_var~305\ & ((\inst_mem:11:mem_reg|q\(14)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~305\ & (((B11_q[14] & \mem_a~combout\(1)))))

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
	dataa => \inst_mem:11:mem_reg|q\(14),
	datab => \mem_out_var~305\,
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~306\,
	regout => \inst_mem:10:mem_reg|q\(14));

-- Location: LC_X4_Y5_N6
\inst_mem:7:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(14));

-- Location: LC_X6_Y5_N7
\inst_mem:4:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(14));

-- Location: LC_X6_Y5_N9
\inst_mem:6:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~307\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B7_q[14]))) # (!\mem_a~combout\(1) & (\inst_mem:4:mem_reg|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:4:mem_reg|q\(14),
	datab => \mem_a~combout\(0),
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~307\,
	regout => \inst_mem:6:mem_reg|q\(14));

-- Location: LC_X4_Y5_N5
\inst_mem:5:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~308\ = (\mem_a~combout\(0) & ((\mem_out_var~307\ & (\inst_mem:7:mem_reg|q\(14))) # (!\mem_out_var~307\ & ((B6_q[14]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~307\))))

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
	datab => \inst_mem:7:mem_reg|q\(14),
	datac => \mem_d[14]~14\,
	datad => \mem_out_var~307\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~308\,
	regout => \inst_mem:5:mem_reg|q\(14));

-- Location: LC_X4_Y7_N1
\inst_mem:0:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(14) = DFFEAS((((\mem_d[14]~14\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, , , , )

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
	datad => \mem_d[14]~14\,
	aclr => \rst~combout\,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(14));

-- Location: LC_X6_Y7_N4
\inst_mem:1:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~309\ = (\mem_a~combout\(0) & (((B2_q[14]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:0:mem_reg|q\(14) & ((!\mem_a~combout\(1)))))

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
	datab => \inst_mem:0:mem_reg|q\(14),
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~309\,
	regout => \inst_mem:1:mem_reg|q\(14));

-- Location: LC_X5_Y7_N8
\inst_mem:3:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(14) = DFFEAS((((\mem_d[14]~14\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, , , , )

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
	datad => \mem_d[14]~14\,
	aclr => \rst~combout\,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(14));

-- Location: LC_X6_Y7_N5
\inst_mem:2:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~310\ = (\mem_out_var~309\ & ((\inst_mem:3:mem_reg|q\(14)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~309\ & (((B3_q[14] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~309\,
	datab => \inst_mem:3:mem_reg|q\(14),
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~310\,
	regout => \inst_mem:2:mem_reg|q\(14));

-- Location: LC_X6_Y6_N7
\mem_out_var~311\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~311_combout\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (\mem_out_var~308\)) # (!\mem_a~combout\(2) & ((\mem_out_var~310\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~308\,
	datab => \mem_a~combout\(3),
	datac => \mem_out_var~310\,
	datad => \mem_a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~311_combout\);

-- Location: LC_X7_Y7_N9
\mem_out_var~314\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~314_combout\ = (\mem_a~combout\(3) & ((\mem_out_var~311_combout\ & (\mem_out_var~313\)) # (!\mem_out_var~311_combout\ & ((\mem_out_var~306\))))) # (!\mem_a~combout\(3) & (((\mem_out_var~311_combout\))))

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
	dataa => \mem_out_var~313\,
	datab => \mem_a~combout\(3),
	datac => \mem_out_var~306\,
	datad => \mem_out_var~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~314_combout\);

-- Location: LC_X11_Y6_N2
\inst_mem:17:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(14) = DFFEAS((\mem_d[14]~14\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	dataa => \mem_d[14]~14\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(14));

-- Location: LC_X12_Y5_N8
\inst_mem:21:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~297\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B22_q[14]))) # (!\mem_a~combout\(2) & (\inst_mem:17:mem_reg|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:17:mem_reg|q\(14),
	datab => \mem_a~combout\(3),
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~297\,
	regout => \inst_mem:21:mem_reg|q\(14));

-- Location: LC_X12_Y6_N3
\inst_mem:29:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(14) = DFFEAS((\mem_d[14]~14\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, , , , )

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
	dataa => \mem_d[14]~14\,
	aclr => \rst~combout\,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(14));

-- Location: LC_X12_Y5_N4
\inst_mem:25:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~298\ = (\mem_out_var~297\ & (((\inst_mem:29:mem_reg|q\(14))) # (!\mem_a~combout\(3)))) # (!\mem_out_var~297\ & (\mem_a~combout\(3) & (B26_q[14])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~297\,
	datab => \mem_a~combout\(3),
	datac => \mem_d[14]~14\,
	datad => \inst_mem:29:mem_reg|q\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~298\,
	regout => \inst_mem:25:mem_reg|q\(14));

-- Location: LC_X10_Y9_N5
\inst_mem:16:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(14) = DFFEAS(((\mem_d[14]~14\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, , , , )

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
	datab => \mem_d[14]~14\,
	aclr => \rst~combout\,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(14));

-- Location: LC_X10_Y4_N5
\inst_mem:24:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~299\ = (\mem_a~combout\(3) & (((B25_q[14]) # (\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & (\inst_mem:16:mem_reg|q\(14) & ((!\mem_a~combout\(2)))))

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
	dataa => \inst_mem:16:mem_reg|q\(14),
	datab => \mem_a~combout\(3),
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~299\,
	regout => \inst_mem:24:mem_reg|q\(14));

-- Location: LC_X11_Y5_N9
\inst_mem:28:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(14));

-- Location: LC_X11_Y5_N3
\inst_mem:20:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~300\ = (\mem_out_var~299\ & ((\inst_mem:28:mem_reg|q\(14)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~299\ & (((B21_q[14] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~299\,
	datab => \inst_mem:28:mem_reg|q\(14),
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~300\,
	regout => \inst_mem:20:mem_reg|q\(14));

-- Location: LC_X9_Y6_N4
\mem_out_var~301\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~301_combout\ = (\mem_a~combout\(1) & (((\mem_a~combout\(0))))) # (!\mem_a~combout\(1) & ((\mem_a~combout\(0) & (\mem_out_var~298\)) # (!\mem_a~combout\(0) & ((\mem_out_var~300\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~298\,
	datab => \mem_out_var~300\,
	datac => \mem_a~combout\(1),
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~301_combout\);

-- Location: LC_X7_Y9_N6
\inst_mem:30:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(14));

-- Location: LC_X3_Y8_N8
\inst_mem:18:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(14) = DFFEAS((((\mem_d[14]~14\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datad => \mem_d[14]~14\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(14));

-- Location: LC_X3_Y8_N5
\inst_mem:26:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~295\ = (\mem_a~combout\(2) & (\mem_a~combout\(3))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (B27_q[14])) # (!\mem_a~combout\(3) & ((\inst_mem:18:mem_reg|q\(14))))))

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
	datac => \mem_d[14]~14\,
	datad => \inst_mem:18:mem_reg|q\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~295\,
	regout => \inst_mem:26:mem_reg|q\(14));

-- Location: LC_X7_Y9_N5
\inst_mem:22:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~296\ = (\mem_out_var~295\ & ((\inst_mem:30:mem_reg|q\(14)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~295\ & (((B23_q[14] & \mem_a~combout\(2)))))

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
	dataa => \inst_mem:30:mem_reg|q\(14),
	datab => \mem_out_var~295\,
	datac => \mem_d[14]~14\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~296\,
	regout => \inst_mem:22:mem_reg|q\(14));

-- Location: LC_X2_Y7_N2
\inst_mem:19:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(14));

-- Location: LC_X2_Y7_N5
\inst_mem:23:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~302\ = (\mem_a~combout\(3) & (\mem_a~combout\(2))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & (B24_q[14])) # (!\mem_a~combout\(2) & ((\inst_mem:19:mem_reg|q\(14))))))

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
	datac => \mem_d[14]~14\,
	datad => \inst_mem:19:mem_reg|q\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~302\,
	regout => \inst_mem:23:mem_reg|q\(14));

-- Location: LC_X3_Y7_N9
\inst_mem:31:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, \mem_d[14]~14\, , , VCC)

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
	datac => \mem_d[14]~14\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(14));

-- Location: LC_X3_Y7_N3
\inst_mem:27:mem_reg|q[14]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~303\ = (\mem_out_var~302\ & (((\inst_mem:31:mem_reg|q\(14))) # (!\mem_a~combout\(3)))) # (!\mem_out_var~302\ & (\mem_a~combout\(3) & (B28_q[14])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~302\,
	datab => \mem_a~combout\(3),
	datac => \mem_d[14]~14\,
	datad => \inst_mem:31:mem_reg|q\(14),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~303\,
	regout => \inst_mem:27:mem_reg|q\(14));

-- Location: LC_X7_Y7_N8
\mem_out_var~304\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~304_combout\ = (\mem_out_var~301_combout\ & (((\mem_out_var~303\) # (!\mem_a~combout\(1))))) # (!\mem_out_var~301_combout\ & (\mem_out_var~296\ & ((\mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~301_combout\,
	datab => \mem_out_var~296\,
	datac => \mem_out_var~303\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~304_combout\);

-- Location: LC_X7_Y7_N3
\mem_out_var~315\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~315_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & ((\mem_out_var~304_combout\))) # (!\mem_a~combout\(4) & (\mem_out_var~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~20_combout\,
	datab => \mem_out_var~314_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~315_combout\);

-- Location: LC_X4_Y9_N4
\inst_mem:19:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:19:mem_reg|q\(15) = DFFEAS((((\mem_d[15]~15\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[19]~14_combout\, , , , )

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
	datad => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[19]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:19:mem_reg|q\(15));

-- Location: LC_X8_Y7_N7
\inst_mem:27:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~323\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B28_q[15]))) # (!\mem_a~combout\(3) & (\inst_mem:19:mem_reg|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(2),
	datab => \inst_mem:19:mem_reg|q\(15),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[27]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~323\,
	regout => \inst_mem:27:mem_reg|q\(15));

-- Location: LC_X8_Y9_N5
\inst_mem:31:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:31:mem_reg|q\(15) = DFFEAS((\mem_d[15]~15\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[31]~15_combout\, , , , )

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
	dataa => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:31:mem_reg|q\(15));

-- Location: LC_X8_Y7_N5
\inst_mem:23:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~324\ = (\mem_a~combout\(2) & ((\mem_out_var~323\ & ((\inst_mem:31:mem_reg|q\(15)))) # (!\mem_out_var~323\ & (B24_q[15])))) # (!\mem_a~combout\(2) & (\mem_out_var~323\))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_out_var~323\,
	datac => \mem_d[15]~15\,
	datad => \inst_mem:31:mem_reg|q\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[23]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~324\,
	regout => \inst_mem:23:mem_reg|q\(15));

-- Location: LC_X8_Y10_N3
\inst_mem:18:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:18:mem_reg|q\(15) = DFFEAS(((\mem_d[15]~15\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[18]~2_combout\, , , , )

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
	datab => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[18]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:18:mem_reg|q\(15));

-- Location: LC_X7_Y10_N6
\inst_mem:22:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~318\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B23_q[15]))) # (!\mem_a~combout\(2) & (\inst_mem:18:mem_reg|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:18:mem_reg|q\(15),
	datab => \mem_a~combout\(3),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[22]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~318\,
	regout => \inst_mem:22:mem_reg|q\(15));

-- Location: LC_X8_Y9_N8
\inst_mem:30:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:30:mem_reg|q\(15) = DFFEAS((\mem_d[15]~15\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[30]~3_combout\, , , , )

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
	dataa => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[30]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:30:mem_reg|q\(15));

-- Location: LC_X7_Y10_N7
\inst_mem:26:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~319\ = (\mem_out_var~318\ & (((\inst_mem:30:mem_reg|q\(15))) # (!\mem_a~combout\(3)))) # (!\mem_out_var~318\ & (\mem_a~combout\(3) & (B27_q[15])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~318\,
	datab => \mem_a~combout\(3),
	datac => \mem_d[15]~15\,
	datad => \inst_mem:30:mem_reg|q\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~319\,
	regout => \inst_mem:26:mem_reg|q\(15));

-- Location: LC_X7_Y4_N2
\inst_mem:28:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:28:mem_reg|q\(15) = DFFEAS(((\mem_d[15]~15\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[28]~11_combout\, , , , )

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
	datab => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[28]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:28:mem_reg|q\(15));

-- Location: LC_X9_Y4_N8
\inst_mem:16:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:16:mem_reg|q\(15) = DFFEAS(((\mem_d[15]~15\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[16]~10_combout\, , , , )

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
	datab => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:16:mem_reg|q\(15));

-- Location: LC_X8_Y4_N8
\inst_mem:20:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~320\ = (\mem_a~combout\(3) & (((\mem_a~combout\(2))))) # (!\mem_a~combout\(3) & ((\mem_a~combout\(2) & ((B21_q[15]))) # (!\mem_a~combout\(2) & (\inst_mem:16:mem_reg|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(3),
	datab => \inst_mem:16:mem_reg|q\(15),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~320\,
	regout => \inst_mem:20:mem_reg|q\(15));

-- Location: LC_X8_Y4_N2
\inst_mem:24:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~321\ = (\mem_a~combout\(3) & ((\mem_out_var~320\ & (\inst_mem:28:mem_reg|q\(15))) # (!\mem_out_var~320\ & ((B25_q[15]))))) # (!\mem_a~combout\(3) & (((\mem_out_var~320\))))

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
	datab => \inst_mem:28:mem_reg|q\(15),
	datac => \mem_d[15]~15\,
	datad => \mem_out_var~320\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~321\,
	regout => \inst_mem:24:mem_reg|q\(15));

-- Location: LC_X8_Y6_N1
\mem_out_var~322\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~322_combout\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & (\mem_out_var~319\)) # (!\mem_a~combout\(1) & ((\mem_out_var~321\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(0),
	datab => \mem_out_var~319\,
	datac => \mem_out_var~321\,
	datad => \mem_a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~322_combout\);

-- Location: LC_X11_Y6_N7
\inst_mem:17:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:17:mem_reg|q\(15) = DFFEAS((((\mem_d[15]~15\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[17]~6_combout\, , , , )

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
	datad => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[17]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:17:mem_reg|q\(15));

-- Location: LC_X10_Y6_N3
\inst_mem:25:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~316\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & ((B26_q[15]))) # (!\mem_a~combout\(3) & (\inst_mem:17:mem_reg|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst_mem:17:mem_reg|q\(15),
	datab => \mem_a~combout\(2),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(3),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~316\,
	regout => \inst_mem:25:mem_reg|q\(15));

-- Location: LC_X10_Y7_N8
\inst_mem:29:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:29:mem_reg|q\(15) = DFFEAS(((\mem_d[15]~15\)), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[29]~7_combout\, , , , )

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
	datab => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[29]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:29:mem_reg|q\(15));

-- Location: LC_X10_Y6_N8
\inst_mem:21:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~317\ = (\mem_out_var~316\ & ((\inst_mem:29:mem_reg|q\(15)) # ((!\mem_a~combout\(2))))) # (!\mem_out_var~316\ & (((B22_q[15] & \mem_a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~316\,
	datab => \inst_mem:29:mem_reg|q\(15),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(2),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[21]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~317\,
	regout => \inst_mem:21:mem_reg|q\(15));

-- Location: LC_X8_Y6_N3
\mem_out_var~325\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~325_combout\ = (\mem_out_var~322_combout\ & ((\mem_out_var~324\) # ((!\mem_a~combout\(0))))) # (!\mem_out_var~322_combout\ & (((\mem_out_var~317\ & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_out_var~324\,
	datab => \mem_out_var~322_combout\,
	datac => \mem_out_var~317\,
	datad => \mem_a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~325_combout\);

-- Location: LC_X5_Y4_N5
\inst_mem:4:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:4:mem_reg|q\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[4]~22_combout\, \mem_d[15]~15\, , , VCC)

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
	datac => \mem_d[15]~15\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:4:mem_reg|q\(15));

-- Location: LC_X5_Y4_N9
\inst_mem:5:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~326\ = (\mem_a~combout\(0) & (((B6_q[15]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:4:mem_reg|q\(15) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:4:mem_reg|q\(15),
	datab => \mem_a~combout\(0),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~326\,
	regout => \inst_mem:5:mem_reg|q\(15));

-- Location: LC_X13_Y7_N8
\inst_mem:7:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:7:mem_reg|q\(15) = DFFEAS((((\mem_d[15]~15\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[7]~23_combout\, , , , )

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
	datad => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:7:mem_reg|q\(15));

-- Location: LC_X12_Y8_N7
\inst_mem:6:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~327\ = (\mem_out_var~326\ & (((\inst_mem:7:mem_reg|q\(15))) # (!\mem_a~combout\(1)))) # (!\mem_out_var~326\ & (\mem_a~combout\(1) & (B7_q[15])))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~326\,
	datab => \mem_a~combout\(1),
	datac => \mem_d[15]~15\,
	datad => \inst_mem:7:mem_reg|q\(15),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~327\,
	regout => \inst_mem:6:mem_reg|q\(15));

-- Location: LC_X5_Y9_N3
\inst_mem:8:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:8:mem_reg|q\(15) = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[8]~18_combout\, \mem_d[15]~15\, , , VCC)

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
	datac => \mem_d[15]~15\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:8:mem_reg|q\(15));

-- Location: LC_X7_Y7_N5
\inst_mem:10:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~328\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B11_q[15]))) # (!\mem_a~combout\(1) & (\inst_mem:8:mem_reg|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:8:mem_reg|q\(15),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~328\,
	regout => \inst_mem:10:mem_reg|q\(15));

-- Location: LC_X11_Y6_N6
\inst_mem:11:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:11:mem_reg|q\(15) = DFFEAS((((\mem_d[15]~15\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[11]~19_combout\, , , , )

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
	datad => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:11:mem_reg|q\(15));

-- Location: LC_X9_Y6_N0
\inst_mem:9:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~329\ = (\mem_out_var~328\ & ((\inst_mem:11:mem_reg|q\(15)) # ((!\mem_a~combout\(0))))) # (!\mem_out_var~328\ & (((B10_q[15] & \mem_a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~328\,
	datab => \inst_mem:11:mem_reg|q\(15),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(0),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[9]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~329\,
	regout => \inst_mem:9:mem_reg|q\(15));

-- Location: LC_X5_Y7_N9
\inst_mem:3:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:3:mem_reg|q\(15) = DFFEAS((((\mem_d[15]~15\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[3]~27_combout\, , , , )

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
	datad => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:3:mem_reg|q\(15));

-- Location: LC_X4_Y7_N7
\inst_mem:0:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:0:mem_reg|q\(15) = DFFEAS((\mem_d[15]~15\), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[0]~26_combout\, , , , )

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
	dataa => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:0:mem_reg|q\(15));

-- Location: LC_X6_Y7_N1
\inst_mem:2:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~330\ = (\mem_a~combout\(0) & (((\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & ((\mem_a~combout\(1) & ((B3_q[15]))) # (!\mem_a~combout\(1) & (\inst_mem:0:mem_reg|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_a~combout\(0),
	datab => \inst_mem:0:mem_reg|q\(15),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~330\,
	regout => \inst_mem:2:mem_reg|q\(15));

-- Location: LC_X6_Y7_N0
\inst_mem:1:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~331\ = (\mem_a~combout\(0) & ((\mem_out_var~330\ & (\inst_mem:3:mem_reg|q\(15))) # (!\mem_out_var~330\ & ((B2_q[15]))))) # (!\mem_a~combout\(0) & (((\mem_out_var~330\))))

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
	dataa => \inst_mem:3:mem_reg|q\(15),
	datab => \mem_a~combout\(0),
	datac => \mem_d[15]~15\,
	datad => \mem_out_var~330\,
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~331\,
	regout => \inst_mem:1:mem_reg|q\(15));

-- Location: LC_X12_Y8_N6
\mem_out_var~332\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~332_combout\ = (\mem_a~combout\(2) & (((\mem_a~combout\(3))))) # (!\mem_a~combout\(2) & ((\mem_a~combout\(3) & (\mem_out_var~329\)) # (!\mem_a~combout\(3) & ((\mem_out_var~331\)))))

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
	dataa => \mem_a~combout\(2),
	datab => \mem_out_var~329\,
	datac => \mem_a~combout\(3),
	datad => \mem_out_var~331\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~332_combout\);

-- Location: LC_X13_Y8_N4
\inst_mem:12:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:12:mem_reg|q\(15) = DFFEAS((((\mem_d[15]~15\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[12]~30_combout\, , , , )

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
	datad => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[12]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:12:mem_reg|q\(15));

-- Location: LC_X14_Y9_N4
\inst_mem:13:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~333\ = (\mem_a~combout\(0) & (((B14_q[15]) # (\mem_a~combout\(1))))) # (!\mem_a~combout\(0) & (\inst_mem:12:mem_reg|q\(15) & ((!\mem_a~combout\(1)))))

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
	dataa => \inst_mem:12:mem_reg|q\(15),
	datab => \mem_a~combout\(0),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[13]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~333\,
	regout => \inst_mem:13:mem_reg|q\(15));

-- Location: LC_X14_Y10_N2
\inst_mem:15:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \inst_mem:15:mem_reg|q\(15) = DFFEAS((((\mem_d[15]~15\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , \wrarr[15]~31_combout\, , , , )

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
	datad => \mem_d[15]~15\,
	aclr => \rst~combout\,
	ena => \wrarr[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_mem:15:mem_reg|q\(15));

-- Location: LC_X14_Y9_N9
\inst_mem:14:mem_reg|q[15]\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~334\ = (\mem_out_var~333\ & ((\inst_mem:15:mem_reg|q\(15)) # ((!\mem_a~combout\(1))))) # (!\mem_out_var~333\ & (((B15_q[15] & \mem_a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \mem_out_var~333\,
	datab => \inst_mem:15:mem_reg|q\(15),
	datac => \mem_d[15]~15\,
	datad => \mem_a~combout\(1),
	aclr => \rst~combout\,
	sload => VCC,
	ena => \wrarr[14]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~334\,
	regout => \inst_mem:14:mem_reg|q\(15));

-- Location: LC_X12_Y8_N4
\mem_out_var~335\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~335_combout\ = (\mem_a~combout\(2) & ((\mem_out_var~332_combout\ & ((\mem_out_var~334\))) # (!\mem_out_var~332_combout\ & (\mem_out_var~327\)))) # (!\mem_a~combout\(2) & (((\mem_out_var~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mem_a~combout\(2),
	datab => \mem_out_var~327\,
	datac => \mem_out_var~332_combout\,
	datad => \mem_out_var~334\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~335_combout\);

-- Location: LC_X8_Y6_N8
\mem_out_var~336\ : maxv_lcell
-- Equation(s):
-- \mem_out_var~336_combout\ = (!\mem_out_var~20_combout\ & ((\mem_a~combout\(4) & (\mem_out_var~325_combout\)) # (!\mem_a~combout\(4) & ((\mem_out_var~335_combout\)))))

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
	dataa => \mem_out_var~325_combout\,
	datab => \mem_out_var~20_combout\,
	datac => \mem_a~combout\(4),
	datad => \mem_out_var~335_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \mem_out_var~336_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~21_combout\,
	oe => VCC,
	padio => ww_mem_out(0));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~42_combout\,
	oe => VCC,
	padio => ww_mem_out(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~63_combout\,
	oe => VCC,
	padio => ww_mem_out(2));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~84_combout\,
	oe => VCC,
	padio => ww_mem_out(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~105_combout\,
	oe => VCC,
	padio => ww_mem_out(4));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~126_combout\,
	oe => VCC,
	padio => ww_mem_out(5));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~147_combout\,
	oe => VCC,
	padio => ww_mem_out(6));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~168_combout\,
	oe => VCC,
	padio => ww_mem_out(7));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~189_combout\,
	oe => VCC,
	padio => ww_mem_out(8));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~210_combout\,
	oe => VCC,
	padio => ww_mem_out(9));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~231_combout\,
	oe => VCC,
	padio => ww_mem_out(10));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~252_combout\,
	oe => VCC,
	padio => ww_mem_out(11));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~273_combout\,
	oe => VCC,
	padio => ww_mem_out(12));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~294_combout\,
	oe => VCC,
	padio => ww_mem_out(13));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~315_combout\,
	oe => VCC,
	padio => ww_mem_out(14));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\mem_out[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \mem_out_var~336_combout\,
	oe => VCC,
	padio => ww_mem_out(15));
END structure;


