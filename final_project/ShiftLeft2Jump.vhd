----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:30 12/05/2016 
-- Design Name: 
-- Module Name:    ShiftLeft2Jump - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftLeft2Jump is
Port( input : in std_logic_vector(25 downto 0);
		output : out std_logic_vector(27 downto 0));
end ShiftLeft2Jump;

architecture Behavioral of ShiftLeft2Jump is

begin

output <= input(25 downto 0) & "00";
 
end Behavioral;

