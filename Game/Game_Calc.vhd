library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Game_Calc is
    Port ( E : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           DB_IN : in  STD_LOGIC_VECTOR (1 downto 0);
			  DBM_IN : in  STD_LOGIC_VECTOR (3 downto 0) := "1011";
           DB_OUT : out  STD_LOGIC_VECTOR (3 downto 0));
end Game_Calc;

architecture Behavioral of Game_Calc is
signal A : STD_LOGIC_VECTOR (3 downto 0) := DBM_IN;
signal B : STD_LOGIC_VECTOR (1 downto 0) := DB_IN;
begin
	process(E, RST)
	begin
		if (E'event and E = '1') then
			DB_OUT <= std_logic_vector(unsigned(A) - unsigned(B));
		elsif (RST'event and RST = '1') then
			 DB_OUT <= "1011";
		end if;
	end process;

end Behavioral;

