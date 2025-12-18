----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:58:48 12/18/2025 
-- Design Name: 
-- Module Name:    WIN_CHECK - Behavioral 
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
--use UNISIM.VComponents.a

entity WIN_CHECK is
    Port ( DIGIT : in  STD_LOGIC_VECTOR (3 downto 0);
           WIN : out  STD_LOGIC);
end WIN_CHECK;

architecture Behavioral of WIN_CHECK is

begin
	process(DIGIT)
	begin
		if (DIGIT = "0000" OR DIGIT = "1110" OR DIGIT = "1111") then
			WIN <= '1';
		else
			WIN <= '0';
		end if;
	end process;

end Behavioral;

