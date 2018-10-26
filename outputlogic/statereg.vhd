library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity statereg is 
  port(
     d   : in std_logic_vector(4 DOWNTO 0);
     rst : in std_logic; -- async. clear.
     clk : in std_logic; -- clock.
     q   : out std_logic_vector(4 DOWNTO 0)); -- output
end statereg;

architecture description of statereg is

begin
    process(clk, rst)
    begin
        if rst = '1' then
            q <= "10000";
        elsif rising_edge(clk) then
                q <= d;
        end if;
    end process;
end description;