library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
  
entity mux4to1 is
   port(S1,S0,D0,D1,D2,D3:in std_logic; Y:out std_logic);
end mux4to1;
  
architecture data of mux4to1 is
begin 
   Y<= (not S0 and not S1 and D0) or 
      (S0 and not S1 and D1) or 
      (not S0 and S1 and D2) or
      (S0 and S1 and D3); 
end data;