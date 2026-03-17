-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_13_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_13_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11011110", 1 => "00010011", 2 => "11111010", 3 => "00000001", 
    4 to 5=> "11111110", 6 => "00010110", 7 => "00000101", 8 => "10010010", 
    9 => "00000100", 10 => "11111110", 11 => "00000010", 12 => "11111110", 
    13 => "00000100", 14 => "11011000", 15 => "00000101", 16 => "00001101", 
    17 => "11111100", 18 => "11110011", 19 => "00000011", 20 => "11111101", 
    21 => "00000111", 22 => "11111010", 23 => "11111111", 24 => "10000001", 
    25 => "11111010", 26 => "11111001", 27 => "11011010", 28 => "11111011", 
    29 => "11111110", 30 => "11010011", 31 => "10111100", 32 => "00001000", 
    33 => "11111000", 34 => "11110101", 35 => "11111110", 36 => "11111101", 
    37 => "00000111", 38 => "11111101", 39 => "00000000", 40 => "11100001", 
    41 => "11111010", 42 => "11111101", 43 => "00011011", 44 => "11011001", 
    45 => "11111101", 46 => "00000111", 47 => "11001110", 48 => "00001111", 
    49 => "11110110", 50 => "11111001", 51 => "11111111", 52 => "11111110", 
    53 => "11100001", 54 => "00000001", 55 => "00000000", 56 => "11111111", 
    57 => "11111100", 58 => "00010001", 59 => "00010011", 60 => "00010010", 
    61 => "00000001", 62 => "11111110", 63 => "00110101", 64 => "11111010", 
    65 => "00000001", 66 => "11111010", 67 => "00000011", 68 => "11111101", 
    69 => "11111001", 70 => "11101110", 71 => "11111101", 72 to 73=> "00000010", 
    74 => "11111011", 75 => "11101100", 76 to 78=> "00000011", 79 => "00000100", 
    80 => "11111111", 81 => "00000100", 82 => "00001100", 83 => "11111011", 
    84 => "00000000", 85 => "11111111", 86 => "11000010", 87 => "00000110", 
    88 => "00001100", 89 => "00000011", 90 => "11110010", 91 => "11110001", 
    92 => "11111001", 93 => "11110101", 94 => "00000111", 95 => "00001011" );

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

