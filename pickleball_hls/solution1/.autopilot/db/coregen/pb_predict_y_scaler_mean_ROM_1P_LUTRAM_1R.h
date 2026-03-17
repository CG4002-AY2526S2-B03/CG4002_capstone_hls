// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R_H__
#define __pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 6;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R_ram) {
        ram[0] = "0b00111011111111100111101000101110";
        ram[1] = "0b00111111011011000011111011000011";
        ram[2] = "0b01000000110000000000000000000000";
        ram[3] = "0b10111100110001101001101110100110";
        ram[4] = "0b01000000010110101001100101000000";
        ram[5] = "0b11000000111101101011100101101101";


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


SC_MODULE(pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 6;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R_ram* meminst;


SC_CTOR(pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R) {
meminst = new pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R_ram("pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~pb_predict_y_scaler_mean_ROM_1P_LUTRAM_1R() {
    delete meminst;
}


};//endmodule
#endif
