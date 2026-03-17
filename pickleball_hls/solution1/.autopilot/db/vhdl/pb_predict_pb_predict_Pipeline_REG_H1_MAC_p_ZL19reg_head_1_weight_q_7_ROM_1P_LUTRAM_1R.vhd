-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0000010", 1 => "0000101", 2 => "1110010", 3 => "0001010", 
    4 => "0000010", 5 => "0000110", 6 => "1101010", 7 => "0001100", 
    8 => "1111110", 9 => "0001010", 10 => "0000011", 11 => "1110111", 
    12 => "0000000", 13 to 14=> "0000110", 15 => "0000010", 16 => "1111100", 
    17 => "1111000", 18 => "0000000", 19 => "1001100", 20 => "1100001", 
    21 => "0010001", 22 => "0000001", 23 => "1111111", 24 to 25=> "1111000", 
    26 => "1111100", 27 => "1110110", 28 => "0000101", 29 to 30=> "0000011", 
    31 => "1110111", 32 to 33=> "0000000", 34 => "0000101", 35 to 37=> "0000000", 
    38 => "1111100", 39 => "0000001", 40 => "1111100", 41 => "0000000", 
    42 => "1111111", 43 to 47=> "0000000", 48 => "0101101", 49 => "1110111", 
    50 => "0000000", 51 => "1111011", 52 => "1111100", 53 => "0001011", 
    54 => "1111000", 55 => "1110110", 56 => "0001011", 57 => "0001111", 
    58 => "1111100", 59 => "1100101", 60 => "1110000", 61 => "0001010", 
    62 => "1111111", 63 => "0001110", 64 => "1010111", 65 => "0010011", 
    66 => "0000000", 67 => "0011101", 68 => "1111011", 69 => "1111110", 
    70 => "0001111", 71 => "1101110", 72 => "0001011", 73 => "1111111", 
    74 => "0000111", 75 => "0101111", 76 => "0100000", 77 => "0010101", 
    78 => "0000000", 79 => "1011100", 80 => "1111011", 81 => "0011010", 
    82 => "0001001", 83 => "1111011", 84 => "1111101", 85 => "0000100", 
    86 => "1111010", 87 => "0001011", 88 => "1111011", 89 => "1111001", 
    90 => "0000000", 91 => "0100010", 92 => "0011010", 93 => "0000001", 
    94 => "1111110", 95 => "0001001" );

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

