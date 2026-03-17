-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_1_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_1_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0001100", 1 => "1110111", 2 => "0000010", 3 => "0000001", 
    4 => "1111110", 5 => "0000011", 6 => "1111111", 7 => "1111001", 
    8 => "0000000", 9 => "1110101", 10 => "0000001", 11 => "0000000", 
    12 => "1110111", 13 to 14=> "0000010", 15 => "0000101", 16 => "1111000", 
    17 => "0000101", 18 to 19=> "1111101", 20 => "0010000", 21 => "1101101", 
    22 => "1111011", 23 => "0001111", 24 => "1111100", 25 => "1110101", 
    26 => "0001110", 27 => "1011100", 28 => "1111011", 29 => "0000111", 
    30 => "0000101", 31 => "0001110", 32 => "0001100", 33 => "0000111", 
    34 => "0000000", 35 => "0001001", 36 to 38=> "0000000", 39 => "1111111", 
    40 => "0000000", 41 => "1111010", 42 to 43=> "0000000", 44 => "0001001", 
    45 to 47=> "0000000", 48 => "0000110", 49 => "1111111", 50 => "1111100", 
    51 to 52=> "1111101", 53 => "0000001", 54 => "1111010", 55 => "1111100", 
    56 => "1000011", 57 => "0001011", 58 => "1111100", 59 => "0000001", 
    60 => "1111111", 61 => "1111110", 62 to 63=> "1111100", 64 => "0001010", 
    65 => "1111101", 66 => "0011001", 67 => "1110101", 68 => "1110111", 
    69 => "0001001", 70 => "1010010", 71 => "1111100", 72 => "1101001", 
    73 => "1111010", 74 => "1001101", 75 => "0010100", 76 => "1111000", 
    77 => "1111111", 78 => "1101000", 79 => "0100011", 80 => "1110111", 
    81 => "1111101", 82 => "0100110", 83 => "0001110", 84 => "1111111", 
    85 => "0001000", 86 => "1000000", 87 => "0000011", 88 => "1111010", 
    89 => "1111011", 90 => "1011100", 91 => "1111110", 92 => "0001110", 
    93 => "1110000", 94 => "1101100", 95 => "1110000" );

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

