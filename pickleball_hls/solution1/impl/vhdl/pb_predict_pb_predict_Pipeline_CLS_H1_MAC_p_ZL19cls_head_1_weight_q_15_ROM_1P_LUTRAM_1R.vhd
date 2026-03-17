-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_15_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_15_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00010000", 1 to 2=> "11111011", 3 => "00000010", 4 => "00000001", 
    5 to 6=> "11111010", 7 => "00001001", 8 => "11111010", 9 => "11110011", 
    10 => "11111011", 11 => "11011100", 12 => "11110101", 13 => "00010000", 
    14 => "00001010", 15 => "11111111", 16 => "00000100", 17 => "11110101", 
    18 => "11110001", 19 => "11100111", 20 => "11110101", 21 => "10110100", 
    22 => "11101101", 23 => "00010001", 24 => "11001001", 25 to 26=> "11100100", 
    27 => "00001011", 28 => "11101111", 29 => "11111000", 30 => "00000001", 
    31 => "11011110", 32 => "11010011", 33 => "00001001", 34 => "00000011", 
    35 => "11011110", 36 => "11111110", 37 => "11100010", 38 => "00001011", 
    39 => "00001001", 40 => "00010101", 41 => "00001110", 42 => "00001010", 
    43 => "00000011", 44 => "00010110", 45 => "11101100", 46 => "10111010", 
    47 => "11011101", 48 => "00000100", 49 => "11101100", 50 => "11111010", 
    51 => "10100111", 52 => "11111110", 53 => "11110010", 54 => "11110111", 
    55 => "11110101", 56 => "00001110", 57 => "11111101", 58 => "00010011", 
    59 => "00000011", 60 => "00000110", 61 => "11100000", 62 => "11111101", 
    63 => "11001010", 64 => "00000101", 65 => "00001111", 66 => "11110100", 
    67 => "00000011", 68 => "11111101", 69 => "00000111", 70 => "11111110", 
    71 => "10111001", 72 => "00001100", 73 => "11101111", 74 => "00010001", 
    75 => "00000100", 76 => "11111010", 77 => "00000010", 78 => "00001110", 
    79 => "00000110", 80 => "11000111", 81 => "00000100", 82 => "00010000", 
    83 => "00000010", 84 => "00000000", 85 => "00000110", 86 to 87=> "11111001", 
    88 => "11111110", 89 => "00010010", 90 => "11001110", 91 => "11001111", 
    92 => "11111001", 93 => "11111110", 94 => "11011101", 95 => "00000101" );

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

