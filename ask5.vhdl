library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ask5 is
Port (
SW  : in  STD_LOGIC_VECTOR(3 downto 0);
D1  : out STD_LOGIC;
D0  : out STD_LOGIC_VECTOR(6 downto 0); -- segments a b c d e f g
AN  : out STD_LOGIC_VECTOR(3 downto 0)  -- seven-segment digit enables (active-low)
);
end ask5;

architecture Behavioral of ask5 is
signal digit   : unsigned(3 downto 0);
signal tens    : STD_LOGIC;
signal unts : STD_LOGIC_VECTOR(6 downto 0);
begin
digit <= unsigned(SW);

-- tens LED = '1' when value > 9
tens <= '1' when to_integer(digit) > 9 else '0';
D1 <= tens;
AN <= "1110";

-- BCD to 7-seg (active-low for common-anode; change '0'/'1' if needed)
with SW select
unts <= "0000001" when "0000", -- 0 -> a b c d e f on, g off
"1001111" when "0001", -- 1
"0010010" when "0010", -- 2
"0000110" when "0011", -- 3
"1001100" when "0100", -- 4
"0100100" when "0101", -- 5
"0100000" when "0110", -- 6
"0001111" when "0111", -- 7
"0000000" when "1000", -- 8
"0000100" when "1001", -- 9
"1111111" when others; -- blank for 10-15

D0 <= unts;
end Behavioral;
