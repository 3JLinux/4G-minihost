///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:19
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\rtimer.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\rtimer.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rtimer.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN rtimer_arch_init
        EXTERN rtimer_arch_schedule

        PUBLIC rtimer_init
        PUBLIC rtimer_run_next
        PUBLIC rtimer_set
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\rtimer.c
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
//   33 /**
//   34  * \file
//   35  *         Implementation of the architecture-agnostic parts of the real-time timer module.
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  *
//   39  */
//   40 
//   41 /**
//   42  * \addtogroup rt
//   43  * @{
//   44  */
//   45 
//   46 #include "sys/rtimer.h"
//   47 #include "contiki.h"
//   48 
//   49 #define DEBUG 0
//   50 #if DEBUG
//   51 #include <stdio.h>
//   52 #define PRINTF(...) printf(__VA_ARGS__)
//   53 #else
//   54 #define PRINTF(...)
//   55 #endif
//   56 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   57 static struct rtimer *next_rtimer;
next_rtimer:
        DS8 4
//   58 
//   59 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function rtimer_init
          CFI FunCall rtimer_arch_init
        THUMB
//   60 void
//   61 rtimer_init(void)
//   62 {
//   63   rtimer_arch_init();
rtimer_init:
        B.W      rtimer_arch_init
          CFI EndBlock cfiBlock0
//   64 }
//   65 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function rtimer_set
        THUMB
//   66 int
//   67 rtimer_set(struct rtimer *rtimer, rtimer_clock_t time,
//   68 	   rtimer_clock_t duration,
//   69 	   rtimer_callback_t func, void *ptr)
//   70 {
rtimer_set:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   71   int first = 0;
//   72 
//   73   PRINTF("rtimer_set time %d\n", time);
//   74 
//   75   if(next_rtimer == NULL) {
        LDR.N    R4,??DataTable1
        LDR      R5,[R4, #+0]
        MOVS     R2,#+0
        CBNZ.N   R5,??rtimer_set_0
//   76     first = 1;
        MOVS     R2,#+1
//   77   }
//   78 
//   79   rtimer->func = func;
??rtimer_set_0:
        STR      R3,[R0, #+4]
//   80   rtimer->ptr = ptr;
        LDR      R3,[SP, #+16]
        STR      R3,[R0, #+8]
//   81 
//   82   rtimer->time = time;
        STR      R1,[R0, #+0]
//   83   next_rtimer = rtimer;
        STR      R0,[R4, #+0]
//   84 
//   85   if(first == 1) {
        CBZ.N    R2,??rtimer_set_1
//   86     rtimer_arch_schedule(time);
        MOV      R0,R1
          CFI FunCall rtimer_arch_schedule
        BL       rtimer_arch_schedule
//   87   }
//   88   return RTIMER_OK;
??rtimer_set_1:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//   89 }
//   90 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function rtimer_run_next
        THUMB
//   91 void
//   92 rtimer_run_next(void)
//   93 {
rtimer_run_next:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   94   struct rtimer *t;
//   95   if(next_rtimer == NULL) {
        LDR.N    R4,??DataTable1
        LDR      R0,[R4, #+0]
        CBZ.N    R0,??rtimer_run_next_0
//   96     return;
//   97   }
//   98   t = next_rtimer;
//   99   next_rtimer = NULL;
        MOVS     R1,#+0
        STR      R1,[R4, #+0]
//  100   t->func(t, t->ptr);
        LDR      R2,[R0, #+4]
        LDR      R1,[R0, #+8]
          CFI FunCall
        BLX      R2
//  101   if(next_rtimer != NULL) {
        LDR      R0,[R4, #+0]
        CBZ.N    R0,??rtimer_run_next_0
//  102     rtimer_arch_schedule(next_rtimer->time);
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        LDR      R0,[R0, #+0]
          CFI FunCall rtimer_arch_schedule
        B.W      rtimer_arch_schedule
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  103   }
//  104   return;
??rtimer_run_next_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//  105 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     next_rtimer

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  106 /*---------------------------------------------------------------------------*/
//  107 
//  108 /** @}*/
// 
//  4 bytes in section .bss
// 76 bytes in section .text
// 
// 76 bytes of CODE memory
//  4 bytes of DATA memory
//
//Errors: none
//Warnings: 1
