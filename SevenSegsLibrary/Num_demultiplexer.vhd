library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Num_demultiplexer is
    Port ( ENABLE : in  STD_LOGIC;
           DIGIT : in  STD_LOGIC_VECTOR (1 downto 0);
           NUMBER : in  STD_LOGIC_VECTOR (3 downto 0);
           NUM_0 : out  STD_LOGIC_VECTOR (3 downto 0);
           NUM_1 : out  STD_LOGIC_VECTOR (3 downto 0);
           NUM_2 : out  STD_LOGIC_VECTOR (3 downto 0);
           NUM_3 : out  STD_LOGIC_VECTOR (3 downto 0));
end Num_demultiplexer;

architecture Behavioral of Num_demultiplexer is

begin
	process(ENABLE, DIGIT, NUMBER)
	begin
		if (ENABLE = '1') then
			case(DIGIT) is
				when "00" => NUM_0 <= NUMBER;
				when "01" => NUM_1 <= NUMBER;
				when "10" => NUM_2 <= NUMBER;
				when "11" => NUM_3 <= NUMBER;
				when others => null;
			end case;
		end if;
	end process;

end Behavioral;

