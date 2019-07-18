///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\xprintf\xprintf.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\xprintf\xprintf.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\xprintf.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC put_dump
        PUBLIC xatoi
        PUBLIC xfgets
        PUBLIC xfprintf
        PUBLIC xfputs
        PUBLIC xfunc_in
        PUBLIC xfunc_out
        PUBLIC xgets
        PUBLIC xprintf
        PUBLIC xputc
        PUBLIC xputs
        PUBLIC xsprintf
        PUBLIC xvprintf
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\xprintf\xprintf.c
//    1 /*------------------------------------------------------------------------/
//    2 /  Universal string handler for user console interface
//    3 /-------------------------------------------------------------------------/
//    4 /
//    5 /  Copyright (C) 2011, ChaN, all right reserved.
//    6 /
//    7 / * This software is a free software and there is NO WARRANTY.
//    8 / * No restriction on use. You can use, modify and redistribute it for
//    9 /   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
//   10 / * Redistributions of source code must retain the above copyright notice.
//   11 /
//   12 /-------------------------------------------------------------------------*/
//   13 
//   14 
//   15 #include "xprintf.h"
//   16 
//   17 
//   18 #if _USE_XFUNC_OUT
//   19 #include <stdarg.h>
//   20 void (*xfunc_out)(unsigned char);	/* Pointer to the output stream */
//   21 static char *outptr;
//   22 
//   23 
//   24 
//   25 /*----------------------------------------------*/
//   26 /* Put a character                              */
//   27 /*----------------------------------------------*/
//   28 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function xputc
        THUMB
//   29 void xputc (char c)
//   30 {
xputc:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//   31 	if (_CR_CRLF && c == '\n') xputc('\r');		/* CR -> CRLF */
        CMP      R4,#+10
        ITT      EQ 
        MOVEQ    R0,#+13
        BLEQ     xputc
//   32 
//   33 
//   34 
//   35 	if (outptr) {
        LDR.W    R0,??DataTable11
        LDR      R1,[R0, #+4]
        CBZ.N    R1,??xputc_0
//   36 		*outptr++ = (unsigned char)c;
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+4]
        STRB     R4,[R1, #-1]!
//   37 		return;
        POP      {R4,PC}
//   38 	}
//   39 
//   40 	if (xfunc_out) xfunc_out((unsigned char)c);
??xputc_0:
        LDR      R1,[R0, #+0]
        MOVS     R0,R1
        BEQ.N    ??xputc_1
        MOV      R0,R4
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall
        ANOTE "tailcall"
        BX       R1
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   41 }
??xputc_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   42 
//   43 
//   44 
//   45 /*----------------------------------------------*/
//   46 /* Put a null-terminated string                 */
//   47 /*----------------------------------------------*/
//   48 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function xputs
        THUMB
//   49 void xputs (					/* Put a string to the default device */
//   50 	const char* str				/* Pointer to the string */
//   51 )
//   52 {
xputs:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        B.N      ??xputs_0
//   53 	while (*str)
//   54 		xputc(*str++);
??xputs_1:
        LDRB     R0,[R4], #+1
          CFI FunCall xputc
        BL       xputc
??xputs_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??xputs_1
//   55 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   56 
//   57 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function xfputs
        THUMB
//   58 void xfputs (					/* Put a string to the specified device */
//   59 	void(*func)(unsigned char),	/* Pointer to the output function */
//   60 	const char*	str				/* Pointer to the string */
//   61 )
//   62 {
xfputs:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//   63 	void (*pf)(unsigned char);
//   64 
//   65 
//   66 	pf = xfunc_out;		/* Save current output device */
        LDR.W    R5,??DataTable11
        LDR      R6,[R5, #+0]
//   67 	xfunc_out = func;	/* Switch output to specified device */
        STR      R0,[R5, #+0]
        MOV      R4,R1
        B.N      ??xfputs_0
//   68 	while (*str)		/* Put the string */
//   69 		xputc(*str++);
??xfputs_1:
        LDRB     R0,[R4], #+1
          CFI FunCall xputc
        BL       xputc
??xfputs_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??xfputs_1
//   70 	xfunc_out = pf;		/* Restore output device */
        STR      R6,[R5, #+0]
//   71 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//   72 
//   73 
//   74 
//   75 /*----------------------------------------------*/
//   76 /* Formatted string output                      */
//   77 /*----------------------------------------------*/
//   78 /*  xprintf("%d", 1234);			"1234"
//   79     xprintf("%6d,%3d%%", -200, 5);	"  -200,  5%"
//   80     xprintf("%-6u", 100);			"100   "
//   81     xprintf("%ld", 12345678L);		"12345678"
//   82     xprintf("%04x", 0xA3);			"00a3"
//   83     xprintf("%08LX", 0x123ABC);		"00123ABC"
//   84     xprintf("%016b", 0x550F);		"0101010100001111"
//   85     xprintf("%s", "String");		"String"
//   86     xprintf("%-4s", "abc");			"abc "
//   87     xprintf("%4s", "abc");			" abc"
//   88     xprintf("%c", 'a');				"a"
//   89     xprintf("%f", 10.0);            <xprintf lacks floating point support>
//   90 */
//   91 
//   92 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function xvprintf
        THUMB
//   93 void xvprintf (
//   94 	const char*	fmt,	/* Pointer to the format string */
//   95 	va_list arp			/* Pointer to arguments */
//   96 )
//   97 {
xvprintf:
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
        MOV      R9,R1
        LDR.W    R6,??DataTable11
        B.N      ??xvprintf_0
//   98 	unsigned int r, i, j, w, f;
//   99 	unsigned long v;
//  100 	char s[32], c, d, *p;
//  101 
//  102 
//  103 	for (;;) {
//  104 		c = *fmt++;					/* Get a char */
//  105 		if (!c) break;				/* End of format? */
//  106 		if (c != '%') {				/* Pass through it if not a % sequense */
//  107 			xputc(c); continue;
//  108 		}
//  109 		f = 0;
//  110 		c = *fmt++;					/* Get first char of the sequense */
//  111 		if (c == '0') {				/* Flag: '0' padded */
//  112 			f = 1; c = *fmt++;
//  113 		} else {
//  114 			if (c == '-') {			/* Flag: left justified */
//  115 				f = 2; c = *fmt++;
//  116 			}
//  117 		}
//  118 		for (w = 0; c >= '0' && c <= '9'; c = *fmt++)	/* Minimum width */
//  119 			w = w * 10 + c - '0';
//  120 		if (c == 'l' || c == 'L') {	/* Prefix: Size is long int */
//  121 			f |= 4; c = *fmt++;
//  122 		}
//  123 		if (!c) break;				/* End of format? */
//  124 		d = c;
//  125 		if (d >= 'a') d -= 0x20;
//  126 		switch (d) {				/* Type is... */
//  127 		case 'S' :					/* String */
//  128 			p = va_arg(arp, char*);
//  129 			for (j = 0; p[j]; j++) ;
//  130 			while (!(f & 2) && j++ < w) xputc(' ');
//  131 			xputs(p);
//  132 			while (j++ < w) xputc(' ');
//  133 			continue;
//  134 		case 'C' :					/* Character */
//  135 			xputc((char)va_arg(arp, int)); continue;
??xvprintf_1:
        LDR      R0,[R9], #+4
        UXTB     R0,R0
??xvprintf_2:
          CFI FunCall xputc
        BL       xputc
??xvprintf_0:
        LDRB     R0,[R8], #+1
        CMP      R0,#+0
        BEQ.W    ??xvprintf_3
        CMP      R0,#+37
        BNE.N    ??xvprintf_2
        LDRB     R0,[R8], #+1
        MOVS     R1,#+0
        CMP      R0,#+48
        IT       EQ 
        MOVEQ    R1,#+1
        BEQ.N    ??xvprintf_4
        CMP      R0,#+45
        BNE.N    ??xvprintf_5
        MOVS     R1,#+2
??xvprintf_4:
        LDRB     R0,[R8], #+1
??xvprintf_5:
        MOV      R10,#+0
        B.N      ??xvprintf_6
??xvprintf_7:
        ADD      R2,R10,R10, LSL #+2
        ADD      R0,R0,R2, LSL #+1
        SUB      R10,R0,#+48
        LDRB     R0,[R8], #+1
??xvprintf_6:
        SUB      R2,R0,#+48
        CMP      R2,#+10
        BCC.N    ??xvprintf_7
        CMP      R0,#+108
        ITEE     NE 
        CMPNE    R0,#+76
        ORREQ    R1,R1,#0x4
        LDRBEQ   R0,[R8], #+1
        CMP      R0,#+0
        BEQ.W    ??xvprintf_3
        MOV      R4,R0
        CMP      R4,#+97
        ITT      GE 
        SUBGE    R2,R4,#+32
        UXTBGE   R4,R2
        CMP      R4,#+66
        BEQ.N    ??xvprintf_8
        CMP      R4,#+67
        BEQ.N    ??xvprintf_1
        CMP      R4,#+68
        BEQ.N    ??xvprintf_9
        CMP      R4,#+79
        BEQ.N    ??xvprintf_10
        CMP      R4,#+83
        BEQ.N    ??xvprintf_11
        CMP      R4,#+85
        BEQ.N    ??xvprintf_9
        CMP      R4,#+88
        BEQ.N    ??xvprintf_12
        B.N      ??xvprintf_2
??xvprintf_11:
        LDR      R4,[R9], #+4
        MOVS     R5,#+0
        MOV      R0,R4
        B.N      ??xvprintf_13
??xvprintf_14:
        ADDS     R5,R5,#+1
??xvprintf_13:
        LDRB     R2,[R0], #+1
        CMP      R2,#+0
        BNE.N    ??xvprintf_14
        LSLS     R0,R1,#+30
        BPL.N    ??xvprintf_15
        B.N      ??xvprintf_16
??xvprintf_17:
        LDR      R1,[R6, #+0]
        MOVS     R0,R1
        ITT      NE 
        MOVNE    R0,#+32
        BLXNE    R1
??xvprintf_15:
        MOV      R0,R5
        ADDS     R5,R0,#+1
        CMP      R0,R10
        BCS.N    ??xvprintf_16
        LDR      R0,[R6, #+4]
        CMP      R0,#+0
        BEQ.N    ??xvprintf_17
        MOVS     R1,#+32
        STRB     R1,[R0], #+1
        STR      R0,[R6, #+4]
        B.N      ??xvprintf_15
??xvprintf_18:
        LDRB     R0,[R4], #+1
          CFI FunCall xputc
        BL       xputc
??xvprintf_16:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??xvprintf_18
??xvprintf_19:
        CMP      R5,R10
        BCS.N    ??xvprintf_0
        LDR      R0,[R6, #+4]
        ADDS     R5,R5,#+1
        CBZ.N    R0,??xvprintf_20
        MOVS     R1,#+32
        STRB     R1,[R0], #+1
        STR      R0,[R6, #+4]
        B.N      ??xvprintf_19
??xvprintf_20:
        LDR      R1,[R6, #+0]
        MOVS     R0,R1
        BEQ.N    ??xvprintf_19
        MOVS     R0,#+32
          CFI FunCall
        BLX      R1
        B.N      ??xvprintf_19
//  136 		case 'B' :					/* Binary */
//  137 			r = 2; break;
??xvprintf_8:
        MOVS     R2,#+2
//  138 		case 'O' :					/* Octal */
//  139 			r = 8; break;
//  140 		case 'D' :					/* Signed decimal */
//  141 		case 'U' :					/* Unsigned decimal */
//  142 			r = 10; break;
//  143 		case 'X' :					/* Hexdecimal */
//  144 			r = 16; break;
//  145 		default:					/* Unknown type (passthrough) */
//  146 			xputc(c); continue;
//  147 		}
//  148 
//  149 		/* Get an argument and put it in numeral */
//  150 		v = (f & 4) ? va_arg(arp, long) : ((d == 'D') ? (long)va_arg(arp, int) : (long)va_arg(arp, unsigned int));
??xvprintf_21:
        LDR      R3,[R9], #+4
        B.N      ??xvprintf_22
??xvprintf_10:
        MOVS     R2,#+8
        B.N      ??xvprintf_21
??xvprintf_9:
        MOVS     R2,#+10
        B.N      ??xvprintf_21
??xvprintf_12:
        MOVS     R2,#+16
        B.N      ??xvprintf_21
//  151 		if (d == 'D' && (v & 0x80000000)) {
??xvprintf_22:
        CMP      R4,#+68
        BNE.N    ??xvprintf_23
        CMP      R3,#+0
        ITT      MI 
        RSBMI    R3,R3,#+0
        ORRMI    R1,R1,#0x8
//  152 			v = 0 - v;
//  153 			f |= 8;
//  154 		}
//  155 		i = 0;
??xvprintf_23:
        MOVS     R7,#+0
        ADD      R12,SP,#+0
//  156 		do {
//  157 			d = (char)(v % r); v /= r;
??xvprintf_24:
        UDIV     LR,R3,R2
        MLS      R4,R2,LR,R3
        UXTB     R4,R4
//  158 			if (d > 9) d += (c == 'x') ? 0x27 : 0x07;
        CMP      R4,#+10
        MOV      R3,LR
        BLT.N    ??xvprintf_25
        CMP      R0,#+120
        ITE      EQ 
        MOVEQ    LR,#+39
        MOVNE    LR,#+7
        ADD      R4,LR,R4
        UXTB     R4,R4
//  159 			s[i++] = d + '0';
??xvprintf_25:
        ADDS     R4,R4,#+48
        STRB     R4,[R12], #+1
        ADDS     R7,R7,#+1
//  160 		} while (v && i < sizeof(s));
        CBZ.N    R3,??xvprintf_26
        CMP      R7,#+32
        BCC.N    ??xvprintf_24
//  161 		if (f & 8) s[i++] = '-';
??xvprintf_26:
        LSLS     R0,R1,#+28
        BPL.N    ??xvprintf_27
        ADD      R2,SP,#+0
        MOVS     R0,#+45
        STRB     R0,[R7, R2]
        ADDS     R7,R7,#+1
//  162 		j = i; d = (f & 1) ? '0' : ' ';
??xvprintf_27:
        LSLS     R0,R1,#+31
        ITE      MI 
        MOVMI    R4,#+48
        MOVPL    R4,#+32
//  163 		while (!(f & 2) && j++ < w) xputc(d);
        LSLS     R0,R1,#+30
        MOV      R5,R7
        BPL.N    ??xvprintf_28
//  164 		do xputc(s[--i]); while(i);
??xvprintf_29:
        SUBS     R7,R7,#+1
        ADD      R0,SP,#+0
        LDRB     R4,[R7, R0]
        CMP      R4,#+10
        ITT      EQ 
        MOVEQ    R0,#+13
        BLEQ     xputc
        LDR      R0,[R6, #+4]
        CBZ.N    R0,??xvprintf_30
        STRB     R4,[R0], #+1
        STR      R0,[R6, #+4]
        B.N      ??xvprintf_31
??xvprintf_32:
        LDR      R1,[R6, #+0]
        MOVS     R0,R1
        ITT      NE 
        MOVNE    R0,R4
        BLXNE    R1
??xvprintf_28:
        MOV      R0,R5
        ADDS     R5,R0,#+1
        CMP      R0,R10
        BCS.N    ??xvprintf_29
        CMP      R4,#+10
        ITT      EQ 
        MOVEQ    R0,#+13
        BLEQ     xputc
        LDR      R0,[R6, #+4]
        CMP      R0,#+0
        BEQ.N    ??xvprintf_32
        STRB     R4,[R0], #+1
        STR      R0,[R6, #+4]
        B.N      ??xvprintf_28
??xvprintf_30:
        LDR      R1,[R6, #+0]
        MOVS     R0,R1
        ITT      NE 
        MOVNE    R0,R4
        BLXNE    R1
??xvprintf_31:
        CMP      R7,#+0
        BNE.N    ??xvprintf_29
//  165 		while (j++ < w) xputc(' ');
??xvprintf_33:
        CMP      R5,R10
        BCS.W    ??xvprintf_0
        LDR      R0,[R6, #+4]
        ADDS     R5,R5,#+1
        CBZ.N    R0,??xvprintf_34
        MOVS     R1,#+32
        STRB     R1,[R0], #+1
        STR      R0,[R6, #+4]
        B.N      ??xvprintf_33
??xvprintf_34:
        LDR      R1,[R6, #+0]
        MOVS     R0,R1
        BEQ.N    ??xvprintf_33
        MOVS     R0,#+32
          CFI FunCall
        BLX      R1
        B.N      ??xvprintf_33
//  166 	}
//  167 }
??xvprintf_3:
        ADD      SP,SP,#+32
          CFI CFA R13+32
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock3
//  168 
//  169 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function xprintf
        THUMB
//  170 void xprintf (			/* Put a formatted string to the default device */
//  171 	const char*	fmt,	/* Pointer to the format string */
//  172 	...					/* Optional arguments */
//  173 )
//  174 {
xprintf:
        PUSH     {R1-R3}
          CFI CFA R13+12
        PUSH     {LR}
          CFI R14 Frame(CFA, -16)
          CFI CFA R13+16
//  175 	va_list arp;
//  176 
//  177 
//  178 	va_start(arp, fmt);
        ADD      R1,SP,#+4
//  179 	xvprintf(fmt, arp);
          CFI FunCall xvprintf
        BL       xvprintf
//  180 	va_end(arp);
//  181 }
        LDR      PC,[SP], #+16    ;; return
          CFI EndBlock cfiBlock4
//  182 
//  183 
//  184 
//  185 
//  186 
//  187 
//  188 
//  189 
//  190 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function xsprintf
        THUMB
//  191 void xsprintf (			/* Put a formatted string to the memory */
//  192 	char* buff,			/* Pointer to the output buffer */
//  193 	const char*	fmt,	/* Pointer to the format string */
//  194 	...					/* Optional arguments */
//  195 )
//  196 {
xsprintf:
        PUSH     {R2,R3}
          CFI CFA R13+8
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  197 	va_list arp;
//  198 
//  199 
//  200 	outptr = buff;		/* Switch destination for memory */
        LDR.N    R4,??DataTable11
        MOV      R2,R1
        STR      R0,[R4, #+4]
//  201 
//  202 	va_start(arp, fmt);
        ADD      R1,SP,#+8
//  203 	xvprintf(fmt, arp);
        MOV      R0,R2
          CFI FunCall xvprintf
        BL       xvprintf
//  204 	va_end(arp);
//  205 
//  206 	*outptr = 0;		/* Terminate output string with a \0 */
        LDR      R1,[R4, #+4]
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  207 	outptr = 0;			/* Switch destination for device */
        STR      R0,[R4, #+4]
//  208 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+12
        LDR      PC,[SP], #+12    ;; return
          CFI EndBlock cfiBlock5
//  209 
//  210 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function xfprintf
        THUMB
//  211 void xfprintf (					/* Put a formatted string to the specified device */
//  212 	void(*func)(unsigned char),	/* Pointer to the output function */
//  213 	const char*	fmt,			/* Pointer to the format string */
//  214 	...							/* Optional arguments */
//  215 )
//  216 {
xfprintf:
        PUSH     {R2,R3}
          CFI CFA R13+8
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  217 	va_list arp;
//  218 	void (*pf)(unsigned char);
//  219 
//  220 
//  221 	pf = xfunc_out;		/* Save current output device */
        LDR.N    R4,??DataTable11
        LDR      R5,[R4, #+0]
//  222 	xfunc_out = func;	/* Switch output to specified device */
        STR      R0,[R4, #+0]
        MOV      R2,R1
//  223 
//  224 	va_start(arp, fmt);
        ADD      R1,SP,#+16
//  225 	xvprintf(fmt, arp);
        MOV      R0,R2
          CFI FunCall xvprintf
        BL       xvprintf
//  226 	va_end(arp);
//  227 
//  228 	xfunc_out = pf;		/* Restore output device */
        STR      R5,[R4, #+0]
//  229 }
        POP      {R0,R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+12
        LDR      PC,[SP], #+12    ;; return
          CFI EndBlock cfiBlock6
//  230 
//  231 
//  232 
//  233 /*----------------------------------------------*/
//  234 /* Dump a line of binary dump                   */
//  235 /*----------------------------------------------*/
//  236 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function put_dump
        THUMB
//  237 void put_dump (
//  238 	const void* buff,		/* Pointer to the array to be dumped */
//  239 	unsigned long addr,		/* Heading address value */
//  240 	int len,				/* Number of items to be dumped */
//  241 	int width				/* Size of the items (DW_CHAR, DW_SHORT, DW_LONG) */
//  242 )
//  243 {
put_dump:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R5,R2
        MOV      R6,R3
//  244 	int i;
//  245 	const unsigned char *bp;
//  246 	const unsigned short *sp;
//  247 	const unsigned long *lp;
//  248 
//  249 
//  250 	xprintf("%08lX ", addr);		/* address */
        ADR.W    R0,?_0
          CFI FunCall xprintf
        BL       xprintf
//  251 
//  252 	switch (width) {
        CMP      R6,#+1
        BEQ.N    ??put_dump_0
        CMP      R6,#+2
        BEQ.N    ??put_dump_1
        CMP      R6,#+4
        BEQ.N    ??put_dump_2
        B.N      ??put_dump_3
//  253 	case DW_CHAR:
//  254 		bp = buff;
//  255 		for (i = 0; i < len; i++)		/* Hexdecimal dump */
??put_dump_0:
        CMP      R5,#+1
        BLT.N    ??put_dump_4
        MOV      R6,R4
        MOV      R7,R5
        ADR.W    R8,?_1
//  256 			xprintf(" %02X", bp[i]);
??put_dump_5:
        LDRB     R1,[R6], #+1
        MOV      R0,R8
          CFI FunCall xprintf
        BL       xprintf
        SUBS     R7,R7,#+1
        BNE.N    ??put_dump_5
//  257 		xputc(' ');
??put_dump_4:
        MOVS     R0,#+32
          CFI FunCall xputc
        BL       xputc
//  258 		for (i = 0; i < len; i++)		/* ASCII dump */
        CMP      R5,#+1
        BLT.N    ??put_dump_3
//  259 			xputc((bp[i] >= ' ' && bp[i] <= '~') ? bp[i] : '.');
??put_dump_6:
        LDRB     R0,[R4, #+0]
        SUB      R1,R0,#+32
        CMP      R1,#+95
        IT       CS 
        MOVCS    R0,#+46
          CFI FunCall xputc
        BL       xputc
        ADDS     R4,R4,#+1
        SUBS     R5,R5,#+1
        BNE.N    ??put_dump_6
        B.N      ??put_dump_3
//  260 		break;
//  261 	case DW_SHORT:
//  262 		sp = buff;
??put_dump_1:
        ADR.W    R6,?_2
//  263 		do								/* Hexdecimal dump */
//  264 			xprintf(" %04X", *sp++);
??put_dump_7:
        LDRH     R1,[R4], #+2
        MOV      R0,R6
          CFI FunCall xprintf
        BL       xprintf
//  265 		while (--len);
        SUBS     R5,R5,#+1
        BNE.N    ??put_dump_7
        B.N      ??put_dump_3
//  266 		break;
//  267 	case DW_LONG:
//  268 		lp = buff;
??put_dump_2:
        ADR.W    R6,?_3
//  269 		do								/* Hexdecimal dump */
//  270 			xprintf(" %08LX", *lp++);
??put_dump_8:
        LDR      R1,[R4], #+4
        MOV      R0,R6
          CFI FunCall xprintf
        BL       xprintf
//  271 		while (--len);
        SUBS     R5,R5,#+1
        BNE.N    ??put_dump_8
//  272 		break;
//  273 	}
//  274 
//  275 	xputc('\n');
??put_dump_3:
        MOVS     R0,#+13
          CFI FunCall xputc
        BL       xputc
        LDR.N    R0,??DataTable11
        LDR      R1,[R0, #+4]
        CBZ.N    R1,??put_dump_9
        LDR      R2,[R0, #+4]
        ADDS     R2,R2,#+1
        STR      R2,[R0, #+4]
        MOVS     R1,#+10
        STRB     R1,[R2, #-1]!
//  276 }
        POP      {R4-R8,PC}
??put_dump_9:
        LDR      R1,[R0, #+0]
        MOVS     R0,R1
        BEQ.N    ??put_dump_10
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R0,#+10
          CFI FunCall
        ANOTE "tailcall"
        BX       R1
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
??put_dump_10:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock7

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
xfunc_out:
        DS8 4
        DS8 4
//  277 
//  278 #endif /* _USE_XFUNC_OUT */
//  279 
//  280 
//  281 
//  282 #if _USE_XFUNC_IN
//  283 unsigned char (*xfunc_in)(void);	/* Pointer to the input stream */
xfunc_in:
        DS8 4
//  284 
//  285 /*----------------------------------------------*/
//  286 /* Get a line from the input                    */
//  287 /*----------------------------------------------*/
//  288 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function xgets
        THUMB
//  289 int xgets (		/* 0:End of stream, 1:A line arrived */
//  290 	char* buff,	/* Pointer to the buffer */
//  291 	int len		/* Buffer length */
//  292 )
//  293 {
xgets:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  294 	int c, i;
//  295 
//  296 
//  297 	if (!xfunc_in) return 0;		/* No input function specified */
        LDR.N    R4,??DataTable11
        MOV      R5,R0
        LDR      R0,[R4, #+8]
        CBZ.N    R0,??xgets_0
//  298 
//  299 	i = 0;
        MOVS     R6,#+0
        SUBS     R7,R1,#+1
        B.N      ??xgets_1
//  300 	for (;;) {
//  301 		c = xfunc_in();				/* Get a char from the incoming stream */
//  302 		if (!c) return 0;			/* End of stream? */
//  303 		if (c == '\r') break;		/* End of line? */
//  304 		if (c == '\b' && i) {		/* Back space? */
//  305 			i--;
//  306 			if (_LINE_ECHO) xputc(c);
//  307 			continue;
//  308 		}
//  309 		if (c >= ' ' && i < len - 1) {	/* Visible chars */
??xgets_2:
        CMP      R0,#+32
        BLT.N    ??xgets_1
        CMP      R6,R7
        BGE.N    ??xgets_1
//  310 			buff[i++] = c;
        STRB     R0,[R6, R5]
        ADDS     R6,R6,#+1
//  311 			if (_LINE_ECHO) xputc(c);
          CFI FunCall xputc
        BL       xputc
//  312 		}
??xgets_1:
        LDR      R0,[R4, #+8]
          CFI FunCall
        BLX      R0
        CBNZ.N   R0,??xgets_3
??xgets_0:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
??xgets_3:
        CMP      R0,#+13
        BNE.N    ??xgets_4
//  313 	}
//  314 	buff[i] = 0;	/* Terminate with a \0 */
        MOVS     R0,#+0
        STRB     R0,[R6, R5]
//  315 	if (_LINE_ECHO) xputc('\n');
        MOVS     R0,#+13
          CFI FunCall xputc
        BL       xputc
        LDR      R0,[R4, #+4]
        CBZ.N    R0,??xgets_5
        LDR      R1,[R4, #+4]
        ADDS     R1,R1,#+1
        STR      R1,[R4, #+4]
        MOVS     R0,#+10
        STRB     R0,[R1, #-1]!
        B.N      ??xgets_6
??xgets_5:
        LDR      R1,[R4, #+0]
        MOVS     R0,R1
        ITT      NE 
        MOVNE    R0,#+10
        BLXNE    R1
//  316 	return 1;
??xgets_6:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
??xgets_4:
        CMP      R0,#+8
        BNE.N    ??xgets_2
        CMP      R6,#+0
        BEQ.N    ??xgets_1
        LDR      R0,[R4, #+4]
        SUBS     R6,R6,#+1
        CBZ.N    R0,??xgets_7
        LDR      R1,[R4, #+4]
        ADDS     R1,R1,#+1
        STR      R1,[R4, #+4]
        MOVS     R0,#+8
        STRB     R0,[R1, #-1]!
        B.N      ??xgets_1
??xgets_7:
        LDR      R1,[R4, #+0]
        MOVS     R0,R1
        BEQ.N    ??xgets_1
        MOVS     R0,#+8
          CFI FunCall
        BLX      R1
        B.N      ??xgets_1
          CFI EndBlock cfiBlock8
//  317 }
//  318 
//  319 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function xfgets
        THUMB
//  320 int xfgets (	/* 0:End of stream, 1:A line arrived */
//  321 	unsigned char (*func)(void),	/* Pointer to the input stream function */
//  322 	char* buff,	/* Pointer to the buffer */
//  323 	int len		/* Buffer length */
//  324 )
//  325 {
xfgets:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  326 	unsigned char (*pf)(void);
//  327 	int n;
//  328 
//  329 
//  330 	pf = xfunc_in;			/* Save current input device */
        LDR.N    R4,??DataTable11
        LDR      R5,[R4, #+8]
//  331 	xfunc_in = func;		/* Switch input to specified device */
        STR      R0,[R4, #+8]
        MOV      R3,R1
        MOV      R1,R2
//  332 	n = xgets(buff, len);	/* Get a line */
        MOV      R0,R3
          CFI FunCall xgets
        BL       xgets
//  333 	xfunc_in = pf;			/* Restore input device */
        STR      R5,[R4, #+8]
//  334 
//  335 	return n;
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock9
//  336 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     xfunc_out
//  337 
//  338 
//  339 /*----------------------------------------------*/
//  340 /* Get a value of the string                    */
//  341 /*----------------------------------------------*/
//  342 /*	"123 -5   0x3ff 0b1111 0377  w "
//  343 	    ^                           1st call returns 123 and next ptr
//  344 	       ^                        2nd call returns -5 and next ptr
//  345                    ^                3rd call returns 1023 and next ptr
//  346                           ^         4th call returns 15 and next ptr
//  347                                ^    5th call returns 255 and next ptr
//  348                                   ^ 6th call fails and returns 0
//  349 */
//  350 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function xatoi
          CFI NoCalls
        THUMB
//  351 int xatoi (			/* 0:Failed, 1:Successful */
//  352 	char **str,		/* Pointer to pointer to the string */
//  353 	long *res		/* Pointer to the valiable to store the value */
//  354 )
//  355 {
xatoi:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  356 	unsigned long val;
//  357 	unsigned char c, r, s = 0;
        MOVS     R2,#+0
//  358 
//  359 
//  360 	*res = 0;
        STR      R2,[R1, #+0]
        B.N      ??xatoi_0
//  361 
//  362 	while ((c = **str) == ' ') (*str)++;	/* Skip leading spaces */
??xatoi_1:
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
??xatoi_0:
        LDR      R3,[R0, #+0]
        LDRB     R4,[R3, #+0]
        CMP      R4,#+32
        MOV      R5,R4
        BEQ.N    ??xatoi_1
//  363 
//  364 	if (c == '-') {		/* negative? */
        CMP      R5,#+45
        BNE.N    ??xatoi_2
//  365 		s = 1;
//  366 		c = *(++(*str));
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
        MOVS     R2,#+1
        LDRB     R5,[R3, #+0]
//  367 	}
//  368 
//  369 	if (c == '0') {
??xatoi_2:
        CMP      R5,#+48
        BNE.N    ??xatoi_3
//  370 		c = *(++(*str));
        LDR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
        LDRB     R5,[R3, #+0]
//  371 		switch (c) {
        CMP      R5,#+98
        BEQ.N    ??xatoi_4
        CMP      R5,#+120
        BNE.N    ??xatoi_5
//  372 		case 'x':		/* hexdecimal */
//  373 			r = 16; c = *(++(*str));
        MOVS     R4,#+16
        B.N      ??xatoi_6
//  374 			break;
//  375 		case 'b':		/* binary */
//  376 			r = 2; c = *(++(*str));
??xatoi_4:
        MOVS     R4,#+2
??xatoi_6:
        ADDS     R3,R3,#+1
        STR      R3,[R0, #+0]
        LDRB     R5,[R3, #+0]
//  377 			break;
        B.N      ??xatoi_7
//  378 		default:
//  379 			if (c <= ' ') return 1;	/* single zero */
??xatoi_5:
        CMP      R5,#+33
        BLT.N    ??xatoi_8
//  380 			if (c < '0' || c > '9') return 0;	/* invalid char */
        SUB      R3,R5,#+48
        CMP      R3,#+10
        BCS.N    ??xatoi_9
//  381 			r = 8;		/* octal */
        MOVS     R4,#+8
        B.N      ??xatoi_7
//  382 		}
//  383 	} else {
//  384 		if (c < '0' || c > '9') return 0;	/* EOL or invalid char */
??xatoi_3:
        SUB      R3,R5,#+48
        CMP      R3,#+10
        BCS.N    ??xatoi_9
//  385 		r = 10;			/* decimal */
        MOVS     R4,#+10
//  386 	}
//  387 
//  388 	val = 0;
??xatoi_7:
        MOVS     R3,#+0
        B.N      ??xatoi_10
//  389 	while (c > ' ') {
//  390 		if (c >= 'a') c -= 0x20;
//  391 		c -= '0';
//  392 		if (c >= 17) {
//  393 			c -= 7;
//  394 			if (c <= 9) return 0;	/* invalid char */
//  395 		}
//  396 		if (c >= r) return 0;		/* invalid char for current radix */
//  397 		val = val * r + c;
??xatoi_11:
        MLA      R3,R4,R3,R5
//  398 		c = *(++(*str));
        LDR      R5,[R0, #+0]
        ADDS     R5,R5,#+1
        STR      R5,[R0, #+0]
        LDRB     R5,[R5, #+0]
??xatoi_10:
        CMP      R5,#+33
        BLT.N    ??xatoi_12
        CMP      R5,#+97
        ITT      GE 
        SUBGE    R5,R5,#+32
        UXTBGE   R5,R5
        SUBS     R5,R5,#+48
        UXTB     R5,R5
        CMP      R5,#+17
        BLT.N    ??xatoi_13
        SUBS     R5,R5,#+7
        UXTB     R5,R5
        CMP      R5,#+10
        BLT.N    ??xatoi_9
??xatoi_13:
        CMP      R5,R4
        BLT.N    ??xatoi_11
??xatoi_9:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        MOVS     R0,#+0
        BX       LR
          CFI R4 Frame(CFA, -8)
          CFI R5 Frame(CFA, -4)
          CFI CFA R13+8
//  399 	}
//  400 	if (s) val = 0 - val;			/* apply sign if needed */
??xatoi_12:
        CBZ.N    R2,??xatoi_14
        RSBS     R3,R3,#+0
//  401 
//  402 	*res = val;
??xatoi_14:
        STR      R3,[R1, #+0]
//  403 	return 1;
??xatoi_8:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  404 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_0:
        DC8 "%08lX "
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 " %02X"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 " %04X"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 " %08LX"
        DC8 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  405 
//  406 #endif /* _USE_XFUNC_IN */
// 
//    12 bytes in section .bss
// 1 196 bytes in section .text
// 
// 1 196 bytes of CODE memory
//    12 bytes of DATA memory
//
//Errors: none
//Warnings: none
