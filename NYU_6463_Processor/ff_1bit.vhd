library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ff_1bit is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC);
end ff_1bit;

architecture Behavioral of ff_1bit is

begin

process(input, clk, reset) begin
if(clk'event and clk ='1') then
if (reset ='1') then
output <= input;
else
output<='0';
end if;
end if;
end process;

end Behavioral;

