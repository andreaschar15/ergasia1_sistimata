LIBRARY ieee;
use ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ENTER NAME IS
END ENTER NAME;
 
ARCHITECTURE behavior OF ENTER NAME IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ENTER NAME
    PORT(
         D : IN  std_logic_vector(3 downto 0);
         Q : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   signal ds : std_logic_vector(3 downto 0) := (others => '0');

   signal qs : std_logic_vector(1 downto 0);
   signal count : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	
BEGIN
 
   uut: lab3_decoder_3x8 PORT MAP (
          d => ds,
          q => qs
        );



   stim_proc: 	process

	begin
		
        for k in 0 to 3 loop   
    

		  wait for 5 ns;
		  d <= count;
		  
		  wait for 10 ns;
		  
        count <= count + '1';  		  
        end loop;		 
		
		wait;
	end process;

END;
