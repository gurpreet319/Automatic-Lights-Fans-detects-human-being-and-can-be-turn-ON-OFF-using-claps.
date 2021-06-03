library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter is
    -- Port Declaration
    Port (clk : in STD_LOGIC;
          preset : in STD_LOGIC;
          reset : in STD_LOGIC;
          Q : out STD_LOGIC_VECTOR (3 downto 0));
end Counter;

architecture RTL of Counter is

-- Component Declaration
component JK_FF is
     Port ( J : in STD_LOGIC;
            K : in STD_LOGIC;
            clk : in STD_LOGIC;
            preset : in STD_LOGIC;
            reset : in STD_LOGIC;
            Q : out STD_LOGIC);
end component;

    -- Signal Declaration
    signal temp : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal JK_output : STD_LOGIC_VECTOR (2 downto 0);

begin

-- Component Instantiation

	FF1 : JK_FF Port map (J => '1', K => '1', clk => clk, preset => preset, reset => reset, Q => temp(0));            
	JK_output(0) <= not(temp(3)) and temp(0);


	FF2 : JK_FF Port map (J => JK_output(0), K => JK_output(0), clk => clk, preset => preset, reset => reset, Q => temp(1));
        JK_output(1) <= temp(0) and temp(1);

	FF3 : JK_FF Port map (J => JK_output(1), K => JK_output(1), clk => clk, preset => preset, reset => reset, Q => temp(2));                    
	JK_output(2) <= (temp(0) and temp(3)) or (temp(2) and JK_output(1));


FF4 : JK_FF Port map (J => JK_output(2), K => JK_output(2), clk => clk, preset => preset, reset => reset, Q => temp(3));

Q <= temp;

end RTL;
