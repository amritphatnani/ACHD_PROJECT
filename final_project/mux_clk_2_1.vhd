----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:57:58 12/07/2016 
-- Design Name: 
-- Module Name:    mux_clk_2_1 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_clk_2_1 is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0);
			  clk: in STD_logic;
			  reset: in std_logic);
end mux_clk_2_1;

architecture Behavioral of mux_clk_2_1 is

begin
process(clk, reset) begin
if(clk'event and clk ='1') then
if(reset ='1') then
case sel is
 when '1'=> output <= input2; 
 when others => output <= input1;
 end case;
 
end if;
end if;
end process;
end Behavioral;

