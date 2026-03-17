// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "block" *) module pb_predict_pb_predict_Pipeline_REG_H0_MAC_p_ZL19reg_head_0_weight_q_4_ROM_2P_BRAM_1R (
address0, ce0, q0, reset,clk);

parameter DataWidth = 8;
parameter AddressWidth = 13;
parameter AddressRange = 8192;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

(* ram_style = "block" *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./pb_predict_pb_predict_Pipeline_REG_H0_MAC_p_ZL19reg_head_0_weight_q_4_ROM_2P_BRAM_1R.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

