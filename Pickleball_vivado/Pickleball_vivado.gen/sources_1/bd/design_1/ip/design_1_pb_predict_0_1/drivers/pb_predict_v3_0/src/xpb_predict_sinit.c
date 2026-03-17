// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xpb_predict.h"

extern XPb_predict_Config XPb_predict_ConfigTable[];

XPb_predict_Config *XPb_predict_LookupConfig(u16 DeviceId) {
	XPb_predict_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPB_PREDICT_NUM_INSTANCES; Index++) {
		if (XPb_predict_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPb_predict_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPb_predict_Initialize(XPb_predict *InstancePtr, u16 DeviceId) {
	XPb_predict_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPb_predict_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPb_predict_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

