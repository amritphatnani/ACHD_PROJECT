library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity register_file is

	generic 
	(
		DATA_WIDTH : natural := 32
	);

	port 
	(
		clk		: in std_logic;
		addr_a	: in std_logic_vector(4 downto 0);
		addr_b	: in std_logic_vector(4 downto 0);
		wrt_addr	: in std_logic_vector(4 downto 0);
		--data_a	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		wrt_data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		--we_a	: in std_logic := '1';
		we_b	: in std_logic:='0';
		q_a		: out std_logic_vector((DATA_WIDTH -1) downto 0);
		q_b		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end register_file;

architecture rtl of register_file is
	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(0 to 31) of word_t;

	-- Declare the RAM 
	shared variable ram : memory_t:=(	
											X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
											X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000"	);

begin


--	-- Port A
--process(clk)
--begin

		q_a <= ram(conv_integer(addr_a));
--  	end process;

--process(clk)
--begin
		q_b <= ram(conv_integer(addr_b));
--  	end process;

	-- Port B 
	process(clk,we_b,wrt_data,wrt_addr)
	begin
	--if(rising_edge(clk)) then 
		if(we_b = '1') then
			ram(conv_integer(wrt_addr)) := wrt_data;
		end if;
	end process;

end rtl;
