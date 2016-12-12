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
		halt: in std_logic;
		clk : in std_logic;
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

--component ShiftLeft2Jump is
--Port( input : in std_logic_vector(25 downto 0);
--		output : out std_logic_vector(27 downto 0));
--end component;

component ShiftLeft2 is
Port( input : in std_logic_vector(31 downto 0);
		output : out std_logic_vector(31 downto 0));
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

component memInstruction is
Port(
		address : in  STD_LOGIC_VECTOR (31 downto 0);
		instruction : out  STD_LOGIC_VECTOR (31 downto 0);
		clk: in STD_logic;
		reset: in STD_logic
	  );
end component;

signal PC_current: std_logic_vector(31 downto 0);
signal PC_mux_output: std_logic_vector(31 downto 0);
signal PC_output : std_logic_vector(31 downto 0);
signal PC_increment : std_logic_vector(31 downto 0):= X"00000001" ;
signal PC_adder_output : std_logic_vector(31 downto 0);
signal branch_shift_output: std_logic_vector(31 downto 0);
signal branch_adder_output: std_logic_vector(31 downto 0);
signal jump_shift_output: std_logic_vector(31 downto 0);
signal InstrMemOut: std_logic_vector(31 downto 0);
signal jump_address: std_logic_vector(31 downto 0);
signal branch_address: std_logic_vector(31 downto 0);
signal PC_next: std_logic_vector(31 downto 0); 
begin


HALT_MUX: mux_2_1 PORT MAP(pc_next,PC_current,halt,pc_mux_output);

PC: Program_counter PORT MAP(pc_mux_output,clk, reset, PC_output);

pc_current <= pc_output;

InstrMem: memInstruction PORT MAP(PC_output, InstrMemOut, clk, reset);

instruction <= InstrMemOut;

PC_ADDER: Adder PORT MAP(PC_output, PC_increment, pc_adder_output);

Shift_Jump: ShiftLeft2 PORT MAP ("000000" & InstrMemOut(25 downto 0), jump_shift_output);

jump_address <= pc_adder_output(31 downto 28) & jump_shift_output(27 downto 0);

Jump_mux : mux_2_1 PORT MAP(branch_address, jump_address, jump, PC_next);

--Branch_Shift: ShiftLeft2 PORT MAP(branch_in, branch_shift_output);

Branch_Adder: Adder PORT MAP(branch_in, pc_adder_output, branch_adder_output);

Branch_MUX: mux_2_1 PORT MAP(pc_adder_output, branch_adder_output, branch, branch_address);

end Behavioral;

