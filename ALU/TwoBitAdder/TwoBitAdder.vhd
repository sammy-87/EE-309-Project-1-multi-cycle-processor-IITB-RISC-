library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity TwoBitAdder is
   port(x0,y0: in std_logic;
        s0,c0: out std_logic);
end entity;
architecture Struct of TwoBitAdder is
begin
   s0 <= (x0 xor y0);
	c0 <= (x0 and y0);
end Struct;