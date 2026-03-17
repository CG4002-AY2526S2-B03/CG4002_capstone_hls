set moduleName pb_predict_Pipeline_READ_INPUT
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
set C_modelName {pb_predict_Pipeline_READ_INPUT}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_stream_V_data_V int 32 regular {axi_s 0 volatile  { input_stream Data } }  }
	{ input_stream_V_keep_V int 4 regular {axi_s 0 volatile  { input_stream Keep } }  }
	{ input_stream_V_strb_V int 4 regular {axi_s 0 volatile  { input_stream Strb } }  }
	{ input_stream_V_last_V int 1 regular {axi_s 0 volatile  { input_stream Last } }  }
	{ input_raw_5_out float 32 regular {pointer 1}  }
	{ input_raw_4_out float 32 regular {pointer 1}  }
	{ input_raw_3_out float 32 regular {pointer 1}  }
	{ input_raw_2_out float 32 regular {pointer 1}  }
	{ input_raw_1_out float 32 regular {pointer 1}  }
	{ input_raw_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_raw_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_raw_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_raw_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_raw_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_raw_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_raw_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_stream_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_stream_TREADY sc_out sc_logic 1 inacc 3 } 
	{ input_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ input_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ input_stream_TLAST sc_in sc_lv 1 signal 3 } 
	{ input_raw_5_out sc_out sc_lv 32 signal 4 } 
	{ input_raw_5_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ input_raw_4_out sc_out sc_lv 32 signal 5 } 
	{ input_raw_4_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ input_raw_3_out sc_out sc_lv 32 signal 6 } 
	{ input_raw_3_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ input_raw_2_out sc_out sc_lv 32 signal 7 } 
	{ input_raw_2_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_raw_1_out sc_out sc_lv 32 signal 8 } 
	{ input_raw_1_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_raw_out sc_out sc_lv 32 signal 9 } 
	{ input_raw_out_ap_vld sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_stream_V_data_V", "role": "default" }} , 
 	{ "name": "input_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_stream_V_data_V", "role": "default" }} , 
 	{ "name": "input_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_stream_V_last_V", "role": "default" }} , 
 	{ "name": "input_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "input_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "input_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream_V_last_V", "role": "default" }} , 
 	{ "name": "input_raw_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_5_out", "role": "default" }} , 
 	{ "name": "input_raw_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_raw_5_out", "role": "ap_vld" }} , 
 	{ "name": "input_raw_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_4_out", "role": "default" }} , 
 	{ "name": "input_raw_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_raw_4_out", "role": "ap_vld" }} , 
 	{ "name": "input_raw_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_3_out", "role": "default" }} , 
 	{ "name": "input_raw_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_raw_3_out", "role": "ap_vld" }} , 
 	{ "name": "input_raw_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_2_out", "role": "default" }} , 
 	{ "name": "input_raw_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_raw_2_out", "role": "ap_vld" }} , 
 	{ "name": "input_raw_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_1_out", "role": "default" }} , 
 	{ "name": "input_raw_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_raw_1_out", "role": "ap_vld" }} , 
 	{ "name": "input_raw_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_raw_out", "role": "default" }} , 
 	{ "name": "input_raw_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_raw_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		input_raw_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_stream_V_data_V { axis {  { input_stream_TVALID in_vld 0 1 }  { input_stream_TDATA in_data 0 32 } } }
	input_stream_V_keep_V { axis {  { input_stream_TKEEP in_data 0 4 } } }
	input_stream_V_strb_V { axis {  { input_stream_TSTRB in_data 0 4 } } }
	input_stream_V_last_V { axis {  { input_stream_TREADY in_acc 1 1 }  { input_stream_TLAST in_data 0 1 } } }
	input_raw_5_out { ap_vld {  { input_raw_5_out out_data 1 32 }  { input_raw_5_out_ap_vld out_vld 1 1 } } }
	input_raw_4_out { ap_vld {  { input_raw_4_out out_data 1 32 }  { input_raw_4_out_ap_vld out_vld 1 1 } } }
	input_raw_3_out { ap_vld {  { input_raw_3_out out_data 1 32 }  { input_raw_3_out_ap_vld out_vld 1 1 } } }
	input_raw_2_out { ap_vld {  { input_raw_2_out out_data 1 32 }  { input_raw_2_out_ap_vld out_vld 1 1 } } }
	input_raw_1_out { ap_vld {  { input_raw_1_out out_data 1 32 }  { input_raw_1_out_ap_vld out_vld 1 1 } } }
	input_raw_out { ap_vld {  { input_raw_out out_data 1 32 }  { input_raw_out_ap_vld out_vld 1 1 } } }
}
