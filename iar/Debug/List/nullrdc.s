///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:06
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\nullrdc.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\nullrdc.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\nullrdc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN csma_driver
        EXTERN frame802154_parse
        EXTERN framer_802154
        EXTERN linkaddr_cmp
        EXTERN linkaddr_node_addr
        EXTERN mac_call_sent_callback
        EXTERN mac_sequence_is_duplicate
        EXTERN mac_sequence_register_seqno
        EXTERN nullradio_driver
        EXTERN packetbuf_addr
        EXTERN packetbuf_datalen
        EXTERN packetbuf_dataptr
        EXTERN packetbuf_hdrptr
        EXTERN packetbuf_holds_broadcast
        EXTERN packetbuf_set_addr
        EXTERN packetbuf_set_attr
        EXTERN packetbuf_totlen
        EXTERN queuebuf_to_packetbuf
        EXTERN rtimer_arch_now
        EXTERN watchdog_periodic

        PUBLIC nullrdc_driver
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\nullrdc.c
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
//   35  *         A null RDC implementation that uses framer for headers.
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  *         Niclas Finne <nfi@sics.se>
//   39  */
//   40 
//   41 #include "net/mac/mac-sequence.h"
//   42 #include "net/mac/nullrdc.h"
//   43 #include "net/packetbuf.h"
//   44 #include "net/queuebuf.h"
//   45 #include "net/netstack.h"
//   46 #include "net/rime/rimestats.h"
//   47 #include <string.h>
//   48 
//   49 #if CONTIKI_TARGET_COOJA
//   50 #include "lib/simEnvChange.h"
//   51 #include "sys/cooja_mt.h"
//   52 #endif /* CONTIKI_TARGET_COOJA */
//   53 
//   54 #define DEBUG 0
//   55 #if DEBUG
//   56 #include <stdio.h>
//   57 #define PRINTF(...) printf(__VA_ARGS__)
//   58 #else
//   59 #define PRINTF(...)
//   60 #endif
//   61 
//   62 #ifdef NULLRDC_CONF_ADDRESS_FILTER
//   63 #define NULLRDC_ADDRESS_FILTER NULLRDC_CONF_ADDRESS_FILTER
//   64 #else
//   65 #define NULLRDC_ADDRESS_FILTER 1
//   66 #endif /* NULLRDC_CONF_ADDRESS_FILTER */
//   67 
//   68 #ifndef NULLRDC_802154_AUTOACK
//   69 #ifdef NULLRDC_CONF_802154_AUTOACK
//   70 #define NULLRDC_802154_AUTOACK NULLRDC_CONF_802154_AUTOACK
//   71 #else
//   72 #define NULLRDC_802154_AUTOACK 0
//   73 #endif /* NULLRDC_CONF_802154_AUTOACK */
//   74 #endif /* NULLRDC_802154_AUTOACK */
//   75 
//   76 #ifndef NULLRDC_802154_AUTOACK_HW
//   77 #ifdef NULLRDC_CONF_802154_AUTOACK_HW
//   78 #define NULLRDC_802154_AUTOACK_HW NULLRDC_CONF_802154_AUTOACK_HW
//   79 #else
//   80 #define NULLRDC_802154_AUTOACK_HW 0
//   81 #endif /* NULLRDC_CONF_802154_AUTOACK_HW */
//   82 #endif /* NULLRDC_802154_AUTOACK_HW */
//   83 
//   84 #if NULLRDC_802154_AUTOACK
//   85 #include "sys/rtimer.h"
//   86 #include "dev/watchdog.h"
//   87 
//   88 #ifdef NULLRDC_CONF_ACK_WAIT_TIME
//   89 #define ACK_WAIT_TIME NULLRDC_CONF_ACK_WAIT_TIME
//   90 #else /* NULLRDC_CONF_ACK_WAIT_TIME */
//   91 #define ACK_WAIT_TIME                      RTIMER_SECOND / 2500
//   92 #endif /* NULLRDC_CONF_ACK_WAIT_TIME */
//   93 #ifdef NULLRDC_CONF_AFTER_ACK_DETECTED_WAIT_TIME
//   94 #define AFTER_ACK_DETECTED_WAIT_TIME NULLRDC_CONF_AFTER_ACK_DETECTED_WAIT_TIME
//   95 #else /* NULLRDC_CONF_AFTER_ACK_DETECTED_WAIT_TIME */
//   96 #define AFTER_ACK_DETECTED_WAIT_TIME       RTIMER_SECOND / 1500
//   97 #endif /* NULLRDC_CONF_AFTER_ACK_DETECTED_WAIT_TIME */
//   98 #endif /* NULLRDC_802154_AUTOACK */
//   99 
//  100 #ifdef NULLRDC_CONF_SEND_802154_ACK
//  101 #define NULLRDC_SEND_802154_ACK NULLRDC_CONF_SEND_802154_ACK
//  102 #else /* NULLRDC_CONF_SEND_802154_ACK */
//  103 #define NULLRDC_SEND_802154_ACK 0
//  104 #endif /* NULLRDC_CONF_SEND_802154_ACK */
//  105 
//  106 #if NULLRDC_SEND_802154_ACK
//  107 #include "net/mac/frame802154.h"
//  108 #endif /* NULLRDC_SEND_802154_ACK */
//  109 
//  110 #define ACK_LEN 3
//  111 
//  112 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function send_one_packet
        THUMB
//  113 static int
//  114 send_one_packet(mac_callback_t sent, void *ptr)
//  115 {
send_one_packet:
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
        MOV      R8,R0
        MOV      R10,R1
//  116   int ret;
//  117   int last_sent_ok = 0;
        MOVS     R6,#+0
//  118 
//  119   packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &linkaddr_node_addr);
        LDR.N    R1,??DataTable6
        MOVS     R0,#+18
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
//  120 #if NULLRDC_802154_AUTOACK || NULLRDC_802154_AUTOACK_HW
//  121   packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);
        MOVS     R1,#+1
        MOVS     R0,#+11
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  122 #endif /* NULLRDC_802154_AUTOACK || NULLRDC_802154_AUTOACK_HW */
//  123 
//  124   if(NETSTACK_FRAMER.create() < 0) {
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+4]
          CFI FunCall
        BLX      R0
        CMP      R0,#+0
        IT       MI 
        MOVMI    R7,#+5
//  125     /* Failed to allocate space for headers */
//  126     PRINTF("nullrdc: send failed, too large header\n");
//  127     ret = MAC_TX_ERR_FATAL;
        BMI.N    ??send_one_packet_0
//  128   } else {
//  129 #if NULLRDC_802154_AUTOACK
//  130     int is_broadcast;
//  131     uint8_t dsn;
//  132     dsn = ((uint8_t *)packetbuf_hdrptr())[2] & 0xff;
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
        LDRB     R11,[R0, #+2]
//  133 
//  134     NETSTACK_RADIO.prepare(packetbuf_hdrptr(), packetbuf_totlen());
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        MOV      R5,R0
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
        LDR.N    R4,??DataTable6_2
        LDR      R2,[R4, #+4]
        MOV      R1,R5
          CFI FunCall
        BLX      R2
//  135 
//  136     is_broadcast = packetbuf_holds_broadcast();
          CFI FunCall packetbuf_holds_broadcast
        BL       packetbuf_holds_broadcast
//  137 
//  138     if(NETSTACK_RADIO.receiving_packet() ||
//  139        (!is_broadcast && NETSTACK_RADIO.pending_packet())) {
        LDR      R9,[R4, #+24]
        MOV      R5,R0
          CFI FunCall
        BLX      R9
        CMP      R0,#+0
        BNE.N    ??send_one_packet_1
        CBNZ.N   R5,??send_one_packet_2
        LDR      R0,[R4, #+28]
          CFI FunCall
        BLX      R0
        CMP      R0,#+0
        BNE.N    ??send_one_packet_1
//  140 
//  141       /* Currently receiving a packet over air or the radio has
//  142          already received a packet that needs to be read before
//  143          sending with auto ack. */
//  144       ret = MAC_TX_COLLISION;
//  145     } else {
//  146       if(!is_broadcast) {
//  147         RIMESTATS_ADD(reliabletx);
//  148       }
//  149 
//  150       switch(NETSTACK_RADIO.transmit(packetbuf_totlen())) {
??send_one_packet_2:
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        LDR      R1,[R4, #+8]
          CFI FunCall
        BLX      R1
        CBZ.N    R0,??send_one_packet_3
        CMP      R0,#+2
        BEQ.N    ??send_one_packet_1
        B.N      ??send_one_packet_4
//  151       case RADIO_TX_OK:
//  152         if(is_broadcast) {
??send_one_packet_3:
        CBNZ.N   R5,??send_one_packet_5
//  153           ret = MAC_TX_OK;
//  154         } else {
//  155           rtimer_clock_t wt;
//  156 
//  157           /* Check for ack */
//  158           wt = RTIMER_NOW();
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        MOV      R5,R0
//  159           watchdog_periodic();
          CFI FunCall watchdog_periodic
        BL       watchdog_periodic
//  160           while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + ACK_WAIT_TIME)) {
??send_one_packet_6:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        SUBS     R0,R0,R5
        SUBS     R0,R0,#+4
        BMI.N    ??send_one_packet_6
//  161 #if CONTIKI_TARGET_COOJA
//  162             simProcessRunValue = 1;
//  163             cooja_mt_yield();
//  164 #endif /* CONTIKI_TARGET_COOJA */
//  165           }
//  166 
//  167           ret = MAC_TX_NOACK;
        MOVS     R7,#+2
//  168           if(NETSTACK_RADIO.receiving_packet() ||
//  169              NETSTACK_RADIO.pending_packet() ||
//  170              NETSTACK_RADIO.channel_clear() == 0) {
          CFI FunCall
        BLX      R9
        CBNZ.N   R0,??send_one_packet_7
        LDR      R0,[R4, #+28]
          CFI FunCall
        BLX      R0
        CBNZ.N   R0,??send_one_packet_7
        LDR      R0,[R4, #+20]
          CFI FunCall
        BLX      R0
        CBNZ.N   R0,??send_one_packet_0
//  171             int len;
//  172             uint8_t ackbuf[ACK_LEN];
//  173 
//  174             if(AFTER_ACK_DETECTED_WAIT_TIME > 0) {
//  175               wt = RTIMER_NOW();
??send_one_packet_7:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        MOV      R5,R0
//  176               watchdog_periodic();
          CFI FunCall watchdog_periodic
        BL       watchdog_periodic
//  177               while(RTIMER_CLOCK_LT(RTIMER_NOW(),
//  178                                     wt + AFTER_ACK_DETECTED_WAIT_TIME)) {
??send_one_packet_8:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        SUBS     R0,R0,R5
        SUBS     R0,R0,#+6
        BMI.N    ??send_one_packet_8
//  179       #if CONTIKI_TARGET_COOJA
//  180                   simProcessRunValue = 1;
//  181                   cooja_mt_yield();
//  182       #endif /* CONTIKI_TARGET_COOJA */
//  183               }
//  184             }
//  185 
//  186             if(NETSTACK_RADIO.pending_packet()) {
        LDR      R0,[R4, #+28]
          CFI FunCall
        BLX      R0
        CBZ.N    R0,??send_one_packet_0
//  187               len = NETSTACK_RADIO.read(ackbuf, ACK_LEN);
//  188               if(len == ACK_LEN && ackbuf[2] == dsn) {
        LDR      R2,[R4, #+16]
        MOVS     R1,#+3
        ADD      R0,SP,#+0
          CFI FunCall
        BLX      R2
        CMP      R0,#+3
        ITT      EQ 
        LDRBEQ   R0,[SP, #+2]
        CMPEQ    R0,R11
        BNE.N    ??send_one_packet_1
//  189                 /* Ack received */
//  190                 RIMESTATS_ADD(ackrx);
//  191                 ret = MAC_TX_OK;
??send_one_packet_5:
        MOVS     R7,#+0
//  192               } else {
//  193                 /* Not an ack or ack not for us: collision */
//  194                 ret = MAC_TX_COLLISION;
//  195               }
//  196             }
//  197           } else {
//  198 	    PRINTF("nullrdc tx noack\n");
//  199 	  }
//  200         }
//  201         break;
//  202       case RADIO_TX_COLLISION:
//  203         ret = MAC_TX_COLLISION;
//  204         break;
//  205       default:
//  206         ret = MAC_TX_ERR;
//  207         break;
//  208       }
//  209     }
//  210 
//  211 #else /* ! NULLRDC_802154_AUTOACK */
//  212 
//  213     switch(NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen())) {
//  214     case RADIO_TX_OK:
//  215       ret = MAC_TX_OK;
//  216       break;
//  217     case RADIO_TX_COLLISION:
//  218       ret = MAC_TX_COLLISION;
//  219       break;
//  220     case RADIO_TX_NOACK:
//  221       ret = MAC_TX_NOACK;
//  222       break;
//  223     default:
//  224       ret = MAC_TX_ERR;
//  225       break;
//  226     }
//  227 
//  228 #endif /* ! NULLRDC_802154_AUTOACK */
//  229   }
//  230   if(ret == MAC_TX_OK) {
//  231     last_sent_ok = 1;
        MOVS     R6,#+1
        B.N      ??send_one_packet_0
//  232   }
??send_one_packet_1:
        MOVS     R7,#+1
        B.N      ??send_one_packet_0
??send_one_packet_4:
        MOVS     R7,#+4
//  233   mac_call_sent_callback(sent, ptr, ret, 1);
??send_one_packet_0:
        MOVS     R3,#+1
        MOV      R2,R7
        MOV      R1,R10
        MOV      R0,R8
          CFI FunCall mac_call_sent_callback
        BL       mac_call_sent_callback
//  234   return last_sent_ok;
        MOV      R0,R6
        POP      {R1,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock0
//  235 }
//  236 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function send_packet
          CFI FunCall send_one_packet
        THUMB
//  237 static void
//  238 send_packet(mac_callback_t sent, void *ptr)
//  239 {
//  240   send_one_packet(sent, ptr);
send_packet:
        B.N      send_one_packet
          CFI EndBlock cfiBlock1
//  241 }
//  242 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function send_list
        THUMB
//  243 static void
//  244 send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
//  245 {
send_list:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
        B.N      ??send_list_0
//  246   while(buf_list != NULL) {
//  247     /* We backup the next pointer, as it may be nullified by
//  248      * mac_call_sent_callback() */
//  249     struct rdc_buf_list *next = buf_list->next;
//  250     int last_sent_ok;
//  251 
//  252     queuebuf_to_packetbuf(buf_list->buf);
//  253     last_sent_ok = send_one_packet(sent, ptr);
//  254 
//  255     /* If packet transmission was not successful, we should back off and let
//  256      * upper layers retransmit, rather than potentially sending out-of-order
//  257      * packet fragments. */
//  258     if(!last_sent_ok) {
//  259       return;
//  260     }
//  261     buf_list = next;
??send_list_1:
        MOV      R2,R6
??send_list_0:
        CBZ.N    R2,??send_list_2
        LDR      R6,[R2, #+0]
        LDR      R0,[R2, #+4]
          CFI FunCall queuebuf_to_packetbuf
        BL       queuebuf_to_packetbuf
        MOV      R1,R5
        MOV      R0,R4
          CFI FunCall send_one_packet
        BL       send_one_packet
        CMP      R0,#+0
        BNE.N    ??send_list_1
//  262   }
//  263 }
??send_list_2:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//  264 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function packet_input
        THUMB
//  265 static void
//  266 packet_input(void)
//  267 {
packet_input:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+68
          CFI CFA R13+88
//  268 #if NULLRDC_SEND_802154_ACK
//  269   int original_datalen;
//  270   uint8_t *original_dataptr;
//  271 
//  272   original_datalen = packetbuf_datalen();
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        MOV      R5,R0
//  273   original_dataptr = packetbuf_dataptr();
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        MOV      R6,R0
//  274 #endif
//  275 
//  276 #if NULLRDC_802154_AUTOACK
//  277   if(packetbuf_datalen() == ACK_LEN) {
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        CMP      R0,#+3
        BEQ.N    ??packet_input_0
//  278     /* Ignore ack packets */
//  279     PRINTF("nullrdc: ignored ack\n"); 
//  280   } else
//  281 #endif /* NULLRDC_802154_AUTOACK */
//  282   if(NETSTACK_FRAMER.parse() < 0) {
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+12]
          CFI FunCall
        BLX      R0
        CMP      R0,#+0
        BMI.N    ??packet_input_0
//  283     PRINTF("nullrdc: failed to parse %u\n", packetbuf_datalen());
//  284 #if NULLRDC_ADDRESS_FILTER
//  285   } else if(!linkaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
//  286                                          &linkaddr_node_addr) &&
//  287             !packetbuf_holds_broadcast()) {
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        LDR.N    R7,??DataTable6
        MOV      R1,R7
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CBNZ.N   R0,??packet_input_1
          CFI FunCall packetbuf_holds_broadcast
        BL       packetbuf_holds_broadcast
        CBZ.N    R0,??packet_input_0
//  288     PRINTF("nullrdc: not for us\n");
//  289 #endif /* NULLRDC_ADDRESS_FILTER */
//  290   } else {
//  291     int duplicate = 0;
//  292 
//  293 #if NULLRDC_802154_AUTOACK || NULLRDC_802154_AUTOACK_HW
//  294 #if RDC_WITH_DUPLICATE_DETECTION
//  295     /* Check for duplicate packet. */
//  296     duplicate = mac_sequence_is_duplicate();
??packet_input_1:
          CFI FunCall mac_sequence_is_duplicate
        BL       mac_sequence_is_duplicate
        MOVS     R4,R0
//  297     if(duplicate) {
        IT       EQ 
        BLEQ     mac_sequence_register_seqno
//  298       /* Drop the packet. */
//  299       PRINTF("nullrdc: drop duplicate link layer packet %u\n",
//  300              packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO));
//  301     } else {
//  302       mac_sequence_register_seqno();
//  303     }
//  304 #endif /* RDC_WITH_DUPLICATE_DETECTION */
//  305 #endif /* NULLRDC_802154_AUTOACK */
//  306  
//  307 #if NULLRDC_SEND_802154_ACK
//  308     {
//  309       frame802154_t info154;
//  310       frame802154_parse(original_dataptr, original_datalen, &info154);
        ADD      R2,SP,#+4
        MOV      R1,R5
        MOV      R0,R6
          CFI FunCall frame802154_parse
        BL       frame802154_parse
//  311       if(info154.fcf.frame_type == FRAME802154_DATAFRAME &&
//  312          info154.fcf.ack_required != 0 &&
//  313          linkaddr_cmp((linkaddr_t *)&info154.dest_addr,
//  314                       &linkaddr_node_addr)) {
        LDRB     R0,[SP, #+20]
        CMP      R0,#+1
        BNE.N    ??packet_input_2
        LDRB     R0,[SP, #+23]
        CBZ.N    R0,??packet_input_2
        MOV      R1,R7
        ADD      R0,SP,#+4
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CBZ.N    R0,??packet_input_2
//  315         uint8_t ackdata[ACK_LEN] = {0, 0, 0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  316 
//  317         ackdata[0] = FRAME802154_ACKFRAME;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
//  318         ackdata[1] = 0;
        ADD      R0,SP,#+0
//  319         ackdata[2] = info154.seq;
//  320         NETSTACK_RADIO.send(ackdata, ACK_LEN);
        LDR.N    R2,??DataTable6_2
        LDR      R2,[R2, #+12]
        STRB     R1,[R0, #+1]
        LDRB     R1,[SP, #+28]
        STRB     R1,[R0, #+2]
        MOVS     R1,#+3
          CFI FunCall
        BLX      R2
//  321       }
//  322     }
//  323 #endif /* NULLRDC_SEND_ACK */
//  324     if(!duplicate) {
??packet_input_2:
        CBNZ.N   R4,??packet_input_0
//  325       NETSTACK_MAC.input();
        LDR.N    R0,??DataTable6_3
        LDR      R0,[R0, #+12]
          CFI FunCall
        BLX      R0
//  326     }
//  327   }
//  328 }
??packet_input_0:
        ADD      SP,SP,#+68
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock3
//  329 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function on
          CFI NoCalls
        THUMB
//  330 static int
//  331 on(void)
//  332 {
//  333   return NETSTACK_RADIO.on();
on:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock4
//  334 }
//  335 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function off
        THUMB
//  336 static int
//  337 off(int keep_radio_on)
//  338 {
//  339   if(keep_radio_on) {
off:
        LDR.N    R1,??DataTable6_2
        CMP      R0,#+0
        ITT      NE 
//  340     return NETSTACK_RADIO.on();
        LDRNE    R0,[R1, #+32]
          CFI FunCall
        ANOTE "tailcall"
        BXNE     R0
//  341   } else {
//  342     return NETSTACK_RADIO.off();
        LDR      R0,[R1, #+36]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock5
//  343   }
//  344 }
//  345 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function channel_check_interval
          CFI NoCalls
        THUMB
//  346 static unsigned short
//  347 channel_check_interval(void)
//  348 {
//  349   return 0;
channel_check_interval:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  350 }
//  351 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function init
          CFI NoCalls
        THUMB
//  352 static void
//  353 init(void)
init:
        Nop      
          CFI EndBlock cfiBlock7
//  354 {
//  355   on();
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine0:
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+32]
          CFI FunCall on
          CFI FunCall init
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     linkaddr_node_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     framer_802154

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     nullradio_driver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     csma_driver

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "nullrdc"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 0, 0, 0, 0
//  356 }
//  357 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  358 const struct rdc_driver nullrdc_driver = {
nullrdc_driver:
        DC32 ?_0, init, send_packet, send_list, packet_input, on, off
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
//  359   "nullrdc",
//  360   init,
//  361   send_packet,
//  362   send_list,
//  363   packet_input,
//  364   on,
//  365   off,
//  366   channel_check_interval,
//  367 };
//  368 /*---------------------------------------------------------------------------*/
// 
//  44 bytes in section .rodata
// 448 bytes in section .text
// 
// 448 bytes of CODE  memory
//  44 bytes of CONST memory
//
//Errors: none
//Warnings: 1
