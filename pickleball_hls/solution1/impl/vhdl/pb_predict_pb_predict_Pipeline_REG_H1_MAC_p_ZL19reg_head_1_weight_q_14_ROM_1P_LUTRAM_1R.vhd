-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_14_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_14_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11110110", 1 => "00000110", 2 => "00000101", 3 => "11110101", 
    4 => "11111111", 5 => "00000011", 6 => "00001000", 7 => "11111111", 
    8 => "00000101", 9 => "00000011", 10 => "11110010", 11 => "00000000", 
    12 => "11111010", 13 => "11111111", 14 => "11100101", 15 => "00001100", 
    16 => "11111111", 17 => "00001111", 18 => "00001010", 19 => "11111110", 
    20 => "11110110", 21 => "00010110", 22 => "00000001", 23 => "00000110", 
    24 => "11111010", 25 => "00000101", 26 => "00000001", 27 => "00010111", 
    28 => "11111110", 29 => "00001101", 30 => "00000010", 31 => "11111110", 
    32 => "00000000", 33 => "11111111", 34 => "00000000", 35 => "00000001", 
    36 to 41=> "00000000", 42 => "11111101", 43 => "00000010", 44 => "11111111", 
    45 to 46=> "00000000", 47 => "11110011", 48 => "00100010", 49 => "11111011", 
    50 => "11110110", 51 => "00001000", 52 => "00001011", 53 => "00000000", 
    54 => "11100010", 55 => "00010100", 56 => "00111001", 57 => "11011101", 
    58 => "11111101", 59 => "00001111", 60 => "11111100", 61 => "11111001", 
    62 => "00011001", 63 => "00001000", 64 => "11110010", 65 => "00001100", 
    66 => "11110110", 67 => "00001010", 68 => "11101100", 69 => "00010000", 
    70 => "11110000", 71 => "00001011", 72 => "00001010", 73 => "00010111", 
    74 => "00000100", 75 => "00001110", 76 => "00000110", 77 => "01000101", 
    78 => "00000111", 79 => "11110011", 80 => "11111101", 81 => "11111010", 
    82 => "00000101", 83 => "00000111", 84 => "11000111", 85 => "11111111", 
    86 => "11011001", 87 => "00011101", 88 => "00000101", 89 => "00100101", 
    90 => "00001001", 91 => "11111010", 92 => "00000010", 93 => "10101000", 
    94 => "00010011", 95 => "00000100" );

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

