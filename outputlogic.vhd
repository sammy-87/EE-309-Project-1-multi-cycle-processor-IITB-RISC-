library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity nextstatelogic is
	port(ir : in std_logic_vector(15 DOWNTO 0);
		tp : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		currentstate : inout std_logic_vector(4 DOWNTO 0);
		control_signal : out std_logic_vector(36 DOWNTO 0);
		nextstate : inout std_logic_vector(4 DOWNTO 0));
end nextstatelogic;

architecture arch of nextstatelogic is
component statereg is 
  port(
     d   : in std_logic_vector(4 DOWNTO 0);
     rst : in std_logic; -- async. clear.
     clk : in std_logic; -- clock.
     q   : out std_logic_vector(4 DOWNTO 0));
end component;
begin
	state : statereg port map (d => nextstate, rst => reset, clk => clk, q => currentstate);
	statelogic_ist : process(currentstate, reset, ir, tp)
	begin
		if reset = '1' then
			nextstate <= "10000";
			control_signal <= (others =>'0');
		elsif currentstate = "10000" then
			nextstate <= "00000";
			control_signal <= (others => '0');
			control_signal(1) <= '1';
			control_signal(5) <= '1';
			control_signal(18) <= '1';
			control_signal(19) <= '1';
			control_signal(27) <= '1';
			control_signal(28) <= '1';
			control_signal(31) <= '1';

		elsif currentstate = "00000" then
			nextstate <= "00001";
			control_signal <= (others => '0');
			control_signal(0) <= '0';
			control_signal(1) <= '1';
			control_signal(7) <= '1';
			control_signal(22) <= '1';
			control_signal(23) <= '1';
			control_signal(24) <= '1';
			control_signal(25) <= '1';
			control_signal(34) <= '1';
			
		elsif currentstate = "00001" then
			nextstate(0) <=(ir(13) and ir(12)) or (ir(15) and ir(12)) or (ir(14) and ir(13));
			nextstate(1) <= ir(15) or ((not ir(13)) and (not ir(12))) or (ir(14) and ir(12)) or ((not ir(14)) and (not ir(12)));
			nextstate(2) <= ir(15) or (ir(14) and (not ir(13))) or ((not ir(14)) and ir(12));
			nextstate(3) <= ir(15) or (ir(14) and ir(13));
			nextstate(4) <= '0';
		elsif currentstate = "00010" then
			if ir(15 DOWNTO 12) = "1100" then
				nextstate <= "01101";
			elsif ir(15 DOWNTO 12) = "0000" or ir(15 DOWNTO 12) = "0010" then
				nextstate <= "00011";
			else
				nextstate <= "00000";
			end if;
		elsif currentstate = "00011" then
			nextstate <= "00000";
		elsif currentstate = "00100" then
			nextstate <= "00011";
		elsif currentstate = "00101" then
			nextstate <= "00000";
		elsif currentstate = "00110" then
			if ir(12) = '0' then
				nextstate <= "00111";
			else
				nextstate <= "01000";
			end if;
		elsif currentstate = "00111" then
			nextstate <= "00000";
		elsif currentstate = "01000" then
			nextstate <= "00000";
		elsif currentstate = "01001" then
			nextstate <= "01010";
		elsif currentstate = "01010" then
			if tp = '1' then
				nextstate <= "00000";
			else
				nextstate <= "01001";
			end if;
		elsif currentstate = "01011" then
			nextstate <= "01100";
		elsif currentstate = "01100" then
			if tp = '1' then
				nextstate <= "00000";
			else
				nextstate <= "01011";
			end if;
		elsif currentstate = "01101" then
			nextstate <= "00000";
		elsif currentstate = "01110" then
			nextstate <= "00000";
		elsif currentstate = "01111" then
			nextstate <= "00000";
		else  
			nextstate <= "00000";
		end if;
	end process;					
end arch ; -- arch
