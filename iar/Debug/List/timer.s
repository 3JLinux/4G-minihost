///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:40
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\timer.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\timer.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\timer.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN clock_time

        PUBLIC timer_expired
        PUBLIC timer_remaining
        PUBLIC timer_reset
        PUBLIC timer_restart
        PUBLIC timer_set
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\timer.c
//    1 /*
//    2  * Copyright (c) 2004, Swedish Institute of Computer Science.
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
//   31  * Author: Adam Dunkels <adam@sics.se>
//   32  *
//   33  */
//   34 
//   35 /**
//   36  * \file
//   37  * Timer library implementation.
//   38  * \author
//   39  * Adam Dunkels <adam@sics.se>
//   40  */
//   41 
//   42 /**
//   43  * \addtogroup timer
//   44  * @{
//   45  */
//   46 
//   47 #include "contiki-conf.h"
//   48 #include "sys/clock.h"
//   49 #include "sys/timer.h"
//   50 
//   51 /*---------------------------------------------------------------------------*/
//   52 /**
//   53  * Set a timer.
//   54  *
//   55  * This function is used to set a timer for a time sometime in the
//   56  * future. The function timer_expired() will evaluate to true after
//   57  * the timer has expired.
//   58  *
//   59  * \param t A pointer to the timer
//   60  * \param interval The interval before the timer expires.
//   61  *
//   62  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function timer_set
          CFI NoCalls
        THUMB
//   63 void
//   64 timer_set(struct timer *t, clock_time_t interval)
//   65 {
timer_set:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//   66   t->interval = interval;
        STR      R1,[R4, #+4]
//   67   t->start = clock_time();
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock0
//   68 }
//   69 /*---------------------------------------------------------------------------*/
//   70 /**
//   71  * Reset the timer with the same interval.
//   72  *
//   73  * This function resets the timer with the same interval that was
//   74  * given to the timer_set() function. The start point of the interval
//   75  * is the exact time that the timer last expired. Therefore, this
//   76  * function will cause the timer to be stable over time, unlike the
//   77  * timer_restart() function.
//   78  *
//   79  * \param t A pointer to the timer.
//   80  *
//   81  * \sa timer_restart()
//   82  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function timer_reset
          CFI NoCalls
        THUMB
//   83 void
//   84 timer_reset(struct timer *t)
//   85 {
//   86   t->start += t->interval;
timer_reset:
        LDR      R1,[R0, #+0]
        LDR      R2,[R0, #+4]
        ADDS     R1,R2,R1
        STR      R1,[R0, #+0]
//   87 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   88 /*---------------------------------------------------------------------------*/
//   89 /**
//   90  * Restart the timer from the current point in time
//   91  *
//   92  * This function restarts a timer with the same interval that was
//   93  * given to the timer_set() function. The timer will start at the
//   94  * current time.
//   95  *
//   96  * \note A periodic timer will drift if this function is used to reset
//   97  * it. For preioric timers, use the timer_reset() function instead.
//   98  *
//   99  * \param t A pointer to the timer.
//  100  *
//  101  * \sa timer_reset()
//  102  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function timer_restart
          CFI NoCalls
        THUMB
//  103 void
//  104 timer_restart(struct timer *t)
//  105 {
timer_restart:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
          CFI EndBlock cfiBlock2
//  106   t->start = clock_time();
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI FunCall timer_set clock_time
          CFI FunCall timer_restart clock_time
        THUMB
?Subroutine0:
        BL       clock_time
        STR      R0,[R4, #+0]
//  107 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  108 /*---------------------------------------------------------------------------*/
//  109 /**
//  110  * Check if a timer has expired.
//  111  *
//  112  * This function tests if a timer has expired and returns true or
//  113  * false depending on its status.
//  114  *
//  115  * \param t A pointer to the timer
//  116  *
//  117  * \return Non-zero if the timer has expired, zero otherwise.
//  118  *
//  119  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function timer_expired
        THUMB
//  120 int
//  121 timer_expired(struct timer *t)
//  122 {
timer_expired:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  123   /* Note: Can not return diff >= t->interval so we add 1 to diff and return
//  124      t->interval < diff - required to avoid an internal error in mspgcc. */
//  125   clock_time_t diff = (clock_time() - t->start) + 1;
          CFI FunCall clock_time
        BL       clock_time
//  126   return t->interval < diff;
        LDR      R2,[R4, #+0]
        LDR      R1,[R4, #+4]
        SUBS     R0,R0,R2
        ADDS     R0,R0,#+1
        CMP      R1,R0
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  127 
//  128 }
//  129 /*---------------------------------------------------------------------------*/
//  130 /**
//  131  * The time until the timer expires
//  132  *
//  133  * This function returns the time until the timer expires.
//  134  *
//  135  * \param t A pointer to the timer
//  136  *
//  137  * \return The time until the timer expires
//  138  *
//  139  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function timer_remaining
        THUMB
//  140 clock_time_t
//  141 timer_remaining(struct timer *t)
//  142 {
timer_remaining:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  143   return t->start + t->interval - clock_time();
          CFI FunCall clock_time
        BL       clock_time
        LDR      R1,[R4, #+0]
        LDR      R2,[R4, #+4]
        ADDS     R1,R2,R1
        SUBS     R0,R1,R0
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  144 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  145 /*---------------------------------------------------------------------------*/
//  146 
//  147 /** @} */
//  148 
//  149 
//  150 
// 
// 72 bytes in section .text
// 
// 72 bytes of CODE memory
//
//Errors: none
//Warnings: none
