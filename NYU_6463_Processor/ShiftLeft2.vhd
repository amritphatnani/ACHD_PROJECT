library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftLeft2 is
Port(input: in std_logic_vector(31 downto 0);
		output: out std_logic_vector(31 downto 0));
end ShiftLeft2;

architecture Behavioral of ShiftLeft2 is
begin

output <= input(29 downto 0) & "00";

end Behavioral;

