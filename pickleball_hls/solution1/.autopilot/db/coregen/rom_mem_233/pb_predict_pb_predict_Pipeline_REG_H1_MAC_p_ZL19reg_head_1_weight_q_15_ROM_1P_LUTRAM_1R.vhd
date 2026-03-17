-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_15_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_15_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000100", 1 => "00000011", 2 => "00000111", 3 => "11111000", 
    4 => "00000101", 5 => "11111010", 6 => "00000111", 7 => "00000010", 
    8 => "00000001", 9 => "11111100", 10 => "11111001", 11 to 12=> "00000100", 
    13 => "00001101", 14 => "11111011", 15 => "11111111", 16 => "11110011", 
    17 => "00001000", 18 => "00000001", 19 => "00000011", 20 => "11111110", 
    21 => "00001110", 22 => "00001011", 23 => "11110111", 24 => "11111000", 
    25 => "11111011", 26 => "00010101", 27 => "11110101", 28 => "11110000", 
    29 => "00001110", 30 => "11111011", 31 => "00000001", 32 to 34=> "00000000", 
    35 => "11111111", 36 => "00000010", 37 => "00000000", 38 => "00001001", 
    39 to 40=> "00000000", 41 => "11110110", 42 to 43=> "00000000", 44 => "11111101", 
    45 => "00001011", 46 to 47=> "00000000", 48 => "11111011", 49 => "00010111", 
    50 => "11101110", 51 => "11110111", 52 => "11111111", 53 => "00011011", 
    54 => "11111110", 55 => "00000000", 56 => "00001000", 57 => "11111011", 
    58 => "00110000", 59 => "00010100", 60 => "11111000", 61 => "00001011", 
    62 => "11000100", 63 => "11101011", 64 => "11011101", 65 => "01111011", 
    66 => "11111011", 67 => "00001011", 68 => "00000000", 69 => "11011110", 
    70 => "00000001", 71 => "11101001", 72 => "00011010", 73 => "11111111", 
    74 => "01110001", 75 => "11010001", 76 => "00001000", 77 => "00001010", 
    78 => "00011100", 79 => "00011001", 80 => "00010010", 81 => "01111111", 
    82 => "11111011", 83 => "11110011", 84 => "11111011", 85 => "00000101", 
    86 => "11111011", 87 => "11000111", 88 => "00001100", 89 => "00001101", 
    90 => "11101001", 91 => "00000001", 92 => "11111001", 93 => "11110011", 
    94 => "00010111", 95 => "00000000" );

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

