-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_3_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_3_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 to 2=> "00000001", 3 => "00000100", 4 => "11100100", 5 => "00000100", 
    6 => "00000001", 7 => "00000000", 8 => "00001010", 9 => "11111110", 
    10 => "00000011", 11 => "11101101", 12 => "00011000", 13 => "11111011", 
    14 to 15=> "00000000", 16 => "00000011", 17 => "00001001", 18 to 19=> "00000011", 
    20 => "11111111", 21 => "00000001", 22 => "11110111", 23 => "11100001", 
    24 => "11111100", 25 => "11110010", 26 => "00100001", 27 => "11111101", 
    28 => "11111100", 29 => "00000101", 30 => "00001100", 31 => "00000001", 
    32 => "00000000", 33 => "00000010", 34 to 36=> "00000000", 37 => "11111110", 
    38 to 42=> "00000000", 43 => "11111100", 44 => "00000000", 45 => "11111111", 
    46 to 47=> "00000000", 48 => "00000101", 49 => "00000000", 50 => "11111101", 
    51 => "00000110", 52 => "00011100", 53 => "11111001", 54 => "00000011", 
    55 => "00000001", 56 => "11000000", 57 => "00000000", 58 => "00000100", 
    59 => "00000010", 60 => "11110010", 61 => "00001000", 62 => "00000100", 
    63 => "00000000", 64 => "11101110", 65 => "00000001", 66 => "00010000", 
    67 => "00001010", 68 => "00001001", 69 => "11111110", 70 => "10111110", 
    71 => "00010000", 72 => "11101110", 73 => "00000011", 74 => "11000011", 
    75 => "11111000", 76 => "00000001", 77 => "00000010", 78 => "11101101", 
    79 => "00001000", 80 => "00011000", 81 => "00000111", 82 => "00100110", 
    83 => "00010110", 84 => "00000001", 85 => "00000101", 86 => "11001100", 
    87 => "00010000", 88 => "00000111", 89 => "00010000", 90 => "01101101", 
    91 => "00000101", 92 => "00001101", 93 => "11111000", 94 => "00011001", 
    95 => "00010001" );

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

