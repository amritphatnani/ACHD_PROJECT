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

process(clk,reset) begin
if(clk'event and clk = '1') then
	if(reset = '1') then 
	output <= address;
	end if;
end if;
end process;


end Behavioral;

