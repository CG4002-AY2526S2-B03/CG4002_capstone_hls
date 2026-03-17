-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_7_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_7_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000100", 1 => "00000010", 2 => "11011111", 3 => "11101101", 
    4 => "11010011", 5 => "11110111", 6 to 7=> "00000001", 8 => "00000011", 
    9 => "11111111", 10 => "00010000", 11 => "00000100", 12 => "11110100", 
    13 => "11111101", 14 => "00000001", 15 => "11111110", 16 => "00001011", 
    17 => "11100100", 18 => "11011010", 19 => "11111101", 20 => "11101100", 
    21 => "11110010", 22 => "11111100", 23 => "11111011", 24 => "00000000", 
    25 => "11111001", 26 => "00000110", 27 => "00000010", 28 => "11011011", 
    29 => "11111111", 30 => "11111011", 31 to 32=> "11111111", 33 => "11010111", 
    34 => "00001100", 35 => "11111110", 36 => "11101010", 37 => "11111001", 
    38 => "11100001", 39 => "11111010", 40 => "11111100", 41 => "11111011", 
    42 => "00000100", 43 => "00000101", 44 => "00001110", 45 => "11111110", 
    46 => "11111111", 47 => "11111100", 48 => "00001011", 49 => "10101010", 
    50 => "11100100", 51 => "00001100", 52 => "00011011", 53 => "00001110", 
    54 => "11110010", 55 => "00000100", 56 => "00000000", 57 => "11111100", 
    58 => "11110101", 59 => "00000010", 60 => "11101101", 61 => "00000101", 
    62 => "00000001", 63 => "11111100", 64 => "11101111", 65 => "00000101", 
    66 => "11111011", 67 => "11111100", 68 => "11011011", 69 => "11111110", 
    70 => "00010101", 71 => "11111111", 72 => "11111101", 73 => "11111111", 
    74 => "11101100", 75 => "11111001", 76 => "00000011", 77 => "00000000", 
    78 => "00000100", 79 => "00000001", 80 => "11110010", 81 => "00001101", 
    82 => "00000101", 83 => "11101100", 84 => "11011100", 85 => "11110001", 
    86 => "11101010", 87 => "11111010", 88 => "11111111", 89 => "00000010", 
    90 => "00000011", 91 => "11111001", 92 => "00001001", 93 => "11111101", 
    94 => "00000010", 95 => "00000100" );

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

