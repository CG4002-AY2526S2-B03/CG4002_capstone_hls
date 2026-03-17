-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_6_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_6_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11111100", 1 => "00000000", 2 => "11111110", 3 => "00001110", 
    4 => "00000011", 5 => "00000100", 6 => "00001010", 7 => "00000011", 
    8 => "11110100", 9 => "11111101", 10 => "11111110", 11 => "11111111", 
    12 => "11111101", 13 => "00000101", 14 => "11111010", 15 to 16=> "00000100", 
    17 => "00000011", 18 => "11011001", 19 => "00001010", 20 => "00000010", 
    21 => "11111101", 22 => "00000100", 23 => "00000101", 24 => "11111111", 
    25 => "00000001", 26 => "11110100", 27 => "11110111", 28 => "11111011", 
    29 => "00000011", 30 => "11110010", 31 to 34=> "00000000", 35 => "11110001", 
    36 to 39=> "00000000", 40 => "00001111", 41 to 44=> "00000000", 45 => "00000010", 
    46 to 50=> "00000000", 51 => "00001101", 52 => "01001001", 53 => "11110101", 
    54 => "00000101", 55 => "00001001", 56 => "11111100", 57 => "11010001", 
    58 => "00000111", 59 => "00010110", 60 => "00001010", 61 => "00000000", 
    62 => "00001110", 63 => "11010101", 64 => "00001101", 65 => "01000111", 
    66 => "00001001", 67 => "00000100", 68 => "11011100", 69 => "11000111", 
    70 => "00000101", 71 => "00010001", 72 => "11111110", 73 => "11001110", 
    74 => "00000100", 75 => "00011101", 76 => "00000110", 77 => "00000000", 
    78 => "00010010", 79 => "11011111", 80 => "01000100", 81 => "01001100", 
    82 => "11111111", 83 to 84=> "11110011", 85 => "10111100", 86 => "11111101", 
    87 => "00001000", 88 => "11110110", 89 => "11101001", 90 => "11111100", 
    91 => "11111011", 92 => "11010101", 93 => "00000101", 94 => "00100010", 
    95 => "11110101" );

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

