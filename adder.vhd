library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder is
port (
		input1: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		input2: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		output: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
end adder;

architecture Behavioral of adder is

begin

output <= input1 + input2; 

end Behavioral;

