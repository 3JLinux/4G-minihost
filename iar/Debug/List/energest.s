///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:45
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\energest.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\energest.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\energest.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC energest_flush
        PUBLIC energest_init
        PUBLIC energest_type_set
        PUBLIC energest_type_time
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\energest.c
//    1 /*
//    2  * Copyright (c) 2007, Swedish Institute of Computer Science.
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
//   35  *         Implementation of the energy estimation module
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  */
//   39 
//   40 #include "sys/energest.h"
//   41 #include "contiki-conf.h"
//   42 
//   43 #if ENERGEST_CONF_ON
//   44 
//   45 int energest_total_count;
//   46 energest_t energest_total_time[ENERGEST_TYPE_MAX];
//   47 rtimer_clock_t energest_current_time[ENERGEST_TYPE_MAX];
//   48 #ifdef ENERGEST_CONF_LEVELDEVICE_LEVELS
//   49 energest_t energest_leveldevice_current_leveltime[ENERGEST_CONF_LEVELDEVICE_LEVELS];
//   50 #endif
//   51 unsigned char energest_current_mode[ENERGEST_TYPE_MAX];
//   52 
//   53 /*---------------------------------------------------------------------------*/
//   54 void
//   55 energest_init(void)
//   56 {
//   57   int i;
//   58   for(i = 0; i < ENERGEST_TYPE_MAX; ++i) {
//   59     energest_total_time[i].current = energest_current_time[i] = 0;
//   60     energest_current_mode[i] = 0;
//   61   }
//   62 #ifdef ENERGEST_CONF_LEVELDEVICE_LEVELS
//   63   for(i = 0; i < ENERGEST_CONF_LEVELDEVICE_LEVELS; ++i) {
//   64     energest_leveldevice_current_leveltime[i].current = 0;
//   65   }
//   66 #endif
//   67 }
//   68 /*---------------------------------------------------------------------------*/
//   69 unsigned long
//   70 energest_type_time(int type)
//   71 {
//   72   /* Note: does not support ENERGEST_CONF_LEVELDEVICE_LEVELS! */
//   73 #ifndef ENERGEST_CONF_LEVELDEVICE_LEVELS
//   74   if(energest_current_mode[type]) {
//   75     rtimer_clock_t now = RTIMER_NOW();
//   76     energest_total_time[type].current += (rtimer_clock_t)
//   77       (now - energest_current_time[type]);
//   78     energest_current_time[type] = now;
//   79   }
//   80 #endif /* ENERGEST_CONF_LEVELDEVICE_LEVELS */
//   81   return energest_total_time[type].current;
//   82 }
//   83 /*---------------------------------------------------------------------------*/
//   84 unsigned long
//   85 energest_leveldevice_leveltime(int powerlevel)
//   86 {
//   87 #ifdef ENERGEST_CONF_LEVELDEVICE_LEVELS
//   88   return energest_leveldevice_current_leveltime[powerlevel].current;
//   89 #else
//   90   return 0;
//   91 #endif
//   92 }
//   93 /*---------------------------------------------------------------------------*/
//   94 void
//   95 energest_type_set(int type, unsigned long val)
//   96 {
//   97   energest_total_time[type].current = val;
//   98 }
//   99 /*---------------------------------------------------------------------------*/
//  100 /* Note: does not support ENERGEST_CONF_LEVELDEVICE_LEVELS! */
//  101 void
//  102 energest_flush(void)
//  103 {
//  104   rtimer_clock_t now;
//  105   int i;
//  106   for(i = 0; i < ENERGEST_TYPE_MAX; i++) {
//  107     if(energest_current_mode[i]) {
//  108       now = RTIMER_NOW();
//  109       energest_total_time[i].current += (rtimer_clock_t)
//  110 	(now - energest_current_time[i]);
//  111       energest_current_time[i] = now;
//  112     }
//  113   }
//  114 }
//  115 /*---------------------------------------------------------------------------*/
//  116 #else /* ENERGEST_CONF_ON */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function energest_type_set
          CFI NoCalls
        THUMB
//  117 void energest_type_set(int type, unsigned long val) {}
energest_type_set:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function energest_init
          CFI NoCalls
        THUMB
//  118 void energest_init(void) {}
energest_init:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function energest_type_time
          CFI NoCalls
        THUMB
//  119 unsigned long energest_type_time(int type) { return 0; }
energest_type_time:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function energest_flush
          CFI NoCalls
        THUMB
//  120 void energest_flush(void) {}
energest_flush:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  121 #endif /* ENERGEST_CONF_ON */
// 
// 10 bytes in section .text
// 
// 10 bytes of CODE memory
//
//Errors: none
//Warnings: 1
