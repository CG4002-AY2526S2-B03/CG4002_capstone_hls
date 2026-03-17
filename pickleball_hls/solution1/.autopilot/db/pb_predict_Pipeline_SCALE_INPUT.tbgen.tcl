set moduleName pb_predict_Pipeline_SCALE_INPUT
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
set C_modelName {pb_predict_Pipeline_SCALE_INPUT}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_raw_reload float 32 regular  }
	{ input_raw_1_reload float 32 regular  }
	{ input_raw_2_reload float 32 regular  }
	{ input_raw_3_reload float 32 regular  }
	{ input_raw_4_reload float 32 regular  }
	{ input_raw_5_reload float 32 regular  }
	{ input_scaled_5_out float 32 regular {pointer 1}  }
	{ input_scaled_4_out float 32 regular {pointer 1}  }
	{ input_scaled_3_out float 32 regular {pointer 1}  }
	{ input_scaled_2_out float 32 regular {pointer 1}  }
	{ input_scaled_1_out float 32 regular {pointer 1}  }
	{ input_scaled_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_raw_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_raw_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_raw_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_raw_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_raw_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_raw_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_scaled_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_scaled_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_scaled_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_scaled_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_scaled_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_scaled_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_raw_reload sc_in sc_lv 32 signal 0 } 
	{ input_raw_1_reload sc_in sc_lv 32 signal 1 } 
	{ input_raw_2_reload sc_in sc_lv 32 signal 2 } 
	{ input_raw_3_reload sc_in sc_lv 32 signal 3 } 
	{ input_raw_4_reload sc_in sc_lv 32 signal 4 } 
	{ input_raw_5_reload sc_in sc_lv 32 signal 5 } 
	{ input_scaled_5_out sc_out sc_lv 32 signal 6 } 
	{ input_scaled_5_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ input_scaled_4_out sc_out sc_lv 32 signal 7 } 
	{ input_scaled_4_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_scaled_3_out sc_out sc_lv 32 signal 8 } 
	{ input_scaled_3_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_scaled_2_out sc_out sc_lv 32 signal 9 } 
	{ input_scaled_2_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_scaled_1_out sc_out sc_lv 32 signal 10 } 
	{ input_scaled_1_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_scaled_out sc_out sc_lv 32 signal 11 } 
	{ input_scaled_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ grp_fu_2052_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2052_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2052_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_2052_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2052_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_raw_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_reload", "role": "default" }} , 
 	{ "name": "input_raw_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_1_reload", "role": "default" }} , 
 	{ "name": "input_raw_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_2_reload", "role": "default" }} , 
 	{ "name": "input_raw_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_3_reload", "role": "default" }} , 
 	{ "name": "input_raw_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_4_reload", "role": "default" }} , 
 	{ "name": "input_raw_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_5_reload", "role": "default" }} , 
 	{ "name": "input_scaled_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_5_out", "role": "default" }} , 
 	{ "name": "input_scaled_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_scaled_5_out", "role": "ap_vld" }} , 
 	{ "name": "input_scaled_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_4_out", "role": "default" }} , 
 	{ "name": "input_scaled_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_scaled_4_out", "role": "ap_vld" }} , 
 	{ "name": "input_scaled_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_3_out", "role": "default" }} , 
 	{ "name": "input_scaled_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_scaled_3_out", "role": "ap_vld" }} , 
 	{ "name": "input_scaled_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_2_out", "role": "default" }} , 
 	{ "name": "input_scaled_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_scaled_2_out", "role": "ap_vld" }} , 
 	{ "name": "input_scaled_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_1_out", "role": "default" }} , 
 	{ "name": "input_scaled_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_scaled_1_out", "role": "ap_vld" }} , 
 	{ "name": "input_scaled_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_scaled_out", "role": "default" }} , 
 	{ "name": "input_scaled_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_scaled_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_2052_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2052_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2052_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2052_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2052_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2052_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2052_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2052_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2052_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2052_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_scaler_mean_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_scaler_scale_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_10_no_dsp_1_U12", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_63_32_1_1_U13", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		x_scaler_scale {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_raw_reload { ap_none {  { input_raw_reload in_data 0 32 } } }
	input_raw_1_reload { ap_none {  { input_raw_1_reload in_data 0 32 } } }
	input_raw_2_reload { ap_none {  { input_raw_2_reload in_data 0 32 } } }
	input_raw_3_reload { ap_none {  { input_raw_3_reload in_data 0 32 } } }
	input_raw_4_reload { ap_none {  { input_raw_4_reload in_data 0 32 } } }
	input_raw_5_reload { ap_none {  { input_raw_5_reload in_data 0 32 } } }
	input_scaled_5_out { ap_vld {  { input_scaled_5_out out_data 1 32 }  { input_scaled_5_out_ap_vld out_vld 1 1 } } }
	input_scaled_4_out { ap_vld {  { input_scaled_4_out out_data 1 32 }  { input_scaled_4_out_ap_vld out_vld 1 1 } } }
	input_scaled_3_out { ap_vld {  { input_scaled_3_out out_data 1 32 }  { input_scaled_3_out_ap_vld out_vld 1 1 } } }
	input_scaled_2_out { ap_vld {  { input_scaled_2_out out_data 1 32 }  { input_scaled_2_out_ap_vld out_vld 1 1 } } }
	input_scaled_1_out { ap_vld {  { input_scaled_1_out out_data 1 32 }  { input_scaled_1_out_ap_vld out_vld 1 1 } } }
	input_scaled_out { ap_vld {  { input_scaled_out out_data 1 32 }  { input_scaled_out_ap_vld out_vld 1 1 } } }
}
