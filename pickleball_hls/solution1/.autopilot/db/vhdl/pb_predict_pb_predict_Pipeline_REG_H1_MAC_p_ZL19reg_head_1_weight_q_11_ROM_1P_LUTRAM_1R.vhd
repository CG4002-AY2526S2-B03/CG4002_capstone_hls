-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_11_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_11_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000", 1 to 2=> "11111111", 3 => "00000111", 4 => "00000000", 
    5 => "00000010", 6 => "11111100", 7 => "00010001", 8 => "11110101", 
    9 to 10=> "00000001", 11 => "11111100", 12 to 13=> "00000100", 14 => "11111111", 
    15 => "11110111", 16 => "00000000", 17 => "00100011", 18 => "00000010", 
    19 => "00001000", 20 => "00000010", 21 => "11111010", 22 => "11111101", 
    23 => "00000000", 24 => "00001100", 25 => "11010010", 26 => "00000101", 
    27 => "00000001", 28 => "11111101", 29 => "00001010", 30 => "00000000", 
    31 => "11111110", 32 to 36=> "00000000", 37 => "00000110", 38 => "00000001", 
    39 => "00000010", 40 => "00000101", 41 to 47=> "00000000", 48 => "00000101", 
    49 => "00000010", 50 => "11110111", 51 => "11110011", 52 => "00011000", 
    53 => "11110000", 54 => "11111010", 55 => "11111101", 56 => "11111010", 
    57 => "00000111", 58 => "00000110", 59 => "11101100", 60 => "11101101", 
    61 => "00000011", 62 => "00000010", 63 to 64=> "11001001", 65 => "00000011", 
    66 => "11011101", 67 => "11110001", 68 => "11010000", 69 => "11110110", 
    70 => "00000000", 71 => "11111110", 72 => "00001001", 73 => "00000100", 
    74 => "10111101", 75 => "00011010", 76 => "11110110", 77 => "00001110", 
    78 => "11011011", 79 => "11000101", 80 => "11001010", 81 => "00011000", 
    82 => "01000001", 83 => "00010111", 84 => "11111101", 85 => "00000000", 
    86 => "00001000", 87 => "00001001", 88 => "00000000", 89 => "00001101", 
    90 => "11000100", 91 => "11110100", 92 => "00000011", 93 => "11101011", 
    94 => "10110001", 95 => "11110110" );

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

