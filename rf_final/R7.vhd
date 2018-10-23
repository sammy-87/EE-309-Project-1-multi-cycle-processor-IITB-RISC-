library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity R7 is 
	port(
			 alu_out, t2_out, PC_out, t3_out, rf_d3  : inout std_logic_vector(15 DOWNTO 0);
			 m : in std_logic_vector(2 downto 0);
			 rst : in std_logic; -- async. clear.
			 clk : in std_logic; -- clock.
			 wr  : in std_logic; -- write
			 q : inout std_logic_vector(15 downto 0) ); -- output
end R7;

architecture behave of R7 is

--component Reg is 
--	port(
--		 d   : in std_logic_vector(15 DOWNTO 0);
--		 en  : in std_logic; -- load/enable.
--		 rst : in std_logic; -- async. clear.
--		 clk : in std_logic; -- clock.
--		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
--end component;

begin
	
	R7_proc : process(rst, clk, wr, m)
	begin
		if rst ='1' then
			q  <= (others => '0');
	
		elsif rising_edge(clk) then
			if wr = '1' then
				if m = "000" then
					q <= alu_out;
					
				elsif m = "001" then
					q <= t3_out;
					
				elsif m = "010" then
					q <= t2_out;
					
				elsif m = "011" then
					q <= PC_out;
					
				else 
					q <= rf_d3;
					
				end if;
			end if;
		end if;
	end process R7_proc;
end behave;	
	
	