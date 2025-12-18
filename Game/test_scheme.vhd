-- Vhdl test bench created from schematic D:\Study\PLIS\PLIS-lw9\Game\Scheme.sch - Thu Dec 18 23:43:03 2025
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
ENTITY Scheme_Scheme_sch_tb IS
END Scheme_Scheme_sch_tb;
ARCHITECTURE behavioral OF Scheme_Scheme_sch_tb IS 

   COMPONENT Scheme
   PORT( DIGIT_OUT	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          Segs	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          CLK	:	IN	STD_LOGIC; 
          RST	:	IN	STD_LOGIC; 
          E	:	IN	STD_LOGIC; 
          Win	:	OUT	STD_LOGIC; 
          DB_IN	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0));
   END COMPONENT;

   SIGNAL DIGIT_OUT	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL Segs	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL E	:	STD_LOGIC;
   SIGNAL Win	:	STD_LOGIC;
   SIGNAL DB_IN	:	STD_LOGIC_VECTOR (1 DOWNTO 0);

BEGIN

   UUT: Scheme PORT MAP(
		DIGIT_OUT => DIGIT_OUT, 
		Segs => Segs, 
		CLK => CLK, 
		RST => RST, 
		E => E, 
		Win => Win, 
		DB_IN => DB_IN
   );

	test_proc : process
	begin
		E <= '1';
		RST <= '0';
		DB_IN <= "01";
		wait for 100 ns;
		E <= '0';
		RST <= '0';
		DB_IN <= "01";
		wait for 100 ns;
		E <= '1';
		RST <= '0';
		DB_IN <= "01";
		wait for 100 ns;
		E <= '0';
		RST <= '1';
		DB_IN <= "01";
		wait for 100 ns;
	end process;
END;
