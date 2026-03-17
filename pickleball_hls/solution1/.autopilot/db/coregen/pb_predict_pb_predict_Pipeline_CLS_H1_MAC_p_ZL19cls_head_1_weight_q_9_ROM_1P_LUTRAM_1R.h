// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R_H__
#define __pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 96;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R_ram) {
        ram[0] = "0b11111101";
        ram[1] = "0b11111111";
        ram[2] = "0b00000001";
        ram[3] = "0b11100001";
        ram[4] = "0b11001010";
        ram[5] = "0b00000100";
        ram[6] = "0b00000011";
        ram[7] = "0b11111101";
        ram[8] = "0b11100100";
        ram[9] = "0b00000101";
        ram[10] = "0b00010001";
        ram[11] = "0b11110101";
        ram[12] = "0b11111001";
        ram[13] = "0b11111100";
        ram[14] = "0b11111011";
        ram[15] = "0b00000001";
        ram[16] = "0b00000001";
        ram[17] = "0b11111111";
        ram[18] = "0b11111100";
        ram[19] = "0b00000100";
        ram[20] = "0b00000000";
        ram[21] = "0b11111011";
        ram[22] = "0b00000100";
        ram[23] = "0b11100101";
        ram[24] = "0b00000110";
        ram[25] = "0b11111110";
        ram[26] = "0b00000010";
        ram[27] = "0b11110110";
        ram[28] = "0b11101000";
        ram[29] = "0b00000100";
        ram[30] = "0b00000101";
        ram[31] = "0b11111101";
        ram[32] = "0b11111111";
        ram[33] = "0b00000010";
        ram[34] = "0b00000101";
        ram[35] = "0b00000111";
        ram[36] = "0b00000000";
        ram[37] = "0b11110011";
        ram[38] = "0b11111011";
        ram[39] = "0b11111001";
        ram[40] = "0b11100000";
        ram[41] = "0b00000001";
        ram[42] = "0b11101101";
        ram[43] = "0b00010100";
        ram[44] = "0b00010000";
        ram[45] = "0b00001000";
        ram[46] = "0b00000100";
        ram[47] = "0b00000100";
        ram[48] = "0b00000001";
        ram[49] = "0b11111101";
        ram[50] = "0b00000000";
        ram[51] = "0b00000100";
        ram[52] = "0b00001011";
        ram[53] = "0b00000101";
        ram[54] = "0b11111110";
        ram[55] = "0b11001110";
        ram[56] = "0b00001011";
        ram[57] = "0b00000101";
        ram[58] = "0b11110111";
        ram[59] = "0b11101001";
        ram[60] = "0b11111110";
        ram[61] = "0b11111110";
        ram[62] = "0b11111111";
        ram[63] = "0b00000001";
        ram[64] = "0b11111111";
        ram[65] = "0b11111111";
        ram[66] = "0b11111010";
        ram[67] = "0b00000001";
        ram[68] = "0b00000111";
        ram[69] = "0b11110110";
        ram[70] = "0b11111110";
        ram[71] = "0b00000110";
        ram[72] = "0b11110100";
        ram[73] = "0b00000010";
        ram[74] = "0b10011100";
        ram[75] = "0b11100111";
        ram[76] = "0b11101110";
        ram[77] = "0b11111100";
        ram[78] = "0b11101001";
        ram[79] = "0b11111110";
        ram[80] = "0b11111111";
        ram[81] = "0b11111111";
        ram[82] = "0b11111110";
        ram[83] = "0b11001011";
        ram[84] = "0b11111101";
        ram[85] = "0b11110101";
        ram[86] = "0b11111001";
        ram[87] = "0b00000101";
        ram[88] = "0b11101011";
        ram[89] = "0b00000010";
        ram[90] = "0b11101011";
        ram[91] = "0b00001101";
        ram[92] = "0b00000010";
        ram[93] = "0b11101101";
        ram[94] = "0b11110101";
        ram[95] = "0b11111101";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R_ram* meminst;


SC_CTOR(pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R) {
meminst = new pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R_ram("pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~pb_predict_pb_predict_Pipeline_CLS_H1_MAC_p_ZL19cls_head_1_weight_q_9_ROM_1P_LUTRAM_1R() {
    delete meminst;
}


};//endmodule
#endif
