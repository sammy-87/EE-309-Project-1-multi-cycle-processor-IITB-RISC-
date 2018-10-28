library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity outputlogic is
	port(ir : in std_logic_vector(15 DOWNTO 0);
		tp,tz : in std_logic;
		reset : in std_logic;
		clk : in std_logic;
		C : in std_logic;
		Z : in std_logic;
		Rf_a3 : in std_logic_vector(2 DOWNTO 0);
		rst_i : out std_logic;
		--currentstate : inout std_logic_vector(4 DOWNTO 0);
		control_signal : out std_logic_vector(37 DOWNTO 0);
		nextstate : inout std_logic_vector(4 DOWNTO 0));
end outputlogic;

architecture arch of outputlogic is
component statereg is 
  port(
     d   : in std_logic_vector(4 DOWNTO 0);
     rst : in std_logic; -- async. clear.
     clk : in std_logic; -- clock.
     q   : out std_logic_vector(4 DOWNTO 0));
end component;
signal currentstate: std_logic_vector(4 downto 0);
begin 
	state : statereg port map (d => nextstate, rst => reset, clk => clk, q => currentstate);
	
	statelogic_ist : process(currentstate, reset, ir, tp,tz,Rf_a3,C,Z)

	variable control_variable :  std_logic_vector(37 DOWNTO 0);
	
	begin 
		if reset = '1' then
			nextstate <= "10000";
			control_variable := (others =>'0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(6) := '1';
			control_variable(30) := '1';
			
		elsif currentstate = "10000" then
			control_variable := (others =>'0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(6) := '1';
			control_variable(30) := '1';
			nextstate <= "00000";
			

		elsif currentstate = "00000" then
			control_variable := (others => '0');
			control_variable(1) := '1';
			control_variable(5) := '1';
			control_variable(18) := '1';
			control_variable(19) := '1';
			control_variable(27) := '1';
			control_variable(28) := '1';
			control_variable(31) := '1';
			
			nextstate <= "00001";
			
			
		elsif currentstate = "00001" then
			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(22) := '1';
			control_variable(23) := '1';
			control_variable(24) := '1';
			control_variable(26) := '1';
			control_variable(34) := '1';
			control_variable(37) := '1';
			
			if ir(15 downto 12) = "0000" or ir(15 downto 12) = "0010" or ir(15 downto 12) = "1100" then 
				nextstate <= "00010";
			
			elsif ir(15 downto 12) = "0001" then
				nextstate <= "00100";
				
			elsif ir(15 downto 12) = "0011" then  
				nextstate <= "00101";
				
			elsif ir(15 downto 12) = "0100" or ir(15 downto 12) = "0101"  then
				nextstate <= "00110";
				
			elsif ir(15 downto 12) = "0110" then
				nextstate <= "01001";
				
			elsif ir(15 downto 12) = "0111" then
				nextstate <= "01011";
				
			elsif ir(15 downto 12) = "1000" then
				nextstate <= "01110";
				
			elsif ir(15 downto 12) = "1001" then
				nextstate <= "01111";
				
			else 
				nextstate <= "00000";
			
			end if;

--			nextstate(0) <=(ir(13) and ir(12)) or (ir(15) and ir(12)) or (ir(14) and ir(13));
--			nextstate(1) <= ir(15) or ((not ir(13)) and (not ir(12))) or (ir(14) and ir(12)) or ((not ir(14)) and (not ir(12)));
--			nextstate(2) <= (not ir(15) and ir(14) and not ir(13)) or (ir(15) and (not ir(14))) or ((not ir(14)) and ir(12));
--			nextstate(3) <= (ir(15) or (not ir(14))) or (ir(14) and ir(13)) or (ir(15) and ir(12));
--			nextstate(4) <= '0';
			

		elsif currentstate = "00010" then
			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(21) := '1';
			
		
			if ir(15) = '1' then
				control_variable(16) := '1';
				control_variable(17) := '1';
				control_variable(27) := '1';

			elsif ((ir(0)='0') and (ir(1)='0')) or ((ir(0)='0') and (ir(1)='1') and C = '1') or ((ir(0)='1') and (ir(1)='0') and Z = '1') then   
				control_variable(27) := '1';
				if ir(13) = '1' then
					control_variable(16) :='1';
				else 
					control_variable(35) := '1';
				end if;

			elsif (((ir(0)='0') and (ir(1)='1') and C = '0') or ((ir(0)='1') and (ir(1)='0') and Z = '0')) then
				control_variable(12) := '1';
				control_variable(14) := '1';
				control_variable(15) := '1';
			
			else
				control_variable := (others => '0');
				control_variable(0) := '1';
				control_variable(1) := '1';
			end if;

			if ir(15 DOWNTO 12) = "1100" then
				nextstate <= "01101";
			
			elsif ir(15 DOWNTO 12) = "0000" or ir(15 DOWNTO 12) = "0010" then
				if ((ir(1 downto 0) = "10") and (C = '1')) or ((ir(1 downto 0) = "01") and (Z = '1')) or (ir(1 downto 0)="00") then 
					nextstate <= "00011";
				else 
					nextstate <= "00000";
				end if;
			else
				nextstate <= "00000";				

			end if;

		elsif currentstate = "00011" then
			nextstate <= "00000";
			control_variable := (others => '0');
				control_variable(0) := '1';
				control_variable(1) := '1';
				control_variable(7) := '1';
				control_variable(36) := '1';

				if ir(14) = '0' then
					if ir(12) = '0' then
						control_variable(10) := '1';
					else
						control_variable(9) := '1';
					end if;
				end if;
				
				if Rf_a3 = "111" then
					control_variable(12) := '1';
					control_variable(13) := '1';
					control_variable(31) := '1';
					control_variable(32) := '1';
				else
					control_variable(12) := '1';
					control_variable(14) := '1';
					control_variable(15) := '1';	
				end if;	

		elsif currentstate = "00100" then
			nextstate <= "00011";
			control_variable := (others => '0');
			control_variable(0)  := '1';
			control_variable(1)  := '1';
			control_variable(20) := '1';
			control_variable(27) := '1';
			control_variable(35) := '1';

		elsif currentstate = "00101" then
			nextstate <= "00000";
			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(7) := '1';
			control_variable(11) := '1';

			if Rf_a3 = "111" then
				control_variable(12) := '1';
				control_variable(13) := '1';
				control_variable(31) := '1';
				control_variable(32) := '1';
				if ir(15 downto 12) = "0011" then
					control_variable(33):='1';
				end if;
			else
				control_variable(12) := '1';
				control_variable(14) := '1';
				control_variable(15) := '1';	
			end if;	
		
		elsif currentstate = "00110" then
			
			if ir(12) = '0' then
				nextstate <= "00111";
			else
				nextstate <= "01000";
			end if;

			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(19) := '1';
			control_variable(20) := '1';
			control_variable(24) := '1';
			control_variable(25) := '1';

		elsif currentstate = "00111" then
			nextstate <= "00011";
			control_variable := (others => '0');
			control_variable(1) := '1';
			control_variable(2) := '1';
			control_variable(27) := '1';
			control_variable(29) := '1';

		elsif currentstate = "01000" then
			control_variable := (others => '0');
			control_variable(0)  := '1';
			control_variable(2)  := '1';
			control_variable(12) := '1';
			control_variable(14) := '1';
			control_variable(15) := '1';
			nextstate <= "00000";

		elsif currentstate = "01001" then
			nextstate <= "01010";
			control_variable := (others => '0');
			control_variable(1) := '1';
			control_variable(3) := '1';
			control_variable(22) := '1';
			control_variable(27) := '1';
			control_variable(29) := '1';

		elsif currentstate = "01010" then
			if tp = '1' then
				nextstate <= "00000";			
			else
				nextstate <= "01001";
			end if;

			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(7) := '1';
			control_variable(9) := '1';
			control_variable(10) := '1';
			control_variable(34) := '1';
			if Rf_a3 = "111" then
				control_variable(12) := '1';
				control_variable(13) := '1';
				control_variable(31) := '1';
				control_variable(32) := '1';
			else
				control_variable(12) := '1';
				control_variable(14) := '1';
				control_variable(15) := '1';	
			end if;	
			
			

		elsif currentstate = "01011" then
			nextstate <= "01100";
			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(8) := '1';
			control_variable(24) := '1';	
	
		elsif currentstate = "01100" then
			
			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(3) := '1';
			control_variable(4) := '1';
			control_variable(12) := '1';
			control_variable(14) := '1';
			control_variable(15) := '1';
			control_variable(22) := '1';
			control_variable(34) := '1';	
			
			
			if tp = '1' then
				nextstate <= "00000";
				
			else
				nextstate <= "01011";
				
			end if;

		elsif currentstate = "01101" then
			nextstate <= "00000";
			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(12) := '1';
			control_variable(18) := '1';
			control_variable(19) := '1';
			control_variable(20) := '1';

			if tz = '1' then
			control_variable(31) := '1';	

			else
			control_variable(14) := '1';
			control_variable(15) := '1';	
			
			end if;


		elsif currentstate = "01110" then
			nextstate <= "00000";
			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(7) := '1';
			control_variable(12) := '1';	
			control_variable(18) := '1';
			control_variable(20) := '1';
			control_variable(21) := '1';
			control_variable(31) := '1';

		elsif currentstate = "01111" then
			nextstate <= "00000";
			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			control_variable(7) := '1';
			control_variable(12) := '1';	
			control_variable(14) := '1';
			control_variable(31) := '1';	
			control_variable(33) := '1';	

		else  
			control_variable := (others => '0');
			control_variable(0) := '1';
			control_variable(1) := '1';
			
			nextstate <= "00000";
			
			

		end if;
		
		if currentstate = "10000" then
			rst_i <= '1';
		else 
			rst_i <= '0';
		end if;

	control_signal <= control_variable;

	end process;					
end arch ; -- arch