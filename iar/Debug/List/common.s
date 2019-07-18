///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\utility\common.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\utility\common.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\common.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC ascTable
        PUBLIC asciis2hex
        PUBLIC assic2hex
        PUBLIC auchCRCHi
        PUBLIC auchCRCLo
        PUBLIC bcd2hex
        PUBLIC bcd2hex16bits
        PUBLIC cyg_crc16
        PUBLIC hex2ascii
        PUBLIC linkage_calc_crc16
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\utility\common.c
//    1 /*
//    2  *==========================================================================
//    3  *
//    4  *      common.c
//    5  *
//    6  *      16 bit CRC with polynomial x^16+x^12+x^5+1
//    7  *==========================================================================
//    8  */
//    9 
//   10 #include "common.h"
//   11 /* CRC 高位字节值表 */ 
//   12 const uint8 auchCRCHi[260] = { 
//   13 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 
//   14 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 
//   15 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 
//   16 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 
//   17 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 
//   18 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 
//   19 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 
//   20 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 
//   21 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 
//   22 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 
//   23 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 
//   24 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 
//   25 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 
//   26 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 
//   27 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 
//   28 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 
//   29 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 
//   30 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 
//   31 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 
//   32 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 
//   33 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 
//   34 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 
//   35 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 
//   36 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 
//   37 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 
//   38 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40 
//   39 } ; 
//   40 /* CRC低位字节值表*/ 
//   41 const uint8 auchCRCLo[260] = { 
//   42 0x00, 0xC0, 0xC1, 0x01, 0xC3, 0x03, 0x02, 0xC2, 0xC6, 0x06, 
//   43 0x07, 0xC7, 0x05, 0xC5, 0xC4, 0x04, 0xCC, 0x0C, 0x0D, 0xCD, 
//   44 0x0F, 0xCF, 0xCE, 0x0E, 0x0A, 0xCA, 0xCB, 0x0B, 0xC9, 0x09, 
//   45 0x08, 0xC8, 0xD8, 0x18, 0x19, 0xD9, 0x1B, 0xDB, 0xDA, 0x1A, 
//   46 0x1E, 0xDE, 0xDF, 0x1F, 0xDD, 0x1D, 0x1C, 0xDC, 0x14, 0xD4, 
//   47 0xD5, 0x15, 0xD7, 0x17, 0x16, 0xD6, 0xD2, 0x12, 0x13, 0xD3, 
//   48 0x11, 0xD1, 0xD0, 0x10, 0xF0, 0x30, 0x31, 0xF1, 0x33, 0xF3, 
//   49 0xF2, 0x32, 0x36, 0xF6, 0xF7, 0x37, 0xF5, 0x35, 0x34, 0xF4, 
//   50 0x3C, 0xFC, 0xFD, 0x3D, 0xFF, 0x3F, 0x3E, 0xFE, 0xFA, 0x3A, 
//   51 0x3B, 0xFB, 0x39, 0xF9, 0xF8, 0x38, 0x28, 0xE8, 0xE9, 0x29, 
//   52 0xEB, 0x2B, 0x2A, 0xEA, 0xEE, 0x2E, 0x2F, 0xEF, 0x2D, 0xED, 
//   53 0xEC, 0x2C, 0xE4, 0x24, 0x25, 0xE5, 0x27, 0xE7, 0xE6, 0x26, 
//   54 0x22, 0xE2, 0xE3, 0x23, 0xE1, 0x21, 0x20, 0xE0, 0xA0, 0x60, 
//   55 0x61, 0xA1, 0x63, 0xA3, 0xA2, 0x62, 0x66, 0xA6, 0xA7, 0x67, 
//   56 0xA5, 0x65, 0x64, 0xA4, 0x6C, 0xAC, 0xAD, 0x6D, 0xAF, 0x6F, 
//   57 0x6E, 0xAE, 0xAA, 0x6A, 0x6B, 0xAB, 0x69, 0xA9, 0xA8, 0x68, 
//   58 0x78, 0xB8, 0xB9, 0x79, 0xBB, 0x7B, 0x7A, 0xBA, 0xBE, 0x7E, 
//   59 0x7F, 0xBF, 0x7D, 0xBD, 0xBC, 0x7C, 0xB4, 0x74, 0x75, 0xB5, 
//   60 0x77, 0xB7, 0xB6, 0x76, 0x72, 0xB2, 0xB3, 0x73, 0xB1, 0x71, 
//   61 0x70, 0xB0, 0x50, 0x90, 0x91, 0x51, 0x93, 0x53, 0x52, 0x92, 
//   62 0x96, 0x56, 0x57, 0x97, 0x55, 0x95, 0x94, 0x54, 0x9C, 0x5C, 
//   63 0x5D, 0x9D, 0x5F, 0x9F, 0x9E, 0x5E, 0x5A, 0x9A, 0x9B, 0x5B, 
//   64 0x99, 0x59, 0x58, 0x98, 0x88, 0x48, 0x49, 0x89, 0x4B, 0x8B, 
//   65 0x8A, 0x4A, 0x4E, 0x8E, 0x8F, 0x4F, 0x8D, 0x4D, 0x4C, 0x8C, 
//   66 0x44, 0x84, 0x85, 0x45, 0x87, 0x47, 0x46, 0x86, 0x82, 0x42, 
//   67 0x43, 0x83, 0x41, 0x81, 0x80, 0x40 
//   68 } ;
//   69 
//   70 const uint8  ascTable[17] = {"0123456789ABCDEF"}; 
//   71 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function cyg_crc16
          CFI NoCalls
        THUMB
//   72 uint16 cyg_crc16(const unsigned char *puchMsg, uint16 usDataLen) 
//   73 { 
cyg_crc16:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//   74 	uint8 uchCRCHi = 0xFF ; /* 高CRC字节初始化 */ 
        MOVS     R2,#+255
//   75     uint8 uchCRCLo = 0xFF ; /* 低CRC 字节初始化 */ 
        MOVS     R3,#+255
        CBZ.N    R1,??cyg_crc16_0
        ADR.W    R4,auchCRCLo
        ADR.W    R5,auchCRCHi
//   76 	uint32 uIndex ; /* CRC循环中的索引 */ 
//   77 	while (usDataLen--) /* 传输消息缓冲区 */ 
//   78 	{ 
//   79 		uIndex = uchCRCHi ^ *puchMsg++ ; /* 计算CRC */ 	 
??cyg_crc16_1:
        LDRB     R6,[R0], #+1
        EORS     R6,R6,R2
//   80 		                                 /* *puchMsg++ equal to *(puchMsg++), means operate the variety at address puchMsg and then puchMsg + 1 */
//   81 		uchCRCHi = uchCRCLo ^ auchCRCHi[uIndex] ; 
        LDRB     R2,[R6, R5]
        EORS     R2,R2,R3
//   82 		uchCRCLo = auchCRCLo[uIndex] ; 
        LDRB     R3,[R6, R4]
        SUBS     R1,R1,#+1
//   83 	} 
        BNE.N    ??cyg_crc16_1
//   84     //CRCLo = uchCRCHi;
//   85     //CRCHi = uchCRCLo;
//   86 	return ( uint16 )((uchCRCHi << 8)|uchCRCLo);
??cyg_crc16_0:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock0
//   87 	//return ( uint16 )((uchCRCHi << 8)|uchCRCLo);
//   88 }//INT16U crc16(INT8U *puchMsg, INT16U usDataLen)
//   89 
//   90 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function linkage_calc_crc16
          CFI NoCalls
        THUMB
//   91 uint16 linkage_calc_crc16( uint8 * pucFrame, uint8 usLen )
//   92 {
linkage_calc_crc16:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//   93     uint8 ucCRCHi = 0xFF;
        MOVS     R2,#+255
//   94     uint8 ucCRCLo = 0xFF;
        MOVS     R3,#+255
        CBZ.N    R1,??linkage_calc_crc16_0
        ADR.W    R4,auchCRCLo
        ADR.W    R5,auchCRCHi
//   95     int iIndex;
//   96 
//   97     while( usLen-- )
//   98     {
//   99         iIndex = ucCRCLo ^ *( pucFrame++ );
??linkage_calc_crc16_1:
        LDRB     R6,[R0], #+1
        EORS     R6,R6,R3
//  100         ucCRCLo = ( uint8 )( ucCRCHi ^ auchCRCHi[iIndex] );
        LDRB     R3,[R6, R5]
        EORS     R3,R3,R2
//  101         ucCRCHi = auchCRCLo[iIndex];
        LDRB     R2,[R6, R4]
        SUBS     R1,R1,#+1
//  102     }
        BNE.N    ??linkage_calc_crc16_1
          CFI EndBlock cfiBlock1
//  103 
//  104     return ( uint16 )(( ((uint16)ucCRCHi) << 8) | ucCRCLo );
??linkage_calc_crc16_0:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  105 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls cyg_crc16
          CFI NoCalls linkage_calc_crc16
          CFI CFA R13+12
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R6 Frame(CFA, -4)
        THUMB
?Subroutine0:
        POP      {R4-R6}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
        ORR      R0,R3,R2, LSL #+8
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  106 
//  107  
//  108 /************************************十六进制转化为ASCII码***************************************/ 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function hex2ascii
          CFI NoCalls
        THUMB
//  109 int hex2ascii( const uint8  *pidata, uint8 *poBuf, int len)
//  110 { 
hex2ascii:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  111     uint8 *tmp_p = poBuf; 
//  112     int i, pos; 
//  113     
//  114     pos = 0; 
        MOVS     R3,#+0
//  115     for(i = 0; i < len; i++) 
        CMP      R2,#+1
        BLT.N    ??hex2ascii_0
        ADR.W    R4,ascTable
//  116     { 
//  117        tmp_p[pos++] = ascTable[pidata[i] >> 4]; 
??hex2ascii_1:
        LDRB     R5,[R0, #+0]
        LSRS     R5,R5,#+4
//  118        tmp_p[pos++] = ascTable[pidata[i] & 0x0f]; 
        ADDS     R3,R3,#+2
        LDRB     R5,[R5, R4]
        STRB     R5,[R1], #+1
//  119     } 
        SUBS     R2,R2,#+1
        LDRB     R5,[R0], #+1
        AND      R5,R5,#0xF
        LDRB     R5,[R5, R4]
        STRB     R5,[R1], #+1
        BNE.N    ??hex2ascii_1
//  120         
//  121     return pos;        
??hex2ascii_0:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        MOV      R0,R3
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  122 }
//  123 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function assic2hex
          CFI NoCalls
        THUMB
//  124 unsigned char assic2hex(unsigned char ch)
//  125 {
//  126     unsigned char b=0;
assic2hex:
        MOVS     R1,#+0
//  127     if(ch>=0x30&&ch<=0x39)
        SUB      R3,R0,#+48
        CMP      R3,#+10
        IT       CC 
        SUBCC    R1,R0,#+48
//  128         b=ch-0x30;
        BCC.N    ??assic2hex_0
//  129     else if(ch>=0x41&&ch<=0x46)
        SUB      R3,R0,#+65
        CMP      R3,#+6
        IT       CC 
        SUBCC    R1,R0,#+55
//  130         b=ch-0x41+10;
        BCC.N    ??assic2hex_0
//  131     else if(ch>=0x61&&ch<=0x66)
        SUB      R2,R0,#+97
        CMP      R2,#+6
        IT       CC 
        SUBCC    R1,R0,#+87
//  132         b=ch-0x61+10;
//  133     return b;
??assic2hex_0:
        UXTB     R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  134 }
//  135 
//  136 /*
//  137 * \   ascii to hex
//  138 * \   note len must be even number
//  139 */
//  140 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function asciis2hex
          CFI NoCalls
        THUMB
//  141 int asciis2hex(uint8 *poBuf,const uint8 *pidata, int len)
//  142 {
asciis2hex:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  143 	//unsigned char ubch = 0;
//  144 	unsigned char ubchL = 0;
//  145 	unsigned char ubchH = 0;
//  146 	int i = 0;
        MOVS     R3,#+0
//  147 	int j = 0; 
//  148 	for (i = 0; i < len; i += 2)
        CMP      R2,#+1
        BLT.N    ??asciis2hex_0
//  149 	{
//  150 		ubchH = assic2hex(pidata[i]);
??asciis2hex_1:
        LDRB     R5,[R1, #+0]
        MOVS     R4,#+0
        SUB      R7,R5,#+48
        CMP      R7,#+10
        IT       CC 
        SUBCC    R4,R5,#+48
        BCC.N    ??asciis2hex_2
        SUB      R7,R5,#+65
        CMP      R7,#+6
        IT       CC 
        SUBCC    R4,R5,#+55
        BCC.N    ??asciis2hex_2
        SUB      R6,R5,#+97
        CMP      R6,#+6
        IT       CC 
        SUBCC    R4,R5,#+87
//  151 		ubchL = assic2hex(pidata[i+1]);
??asciis2hex_2:
        LDRB     R5,[R1, #+1]
        MOVS     R6,#+0
        SUB      R7,R5,#+48
        CMP      R7,#+10
        IT       CC 
        SUBCC    R6,R5,#+48
        BCC.N    ??asciis2hex_3
        SUB      R7,R5,#+65
        CMP      R7,#+6
        IT       CC 
        SUBCC    R6,R5,#+55
        BCC.N    ??asciis2hex_3
        SUB      R7,R5,#+97
        CMP      R7,#+6
        IT       CC 
        SUBCC    R6,R5,#+87
//  152 		poBuf[j++] = (ubchH<<4)|ubchL;
//  153 	}
??asciis2hex_3:
        ADDS     R3,R3,#+2
        ADDS     R1,R1,#+2
        ORR      R4,R6,R4, LSL #+4
        CMP      R3,R2
        STRB     R4,[R0], #+1
        BLT.N    ??asciis2hex_1
//  154 	return (len>>1);
??asciis2hex_0:
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        ASRS     R0,R2,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  155 }
//  156 
//  157 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function bcd2hex
        THUMB
//  158 int bcd2hex(uint8* indata,uint8 *outdata,int len)
//  159 {
bcd2hex:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  160     int outLen=len/2;
        ADD      R0,R2,R2, LSR #+31
        ASRS     R6,R0,#+1
//  161     uint8 ch;
//  162     for(int i=0;i<outLen;i++)
        CMP      R6,#+1
        MOV      R5,R1
        BLT.N    ??bcd2hex_0
        MOV      R7,R6
//  163     {
//  164         ch=assic2hex(indata[i*2]);
??bcd2hex_1:
        LDRB     R0,[R4, #+0]
          CFI FunCall assic2hex
        BL       assic2hex
//  165         ch=(ch<<4);
//  166         ch+=assic2hex(indata[i*2+1]);
        LDRB     R1,[R4, #+1]
        MOVS     R2,#+0
        SUB      R3,R1,#+48
        CMP      R3,#+10
        IT       CC 
        SUBCC    R2,R1,#+48
        BCC.N    ??bcd2hex_2
        SUB      R3,R1,#+65
        CMP      R3,#+6
        IT       CC 
        SUBCC    R2,R1,#+55
        BCC.N    ??bcd2hex_2
        SUB      R3,R1,#+97
        CMP      R3,#+6
        IT       CC 
        SUBCC    R2,R1,#+87
//  167         outdata[i]=ch;
//  168     }
??bcd2hex_2:
        ADDS     R4,R4,#+2
        ADD      R0,R2,R0, LSL #+4
        SUBS     R7,R7,#+1
        STRB     R0,[R5], #+1
        BNE.N    ??bcd2hex_1
//  169     return outLen;
??bcd2hex_0:
        MOV      R0,R6
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock6
//  170 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function bcd2hex16bits
        THUMB
//  171 uint16 bcd2hex16bits(uint8* indata)
//  172 {
bcd2hex16bits:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  173 	uint8 buf[2]={0};
        MOVS     R1,#+0
        STRH     R1,[SP, #+0]
//  174 	uint16 value=0;
//  175 
//  176 	bcd2hex(indata,buf,4);
        MOVS     R2,#+4
        ADD      R1,SP,#+0
          CFI FunCall bcd2hex
        BL       bcd2hex
//  177 
//  178 	value=buf[0];
//  179 	value=(value<<8)+buf[1];
//  180 
//  181 	return value;
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ADD      R0,R1,R0, LSL #+8
        UXTH     R0,R0
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock7
//  182 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
auchCRCHi:
        DC8 0, 193, 129, 64, 1, 192, 128, 65, 1, 192, 128, 65, 0, 193, 129, 64
        DC8 1, 192, 128, 65, 0, 193, 129, 64, 0, 193, 129, 64, 1, 192, 128, 65
        DC8 1, 192, 128, 65, 0, 193, 129, 64, 0, 193, 129, 64, 1, 192, 128, 65
        DC8 0, 193, 129, 64, 1, 192, 128, 65, 1, 192, 128, 65, 0, 193, 129, 64
        DC8 1, 192, 128, 65, 0, 193, 129, 64, 0, 193, 129, 64, 1, 192, 128, 65
        DC8 0, 193, 129, 64, 1, 192, 128, 65, 1, 192, 128, 65, 0, 193, 129, 64
        DC8 0, 193, 129, 64, 1, 192, 128, 65, 1, 192, 128, 65, 0, 193, 129, 64
        DC8 1, 192, 128, 65, 0, 193, 129, 64, 0, 193, 129, 64, 1, 192, 128, 65
        DC8 1, 192, 128, 65, 0, 193, 129, 64, 0, 193, 129, 64, 1, 192, 128, 65
        DC8 0, 193, 129, 64, 1, 192, 128, 65, 1, 192, 128, 65, 0, 193, 129, 64
        DC8 0, 193, 129, 64, 1, 192, 128, 65, 1, 192, 128, 65, 0, 193, 129, 64
        DC8 1, 192, 128, 65, 0, 193, 129, 64, 0, 193, 129, 64, 1, 192, 128, 65
        DC8 0, 193, 129, 64, 1, 192, 128, 65, 1, 192, 128, 65, 0, 193, 129, 64
        DC8 1, 192, 128, 65, 0, 193, 129, 64, 0, 193, 129, 64, 1, 192, 128, 65
        DC8 1, 192, 128, 65, 0, 193, 129, 64, 0, 193, 129, 64, 1, 192, 128, 65
        DC8 0, 193, 129, 64, 1, 192, 128, 65, 1, 192, 128, 65, 0, 193, 129, 64
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
auchCRCLo:
        DC8 0, 192, 193, 1, 195, 3, 2, 194, 198, 6, 7, 199, 5, 197, 196, 4, 204
        DC8 12, 13, 205, 15, 207, 206, 14, 10, 202, 203, 11, 201, 9, 8, 200
        DC8 216, 24, 25, 217, 27, 219, 218, 26, 30, 222, 223, 31, 221, 29, 28
        DC8 220, 20, 212, 213, 21, 215, 23, 22, 214, 210, 18, 19, 211, 17, 209
        DC8 208, 16, 240, 48, 49, 241, 51, 243, 242, 50, 54, 246, 247, 55, 245
        DC8 53, 52, 244, 60, 252, 253, 61, 255, 63, 62, 254, 250, 58, 59, 251
        DC8 57, 249, 248, 56, 40, 232, 233, 41, 235, 43, 42, 234, 238, 46, 47
        DC8 239, 45, 237, 236, 44, 228, 36, 37, 229, 39, 231, 230, 38, 34, 226
        DC8 227, 35, 225, 33, 32, 224, 160, 96, 97, 161, 99, 163, 162, 98, 102
        DC8 166, 167, 103, 165, 101, 100, 164, 108, 172, 173, 109, 175, 111
        DC8 110, 174, 170, 106, 107, 171, 105, 169, 168, 104, 120, 184, 185
        DC8 121, 187, 123, 122, 186, 190, 126, 127, 191, 125, 189, 188, 124
        DC8 180, 116, 117, 181, 119, 183, 182, 118, 114, 178, 179, 115, 177
        DC8 113, 112, 176, 80, 144, 145, 81, 147, 83, 82, 146, 150, 86, 87, 151
        DC8 85, 149, 148, 84, 156, 92, 93, 157, 95, 159, 158, 94, 90, 154, 155
        DC8 91, 153, 89, 88, 152, 136, 72, 73, 137, 75, 139, 138, 74, 78, 142
        DC8 143, 79, 141, 77, 76, 140, 68, 132, 133, 69, 135, 71, 70, 134, 130
        DC8 66, 67, 131, 65, 129, 128, 64, 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ascTable:
        DC8 "0123456789ABCDEF"
        DC8 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_0:
        DC8 0, 0

        END
// 
//   2 bytes in section .rodata
// 944 bytes in section .text
// 
// 944 bytes of CODE  memory
//   2 bytes of CONST memory
//
//Errors: none
//Warnings: none
