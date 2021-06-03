library ieee;
use ieee.std_logic_1164.all;

entity Project is
PORT (
	IN_PD: in std_logic;			-- input of Infrared sensor
	IN_PR: in std_logic;			-- input of Photo Resistor
	IN_MC: in std_logic_vector(1 downto 0); -- input of claps
	clk: in std_logic;			-- clock
	reset: in std_logic;			-- reset
	OUTPUT: out std_logic);			--Output of the project
end Project;

architecture Project of Project is
signal I_FF1, I_FF2 : std_logic; -- initial value of output of T FlipFLops
signal O_FF1, O_FF2, O_FF : std_logic; -- from left to right: output of FF1, output of FF2, out of AND Gate with inputs O_FF1 and O_FF2
signal O_LR  : std_logic; 		-- output of AND gate with inputs IN_PD and IN_PR
signal tmp:  std_logic;			--for debugging
begin


	process(clk,reset,O_FF1, O_FF2, O_FF)
	begin
		I_FF1 <= '0'; I_FF2 <= '0'; --setting default output of FlipFlops to be zero

		--MIC DESIGN
			-- T-FF 1 
		if (reset = '1') then
			O_FF1 <= '0';

      		elsif (clk'event and clk = '1' ) then

          		if(IN_MC(0) = '1') then 
				O_FF1 <= not (I_FF1);
				tmp <='1';

          		else 
				O_FF1 <=  I_FF1;
				

          		end if;
     		end if;
		
			--T-FF2
		if (reset = '1') then
			O_FF2 <= '0';
			tmp <='1';

      		elsif (clk'event and clk = '1' ) then

          		if(IN_MC(1) = '1') then 
				O_FF2 <= not(I_FF2);
				
          		else 
				O_FF2 <=  I_FF2;
				tmp <='0';

          		end if;
     		end if;
		--MIC END
		
		O_FF <= (O_FF1 and O_FF2);		
		
	
		O_LR <= (IN_PD and IN_PR);
		

		OUTPUT <= ((not(O_FF)) and O_LR) or(O_FF and (not(O_LR)));	-- Output of Mux circuit

		end process;
end Project;