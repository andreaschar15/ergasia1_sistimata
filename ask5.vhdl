library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ask5 is
  Port (
        SW  : in  STD_LOGIC_VECTOR(3 downto 0);  
        D1 : out STD_LOGIC;
        D0 : out STD_LOGIC_VECTOR(3 downto 0)
    );end ask5;

architecture Behavioral of ask5 is
    signal unts : STD_LOGIC_VECTOR(3 downto 0);
    signal tens: STD_LOGIC;
begin

    tens <= '0' when SW <= "1001" else '1';
    
    unts <= "0000" when SW = "0000" else
             "0001" when SW = "0001" else
             "0010" when SW = "0010" else
             "0011" when SW = "0011" else
             "0100" when SW = "0100" else
             "0101" when SW = "0101" else
             "0110" when SW = "0110" else
             "0111" when SW = "0111" else
             "1000" when SW = "1000" else
             "1001" when SW = "1001" else
             "0000" when SW = "1010" else
             "0001" when SW = "1011" else
             "0010" when SW = "1100" else
             "0011" when SW = "1101" else
             "0100" when SW = "1110" else
             "0101";
    D1 <= tens;
    D0 <= unts;
end Behavioral;
