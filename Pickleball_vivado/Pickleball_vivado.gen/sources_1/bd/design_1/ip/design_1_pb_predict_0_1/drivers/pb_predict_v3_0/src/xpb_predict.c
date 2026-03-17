// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xpb_predict.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPb_predict_CfgInitialize(XPb_predict *InstancePtr, XPb_predict_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPb_predict_Start(XPb_predict *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPb_predict_ReadReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPb_predict_WriteReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPb_predict_IsDone(XPb_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPb_predict_ReadReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPb_predict_IsIdle(XPb_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPb_predict_ReadReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPb_predict_IsReady(XPb_predict *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPb_predict_ReadReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPb_predict_EnableAutoRestart(XPb_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPb_predict_WriteReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPb_predict_DisableAutoRestart(XPb_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPb_predict_WriteReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_AP_CTRL, 0);
}

void XPb_predict_InterruptGlobalEnable(XPb_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPb_predict_WriteReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_GIE, 1);
}

void XPb_predict_InterruptGlobalDisable(XPb_predict *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPb_predict_WriteReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_GIE, 0);
}

void XPb_predict_InterruptEnable(XPb_predict *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPb_predict_ReadReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_IER);
    XPb_predict_WriteReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_IER, Register | Mask);
}

void XPb_predict_InterruptDisable(XPb_predict *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPb_predict_ReadReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_IER);
    XPb_predict_WriteReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPb_predict_InterruptClear(XPb_predict *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XPb_predict_WriteReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_ISR, Mask);
}

u32 XPb_predict_InterruptGetEnabled(XPb_predict *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPb_predict_ReadReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_IER);
}

u32 XPb_predict_InterruptGetStatus(XPb_predict *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XPb_predict_ReadReg(InstancePtr->Control_BaseAddress, XPB_PREDICT_CONTROL_ADDR_ISR);
}

