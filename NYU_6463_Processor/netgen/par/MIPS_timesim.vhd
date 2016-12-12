--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MIPS_timesim.vhd
-- /___/   /\     Timestamp: Fri Dec 09 19:28:52 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 2I -pcf MIPS.pcf -rpw 100 -tpw 0 -ar Structure -tm MIPS -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim MIPS.ncd MIPS_timesim.vhd 
-- Device	: xa7a100tcsg324-2i (PRELIMINARY 1.07 2013-10-13)
-- Input file	: MIPS.ncd
-- Output file	: C:\Users\amrit\Documents\GitHub\ACHD_PROJECT\NYU_6463_Processor\netgen\par\MIPS_timesim.vhd
-- # of Entities	: 1
-- Design Name	: MIPS
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity MIPS is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    instruction : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end MIPS;

architecture Structure of MIPS is
  signal clk_BUFGP_IBUFG_451 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal halt_vld : STD_LOGIC; 
  signal jump_vld : STD_LOGIC; 
  signal Branch : STD_LOGIC; 
  signal Instruction_Fetch_PC_adder_output_3_0 : STD_LOGIC; 
  signal instruction_1_OBUF_458 : STD_LOGIC; 
  signal reset_IBUF_459 : STD_LOGIC; 
  signal Instruction_Fetch_branch_adder_output_3_0 : STD_LOGIC; 
  signal Instruction_Fetch_PC_n0009 : STD_LOGIC; 
  signal Instruction_Fetch_PC_adder_output_4_0 : STD_LOGIC; 
  signal instruction_2_OBUF_464 : STD_LOGIC; 
  signal Instruction_Fetch_branch_adder_output_4_0 : STD_LOGIC; 
  signal Instruction_Fetch_PC_adder_output_5_0 : STD_LOGIC; 
  signal instruction_3_OBUF_468 : STD_LOGIC; 
  signal Instruction_Fetch_branch_adder_output_5_0 : STD_LOGIC; 
  signal Instruction_Fetch_PC_adder_output_6_0 : STD_LOGIC; 
  signal instruction_4_OBUF_472 : STD_LOGIC; 
  signal Instruction_Fetch_branch_adder_output_6_0 : STD_LOGIC; 
  signal Instruction_Fetch_PC_adder_output_1_0 : STD_LOGIC; 
  signal instruction_29_OBUF_476 : STD_LOGIC; 
  signal instruction_30_OBUF_477 : STD_LOGIC; 
  signal instruction_31_OBUF_478 : STD_LOGIC; 
  signal instruction_27_OBUF_479 : STD_LOGIC; 
  signal instruction_26_OBUF_480 : STD_LOGIC; 
  signal instruction_28_OBUF_481 : STD_LOGIC; 
  signal Instruction_Fetch_branch_adder_output_2_0 : STD_LOGIC; 
  signal Instruction_Fetch_PC_adder_output_2_0 : STD_LOGIC; 
  signal instruction_0_OBUF_485 : STD_LOGIC; 
  signal Instruction_Fetch_PC_adder_output_0_0 : STD_LOGIC; 
  signal Instruction_Fetch_PC_adder_output_7_0 : STD_LOGIC; 
  signal instruction_5_OBUF_490 : STD_LOGIC; 
  signal Instruction_Fetch_branch_adder_output_7_0 : STD_LOGIC; 
  signal instruction_15_OBUF_494 : STD_LOGIC; 
  signal instruction_14_OBUF_495 : STD_LOGIC; 
  signal instruction_13_OBUF_496 : STD_LOGIC; 
  signal instruction_12_OBUF_497 : STD_LOGIC; 
  signal instruction_11_OBUF_498 : STD_LOGIC; 
  signal instruction_10_OBUF_499 : STD_LOGIC; 
  signal instruction_9_OBUF_500 : STD_LOGIC; 
  signal instruction_8_OBUF_501 : STD_LOGIC; 
  signal instruction_7_OBUF_502 : STD_LOGIC; 
  signal instruction_6_OBUF_503 : STD_LOGIC; 
  signal instruction_25_OBUF_504 : STD_LOGIC; 
  signal instruction_24_OBUF_505 : STD_LOGIC; 
  signal instruction_23_OBUF_506 : STD_LOGIC; 
  signal instruction_22_OBUF_507 : STD_LOGIC; 
  signal instruction_21_OBUF_508 : STD_LOGIC; 
  signal instruction_20_OBUF_509 : STD_LOGIC; 
  signal instruction_19_OBUF_510 : STD_LOGIC; 
  signal instruction_18_OBUF_511 : STD_LOGIC; 
  signal instruction_17_OBUF_512 : STD_LOGIC; 
  signal instruction_16_OBUF_513 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal Instruction_Fetch_PC_output_1_rt_140 : STD_LOGIC; 
  signal Instruction_Fetch_PC_output_3_rt_135 : STD_LOGIC; 
  signal Instruction_Fetch_PC_output_2_rt_130 : STD_LOGIC; 
  signal ProtoComp14_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal Instruction_Fetch_PC_output_5_rt_161 : STD_LOGIC; 
  signal Instruction_Fetch_PC_output_4_rt_156 : STD_LOGIC; 
  signal Instruction_Fetch_PC_output_6_rt_155 : STD_LOGIC; 
  signal Instruction_Fetch_PC_output_7_rt_154 : STD_LOGIC; 
  signal clk_ProtoComp14_INTERMDISABLE_GND_0 : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_CLKARDCLK : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_CLKBWRCLK : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ENARDEN : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ENBWREN : STD_LOGIC; 
  signal NlwBufferSignal_instruction_9_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_PC_output_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_PC_output_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instruction_8_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_PC_output_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instruction_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_PC_output_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instruction_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_PC_output_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_PC_output_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_PC_output_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instruction_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_PC_output_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_instruction_10_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_instruction_13_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_14_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_22_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_15_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_31_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_11_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_21_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_30_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_23_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_12_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_20_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_17_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_16_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_25_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_27_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_24_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_19_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_28_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_29_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_18_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_instruction_26_OBUF_I : STD_LOGIC; 
  signal NLW_N0_6_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp9_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_InstrMem_Mram_instrctMem1_DOPADOP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_InstrMem_Mram_instrctMem1_DOPADOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_InstrMem_Mram_instrctMem1_DOPBDOP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_InstrMem_Mram_instrctMem1_DOPBDOP_1_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_5_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp11_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_S_3_UNCONNECTED : STD_LOGIC; 
  signal Instruction_Fetch_PC_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Instruction_Fetch_PC_ADDER_Madd_result_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal Instruction_Fetch_Branch_Adder_Madd_result_cy : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal Instruction_Fetch_PC_ADDER_Madd_result_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Instruction_Fetch_PC_adder_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Instruction_Fetch_PC_mux_output : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Instruction_Fetch_Branch_Adder_Madd_result_lut : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal Instruction_Fetch_branch_adder_output : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR : STD_LOGIC_VECTOR ( 11 downto 4 ); 
  signal NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR : STD_LOGIC_VECTOR ( 11 downto 4 ); 
begin
  Instruction_Fetch_PC_ADDER_Madd_result_cy_3_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_adder_output(3),
      O => Instruction_Fetch_PC_adder_output_3_0
    );
  Instruction_Fetch_PC_ADDER_Madd_result_cy_3_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_adder_output(2),
      O => Instruction_Fetch_PC_adder_output_2_0
    );
  Instruction_Fetch_PC_ADDER_Madd_result_cy_3_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_adder_output(1),
      O => Instruction_Fetch_PC_adder_output_1_0
    );
  Instruction_Fetch_PC_ADDER_Madd_result_cy_3_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_adder_output(0),
      O => Instruction_Fetch_PC_adder_output_0_0
    );
  Instruction_Fetch_PC_output_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y133",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Instruction_Fetch_PC_output(3),
      ADR5 => '1',
      O => Instruction_Fetch_PC_output_3_rt_135
    );
  N0_6_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y133",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_D5LUT_O_UNCONNECTED
    );
  ProtoComp9_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X4Y133"
    )
    port map (
      O => NLW_ProtoComp9_CYINITGND_O_UNCONNECTED
    );
  Instruction_Fetch_PC_ADDER_Madd_result_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y133"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => Instruction_Fetch_PC_ADDER_Madd_result_cy(3),
      CO(2) => NLW_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Instruction_Fetch_PC_ADDER_Madd_result_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Instruction_Fetch_PC_adder_output(3),
      O(2) => Instruction_Fetch_PC_adder_output(2),
      O(1) => Instruction_Fetch_PC_adder_output(1),
      O(0) => Instruction_Fetch_PC_adder_output(0),
      S(3) => Instruction_Fetch_PC_output_3_rt_135,
      S(2) => Instruction_Fetch_PC_output_2_rt_130,
      S(1) => Instruction_Fetch_PC_output_1_rt_140,
      S(0) => Instruction_Fetch_PC_ADDER_Madd_result_lut(0)
    );
  Instruction_Fetch_PC_output_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y133",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Instruction_Fetch_PC_output(2),
      ADR5 => '1',
      O => Instruction_Fetch_PC_output_2_rt_130
    );
  N0_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y133",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_C5LUT_O_UNCONNECTED
    );
  Instruction_Fetch_PC_output_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y133",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Instruction_Fetch_PC_output(1),
      ADR5 => '1',
      O => Instruction_Fetch_PC_output_1_rt_140
    );
  N0_8_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y133",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_B5LUT_O_UNCONNECTED
    );
  Instruction_Fetch_PC_ADDER_Madd_result_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y133",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Instruction_Fetch_PC_output(0),
      ADR5 => '1',
      O => Instruction_Fetch_PC_ADDER_Madd_result_lut(0)
    );
  N1_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y133",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_A5LUT_O_UNCONNECTED
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y31",
      PATHPULSE => 50 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  Instruction_Fetch_InstrMem_Mram_instrctMem1 : X_RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18,
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"000A000A2014000A00012013000A201200012011000100020002000E000A0002",
      INIT_01 => X"000000000000000000000000000000000000000000000000001400000000FFFE",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"18441444006210441C6200620C44006208040064206320640405040404030401",
      INIT_11 => X"00000000000000000000000000000000000000000000FC0030002C8524852805",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      INIT_FILE => "NONE",
      LOC => "RAMB18_X0Y53"
    )
    port map (
      CLKARDCLK => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_CLKARDCLK,
      CLKBWRCLK => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_CLKBWRCLK,
      ENARDEN => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ENARDEN,
      ENBWREN => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ENBWREN,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12) => '0',
      ADDRARDADDR(11) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(11),
      ADDRARDADDR(10) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(10),
      ADDRARDADDR(9) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(9),
      ADDRARDADDR(8) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(8),
      ADDRARDADDR(7) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(7),
      ADDRARDADDR(6) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(6),
      ADDRARDADDR(5) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(5),
      ADDRARDADDR(4) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(4),
      ADDRARDADDR(3) => '1',
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(13) => '0',
      ADDRBWRADDR(12) => '1',
      ADDRBWRADDR(11) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(11),
      ADDRBWRADDR(10) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(10),
      ADDRBWRADDR(9) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(9),
      ADDRBWRADDR(8) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(8),
      ADDRBWRADDR(7) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(7),
      ADDRBWRADDR(6) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(6),
      ADDRBWRADDR(5) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(5),
      ADDRBWRADDR(4) => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(4),
      ADDRBWRADDR(3) => '1',
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(15) => instruction_15_OBUF_494,
      DOADO(14) => instruction_14_OBUF_495,
      DOADO(13) => instruction_13_OBUF_496,
      DOADO(12) => instruction_12_OBUF_497,
      DOADO(11) => instruction_11_OBUF_498,
      DOADO(10) => instruction_10_OBUF_499,
      DOADO(9) => instruction_9_OBUF_500,
      DOADO(8) => instruction_8_OBUF_501,
      DOADO(7) => instruction_7_OBUF_502,
      DOADO(6) => instruction_6_OBUF_503,
      DOADO(5) => instruction_5_OBUF_490,
      DOADO(4) => instruction_4_OBUF_472,
      DOADO(3) => instruction_3_OBUF_468,
      DOADO(2) => instruction_2_OBUF_464,
      DOADO(1) => instruction_1_OBUF_458,
      DOADO(0) => instruction_0_OBUF_485,
      DOBDO(15) => instruction_31_OBUF_478,
      DOBDO(14) => instruction_30_OBUF_477,
      DOBDO(13) => instruction_29_OBUF_476,
      DOBDO(12) => instruction_28_OBUF_481,
      DOBDO(11) => instruction_27_OBUF_479,
      DOBDO(10) => instruction_26_OBUF_480,
      DOBDO(9) => instruction_25_OBUF_504,
      DOBDO(8) => instruction_24_OBUF_505,
      DOBDO(7) => instruction_23_OBUF_506,
      DOBDO(6) => instruction_22_OBUF_507,
      DOBDO(5) => instruction_21_OBUF_508,
      DOBDO(4) => instruction_20_OBUF_509,
      DOBDO(3) => instruction_19_OBUF_510,
      DOBDO(2) => instruction_18_OBUF_511,
      DOBDO(1) => instruction_17_OBUF_512,
      DOBDO(0) => instruction_16_OBUF_513,
      DOPADOP(1) => NLW_Instruction_Fetch_InstrMem_Mram_instrctMem1_DOPADOP_1_UNCONNECTED,
      DOPADOP(0) => NLW_Instruction_Fetch_InstrMem_Mram_instrctMem1_DOPADOP_0_UNCONNECTED,
      DOPBDOP(1) => NLW_Instruction_Fetch_InstrMem_Mram_instrctMem1_DOPBDOP_1_UNCONNECTED,
      DOPBDOP(0) => NLW_Instruction_Fetch_InstrMem_Mram_instrctMem1_DOPBDOP_0_UNCONNECTED,
      WEA(1) => '0',
      WEA(0) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
  ProtoComp14_INTERMDISABLE_GND_1 : X_ZERO
    generic map(
      LOC => "IOB_X0Y117"
    )
    port map (
      O => ProtoComp14_INTERMDISABLE_GND_0
    );
  reset_IBUF : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X0Y117"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => ProtoComp14_INTERMDISABLE_GND_0,
      O => reset_IBUF_459,
      I => reset,
      TPWRGT => '1'
    );
  instruction_9_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y140"
    )
    port map (
      I => NlwBufferSignal_instruction_9_OBUF_I,
      O => instruction(9)
    );
  instruction_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y148"
    )
    port map (
      I => NlwBufferSignal_instruction_1_OBUF_I,
      O => instruction(1)
    );
  instruction_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y142"
    )
    port map (
      I => NlwBufferSignal_instruction_7_OBUF_I,
      O => instruction(7)
    );
  Instruction_Fetch_mux101162 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y133"
    )
    port map (
      IA => N28,
      IB => N29,
      O => Instruction_Fetch_PC_mux_output(4),
      SEL => Instruction_Fetch_branch_adder_output_4_0
    );
  Instruction_Fetch_mux101162_F : X_LUT6
    generic map(
      LOC => "SLICE_X6Y133",
      INIT => X"CCCCAA00CCCCAAF0"
    )
    port map (
      ADR4 => halt_vld,
      ADR5 => Branch,
      ADR3 => jump_vld,
      ADR2 => Instruction_Fetch_PC_adder_output_4_0,
      ADR0 => instruction_2_OBUF_464,
      ADR1 => Instruction_Fetch_PC_output(4),
      O => N28
    );
  Instruction_Fetch_PC_output_4 : X_SFF
    generic map(
      LOC => "SLICE_X6Y133",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_459,
      CLK => NlwBufferSignal_Instruction_Fetch_PC_output_4_CLK,
      I => Instruction_Fetch_PC_mux_output(4),
      O => Instruction_Fetch_PC_output(4),
      SRST => Instruction_Fetch_PC_n0009,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Instruction_Fetch_mux101162_G : X_LUT6
    generic map(
      LOC => "SLICE_X6Y133",
      INIT => X"CCCCAAFFCCCCAAF0"
    )
    port map (
      ADR4 => halt_vld,
      ADR3 => jump_vld,
      ADR5 => Branch,
      ADR1 => Instruction_Fetch_PC_output(4),
      ADR2 => Instruction_Fetch_PC_adder_output_4_0,
      ADR0 => instruction_2_OBUF_464,
      O => N29
    );
  Instruction_Fetch_PC_output_0 : X_SFF
    generic map(
      LOC => "SLICE_X6Y133",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_459,
      CLK => NlwBufferSignal_Instruction_Fetch_PC_output_0_CLK,
      I => Instruction_Fetch_PC_mux_output(0),
      O => Instruction_Fetch_PC_output(0),
      SRST => Instruction_Fetch_PC_n0009,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Instruction_Fetch_mux321 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y133",
      INIT => X"8888D8D88888D8D8"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR2 => Instruction_Fetch_PC_adder_output_0_0,
      ADR1 => Instruction_Fetch_PC_output(0),
      ADR0 => halt_vld,
      ADR4 => jump_vld,
      O => Instruction_Fetch_PC_mux_output(0)
    );
  Control_Unit_Jump_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y133",
      INIT => X"0000000000000200"
    )
    port map (
      ADR0 => instruction_28_OBUF_481,
      ADR1 => instruction_26_OBUF_480,
      ADR2 => instruction_27_OBUF_479,
      ADR3 => instruction_29_OBUF_476,
      ADR5 => instruction_30_OBUF_477,
      ADR4 => instruction_31_OBUF_478,
      O => jump_vld
    );
  instruction_8_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y141"
    )
    port map (
      I => NlwBufferSignal_instruction_8_OBUF_I,
      O => instruction(8)
    );
  Instruction_Fetch_mux101152 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y132"
    )
    port map (
      IA => N30,
      IB => N31,
      O => Instruction_Fetch_PC_mux_output(3),
      SEL => Instruction_Fetch_branch_adder_output_3_0
    );
  Instruction_Fetch_mux101152_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y132",
      INIT => X"CCCCF000CCCCFA0A"
    )
    port map (
      ADR4 => halt_vld,
      ADR5 => Branch,
      ADR2 => jump_vld,
      ADR0 => Instruction_Fetch_PC_adder_output_3_0,
      ADR3 => instruction_1_OBUF_458,
      ADR1 => Instruction_Fetch_PC_output(3),
      O => N30
    );
  Instruction_Fetch_PC_output_3 : X_SFF
    generic map(
      LOC => "SLICE_X4Y132",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_459,
      CLK => NlwBufferSignal_Instruction_Fetch_PC_output_3_CLK,
      I => Instruction_Fetch_PC_mux_output(3),
      O => Instruction_Fetch_PC_output(3),
      SRST => Instruction_Fetch_PC_n0009,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Instruction_Fetch_mux101152_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y132",
      INIT => X"CCCCCCCCAAAAFFF0"
    )
    port map (
      ADR5 => halt_vld,
      ADR4 => jump_vld,
      ADR3 => Branch,
      ADR1 => Instruction_Fetch_PC_output(3),
      ADR2 => Instruction_Fetch_PC_adder_output_3_0,
      ADR0 => instruction_1_OBUF_458,
      O => N31
    );
  instruction_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y147"
    )
    port map (
      I => NlwBufferSignal_instruction_2_OBUF_I,
      O => instruction(2)
    );
  instruction_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y146"
    )
    port map (
      I => NlwBufferSignal_instruction_3_OBUF_I,
      O => instruction(3)
    );
  instruction_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y143"
    )
    port map (
      I => NlwBufferSignal_instruction_6_OBUF_I,
      O => instruction(6)
    );
  Instruction_Fetch_PC_n00091_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y132",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => reset_IBUF_459,
      O => Instruction_Fetch_PC_n0009
    );
  Instruction_Fetch_mux101182 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y134"
    )
    port map (
      IA => N24,
      IB => N25,
      O => Instruction_Fetch_PC_mux_output(6),
      SEL => Instruction_Fetch_branch_adder_output_6_0
    );
  Instruction_Fetch_mux101182_F : X_LUT6
    generic map(
      LOC => "SLICE_X6Y134",
      INIT => X"CCCCCCCCAAAA00F0"
    )
    port map (
      ADR5 => halt_vld,
      ADR3 => Branch,
      ADR4 => jump_vld,
      ADR2 => Instruction_Fetch_PC_adder_output_6_0,
      ADR0 => instruction_4_OBUF_472,
      ADR1 => Instruction_Fetch_PC_output(6),
      O => N24
    );
  Instruction_Fetch_PC_output_6 : X_SFF
    generic map(
      LOC => "SLICE_X6Y134",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_459,
      CLK => NlwBufferSignal_Instruction_Fetch_PC_output_6_CLK,
      I => Instruction_Fetch_PC_mux_output(6),
      O => Instruction_Fetch_PC_output(6),
      SRST => Instruction_Fetch_PC_n0009,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Instruction_Fetch_mux101182_G : X_LUT6
    generic map(
      LOC => "SLICE_X6Y134",
      INIT => X"CCCCCCCCAAAAFFF0"
    )
    port map (
      ADR5 => halt_vld,
      ADR4 => jump_vld,
      ADR3 => Branch,
      ADR1 => Instruction_Fetch_PC_output(6),
      ADR2 => Instruction_Fetch_PC_adder_output_6_0,
      ADR0 => instruction_4_OBUF_472,
      O => N25
    );
  instruction_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y144"
    )
    port map (
      I => NlwBufferSignal_instruction_5_OBUF_I,
      O => instruction(5)
    );
  Instruction_Fetch_mux101172 : X_MUX2
    generic map(
      LOC => "SLICE_X5Y133"
    )
    port map (
      IA => N26,
      IB => N27,
      O => Instruction_Fetch_PC_mux_output(5),
      SEL => Instruction_Fetch_branch_adder_output_5_0
    );
  Instruction_Fetch_mux101172_F : X_LUT6
    generic map(
      LOC => "SLICE_X5Y133",
      INIT => X"CCCCCCCCAAAA00F0"
    )
    port map (
      ADR5 => halt_vld,
      ADR3 => Branch,
      ADR4 => jump_vld,
      ADR2 => Instruction_Fetch_PC_adder_output_5_0,
      ADR0 => instruction_3_OBUF_468,
      ADR1 => Instruction_Fetch_PC_output(5),
      O => N26
    );
  Instruction_Fetch_PC_output_5 : X_SFF
    generic map(
      LOC => "SLICE_X5Y133",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_459,
      CLK => NlwBufferSignal_Instruction_Fetch_PC_output_5_CLK,
      I => Instruction_Fetch_PC_mux_output(5),
      O => Instruction_Fetch_PC_output(5),
      SRST => Instruction_Fetch_PC_n0009,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Instruction_Fetch_mux101172_G : X_LUT6
    generic map(
      LOC => "SLICE_X5Y133",
      INIT => X"CCCCCCCCAAAAFFF0"
    )
    port map (
      ADR5 => halt_vld,
      ADR4 => jump_vld,
      ADR3 => Branch,
      ADR1 => Instruction_Fetch_PC_output(5),
      ADR2 => Instruction_Fetch_PC_adder_output_5_0,
      ADR0 => instruction_3_OBUF_468,
      O => N27
    );
  Instruction_Fetch_mux101122_F : X_LUT6
    generic map(
      LOC => "SLICE_X5Y133",
      INIT => X"AAAAFF00AAAAF0F0"
    )
    port map (
      ADR1 => '1',
      ADR4 => jump_vld,
      ADR5 => Branch,
      ADR3 => Instruction_Fetch_branch_adder_output_2_0,
      ADR2 => Instruction_Fetch_PC_adder_output_2_0,
      ADR0 => instruction_0_OBUF_485,
      O => N20
    );
  Instruction_Fetch_PC_output_2 : X_SFF
    generic map(
      LOC => "SLICE_X5Y133",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_459,
      CLK => NlwBufferSignal_Instruction_Fetch_PC_output_2_CLK,
      I => Instruction_Fetch_PC_mux_output(2),
      O => Instruction_Fetch_PC_output(2),
      SRST => Instruction_Fetch_PC_n0009,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Instruction_Fetch_mux1011221 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y133",
      INIT => X"FFFFFF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Instruction_Fetch_PC_output(2),
      ADR4 => halt_vld,
      ADR3 => N20,
      O => Instruction_Fetch_PC_mux_output(2)
    );
  Instruction_Fetch_mux101192 : X_MUX2
    generic map(
      LOC => "SLICE_X5Y134"
    )
    port map (
      IA => N22,
      IB => N23,
      O => Instruction_Fetch_PC_mux_output(7),
      SEL => Instruction_Fetch_branch_adder_output_7_0
    );
  Instruction_Fetch_mux101192_F : X_LUT6
    generic map(
      LOC => "SLICE_X5Y134",
      INIT => X"CCAACCAACC00CCF0"
    )
    port map (
      ADR3 => halt_vld,
      ADR4 => Branch,
      ADR5 => jump_vld,
      ADR2 => Instruction_Fetch_PC_adder_output_7_0,
      ADR0 => instruction_5_OBUF_490,
      ADR1 => Instruction_Fetch_PC_output(7),
      O => N22
    );
  Instruction_Fetch_PC_output_7 : X_SFF
    generic map(
      LOC => "SLICE_X5Y134",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_459,
      CLK => NlwBufferSignal_Instruction_Fetch_PC_output_7_CLK,
      I => Instruction_Fetch_PC_mux_output(7),
      O => Instruction_Fetch_PC_output(7),
      SRST => Instruction_Fetch_PC_n0009,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Instruction_Fetch_mux101192_G : X_LUT6
    generic map(
      LOC => "SLICE_X5Y134",
      INIT => X"CCAACCAACCFFCCF0"
    )
    port map (
      ADR3 => halt_vld,
      ADR5 => jump_vld,
      ADR4 => Branch,
      ADR1 => Instruction_Fetch_PC_output(7),
      ADR2 => Instruction_Fetch_PC_adder_output_7_0,
      ADR0 => instruction_5_OBUF_490,
      O => N23
    );
  Control_Unit_BRN1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y134",
      INIT => X"00000000000000C0"
    )
    port map (
      ADR0 => '1',
      ADR2 => instruction_27_OBUF_479,
      ADR4 => instruction_28_OBUF_481,
      ADR1 => instruction_29_OBUF_476,
      ADR5 => instruction_30_OBUF_477,
      ADR3 => instruction_31_OBUF_478,
      O => Branch
    );
  Control_Unit_Halt_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y134",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => instruction_29_OBUF_476,
      ADR0 => instruction_30_OBUF_477,
      ADR3 => instruction_31_OBUF_478,
      ADR2 => instruction_27_OBUF_479,
      ADR5 => instruction_26_OBUF_480,
      ADR4 => instruction_28_OBUF_481,
      O => halt_vld
    );
  instruction_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y145"
    )
    port map (
      I => NlwBufferSignal_instruction_4_OBUF_I,
      O => instruction(4)
    );
  Instruction_Fetch_PC_output_1 : X_SFF
    generic map(
      LOC => "SLICE_X7Y132",
      INIT => '0'
    )
    port map (
      CE => reset_IBUF_459,
      CLK => NlwBufferSignal_Instruction_Fetch_PC_output_1_CLK,
      I => Instruction_Fetch_PC_mux_output(1),
      O => Instruction_Fetch_PC_output(1),
      SRST => Instruction_Fetch_PC_n0009,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Instruction_Fetch_mux10111 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y132",
      INIT => X"FFFF303000003030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => Instruction_Fetch_PC_adder_output_1_0,
      ADR5 => Instruction_Fetch_PC_output(1),
      ADR4 => halt_vld,
      ADR1 => jump_vld,
      O => Instruction_Fetch_PC_mux_output(1)
    );
  Instruction_Fetch_PC_adder_output_7_Instruction_Fetch_PC_adder_output_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_adder_output(7),
      O => Instruction_Fetch_PC_adder_output_7_0
    );
  Instruction_Fetch_PC_adder_output_7_Instruction_Fetch_PC_adder_output_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_adder_output(6),
      O => Instruction_Fetch_PC_adder_output_6_0
    );
  Instruction_Fetch_PC_adder_output_7_Instruction_Fetch_PC_adder_output_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_adder_output(5),
      O => Instruction_Fetch_PC_adder_output_5_0
    );
  Instruction_Fetch_PC_adder_output_7_Instruction_Fetch_PC_adder_output_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_adder_output(4),
      O => Instruction_Fetch_PC_adder_output_4_0
    );
  Instruction_Fetch_PC_output_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y134",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => Instruction_Fetch_PC_output(7),
      O => Instruction_Fetch_PC_output_7_rt_154
    );
  Instruction_Fetch_PC_ADDER_Madd_result_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y134"
    )
    port map (
      CI => Instruction_Fetch_PC_ADDER_Madd_result_cy(3),
      CYINIT => '0',
      CO(3) => NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_Instruction_Fetch_PC_ADDER_Madd_result_xor_7_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Instruction_Fetch_PC_adder_output(7),
      O(2) => Instruction_Fetch_PC_adder_output(6),
      O(1) => Instruction_Fetch_PC_adder_output(5),
      O(0) => Instruction_Fetch_PC_adder_output(4),
      S(3) => Instruction_Fetch_PC_output_7_rt_154,
      S(2) => Instruction_Fetch_PC_output_6_rt_155,
      S(1) => Instruction_Fetch_PC_output_5_rt_161,
      S(0) => Instruction_Fetch_PC_output_4_rt_156
    );
  Instruction_Fetch_PC_output_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y134",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Instruction_Fetch_PC_output(6),
      ADR5 => '1',
      O => Instruction_Fetch_PC_output_6_rt_155
    );
  N0_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y134",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_C5LUT_O_UNCONNECTED
    );
  Instruction_Fetch_PC_output_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y134",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Instruction_Fetch_PC_output(5),
      ADR5 => '1',
      O => Instruction_Fetch_PC_output_5_rt_161
    );
  N0_4_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y134",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_B5LUT_O_UNCONNECTED
    );
  Instruction_Fetch_PC_output_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y134",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Instruction_Fetch_PC_output(4),
      ADR5 => '1',
      O => Instruction_Fetch_PC_output_4_rt_156
    );
  N0_5_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y134",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_A5LUT_O_UNCONNECTED
    );
  instruction_10_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y139"
    )
    port map (
      I => NlwBufferSignal_instruction_10_OBUF_I,
      O => instruction(10)
    );
  Instruction_Fetch_Branch_Adder_Madd_result_cy_5_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_branch_adder_output(5),
      O => Instruction_Fetch_branch_adder_output_5_0
    );
  Instruction_Fetch_Branch_Adder_Madd_result_cy_5_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_branch_adder_output(4),
      O => Instruction_Fetch_branch_adder_output_4_0
    );
  Instruction_Fetch_Branch_Adder_Madd_result_cy_5_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_branch_adder_output(3),
      O => Instruction_Fetch_branch_adder_output_3_0
    );
  Instruction_Fetch_Branch_Adder_Madd_result_cy_5_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_branch_adder_output(2),
      O => Instruction_Fetch_branch_adder_output_2_0
    );
  Instruction_Fetch_Branch_Adder_Madd_result_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X7Y133",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Instruction_Fetch_PC_adder_output_5_0,
      ADR5 => instruction_3_OBUF_468,
      O => Instruction_Fetch_Branch_Adder_Madd_result_lut(5)
    );
  ProtoComp11_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X7Y133"
    )
    port map (
      O => NLW_ProtoComp11_CYINITGND_O_UNCONNECTED
    );
  Instruction_Fetch_Branch_Adder_Madd_result_cy_5_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X7Y133"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => Instruction_Fetch_Branch_Adder_Madd_result_cy(5),
      CO(2) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_CO_2_UNCONNECTED,
      CO(1) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_CO_1_UNCONNECTED,
      CO(0) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_3_Q,
      DI(2) => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_2_Q,
      DI(1) => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_1_Q,
      DI(0) => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_0_Q,
      O(3) => Instruction_Fetch_branch_adder_output(5),
      O(2) => Instruction_Fetch_branch_adder_output(4),
      O(1) => Instruction_Fetch_branch_adder_output(3),
      O(0) => Instruction_Fetch_branch_adder_output(2),
      S(3) => Instruction_Fetch_Branch_Adder_Madd_result_lut(5),
      S(2) => Instruction_Fetch_Branch_Adder_Madd_result_lut(4),
      S(1) => Instruction_Fetch_Branch_Adder_Madd_result_lut(3),
      S(0) => Instruction_Fetch_Branch_Adder_Madd_result_lut(2)
    );
  Instruction_Fetch_Branch_Adder_Madd_result_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X7Y133",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Instruction_Fetch_PC_adder_output_4_0,
      ADR5 => instruction_2_OBUF_464,
      O => Instruction_Fetch_Branch_Adder_Madd_result_lut(4)
    );
  Instruction_Fetch_Branch_Adder_Madd_result_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X7Y133",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Instruction_Fetch_PC_adder_output_3_0,
      ADR4 => instruction_1_OBUF_458,
      O => Instruction_Fetch_Branch_Adder_Madd_result_lut(3)
    );
  Instruction_Fetch_Branch_Adder_Madd_result_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X7Y133",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Instruction_Fetch_PC_adder_output_2_0,
      ADR5 => instruction_0_OBUF_485,
      O => Instruction_Fetch_Branch_Adder_Madd_result_lut(2)
    );
  Instruction_Fetch_branch_adder_output_7_Instruction_Fetch_branch_adder_output_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_branch_adder_output(7),
      O => Instruction_Fetch_branch_adder_output_7_0
    );
  Instruction_Fetch_branch_adder_output_7_Instruction_Fetch_branch_adder_output_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_branch_adder_output(6),
      O => Instruction_Fetch_branch_adder_output_6_0
    );
  Instruction_Fetch_Branch_Adder_Madd_result_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X7Y134"
    )
    port map (
      CI => Instruction_Fetch_Branch_Adder_Madd_result_cy(5),
      CYINIT => '0',
      CO(3) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_3_UNCONNECTED,
      DI(2) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_2_UNCONNECTED,
      DI(1) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_1_UNCONNECTED,
      DI(0) => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_0_Q,
      O(3) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_O_3_UNCONNECTED,
      O(2) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_O_2_UNCONNECTED,
      O(1) => Instruction_Fetch_branch_adder_output(7),
      O(0) => Instruction_Fetch_branch_adder_output(6),
      S(3) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_S_3_UNCONNECTED,
      S(2) => NLW_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_S_2_UNCONNECTED,
      S(1) => Instruction_Fetch_Branch_Adder_Madd_result_lut(7),
      S(0) => Instruction_Fetch_Branch_Adder_Madd_result_lut(6)
    );
  Instruction_Fetch_Branch_Adder_Madd_result_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X7Y134",
      INIT => X"0F0F0F0FF0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Instruction_Fetch_PC_adder_output_7_0,
      ADR5 => instruction_5_OBUF_490,
      O => Instruction_Fetch_Branch_Adder_Madd_result_lut(7)
    );
  Instruction_Fetch_Branch_Adder_Madd_result_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X7Y134",
      INIT => X"0000FFFFFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Instruction_Fetch_PC_adder_output_6_0,
      ADR5 => instruction_4_OBUF_472,
      O => Instruction_Fetch_Branch_Adder_Madd_result_lut(6)
    );
  ProtoComp14_INTERMDISABLE_GND : X_ZERO
    generic map(
      LOC => "IOB_X1Y128"
    )
    port map (
      O => clk_ProtoComp14_INTERMDISABLE_GND_0
    );
  clk_BUFGP_IBUFG : X_IBUF_INTERMDISABLE_TPWRGT
    generic map(
      LOC => "IOB_X1Y128"
    )
    port map (
      IBUFDISABLE => '0',
      INTERMDISABLE => clk_ProtoComp14_INTERMDISABLE_GND_0,
      O => clk_BUFGP_IBUFG_451,
      I => clk,
      TPWRGT => '1'
    );
  instruction_13_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y136"
    )
    port map (
      I => NlwBufferSignal_instruction_13_OBUF_I,
      O => instruction(13)
    );
  instruction_14_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y135"
    )
    port map (
      I => NlwBufferSignal_instruction_14_OBUF_I,
      O => instruction(14)
    );
  instruction_22_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y127"
    )
    port map (
      I => NlwBufferSignal_instruction_22_OBUF_I,
      O => instruction(22)
    );
  instruction_15_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y138"
    )
    port map (
      I => NlwBufferSignal_instruction_15_OBUF_I,
      O => instruction(15)
    );
  instruction_31_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y118"
    )
    port map (
      I => NlwBufferSignal_instruction_31_OBUF_I,
      O => instruction(31)
    );
  instruction_11_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y134"
    )
    port map (
      I => NlwBufferSignal_instruction_11_OBUF_I,
      O => instruction(11)
    );
  instruction_21_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y128"
    )
    port map (
      I => NlwBufferSignal_instruction_21_OBUF_I,
      O => instruction(21)
    );
  instruction_30_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y119"
    )
    port map (
      I => NlwBufferSignal_instruction_30_OBUF_I,
      O => instruction(30)
    );
  instruction_23_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y126"
    )
    port map (
      I => NlwBufferSignal_instruction_23_OBUF_I,
      O => instruction(23)
    );
  instruction_12_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y137"
    )
    port map (
      I => NlwBufferSignal_instruction_12_OBUF_I,
      O => instruction(12)
    );
  instruction_20_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y129"
    )
    port map (
      I => NlwBufferSignal_instruction_20_OBUF_I,
      O => instruction(20)
    );
  instruction_17_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y132"
    )
    port map (
      I => NlwBufferSignal_instruction_17_OBUF_I,
      O => instruction(17)
    );
  instruction_16_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y130"
    )
    port map (
      I => NlwBufferSignal_instruction_16_OBUF_I,
      O => instruction(16)
    );
  instruction_25_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y124"
    )
    port map (
      I => NlwBufferSignal_instruction_25_OBUF_I,
      O => instruction(25)
    );
  instruction_27_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y122"
    )
    port map (
      I => NlwBufferSignal_instruction_27_OBUF_I,
      O => instruction(27)
    );
  instruction_24_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y125"
    )
    port map (
      I => NlwBufferSignal_instruction_24_OBUF_I,
      O => instruction(24)
    );
  instruction_19_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y133"
    )
    port map (
      I => NlwBufferSignal_instruction_19_OBUF_I,
      O => instruction(19)
    );
  instruction_28_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y121"
    )
    port map (
      I => NlwBufferSignal_instruction_28_OBUF_I,
      O => instruction(28)
    );
  instruction_29_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y120"
    )
    port map (
      I => NlwBufferSignal_instruction_29_OBUF_I,
      O => instruction(29)
    );
  instruction_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y149"
    )
    port map (
      I => NlwBufferSignal_instruction_0_OBUF_I,
      O => instruction(0)
    );
  instruction_18_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y131"
    )
    port map (
      I => NlwBufferSignal_instruction_18_OBUF_I,
      O => instruction(18)
    );
  instruction_26_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y123"
    )
    port map (
      I => NlwBufferSignal_instruction_26_OBUF_I,
      O => instruction(26)
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_451,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR_10_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(6),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(10)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR_11_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(7),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(11)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(0),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(4)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(1),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(5)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(2),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(6)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(3),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(7)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(4),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(8)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(5),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRARDADDR(9)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR_10_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(6),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(10)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR_11_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(7),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(11)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR_4_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(0),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(4)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR_5_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(1),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(5)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR_6_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(2),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(6)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR_7_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(3),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(7)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR_8_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(4),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(8)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR_9_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Instruction_Fetch_PC_output(5),
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ADDRBWRADDR(9)
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_CLKARDCLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_CLKARDCLK
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_CLKBWRCLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_CLKBWRCLK
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ENARDEN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => reset_IBUF_459,
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ENARDEN
    );
  NlwBufferBlock_Instruction_Fetch_InstrMem_Mram_instrctMem1_ENBWREN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => reset_IBUF_459,
      O => NlwBufferSignal_Instruction_Fetch_InstrMem_Mram_instrctMem1_ENBWREN
    );
  NlwBufferBlock_instruction_9_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_9_OBUF_500,
      O => NlwBufferSignal_instruction_9_OBUF_I
    );
  NlwBufferBlock_instruction_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_1_OBUF_458,
      O => NlwBufferSignal_instruction_1_OBUF_I
    );
  NlwBufferBlock_instruction_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_7_OBUF_502,
      O => NlwBufferSignal_instruction_7_OBUF_I
    );
  NlwBufferBlock_Instruction_Fetch_PC_output_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_PC_output_4_CLK
    );
  NlwBufferBlock_Instruction_Fetch_PC_output_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_PC_output_0_CLK
    );
  NlwBufferBlock_instruction_8_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_8_OBUF_501,
      O => NlwBufferSignal_instruction_8_OBUF_I
    );
  NlwBufferBlock_Instruction_Fetch_PC_output_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_PC_output_3_CLK
    );
  NlwBufferBlock_instruction_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_2_OBUF_464,
      O => NlwBufferSignal_instruction_2_OBUF_I
    );
  NlwBufferBlock_instruction_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_3_OBUF_468,
      O => NlwBufferSignal_instruction_3_OBUF_I
    );
  NlwBufferBlock_instruction_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_6_OBUF_503,
      O => NlwBufferSignal_instruction_6_OBUF_I
    );
  NlwBufferBlock_Instruction_Fetch_PC_output_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_PC_output_6_CLK
    );
  NlwBufferBlock_instruction_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_5_OBUF_490,
      O => NlwBufferSignal_instruction_5_OBUF_I
    );
  NlwBufferBlock_Instruction_Fetch_PC_output_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_PC_output_5_CLK
    );
  NlwBufferBlock_Instruction_Fetch_PC_output_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_PC_output_2_CLK
    );
  NlwBufferBlock_Instruction_Fetch_PC_output_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_PC_output_7_CLK
    );
  NlwBufferBlock_instruction_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_4_OBUF_472,
      O => NlwBufferSignal_instruction_4_OBUF_I
    );
  NlwBufferBlock_Instruction_Fetch_PC_output_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_Instruction_Fetch_PC_output_1_CLK
    );
  NlwBufferBlock_instruction_10_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_10_OBUF_499,
      O => NlwBufferSignal_instruction_10_OBUF_I
    );
  NlwBufferBlock_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_0_OBUF_485,
      O => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_0_Q
    );
  NlwBufferBlock_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_1_OBUF_458,
      O => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_1_Q
    );
  NlwBufferBlock_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_2_OBUF_464,
      O => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_2_Q
    );
  NlwBufferBlock_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_3_OBUF_468,
      O => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_cy_5_DI_3_Q
    );
  NlwBufferBlock_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_4_OBUF_472,
      O => NlwBufferSignal_Instruction_Fetch_Branch_Adder_Madd_result_xor_7_DI_0_Q
    );
  NlwBufferBlock_instruction_13_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_13_OBUF_496,
      O => NlwBufferSignal_instruction_13_OBUF_I
    );
  NlwBufferBlock_instruction_14_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_14_OBUF_495,
      O => NlwBufferSignal_instruction_14_OBUF_I
    );
  NlwBufferBlock_instruction_22_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_22_OBUF_507,
      O => NlwBufferSignal_instruction_22_OBUF_I
    );
  NlwBufferBlock_instruction_15_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_15_OBUF_494,
      O => NlwBufferSignal_instruction_15_OBUF_I
    );
  NlwBufferBlock_instruction_31_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_31_OBUF_478,
      O => NlwBufferSignal_instruction_31_OBUF_I
    );
  NlwBufferBlock_instruction_11_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_11_OBUF_498,
      O => NlwBufferSignal_instruction_11_OBUF_I
    );
  NlwBufferBlock_instruction_21_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_21_OBUF_508,
      O => NlwBufferSignal_instruction_21_OBUF_I
    );
  NlwBufferBlock_instruction_30_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_30_OBUF_477,
      O => NlwBufferSignal_instruction_30_OBUF_I
    );
  NlwBufferBlock_instruction_23_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_23_OBUF_506,
      O => NlwBufferSignal_instruction_23_OBUF_I
    );
  NlwBufferBlock_instruction_12_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_12_OBUF_497,
      O => NlwBufferSignal_instruction_12_OBUF_I
    );
  NlwBufferBlock_instruction_20_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_20_OBUF_509,
      O => NlwBufferSignal_instruction_20_OBUF_I
    );
  NlwBufferBlock_instruction_17_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_17_OBUF_512,
      O => NlwBufferSignal_instruction_17_OBUF_I
    );
  NlwBufferBlock_instruction_16_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_16_OBUF_513,
      O => NlwBufferSignal_instruction_16_OBUF_I
    );
  NlwBufferBlock_instruction_25_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_25_OBUF_504,
      O => NlwBufferSignal_instruction_25_OBUF_I
    );
  NlwBufferBlock_instruction_27_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_27_OBUF_479,
      O => NlwBufferSignal_instruction_27_OBUF_I
    );
  NlwBufferBlock_instruction_24_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_24_OBUF_505,
      O => NlwBufferSignal_instruction_24_OBUF_I
    );
  NlwBufferBlock_instruction_19_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_19_OBUF_510,
      O => NlwBufferSignal_instruction_19_OBUF_I
    );
  NlwBufferBlock_instruction_28_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_28_OBUF_481,
      O => NlwBufferSignal_instruction_28_OBUF_I
    );
  NlwBufferBlock_instruction_29_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_29_OBUF_476,
      O => NlwBufferSignal_instruction_29_OBUF_I
    );
  NlwBufferBlock_instruction_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_0_OBUF_485,
      O => NlwBufferSignal_instruction_0_OBUF_I
    );
  NlwBufferBlock_instruction_18_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_18_OBUF_511,
      O => NlwBufferSignal_instruction_18_OBUF_I
    );
  NlwBufferBlock_instruction_26_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => instruction_26_OBUF_480,
      O => NlwBufferSignal_instruction_26_OBUF_I
    );
  NlwBlock_MIPS_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

