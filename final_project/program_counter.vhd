library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity program_counter is
    Port ( address : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end program_counter;

architecture Behavioral of program_counter is

begin


end Behavioral;

