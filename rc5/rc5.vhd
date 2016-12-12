----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:53:35 12/10/2016 
-- Design Name: 
-- Module Name:    rc5 - Behavioral 
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
use Ieee.std_logic_unsigned.all;
use work.rc5Package.all;

entity rc5 is
Port(
		input : in  STD_LOGIC_VECTOR (7 downto 0);	
		in_sel : in std_logic_vector(3 downto 0);
		CLR, CLK : in std_logic;
		vld_in: in std_logic;
		toggle_out: in std_logic; 							-- toggle between output and input.
		seg_sel: in std_logic_vector(1 downto 0);
		funct: in std_logic_vector(1 downto 0);
		led : out std_logic_vector(17 downto 0); 		-- to show which switch is has what value. But one of the LED i'll use to show the "do_rdy" bit.				
		segs: out std_logic_vector(6 downto 0);		-- 7 bits for each cathode of on 7 segment display
		disp: out std_logic_vector(7 downto 0)
			  );
end rc5;

architecture Behavioral of rc5 is

component key_expansion is
Port (  clr : in std_logic;
		  clk	: in STD_LOGIC;  								
		  ukey: in std_logic_vector(127 downto 0);
        key_in	: in STD_LOGIC;
		  skey: out S_ARRAY
		  );
end component;

component rc5_decryption is
Port ( clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  din : in Std_logic_vector(63 downto 0);
			  di_vld : in  STD_LOGIC;
			  dout : out std_logic_vector(63 downto 0);
			  o_rdy: out std_logic;
			  skey: in S_ARRAY
			  );
end component;

component rc5_encrypt is
Port ( clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           din : in Std_logic_vector(63 downto 0);
			  di_vld : in  STD_LOGIC;								-- toggle between input and output;
				dout: out STD_LOGIC_VECTOR (63 downto 0);
				out_rdy: out std_logic;
				skey: in S_ARRAY
			  );
end component;

--input signals
	signal in0: std_logic_vector(7 downto 0);
	signal in1: std_logic_vector(7 downto 0);
	signal in2: std_logic_vector(7 downto 0);
	signal in3: std_logic_vector(7 downto 0);
	signal in4: std_logic_vector(7 downto 0);
	signal in5: std_logic_vector(7 downto 0);
	signal in6: std_logic_vector(7 downto 0);
	signal in7: std_logic_vector(7 downto 0);
	signal in8: std_logic_vector(7 downto 0);
	signal in9: std_logic_vector(7 downto 0);
	signal in10: std_logic_vector(7 downto 0);
	signal in11: std_logic_vector(7 downto 0);
	signal in12: std_logic_vector(7 downto 0);
	signal in13: std_logic_vector(7 downto 0);
	signal in14: std_logic_vector(7 downto 0);
	signal in15: std_logic_vector(7 downto 0);
	SIGNAL cnt : std_logic_vector(2 downto 0) :="000";                     
	SIGNAL counter : integer range 0 to 100001; 
	signal output: std_logic_vector(127 downto 0);
	
--key expansion signals
signal exp_in: std_logic_vector(127 downto 0);
signal exp_vld: std_logic;
signal skey_out: S_ARRAY;
	     
--encrypt signals
signal encrypt_out : std_logic_vector(63 downto 0);
signal encrypt_in	 : std_logic_vector(63 downto 0);
signal encrypt_vld: std_logic;
signal encrypt_rdy: std_logic;

--decrypt signals
signal decrypt_out : std_logic_vector(63 downto 0);
signal decrypt_in	 : std_logic_vector(63 downto 0);
signal decrypt_vld: std_logic;
signal decrypt_rdy: std_logic;

--for 7 segment display
type hex is array(0 to 15) of std_logic_vector(6 downto 0);
	constant segment : hex:= hex'("1000000","1111001", "0100100", "0110000", "0011001", "0010010",
											"0000010", "1111000", "0000000", "0010000", "0001000", 
											"0000011", "1000110", "0100001", "0000110", "0001110");
											


begin

PROCESS(in_sel, clk)  BEGIN                                                 
				IF(clk'EVENT AND clk='1') THEN 
				IF(in_sel = "0000") then
				in0 <= input(7 downto 0);                      
				END IF;                                                                
				END IF;
			END PROCESS; 
			
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "0001") then
			in1 <= input(7 downto 0);                      
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "0010") then
			in2 <= input(7 downto 0);                      
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "0011") then
			in3 <= input(7 downto 0); 
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "0100") then
			in4 <= input(7 downto 0);                      
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "0101") then
			in5 <= input(7 downto 0);                      
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "0110") then
			in6 <= input(7 downto 0);
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "0111") then
			in7 <= input(7 downto 0);
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		 PROCESS(in_sel, clk)  BEGIN                                                 
				IF(clk'EVENT AND clk='1') THEN 
				IF(in_sel = "1000") then
				in8 <= input(7 downto 0);                      
				END IF;                                                                
				END IF;
			END PROCESS; 
			
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "1001") then
			in9 <= input(7 downto 0);                      
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "1010") then
			in10 <= input(7 downto 0);                      
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "1011") then
			in11 <= input(7 downto 0); 
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "1100") then
			in12 <= input(7 downto 0);                      
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "1101") then
			in13 <= input(7 downto 0);                      
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "1110") then
			in14 <= input(7 downto 0);
			END IF;                                                                
			END IF;
		END PROCESS; 
		
		PROCESS(in_sel, clk)  BEGIN                                                 
			IF(clk'EVENT AND clk='1') THEN 
			IF(in_sel = "1111") then
			in15 <= input(7 downto 0);
			END IF;                                                                
			END IF;
		END PROCESS; 


process(clk, funct) begin
if(clk'event and clk ='1') then
if(toggle_out ='0') then
if(funct = "00") then
exp_in <= in15 & in14 & in13 & in12 & in11 & in10 & in9 & in8 & in7 & in6 & in5 & in4 & in3 & in2 & in1 & in0;
exp_vld <= vld_in;
output <= exp_in;

elsif(funct = "01") then
encrypt_in <= in7 & in6 & in5 & in4 & in3 & in2 & in1 & in0;
encrypt_vld <= vld_in;
output <= X"0000000000000000" & encrypt_in;

elsif(funct = "11") then
decrypt_in <= encrypt_out;
decrypt_vld <= vld_in;
output <= X"0000000000000000" & decrypt_in;
end if;

elsif(toggle_out ='1') then
if(funct = "01") then
output <= X"0000000000000000" & encrypt_out;

elsif(funct = "11") then
output <= X"0000000000000000" & decrypt_out;

end if;
end if;
end if;
end process;

keyExp : key_expansion PORT MAP ( clr, clk, exp_in, exp_vld, skey_out);

encrypt : rc5_encrypt PORT MAP (clr, clk, encrypt_in, encrypt_vld, encrypt_out, encrypt_rdy,skey_out);

decrypt : rc5_decryption PORT MAP(clr, clk, decrypt_in, decrypt_vld, decrypt_out, decrypt_rdy,skey_out);

PROCESS(clk)  BEGIN
	  IF(clk'EVENT AND clk='1') THEN
	  if (counter = 100000) then counter <= 0;
			  IF(cnt="111") THEN   cnt<="000";
			  ELSE    cnt<=cnt+'1'; 
		  END IF;
		  else counter <= counter +1;
		  end if;
	  END IF;
 END PROCESS;
 
Process(clk,cnt,seg_sel) BEGIN
	if(clk'EVENT and clk ='1') then
	if(seg_sel = "00") then
		if(cnt = "000") then 
		disp<="11111110";
		segs <= segment(conv_integer(output(3 downto 0)));
	
		elsif(cnt = "001") then 
		disp<="11111101";
		segs <= segment(conv_integer(output(7 downto 4)));
		 
		elsif(cnt = "010") then 
		disp<="11111011";
		segs <= segment(conv_integer(output(11 downto 8)));
		 
		elsif(cnt = "011") then 
		disp<="11110111";
		segs <= segment(conv_integer(output(15 downto 12)));
		 
		elsif(cnt = "100") then 
		disp<="11101111";
		segs <= segment(conv_integer(output(19 downto 16)));
			
		elsif(cnt = "101") then 
		disp<="11011111";
		segs <= segment(conv_integer(output(23 downto 20)));
		 
		elsif(cnt = "110") then 
		disp<="10111111";
		segs <= segment(conv_integer(output(27 downto 24)));
		 
		elsif(cnt = "111") then 
		disp<="01111111";
		segs <= segment(conv_integer(output(31 downto 28)));
		end if;
		
	elsif(seg_sel="01") then
		
		if(cnt = "000") then 
		disp<="11111110";
		segs <= segment(conv_integer(output(35 downto 32)));
		
		elsif(cnt = "001") then 
		disp<="11111101";
		segs <= segment(conv_integer(output(39 downto 36)));

		elsif(cnt = "010") then 
		disp<="11111011";
		segs <= segment(conv_integer(output(43 downto 40)));
		 
		elsif(cnt = "011") then 
		disp<="11110111";
		segs <= segment(conv_integer(output(47 downto 44)));
		 
		elsif(cnt = "100") then 
		disp<="11101111";
		segs <= segment(conv_integer(output(51 downto 48)));
			
		elsif(cnt = "101") then 
		disp<="11011111";
		segs <= segment(conv_integer(output(55 downto 52)));
		 
		elsif(cnt = "110") then 
		disp<="10111111";
		segs <= segment(conv_integer(output(59 downto 56)));
		 
		elsif(cnt = "111") then 
		disp<="01111111";
		segs <= segment(conv_integer(output(63 downto 60)));
		end if;
		
	elsif(seg_sel="10") then
		if(cnt = "000") then 
		disp<="11111110";
		segs <= segment(conv_integer(output(67 downto 64)));
	
		elsif(cnt = "001") then 
		disp<="11111101";
		segs <= segment(conv_integer(output(71 downto 68)));
		 
		elsif(cnt = "010") then 
		disp<="11111011";
		segs <= segment(conv_integer(output(75 downto 72)));
		 
		elsif(cnt = "011") then 
		disp<="11110111";
		segs <= segment(conv_integer(output(79 downto 76)));
		 
		elsif(cnt = "100") then 
		disp<="11101111";
		segs <= segment(conv_integer(output(83 downto 80)));
			
		elsif(cnt = "101") then 
		disp<="11011111";
		segs <= segment(conv_integer(output(87 downto 84)));
		 
		elsif(cnt = "110") then 
		disp<="10111111";
		segs <= segment(conv_integer(output(91 downto 88)));
		 
		elsif(cnt = "111") then 
		disp<="01111111";
		segs <= segment(conv_integer(output(95 downto 92)));
		end if;
		
	elsif(seg_sel="11") then
		
		if(cnt = "000") then 
		disp<="11111110";
		segs <= segment(conv_integer(output(99 downto 96)));
		
		elsif(cnt = "001") then 
		disp<="11111101";
		segs <= segment(conv_integer(output(103 downto 100)));

		elsif(cnt = "010") then 
		disp<="11111011";
		segs <= segment(conv_integer(output(107 downto 104)));
		 
		elsif(cnt = "011") then 
		disp<="11110111";
		segs <= segment(conv_integer(output(111 downto 108)));
		 
		elsif(cnt = "100") then 
		disp<="11101111";
		segs <= segment(conv_integer(output(115 downto 112)));
			
		elsif(cnt = "101") then 
		disp<="11011111";
		segs <= segment(conv_integer(output(119 downto 116)));
		 
		elsif(cnt = "110") then 
		disp<="10111111";
		segs <= segment(conv_integer(output(123 downto 120)));
		 
		elsif(cnt = "111") then 
		disp<="01111111";
		segs <= segment(conv_integer(output(127 downto 124)));
		end if;
		end if;
		end if;
	end process;
	
	led(17) <= decrypt_rdy;
	led(16) <= encrypt_rdy;
	led(15 downto 8) <= input(7 downto 0);
	led(7 downto 4) <= in_sel(3 downto 0);
	led(3 downto 2) <= seg_sel(1 downto 0);
	led(1 downto 0) <= funct(1 downto 0);



end Behavioral;

