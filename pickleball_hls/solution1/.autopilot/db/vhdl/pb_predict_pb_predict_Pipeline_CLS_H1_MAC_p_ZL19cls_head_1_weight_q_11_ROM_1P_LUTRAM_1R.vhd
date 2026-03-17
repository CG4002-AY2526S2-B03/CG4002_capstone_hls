-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Tool Version Limit: 2022.04
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_11_ROM_1P_LUTRAM_1R is 
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


architecture rtl of pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_11_ROM_1P_LUTRAM_1R is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0000011", 1 => "0000100", 2 => "1110001", 3 => "1111110", 
    4 => "0000011", 5 => "1101111", 6 => "0001101", 7 => "1111101", 
    8 => "0010001", 9 => "1111110", 10 => "1111001", 11 => "1111010", 
    12 => "0000011", 13 => "1111110", 14 => "0000011", 15 => "0000101", 
    16 => "0000000", 17 => "0000011", 18 => "0000000", 19 => "0011000", 
    20 => "1011100", 21 => "0010000", 22 => "0000000", 23 to 25=> "1111011", 
    26 => "1111101", 27 => "1111100", 28 => "1111011", 29 => "0000011", 
    30 => "0001101", 31 => "0000101", 32 => "0000000", 33 => "1111101", 
    34 => "0000010", 35 => "0001110", 36 => "1110001", 37 to 38=> "1111000", 
    39 => "1111010", 40 => "1101011", 41 => "1111011", 42 => "1101101", 
    43 => "1111101", 44 => "0000101", 45 to 46=> "1110000", 47 => "0001000", 
    48 => "0000011", 49 => "0000010", 50 => "1100011", 51 => "1100101", 
    52 => "0100111", 53 => "1111100", 54 => "1101100", 55 => "0000011", 
    56 => "1111011", 57 => "0000001", 58 => "1011000", 59 => "0000001", 
    60 => "0000010", 61 => "1111001", 62 => "0000000", 63 => "0000011", 
    64 to 65=> "0000000", 66 to 67=> "0000010", 68 => "1110110", 69 => "1101010", 
    70 => "0000110", 71 => "1111111", 72 => "1111000", 73 => "0000010", 
    74 => "0010011", 75 => "0000011", 76 => "1111100", 77 => "0001011", 
    78 => "0000001", 79 => "1110111", 80 => "1111101", 81 => "1111000", 
    82 => "0000010", 83 => "1111000", 84 => "1101111", 85 => "1111101", 
    86 => "0000101", 87 => "1111011", 88 => "1010000", 89 => "1111100", 
    90 => "0000001", 91 => "1111110", 92 => "0000001", 93 => "1001100", 
    94 => "1110001", 95 => "1101011" );

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

