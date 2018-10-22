library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Add is
   port(x,y: in std_logic_vector(7 downto 0);
	
	s0: out std_logic_vector(7 downto 0);
        c_out: out std_logic);
end entity;

architecture Struct of EightBitAdder is

component FullBitAdder is
   port(x0,y0,cin: in std_logic;
        s0,cout: out std_logic);
end component;

signal c: std_logic_vector(6 downto 0);

begin

F0:  FullBitAdder port map (x0=>x(0),y0=>y(0),cin=>'0',s0=>s0(0),cout=>c(0));

F1:  FullBitAdder port map  (x0=>x(1),y0=>y(1),cin=>c(0),s0=>s0(1),cout=>c(1));
F2:  FullBitAdder port map (x0=>x(2),y0=>y(2),cin=>c(1),s0=>s0(2),cout=>c(2));
F3:  FullBitAdder port map (x0=>x(3),y0=>y(3),cin=>c(2),s0=>s0(3),cout=>c(3));
F4:  FullBitAdder port map (x0=>x(4),y0=>y(4),cin=>c(3),s0=>s0(4),cout=>c(4));
F5:  FullBitAdder port map (x0=>x(5),y0=>y(5),cin=>c(4),s0=>s0(5),cout=>c(5));
F6:  FullBitAdder port map (x0=>x(6),y0=>y(6),cin=>c(5),s0=>s0(6),cout=>c(6));
F7:  FullBitAdder port map (x0=>x(7),y0=>y(7),cin=>c(6),s0=>s0(7),cout=>c_out);

end Struct;