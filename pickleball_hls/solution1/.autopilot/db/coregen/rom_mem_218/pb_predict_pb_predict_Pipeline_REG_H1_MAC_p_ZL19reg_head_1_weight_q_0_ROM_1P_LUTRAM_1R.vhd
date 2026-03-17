-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_0_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_0_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000", 1 => "00000101", 2 => "00010011", 3 => "11111100", 
    4 => "11111101", 5 => "00001100", 6 => "11111000", 7 to 8=> "11111100", 
    9 => "00000100", 10 => "11111101", 11 => "11111000", 12 => "00000010", 
    13 => "11111111", 14 => "11110111", 15 => "11110110", 16 => "00010111", 
    17 => "11110110", 18 => "00000000", 19 => "11011100", 20 => "10111000", 
    21 => "00001010", 22 => "11110101", 23 => "00100101", 24 => "11110101", 
    25 => "11111110", 26 => "00011001", 27 => "00000101", 28 => "00011101", 
    29 => "00000110", 30 => "00001001", 31 => "00000111", 32 => "00000000", 
    33 => "11111001", 34 => "00000111", 35 to 36=> "00000000", 37 => "11111111", 
    38 to 44=> "00000000", 45 => "11111110", 46 => "11111111", 47 => "00000000", 
    48 => "11110101", 49 => "00001001", 50 => "00000111", 51 => "00000100", 
    52 => "11001010", 53 => "00000011", 54 => "11111110", 55 => "00000010", 
    56 => "11110111", 57 => "00001011", 58 => "00000010", 59 => "00010000", 
    60 => "00000000", 61 => "11111111", 62 => "11110001", 63 => "00011001", 
    64 => "00010000", 65 => "11101010", 66 => "11111100", 67 => "00001000", 
    68 => "10111110", 69 => "11111010", 70 => "00010111", 71 => "11110100", 
    72 => "01010110", 73 => "00000011", 74 => "00001101", 75 => "00010010", 
    76 => "11111111", 77 => "00001011", 78 => "00000111", 79 => "00100011", 
    80 => "00001101", 81 => "00000111", 82 => "11110011", 83 => "11111010", 
    84 => "11100110", 85 => "00001000", 86 => "11111000", 87 => "00001000", 
    88 => "01000010", 89 => "11111001", 90 => "11110000", 91 => "11110111", 
    92 to 93=> "00000001", 94 => "00000010", 95 => "00011000" );

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

