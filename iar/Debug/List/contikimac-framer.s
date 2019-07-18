///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:35
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\contikimac\contikimac-framer.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\contikimac\contikimac-framer.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\contikimac-framer.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr
        EXTERN framer_802154
        EXTERN nullsec_driver
        EXTERN packetbuf_compact
        EXTERN packetbuf_datalen
        EXTERN packetbuf_dataptr
        EXTERN packetbuf_hdralloc
        EXTERN packetbuf_hdrptr
        EXTERN packetbuf_hdrreduce
        EXTERN packetbuf_set_datalen
        EXTERN packetbuf_totlen

        PUBLIC contikimac_framer
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\contikimac\contikimac-framer.c
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
//   35  *         Creates and parses the ContikiMAC header.
//   36  * \author
//   37  *         Konrad Krentz <konrad.krentz@gmail.com>
//   38  */
//   39 
//   40 #include "net/mac/contikimac/contikimac-framer.h"
//   41 #include "net/packetbuf.h"
//   42 #include "net/netstack.h"
//   43 #include <string.h>
//   44 
//   45 #define CONTIKIMAC_ID 0x00
//   46 
//   47 /* SHORTEST_PACKET_SIZE is the shortest packet that ContikiMAC
//   48    allows. Packets have to be a certain size to be able to be detected
//   49    by two consecutive CCA checks, and here is where we define this
//   50    shortest size.
//   51    Padded packets will have the wrong ipv6 checksum unless CONTIKIMAC_HEADER
//   52    is used (on both sides) and the receiver will ignore them.
//   53    With no header, reduce to transmit a proper multicast RPL DIS. */
//   54 #ifdef CONTIKIMAC_FRAMER_CONF_SHORTEST_PACKET_SIZE
//   55 #define SHORTEST_PACKET_SIZE CONTIKIMAC_FRAMER_CONF_SHORTEST_PACKET_SIZE
//   56 #else /* CONTIKIMAC_FRAMER_CONF_SHORTEST_PACKET_SIZE */
//   57 #define SHORTEST_PACKET_SIZE 43
//   58 #endif /* CONTIKIMAC_FRAMER_CONF_SHORTEST_PACKET_SIZE */
//   59 
//   60 #ifdef CONTIKIMAC_FRAMER_CONF_DECORATED_FRAMER
//   61 #define DECORATED_FRAMER CONTIKIMAC_FRAMER_CONF_DECORATED_FRAMER
//   62 #else /* CONTIKIMAC_FRAMER_CONF_DECORATED_FRAMER */
//   63 #define DECORATED_FRAMER framer_802154
//   64 #endif /* CONTIKIMAC_FRAMER_CONF_DECORATED_FRAMER */
//   65 
//   66 extern const struct framer DECORATED_FRAMER;
//   67 
//   68 #define DEBUG 0
//   69 #if DEBUG
//   70 #include <stdio.h>
//   71 #define PRINTF(...) printf(__VA_ARGS__)
//   72 #else
//   73 #define PRINTF(...)
//   74 #endif
//   75 
//   76 /* 2-byte header for recovering padded packets.
//   77    Wireshark will not understand such packets at present. */
//   78 struct hdr {
//   79   uint8_t id;
//   80   uint8_t len;
//   81 };
//   82 
//   83 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function hdr_length
        THUMB
//   84 static int
//   85 hdr_length(void)
//   86 {
hdr_length:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   87   return DECORATED_FRAMER.length() + sizeof(struct hdr);
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+0]
          CFI FunCall
        BLX      R0
        ADDS     R0,R0,#+2
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock0
//   88 }
//   89 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function create
        THUMB
//   90 static int
//   91 create(void)
//   92 {
create:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   93   struct hdr *chdr;
//   94   int hdr_len;
//   95   
//   96   if(packetbuf_hdralloc(sizeof(struct hdr)) == 0) {
        MOVS     R0,#+2
          CFI FunCall packetbuf_hdralloc
        BL       packetbuf_hdralloc
        CBZ.N    R0,??create_0
//   97     PRINTF("contikimac-framer: too large header\n");
//   98     return FRAMER_FAILED;
//   99   }
//  100   chdr = packetbuf_hdrptr();
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
//  101   chdr->id = CONTIKIMAC_ID;
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  102   chdr->len = 0;
        STRB     R1,[R0, #+1]
//  103   
//  104   hdr_len = DECORATED_FRAMER.create();
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+4]
          CFI FunCall
        BLX      R0
//  105   if(hdr_len < 0) {
        CMP      R0,#+0
        BPL.N    ??create_1
//  106     PRINTF("contikimac-framer: decorated framer failed\n");
//  107     return FRAMER_FAILED;
??create_0:
        MOV      R0,#-1
        POP      {R1,PC}
//  108   }
//  109   
//  110   return hdr_len + sizeof(struct hdr);
??create_1:
        ADDS     R0,R0,#+2
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock1
//  111 }
//  112 /*---------------------------------------------------------------------------*/
//  113 static void
//  114 pad(void)
//  115 {
//  116   int transmit_len;
//  117   uint8_t *ptr;
//  118   uint8_t zeroes_count;
//  119   
//  120   transmit_len = packetbuf_totlen();
//  121   if(transmit_len < SHORTEST_PACKET_SIZE) {
//  122     /* Padding required */
//  123     zeroes_count = SHORTEST_PACKET_SIZE - transmit_len;
//  124     ptr = packetbuf_dataptr();
//  125     memset(ptr + packetbuf_datalen(), 0, zeroes_count);
//  126     packetbuf_set_datalen(packetbuf_datalen() + zeroes_count);
//  127   }
//  128 }
//  129 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function create_and_secure
        THUMB
//  130 static int
//  131 create_and_secure(void)
//  132 {
create_and_secure:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  133   struct hdr *chdr;
//  134   int hdr_len;
//  135   
//  136   hdr_len = create();
          CFI FunCall create
        BL       create
        MOVS     R4,R0
//  137   if(hdr_len < 0) {
        BMI.N    ??create_and_secure_0
//  138     return FRAMER_FAILED;
//  139   }
//  140   
//  141   packetbuf_compact();
          CFI FunCall packetbuf_compact
        BL       packetbuf_compact
//  142   if(!NETSTACK_LLSEC.on_frame_created()) {
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+12]
          CFI FunCall
        BLX      R0
        CBNZ.N   R0,??create_and_secure_1
//  143     PRINTF("contikimac-framer: securing failed\n");
//  144     return FRAMER_FAILED;
??create_and_secure_0:
        MOV      R0,#-1
        POP      {R4-R6,PC}
//  145   }
//  146   
//  147   chdr = (struct hdr *)(((uint8_t *) packetbuf_dataptr()) - sizeof(struct hdr));
??create_and_secure_1:
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        MOV      R5,R0
//  148   chdr->len = packetbuf_datalen();
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        STRB     R0,[R5, #-1]
//  149   pad();
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        CMP      R0,#+43
        BGE.N    ??create_and_secure_2
        RSB      R5,R0,#+43
        UXTB     R5,R5
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        MOV      R6,R0
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        MOV      R1,R5
        ADDS     R0,R0,R6
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        ADDS     R0,R5,R0
        UXTH     R0,R0
          CFI FunCall packetbuf_set_datalen
        BL       packetbuf_set_datalen
//  150   
//  151   return hdr_len;
??create_and_secure_2:
        MOV      R0,R4
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//  152 }
//  153 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function parse
        THUMB
//  154 static int
//  155 parse(void)
//  156 {
parse:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  157   int hdr_len;
//  158   struct hdr *chdr;
//  159   
//  160   hdr_len = DECORATED_FRAMER.parse();
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+12]
          CFI FunCall
        BLX      R0
        MOVS     R4,R0
//  161   if(hdr_len < 0) {
        BMI.N    ??parse_0
//  162     return FRAMER_FAILED;
//  163   }
//  164   
//  165   chdr = packetbuf_dataptr();
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        MOV      R5,R0
//  166   if(chdr->id != CONTIKIMAC_ID) {
        LDRB     R0,[R5, #+0]
        CBNZ.N   R0,??parse_0
//  167     PRINTF("contikimac-framer: CONTIKIMAC_ID is missing\n");
//  168     return FRAMER_FAILED;
//  169   }
//  170   
//  171   if(!packetbuf_hdrreduce(sizeof(struct hdr))) {
        MOVS     R0,#+2
          CFI FunCall packetbuf_hdrreduce
        BL       packetbuf_hdrreduce
        CBNZ.N   R0,??parse_1
//  172     PRINTF("contikimac-framer: packetbuf_hdrreduce failed\n");
//  173     return FRAMER_FAILED;
??parse_0:
        MOV      R0,#-1
        POP      {R1,R4,R5,PC}
//  174   }
//  175   
//  176   packetbuf_set_datalen(chdr->len);
??parse_1:
        LDRB     R0,[R5, #+1]
          CFI FunCall packetbuf_set_datalen
        BL       packetbuf_set_datalen
//  177   chdr->len = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+1]
//  178   
//  179   return hdr_len + sizeof(struct hdr);
        ADDS     R0,R4,#+2
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//  180 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     framer_802154

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     nullsec_driver
//  181 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  182 const struct framer contikimac_framer = {
contikimac_framer:
        DC32 hdr_length, create, create_and_secure, parse

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  183   hdr_length,
//  184   create,
//  185   create_and_secure,
//  186   parse
//  187 };
//  188 /*---------------------------------------------------------------------------*/
// 
//  16 bytes in section .rodata
// 200 bytes in section .text
// 
// 200 bytes of CODE  memory
//  16 bytes of CONST memory
//
//Errors: none
//Warnings: 1
