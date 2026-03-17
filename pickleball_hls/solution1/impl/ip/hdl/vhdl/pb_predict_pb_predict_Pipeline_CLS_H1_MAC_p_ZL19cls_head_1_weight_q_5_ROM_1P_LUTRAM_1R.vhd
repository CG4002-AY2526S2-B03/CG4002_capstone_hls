-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_5_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_5_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11100000", 1 => "00000010", 2 => "11111101", 3 => "11110101", 
    4 => "11011110", 5 => "11011011", 6 => "11111000", 7 => "11111010", 
    8 => "00000010", 9 => "11011010", 10 => "11110101", 11 => "11111011", 
    12 => "11010010", 13 => "11100001", 14 => "00010111", 15 => "11111101", 
    16 => "11100001", 17 => "00000001", 18 => "11111100", 19 => "00000100", 
    20 => "00000101", 21 => "00001111", 22 => "11000101", 23 => "11110110", 
    24 => "00000100", 25 => "00000111", 26 => "00000100", 27 => "11011110", 
    28 => "00010001", 29 => "00001100", 30 => "00000000", 31 => "11110001", 
    32 => "00001001", 33 => "11111110", 34 => "00000101", 35 => "11110100", 
    36 => "00010010", 37 => "00001001", 38 => "00000101", 39 => "11110101", 
    40 => "00000001", 41 => "00000110", 42 => "00000000", 43 => "00010011", 
    44 => "11011000", 45 => "11101110", 46 => "11100000", 47 => "00000001", 
    48 => "00100000", 49 to 50=> "00000010", 51 => "00000110", 52 => "10111001", 
    53 => "11001111", 54 => "00001001", 55 => "00011001", 56 => "11111100", 
    57 => "11000101", 58 => "00000101", 59 => "11110100", 60 => "11111001", 
    61 => "00000000", 62 => "00000001", 63 => "11101101", 64 => "00000011", 
    65 => "11111101", 66 => "00000010", 67 => "00000111", 68 => "11111111", 
    69 => "00000100", 70 => "00000101", 71 => "00000100", 72 => "00000000", 
    73 => "00000001", 74 => "00000010", 75 => "11110010", 76 => "11011011", 
    77 => "00011011", 78 => "11111010", 79 => "00001010", 80 => "11110011", 
    81 => "11111110", 82 => "11110111", 83 => "11101110", 84 => "00000000", 
    85 => "00000011", 86 => "00000110", 87 => "11110010", 88 => "00000001", 
    89 to 90=> "11111010", 91 => "00000000", 92 => "11001101", 93 => "11001110", 
    94 => "11010011", 95 => "11111010" );

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

