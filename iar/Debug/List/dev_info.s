///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:40
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\dev_info.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\dev_info.c
//        -D USE_STDPERIPH_DRIVER -D STM32F10X_HD -D __ICCARM__ -lC
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\
//        -lA
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\
//        -o E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\Obj\
//        --debug --endian=little --cpu=Cortex-M3 -e --fpu=None --dlib_config
//        "C:\Program Files\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Full.h" -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\StdPeriph_Driver\inc\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\cpu\stm32F103\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\platform\stm32f103\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\xprintf\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\core\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\core\sys\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\core\lib\
//        -I E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\CMSIS\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\core\net\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\apps\shell\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\cpu\stm32F103\si4438\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\cpu\stm32F103\si4438\radiolib\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\utility\
//        -I E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\hwgg\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\core\net\ip64\
//        -I
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\contiki\core\net\ip64-addr\
//        -I E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\grps\
//        -I E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\..\app485\
//        -Oh -I "C:\Program Files\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\"
//    List file    =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\dev_info.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN eeBlockRead
        EXTERN eeWriteMultiWord

        PUBLIC devInfo
        PUBLIC extgdbdevGetDeviceSettingInfo
        PUBLIC extgdbdevGetDeviceSettingInfoSt
        PUBLIC extgdbdevSetDeviceSettingInfoSt
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\dev_info.c
//    1 #include "contiki.h"
//    2 #include "basictype.h"
//    3 #include "sysprintf.h"
//    4 #include <string.h>
//    5 
//    6 //#include "extgdb_376_2.h"
//    7 
//    8 #include "eeflash.h"
//    9 #include "dev_info.h"
//   10 
//   11 
//   12 
//   13 //__attribute__((at(0x0805F000)))
//   14 
//   15 extern int mem_cmp (const void* dst, const void* src, unsigned int cnt);
//   16 
//   17 // This variable is save at addr 0x0805f000  FLASH
//   18 #ifdef MCU_STM32F103RDT6
//   19 //#define DEVINFO_FLASH_ADDR	(0x0805F000)
//   20 
//   21 const DEV_PARAM_STORAGE_INFO devInfo @0x0805F000 ={
//   22 
//   23 	//u_short udwProtectWord; 
//   24 	0x5aa5,
//   25 
//   26 	//RF_NODE_PARAM_CONFIG stNodeConfig;
//   27 	//u_char ubNodeType;
//   28 	//u_char ubTxPower;
//   29 	//u_char ubRSSI_Limit;
//   30 	//u_char ubRFChannel;
//   31 	//u_short uwPanID;
//   32 	{
//   33 		NODE_TYPE_LEAF,
//   34 		RF_TX_POWER_20DBM,
//   35 		RF_RSSI_LIMIT,
//   36 		1,
//   37 		0x00,
//   38 		0x00,
//   39 		0x00,
//   40 		{0x00,0x00},
//   41 		0xABCD
//   42 	},
//   43 
//   44 	//NODE_ADDR_INFO stnodeAddrInfo;
//   45 	//u_char ubaNodeAddr[8];
//   46 	{
//   47 		NODE_DEFAULT_ADDR
//   48 	},
//   49 
//   50 	//u_char ubSoftWareVersion;
//   51 	//u_char ubHardWareVersion;
//   52 	//u_char ubFirmMark[6];
//   53 	{
//   54 		NODE_SOFTWARE_V,
//   55 		NODE_HARDWARE_V,
//   56 		{NODE_MADE_INFO}
//   57 	}
//   58 }; 
//   59 
//   60 #endif
//   61 
//   62 #ifdef MCU_STM32F103RBT6
//   63 #define DEVINFO_FLASH_ADDR	(0x0801F000)
//   64 //This variable is save at addr 0x0801f000  FLASH

        ASEGN `.rodata`:CONST:NOROOT,0801f000H
//   65 const DEV_PARAM_STORAGE_INFO devInfo @0x0801F000 ={
devInfo:
        DATA
        DC16 23205
        DC8 1, 7, 90, 5, 0, 0, 0, 0, 0, 0
        DC16 43981
        DC8 5, 9, 22, 32, 0, 0, 0, 0, 16, 16
        DC8 "hrun"
        DC8 0
        DC16 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//   66 
//   67 	//u_short udwProtectWord; 
//   68 	0x5aa5,
//   69 
//   70 	//RF_NODE_PARAM_CONFIG stNodeConfig;
//   71 	//u_char ubNodeType;
//   72 	//u_char ubTxPower;
//   73 	//u_char ubRSSI_Limit;
//   74 	//u_char ubRFChannel;
//   75 	//u_short uwPanID;
//   76 	{
//   77 		NODE_TYPE_LEAF,
//   78 		//NODE_TYPE_CENTER,
//   79 		RF_TX_POWER_20DBM,
//   80 		RF_RSSI_LIMIT,
//   81 		5,
//   82 		0x00,	//painid
//   83 		0x00,	//devid
//   84 		0x00,	//9600
//   85 		{0x00,0x00},//netid
//   86 		//RF_CHANNEL_470_200,
//   87 		0xABCD
//   88 	},
//   89 
//   90 	//NODE_ADDR_INFO stnodeAddrInfo;
//   91 	//u_char ubaNodeAddr[8];
//   92 	{
//   93 		NODE_DEFAULT_ADDR
//   94 	},
//   95 
//   96 	//u_char ubSoftWareVersion;
//   97 	//u_char ubHardWareVersion;
//   98 	//u_char ubFirmMark[6];
//   99 	{
//  100 		NODE_SOFTWARE_V,
//  101 		NODE_HARDWARE_V,
//  102 		{NODE_MADE_INFO}
//  103 	},
//  104 	{
//  105 		0x00
//  106 	}
//  107 }; 
//  108 
//  109 #endif
//  110 
//  111 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  112 static const void*pdevSettingBase[] = {
pdevSettingBase:
        DATA
        DC32 devInfo + 2H, devInfo + 0EH, devInfo + 16H, devInfo + 1EH
//  113 	&devInfo.st1NodeConfig,
//  114 	&devInfo.st2nodeAddrInfo,
//  115 	&devInfo.st3MakerConfig,
//  116 	&devInfo.st4NodeInfo
//  117 };
//  118 
//  119 
//  120 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function extgdbdevGetDeviceSettingInfo
          CFI NoCalls
        THUMB
//  121 const DEV_PARAM_STORAGE_INFO *extgdbdevGetDeviceSettingInfo(void)
//  122 {
//  123 	return (DEV_PARAM_STORAGE_INFO*)&devInfo;
extgdbdevGetDeviceSettingInfo:
        LDR.N    R0,??DataTable5  ;; 0x801f000
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
        REQUIRE devInfo
//  124 }
//  125 
//  126 /*
//  127 * \ brief Get param struct addr.
//  128 * \ param ubSTx Param struct lable num.
//  129 * \ return NULL, failed, other value 
//  130 */
//  131 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function extgdbdevGetDeviceSettingInfoSt
          CFI NoCalls
        THUMB
//  132 const void* extgdbdevGetDeviceSettingInfoSt(u_char ubSTx)
//  133 {
//  134 	if((ubSTx > 0) && (ubSTx<= MAX_SAVE_ITEMS_IN_FLASH_NUM))
extgdbdevGetDeviceSettingInfoSt:
        CBZ.N    R0,??extgdbdevGetDeviceSettingInfoSt_0
        CMP      R0,#+7
        BGE.N    ??extgdbdevGetDeviceSettingInfoSt_0
//  135 	{
//  136 
//  137 		ubSTx -= 1;
//  138 
//  139 		return  pdevSettingBase[ubSTx];
        LDR.N    R1,??DataTable5_1
        SUBS     R0,R0,#+1
        UXTB     R0,R0
        LDR      R0,[R1, R0, LSL #+2]
        BX       LR
//  140 	}	
//  141 	return NULL;
??extgdbdevGetDeviceSettingInfoSt_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  142 }
//  143 
//  144 
//  145 
//  146 
//  147 
//  148 /*
//  149 * \ brief Write data to the addr
//  150 * \ param woffset offset addr
//  151 * \ param pBuf The pointer to the data
//  152 * \ param wSize Data size
//  153 * \ return -1 failed, 0 success.
//  154 */
//  155 
//  156 #if 0
//  157 int extgdbdevSetDeviceSettingInfoSt(u_char ubSTx,u_short wOffset,const void*pBuf,u_short wSize)
//  158 {
//  159 	if((ubSTx > 0) && (ubSTx<= 5))
//  160 	{
//  161 		ubSTx -= 1;
//  162 		XPRINTF((7,"ST:0x%08X+0x%04X[sz %d]\r\n",pdevSettingBase[ubSTx],wOffset,wSize));
//  163 		eeBlockWrite((u_long)pdevSettingBase[ubSTx]+wOffset,pBuf,wSize);
//  164 		return 0;
//  165 	}
//  166 	return -1;
//  167 }
//  168 #else
//  169 //static DEV_PARAM_STORAGE_INFO nodeInfo;
//  170 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  171 static u_char ubanodeInfo[2048];
ubanodeInfo:
        DS8 2048
//  172 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function extgdbdevSetDeviceSettingInfoSt
        THUMB
//  173 int extgdbdevSetDeviceSettingInfoSt(u_char ubSTx,u_short wOffset,const void*pBuf,u_short wSize)
//  174 {
extgdbdevSetDeviceSettingInfoSt:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOV      R5,R2
//  175 	if((ubSTx > 0) && (ubSTx<= MAX_SAVE_ITEMS_IN_FLASH_NUM))
        BEQ.N    ??extgdbdevSetDeviceSettingInfoSt_0
        CMP      R4,#+7
        BGE.N    ??extgdbdevSetDeviceSettingInfoSt_0
//  176 	{
//  177 		//ubSTx -= 1;
//  178 		DEV_PARAM_STORAGE_INFO *pdevInfo = (DEV_PARAM_STORAGE_INFO *)ubanodeInfo;
//  179 		u_short uwWriteWord = 0;
//  180 		XPRINTF((9,"ST:0x%08X+0x%04X[sz %d]\r\n",pdevSettingBase[ubSTx],wOffset,wSize));
        LDR.N    R0,??DataTable5_1
        STR      R3,[SP, #+0]
        MOV      R3,R1
        LDR      R2,[R0, R4, LSL #+2]
        ADR.W    R1,?_0
        MOVS     R0,#+9
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  181 		//eeBlockRead((u_long)DEVINFO_FLASH_ADDR, &nodeInfo, sizeof(DEV_PARAM_STORAGE_INFO));
//  182 		eeBlockRead((u_long)DEVINFO_FLASH_ADDR, pdevInfo, sizeof(DEV_PARAM_STORAGE_INFO));
        LDR.N    R6,??DataTable5  ;; 0x801f000
        LDR.N    R7,??DataTable5_2
        MOV      R2,#+832
        MOV      R1,R7
        MOV      R0,R6
          CFI FunCall eeBlockRead
        BL       eeBlockRead
//  183 
//  184 		//MEM_DUMP(9, "ENFO", (void const *)DEVINFO_FLASH_ADDR, sizeof(DEV_PARAM_STORAGE_INFO));
//  185 		//MEM_DUMP(6, "INFO", &nodeInfo, sizeof(DEV_PARAM_STORAGE_INFO));
//  186 		//MEM_DUMP(9, "INFO", pdevInfo, sizeof(DEV_PARAM_STORAGE_INFO));
//  187 		if (ubSTx == 1)
        CMP      R4,#+1
        BNE.N    ??extgdbdevSetDeviceSettingInfoSt_1
//  188 		{
//  189 			//nodeInfo.st1NodeConfig = *(RF_NODE_PARAM_CONFIG *)pBuf;
//  190 			pdevInfo->st1NodeConfig = *(RF_NODE_PARAM_CONFIG *)pBuf;
        ADDS     R0,R7,#+2
        MOV      R1,R5
        MOVS     R2,#+12
        B.N      ??extgdbdevSetDeviceSettingInfoSt_2
//  191 		}
//  192 		else if (ubSTx == 2)
??extgdbdevSetDeviceSettingInfoSt_1:
        CMP      R4,#+2
        BNE.N    ??extgdbdevSetDeviceSettingInfoSt_3
//  193 		{
//  194 			//nodeInfo.st2nodeAddrInfo = *(NODE_ADDR_INFO *)pBuf;
//  195 			pdevInfo->st2nodeAddrInfo = *(NODE_ADDR_INFO *)pBuf;
        ADD      R0,R7,#+14
        MOV      R1,R5
        MOVS     R2,#+8
        B.N      ??extgdbdevSetDeviceSettingInfoSt_2
//  196 		}
//  197 		else if (ubSTx == 3)
??extgdbdevSetDeviceSettingInfoSt_3:
        CMP      R4,#+3
        BNE.N    ??extgdbdevSetDeviceSettingInfoSt_4
//  198 		{
//  199 			//nodeInfo.st3MakerConfig = *(MANNUFACTURE_PARAM_CONFIG*)pBuf;
//  200 			pdevInfo->st3MakerConfig = *(MANNUFACTURE_PARAM_CONFIG*)pBuf;
        ADD      R0,R7,#+22
        MOV      R1,R5
        MOVS     R2,#+8
        B.N      ??extgdbdevSetDeviceSettingInfoSt_2
//  201 		}
//  202 		else if (ubSTx == 4)
??extgdbdevSetDeviceSettingInfoSt_4:
        CMP      R4,#+4
        BNE.N    ??extgdbdevSetDeviceSettingInfoSt_5
//  203 		{
//  204 			pdevInfo->st4NodeInfo = *(FIRE_NODE_INFO*)pBuf;
        ADD      R0,R7,#+30
        MOV      R1,R5
        MOVW     R2,#+802
??extgdbdevSetDeviceSettingInfoSt_2:
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  205 		}
//  206 
//  207         //MEM_DUMP(6, "fNFO", &nodeInfo, sizeof(DEV_PARAM_STORAGE_INFO));
//  208         MEM_DUMP(9, "fNFO", pdevInfo, sizeof(DEV_PARAM_STORAGE_INFO));
??extgdbdevSetDeviceSettingInfoSt_5:
        MOV      R3,#+832
        MOV      R2,R7
        ADR.W    R1,?_1
        MOVS     R0,#+9
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  209 
//  210 		if (sizeof(DEV_PARAM_STORAGE_INFO)%(sizeof(u_long)) == 0)
//  211 		{
//  212 			uwWriteWord = (sizeof(DEV_PARAM_STORAGE_INFO)/sizeof(u_long));
//  213 		}
//  214 		else 
//  215 		{
//  216 			uwWriteWord = (sizeof(DEV_PARAM_STORAGE_INFO)/sizeof(u_long))+1;
//  217 		}
//  218         
//  219 		//eeBlockWrite((u_long)pdevSettingBase[ubSTx]+wOffset,pBuf,wSize);
//  220 		//eeWriteMultiWord(DEVINFO_FLASH_ADDR, (const u_long * )&nodeInfo, (sizeof(DEV_PARAM_STORAGE_INFO)/sizeof(u_long)));
//  221 		eeWriteMultiWord(DEVINFO_FLASH_ADDR, (const u_long * )pdevInfo, uwWriteWord);
        MOVS     R2,#+208
        MOV      R1,R7
        MOV      R0,R6
          CFI FunCall eeWriteMultiWord
        BL       eeWriteMultiWord
//  222 		MEM_DUMP(9, "FNFO", (void const *)DEVINFO_FLASH_ADDR, sizeof(DEV_PARAM_STORAGE_INFO));
        MOV      R3,#+832
        MOV      R2,R6
        ADR.W    R1,?_2
        MOVS     R0,#+9
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  223 		return 0;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
//  224 	}
//  225 	return -1;
??extgdbdevSetDeviceSettingInfoSt_0:
        MOV      R0,#-1
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock2
//  226 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x801f000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     pdevSettingBase

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     ubanodeInfo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_0:
        DC8 "ST:0x%08X+0x%04X[sz %d]\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "fNFO"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "FNFO"
        DC8 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  227 
//  228 #endif
//  229 
//  230 
//  231 //test mcu inter flash
//  232 
//  233 #if 0
//  234 static MANNUFACTURE_PARAM_CONFIG stMake={
//  235 0x29,
//  236 0x32,
//  237 "abcde"
//  238 };
//  239 void extgdbTestFlash(void)
//  240 {
//  241 	const DEV_PARAM_STORAGE_INFO *pDevInfo = NULL;
//  242 	const MANNUFACTURE_PARAM_CONFIG *pMakerInfo = NULL;
//  243 	MANNUFACTURE_PARAM_CONFIG stMakerInfo = {0};
//  244 	u_long udwPaddr = NULL;
//  245 	
//  246 	pDevInfo = extgdbdevGetDeviceSettingInfo( );
//  247 
//  248 	PRINTF("Protect is %02x\r\n", pDevInfo->udwProtectWord);
//  249 	PRINTF("Made info is %s\r\n", pDevInfo->st3MakerConfig.ubFirmMark);
//  250 
//  251 	udwPaddr = (u_long)extgdbdevGetDeviceSettingInfoSt(1);
//  252 	PRINTF("ST1 addr is %08x\r\n", udwPaddr);
//  253 
//  254 
//  255 	udwPaddr = (u_long)extgdbdevGetDeviceSettingInfoSt(2);
//  256 	PRINTF("ST2 addr is %08x\r\n", udwPaddr);
//  257 
//  258 	//test write flash
//  259 	PRINTF("Read st3 and print");
//  260 	udwPaddr = (u_long)extgdbdevGetDeviceSettingInfoSt(3);
//  261 	PRINTF("ST3 addr is %08x\r\n", udwPaddr);
//  262 	pMakerInfo = (MANNUFACTURE_PARAM_CONFIG *)udwPaddr;
//  263 	PRINTF("Softwarev is %02x\r\n", pMakerInfo->ubSoftWareVersion);
//  264 	PRINTF("Hardwarev is %02x\r\n", pMakerInfo->ubHardWareVersion);
//  265 	PRINTF("Hardwarev is %s\r\n", pMakerInfo->ubFirmMark);
//  266 
//  267 	PRINTF("copy st3 and print");
//  268 	stMakerInfo = *pMakerInfo;
//  269 	PRINTF("Softwarev is %02x\r\n", stMakerInfo.ubSoftWareVersion);
//  270 	PRINTF("Hardwarev is %02x\r\n", stMakerInfo.ubHardWareVersion);
//  271 	PRINTF("Hardwarev is %s\r\n", stMakerInfo.ubFirmMark);
//  272 
//  273 
//  274 	PRINTF("write st3 and print");
//  275 	stMakerInfo.ubSoftWareVersion = 0x22;
//  276 	stMakerInfo.ubHardWareVersion = 0x33;
//  277 
//  278 	extgdbdevSetDeviceSettingInfoSt(3, 0, &stMakerInfo, sizeof(MANNUFACTURE_PARAM_CONFIG));
//  279 	PRINTF("Softwarev is %02x\r\n", pMakerInfo->ubSoftWareVersion);
//  280 	PRINTF("Hardwarev is %02x\r\n", pMakerInfo->ubHardWareVersion);
//  281 	PRINTF("Hardwarev is %s\r\n", pMakerInfo->ubFirmMark);
//  282 
//  283 
//  284 
//  285 	udwPaddr = (u_long)extgdbdevGetDeviceSettingInfoSt(4);
//  286 	PRINTF("ST4 addr is %08x\r\n", udwPaddr);
//  287 	
//  288 }
//  289 
//  290 #endif
//  291 
//  292 
//  293 
// 
// 2 048 bytes in section .bss
//    16 bytes in section .data
//   832 bytes in section .rodata (abs)
//   240 bytes in section .text
// 
//   240 bytes of CODE  memory
//   832 bytes of CONST memory
// 2 064 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
