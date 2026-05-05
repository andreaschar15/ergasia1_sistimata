library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ask5 is
 Port (
 -- προσθεσα ενα περισσοτερο switch για το enable
 SW  : in  STD_LOGIC_VECTOR(4 downto 0);
D1  : out STD_LOGIC;
D0  : out STD_LOGIC_VECTOR(6 downto 0); 
AN  : out STD_LOGIC_VECTOR(3 downto 0)  
);
end ask5;

architecture Behavioral of ask5 is
-- enable signal για να απενεργοποιει ολα
signal enable : STD_LOGIC;
signal tens : STD_LOGIC;
signal ones_bcd : STD_LOGIC_VECTOR(3 downto 0);
signal unts : STD_LOGIC_VECTOR(6 downto 0);
signal sw_u : unsigned(3 downto 0);
begin

tens <= '1' when sw_u > 9 else '0';
ones_bcd <= std_logic_vector(sw_u - 10) when sw_u > 9 else std_logic_vector(sw_u);


-- αναθετω 5ο switch στο signal enable
enable <= SW(4);
sw_u <= unsigned(SW(3 downto 0));
D1 <= tens when enable = '1' else '0';

-- αναβω LED μονο αν enable ειναι true
AN <= "1110" when enable = '1' else "1111";


with ones_bcd select
unts <= "1000000" when "0000", -- 0
"1111001" when "0001", -- 1
"0100100" when "0010", -- 2
"0110000" when "0011", -- 3
"0011001" when "0100", -- 4
"0010010" when "0101", -- 5
"0000010" when "0110", -- 6
"1111000" when "0111", -- 7
"0000000" when "1000", -- 8
"0010000" when "1001", -- 9
"1111111" when others; -- off

-- ενεργοποιω 7segment display μονο αν enable ειναι true
D0 <= unts when enable = '1' else "1111111"; -- off when switch 5 SW(4) is off

end Behavioral;
