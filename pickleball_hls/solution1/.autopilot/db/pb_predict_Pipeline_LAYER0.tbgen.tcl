set moduleName pb_predict_Pipeline_LAYER0
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
set C_modelName {pb_predict_Pipeline_LAYER0}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_scaled_reload float 32 regular  }
	{ input_scaled_1_reload float 32 regular  }
	{ input_scaled_2_reload float 32 regular  }
	{ input_scaled_3_reload float 32 regular  }
	{ input_scaled_4_reload float 32 regular  }
	{ input_scaled_5_reload float 32 regular  }
	{ h_a float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_1 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_2 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_3 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_4 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_5 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_6 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_7 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_8 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_9 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_10 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_11 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_12 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_13 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_14 float 32 regular {array 32 { 0 3 } 0 1 }  }
	{ h_a_15 float 32 regular {array 32 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_scaled_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_scaled_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_scaled_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_scaled_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_scaled_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_scaled_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "h_a", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_a_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 134
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_scaled_reload sc_in sc_lv 32 signal 0 } 
	{ input_scaled_1_reload sc_in sc_lv 32 signal 1 } 
	{ input_scaled_2_reload sc_in sc_lv 32 signal 2 } 
	{ input_scaled_3_reload sc_in sc_lv 32 signal 3 } 
	{ input_scaled_4_reload sc_in sc_lv 32 signal 4 } 
	{ input_scaled_5_reload sc_in sc_lv 32 signal 5 } 
	{ h_a_address0 sc_out sc_lv 5 signal 6 } 
	{ h_a_ce0 sc_out sc_logic 1 signal 6 } 
	{ h_a_we0 sc_out sc_logic 1 signal 6 } 
	{ h_a_d0 sc_out sc_lv 32 signal 6 } 
	{ h_a_1_address0 sc_out sc_lv 5 signal 7 } 
	{ h_a_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ h_a_1_we0 sc_out sc_logic 1 signal 7 } 
	{ h_a_1_d0 sc_out sc_lv 32 signal 7 } 
	{ h_a_2_address0 sc_out sc_lv 5 signal 8 } 
	{ h_a_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ h_a_2_we0 sc_out sc_logic 1 signal 8 } 
	{ h_a_2_d0 sc_out sc_lv 32 signal 8 } 
	{ h_a_3_address0 sc_out sc_lv 5 signal 9 } 
	{ h_a_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ h_a_3_we0 sc_out sc_logic 1 signal 9 } 
	{ h_a_3_d0 sc_out sc_lv 32 signal 9 } 
	{ h_a_4_address0 sc_out sc_lv 5 signal 10 } 
	{ h_a_4_ce0 sc_out sc_logic 1 signal 10 } 
	{ h_a_4_we0 sc_out sc_logic 1 signal 10 } 
	{ h_a_4_d0 sc_out sc_lv 32 signal 10 } 
	{ h_a_5_address0 sc_out sc_lv 5 signal 11 } 
	{ h_a_5_ce0 sc_out sc_logic 1 signal 11 } 
	{ h_a_5_we0 sc_out sc_logic 1 signal 11 } 
	{ h_a_5_d0 sc_out sc_lv 32 signal 11 } 
	{ h_a_6_address0 sc_out sc_lv 5 signal 12 } 
	{ h_a_6_ce0 sc_out sc_logic 1 signal 12 } 
	{ h_a_6_we0 sc_out sc_logic 1 signal 12 } 
	{ h_a_6_d0 sc_out sc_lv 32 signal 12 } 
	{ h_a_7_address0 sc_out sc_lv 5 signal 13 } 
	{ h_a_7_ce0 sc_out sc_logic 1 signal 13 } 
	{ h_a_7_we0 sc_out sc_logic 1 signal 13 } 
	{ h_a_7_d0 sc_out sc_lv 32 signal 13 } 
	{ h_a_8_address0 sc_out sc_lv 5 signal 14 } 
	{ h_a_8_ce0 sc_out sc_logic 1 signal 14 } 
	{ h_a_8_we0 sc_out sc_logic 1 signal 14 } 
	{ h_a_8_d0 sc_out sc_lv 32 signal 14 } 
	{ h_a_9_address0 sc_out sc_lv 5 signal 15 } 
	{ h_a_9_ce0 sc_out sc_logic 1 signal 15 } 
	{ h_a_9_we0 sc_out sc_logic 1 signal 15 } 
	{ h_a_9_d0 sc_out sc_lv 32 signal 15 } 
	{ h_a_10_address0 sc_out sc_lv 5 signal 16 } 
	{ h_a_10_ce0 sc_out sc_logic 1 signal 16 } 
	{ h_a_10_we0 sc_out sc_logic 1 signal 16 } 
	{ h_a_10_d0 sc_out sc_lv 32 signal 16 } 
	{ h_a_11_address0 sc_out sc_lv 5 signal 17 } 
	{ h_a_11_ce0 sc_out sc_logic 1 signal 17 } 
	{ h_a_11_we0 sc_out sc_logic 1 signal 17 } 
	{ h_a_11_d0 sc_out sc_lv 32 signal 17 } 
	{ h_a_12_address0 sc_out sc_lv 5 signal 18 } 
	{ h_a_12_ce0 sc_out sc_logic 1 signal 18 } 
	{ h_a_12_we0 sc_out sc_logic 1 signal 18 } 
	{ h_a_12_d0 sc_out sc_lv 32 signal 18 } 
	{ h_a_13_address0 sc_out sc_lv 5 signal 19 } 
	{ h_a_13_ce0 sc_out sc_logic 1 signal 19 } 
	{ h_a_13_we0 sc_out sc_logic 1 signal 19 } 
	{ h_a_13_d0 sc_out sc_lv 32 signal 19 } 
	{ h_a_14_address0 sc_out sc_lv 5 signal 20 } 
	{ h_a_14_ce0 sc_out sc_logic 1 signal 20 } 
	{ h_a_14_we0 sc_out sc_logic 1 signal 20 } 
	{ h_a_14_d0 sc_out sc_lv 32 signal 20 } 
	{ h_a_15_address0 sc_out sc_lv 5 signal 21 } 
	{ h_a_15_ce0 sc_out sc_logic 1 signal 21 } 
	{ h_a_15_we0 sc_out sc_logic 1 signal 21 } 
	{ h_a_15_d0 sc_out sc_lv 32 signal 21 } 
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
	{ grp_fu_2067_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2067_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2067_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_2067_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_2067_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2072_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2072_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2072_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_2072_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_2072_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_scaled_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_reload", "role": "default" }} , 
 	{ "name": "input_scaled_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_1_reload", "role": "default" }} , 
 	{ "name": "input_scaled_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_2_reload", "role": "default" }} , 
 	{ "name": "input_scaled_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_3_reload", "role": "default" }} , 
 	{ "name": "input_scaled_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_4_reload", "role": "default" }} , 
 	{ "name": "input_scaled_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_5_reload", "role": "default" }} , 
 	{ "name": "h_a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a", "role": "address0" }} , 
 	{ "name": "h_a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a", "role": "ce0" }} , 
 	{ "name": "h_a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a", "role": "we0" }} , 
 	{ "name": "h_a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a", "role": "d0" }} , 
 	{ "name": "h_a_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_1", "role": "address0" }} , 
 	{ "name": "h_a_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_1", "role": "ce0" }} , 
 	{ "name": "h_a_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_1", "role": "we0" }} , 
 	{ "name": "h_a_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_1", "role": "d0" }} , 
 	{ "name": "h_a_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_2", "role": "address0" }} , 
 	{ "name": "h_a_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_2", "role": "ce0" }} , 
 	{ "name": "h_a_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_2", "role": "we0" }} , 
 	{ "name": "h_a_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_2", "role": "d0" }} , 
 	{ "name": "h_a_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_3", "role": "address0" }} , 
 	{ "name": "h_a_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_3", "role": "ce0" }} , 
 	{ "name": "h_a_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_3", "role": "we0" }} , 
 	{ "name": "h_a_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_3", "role": "d0" }} , 
 	{ "name": "h_a_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_4", "role": "address0" }} , 
 	{ "name": "h_a_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_4", "role": "ce0" }} , 
 	{ "name": "h_a_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_4", "role": "we0" }} , 
 	{ "name": "h_a_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_4", "role": "d0" }} , 
 	{ "name": "h_a_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_5", "role": "address0" }} , 
 	{ "name": "h_a_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_5", "role": "ce0" }} , 
 	{ "name": "h_a_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_5", "role": "we0" }} , 
 	{ "name": "h_a_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_5", "role": "d0" }} , 
 	{ "name": "h_a_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_6", "role": "address0" }} , 
 	{ "name": "h_a_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_6", "role": "ce0" }} , 
 	{ "name": "h_a_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_6", "role": "we0" }} , 
 	{ "name": "h_a_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_6", "role": "d0" }} , 
 	{ "name": "h_a_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_7", "role": "address0" }} , 
 	{ "name": "h_a_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_7", "role": "ce0" }} , 
 	{ "name": "h_a_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_7", "role": "we0" }} , 
 	{ "name": "h_a_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_7", "role": "d0" }} , 
 	{ "name": "h_a_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_8", "role": "address0" }} , 
 	{ "name": "h_a_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_8", "role": "ce0" }} , 
 	{ "name": "h_a_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_8", "role": "we0" }} , 
 	{ "name": "h_a_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_8", "role": "d0" }} , 
 	{ "name": "h_a_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_9", "role": "address0" }} , 
 	{ "name": "h_a_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_9", "role": "ce0" }} , 
 	{ "name": "h_a_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_9", "role": "we0" }} , 
 	{ "name": "h_a_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_9", "role": "d0" }} , 
 	{ "name": "h_a_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_10", "role": "address0" }} , 
 	{ "name": "h_a_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_10", "role": "ce0" }} , 
 	{ "name": "h_a_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_10", "role": "we0" }} , 
 	{ "name": "h_a_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_10", "role": "d0" }} , 
 	{ "name": "h_a_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_11", "role": "address0" }} , 
 	{ "name": "h_a_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_11", "role": "ce0" }} , 
 	{ "name": "h_a_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_11", "role": "we0" }} , 
 	{ "name": "h_a_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_11", "role": "d0" }} , 
 	{ "name": "h_a_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_12", "role": "address0" }} , 
 	{ "name": "h_a_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_12", "role": "ce0" }} , 
 	{ "name": "h_a_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_12", "role": "we0" }} , 
 	{ "name": "h_a_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_12", "role": "d0" }} , 
 	{ "name": "h_a_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_13", "role": "address0" }} , 
 	{ "name": "h_a_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_13", "role": "ce0" }} , 
 	{ "name": "h_a_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_13", "role": "we0" }} , 
 	{ "name": "h_a_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_13", "role": "d0" }} , 
 	{ "name": "h_a_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_14", "role": "address0" }} , 
 	{ "name": "h_a_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_14", "role": "ce0" }} , 
 	{ "name": "h_a_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_14", "role": "we0" }} , 
 	{ "name": "h_a_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_14", "role": "d0" }} , 
 	{ "name": "h_a_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h_a_15", "role": "address0" }} , 
 	{ "name": "h_a_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_15", "role": "ce0" }} , 
 	{ "name": "h_a_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_a_15", "role": "we0" }} , 
 	{ "name": "h_a_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_a_15", "role": "d0" }} , 
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
 	{ "name": "grp_fu_4291_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_4291_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2067_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2067_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2067_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2067_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2067_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_2067_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2067_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2067_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2067_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2067_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2072_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2072_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2072_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2072_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2072_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_2072_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2072_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2072_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2072_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2072_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "pb_predict_Pipeline_LAYER0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "563", "EstimateLatencyMax" : "563",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_scaled_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_scaled_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_scaled_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_scaled_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_scaled_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_scaled_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "h_a_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_ZL16trunk_0_weight_q_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_0_weight_q_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_0_weight_q_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_0_weight_q_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_0_weight_q_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL16trunk_0_weight_q_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunk_0_bias", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "LAYER0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter50", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter50", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_0_weight_q_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_0_weight_q_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_0_weight_q_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_0_weight_q_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_0_weight_q_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZL16trunk_0_weight_q_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trunk_0_bias_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U34", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U35", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U36", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U41", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U42", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U43", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_4_no_dsp_1_U48", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_4_no_dsp_1_U49", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pb_predict_Pipeline_LAYER0 {
		input_scaled_reload {Type I LastRead 0 FirstWrite -1}
		input_scaled_1_reload {Type I LastRead 0 FirstWrite -1}
		input_scaled_2_reload {Type I LastRead 0 FirstWrite -1}
		input_scaled_3_reload {Type I LastRead 0 FirstWrite -1}
		input_scaled_4_reload {Type I LastRead 0 FirstWrite -1}
		input_scaled_5_reload {Type I LastRead 0 FirstWrite -1}
		h_a {Type O LastRead -1 FirstWrite 50}
		h_a_1 {Type O LastRead -1 FirstWrite 50}
		h_a_2 {Type O LastRead -1 FirstWrite 50}
		h_a_3 {Type O LastRead -1 FirstWrite 50}
		h_a_4 {Type O LastRead -1 FirstWrite 50}
		h_a_5 {Type O LastRead -1 FirstWrite 50}
		h_a_6 {Type O LastRead -1 FirstWrite 50}
		h_a_7 {Type O LastRead -1 FirstWrite 50}
		h_a_8 {Type O LastRead -1 FirstWrite 50}
		h_a_9 {Type O LastRead -1 FirstWrite 50}
		h_a_10 {Type O LastRead -1 FirstWrite 50}
		h_a_11 {Type O LastRead -1 FirstWrite 50}
		h_a_12 {Type O LastRead -1 FirstWrite 50}
		h_a_13 {Type O LastRead -1 FirstWrite 50}
		h_a_14 {Type O LastRead -1 FirstWrite 50}
		h_a_15 {Type O LastRead -1 FirstWrite 50}
		p_ZL16trunk_0_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		trunk_0_bias {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "563", "Max" : "563"}
	, {"Name" : "Interval", "Min" : "563", "Max" : "563"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_scaled_reload { ap_none {  { input_scaled_reload in_data 0 32 } } }
	input_scaled_1_reload { ap_none {  { input_scaled_1_reload in_data 0 32 } } }
	input_scaled_2_reload { ap_none {  { input_scaled_2_reload in_data 0 32 } } }
	input_scaled_3_reload { ap_none {  { input_scaled_3_reload in_data 0 32 } } }
	input_scaled_4_reload { ap_none {  { input_scaled_4_reload in_data 0 32 } } }
	input_scaled_5_reload { ap_none {  { input_scaled_5_reload in_data 0 32 } } }
	h_a { ap_memory {  { h_a_address0 mem_address 1 5 }  { h_a_ce0 mem_ce 1 1 }  { h_a_we0 mem_we 1 1 }  { h_a_d0 mem_din 1 32 } } }
	h_a_1 { ap_memory {  { h_a_1_address0 mem_address 1 5 }  { h_a_1_ce0 mem_ce 1 1 }  { h_a_1_we0 mem_we 1 1 }  { h_a_1_d0 mem_din 1 32 } } }
	h_a_2 { ap_memory {  { h_a_2_address0 mem_address 1 5 }  { h_a_2_ce0 mem_ce 1 1 }  { h_a_2_we0 mem_we 1 1 }  { h_a_2_d0 mem_din 1 32 } } }
	h_a_3 { ap_memory {  { h_a_3_address0 mem_address 1 5 }  { h_a_3_ce0 mem_ce 1 1 }  { h_a_3_we0 mem_we 1 1 }  { h_a_3_d0 mem_din 1 32 } } }
	h_a_4 { ap_memory {  { h_a_4_address0 mem_address 1 5 }  { h_a_4_ce0 mem_ce 1 1 }  { h_a_4_we0 mem_we 1 1 }  { h_a_4_d0 mem_din 1 32 } } }
	h_a_5 { ap_memory {  { h_a_5_address0 mem_address 1 5 }  { h_a_5_ce0 mem_ce 1 1 }  { h_a_5_we0 mem_we 1 1 }  { h_a_5_d0 mem_din 1 32 } } }
	h_a_6 { ap_memory {  { h_a_6_address0 mem_address 1 5 }  { h_a_6_ce0 mem_ce 1 1 }  { h_a_6_we0 mem_we 1 1 }  { h_a_6_d0 mem_din 1 32 } } }
	h_a_7 { ap_memory {  { h_a_7_address0 mem_address 1 5 }  { h_a_7_ce0 mem_ce 1 1 }  { h_a_7_we0 mem_we 1 1 }  { h_a_7_d0 mem_din 1 32 } } }
	h_a_8 { ap_memory {  { h_a_8_address0 mem_address 1 5 }  { h_a_8_ce0 mem_ce 1 1 }  { h_a_8_we0 mem_we 1 1 }  { h_a_8_d0 mem_din 1 32 } } }
	h_a_9 { ap_memory {  { h_a_9_address0 mem_address 1 5 }  { h_a_9_ce0 mem_ce 1 1 }  { h_a_9_we0 mem_we 1 1 }  { h_a_9_d0 mem_din 1 32 } } }
	h_a_10 { ap_memory {  { h_a_10_address0 mem_address 1 5 }  { h_a_10_ce0 mem_ce 1 1 }  { h_a_10_we0 mem_we 1 1 }  { h_a_10_d0 mem_din 1 32 } } }
	h_a_11 { ap_memory {  { h_a_11_address0 mem_address 1 5 }  { h_a_11_ce0 mem_ce 1 1 }  { h_a_11_we0 mem_we 1 1 }  { h_a_11_d0 mem_din 1 32 } } }
	h_a_12 { ap_memory {  { h_a_12_address0 mem_address 1 5 }  { h_a_12_ce0 mem_ce 1 1 }  { h_a_12_we0 mem_we 1 1 }  { h_a_12_d0 mem_din 1 32 } } }
	h_a_13 { ap_memory {  { h_a_13_address0 mem_address 1 5 }  { h_a_13_ce0 mem_ce 1 1 }  { h_a_13_we0 mem_we 1 1 }  { h_a_13_d0 mem_din 1 32 } } }
	h_a_14 { ap_memory {  { h_a_14_address0 mem_address 1 5 }  { h_a_14_ce0 mem_ce 1 1 }  { h_a_14_we0 mem_we 1 1 }  { h_a_14_d0 mem_din 1 32 } } }
	h_a_15 { ap_memory {  { h_a_15_address0 mem_address 1 5 }  { h_a_15_ce0 mem_ce 1 1 }  { h_a_15_we0 mem_we 1 1 }  { h_a_15_d0 mem_din 1 32 } } }
}
