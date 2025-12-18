--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:50:38 12/18/2025
-- Design Name:   
-- Module Name:   D:/Study/PLIS/PLIS-lw9/Game/test_Game_Counter.vhd
-- Project Name:  Game
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Game_Calc
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
 
ENTITY test_Game_Counter IS
END test_Game_Counter;
 
ARCHITECTURE behavior OF test_Game_Counter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Game_Calc
    PORT(
         E : IN  std_logic;
         RST : IN  std_logic;
         DB_IN : IN  std_logic_vector(1 downto 0);
         DBM_IN : IN  std_logic_vector(3 downto 0);
         DB_OUT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E : std_logic := '0';
   signal RST : std_logic := '0';
   signal DB_IN : std_logic_vector(1 downto 0) := (others => '0');
   signal DBM_IN : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal DB_OUT : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Game_Calc PORT MAP (
          E => E,
          RST => RST,
          DB_IN => DB_IN,
          DBM_IN => DBM_IN,
          DB_OUT => DB_OUT
        );

   -- Clock process definitions
   test_proc : process
	begin
		E <= '1';
		RST <= '0';
		DB_IN <= "01";
		DBM_IN <= "1011";
		wait for 100 ns;
		E <= '0';
		RST <= '0';
		DB_IN <= "01";
		DBM_IN <= DB_OUT;
		wait for 100 ns;
		E <= '1';
		RST <= '0';
		DB_IN <= "01";
		DBM_IN <= DB_OUT;
		wait for 100 ns;
		E <= '0';
		RST <= '0';
		DB_IN <= "00";
		DBM_IN <= DB_OUT;
		wait for 100 ns;
		E <= '0';
		RST <= '1';
		DB_IN <= "01";
		DBM_IN <= DB_OUT;
		wait for 100 ns;
		E <= '1';
		RST <= '1';
		DB_IN <= "01";
		DBM_IN <= DB_OUT;
		wait for 100 ns;
	end process;

END;
