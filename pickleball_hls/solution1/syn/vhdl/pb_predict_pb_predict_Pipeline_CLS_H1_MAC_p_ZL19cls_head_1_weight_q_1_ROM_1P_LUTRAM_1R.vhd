-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_1_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_1_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11111111", 1 => "11111101", 2 => "00000101", 3 => "11110010", 
    4 => "00000100", 5 => "10111111", 6 => "11111111", 7 => "00000000", 
    8 => "11100001", 9 => "00000011", 10 => "11100110", 11 => "11111101", 
    12 => "11010101", 13 => "11011101", 14 => "00000110", 15 => "00000000", 
    16 => "00000011", 17 => "11111101", 18 => "11110111", 19 => "00000010", 
    20 => "00000011", 21 => "11111100", 22 => "00000101", 23 => "11111111", 
    24 => "00000101", 25 => "11111011", 26 => "00001011", 27 => "11101100", 
    28 => "00001000", 29 => "11010110", 30 => "00010010", 31 => "00000000", 
    32 => "11111110", 33 => "11111100", 34 => "11010110", 35 to 36=> "00000010", 
    37 => "00000111", 38 => "11110000", 39 => "00000000", 40 => "00000110", 
    41 => "00000000", 42 => "00001001", 43 => "00000001", 44 => "00000010", 
    45 => "11110011", 46 => "11111101", 47 => "11111110", 48 => "11111011", 
    49 => "11111110", 50 => "00000001", 51 => "00001001", 52 => "11111100", 
    53 => "00011100", 54 => "11100001", 55 => "11111100", 56 => "11110111", 
    57 => "11111111", 58 => "10110001", 59 => "00100010", 60 => "11110000", 
    61 => "11111101", 62 => "11100111", 63 => "11111011", 64 => "11111110", 
    65 => "11111011", 66 => "11110100", 67 => "11111000", 68 => "00000110", 
    69 => "00000000", 70 => "00001000", 71 => "11110011", 72 => "00000100", 
    73 => "00000000", 74 => "11111110", 75 => "00001011", 76 => "00001100", 
    77 => "11110010", 78 => "11111101", 79 => "00000011", 80 => "11101110", 
    81 => "11111111", 82 => "11010110", 83 => "00000000", 84 => "00000010", 
    85 => "11010111", 86 => "00000011", 87 => "11110110", 88 => "11101111", 
    89 => "11111110", 90 => "11110011", 91 => "11110001", 92 => "11110110", 
    93 => "00010001", 94 => "11110111", 95 => "00000000" );

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

