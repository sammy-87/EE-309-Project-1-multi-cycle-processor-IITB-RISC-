library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is 
	port(
		 mem_d   : in std_logic_vector(15 DOWNTO 0);
		 mem_a   : in std_logic_vector(15 downto 0);
		 rd_bar  : in std_logic; -- read enable.
		 wr_bar  : in std_logic; -- write enable
		 rst : in std_logic; -- clear.
		 clk : in std_logic; -- clock.
		 mem_out : out std_logic_vector(15 DOWNTO 0)); -- output
end memory;

architecture structure of memory is 
--
--component Reg is 
--	port(
--		 d   : in std_logic_vector(15 DOWNTO 0);
--		 en  : in std_logic; -- load/enable.
--		 rst : in std_logic; -- async. clear.
--		 clk : in std_logic; -- clock.
--		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
--end component;

type memarr is array(0 to 31) of std_logic_vector(15 downto 0);
signal RAM : memarr := (others => "0000000000000000");
signal addr : std_logic_vector(4 downto 0);
--signal wrarr : std_logic_vector(31 downto 0) := ( others => '0');
--signal rd : std_logic_vector(15 downto 0);

begin

addr <= mem_a(4 downto 0);

--
--inst_mem : for i in 0 to 31 generate
--
--	mem_reg : Reg port map (d => mem_d, en => wrarr(i), rst => rst, clk => clk, q => mem1(i));
--		
--end generate inst_mem;

	mem_proc : process(rst, wr_bar, rd_bar, clk, addr)

	--	variable wr_var : std_logic_vector(31 downto 0) := ( others => '0');
	--	variable mem_out_var : std_logic_vector(15 downto 0) := (others => '0');

		begin
			if rst ='1' then
				RAM <= (others => "0000000000000000");
		
			elsif rising_edge (clk) then
				
				if wr_bar ='0' then
					RAM(to_integer(unsigned(addr))) <= mem_d;
				
				elsif rd_bar = '0' then
					mem_out <= RAM(to_integer(unsigned(addr)));
				end if;
				
			end if;	
					
	end process mem_proc;

end structure;

