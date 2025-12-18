--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:20:40 12/15/2025
-- Design Name:   
-- Module Name:   D:/Study/PLIS/PLIS-lw8/SevenSegsLibrary/Digit_decoder_test.vhd
-- Project Name:  SevenSegsLibrary
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Digit_decoder
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
 
ENTITY Interchange_test IS
END Interchange_test;
 
ARCHITECTURE behavior OF Interchange_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Interchange
    PORT(
         BUS_NUM_ENTER_DIGIT : IN  std_logic_vector(1 downto 0);
         BUS_SEGMENT : OUT  std_logic_vector(3 downto 0);
         BUS_DIGIT_0 : IN  std_logic_vector(3 downto 0);
         BUS_DIGIT_1 : IN  std_logic_vector(3 downto 0);
         BUS_DIGIT_2 : IN  std_logic_vector(3 downto 0);
         BUS_DIGIT_3 : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal BUS_NUM_ENTER_DIGIT : std_logic_vector(1 downto 0) := (others => '0');
   signal BUS_DIGIT_0 : std_logic_vector(3 downto 0) := (others => '0');
   signal BUS_DIGIT_1 : std_logic_vector(3 downto 0) := (others => '0');
   signal BUS_DIGIT_2 : std_logic_vector(3 downto 0) := (others => '0');
   signal BUS_DIGIT_3 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal BUS_SEGMENT : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Interchange PORT MAP (
          BUS_NUM_ENTER_DIGIT => BUS_NUM_ENTER_DIGIT,
          BUS_SEGMENT => BUS_SEGMENT,
          BUS_DIGIT_0 => BUS_DIGIT_0,
          BUS_DIGIT_1 => BUS_DIGIT_1,
          BUS_DIGIT_2 => BUS_DIGIT_2,
          BUS_DIGIT_3 => BUS_DIGIT_3
        );

   test_process : process
	begin
		BUS_NUM_ENTER_DIGIT <= "00";
		BUS_DIGIT_0 <= "0000";
		BUS_DIGIT_1 <= "0011";
		BUS_DIGIT_2 <= "1100";
		BUS_DIGIT_3 <= "1111";
		wait for 100 ns;
		BUS_NUM_ENTER_DIGIT <= "01";
		BUS_DIGIT_0 <= "0000";
		BUS_DIGIT_1 <= "0011";
		BUS_DIGIT_2 <= "1100";
		BUS_DIGIT_3 <= "1111";
		wait for 100 ns;
		BUS_NUM_ENTER_DIGIT <= "10";
		BUS_DIGIT_0 <= "0000";
		BUS_DIGIT_1 <= "0011";
		BUS_DIGIT_2 <= "1100";
		BUS_DIGIT_3 <= "1111";
		wait for 100 ns;
		BUS_NUM_ENTER_DIGIT <= "11";
		BUS_DIGIT_0 <= "0000";
		BUS_DIGIT_1 <= "0011";
		BUS_DIGIT_2 <= "1100";
		BUS_DIGIT_3 <= "1111";
		wait for 100 ns;
	end process;

END;
