library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TwoStep_JK_Trigger is
    Port ( J : in  STD_LOGIC;
           C : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end TwoStep_JK_Trigger;

architecture Behavioral of TwoStep_JK_Trigger is
signal QM : STD_LOGIC := '0';
begin
	process(J, C, K)
	begin
		if (C = '1') then
			if (J = '1' AND K = '1') then
				null;
			elsif (J = '1') then
				QM <= '1';
			elsif (K = '1') then
				QM <= '0';
			end if;
		elsif (C = '0') then
			Q <= QM;
		end if;
	end process;

end Behavioral;

