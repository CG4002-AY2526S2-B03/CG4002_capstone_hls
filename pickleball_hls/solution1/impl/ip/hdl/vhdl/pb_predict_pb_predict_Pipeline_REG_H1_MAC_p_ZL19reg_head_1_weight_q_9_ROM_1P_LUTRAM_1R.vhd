-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_9_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_9_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1100011", 1 => "0000011", 2 => "1110010", 3 => "0000000", 
    4 => "1111111", 5 => "1110101", 6 => "1111100", 7 => "1110111", 
    8 => "0000011", 9 => "1111110", 10 => "0000011", 11 => "0001100", 
    12 => "0000010", 13 => "0000011", 14 => "1111011", 15 => "1110000", 
    16 => "0000001", 17 => "1111111", 18 => "1111101", 19 => "0110101", 
    20 => "1100111", 21 => "1111000", 22 => "1111110", 23 => "1110011", 
    24 => "0000000", 25 => "1111010", 26 => "0000010", 27 => "1111001", 
    28 => "0011010", 29 => "1111110", 30 => "0011010", 31 => "1111011", 
    32 => "0000000", 33 => "1110101", 34 => "0000010", 35 to 36=> "0000000", 
    37 => "0001100", 38 to 41=> "0000000", 42 => "0000011", 43 => "0000000", 
    44 => "1111111", 45 to 47=> "0000000", 48 => "0000010", 49 => "1111011", 
    50 => "1110110", 51 => "0000000", 52 => "0000010", 53 => "1111101", 
    54 => "0001100", 55 => "1110101", 56 => "1111110", 57 => "1010110", 
    58 => "1111101", 59 => "1101101", 60 => "0100100", 61 => "0000110", 
    62 => "1111000", 63 => "1111010", 64 => "0001111", 65 => "0000111", 
    66 => "1111110", 67 => "1111000", 68 => "0011100", 69 => "1111010", 
    70 => "1110110", 71 => "0010010", 72 => "0000100", 73 => "1110010", 
    74 => "0001101", 75 => "1111101", 76 => "0010010", 77 => "0011001", 
    78 => "0001011", 79 => "1110100", 80 => "0010000", 81 => "0001001", 
    82 => "1111110", 83 => "0000001", 84 => "0000010", 85 => "0000111", 
    86 => "0001110", 87 => "0000000", 88 => "1111010", 89 => "1010100", 
    90 to 91=> "0000001", 92 => "0001011", 93 => "1011100", 94 => "0000011", 
    95 => "0000111" );

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

