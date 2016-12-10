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
Port( ALUCtr : in std_logic_vector(3 downto 0);
		Data1 : in std_logic_vector(31 downto 0);
		Data2 : in std_logic_vector(31 downto 0);
		Zero : out STD_LOGIC;
		Negative: out std_logic;
		ALUResult : out std_logic_vector(31 downto 0):=X"00000000";
		clk: in std_logic;
		reset: in std_logic);
end ALU;

architecture Behavioral of ALU is

signal ALUOutput : std_logic_vector(31 downto 0);

begin


			
process(ALUCtr, clk ,reset,data1,data2)
begin

if(reset ='1')then

if(ALUOutput = X"00000000") then
Zero <= '1'; 
else zero<='0'; end if;

	case ALUCtr is
			when "0000" => ALUOutput <= Data1 + Data2;
			when "0001" => ALUOutput <= Data1 + (not Data2) + 1;
			when "0010" => ALUOutput <= Data1 and Data2;
			when "0011" => ALUOutput <= Data1 or Data2;
			when "0100" => ALUOutput <= Data1 nor Data2;
			when "0101" => 
							if((Data1 - data2) < 0) then 
								Negative <= '1';
								---ALUOutput <= "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU";
								else
								Negative <= '0';
								--ALUOutput <= "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU";
								end if;
			when "0110" => 			CASE data2(4 DOWNTO 0) is
												WHEN "00001" => ALUoutput <= data1(30 DOWNTO 0) & '0';
												WHEN "00010" => ALUoutput <= data1(29 DOWNTO 0) & "00";
												WHEN "00011" => ALUoutput <= data1(28 DOWNTO 0) & "000";
												WHEN "00100" => ALUoutput <= data1(27 DOWNTO 0) & "0000";
												WHEN "00101" => ALUoutput <= data1(26 DOWNTO 0) & "00000";
												WHEN "00110" => ALUoutput <= data1(25 DOWNTO 0) & "000000";
												WHEN "00111" => ALUoutput <= data1(24 DOWNTO 0) & "0000000";
												WHEN "01000" => ALUoutput <= data1(23 DOWNTO 0) & "00000000";
												WHEN "01001" => ALUoutput <= data1(22 DOWNTO 0) & "000000000";
												WHEN "01010" => ALUoutput <= data1(21 DOWNTO 0) & "0000000000";
												WHEN "01011" => ALUoutput <= data1(20 DOWNTO 0) & "00000000000";
												WHEN "01100" => ALUoutput <= data1(19 DOWNTO 0) & "000000000000";
												WHEN "01101" => ALUoutput <= data1(18 DOWNTO 0) & "0000000000000";
												WHEN "01110" => ALUoutput <= data1(17 DOWNTO 0) & "00000000000000";
												WHEN "01111" => ALUoutput <= data1(16 DOWNTO 0) & "000000000000000";
												WHEN "10000" => ALUoutput <= data1(15 DOWNTO 0) & "0000000000000000";
												WHEN "10001" => ALUoutput <= data1(14 DOWNTO 0) & "00000000000000000";
												WHEN "10010" => ALUoutput <= data1(13 DOWNTO 0) & "000000000000000000";
												WHEN "10011" => ALUoutput <= data1(12 DOWNTO 0) & "0000000000000000000"; 
												WHEN "10100" => ALUoutput <= data1(11 DOWNTO 0) & "00000000000000000000";
												WHEN "10101" => ALUoutput <= data1(10 DOWNTO 0) & "000000000000000000000";
												WHEN "10110" => ALUoutput <= data1(9 DOWNTO 0)  & "0000000000000000000000";
												WHEN "10111" => ALUoutput <= data1(8 DOWNTO 0)  & "00000000000000000000000";
												WHEN "11000" => ALUoutput <= data1(7 DOWNTO 0)  & "000000000000000000000000";
												WHEN "11001" => ALUoutput <= data1(6 DOWNTO 0)  & "0000000000000000000000000";
												WHEN "11010" => ALUoutput <= data1(5 DOWNTO 0)  & "00000000000000000000000000";
												WHEN "11011" => ALUoutput <= data1(4 DOWNTO 0)  & "000000000000000000000000000";
												WHEN "11100" => ALUoutput <= data1(3 DOWNTO 0)  & "0000000000000000000000000000";
												WHEN "11101" => ALUoutput <= data1(2 DOWNTO 0)  & "00000000000000000000000000000";
												WHEN "11110" => ALUoutput <= data1(1 DOWNTO 0)  & "000000000000000000000000000000";
												WHEN "11111" => ALUoutput <= data1(0) 				& "0000000000000000000000000000000";
												WHEN OTHERS => ALUoutput <= data1;	
										end case;
														
							
			when "0111" => 				case data2(4 DOWNTO 0) is
														WHEN "00001" => ALUoutput <= '0' & data1(31 DOWNTO 1);
														WHEN "00010" => ALUoutput <= "00" & data1(31 DOWNTO 2);
														WHEN "00011" => ALUoutput <= "000" & data1(31 DOWNTO 3);
														WHEN "00100" => ALUoutput <= "0000" & data1(31 DOWNTO 4);
														WHEN "00101" => ALUoutput <= "00000" & data1(31 DOWNTO 5);
														WHEN "00110" => ALUoutput <= "000000" & data1(31 DOWNTO 6);
														WHEN "00111" => ALUoutput <= "0000000" & data1(31 DOWNTO 7);
														WHEN "01000" => ALUoutput <= "00000000" & data1(31 DOWNTO 8);
														WHEN "01001" => ALUoutput <= "000000000" & data1(31 DOWNTO 9);
														WHEN "01010" => ALUoutput <= "0000000000" & data1(31 DOWNTO 10);
														WHEN "01011" => ALUoutput <= "00000000000" & data1(31 DOWNTO 11);
														WHEN "01100" => ALUoutput <= "000000000000" & data1(31 DOWNTO 12);
														WHEN "01101" => ALUoutput <= "0000000000000" & data1(31 DOWNTO 13);
														WHEN "01110" => ALUoutput <= "00000000000000" & data1(31 DOWNTO 14);
														WHEN "01111" => ALUoutput <= "000000000000000" & data1(31 DOWNTO 15);
														WHEN "10000" => ALUoutput <= "0000000000000000" & data1(31 DOWNTO 16);
														WHEN "10001" => ALUoutput <= "00000000000000000" & data1(31 DOWNTO 17);
														WHEN "10010" => ALUoutput <= "000000000000000000" & data1(31 DOWNTO 18);
														WHEN "10011" => ALUoutput <= "0000000000000000000" & data1(31 DOWNTO 19);
														WHEN "10100" => ALUoutput <= "00000000000000000000" & data1(31 DOWNTO 20);
														WHEN "10101" => ALUoutput <= "000000000000000000000" & data1(31 DOWNTO 21);
														WHEN "10110" => ALUoutput <= "0000000000000000000000" & data1(31 DOWNTO 22);
														WHEN "10111" => ALUoutput <= "00000000000000000000000" & data1(31 DOWNTO 23);
														WHEN "11000" => ALUoutput <= "000000000000000000000000" & data1(31 DOWNTO 24);
														WHEN "11001" => ALUoutput <= "0000000000000000000000000" & data1(31 DOWNTO 25);
														WHEN "11010" => ALUoutput <= "00000000000000000000000000" & data1(31 DOWNTO 26);
														WHEN "11011" => ALUoutput <= "000000000000000000000000000" & data1(31 DOWNTO 27);
														WHEN "11100" => ALUoutput <= "0000000000000000000000000000" & data1(31 DOWNTO 28);
														WHEN "11101" => ALUoutput <= "00000000000000000000000000000" & data1(31 DOWNTO 29);
														WHEN "11110" => ALUoutput <= "000000000000000000000000000000" & data1(31 DOWNTO 30);
														WHEN "11111" => ALUoutput <= "0000000000000000000000000000000" & data1(31);
														WHEN OTHERS => ALUoutput <= data1 ;
											end case;

			
			when others => ALUOutput <= AluOutput;

			
			end case;
			end if;

end process;		
AluResult <= ALUOutput;
end Behavioral;

