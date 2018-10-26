library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity uP is
   port(instruction: in std_logic_vector(15 downto 0);
			clk: in std_logic;
			rst: in std_logic);
end entity;

architecture Struct of uP is

component ALU_final is
   port(alu_a,alu_b: in std_logic_vector(15 downto 0);
		k1: in std_logic; op: in std_logic;
		alu_out: out std_logic_vector(15 downto 0);
      c_out: out std_logic);
end component;

component mux4to1 is
   port(S1,S0:in std_logic;
	D0,D1,D2,D3:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end component;

component  bit_reg is 
 port (D, CLK ,reset, controlsignal : in std_logic; Q: out std_logic); --controlsignal is the Enable signal
end  component;

component Reg is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end component;

component rf is 
	port(
			 rf_a1, rf_a2, rf_a3   : inout std_logic_vector(2 DOWNTO 0);
			 m : in std_logic_vector(2 downto 0);
			 rst : in std_logic; -- async. clear.
			 clk : in std_logic; -- clock.
			 wr_rf  : in std_logic; -- write
			 en7 : in std_logic; -- enable for register 7
			 alu_out, t2_out, PC_out, t3_out, rf_d3 : inout std_logic_vector(15 downto 0);
			 rf_d1,rf_d2  : inout std_logic_vector(15 DOWNTO 0)); -- output
end component;

component mux2to1 is
   port(S0:in std_logic;
	D0,D1:in std_logic_vector(2 downto 0);
	Y:out std_logic_vector(2 downto 0));
end component;

component mux2to1_16bit is
   port(S0:in std_logic;
	D0,D1:in std_logic_vector(15 downto 0);
	Y:out std_logic_vector(15 downto 0));
end component;

component mux4to1_3bit is
   port(S1,S0:in std_logic;
	D0,D1,D2,D3:in std_logic_vector(2 downto 0);
	Y:out std_logic_vector(2 downto 0));
end component;

component SE9 is
   port(ip: in std_logic_vector(8 downto 0);
			op: out std_logic_vector(15 downto 0));
end component;

component SE6 is
   port(ip: in std_logic_vector(5 downto 0);
			op: out std_logic_vector(15 downto 0));
end component;

component Shift7 is
   port(ip: in std_logic_vector(8 downto 0);
			op: out std_logic_vector(15 downto 0));
end component;

component PEN is 
	port (penin: in std_logic_vector(7 downto 0);
			tp : out std_logic;
			pennext: out std_logic_vector(7 downto 0);
			penout: out std_logic_vector(2 downto 0));
end component;


signal c,carry : std_logic;
signal G2,G1,H2,H1,k1,op,L1,P2,P1,EnP,D,E1,E2,F,M1,M2,M3,en7,WR,En1,En2,En3,I,J1,J2,A1,A2 : std_logic;
signal t1_in,t1_out,t2_in,t2_out,t3_in,t3_out,mem_out,PC_out,alu_a,alu_b,SE6_out,SE9_out,alu_out,pc_in,shift7_out,rf_d3,rf_d1,rf_d2: std_logic_vector(15 downto 0);
signal ir9_11,ir3_5,ir6_8,PEN_out,rf_a1,rf_a2,rf_a3: std_logic_vector(2 downto 0);
signal ir0_8 : std_logic_vector(8 downto 0);
signal ir0_5 : std_logic_vector(5 downto 0);
signal ir0_7 : std_logic_vector(7 downto 0);

begin
	
	mux_alu_a: mux4to1 port map (S1=>G2,S0=>G1,D0=>t1_out,D1=>t2_out,D2=>t3_out,D3=>PC_out,Y=>alu_a);
	mux_alu_b: mux4to1 port map (S1=>H2,S0=>H1,D0=>"0000000000000001",D1=>t2_out,D2=>SE6_out,D3=>SE9_out,Y=>alu_b);
	alu: ALU_final port map (alu_a=>alu_a,alu_b=>alu_b,k1=>k1,op=>op,alu_out=>alu_out,c_out=>c);

	c_bit: bit_reg port map (D=>c,CLK=>clk,reset=>rst,controlsignal=>L1,Q=>carry);
	
	mux_pc: mux4to1 port map (S1=>P2,S0=>P1,D0=>alu_out,D1=>t2_out,D2=>t3_out,D3=>alu_out,Y=>PC_in);
	
	PC_reg: Reg port map (d=>PC_in,en=>EnP,rst=>rst,clk=>clk,q=>pc_out);
	mux_a1 : mux2to1 port map (S0=>D,D0=>ir9_11,D1=>PEN_out,Y=>rf_a1);
	mux_a3 : mux4to1_3bit port map (S0=>E1,S1=>E2,D0=>ir9_11,D1=>ir3_5,D2=>ir6_8,D3=>PEN_out,Y=>rf_a3);
	mux_d3 : mux2to1_16bit port map (S0=>F,D0=>t3_out,D1=>shift7_out,Y=>rf_d3);
	rf_inst : rf port map (rf_a1=>rf_a1,rf_a2=>ir6_8,rf_a3=>rf_a3,m(0)=>M1,m(1)=>M2,m(2)=>M3,rst=>rst,clk=>clk,wr_rf=>WR,en7=>en7,alu_out=>alu_out,PC_out=>PC_out, t3_out=>t3_out, rf_d3=>rf_d3,rf_d1=>rf_d1,rf_d2=>rf_d2);
	
	mux_t1: mux2to1_16bit port map (S0=>I,D0=>alu_out,D1=>rf_d1,Y=>t1_in);
	t1_reg: Reg port map (d=>t1_in,en=>En1,rst=>rst,clk=>clk,q=>t1_out);
	
	mux_t2: mux4to1 port map(S0=>J1,S1=>J2,D0=>rf_d1,D1=>rf_d2,D2=>alu_out,D3=>alu_out,Y=>t2_in);
	t2_reg: Reg port map (d=>t2_in,en=>En2,rst=>rst,clk=>clk,q=>t2_out);
	
	mux_t3: mux4to1 port map (S0=>A1,S1=>A2,D0=>alu_out,D1=>mem_out,D2=>PC_out,D3=>alu_out,Y=>t3_in);
	t3_reg: Reg port map (d=>t3_in,en=>En3,rst=>rst,clk=>clk,q=>t3_out);
	
	se9_inst: SE9 port map (ip=>ir0_8,op=>SE9_out);
	se6_inst: SE6 port map (ip=>ir0_5,op=>SE6_out);
	Shift7_inst: Shift7 port map (ip=>ir0_8,op=>Shift7_out);
	
	--mux_pen: mux2to1_8bit port map (S0=>,D0=>,D1=>);
	
	--PEN_inst: 
	
end Struct;