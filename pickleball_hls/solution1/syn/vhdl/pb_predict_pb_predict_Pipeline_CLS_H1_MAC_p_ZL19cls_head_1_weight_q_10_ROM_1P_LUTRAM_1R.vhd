-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_10_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_10_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11110010", 1 => "11101110", 2 => "10110101", 3 => "11111010", 
    4 => "11010111", 5 => "10011011", 6 => "00000001", 7 => "00001111", 
    8 => "11111110", 9 => "11111101", 10 => "00000001", 11 => "00000101", 
    12 => "11100111", 13 => "11111010", 14 => "11111000", 15 => "00001101", 
    16 => "11101001", 17 => "00000011", 18 => "00010100", 19 => "00000000", 
    20 => "11110111", 21 => "10000100", 22 => "11111011", 23 => "00000011", 
    24 => "11011111", 25 => "00000001", 26 => "11101110", 27 => "11111111", 
    28 => "00001010", 29 to 30=> "00000011", 31 => "00001110", 32 => "00000101", 
    33 => "00010010", 34 => "11110101", 35 => "11111101", 36 => "11101001", 
    37 => "11011011", 38 => "00000001", 39 => "11000001", 40 => "11101111", 
    41 => "11111001", 42 => "11011001", 43 => "00000010", 44 => "00001001", 
    45 => "11100011", 46 => "00000011", 47 => "11101000", 48 => "00001110", 
    49 => "10110100", 50 => "11100101", 51 => "00000011", 52 => "00010101", 
    53 => "11111101", 54 => "11111011", 55 => "11111110", 56 => "11101011", 
    57 => "00000101", 58 => "11011110", 59 => "11111111", 60 => "11010101", 
    61 => "11100011", 62 => "00000011", 63 => "11110111", 64 => "11111101", 
    65 => "00000000", 66 => "00001011", 67 => "11111011", 68 => "00010100", 
    69 => "00000100", 70 => "00000000", 71 => "00001001", 72 => "00001000", 
    73 => "00000001", 74 => "00000110", 75 => "11111100", 76 => "00000000", 
    77 => "00001010", 78 => "00000011", 79 => "11100111", 80 => "11110001", 
    81 => "00000000", 82 => "11110010", 83 => "00000011", 84 => "11101110", 
    85 => "00001101", 86 => "11111111", 87 => "11100010", 88 => "00000110", 
    89 => "00000001", 90 => "00001101", 91 => "11111001", 92 => "11110010", 
    93 => "00001001", 94 => "11110010", 95 => "10111110" );

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

