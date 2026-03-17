-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_6_ROM_1P_LUTRAM_1R is 
    generic(
             DataWidth     : integer := 7; 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_6_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0001101", 1 => "1100010", 2 => "1011111", 3 => "1101100", 
    4 => "0001101", 5 => "1111011", 6 => "0001010", 7 => "0001110", 
    8 => "1101111", 9 => "1110001", 10 => "1110100", 11 => "1111110", 
    12 => "1111010", 13 => "1001010", 14 to 15=> "0000101", 16 => "1100101", 
    17 => "0000010", 18 => "0000111", 19 => "0000010", 20 => "1001001", 
    21 => "1110000", 22 => "0011000", 23 => "0001101", 24 => "1111101", 
    25 => "1110011", 26 => "1111110", 27 to 28=> "0000100", 29 => "1111011", 
    30 => "1111100", 31 => "1111101", 32 => "1111010", 33 => "0001111", 
    34 => "0000011", 35 => "1110100", 36 => "1100111", 37 => "0001011", 
    38 => "1111111", 39 => "0000010", 40 => "0000100", 41 => "1111110", 
    42 => "0000010", 43 => "1111100", 44 => "0000011", 45 => "0000100", 
    46 => "0010101", 47 => "0010010", 48 => "1111100", 49 => "1111101", 
    50 => "1001010", 51 => "0001010", 52 => "0001100", 53 => "1101001", 
    54 => "1101100", 55 => "0000000", 56 => "1100111", 57 => "0100010", 
    58 => "1110110", 59 => "0000010", 60 => "1111110", 61 => "0011011", 
    62 => "1110111", 63 => "1110011", 64 => "0001101", 65 => "1111000", 
    66 => "1111100", 67 => "1111111", 68 => "0001111", 69 => "1110101", 
    70 => "1111101", 71 => "1010011", 72 => "0001000", 73 => "1010101", 
    74 => "1111111", 75 => "0000101", 76 => "1111101", 77 => "1000010", 
    78 => "0001111", 79 => "0000011", 80 => "1110001", 81 => "0000010", 
    82 to 83=> "1111111", 84 => "1110111", 85 => "0001110", 86 => "1100010", 
    87 => "1111000", 88 => "0000110", 89 => "1110111", 90 => "0000000", 
    91 => "1111011", 92 => "0000010", 93 => "1110101", 94 => "1011000", 
    95 => "1100000" );

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

