library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ff_5bit is
    Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (4 downto 0));
end ff_5bit;

architecture Behavioral of ff_5bit is

begin

process(input, clk, reset) begin
if(clk'event and clk ='1') then
if (reset ='1') then
output <= input;
else
output<="00000";
end if;
end if;
end process;


end Behavioral;

