set moduleName pb_predict_Pipeline_L1_MAC
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {pb_predict_Pipeline_L1_MAC}
set C_modelType { void 0 }
set C_modelArgList {
	{ i_3 int 9 regular  }
	{ h_a float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_1 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_2 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_3 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_4 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_5 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_6 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_7 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_8 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_9 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_10 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_11 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_12 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_13 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_14 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ h_a_15 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ s0_out float 32 regular {pointer 1}  }
	{ s1_out float 32 regular {pointer 1}  }
	{ s2_out float 32 regular {pointer 1}  }
	{ s3_out float 32 regular {pointer 1}  }
	{ s4_out float 32 regular {pointer 1}  }
	{ s5_out float 32 regular {pointer 1}  }
	{ s6_out float 32 regular {pointer 1}  }
	{ s7_out float 32 regular {pointer 1}  }
	{ s8_out float 32 regular {pointer 1}  }
	{ s9_out float 32 regular {pointer 1}  }
	{ s10_out float 32 regular {pointer 1}  }
	{ s11_out float 32 regular {pointer 1}  }
	{ s12_out float 32 regular {pointer 1}  }
	{ s13_out float 32 regular {pointer 1}  }
	{ s14_out float 32 regular {pointer 1}  }
	{ s15_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "i_3", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "h_a", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s0_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 135
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ i_3 sc_in sc_lv 9 signal 0 } 
	{ h_a_address0 sc_out sc_lv 5 signal 1 } 
	{ h_a_ce0 sc_out sc_logic 1 signal 1 } 
	{ h_a_q0 sc_in sc_lv 32 signal 1 } 
	{ h_a_1_address0 sc_out sc_lv 5 signal 2 } 
	{ h_a_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ h_a_1_q0 sc_in sc_lv 32 signal 2 } 
	{ h_a_2_address0 sc_out sc_lv 5 signal 3 } 
	{ h_a_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ h_a_2_q0 sc_in sc_lv 32 signal 3 } 
	{ h_a_3_address0 sc_out sc_lv 5 signal 4 } 
	{ h_a_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ h_a_3_q0 sc_in sc_lv 32 signal 4 } 
	{ h_a_4_address0 sc_out sc_lv 5 signal 5 } 
	{ h_a_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ h_a_4_q0 sc_in sc_lv 32 signal 5 } 
	{ h_a_5_address0 sc_out sc_lv 5 signal 6 } 
	{ h_a_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ h_a_5_q0 sc_in sc_lv 32 signal 6 } 
	{ h_a_6_address0 sc_out sc_lv 5 signal 7 } 
	{ h_a_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ h_a_6_q0 sc_in sc_lv 32 signal 7 } 
	{ h_a_7_address0 sc_out sc_lv 5 signal 8 } 
	{ h_a_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ h_a_7_q0 sc_in sc_lv 32 signal 8 } 
	{ h_a_8_address0 sc_out sc_lv 5 signal 9 } 
	{ h_a_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ h_a_8_q0 sc_in sc_lv 32 signal 9 } 
	{ h_a_9_address0 sc_out sc_lv 5 signal 10 } 
	{ h_a_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ h_a_9_q0 sc_in sc_lv 32 signal 10 } 
	{ h_a_10_address0 sc_out sc_lv 5 signal 11 } 
	{ h_a_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ h_a_10_q0 sc_in sc_lv 32 signal 11 } 
	{ h_a_11_address0 sc_out sc_lv 5 signal 12 } 
	{ h_a_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ h_a_11_q0 sc_in sc_lv 32 signal 12 } 
	{ h_a_12_address0 sc_out sc_lv 5 signal 13 } 
	{ h_a_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ h_a_12_q0 sc_in sc_lv 32 signal 13 } 
	{ h_a_13_address0 sc_out sc_lv 5 signal 14 } 
	{ h_a_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ h_a_13_q0 sc_in sc_lv 32 signal 14 } 
	{ h_a_14_address0 sc_out sc_lv 5 signal 15 } 
	{ h_a_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ h_a_14_q0 sc_in sc_lv 32 signal 15 } 
	{ h_a_15_address0 sc_out sc_lv 5 signal 16 } 
	{ h_a_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ h_a_15_q0 sc_in sc_lv 32 signal 16 } 
	{ s0_out sc_out sc_lv 32 signal 17 } 
	{ s0_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ s1_out sc_out sc_lv 32 signal 18 } 
	{ s1_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ s2_out sc_out sc_lv 32 signal 19 } 
	{ s2_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ s3_out sc_out sc_lv 32 signal 20 } 
	{ s3_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ s4_out sc_out sc_lv 32 signal 21 } 
	{ s4_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ s5_out sc_out sc_lv 32 signal 22 } 
	{ s5_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ s6_out sc_out sc_lv 32 signal 23 } 
	{ s6_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ s7_out sc_out sc_lv 32 signal 24 } 
	{ s7_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ s8_out sc_out sc_lv 32 signal 25 } 
	{ s8_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ s9_out sc_out sc_lv 32 signal 26 } 
	{ s9_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ s10_out sc_out sc_lv 32 signal 27 } 
	{ s10_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ s11_out sc_out sc_lv 32 signal 28 } 
	{ s11_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ s12_out sc_out sc_lv 32 signal 29 } 
	{ s12_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ s13_out sc_out sc_lv 32 signal 30 } 
	{ s13_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ s14_out sc_out sc_lv 32 signal 31 } 
	{ s14_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ s15_out sc_out sc_lv 32 signal 32 } 
	{ s15_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ grp_fu_2052_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2052_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2052_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_2052_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2052_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4258_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4258_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4258_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_4258_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4258_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4262_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4262_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4262_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_4262_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4262_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4266_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4266_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4266_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_4266_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4266_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2057_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2057_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2057_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2057_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4270_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4270_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4270_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4270_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4274_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4274_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4274_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4274_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4278_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4278_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4278_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4278_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4282_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4282_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4282_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4285_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4285_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4285_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4288_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4288_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4288_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_4291_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_4291_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_4291_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "i_3", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "i_3", "role": "default" }} , 
 	{ "name": "h_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a", "role": "address0" }} , 
 	{ "name": "h_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a", "role": "ce0" }} , 
 	{ "name": "h_a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a", "role": "q0" }} , 
 	{ "name": "h_a_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_1", "role": "address0" }} , 
 	{ "name": "h_a_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_1", "role": "ce0" }} , 
 	{ "name": "h_a_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_1", "role": "q0" }} , 
 	{ "name": "h_a_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_2", "role": "address0" }} , 
 	{ "name": "h_a_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_2", "role": "ce0" }} , 
 	{ "name": "h_a_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_2", "role": "q0" }} , 
 	{ "name": "h_a_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_3", "role": "address0" }} , 
 	{ "name": "h_a_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_3", "role": "ce0" }} , 
 	{ "name": "h_a_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_3", "role": "q0" }} , 
 	{ "name": "h_a_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_4", "role": "address0" }} , 
 	{ "name": "h_a_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_4", "role": "ce0" }} , 
 	{ "name": "h_a_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_4", "role": "q0" }} , 
 	{ "name": "h_a_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_5", "role": "address0" }} , 
 	{ "name": "h_a_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_5", "role": "ce0" }} , 
 	{ "name": "h_a_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_5", "role": "q0" }} , 
 	{ "name": "h_a_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_6", "role": "address0" }} , 
 	{ "name": "h_a_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_6", "role": "ce0" }} , 
 	{ "name": "h_a_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_6", "role": "q0" }} , 
 	{ "name": "h_a_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_7", "role": "address0" }} , 
 	{ "name": "h_a_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_7", "role": "ce0" }} , 
 	{ "name": "h_a_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_7", "role": "q0" }} , 
 	{ "name": "h_a_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_8", "role": "address0" }} , 
 	{ "name": "h_a_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_8", "role": "ce0" }} , 
 	{ "name": "h_a_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_8", "role": "q0" }} , 
 	{ "name": "h_a_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_9", "role": "address0" }} , 
 	{ "name": "h_a_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_9", "role": "ce0" }} , 
 	{ "name": "h_a_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_9", "role": "q0" }} , 
 	{ "name": "h_a_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_10", "role": "address0" }} , 
 	{ "name": "h_a_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_10", "role": "ce0" }} , 
 	{ "name": "h_a_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_10", "role": "q0" }} , 
 	{ "name": "h_a_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_11", "role": "address0" }} , 
 	{ "name": "h_a_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_11", "role": "ce0" }} , 
 	{ "name": "h_a_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_11", "role": "q0" }} , 
 	{ "name": "h_a_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_12", "role": "address0" }} , 
 	{ "name": "h_a_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_12", "role": "ce0" }} , 
 	{ "name": "h_a_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_12", "role": "q0" }} , 
 	{ "name": "h_a_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_13", "role": "address0" }} , 
 	{ "name": "h_a_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_13", "role": "ce0" }} , 
 	{ "name": "h_a_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_13", "role": "q0" }} , 
 	{ "name": "h_a_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_14", "role": "address0" }} , 
 	{ "name": "h_a_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_14", "role": "ce0" }} , 
 	{ "name": "h_a_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_14", "role": "q0" }} , 
 	{ "name": "h_a_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_15", "role": "address0" }} , 
 	{ "name": "h_a_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_15", "role": "ce0" }} , 
 	{ "name": "h_a_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_15", "role": "q0" }} , 
 	{ "name": "s0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s0_out", "role": "default" }} , 
 	{ "name": "s0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s0_out", "role": "ap_vld" }} , 
 	{ "name": "s1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s1_out", "role": "default" }} , 
 	{ "name": "s1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s1_out", "role": "ap_vld" }} , 
 	{ "name": "s2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2_out", "role": "default" }} , 
 	{ "name": "s2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s2_out", "role": "ap_vld" }} , 
 	{ "name": "s3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s3_out", "role": "default" }} , 
 	{ "name": "s3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s3_out", "role": "ap_vld" }} , 
 	{ "name": "s4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_out", "role": "default" }} , 
 	{ "name": "s4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s4_out", "role": "ap_vld" }} , 
 	{ "name": "s5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s5_out", "role": "default" }} , 
 	{ "name": "s5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s5_out", "role": "ap_vld" }} , 
 	{ "name": "s6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s6_out", "role": "default" }} , 
 	{ "name": "s6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s6_out", "role": "ap_vld" }} , 
 	{ "name": "s7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s7_out", "role": "default" }} , 
 	{ "name": "s7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s7_out", "role": "ap_vld" }} , 
 	{ "name": "s8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s8_out", "role": "default" }} , 
 	{ "name": "s8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s8_out", "role": "ap_vld" }} , 
 	{ "name": "s9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s9_out", "role": "default" }} , 
 	{ "name": "s9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s9_out", "role": "ap_vld" }} , 
 	{ "name": "s10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s10_out", "role": "default" }} , 
 	{ "name": "s10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s10_out", "role": "ap_vld" }} , 
 	{ "name": "s11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s11_out", "role": "default" }} , 
 	{ "name": "s11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s11_out", "role": "ap_vld" }} , 
 	{ "name": "s12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s12_out", "role": "default" }} , 
 	{ "name": "s12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s12_out", "role": "ap_vld" }} , 
 	{ "name": "s13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s13_out", "role": "default" }} , 
 	{ "name": "s13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s13_out", "role": "ap_vld" }} , 
 	{ "name": "s14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s14_out", "role": "default" }} , 
 	{ "name": "s14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s14_out", "role": "ap_vld" }} , 
 	{ "name": "s15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s15_out", "role": "default" }} , 
 	{ "name": "s15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s15_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_2052_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2052_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2052_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2052_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2052_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2052_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2052_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2052_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2052_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2052_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4258_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4258_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4258_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4258_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4258_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_4258_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4258_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4258_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4258_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4258_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4262_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4262_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4262_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4262_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4262_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_4262_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4262_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4262_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4262_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4262_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4266_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4266_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4266_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4266_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4266_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_4266_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_4266_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4266_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4266_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4266_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2057_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2057_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2057_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2057_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2057_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2057_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2057_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2057_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4270_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4270_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4270_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4270_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4270_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4270_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4270_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4270_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4274_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4274_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4274_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4274_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4274_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4274_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4274_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4274_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4278_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4278_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4278_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4278_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_4278_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4278_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4278_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4278_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4282_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4282_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4282_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4282_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4282_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4282_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4285_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4285_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4285_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4285_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4285_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4285_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4288_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4288_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4288_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4288_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4288_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4288_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_4291_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4291_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_4291_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_4291_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_4291_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4291_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "pb_predict_Pipeline_L1_MAC",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "143", "EstimateLatencyMax" : "143",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_a", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_a_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZL16trunk_1_weight_q_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_1_weight_q_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L1_MAC", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_1_weight_q_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pb_predict_Pipeline_L1_MAC {
		i_3 {Type I LastRead 0 FirstWrite -1}
		h_a {Type I LastRead 4 FirstWrite -1}
		h_a_1 {Type I LastRead 4 FirstWrite -1}
		h_a_2 {Type I LastRead 4 FirstWrite -1}
		h_a_3 {Type I LastRead 4 FirstWrite -1}
		h_a_4 {Type I LastRead 4 FirstWrite -1}
		h_a_5 {Type I LastRead 4 FirstWrite -1}
		h_a_6 {Type I LastRead 4 FirstWrite -1}
		h_a_7 {Type I LastRead 4 FirstWrite -1}
		h_a_8 {Type I LastRead 4 FirstWrite -1}
		h_a_9 {Type I LastRead 4 FirstWrite -1}
		h_a_10 {Type I LastRead 4 FirstWrite -1}
		h_a_11 {Type I LastRead 4 FirstWrite -1}
		h_a_12 {Type I LastRead 8 FirstWrite -1}
		h_a_13 {Type I LastRead 8 FirstWrite -1}
		h_a_14 {Type I LastRead 8 FirstWrite -1}
		h_a_15 {Type I LastRead 8 FirstWrite -1}
		s0_out {Type O LastRead -1 FirstWrite 13}
		s1_out {Type O LastRead -1 FirstWrite 13}
		s2_out {Type O LastRead -1 FirstWrite 13}
		s3_out {Type O LastRead -1 FirstWrite 13}
		s4_out {Type O LastRead -1 FirstWrite 13}
		s5_out {Type O LastRead -1 FirstWrite 13}
		s6_out {Type O LastRead -1 FirstWrite 13}
		s7_out {Type O LastRead -1 FirstWrite 13}
		s8_out {Type O LastRead -1 FirstWrite 13}
		s9_out {Type O LastRead -1 FirstWrite 13}
		s10_out {Type O LastRead -1 FirstWrite 13}
		s11_out {Type O LastRead -1 FirstWrite 13}
		s12_out {Type O LastRead -1 FirstWrite 13}
		s13_out {Type O LastRead -1 FirstWrite 13}
		s14_out {Type O LastRead -1 FirstWrite 13}
		s15_out {Type O LastRead -1 FirstWrite 13}
		p_ZL16trunk_1_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_1_weight_q_15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "143", "Max" : "143"}
	, {"Name" : "Interval", "Min" : "143", "Max" : "143"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	i_3 { ap_none {  { i_3 in_data 0 9 } } }
	h_a { ap_memory {  { h_a_address0 mem_address 1 5 }  { h_a_ce0 mem_ce 1 1 }  { h_a_q0 mem_dout 0 32 } } }
	h_a_1 { ap_memory {  { h_a_1_address0 mem_address 1 5 }  { h_a_1_ce0 mem_ce 1 1 }  { h_a_1_q0 mem_dout 0 32 } } }
	h_a_2 { ap_memory {  { h_a_2_address0 mem_address 1 5 }  { h_a_2_ce0 mem_ce 1 1 }  { h_a_2_q0 mem_dout 0 32 } } }
	h_a_3 { ap_memory {  { h_a_3_address0 mem_address 1 5 }  { h_a_3_ce0 mem_ce 1 1 }  { h_a_3_q0 mem_dout 0 32 } } }
	h_a_4 { ap_memory {  { h_a_4_address0 mem_address 1 5 }  { h_a_4_ce0 mem_ce 1 1 }  { h_a_4_q0 mem_dout 0 32 } } }
	h_a_5 { ap_memory {  { h_a_5_address0 mem_address 1 5 }  { h_a_5_ce0 mem_ce 1 1 }  { h_a_5_q0 mem_dout 0 32 } } }
	h_a_6 { ap_memory {  { h_a_6_address0 mem_address 1 5 }  { h_a_6_ce0 mem_ce 1 1 }  { h_a_6_q0 mem_dout 0 32 } } }
	h_a_7 { ap_memory {  { h_a_7_address0 mem_address 1 5 }  { h_a_7_ce0 mem_ce 1 1 }  { h_a_7_q0 mem_dout 0 32 } } }
	h_a_8 { ap_memory {  { h_a_8_address0 mem_address 1 5 }  { h_a_8_ce0 mem_ce 1 1 }  { h_a_8_q0 mem_dout 0 32 } } }
	h_a_9 { ap_memory {  { h_a_9_address0 mem_address 1 5 }  { h_a_9_ce0 mem_ce 1 1 }  { h_a_9_q0 mem_dout 0 32 } } }
	h_a_10 { ap_memory {  { h_a_10_address0 mem_address 1 5 }  { h_a_10_ce0 mem_ce 1 1 }  { h_a_10_q0 mem_dout 0 32 } } }
	h_a_11 { ap_memory {  { h_a_11_address0 mem_address 1 5 }  { h_a_11_ce0 mem_ce 1 1 }  { h_a_11_q0 mem_dout 0 32 } } }
	h_a_12 { ap_memory {  { h_a_12_address0 mem_address 1 5 }  { h_a_12_ce0 mem_ce 1 1 }  { h_a_12_q0 in_data 0 32 } } }
	h_a_13 { ap_memory {  { h_a_13_address0 mem_address 1 5 }  { h_a_13_ce0 mem_ce 1 1 }  { h_a_13_q0 in_data 0 32 } } }
	h_a_14 { ap_memory {  { h_a_14_address0 mem_address 1 5 }  { h_a_14_ce0 mem_ce 1 1 }  { h_a_14_q0 in_data 0 32 } } }
	h_a_15 { ap_memory {  { h_a_15_address0 mem_address 1 5 }  { h_a_15_ce0 mem_ce 1 1 }  { h_a_15_q0 in_data 0 32 } } }
	s0_out { ap_vld {  { s0_out out_data 1 32 }  { s0_out_ap_vld out_vld 1 1 } } }
	s1_out { ap_vld {  { s1_out out_data 1 32 }  { s1_out_ap_vld out_vld 1 1 } } }
	s2_out { ap_vld {  { s2_out out_data 1 32 }  { s2_out_ap_vld out_vld 1 1 } } }
	s3_out { ap_vld {  { s3_out out_data 1 32 }  { s3_out_ap_vld out_vld 1 1 } } }
	s4_out { ap_vld {  { s4_out out_data 1 32 }  { s4_out_ap_vld out_vld 1 1 } } }
	s5_out { ap_vld {  { s5_out out_data 1 32 }  { s5_out_ap_vld out_vld 1 1 } } }
	s6_out { ap_vld {  { s6_out out_data 1 32 }  { s6_out_ap_vld out_vld 1 1 } } }
	s7_out { ap_vld {  { s7_out out_data 1 32 }  { s7_out_ap_vld out_vld 1 1 } } }
	s8_out { ap_vld {  { s8_out out_data 1 32 }  { s8_out_ap_vld out_vld 1 1 } } }
	s9_out { ap_vld {  { s9_out out_data 1 32 }  { s9_out_ap_vld out_vld 1 1 } } }
	s10_out { ap_vld {  { s10_out out_data 1 32 }  { s10_out_ap_vld out_vld 1 1 } } }
	s11_out { ap_vld {  { s11_out out_data 1 32 }  { s11_out_ap_vld out_vld 1 1 } } }
	s12_out { ap_vld {  { s12_out out_data 1 32 }  { s12_out_ap_vld out_vld 1 1 } } }
	s13_out { ap_vld {  { s13_out out_data 1 32 }  { s13_out_ap_vld out_vld 1 1 } } }
	s14_out { ap_vld {  { s14_out out_data 1 32 }  { s14_out_ap_vld out_vld 1 1 } } }
	s15_out { ap_vld {  { s15_out out_data 1 32 }  { s15_out_ap_vld out_vld 1 1 } } }
}
