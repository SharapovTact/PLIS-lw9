
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Divider is
    Port ( V10 : in  STD_LOGIC;
           Sign : out  STD_LOGIC);
end Divider;

architecture Behavioral of Divider is
signal sig : STD_LOGIC := '0';
begin
	process(V10)
	variable cnt : integer := 0;
	begin
		if (V10'event AND V10 = '1') then
			cnt := cnt + 1;
			if (cnt = 100000000) then
				sig <= not(sig);
				cnt := 0;
			end if;
		end if;
	end process;
	Sign <= sig;

end Behavioral;

