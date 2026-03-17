set moduleName pb_predict
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {pb_predict}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_stream_V_data_V int 32 regular {axi_s 0 volatile  { input_stream Data } }  }
	{ input_stream_V_keep_V int 4 regular {axi_s 0 volatile  { input_stream Keep } }  }
	{ input_stream_V_strb_V int 4 regular {axi_s 0 volatile  { input_stream Strb } }  }
	{ input_stream_V_last_V int 1 regular {axi_s 0 volatile  { input_stream Last } }  }
	{ output_stream_V_data_V int 32 regular {axi_s 1 volatile  { output_stream Data } }  }
	{ output_stream_V_keep_V int 4 regular {axi_s 1 volatile  { output_stream Keep } }  }
	{ output_stream_V_strb_V int 4 regular {axi_s 1 volatile  { output_stream Strb } }  }
	{ output_stream_V_last_V int 1 regular {axi_s 1 volatile  { output_stream Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "output_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ input_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_stream_TVALID sc_in sc_logic 1 invld 3 } 
	{ input_stream_TREADY sc_out sc_logic 1 inacc 3 } 
	{ input_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ input_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ input_stream_TLAST sc_in sc_lv 1 signal 3 } 
	{ output_stream_TDATA sc_out sc_lv 32 signal 4 } 
	{ output_stream_TVALID sc_out sc_logic 1 outvld 7 } 
	{ output_stream_TREADY sc_in sc_logic 1 outacc 7 } 
	{ output_stream_TKEEP sc_out sc_lv 4 signal 5 } 
	{ output_stream_TSTRB sc_out sc_lv 4 signal 6 } 
	{ output_stream_TLAST sc_out sc_lv 1 signal 7 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"pb_predict","role":"start","value":"0","valid_bit":"0"},{"name":"pb_predict","role":"continue","value":"0","valid_bit":"4"},{"name":"pb_predict","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"pb_predict","role":"start","value":"0","valid_bit":"0"},{"name":"pb_predict","role":"done","value":"0","valid_bit":"1"},{"name":"pb_predict","role":"idle","value":"0","valid_bit":"2"},{"name":"pb_predict","role":"ready","value":"0","valid_bit":"3"},{"name":"pb_predict","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "input_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_stream_V_data_V", "role": "default" }} , 
 	{ "name": "input_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_stream_V_last_V", "role": "default" }} , 
 	{ "name": "input_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_stream_V_last_V", "role": "default" }} , 
 	{ "name": "input_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "input_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "input_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream_V_last_V", "role": "default" }} , 
 	{ "name": "output_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_stream_V_data_V", "role": "default" }} , 
 	{ "name": "output_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_stream_V_last_V", "role": "default" }} , 
 	{ "name": "output_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_stream_V_last_V", "role": "default" }} , 
 	{ "name": "output_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "output_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "output_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_stream_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "58", "64", "81", "99", "117", "135", "153", "171", "174", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199"],
		"CDFG" : "pb_predict",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "240227", "EstimateLatencyMax" : "240227",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_pb_predict_Pipeline_READ_INPUT_fu_1593", "Port" : "input_stream_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_stream_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_pb_predict_Pipeline_READ_INPUT_fu_1593", "Port" : "input_stream_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_stream_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_pb_predict_Pipeline_READ_INPUT_fu_1593", "Port" : "input_stream_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "input_stream_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_pb_predict_Pipeline_READ_INPUT_fu_1593", "Port" : "input_stream_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "output_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_pb_predict_Pipeline_WRITE_CLS_fu_2034", "Port" : "output_stream_V_data_V", "Inst_start_state" : "458", "Inst_end_state" : "459"},
					{"ID" : "171", "SubInstance" : "grp_pb_predict_Pipeline_WRITE_REG_fu_2016", "Port" : "output_stream_V_data_V", "Inst_start_state" : "370", "Inst_end_state" : "456"}]},
			{"Name" : "output_stream_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_pb_predict_Pipeline_WRITE_CLS_fu_2034", "Port" : "output_stream_V_keep_V", "Inst_start_state" : "458", "Inst_end_state" : "459"},
					{"ID" : "171", "SubInstance" : "grp_pb_predict_Pipeline_WRITE_REG_fu_2016", "Port" : "output_stream_V_keep_V", "Inst_start_state" : "370", "Inst_end_state" : "456"}]},
			{"Name" : "output_stream_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_pb_predict_Pipeline_WRITE_CLS_fu_2034", "Port" : "output_stream_V_strb_V", "Inst_start_state" : "458", "Inst_end_state" : "459"},
					{"ID" : "171", "SubInstance" : "grp_pb_predict_Pipeline_WRITE_REG_fu_2016", "Port" : "output_stream_V_strb_V", "Inst_start_state" : "370", "Inst_end_state" : "456"}]},
			{"Name" : "output_stream_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_pb_predict_Pipeline_WRITE_CLS_fu_2034", "Port" : "output_stream_V_last_V", "Inst_start_state" : "458", "Inst_end_state" : "459"},
					{"ID" : "171", "SubInstance" : "grp_pb_predict_Pipeline_WRITE_REG_fu_2016", "Port" : "output_stream_V_last_V", "Inst_start_state" : "370", "Inst_end_state" : "456"}]},
			{"Name" : "x_scaler_mean", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_pb_predict_Pipeline_SCALE_INPUT_fu_1611", "Port" : "x_scaler_mean", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "x_scaler_scale", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_pb_predict_Pipeline_SCALE_INPUT_fu_1611", "Port" : "x_scaler_scale", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "p_ZL16trunk_0_weight_q_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_pb_predict_Pipeline_LAYER0_fu_1631", "Port" : "p_ZL16trunk_0_weight_q_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL16trunk_0_weight_q_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_pb_predict_Pipeline_LAYER0_fu_1631", "Port" : "p_ZL16trunk_0_weight_q_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL16trunk_0_weight_q_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_pb_predict_Pipeline_LAYER0_fu_1631", "Port" : "p_ZL16trunk_0_weight_q_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL16trunk_0_weight_q_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_pb_predict_Pipeline_LAYER0_fu_1631", "Port" : "p_ZL16trunk_0_weight_q_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL16trunk_0_weight_q_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_pb_predict_Pipeline_LAYER0_fu_1631", "Port" : "p_ZL16trunk_0_weight_q_4", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL16trunk_0_weight_q_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_pb_predict_Pipeline_LAYER0_fu_1631", "Port" : "p_ZL16trunk_0_weight_q_5", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "trunk_0_bias", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_pb_predict_Pipeline_LAYER0_fu_1631", "Port" : "trunk_0_bias", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_1", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_3", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_5", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_6", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_7", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_8", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_9", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_10", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_11", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_12", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_13", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_14", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_ZL16trunk_1_weight_q_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Port" : "p_ZL16trunk_1_weight_q_15", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "trunk_1_bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_0", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_1", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_2", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_3", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_4", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_5", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_6", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_7", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_8", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_9", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_10", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_11", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_12", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_13", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_14", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "p_ZL19reg_head_0_weight_q_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Port" : "p_ZL19reg_head_0_weight_q_15", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "reg_head_0_bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_0", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_1", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_2", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_3", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_4", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_5", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_6", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_7", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_8", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_9", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_10", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_11", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_12", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_13", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_14", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "p_ZL19reg_head_1_weight_q_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Port" : "p_ZL19reg_head_1_weight_q_15", "Inst_start_state" : "186", "Inst_end_state" : "187"}]},
			{"Name" : "reg_head_1_bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_scaler_scale", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y_scaler_mean", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_0", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_1", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_2", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_3", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_4", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_5", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_6", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_7", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_8", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_9", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_10", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_11", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_12", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_13", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_14", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "p_ZL19cls_head_0_weight_q_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Port" : "p_ZL19cls_head_0_weight_q_15", "Inst_start_state" : "281", "Inst_end_state" : "282"}]},
			{"Name" : "cls_head_0_bias", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_0", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_1", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_2", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_3", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_4", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_5", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_6", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_7", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_8", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_9", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_10", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_11", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_12", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_13", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_14", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "p_ZL19cls_head_1_weight_q_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Port" : "p_ZL19cls_head_1_weight_q_15", "Inst_start_state" : "370", "Inst_end_state" : "371"}]},
			{"Name" : "cls_head_1_bias", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "LAYER1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "460", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state96"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state97"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "REG_HEAD_L0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "460", "FirstState" : "ap_ST_fsm_state97", "LastState" : ["ap_ST_fsm_state185"], "QuitState" : ["ap_ST_fsm_state97"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state186"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "REG_HEAD_L1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "460", "FirstState" : "ap_ST_fsm_state186", "LastState" : ["ap_ST_fsm_state280"], "QuitState" : ["ap_ST_fsm_state186"], "PreState" : ["ap_ST_fsm_state97"], "PostState" : ["ap_ST_fsm_state281"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "CLS_HEAD_L0", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "460", "FirstState" : "ap_ST_fsm_state281", "LastState" : ["ap_ST_fsm_state369"], "QuitState" : ["ap_ST_fsm_state281"], "PreState" : ["ap_ST_fsm_state186"], "PostState" : ["ap_ST_fsm_state370"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "CLS_HEAD_L1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "460", "FirstState" : "ap_ST_fsm_state370", "LastState" : ["ap_ST_fsm_state455"], "QuitState" : ["ap_ST_fsm_state370"], "PreState" : ["ap_ST_fsm_state281"], "PostState" : ["ap_ST_fsm_state456"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.trunk_1_bias_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reg_head_0_bias_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reg_head_1_bias_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_scaler_scale_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_scaler_mean_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cls_head_0_bias_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cls_head_1_bias_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_3_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_4_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_5_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_6_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_7_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_8_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_9_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_10_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_11_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_12_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_13_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_14_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_a_15_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_1_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_2_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_3_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_4_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_5_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_6_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_7_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_8_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_9_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_10_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_11_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_12_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_13_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_14_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.h_b_15_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_1_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_2_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_3_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_4_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_5_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_6_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_7_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_8_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_9_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_10_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_11_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_12_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_13_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_14_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.head_buf_15_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_READ_INPUT_fu_1593", "Parent" : "0", "Child" : ["57"],
		"CDFG" : "pb_predict_Pipeline_READ_INPUT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_stream_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_stream_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_stream_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_stream_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_raw_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_raw_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_raw_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_raw_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_raw_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_raw_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "READ_INPUT", "PipelineType" : "NotSupport"}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_READ_INPUT_fu_1593.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_SCALE_INPUT_fu_1611", "Parent" : "0", "Child" : ["59", "60", "61", "62", "63"],
		"CDFG" : "pb_predict_Pipeline_SCALE_INPUT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_raw_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_raw_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_raw_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_raw_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_raw_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_raw_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_scaled_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_scaled_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_scaled_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_scaled_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_scaled_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "input_scaled_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_scaler_mean", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_scaler_scale", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SCALE_INPUT", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter15", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter15", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_SCALE_INPUT_fu_1611.x_scaler_mean_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_SCALE_INPUT_fu_1611.x_scaler_scale_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_SCALE_INPUT_fu_1611.fdiv_32ns_32ns_32_10_no_dsp_1_U12", "Parent" : "58"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_SCALE_INPUT_fu_1611.mux_63_32_1_1_U13", "Parent" : "58"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_SCALE_INPUT_fu_1611.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631", "Parent" : "0", "Child" : ["65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80"],
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
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.p_ZL16trunk_0_weight_q_0_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.p_ZL16trunk_0_weight_q_1_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.p_ZL16trunk_0_weight_q_2_U", "Parent" : "64"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.p_ZL16trunk_0_weight_q_3_U", "Parent" : "64"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.p_ZL16trunk_0_weight_q_4_U", "Parent" : "64"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.p_ZL16trunk_0_weight_q_5_U", "Parent" : "64"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.trunk_0_bias_U", "Parent" : "64"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.fadd_32ns_32ns_32_5_full_dsp_1_U34", "Parent" : "64"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.fadd_32ns_32ns_32_5_full_dsp_1_U35", "Parent" : "64"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.fadd_32ns_32ns_32_5_full_dsp_1_U36", "Parent" : "64"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.fmul_32ns_32ns_32_4_max_dsp_1_U41", "Parent" : "64"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.fmul_32ns_32ns_32_4_max_dsp_1_U42", "Parent" : "64"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.fmul_32ns_32ns_32_4_max_dsp_1_U43", "Parent" : "64"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.sitofp_32s_32_4_no_dsp_1_U48", "Parent" : "64"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.sitofp_32s_32_4_no_dsp_1_U49", "Parent" : "64"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_LAYER0_fu_1631.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671", "Parent" : "0", "Child" : ["82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98"],
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
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_0_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_1_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_2_U", "Parent" : "81"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_3_U", "Parent" : "81"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_4_U", "Parent" : "81"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_5_U", "Parent" : "81"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_6_U", "Parent" : "81"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_7_U", "Parent" : "81"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_8_U", "Parent" : "81"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_9_U", "Parent" : "81"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_10_U", "Parent" : "81"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_11_U", "Parent" : "81"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_12_U", "Parent" : "81"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_13_U", "Parent" : "81"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_14_U", "Parent" : "81"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.p_ZL16trunk_1_weight_q_15_U", "Parent" : "81"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_L1_MAC_fu_1671.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740", "Parent" : "0", "Child" : ["100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116"],
		"CDFG" : "pb_predict_Pipeline_REG_H0_MAC",
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
			{"Name" : "i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s0_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s1_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s2_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s3_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s4_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s5_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s6_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s7_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s8_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s9_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s10_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s11_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s12_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s13_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s14_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s15_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZL19reg_head_0_weight_q_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_0_weight_q_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "REG_H0_MAC", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_0_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_1_U", "Parent" : "99"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_2_U", "Parent" : "99"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_3_U", "Parent" : "99"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_4_U", "Parent" : "99"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_5_U", "Parent" : "99"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_6_U", "Parent" : "99"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_7_U", "Parent" : "99"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_8_U", "Parent" : "99"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_9_U", "Parent" : "99"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_10_U", "Parent" : "99"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_11_U", "Parent" : "99"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_12_U", "Parent" : "99"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_13_U", "Parent" : "99"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_14_U", "Parent" : "99"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.p_ZL19reg_head_0_weight_q_15_U", "Parent" : "99"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H0_MAC_fu_1740.flow_control_loop_pipe_sequential_init_U", "Parent" : "99"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809", "Parent" : "0", "Child" : ["118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134"],
		"CDFG" : "pb_predict_Pipeline_REG_H1_MAC",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "79", "EstimateLatencyMax" : "79",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "head_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s0_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s3_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s4_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s5_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s6_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s7_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s8_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s9_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s10_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s11_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s12_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s13_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s14_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s15_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZL19reg_head_1_weight_q_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19reg_head_1_weight_q_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "REG_H1_MAC", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_0_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_1_U", "Parent" : "117"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_2_U", "Parent" : "117"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_3_U", "Parent" : "117"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_4_U", "Parent" : "117"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_5_U", "Parent" : "117"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_6_U", "Parent" : "117"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_7_U", "Parent" : "117"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_8_U", "Parent" : "117"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_9_U", "Parent" : "117"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_10_U", "Parent" : "117"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_11_U", "Parent" : "117"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_12_U", "Parent" : "117"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_13_U", "Parent" : "117"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_14_U", "Parent" : "117"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.p_ZL19reg_head_1_weight_q_15_U", "Parent" : "117"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_REG_H1_MAC_fu_1809.flow_control_loop_pipe_sequential_init_U", "Parent" : "117"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878", "Parent" : "0", "Child" : ["136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152"],
		"CDFG" : "pb_predict_Pipeline_CLS_H0_MAC",
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
			{"Name" : "i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "h_b_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s0_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s1_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s2_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s3_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s4_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s5_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s6_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s7_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s8_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s9_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s10_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s11_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s12_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s13_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s14_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s15_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZL19cls_head_0_weight_q_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_0_weight_q_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "CLS_H0_MAC", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_0_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_1_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_2_U", "Parent" : "135"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_3_U", "Parent" : "135"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_4_U", "Parent" : "135"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_5_U", "Parent" : "135"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_6_U", "Parent" : "135"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_7_U", "Parent" : "135"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_8_U", "Parent" : "135"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_9_U", "Parent" : "135"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_10_U", "Parent" : "135"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_11_U", "Parent" : "135"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_12_U", "Parent" : "135"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_13_U", "Parent" : "135"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_14_U", "Parent" : "135"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.p_ZL19cls_head_0_weight_q_15_U", "Parent" : "135"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H0_MAC_fu_1878.flow_control_loop_pipe_sequential_init_U", "Parent" : "135"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947", "Parent" : "0", "Child" : ["154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170"],
		"CDFG" : "pb_predict_Pipeline_CLS_H1_MAC",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "79", "EstimateLatencyMax" : "79",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "head_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "head_buf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s0_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s1_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s2_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s3_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s4_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s5_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s6_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s7_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s8_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s9_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s10_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s11_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s12_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s13_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s14_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s15_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZL19cls_head_1_weight_q_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_ZL19cls_head_1_weight_q_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "CLS_H1_MAC", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_0_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_1_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_2_U", "Parent" : "153"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_3_U", "Parent" : "153"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_4_U", "Parent" : "153"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_5_U", "Parent" : "153"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_6_U", "Parent" : "153"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_7_U", "Parent" : "153"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_8_U", "Parent" : "153"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_9_U", "Parent" : "153"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_10_U", "Parent" : "153"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_11_U", "Parent" : "153"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_12_U", "Parent" : "153"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_13_U", "Parent" : "153"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_14_U", "Parent" : "153"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.p_ZL19cls_head_1_weight_q_15_U", "Parent" : "153"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_CLS_H1_MAC_fu_1947.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_WRITE_REG_fu_2016", "Parent" : "0", "Child" : ["172", "173"],
		"CDFG" : "pb_predict_Pipeline_WRITE_REG",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_out_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_out_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_out_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_out_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_out_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_stream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_stream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_stream_V_last_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "WRITE_REG", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_WRITE_REG_fu_2016.mux_63_32_1_1_U389", "Parent" : "171"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_WRITE_REG_fu_2016.flow_control_loop_pipe_sequential_init_U", "Parent" : "171"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_WRITE_CLS_fu_2034", "Parent" : "0", "Child" : ["175", "176"],
		"CDFG" : "pb_predict_Pipeline_WRITE_CLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cls_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "cls_out_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "cls_out_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "cls_out_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "cls_out_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "cls_out_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_stream_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_stream_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_stream_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_stream_V_last_V", "Type" : "Axis", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "WRITE_CLS", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_WRITE_CLS_fu_2034.mux_63_32_1_1_U400", "Parent" : "174"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pb_predict_Pipeline_WRITE_CLS_fu_2034.flow_control_loop_pipe_sequential_init_U", "Parent" : "174"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U411", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U412", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U413", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U414", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U415", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U416", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U417", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U418", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U419", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U420", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_4_no_dsp_1_U421", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_4_no_dsp_1_U422", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_4_no_dsp_1_U423", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32s_32_4_no_dsp_1_U424", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_input_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_output_stream_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pb_predict {
		input_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		output_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		x_scaler_mean {Type I LastRead -1 FirstWrite -1}
		x_scaler_scale {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL16trunk_0_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		trunk_0_bias {Type I LastRead -1 FirstWrite -1}
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
		p_ZL16trunk_1_weight_q_15 {Type I LastRead -1 FirstWrite -1}
		trunk_1_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_15 {Type I LastRead -1 FirstWrite -1}
		reg_head_0_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_15 {Type I LastRead -1 FirstWrite -1}
		reg_head_1_bias {Type I LastRead -1 FirstWrite -1}
		y_scaler_scale {Type I LastRead -1 FirstWrite -1}
		y_scaler_mean {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_15 {Type I LastRead -1 FirstWrite -1}
		cls_head_0_bias {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_15 {Type I LastRead -1 FirstWrite -1}
		cls_head_1_bias {Type I LastRead -1 FirstWrite -1}}
	pb_predict_Pipeline_READ_INPUT {
		input_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		input_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		input_raw_5_out {Type O LastRead -1 FirstWrite 0}
		input_raw_4_out {Type O LastRead -1 FirstWrite 0}
		input_raw_3_out {Type O LastRead -1 FirstWrite 0}
		input_raw_2_out {Type O LastRead -1 FirstWrite 0}
		input_raw_1_out {Type O LastRead -1 FirstWrite 0}
		input_raw_out {Type O LastRead -1 FirstWrite 0}}
	pb_predict_Pipeline_SCALE_INPUT {
		input_raw_reload {Type I LastRead 0 FirstWrite -1}
		input_raw_1_reload {Type I LastRead 0 FirstWrite -1}
		input_raw_2_reload {Type I LastRead 0 FirstWrite -1}
		input_raw_3_reload {Type I LastRead 0 FirstWrite -1}
		input_raw_4_reload {Type I LastRead 0 FirstWrite -1}
		input_raw_5_reload {Type I LastRead 0 FirstWrite -1}
		input_scaled_5_out {Type O LastRead -1 FirstWrite 14}
		input_scaled_4_out {Type O LastRead -1 FirstWrite 14}
		input_scaled_3_out {Type O LastRead -1 FirstWrite 14}
		input_scaled_2_out {Type O LastRead -1 FirstWrite 14}
		input_scaled_1_out {Type O LastRead -1 FirstWrite 14}
		input_scaled_out {Type O LastRead -1 FirstWrite 14}
		x_scaler_mean {Type I LastRead -1 FirstWrite -1}
		x_scaler_scale {Type I LastRead -1 FirstWrite -1}}
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
		trunk_0_bias {Type I LastRead -1 FirstWrite -1}}
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
		p_ZL16trunk_1_weight_q_15 {Type I LastRead -1 FirstWrite -1}}
	pb_predict_Pipeline_REG_H0_MAC {
		i_4 {Type I LastRead 0 FirstWrite -1}
		h_b {Type I LastRead 4 FirstWrite -1}
		h_b_1 {Type I LastRead 4 FirstWrite -1}
		h_b_2 {Type I LastRead 4 FirstWrite -1}
		h_b_3 {Type I LastRead 4 FirstWrite -1}
		h_b_4 {Type I LastRead 4 FirstWrite -1}
		h_b_5 {Type I LastRead 4 FirstWrite -1}
		h_b_6 {Type I LastRead 4 FirstWrite -1}
		h_b_7 {Type I LastRead 4 FirstWrite -1}
		h_b_8 {Type I LastRead 4 FirstWrite -1}
		h_b_9 {Type I LastRead 4 FirstWrite -1}
		h_b_10 {Type I LastRead 4 FirstWrite -1}
		h_b_11 {Type I LastRead 4 FirstWrite -1}
		h_b_12 {Type I LastRead 8 FirstWrite -1}
		h_b_13 {Type I LastRead 8 FirstWrite -1}
		h_b_14 {Type I LastRead 8 FirstWrite -1}
		h_b_15 {Type I LastRead 8 FirstWrite -1}
		s0_2_out {Type O LastRead -1 FirstWrite 13}
		s1_2_out {Type O LastRead -1 FirstWrite 13}
		s2_2_out {Type O LastRead -1 FirstWrite 13}
		s3_2_out {Type O LastRead -1 FirstWrite 13}
		s4_2_out {Type O LastRead -1 FirstWrite 13}
		s5_2_out {Type O LastRead -1 FirstWrite 13}
		s6_2_out {Type O LastRead -1 FirstWrite 13}
		s7_2_out {Type O LastRead -1 FirstWrite 13}
		s8_2_out {Type O LastRead -1 FirstWrite 13}
		s9_2_out {Type O LastRead -1 FirstWrite 13}
		s10_2_out {Type O LastRead -1 FirstWrite 13}
		s11_2_out {Type O LastRead -1 FirstWrite 13}
		s12_2_out {Type O LastRead -1 FirstWrite 13}
		s13_2_out {Type O LastRead -1 FirstWrite 13}
		s14_2_out {Type O LastRead -1 FirstWrite 13}
		s15_2_out {Type O LastRead -1 FirstWrite 13}
		p_ZL19reg_head_0_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_0_weight_q_15 {Type I LastRead -1 FirstWrite -1}}
	pb_predict_Pipeline_REG_H1_MAC {
		i_5 {Type I LastRead 0 FirstWrite -1}
		head_buf {Type I LastRead 4 FirstWrite -1}
		head_buf_1 {Type I LastRead 4 FirstWrite -1}
		head_buf_2 {Type I LastRead 4 FirstWrite -1}
		head_buf_3 {Type I LastRead 4 FirstWrite -1}
		head_buf_4 {Type I LastRead 4 FirstWrite -1}
		head_buf_5 {Type I LastRead 4 FirstWrite -1}
		head_buf_6 {Type I LastRead 4 FirstWrite -1}
		head_buf_7 {Type I LastRead 4 FirstWrite -1}
		head_buf_8 {Type I LastRead 4 FirstWrite -1}
		head_buf_9 {Type I LastRead 4 FirstWrite -1}
		head_buf_10 {Type I LastRead 4 FirstWrite -1}
		head_buf_11 {Type I LastRead 4 FirstWrite -1}
		head_buf_12 {Type I LastRead 8 FirstWrite -1}
		head_buf_13 {Type I LastRead 8 FirstWrite -1}
		head_buf_14 {Type I LastRead 8 FirstWrite -1}
		head_buf_15 {Type I LastRead 8 FirstWrite -1}
		s0_4_out {Type O LastRead -1 FirstWrite 13}
		s1_4_out {Type O LastRead -1 FirstWrite 13}
		s2_4_out {Type O LastRead -1 FirstWrite 13}
		s3_4_out {Type O LastRead -1 FirstWrite 13}
		s4_4_out {Type O LastRead -1 FirstWrite 13}
		s5_4_out {Type O LastRead -1 FirstWrite 13}
		s6_4_out {Type O LastRead -1 FirstWrite 13}
		s7_4_out {Type O LastRead -1 FirstWrite 13}
		s8_4_out {Type O LastRead -1 FirstWrite 13}
		s9_4_out {Type O LastRead -1 FirstWrite 13}
		s10_4_out {Type O LastRead -1 FirstWrite 13}
		s11_4_out {Type O LastRead -1 FirstWrite 13}
		s12_4_out {Type O LastRead -1 FirstWrite 13}
		s13_4_out {Type O LastRead -1 FirstWrite 13}
		s14_4_out {Type O LastRead -1 FirstWrite 13}
		s15_4_out {Type O LastRead -1 FirstWrite 13}
		p_ZL19reg_head_1_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL19reg_head_1_weight_q_15 {Type I LastRead -1 FirstWrite -1}}
	pb_predict_Pipeline_CLS_H0_MAC {
		i_6 {Type I LastRead 0 FirstWrite -1}
		h_b {Type I LastRead 4 FirstWrite -1}
		h_b_1 {Type I LastRead 4 FirstWrite -1}
		h_b_2 {Type I LastRead 4 FirstWrite -1}
		h_b_3 {Type I LastRead 4 FirstWrite -1}
		h_b_4 {Type I LastRead 4 FirstWrite -1}
		h_b_5 {Type I LastRead 4 FirstWrite -1}
		h_b_6 {Type I LastRead 4 FirstWrite -1}
		h_b_7 {Type I LastRead 4 FirstWrite -1}
		h_b_8 {Type I LastRead 4 FirstWrite -1}
		h_b_9 {Type I LastRead 4 FirstWrite -1}
		h_b_10 {Type I LastRead 4 FirstWrite -1}
		h_b_11 {Type I LastRead 4 FirstWrite -1}
		h_b_12 {Type I LastRead 8 FirstWrite -1}
		h_b_13 {Type I LastRead 8 FirstWrite -1}
		h_b_14 {Type I LastRead 8 FirstWrite -1}
		h_b_15 {Type I LastRead 8 FirstWrite -1}
		s0_6_out {Type O LastRead -1 FirstWrite 13}
		s1_6_out {Type O LastRead -1 FirstWrite 13}
		s2_6_out {Type O LastRead -1 FirstWrite 13}
		s3_6_out {Type O LastRead -1 FirstWrite 13}
		s4_6_out {Type O LastRead -1 FirstWrite 13}
		s5_6_out {Type O LastRead -1 FirstWrite 13}
		s6_6_out {Type O LastRead -1 FirstWrite 13}
		s7_6_out {Type O LastRead -1 FirstWrite 13}
		s8_6_out {Type O LastRead -1 FirstWrite 13}
		s9_6_out {Type O LastRead -1 FirstWrite 13}
		s10_6_out {Type O LastRead -1 FirstWrite 13}
		s11_6_out {Type O LastRead -1 FirstWrite 13}
		s12_6_out {Type O LastRead -1 FirstWrite 13}
		s13_6_out {Type O LastRead -1 FirstWrite 13}
		s14_6_out {Type O LastRead -1 FirstWrite 13}
		s15_6_out {Type O LastRead -1 FirstWrite 13}
		p_ZL19cls_head_0_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_0_weight_q_15 {Type I LastRead -1 FirstWrite -1}}
	pb_predict_Pipeline_CLS_H1_MAC {
		i_7 {Type I LastRead 0 FirstWrite -1}
		head_buf {Type I LastRead 4 FirstWrite -1}
		head_buf_1 {Type I LastRead 4 FirstWrite -1}
		head_buf_2 {Type I LastRead 4 FirstWrite -1}
		head_buf_3 {Type I LastRead 4 FirstWrite -1}
		head_buf_4 {Type I LastRead 4 FirstWrite -1}
		head_buf_5 {Type I LastRead 4 FirstWrite -1}
		head_buf_6 {Type I LastRead 4 FirstWrite -1}
		head_buf_7 {Type I LastRead 4 FirstWrite -1}
		head_buf_8 {Type I LastRead 4 FirstWrite -1}
		head_buf_9 {Type I LastRead 4 FirstWrite -1}
		head_buf_10 {Type I LastRead 4 FirstWrite -1}
		head_buf_11 {Type I LastRead 4 FirstWrite -1}
		head_buf_12 {Type I LastRead 8 FirstWrite -1}
		head_buf_13 {Type I LastRead 8 FirstWrite -1}
		head_buf_14 {Type I LastRead 8 FirstWrite -1}
		head_buf_15 {Type I LastRead 8 FirstWrite -1}
		s0_8_out {Type O LastRead -1 FirstWrite 13}
		s1_8_out {Type O LastRead -1 FirstWrite 13}
		s2_8_out {Type O LastRead -1 FirstWrite 13}
		s3_8_out {Type O LastRead -1 FirstWrite 13}
		s4_8_out {Type O LastRead -1 FirstWrite 13}
		s5_8_out {Type O LastRead -1 FirstWrite 13}
		s6_8_out {Type O LastRead -1 FirstWrite 13}
		s7_8_out {Type O LastRead -1 FirstWrite 13}
		s8_8_out {Type O LastRead -1 FirstWrite 13}
		s9_8_out {Type O LastRead -1 FirstWrite 13}
		s10_8_out {Type O LastRead -1 FirstWrite 13}
		s11_8_out {Type O LastRead -1 FirstWrite 13}
		s12_8_out {Type O LastRead -1 FirstWrite 13}
		s13_8_out {Type O LastRead -1 FirstWrite 13}
		s14_8_out {Type O LastRead -1 FirstWrite 13}
		s15_8_out {Type O LastRead -1 FirstWrite 13}
		p_ZL19cls_head_1_weight_q_0 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_1 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_2 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_3 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_4 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_5 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_6 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_7 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_8 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_9 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_10 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_11 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_12 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_13 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_14 {Type I LastRead -1 FirstWrite -1}
		p_ZL19cls_head_1_weight_q_15 {Type I LastRead -1 FirstWrite -1}}
	pb_predict_Pipeline_WRITE_REG {
		reg_out {Type I LastRead 0 FirstWrite -1}
		reg_out_1 {Type I LastRead 0 FirstWrite -1}
		reg_out_2 {Type I LastRead 0 FirstWrite -1}
		reg_out_3 {Type I LastRead 0 FirstWrite -1}
		reg_out_4 {Type I LastRead 0 FirstWrite -1}
		reg_out_5 {Type I LastRead 0 FirstWrite -1}
		output_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}
	pb_predict_Pipeline_WRITE_CLS {
		cls_out {Type I LastRead 0 FirstWrite -1}
		cls_out_1 {Type I LastRead 0 FirstWrite -1}
		cls_out_2 {Type I LastRead 0 FirstWrite -1}
		cls_out_3 {Type I LastRead 0 FirstWrite -1}
		cls_out_4 {Type I LastRead 0 FirstWrite -1}
		cls_out_5 {Type I LastRead 0 FirstWrite -1}
		output_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		output_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "240227", "Max" : "240227"}
	, {"Name" : "Interval", "Min" : "240228", "Max" : "240228"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_stream_V_data_V { axis {  { input_stream_TDATA in_data 0 32 } } }
	input_stream_V_keep_V { axis {  { input_stream_TKEEP in_data 0 4 } } }
	input_stream_V_strb_V { axis {  { input_stream_TSTRB in_data 0 4 } } }
	input_stream_V_last_V { axis {  { input_stream_TVALID in_vld 0 1 }  { input_stream_TREADY in_acc 1 1 }  { input_stream_TLAST in_data 0 1 } } }
	output_stream_V_data_V { axis {  { output_stream_TDATA out_data 1 32 } } }
	output_stream_V_keep_V { axis {  { output_stream_TKEEP out_data 1 4 } } }
	output_stream_V_strb_V { axis {  { output_stream_TSTRB out_data 1 4 } } }
	output_stream_V_last_V { axis {  { output_stream_TVALID out_vld 1 1 }  { output_stream_TREADY out_acc 0 1 }  { output_stream_TLAST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
