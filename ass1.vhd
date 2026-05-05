library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ask5_testbench is
end ask5_testbench;
 
architecture behavior of ask5_testbench is component ask5
        Port (
            sw : in std_logic_vector(4 downto 0);
            d1 : out std_logic;
            d0 : out std_logic_vector(6 downto 0);
            an : out std_logic_vector(3 downto 0)
        );
    end component;
    

    signal ds : std_logic_vector(4 downto 0) := (others => '0');
    signal led1 : std_logic;
    signal qs : std_logic_vector(6 downto 0);
    signal anodes : std_logic_vector(3 downto 0);
    signal count : unsigned(3 downto 0) := (others => '0');

	
begin
 
    uut: entity work.ask5
        port map (
            sw => ds,
            d1 => led1,
            d0 => qs,
            an => anodes
        );



    stim_proc: process
    begin
        for k in 0 to 15 loop
            wait for 5 ns;
            ds(3 downto 0) <= std_logic_vector(count);
            ds(4) <= '1';

            wait for 10 ns;

            count <= count + 1;
        end loop;

        wait;
    end process;

end behavior;
