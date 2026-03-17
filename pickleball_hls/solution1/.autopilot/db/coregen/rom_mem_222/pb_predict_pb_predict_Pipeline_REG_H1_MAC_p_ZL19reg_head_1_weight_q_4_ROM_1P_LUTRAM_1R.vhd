-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_4_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_4_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000110", 1 => "11110110", 2 => "11111110", 3 => "11110101", 
    4 => "00000010", 5 => "11111110", 6 => "00000010", 7 => "00001110", 
    8 => "00001111", 9 to 10=> "00000000", 11 => "00000001", 12 => "11110001", 
    13 => "00000100", 14 => "00000001", 15 => "11111000", 16 => "11101010", 
    17 => "11111111", 18 => "11111011", 19 => "11111101", 20 => "00010000", 
    21 => "11111011", 22 => "00100011", 23 => "00000001", 24 => "00000101", 
    25 => "11111101", 26 => "11111111", 27 => "00101110", 28 => "11110111", 
    29 => "00000010", 30 to 31=> "00000111", 32 to 34=> "00000000", 35 => "00000110", 
    36 to 40=> "00000000", 41 => "00001010", 42 to 43=> "00000000", 44 => "11111110", 
    45 => "00000101", 46 => "00000000", 47 => "11111111", 48 => "00000001", 
    49 => "00001101", 50 => "00110001", 51 => "11111111", 52 => "00000010", 
    53 => "11110101", 54 => "11110110", 55 => "11101101", 56 => "11111100", 
    57 => "11110001", 58 => "00000110", 59 => "11111110", 60 => "00001010", 
    61 => "00010011", 62 => "11111101", 63 => "11111111", 64 => "01100110", 
    65 => "11100011", 66 => "11110010", 67 => "00000011", 68 => "11110000", 
    69 => "11111100", 70 => "11100000", 71 => "00000111", 72 to 73=> "00000011", 
    74 => "11001001", 75 to 76=> "11110100", 77 => "00000011", 78 => "00010111", 
    79 => "11111001", 80 => "11010000", 81 => "00010010", 82 => "11010011", 
    83 => "00000000", 84 => "11111101", 85 => "11101000", 86 => "11110011", 
    87 => "11111001", 88 => "00001110", 89 => "00000011", 90 => "11011001", 
    91 => "11110010", 92 => "00000011", 93 => "00000101", 94 => "00110000", 
    95 => "00000010" );

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

