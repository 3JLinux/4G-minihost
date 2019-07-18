///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\process.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\process.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\process.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC process_alloc_event
        PUBLIC process_current
        PUBLIC process_exit
        PUBLIC process_init
        PUBLIC process_is_running
        PUBLIC process_list
        PUBLIC process_nevents
        PUBLIC process_poll
        PUBLIC process_post
        PUBLIC process_post_synch
        PUBLIC process_run
        PUBLIC process_start
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\process.c
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
//   34  * \addtogroup process
//   35  * @{
//   36  */
//   37 
//   38 /**
//   39  * \file
//   40  *         Implementation of the Contiki process kernel.
//   41  * \author
//   42  *         Adam Dunkels <adam@sics.se>
//   43  *
//   44  */
//   45 
//   46 #include <stdio.h>
//   47 
//   48 #include "sys/process.h"
//   49 #include "sys/arg.h"
//   50 
//   51 /*
//   52  * Pointer to the currently running process structure.
//   53  */
//   54 struct process *process_list = NULL;
//   55 struct process *process_current = NULL;
//   56  
//   57 static process_event_t lastevent;
//   58 
//   59 /*
//   60  * Structure used for keeping the queue of active events.
//   61  */
//   62 struct event_data {
//   63   process_event_t ev;
//   64   process_data_t data;
//   65   struct process *p;
//   66 };
//   67 
//   68 static process_num_events_t nevents, fevent;
//   69 static struct event_data events[PROCESS_CONF_NUMEVENTS];
//   70 
//   71 #if PROCESS_CONF_STATS
//   72 process_num_events_t process_maxevents;
//   73 #endif
//   74 
//   75 static volatile unsigned char poll_requested;
//   76 
//   77 #define PROCESS_STATE_NONE        0
//   78 #define PROCESS_STATE_RUNNING     1
//   79 #define PROCESS_STATE_CALLED      2
//   80 
//   81 static void call_process(struct process *p, process_event_t ev, process_data_t data);
//   82 
//   83 #define DEBUG 0
//   84 #if DEBUG
//   85 #include <stdio.h>
//   86 #define PRINTF(...) printf(__VA_ARGS__)
//   87 #else
//   88 #define PRINTF(...)
//   89 #endif
//   90 
//   91 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function process_alloc_event
          CFI NoCalls
        THUMB
//   92 process_event_t
//   93 process_alloc_event(void)
//   94 {
//   95   return lastevent++;
process_alloc_event:
        LDR.N    R1,??DataTable11
        LDRB     R0,[R1, #+0]
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   96 }
//   97 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function process_start
        THUMB
//   98 void
//   99 process_start(struct process *p, process_data_t data)
//  100 {
process_start:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  101   struct process *q;
//  102 
//  103   /* First make sure that we don't try to start a process that is
//  104      already running. */
//  105   for(q = process_list; q != p && q != NULL; q = q->next);
        LDR.N    R4,??DataTable11
        LDR      R2,[R4, #+8]
        MOV      R3,R2
        B.N      ??process_start_0
??process_start_1:
        LDR      R3,[R3, #+0]
??process_start_0:
        CMP      R3,R0
        IT       NE 
        CMPNE    R3,#+0
        BNE.N    ??process_start_1
//  106 
//  107   /* If we found the process on the process list, we bail out. */
//  108   if(q == p) {
        CMP      R3,R0
        BEQ.N    ??process_start_2
//  109     return;
//  110   }
//  111   /* Put on the procs list.*/
//  112   p->next = process_list;
        STR      R2,[R0, #+0]
//  113   process_list = p;
        STR      R0,[R4, #+8]
//  114   p->state = PROCESS_STATE_RUNNING;
        MOVS     R2,#+1
        STRB     R2,[R0, #+14]
//  115   PT_INIT(&p->pt);
        MOVS     R2,#+0
        STRH     R2,[R0, #+12]
//  116 
//  117   PRINTF("process: starting '%s'\n", PROCESS_NAME_STRING(p));
//  118 
//  119   /* Post a synchronous initialization event to the process. */
//  120   process_post_synch(p, PROCESS_EVENT_INIT, data);
        MOV      R2,R1
        LDR      R5,[R4, #+12]
        MOVS     R1,#+129
          CFI FunCall call_process
        BL       call_process
        STR      R5,[R4, #+12]
//  121 }
??process_start_2:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//  122 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function exit_process
        THUMB
//  123 static void
//  124 exit_process(struct process *p, struct process *fromprocess)
//  125 {
exit_process:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  126   register struct process *q;
//  127   struct process *old_current = process_current;
        LDR.N    R5,??DataTable11
        LDR      R6,[R5, #+12]
//  128 
//  129   PRINTF("process: exit_process '%s'\n", PROCESS_NAME_STRING(p));
//  130 
//  131   /* Make sure the process is in the process list before we try to
//  132      exit it. */
//  133   for(q = process_list; q != p && q != NULL; q = q->next);
        LDR      R7,[R5, #+8]
        MOV      R4,R0
        MOV      R8,R1
        B.N      ??exit_process_0
??exit_process_1:
        CMP      R7,#+0
        BEQ.N    ??exit_process_2
        LDR      R7,[R7, #+0]
??exit_process_0:
        CMP      R7,R4
        BNE.N    ??exit_process_1
//  134   if(q == NULL) {
        CMP      R7,#+0
        BEQ.N    ??exit_process_2
//  135     return;
//  136   }
//  137 
//  138   if(process_is_running(p)) {
        LDRB     R0,[R4, #+14]
        CBZ.N    R0,??exit_process_3
//  139     /* Process was running */
//  140     p->state = PROCESS_STATE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+14]
//  141 
//  142     /*
//  143      * Post a synchronous event to all processes to inform them that
//  144      * this process is about to exit. This will allow services to
//  145      * deallocate state associated with this process.
//  146      */
//  147     for(q = process_list; q != NULL; q = q->next) {
        LDR      R7,[R5, #+8]
        B.N      ??exit_process_4
//  148       if(p != q) {
//  149 	call_process(q, PROCESS_EVENT_EXITED, (process_data_t)p);
??exit_process_5:
        MOV      R1,R7
        MOV      R0,R7
          CFI FunCall exit_process
        BL       exit_process
??exit_process_6:
        LDR      R7,[R7, #+0]
??exit_process_4:
        CBZ.N    R7,??exit_process_7
        CMP      R4,R7
        BEQ.N    ??exit_process_6
        LDRB     R0,[R7, #+14]
        LSLS     R0,R0,#+31
        BPL.N    ??exit_process_6
        LDR      R3,[R7, #+8]
        MOVS     R0,R3
        BEQ.N    ??exit_process_6
        STR      R7,[R5, #+12]
        MOVS     R0,#+2
        STRB     R0,[R7, #+14]
        MOV      R2,R4
        MOVS     R1,#+135
        ADD      R0,R7,#+12
          CFI FunCall
        BLX      R3
        CMP      R0,#+2
        IT       NE 
        CMPNE    R0,#+3
        BEQ.N    ??exit_process_5
        MOVS     R0,#+1
        STRB     R0,[R7, #+14]
        B.N      ??exit_process_6
//  150       }
//  151     }
//  152 
//  153     if(p->thread != NULL && p != fromprocess) {
??exit_process_7:
        LDR      R3,[R4, #+8]
        MOVS     R0,R3
        IT       NE 
        CMPNE    R4,R8
        BEQ.N    ??exit_process_3
//  154       /* Post the exit event to the process that is about to exit. */
//  155       process_current = p;
        STR      R4,[R5, #+12]
//  156       p->thread(&p->pt, PROCESS_EVENT_EXIT, NULL);
        MOVS     R2,#+0
        MOVS     R1,#+131
        ADD      R0,R4,#+12
          CFI FunCall
        BLX      R3
//  157     }
//  158   }
//  159 
//  160   if(p == process_list) {
??exit_process_3:
        LDR      R7,[R5, #+8]
        CMP      R4,R7
        BNE.N    ??exit_process_8
//  161     process_list = process_list->next;
        LDR      R0,[R7, #+0]
        STR      R0,[R5, #+8]
        B.N      ??exit_process_9
//  162   } else {
//  163     for(q = process_list; q != NULL; q = q->next) {
??exit_process_10:
        MOV      R7,R0
??exit_process_8:
        CBZ.N    R7,??exit_process_9
//  164       if(q->next == p) {
        LDR      R0,[R7, #+0]
        CMP      R0,R4
        BNE.N    ??exit_process_10
//  165 	q->next = p->next;
        LDR      R0,[R4, #+0]
        STR      R0,[R7, #+0]
//  166 	break;
//  167       }
//  168     }
//  169   }
//  170 
//  171   process_current = old_current;
??exit_process_9:
        STR      R6,[R5, #+12]
//  172 }
??exit_process_2:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock2
//  173 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function call_process
        THUMB
//  174 static void
//  175 call_process(struct process *p, process_event_t ev, process_data_t data)
//  176 {
call_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  177   int ret;
//  178 
//  179 #if DEBUG
//  180   if(p->state == PROCESS_STATE_CALLED) {
//  181     printf("process: process '%s' called again with event %d\n", PROCESS_NAME_STRING(p), ev);
//  182   }
//  183 #endif /* DEBUG */
//  184   
//  185   if((p->state & PROCESS_STATE_RUNNING) &&
//  186      p->thread != NULL) {
        LDRB     R0,[R4, #+14]
        LSLS     R0,R0,#+31
        BPL.N    ??call_process_0
        LDR      R3,[R4, #+8]
        MOVS     R0,R3
        BEQ.N    ??call_process_0
//  187     PRINTF("process: calling process '%s' with event %d\n", PROCESS_NAME_STRING(p), ev);
//  188     process_current = p;
        LDR.N    R0,??DataTable11
        STR      R4,[R0, #+12]
//  189     p->state = PROCESS_STATE_CALLED;
        MOVS     R0,#+2
        STRB     R0,[R4, #+14]
//  190     ret = p->thread(&p->pt, ev, data);
        ADD      R0,R4,#+12
          CFI FunCall
        BLX      R3
//  191     if(ret == PT_EXITED ||
//  192        ret == PT_ENDED ||
//  193        ev == PROCESS_EVENT_EXIT) {
        CMP      R0,#+2
        ITT      NE 
        CMPNE    R0,#+3
        CMPNE    R5,#+131
        BNE.N    ??call_process_1
//  194       exit_process(p, p);
        MOV      R1,R4
        MOV      R0,R4
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall exit_process
        B.N      exit_process
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  195     } else {
//  196       p->state = PROCESS_STATE_RUNNING;
??call_process_1:
        MOVS     R0,#+1
        STRB     R0,[R4, #+14]
//  197     }
//  198   }
//  199 }
??call_process_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//  200 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function process_exit
        THUMB
//  201 void
//  202 process_exit(struct process *p)
//  203 {
//  204   exit_process(p, PROCESS_CURRENT());
process_exit:
        LDR.N    R1,??DataTable11
        LDR      R1,[R1, #+12]
          CFI FunCall exit_process
        B.N      exit_process
          CFI EndBlock cfiBlock4
//  205 }
//  206 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function process_init
          CFI NoCalls
        THUMB
//  207 void
//  208 process_init(void)
//  209 {
//  210   lastevent = PROCESS_EVENT_MAX;
process_init:
        LDR.N    R0,??DataTable11
        MOVS     R1,#+138
        STRB     R1,[R0, #+0]
//  211 
//  212   nevents = fevent = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        STRB     R1,[R0, #+1]
//  213 #if PROCESS_CONF_STATS
//  214   process_maxevents = 0;
//  215 #endif /* PROCESS_CONF_STATS */
//  216 
//  217   process_current = process_list = NULL;
        STR      R1,[R0, #+8]
        STR      R1,[R0, #+12]
//  218 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  219 /*---------------------------------------------------------------------------*/
//  220 /*
//  221  * Call each process' poll handler.
//  222  */
//  223 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function do_poll
        THUMB
//  224 static void
//  225 do_poll(void)
//  226 {
do_poll:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  227   struct process *p;
//  228 
//  229   poll_requested = 0;
        LDR.N    R4,??DataTable11
        MOVS     R0,#+0
        STRB     R0,[R4, #+3]
//  230   /* Call the processes that needs to be polled. */
//  231   for(p = process_list; p != NULL; p = p->next) {
        LDR      R5,[R4, #+8]
        B.N      ??do_poll_0
//  232     if(p->needspoll) {
//  233       p->state = PROCESS_STATE_RUNNING;
//  234       p->needspoll = 0;
//  235       call_process(p, PROCESS_EVENT_POLL, NULL);
??do_poll_1:
        MOV      R1,R5
        MOV      R0,R5
          CFI FunCall exit_process
        BL       exit_process
??do_poll_2:
        LDR      R5,[R5, #+0]
??do_poll_0:
        CBZ.N    R5,??do_poll_3
        LDRB     R0,[R5, #+15]
        CMP      R0,#+0
        BEQ.N    ??do_poll_2
        MOVS     R0,#+1
        STRB     R0,[R5, #+14]
        MOVS     R0,#+0
        STRB     R0,[R5, #+15]
        LDR      R3,[R5, #+8]
        MOVS     R0,R3
        BEQ.N    ??do_poll_2
        STR      R5,[R4, #+12]
        MOVS     R0,#+2
        STRB     R0,[R5, #+14]
        MOVS     R2,#+0
        MOVS     R1,#+130
        ADD      R0,R5,#+12
          CFI FunCall
        BLX      R3
        CMP      R0,#+2
        IT       NE 
        CMPNE    R0,#+3
        BEQ.N    ??do_poll_1
        MOVS     R0,#+1
        STRB     R0,[R5, #+14]
        B.N      ??do_poll_2
//  236     }
//  237   }
//  238 }
??do_poll_3:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
lastevent:
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 3
process_list:
        DS8 4
process_current:
        DS8 4
        DS8 4
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
events:
        DS8 384
//  239 /*---------------------------------------------------------------------------*/
//  240 /*
//  241  * Process the next event in the event queue and deliver it to
//  242  * listening processes.
//  243  */
//  244 /*---------------------------------------------------------------------------*/
//  245 static void
//  246 do_event(void)
//  247 {
//  248   static process_event_t ev;
//  249   static process_data_t data;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DS8 4
//  250   static struct process *receiver;
//  251   static struct process *p;
//  252   
//  253   /*
//  254    * If there are any events in the queue, take the first one and walk
//  255    * through the list of processes to see if the event should be
//  256    * delivered to any of them. If so, we call the event handler
//  257    * function for the process. We only process one event at a time and
//  258    * call the poll handlers inbetween.
//  259    */
//  260 
//  261   if(nevents > 0) {
//  262     
//  263     /* There are events that we should deliver. */
//  264     ev = events[fevent].ev;
//  265     
//  266     data = events[fevent].data;
//  267     receiver = events[fevent].p;
//  268 
//  269     /* Since we have seen the new event, we move pointer upwards
//  270        and decrese the number of events. */
//  271     fevent = (fevent + 1) % PROCESS_CONF_NUMEVENTS;
//  272     --nevents;
//  273 
//  274     /* If this is a broadcast event, we deliver it to all events, in
//  275        order of their priority. */
//  276     if(receiver == PROCESS_BROADCAST) {
//  277       for(p = process_list; p != NULL; p = p->next) {
//  278 
//  279 	/* If we have been requested to poll a process, we do this in
//  280 	   between processing the broadcast event. */
//  281 	if(poll_requested) {
//  282 	  do_poll();
//  283 	}
//  284 	call_process(p, ev, data);
//  285       }
//  286     } else {
//  287       /* This is not a broadcast event, so we deliver it to the
//  288 	 specified process. */
//  289       /* If the event was an INIT event, we should also update the
//  290 	 state of the process. */
//  291       if(ev == PROCESS_EVENT_INIT) {
//  292 	receiver->state = PROCESS_STATE_RUNNING;
//  293       }
//  294 
//  295       /* Make sure that the process actually is running. */
//  296       call_process(receiver, ev, data);
//  297     }
//  298   }
//  299 }
//  300 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function process_run
        THUMB
//  301 int
//  302 process_run(void)
//  303 {
process_run:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  304   /* Process poll events. */
//  305   if(poll_requested) {
        LDR.N    R4,??DataTable11
        LDRB     R0,[R4, #+3]
        CBZ.N    R0,??process_run_0
//  306     do_poll();
          CFI FunCall do_poll
        BL       do_poll
//  307   }
//  308 
//  309   /* Process one event from the queue */
//  310   do_event();
??process_run_0:
        LDRB     R3,[R4, #+1]
        CMP      R3,#+0
        BEQ.N    ??process_run_1
        LDRB     R5,[R4, #+2]
        LDR.N    R2,??DataTable11_1
        ADD      R0,R5,R5, LSL #+1
        LSLS     R0,R0,#+2
        ADDS     R5,R5,#+1
        LDRB     R1,[R0, R2]
        STRB     R1,[R4, #+4]
        ADDS     R0,R0,R2
        ASRS     R6,R5,#+4
        LDR      R2,[R0, #+4]
        STR      R2,[R4, #+16]
        ADD      R6,R5,R6, LSR #+27
        LDR      R0,[R0, #+8]
        ASRS     R6,R6,#+5
        SUB      R5,R5,R6, LSL #+5
        SUBS     R3,R3,#+1
        STRB     R5,[R4, #+2]
        STRB     R3,[R4, #+1]
        CBNZ.N   R0,??process_run_2
        LDR      R0,[R4, #+8]
        B.N      ??process_run_3
??process_run_4:
        LDR      R2,[R4, #+16]
        LDRB     R1,[R4, #+4]
        LDR      R0,[R4, #+20]
          CFI FunCall call_process
        BL       call_process
        LDR      R0,[R4, #+20]
        LDR      R0,[R0, #+0]
??process_run_3:
        STR      R0,[R4, #+20]
        LDR      R0,[R4, #+20]
        CBZ.N    R0,??process_run_1
        LDRB     R0,[R4, #+3]
        CMP      R0,#+0
        BEQ.N    ??process_run_4
        MOVS     R0,#+0
        STRB     R0,[R4, #+3]
        LDR      R5,[R4, #+8]
        B.N      ??process_run_5
??process_run_6:
        MOV      R1,R5
        MOV      R0,R5
          CFI FunCall exit_process
        BL       exit_process
??process_run_7:
        LDR      R5,[R5, #+0]
??process_run_5:
        CMP      R5,#+0
        BEQ.N    ??process_run_4
        LDRB     R0,[R5, #+15]
        CMP      R0,#+0
        BEQ.N    ??process_run_7
        MOVS     R0,#+1
        STRB     R0,[R5, #+14]
        MOVS     R0,#+0
        STRB     R0,[R5, #+15]
        LDR      R3,[R5, #+8]
        MOVS     R0,R3
        BEQ.N    ??process_run_7
        STR      R5,[R4, #+12]
        MOVS     R0,#+2
        STRB     R0,[R5, #+14]
        MOVS     R2,#+0
        MOVS     R1,#+130
        ADD      R0,R5,#+12
          CFI FunCall
        BLX      R3
        CMP      R0,#+2
        IT       NE 
        CMPNE    R0,#+3
        BEQ.N    ??process_run_6
        MOVS     R0,#+1
        STRB     R0,[R5, #+14]
        B.N      ??process_run_7
??process_run_2:
        CMP      R1,#+129
        ITT      EQ 
        MOVEQ    R3,#+1
        STRBEQ   R3,[R0, #+14]
          CFI FunCall call_process
        BL       call_process
//  311 
//  312   return nevents + poll_requested;
??process_run_1:
        LDRB     R0,[R4, #+1]
        LDRB     R1,[R4, #+3]
        ADDS     R0,R1,R0
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock7
//  313 }
//  314 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function process_nevents
          CFI NoCalls
        THUMB
//  315 int
//  316 process_nevents(void)
//  317 {
//  318   return nevents + poll_requested;
process_nevents:
        LDR.N    R0,??DataTable11
        LDRB     R1,[R0, #+1]
        LDRB     R0,[R0, #+3]
        ADDS     R0,R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  319 }
//  320 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function process_post
          CFI NoCalls
        THUMB
//  321 int
//  322 process_post(struct process *p, process_event_t ev, process_data_t data)
//  323 {
process_post:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  324   static process_num_events_t snum;
//  325 
//  326   if(PROCESS_CURRENT() == NULL) {
//  327     PRINTF("process_post: NULL process posts event %d to process '%s', nevents %d\n",
//  328 	   ev,PROCESS_NAME_STRING(p), nevents);
//  329   } else {
//  330     PRINTF("process_post: Process '%s' posts event %d to process '%s', nevents %d\n",
//  331 	   PROCESS_NAME_STRING(PROCESS_CURRENT()), ev,
//  332 	   p == PROCESS_BROADCAST? "<broadcast>": PROCESS_NAME_STRING(p), nevents);
//  333   }
//  334   
//  335   if(nevents == PROCESS_CONF_NUMEVENTS) {
        LDR.N    R3,??DataTable11
        LDRB     R4,[R3, #+1]
        CMP      R4,#+32
        IT       EQ 
        MOVEQ    R0,#+1
//  336 #if DEBUG
//  337     if(p == PROCESS_BROADCAST) {
//  338       printf("soft panic: event queue is full when broadcast event %d was posted from %s\n", ev, PROCESS_NAME_STRING(process_current));
//  339     } else {
//  340       printf("soft panic: event queue is full when event %d was posted to %s frpm %s\n", ev, PROCESS_NAME_STRING(p), PROCESS_NAME_STRING(process_current));
//  341     }
//  342 #endif /* DEBUG */
//  343     return PROCESS_ERR_FULL;
        BEQ.N    ??process_post_0
//  344   }
//  345   
//  346   snum = (process_num_events_t)(fevent + nevents) % PROCESS_CONF_NUMEVENTS;
        LDRB     R5,[R3, #+2]
        ADDS     R5,R4,R5
        AND      R5,R5,#0x1F
//  347   events[snum].ev = ev;
        ADD      R6,R5,R5, LSL #+1
        LSLS     R5,R6,#+2
        LDR.N    R6,??DataTable11_1
        STRB     R1,[R5, R6]
//  348   events[snum].data = data;
        ADDS     R1,R5,R6
        STR      R2,[R1, #+4]
//  349   events[snum].p = p;
        STR      R0,[R1, #+8]
//  350   ++nevents;
        ADDS     R0,R4,#+1
        STRB     R0,[R3, #+1]
//  351 
//  352 #if PROCESS_CONF_STATS
//  353   if(nevents > process_maxevents) {
//  354     process_maxevents = nevents;
//  355   }
//  356 #endif /* PROCESS_CONF_STATS */
//  357   
//  358   return PROCESS_ERR_OK;
        MOVS     R0,#+0
??process_post_0:
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  359 }

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1
//  360 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function process_post_synch
        THUMB
//  361 void
//  362 process_post_synch(struct process *p, process_event_t ev, process_data_t data)
//  363 {
process_post_synch:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  364   struct process *caller = process_current;
        LDR.N    R4,??DataTable11
        LDR      R5,[R4, #+12]
//  365 
//  366   call_process(p, ev, data);
          CFI FunCall call_process
        BL       call_process
//  367   process_current = caller;
        STR      R5,[R4, #+12]
//  368 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock10
//  369 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function process_poll
          CFI NoCalls
        THUMB
//  370 void
//  371 process_poll(struct process *p)
//  372 {
//  373   if(p != NULL) {
process_poll:
        CBZ.N    R0,??process_poll_0
//  374     if(p->state == PROCESS_STATE_RUNNING ||
//  375        p->state == PROCESS_STATE_CALLED) {
        LDRB     R1,[R0, #+14]
        CMP      R1,#+1
        IT       NE 
        CMPNE    R1,#+2
        BNE.N    ??process_poll_0
//  376       p->needspoll = 1;
        MOVS     R1,#+1
        STRB     R1,[R0, #+15]
//  377       poll_requested = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable11
        STRB     R0,[R1, #+3]
//  378     }
//  379   }
//  380 }
??process_poll_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     lastevent

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     events
//  381 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function process_is_running
          CFI NoCalls
        THUMB
//  382 int
//  383 process_is_running(struct process *p)
//  384 {
//  385   return p->state != PROCESS_STATE_NONE;
process_is_running:
        LDRB     R1,[R0, #+14]
        SUBS     R0,R1,#+1
        SBCS     R0,R0,R0
        MVNS     R0,R0
        LSRS     R0,R0,#+31
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  386 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  387 /*---------------------------------------------------------------------------*/
//  388 /** @} */
// 
// 413 bytes in section .bss
// 672 bytes in section .text
// 
// 672 bytes of CODE memory
// 413 bytes of DATA memory
//
//Errors: none
//Warnings: 1
