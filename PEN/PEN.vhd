library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity PEN is 
	port (penin: in std_logic_vector(7 downto 0);
			tp : out std_logic;
			pennext: out std_logic_vector(7 downto 0);
			penout: out std_logic_vector(2 downto 0));
end entity;

architecture behave of PEN is


begin 

	--tp <= not(penin(0) or penin(1) or penin(2) or penin(3) or penin(4) or penin(5) or penin(6) or penin(7));

	proc_pen : process(penin)
	begin
		variable next_var : std_logic_vector(7 downto 0);
		
		if (penin(7) = '1') then 
			penout <= "111";
			next_var := ("01111111" and penin);
		elsif (penin(6) = '1') then 
			penout <= "110";
			next_var := ("00111111" and penin);
		elsif (penin(5) = '1') then 
			penout <= "101";
			next_var := ("00011111" and penin);
		elsif (penin(4) = '1') then 
			penout <= "100";
			next_var := ("00001111" and penin);
		elsif (penin(3) = '1') then 
			penout <= "011";
			next_var := ("00000111" and penin);
		elsif (penin(2) = '1') then 
			penout <= "010";
			next_var := ("00000011" and penin);
		elsif (penin(1) = '1') then 
			penout <= "001";
			next_var := ("00000001" and penin);
		else
			penout <= "000";
			next_var := ("00000000" and penin);
		end if;
			
		pennext <= next_var;
		
		if next_var = "00000000" then
			tp <= '1';
		else
			tp <= '0';
		end if;

	end process proc_pen;

end behave;
