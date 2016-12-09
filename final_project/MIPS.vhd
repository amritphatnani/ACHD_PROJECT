----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:41 12/06/2016 
-- Design Name: 
-- Module Name:    MIPS - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MIPS is
Port(instruction : out std_logic_vector(31 downto 0);
		clk: in std_logic;
		reset: in std_logic
);

end MIPS;

architecture Behavioral of MIPS is

component InstructionFetch is
Port(branch_in : in std_logic_vector (31 downto 0);
		jump: in std_logic;
		branch: in std_logic;
		halt: in std_logic;
		clk : std_logic;
		reset: in std_logic;
		instruction: out std_logic_vector(31 downto 0)
);
end component;

component ControlUnit is
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
end component;

component ALUCtrl is
Port( ALUop : in std_logic_vector(3 downto 0);
		funct : in std_logic_vector (5 downto 0);
		ALUCtr: out std_logic_vector (3 downto 0);
		clk : in std_logic;
		reset  : in std_logic);
end component;

component ALU is
Port( ALUCtr : in std_logic_vector(3 downto 0);
		Data1 : in std_logic_vector(31 downto 0);
		Data2 : in std_logic_vector(31 downto 0);
		Zero : out STD_LOGIC;
		Negative: out std_logic;
		ALUResult : out std_logic_vector(31 downto 0);
		clk : in std_logic;
		reset  : in std_logic);
end Component;

component register_file is
generic 
	(
		DATA_WIDTH : natural := 32
	);

	port 
	(
		clk		: in std_logic;
		addr_a	: in std_logic_vector(4 downto 0);
		addr_b	: in std_logic_vector(4 downto 0);
		wrt_addr : in std_logic_vector(4 downto 0);
		--data_a	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		wrt_data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		--we_a	: in std_logic := '1';
		we_b	: in std_logic := '1';
		q_a		: out std_logic_vector((DATA_WIDTH -1) downto 0);
		q_b		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);
end component;

component signExt is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component dataMem is
    Port ( 	CLK: IN std_logic;
				memRead : in  STD_LOGIC;
				memWrite : in  STD_LOGIC;
				addr : in  STD_LOGIC_VECTOR (31 downto 0);
				dataRead : out  STD_LOGIC_VECTOR (31 downto 0);
				dataWrite : in  STD_LOGIC_VECTOR (31 downto 0));
end component;

component mux_2_1 is
	Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ff_32bit is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ff_5bit is
    Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component ff_1bit is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           output : out  STD_LOGIC);
end component;


component mux_5bits is
Port ( input1 : in  STD_LOGIC_VECTOR (4 downto 0);
           input2 : in  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

	--Instruction Fetch Signal
	signal jump_vld: std_logic;
	signal branch_vld: std_logic;
	signal halt_vld: std_logic;
	signal instr: std_logic_vector(31 downto 0);
	
	--Control Unit Signals
	signal ALUop: std_logic_vector(3 downto 0);
	signal Branch: std_logic;
	signal RegDst: std_logic;
	signal ALUSrc: std_logic;
	signal MemToReg: std_logic;
	signal RegWrite: std_logic;
	signal MemRead: std_logic;
	signal MemWrite: std_logic;
	
	--ALU control signals
	signal ALUCtr: std_logic_vector(3 downto 0);
	
	--ALU signals
	signal RegData1: std_logic_vector(31 downto 0);
	signal RegData2: std_logic_vector(31 downto 0);
	signal Zero: std_logic;
	signal negative: std_logic;
	signal ALU_result: std_logic_vector(31 downto 0);
	
	--ALU MUX signals
	signal alu_mux_output: std_logic_vector(31 downto 0);
	
	--Sign Extension Signals
	signal sign_extended: std_logic_vector(31 downto 0);
	
	--Register File MUX signals
	signal RF_MUX_output: std_logic_vector(4 downto 0);
	signal RT_MUX_output: std_logic_vector(4 downto 0);
	
	--Data Memory Signals
	signal dataMem_output: std_logic_vector(31 downto 0);
	
	--Data Memory MUX signals
	signal DM_MUX_output: std_logic_vector(31 downto 0);
	
	--FF signals
	signal ff_5: std_logic_vector(4 downto 0);
	signal ff_32 : std_logic_vector(31 downto 0);
	signal ff_1: std_logic;
	
	
	
begin

Sign_Extension : signExt PORT MAP(instr(15 downto 0), sign_extended);

Instruction_Fetch: InstructionFetch PORT MAP(sign_extended, jump_vld, branch_vld, halt_vld, clk, reset, instr);

branch_vld <= (branch and zero) or (branch and (not zero)) or (branch and ((not zero) and negative));

Control_Unit: ControlUnit PORT MAP(instr(31 downto 26), clk, reset, ALUOp, RegDst, Branch, MemRead, MemToReg, MemWrite, ALUsrc, RegWrite, jump_vld, halt_vld);

RegisterFile: Register_File PORT MAP(clk,instr(25 downto 21),instr(20 downto 16),ff_5, ff_32, ff_1, RegData1, RegData2);

ALUControl : ALUCtrl PORT MAP(AluOp, instr(5 downto 0), ALUctr, clk, reset);

ALU_imp: ALU PORT MAP(ALUCtr,RegData1, ALU_mux_output, zero, negative, ALU_result, clk, reset);

DataMemory: DataMem PORT MAP(clk, memRead, MemWrite, Alu_result, dataMem_output, RegData2);

RFMux: mux_5bits Port Map(instr(20 downto 16), instr(15 downto 11), RegDst, RF_MUX_Output);

--RTMux: mux_5bits Port MAP(instr(20 downto 16), RF_MUX_Output, ff_1, RT_mux_output);

RF_FF: ff_1bit port map(RegWrite, clk, reset, ff_1);

DestReg_FF: ff_5bit port map(RF_MUX_Output,clk, reset, ff_5);

ALUMUX: mux_2_1 PORT MAP(regData2, sign_extended, Alusrc, alu_mux_output);

DMMux: mux_2_1 PORT MAP(Alu_result, dataMem_output, MemToReg, DM_mux_output);

DM_FF: ff_32bit port map(DM_mux_output, clk, reset, ff_32);

instruction <= instr;

end Behavioral;

