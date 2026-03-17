-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_0_ROM_1P_LUTRAM_1R is 
    generic(
             DataWidth     : integer := 8; 
             AddressWidth     : integer := 7; 
             AddressRange    : integer := 96
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_0_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000111", 1 => "00010000", 2 => "11111011", 3 => "00000001", 
    4 => "00011001", 5 => "10111000", 6 => "00010011", 7 => "11010011", 
    8 => "11111111", 9 to 10=> "11111010", 11 => "11100110", 12 => "10111100", 
    13 => "11110111", 14 => "00000000", 15 => "11101011", 16 => "00000001", 
    17 => "00000000", 18 to 19=> "00000100", 20 => "11101100", 21 => "00100110", 
    22 => "00000011", 23 => "00000100", 24 => "00000010", 25 => "11110111", 
    26 => "11111010", 27 => "11001111", 28 => "11111100", 29 => "00000000", 
    30 => "00000010", 31 => "11111100", 32 to 33=> "11101010", 34 => "00001100", 
    35 => "00000000", 36 => "11101011", 37 => "10010000", 38 => "11110000", 
    39 => "11111101", 40 => "11111111", 41 => "11111011", 42 => "11111010", 
    43 => "11111000", 44 => "00000010", 45 => "11111011", 46 => "00000001", 
    47 => "11111111", 48 => "00000011", 49 => "11111111", 50 => "11010110", 
    51 => "00000100", 52 => "11101011", 53 => "11101001", 54 => "11101111", 
    55 => "00001010", 56 => "00000010", 57 => "11100101", 58 => "11011000", 
    59 => "11111100", 60 => "00011000", 61 to 62=> "00000101", 63 => "00001111", 
    64 => "11111101", 65 => "11111111", 66 => "00000000", 67 => "00000001", 
    68 => "00001000", 69 => "10111111", 70 => "11111000", 71 => "11101010", 
    72 => "00000001", 73 => "11111110", 74 => "00000110", 75 => "11101110", 
    76 => "11010001", 77 => "11111101", 78 => "11111111", 79 => "00010011", 
    80 => "11110110", 81 => "11010101", 82 to 83=> "11111011", 84 => "11111100", 
    85 => "11111101", 86 => "00000100", 87 => "11110011", 88 => "00000101", 
    89 => "11111010", 90 => "00001000", 91 => "00001110", 92 => "11111111", 
    93 => "00000000", 94 => "11111010", 95 => "11001100" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

