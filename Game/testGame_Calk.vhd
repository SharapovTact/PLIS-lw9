LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY testGame_Calk IS
END testGame_Calk;
 
ARCHITECTURE behavior OF testGame_Calk IS 
 
    COMPONENT Game_Calc
    PORT(
         E : IN  std_logic;
         RST : IN  std_logic;
         DB_IN : IN  std_logic_vector(1 downto 0);
         DB_OUT : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E : std_logic := '0';
   signal RST : std_logic := '0';
   signal DB_IN : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal DB_OUT : std_logic_vector(3 downto 0);
 
BEGIN
 
   uut: Game_Calc PORT MAP (
          E => E,
          RST => RST,
          DB_IN => DB_IN,
          DB_OUT => DB_OUT
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
