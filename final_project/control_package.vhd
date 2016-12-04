--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package control_package is

type instruction is (r_type, lw_type, sw_type, i_type, beq_type, j_type);
function get_instr_type(op:in opcode) return instruction;
end control_package;

package body control_package is

function get_instr_type(op : in opcode) retrun instruction is
begin
if 	op = "000000" then return r_type;
elsif op = 
 
end control_package;
