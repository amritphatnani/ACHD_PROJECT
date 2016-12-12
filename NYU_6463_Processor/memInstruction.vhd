library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.All;

entity memInstruction is

Port(
		address : in  STD_LOGIC_VECTOR (31 downto 0);
		instruction : out  STD_LOGIC_VECTOR (31 downto 0);
		clk: in STD_logic;
		reset: in STD_logic
	  );

end memInstruction;

architecture Behavioral of memInstruction is

TYPE ram IS ARRAY (0 TO 255) OF STD_LOGIC_VECTOR(31 DOWNTO 0);

signal instrctMem: ram := (	
"00011100000100100000000000000000",
"00000100000000010000000000001100",
"00011110010000110000000000000100",
"00011110010000100000000000000011",
										"00011100000001100000000000000010",
										"00001101100011000000000000000000",
										"00011100110001011111111111111111",
										"00000000011001010011100000010001",
										"00001101100000100000000000011111",
										"00000000000001110110100000010011",
										"00000000000001110111000000010011",
										"00010101101011010000000000000001",
										"00011001110011100000000000011111",
										"00000001101011100011100000010011",
										"00001001100011000000000000000001",
										"00101101100000001111111111111001",
										"00000000010000100100000000010100",
										"00000000111001110100100000010100",
										"00000000010010010101000000010010",
										"00000000111010000101100000010010",
										"00000001010010110111100000010011",
										"00011100110001001111111111111110",
										"00000000010001001000000000010001",
										"00001101111011000000000000011111",
			"00000000000100000110100000010011",
			"00000000000100000111000000010011",
			"00010101101011010000000000000001",
			"00011001110011100000000000011111",
			"00000001101011101000000000010011",
			"00001001100011000000000000000001", 
			"00101100000011001111111111111001",
			"00000010000100000100000000010100",
			"00000001111011110100100000010100",
			"00000010000010010101000000010010",
			"00000001000011110101100000010010",			
			"00000001010010111000100000010011",
			"00000001111000000001100000010011",
			"00000010001000000001000000010011",
			"00001000110001100000000000001000",
			"00001000001000010000000000000001",
			"00101100001000001111111111011101",
			"00011110010001000000000000000101",
			"00011110010001010000000000000110",
			"00000000010001000001000000010001",
			"00000000011001010001100000010001",
			"00100010010000100000000000000011",
			"00100010010000110000000000000100",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
			X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000");
begin

process(clk) begin
if(clk ='1' and clk'event) then
	if(reset ='1') then
instruction <= instrctMem(CONV_INTEGER(address(7 DOWNTO 0)));
end if;
end if;
end process;
end Behavioral;


