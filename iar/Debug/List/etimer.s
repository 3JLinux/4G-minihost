///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:46
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\etimer.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\etimer.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\etimer.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN clock_time
        EXTERN process_current
        EXTERN process_poll
        EXTERN process_post
        EXTERN timer_expired
        EXTERN timer_reset
        EXTERN timer_restart
        EXTERN timer_set

        PUBLIC etimer_adjust
        PUBLIC etimer_expiration_time
        PUBLIC etimer_expired
        PUBLIC etimer_next_expiration_time
        PUBLIC etimer_pending
        PUBLIC etimer_process
        PUBLIC etimer_request_poll
        PUBLIC etimer_reset
        PUBLIC etimer_restart
        PUBLIC etimer_set
        PUBLIC etimer_start_time
        PUBLIC etimer_stop
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\etimer.c
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
//   36  * \addtogroup etimer
//   37  * @{
//   38  */
//   39 
//   40 /**
//   41  * \file
//   42  * Event timer library implementation.
//   43  * \author
//   44  * Adam Dunkels <adam@sics.se>
//   45  */
//   46 
//   47 #include "contiki-conf.h"
//   48 
//   49 #include "sys/etimer.h"
//   50 #include "sys/process.h"
//   51 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   52 static struct etimer *timerlist;
timerlist:
        DATA
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0
//   53 static clock_time_t next_expiration;
//   54 
//   55 PROCESS(etimer_process, "Event timer");
etimer_process:
        DC32 0H, ?_0, process_thread_etimer_process
        DC8 0, 0, 0, 0
//   56 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function update_time
        THUMB
//   57 static void
//   58 update_time(void)
//   59 {
update_time:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   60   clock_time_t tdist;
//   61   clock_time_t now;
//   62   struct etimer *t;
//   63 
//   64   if (timerlist == NULL) {
        LDR.N    R4,??DataTable8
        LDR      R0,[R4, #+0]
        CBZ.N    R0,??update_time_0
//   65     next_expiration = 0;
//   66   } else {
//   67     now = clock_time();
          CFI FunCall clock_time
        BL       clock_time
//   68     t = timerlist;
        LDR      R1,[R4, #+0]
//   69     /* Must calculate distance to next time into account due to wraps */
//   70     tdist = t->timer.start + t->timer.interval - now;
        LDR      R2,[R1, #+0]
        LDR      R3,[R1, #+4]
        ADDS     R2,R3,R2
        SUBS     R2,R2,R0
//   71     for(t = t->next; t != NULL; t = t->next) {
        B.N      ??update_time_1
//   72       if(t->timer.start + t->timer.interval - now < tdist) {
??update_time_2:
        LDR      R3,[R1, #+0]
        LDR      R5,[R1, #+4]
        ADDS     R3,R5,R3
        SUBS     R3,R3,R0
        CMP      R3,R2
        IT       CC 
        MOVCC    R2,R3
//   73 	tdist = t->timer.start + t->timer.interval - now;
//   74       }
//   75     }
??update_time_1:
        LDR      R1,[R1, #+8]
        CMP      R1,#+0
        BNE.N    ??update_time_2
//   76     next_expiration = now + tdist;
        ADDS     R0,R2,R0
??update_time_0:
        STR      R0,[R4, #+4]
//   77   }
//   78 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//   79 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function process_thread_etimer_process
        THUMB
//   80 PROCESS_THREAD(etimer_process, ev, data)
//   81 {
process_thread_etimer_process:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//   82   struct etimer *t, *u;
//   83 	
//   84   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_etimer_process_0
        CMP      R0,#+89
        BEQ.N    ??process_thread_etimer_process_1
        B.N      ??process_thread_etimer_process_2
//   85 
//   86   timerlist = NULL;
??process_thread_etimer_process_0:
        LDR.N    R1,??DataTable8
        STR      R0,[R1, #+0]
//   87   
//   88   while(1) {
//   89     PROCESS_YIELD();
??process_thread_etimer_process_3:
        MOVS     R0,#+89
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//   90 
//   91     if(ev == PROCESS_EVENT_EXITED) {
??process_thread_etimer_process_1:
        CMP      R1,#+135
        LDR.N    R6,??DataTable8
        BEQ.N    ??process_thread_etimer_process_4
//   92       struct process *p = data;
//   93 
//   94       while(timerlist != NULL && timerlist->p == p) {
//   95 	timerlist = timerlist->next;
//   96       }
//   97 
//   98       if(timerlist != NULL) {
//   99 	t = timerlist;
//  100 	while(t->next != NULL) {
//  101 	  if(t->next->p == p) {
//  102 	    t->next = t->next->next;
//  103 	  } else
//  104 	    t = t->next;
//  105 	}
//  106       }
//  107       continue;
//  108     } else if(ev != PROCESS_EVENT_POLL) {
        CMP      R1,#+130
        BNE.N    ??process_thread_etimer_process_3
        B.N      ??process_thread_etimer_process_5
??process_thread_etimer_process_6:
        LDR      R0,[R5, #+8]
        STR      R0,[R6, #+0]
??process_thread_etimer_process_4:
        LDR      R5,[R6, #+0]
        CMP      R5,#+0
        BEQ.N    ??process_thread_etimer_process_3
        LDR      R0,[R5, #+12]
        CMP      R0,R2
        BEQ.N    ??process_thread_etimer_process_6
??process_thread_etimer_process_7:
        LDR      R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??process_thread_etimer_process_3
        LDR      R1,[R0, #+12]
        CMP      R1,R2
        ITEE     NE 
        MOVNE    R5,R0
        LDREQ    R0,[R0, #+8]
        STREQ    R0,[R5, #+8]
        B.N      ??process_thread_etimer_process_7
//  109       continue;
//  110     }
//  111 
//  112   again:
//  113     
//  114     u = NULL;
//  115     
//  116     for(t = timerlist; t != NULL; t = t->next) {
//  117       if(timer_expired(&t->timer)) {
//  118 	if(process_post(t->p, PROCESS_EVENT_TIMER, t) == PROCESS_ERR_OK) {
//  119 	  
//  120 	  /* Reset the process ID of the event timer, to signal that the
//  121 	     etimer has expired. This is later checked in the
//  122 	     etimer_expired() function. */
//  123 	  t->p = PROCESS_NONE;
//  124 	  if(u != NULL) {
//  125 	    u->next = t->next;
//  126 	  } else {
//  127 	    timerlist = t->next;
//  128 	  }
//  129 	  t->next = NULL;
??process_thread_etimer_process_8:
        MOVS     R0,#+0
        STR      R0,[R5, #+8]
//  130 	  update_time();
          CFI FunCall update_time
        BL       update_time
//  131 	  goto again;
??process_thread_etimer_process_5:
        MOVS     R7,#+0
        LDR      R5,[R6, #+0]
        B.N      ??process_thread_etimer_process_9
//  132 	} else {
//  133 	  etimer_request_poll();
??process_thread_etimer_process_10:
        ADD      R0,R6,#+8
          CFI FunCall process_poll
        BL       process_poll
//  134 	}
//  135       }
//  136       u = t;
??process_thread_etimer_process_11:
        MOV      R7,R5
        LDR      R5,[R5, #+8]
??process_thread_etimer_process_9:
        CMP      R5,#+0
        BEQ.N    ??process_thread_etimer_process_3
        MOV      R0,R5
          CFI FunCall timer_expired
        BL       timer_expired
        CMP      R0,#+0
        BEQ.N    ??process_thread_etimer_process_11
        LDR      R0,[R5, #+12]
        MOV      R2,R5
        MOVS     R1,#+136
          CFI FunCall process_post
        BL       process_post
        CMP      R0,#+0
        BNE.N    ??process_thread_etimer_process_10
        STR      R0,[R5, #+12]
        CMP      R7,#+0
        LDR      R0,[R5, #+8]
        ITE      NE 
        STRNE    R0,[R7, #+8]
        STREQ    R0,[R6, #+0]
        B.N      ??process_thread_etimer_process_8
//  137     }
//  138     
//  139   }
//  140   
//  141   PROCESS_END();
??process_thread_etimer_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock1
//  142 }
//  143 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function etimer_request_poll
        THUMB
//  144 void
//  145 etimer_request_poll(void)
//  146 {
//  147   process_poll(&etimer_process);
etimer_request_poll:
        LDR.N    R0,??DataTable8_1
          CFI FunCall process_poll
        B.W      process_poll
          CFI EndBlock cfiBlock2
//  148 }
//  149 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function add_timer
        THUMB
//  150 static void
//  151 add_timer(struct etimer *timer)
//  152 {
add_timer:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  153   struct etimer *t;
//  154 
//  155   etimer_request_poll();
        LDR.N    R5,??DataTable8
        ADD      R0,R5,#+8
          CFI FunCall process_poll
        BL       process_poll
//  156 
//  157   if(timer->p != PROCESS_NONE) {
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+12]
        CBZ.N    R1,??add_timer_0
//  158     for(t = timerlist; t != NULL; t = t->next) {
        MOV      R1,R0
        B.N      ??add_timer_1
??add_timer_2:
        LDR      R1,[R1, #+8]
??add_timer_1:
        CBZ.N    R1,??add_timer_0
//  159       if(t == timer) {
        CMP      R1,R4
        BNE.N    ??add_timer_2
//  160 	/* Timer already on list, bail out. */
//  161         timer->p = PROCESS_CURRENT();
        LDR.N    R0,??DataTable8_2
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+12]
//  162 	update_time();
        B.N      ??add_timer_3
//  163 	return;
//  164       }
//  165     }
//  166   }
//  167 
//  168   /* Timer not on list. */
//  169   timer->p = PROCESS_CURRENT();
??add_timer_0:
        LDR.N    R1,??DataTable8_2
        LDR      R1,[R1, #+0]
        STR      R1,[R4, #+12]
//  170   timer->next = timerlist;
        STR      R0,[R4, #+8]
//  171   timerlist = timer;
        STR      R4,[R5, #+0]
//  172 
//  173   update_time();
??add_timer_3:
        POP      {R0,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall update_time
        B.N      update_time
          CFI EndBlock cfiBlock3
//  174 }
//  175 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function etimer_set
        THUMB
//  176 void
//  177 etimer_set(struct etimer *et, clock_time_t interval)
//  178 {
etimer_set:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  179   timer_set(&et->timer, interval);
          CFI FunCall timer_set
        BL       timer_set
//  180   add_timer(et);
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock4
//  181 }
//  182 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function etimer_reset
        THUMB
//  183 void
//  184 etimer_reset(struct etimer *et)
//  185 {
etimer_reset:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  186   timer_reset(&et->timer);
          CFI FunCall timer_reset
        BL       timer_reset
          CFI EndBlock cfiBlock5
//  187   add_timer(et);
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  188 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        MOV      R0,R4
        POP      {R4,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R14 SameValue
          CFI FunCall etimer_set add_timer
          CFI FunCall etimer_reset add_timer
          CFI FunCall etimer_restart add_timer
        B.N      add_timer
          CFI EndBlock cfiBlock6
//  189 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function etimer_restart
        THUMB
//  190 void
//  191 etimer_restart(struct etimer *et)
//  192 {
etimer_restart:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  193   timer_restart(&et->timer);
          CFI FunCall timer_restart
        BL       timer_restart
//  194   add_timer(et);
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock7
//  195 }
//  196 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function etimer_adjust
        THUMB
//  197 void
//  198 etimer_adjust(struct etimer *et, int timediff)
//  199 {
etimer_adjust:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  200   et->timer.start += timediff;
        LDR      R2,[R0, #+0]
//  201   update_time();
        LDR.N    R4,??DataTable8
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
        LDR      R0,[R4, #+0]
        CBZ.N    R0,??etimer_adjust_0
          CFI FunCall clock_time
        BL       clock_time
        LDR      R1,[R4, #+0]
        LDR      R2,[R1, #+0]
        LDR      R3,[R1, #+4]
        ADDS     R2,R3,R2
        SUBS     R2,R2,R0
        B.N      ??etimer_adjust_1
??etimer_adjust_2:
        LDR      R3,[R1, #+0]
        LDR      R5,[R1, #+4]
        ADDS     R3,R5,R3
        SUBS     R3,R3,R0
        CMP      R3,R2
        IT       CC 
        MOVCC    R2,R3
??etimer_adjust_1:
        LDR      R1,[R1, #+8]
        CMP      R1,#+0
        BNE.N    ??etimer_adjust_2
        ADDS     R0,R2,R0
??etimer_adjust_0:
        STR      R0,[R4, #+4]
//  202 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock8
//  203 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function etimer_expired
          CFI NoCalls
        THUMB
//  204 int
//  205 etimer_expired(struct etimer *et)
//  206 {
//  207   return et->p == PROCESS_NONE;
etimer_expired:
        LDR      R0,[R0, #+12]
        CBNZ.N   R0,??etimer_expired_0
        MOVS     R0,#+1
        BX       LR
??etimer_expired_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  208 }
//  209 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function etimer_expiration_time
          CFI NoCalls
        THUMB
//  210 clock_time_t
//  211 etimer_expiration_time(struct etimer *et)
//  212 {
//  213   return et->timer.start + et->timer.interval;
etimer_expiration_time:
        LDR      R1,[R0, #+0]
        LDR      R0,[R0, #+4]
        ADDS     R0,R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  214 }
//  215 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function etimer_start_time
          CFI NoCalls
        THUMB
//  216 clock_time_t
//  217 etimer_start_time(struct etimer *et)
//  218 {
//  219   return et->timer.start;
etimer_start_time:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  220 }
//  221 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function etimer_pending
          CFI NoCalls
        THUMB
//  222 int
//  223 etimer_pending(void)
//  224 {
//  225   return timerlist != NULL;
etimer_pending:
        LDR.N    R0,??DataTable8
        LDR      R0,[R0, #+0]
        CBZ.N    R0,??etimer_pending_0
        MOVS     R0,#+1
??etimer_pending_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  226 }
//  227 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function etimer_next_expiration_time
          CFI NoCalls
        THUMB
//  228 clock_time_t
//  229 etimer_next_expiration_time(void)
//  230 {
//  231   return etimer_pending() ? next_expiration : 0;
etimer_next_expiration_time:
        LDR.N    R0,??DataTable8
        LDR      R1,[R0, #+0]
        CBZ.N    R1,??etimer_next_expiration_time_0
        LDR      R0,[R0, #+4]
        BX       LR
??etimer_next_expiration_time_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  232 }
//  233 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function etimer_stop
        THUMB
//  234 void
//  235 etimer_stop(struct etimer *et)
//  236 {
etimer_stop:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  237   struct etimer *t;
//  238 
//  239   /* First check if et is the first event timer on the list. */
//  240   if(et == timerlist) {
        LDR.N    R0,??DataTable8
        LDR      R1,[R0, #+0]
        CMP      R4,R1
        BNE.N    ??etimer_stop_0
//  241     timerlist = timerlist->next;
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+0]
//  242     update_time();
        B.N      ??etimer_stop_1
//  243   } else {
//  244     /* Else walk through the list and try to find the item before the
//  245        et timer. */
//  246     for(t = timerlist; t != NULL && t->next != et; t = t->next);
??etimer_stop_2:
        MOV      R1,R0
??etimer_stop_0:
        CBZ.N    R1,??etimer_stop_3
        LDR      R0,[R1, #+8]
        CMP      R0,R4
        BNE.N    ??etimer_stop_2
//  247 
//  248     if(t != NULL) {
//  249       /* We've found the item before the event timer that we are about
//  250 	 to remove. We point the items next pointer to the event after
//  251 	 the removed item. */
//  252       t->next = et->next;
        LDR      R0,[R4, #+8]
        STR      R0,[R1, #+8]
//  253 
//  254       update_time();
??etimer_stop_1:
          CFI FunCall update_time
        BL       update_time
//  255     }
//  256   }
//  257 
//  258   /* Remove the next pointer from the item to be removed. */
//  259   et->next = NULL;
??etimer_stop_3:
        MOVS     R0,#+0
        STR      R0,[R4, #+8]
//  260   /* Set the timer as expired */
//  261   et->p = PROCESS_NONE;
        STR      R0,[R4, #+12]
//  262 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     timerlist

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     timerlist+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
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
        DC8 "Event timer"

        END
//  263 /*---------------------------------------------------------------------------*/
//  264 /** @} */
// 
//  24 bytes in section .data
//  12 bytes in section .rodata
// 458 bytes in section .text
// 
// 458 bytes of CODE  memory
//  12 bytes of CONST memory
//  24 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
