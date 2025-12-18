--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:12:50 12/17/2025
-- Design Name:   
-- Module Name:   D:/Study/PLIS/PLIS-lw9/TwoStep-JK-Trigger/test.vhd
-- Project Name:  TwoStep-JK-Trigger
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TwoStep_JK_Trigger
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TwoStep_JK_Trigger
    PORT(
         J : IN  std_logic;
         C : IN  std_logic;
         K : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal C : std_logic := '0';
   signal K : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TwoStep_JK_Trigger PORT MAP (
          J => J,
          C => C,
          K => K,
          Q => Q
        );

   test_proc : process
	begin
		J <= '0';
		K <= '0';
		C <= '1';
		wait for 100 ns;
		C <= '0';
		wait for 100 ns;
		
		J <= '1';
		K <= '0';
		C <= '1';
		wait for 100 ns;
		C <= '0';
		wait for 100 ns;
		
		J <= '0';
		K <= '1';
		C <= '1';
		wait for 100 ns;
		C <= '0';
		wait for 100 ns;
		
		J <= '1';
		K <= '1';
		C <= '1';
		wait for 100 ns;
		C <= '0';
		wait for 100 ns;
	end process;
END;
