library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is 
	port(
		 mem_d   : inout std_logic_vector(15 DOWNTO 0);
		 mem_a   : in std_logic_vector(4 downto 0);
		 rd_bar  : in std_logic; -- read enable.
		 wr_bar  : in std_logic; -- write enable
		 rst : in std_logic; -- clear.
		 clk : in std_logic; -- clock.
		 mem_out : out std_logic_vector(15 DOWNTO 0)); -- output
end memory;

architecture structure of memory is 

component Reg is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 rst : in std_logic; -- async. clear.
		 clk : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end component;

type memarr is array(0 to 31) of std_logic_vector(15 downto 0);
signal mem1 : memarr;
signal wrarr : std_logic_vector(31 downto 0) := ( others => '0');
--signal rd : std_logic_vector(15 downto 0);

begin



inst_mem : for i in 0 to 31 generate

	mem_reg : Reg port map (d => mem_d, en => wrarr(i), rst => rst, clk => clk, q => mem1(i));
		
end generate inst_mem;

mem_proc : process(wr_bar, rd_bar, mem_a)

	variable wr_var : std_logic_vector(31 downto 0) := ( others => '0');
	variable mem_out_var : std_logic_vector(15 downto 0) := (others => '0');

	begin

		if wr_bar ='0' then
			wr_var := (others => '0');
			wr_var(to_integer(unsigned(mem_a))) := '1';
			mem_out_var := (others => '0');
			
		elsif rd_bar = '0' then
			mem_out_var := mem1(to_integer(unsigned(mem_a)));
			wr_var := (others => '0');
			
		else 
			wr_var := (others => '0');
			mem_out_var := (others => '0');
			
		end if;

		wrarr <= wr_var;
		mem_out <= mem_out_var;
		
end process mem_proc;

end structure;

