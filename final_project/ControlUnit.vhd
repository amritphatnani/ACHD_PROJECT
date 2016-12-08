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
				clk: in std_logic;
				reset: in std_logic;
				ALUOP: out STD_LOGIC_VECTOR (3 downto 0);
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
signal Rtype,ORI, ANDI, SUBI, ADDI, BNE, BEQ, BLT, LW, SW, Itype, SHL, SHR, BRN,hlt: std_logic;
begin
--process(reset,opcode) begin
--if (clk='1' and clk'event) then
--	if(reset = '1') then
--case OPcode is
--			when "000000" => Rtype <= '1'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "000111" => Rtype <= '0'; LW <= '1'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0'; 
--			when "001000" =>  Rtype <= '0'; LW <= '0'; SW <= '1'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "001010" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '1'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "001011" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '1'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "001001" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '1'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "000100" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '1'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "000011" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '1'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "000010" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '1'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "000001" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '1'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "000101" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '1'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--			when "000110" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '1'; Jump <= '0'; Hlt <= '0';
--			when "001100" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '1'; Hlt <= '0';
--			when "111111" =>  Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '1';
--			when others => Rtype <= '0'; LW <= '0'; SW <= '0'; BEQ <= '0'; BNE <= '0'; BLT <= '0'; ORI <= '0'; ANDI<= '0'; SUBI<= '0'; ADDI <= '0'; SHL <= '0'; SHR <= '0'; Jump <= '0'; Hlt <= '0';
--	end case;

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
--halt <= hlt;

Itype <= ADDI or SUBI or ORI or ANDI or SHL or SHR;
BRN <= BEQ or BNE;
Branch <= brn;
ALUSrc <= LW or SW or Itype;
MemRead <= LW;
MemWrite <= SW;
RegWrite <= Rtype or LW or Itype;
RegDst <= Rtype;
MemtoReg <= LW;

--elsif(reset='0') then
----ALUOP <= "1111";
--RegDst <= '0';
--Branch <= '0'; 
--MemRead <= '0';
--MemtoReg <= '0';
--MemWrite <= '0';
--AluSrc <= '0';
--RegWrite <= '0';
--Jump <= '0';
--Halt <= '0';
----end if;
--end if;
--end process;

process(rtype,brn,blt, hlt,sw,lw,addi,subi,andi,ori,shl,shr,hlt) begin 
if(SW ='1' or LW = '1') then
Aluop <= "0000";
elsif(Rtype ='1') then
ALUop <= "0010";
elsif(BRN ='1') then
ALUop <= "0001";
elsif(BLT = '1') then
ALUop <= "0011";
elsif(ADDI = '1') then
ALUop <= "0100";
elsif(SUBI = '1') then
ALUop <= "0101";
elsif(ANDI = '1') then
ALUop <= "0110";
elsif(ORI = '1') then
ALUop <= "0111";
elsif(SHL = '1') then
ALUop <= "1000";
elsif(SHR = '1') then
ALUop <= "1001";
elsif(hlt = '1') then
ALUop<= "1111";

end if;
end process;

end Behavioral;

