library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RP4 is
    Port ( DB_IN : in  STD_LOGIC_VECTOR (3 downto 0);
           DB_OUT : out  STD_LOGIC_VECTOR (0 downto 0));
end RP4;

architecture Behavioral of RP4 is

begin
	process(DB_IN)
	begin
		DB_IN <= DB_OUT;
	end process;

end Behavioral;

