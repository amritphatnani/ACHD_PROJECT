
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

package rc5Package is
   TYPE   S_ARRAY IS ARRAY (0 TO 25) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
   TYPE   L_ARRAY IS ARRAY (0 TO 3) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
end rc5Package;