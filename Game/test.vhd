-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT <component name>
          PORT(
                  <port1> : IN std_logic;
                  <port2> : IN std_logic_vector(3 downto 0);       
                  <port3> : OUT std_logic_vector(3 downto 0)
                  );
          END COMPONENT;

          SIGNAL <signal1> :  std_logic;
          SIGNAL <signal2> :  std_logic_vector(3 downto 0);
          

  BEGIN

  -- Component Instantiation
          uut: <component name> PORT MAP(
                  <port1> => <signal1>,
                  <port3> => <signal2>
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
