----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:51:47 12/18/2025 
-- Design Name: 
-- Module Name:    CAP - Behavioral 
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

entity CAP is
    Port ( S_IN : in  STD_LOGIC;
           Tact : in  STD_LOGIC;
           S_OUT : out  STD_LOGIC);
end CAP;

architecture Behavioral of CAP is
begin
	process(Tact)
	begin
		if (Tact'event and Tact = '1') then
			S_OUT <= S_IN;
		end if;
	end process;
end Behavioral;

