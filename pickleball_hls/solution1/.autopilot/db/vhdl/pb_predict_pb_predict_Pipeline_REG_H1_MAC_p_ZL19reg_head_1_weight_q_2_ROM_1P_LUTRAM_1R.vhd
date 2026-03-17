-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_2_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_2_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00000110", 1 => "00000000", 2 => "11110100", 3 => "11111111", 
    4 => "00000000", 5 => "11110111", 6 => "00000000", 7 => "00011011", 
    8 => "00000011", 9 => "11111110", 10 => "00001001", 11 => "00000001", 
    12 => "00100000", 13 => "11111001", 14 => "00010001", 15 => "00000010", 
    16 => "11111110", 17 => "00000100", 18 => "00001001", 19 => "11111110", 
    20 => "11111001", 21 => "11111110", 22 => "00000001", 23 => "11111100", 
    24 => "00001001", 25 => "11111010", 26 => "00101011", 27 => "11111111", 
    28 to 29=> "00000001", 30 => "11111111", 31 => "11101101", 32 to 36=> "00000000", 
    37 => "00000001", 38 => "11111101", 39 to 40=> "00000000", 41 => "11111111", 
    42 to 44=> "00000000", 45 => "00000100", 46 to 47=> "00000000", 48 => "11111010", 
    49 => "00000011", 50 => "00010010", 51 to 52=> "00000110", 53 => "11111100", 
    54 => "00000010", 55 => "00001001", 56 => "11111000", 57 => "00000100", 
    58 => "11101110", 59 => "11111011", 60 => "11111000", 61 => "11111110", 
    62 => "11100100", 63 => "00101110", 64 => "00001101", 65 => "00010100", 
    66 => "00000110", 67 => "00010000", 68 => "11101110", 69 => "00000010", 
    70 => "11111001", 71 => "11111011", 72 => "00011000", 73 => "11111110", 
    74 => "00001011", 75 => "00101111", 76 => "00010000", 77 => "00000100", 
    78 => "00001000", 79 => "11001010", 80 => "00001110", 81 => "00111010", 
    82 => "11111000", 83 => "11010101", 84 => "11111010", 85 => "11111000", 
    86 => "00001011", 87 => "11111110", 88 => "00000100", 89 => "11110101", 
    90 => "00001001", 91 => "00010110", 92 => "00001110", 93 => "00000010", 
    94 => "00001110", 95 => "10110110" );

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

