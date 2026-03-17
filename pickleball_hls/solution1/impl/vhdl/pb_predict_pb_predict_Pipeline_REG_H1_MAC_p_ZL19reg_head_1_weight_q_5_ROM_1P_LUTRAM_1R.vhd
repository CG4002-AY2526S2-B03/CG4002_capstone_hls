-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_5_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_5_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11111110", 1 => "00000101", 2 => "00000001", 3 => "11111010", 
    4 => "11111011", 5 => "11111101", 6 => "11111111", 7 => "00000001", 
    8 => "11111001", 9 => "00000010", 10 => "00001110", 11 => "00000011", 
    12 => "00001000", 13 => "00000110", 14 => "00001100", 15 => "11111010", 
    16 => "11111110", 17 => "00000001", 18 => "00000000", 19 => "11101100", 
    20 => "11111001", 21 => "00001000", 22 => "11100101", 23 => "00011010", 
    24 => "00000010", 25 => "11100100", 26 => "11111100", 27 => "11111111", 
    28 => "11110100", 29 => "11111011", 30 => "11111101", 31 => "00001000", 
    32 => "11111111", 33 => "00000000", 34 => "00000001", 35 to 37=> "00000000", 
    38 => "00000100", 39 to 42=> "00000000", 43 => "11111111", 44 => "00000000", 
    45 => "11111111", 46 to 47=> "00000000", 48 => "11111101", 49 => "11100101", 
    50 => "00010000", 51 => "11101101", 52 => "00111110", 53 => "11111101", 
    54 => "00000101", 55 => "00000100", 56 => "11110001", 57 => "00001110", 
    58 => "11111010", 59 => "11111111", 60 => "11111000", 61 => "00000101", 
    62 => "00000110", 63 => "01000101", 64 => "11111101", 65 => "11101110", 
    66 => "00000110", 67 => "00010010", 68 => "11110110", 69 => "11010111", 
    70 => "00000010", 71 => "01000000", 72 => "00011010", 73 to 74=> "11011101", 
    75 => "11111101", 76 => "11010101", 77 => "11110110", 78 => "00011110", 
    79 => "00100101", 80 => "00000011", 81 => "00001100", 82 => "00000010", 
    83 => "11111111", 84 => "00010101", 85 => "11010100", 86 => "00000101", 
    87 => "00001100", 88 => "11110001", 89 => "11010000", 90 => "00001011", 
    91 => "11111000", 92 => "00010001", 93 => "00000110", 94 => "00000011", 
    95 => "00010000" );

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

