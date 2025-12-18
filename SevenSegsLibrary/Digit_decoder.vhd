----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:42:59 12/15/2025 
-- Design Name: 
-- Module Name:    Digit_decoder - Behavioral 
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

entity Digit_decoder is
    Port ( DIGIT : in  STD_LOGIC_VECTOR (1 downto 0);
           ANOD : out  STD_LOGIC_VECTOR (3 downto 0));
end Digit_decoder;

architecture Behavioral of Digit_decoder is

begin
	process(DIGIT) 
	begin
		case(DIGIT) is
			when "00" => ANOD <= not("0001");
			when "01" => ANOD <= not("0010");
			when "10" => ANOD <= not("0100");
			when "11" => ANOD <= not("1000");
			when others => ANOD <= not("0000");
		end case;
	end process;

end Behavioral;

