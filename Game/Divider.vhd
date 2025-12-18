library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Divider is
    Port ( V10 : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (1 downto 0));
end Divider;

architecture Behavioral of Divider is
signal sig : std_logic_vector(1 downto 0) := "00";
begin
	process(V10) --вызывается при изменении сигнала D
	variable counter : integer := 0;
	begin
		if (V10'event and V10 = '1') then
			if (counter = 400000) then 
				counter := 0;
				sig <= sig + '1';
			else
				counter := counter + 1;
			end if;
		end if;
		
	end process;
	Q <= sig;
end Behavioral;

