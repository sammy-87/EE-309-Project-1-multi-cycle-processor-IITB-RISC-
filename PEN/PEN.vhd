library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity PEN is 
	port (penin: in std_logic_vector(7 downto 0);
			pennext: out std_logic_vector(7 downto 0);
			penout: out std_logic_vector(2 downto 0));
end entity;

architecture behave of PEN is


begin 

	proc_pen : process(penin)
	begin
		if (penin(7) = '1') then 
			penout <= "111";
			pennext <= ("01111111" and penin);
		elsif (penin(6) = '1') then 
			penout <= "110";
			pennext <= ("00111111" and penin);
		elsif (penin(5) = '1') then 
			penout <= "101";
			pennext <= ("00011111" and penin);
		elsif (penin(4) = '1') then 
			penout <= "100";
			pennext <= ("00001111" and penin);
		elsif (penin(3) = '1') then 
			penout <= "011";
			pennext <= ("00000111" and penin);
		elsif (penin(2) = '1') then 
			penout <= "010";
			pennext <= ("00000011" and penin);
		elsif (penin(1) = '1') then 
			penout <= "001";
			pennext <= ("00000001" and penin);
		else
			penout <= "000";
			pennext <= ("00000000" and penin);
		end if;
	end process proc_pen;
	
end behave;