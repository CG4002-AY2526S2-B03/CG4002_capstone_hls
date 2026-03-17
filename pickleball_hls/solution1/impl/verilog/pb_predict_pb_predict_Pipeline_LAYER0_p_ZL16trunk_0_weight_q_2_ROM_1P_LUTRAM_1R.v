// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
(* rom_style = "distributed" *) module pb_predict_pb_predict_Pipeline_LAYER0_p_ZL16trunk_0_weight_q_2_ROM_1P_LUTRAM_1R (
address0, ce0, q0, reset,clk);

parameter DataWidth = 8;
parameter AddressWidth = 9;
parameter AddressRange = 512;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

(* ram_style = "distributed" *)reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./pb_predict_pb_predict_Pipeline_LAYER0_p_ZL16trunk_0_weight_q_2_ROM_1P_LUTRAM_1R.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

