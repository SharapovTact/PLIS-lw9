library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_Trigger is
    Port ( T : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           bQ : out  STD_LOGIC);
end T_Trigger;

architecture Behavioral of T_Trigger is
signal clk : std_logic := '1';
begin
	process(T)
	begin
		if (T'event AND T = '1') then
			clk <= not(clk);
			Q <= clk;
			bQ <= not(clk);
		end if;
	end process;
	Q <= clk;
	bQ <= not(clk);

end Behavioral;

