///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\phase.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\phase.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\phase.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ctimer_set
        EXTERN memb_alloc
        EXTERN memb_free
        EXTERN memb_init
        EXTERN nbr_table_add_lladdr
        EXTERN nbr_table_get_from_lladdr
        EXTERN nbr_table_register
        EXTERN nbr_table_remove
        EXTERN nullrdc_driver
        EXTERN packetbuf_set_attr
        EXTERN queuebuf_free
        EXTERN queuebuf_new_from_packetbuf
        EXTERN queuebuf_to_packetbuf
        EXTERN rtimer_arch_now
        EXTERN timer_expired
        EXTERN timer_set

        PUBLIC phase_init
        PUBLIC phase_update
        PUBLIC phase_wait
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\phase.c
//    1 /*
//    2  * Copyright (c) 2010, Swedish Institute of Computer Science.
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
//   35  *         Common functionality for phase optimization in duty cycling radio protocols
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  */
//   39 
//   40 #include "net/mac/phase.h"
//   41 #include "net/packetbuf.h"
//   42 #include "sys/clock.h"
//   43 #include "sys/ctimer.h"
//   44 #include "net/queuebuf.h"
//   45 #include "net/nbr-table.h"
//   46 
//   47 #if PHASE_CONF_DRIFT_CORRECT
//   48 #define PHASE_DRIFT_CORRECT PHASE_CONF_DRIFT_CORRECT
//   49 #else
//   50 #define PHASE_DRIFT_CORRECT 0
//   51 #endif
//   52 
//   53 struct phase {
//   54   rtimer_clock_t time;
//   55 #if PHASE_DRIFT_CORRECT
//   56   rtimer_clock_t drift;
//   57 #endif
//   58   uint8_t noacks;
//   59   struct timer noacks_timer;
//   60 };
//   61 
//   62 struct phase_queueitem {
//   63   struct ctimer timer;
//   64   mac_callback_t mac_callback;
//   65   void *mac_callback_ptr;
//   66   struct queuebuf *q;
//   67   struct rdc_buf_list *buf_list;
//   68 };
//   69 
//   70 #define PHASE_DEFER_THRESHOLD 1
//   71 #define PHASE_QUEUESIZE       8
//   72 
//   73 #define MAX_NOACKS            16
//   74 
//   75 #define MAX_NOACKS_TIME       CLOCK_SECOND * 30
//   76 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   77 MEMB(queued_packets_memb, struct phase_queueitem, PHASE_QUEUESIZE);
queued_packets_memb_memb_count:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct phase_queueitem queued_packets_memb_memb_mem[8]
queued_packets_memb_memb_mem:
        DS8 384

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   78 NBR_TABLE(struct phase, nbr_phase);
_nbr_phase_mem:
        DS8 16

        SECTION `.data`:DATA:REORDER:NOROOT(2)
queued_packets_memb:
        DATA
        DC16 48, 8
        DC32 queued_packets_memb_memb_count, queued_packets_memb_memb_mem
nbr_phase_struct:
        DC32 0, 16, 0H, _nbr_phase_mem

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 nbr_phase_struct
//   79 
//   80 #define DEBUG 0
//   81 #if DEBUG
//   82 #include <stdio.h>
//   83 #define PRINTF(...) printf(__VA_ARGS__)
//   84 #define PRINTDEBUG(...) printf(__VA_ARGS__)
//   85 #else
//   86 #define PRINTF(...)
//   87 #define PRINTDEBUG(...)
//   88 #endif
//   89 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function phase_update
        THUMB
//   90 void
//   91 phase_update(const linkaddr_t *neighbor, rtimer_clock_t time,
//   92              int mac_status)
//   93 {
phase_update:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R5,R0
        MOV      R6,R1
//   94   struct phase *e;
//   95 
//   96   /* If we have an entry for this neighbor already, we renew it. */
//   97   e = nbr_table_get_from_lladdr(nbr_phase, neighbor);
        LDR.W    R8,??DataTable3
        MOV      R7,R2
        MOV      R1,R5
        ADD      R0,R8,#+12
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
        MOVS     R4,R0
//   98   if(e != NULL) {
        BEQ.N    ??phase_update_0
//   99     if(mac_status == MAC_TX_OK) {
        CBNZ.N   R7,??phase_update_1
//  100 #if PHASE_DRIFT_CORRECT
//  101       e->drift = time-e->time;
//  102 #endif
//  103       e->time = time;
        STR      R6,[R4, #+0]
//  104     }
//  105     /* If the neighbor didn't reply to us, it may have switched
//  106        phase (rebooted). We try a number of transmissions to it
//  107        before we drop it from the phase list. */
//  108     if(mac_status == MAC_TX_NOACK) {
//  109       PRINTF("phase noacks %d to %d.%d\n", e->noacks, neighbor->u8[0], neighbor->u8[1]);
//  110       e->noacks++;
//  111       if(e->noacks == 1) {
//  112         timer_set(&e->noacks_timer, MAX_NOACKS_TIME);
//  113       }
//  114       if(e->noacks >= MAX_NOACKS || timer_expired(&e->noacks_timer)) {
//  115         PRINTF("drop %d\n", neighbor->u8[0]);
//  116         nbr_table_remove(nbr_phase, e);
//  117         return;
//  118       }
//  119     } else if(mac_status == MAC_TX_OK) {
//  120       e->noacks = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+4]
//  121     }
//  122   } else {
//  123     /* No matching phase was found, so we allocate a new one. */
//  124     if(mac_status == MAC_TX_OK && e == NULL) {
//  125       e = nbr_table_add_lladdr(nbr_phase, neighbor);
//  126       if(e) {
//  127         e->time = time;
//  128 #if PHASE_DRIFT_CORRECT
//  129       e->drift = 0;
//  130 #endif
//  131       e->noacks = 0;
//  132       }
//  133     }
//  134   }
//  135 }
        POP      {R4-R8,PC}
??phase_update_1:
        CMP      R7,#+2
        BNE.N    ??phase_update_2
        LDRB     R0,[R4, #+4]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+4]
        UXTB     R0,R0
        CMP      R0,#+1
        BNE.N    ??phase_update_3
        MOVW     R1,#+30000
        ADD      R0,R4,#+8
          CFI FunCall timer_set
        BL       timer_set
??phase_update_3:
        LDRB     R0,[R4, #+4]
        CMP      R0,#+16
        BGE.N    ??phase_update_4
        ADD      R0,R4,#+8
          CFI FunCall timer_expired
        BL       timer_expired
        CBZ.N    R0,??phase_update_2
??phase_update_4:
        MOV      R1,R4
        ADD      R0,R8,#+12
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall nbr_table_remove
        B.W      nbr_table_remove
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
??phase_update_0:
        CBNZ.N   R7,??phase_update_2
        MOV      R1,R5
        ADD      R0,R8,#+12
          CFI FunCall nbr_table_add_lladdr
        BL       nbr_table_add_lladdr
        CBZ.N    R0,??phase_update_2
        STR      R6,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
??phase_update_2:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock0
//  136 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function send_packet
        THUMB
//  137 static void
//  138 send_packet(void *ptr)
//  139 {
send_packet:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  140   struct phase_queueitem *p = ptr;
//  141 
//  142   if(p->buf_list == NULL) {
        LDR.N    R5,??DataTable3_1
        LDR      R2,[R4, #+44]
        CBNZ.N   R2,??send_packet_0
//  143     queuebuf_to_packetbuf(p->q);
        LDR      R0,[R4, #+40]
          CFI FunCall queuebuf_to_packetbuf
        BL       queuebuf_to_packetbuf
//  144     queuebuf_free(p->q);
        LDR      R0,[R4, #+40]
          CFI FunCall queuebuf_free
        BL       queuebuf_free
//  145     NETSTACK_RDC.send(p->mac_callback, p->mac_callback_ptr);
        LDR      R1,[R4, #+36]
        LDR      R0,[R4, #+32]
        LDR      R2,[R5, #+8]
          CFI FunCall
        BLX      R2
        B.N      ??send_packet_1
//  146   } else {
//  147     NETSTACK_RDC.send_list(p->mac_callback, p->mac_callback_ptr, p->buf_list);
??send_packet_0:
        LDR      R1,[R4, #+36]
        LDR      R0,[R4, #+32]
        LDR      R3,[R5, #+12]
          CFI FunCall
        BLX      R3
//  148   }
//  149 
//  150   memb_free(&queued_packets_memb, p);
??send_packet_1:
        LDR.N    R0,??DataTable3
        MOV      R1,R4
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall memb_free
        B.W      memb_free
          CFI EndBlock cfiBlock1
//  151 }
//  152 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function phase_wait
        THUMB
//  153 phase_status_t
//  154 phase_wait(const linkaddr_t *neighbor, rtimer_clock_t cycle_time,
//  155            rtimer_clock_t guard_time,
//  156            mac_callback_t mac_callback, void *mac_callback_ptr,
//  157            struct rdc_buf_list *buf_list)
//  158 {
phase_wait:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R7,R1
//  159   struct phase *e;
//  160   //  const linkaddr_t *neighbor = packetbuf_addr(PACKETBUF_ADDR_RECEIVER);
//  161   /* We go through the list of phases to find if we have recorded a
//  162      phase for this particular neighbor. If so, we can compute the
//  163      time for the next expected phase and setup a ctimer to switch on
//  164      the radio just before the phase. */
//  165   e = nbr_table_get_from_lladdr(nbr_phase, neighbor);
        LDR.N    R6,??DataTable3
        MOV      R1,R0
        MOV      R5,R2
        MOV      R4,R3
        ADD      R0,R6,#+12
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
        MOVS     R9,R0
//  166   if(e != NULL) {
        BEQ.N    ??phase_wait_0
//  167     rtimer_clock_t wait, now, expected, sync;
//  168     clock_time_t ctimewait;
//  169     
//  170     /* We expect phases to happen every CYCLE_TIME time
//  171        units. The next expected phase is at time e->time +
//  172        CYCLE_TIME. To compute a relative offset, we subtract
//  173        with clock_time(). Because we are only interested in turning
//  174        on the radio within the CYCLE_TIME period, we compute the
//  175        waiting time with modulo CYCLE_TIME. */
//  176     
//  177     /*      printf("neighbor phase 0x%02x (cycle 0x%02x)\n", e->time & (cycle_time - 1),
//  178             cycle_time);*/
//  179 
//  180     /*      if(e->noacks > 0) {
//  181             printf("additional wait %d\n", additional_wait);
//  182             }*/
//  183     
//  184     now = RTIMER_NOW();
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        MOV      R8,R0
//  185 
//  186     sync = (e == NULL) ? now : e->time;
//  187 
//  188 #if PHASE_DRIFT_CORRECT
//  189     {
//  190       int32_t s;
//  191       if(e->drift > cycle_time) {
//  192         s = e->drift % cycle_time / (e->drift / cycle_time);  /* drift per cycle */
//  193         s = s * (now - sync) / cycle_time;                    /* estimated drift to now */
//  194         sync += s;                                            /* add it in */
//  195       }
//  196     }
//  197 #endif
//  198 
//  199     /* Check if cycle_time is a power of two */
//  200     if(!(cycle_time & (cycle_time - 1))) {
        SUBS     R1,R7,#+1
        LDR      R0,[R9, #+0]
        TST      R7,R1
        BNE.N    ??phase_wait_1
//  201       /* Faster if cycle_time is a power of two */
//  202       wait = (rtimer_clock_t)((sync - now) & (cycle_time - 1));
        SUB      R0,R0,R8
        AND      R9,R1,R0
        B.N      ??phase_wait_2
//  203     } else {
//  204       /* Works generally */
//  205       wait = cycle_time - (rtimer_clock_t)((now - sync) % cycle_time);
??phase_wait_1:
        SUB      R0,R8,R0
        SUBS     R1,R7,R0
        UDIV     R0,R0,R7
        MLA      R9,R7,R0,R1
//  206     }
//  207 
//  208     if(wait < guard_time) {
??phase_wait_2:
        CMP      R9,R5
        IT       CC 
        ADDCC    R9,R7,R9
//  209       wait += cycle_time;
//  210     }
//  211 
//  212     ctimewait = (CLOCK_SECOND * (wait - guard_time)) / RTIMER_ARCH_SECOND;
        SUB      R0,R9,R5
        MOV      R1,#+1000
        MULS     R0,R1,R0
        MOVW     R1,#+10000
        UDIV     R7,R0,R1
//  213 
//  214     if(ctimewait > PHASE_DEFER_THRESHOLD) {
        CMP      R7,#+2
        BCC.N    ??phase_wait_3
//  215       struct phase_queueitem *p;
//  216       
//  217       p = memb_alloc(&queued_packets_memb);
        MOV      R0,R6
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R6,R0
//  218       if(p != NULL) {
        BEQ.N    ??phase_wait_3
        LDR      R5,[SP, #+36]
//  219         if(buf_list == NULL) {
        CBNZ.N   R5,??phase_wait_4
//  220           packetbuf_set_attr(PACKETBUF_ATTR_IS_CREATED_AND_SECURED, 1);
        MOVS     R1,#+1
        MOVS     R0,#+12
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  221           p->q = queuebuf_new_from_packetbuf();
          CFI FunCall queuebuf_new_from_packetbuf
        BL       queuebuf_new_from_packetbuf
        STR      R0,[R6, #+40]
//  222         }
//  223         p->mac_callback = mac_callback;
??phase_wait_4:
        STR      R4,[R6, #+32]
//  224         p->mac_callback_ptr = mac_callback_ptr;
//  225         p->buf_list = buf_list;
//  226         ctimer_set(&p->timer, ctimewait, send_packet, p);
        MOV      R3,R6
        LDR      R0,[SP, #+32]
        LDR.N    R2,??DataTable3_2
        STR      R0,[R6, #+36]
        STR      R5,[R6, #+44]
        MOV      R1,R7
        MOV      R0,R6
          CFI FunCall ctimer_set
        BL       ctimer_set
//  227         return PHASE_DEFERRED;
        MOVS     R0,#+2
//  228       }
//  229     }
//  230 
//  231     expected = now + wait - guard_time;
//  232     if(!RTIMER_CLOCK_LT(expected, now)) {
//  233       /* Wait until the receiver is expected to be awake */
//  234       while(RTIMER_CLOCK_LT(RTIMER_NOW(), expected));
//  235     }
//  236     return PHASE_SEND_NOW;
//  237   }
//  238   return PHASE_UNKNOWN;
        POP      {R1,R4-R9,PC}
??phase_wait_3:
        ADD      R0,R9,R8
        SUBS     R4,R0,R5
        SUBS     R0,R4,R8
        BMI.N    ??phase_wait_5
??phase_wait_6:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        SUBS     R0,R0,R4
        BMI.N    ??phase_wait_6
??phase_wait_5:
        MOVS     R0,#+1
??phase_wait_0:
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock2
//  239 }
//  240 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function phase_init
        THUMB
//  241 void
//  242 phase_init(void)
//  243 {
phase_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  244   memb_init(&queued_packets_memb);
        LDR.N    R4,??DataTable3
        MOV      R0,R4
          CFI FunCall memb_init
        BL       memb_init
//  245   nbr_table_register(nbr_phase, NULL);
        ADD      R0,R4,#+12
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
          CFI FunCall nbr_table_register
        B.W      nbr_table_register
          CFI EndBlock cfiBlock3
//  246 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     queued_packets_memb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     nullrdc_driver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     send_packet

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  247 /*---------------------------------------------------------------------------*/
// 
// 408 bytes in section .bss
//  32 bytes in section .data
// 386 bytes in section .text
// 
// 386 bytes of CODE memory
// 440 bytes of DATA memory
//
//Errors: none
//Warnings: 1
