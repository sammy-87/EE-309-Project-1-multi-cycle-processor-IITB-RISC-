library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity SE6 is
   port(ip: in std_logic_vector(5 downto 0);
			op: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of SE6 is

begin
	op(5 downto 0) <= ip(5 downto 0);
	op(15 downto 6) <= "0000000000";
	
end Struct;