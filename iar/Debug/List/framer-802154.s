///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:48
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\framer-802154.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\framer-802154.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\framer-802154.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr4
        EXTERN frame802154_create
        EXTERN frame802154_hdrlen
        EXTERN frame802154_parse
        EXTERN framer_canonical_create_and_secure
        EXTERN linkaddr_copy
        EXTERN linkaddr_node_addr
        EXTERN packetbuf_addr
        EXTERN packetbuf_attr
        EXTERN packetbuf_datalen
        EXTERN packetbuf_dataptr
        EXTERN packetbuf_hdralloc
        EXTERN packetbuf_hdrptr
        EXTERN packetbuf_hdrreduce
        EXTERN packetbuf_holds_broadcast
        EXTERN packetbuf_set_addr
        EXTERN packetbuf_set_attr
        EXTERN random_rand

        PUBLIC framer_802154
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\framer-802154.c
//    1 /*
//    2  * Copyright (c) 2009, Swedish Institute of Computer Science.
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
//   29  */
//   30 
//   31 /**
//   32  * \file
//   33  *         MAC framer for IEEE 802.15.4
//   34  * \author
//   35  *         Niclas Finne <nfi@sics.se>
//   36  *         Joakim Eriksson <joakime@sics.se>
//   37  */
//   38 
//   39 #include "net/mac/framer-802154.h"
//   40 #include "net/mac/frame802154.h"
//   41 #include "net/llsec/llsec802154.h"
//   42 #include "net/packetbuf.h"
//   43 #include "lib/random.h"
//   44 #include <string.h>
//   45 
//   46 #define DEBUG 0
//   47 
//   48 #if DEBUG
//   49 #include <stdio.h>
//   50 #define PRINTF(...) printf(__VA_ARGS__)
//   51 #define PRINTADDR(addr) PRINTF(" %02x%02x:%02x%02x:%02x%02x:%02x%02x ", ((uint8_t *)addr)[0], ((uint8_t *)addr)[1], ((uint8_t *)addr)[2], ((uint8_t *)addr)[3], ((uint8_t *)addr)[4], ((uint8_t *)addr)[5], ((uint8_t *)addr)[6], ((uint8_t *)addr)[7])
//   52 #else
//   53 #define PRINTF(...)
//   54 #define PRINTADDR(addr)
//   55 #endif
//   56 
//   57 /**  \brief The sequence number (0x00 - 0xff) added to the transmitted
//   58  *   data or MAC command frame. The default is a random value within
//   59  *   the range.
//   60  */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   61 static uint8_t mac_dsn;
mac_dsn:
        DS8 1
        DS8 1
//   62 
//   63 static uint8_t initialized = 0;
//   64 
//   65 /**  \brief The 16-bit identifier of the PAN on which the device is
//   66  *   sending to.  If this value is 0xffff, the device is not
//   67  *   associated.
//   68  */
//   69 static const uint16_t mac_dst_pan_id = IEEE802154_PANID;
//   70 
//   71 /**  \brief The 16-bit identifier of the PAN on which the device is
//   72  *   operating.  If this value is 0xffff, the device is not
//   73  *   associated.
//   74  */
//   75 static const uint16_t mac_src_pan_id = IEEE802154_PANID;
//   76 
//   77 /*---------------------------------------------------------------------------*/
//   78 static int
//   79 is_broadcast_addr(uint8_t mode, uint8_t *addr)
//   80 {
//   81   int i = mode == FRAME802154_SHORTADDRMODE ? 2 : 8;
//   82   while(i-- > 0) {
//   83     if(addr[i] != 0xff) {
//   84       return 0;
//   85     }
//   86   }
//   87   return 1;
//   88 }
//   89 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function create_frame
        THUMB
//   90 static int
//   91 create_frame(int type, int do_create)
//   92 {
create_frame:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+60
          CFI CFA R13+72
        MOV      R4,R1
//   93   frame802154_t params;
//   94   int hdr_len;
//   95 
//   96   /* init to zeros */
//   97   memset(&params, 0, sizeof(params));
        MOVS     R1,#+60
        ADD      R0,SP,#+0
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//   98 
//   99   if(!initialized) {
        LDR.N    R5,??DataTable1
        LDRB     R0,[R5, #+1]
        CBNZ.N   R0,??create_frame_0
//  100     initialized = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+1]
//  101     mac_dsn = random_rand() & 0xff;
          CFI FunCall random_rand
        BL       random_rand
        STRB     R0,[R5, #+0]
//  102   }
//  103 
//  104   /* Build the FCF. */
//  105   params.fcf.frame_type = packetbuf_attr(PACKETBUF_ATTR_FRAME_TYPE);
??create_frame_0:
        MOVS     R0,#+17
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRB     R0,[SP, #+16]
//  106   params.fcf.frame_pending = packetbuf_attr(PACKETBUF_ATTR_PENDING);
        MOVS     R0,#+16
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRB     R0,[SP, #+18]
//  107   if(packetbuf_holds_broadcast()) {
          CFI FunCall packetbuf_holds_broadcast
        BL       packetbuf_holds_broadcast
        CMP      R0,#+0
        ITEE     NE 
        MOVNE    R0,#+0
        MOVEQ    R0,#+11
        BLEQ     packetbuf_attr
//  108     params.fcf.ack_required = 0;
//  109   } else {
//  110     params.fcf.ack_required = packetbuf_attr(PACKETBUF_ATTR_MAC_ACK);
        STRB     R0,[SP, #+19]
//  111   }
//  112   params.fcf.panid_compression = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+20]
//  113 
//  114   /* Insert IEEE 802.15.4 (2006) version bits. */
//  115   params.fcf.frame_version = FRAME802154_IEEE802154_2006;
        MOVS     R0,#+1
        STRB     R0,[SP, #+22]
//  116   
//  117 #if LLSEC802154_SECURITY_LEVEL
//  118   if(packetbuf_attr(PACKETBUF_ATTR_SECURITY_LEVEL)) {
//  119     params.fcf.security_enabled = 1;
//  120   }
//  121   /* Setting security-related attributes */
//  122   params.aux_hdr.security_control.security_level = packetbuf_attr(PACKETBUF_ATTR_SECURITY_LEVEL);
//  123   params.aux_hdr.frame_counter.u16[0] = packetbuf_attr(PACKETBUF_ATTR_FRAME_COUNTER_BYTES_0_1);
//  124   params.aux_hdr.frame_counter.u16[1] = packetbuf_attr(PACKETBUF_ATTR_FRAME_COUNTER_BYTES_2_3);
//  125 #if LLSEC802154_USES_EXPLICIT_KEYS
//  126   params.aux_hdr.security_control.key_id_mode = packetbuf_attr(PACKETBUF_ATTR_KEY_ID_MODE);
//  127   params.aux_hdr.key_index = packetbuf_attr(PACKETBUF_ATTR_KEY_INDEX);
//  128   params.aux_hdr.key_source.u16[0] = packetbuf_attr(PACKETBUF_ATTR_KEY_SOURCE_BYTES_0_1);
//  129 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  130 #endif /* LLSEC802154_SECURITY_LEVEL */
//  131 
//  132   /* Increment and set the data sequence number. */
//  133   if(!do_create) {
        CBZ.N    R4,??create_frame_1
//  134     /* Only length calculation - no sequence number is needed and
//  135        should not be consumed. */
//  136 
//  137   } else if(packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO)) {
        MOVS     R0,#+10
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        CBZ.N    R0,??create_frame_2
//  138     params.seq = packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO);
        MOVS     R0,#+10
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRB     R0,[SP, #+24]
        B.N      ??create_frame_1
//  139 
//  140   } else {
//  141     /* Ensure that the sequence number 0 is not used as it would bypass the above check. */
//  142     if(mac_dsn == 0) {
??create_frame_2:
        LDRB     R0,[R5, #+0]
        CBNZ.N   R0,??create_frame_3
//  143       mac_dsn++;
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
//  144     }
//  145     params.seq = mac_dsn++;
??create_frame_3:
        LDRB     R0,[R5, #+0]
        STRB     R0,[SP, #+24]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+0]
//  146     packetbuf_set_attr(PACKETBUF_ATTR_MAC_SEQNO, params.seq);
        MOVS     R0,#+10
        LDRB     R1,[SP, #+24]
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  147   }
//  148 
//  149   /* Complete the addressing fields. */
//  150   /**
//  151      \todo For phase 1 the addresses are all long. We'll need a mechanism
//  152      in the rime attributes to tell the mac to use long or short for phase 2.
//  153   */
//  154   if(LINKADDR_SIZE == 2) {
//  155     /* Use short address mode if linkaddr size is short. */
//  156     params.fcf.src_addr_mode = FRAME802154_SHORTADDRMODE;
//  157   } else {
//  158     params.fcf.src_addr_mode = FRAME802154_LONGADDRMODE;
??create_frame_1:
        MOVS     R0,#+3
//  159   }
//  160   params.dest_pid = mac_dst_pan_id;
        MOVW     R5,#+43981
        STRB     R0,[SP, #+23]
        STRH     R5,[SP, #+26]
//  161 
//  162   if(packetbuf_holds_broadcast()) {
          CFI FunCall packetbuf_holds_broadcast
        BL       packetbuf_holds_broadcast
        CBZ.N    R0,??create_frame_4
//  163     /* Broadcast requires short address mode. */
//  164     params.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
        MOVS     R0,#+2
        STRB     R0,[SP, #+21]
//  165     params.dest_addr[0] = 0xFF;
        MOVS     R0,#+255
        STRB     R0,[SP, #+0]
//  166     params.dest_addr[1] = 0xFF;
        STRB     R0,[SP, #+1]
        B.N      ??create_frame_5
//  167 
//  168   } else {
//  169     linkaddr_copy((linkaddr_t *)&params.dest_addr,
//  170                   packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
??create_frame_4:
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R0
        ADD      R0,SP,#+0
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  171     /* Use short address mode if linkaddr size is small */
//  172     if(LINKADDR_SIZE == 2) {
//  173       params.fcf.dest_addr_mode = FRAME802154_SHORTADDRMODE;
//  174     } else {
//  175       params.fcf.dest_addr_mode = FRAME802154_LONGADDRMODE;
        MOVS     R0,#+3
        STRB     R0,[SP, #+21]
//  176     }
//  177   }
//  178 
//  179   /* Set the source PAN ID to the global variable. */
//  180   params.src_pid = mac_src_pan_id;
??create_frame_5:
        STRH     R5,[SP, #+28]
//  181 
//  182   /*
//  183    * Set up the source address using only the long address mode for
//  184    * phase 1.
//  185    */
//  186   linkaddr_copy((linkaddr_t *)&params.src_addr, &linkaddr_node_addr);
        ADD      R0,SP,#+8
        LDR.N    R1,??DataTable1_1
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  187 
//  188   params.payload = packetbuf_dataptr();
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        STR      R0,[SP, #+52]
//  189   params.payload_len = packetbuf_datalen();
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        STR      R0,[SP, #+56]
//  190   hdr_len = frame802154_hdrlen(&params);
        ADD      R0,SP,#+0
          CFI FunCall frame802154_hdrlen
        BL       frame802154_hdrlen
        MOV      R5,R0
//  191   if(!do_create) {
        CBZ.N    R4,??create_frame_6
//  192     /* Only calculate header length */
//  193     return hdr_len;
//  194 
//  195   } else if(packetbuf_hdralloc(hdr_len)) {
          CFI FunCall packetbuf_hdralloc
        BL       packetbuf_hdralloc
        CBZ.N    R0,??create_frame_7
//  196     frame802154_create(&params, packetbuf_hdrptr());
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
        MOV      R1,R0
        ADD      R0,SP,#+0
          CFI FunCall frame802154_create
        BL       frame802154_create
//  197 
//  198     PRINTF("15.4-OUT: %2X", params.fcf.frame_type);
//  199     PRINTADDR(params.dest_addr);
//  200     PRINTF("%d %u (%u)\n", hdr_len, packetbuf_datalen(), packetbuf_totlen());
//  201 
//  202     return hdr_len;
        MOV      R0,R5
        ADD      SP,SP,#+60
          CFI CFA R13+12
        POP      {R4,R5,PC}
          CFI CFA R13+72
//  203   } else {
//  204     PRINTF("15.4-OUT: too large header: %u\n", hdr_len);
//  205     return FRAMER_FAILED;
??create_frame_7:
        MOV      R0,#-1
??create_frame_6:
        ADD      SP,SP,#+60
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock0
//  206   }
//  207 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     mac_dsn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     linkaddr_node_addr
//  208 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function hdr_length
          CFI NoCalls
        THUMB
//  209 static int
//  210 hdr_length(void)
//  211 {
//  212   return create_frame(FRAME802154_DATAFRAME, 0);
hdr_length:
        MOVS     R1,#+0
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock1
//  213 }
//  214 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function create
          CFI NoCalls
        THUMB
//  215 static int
//  216 create(void)
//  217 {
//  218   return create_frame(FRAME802154_DATAFRAME, 1);
create:
        MOVS     R1,#+1
          CFI EndBlock cfiBlock2
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  219 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine0:
        MOVS     R0,#+1
          CFI FunCall hdr_length create_frame
          CFI FunCall create create_frame
        B.N      create_frame
          CFI EndBlock cfiBlock3
//  220 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function parse
        THUMB
//  221 static int
//  222 parse(void)
//  223 {
parse:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+64
          CFI CFA R13+72
//  224   frame802154_t frame;
//  225   int hdr_len;
//  226   
//  227   hdr_len = frame802154_parse(packetbuf_dataptr(), packetbuf_datalen(), &frame);
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        MOV      R4,R0
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        ADD      R2,SP,#+0
        MOV      R1,R4
          CFI FunCall frame802154_parse
        BL       frame802154_parse
        MOVS     R4,R0
//  228   
//  229   if(hdr_len && packetbuf_hdrreduce(hdr_len)) {
        BEQ.N    ??parse_0
          CFI FunCall packetbuf_hdrreduce
        BL       packetbuf_hdrreduce
        CBZ.N    R0,??parse_0
//  230     packetbuf_set_attr(PACKETBUF_ATTR_FRAME_TYPE, frame.fcf.frame_type);
        LDRB     R1,[SP, #+16]
        MOVS     R0,#+17
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  231     
//  232     if(frame.fcf.dest_addr_mode) {
        LDRB     R0,[SP, #+21]
        CBZ.N    R0,??parse_1
//  233       if(frame.dest_pid != mac_src_pan_id &&
//  234           frame.dest_pid != FRAME802154_BROADCASTPANDID) {
        LDRH     R1,[SP, #+26]
        MOVW     R2,#+43981
        CMP      R1,R2
        ITT      NE 
        MOVWNE   R2,#+65535
        CMPNE    R1,R2
        BNE.N    ??parse_0
//  235         /* Packet to another PAN */
//  236         PRINTF("15.4: for another pan %u\n", frame.dest_pid);
//  237         return FRAMER_FAILED;
//  238       }
//  239       if(!is_broadcast_addr(frame.fcf.dest_addr_mode, frame.dest_addr)) {
        CMP      R0,#+2
        IT       NE 
        MOVNE    R0,#+8
??parse_2:
        SUBS     R0,R0,#+1
        ADD      R1,SP,#+0
        LDRB     R1,[R0, R1]
        CMP      R1,#+255
        BNE.N    ??parse_3
        CMP      R0,#+1
        BGE.N    ??parse_2
        B.N      ??parse_1
//  240         packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, (linkaddr_t *)&frame.dest_addr);
??parse_3:
        ADD      R1,SP,#+0
        MOVS     R0,#+19
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
//  241       }
//  242     }
//  243     packetbuf_set_addr(PACKETBUF_ADDR_SENDER, (linkaddr_t *)&frame.src_addr);
??parse_1:
        ADD      R1,SP,#+8
        MOVS     R0,#+18
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
//  244     packetbuf_set_attr(PACKETBUF_ATTR_PENDING, frame.fcf.frame_pending);
        LDRB     R1,[SP, #+18]
        MOVS     R0,#+16
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  245     /*    packetbuf_set_attr(PACKETBUF_ATTR_RELIABLE, frame.fcf.ack_required);*/
//  246     packetbuf_set_attr(PACKETBUF_ATTR_PACKET_ID, frame.seq);
        LDRB     R1,[SP, #+24]
        MOVS     R0,#+14
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  247     
//  248 #if LLSEC802154_SECURITY_LEVEL
//  249     if(frame.fcf.security_enabled) {
//  250       packetbuf_set_attr(PACKETBUF_ATTR_SECURITY_LEVEL, frame.aux_hdr.security_control.security_level);
//  251       packetbuf_set_attr(PACKETBUF_ATTR_FRAME_COUNTER_BYTES_0_1, frame.aux_hdr.frame_counter.u16[0]);
//  252       packetbuf_set_attr(PACKETBUF_ATTR_FRAME_COUNTER_BYTES_2_3, frame.aux_hdr.frame_counter.u16[1]);
//  253 #if LLSEC802154_USES_EXPLICIT_KEYS
//  254       packetbuf_set_attr(PACKETBUF_ATTR_KEY_ID_MODE, frame.aux_hdr.security_control.key_id_mode);
//  255       packetbuf_set_attr(PACKETBUF_ATTR_KEY_INDEX, frame.aux_hdr.key_index);
//  256       packetbuf_set_attr(PACKETBUF_ATTR_KEY_SOURCE_BYTES_0_1, frame.aux_hdr.key_source.u16[0]);
//  257 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  258     }
//  259 #endif /* LLSEC802154_SECURITY_LEVEL */
//  260 
//  261     PRINTF("15.4-IN: %2X", frame.fcf.frame_type);
//  262     PRINTADDR(packetbuf_addr(PACKETBUF_ADDR_SENDER));
//  263     PRINTADDR(packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
//  264     PRINTF("%d %u (%u)\n", hdr_len, packetbuf_datalen(), packetbuf_totlen());
//  265     
//  266     return hdr_len;
        MOV      R0,R4
        ADD      SP,SP,#+64
          CFI CFA R13+8
        POP      {R4,PC}
          CFI CFA R13+72
//  267   }
//  268   return FRAMER_FAILED;
??parse_0:
        MOV      R0,#-1
        ADD      SP,SP,#+64
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  269 }
//  270 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  271 const struct framer framer_802154 = {
framer_802154:
        DC32 hdr_length, create, framer_canonical_create_and_secure, parse

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  272   hdr_length,
//  273   create,
//  274   framer_canonical_create_and_secure,
//  275   parse
//  276 };
//  277 /*---------------------------------------------------------------------------*/
// 
//   2 bytes in section .bss
//  16 bytes in section .rodata
// 414 bytes in section .text
// 
// 414 bytes of CODE  memory
//  16 bytes of CONST memory
//   2 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
