library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux3to8 is
	port(s:in std_logic_vector(2 downto 0);
		y:out std_logic_vector(7 downto 0));
end demux3to8;

architecture behavioral of demux3to8 is
begin
	y(0)<='1' when s="000"else'0';
	y(1)<='1' when s="001"else'0';
	y(2)<='1' when s="010"else'0';
	y(3)<='1' when s="011"else'0';
	y(4)<='1' when s="100"else'0';
	y(5)<='1' when s="101"else'0';
	y(6)<='1' when s="110"else'0';
	y(7)<='1' when s="111"else'0';
end behavioral;