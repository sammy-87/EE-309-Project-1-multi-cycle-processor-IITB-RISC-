library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Nand_self is
   port(x,y: in std_logic_vector(15 downto 0);
	
	s0: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of Nand_self is

begin


--ist_nand_self: for i in 0 to 15 generate
--s0(i)<=(x(i) nand y(i));
--end generate ist_add;
s0<= (x nand y);

end Struct;



