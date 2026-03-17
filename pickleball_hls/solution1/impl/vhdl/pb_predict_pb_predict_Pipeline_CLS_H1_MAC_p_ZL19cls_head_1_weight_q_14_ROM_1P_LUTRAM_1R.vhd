-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_14_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_14_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0000000", 1 => "0000100", 2 => "0000011", 3 => "1111100", 
    4 => "0001011", 5 => "1110011", 6 => "0000011", 7 => "1111111", 
    8 => "1110111", 9 => "1111110", 10 => "1100111", 11 => "1011001", 
    12 => "0001100", 13 => "1110111", 14 => "0000010", 15 => "1111110", 
    16 => "1111111", 17 => "1111100", 18 => "0000011", 19 => "1100110", 
    20 => "0000110", 21 => "1010011", 22 => "1111110", 23 => "1111001", 
    24 => "1111101", 25 => "1111110", 26 => "1100111", 27 => "0001001", 
    28 => "0000100", 29 => "0000000", 30 => "1101011", 31 => "1110011", 
    32 => "1111101", 33 => "0000000", 34 to 35=> "0000010", 36 => "1111101", 
    37 => "1100110", 38 => "1111101", 39 => "0000010", 40 => "1011101", 
    41 => "0000001", 42 => "1111100", 43 => "0000001", 44 => "1011001", 
    45 => "0000010", 46 => "0000000", 47 => "1111100", 48 => "1111110", 
    49 => "1111010", 50 => "0000010", 51 => "1101010", 52 => "1111011", 
    53 => "0110110", 54 to 55=> "0000001", 56 => "1111011", 57 => "0000000", 
    58 => "0100011", 59 => "0000000", 60 => "1111111", 61 => "0010011", 
    62 => "1110011", 63 => "0011110", 64 => "1110111", 65 => "0000100", 
    66 => "0000010", 67 => "0001001", 68 => "1111101", 69 => "0000101", 
    70 => "0000010", 71 => "1111111", 72 => "0100000", 73 => "1111111", 
    74 => "1110110", 75 => "1011001", 76 => "0000010", 77 => "1111111", 
    78 => "0001110", 79 => "0000001", 80 => "1111010", 81 => "0000100", 
    82 => "0000101", 83 => "1111101", 84 => "1001101", 85 => "1111111", 
    86 => "1111110", 87 => "0000101", 88 => "1111000", 89 => "0000000", 
    90 => "1111011", 91 => "1110100", 92 => "1111110", 93 => "1011111", 
    94 => "1111011", 95 => "1100010" );

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

