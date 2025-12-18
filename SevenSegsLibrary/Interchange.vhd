----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:51:58 12/15/2025 
-- Design Name: 
-- Module Name:    Multiplexer_of_numbers - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multiplexer_of_numbers is
    Port ( DIGIT : in  STD_LOGIC_VECTOR (1 downto 0);
           NUM_0 : in  STD_LOGIC_VECTOR (3 downto 0);
           NUM_1 : in  STD_LOGIC_VECTOR (3 downto 0);
           NUM_2 : in  STD_LOGIC_VECTOR (3 downto 0);
           NUM_3 : in  STD_LOGIC_VECTOR (3 downto 0);
           OUT_NUM : out  STD_LOGIC_VECTOR (3 downto 0));
end Multiplexer_of_numbers;

architecture Behavioral of Multiplexer_of_numbers is

begin
	process(DIGIT, NUM_0, NUM_1, NUM_2, NUM_3)
	begin
		case(DIGIT) is
			when "00" => OUT_NUM <= NUM_0;
			when "01" => OUT_NUM <= NUM_1;
			when "10" => OUT_NUM <= NUM_2;
			when "11" => OUT_NUM <= NUM_3;
			when others => OUT_NUM <= "0000";
		end case;
	end process;

end Behavioral;

