///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\utility.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\utility.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\utility.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_memset4
        EXTERN isxdigit
        EXTERN strlen
        EXTERN toupper

        PUBLIC Asc2BCD
        PUBLIC Asc2Int
        PUBLIC Asc2IntN
        PUBLIC Asc2_OneByteBCD
        PUBLIC AscBcd2BcdHex
        PUBLIC AscBcd2Int
        PUBLIC Bcd2Float
        PUBLIC Bcd2Int
        PUBLIC Bin2Int
        PUBLIC Byte2Hex
        PUBLIC CRC16
        PUBLIC CRC8
        PUBLIC CharToValue
        PUBLIC GetNibble
        PUBLIC Hex2Bin
        PUBLIC Hex2Byte
        PUBLIC Hex2Int
        PUBLIC Hex2Longlong
        PUBLIC Int2BCD
        PUBLIC IsHexChar
        PUBLIC Long2Hex
        PUBLIC SetNibble
        PUBLIC SetNodeID
        PUBLIC TwoCharToByte
        PUBLIC Word2Hex
        PUBLIC ascHex2hex
        PUBLIC strncmp_nocase
        PUBLIC strupr
        PUBLIC upperHEX
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\utility.c
//    1 #include <ctype.h>
//    2 #include "basictype.h"
//    3 #include "utility.h"
//    4 #include <string.h>
//    5 
//    6 
//    7 #include "sysprintf.h"
//    8 
//    9 /////////////////////////////////////////////////////////////////////////
//   10 #define FLOAT_FORMAT_NUL  0
//   11 #define FLOAT_FORMAT_6_2  1
//   12 #define FLOAT_FORMAT_3_0  2
//   13 #define FLOAT_FORMAT_3_1  3
//   14 #define FLOAT_FORMAT_3_2  4
//   15 #define FLOAT_FORMAT_3_3  5
//   16 #define FLOAT_FORMAT_2_2  6
//   17 #define FLOAT_FORMAT_2_3  7
//   18 #define FLOAT_FORMAT_2_4  8
//   19 #define FLOAT_FORMAT_1_3  9
//   20 #define FLOAT_FORMAT_6_4  10
//   21 #define FLOAT_FORMAT_24T  11 //2_4Time
//   22 //add new format 
//   23 #define	FLOAT_FORMAT_4_2  12 //XXXX.XX
//   24 #define	FLOAT_FORMAT_4_0  13 //XXXX
//   25 #define	FLOAT_FORMAT_8_0  14 //MMDDhhmm
//   26 #define FLOAT_FORMAT_6_0  15 //XXXXXX
//   27 #define	FLOAT_FORMAT_2_0  16 //xx
//   28 #define FLOAT_FORMAT_10_0 17 //YYMMDDhhmm
//   29 
//   30 #define FLOAT_FORMAT_PULS 20
//   31 
//   32 
//   33 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   34 const char *upperHEX = "0123456789ABCDEF";
upperHEX:
        DATA
        DC32 ?_0
//   35 //static const char *lowerHEX = "0123456789abcdef";
//   36 
//   37 
//   38 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function strupr
        THUMB
//   39 void strupr(char*str)
//   40 {
strupr:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        B.N      ??strupr_0
//   41 	while(*str)
//   42 	{
//   43 		*str = toupper(*str);
??strupr_1:
          CFI FunCall toupper
        BL       toupper
        STRB     R0,[R4], #+1
//   44 		str++;
//   45 	}
??strupr_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??strupr_1
//   46 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   47 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function strncmp_nocase
        THUMB
//   48 int strncmp_nocase(const char*str1,const char*str2,int n)
//   49 {
strncmp_nocase:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R5,R1
        MOV      R6,R2
        B.N      ??strncmp_nocase_0
//   50 	char c1,c2;
//   51 	
//   52 	while(n)
//   53 	{// becare: code page depended, like GBK (page 936)
//   54 		c1=toupper(*str1++);
??strncmp_nocase_1:
        LDRB     R0,[R4], #+1
          CFI FunCall toupper
        BL       toupper
        UXTB     R7,R0
//   55 		c2=toupper(*str2++);
        LDRB     R0,[R5], #+1
          CFI FunCall toupper
        BL       toupper
        UXTB     R0,R0
//   56 		if(c1 == 0 || c2 == 0 || c1 != c2)
        CBZ.N    R7,??strncmp_nocase_2
        CBZ.N    R0,??strncmp_nocase_2
        CMP      R7,R0
        BNE.N    ??strncmp_nocase_2
//   57 			break;
//   58 		n--;
        SUBS     R6,R6,#+1
//   59 	}
??strncmp_nocase_0:
        CMP      R6,#+0
        BNE.N    ??strncmp_nocase_1
//   60 	
//   61 	if(n == 0)
//   62 		return 0;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
//   63 	return c1-c2;
??strncmp_nocase_2:
        SUBS     R0,R7,R0
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock1
//   64 }
//   65 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function SetNibble
          CFI NoCalls
        THUMB
//   66 void SetNibble(u_char *pBuf,int nIndex,u_char bNib)
//   67 {
//   68 	int nBase = nIndex/2;
SetNibble:
        ADD      R3,R1,R1, LSR #+31
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        ASRS     R3,R3,#+1
//   69 	u_char bTmp = pBuf[nBase];
//   70 	
//   71 	if(nIndex&0x01) bTmp = (bTmp&0x0f)|(bNib<<4);
        LSLS     R1,R1,#+31
        LDRB     R4,[R3, R0]
        ITTE     MI 
        ANDMI    R1,R4,#0xF
        ORRMI    R4,R1,R2, LSL #+4
        BFIPL    R4,R2,#+0,#+4
//   72 	else bTmp = (bTmp&0xf0)|(bNib&0x0f);
//   73 	
//   74 	pBuf[nBase] = bTmp;
        STRB     R4,[R3, R0]
//   75 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   76 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function GetNibble
          CFI NoCalls
        THUMB
//   77 u_char GetNibble(const u_char *pBuf,u_short nIndex)
//   78 {
//   79 	u_char bNib;
//   80 	int nBase = nIndex/2;
//   81 	u_char bTmp = pBuf[nBase];
GetNibble:
        LSRS     R2,R1,#+1
//   82 	
//   83 	if(nIndex&0x01) bNib = bTmp>>4;
        LSLS     R1,R1,#+31
        LDRB     R0,[R2, R0]
        BPL.N    ??GetNibble_0
        LSRS     R0,R0,#+4
        BX       LR
//   84 	else bNib = bTmp&0x0f;
??GetNibble_0:
        AND      R0,R0,#0xF
//   85 	
//   86 	return bNib;
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   87 }
//   88 
//   89 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Hex2Int
          CFI NoCalls
        THUMB
//   90 u_long Hex2Int(const char*szHex)
//   91 {
Hex2Int:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   92 	u_long hex = 0;
        MOVS     R1,#+0
//   93 	const char*p = szHex;
        B.N      ??Hex2Int_0
//   94 
//   95 	while(*p && isxdigit(*p))
//   96 	{
//   97 		hex <<= 4;
//   98 		if(isdigit(*p) ) hex |= (*p) & 0x0f;
??Hex2Int_1:
        AND      R2,R2,#0xF
        ORR      R1,R2,R1, LSL #+4
//   99 		else hex |= ((*p) - ('A' - 0x3a)) &0x0f;
//  100 		p++;
        ADDS     R0,R0,#+1
??Hex2Int_0:
        LDRB     R3,[R0, #+0]
        CBZ.N    R3,??Hex2Int_2
        MOV      R2,R3
        SUB      R5,R2,#+97
        CMP      R5,#+6
        ITTTT    CS 
        SUBCS    R5,R2,#+65
        CMPCS    R5,#+6
        SUBCS    R4,R2,#+48
        CMPCS    R4,#+10
        BCS.N    ??Hex2Int_2
        SUBS     R3,R3,#+48
        CMP      R3,#+10
        IT       CS 
        SUBCS    R2,R2,#+7
        B.N      ??Hex2Int_1
//  101 	}
//  102 	return hex;
??Hex2Int_2:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  103 }
//  104 
//  105 
//  106 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Hex2Byte
        THUMB
//  107 u_char Hex2Byte(const char*szHex)
//  108 {
Hex2Byte:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//  109 	u_char hex = 0;
        MOVS     R5,#+0
//  110 	
//  111 	if(isxdigit(szHex[0]))
        LDRB     R6,[R4, #+0]
        MOV      R0,R6
          CFI FunCall isxdigit
        BL       isxdigit
        CBZ.N    R0,??Hex2Byte_0
//  112 	{
//  113 		if(isdigit(szHex[0]) ) hex = szHex[0] & 0x0f;
        SUB      R0,R6,#+48
        CMP      R0,#+10
        ITEE     CC 
        ANDCC    R5,R6,#0xF
        SUBCS    R0,R6,#+7
        ANDCS    R5,R0,#0xF
//  114 		else hex = (szHex[0] - ('A' - 0x3a)) &0x0f;
//  115 	}
//  116 	
//  117 	if(isxdigit(szHex[1]))
??Hex2Byte_0:
        LDRB     R4,[R4, #+1]
        MOV      R0,R4
          CFI FunCall isxdigit
        BL       isxdigit
        CBZ.N    R0,??Hex2Byte_1
//  118 	{
//  119 		hex <<= 4;
//  120 		if(isdigit(szHex[1]) ) hex |= szHex[1] & 0x0f;
        SUB      R1,R4,#+48
        CMP      R1,#+10
        ITEE     CC 
        ANDCC    R1,R4,#0xF
        SUBCS    R1,R4,#+7
        ANDCS    R1,R1,#0xF
//  121 		else hex |= (szHex[1] - ('A' - 0x3a)) &0x0f;
        ORR      R5,R1,R5, LSL #+4
//  122 	}
//  123 	
//  124 	return hex;
??Hex2Byte_1:
        MOV      R0,R5
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock5
//  125 }
//  126 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function Hex2Bin
          CFI FunCall Hex2Byte
        THUMB
//  127 u_char Hex2Bin(const char szHex[2])
//  128 {
//  129 	return Hex2Byte(szHex);
Hex2Bin:
        B.N      Hex2Byte
          CFI EndBlock cfiBlock6
//  130 }
//  131 
//  132 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function Byte2Hex
          CFI NoCalls
        THUMB
//  133 void Byte2Hex(char *szoBuf,u_char biDat)
//  134 {//inet_addr(CONST char * str)
//  135 	extern const char *upperHEX;
//  136 	szoBuf[0] = upperHEX[(biDat>>4)&0x0f];
Byte2Hex:
        LDR.N    R2,??DataTable6
        LDR      R3,[R2, #+0]
        LSR      R12,R1,#+4
//  137 	szoBuf[1] = upperHEX[(biDat>>0)&0x0f];
        AND      R1,R1,#0xF
        LDRB     R3,[R12, R3]
        STRB     R3,[R0, #+0]
        LDR      R2,[R2, #+0]
        LDRB     R1,[R1, R2]
        STRB     R1,[R0, #+1]
//  138 	szoBuf[2] = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//  139 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  140 
//  141 
//  142 
//  143 
//  144 
//  145 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function Word2Hex
          CFI NoCalls
        THUMB
//  146 void Word2Hex(char *szoBuf,u_short wiDat)
//  147 {
Word2Hex:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  148 	Byte2Hex(szoBuf,wiDat>>8);
        LDR.N    R2,??DataTable6
        LDR      R4,[R2, #+0]
        LSRS     R3,R1,#+8
        LSRS     R5,R3,#+4
        AND      R3,R3,#0xF
        LDRB     R4,[R5, R4]
        STRB     R4,[R0, #+0]
//  149 	Byte2Hex(szoBuf+2,wiDat&0xff);
        UXTB     R1,R1
        LDR      R4,[R2, #+0]
        LDRB     R3,[R3, R4]
        STRB     R3,[R0, #+1]
        LSRS     R4,R1,#+4
        MOVS     R3,#+0
        STRB     R3,[R0, #+2]
        AND      R1,R1,#0xF
        LDR      R3,[R2, #+0]
        LDRB     R3,[R4, R3]
        STRB     R3,[R0, #+2]!
        LDR      R2,[R2, #+0]
        LDRB     R1,[R1, R2]
        STRB     R1,[R0, #+1]
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//  150 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     upperHEX
//  151 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function Long2Hex
        THUMB
//  152 void Long2Hex(char *szoBuf,u_long dwiDat)
//  153 {
Long2Hex:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R5,R1
        MOV      R4,R0
//  154 	Word2Hex(szoBuf,dwiDat>>16);
        LSRS     R1,R5,#+16
          CFI FunCall Word2Hex
        BL       Word2Hex
//  155 	Word2Hex(szoBuf+4,dwiDat&0xffff);
        UXTH     R1,R5
        ADDS     R0,R4,#+4
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall Word2Hex
        B.N      Word2Hex
          CFI EndBlock cfiBlock9
//  156 }
//  157 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function Hex2Longlong
          CFI NoCalls
        THUMB
//  158 u_longlong Hex2Longlong(const char*szHex)
//  159 {
Hex2Longlong:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOV      R4,R0
//  160 	u_longlong hex = 0;
        MOVS     R0,#+0
        MOVS     R1,#+0
//  161 	const char*p = szHex;
        B.N      ??Hex2Longlong_0
//  162 
//  163 	while(isxdigit(*p))
//  164 	{
//  165 		hex <<= 4;
//  166 		if(isdigit(*p) ) hex |= (*p) & 0x0f;
??Hex2Longlong_1:
        AND      R2,R2,#0xF
        ORR      R0,R2,R0, LSL #+4
//  167 		else hex |= ((*p) - ('A' - 0x3a)) &0x0f;
//  168 		p++;
        ADDS     R4,R4,#+1
??Hex2Longlong_0:
        LDRB     R3,[R4, #+0]
        MOV      R2,R3
        SUB      R6,R2,#+97
        CMP      R6,#+6
        ITTTT    CS 
        SUBCS    R6,R2,#+65
        CMPCS    R6,#+6
        SUBCS    R5,R2,#+48
        CMPCS    R5,#+10
        BCC.N    ??Hex2Longlong_2
//  169 	}
//  170 	return hex;
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R6 Frame(CFA, -4)
          CFI CFA R13+12
??Hex2Longlong_2:
        LSLS     R1,R1,#+4
        SUBS     R3,R3,#+48
        CMP      R3,#+10
        ORR      R1,R1,R0, LSR #+28
        IT       CS 
        SUBCS    R2,R2,#+7
        B.N      ??Hex2Longlong_1
          CFI EndBlock cfiBlock10
//  171 }
//  172 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function Bin2Int
          CFI NoCalls
        THUMB
//  173 u_long Bin2Int(const char*szBin)
//  174 {
//  175 	u_long Int = 0;
Bin2Int:
        MOVS     R1,#+0
//  176 	const char*p = szBin;
        B.N      ??Bin2Int_0
//  177 
//  178 	while(isxdigit(*p))
//  179 	{
//  180 		Int <<= 1;
??Bin2Int_1:
        LSLS     R1,R1,#+1
//  181 		if(*p == '1' || *p == '0' ) 
        CMP      R2,#+49
        ITEE     NE 
        CMPNE    R2,#+48
        ANDEQ    R2,R2,#0x1
        ORREQ    R1,R2,R1
//  182 			Int |= (*p) & 0x01;
//  183 		p++;
        ADDS     R0,R0,#+1
//  184 	}
??Bin2Int_0:
        LDRB     R2,[R0, #+0]
        SUB      R12,R2,#+97
        CMP      R12,#+6
        ITTTT    CS 
        SUBCS    R12,R2,#+65
        CMPCS    R12,#+6
        SUBCS    R3,R2,#+48
        CMPCS    R3,#+10
        BCC.N    ??Bin2Int_1
//  185 	return Int;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  186 }
//  187 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function Asc2IntN
        THUMB
//  188 int Asc2IntN(const char*szAscNum,int nLength)
//  189 {
Asc2IntN:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  190 	int nResult=0;
//  191 	int sig_f=0;
        MOVS     R5,#+0
        MOV      R0,R1
        MOVS     R7,#+0
//  192 	int nCount = 0;
        MOV      R6,R5
//  193 
//  194 	if(nLength == 0)
        CBNZ.N   R0,??Asc2IntN_0
//  195 		nLength = strlen(szAscNum);
        MOV      R0,R4
          CFI FunCall strlen
        BL       strlen
//  196 	
//  197 	if(szAscNum[0] == '-')
??Asc2IntN_0:
        LDRB     R1,[R4, #+0]
        CMP      R1,#+45
        BNE.N    ??Asc2IntN_1
//  198 	{
//  199 		sig_f = 1;
        MOVS     R5,#+1
//  200 		nCount++;
        MOVS     R6,#+1
        B.N      ??Asc2IntN_1
//  201 	}
//  202 
//  203 	
//  204 	while(isdigit(szAscNum[nCount]) && nCount<nLength)
//  205 	{
//  206 		nResult *= 10;
//  207 		nResult += szAscNum[nCount++] & 0x0f;
??Asc2IntN_2:
        ADD      R2,R7,R7, LSL #+2
        AND      R1,R1,#0xF
        ADD      R7,R1,R2, LSL #+1
        ADDS     R6,R6,#+1
//  208 	}
??Asc2IntN_1:
        LDRB     R1,[R6, R4]
        SUB      R2,R1,#+48
        CMP      R2,#+10
        BCS.N    ??Asc2IntN_3
        CMP      R6,R0
        BLT.N    ??Asc2IntN_2
//  209 
//  210 	if(sig_f)
??Asc2IntN_3:
        CBZ.N    R5,??Asc2IntN_4
//  211 		nResult = (~nResult) + 1;
        MVNS     R0,R7
        ADDS     R7,R0,#+1
//  212 		
//  213 	return nResult;
??Asc2IntN_4:
        MOV      R0,R7
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock12
//  214 }
//  215 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function Asc2Int
        THUMB
//  216 int Asc2Int(const char*szAscNum)
//  217 {
//  218 	return Asc2IntN(szAscNum,0);
Asc2Int:
        MOVS     R1,#+0
          CFI FunCall Asc2IntN
        B.N      Asc2IntN
          CFI EndBlock cfiBlock13
//  219 }
//  220 
//  221 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function AscBcd2Int
        THUMB
//  222 u_long AscBcd2Int(const char*szBcdNum,int nLength)
//  223 {
AscBcd2Int:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R6,R0
        MOV      R4,R1
//  224 	int i;
//  225 	u_long hex = 0;
        MOVS     R7,#+0
//  226 	if(nLength == 0)
        CBNZ.N   R4,??AscBcd2Int_0
//  227 		nLength = strlen(szBcdNum);
          CFI FunCall strlen
        BL       strlen
        MOV      R4,R0
//  228 
//  229 	//if(nLength>8) 
//  230 	//	nLength = 8;
//  231 
//  232 	for(i = 0; i < nLength && isxdigit(szBcdNum[i]); i++)
??AscBcd2Int_0:
        MOVS     R5,#+0
        B.N      ??AscBcd2Int_1
//  233 	{
//  234 		char ch = toupper(szBcdNum[i]);
//  235 		hex <<= 4;
//  236 		if(isdigit(ch) ) hex |= (ch) & 0x0f;
??AscBcd2Int_2:
        AND      R0,R0,#0xF
        ORR      R7,R0,R7, LSL #+4
        ADDS     R5,R5,#+1
        ADDS     R6,R6,#+1
??AscBcd2Int_1:
        CMP      R5,R4
        BGE.N    ??AscBcd2Int_3
        LDRB     R0,[R6, #+0]
        SUB      R2,R0,#+97
        CMP      R2,#+6
        ITTTT    CS 
        SUBCS    R2,R0,#+65
        CMPCS    R2,#+6
        SUBCS    R1,R0,#+48
        CMPCS    R1,#+10
        BCS.N    ??AscBcd2Int_3
          CFI FunCall toupper
        BL       toupper
        UXTB     R0,R0
        SUB      R2,R0,#+48
        CMP      R2,#+10
        IT       CS 
        SUBCS    R0,R0,#+7
//  237 		else hex |= ((ch) - ('A' - 0x3a)) &0x0f;
        B.N      ??AscBcd2Int_2
//  238 	}
//  239 	return hex;
??AscBcd2Int_3:
        MOV      R0,R7
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock14
//  240 }
//  241 
//  242 #if 1
//  243 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function Asc2_OneByteBCD
        THUMB
//  244 u_char Asc2_OneByteBCD(const u_char*str)
//  245 {
Asc2_OneByteBCD:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  246 	u_char bHex = 0;
//  247 	char c;
//  248 
//  249 	c = toupper(*str++);
        LDRB     R0,[R0, #+0]
        MOVS     R4,#+0
          CFI FunCall toupper
        BL       toupper
        UXTB     R0,R0
//  250 	if(isxdigit(c))
        SUB      R2,R0,#+97
        CMP      R2,#+6
        ITTTT    CS 
        SUBCS    R2,R0,#+65
        CMPCS    R2,#+6
        SUBCS    R1,R0,#+48
        CMPCS    R1,#+10
        BCS.N    ??Asc2_OneByteBCD_0
//  251 	{
//  252 		if(isdigit(c))
        SUB      R1,R0,#+48
        CMP      R1,#+10
        IT       CS 
        SUBCS    R0,R0,#+55
//  253 			bHex = (c&0x0f)<<4;
//  254 		else
//  255 			bHex = (((10+c-'A')&0x0f)<<4);
        LSLS     R0,R0,#+4
        LSLS     R0,R0,#+24
        LSRS     R4,R0,#+28
//  256 	}
//  257 	return (bHex>>4);
??Asc2_OneByteBCD_0:
        MOV      R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock15
//  258 }
//  259 
//  260 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function IsHexChar
          CFI NoCalls
        THUMB
//  261 int IsHexChar(char ch) 
//  262 { 
//  263 	if((ch>='0' && ch<='9') || (ch>='a' && ch<='f') ||(ch>='A' && ch<='F')) 
IsHexChar:
        SUB      R1,R0,#+48
        CMP      R1,#+10
        ITTTT    CS 
        SUBCS    R1,R0,#+97
        CMPCS    R1,#+6
        SUBCS    R0,R0,#+65
        CMPCS    R0,#+6
        BCS.N    ??IsHexChar_0
//  264 		return 1; 
        MOVS     R0,#+1
        BX       LR
//  265 	else 
//  266 		return 0; 
??IsHexChar_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  267 }
//  268 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function CharToValue
          CFI NoCalls
        THUMB
//  269 unsigned char CharToValue(char c) 
//  270 { 
//  271 	if(c>='0' && c<='9') 
CharToValue:
        SUB      R2,R0,#+48
        CMP      R2,#+10
        IT       CC 
        SUBCC    R0,R0,#+48
//  272 	{ 
//  273 		return c-'0'; 
        BCC.N    ??CharToValue_0
//  274 	} 
//  275 	if(c>='A' && c<='F') 
        SUB      R2,R0,#+65
        CMP      R2,#+6
        IT       CC 
        SUBCC    R0,R0,#+55
//  276 	{ 
//  277 		return c-'A'+10; 
        BCC.N    ??CharToValue_0
//  278 	} 
//  279 	if(c>='a' && c<='f') 
        SUB      R1,R0,#+97
        CMP      R1,#+6
        BCS.N    ??CharToValue_1
//  280 	{ 
//  281 		return c-'a'+10; 
        SUBS     R0,R0,#+87
??CharToValue_0:
        UXTB     R0,R0
//  282 	}
//  283 }
??CharToValue_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  284 
//  285 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function TwoCharToByte
          CFI NoCalls
        THUMB
//  286 unsigned char TwoCharToByte(char h,char l) 
//  287 { 
TwoCharToByte:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  288 	return (unsigned char)((CharToValue(h)<<4) + CharToValue(l)); 
        SUB      R5,R0,#+48
        CMP      R5,#+10
        IT       CC 
        SUBCC    R3,R0,#+48
        BCC.N    ??TwoCharToByte_0
        SUB      R5,R0,#+65
        CMP      R5,#+6
        IT       CC 
        SUBCC    R3,R0,#+55
        BCC.N    ??TwoCharToByte_0
        SUB      R2,R0,#+97
        CMP      R2,#+6
        IT       CC 
        SUBCC    R3,R0,#+87
??TwoCharToByte_0:
        SUB      R2,R1,#+48
        CMP      R2,#+10
        IT       CC 
        SUBCC    R4,R1,#+48
        BCC.N    ??TwoCharToByte_1
        SUB      R2,R1,#+65
        CMP      R2,#+6
        IT       CC 
        SUBCC    R4,R1,#+55
        BCC.N    ??TwoCharToByte_1
        SUB      R0,R1,#+97
        CMP      R0,#+6
        IT       CC 
        SUBCC    R4,R1,#+87
??TwoCharToByte_1:
        UXTB     R3,R3
        UXTB     R4,R4
        ADD      R0,R4,R3, LSL #+4
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        UXTB     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  289 }
//  290 
//  291 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function ascHex2hex
        THUMB
//  292 unsigned char ascHex2hex(const char *szHexNum, u_char *pHex, int nLenHex)
//  293 {
ascHex2hex:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        MOV      R6,R0
        SUB      SP,SP,#+36
          CFI CFA R13+56
        MOV      R4,R1
        MOV      R0,R2
//  294 	int nLenData = 0;
//  295 	unsigned char data[16] = {0x00};
        ADD      R1,SP,#+16
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOV      R7,R2
        MOV      R12,R2
        STM      R1!,{R2,R3,R7,R12}
//  296 	unsigned char dataT[16] = {0x00};
        ADD      R1,SP,#+0
        STM      R1!,{R2,R3,R7,R12}
//  297 	int i = 0; 
//  298 
//  299 	if (nLenHex== 0)
        CBNZ.N   R0,??ascHex2hex_0
//  300 	{
//  301 		nLenHex = strlen(szHexNum);
        MOV      R0,R6
          CFI FunCall strlen
        BL       strlen
        B.N      ??ascHex2hex_0
//  302 	}
//  303 
//  304 	//XPRINTF((0, "len is %d\r\n", nLenHex));
//  305 	for (i = 0; i < nLenHex && IsHexChar(szHexNum[i]); i++)
//  306 	{
??ascHex2hex_1:
        SUB      R1,R2,#+97
        CMP      R1,#+6
        IT       CC 
        SUBCC    R5,R2,#+87
//  307 		data[i] = CharToValue(szHexNum[i])&0x0f;
??ascHex2hex_2:
        ADD      R2,SP,#+16
        AND      R1,R5,#0xF
        STRB     R1,[R7, R2]
        ADDS     R7,R7,#+1
??ascHex2hex_0:
        CMP      R7,R0
        BGE.N    ??ascHex2hex_3
        LDRB     R2,[R7, R6]
        SUB      R3,R2,#+48
        CMP      R3,#+10
        ITTTT    CS 
        SUBCS    R1,R2,#+97
        CMPCS    R1,#+6
        SUBCS    R1,R2,#+65
        CMPCS    R1,#+6
        BCS.N    ??ascHex2hex_3
        CMP      R3,#+10
        IT       CC 
        SUBCC    R5,R2,#+48
        BCC.N    ??ascHex2hex_2
        SUB      R3,R2,#+65
        CMP      R3,#+6
        BCS.N    ??ascHex2hex_1
        SUB      R5,R2,#+55
        B.N      ??ascHex2hex_2
//  308 		//PRINTF("%02x ", data[i]);
//  309 	}
//  310 	//MEM_DUMP(0, "dadd", data, nLenHex);
//  311 	if (nLenHex%2 == 0)
??ascHex2hex_3:
        ADD      R1,R0,R0, LSR #+31
        ASRS     R1,R1,#+1
        SUBS     R1,R0,R1, LSL #+1
        BNE.N    ??ascHex2hex_4
//  312 	{
//  313 		nLenData = nLenHex >> 1;
        ASRS     R5,R0,#+1
//  314 		memcpy(dataT, data, nLenHex);
        MOV      R2,R0
        ADD      R1,SP,#+16
        ADD      R0,SP,#+0
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  315 	}
        B.N      ??ascHex2hex_5
//  316 	else 
//  317 	{
//  318 		nLenData = (nLenHex+1) >> 1;
??ascHex2hex_4:
        ADDS     R1,R0,#+1
        ASRS     R5,R1,#+1
//  319 		memcpy(&dataT[1],data, nLenHex);
        MOV      R2,R0
        ADD      R1,SP,#+16
        ADD      R0,SP,#+1
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  320 		
//  321 	}
//  322 	//MEM_DUMP(0, "mDDR", dataT, nLenData<<1);
//  323 	i = 0;
//  324 	//XPRINTF((0," nl %02x\r\n", nLenData));
//  325 	for (i = 0; i < nLenData; i++)
??ascHex2hex_5:
        CMP      R5,#+1
        BLT.N    ??ascHex2hex_6
        ADDS     R1,R5,R4
        SUBS     R1,R1,#+1
        ADD      R2,SP,#+0
        MOV      R3,R5
//  326 	{
//  327 		pHex[nLenData-i-1] = dataT[i*2+1]|((dataT[i*2])<<4); 
??ascHex2hex_7:
        LDRB     R4,[R2, #+1]
        LDRB     R6,[R2], #+2
        ORR      R4,R4,R6, LSL #+4
//  328 	}
        SUBS     R3,R3,#+1
        STRB     R4,[R1], #-1
        BNE.N    ??ascHex2hex_7
//  329 	//MEM_DUMP(0, "ADDR", pHex, nLenData);
//  330 	return nLenData;
??ascHex2hex_6:
        UXTB     R0,R5
        ADD      SP,SP,#+36
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock19
//  331 }
//  332 
//  333 
//  334 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function AscBcd2BcdHex
        THUMB
//  335 u_long AscBcd2BcdHex(const char *szBcdNum, u_char *pBcdHex, int nLenBcd)
//  336 {
AscBcd2BcdHex:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        SUB      SP,SP,#+32
          CFI CFA R13+64
        MOV      R8,R0
        MOV      R4,R1
        MOV      R5,R2
//  337 	int i;
//  338 	int nLenData;
//  339 	u_char ubaBcdHex[32] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOV      R3,R1
        MOV      R6,R1
        STM      R0!,{R1-R3,R6}
        STM      R0!,{R1-R3,R6}
//  340 	u_char *pbuf = NULL;
//  341 
//  342 	if (nLenBcd == 0)
        CBNZ.N   R5,??AscBcd2BcdHex_0
//  343 	{
//  344 		nLenBcd = strlen(szBcdNum);
        MOV      R0,R8
          CFI FunCall strlen
        BL       strlen
        MOV      R5,R0
//  345 	}
//  346 	//PRINTF("nLenBcd is %d \r\n", nLenBcd);
//  347 
//  348 	memset(ubaBcdHex,0x00,32);
??AscBcd2BcdHex_0:
        MOVS     R1,#+32
        ADD      R0,SP,#+0
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  349 	//0123456789....->ubaBcdHex[0]......[i]
//  350 	for (i = 0; i < nLenBcd &&isxdigit(szBcdNum[i]); i++)
        ADD      R7,SP,#+0
        B.N      ??AscBcd2BcdHex_1
??AscBcd2BcdHex_2:
        LSLS     R0,R0,#+24
        LSR      R10,R0,#+28
//  351 	{
//  352 		char ch = toupper(szBcdNum[i]);
//  353 
//  354 		/*
//  355 		if ( isdigit(ch) )
//  356 		{
//  357 			ubaBcdHex[i] = (ch) & 0x0f;
//  358 		}
//  359 		*/
//  360 		ubaBcdHex[i] = Asc2_OneByteBCD((u_char const *)&ch);
??AscBcd2BcdHex_3:
        STRB     R10,[R7], #+1
        ADDS     R6,R6,#+1
        ADD      R8,R8,#+1
??AscBcd2BcdHex_1:
        CMP      R6,R5
        BGE.N    ??AscBcd2BcdHex_4
        LDRB     R0,[R8, #+0]
        SUB      R2,R0,#+97
        CMP      R2,#+6
        ITTTT    CS 
        SUBCS    R2,R0,#+65
        CMPCS    R2,#+6
        SUBCS    R1,R0,#+48
        CMPCS    R1,#+10
        BCS.N    ??AscBcd2BcdHex_4
          CFI FunCall toupper
        BL       toupper
        MOV      R10,#+0
        UXTB     R0,R0
          CFI FunCall toupper
        BL       toupper
        UXTB     R9,R0
        MOV      R0,R9
          CFI FunCall isxdigit
        BL       isxdigit
        CMP      R0,#+0
        BEQ.N    ??AscBcd2BcdHex_3
        SUB      R0,R9,#+48
        CMP      R0,#+10
        ITEE     CC 
        LSLCC    R0,R9,#+4
        SUBCS    R0,R9,#+55
        LSLCS    R0,R0,#+4
        B.N      ??AscBcd2BcdHex_2
//  361 		//PRINTF("ubaBcdHex[i] and I is %02x  %d \r\n", ubaBcdHex[i], i);
//  362 	}
//  363 	
//  364 	if (nLenBcd%2==0)
??AscBcd2BcdHex_4:
        ADD      R0,R5,R5, LSR #+31
        ASRS     R0,R0,#+1
        SUBS     R1,R5,R0, LSL #+1
        BNE.N    ??AscBcd2BcdHex_5
//  365 	{
//  366 		nLenData = nLenBcd >> 1;
        ASRS     R0,R5,#+1
//  367 		pbuf = (u_char*)&ubaBcdHex[0];
        ADD      R3,SP,#+0
        B.N      ??AscBcd2BcdHex_6
//  368 	}
//  369 	else
//  370 	{
//  371 		nLenData = (nLenBcd+1) >> 1;
??AscBcd2BcdHex_5:
        ADDS     R0,R5,#+1
        ASRS     R0,R0,#+1
//  372 		pbuf = (u_char*)&ubaBcdHex[1];
        ADD      R3,SP,#+1
//  373 	}
//  374 
//  375 	//PRINTF("nLenData is %d \r\n", nLenData);
//  376 	
//  377 	for (i = 0; i < nLenData; i++)
??AscBcd2BcdHex_6:
        MOVS     R2,#+0
        CMP      R0,#+1
        BLT.N    ??AscBcd2BcdHex_7
        ADDS     R5,R0,R4
        SUBS     R5,R5,#+2
        SUBS     R6,R0,#+1
//  378 	{
//  379 		if (nLenBcd%2 == 0)
??AscBcd2BcdHex_8:
        CBNZ.N   R1,??AscBcd2BcdHex_9
//  380 		{
//  381 			//pBcdHex[nLenData-i-1] = ubaBcdHex[i*2+1]|((ubaBcdHex[i*2])<<4); 
//  382 			pBcdHex[nLenData-i-1] = pbuf[i*2+1]|((pbuf[i*2])<<4); 
        LDRB     R7,[R3, #+1]
        LDRB     R12,[R3, #+0]
        ORR      R7,R7,R12, LSL #+4
        STRB     R7,[R5, #+1]
        B.N      ??AscBcd2BcdHex_10
//  383 		}
//  384 		else
//  385 		{
//  386 			if (i == nLenData-1)
??AscBcd2BcdHex_9:
        CMP      R2,R6
        BNE.N    ??AscBcd2BcdHex_11
//  387 			{
//  388 				pBcdHex[nLenData-1]=ubaBcdHex[0]|(0<<4);
        LDRB     R7,[SP, #+0]
        ADD      R12,R0,R4
        STRB     R7,[R12, #-1]
        B.N      ??AscBcd2BcdHex_10
//  389 			}
//  390 			else
//  391 			{
//  392 				//pBcdHex[nLenData-i-2] = ubaBcdHex[i*2]|((ubaBcdHex[i*2+1])<<4); 
//  393 				pBcdHex[nLenData-i-2] = pbuf[i*2+1]|((pbuf[i*2])<<4); 
??AscBcd2BcdHex_11:
        LDRB     R7,[R3, #+1]
        LDRB     R12,[R3, #+0]
        ORR      R7,R7,R12, LSL #+4
        STRB     R7,[R5, #+0]
//  394 			}
//  395 		}
//  396 		//PRINTF("pBcdHex[i] and I is %02x  %d\r\n", pBcdHex[i], i);
//  397 	}
??AscBcd2BcdHex_10:
        ADDS     R2,R2,#+1
        ADDS     R3,R3,#+2
        SUBS     R5,R5,#+1
        CMP      R2,R0
        BLT.N    ??AscBcd2BcdHex_8
//  398 
//  399 	return nLenData;
??AscBcd2BcdHex_7:
        ADD      SP,SP,#+32
          CFI CFA R13+32
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock20
//  400 }
//  401 #endif
//  402 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function Asc2BCD
        THUMB
//  403 u_char Asc2BCD(const u_char*str)
//  404 {
Asc2BCD:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R5,R0
//  405 	u_char bHex = 0;
        MOVS     R4,#+0
//  406 	char c;
//  407 
//  408 	c = toupper(*str++);
        LDRB     R0,[R5], #+1
          CFI FunCall toupper
        BL       toupper
        UXTB     R0,R0
//  409 	if(isxdigit(c))
        SUB      R2,R0,#+97
        CMP      R2,#+6
        ITTTT    CS 
        SUBCS    R2,R0,#+65
        CMPCS    R2,#+6
        SUBCS    R1,R0,#+48
        CMPCS    R1,#+10
        BCS.N    ??Asc2BCD_0
//  410 	{
//  411 		if(isdigit(c))
        SUB      R1,R0,#+48
        CMP      R1,#+10
        IT       CS 
        SUBCS    R0,R0,#+55
//  412 			bHex = (c&0x0f)<<4;
//  413 		else
//  414 			bHex = (((10+c-'A')&0x0f)<<4);
        LSLS     R4,R0,#+4
        UXTB     R4,R4
//  415 	}
//  416 	c = toupper(*str++);
??Asc2BCD_0:
        LDRB     R0,[R5, #+0]
          CFI FunCall toupper
        BL       toupper
        UXTB     R0,R0
//  417 	if(isxdigit(c))
        SUB      R2,R0,#+97
        CMP      R2,#+6
        ITTTT    CS 
        SUBCS    R2,R0,#+65
        CMPCS    R2,#+6
        SUBCS    R1,R0,#+48
        CMPCS    R1,#+10
        BCS.N    ??Asc2BCD_1
//  418 	{
//  419 		if(isdigit(c))
        SUB      R1,R0,#+48
        CMP      R1,#+10
        BCS.N    ??Asc2BCD_2
//  420 			bHex |= (c&0x0f);
        AND      R0,R0,#0xF
        ORRS     R4,R0,R4
        B.N      ??Asc2BCD_1
//  421 		else
//  422 			bHex |= 10+((c-'A')&0x0f);
??Asc2BCD_2:
        SUBS     R0,R0,#+65
        AND      R0,R0,#0xF
        ADDS     R0,R0,#+10
        ORRS     R4,R0,R4
        UXTB     R4,R4
//  423 	}
//  424 	return bHex;
??Asc2BCD_1:
        MOV      R0,R4
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock21
//  425 }
//  426 
//  427 
//  428 #if 1
//  429 //cPad: '0','9','A'

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function SetNodeID
        THUMB
//  430 void SetNodeID(u_char*pBuf,char cPad,const char *szMeterID,int nIDLen)
//  431 {
SetNodeID:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R6,R3
//  432 	char ID[13];
//  433 	
//  434 	if(nIDLen > 12) 
        CMP      R6,#+13
        SUB      SP,SP,#+16
          CFI CFA R13+32
        MOV      R4,R0
        MOV      R5,R2
        BLT.N    ??SetNodeID_0
//  435 	{
//  436 		szMeterID += nIDLen-12;
        ADDS     R0,R6,R5
        SUB      R5,R0,#+12
//  437 		nIDLen = 12;
        MOVS     R6,#+12
//  438 	}
//  439 	
//  440 	memset(ID,cPad,12);
??SetNodeID_0:
        MOV      R2,R1
        MOVS     R1,#+12
        ADD      R0,SP,#+0
          CFI FunCall __aeabi_memset4
        BL       __aeabi_memset4
//  441 	ID[12] = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  442 	
//  443 	memcpy(&ID[12-nIDLen],(char*)szMeterID,nIDLen);
        MOV      R2,R6
        ADD      R0,SP,#+0
        SUBS     R0,R0,R6
        MOV      R1,R5
        ADDS     R0,R0,#+12
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  444 	//putstrxy(1,1,ID);
//  445 	//putstr("\r\n");
//  446 	pBuf[0] = Asc2BCD((u_char const *)&ID[10]);
        ADD      R0,SP,#+10
          CFI FunCall Asc2BCD
        BL       Asc2BCD
        STRB     R0,[R4, #+0]
//  447 	pBuf[1] = Asc2BCD((u_char const *)&ID[8]);
        ADD      R0,SP,#+8
          CFI FunCall Asc2BCD
        BL       Asc2BCD
        STRB     R0,[R4, #+1]
//  448 	pBuf[2] = Asc2BCD((u_char const *)&ID[6]);
        ADD      R0,SP,#+6
          CFI FunCall Asc2BCD
        BL       Asc2BCD
        STRB     R0,[R4, #+2]
//  449 	pBuf[3] = Asc2BCD((u_char const *)&ID[4]);
        ADD      R0,SP,#+4
          CFI FunCall Asc2BCD
        BL       Asc2BCD
        STRB     R0,[R4, #+3]
//  450 	pBuf[4] = Asc2BCD((u_char const *)&ID[2]);
        ADD      R0,SP,#+2
          CFI FunCall Asc2BCD
        BL       Asc2BCD
        STRB     R0,[R4, #+4]
//  451 	pBuf[5] = Asc2BCD((u_char const *)&ID[0]);
        ADD      R0,SP,#+0
          CFI FunCall Asc2BCD
        BL       Asc2BCD
        STRB     R0,[R4, #+5]
//  452 }
        ADD      SP,SP,#+16
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock22
//  453 #else
//  454 //cPad: '0','9','A'
//  455 void SetNodeID(u_char*pBuf,char cPad,const char *szMeterID,int nIDLen)
//  456 {
//  457 	char ID[17] = {0};
//  458 
//  459 	//XPRINTF((0,"%s\r\n", szMeterID));
//  460 	
//  461 	if(nIDLen > 16) 
//  462 	{
//  463 		szMeterID += nIDLen-16;
//  464 		nIDLen = 16;
//  465 	}
//  466 	if (nIDLen == 0)
//  467 	{
//  468 		nIDLen = strlen(szMeterID);
//  469 	}
//  470 	XPRINTF((0,"nIDLen is %d\r\n", nIDLen));
//  471 	
//  472 	memset(ID,cPad,16);
//  473 	ID[16] = 0;
//  474 	
//  475 	memcpy(&ID[16-nIDLen],(char*)szMeterID,nIDLen);
//  476 //	memcpy(&ID[0],(char*)szMeterID,nIDLen);
//  477 	//putstrxy(1,1,ID);
//  478 	//putstr("\r\n");
//  479 	pBuf[0] = Asc2BCD(&ID[14]);
//  480 	pBuf[1] = Asc2BCD(&ID[12]);
//  481 	pBuf[2] = Asc2BCD(&ID[10]);
//  482 	pBuf[3] = Asc2BCD(&ID[8]);
//  483 	pBuf[4] = Asc2BCD(&ID[6]);
//  484 	pBuf[5] = Asc2BCD(&ID[4]);
//  485 	pBuf[6] = Asc2BCD(&ID[2]);
//  486 	pBuf[7] = Asc2BCD(&ID[0]);
//  487 }
//  488 
//  489 #endif
//  490 
//  491 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function Bcd2Int
          CFI NoCalls
        THUMB
//  492 u_long Bcd2Int(const u_char*pBcdNum,int nLength)
//  493 {
Bcd2Int:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  494 	int i;
//  495 	u_long hex = 0;
        MOVS     R2,#+0
//  496 	for(i = 0; i < nLength && (pBcdNum[i]&0x0f)<=0x09 && (pBcdNum[i]&0xf0)<=0x90; i++)
        MOVS     R3,#+0
        B.N      ??Bcd2Int_0
//  497 	{
//  498 		hex <<= 8;
//  499 		hex |= (pBcdNum[i]&0x0f)+(pBcdNum[i]>>4)*10;
??Bcd2Int_1:
        LSRS     R5,R6,#+4
        ADD      R6,R5,R5, LSL #+2
        ADD      R4,R4,R6, LSL #+1
        ORR      R2,R4,R2, LSL #+8
//  500 	}
        ADDS     R3,R3,#+1
        ADDS     R0,R0,#+1
??Bcd2Int_0:
        CMP      R3,R1
        ITTT     LT 
        LDRBLT   R6,[R0, #+0]
        ANDLT    R4,R6,#0xF
        CMPLT    R4,#+10
        ITT      LT 
        ANDLT    R5,R6,#0xF0
        CMPLT    R5,#+145
        BLT.N    ??Bcd2Int_1
//  501 	return hex;
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  502 }
//  503 
//  504 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function Bcd2Float
          CFI NoCalls
        THUMB
//  505 float Bcd2Float(char *szBuf,u_char*pBCD,int nFmt)
//  506 {
Bcd2Float:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  507 	// 12345678
//  508 	float fResult = 0.0;
//  509 	char fmt[16];
//  510 	char szaBuf[16];
//  511 	//char *szaBuf = szBuf ? szBuf : szaBuf;
//  512 	if(pBCD[0] != 0xEE && pBCD[0] != 0xFF)
        LDRB     R3,[R1, #+0]
        CMP      R3,#+238
        IT       NE 
        CMPNE    R3,#+255
        BEQ.N    ??Bcd2Float_0
//  513 	{
//  514 		switch(nFmt)
        CMP      R2,#+20
        ITT      EQ 
        MOVEQ    R2,#+5
        BLEQ     __aeabi_memcpy
//  515 		{
//  516 		case FLOAT_FORMAT_6_2:
//  517 			szaBuf[0] = (pBCD[3]>>4)  |0x30;
//  518 			szaBuf[1] = (pBCD[3]&0x0f)|0x30;
//  519 			szaBuf[2] = (pBCD[2]>>4)  |0x30;
//  520 			szaBuf[3] = (pBCD[2]&0x0f)|0x30;
//  521 			szaBuf[4] = (pBCD[1]>>4)  |0x30;
//  522 			szaBuf[5] = (pBCD[1]&0x0f)|0x30;
//  523 			szaBuf[6] = '.';
//  524 			szaBuf[7] = (pBCD[0]>>4)  |0x30;
//  525 			szaBuf[8] = (pBCD[0]&0x0f)|0x30;
//  526 			szaBuf[9] = 0;
//  527 			break;
//  528 		case FLOAT_FORMAT_6_4:
//  529 #if 0
//  530 			17:35:52 |Terminal:[4510-00021]
//  531 			17:35:52 |<--- 51  : 68 AE 00 AE 00 68 88 10 45 15 00 00 0C 6C 20 01 ;h....h..E....l .
//  532 				|         : 01 10 35 17 25 01 14 04 00 79 92 00 00 00 00 00 ;..5.%....y......
//  533 				|         : 00 00 00 97 32 00 00 00 88 45 00 00 00 94 13 00 ;....2....E......
//  534 				|         : 00 6E 16                                        ;.n.
//  535 				17:35:52 |总: 0.93
//  536 				17:35:52 |尖: 0.00
//  537 				17:35:52 |峰: 0.33
//  538 				17:35:52 |平: 0.46
//  539 				17:35:52 |谷: 6.00
//  540 #endif
//  541 			szaBuf[0]  = (pBCD[4]>>4)  |0x30;
//  542 			szaBuf[1]  = (pBCD[4]&0x0f)|0x30;
//  543 			szaBuf[2]  = (pBCD[3]>>4)  |0x30;
//  544 			szaBuf[3]  = (pBCD[3]&0x0f)|0x30;
//  545 			szaBuf[4]  = (pBCD[2]>>4)  |0x30;
//  546 			szaBuf[5]  = (pBCD[2]&0x0f)|0x30;
//  547 			szaBuf[6]  = '.';
//  548 			szaBuf[7]  = (pBCD[1]>>4)  |0x30;
//  549 			szaBuf[8]  = (pBCD[1]&0x0f)|0x30;
//  550 			szaBuf[9]  = (pBCD[0]>>4)  |0x30;
//  551 			szaBuf[10] = (pBCD[0]&0x0f)|0x30;
//  552 			szaBuf[11] = 0;
//  553 			break;
//  554 		case FLOAT_FORMAT_3_0:
//  555 			//20 02
//  556 			szaBuf[0] = (pBCD[1]&0x0f)|0x30;
//  557 			szaBuf[1] = (pBCD[0]>>4)  |0x30;
//  558 			szaBuf[2] = (pBCD[0]&0x0f)|0x30;
//  559 			szaBuf[3] = 0;
//  560 			break;
//  561 		case FLOAT_FORMAT_3_1:
//  562 			szaBuf[0] = (pBCD[1]>>4)  |0x30;
//  563 			szaBuf[1] = (pBCD[1]&0x0f)|0x30;
//  564 			szaBuf[2] = (pBCD[0]>>4)  |0x30;
//  565 			szaBuf[3] = '.';
//  566 			szaBuf[4] = (pBCD[0]&0x0f)|0x30;
//  567 			szaBuf[5] = 0;
//  568 			break;
//  569 		case FLOAT_FORMAT_3_2:
//  570 			szaBuf[0] = (pBCD[2]&0x0f)|0x30;
//  571 			szaBuf[1] = (pBCD[1]>>4)  |0x30;
//  572 			szaBuf[2] = (pBCD[1]&0x0f)|0x30;
//  573 			szaBuf[3] = '.';
//  574 			szaBuf[4] = (pBCD[0]>>4)  |0x30;
//  575 			szaBuf[5] = (pBCD[0]&0x0f)|0x30;
//  576 			szaBuf[6] = 0;
//  577 			break;
//  578 		case FLOAT_FORMAT_3_3:
//  579 			szaBuf[0] = (pBCD[2]>>4)  |0x30;
//  580 			szaBuf[1] = (pBCD[2]&0x0f)|0x30;
//  581 			szaBuf[2] = (pBCD[1]>>4)  |0x30;
//  582 			szaBuf[3] = '.';
//  583 			szaBuf[4] = (pBCD[1]&0x0f)|0x30;
//  584 			szaBuf[5] = (pBCD[0]>>4)  |0x30;
//  585 			szaBuf[6] = (pBCD[0]&0x0f)|0x30;
//  586 			szaBuf[7] = 0;
//  587 			break;
//  588 		case FLOAT_FORMAT_2_2:
//  589 			szaBuf[0] = (pBCD[1]>>4)  |0x30;
//  590 			szaBuf[1] = (pBCD[1]&0x0f)|0x30;
//  591 			szaBuf[2] = '.';
//  592 			szaBuf[3] = (pBCD[0]>>4)  |0x30;
//  593 			szaBuf[4] = (pBCD[0]&0x0f)|0x30;
//  594 			szaBuf[5] = 0;
//  595 			break;
//  596 		case FLOAT_FORMAT_2_3:
//  597 			szaBuf[0] = (pBCD[2]&0x0f)|0x30;
//  598 			szaBuf[1] = (pBCD[1]>>4)  |0x30;
//  599 			szaBuf[2] = '.';
//  600 			szaBuf[3] = (pBCD[1]&0x0f)|0x30;
//  601 			szaBuf[4] = (pBCD[0]>>4)  |0x30;
//  602 			szaBuf[5] = (pBCD[0]&0x0f)|0x30;
//  603 			szaBuf[6] = 0;
//  604 			break;
//  605 		case FLOAT_FORMAT_2_4:
//  606 			szaBuf[0] = (pBCD[2]>>4)  |0x30;
//  607 			szaBuf[1] = (pBCD[2]&0x0f)|0x30;
//  608 			szaBuf[2] = '.';
//  609 			szaBuf[3] = (pBCD[1]>>4)  |0x30;
//  610 			szaBuf[4] = (pBCD[1]&0x0f)|0x30;
//  611 			szaBuf[5] = (pBCD[0]>>4)  |0x30;
//  612 			szaBuf[6] = (pBCD[0]&0x0f)|0x30;
//  613 			szaBuf[7] = 0;
//  614 			break;
//  615 		case FLOAT_FORMAT_1_3:
//  616 			szaBuf[0] = (pBCD[1]>>4)  |0x30;
//  617 			szaBuf[1] = '.';
//  618 			szaBuf[2] = (pBCD[1]&0x0f)|0x30;
//  619 			szaBuf[3] = (pBCD[0]>>4)  |0x30;
//  620 			szaBuf[4] = (pBCD[0]&0x0f)|0x30;
//  621 			szaBuf[5] = 0;
//  622 			break;
//  623 		case FLOAT_FORMAT_PULS:{
//  624 			//unsigned __int64 qResult = 0;
//  625 			//memcpy(&qResult,pBCD,5);
//  626 			//sprintf_s(szaBuf,10,"%I64u",qResult);
//  627 			memcpy(szBuf,pBCD,5);
//  628 			return 0.0;
//  629 			//break;
//  630 			}
//  631 		default:
//  632 			return fResult;
//  633 		}
//  634 #ifdef WIN32
//  635 		fResult = (float)atof(szaBuf);
//  636 
//  637 		if(szBuf)
//  638 		{
//  639 			fmt[0] = '%';
//  640 			fmt[1] = '.';
//  641 			fmt[2] = chp;
//  642 			fmt[3] = 'f';
//  643 			fmt[4] = '\0';
//  644 			sprintf_s(szBuf,10,fmt,fResult);
//  645 		}
//  646 #else
//  647 	fResult = 0.0;
//  648 #endif
//  649 	}
//  650 	return fResult;
??Bcd2Float_0:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock24
//  651 }
//  652 
//  653 
//  654 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function Int2BCD
          CFI NoCalls
        THUMB
//  655 void Int2BCD(u_long dwValue,u_char *poBCD)
//  656 {
Int2BCD:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  657 	u_char bVal;
//  658 
//  659 	bVal = dwValue%100;
        MOVS     R2,#+100
        UDIV     R3,R0,R2
        MLS      R0,R2,R3,R0
        UXTB     R0,R0
//  660 	dwValue /=100;
//  661 	
//  662 	poBCD[0]  = bVal%10; 
//  663 	poBCD[0] |= (bVal/10)<<4; 
        MOVS     R4,#+10
        SDIV     R4,R0,R4
        ADD      R5,R4,R4, LSL #+2
        SUB      R0,R0,R5, LSL #+1
        ORR      R0,R0,R4, LSL #+4
        STRB     R0,[R1, #+0]
//  664 	
//  665 	bVal = dwValue%100;
//  666 	dwValue /=100;
//  667 	poBCD[1]  = bVal%10; 
//  668 	poBCD[1] |= (bVal/10)<<4; 
        MOVS     R4,#+10
        MOVS     R0,#+100
        UDIV     R0,R3,R0
        MLS      R3,R2,R0,R3
        UXTB     R3,R3
        SDIV     R4,R3,R4
        ADD      R5,R4,R4, LSL #+2
        SUB      R3,R3,R5, LSL #+1
        ORR      R3,R3,R4, LSL #+4
        STRB     R3,[R1, #+1]
//  669 	
//  670 	bVal = dwValue%100;
//  671 	dwValue /=100;
//  672 	poBCD[2]  = bVal%10; 
//  673 	poBCD[2] |= (bVal/10)<<4; 
        MOVS     R4,#+10
        MOV      R3,R2
        UDIV     R3,R0,R3
        MLS      R0,R2,R3,R0
        UXTB     R0,R0
        SDIV     R4,R0,R4
        ADD      R5,R4,R4, LSL #+2
        SUB      R0,R0,R5, LSL #+1
        ORR      R0,R0,R4, LSL #+4
        STRB     R0,[R1, #+2]
//  674 	
//  675 	bVal = dwValue%100;
        MOV      R0,R2
        UDIV     R0,R3,R0
        MLS      R0,R2,R0,R3
        UXTB     R0,R0
//  676 	dwValue /=100;
//  677 	poBCD[3]  = bVal%10; 
//  678 	poBCD[3] |= (bVal/10)<<4; 
        MOVS     R2,#+10
        SDIV     R2,R0,R2
        ADD      R3,R2,R2, LSL #+2
        SUB      R0,R0,R3, LSL #+1
        ORR      R0,R0,R2, LSL #+4
        STRB     R0,[R1, #+3]
//  679 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
//  680 
//  681 
//  682 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function CRC16
          CFI NoCalls
        THUMB
//  683 u_short CRC16(const u_char *pciDat,u_long dwiLen)
//  684 {
CRC16:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  685 	static const u_short wTable[256]=
//  686 	{     /* CRC余式表 */
//  687 		0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7,
//  688 		0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef,
//  689 		0x1231, 0x0210, 0x3273, 0x2252, 0x52b5, 0x4294, 0x72f7, 0x62d6,
//  690 		0x9339, 0x8318, 0xb37b, 0xa35a, 0xd3bd, 0xc39c, 0xf3ff, 0xe3de,
//  691 		0x2462, 0x3443, 0x0420, 0x1401, 0x64e6, 0x74c7, 0x44a4, 0x5485,
//  692 		0xa56a, 0xb54b, 0x8528, 0x9509, 0xe5ee, 0xf5cf, 0xc5ac, 0xd58d,
//  693 		0x3653, 0x2672, 0x1611, 0x0630, 0x76d7, 0x66f6, 0x5695, 0x46b4,
//  694 		0xb75b, 0xa77a, 0x9719, 0x8738, 0xf7df, 0xe7fe, 0xd79d, 0xc7bc,
//  695 		0x48c4, 0x58e5, 0x6886, 0x78a7, 0x0840, 0x1861, 0x2802, 0x3823,
//  696 		0xc9cc, 0xd9ed, 0xe98e, 0xf9af, 0x8948, 0x9969, 0xa90a, 0xb92b,
//  697 		0x5af5, 0x4ad4, 0x7ab7, 0x6a96, 0x1a71, 0x0a50, 0x3a33, 0x2a12,
//  698 		0xdbfd, 0xcbdc, 0xfbbf, 0xeb9e, 0x9b79, 0x8b58, 0xbb3b, 0xab1a,
//  699 		0x6ca6, 0x7c87, 0x4ce4, 0x5cc5, 0x2c22, 0x3c03, 0x0c60, 0x1c41,
//  700 		0xedae, 0xfd8f, 0xcdec, 0xddcd, 0xad2a, 0xbd0b, 0x8d68, 0x9d49,
//  701 		0x7e97, 0x6eb6, 0x5ed5, 0x4ef4, 0x3e13, 0x2e32, 0x1e51, 0x0e70,
//  702 		0xff9f, 0xefbe, 0xdfdd, 0xcffc, 0xbf1b, 0xaf3a, 0x9f59, 0x8f78,
//  703 		0x9188, 0x81a9, 0xb1ca, 0xa1eb, 0xd10c, 0xc12d, 0xf14e, 0xe16f,
//  704 		0x1080, 0x00a1, 0x30c2, 0x20e3, 0x5004, 0x4025, 0x7046, 0x6067,
//  705 		0x83b9, 0x9398, 0xa3fb, 0xb3da, 0xc33d, 0xd31c, 0xe37f, 0xf35e,
//  706 		0x02b1, 0x1290, 0x22f3, 0x32d2, 0x4235, 0x5214, 0x6277, 0x7256,
//  707 		0xb5ea, 0xa5cb, 0x95a8, 0x8589, 0xf56e, 0xe54f, 0xd52c, 0xc50d,
//  708 		0x34e2, 0x24c3, 0x14a0, 0x0481, 0x7466, 0x6447, 0x5424, 0x4405,
//  709 		0xa7db, 0xb7fa, 0x8799, 0x97b8, 0xe75f, 0xf77e, 0xc71d, 0xd73c,
//  710 		0x26d3, 0x36f2, 0x0691, 0x16b0, 0x6657, 0x7676, 0x4615, 0x5634,
//  711 		0xd94c, 0xc96d, 0xf90e, 0xe92f, 0x99c8, 0x89e9, 0xb98a, 0xa9ab,
//  712 		0x5844, 0x4865, 0x7806, 0x6827, 0x18c0, 0x08e1, 0x3882, 0x28a3,
//  713 		0xcb7d, 0xdb5c, 0xeb3f, 0xfb1e, 0x8bf9, 0x9bd8, 0xabbb, 0xbb9a,
//  714 		0x4a75, 0x5a54, 0x6a37, 0x7a16, 0x0af1, 0x1ad0, 0x2ab3, 0x3a92,
//  715 		0xfd2e, 0xed0f, 0xdd6c, 0xcd4d, 0xbdaa, 0xad8b, 0x9de8, 0x8dc9,
//  716 		0x7c26, 0x6c07, 0x5c64, 0x4c45, 0x3ca2, 0x2c83, 0x1ce0, 0x0cc1,
//  717 		0xef1f, 0xff3e, 0xcf5d, 0xdf7c, 0xaf9b, 0xbfba, 0x8fd9, 0x9ff8,
//  718 		0x6e17, 0x7e36, 0x4e55, 0x5e74, 0x2e93, 0x3eb2, 0x0ed1, 0x1ef0
//  719 	};
//  720 	u_long i;
//  721 	u_short wResult = 0;
        MOVS     R2,#+0
//  722 	u_char da;
//  723 	
//  724 	for(i = 0; i< dwiLen; i++)
        CBZ.N    R1,??CRC16_0
        ADR.W    R3,??wTable
//  725 	{
//  726 		da = (u_char)(wResult>>8);
//  727 		wResult <<= 8;
//  728 		wResult ^= wTable[da^pciDat[i]];
??CRC16_1:
        UXTH     R4,R2
        LDRB     R5,[R0], #+1
        LSLS     R4,R4,#+16
        EOR      R4,R5,R4, LSR #+24
        LDRH     R4,[R3, R4, LSL #+1]
//  729 	}
        SUBS     R1,R1,#+1
        EOR      R2,R4,R2, LSL #+8
        BNE.N    ??CRC16_1
//  730 	return wResult;
??CRC16_0:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        UXTH     R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
//  731 }
//  732 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function CRC8
          CFI NoCalls
        THUMB
//  733 u_char CRC8(const u_char *pciDat,u_long dwiLen)
//  734 {
CRC8:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  735 	u_char i;
//  736 	u_char bDat;
//  737 	u_char bResult = 0;
        MOVS     R2,#+0
//  738 	u_long dwCount;
//  739 
//  740 	for(dwCount = 0; dwCount < dwiLen; dwCount++)
        CBZ.N    R1,??CRC8_0
//  741 	{
//  742 		bDat = pciDat[dwCount];
??CRC8_1:
        LDRB     R3,[R0, #+0]
//  743 		
//  744 		for(i=0; i<8; i++,bDat >>= 1)
        MOVS     R4,#+8
//  745 		{
//  746 			if(((bDat^bResult)&0x01) == 0)
??CRC8_2:
        LSRS     R5,R2,#+1
        EORS     R2,R2,R3
        LSLS     R2,R2,#+31
        ITE      PL 
        MOVPL    R2,R5
        EORMI    R2,R5,#0x8C
//  747 			{
//  748 				bResult >>= 1;
//  749 			}
//  750 			else
//  751 			{
//  752 				bResult ^= 0x18;
//  753 				bResult >>= 1;
//  754 				bResult |= 0x80;
//  755 			}
//  756 		}
        LSRS     R3,R3,#+1
        SUBS     R4,R4,#+1
        BNE.N    ??CRC8_2
//  757 	}
        ADDS     R0,R0,#+1
        SUBS     R1,R1,#+1
        BNE.N    ??CRC8_1
//  758 	return bResult;
??CRC8_0:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
//  759 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??wTable:
        DC16 0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161
        DC16 41290, 45419, 49548, 53677, 57806, 61935, 4657, 528, 12915, 8786
        DC16 21173, 17044, 29431, 25302, 37689, 33560, 45947, 41818, 54205
        DC16 50076, 62463, 58334, 9314, 13379, 1056, 5121, 25830, 29895, 17572
        DC16 21637, 42346, 46411, 34088, 38153, 58862, 62927, 50604, 54669
        DC16 13907, 9842, 5649, 1584, 30423, 26358, 22165, 18100, 46939, 42874
        DC16 38681, 34616, 63455, 59390, 55197, 51132, 18628, 22757, 26758
        DC16 30887, 2112, 6241, 10242, 14371, 51660, 55789, 59790, 63919, 35144
        DC16 39273, 43274, 47403, 23285, 19156, 31415, 27286, 6769, 2640, 14899
        DC16 10770, 56317, 52188, 64447, 60318, 39801, 35672, 47931, 43802
        DC16 27814, 31879, 19684, 23749, 11298, 15363, 3168, 7233, 60846, 64911
        DC16 52716, 56781, 44330, 48395, 36200, 40265, 32407, 28342, 24277
        DC16 20212, 15891, 11826, 7761, 3696, 65439, 61374, 57309, 53244, 48923
        DC16 44858, 40793, 36728, 37256, 33193, 45514, 41451, 53516, 49453
        DC16 61774, 57711, 4224, 161, 12482, 8419, 20484, 16421, 28742, 24679
        DC16 33721, 37784, 41979, 46042, 49981, 54044, 58239, 62302, 689, 4752
        DC16 8947, 13010, 16949, 21012, 25207, 29270, 46570, 42443, 38312
        DC16 34185, 62830, 58703, 54572, 50445, 13538, 9411, 5280, 1153, 29798
        DC16 25671, 21540, 17413, 42971, 47098, 34713, 38840, 59231, 63358
        DC16 50973, 55100, 9939, 14066, 1681, 5808, 26199, 30326, 17941, 22068
        DC16 55628, 51565, 63758, 59695, 39368, 35305, 47498, 43435, 22596
        DC16 18533, 30726, 26663, 6336, 2273, 14466, 10403, 52093, 56156, 60223
        DC16 64286, 35833, 39896, 43963, 48026, 19061, 23124, 27191, 31254
        DC16 2801, 6864, 10931, 14994, 64814, 60687, 56684, 52557, 48554, 44427
        DC16 40424, 36297, 31782, 27655, 23652, 19525, 15522, 11395, 7392, 3265
        DC16 61215, 65342, 53085, 57212, 44955, 49082, 36825, 40952, 28183
        DC16 32310, 20053, 24180, 11923, 16050, 3793, 7920

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "0123456789ABCDEF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_2:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_3:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
//  760 
//  761 
//  762 #if defined(NUTDEBUG_USE_ASSERT)
//  763 void NUTPANIC(CONST char *fmt, ...)
//  764 {
//  765 	
//  766 }
//  767 
//  768 void NUTFATAL(CONST char *fun, CONST char *file, int, CONST char *statement)
//  769 {
//  770 	//printf("FATAL ERROR: %s in %s,%s\r\n",statement,fun,file);
//  771 }
//  772 #endif
//  773 
// 
//     4 bytes in section .data
//    84 bytes in section .rodata
// 2 326 bytes in section .text
// 
// 2 326 bytes of CODE  memory
//    84 bytes of CONST memory
//     4 bytes of DATA  memory
//
//Errors: none
//Warnings: 3
