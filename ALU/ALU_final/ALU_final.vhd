library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity ALU_final is
   port(alu_a,alu_b: in std_logic_vector(15 downto 0);
		k1: in std_logic; op: in std_logic;
		alu_out: out std_logic_vector(15 downto 0);
      c_out: out std_logic);
end entity;

architecture Struct of ALU_final is

component Add is
   port(x,y: in std_logic_vector(15 downto 0);
	
	s0: out std_logic_vector(15 downto 0);
        c_out: out std_logic);
end component;

signal temp: std_logic_vector(15 downto 0);

begin
	A1 : Add port map (x=>alu_a,y=>alu_b,s0=>temp,c_out=>c_out);
	proc_alu : process(alu_a,alu_b,k1,op,temp)
	begin
		if (k1='0') then --Addition
			alu_out<=temp;
		elsif (op='0') then --Nand
			alu_out<= (alu_a nand alu_b);
		else --Compare
			alu_out<= (alu_a xor alu_b);
		end if;
	end process proc_alu;
end Struct;