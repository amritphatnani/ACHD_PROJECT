----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:03 12/05/2016 
-- Design Name: 
-- Module Name:    registerFile - Behavioral 
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
use ieee.numeric_std.all;
use ieee.STD_LOGIC_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity registerFile is

	 Port ( read1 : in  STD_LOGIC_VECTOR (4 downto 0);
			  read2 : in  STD_LOGIC_VECTOR (4 downto 0);
			  write_register : in STD_LOGIC_VECTOR ( 4 downto 0);
			  write_data : in STD_LOGIC_VECTOR (31 downto 0);
			  read_data1 : out STD_LOGIC_VECTOR (31 downto 0);
			  read_data2 : out STD_LOGIC_VECTOR (31 downto 0);
			  clk : in std_logic;
			  reset: in std_logic;
			  regWrite: in Std_logic);
end registerFile;

architecture Behavioral of registerFile is
signal register1: STD_LOGIC_VECTOR(31 downto 0);
signal register2: STD_LOGIC_VECTOR(31 downto 0);

type ARRAY_32 is ARRAY (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
signal x_register: ARRAY_32 :=	(	
											X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000008",X"00000009",X"0000000a",X"0000000b",X"0000000c",X"0000000d",X"0000000e",X"0000000f",
											X"00000010",X"00000011",X"00000012",X"00000013",X"00000014",X"00000015",X"00000016",X"00000017",
											X"00000018",X"00000019",X"0000001a",X"0000001b",X"0000001c",X"0000001d",X"0000001e",X"0000001f"	);
											

											


begin


--register1 <= x_register(to_integer(unsigned(read1(4 downto 0))));
--register2 <= x_register(to_integer(unsigned(read2(4 downto 0))));

process(clk, reset, regWrite) begin
--if(clk'event and clk = '1') then
	if(reset = '1') then 
	read_data1 <= x_register(conv_integer(read1(4 downto 0)));
	read_data2 <= x_register(conv_integer(read2(4 downto 0)));
	if(regWrite = '1') then
		x_register(conv_integer(write_register(4 downto 0)))<= write_data; 
		end if;
elsif(reset = '0') then
	read_data1 <= X"00000000";
	read_data2 <= X"00000000";
--end if;
end if;
end process;


end Behavioral;
