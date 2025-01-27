library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux is
 port(n1,n0,s: in std_logic;  b: out std_logic);
 end entity;

 architecture Struct of mux is
 begin
 b <= ((s and n1) or ((not s) and n0));
 end Struct;


