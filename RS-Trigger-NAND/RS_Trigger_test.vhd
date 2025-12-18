LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Scheme_Scheme_sch_tb IS
END Scheme_Scheme_sch_tb;
ARCHITECTURE behavioral OF Scheme_Scheme_sch_tb IS 

   COMPONENT Scheme
   PORT( Q	:	OUT	STD_LOGIC; 
          bQ	:	OUT	STD_LOGIC; 
          R	:	IN	STD_LOGIC; 
          S	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL Q	:	STD_LOGIC;
   SIGNAL bQ	:	STD_LOGIC;
   SIGNAL R	:	STD_LOGIC;
   SIGNAL S	:	STD_LOGIC;

BEGIN

   UUT: Scheme PORT MAP(
		Q => Q, 
		bQ => bQ, 
		R => R, 
		S => S
   );

	test_proc : process
	begin
		R <= '0';
		S <= '0';
		wait for 100 ns;
		
		R <= '0';
		S <= '1';
		wait for 100 ns;
		
		R <= '1';
		S <= '0';
		wait for 100 ns;
		
	end process;
END;
