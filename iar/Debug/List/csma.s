///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:38
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\csma.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\csma.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\csma.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ctimer_set
        EXTERN ctimer_stop
        EXTERN linkaddr_cmp
        EXTERN linkaddr_copy
        EXTERN list_add
        EXTERN list_head
        EXTERN list_init
        EXTERN list_item_next
        EXTERN list_length
        EXTERN list_push
        EXTERN list_remove
        EXTERN mac_call_sent_callback
        EXTERN memb_alloc
        EXTERN memb_free
        EXTERN memb_init
        EXTERN nullrdc_driver
        EXTERN nullsec_driver
        EXTERN packetbuf_addr
        EXTERN packetbuf_attr
        EXTERN packetbuf_set_attr
        EXTERN queuebuf_attr
        EXTERN queuebuf_free
        EXTERN queuebuf_new_from_packetbuf
        EXTERN queuebuf_update_attr_from_packetbuf
        EXTERN random_rand

        PUBLIC csma_driver
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\csma.c
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
//   35  *         A Carrier Sense Multiple Access (CSMA) MAC layer
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  */
//   39 
//   40 #include "net/mac/csma.h"
//   41 #include "net/packetbuf.h"
//   42 #include "net/queuebuf.h"
//   43 
//   44 #include "sys/ctimer.h"
//   45 #include "sys/clock.h"
//   46 
//   47 #include "lib/random.h"
//   48 
//   49 #include "net/netstack.h"
//   50 
//   51 #include "lib/list.h"
//   52 #include "lib/memb.h"
//   53 
//   54 #include <string.h>
//   55 
//   56 #include <stdio.h>
//   57 
//   58 extern void xprintf (			/* Put a formatted string to the default device */
//   59 	const char*	fmt,	/* Pointer to the format string */
//   60 	...					/* Optional arguments */
//   61 );
//   62 
//   63 #define DEBUG 0
//   64 #if DEBUG
//   65 #include <stdio.h>
//   66 //#define PRINTF(...) printf(__VA_ARGS__)
//   67 #define PRINTF(...) xprintf(__VA_ARGS__)
//   68 #else /* DEBUG */
//   69 #define PRINTF(...)
//   70 #endif /* DEBUG */
//   71 
//   72 #ifndef CSMA_MAX_BACKOFF_EXPONENT
//   73 #ifdef CSMA_CONF_MAX_BACKOFF_EXPONENT
//   74 #define CSMA_MAX_BACKOFF_EXPONENT CSMA_CONF_MAX_BACKOFF_EXPONENT
//   75 #else
//   76 #define CSMA_MAX_BACKOFF_EXPONENT 3
//   77 #endif /* CSMA_CONF_MAX_BACKOFF_EXPONENT */
//   78 #endif /* CSMA_MAX_BACKOFF_EXPONENT */
//   79 
//   80 #ifndef CSMA_MAX_MAC_TRANSMISSIONS
//   81 #ifdef CSMA_CONF_MAX_MAC_TRANSMISSIONS
//   82 #define CSMA_MAX_MAC_TRANSMISSIONS CSMA_CONF_MAX_MAC_TRANSMISSIONS
//   83 #else
//   84 #define CSMA_MAX_MAC_TRANSMISSIONS 3
//   85 #endif /* CSMA_CONF_MAX_MAC_TRANSMISSIONS */
//   86 #endif /* CSMA_MAX_MAC_TRANSMISSIONS */
//   87 
//   88 #if CSMA_MAX_MAC_TRANSMISSIONS < 1
//   89 #error CSMA_CONF_MAX_MAC_TRANSMISSIONS must be at least 1.
//   90 #error Change CSMA_CONF_MAX_MAC_TRANSMISSIONS in contiki-conf.h or in your Makefile.
//   91 #endif /* CSMA_CONF_MAX_MAC_TRANSMISSIONS < 1 */
//   92 
//   93 /* Packet metadata */
//   94 struct qbuf_metadata {
//   95   mac_callback_t sent;
//   96   void *cptr;
//   97   uint8_t max_transmissions;
//   98 };
//   99 
//  100 /* Every neighbor has its own packet queue */
//  101 struct neighbor_queue {
//  102   struct neighbor_queue *next;
//  103   linkaddr_t addr;
//  104   struct ctimer transmit_timer;
//  105   uint8_t transmissions;
//  106   uint8_t collisions, deferrals;
//  107   LIST_STRUCT(queued_packet_list);
//  108 };
//  109 
//  110 /* The maximum number of co-existing neighbor queues */
//  111 #ifdef CSMA_CONF_MAX_NEIGHBOR_QUEUES
//  112 #define CSMA_MAX_NEIGHBOR_QUEUES CSMA_CONF_MAX_NEIGHBOR_QUEUES
//  113 #else
//  114 #define CSMA_MAX_NEIGHBOR_QUEUES 2
//  115 #endif /* CSMA_CONF_MAX_NEIGHBOR_QUEUES */
//  116 
//  117 /* The maximum number of pending packet per neighbor */
//  118 #ifdef CSMA_CONF_MAX_PACKET_PER_NEIGHBOR
//  119 #define CSMA_MAX_PACKET_PER_NEIGHBOR CSMA_CONF_MAX_PACKET_PER_NEIGHBOR
//  120 #else
//  121 #define CSMA_MAX_PACKET_PER_NEIGHBOR MAX_QUEUED_PACKETS
//  122 #endif /* CSMA_CONF_MAX_PACKET_PER_NEIGHBOR */
//  123 
//  124 #define MAX_QUEUED_PACKETS QUEUEBUF_NUM

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//  125 MEMB(neighbor_memb, struct neighbor_queue, CSMA_MAX_NEIGHBOR_QUEUES);
neighbor_memb_memb_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct neighbor_queue neighbor_memb_memb_mem[2]
neighbor_memb_memb_mem:
        DS8 112

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  126 MEMB(packet_memb, struct rdc_buf_list, MAX_QUEUED_PACKETS);
packet_memb_memb_count:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct rdc_buf_list packet_memb_memb_mem[6]
packet_memb_memb_mem:
        DS8 72

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  127 MEMB(metadata_memb, struct qbuf_metadata, MAX_QUEUED_PACKETS);
metadata_memb_memb_count:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct qbuf_metadata metadata_memb_memb_mem[6]
metadata_memb_memb_mem:
        DS8 72
//  128 LIST(neighbor_list);
//  129 
//  130 static void packet_sent(void *ptr, int status, int num_transmissions);
//  131 static void transmit_packet_list(void *ptr);
//  132 
//  133 /*---------------------------------------------------------------------------*/
//  134 static struct neighbor_queue *
//  135 neighbor_queue_from_addr(const linkaddr_t *addr)
//  136 {
//  137   struct neighbor_queue *n = list_head(neighbor_list);
//  138   while(n != NULL) {
//  139     if(linkaddr_cmp(&n->addr, addr)) {
//  140       return n;
//  141     }
//  142     n = list_item_next(n);
//  143   }
//  144   return NULL;
//  145 }
//  146 /*---------------------------------------------------------------------------*/
//  147 static clock_time_t
//  148 default_timebase(void)
//  149 {
//  150   clock_time_t time;
//  151   /* The retransmission time must be proportional to the channel
//  152      check interval of the underlying radio duty cycling layer. */
//  153   time = NETSTACK_RDC.channel_check_interval();
//  154 
//  155   /* If the radio duty cycle has no channel check interval (i.e., it
//  156      does not turn the radio off), we make the retransmission time
//  157      proportional to the configured MAC channel check rate. */
//  158   if(time == 0) {
//  159     time = CLOCK_SECOND / NETSTACK_RDC_CHANNEL_CHECK_RATE;
//  160   }
//  161   return time;
//  162 }
//  163 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function transmit_packet_list
        THUMB
//  164 static void
//  165 transmit_packet_list(void *ptr)
//  166 {
transmit_packet_list:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  167   struct neighbor_queue *n = ptr;
//  168   if(n) {
        BEQ.N    ??transmit_packet_list_0
//  169     struct rdc_buf_list *q = list_head(n->queued_packet_list);
        LDR      R0,[R4, #+52]
          CFI FunCall list_head
        BL       list_head
//  170     if(q != NULL) {
        CBZ.N    R0,??transmit_packet_list_0
//  171       PRINTF("csma: preparing number %d %08x, queue len %d\n", n->transmissions, q,
//  172           list_length(n->queued_packet_list));
//  173       /* Send packets in the neighbor's list */
//  174       NETSTACK_RDC.send_list(packet_sent, n, q);
        MOV      R1,R4
        LDR.N    R3,??DataTable10
        LDR      R3,[R3, #+12]
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOV      R2,R0
        ADR.W    R0,packet_sent
          CFI FunCall
        ANOTE "tailcall"
        BX       R3
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  175     }
//  176   }
//  177 }
??transmit_packet_list_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//  178 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function free_packet
        THUMB
//  179 static void
//  180 free_packet(struct neighbor_queue *n, struct rdc_buf_list *p)
//  181 {
free_packet:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R5,R1
        MOV      R4,R0
//  182   if(p != NULL) {
        BEQ.N    ??free_packet_0
//  183     /* Remove packet from list and deallocate */
//  184     list_remove(n->queued_packet_list, p);
        ADD      R6,R4,#+44
        LDR      R0,[R6, #+8]
          CFI FunCall list_remove
        BL       list_remove
//  185 
//  186     queuebuf_free(p->buf);
        LDR      R0,[R5, #+4]
          CFI FunCall queuebuf_free
        BL       queuebuf_free
//  187     memb_free(&metadata_memb, p->ptr);
        LDR.N    R7,??DataTable10_1
        LDR      R1,[R5, #+8]
        ADD      R0,R7,#+28
          CFI FunCall memb_free
        BL       memb_free
//  188     memb_free(&packet_memb, p);
        MOV      R1,R5
        ADD      R0,R7,#+16
          CFI FunCall memb_free
        BL       memb_free
//  189     PRINTF("csma: free_queued_packet, queue length %d, free packets %d\n",
//  190            list_length(n->queued_packet_list), memb_numfree(&packet_memb));
//  191     if(list_head(n->queued_packet_list) != NULL) {
        LDR      R0,[R6, #+8]
          CFI FunCall list_head
        BL       list_head
        CBZ.N    R0,??free_packet_1
//  192       /* There is a next packet. We reset current tx information */
//  193       n->transmissions = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+44]
//  194       n->collisions = 0;
        STRB     R0,[R6, #+1]
//  195       n->deferrals = 0;
        STRB     R0,[R6, #+2]
//  196       /* Set a timer for next transmissions */
//  197       ctimer_set(&n->transmit_timer, default_timebase(),
//  198                  transmit_packet_list, n);
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+28]
          CFI FunCall
        BLX      R0
        CBNZ.N   R0,??free_packet_2
        MOVS     R0,#+250
//  199     } else {
??free_packet_2:
        LDR.N    R2,??DataTable10_2
        MOV      R1,R0
        MOV      R3,R4
        ADD      R0,R4,#+12
        ADD      SP,SP,#+4
          CFI CFA R13+20
        POP      {R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall ctimer_set
        B.W      ctimer_set
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  200       /* This was the last packet in the queue, we free the neighbor */
//  201       ctimer_stop(&n->transmit_timer);
??free_packet_1:
        ADD      R0,R4,#+12
          CFI FunCall ctimer_stop
        BL       ctimer_stop
//  202       list_remove(neighbor_list, n);
        MOV      R1,R4
        ADD      R0,R7,#+40
          CFI FunCall list_remove
        BL       list_remove
//  203       memb_free(&neighbor_memb, n);
        MOV      R1,R4
        ADDS     R0,R7,#+4
        POP      {R2,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall memb_free
        B.W      memb_free
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  204     }
//  205   }
//  206 }
??free_packet_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock1
//  207 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function packet_sent
        THUMB
//  208 static void
//  209 packet_sent(void *ptr, int status, int num_transmissions)
//  210 {
packet_sent:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R10,R0
        MOV      R5,R1
//  211   struct neighbor_queue *n;
//  212   struct rdc_buf_list *q;
//  213   struct qbuf_metadata *metadata;
//  214   clock_time_t time = 0;
//  215   mac_callback_t sent;
//  216   void *cptr;
//  217   int num_tx;
//  218   int backoff_exponent;
//  219   int backoff_transmissions;
//  220 
//  221   n = ptr;
//  222   if(n == NULL) {
        BEQ.N    ??packet_sent_0
//  223     return;
//  224   }
//  225   switch(status) {
        CMP      R5,#+0
        IT       NE 
        CMPNE    R5,#+2
        BEQ.N    ??packet_sent_1
        BCC.N    ??packet_sent_2
        CMP      R5,#+3
        ITTTT    EQ 
        ADDEQ    R0,R10,#+44
        LDRBEQ   R1,[R0, #+2]
        ADDEQ    R1,R2,R1
        STRBEQ   R1,[R0, #+2]
//  226   case MAC_TX_OK:
//  227   case MAC_TX_NOACK:
//  228     n->transmissions += num_transmissions;
//  229     break;
//  230   case MAC_TX_COLLISION:
//  231     n->collisions += num_transmissions;
//  232     break;
//  233   case MAC_TX_DEFERRED:
//  234     n->deferrals += num_transmissions;
        B.N      ??packet_sent_3
??packet_sent_1:
        LDRB     R0,[R10, #+44]
        ADDS     R0,R2,R0
        STRB     R0,[R10, #+44]
        B.N      ??packet_sent_3
??packet_sent_2:
        ADD      R0,R10,#+44
        LDRB     R1,[R0, #+1]
        ADDS     R1,R2,R1
        STRB     R1,[R0, #+1]
//  235     break;
//  236   }
//  237 
//  238   /* Find out what packet this callback refers to */
//  239   for(q = list_head(n->queued_packet_list);
??packet_sent_3:
        ADD      R0,R10,#+44
        LDR      R0,[R0, #+8]
          CFI FunCall list_head
        BL       list_head
        B.N      ??packet_sent_4
//  240       q != NULL; q = list_item_next(q)) {
??packet_sent_5:
        MOV      R0,R6
          CFI FunCall list_item_next
        BL       list_item_next
??packet_sent_4:
        MOVS     R6,R0
        BEQ.N    ??packet_sent_0
//  241     if(queuebuf_attr(q->buf, PACKETBUF_ATTR_MAC_SEQNO) ==
//  242        packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO)) {
        LDR      R0,[R6, #+4]
        MOVS     R1,#+10
          CFI FunCall queuebuf_attr
        BL       queuebuf_attr
        MOV      R7,R0
        MOVS     R0,#+10
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        CMP      R7,R0
        BNE.N    ??packet_sent_5
//  243       break;
//  244     }
//  245   }
//  246 
//  247   if(q != NULL) {
//  248     metadata = (struct qbuf_metadata *)q->ptr;
        LDR      R7,[R6, #+8]
//  249 
//  250     if(metadata != NULL) {
        CMP      R7,#+0
        BEQ.N    ??packet_sent_0
//  251       sent = metadata->sent;
        LDR      R8,[R7, #+0]
//  252       cptr = metadata->cptr;
        LDR      R0,[R7, #+4]
        STR      R0,[SP, #+0]
//  253       num_tx = n->transmissions;
//  254       if(status == MAC_TX_COLLISION ||
//  255          status == MAC_TX_NOACK) {
        CMP      R5,#+1
        LDRB     R9,[R10, #+44]
        IT       NE 
        CMPNE    R5,#+2
        BNE.N    ??packet_sent_6
//  256 
//  257         /* If the transmission was not performed because of a
//  258            collision or noack, we must retransmit the packet. */
//  259 
//  260         switch(status) {
//  261         case MAC_TX_COLLISION:
//  262           PRINTF("csma: rexmit collision %d\n", n->transmissions);
//  263           break;
//  264         case MAC_TX_NOACK:
//  265           PRINTF("csma: rexmit noack %d\n", n->transmissions);
//  266           break;
//  267         default:
//  268           PRINTF("csma: rexmit err %d, %d\n", status, n->transmissions);
//  269         }
//  270 
//  271         /* The retransmission time must be proportional to the channel
//  272            check interval of the underlying radio duty cycling layer. */
//  273         time = default_timebase();
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+28]
          CFI FunCall
        BLX      R0
        MOVS     R4,R0
        IT       EQ 
        MOVEQ    R4,#+250
//  274 
//  275         /* The retransmission time uses a truncated exponential backoff
//  276          * so that the interval between the transmissions increase with
//  277          * each retransmit. */
//  278         backoff_exponent = num_tx;
        MOV      R11,R9
//  279 
//  280         /* Truncate the exponent if needed. */
//  281         if(backoff_exponent > CSMA_MAX_BACKOFF_EXPONENT) {
        CMP      R11,#+4
        IT       GE 
        MOVGE    R11,#+3
//  282           backoff_exponent = CSMA_MAX_BACKOFF_EXPONENT;
//  283         }
//  284 
//  285         /* Proceed to exponentiation. */
//  286         backoff_transmissions = 1 << backoff_exponent;
//  287 
//  288         /* Pick a time for next transmission, within the interval:
//  289          * [time, time + 2^backoff_exponent * time[ */
//  290         time = time + (random_rand() % (backoff_transmissions * time)); 
          CFI FunCall random_rand
        BL       random_rand
        MOVS     R1,#+1
        LSL      R1,R1,R11
        MULS     R1,R1,R4
        ADDS     R2,R0,R4
        UDIV     R0,R0,R1
        MLS      R1,R1,R0,R2
//  291 
//  292        // time = time + (random_rand() % (backoff_transmissions * time)); 
//  293 
//  294         if(n->transmissions < metadata->max_transmissions) {
        LDRB     R0,[R10, #+44]
        LDRB     R2,[R7, #+8]
        CMP      R0,R2
        BCS.N    ??packet_sent_6
//  295           PRINTF("csma: retransmitting with time %lu %08x\n", time, q);
//  296           ctimer_set(&n->transmit_timer, time,
//  297                      transmit_packet_list, n);
        MOV      R3,R10
        LDR.N    R2,??DataTable10_2
        ADD      R0,R10,#+12
          CFI FunCall ctimer_set
        BL       ctimer_set
//  298           /* This is needed to correctly attribute energy that we spent
//  299              transmitting this packet. */
//  300           queuebuf_update_attr_from_packetbuf(q->buf);
        LDR      R0,[R6, #+4]
        POP      {R1,R4-R11,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall queuebuf_update_attr_from_packetbuf
        B.W      queuebuf_update_attr_from_packetbuf
          CFI R4 Frame(CFA, -36)
          CFI R5 Frame(CFA, -32)
          CFI R6 Frame(CFA, -28)
          CFI R7 Frame(CFA, -24)
          CFI R8 Frame(CFA, -20)
          CFI R9 Frame(CFA, -16)
          CFI R10 Frame(CFA, -12)
          CFI R11 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
//  301         } else {
//  302           PRINTF("csma: drop with status %d after %d transmissions, %d collisions\n",
//  303                  status, n->transmissions, n->collisions);
//  304           free_packet(n, q);
//  305           mac_call_sent_callback(sent, cptr, status, num_tx);
//  306         }
//  307       } else {
//  308         if(status == MAC_TX_OK) {
//  309           PRINTF("csma: rexmit ok %d\n", n->transmissions);
//  310         } else {
//  311           PRINTF("csma: rexmit failed %d: %d\n", n->transmissions, status);
//  312         }
//  313         free_packet(n, q);
??packet_sent_6:
        MOV      R1,R6
        MOV      R0,R10
          CFI FunCall free_packet
        BL       free_packet
//  314         mac_call_sent_callback(sent, cptr, status, num_tx);
        LDR      R1,[SP, #+0]
        MOV      R3,R9
        MOV      R2,R5
        MOV      R0,R8
        ADD      SP,SP,#+4
          CFI CFA R13+36
        POP      {R4-R11,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall mac_call_sent_callback
        B.W      mac_call_sent_callback
          CFI R4 Frame(CFA, -36)
          CFI R5 Frame(CFA, -32)
          CFI R6 Frame(CFA, -28)
          CFI R7 Frame(CFA, -24)
          CFI R8 Frame(CFA, -20)
          CFI R9 Frame(CFA, -16)
          CFI R10 Frame(CFA, -12)
          CFI R11 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
//  315       }
//  316     } else {
//  317       PRINTF("csma: no metadata\n");
//  318     }
//  319   } else {
//  320     PRINTF("csma: seqno %d not found\n", packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO));
//  321   }
//  322 }
??packet_sent_0:
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock2
//  323 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function send_packet
        THUMB
//  324 static void
//  325 send_packet(mac_callback_t sent, void *ptr)
//  326 {
send_packet:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R8,R1
//  327   struct rdc_buf_list *q;
//  328   struct neighbor_queue *n;
//  329   static uint8_t initialized = 0;
//  330   static uint16_t seqno;
//  331   const linkaddr_t *addr = packetbuf_addr(PACKETBUF_ADDR_RECEIVER);
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
//  332 
//  333   if(!initialized) {
        LDR.N    R7,??DataTable10_1
        MOV      R5,R0
        LDRB     R0,[R7, #+0]
        CBNZ.N   R0,??send_packet_0
//  334     initialized = 1;
        MOVS     R0,#+1
        STRB     R0,[R7, #+0]
//  335     /* Initialize the sequence number to a random value as per 802.15.4. */
//  336     seqno = random_rand();
          CFI FunCall random_rand
        BL       random_rand
        STRH     R0,[R7, #+2]
//  337   }
//  338 
//  339   if(seqno == 0) {
??send_packet_0:
        LDRH     R0,[R7, #+2]
        CBNZ.N   R0,??send_packet_1
//  340     /* PACKETBUF_ATTR_MAC_SEQNO cannot be zero, due to a pecuilarity
//  341        in framer-802154.c. */
//  342     seqno++;
        MOVS     R0,#+1
        STRH     R0,[R7, #+2]
//  343   }
//  344   packetbuf_set_attr(PACKETBUF_ATTR_MAC_SEQNO, seqno++);
??send_packet_1:
        LDRH     R1,[R7, #+2]
        ADDS     R0,R1,#+1
        STRH     R0,[R7, #+2]
        MOVS     R0,#+10
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  345 
//  346   /* Look for the neighbor entry */
//  347   n = neighbor_queue_from_addr(addr);
        ADD      R0,R7,#+40
          CFI FunCall list_head
        BL       list_head
        B.N      ??send_packet_2
??send_packet_3:
        MOV      R0,R6
          CFI FunCall list_item_next
        BL       list_item_next
??send_packet_2:
        MOVS     R6,R0
        BEQ.N    ??send_packet_4
        MOV      R1,R5
        ADDS     R0,R6,#+4
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CMP      R0,#+0
        BEQ.N    ??send_packet_3
//  348   if(n == NULL) {
??send_packet_4:
        CBNZ.N   R6,??send_packet_5
//  349     /* Allocate a new neighbor entry */
//  350     n = memb_alloc(&neighbor_memb);
        ADDS     R0,R7,#+4
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R6,R0
//  351     if(n != NULL) {
        BEQ.N    ??send_packet_6
//  352       /* Init neighbor entry */
//  353       linkaddr_copy(&n->addr, addr);
        MOV      R1,R5
        ADDS     R0,R6,#+4
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  354       n->transmissions = 0;
        MOVS     R0,#+0
        STRB     R0,[R6, #+44]
//  355       n->collisions = 0;
        MOVS     R1,#+0
        ADD      R0,R6,#+44
        STRB     R1,[R0, #+1]
//  356       n->deferrals = 0;
        STRB     R1,[R0, #+2]
//  357       /* Init packet list for this neighbor */
//  358       LIST_STRUCT_INIT(n, queued_packet_list);
        ADD      R1,R6,#+48
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR      R0,[R0, #+8]
          CFI FunCall list_init
        BL       list_init
//  359       /* Add neighbor to the list */
//  360       list_add(neighbor_list, n);
        MOV      R1,R6
        ADD      R0,R7,#+40
          CFI FunCall list_add
        BL       list_add
//  361     }
//  362   }
//  363 
//  364   if(n != NULL) {
//  365     /* Add packet to the neighbor's queue */
//  366     if(list_length(n->queued_packet_list) < CSMA_MAX_PACKET_PER_NEIGHBOR) {
??send_packet_5:
        LDR      R0,[R6, #+52]
          CFI FunCall list_length
        BL       list_length
        CMP      R0,#+6
        BGE.N    ??send_packet_6
//  367       q = memb_alloc(&packet_memb);
        ADD      R0,R7,#+16
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R5,R0
//  368       if(q != NULL) {
        BEQ.N    ??send_packet_7
//  369         q->ptr = memb_alloc(&metadata_memb);
        ADD      R0,R7,#+28
          CFI FunCall memb_alloc
        BL       memb_alloc
        STR      R0,[R5, #+8]
//  370         if(q->ptr != NULL) {
        CBZ.N    R0,??send_packet_8
//  371           q->buf = queuebuf_new_from_packetbuf();
          CFI FunCall queuebuf_new_from_packetbuf
        BL       queuebuf_new_from_packetbuf
        STR      R0,[R5, #+4]
//  372           if(q->buf != NULL) {
        CBZ.N    R0,??send_packet_9
//  373             struct qbuf_metadata *metadata = (struct qbuf_metadata *)q->ptr;
        LDR      R7,[R5, #+8]
//  374             /* Neighbor and packet successfully allocated */
//  375             if(packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS) == 0) {
        MOVS     R0,#+9
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        CMP      R0,#+0
        ITEE     EQ 
        MOVEQ    R0,#+3
        MOVNE    R0,#+9
        BLNE     packetbuf_attr
//  376               /* Use default configuration for max transmissions */
//  377               metadata->max_transmissions = CSMA_MAX_MAC_TRANSMISSIONS;
//  378             } else {
//  379               metadata->max_transmissions =
//  380                 packetbuf_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS);
        STRB     R0,[R7, #+8]
//  381             }
//  382             metadata->sent = sent;
        STR      R4,[R7, #+0]
//  383             metadata->cptr = ptr;
        STR      R8,[R7, #+4]
//  384 
//  385             if(packetbuf_attr(PACKETBUF_ATTR_PACKET_TYPE) ==
//  386                PACKETBUF_ATTR_PACKET_TYPE_ACK) {
        MOVS     R0,#+15
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        CMP      R0,#+1
        LDR      R0,[R6, #+52]
        MOV      R1,R5
        BNE.N    ??send_packet_10
//  387               list_push(n->queued_packet_list, q);
          CFI FunCall list_push
        BL       list_push
        B.N      ??send_packet_11
//  388             } else {
//  389               list_add(n->queued_packet_list, q);
??send_packet_10:
          CFI FunCall list_add
        BL       list_add
//  390             }
//  391 
//  392             PRINTF("csma: send_packet, queue length %d, free packets %d\n",
//  393                    list_length(n->queued_packet_list), memb_numfree(&packet_memb));
//  394             /* If q is the first packet in the neighbor's queue, send asap */
//  395             if(list_head(n->queued_packet_list) == q) {
??send_packet_11:
        LDR      R0,[R6, #+52]
          CFI FunCall list_head
        BL       list_head
        CMP      R0,R5
        BNE.N    ??send_packet_12
//  396               ctimer_set(&n->transmit_timer, 0, transmit_packet_list, n);
        MOV      R3,R6
        ADD      R0,R6,#+12
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.N    R2,??DataTable10_2
        MOVS     R1,#+0
          CFI FunCall ctimer_set
        B.W      ctimer_set
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  397             }
//  398             return;
//  399           }
//  400           memb_free(&metadata_memb, q->ptr);
??send_packet_9:
        LDR      R1,[R5, #+8]
        ADD      R0,R7,#+28
          CFI FunCall memb_free
        BL       memb_free
//  401           PRINTF("csma: could not allocate queuebuf, dropping packet\n");
//  402         }
//  403         memb_free(&packet_memb, q);
??send_packet_8:
        MOV      R1,R5
        ADD      R0,R7,#+16
          CFI FunCall memb_free
        BL       memb_free
//  404         PRINTF("csma: could not allocate queuebuf, dropping packet\n");
//  405       }
//  406       /* The packet allocation failed. Remove and free neighbor entry if empty. */
//  407       if(list_length(n->queued_packet_list) == 0) {
??send_packet_7:
        LDR      R0,[R6, #+52]
          CFI FunCall list_length
        BL       list_length
        CBNZ.N   R0,??send_packet_6
//  408         list_remove(neighbor_list, n);
        MOV      R1,R6
        ADD      R0,R7,#+40
          CFI FunCall list_remove
        BL       list_remove
//  409         memb_free(&neighbor_memb, n);
        MOV      R1,R6
        ADDS     R0,R7,#+4
          CFI FunCall memb_free
        BL       memb_free
//  410       }
//  411     } else {
//  412       PRINTF("csma: Neighbor queue full\n");
//  413     }
//  414     PRINTF("csma: could not allocate packet, dropping packet\n");
//  415   } else {
//  416     PRINTF("csma: could not allocate neighbor, dropping packet\n");
//  417   }
//  418   mac_call_sent_callback(sent, ptr, MAC_TX_ERR, 1);
??send_packet_6:
        MOV      R1,R8
        MOV      R0,R4
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R3,#+1
        MOVS     R2,#+4
          CFI FunCall mac_call_sent_callback
        B.W      mac_call_sent_callback
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
??send_packet_12:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock3
//  419 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??initialized:
        DATA
        DC8 0
        DC8 0
        DC8 0, 0
        DC16 56, 2
        DC32 neighbor_memb_memb_count, neighbor_memb_memb_mem
        DC16 12, 6
        DC32 packet_memb_memb_count, packet_memb_memb_mem
        DC16 12, 6
        DC32 metadata_memb_memb_count, metadata_memb_memb_mem
neighbor_list_list:
        DC32 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 neighbor_list_list
//  420 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function input_packet
        THUMB
//  421 static void
//  422 input_packet(void)
//  423 {
//  424   NETSTACK_LLSEC.input();
input_packet:
        LDR.N    R0,??DataTable10_3
        LDR      R0,[R0, #+16]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock4
//  425 }
//  426 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function on
        THUMB
//  427 static int
//  428 on(void)
//  429 {
//  430   return NETSTACK_RDC.on();
on:
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+20]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock5
//  431 }
//  432 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function off
        THUMB
//  433 static int
//  434 off(int keep_radio_on)
//  435 {
//  436   return NETSTACK_RDC.off(keep_radio_on);
off:
        LDR.N    R1,??DataTable10
        LDR      R1,[R1, #+24]
          CFI FunCall
        ANOTE "tailcall"
        BX       R1
          CFI EndBlock cfiBlock6
//  437 }
//  438 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function channel_check_interval
        THUMB
//  439 static unsigned short
//  440 channel_check_interval(void)
//  441 {
channel_check_interval:
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+28]
        MOVS     R1,R0
        IT       NE 
//  442   if(NETSTACK_RDC.channel_check_interval) {
//  443     return NETSTACK_RDC.channel_check_interval();
          CFI FunCall
        ANOTE "tailcall"
        BXNE     R0
//  444   }
//  445   return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  446 }
//  447 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function init
        THUMB
//  448 static void
//  449 init(void)
//  450 {
init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  451   memb_init(&packet_memb);
        LDR.N    R4,??DataTable10_1
        ADD      R0,R4,#+16
          CFI FunCall memb_init
        BL       memb_init
//  452   memb_init(&metadata_memb);
        ADD      R0,R4,#+28
          CFI FunCall memb_init
        BL       memb_init
//  453   memb_init(&neighbor_memb);
        ADDS     R0,R4,#+4
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall memb_init
        B.W      memb_init
          CFI EndBlock cfiBlock8
//  454 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     nullrdc_driver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     ??initialized

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     transmit_packet_list

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     nullsec_driver

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "CSMA"
        DC8 0, 0, 0
//  455 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  456 const struct mac_driver csma_driver = {
csma_driver:
        DC32 ?_0, init, send_packet, input_packet, on, off
        DC32 channel_check_interval

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  457   "CSMA",
//  458   init,
//  459   send_packet,
//  460   input_packet,
//  461   on,
//  462   off,
//  463   channel_check_interval,
//  464 };
//  465 /*---------------------------------------------------------------------------*/
// 
// 274 bytes in section .bss
//  48 bytes in section .data
//  36 bytes in section .rodata
// 808 bytes in section .text
// 
// 808 bytes of CODE  memory
//  36 bytes of CONST memory
// 322 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
