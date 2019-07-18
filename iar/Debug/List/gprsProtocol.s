///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\grps\gprsProtocol.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\grps\gprsProtocol.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\gprsProtocol.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN __xstd_printf
        EXTERN cyg_crc16

        PUBLIC gprsCodeGetOut0xla
        PUBLIC gprsDecodeFrame
        PUBLIC gprsProtocolCheck
        PUBLIC gprsProtocolFindHead
        PUBLIC gprsProtocolFrameFill
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\grps\gprsProtocol.c
//    1 #include "basictype.h"
//    2 #include "gprsProtocol.h"
//    3 #include "string.h"
//    4 #include "common.h"
//    5 #include "sysprintf.h"
//    6 
//    7 
//    8 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function gprsProtocolFrameFill
        THUMB
//    9 int gprsProtocolFrameFill(u_char *pioBuf, u_char ubCmd, u_short uwSeq, const u_char *pcMAC, const u_char *pcData, u_short uwdataL)
//   10 {
gprsProtocolFrameFill:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//   11 	int nFrameL = -1;
//   12 	u_short uwCrc = 0;
//   13 	u_short dataEndPos = 0;
        MOVS     R5,#+0
//   14 	GPRS_PROTOCOL *pFrame = NULL;
//   15 
//   16 	if (NULL == pioBuf)
        CBNZ.N   R4,??gprsProtocolFrameFill_0
//   17 		return -1;
        MOV      R0,#-1
        POP      {R4-R6,PC}
//   18 	pFrame = (GPRS_PROTOCOL *)pioBuf;
//   19 
//   20 	pFrame->ubHead = GPRS_F_HEAD;
??gprsProtocolFrameFill_0:
        MOVS     R0,#+126
        STRB     R0,[R4, #+0]
//   21 	pFrame->ubSyn = GPRS_F_SYN_CMD;
        MOVS     R0,#+14
        STRB     R0,[R4, #+1]
//   22 	pFrame->ubCmd = ubCmd;
        STRB     R1,[R4, #+2]
//   23 	pFrame->ubSeqL = uwSeq&0xff;
        STRB     R2,[R4, #+3]
//   24 	pFrame->ubSeqH = (uwSeq>>8)&0xff;
        LSRS     R0,R2,#+8
        STRB     R0,[R4, #+4]
//   25 	pFrame->ubDataLenL = 0;
        STRB     R5,[R4, #+5]
//   26 	pFrame->ubDataLenH = 0;
        STRB     R5,[R4, #+6]
//   27 	memcpy(pFrame->ubaMac, pcMAC, GPRS_F_MAC_LEN);
        MOVS     R2,#+4
        MOV      R1,R3
        ADDS     R0,R4,#+7
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDR      R1,[SP, #+16]
//   28 	nFrameL = GPRS_F_COMMON_L;
//   29 
//   30 	if (pcData == NULL || uwdataL == 0)
        CMP      R1,#+0
        ITT      NE 
        LDRNE    R2,[SP, #+20]
        CMPNE    R2,#+0
        BNE.N    ??gprsProtocolFrameFill_1
//   31 	{
//   32 		pFrame->ubDataLenL = GPRS_F_MAC_LEN;
        MOVS     R0,#+4
        STRB     R0,[R4, #+5]
//   33 		pFrame->ubDataLenH = 0x00;
        STRB     R5,[R4, #+6]
        B.N      ??gprsProtocolFrameFill_2
//   34 
//   35 	}
//   36 	else
//   37 	{
//   38 		pFrame->ubDataLenL = (GPRS_F_MAC_LEN + uwdataL)&0xff;
??gprsProtocolFrameFill_1:
        ADDS     R0,R2,#+4
        STRB     R0,[R4, #+5]
//   39 		pFrame->ubDataLenH = ((GPRS_F_MAC_LEN + uwdataL)>>8)&0xff;
//   40 		dataEndPos = uwdataL;
        MOV      R5,R2
        ASRS     R0,R0,#+8
        STRB     R0,[R4, #+6]
//   41 		memcpy(pFrame->ubaData, pcData, uwdataL);
        ADD      R0,R4,#+11
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   42 	}
//   43 	nFrameL += dataEndPos;
??gprsProtocolFrameFill_2:
        ADD      R6,R5,#+11
//   44 
//   45 	uwCrc = cyg_crc16((const u_char *)&pFrame->ubSyn, nFrameL-1);//sub head
        SUBS     R1,R6,#+1
        UXTH     R1,R1
        ADDS     R0,R4,#+1
          CFI FunCall cyg_crc16
        BL       cyg_crc16
//   46 	//pFrame->ubaData[dataEndPos++] = uwCrc&0xff;		//crc L
//   47 	//pFrame->ubaData[dataEndPos++] = (uwCrc>>8)&0xff;//crc H
//   48 	pFrame->ubaData[dataEndPos++] = (uwCrc>>8)&0xff;//crc H
        ADDS     R2,R5,R4
        LSRS     R1,R0,#+8
        STRB     R1,[R2, #+11]
        ADDS     R5,R5,#+1
//   49 	pFrame->ubaData[dataEndPos++] = uwCrc&0xff;		//crc L
        UXTH     R5,R5
        ADDS     R1,R5,R4
        STRB     R0,[R1, #+11]
//   50 
//   51 	
//   52 	pFrame->ubaData[dataEndPos++] = GPRS_F_END;		//end
        ADDS     R1,R5,#+1
        UXTH     R1,R1
        ADDS     R1,R1,R4
        MOVS     R0,#+127
        STRB     R0,[R1, #+11]
//   53 
//   54 	nFrameL += GPRS_F_CRC_END_LEN;
//   55 
//   56 	//MEM_DUMP(10, "fram", pioBuf, nFrameL);
//   57 
//   58 	return nFrameL;
        ADDS     R0,R6,#+3
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//   59 }
//   60 
//   61 
//   62 
//   63 //#define GPRS_TRAN	0xef
//   64 //#define GPRS_DSC	0xea
//   65 //#define GPRS_SRC	0x1a
//   66 //#define GPRS_EB	0xeb//
//   67 //#define GPRS_DSC1B	0x1b

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function gprsCodeGetOut0xla
        THUMB
//   68 int gprsCodeGetOut0xla(u_char *pbuf, const u_char *pdata, u_short len)
//   69 {
gprsCodeGetOut0xla:
        PUSH     {R3,R4,R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   70 	int i = 0;
//   71 	int j = 0;
        MOVS     R4,#+0
//   72 
//   73 	for (i = 0; i < len; i++)
        CBZ.N    R2,??gprsCodeGetOut0xla_0
//   74 	{
//   75 		if (pdata[i] == GPRS_SRC)
??gprsCodeGetOut0xla_1:
        LDRB     R3,[R1, #+0]
        ADDS     R6,R4,#+1
        CMP      R3,#+26
        BNE.N    ??gprsCodeGetOut0xla_2
//   76 		{
//   77 			pbuf[j++] = GPRS_TRAN;
        MOVS     R3,#+239
        STRB     R3,[R4, R0]
//   78 			pbuf[j++] = GPRS_DSC;
        MOVS     R3,#+234
        B.N      ??gprsCodeGetOut0xla_3
//   79 		}
//   80 		else if (pdata[i] == GPRS_TRAN)
??gprsCodeGetOut0xla_2:
        CMP      R3,#+239
        IT       EQ 
        STRBEQ   R3,[R4, R0]
//   81 		{
//   82 			pbuf[j++] = GPRS_TRAN;
//   83 			pbuf[j++] = GPRS_TRAN;			
        BEQ.N    ??gprsCodeGetOut0xla_3
//   84 		}
//   85 		
//   86 		else if (pdata[i] == GPRS_DSC1B)
        CMP      R3,#+27
        BNE.N    ??gprsCodeGetOut0xla_4
//   87 		{
//   88 			pbuf[j++] = GPRS_TRAN;
        MOVS     R3,#+239
        STRB     R3,[R4, R0]
//   89 			pbuf[j++] = GPRS_EB;				
        MOVS     R3,#+235
??gprsCodeGetOut0xla_3:
        STRB     R3,[R6, R0]
        ADDS     R4,R6,#+1
        B.N      ??gprsCodeGetOut0xla_5
//   90 		}
//   91 
//   92 		else
//   93 		{
//   94 			pbuf[j++] = pdata[i];
??gprsCodeGetOut0xla_4:
        STRB     R3,[R4, R0]
        MOV      R4,R6
//   95 		}
//   96 	}
??gprsCodeGetOut0xla_5:
        ADDS     R1,R1,#+1
        SUBS     R2,R2,#+1
        BNE.N    ??gprsCodeGetOut0xla_1
//   97 
//   98 	XPRINTF((6, "CODE 0X1A\n"));
??gprsCodeGetOut0xla_0:
        ADR.W    R1,?_0
        MOVS     R0,#+6
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//   99 	return j;
        MOV      R0,R4
        POP      {R1,R4,R6,PC}    ;; return
          CFI EndBlock cfiBlock1
//  100 }
//  101 
//  102 
//  103 //#define GPRS_TRAN	0xef
//  104 //#define GPRS_DSC	0xea
//  105 //#define GPRS_SRC	0x1a

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function gprsDecodeFrame
          CFI NoCalls
        THUMB
//  106 int gprsDecodeFrame(u_char *pbuf, const u_char *pdata, u_short len)
//  107 {
gprsDecodeFrame:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  108 	int i = 0;
        MOVS     R3,#+0
//  109 	int j = 0;	
        MOVS     R4,#+0
//  110 
//  111 	for (i = 0; i < len-1; i++)
        SUBS     R5,R2,#+1
        B.N      ??gprsDecodeFrame_0
//  112 	{
//  113 		if (pdata[i]==GPRS_TRAN && (pdata[i+1]==GPRS_DSC || pdata[i+1] == GPRS_TRAN || pdata[i+1] == GPRS_EB))
//  114 		{
//  115 			if (pdata[i+1] == GPRS_DSC)
//  116 			{
//  117 				pbuf[j++] = GPRS_SRC;
//  118 			}
//  119 			else if (pdata[i+1] == GPRS_TRAN)
//  120 			{
//  121 				pbuf[j++] = GPRS_TRAN;
//  122 			}
//  123 			else if (pdata[i+1] == GPRS_EB)
//  124 			{
//  125 				pbuf[j++] = GPRS_DSC1B;	
//  126 			}
//  127 			i = i+1;
//  128 		}
//  129 		else
//  130 		{
//  131 			pbuf[j++] = pdata[i];
??gprsDecodeFrame_1:
        STRB     R6,[R4, R0]
        ADDS     R4,R4,#+1
//  132 		}
??gprsDecodeFrame_2:
        ADDS     R3,R3,#+1
??gprsDecodeFrame_0:
        CMP      R3,R5
        BGE.N    ??gprsDecodeFrame_3
        LDRB     R6,[R3, R1]
        CMP      R6,#+239
        BNE.N    ??gprsDecodeFrame_1
        ADDS     R7,R3,R1
        LDRB     R7,[R7, #+1]
        CMP      R7,#+234
        BEQ.N    ??gprsDecodeFrame_4
        CMP      R7,#+239
        BEQ.N    ??gprsDecodeFrame_5
        CMP      R7,#+235
        BNE.N    ??gprsDecodeFrame_1
        MOVS     R6,#+27
??gprsDecodeFrame_5:
        STRB     R6,[R4, R0]
        ADDS     R4,R4,#+1
        ADDS     R3,R3,#+1
        B.N      ??gprsDecodeFrame_2
??gprsDecodeFrame_4:
        MOVS     R6,#+26
        B.N      ??gprsDecodeFrame_5
//  133 	}
//  134 	pbuf[j++] = pdata[len-1];
??gprsDecodeFrame_3:
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #-1]
        STRB     R1,[R4, R0]
//  135 	return j;
        ADDS     R0,R4,#+1
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  136 }
//  137 
//  138 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function gprsProtocolCheck
        THUMB
//  139 bool gprsProtocolCheck(const u_char *pcFrame)
//  140 {
gprsProtocolCheck:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//  141 	const GPRS_PROTOCOL *pFrame = NULL;
//  142 	const u_char *pcheck = NULL;
//  143 	u_short uwCrcF = 0;
//  144 	u_short uwCrc = 0;
//  145 	u_short uwLen = 0;
//  146 
//  147 	if (pcFrame == NULL)
        BEQ.N    ??gprsProtocolCheck_0
//  148 		return false;
//  149 
//  150 	pFrame = (const GPRS_PROTOCOL *)pcFrame;
//  151 
//  152 	//head error
//  153 	if (pFrame->ubHead != GPRS_F_HEAD && pFrame->ubSyn != GPRS_F_SYN_CMD)
        LDRB     R0,[R4, #+0]
        CMP      R0,#+126
        ITT      NE 
        LDRBNE   R0,[R4, #+1]
        CMPNE    R0,#+14
        BNE.N    ??gprsProtocolCheck_0
//  154 		return false;
//  155 
//  156 	//crc error
//  157 	//total length
//  158 	uwLen = (pFrame->ubDataLenL | (pFrame->ubDataLenH << 8)) + GPRS_F_FIX_LEN;
        LDRB     R0,[R4, #+5]
        LDRB     R1,[R4, #+6]
        ORR      R0,R0,R1, LSL #+8
        ADD      R6,R0,#+10
        UXTH     R6,R6
//  159 	XPRINTF((12, "UWLEN = %04x\n", uwLen));
        MOV      R2,R6
        ADR.W    R1,?_1
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  160 	pcheck = (pcFrame+uwLen-GPRS_F_CRC_END_LEN);
        ADDS     R7,R6,R4
        SUBS     R5,R7,#+3
//  161 	uwCrcF = (pcheck[0]<<8) | (pcheck[1]);
        LDRB     R0,[R5, #+0]
        LDRB     R1,[R5, #+1]
        ORR      R5,R1,R0, LSL #+8
//  162 	//uwCrcF = (pcheck[1]<<8) | pcheck[0];
//  163 	uwCrc = cyg_crc16((const u_char *)&pFrame->ubSyn, uwLen-4);//sub head
        SUBS     R1,R6,#+4
        UXTH     R1,R1
        ADDS     R0,R4,#+1
          CFI FunCall cyg_crc16
        BL       cyg_crc16
        MOV      R4,R0
//  164 
//  165 	XPRINTF((12, "uwCRCF = %04x uwCRC = %04x\n", uwCrcF, uwCrc));
        MOV      R3,R4
        MOV      R2,R5
        ADR.W    R1,?_2
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  166 	if ( uwCrcF != uwCrc)
        CMP      R5,R4
        BNE.N    ??gprsProtocolCheck_0
//  167 	{
//  168 		return false;
//  169 	}
//  170 
//  171 	//check frame end
//  172 	pcheck = (pcFrame+uwLen-1);
        SUBS     R5,R7,#+1
//  173 	XPRINTF((12, "endf = %02x\n", pcheck[0]));
        ADR.W    R1,?_3
        LDRB     R2,[R5, #+0]
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  174 	if (pcheck[0] != GPRS_F_END)
        LDRB     R0,[R5, #+0]
        CMP      R0,#+127
        BEQ.N    ??gprsProtocolCheck_1
//  175 	{
//  176 		return false;
??gprsProtocolCheck_0:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
//  177 	}
//  178 
//  179 	return true;
??gprsProtocolCheck_1:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock3
//  180 }
//  181 
//  182 
//  183 
//  184 
//  185 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function gprsProtocolFindHead
          CFI NoCalls
        THUMB
//  186 const u_char *gprsProtocolFindHead(const u_char *pcFrame, u_short dataLen)
//  187 {
gprsProtocolFindHead:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  188 	//const GPRS_PROTOCOL *pFrame = NULL;
//  189 	const u_char *pHead = pcFrame;
//  190 	const u_char *pFrameHead = NULL;
        MOVS     R2,#+0
//  191 	int i = 0;
        MOVS     R3,#+0
//  192 
//  193 	if (pcFrame == NULL)
        CBNZ.N   R0,??gprsProtocolFindHead_0
//  194 	{
//  195 		return NULL;
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  196 	}
//  197 
//  198 	for (i = 0 ; i < dataLen ; i++)
??gprsProtocolFindHead_1:
        ADDS     R3,R3,#+1
??gprsProtocolFindHead_0:
        CMP      R3,R1
        BGE.N    ??gprsProtocolFindHead_2
//  199 	{
//  200 		if (pHead[i] == GPRS_F_HEAD && pHead[i+1] == GPRS_F_SYN_CMD)
        LDRB     R4,[R3, R0]
        CMP      R4,#+126
        ITTT     EQ 
        ADDEQ    R4,R3,R0
        LDRBEQ   R4,[R4, #+1]
        CMPEQ    R4,#+14
        BNE.N    ??gprsProtocolFindHead_1
//  201 		{
//  202 			pFrameHead = &pHead[i];
        ADDS     R2,R3,R0
//  203  			break;
//  204 		}
//  205 	}
//  206 
//  207 	return pFrameHead;
??gprsProtocolFindHead_2:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  208 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_0:
        DC8 "CODE 0X1A\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "UWLEN = %04x\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "uwCRCF = %04x uwCRC = %04x\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "endf = %02x\012"
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
//  209 
//  210 
//  211 
//  212 
//  213 
//  214 
// 
// 490 bytes in section .text
// 
// 490 bytes of CODE memory
//
//Errors: none
//Warnings: none
