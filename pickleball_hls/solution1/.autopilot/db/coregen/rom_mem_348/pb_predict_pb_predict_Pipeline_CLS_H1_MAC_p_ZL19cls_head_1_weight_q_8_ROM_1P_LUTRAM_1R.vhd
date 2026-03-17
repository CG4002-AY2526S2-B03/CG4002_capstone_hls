-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_8_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_8_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1100100", 1 => "1111111", 2 => "1010110", 3 => "0000001", 
    4 => "1100101", 5 => "1110110", 6 => "1111011", 7 => "1111111", 
    8 => "0001100", 9 => "1101000", 10 => "0001111", 11 => "1011100", 
    12 => "0001011", 13 => "1110001", 14 => "1111001", 15 => "0001101", 
    16 => "0001001", 17 => "1111101", 18 => "0000000", 19 => "1111100", 
    20 => "0001101", 21 => "1111010", 22 => "1111101", 23 => "1111110", 
    24 => "0000011", 25 => "0110111", 26 => "1100001", 27 => "1001100", 
    28 => "1101000", 29 => "1011000", 30 => "1101100", 31 => "0010011", 
    32 => "0000111", 33 => "0000001", 34 => "0000110", 35 => "0000010", 
    36 => "0000100", 37 => "1101000", 38 => "1111100", 39 => "1111111", 
    40 => "1011100", 41 to 42=> "1101000", 43 => "0000011", 44 to 45=> "0000100", 
    46 => "1111011", 47 => "1100110", 48 => "1111010", 49 => "1111100", 
    50 => "0001101", 51 => "0000000", 52 => "1000101", 53 => "1100101", 
    54 => "0000100", 55 => "1111011", 56 => "0000010", 57 => "1011011", 
    58 => "0010100", 59 => "1111100", 60 => "0010001", 61 => "1111111", 
    62 => "0000000", 63 => "1101100", 64 => "0000100", 65 => "1111100", 
    66 => "0000101", 67 => "0000001", 68 => "0000010", 69 => "0001001", 
    70 => "0000010", 71 => "1111111", 72 => "0000101", 73 => "0001111", 
    74 => "0001100", 75 => "1101001", 76 => "0001000", 77 => "1101011", 
    78 => "1110011", 79 => "1111110", 80 => "1101001", 81 => "0000000", 
    82 => "1101111", 83 => "1111101", 84 => "0000100", 85 => "0000011", 
    86 => "1111011", 87 => "1111001", 88 => "1001110", 89 => "1100000", 
    90 => "1111000", 91 => "0010001", 92 => "1100010", 93 => "0010011", 
    94 => "0010010", 95 => "1011111" );

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

