///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:38
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\sysprintf.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\sysprintf.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\sysprintf.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN isalpha
        EXTERN ispunct
        EXTERN process_current
        EXTERN toupper
        EXTERN xprintf
        EXTERN xvprintf

        PUBLIC __xstd_dump
        PUBLIC __xstd_printf
        PUBLIC get_gdbLevel
        PUBLIC mem_cmp
        PUBLIC strcmp_ex
        PUBLIC sysPrintExp
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\sysprintf.c
//    1 #include <stdarg.h>
//    2 #include <ctype.h>
//    3 
//    4 
//    5 #include "xprintf.h"
//    6 #include "basictype.h"
//    7 #include "contiki.h"
//    8 
//    9 #include "sysprintf.h"
//   10 
//   11 //typedef int *va_list[1];
//   12 
//   13 extern void xvprintf (
//   14 	const char*	fmt,	/* Pointer to the format string */
//   15 	va_list arp			/* Pointer to arguments */
//   16 );
//   17 
//   18 
//   19 
//   20 /* Compare memory to memory */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function mem_cmp
          CFI NoCalls
        THUMB
//   21 int mem_cmp (const void* dst, const void* src, unsigned int cnt) 
//   22 {
mem_cmp:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//   23 	const BYTE *d = (const BYTE *)dst, *s = (const BYTE *)src;
//   24 	int r = 0;
        MOVS     R3,#+0
//   25 
//   26 	while (cnt-- && (r = *d++ - *s++) == 0) ;
??mem_cmp_0:
        MOV      R4,R2
        SUBS     R2,R4,#+1
        CBZ.N    R4,??mem_cmp_1
        LDRB     R3,[R0], #+1
        LDRB     R4,[R1], #+1
        SUBS     R3,R3,R4
        BEQ.N    ??mem_cmp_0
//   27 	return r;
??mem_cmp_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        MOV      R0,R3
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   28 }
//   29 
//   30 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function strcmp_ex
        THUMB
//   31 int strcmp_ex(char const*s1,char const *s2)
//   32 {
strcmp_ex:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//   33 	char c1,c2;
//   34 	
//   35 	while( 1)
//   36 	{
//   37 		c1=toupper(*s1++);
??strcmp_ex_0:
        LDRB     R0,[R4], #+1
          CFI FunCall toupper
        BL       toupper
        UXTB     R6,R0
//   38 		c2=toupper(*s2++);
        LDRB     R0,[R5], #+1
          CFI FunCall toupper
        BL       toupper
        UXTB     R0,R0
//   39 		
//   40 		if(c1!=c2 || c1 == 0 || c2 == 0)  
        CMP      R6,R0
        BNE.N    ??strcmp_ex_1
        CMP      R6,#+0
        IT       NE 
        CMPNE    R0,#+0
        BNE.N    ??strcmp_ex_0
//   41 			break;
//   42 	}
//   43 
//   44 	return ((int)c1 - (int)c2);
??strcmp_ex_1:
        SUBS     R0,R6,R0
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1
//   45 }
//   46 
//   47 
//   48 
//   49 
//   50 
//   51 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   52 static char g_nDebufLevel = 2;// level = -1, means to get the level, no change to g_nDebugLevel
g_nDebufLevel:
        DATA
        DC8 2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function get_gdbLevel
          CFI NoCalls
        THUMB
//   53 char *get_gdbLevel(void)
//   54 {
//   55 	return &g_nDebufLevel;
get_gdbLevel:
        LDR.N    R0,??DataTable14_6
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   56 }
//   57 
//   58 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function __xstd_printf
        THUMB
//   59 void  __xstd_printf(int level, const char * fmt,...)
//   60 {
__xstd_printf:
        PUSH     {R2,R3}
          CFI CFA R13+8
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R5,R0
//   61     //int rc = 0;
//   62     va_list ap;
//   63 
//   64     volatile struct process *pTd = (struct process *)PROCESS_CURRENT();
        LDR.N    R0,??DataTable14_7
//   65     if(((unsigned char)level <= g_nDebufLevel && g_nDebufLevel!=20))
        LDR.N    R7,??DataTable14_6
        LDR      R6,[R0, #+0]
        LDRB     R0,[R7, #+0]
        MOV      R4,R1
        UXTB     R1,R5
        CMP      R0,R1
        BCC.N    ??__xstd_printf_0
        CMP      R0,#+20
        BEQ.N    ??__xstd_printf_1
//   66     {
//   67 		if (pTd )
        CBZ.N    R6,??__xstd_printf_2
//   68 		{
//   69 			if (strcmp_ex(pTd->name, "Event timer"))
        LDR      R0,[R6, #+4]
        ADR.W    R1,?_0
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBZ.N    R0,??__xstd_printf_0
//   70 				xprintf("%-20s|", pTd->name);
        LDR      R1,[R6, #+4]
        ADR.W    R0,?_1
          CFI FunCall xprintf
        BL       xprintf
//   71 		}
//   72 	}
//   73     if(((unsigned char)level <= g_nDebufLevel && g_nDebufLevel!=20))
??__xstd_printf_0:
        LDRB     R0,[R7, #+0]
        UXTB     R5,R5
        CMP      R0,R5
        BCC.N    ??__xstd_printf_1
??__xstd_printf_2:
        LDRB     R0,[R7, #+0]
        CMP      R0,#+20
        BEQ.N    ??__xstd_printf_1
//   74     {
//   75        va_start(ap, fmt);
        ADD      R1,SP,#+24
//   76        xvprintf(fmt, ap);
        MOV      R0,R4
          CFI FunCall xvprintf
        BL       xvprintf
//   77        va_end(ap);
//   78     }
//   79     //return rc;
//   80 }
??__xstd_printf_1:
        POP      {R0,R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+12
        LDR      PC,[SP], #+12    ;; return
          CFI EndBlock cfiBlock3
//   81 
//   82 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function __xstd_dump
        THUMB
//   83 int __xstd_dump(int level,const char *sczTitle,const void *pciBuf,int nSize)
//   84 {
__xstd_dump:
        PUSH     {R1,R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOV      R5,R0
//   85 
//   86     struct process *pTd = (struct process *)PROCESS_CURRENT();
        LDR.N    R0,??DataTable14_7
//   87 
//   88 	if(level <= g_nDebufLevel && g_nDebufLevel!=20)
        LDR.N    R4,??DataTable14_6
        LDR      R7,[R0, #+0]
        LDRB     R0,[R4, #+0]
        CMP      R0,R5
        MOV      R6,R2
        MOV      R8,R3
        BLT.N    ??__xstd_dump_0
        CMP      R0,#+20
        BEQ.W    ??__xstd_dump_1
//   89 	{
//   90 		if (pTd)
        CBZ.N    R7,??__xstd_dump_0
//   91 		{
//   92 			if (strcmp_ex(pTd->name, "Event timer"))
        LDR      R0,[R7, #+4]
        ADR.W    R1,?_0
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBZ.N    R0,??__xstd_dump_0
//   93 			{
//   94 				xprintf("%-20s|", pTd->name);
        LDR      R1,[R7, #+4]
        ADR.W    R0,?_1
          CFI FunCall xprintf
        BL       xprintf
//   95 				xprintf("\r\n");
        ADR.N    R0,??DataTable14  ;; 0x0D, 0x0A, 0x00, 0x00
          CFI FunCall xprintf
        BL       xprintf
??__xstd_dump_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,R5
        BLT.W    ??__xstd_dump_1
        CMP      R0,#+20
        BEQ.W    ??__xstd_dump_1
//   96 			}
//   97 		}
//   98 	}
//   99 
//  100 	if(level <= g_nDebufLevel && g_nDebufLevel!=20)
//  101 	{
//  102 		int i,n;
//  103 		const unsigned char*pcBuf = (unsigned char*)pciBuf;
//  104 	
//  105 		if(sczTitle)
        LDR      R0,[SP, #+0]
        CBZ.N    R0,??__xstd_dump_2
//  106 			xprintf("%-5s%-4d:",sczTitle,nSize);
        MOV      R1,R0
        MOV      R2,R8
        ADR.W    R0,?_3
          CFI FunCall xprintf
        BL       xprintf
//  107 	
//  108 		for(i=0;i<nSize;i++)
??__xstd_dump_2:
        MOVS     R7,#+0
        CMP      R8,#+1
        BLT.N    ??__xstd_dump_3
        MOV      R9,R6
        ADR.N    R5,??DataTable14_1  ;; 0x25, 0x63, 0x00, 0x00
//  109 		{
//  110 			unsigned int param = (unsigned int)(pcBuf[i]&0xff);
//  111 			xprintf(" %02X",param);
??__xstd_dump_4:
        LDRB     R1,[R9, #+0]
        ADR.W    R0,?_4
          CFI FunCall xprintf
        BL       xprintf
//  112 			if((i%16) == 15)
        ASRS     R0,R7,#+3
        ADD      R0,R7,R0, LSR #+28
        ASRS     R0,R0,#+4
        SUB      R0,R7,R0, LSL #+4
        CMP      R0,#+15
        BNE.N    ??__xstd_dump_5
//  113 			{
//  114 				xprintf(" ;");
        ADR.N    R0,??DataTable14_2  ;; 0x20, 0x3B, 0x00, 0x00
          CFI FunCall xprintf
        BL       xprintf
//  115 				for(n = i&0xffffFFF0; n<=i; n++)
        BIC      R4,R7,#0xF
        CMP      R7,R4
        BLT.N    ??__xstd_dump_6
        ADD      R10,R4,R6
//  116 					xprintf("%c",isprint(pcBuf[n])?pcBuf[n]:'.');
??__xstd_dump_7:
        LDRB     R11,[R10, #+0]
        SUB      R0,R11,#+32
        CMP      R0,#+95
        BCC.N    ??__xstd_dump_8
        MOV      R0,R11
          CFI FunCall isalpha
        BL       isalpha
        CBNZ.N   R0,??__xstd_dump_8
        MOV      R0,R11
          CFI FunCall ispunct
        BL       ispunct
        CBNZ.N   R0,??__xstd_dump_8
        MOVS     R1,#+46
        B.N      ??__xstd_dump_9
??__xstd_dump_8:
        LDRB     R1,[R10, #+0]
??__xstd_dump_9:
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        ADDS     R4,R4,#+1
        CMP      R7,R4
        ADD      R10,R10,#+1
        BGE.N    ??__xstd_dump_7
//  117 				xprintf("\r\n");
??__xstd_dump_6:
        ADR.N    R0,??DataTable14  ;; 0x0D, 0x0A, 0x00, 0x00
          CFI FunCall xprintf
        BL       xprintf
//  118 				if(sczTitle && (i+1) < nSize)
        LDR      R0,[SP, #+0]
        CBZ.N    R0,??__xstd_dump_5
        ADDS     R0,R7,#+1
        CMP      R0,R8
        BGE.N    ??__xstd_dump_5
//  119 				{
//  120 					xprintf("%-9s:","");
        ADR.N    R1,??DataTable14_3  ;; ""
        ADR.W    R0,?_7
          CFI FunCall xprintf
        BL       xprintf
//  121 				}
//  122 			}
//  123 		}
??__xstd_dump_5:
        ADDS     R7,R7,#+1
        CMP      R7,R8
        ADD      R9,R9,#+1
        BLT.N    ??__xstd_dump_4
//  124 
//  125 		if(i%16)
??__xstd_dump_3:
        ASRS     R0,R7,#+3
        ADD      R0,R7,R0, LSR #+28
        ASRS     R0,R0,#+4
        SUBS     R0,R7,R0, LSL #+4
        BEQ.N    ??__xstd_dump_10
//  126 		{
//  127 			for(n = i; (n%16)!=0 ;n++)
        MOV      R4,R7
        ADR.N    R5,??DataTable14_4  ;; "   "
        B.N      ??__xstd_dump_11
//  128 				xprintf("   ");
??__xstd_dump_12:
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        ADDS     R4,R4,#+1
??__xstd_dump_11:
        ASRS     R0,R4,#+3
        ADD      R0,R4,R0, LSR #+28
        ASRS     R0,R0,#+4
        SUBS     R0,R4,R0, LSL #+4
        BNE.N    ??__xstd_dump_12
//  129 			xprintf(" ;");
        ADR.N    R0,??DataTable14_2  ;; 0x20, 0x3B, 0x00, 0x00
          CFI FunCall xprintf
        BL       xprintf
//  130 			for(n = i&0xffffFFF0; n<i; n++)
        BIC      R0,R7,#0xF
        CMP      R0,R7
        BGE.N    ??__xstd_dump_13
        ADDS     R6,R0,R6
        SUBS     R7,R7,R0
        ADR.N    R5,??DataTable14_1  ;; 0x25, 0x63, 0x00, 0x00
//  131 				xprintf("%c",isprint(pcBuf[n])?pcBuf[n]:'.');
??__xstd_dump_14:
        LDRB     R4,[R6, #+0]
        SUB      R0,R4,#+32
        CMP      R0,#+95
        BCC.N    ??__xstd_dump_15
        MOV      R0,R4
          CFI FunCall isalpha
        BL       isalpha
        CBNZ.N   R0,??__xstd_dump_15
        MOV      R0,R4
          CFI FunCall ispunct
        BL       ispunct
        CBNZ.N   R0,??__xstd_dump_15
        MOVS     R1,#+46
        B.N      ??__xstd_dump_16
??__xstd_dump_15:
        LDRB     R1,[R6, #+0]
??__xstd_dump_16:
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        ADDS     R6,R6,#+1
        SUBS     R7,R7,#+1
        BNE.N    ??__xstd_dump_14
//  132 			xprintf("\r\n");
??__xstd_dump_13:
        ADR.N    R0,??DataTable14  ;; 0x0D, 0x0A, 0x00, 0x00
          CFI FunCall xprintf
        BL       xprintf
//  133 		}
//  134 		
//  135 		if(nSize == 0)
??__xstd_dump_10:
        CMP      R8,#+0
        ITT      EQ 
        ADREQ.N  R0,??DataTable14  ;; 0x0D, 0x0A, 0x00, 0x00
        BLEQ     xprintf
//  136 		{
//  137 			xprintf("\r\n");
//  138 		}
//  139 
//  140 	}
//  141 	return 0;
??__xstd_dump_1:
        MOVS     R0,#+0
        POP      {R1,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock4
//  142 }
//  143 
//  144 extern unsigned int sysGetSP(unsigned int bIsMSP);

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function sysPrintExp
        THUMB
//  145 void sysPrintExp(unsigned int dwPos)
//  146 {
//  147 	#if 0
//  148 	//unsigned int *pSP = (void*)sysGetSP(1);//PSP
//  149 	
//  150 	XPRINTF((0x0,"Exception Handled,type %d\r\n",dwPos));
//  151 	XPRINTF((0x0,"----Register List----\r\n"));
//  152 	XPRINTF((0x0,"MSP: %08X\r\n",sysGetSP(1)));
//  153 	XPRINTF((0x0,"PSP: %08X\r\n\r\n",pSP));
//  154 	
//  155 	XPRINTF((0x0,"R0 : %08X\r\n",pSP[0]));
//  156 	XPRINTF((0x0,"R1 : %08X\r\n",pSP[1]));
//  157 	XPRINTF((0x0,"R2 : %08X\r\n",pSP[2]));
//  158 	XPRINTF((0x0,"R3 : %08X\r\n",pSP[3]));
//  159 	XPRINTF((0x0,"R12: %08X\r\n",pSP[4]));
//  160 	XPRINTF((0x0,"LR : %08X\r\n",pSP[5]));
//  161 	XPRINTF((0x0,"PC : %08X\r\n",pSP[6]));
//  162 	XPRINTF((0x0,"PSR: %08X\r\n",pSP[7]));
//  163 	#endif
//  164 	PRINTF(".%d", dwPos);
sysPrintExp:
        MOV      R1,R0
        ADR.N    R0,??DataTable14_5  ;; ".%d"
          CFI FunCall xprintf
        B.W      xprintf
          CFI EndBlock cfiBlock5
//  165 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC8      0x0D, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC8      0x25, 0x63, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC8      0x20, 0x3B, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC8      "",0x0,0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC8      "   "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC8      ".%d"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     g_nDebufLevel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     process_current

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_0:
        DC8 "Event timer"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "%-20s|"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "%-5s%-4d:"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 " %02X"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_7:
        DC8 "%-9s:"
        DC8 0, 0

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
?_2:
        DC8 "\015\012"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_5:
        DC8 " ;"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_6:
        DC8 "%c"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(0)
        DATA
?_8:
        DC8 ""

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_9:
        DC8 "   "

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_10:
        DC8 ".%d"

        END
//  166 
//  167 
//  168 
//  169 
//  170 
// 
//   1 byte  in section .data
//  21 bytes in section .rodata
// 604 bytes in section .text
// 
// 604 bytes of CODE  memory
//  21 bytes of CONST memory
//   1 byte  of DATA  memory
//
//Errors: none
//Warnings: 2
