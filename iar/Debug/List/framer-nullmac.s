///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:49
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\framer-nullmac.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\framer-nullmac.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\framer-nullmac.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN framer_canonical_create_and_secure
        EXTERN linkaddr_copy
        EXTERN linkaddr_node_addr
        EXTERN packetbuf_addr
        EXTERN packetbuf_dataptr
        EXTERN packetbuf_hdralloc
        EXTERN packetbuf_hdrptr
        EXTERN packetbuf_hdrreduce
        EXTERN packetbuf_set_addr

        PUBLIC framer_nullmac
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\framer-nullmac.c
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
//   33  *         MAC framer for nullmac
//   34  * \author
//   35  *         Niclas Finne <nfi@sics.se>
//   36  *         Joakim Eriksson <joakime@sics.se>
//   37  */
//   38 
//   39 #include "net/mac/framer-nullmac.h"
//   40 #include "net/packetbuf.h"
//   41 
//   42 #define DEBUG 0
//   43 
//   44 #if DEBUG
//   45 #include <stdio.h>
//   46 #define PRINTF(...) printf(__VA_ARGS__)
//   47 #define PRINTADDR(addr) PRINTF(" %02x%02x:%02x%02x:%02x%02x:%02x%02x ", ((uint8_t *)addr)[0], ((uint8_t *)addr)[1], ((uint8_t *)addr)[2], ((uint8_t *)addr)[3], ((uint8_t *)addr)[4], ((uint8_t *)addr)[5], ((uint8_t *)addr)[6], ((uint8_t *)addr)[7])
//   48 #else
//   49 #define PRINTF(...)
//   50 #define PRINTADDR(addr)
//   51 #endif
//   52 
//   53 struct nullmac_hdr {
//   54   linkaddr_t receiver;
//   55   linkaddr_t sender;
//   56 };
//   57 
//   58 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function hdr_length
          CFI NoCalls
        THUMB
//   59 static int
//   60 hdr_length(void)
//   61 {
//   62   return sizeof(struct nullmac_hdr);
hdr_length:
        MOVS     R0,#+16
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   63 }
//   64 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function create
        THUMB
//   65 static int
//   66 create(void)
//   67 {
create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   68   struct nullmac_hdr *hdr;
//   69 
//   70   if(packetbuf_hdralloc(sizeof(struct nullmac_hdr))) {
        MOVS     R0,#+16
          CFI FunCall packetbuf_hdralloc
        BL       packetbuf_hdralloc
        CBZ.N    R0,??create_0
//   71     hdr = packetbuf_hdrptr();
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
        MOV      R4,R0
//   72     linkaddr_copy(&(hdr->sender), &linkaddr_node_addr);
        LDR.N    R1,??DataTable1
        ADD      R0,R4,#+8
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//   73     linkaddr_copy(&(hdr->receiver), packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R0
        MOV      R0,R4
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//   74     return sizeof(struct nullmac_hdr);
        MOVS     R0,#+16
        POP      {R4,PC}
//   75   }
//   76   PRINTF("PNULLMAC-UT: too large header: %u\n", sizeof(struct nullmac_hdr));
//   77   return FRAMER_FAILED;
??create_0:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock1
//   78 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     linkaddr_node_addr
//   79 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function parse
        THUMB
//   80 static int
//   81 parse(void)
//   82 {
parse:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   83   struct nullmac_hdr *hdr;
//   84   hdr = packetbuf_dataptr();
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        MOV      R4,R0
//   85   if(packetbuf_hdrreduce(sizeof(struct nullmac_hdr))) {
        MOVS     R0,#+16
          CFI FunCall packetbuf_hdrreduce
        BL       packetbuf_hdrreduce
        CBZ.N    R0,??parse_0
//   86     packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &(hdr->sender));
        ADD      R1,R4,#+8
        MOVS     R0,#+18
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
//   87     packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &(hdr->receiver));
        MOV      R1,R4
        MOVS     R0,#+19
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
//   88 
//   89     PRINTF("PNULLMAC-IN: ");
//   90     PRINTADDR(packetbuf_addr(PACKETBUF_ADDR_SENDER));
//   91     PRINTADDR(packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
//   92     PRINTF("%u (%u)\n", packetbuf_datalen(), sizeof(struct nullmac_hdr));
//   93 
//   94     return sizeof(struct nullmac_hdr);
        MOVS     R0,#+16
        POP      {R4,PC}
          CFI EndBlock cfiBlock2
//   95   }
//   96   return FRAMER_FAILED;
??parse_0:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//   97 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls create
          CFI NoCalls parse
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        MOV      R0,#-1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//   98 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//   99 const struct framer framer_nullmac = {
framer_nullmac:
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
//  100   hdr_length,
//  101   create,
//  102   framer_canonical_create_and_secure,
//  103   parse
//  104 };
// 
// 16 bytes in section .rodata
// 98 bytes in section .text
// 
// 98 bytes of CODE  memory
// 16 bytes of CONST memory
//
//Errors: none
//Warnings: 1
