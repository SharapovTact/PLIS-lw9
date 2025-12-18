--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:26:18 12/17/2025
-- Design Name:   
-- Module Name:   D:/Study/PLIS/PLIS-lw9/D-Trigger/test.vhd
-- Project Name:  D-Trigger
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_Trigger
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
 
    COMPONENT D_Trigger
    PORT(
         D : IN  std_logic;
         C : IN  std_logic;
         Q : OUT  std_logic;
         bQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal C : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal bQ : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_Trigger PORT MAP (
          D => D,
          C => C,
          Q => Q,
          bQ => bQ
        );
	test_proc : process
	begin
		D <= '0';
		C <= '0';
		wait for 100 ns;
		
		D <= '0';
		C <= '1';
		wait for 100 ns;
		
		D <= '1';
		C <= '0';
		wait for 100 ns;
		
		D <= '1';
		C <= '1';
		wait for 100 ns;
	end process;
   

END;
