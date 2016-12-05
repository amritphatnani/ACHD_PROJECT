library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity signExt is
    Port ( inp : in  STD_LOGIC_VECTOR (15 downto 0);
           opt : out  STD_LOGIC_VECTOR (31 downto 0));
end signExt;

architecture Behavioral of signExt is

begin

opt <= "0000000000000000" & inp;

end Behavioral;

