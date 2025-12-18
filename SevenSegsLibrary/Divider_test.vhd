--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:39:40 12/14/2025
-- Design Name:   
-- Module Name:   D:/Study/PLIS/PLIS-lw8/SevenSegsLibrary/Divider_test.vhd
-- Project Name:  SevenSegsLibrary
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Divider
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Divider_test IS
END Divider_test;
 
ARCHITECTURE behavior OF Divider_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Divider
    PORT(
         V10 : IN  std_logic;
         Q : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal V10 : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Divider PORT MAP (
          V10 => V10,
          Q => Q
        );

   
   devider_proc: process
   begin		
      V10 <= '1';
		wait for 100 ns;
		V10 <= '0';
		wait for 100 ns;
   end process;

END;
