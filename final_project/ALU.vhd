----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:27:31 12/03/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
Port( Data1 : in std_logic_vector(31 downto 0);
		Data2 : in std_logic_vector(31 downto 0);
		Zero : out STD_LOGIC;
		ALUResult : out std_logic_vector(31 downto 0);
		ALUCtr : in std_logic_vector(2 downto 0));
end ALU;

architecture Behavioral of ALU is

signal readData1, readData2 : std_logic_vector(31 downto 0);
signal ALUOutput : str_logic_vector(31 downto 0);

begin

readData1 <= Data1;
readData2 <= Data2;

Zero <= '1' when (ALUOutput = X"00000000") else '0';
ALUResult <= (X"000000" & "000" & ALUOutput(31)) when ALUCtr = "111" else
					ALUOutput;
			
process(ALUCtr, readData1, readData2)
begin
		
end process;		
end Behavioral;

