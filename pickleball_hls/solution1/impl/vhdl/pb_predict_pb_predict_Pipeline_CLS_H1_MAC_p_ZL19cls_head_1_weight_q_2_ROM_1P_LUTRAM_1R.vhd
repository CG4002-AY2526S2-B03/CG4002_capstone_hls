-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_2_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_2_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000110", 1 => "00000010", 2 => "11100111", 3 => "11111111", 
    4 => "00000100", 5 => "11111111", 6 => "11111101", 7 => "11011000", 
    8 => "11110110", 9 => "00000001", 10 => "11011101", 11 => "11110001", 
    12 => "11101000", 13 => "11100011", 14 => "00000011", 15 => "11001100", 
    16 => "11111011", 17 => "00000000", 18 => "00000101", 19 => "11111101", 
    20 => "11111110", 21 => "00000010", 22 => "00100110", 23 => "11110001", 
    24 => "00000000", 25 => "11101110", 26 => "00000011", 27 => "11100111", 
    28 => "00000011", 29 => "00000000", 30 => "11111011", 31 => "00000001", 
    32 => "11101111", 33 => "11111010", 34 => "00000101", 35 => "11111011", 
    36 => "00000000", 37 => "11111110", 38 => "11110101", 39 => "00000000", 
    40 => "00001010", 41 => "00000111", 42 => "00000100", 43 => "11110010", 
    44 => "00000101", 45 to 46=> "00000100", 47 => "00001000", 48 => "11110101", 
    49 => "00000000", 50 => "00001011", 51 to 52=> "00000011", 53 => "11111101", 
    54 => "11010110", 55 => "00100000", 56 => "00000110", 57 => "11101110", 
    58 => "11001111", 59 => "00000001", 60 => "10110011", 61 => "11000001", 
    62 => "00000000", 63 => "00010000", 64 => "11111111", 65 => "11111100", 
    66 => "11000111", 67 => "00000000", 68 => "00000001", 69 => "11111110", 
    70 => "11110101", 71 => "11011100", 72 => "00000000", 73 => "00000110", 
    74 => "00000001", 75 => "11110101", 76 => "00000100", 77 => "00000101", 
    78 => "00000001", 79 => "00000100", 80 => "11110011", 81 => "11111100", 
    82 => "11011100", 83 => "11111111", 84 => "00000000", 85 => "00000010", 
    86 to 87=> "00000000", 88 => "11110000", 89 => "00000001", 90 => "11111100", 
    91 => "00010101", 92 => "11111011", 93 => "00000110", 94 => "00000000", 
    95 => "11111111" );

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

