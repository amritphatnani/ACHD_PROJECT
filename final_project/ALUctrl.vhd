----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:34:40 12/03/2016 
-- Design Name: 
-- Module Name:    ALUCtrl - Behavioral 
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

entity ALUCtrl is
port( ALUop : in std_logic_vector(2 downto 0);
		funct : in std_logic_vector (5 downto 0);
		ALUCtr: out std_logic_vector (2 downto 0));
end ALUCtrl;

architecture Behavioral of ALUCtrl is

begin
process(aluop, funct)
begin

	case ALUop is 
			when "000" => ALUctr <= "000"; --LW/SW
			when "001" => ALUctr <= "001"; --BEQ/BNE
			when "100" => ALuctr <= "000"; --ADDI
			when "101" => ALUctr <= "001"; --SUBI
			when "110" => ALUctr <= "010"; --ANDI
			when "111" => ALUctr <= "011"; --ORI
			when "011" => Aluctr <= "101"; --BLT
			when "010" => 
						case funct is
								when "010000" => ALUctr <= "000"; --ADD
								when "010001" => ALUctr <= "001"; --SUB
								when "010010" => ALUctr <= "010"; --AND
								when "010011" => ALUcrt <= "011"; --OR
								when "010100" => ALUctr <= "100"; --NOR
								when others => ALuctr <= "UUU";
								
						end case;
			
			when others => ALUctr <= "UUU";
	end case;
end process;

--ALUctr(2) <= ALUop(0) OR (ALUop(1) and funct_o(1));
--ALUctr(1) <= (NOT ALUop(1)) OR (NOT funct_o(2));
--ALUctr(0) <= ALUop(1) AND (funct_o(0) or funct_0(3));

end Behavioral;

