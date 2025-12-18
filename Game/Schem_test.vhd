-- Vhdl test bench created from schematic D:\Study\PLIS\PLIS-lw8\SevenSegsLibrary\Scheme.sch - Mon Dec 15 17:58:23 2025
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
   PORT( Oxyllirator	:	IN	STD_LOGIC; 
          DIGIT	:	IN	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          NUMBER	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          ENABLE	:	IN	STD_LOGIC; 
          ANOD	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          C	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL Oxyllirator	:	STD_LOGIC;
   SIGNAL DIGIT	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL NUMBER	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL ENABLE	:	STD_LOGIC;
   SIGNAL ANOD	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL C	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: Scheme PORT MAP(
		Oxyllirator => Oxyllirator, 
		DIGIT => DIGIT, 
		NUMBER => NUMBER, 
		ENABLE => ENABLE, 
		ANOD => ANOD, 
		C => C
   );

	test_proc : process
	begin
		ENABLE <= '1';
		NUMBER <= "0001";
		DIGIT <= "00";
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		wait for 100 ns;
		DIGIT <= "01";
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		wait for 100 ns;
		DIGIT <= "10";
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		wait for 100 ns;
		DIGIT <= "11";
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		DIGIT <= "00";
		NUMBER <= "0000";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "0001";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "0010";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "0011";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "0100";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "0101";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "0110";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "0111";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "1000";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "1001";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "1010";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "1011";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "1100";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "1101";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "1110";
		ENABLE <= '1';
		wait for 100 ns;
		Oxyllirator <= '0';
		wait for 100 ns;
		Oxyllirator <= '1';
		NUMBER <= "1111";
		ENABLE <= '1';
		wait for 100 ns;
		
	end process;

END;
