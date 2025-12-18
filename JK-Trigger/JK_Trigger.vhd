library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity JK_Trigger is
    Port ( J : in  STD_LOGIC;
           C : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end JK_Trigger;

architecture Behavioral of JK_Trigger is

begin
	process(J, C, K)
	begin
		if (C'event AND C = '1') then
			if (J = '1') AND (K = '1') then
				null;
			else
				if (J = '1') then
					Q <= '1';
				elsif (K = '1') then
					Q <= '0';
				end if;
			end if;
		end if;
	end process;

end Behavioral;

