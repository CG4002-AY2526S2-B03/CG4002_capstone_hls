// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XPB_PREDICT_H
#define XPB_PREDICT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xpb_predict_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XPb_predict_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XPb_predict;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPb_predict_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPb_predict_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPb_predict_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPb_predict_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XPb_predict_Initialize(XPb_predict *InstancePtr, u16 DeviceId);
XPb_predict_Config* XPb_predict_LookupConfig(u16 DeviceId);
int XPb_predict_CfgInitialize(XPb_predict *InstancePtr, XPb_predict_Config *ConfigPtr);
#else
int XPb_predict_Initialize(XPb_predict *InstancePtr, const char* InstanceName);
int XPb_predict_Release(XPb_predict *InstancePtr);
#endif

void XPb_predict_Start(XPb_predict *InstancePtr);
u32 XPb_predict_IsDone(XPb_predict *InstancePtr);
u32 XPb_predict_IsIdle(XPb_predict *InstancePtr);
u32 XPb_predict_IsReady(XPb_predict *InstancePtr);
void XPb_predict_EnableAutoRestart(XPb_predict *InstancePtr);
void XPb_predict_DisableAutoRestart(XPb_predict *InstancePtr);


void XPb_predict_InterruptGlobalEnable(XPb_predict *InstancePtr);
void XPb_predict_InterruptGlobalDisable(XPb_predict *InstancePtr);
void XPb_predict_InterruptEnable(XPb_predict *InstancePtr, u32 Mask);
void XPb_predict_InterruptDisable(XPb_predict *InstancePtr, u32 Mask);
void XPb_predict_InterruptClear(XPb_predict *InstancePtr, u32 Mask);
u32 XPb_predict_InterruptGetEnabled(XPb_predict *InstancePtr);
u32 XPb_predict_InterruptGetStatus(XPb_predict *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
