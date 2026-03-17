-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_12_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_12_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1111111", 1 => "0000001", 2 => "1111110", 3 => "1111101", 
    4 => "0000100", 5 => "0000010", 6 => "1111101", 7 => "1101110", 
    8 => "0001001", 9 => "1101110", 10 to 11=> "0000010", 12 => "1111110", 
    13 => "1111111", 14 => "1111101", 15 => "0000010", 16 => "0011010", 
    17 => "1111110", 18 => "0011001", 19 => "1111011", 20 to 21=> "0001000", 
    22 => "0000101", 23 => "0000111", 24 => "0000110", 25 => "1111100", 
    26 => "1111101", 27 => "1111011", 28 => "0000001", 29 => "0000000", 
    30 => "0011001", 31 => "0010101", 32 to 35=> "0000000", 36 => "1111010", 
    37 => "0000000", 38 => "0000001", 39 => "1111011", 40 => "1111110", 
    41 to 47=> "0000000", 48 => "1111110", 49 => "1111010", 50 => "0000001", 
    51 => "0000010", 52 => "0000001", 53 => "1100010", 54 => "0000111", 
    55 to 56=> "1111100", 57 => "1100110", 58 => "1111000", 59 => "0000001", 
    60 => "1101111", 61 => "1111011", 62 => "0011110", 63 => "1111010", 
    64 => "1111101", 65 => "0010010", 66 => "1111100", 67 => "0001100", 
    68 => "1111011", 69 => "0111100", 70 to 71=> "1110111", 72 to 73=> "0000101", 
    74 => "1111100", 75 => "1100111", 76 => "1011111", 77 => "1010111", 
    78 => "1100101", 79 => "1110111", 80 => "0000100", 81 => "1111010", 
    82 => "1111111", 83 => "0011010", 84 => "0001000", 85 => "0111000", 
    86 => "0000101", 87 => "0001001", 88 => "0000010", 89 => "1110011", 
    90 => "1111001", 91 => "1011100", 92 => "0011001", 93 => "1001100", 
    94 => "1110111", 95 => "1111100" );

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

