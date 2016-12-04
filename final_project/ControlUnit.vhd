----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:36:21 12/02/2016 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
    Port ( opcode : in  STD_LOGIC_VECTOR (5 downto 0);
				ALUOP: out STD_LOGIC_VECTOR (2 downto 0);
				RegDst: out STD_LOGIC;
				Branch : out STD_LOGIC;
				MemRead: out std_logic;
				MemtoReg: out std_logic;
				MemWrite: out std_logic;
				AluSrc: out std_logic;
				RegWrite: out std_logic;
				Jump: out std_logic;
				
				Halt: out std_logic);
end ControlUnit;

architecture Behavioral of ControlUnit is
signal Rtype,ORI, ANDI, SUBI, ADDI, BNE, BEQ, BLT, LW, SW, Itype, SHL, SHR, BRN: std_logic;
begin

Rtype <= '1' when opcode = "000000" else '0';
LW <= '1' when opcode = "000111" else '0';
SW <= '1' when opcode = "001000" else '0';
BEQ <= '1' when opcode = "001010" else '0';
BNE <= '1' when opcode = "001011" else '0';
BLT <= '1' when opcode = "001001" else '0';
ORI <= '1' when opcode = "000100" else '0';
ANDI <= '1' when opcode = "000011" else '0';
SUBI <= '1' when opcode = "000010" else '0';
ADDI <= '1' when opcode = "000001" else '0';
SHL <= '1' when opcode = "000101" else '0';
SHR <= '1' when opcode = "000110" else '0';
Jump <= '1' when opcode = "001100" else '0';
Halt <= '1' when opcode = "111111" else '0';

Itype <= ADDI or SUBI or ORI or ANDI or SHL or SHR;
Branch <= brn;
BRN <= BEQ or BNE;
ALUSrc <= LW or SW or Itype;
MemRead <= LW;
MemWrite <= SW;
RegWrite <= Rtype or LW or Itype;
RegDst <= Rtype;
MemtoReg <= LW;

process(rtype,itype,brn,blt) begin 
if(SW ='1' or LW = '1') then
Aluop <= "000";
elsif(Rtype ='1') then
ALUop <= "010";
elsif(BRN ='1') then
ALUop <= "001";
elsif(BLT = '1') then
ALUop <= "011";
elsif(ADDI = '1') then
ALUop <= "100";
elsif(SUBI = '1') then
ALUop <= "101";
elsif(ANDI = '1') then
ALUop <= "110";
elsif(ORI = '1') then
ALUop <= "111";
end if;
end process;

end Behavioral;

