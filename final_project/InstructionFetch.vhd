----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:50 12/05/2016 
-- Design Name: 
-- Module Name:    InstructionFetch - Behavioral 
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

entity InstructionFetch is
Port(branch_in : in std_logic_vector (31 downto 0);
		jump: in std_logic;
		branch: in std_logic;
		clk : std_logic;
		reset: in std_logic;
		instruction: out std_logic_vector(31 downto 0)
);
end InstructionFetch;

architecture Behavioral of InstructionFetch is

component program_counter is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ShiftLeft2Jump is
Port( input : in std_logic_vector(25 downto 0);
		output : out std_logic_vector(27 downto 0));
end component;

component mux_2_1 is
Port( input1 : in std_logic_vector(31 downto 0);
		input2 : in std_logic_vector(31 downto 0);
		sel : in std_logic;
		output : out std_logic_vector(31 downto 0));
end component;

component Adder is
Port (number1 : in std_logic_vector(31 downto 0);
		number2 : in std_logic_vector(31 downto 0);
		result : out std_logic_vector(31 downto 0));
end component;

begin


end Behavioral;

