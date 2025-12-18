-- Vhdl test bench created from schematic D:\Study\PLIS\PLIS-lw9\RS-Trigger-NAND\RS_Trigger_XOR.sch - Tue Dec 16 23:21:50 2025
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY RS_Trigger_XOR_RS_Trigger_XOR_sch_tb IS
END RS_Trigger_XOR_RS_Trigger_XOR_sch_tb;
ARCHITECTURE behavioral OF RS_Trigger_XOR_RS_Trigger_XOR_sch_tb IS 

   COMPONENT RS_Trigger_XOR
   PORT( R	:	IN	STD_LOGIC; 
          bQ	:	OUT	STD_LOGIC; 
          Q	:	OUT	STD_LOGIC; 
          S	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL R	:	STD_LOGIC;
   SIGNAL bQ	:	STD_LOGIC;
   SIGNAL Q	:	STD_LOGIC;
   SIGNAL S	:	STD_LOGIC;

BEGIN

   UUT: RS_Trigger_XOR PORT MAP(
		R => R, 
		bQ => bQ, 
		Q => Q, 
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
