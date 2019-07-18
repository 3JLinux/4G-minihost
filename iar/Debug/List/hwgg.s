///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:51
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\hwgg\hwgg.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\hwgg\hwgg.c -D
//        USE_STDPERIPH_DRIVER -D STM32F10X_HD -D __ICCARM__ -lC
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\hwgg.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN cyg_crc16

        PUBLIC hwggCheckFrame
        PUBLIC hwggFillFrame
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\hwgg\hwgg.c
//    1 #include "contiki.h"
//    2 #include "basictype.h"
//    3 #include <string.h>
//    4 #include "hwgg.h"
//    5 #include "common.h"
//    6 
//    7 static const u_char ubaDstAddr[2]={0xff,0xff};
//    8 static const u_char ubaSrcAddr[2]={0xff,0xff};
//    9 static const u_char ubaEndAddr[2]={0xff,0xff};
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function hwggFillFrame
        THUMB
//   11 int hwggFillFrame(u_char *pioBuf, u_char ubSeq,u_char ubCMD, const u_char *pcData, u_char ubLen)
//   12 {
hwggFillFrame:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R5,R0
//   13 	int nLen = -1;
//   14 	int i = 0;
        MOVS     R6,#+0
//   15 	u_short uwCrc = 0;
//   16 	HWGG_FRAME *pHwgg = NULL;
//   17 	if (pioBuf == NULL)
        CBNZ.N   R5,??hwggFillFrame_0
//   18 	{
//   19 		return nLen;
        MOV      R0,#-1
        POP      {R1,R4-R7,PC}
//   20 	}
//   21 
//   22 	pHwgg = (HWGG_FRAME *)pioBuf;
//   23 	pHwgg->ubHwggHead = HWGG_HEAD;
??hwggFillFrame_0:
        MOVS     R0,#+126
        STRB     R0,[R5, #+0]
//   24 	pHwgg->ubLen = 0;
        STRB     R6,[R5, #+1]
//   25 	pHwgg->ubPanId = ubSeq;
        STRB     R1,[R5, #+2]
//   26 
//   27 	//addr 
//   28 	memcpy(pHwgg->ubaDstAddr, ubaDstAddr, HWGG_NETADDR_LEN);
        ADDS     R4,R5,#+3
        ADR.W    R0,ubaDstAddr
        LDRB     R7,[R0, #0]
        STRB     R7,[R4, #+0]
        LDRB     R7,[R0, #+1]
//   29 	memcpy(pHwgg->ubaSrcAddr, ubaSrcAddr, HWGG_NETADDR_LEN);
        ADR.W    R0,ubaSrcAddr
        STRB     R7,[R4, #+1]
        ADDS     R4,R5,#+5
        LDRB     R7,[R0, #0]
        STRB     R7,[R4, #+0]
        LDRB     R7,[R0, #+1]
//   30 	memcpy(pHwgg->ubaEndAddr, ubaEndAddr, HWGG_NETADDR_LEN);
        ADR.W    R0,ubaEndAddr
        STRB     R7,[R4, #+1]
        ADDS     R4,R5,#+7
        LDRB     R7,[R0, #0]
        STRB     R7,[R4, #+0]
//   31 	pHwgg->ubSeq = ubSeq;
//   32 	pHwgg->ubCmd = ubCMD;
//   33 	if (pcData != NULL && ubLen != 0)
        CMP      R3,#+0
        LDRB     R7,[R0, #+1]
        STRB     R7,[R4, #+1]
        STRB     R1,[R5, #+11]
        STRB     R2,[R5, #+12]
        ITT      NE 
        LDRNE    R4,[SP, #+24]
        CMPNE    R4,#+0
        BEQ.N    ??hwggFillFrame_1
//   34 	{
//   35 		nLen = 0;
//   36 		memcpy(pHwgg->ubaData, pcData, ubLen);
        MOV      R2,R4
        MOV      R1,R3
        ADD      R0,R5,#+13
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   37 		nLen += HWGG_FRAME_FIX_LEN+ubLen-HWGG_HEAD_END_CRC_LEN;
        ADD      R7,R4,#+12
//   38 		i = ubLen;
        MOV      R6,R4
        B.N      ??hwggFillFrame_2
//   39 	}
//   40 	else
//   41 	{
//   42 		nLen = HWGG_FRAME_FIX_LEN-HWGG_HEAD_END_CRC_LEN;
??hwggFillFrame_1:
        MOVS     R7,#+12
//   43 		
//   44 	}
//   45 	pHwgg->ubLen = nLen;
??hwggFillFrame_2:
        STRB     R7,[R5, #+1]
//   46 	uwCrc = cyg_crc16((const u_char *)&pHwgg->ubLen, pHwgg->ubLen);
        ADDS     R0,R5,#+1
        LDRB     R1,[R5, #+1]
          CFI FunCall cyg_crc16
        BL       cyg_crc16
//   47 	pHwgg->ubaData[i++] = (uwCrc>>8) & 0xff;
        ADDS     R2,R6,R5
        LSRS     R1,R0,#+8
        STRB     R1,[R2, #+13]
        ADDS     R6,R6,#+1
//   48 	pHwgg->ubaData[i++] = uwCrc & 0xff;
        ADDS     R1,R6,R5
        STRB     R0,[R1, #+13]
//   49 	pHwgg->ubaData[i++] = HWGG_END;
        MOVS     R0,#+13
        STRB     R0,[R1, #+14]
//   50 
//   51 	return (nLen + HWGG_HEAD_END_CRC_LEN);
        ADDS     R0,R7,#+4
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock0
//   52 }
//   53 
//   54 
//   55 
//   56 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function hwggCheckFrame
        THUMB
//   57 bool hwggCheckFrame(const u_char *pciFrame)
//   58 {
//   59 	u_short uwCrc = 0;
//   60 	u_short uwCrcF = 0;
//   61 	const HWGG_FRAME *pHwgg = NULL;
//   62 
//   63 	u_char ubLen = 0;
//   64 	const u_char *pCheck = NULL; 
//   65 
//   66 	if (pciFrame == NULL)
hwggCheckFrame:
        CBNZ.N   R0,??hwggCheckFrame_0
        BX       LR
//   67 		return false;
//   68 
//   69 	pHwgg = (const HWGG_FRAME *)pciFrame;
//   70 
//   71 	//check frame head
//   72 	if (pHwgg->ubHwggHead != HWGG_HEAD)
??hwggCheckFrame_0:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        LDRB     R1,[R0, #+0]
        CMP      R1,#+126
        BNE.N    ??hwggCheckFrame_1
//   73 	{
//   74 		return false;
//   75 	}
//   76 
//   77 	//check cmd
//   78 	if (pHwgg->ubCmd != HWGG_CMD_HEART && pHwgg->ubCmd != HWGG_CMD_LOW_VOLTAGE && pHwgg->ubCmd != HWGG_CMD_WARN)
        LDRB     R1,[R0, #+12]
        CMP      R1,#+203
        ITT      NE 
        CMPNE    R1,#+193
        CMPNE    R1,#+202
        BNE.N    ??hwggCheckFrame_1
//   79 	{
//   80 		return false;
//   81 	}
//   82 
//   83 	//total frame length
//   84 	ubLen = pHwgg->ubLen + HWGG_HEAD_END_CRC_LEN;
        LDRB     R1,[R0, #+1]
        ADDS     R2,R1,#+4
        UXTB     R2,R2
//   85 	//check frame end
//   86 	pCheck = (pciFrame+ubLen-1);
//   87 	//XPRINTF((10, "END = %02x\n", pCheck[0]));
//   88 	if (pCheck[0] != HWGG_END)
        ADDS     R2,R2,R0
        LDRB     R3,[R2, #-1]
        CMP      R3,#+13
        BNE.N    ??hwggCheckFrame_1
//   89 	{
//   90 		return false;
//   91 	}
//   92 
//   93 	pCheck = (pciFrame+ubLen-3);
        SUBS     R4,R2,#+3
//   94 	//check  crc
//   95 	uwCrc = cyg_crc16((const u_char *)&pHwgg->ubLen, pHwgg->ubLen);
        ADDS     R0,R0,#+1
          CFI FunCall cyg_crc16
        BL       cyg_crc16
//   96 	uwCrcF = (pCheck[0]<<8) | (pCheck[1]);
//   97 	//XPRINTF((10, "CRC = %04x, crcf = %04x\n", uwCrc, uwCrcF));
//   98 	
//   99 	if (uwCrc != uwCrcF)
        LDRB     R1,[R4, #+0]
        LDRB     R2,[R4, #+1]
        ORR      R1,R2,R1, LSL #+8
        CMP      R0,R1
        BEQ.N    ??hwggCheckFrame_2
//  100 	{
//  101 		return false;
??hwggCheckFrame_1:
        MOVS     R0,#+0
        POP      {R4,PC}
//  102 	}
//  103 
//  104 	return true;
??hwggCheckFrame_2:
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//  105 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ubaDstAddr:
        DC8 255, 255

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ubaSrcAddr:
        DC8 255, 255

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ubaEndAddr:
        DC8 255, 255

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  106 
//  107 
//  108 
//  109 
//  110 
//  111 
//  112 
//  113 
//  114 
//  115 
//  116 
//  117 
//  118 
//  119 
//  120 
//  121 
//  122 
//  123 
//  124 
//  125 
//  126 
//  127 
//  128 
//  129 
//  130 
//  131 
//  132 
//  133 
// 
// 204 bytes in section .text
// 
// 204 bytes of CODE memory
//
//Errors: none
//Warnings: 1
