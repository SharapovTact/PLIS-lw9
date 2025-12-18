
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Devider is
    Port ( CLK : in  STD_LOGIC;
           Tact : out  STD_LOGIC);
end Devider;

architecture Behavioral of Devider is
signal tct : STD_LOGIC := '0';
begin
	process(CLK)
	variable count : integer := 0;
	begin
		if (CLK'event and CLK = '1') then
			if (count = 1000000) then
				count := 0;
				tct <= not(tct);
				Tact <= tct;
			else
				count := count + 1;
			end if;
		end if;
	end process;

end Behavioral;

