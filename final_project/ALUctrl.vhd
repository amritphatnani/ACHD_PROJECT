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
port( ALUop : in std_logic_vector(1 downto 0);
		instr : in std_logic_vector (5 downto 0);
		ALUCtr: out std_logic_vector (2 downto 0));
end ALUCtrl;

architecture Behavioral of ALUCtrl is

begin

ALUctr(2) <= ALUop(0) OR (ALUop(1) and Instr(1));
ALUctr(1) <= (NOT ALUop(1)) OR (NOT Instr(2));
ALUctr(0) <= (ALUop(1) AND instr(0)) OR (ALUop(1) AND Instr(3));

end Behavioral;

