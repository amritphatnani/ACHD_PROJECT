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
use ieee.Std_logic_arith.all;
use IEEE.STD_LOGIC_unsigned.ALL;

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
signal ALUOutput : std_logic_vector(31 downto 0);

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
								ALUOutput <= "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU";
								else
								ALUOutput <= "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU";
								end if;
			when "110" => 			CASE data2(4 DOWNTO 0) is
												WHEN "00001" => ALUoutput <= data1(30 DOWNTO 0) & data1(31) ;
												WHEN "00010" => ALUoutput <= data1(29 DOWNTO 0) & data1(31 DOWNTO 30) ;
												WHEN "00011" => ALUoutput <= data1(28 DOWNTO 0) & data1(31 DOWNTO 29) ;
												WHEN "00100" => ALUoutput <= data1(27 DOWNTO 0) & data1(31 DOWNTO 28) ;
												WHEN "00101" => ALUoutput <= data1(26 DOWNTO 0) & data1(31 DOWNTO 27) ;
												WHEN "00110" => ALUoutput <= data1(25 DOWNTO 0) & data1(31 DOWNTO 26) ;
												WHEN "00111" => ALUoutput <= data1(24 DOWNTO 0) & data1(31 DOWNTO 25) ;
												WHEN "01000" => ALUoutput <= data1(23 DOWNTO 0) & data1(31 DOWNTO 24) ;
												WHEN "01001" => ALUoutput <= data1(22 DOWNTO 0) & data1(31 DOWNTO 23) ;
												WHEN "01010" => ALUoutput <= data1(21 DOWNTO 0) & data1(31 DOWNTO 22) ;
												WHEN "01011" => ALUoutput <= data1(20 DOWNTO 0) & data1(31 DOWNTO 21) ;
												WHEN "01100" => ALUoutput <= data1(19 DOWNTO 0) & data1(31 DOWNTO 20) ;
												WHEN "01101" => ALUoutput <= data1(18 DOWNTO 0) & data1(31 DOWNTO 19) ;
												WHEN "01110" => ALUoutput <= data1(17 DOWNTO 0) & data1(31 DOWNTO 18) ;
												WHEN "01111" => ALUoutput <= data1(16 DOWNTO 0) & data1(31 DOWNTO 17);
												WHEN "10000" => ALUoutput <= data1(15 DOWNTO 0) & data1(31 DOWNTO 16) ;
												WHEN "10001" => ALUoutput <= data1(14 DOWNTO 0) & data1(31 DOWNTO 15) ;
												WHEN "10010" => ALUoutput <= data1(13 DOWNTO 0) & data1(31 DOWNTO 14) ;
												WHEN "10011" => ALUoutput <= data1(12 DOWNTO 0) & data1(31 DOWNTO 13); 
												WHEN "10100" => ALUoutput <= data1(11 DOWNTO 0) & data1(31 DOWNTO 12);
												WHEN "10101" => ALUoutput <= data1(10 DOWNTO 0) & data1(31 DOWNTO 11);
												WHEN "10110" => ALUoutput <= data1(9 DOWNTO 0) & data1(31 DOWNTO 10);
												WHEN "10111" => ALUoutput <= data1(8 DOWNTO 0) & data1(31 DOWNTO 9);
												WHEN "11000" => ALUoutput <= data1(7 DOWNTO 0) & data1(31 DOWNTO 8);
												WHEN "11001" => ALUoutput <= data1(6 DOWNTO 0) & data1(31 DOWNTO 7);
												WHEN "11010" => ALUoutput <= data1(5 DOWNTO 0) & data1(31 DOWNTO 6);
												WHEN "11011" => ALUoutput <= data1(4 DOWNTO 0) & data1(31 DOWNTO 5);
												WHEN "11100" => ALUoutput <= data1(3 DOWNTO 0) & data1(31 DOWNTO 4);
												WHEN "11101" => ALUoutput <= data1(2 DOWNTO 0) & data1(31 DOWNTO 3);
												WHEN "11110" => ALUoutput <= data1(1 DOWNTO 0) & data1(31 DOWNTO 2);
												WHEN "11111" => ALUoutput <= data1(0) & data1(31 DOWNTO 1);
												WHEN OTHERS => ALUoutput <= data1;	
										end case;
														
							
			when "111" => 				case data2(4 DOWNTO 0) is
														WHEN "00001" => ALUoutput <=	data1(0) & data1(31 DOWNTO 1) ;
														WHEN "00010" => ALUoutput <= data1(1 DOWNTO 0) & data1(31 DOWNTO 2);
														WHEN "00011" => ALUoutput <= data1(2 DOWNTO 0) & data1(31 DOWNTO 3);
														WHEN "00100" => ALUoutput <= data1(3 DOWNTO 0) & data1(31 DOWNTO 4);
														WHEN "00101" => ALUoutput <= data1(4 DOWNTO 0) & data1(31 DOWNTO 5);
														WHEN "00110" => ALUoutput <= data1(5 DOWNTO 0) & data1(31 DOWNTO 6);
														WHEN "00111" => ALUoutput <= data1(6 DOWNTO 0) & data1(31 DOWNTO 7);
														WHEN "01000" => ALUoutput <= data1(7 DOWNTO 0) & data1(31 DOWNTO 8);
														WHEN "01001" => ALUoutput <= data1(8 DOWNTO 0) & data1(31 DOWNTO 9);
														WHEN "01010" => ALUoutput <= data1(9 DOWNTO 0) & data1(31 DOWNTO 10);
														WHEN "01011" => ALUoutput <= data1(10 DOWNTO 0) & data1(31 DOWNTO 11);
														WHEN "01100" => ALUoutput <= data1(11 DOWNTO 0) & data1(31 DOWNTO 12);
														WHEN "01101" => ALUoutput <= data1(12 DOWNTO 0) & data1(31 DOWNTO 13);
														WHEN "01110" => ALUoutput <= data1(13 DOWNTO 0) & data1(31 DOWNTO 14);
														WHEN "01111" => ALUoutput <= data1(14 DOWNTO 0) & data1(31 DOWNTO 15);
														WHEN "10000" => ALUoutput <= data1(15 DOWNTO 0) & data1(31 DOWNTO 16);
														WHEN "10001" => ALUoutput <= data1(16 DOWNTO 0) & data1(31 DOWNTO 17);
														WHEN "10010" => ALUoutput <= data1(17 DOWNTO 0) & data1(31 DOWNTO 18);
														WHEN "10011" => ALUoutput <= data1(18 DOWNTO 0) & data1(31 DOWNTO 19);
														WHEN "10100" => ALUoutput <= data1(19 DOWNTO 0) & data1(31 DOWNTO 20);
														WHEN "10101" => ALUoutput <= data1(20 DOWNTO 0) & data1(31 DOWNTO 21);
														WHEN "10110" => ALUoutput <= data1(21 DOWNTO 0) & data1(31 DOWNTO 22);
														WHEN "10111" => ALUoutput <= data1(22 DOWNTO 0) & data1(31 DOWNTO 23);
														WHEN "11000" => ALUoutput <= data1(23 DOWNTO 0) & data1(31 DOWNTO 24);
														WHEN "11001" => ALUoutput <= data1(24 DOWNTO 0) & data1(31 DOWNTO 25);
														WHEN "11010" => ALUoutput <= data1(25 DOWNTO 0) & data1(31 DOWNTO 26);
														WHEN "11011" => ALUoutput <= data1(26 DOWNTO 0) & data1(31 DOWNTO 27);
														WHEN "11100" => ALUoutput <= data1(27 DOWNTO 0) & data1(31 DOWNTO 28);
														WHEN "11101" => ALUoutput <= data1(28 DOWNTO 0) & data1(31 DOWNTO 29);
														WHEN "11110" => ALUoutput <= data1(29 DOWNTO 0) & data1(31 DOWNTO 30);
														WHEN "11111" => ALUoutput <= data1(30 DOWNTO 0) & data1(31);
														WHEN OTHERS => ALUoutput <= data1 ;
											end case;

			
			when others => ALUOutput <= "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU";
			
			end case;
end process;		

end Behavioral;

