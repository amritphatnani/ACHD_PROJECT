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

Zero <= '1' when (ALUOutput = X"00000000") else '0';
--ALUResult <= (X"000000" & "000" & ALUOutput(31)) when ALUCtr = "111" else
	--				ALUOutput;
			
process(ALUCtr, readData1, readData2)
begin
	case ALUCtr is
			when "000" => ALUOutput <= Data1 + Data2;
			when "001" => ALUOutput <= Data1 + (not Data2) + 1;
			when "010" => ALUOutput <= Data1 and Data2;
			when "011" => ALUOutput <= Data1 or Data2;
			when "100" => ALUOutput <= Data1 nor Data2;
			when "101" => 
							if((Data1 - data2) < 0) then 
								Zero <= '0';
								ALUOuput <= X"UUUUUUUU";
								else
								ALUOuput <= X"UUUUUUUU";
								end if;
								
			
			when other => ALUOutput <= X"UUUUUUUU";
			
			end case;
end process;		

end Behavioral;

