----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:33 12/15/2025 
-- Design Name: 
-- Module Name:    Number_decoder - Behavioral 
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

entity Number_decoder is
    Port ( DIGIT : in  STD_LOGIC_VECTOR (3 downto 0);
           PINOUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Number_decoder;

architecture Behavioral of Number_decoder is

begin

	process(DIGIT)
	begin
		case(DIGIT) is
									 --ABCDEFGP
			when "0000" => PINOUT <= not("11111100");--0
			when "0001" => PINOUT <= not("01100000");
			when "0010" => PINOUT <= not("11011010");
			when "0011" => PINOUT <= not("11110010");
			when "0100" => PINOUT <= not("01100110");
			when "0101" => PINOUT <= not("10110110");
			when "0110" => PINOUT <= not("10111110");
			when "0111" => PINOUT <= not("11100000");--7
									 --ABCDEFGP
			when "1000" => PINOUT <= not("11111110");--8
			when "1001" => PINOUT <= not("11110110");
			when "1010" => PINOUT <= not("11101110");
			when "1011" => PINOUT <= not("00111110");
			when "1100" => PINOUT <= not("10011100");
			when "1101" => PINOUT <= not("01111010");
			when "1110" => PINOUT <= not("10011100");
			when "1111" => PINOUT <= not("11101100");--F
			when others => PINOUT <= not("00000000");
		end case;
	end process;
end Behavioral;

