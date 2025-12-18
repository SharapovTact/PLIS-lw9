----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:28:14 12/19/2025 
-- Design Name: 
-- Module Name:    Decounter - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decounter is
    Port ( 
           DB_OUT : out  STD_LOGIC_VECTOR (3 downto 0);
			  DBM_IN : in  STD_LOGIC_VECTOR (3 downto 0) := "1111";
			  DB_IN : in  STD_LOGIC_VECTOR (1 downto 0) := "00";
			  E : in STD_LOGIC
			  );
end Decounter;
architecture Behavioral of Decounter is
signal A : STD_LOGIC_VECTOR (3 downto 0) := DBM_IN;
signal B : STD_LOGIC_VECTOR (1 downto 0) := DB_IN;
begin
	process(E)
	begin
		if (E'event and E = '1') then
			DB_OUT <= std_logic_vector(unsigned(A) - unsigned(B));
		end if;
	end process;
	

end Behavioral;

