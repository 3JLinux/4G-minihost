///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\stimer.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\stimer.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stimer.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN clock_seconds

        PUBLIC stimer_elapsed
        PUBLIC stimer_expired
        PUBLIC stimer_remaining
        PUBLIC stimer_reset
        PUBLIC stimer_restart
        PUBLIC stimer_set
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\stimer.c
//    1 /*
//    2  * Copyright (c) 2004, 2008, Swedish Institute of Computer Science.
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
//   31  * Author: Adam Dunkels <adam@sics.se>, Nicolas Tsiftes <nvt@sics.se>
//   32  *
//   33  */
//   34 
//   35 /**
//   36  * \file
//   37  * Timer of seconds library implementation.
//   38  * \author
//   39  * Adam Dunkels <adam@sics.se>, Nicolas Tsiftes <nvt@sics.se>
//   40  */
//   41 
//   42 /**
//   43  * \addtogroup stimer
//   44  * @{
//   45  */
//   46 
//   47 #include "contiki-conf.h"
//   48 #include "sys/clock.h"
//   49 #include "sys/stimer.h"
//   50 
//   51 #define SCLOCK_GEQ(a, b)	((unsigned long)((a) - (b)) < \ 
//   52 				((unsigned long)(~((unsigned long)0)) >> 1))
//   53 
//   54 /*---------------------------------------------------------------------------*/
//   55 /**
//   56  * Set a timer.
//   57  *
//   58  * This function is used to set a timer for a time sometime in the
//   59  * future. The function stimer_expired() will evaluate to true after
//   60  * the timer has expired.
//   61  *
//   62  * \param t A pointer to the timer
//   63  * \param interval The interval before the timer expires.
//   64  *
//   65  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function stimer_set
          CFI NoCalls
        THUMB
//   66 void
//   67 stimer_set(struct stimer *t, unsigned long interval)
//   68 {
stimer_set:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//   69   t->interval = interval;
        STR      R1,[R4, #+4]
//   70   t->start = clock_seconds();
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock0
//   71 }
//   72 /*---------------------------------------------------------------------------*/
//   73 /**
//   74  * Reset the timer with the same interval.
//   75  *
//   76  * This function resets the timer with the same interval that was
//   77  * given to the stimer_set() function. The start point of the interval
//   78  * is the exact time that the timer last expired. Therefore, this
//   79  * function will cause the timer to be stable over time, unlike the
//   80  * stimer_restart() function.
//   81  *
//   82  * \param t A pointer to the timer.
//   83  *
//   84  * \sa stimer_restart()
//   85  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function stimer_reset
          CFI NoCalls
        THUMB
//   86 void
//   87 stimer_reset(struct stimer *t)
//   88 {
//   89   t->start += t->interval;
stimer_reset:
        LDR      R1,[R0, #+0]
        LDR      R2,[R0, #+4]
        ADDS     R1,R2,R1
        STR      R1,[R0, #+0]
//   90 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   91 /*---------------------------------------------------------------------------*/
//   92 /**
//   93  * Restart the timer from the current point in time
//   94  *
//   95  * This function restarts a timer with the same interval that was
//   96  * given to the stimer_set() function. The timer will start at the
//   97  * current time.
//   98  *
//   99  * \note A periodic timer will drift if this function is used to reset
//  100  * it. For preioric timers, use the stimer_reset() function instead.
//  101  *
//  102  * \param t A pointer to the timer.
//  103  *
//  104  * \sa stimer_reset()
//  105  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function stimer_restart
          CFI NoCalls
        THUMB
//  106 void
//  107 stimer_restart(struct stimer *t)
//  108 {
stimer_restart:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
          CFI EndBlock cfiBlock2
//  109   t->start = clock_seconds();
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI FunCall stimer_set clock_seconds
          CFI FunCall stimer_restart clock_seconds
        THUMB
?Subroutine0:
        BL       clock_seconds
        STR      R0,[R4, #+0]
//  110 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  111 /*---------------------------------------------------------------------------*/
//  112 /**
//  113  * Check if a timer has expired.
//  114  *
//  115  * This function tests if a timer has expired and returns true or
//  116  * false depending on its status.
//  117  *
//  118  * \param t A pointer to the timer
//  119  *
//  120  * \return Non-zero if the timer has expired, zero otherwise.
//  121  *
//  122  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function stimer_expired
        THUMB
//  123 int
//  124 stimer_expired(struct stimer *t)
//  125 {
stimer_expired:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  126   return SCLOCK_GEQ(clock_seconds(), t->start + t->interval);
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR      R1,[R4, #+0]
        SUBS     R0,R0,R1
        LDR      R1,[R4, #+4]
        SUBS     R0,R0,R1
        MVN      R1,#-2147483648
        CMP      R0,R1
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  127 }
//  128 /*---------------------------------------------------------------------------*/
//  129 /**
//  130  * The time until the timer expires
//  131  *
//  132  * This function returns the time until the timer expires.
//  133  *
//  134  * \param t A pointer to the timer
//  135  *
//  136  * \return The time until the timer expires
//  137  *
//  138  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function stimer_remaining
        THUMB
//  139 unsigned long
//  140 stimer_remaining(struct stimer *t)
//  141 {
stimer_remaining:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  142   return t->start + t->interval - clock_seconds();
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR      R1,[R4, #+0]
        LDR      R2,[R4, #+4]
        ADDS     R1,R2,R1
        SUBS     R0,R1,R0
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  143 }
//  144 /*---------------------------------------------------------------------------*/
//  145 /**
//  146  * The time elapsed since the timer started
//  147  *
//  148  * This function returns the time elapsed.
//  149  *
//  150  * \param t A pointer to the timer
//  151  *
//  152  * \return The time elapsed since the last start of the timer
//  153  *
//  154  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function stimer_elapsed
        THUMB
//  155 unsigned long
//  156 stimer_elapsed(struct stimer *t)
//  157 {
stimer_elapsed:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  158   return clock_seconds() - t->start;
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR      R1,[R4, #+0]
        SUBS     R0,R0,R1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  159 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  160 
//  161 /*---------------------------------------------------------------------------*/
//  162 
//  163 /** @} */
// 
// 90 bytes in section .text
// 
// 90 bytes of CODE memory
//
//Errors: none
//Warnings: 1
