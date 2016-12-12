library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity program_counter is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0):=X"00000000";
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end program_counter;

architecture Behavioral of program_counter is

begin

process(clk, reset) begin
if(clk='1' and clk'event) then
	if(reset = '1') then 
	output <= input;
	elsif(reset = '0') then
	output <= X"00000000";
	end if;
end if;
end process;
end Behavioral;

