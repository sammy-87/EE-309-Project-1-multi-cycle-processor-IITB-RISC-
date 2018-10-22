library ieee;
use ieee.std_logic_1164.all;

entity  bit is 
 port (D, CLK ,reset, controlsignal : in std_logic; Q: out std_logic); --controlsignal is the Enable signal
end  bit;

architecture WhatDoYouCare of bit is
signal temp_Q: std_logic;
begin

process(clk, reset, controlsignal, D)

begin
if(reset='1') then
	temp_Q<='0';
else 
	if(controlsignal='1') then     
	   	 temp_Q <= D;
	else
		temp_Q <= temp_Q;
	end if;
end if;
if CLK'event and (CLK = '1') then
	Q<=temp_Q;
end if;
end process;
end WhatDoYouCare;

---------------------------------------------------------
