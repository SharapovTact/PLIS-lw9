library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sync_RS_Trigger is
    Port ( R : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           bQ : out  STD_LOGIC);
end Sync_RS_Trigger;

architecture Behavioral of Sync_RS_Trigger is

begin
	process(R, C, S)
	begin
		if (C'event AND C = '1') then
			Q <= D;
			bQ <= not(D);
		end if;
	end process;

end Behavioral;

