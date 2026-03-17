-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_8_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_8_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "11111111", 1 => "11111110", 2 => "00000110", 3 => "00000000", 
    4 => "11101101", 5 => "11111011", 6 => "11111010", 7 => "00000001", 
    8 to 9=> "11111010", 10 => "00000010", 11 => "11111100", 12 => "11110010", 
    13 => "11111000", 14 => "00000011", 15 => "00001001", 16 => "11111001", 
    17 => "11111111", 18 => "10111111", 19 => "11101110", 20 => "00001111", 
    21 => "11111010", 22 => "00000100", 23 => "00001010", 24 => "00011100", 
    25 => "00010101", 26 => "11111101", 27 => "00000001", 28 => "00100100", 
    29 => "11110011", 30 => "11110111", 31 => "11110011", 32 => "00000100", 
    33 to 36=> "00000000", 37 => "11111101", 38 => "00000001", 39 to 46=> "00000000", 
    47 => "11111111", 48 => "00000100", 49 => "00010000", 50 => "00000011", 
    51 to 52=> "00000000", 53 => "11110111", 54 => "11111000", 55 => "00000000", 
    56 => "00010001", 57 => "00011010", 58 => "00101010", 59 => "11011100", 
    60 => "00000110", 61 => "00000010", 62 => "11010101", 63 => "11111101", 
    64 to 65=> "00001110", 66 => "00001111", 67 => "00010000", 68 => "11111101", 
    69 => "11111011", 70 => "00000010", 71 => "11100101", 72 => "11101100", 
    73 => "11010101", 74 => "11111101", 75 => "11100110", 76 => "00000001", 
    77 => "11010101", 78 => "00000010", 79 to 80=> "11111011", 81 => "11011001", 
    82 => "11111101", 83 to 84=> "11111110", 85 => "00000010", 86 => "00000000", 
    87 => "11100111", 88 => "11111000", 89 => "11110001", 90 => "11110101", 
    91 => "11011111", 92 => "11111100", 93 => "00010010", 94 => "11101110", 
    95 => "00001110" );

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

