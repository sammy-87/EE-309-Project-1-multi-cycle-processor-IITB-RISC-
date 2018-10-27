library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity uP is
   port(--instruction: in std_logic_vector(15 downto 0);
			clk: in std_logic;
			rst_m: in std_logic);
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
			 rf_a1, rf_a2	, rf_a3   : in std_logic_vector(2 DOWNTO 0);
			 m : in std_logic_vector(2 downto 0);
			 rst : in std_logic; -- async. clear.
			 clk : in std_logic; -- clock.
			 wr_rf  : in std_logic; -- write
			 en7 : in std_logic; -- enable for register 7
			 alu_out, t2_out, PC_out, t3_out, rf_d3 : in std_logic_vector(15 downto 0);
			 rf_d1,rf_d2  : out std_logic_vector(15 DOWNTO 0)); -- output
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

component mux2to1_8bit is
   port(S0:in std_logic;
	D0,D1:in std_logic_vector(7 downto 0);
	Y:out std_logic_vector(7 downto 0));
end component;

component Reg8 is 
	port(
		 d   : in std_logic_vector(7 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(7 DOWNTO 0)); -- output
end component;

component memory is 
	port(
		 mem_d   : in std_logic_vector(15 DOWNTO 0);
		 mem_a   : in std_logic_vector(15 downto 0);
		 rd_bar  : in std_logic; -- read enable.
		 wr_bar  : in std_logic; -- write enable
		 rst : in std_logic; -- clear.
		 clk : in std_logic; -- clock.
		 mem_out : out std_logic_vector(15 DOWNTO 0)); -- output
end component;

component outputlogic is
	port(ir : in std_logic_vector(15 DOWNTO 0);
		tp,tz : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		C : in std_logic;
		Z : in std_logic;
		Rf_a3 : in std_logic_vector(2 DOWNTO 0);
		rst_i : out std_logic;
		--currentstate : inout std_logic_vector(4 DOWNTO 0);
		control_signal : out std_logic_vector(37 DOWNTO 0);
		nextstate : inout std_logic_vector(4 DOWNTO 0));
end component;


signal c,carry,tp,tz,zero,rst1,rst2,rst : std_logic;
signal G2,G1,H2,H1,k1,op,L1,L2,P2,P1,EnP,D,E1,E2,F,M1,M2,M3,en7,WR,En1,En2,En3,I,J1,J2,A1,A2,EnPEN,EnI,N,B1,B2,C1,wr_bar,rd_bar : std_logic;
signal t1_in,t1_out,t2_in,t2_out,t3_in,t3_out,mem_out,PC_out,alu_a,alu_b,SE6_out,SE9_out,alu_out,pc_in,shift7_out,mem_a,mem_d,rf_d3,rf_d1,rf_d2,ir: std_logic_vector(15 downto 0);
signal ir9_11,ir3_5,ir6_8,PEN_out,rf_a1,rf_a2,rf_a3: std_logic_vector(2 downto 0);
signal ir0_8 : std_logic_vector(8 downto 0);
signal ir0_5 : std_logic_vector(5 downto 0);
signal ir0_7,PEN_next,PEN_in_reg,PEN_out_reg : std_logic_vector(7 downto 0);
--signal control_signal: std_logic_vector(37 downto 0);
signal nextstate: std_logic_vector(4 downto 0);
begin
	
	mux_alu_a: mux4to1 port map (S1=>G2,S0=>G1,D0=>t1_out,D1=>t2_out,D2=>t3_out,D3=>PC_out,Y=>alu_a);
	mux_alu_b: mux4to1 port map (S1=>H2,S0=>H1,D0=>"0000000000000001",D1=>t2_out,D2=>SE6_out,D3=>SE9_out,Y=>alu_b);
	alu: ALU_final port map (alu_a=>alu_a,alu_b=>alu_b,k1=>k1,op=>op,alu_out=>alu_out,c_out=>c);

	c_bit: bit_reg port map (D=>c,CLK=>clk,reset=>rst,controlsignal=>L1,Q=>carry);
	
	mux_pc: mux4to1 port map (S1=>P2,S0=>P1,D0=>alu_out,D1=>t2_out,D2=>t3_out,D3=>Shift7_out,Y=>PC_in);
	
	PC_reg: Reg port map (d=>PC_in,en=>EnP,rst=>rst_m,clk=>clk,q=>pc_out);
	mux_a1 : mux2to1 port map (S0=>D,D0=>ir9_11,D1=>PEN_out,Y=>rf_a1);
	mux_a3 : mux4to1_3bit port map (S0=>E1,S1=>E2,D0=>ir9_11,D1=>ir3_5,D2=>ir6_8,D3=>PEN_out,Y=>rf_a3);
	mux_d3 : mux2to1_16bit port map (S0=>F,D0=>t3_out,D1=>shift7_out,Y=>rf_d3);
	mux_a2 : mux2to1 port map (S0=>'0',D0=>ir6_8,D1=>ir6_8,Y=>rf_a2);
	
	rf_inst : rf port map (rf_a1=>rf_a1,rf_a2=>rf_a2,rf_a3=>rf_a3,m(0)=>M1,m(1)=>M2,m(2)=>M3,rst=>rst,clk=>clk,wr_rf=>WR,en7=>en7,alu_out=>alu_out,PC_out=>PC_out, t3_out=>t3_out, t2_out=>t2_out, rf_d3=>rf_d3,rf_d1=>rf_d1,rf_d2=>rf_d2);
	
	mux_t1: mux2to1_16bit port map (S0=>I,D0=>alu_out,D1=>rf_d1,Y=>t1_in);
	t1_reg: Reg port map (d=>t1_in,en=>En1,rst=>rst,clk=>clk,q=>t1_out);
	
	mux_t2: mux4to1 port map(S0=>J1,S1=>J2,D0=>rf_d1,D1=>rf_d2,D2=>alu_out,D3=>alu_out,Y=>t2_in);
	t2_reg: Reg port map (d=>t2_in,en=>En2,rst=>rst,clk=>clk,q=>t2_out);
	
	mux_t3: mux4to1 port map (S0=>A1,S1=>A2,D0=>alu_out,D1=>mem_out,D2=>PC_out,D3=>alu_out,Y=>t3_in);
	t3_reg: Reg port map (d=>t3_in,en=>En3,rst=>rst,clk=>clk,q=>t3_out);
	tz <=  (not or_reduce(t3_out));
	z_bit: bit_reg port map (D=>tz,CLK=>clk,reset=>rst,controlsignal=>L2,Q=>zero);
	
	se9_inst: SE9 port map (ip=>ir0_8,op=>SE9_out);
	se6_inst: SE6 port map (ip=>ir0_5,op=>SE6_out);
	Shift7_inst: Shift7 port map (ip=>ir0_8,op=>Shift7_out);
	
	mux_pen: mux2to1_8bit port map (S0=>N,D0=>PEN_next,D1=>ir0_7,Y=>PEN_in_reg);
	reg_PEN: Reg8 port map (d=>PEN_in_reg,en=>EnPEN,rst=>rst,clk=>clk,q=>PEN_out_reg);
	PEN_inst: PEN port map(penin=>PEN_out_reg,tp=>tp,pennext=>PEN_next,penout=>PEN_out); 
	
	IR_reg: Reg port map (d=>mem_out,en=>EnI,rst=>rst_m,clk=>clk,q=>ir);
	
	ir0_5 <= ir(5 downto 0);
	ir0_7 <= ir(7 downto 0);
	ir0_8 <= ir(8 downto 0);
	ir3_5 <= ir(5 downto 3);
	ir6_8 <= ir(8 downto 6);
	ir9_11 <= ir(11 downto 9);
	
	mux_mem_a : mux4to1 port map (S0=>B1,S1=>B2,D0=>Pc_out,D1=>T1_out,D2=>T2_out,D3=>PC_out,Y=>mem_a);
	mux_mem_d : mux2to1_16bit port map (S0=>C1,D0=>T1_out,D1=>T2_out,Y=>mem_d);
	
	inst_mem : memory port map (mem_a=>mem_a,mem_d=>mem_d,wr_bar=>wr_bar,rd_bar=>rd_bar,mem_out=>mem_out,clk=>clk,rst=>rst_m);
	
	outputlogic_inst: outputlogic port map (ir=>ir,tp=>tp,tz=>tz,reset=>rst_m,clk=>clk,C=>carry,Z=>zero,Rf_a3=>rf_a3,rst_i=>rst,
	control_signal(0)=>RD_bar,
	control_signal(1)=>WR_bar,
	control_signal(2)=>B2,
	control_signal(3)=>B1,
	control_signal(4)=>C1,
	control_signal(5)=>EnI,
	control_signal(6)=>rst1,
	control_signal(7)=>WR,
	control_signal(8)=>D,
	control_signal(9)=>E2,
	control_signal(10)=>E1,
	control_signal(11)=>F,
	control_signal(12)=>En7,
	control_signal(13)=>M3,
	control_signal(14)=>M2,
	control_signal(15)=>M1,
	control_signal(16)=>K1,
	control_signal(17)=>OP,
	control_signal(18)=>G2,
	control_signal(19)=>G1,
	control_signal(20)=>H2,
	control_signal(21)=>H1,
	control_signal(22)=>En1,
	control_signal(23)=>I,
	control_signal(24)=>En2,
	control_signal(25)=>J2,
	control_signal(26)=>J1,
	control_signal(27)=>En3,
	control_signal(28)=>A2,
	control_signal(29)=>A1,
	control_signal(30)=>rst2,
	control_signal(31)=>EnP,
	control_signal(32)=>P2,
	control_signal(33)=>P1,
	control_signal(34)=>EnPEN,
	control_signal(35)=>L1,
	control_signal(36)=>L2,
	control_signal(37)=>N,nextstate=>nextstate);
	
end Struct;