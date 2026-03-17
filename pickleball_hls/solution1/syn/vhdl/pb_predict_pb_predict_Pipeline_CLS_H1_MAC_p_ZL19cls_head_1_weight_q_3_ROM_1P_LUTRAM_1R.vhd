-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_3_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_3_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11110110", 1 => "00000010", 2 => "11110011", 3 => "00011010", 
    4 => "00001011", 5 => "00000000", 6 => "11111011", 7 => "11110000", 
    8 => "00000011", 9 => "00001011", 10 => "11111101", 11 => "11110100", 
    12 => "11111010", 13 => "00001101", 14 => "11111111", 15 => "00000110", 
    16 => "00000100", 17 => "00000011", 18 => "11100100", 19 => "11110100", 
    20 => "00001100", 21 => "11110101", 22 => "11111001", 23 => "11001010", 
    24 => "00000100", 25 => "00000010", 26 => "11011001", 27 => "11111100", 
    28 => "11011011", 29 => "00010110", 30 => "00000011", 31 => "11111011", 
    32 => "00000111", 33 => "11111110", 34 => "11011111", 35 => "00001011", 
    36 => "00000011", 37 => "11111001", 38 => "00000101", 39 => "11101101", 
    40 => "11111011", 41 => "11110111", 42 => "00011000", 43 => "00001001", 
    44 => "11011100", 45 => "00000110", 46 => "00000001", 47 => "11110001", 
    48 => "00001100", 49 => "11111011", 50 => "11110111", 51 => "11101100", 
    52 => "11110000", 53 => "11111001", 54 => "11111111", 55 => "00111010", 
    56 => "00000001", 57 => "00000010", 58 => "00000101", 59 => "11011111", 
    60 => "11110010", 61 => "11110011", 62 => "11111101", 63 => "11111111", 
    64 => "00000011", 65 => "00000000", 66 => "00010111", 67 to 68=> "00010001", 
    69 => "00001000", 70 => "11111110", 71 => "11110001", 72 => "00000001", 
    73 => "11111100", 74 => "00000100", 75 => "11111101", 76 => "00100100", 
    77 => "10111110", 78 => "11111110", 79 => "00001001", 80 => "11100110", 
    81 => "11111110", 82 => "00001100", 83 => "11010011", 84 => "11011000", 
    85 => "00000010", 86 => "00000100", 87 => "11011011", 88 => "00000000", 
    89 => "11111000", 90 => "00000110", 91 => "11110100", 92 => "11111101", 
    93 => "11110111", 94 => "11111111", 95 => "11110000" );

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

