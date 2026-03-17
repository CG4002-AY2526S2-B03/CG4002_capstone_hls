-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_4_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_4_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11111000", 1 => "11111101", 2 => "00001001", 3 => "11111000", 
    4 => "00000101", 5 => "11111011", 6 => "11111110", 7 => "11010000", 
    8 => "11111101", 9 => "11010011", 10 => "00000101", 11 => "00000110", 
    12 => "11110000", 13 => "00001110", 14 => "11111011", 15 => "11010111", 
    16 => "11111111", 17 => "00000000", 18 => "00000010", 19 => "11100001", 
    20 => "00000011", 21 => "11111010", 22 => "11110100", 23 => "00010001", 
    24 => "00000001", 25 => "11101000", 26 => "00000000", 27 => "11111110", 
    28 => "00000110", 29 => "10111101", 30 => "00000101", 31 => "00000100", 
    32 => "00000001", 33 => "11111011", 34 => "11100011", 35 => "11111101", 
    36 => "00000101", 37 => "00000011", 38 => "11111101", 39 => "00000000", 
    40 => "00000011", 41 => "11101000", 42 => "11111110", 43 => "11111000", 
    44 => "00001011", 45 => "11011001", 46 => "00000001", 47 => "00001010", 
    48 => "00000110", 49 => "11111101", 50 => "11111100", 51 => "11111011", 
    52 => "00000100", 53 => "00000011", 54 => "11111110", 55 => "11111101", 
    56 => "11111100", 57 => "00011100", 58 => "11111011", 59 => "00000011", 
    60 => "10111101", 61 => "00100001", 62 => "00000000", 63 => "10110101", 
    64 => "00000001", 65 => "00000000", 66 => "00000100", 67 => "00001100", 
    68 => "00000010", 69 => "00000001", 70 => "11111100", 71 => "11100000", 
    72 => "00000011", 73 => "11111101", 74 => "00000001", 75 => "11111111", 
    76 => "11111101", 77 => "00000010", 78 => "11111101", 79 => "11111111", 
    80 => "11101100", 81 => "11111100", 82 => "00000001", 83 => "11100101", 
    84 to 85=> "11111110", 86 => "11111001", 87 => "11101000", 88 => "11111100", 
    89 => "00000011", 90 => "11111110", 91 => "00000001", 92 => "00001011", 
    93 => "11111111", 94 => "00000001", 95 => "00001010" );

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

