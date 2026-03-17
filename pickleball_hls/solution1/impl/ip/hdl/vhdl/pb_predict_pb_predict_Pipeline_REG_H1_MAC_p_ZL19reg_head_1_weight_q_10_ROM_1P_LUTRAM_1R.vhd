-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_10_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_10_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000", 1 => "11101101", 2 => "00000011", 3 => "11111001", 
    4 => "00000100", 5 => "11111110", 6 => "11101100", 7 => "11111010", 
    8 => "11111100", 9 => "00000010", 10 => "11111100", 11 => "00000011", 
    12 to 13=> "11111110", 14 => "00000011", 15 => "00000001", 16 => "11110001", 
    17 => "10111010", 18 => "11110010", 19 to 21=> "11111101", 22 => "11111100", 
    23 => "11110100", 24 => "00101110", 25 => "11111111", 26 => "00111001", 
    27 => "11111000", 28 => "11011000", 29 => "11111011", 30 => "00000110", 
    31 => "11111101", 32 to 33=> "00000000", 34 => "11110010", 35 to 36=> "00000000", 
    37 => "00000111", 38 => "00000010", 39 => "00000110", 40 => "00000000", 
    41 => "11111101", 42 to 45=> "00000000", 46 => "11111000", 47 => "00000000", 
    48 => "11111110", 49 => "00000100", 50 => "00000001", 51 => "00001010", 
    52 => "00010111", 53 => "11111111", 54 => "11111101", 55 => "00001010", 
    56 => "00000100", 57 => "11110100", 58 => "00000101", 59 => "00000011", 
    60 => "00000001", 61 => "11111111", 62 => "11110111", 63 => "11111001", 
    64 => "00000000", 65 => "00011100", 66 => "11110010", 67 => "00001110", 
    68 => "00011111", 69 => "11111101", 70 => "11111001", 71 => "00000000", 
    72 => "11101011", 73 => "00000110", 74 => "11100110", 75 => "00001101", 
    76 => "00001001", 77 => "11011110", 78 => "11110100", 79 => "11111100", 
    80 => "11110101", 81 => "11110011", 82 => "00001110", 83 => "00000000", 
    84 => "11111000", 85 => "00000011", 86 => "00010011", 87 => "11111101", 
    88 => "00000001", 89 => "11110011", 90 => "00110010", 91 => "11100010", 
    92 => "11111010", 93 => "11111001", 94 => "11110110", 95 => "11111010" );

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

