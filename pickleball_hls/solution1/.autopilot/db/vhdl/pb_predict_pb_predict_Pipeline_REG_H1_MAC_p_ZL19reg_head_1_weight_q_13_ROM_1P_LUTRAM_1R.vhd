-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_13_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_13_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000010", 1 => "11111011", 2 => "11111010", 3 => "00000001", 
    4 => "00000000", 5 => "00001010", 6 => "00001001", 7 => "11111101", 
    8 => "11111110", 9 => "11110111", 10 => "00000000", 11 => "00000011", 
    12 => "11111001", 13 => "00001110", 14 => "00000100", 15 => "00000110", 
    16 => "00001001", 17 => "00000111", 18 => "00001000", 19 => "00011010", 
    20 => "00000110", 21 => "00001011", 22 => "00000111", 23 => "00000011", 
    24 => "00001100", 25 => "00000001", 26 => "00000000", 27 => "00000111", 
    28 => "11111100", 29 => "00010001", 30 => "11111001", 31 => "11100101", 
    32 => "00000000", 33 => "00010010", 34 to 35=> "00000000", 36 => "11111111", 
    37 => "11111110", 38 to 40=> "00000000", 41 => "11111011", 42 to 47=> "00000000", 
    48 => "00001001", 49 => "00000010", 50 => "11111011", 51 => "00000001", 
    52 => "00001111", 53 => "11110011", 54 => "00100100", 55 => "00001111", 
    56 => "11111111", 57 => "11111110", 58 => "00000000", 59 => "11100111", 
    60 => "11011100", 61 => "11011111", 62 => "11011011", 63 => "11101111", 
    64 => "00001000", 65 => "11110101", 66 => "00101010", 67 => "11011111", 
    68 => "00000000", 69 => "00000110", 70 => "00001111", 71 => "11011000", 
    72 => "00000100", 73 => "11111010", 74 => "11101011", 75 => "11011110", 
    76 => "11111100", 77 => "01110000", 78 => "11011000", 79 => "11111111", 
    80 => "00000011", 81 => "00001011", 82 => "00110001", 83 => "11100001", 
    84 => "11111100", 85 => "11111011", 86 => "00000010", 87 => "11001010", 
    88 => "11111101", 89 => "00000010", 90 => "00001001", 91 => "00000111", 
    92 => "00000110", 93 => "11101000", 94 => "11010011", 95 => "11110011" );

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

