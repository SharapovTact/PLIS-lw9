----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:08:17 12/19/2025 
-- Design Name: 
-- Module Name:    Reg4 - Behavioral 
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

entity Reg4 is
    Port ( DB : in  STD_LOGIC_VECTOR (3 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (3 downto 0);
           E : in  STD_LOGIC);
end Reg4;

architecture Behavioral of Reg4 is

begin
	process(E, DB)
	begin
		if (E'event and E = '1') then
			DOUT <= DB;
		end if;
	end process;
end Behavioral;

