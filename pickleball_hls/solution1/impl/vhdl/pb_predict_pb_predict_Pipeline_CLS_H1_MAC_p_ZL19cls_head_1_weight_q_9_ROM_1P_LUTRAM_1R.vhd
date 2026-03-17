-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11111101", 1 => "11111111", 2 => "00000001", 3 => "11100001", 
    4 => "11001010", 5 => "00000100", 6 => "00000011", 7 => "11111101", 
    8 => "11100100", 9 => "00000101", 10 => "00010001", 11 => "11110101", 
    12 => "11111001", 13 => "11111100", 14 => "11111011", 15 to 16=> "00000001", 
    17 => "11111111", 18 => "11111100", 19 => "00000100", 20 => "00000000", 
    21 => "11111011", 22 => "00000100", 23 => "11100101", 24 => "00000110", 
    25 => "11111110", 26 => "00000010", 27 => "11110110", 28 => "11101000", 
    29 => "00000100", 30 => "00000101", 31 => "11111101", 32 => "11111111", 
    33 => "00000010", 34 => "00000101", 35 => "00000111", 36 => "00000000", 
    37 => "11110011", 38 => "11111011", 39 => "11111001", 40 => "11100000", 
    41 => "00000001", 42 => "11101101", 43 => "00010100", 44 => "00010000", 
    45 => "00001000", 46 to 47=> "00000100", 48 => "00000001", 49 => "11111101", 
    50 => "00000000", 51 => "00000100", 52 => "00001011", 53 => "00000101", 
    54 => "11111110", 55 => "11001110", 56 => "00001011", 57 => "00000101", 
    58 => "11110111", 59 => "11101001", 60 to 61=> "11111110", 62 => "11111111", 
    63 => "00000001", 64 to 65=> "11111111", 66 => "11111010", 67 => "00000001", 
    68 => "00000111", 69 => "11110110", 70 => "11111110", 71 => "00000110", 
    72 => "11110100", 73 => "00000010", 74 => "10011100", 75 => "11100111", 
    76 => "11101110", 77 => "11111100", 78 => "11101001", 79 => "11111110", 
    80 to 81=> "11111111", 82 => "11111110", 83 => "11001011", 84 => "11111101", 
    85 => "11110101", 86 => "11111001", 87 => "00000101", 88 => "11101011", 
    89 => "00000010", 90 => "11101011", 91 => "00001101", 92 => "00000010", 
    93 => "11101101", 94 => "11110101", 95 => "11111101" );

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

