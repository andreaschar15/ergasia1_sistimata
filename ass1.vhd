LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 


ENTITY ask5_testbench IS
END ask5_testbench;
 
ARCHITECTURE behavior OF  ask5_testbench IS
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ask5
    PORT(
         SW : IN  std_logic_vector(3 downto 0);
         D1 : OUT  std_logic;
         D0 : OUT  std_logic_vector(6 downto 0);
         AN : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   signal ds : std_logic_vector(3 downto 0) := (others => '0');

   signal led1 : std_logic;
   signal qs : std_logic_vector(6 downto 0);
   signal anodes : std_logic_vector(3 downto 0);
   signal count : STD_LOGIC_VECTOR (3 downto 0) := "0000";

	
BEGIN
 
   uut: entity work.ask5 PORT MAP (
          SW => ds,
          D1 => led1,
          D0 => qs,
          AN => anodes
        );



   stim_proc: 	process

	begin
		
        for k in 0 to 15 loop   
    

		  wait for 5 ns;
		  ds <= count;
		  
		  wait for 10 ns;
		  
        count <= count + '1';  		  
        end loop;		 
		
		wait;
	end process;

END;
