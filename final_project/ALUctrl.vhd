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
port( ALUop : in std_logic_vector(3 downto 0);
		funct : in std_logic_vector (5 downto 0);
		ALUCtr: out std_logic_vector (3 downto 0);
		clk : in std_logic;
		reset: in std_logic);
end ALUCtrl;

architecture Behavioral of ALUCtrl is
signal Alu_ctr : std_logic_vector(3 downto 0);
begin
process(aluop, funct, clk, reset)
begin
--if(clk'event and clk ='0') then
if(reset ='1') then
	case ALUop is 
			when "0000" => Alu_CTR <= "0000"; --LW/SW
			when "0001" => Alu_CTR <= "0001"; --BEQ/BNE
			when "0100" => Alu_CTR <= "0000"; --ADDI
			when "0101" => Alu_CTR <= "0001"; --SUBI
			when "0110" => Alu_CTR <= "0010"; --ANDI
			when "0111" => Alu_CTR <= "0011"; --ORI
			when "0011" => Alu_CTR <= "0101"; --BLT
			when "1000" => Alu_CTR <= "0110"; --SHL
			when "1001" => Alu_CTR <= "0111"; --SHR
			when "0010" => 
						case funct is
								when "010000" => Alu_CTR <= "0000"; --ADD
								when "010001" => Alu_CTR <= "0001"; --SUB
								when "010010" => Alu_CTR <= "0010"; --AND
								when "010011" => Alu_CTR <= "0011"; --OR
								when "010100" => Alu_CTR <= "0100"; --NOR
								when others => Alu_CTR <= "1111";
								
						end case;
			
			when others => Alu_CTR <= Alu_ctr;
	end case;
	--end if;
	end if;
end process;
AluCtr <= Alu_ctr;
--ALUctr(2) <= ALUop(0) OR (ALUop(1) and funct_o(1));
--ALUctr(1) <= (NOT ALUop(1)) OR (NOT funct_o(2));
--ALUctr(0) <= ALUop(1) AND (funct_o(0) or funct_0(3));

end Behavioral;

