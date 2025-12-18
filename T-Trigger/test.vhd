LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT T_Trigger
    PORT(
         T : IN  std_logic;
         Q : OUT  std_logic;
         bQ : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal bQ : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: T_Trigger PORT MAP (
          T => T,
          Q => Q,
          bQ => bQ
        );

   test_proc : process
	begin
		T <= '0';
		wait for 100 ns;
		T <= '1';
		wait for 100 ns;
		T <= '0';
		wait for 100 ns;
		T <= '1';
		wait for 100 ns;
	end process;

END;
