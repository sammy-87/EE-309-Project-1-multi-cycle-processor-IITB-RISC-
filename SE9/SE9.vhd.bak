library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity SE9 is
   port(ip: in std_logic_vector(8 downto 0);
			op: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of SE9 is

begin
	op(8 downto 0) <= ip(8 downto 0);
	op(15 downto 9) <= "0000000";
	
end Struct;