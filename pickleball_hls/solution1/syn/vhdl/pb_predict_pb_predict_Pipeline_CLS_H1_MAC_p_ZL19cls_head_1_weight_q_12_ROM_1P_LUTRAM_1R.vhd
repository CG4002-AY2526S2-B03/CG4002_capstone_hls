-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_12_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_12_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1111111", 1 => "1110110", 2 => "1111001", 3 => "0000011", 
    4 => "1110011", 5 => "1111111", 6 => "0001011", 7 => "0000000", 
    8 => "1110111", 9 => "0010001", 10 => "0001000", 11 => "1111101", 
    12 => "1111100", 13 => "1111101", 14 => "1110111", 15 => "1110100", 
    16 => "1111111", 17 => "1111010", 18 => "1111011", 19 => "0000010", 
    20 => "0000001", 21 => "1011110", 22 => "0000011", 23 => "1101000", 
    24 => "1111010", 25 => "0000000", 26 => "0000101", 27 => "1111011", 
    28 => "0000001", 29 => "1100010", 30 => "0000100", 31 => "0000101", 
    32 => "1101110", 33 => "1110110", 34 => "1111111", 35 => "0000000", 
    36 => "0000101", 37 => "1111010", 38 => "1010010", 39 => "0001100", 
    40 => "0011010", 41 => "1100111", 42 => "1111100", 43 => "0000111", 
    44 => "1111010", 45 => "0000011", 46 to 47=> "0000111", 48 => "1100111", 
    49 => "0000011", 50 => "1111000", 51 => "0000011", 52 => "0000001", 
    53 => "0110110", 54 => "1111111", 55 => "0000001", 56 => "1101110", 
    57 => "1101111", 58 => "0000000", 59 => "1101110", 60 => "0000010", 
    61 => "1100111", 62 => "0001001", 63 => "1111100", 64 to 65=> "0010011", 
    66 to 67=> "0000010", 68 => "1110110", 69 => "0001101", 70 => "1111100", 
    71 => "0001010", 72 => "1101110", 73 to 74=> "1111100", 75 => "0010100", 
    76 => "1111101", 77 => "0000100", 78 => "1111010", 79 to 80=> "0000011", 
    81 => "1101110", 82 => "1111111", 83 => "1110001", 84 => "0000100", 
    85 => "1011111", 86 => "1110010", 87 => "1111000", 88 => "1101111", 
    89 => "0001011", 90 => "1101100", 91 => "1011001", 92 => "0000011", 
    93 => "0000101", 94 => "1100000", 95 => "1100001" );

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

