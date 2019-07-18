///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:38
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\ctimer.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\ctimer.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ctimer.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN etimer_expired
        EXTERN etimer_reset
        EXTERN etimer_restart
        EXTERN etimer_set
        EXTERN etimer_stop
        EXTERN list_add
        EXTERN list_head
        EXTERN list_init
        EXTERN list_remove
        EXTERN process_current
        EXTERN process_start

        PUBLIC ctimer_expired
        PUBLIC ctimer_init
        PUBLIC ctimer_process
        PUBLIC ctimer_reset
        PUBLIC ctimer_restart
        PUBLIC ctimer_set
        PUBLIC ctimer_stop
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\ctimer.c
//    1 /*
//    2 
//    3  * Copyright (c) 2006, Swedish Institute of Computer Science.
//    4  * All rights reserved.
//    5  *
//    6  * Redistribution and use in source and binary forms, with or without
//    7  * modification, are permitted provided that the following conditions
//    8  * are met:
//    9  * 1. Redistributions of source code must retain the above copyright
//   10  *    notice, this list of conditions and the following disclaimer.
//   11  * 2. Redistributions in binary form must reproduce the above copyright
//   12  *    notice, this list of conditions and the following disclaimer in the
//   13  *    documentation and/or other materials provided with the distribution.
//   14  * 3. Neither the name of the Institute nor the names of its contributors
//   15  *    may be used to endorse or promote products derived from this software
//   16  *    without specific prior written permission.
//   17  *
//   18  * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
//   19  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   20  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   21  * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
//   22  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   23  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   24  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   25  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   26  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   27  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   28  * SUCH DAMAGE.
//   29  *
//   30  * This file is part of the Contiki operating system.
//   31  *
//   32  */
//   33 
//   34 /**
//   35  * \file
//   36  *         Callback timer implementation
//   37  * \author
//   38  *         Adam Dunkels <adam@sics.se>
//   39  */
//   40 
//   41 /**
//   42  * \addtogroup ctimer
//   43  * @{
//   44  */
//   45 
//   46 #include "sys/ctimer.h"
//   47 #include "contiki.h"
//   48 #include "lib/list.h"
//   49 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   50 LIST(ctimer_list);
//   51 
//   52 static char initialized;
initialized:
        DATA
        DC8 0
        DC8 0, 0, 0
ctimer_list_list:
        DC32 0H
//   53 
//   54 #define DEBUG 0
//   55 #if DEBUG
//   56 #include <stdio.h>
//   57 #define PRINTF(...) printf(__VA_ARGS__)
//   58 #else
//   59 #define PRINTF(...)
//   60 #endif
//   61 
//   62 /*---------------------------------------------------------------------------*/
//   63 PROCESS(ctimer_process, "Ctimer process");
ctimer_process:
        DC32 0H, ?_0, process_thread_ctimer_process
        DC8 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 ctimer_list_list

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function process_thread_ctimer_process
        THUMB
//   64 PROCESS_THREAD(ctimer_process, ev, data)
//   65 {
process_thread_ctimer_process:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R6,R2
//   66   struct ctimer *c;
//   67   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_ctimer_process_0
        CMP      R0,#+75
        BEQ.N    ??process_thread_ctimer_process_1
        B.N      ??process_thread_ctimer_process_2
//   68 
//   69   for(c = list_head(ctimer_list); c != NULL; c = c->next) {
??process_thread_ctimer_process_0:
        LDR.N    R7,??DataTable6
        ADDS     R0,R7,#+4
          CFI FunCall list_head
        BL       list_head
        MOV      R5,R0
        B.N      ??process_thread_ctimer_process_3
//   70     etimer_set(&c->etimer, c->etimer.timer.interval);
??process_thread_ctimer_process_4:
        LDR      R1,[R5, #+8]
        ADDS     R0,R5,#+4
          CFI FunCall etimer_set
        BL       etimer_set
//   71   }
        LDR      R5,[R5, #+0]
??process_thread_ctimer_process_3:
        CMP      R5,#+0
        BNE.N    ??process_thread_ctimer_process_4
//   72   initialized = 1;
        MOVS     R0,#+1
        STRB     R0,[R7, #+0]
//   73 
//   74   while(1) {
//   75     PROCESS_YIELD_UNTIL(ev == PROCESS_EVENT_TIMER);
??process_thread_ctimer_process_5:
        MOVS     R0,#+75
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_ctimer_process_6
??process_thread_ctimer_process_1:
        CMP      R1,#+136
        BEQ.N    ??process_thread_ctimer_process_7
??process_thread_ctimer_process_6:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//   76     for(c = list_head(ctimer_list); c != NULL; c = c->next) {
??process_thread_ctimer_process_7:
        LDR.N    R7,??DataTable6
        ADDS     R0,R7,#+4
          CFI FunCall list_head
        BL       list_head
        MOV      R5,R0
        B.N      ??process_thread_ctimer_process_8
??process_thread_ctimer_process_9:
        LDR      R5,[R5, #+0]
??process_thread_ctimer_process_8:
        CMP      R5,#+0
        BEQ.N    ??process_thread_ctimer_process_5
//   77       if(&c->etimer == data) {
        ADDS     R0,R5,#+4
        CMP      R0,R6
        BNE.N    ??process_thread_ctimer_process_9
//   78 	list_remove(ctimer_list, c);
        MOV      R1,R5
        ADDS     R0,R7,#+4
          CFI FunCall list_remove
        BL       list_remove
//   79 	PROCESS_CONTEXT_BEGIN(c->p);
        LDR.N    R6,??DataTable6_1
        LDR      R0,[R5, #+20]
        LDR      R7,[R6, #+0]
        STR      R0,[R6, #+0]
//   80 	if(c->f != NULL) {
        LDR      R1,[R5, #+24]
        MOVS     R0,R1
        ITT      NE 
        LDRNE    R0,[R5, #+28]
        BLXNE    R1
//   81 	  c->f(c->ptr);
//   82 	}
//   83 	PROCESS_CONTEXT_END(c->p);
        STR      R7,[R6, #+0]
//   84 	break;
        B.N      ??process_thread_ctimer_process_5
//   85       }
//   86     }
//   87   }
//   88   PROCESS_END();
??process_thread_ctimer_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock0
//   89 }
//   90 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ctimer_init
        THUMB
//   91 void
//   92 ctimer_init(void)
//   93 {
ctimer_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   94   initialized = 0;
        LDR.N    R4,??DataTable6
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//   95   list_init(ctimer_list);
        ADDS     R0,R4,#+4
          CFI FunCall list_init
        BL       list_init
//   96   process_start(&ctimer_process, NULL);
        ADD      R0,R4,#+8
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
          CFI FunCall process_start
        B.W      process_start
          CFI EndBlock cfiBlock1
//   97 }
//   98 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ctimer_set
        THUMB
//   99 void
//  100 ctimer_set(struct ctimer *c, clock_time_t t,
//  101 	   void (*f)(void *), void *ptr)
//  102 {
ctimer_set:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  103   PRINTF("ctimer_set %p %u\n", c, (unsigned)t);
//  104   c->p = PROCESS_CURRENT();
        LDR.N    R5,??DataTable6_1
//  105   c->f = f;
//  106   c->ptr = ptr;
//  107   if(initialized) {
        LDR.N    R6,??DataTable6
        MOV      R4,R0
        LDR      R0,[R5, #+0]
        STR      R0,[R4, #+20]
        STR      R2,[R4, #+24]
        STR      R3,[R4, #+28]
        LDRB     R0,[R6, #+0]
        CBZ.N    R0,??ctimer_set_0
//  108     PROCESS_CONTEXT_BEGIN(&ctimer_process);
        LDR      R7,[R5, #+0]
        ADD      R0,R6,#+8
        STR      R0,[R5, #+0]
//  109     etimer_set(&c->etimer, t);
        ADDS     R0,R4,#+4
          CFI FunCall etimer_set
        BL       etimer_set
//  110     PROCESS_CONTEXT_END(&ctimer_process);
        STR      R7,[R5, #+0]
        B.N      ??ctimer_set_1
//  111   } else {
//  112     c->etimer.timer.interval = t;
??ctimer_set_0:
        STR      R1,[R4, #+8]
//  113   }
//  114 
//  115   list_add(ctimer_list, c);
??ctimer_set_1:
        MOV      R1,R4
        ADDS     R0,R6,#+4
        B.N      ??Subroutine0_0
          CFI EndBlock cfiBlock2
//  116 }
//  117 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ctimer_reset
        THUMB
//  118 void
//  119 ctimer_reset(struct ctimer *c)
//  120 {
ctimer_reset:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  121   if(initialized) {
        LDR.N    R5,??DataTable6
        MOV      R4,R0
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??ctimer_reset_0
//  122     PROCESS_CONTEXT_BEGIN(&ctimer_process);
        LDR.N    R6,??DataTable6_1
        LDR      R7,[R6, #+0]
        ADD      R0,R5,#+8
        STR      R0,[R6, #+0]
//  123     etimer_reset(&c->etimer);
        ADDS     R0,R4,#+4
          CFI FunCall etimer_reset
        BL       etimer_reset
//  124     PROCESS_CONTEXT_END(&ctimer_process);
        STR      R7,[R6, #+0]
//  125   }
//  126 
//  127   list_add(ctimer_list, c);
??ctimer_reset_0:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock3
//  128 }
//  129 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ctimer_restart
        THUMB
//  130 void
//  131 ctimer_restart(struct ctimer *c)
//  132 {
ctimer_restart:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  133   if(initialized) {
        LDR.N    R5,??DataTable6
        MOV      R4,R0
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??ctimer_restart_0
//  134     PROCESS_CONTEXT_BEGIN(&ctimer_process);
        LDR.N    R6,??DataTable6_1
        LDR      R7,[R6, #+0]
        ADD      R0,R5,#+8
        STR      R0,[R6, #+0]
//  135     etimer_restart(&c->etimer);
        ADDS     R0,R4,#+4
          CFI FunCall etimer_restart
        BL       etimer_restart
//  136     PROCESS_CONTEXT_END(&ctimer_process);
        STR      R7,[R6, #+0]
          CFI EndBlock cfiBlock4
//  137   }
//  138 
//  139   list_add(ctimer_list, c);
??ctimer_restart_0:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  140 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+24
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        MOV      R1,R4
        ADDS     R0,R5,#+4
??Subroutine0_0:
        POP      {R2,R4-R7,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI FunCall ctimer_reset list_add
          CFI FunCall ctimer_restart list_add
          CFI FunCall ctimer_set list_add
        B.W      list_add
          CFI EndBlock cfiBlock5
//  141 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ctimer_stop
        THUMB
//  142 void
//  143 ctimer_stop(struct ctimer *c)
//  144 {
ctimer_stop:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  145   if(initialized) {
        LDR.N    R5,??DataTable6
        MOV      R4,R0
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??ctimer_stop_0
//  146     etimer_stop(&c->etimer);
        ADDS     R0,R4,#+4
          CFI FunCall etimer_stop
        BL       etimer_stop
        B.N      ??ctimer_stop_1
//  147   } else {
//  148     c->etimer.next = NULL;
??ctimer_stop_0:
        STR      R0,[R4, #+12]
//  149     c->etimer.p = PROCESS_NONE;
        STR      R0,[R4, #+16]
//  150   }
//  151   list_remove(ctimer_list, c);
??ctimer_stop_1:
        MOV      R1,R4
        ADDS     R0,R5,#+4
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall list_remove
        B.W      list_remove
          CFI EndBlock cfiBlock6
//  152 }
//  153 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ctimer_expired
        THUMB
//  154 int
//  155 ctimer_expired(struct ctimer *c)
//  156 {
ctimer_expired:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  157   struct ctimer *t;
//  158   if(initialized) {
        LDR.N    R0,??DataTable6
        LDRB     R1,[R0, #+0]
        CBZ.N    R1,??ctimer_expired_0
//  159     return etimer_expired(&c->etimer);
        ADDS     R0,R4,#+4
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall etimer_expired
        B.W      etimer_expired
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  160   }
//  161   for(t = list_head(ctimer_list); t != NULL; t = t->next) {
??ctimer_expired_0:
        ADDS     R0,R0,#+4
          CFI FunCall list_head
        BL       list_head
        B.N      ??ctimer_expired_1
??ctimer_expired_2:
        LDR      R0,[R0, #+0]
??ctimer_expired_1:
        CBZ.N    R0,??ctimer_expired_3
//  162     if(t == c) {
        CMP      R0,R4
        BNE.N    ??ctimer_expired_2
//  163       return 0;
        MOVS     R0,#+0
        POP      {R4,PC}
//  164     }
//  165   }
//  166   return 1;
??ctimer_expired_3:
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7
//  167 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     initialized

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     process_current

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
        DC8 "Ctimer process"
        DC8 0

        END
//  168 /*---------------------------------------------------------------------------*/
//  169 /** @} */
// 
//  28 bytes in section .data
//  16 bytes in section .rodata
// 352 bytes in section .text
// 
// 352 bytes of CODE  memory
//  16 bytes of CONST memory
//  28 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
