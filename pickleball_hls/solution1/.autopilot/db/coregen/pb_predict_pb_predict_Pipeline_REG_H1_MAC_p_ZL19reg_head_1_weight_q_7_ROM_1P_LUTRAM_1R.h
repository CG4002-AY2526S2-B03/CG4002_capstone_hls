// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R_H__
#define __pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
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


   SC_CTOR(pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R_ram) {
        ram[0] = "0b0000010";
        ram[1] = "0b0000101";
        ram[2] = "0b1110010";
        ram[3] = "0b0001010";
        ram[4] = "0b0000010";
        ram[5] = "0b0000110";
        ram[6] = "0b1101010";
        ram[7] = "0b0001100";
        ram[8] = "0b1111110";
        ram[9] = "0b0001010";
        ram[10] = "0b0000011";
        ram[11] = "0b1110111";
        ram[12] = "0b0000000";
        ram[13] = "0b0000110";
        ram[14] = "0b0000110";
        ram[15] = "0b0000010";
        ram[16] = "0b1111100";
        ram[17] = "0b1111000";
        ram[18] = "0b0000000";
        ram[19] = "0b1001100";
        ram[20] = "0b1100001";
        ram[21] = "0b0010001";
        ram[22] = "0b0000001";
        ram[23] = "0b1111111";
        ram[24] = "0b1111000";
        ram[25] = "0b1111000";
        ram[26] = "0b1111100";
        ram[27] = "0b1110110";
        ram[28] = "0b0000101";
        ram[29] = "0b0000011";
        ram[30] = "0b0000011";
        ram[31] = "0b1110111";
        ram[32] = "0b0000000";
        ram[33] = "0b0000000";
        ram[34] = "0b0000101";
        ram[35] = "0b0000000";
        ram[36] = "0b0000000";
        ram[37] = "0b0000000";
        ram[38] = "0b1111100";
        ram[39] = "0b0000001";
        ram[40] = "0b1111100";
        ram[41] = "0b0000000";
        ram[42] = "0b1111111";
        for (unsigned i = 43; i < 48 ; i = i + 1) {
            ram[i] = "0b0000000";
        }
        ram[48] = "0b0101101";
        ram[49] = "0b1110111";
        ram[50] = "0b0000000";
        ram[51] = "0b1111011";
        ram[52] = "0b1111100";
        ram[53] = "0b0001011";
        ram[54] = "0b1111000";
        ram[55] = "0b1110110";
        ram[56] = "0b0001011";
        ram[57] = "0b0001111";
        ram[58] = "0b1111100";
        ram[59] = "0b1100101";
        ram[60] = "0b1110000";
        ram[61] = "0b0001010";
        ram[62] = "0b1111111";
        ram[63] = "0b0001110";
        ram[64] = "0b1010111";
        ram[65] = "0b0010011";
        ram[66] = "0b0000000";
        ram[67] = "0b0011101";
        ram[68] = "0b1111011";
        ram[69] = "0b1111110";
        ram[70] = "0b0001111";
        ram[71] = "0b1101110";
        ram[72] = "0b0001011";
        ram[73] = "0b1111111";
        ram[74] = "0b0000111";
        ram[75] = "0b0101111";
        ram[76] = "0b0100000";
        ram[77] = "0b0010101";
        ram[78] = "0b0000000";
        ram[79] = "0b1011100";
        ram[80] = "0b1111011";
        ram[81] = "0b0011010";
        ram[82] = "0b0001001";
        ram[83] = "0b1111011";
        ram[84] = "0b1111101";
        ram[85] = "0b0000100";
        ram[86] = "0b1111010";
        ram[87] = "0b0001011";
        ram[88] = "0b1111011";
        ram[89] = "0b1111001";
        ram[90] = "0b0000000";
        ram[91] = "0b0100010";
        ram[92] = "0b0011010";
        ram[93] = "0b0000001";
        ram[94] = "0b1111110";
        ram[95] = "0b0001001";


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


SC_MODULE(pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R_ram* meminst;


SC_CTOR(pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R) {
meminst = new pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R_ram("pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~pb_predict_pb_predict_Pipeline_REG_H1_MAC_p_ZL19reg_head_1_weight_q_7_ROM_1P_LUTRAM_1R() {
    delete meminst;
}


};//endmodule
#endif
