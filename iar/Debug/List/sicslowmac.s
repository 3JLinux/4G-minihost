///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:22
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\sicslowmac\sicslowmac.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\sicslowmac\sicslowmac.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\sicslowmac.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr4
        EXTERN csma_driver
        EXTERN frame802154_create
        EXTERN frame802154_hdrlen
        EXTERN frame802154_parse
        EXTERN linkaddr_cmp
        EXTERN linkaddr_copy
        EXTERN linkaddr_node_addr
        EXTERN nullradio_driver
        EXTERN packetbuf_addr
        EXTERN packetbuf_attr
        EXTERN packetbuf_datalen
        EXTERN packetbuf_dataptr
        EXTERN packetbuf_hdralloc
        EXTERN packetbuf_hdrptr
        EXTERN packetbuf_hdrreduce
        EXTERN packetbuf_holds_broadcast
        EXTERN packetbuf_set_addr
        EXTERN packetbuf_totlen
        EXTERN queuebuf_to_packetbuf
        EXTERN random_rand

        PUBLIC send_list
        PUBLIC sicslowmac_driver
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\sicslowmac\sicslowmac.c
//    1 /*
//    2  * Copyright (c) 2008, Swedish Institute of Computer Science.
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
//   33 
//   34 /**
//   35  * \file
//   36  *         MAC interface for packaging radio packets into 802.15.4 frames
//   37  *
//   38  * \author
//   39  *         Adam Dunkels <adam@sics.se>
//   40  *         Eric Gnoske <egnoske@gmail.com>
//   41  *         Blake Leverett <bleverett@gmail.com>
//   42  *         Niclas Finne <nfi@sics.se>
//   43  *         Joakim Eriksson <joakime@sics.se>
//   44  */
//   45 
//   46 #include <string.h>
//   47 #include "net/mac/sicslowmac/sicslowmac.h"
//   48 #include "net/mac/frame802154.h"
//   49 #include "net/packetbuf.h"
//   50 #include "net/queuebuf.h"
//   51 #include "net/netstack.h"
//   52 #include "lib/random.h"
//   53 
//   54 #define DEBUG 0
//   55 
//   56 #if DEBUG
//   57 #include <stdio.h>
//   58 #define PRINTF(...) printf(__VA_ARGS__)
//   59 #define PRINTADDR(addr) PRINTF(" %02x%02x:%02x%02x:%02x%02x:%02x%02x ", ((uint8_t *)addr)[0], ((uint8_t *)addr)[1], ((uint8_t *)addr)[2], ((uint8_t *)addr)[3], ((uint8_t *)addr)[4], ((uint8_t *)addr)[5], ((uint8_t *)addr)[6], ((uint8_t *)addr)[7])
//   60 #else
//   61 #define PRINTF(...)
//   62 #define PRINTADDR(addr)
//   63 #endif
//   64 
//   65 /**  \brief The sequence number (0x00 - 0xff) added to the transmitted
//   66  *   data or MAC command frame. The default is a random value within
//   67  *   the range.
//   68  */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   69 static uint8_t mac_dsn;
mac_dsn:
        DS8 1
//   70 
//   71 /**  \brief The 16-bit identifier of the PAN on which the device is
//   72  *   sending to.  If this value is 0xffff, the device is not
//   73  *   associated.
//   74  */

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
        DC16 43981
//   75 static uint16_t mac_dst_pan_id = IEEE802154_PANID;
//   76 
//   77 /**  \brief The 16-bit identifier of the PAN on which the device is
//   78  *   operating.  If this value is 0xffff, the device is not
//   79  *   associated.
//   80  */

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
        DC16 43981
//   81 static uint16_t mac_src_pan_id = IEEE802154_PANID;
//   82 
//   83 /*---------------------------------------------------------------------------*/
//   84 static int
//   85 is_broadcast_addr(uint8_t mode, uint8_t *addr)
//   86 {
//   87   int i = mode == FRAME802154_SHORTADDRMODE ? 2 : 8;
//   88   while(i-- > 0) {
//   89     if(addr[i] != 0xff) {
//   90       return 0;
//   91     }
//   92   }
//   93   return 1;
//   94 }
//   95 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function send_packet
        THUMB
//   96 static void
//   97 send_packet(mac_callback_t sent, void *ptr)
//   98 {
send_packet:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+64
          CFI CFA R13+80
        MOV      R4,R0
        MOV      R5,R1
//   99   frame802154_t params;
//  100   uint8_t len;
//  101 
//  102   /* init to zeros */
//  103   memset(&params, 0, sizeof(params));
        MOVS     R1,#+60
        ADD      R0,SP,#+0
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  104 
//  105   /* Build the FCF. */
//  106   params.fcf.frame_type = FRAME802154_DATAFRAME;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  107   params.fcf.security_enabled = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//  108   params.fcf.frame_pending = 0;
        STRB     R0,[SP, #+18]
//  109   params.fcf.ack_required = packetbuf_attr(PACKETBUF_ATTR_RELIABLE);
        MOVS     R0,#+13
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRB     R0,[SP, #+19]
//  110   params.fcf.panid_compression = 0;
//  111 
//  112   /* Insert IEEE 802.15.4 (2003) version bit. */
//  113   params.fcf.frame_version = FRAME802154_IEEE802154_2003;
//  114 
//  115   /* Increment and set the data sequence number. */
//  116   params.seq = mac_dsn++;
//  117 
//  118   /* Complete the addressing fields. */
//  119   /**
//  120      \todo For phase 1 the addresses are all long. We'll need a mechanism
//  121      in the rime attributes to tell the mac to use long or short for phase 2.
//  122   */
//  123   params.fcf.src_addr_mode = FRAME802154_LONGADDRMODE;
//  124   params.dest_pid = mac_dst_pan_id;
        MOVW     R6,#+43981
        MOVS     R0,#+0
        STRB     R0,[SP, #+20]
        STRB     R0,[SP, #+22]
        STRH     R6,[SP, #+26]
        LDR.N    R0,??DataTable6
        LDRB     R1,[R0, #+0]
        STRB     R1,[SP, #+24]
        ADDS     R1,R1,#+1
        STRB     R1,[R0, #+0]
        MOVS     R0,#+3
        STRB     R0,[SP, #+23]
//  125 
//  126   if(packetbuf_holds_broadcast()) {
          CFI FunCall packetbuf_holds_broadcast
        BL       packetbuf_holds_broadcast
        CBZ.N    R0,??send_packet_0
//  127     /* Broadcast requires short address mode. */
//  128     params.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
        MOVS     R0,#+2
        STRB     R0,[SP, #+21]
//  129     params.dest_addr[0] = 0xFF;
        MOVS     R0,#+255
        STRB     R0,[SP, #+0]
//  130     params.dest_addr[1] = 0xFF;
        STRB     R0,[SP, #+1]
        B.N      ??send_packet_1
//  131 
//  132   } else {
//  133     linkaddr_copy((linkaddr_t *)&params.dest_addr,
//  134                   packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
??send_packet_0:
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R0
        ADD      R0,SP,#+0
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  135     params.fcf.dest_addr_mode = FRAME802154_LONGADDRMODE;
        MOVS     R0,#+3
        STRB     R0,[SP, #+21]
//  136   }
//  137 
//  138   /* Set the source PAN ID to the global variable. */
//  139   params.src_pid = mac_src_pan_id;
??send_packet_1:
        STRH     R6,[SP, #+28]
//  140 
//  141   /*
//  142    * Set up the source address using only the long address mode for
//  143    * phase 1.
//  144    */
//  145 #if NETSTACK_CONF_BRIDGE_MODE
//  146   linkaddr_copy((linkaddr_t *)&params.src_addr,packetbuf_addr(PACKETBUF_ADDR_SENDER));
//  147 #else
//  148   linkaddr_copy((linkaddr_t *)&params.src_addr, &linkaddr_node_addr);
        ADD      R0,SP,#+8
        LDR.N    R1,??DataTable6_1
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  149 #endif
//  150 
//  151   params.payload = packetbuf_dataptr();
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        STR      R0,[SP, #+52]
//  152   params.payload_len = packetbuf_datalen();
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        STR      R0,[SP, #+56]
//  153   len = frame802154_hdrlen(&params);
        ADD      R0,SP,#+0
          CFI FunCall frame802154_hdrlen
        BL       frame802154_hdrlen
//  154   if(packetbuf_hdralloc(len)) {
        UXTB     R0,R0
          CFI FunCall packetbuf_hdralloc
        BL       packetbuf_hdralloc
        CBZ.N    R0,??send_packet_2
//  155     int ret;
//  156     frame802154_create(&params, packetbuf_hdrptr());
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
        MOV      R1,R0
        ADD      R0,SP,#+0
          CFI FunCall frame802154_create
        BL       frame802154_create
//  157 
//  158     PRINTF("6MAC-UT: %2X", params.fcf.frame_type);
//  159     PRINTADDR(params.dest_addr);
//  160     PRINTF("%u %u (%u)\n", len, packetbuf_datalen(), packetbuf_totlen());
//  161 
//  162     ret = NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen());
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        MOV      R6,R0
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
        LDR.N    R2,??DataTable6_2
        LDR      R2,[R2, #+12]
        MOV      R1,R6
          CFI FunCall
        BLX      R2
//  163     if(sent) {
        MOVS     R1,R4
        BEQ.N    ??send_packet_2
//  164       switch(ret) {
        CBZ.N    R0,??send_packet_3
        CMP      R0,#+1
        BEQ.N    ??send_packet_4
//  165       case RADIO_TX_OK:
//  166         sent(ptr, MAC_TX_OK, 1);
//  167         break;
//  168       case RADIO_TX_ERR:
//  169         sent(ptr, MAC_TX_ERR, 1);
//  170         break;
//  171       }
//  172     }
//  173   } else {
//  174     PRINTF("6MAC-UT: too large header: %u\n", len);
//  175   }
//  176 }
        ADD      SP,SP,#+64
          CFI CFA R13+16
        POP      {R4-R6,PC}
          CFI CFA R13+80
??send_packet_3:
        MOVS     R2,#+1
        MOVS     R1,#+0
        B.N      ??send_packet_5
??send_packet_4:
        MOVS     R2,#+1
        MOVS     R1,#+4
??send_packet_5:
        MOV      R0,R5
          CFI FunCall
        BLX      R4
??send_packet_2:
        ADD      SP,SP,#+64
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//  177 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function send_list
        THUMB
//  178 void
//  179 send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
//  180 {
send_list:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  181   if(buf_list != NULL) {
        CBZ.N    R2,??send_list_0
//  182     queuebuf_to_packetbuf(buf_list->buf);
        LDR      R0,[R2, #+4]
          CFI FunCall queuebuf_to_packetbuf
        BL       queuebuf_to_packetbuf
//  183     send_packet(sent, ptr);
        MOV      R1,R5
        MOV      R0,R4
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall send_packet
        B.N      send_packet
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  184   }
//  185 }
??send_list_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//  186 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function input_packet
        THUMB
//  187 static void
//  188 input_packet(void)
//  189 {
input_packet:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+64
          CFI CFA R13+72
//  190   frame802154_t frame;
//  191   int len;
//  192 
//  193   len = packetbuf_datalen();
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        MOV      R4,R0
//  194 
//  195   if(frame802154_parse(packetbuf_dataptr(), len, &frame) &&
//  196      packetbuf_hdrreduce(len - frame.payload_len)) {
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        ADD      R2,SP,#+0
        MOV      R1,R4
          CFI FunCall frame802154_parse
        BL       frame802154_parse
        CBZ.N    R0,??input_packet_0
        LDR      R0,[SP, #+56]
        SUBS     R0,R4,R0
          CFI FunCall packetbuf_hdrreduce
        BL       packetbuf_hdrreduce
        CBZ.N    R0,??input_packet_0
//  197     if(frame.fcf.dest_addr_mode) {
        LDRB     R0,[SP, #+21]
        CBZ.N    R0,??input_packet_1
//  198       if(frame.dest_pid != mac_src_pan_id &&
//  199          frame.dest_pid != FRAME802154_BROADCASTPANDID) {
        LDRH     R1,[SP, #+26]
        MOVW     R2,#+43981
        CMP      R1,R2
        ITT      NE 
        MOVWNE   R2,#+65535
        CMPNE    R1,R2
        BNE.N    ??input_packet_0
//  200         /* Not broadcast or for our PAN */
//  201         PRINTF("6MAC: for another pan %u\n", frame.dest_pid);
//  202         return;
//  203       }
//  204       if(!is_broadcast_addr(frame.fcf.dest_addr_mode, frame.dest_addr)) {
        CMP      R0,#+2
        IT       NE 
        MOVNE    R0,#+8
??input_packet_2:
        SUBS     R0,R0,#+1
        ADD      R1,SP,#+0
        LDRB     R1,[R0, R1]
        CMP      R1,#+255
        BNE.N    ??input_packet_3
        CMP      R0,#+1
        BGE.N    ??input_packet_2
//  205         packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, (linkaddr_t *)&frame.dest_addr);
//  206 #if !NETSTACK_CONF_BRIDGE_MODE
//  207         if(!linkaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
//  208                          &linkaddr_node_addr)) {
//  209           /* Not for this node */
//  210           PRINTF("6MAC: not for us\n");
//  211           return;
//  212         }
//  213 #endif
//  214       }
//  215     }
//  216     packetbuf_set_addr(PACKETBUF_ADDR_SENDER, (linkaddr_t *)&frame.src_addr);
??input_packet_1:
        ADD      R1,SP,#+8
        MOVS     R0,#+18
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
//  217 
//  218     PRINTF("6MAC-IN: %2X", frame.fcf.frame_type);
//  219     PRINTADDR(packetbuf_addr(PACKETBUF_ADDR_SENDER));
//  220     PRINTADDR(packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
//  221     PRINTF("%u\n", packetbuf_datalen());
//  222     NETSTACK_MAC.input();
        LDR.N    R0,??DataTable6_3
        LDR      R0,[R0, #+12]
          CFI FunCall
        BLX      R0
//  223   } else {
//  224     PRINTF("6MAC: failed to parse hdr\n");
//  225   }
//  226 }
??input_packet_0:
        ADD      SP,SP,#+64
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI CFA R13+72
??input_packet_3:
        ADD      R1,SP,#+0
        MOVS     R0,#+19
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        LDR.N    R1,??DataTable6_1
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CMP      R0,#+0
        BNE.N    ??input_packet_1
        ADD      SP,SP,#+64
          CFI CFA R13+8
        POP      {R4,PC}
          CFI EndBlock cfiBlock2
//  227 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function on
        THUMB
//  228 static int
//  229 on(void)
//  230 {
//  231   return NETSTACK_RADIO.on();
on:
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+32]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock3
//  232 }
//  233 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function off
        THUMB
//  234 static int
//  235 off(int keep_radio_on)
//  236 {
//  237   if(keep_radio_on) {
off:
        LDR.N    R1,??DataTable6_2
        CMP      R0,#+0
        ITT      NE 
//  238     return NETSTACK_RADIO.on();
        LDRNE    R0,[R1, #+32]
          CFI FunCall
        ANOTE "tailcall"
        BXNE     R0
//  239   } else {
//  240     return NETSTACK_RADIO.off();
        LDR      R0,[R1, #+36]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock4
//  241   }
//  242 }
//  243 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function init
        THUMB
//  244 static void
//  245 init(void)
//  246 {
init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  247   mac_dsn = random_rand() % 256;
          CFI FunCall random_rand
        BL       random_rand
        LDR.N    R1,??DataTable6
        STRB     R0,[R1, #+0]
//  248 
//  249   NETSTACK_RADIO.on();
        LDR.N    R0,??DataTable6_2
        LDR      R0,[R0, #+32]
        POP      {R1,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock5
//  250 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     mac_dsn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     linkaddr_node_addr

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
//  251 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function channel_check_interval
          CFI NoCalls
        THUMB
//  252 static unsigned short
//  253 channel_check_interval(void)
//  254 {
//  255   return 0;
channel_check_interval:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  256 }

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "sicslowmac"
        DC8 0
//  257 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  258 const struct rdc_driver sicslowmac_driver = {
sicslowmac_driver:
        DC32 ?_0, init, send_packet, send_list, input_packet, on, off
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
//  259   "sicslowmac",
//  260   init,
//  261   send_packet,
//  262   send_list,
//  263   input_packet,
//  264   on,
//  265   off,
//  266   channel_check_interval
//  267 };
//  268 /*---------------------------------------------------------------------------*/
// 
//   1 byte  in section .bss
//   4 bytes in section .data
//  44 bytes in section .rodata
// 434 bytes in section .text
// 
// 434 bytes of CODE  memory
//  44 bytes of CONST memory
//   5 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
