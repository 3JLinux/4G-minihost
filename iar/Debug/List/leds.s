///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:01
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\dev\leds.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\dev\leds.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\leds.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN clock_delay
        EXTERN leds_arch_get
        EXTERN leds_arch_init
        EXTERN leds_arch_set

        PUBLIC leds_blink
        PUBLIC leds_get
        PUBLIC leds_init
        PUBLIC leds_off
        PUBLIC leds_on
        PUBLIC leds_set
        PUBLIC leds_toggle
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\dev\leds.c
//    1 /*
//    2  * Copyright (c) 2005, Swedish Institute of Computer Science
//    3  * All rights reserved.
//    4  *
//    5  * Redistribution and use in source and binary forms, with or without
//    6  * modification, are permitted provided that the following conditions
//    7  * are met:
//    8  * 1. Redistributions of source code must retain the above copyright
//    9  *    notice, this list of conditions and the following disclaimer.
//   10  * 2. Redistributions in binary form must reproduce the above copyright
//   11  *    notice, this list of conditions and the following disclaimer in the
//   12  *    documentation and/or other materials provided with the distribution.
//   13  * 3. Neither the name of the Institute nor the names of its contributors
//   14  *    may be used to endorse or promote products derived from this software
//   15  *    without specific prior written permission.
//   16  *
//   17  * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
//   18  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   19  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   20  * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
//   21  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   22  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   23  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   24  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   25  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   26  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   27  * SUCH DAMAGE.
//   28  *
//   29  * This file is part of the Contiki operating system.
//   30  *
//   31  */
//   32 
//   33 #include "dev/leds.h"
//   34 #include "sys/clock.h"
//   35 #include "sys/energest.h"
//   36 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   37 static unsigned char leds;
leds:
        DS8 1
//   38 /*---------------------------------------------------------------------------*/
//   39 static void
//   40 show_leds(unsigned char new_leds)
//   41 {
//   42   unsigned char changed;
//   43   changed = leds ^ new_leds;
//   44   leds = new_leds;
//   45 
//   46   if(changed & LEDS_GREEN) {
//   47     /* Green did change */
//   48     if(leds & LEDS_GREEN) {
//   49       ENERGEST_ON(ENERGEST_TYPE_LED_GREEN);
//   50     } else {
//   51       ENERGEST_OFF(ENERGEST_TYPE_LED_GREEN);
//   52     }
//   53   }
//   54   if(changed & LEDS_YELLOW) {
//   55     if(leds & LEDS_YELLOW) {
//   56       ENERGEST_ON(ENERGEST_TYPE_LED_YELLOW);
//   57     } else {
//   58       ENERGEST_OFF(ENERGEST_TYPE_LED_YELLOW);
//   59     }
//   60   }
//   61   if(changed & LEDS_RED) {
//   62     if(leds & LEDS_RED) {
//   63       ENERGEST_ON(ENERGEST_TYPE_LED_RED);
//   64     } else {
//   65       ENERGEST_OFF(ENERGEST_TYPE_LED_RED);
//   66     }
//   67   }
//   68   leds_arch_set(leds);
//   69 }
//   70 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function leds_init
        THUMB
//   71 void
//   72 leds_init(void)
//   73 {
leds_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   74   leds_arch_init();
          CFI FunCall leds_arch_init
        BL       leds_arch_init
//   75   leds = 0;
        LDR.N    R1,??DataTable4
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//   76 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//   77 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function leds_blink
        THUMB
//   78 void
//   79 leds_blink(void)
//   80 {
leds_blink:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   81   /* Blink all leds that were initially off. */
//   82   unsigned char blink;
//   83   blink = ~leds;
        LDR.N    R4,??DataTable4
        LDRB     R0,[R4, #+0]
        MVNS     R5,R0
//   84   leds_toggle(blink);
        EORS     R0,R5,R0
        STRB     R0,[R4, #+0]
        UXTB     R0,R0
          CFI FunCall leds_arch_set
        BL       leds_arch_set
//   85 
//   86   clock_delay(400);
        MOV      R0,#+400
          CFI FunCall clock_delay
        BL       clock_delay
//   87 
//   88   leds_toggle(blink);
        LDRB     R0,[R4, #+0]
        EORS     R0,R5,R0
        STRB     R0,[R4, #+0]
        UXTB     R0,R0
        POP      {R1,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall leds_arch_set
        B.W      leds_arch_set
          CFI EndBlock cfiBlock1
//   89 }
//   90 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function leds_get
          CFI FunCall leds_arch_get
        THUMB
//   91 unsigned char
//   92 leds_get(void) {
//   93   return leds_arch_get();
leds_get:
        B.W      leds_arch_get
          CFI EndBlock cfiBlock2
//   94 }
//   95 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function leds_set
          CFI NoCalls
        THUMB
//   96 void
//   97 leds_set(unsigned char ledv)
//   98 {
//   99   show_leds(ledv);
leds_set:
        LDR.N    R1,??DataTable4
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock3
//  100 }
//  101 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function leds_on
          CFI NoCalls
        THUMB
//  102 void
//  103 leds_on(unsigned char ledv)
//  104 {
//  105   show_leds(leds | ledv);
leds_on:
        LDR.N    R1,??DataTable4
        LDRB     R2,[R1, #+0]
        ORRS     R0,R0,R2
          CFI EndBlock cfiBlock4
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  106 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine0:
        STRB     R0,[R1, #+0]
          CFI FunCall leds_set leds_arch_set
          CFI FunCall leds_on leds_arch_set
          CFI FunCall leds_off leds_arch_set
          CFI FunCall leds_toggle leds_arch_set
        B.W      leds_arch_set
          CFI EndBlock cfiBlock5
//  107 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function leds_off
          CFI NoCalls
        THUMB
//  108 void
//  109 leds_off(unsigned char ledv)
//  110 {
//  111   show_leds(leds & ~ledv);
leds_off:
        LDR.N    R1,??DataTable4
        LDRB     R2,[R1, #+0]
        BIC      R0,R2,R0
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock6
//  112 }
//  113 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function leds_toggle
          CFI NoCalls
        THUMB
//  114 void
//  115 leds_toggle(unsigned char ledv)
//  116 {
//  117   show_leds(leds ^ ledv);
leds_toggle:
        LDR.N    R1,??DataTable4
        LDRB     R2,[R1, #+0]
        EORS     R0,R0,R2
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock7
//  118 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     leds

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  119 /*---------------------------------------------------------------------------*/
// 
//  1 byte  in section .bss
// 98 bytes in section .text
// 
// 98 bytes of CODE memory
//  1 byte  of DATA memory
//
//Errors: none
//Warnings: 1
