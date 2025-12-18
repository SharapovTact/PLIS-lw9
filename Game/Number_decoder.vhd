----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:28:17 12/18/2025 
-- Design Name: 
-- Module Name:    Number_Decoder - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Number_Decoder is
    Port ( DIGIT : in  STD_LOGIC_VECTOR (3 downto 0);
           PIN_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Number_Decoder;

architecture Behavioral of Number_Decoder is

begin
	process(DIGIT)
	begin
		case(DIGIT) is
									 --ABCDEFGP
			when "0000" => PIN_OUT <= not("11111100");--0
			when "0001" => PIN_OUT <= not("01100000");
			when "0010" => PIN_OUT <= not("11011010");
			when "0011" => PIN_OUT <= not("11110010");
			when "0100" => PIN_OUT <= not("01100110");
			when "0101" => PIN_OUT <= not("10110110");
			when "0110" => PIN_OUT <= not("10111110");
			when "0111" => PIN_OUT <= not("11100000");--7
									 --ABCDEFGP
			when "1000" => PIN_OUT <= not("11111110");--8
			when "1001" => PIN_OUT <= not("11110110");
			when "1010" => PIN_OUT <= not("11101110");
			when "1011" => PIN_OUT <= not("00111110");
			when "1100" => PIN_OUT <= not("10011100");
			when "1101" => PIN_OUT <= not("01111010");--13
			when others => PIN_OUT <= not("00000000");
		end case;
	end process;
end Behavioral;

