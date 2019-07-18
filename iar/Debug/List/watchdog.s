///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:50
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\watchdog.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\watchdog.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\watchdog.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN IWDG_Enable
        EXTERN IWDG_ReloadCounter
        EXTERN IWDG_SetPrescaler
        EXTERN IWDG_SetReload
        EXTERN IWDG_WriteAccessCmd

        PUBLIC watchdog_init
        PUBLIC watchdog_periodic
        PUBLIC watchdog_reboot
        PUBLIC watchdog_start
        PUBLIC watchdog_stop
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\watchdog.c
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
//   33 #include "dev/watchdog.h"
//   34 #include <stdlib.h>
//   35 
//   36 
//   37 #include "stm32f10x.h"
//   38 #include "stm32f10x_iwdg.h"
//   39 
//   40 //Init IWDG 
//   41 //
//   42 
//   43 static void IWDG_Configuration(void)
//   44 {
//   45 	/* 写入0x5555,用于允许狗狗寄存器写入功能 */
//   46 	IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
//   47 
//   48 	/* 狗狗时钟分频,40K/256=156HZ(6.4ms)*/
//   49 	IWDG_SetPrescaler(IWDG_Prescaler_256);
//   50 
//   51 	/* 喂狗时间 5s/6.4MS=781 .注意不能大于0xfff*/
//   52 	//IWDG_SetReload(781);
//   53 	//IWDG_SetReload(1563); // 10 seconds
//   54 	//IWDG_SetReload(3200);   // 20+ seconds
//   55 	IWDG_SetReload(4000);   // 20+ seconds
//   56 
//   57 	/* 喂狗*/
//   58 	IWDG_ReloadCounter( );
//   59 
//   60 	/* 使能狗狗*/
//   61 	IWDG_Enable( );
//   62 	
//   63 	IWDG_WriteAccessCmd(IWDG_WriteAccess_Disable);
//   64 }
//   65 
//   66 
//   67 
//   68 static void IWDG_Watchdog_Feed( void )
//   69 {
//   70 	#if 0
//   71 	IWDG->KR = IWDG_WriteAccess_Enable;
//   72 	IWDG->KR = 0xaaaa;
//   73 	IWDG->KR = IWDG_WriteAccess_Disable;
//   74 	//IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
//   75 	//IWDG_ReloadCounter();
//   76 	//IWDG_WriteAccessCmd(IWDG_WriteAccess_Disable);
//   77 	#else
//   78 	IWDG_ReloadCounter( );
//   79 	#endif
//   80 }
//   81 
//   82 
//   83 
//   84 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function watchdog_init
        THUMB
//   85 void
//   86 watchdog_init(void)
//   87 {
watchdog_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   88 	IWDG_Configuration( );
        MOVW     R0,#+21845
          CFI FunCall IWDG_WriteAccessCmd
        BL       IWDG_WriteAccessCmd
        MOVS     R0,#+6
          CFI FunCall IWDG_SetPrescaler
        BL       IWDG_SetPrescaler
        MOV      R0,#+4000
          CFI FunCall IWDG_SetReload
        BL       IWDG_SetReload
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
          CFI FunCall IWDG_Enable
        BL       IWDG_Enable
        POP      {R1,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R0,#+0
          CFI FunCall IWDG_WriteAccessCmd
        B.W      IWDG_WriteAccessCmd
          CFI EndBlock cfiBlock0
//   89 }
//   90 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function watchdog_start
          CFI NoCalls
        THUMB
//   91 void
//   92 watchdog_start(void)
//   93 {
//   94 }
watchdog_start:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   95 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function watchdog_periodic
          CFI FunCall IWDG_ReloadCounter
        THUMB
//   96 void
//   97 watchdog_periodic(void)
//   98 {
//   99 	IWDG_Watchdog_Feed( );
watchdog_periodic:
        B.W      IWDG_ReloadCounter
          CFI EndBlock cfiBlock2
//  100 }
//  101 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function watchdog_stop
          CFI NoCalls
        THUMB
//  102 void
//  103 watchdog_stop(void)
//  104 {
//  105 }
watchdog_stop:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  106 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function watchdog_reboot
          CFI NoCalls
        THUMB
//  107 void
//  108 watchdog_reboot(void)
//  109 {
//  110 	// Death by watchdog.
//  111 //	exit(-1);
//  112 }
watchdog_reboot:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  113 /*---------------------------------------------------------------------------*/
// 
// 52 bytes in section .text
// 
// 52 bytes of CODE memory
//
//Errors: none
//Warnings: 1
