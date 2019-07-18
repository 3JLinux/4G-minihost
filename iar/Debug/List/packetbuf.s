///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:07
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\packetbuf.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\packetbuf.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\packetbuf.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN linkaddr_cmp
        EXTERN linkaddr_copy
        EXTERN linkaddr_null

        PUBLIC packetbuf_addr
        PUBLIC packetbuf_addrs
        PUBLIC packetbuf_attr
        PUBLIC packetbuf_attr_clear
        PUBLIC packetbuf_attr_copyfrom
        PUBLIC packetbuf_attr_copyto
        PUBLIC packetbuf_attrs
        PUBLIC packetbuf_clear
        PUBLIC packetbuf_clear_hdr
        PUBLIC packetbuf_compact
        PUBLIC packetbuf_copyfrom
        PUBLIC packetbuf_copyto
        PUBLIC packetbuf_copyto_hdr
        PUBLIC packetbuf_datalen
        PUBLIC packetbuf_dataptr
        PUBLIC packetbuf_hdr_remove
        PUBLIC packetbuf_hdralloc
        PUBLIC packetbuf_hdrlen
        PUBLIC packetbuf_hdrptr
        PUBLIC packetbuf_hdrreduce
        PUBLIC packetbuf_holds_broadcast
        PUBLIC packetbuf_is_reference
        PUBLIC packetbuf_reference
        PUBLIC packetbuf_reference_ptr
        PUBLIC packetbuf_set_addr
        PUBLIC packetbuf_set_attr
        PUBLIC packetbuf_set_datalen
        PUBLIC packetbuf_totlen
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\packetbuf.c
//    1 /*
//    2  * Copyright (c) 2006, Swedish Institute of Computer Science.
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
//   35  *         Rime buffer (packetbuf) management
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  */
//   39 
//   40 /**
//   41  * \addtogroup packetbuf
//   42  * @{
//   43  */
//   44 
//   45 #include <string.h>
//   46 
//   47 #include "contiki-net.h"
//   48 #include "net/packetbuf.h"
//   49 #include "net/rime/rime.h"
//   50 
//   51 struct packetbuf_attr packetbuf_attrs[PACKETBUF_NUM_ATTRS];
//   52 struct packetbuf_addr packetbuf_addrs[PACKETBUF_NUM_ADDRS];
//   53 
//   54 
//   55 static uint16_t buflen, bufptr;
//   56 static uint8_t hdrptr;
//   57 
//   58 /* The declarations below ensure that the packet buffer is aligned on
//   59    an even 16-bit boundary. On some platforms (most notably the
//   60    msp430), having apotentially misaligned packet buffer may lead to
//   61    problems when accessing 16-bit values. */
//   62 static uint16_t packetbuf_aligned[(PACKETBUF_SIZE + PACKETBUF_HDR_SIZE) / 2 + 1];

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 packetbuf_aligned

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
hdrptr:
        DS8 1
        DS8 1
        DS8 2
        DS8 2
        DS8 2
packetbuf_attrs:
        DS8 36
        DS8 4
packetbuf_addrs:
        DS8 16
packetbuf_aligned:
        DS8 180
//   63 static uint8_t *packetbuf = (uint8_t *)packetbuf_aligned;
//   64 
//   65 static uint8_t *packetbufptr;
//   66 
//   67 #define DEBUG 0
//   68 #if DEBUG
//   69 #include <stdio.h>
//   70 #define PRINTF(...) printf(__VA_ARGS__)
//   71 #else
//   72 #define PRINTF(...)
//   73 #endif
//   74 
//   75 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function packetbuf_clear
        THUMB
//   76 void
//   77 packetbuf_clear(void)
//   78 {
packetbuf_clear:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   79   buflen = bufptr = 0;
        LDR.N    R4,??DataTable24
        MOVS     R0,#+0
        STRH     R0,[R4, #+4]
        STRH     R0,[R4, #+2]
//   80   hdrptr = PACKETBUF_HDR_SIZE;
//   81 
//   82   packetbufptr = &packetbuf[PACKETBUF_HDR_SIZE];
//   83   packetbuf_attr_clear();
        MOVS     R1,#+36
        MOVS     R0,#+48
        STRB     R0,[R4, #+0]
        ADD      R0,R4,#+112
        STR      R0,[R4, #+44]
        ADD      R0,R4,#+8
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock0
//   84 }
//   85 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function packetbuf_clear_hdr
          CFI NoCalls
        THUMB
//   86 void
//   87 packetbuf_clear_hdr(void)
//   88 {
//   89   hdrptr = PACKETBUF_HDR_SIZE;
packetbuf_clear_hdr:
        LDR.N    R1,??DataTable24
        MOVS     R0,#+48
        STRB     R0,[R1, #+0]
//   90 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   91 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function packetbuf_copyfrom
        THUMB
//   92 int
//   93 packetbuf_copyfrom(const void *from, uint16_t len)
//   94 {
packetbuf_copyfrom:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//   95   uint16_t l;
//   96 
//   97   packetbuf_clear();
        LDR.N    R6,??DataTable24
        MOVS     R0,#+0
        STRH     R0,[R6, #+4]
        STRH     R0,[R6, #+2]
        MOV      R5,R1
        MOVS     R0,#+48
        STRB     R0,[R6, #+0]
        MOVS     R1,#+36
        ADD      R0,R6,#+112
        STR      R0,[R6, #+44]
        ADD      R0,R6,#+8
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        LDR.N    R7,??DataTable24_1
        MOV      R1,R7
        ADD      R0,R6,#+48
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
        MOV      R1,R7
        ADD      R0,R6,#+56
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//   98   l = len > PACKETBUF_SIZE? PACKETBUF_SIZE: len;
        CMP      R5,#+129
        IT       GE 
        MOVGE    R5,#+128
//   99   memcpy(packetbufptr, from, l);
        LDR      R0,[R6, #+44]
        MOV      R2,R5
        MOV      R1,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  100   buflen = l;
        STRH     R5,[R6, #+2]
//  101   return l;
        MOV      R0,R5
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock2
//  102 }
//  103 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function packetbuf_compact
        THUMB
//  104 void
//  105 packetbuf_compact(void)
//  106 {
packetbuf_compact:
        PUSH     {R3,R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+8
//  107   int i, len;
//  108 
//  109   if(packetbuf_is_reference()) {
        LDR.N    R0,??DataTable24
        LDR      R1,[R0, #+44]
        ADD      R2,R0,#+112
        CMP      R1,R2
        BEQ.N    ??packetbuf_compact_0
//  110     memcpy(&packetbuf[PACKETBUF_HDR_SIZE], packetbuf_reference_ptr(),
//  111 	   packetbuf_datalen());
        LDRH     R2,[R0, #+2]
        POP      {R3,R4}
          CFI R4 SameValue
          CFI CFA R13+0
        ADDS     R0,R0,#+112
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+8
//  112   } else if(bufptr > 0) {
??packetbuf_compact_0:
        LDRH     R1,[R0, #+4]
        CBZ.N    R1,??packetbuf_compact_1
//  113     len = packetbuf_datalen() + PACKETBUF_HDR_SIZE;
        LDRH     R2,[R0, #+2]
        ADDS     R2,R2,#+48
//  114     for(i = PACKETBUF_HDR_SIZE; i < len; i++) {
        CMP      R2,#+49
        BLT.N    ??packetbuf_compact_2
        ADDS     R1,R1,R0
        ADD      R3,R0,#+112
        ADDS     R1,R1,#+112
        SUBS     R2,R2,#+48
//  115       packetbuf[i] = packetbuf[bufptr + i];
??packetbuf_compact_3:
        LDRB     R4,[R1], #+1
        STRB     R4,[R3], #+1
//  116     }
        SUBS     R2,R2,#+1
        BNE.N    ??packetbuf_compact_3
//  117 
//  118     bufptr = 0;
??packetbuf_compact_2:
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  119   }
//  120 }
??packetbuf_compact_1:
        POP      {R0,R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  121 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function packetbuf_copyto_hdr
        THUMB
//  122 int
//  123 packetbuf_copyto_hdr(uint8_t *to)
//  124 {
packetbuf_copyto_hdr:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  125 #if DEBUG_LEVEL > 0
//  126   {
//  127     int i;
//  128     PRINTF("packetbuf_write_hdr: header:\n");
//  129     for(i = hdrptr; i < PACKETBUF_HDR_SIZE; ++i) {
//  130       PRINTF("0x%02x, ", packetbuf[i]);
//  131     }
//  132     PRINTF("\n");
//  133   }
//  134 #endif /* DEBUG_LEVEL */
//  135   memcpy(to, packetbuf + hdrptr, PACKETBUF_HDR_SIZE - hdrptr);
        LDR.N    R4,??DataTable24
        LDRB     R1,[R4, #+0]
        RSB      R2,R1,#+48
        ADDS     R1,R1,R4
        ADDS     R1,R1,#+64
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  136   return PACKETBUF_HDR_SIZE - hdrptr;
        LDRB     R0,[R4, #+0]
        RSB      R0,R0,#+48
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  137 }
//  138 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function packetbuf_copyto
        THUMB
//  139 int
//  140 packetbuf_copyto(void *to)
//  141 {
packetbuf_copyto:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  142 #if DEBUG_LEVEL > 0
//  143   {
//  144     int i;
//  145     char buffer[1000];
//  146     char *bufferptr = buffer;
//  147     
//  148     bufferptr[0] = 0;
//  149     for(i = hdrptr; i < PACKETBUF_HDR_SIZE; ++i) {
//  150       bufferptr += sprintf(bufferptr, "0x%02x, ", packetbuf[i]);
//  151     }
//  152     PRINTF("packetbuf_write: header: %s\n", buffer);
//  153     bufferptr = buffer;
//  154     bufferptr[0] = 0;
//  155     for(i = bufptr; i < buflen + bufptr; ++i) {
//  156       bufferptr += sprintf(bufferptr, "0x%02x, ", packetbufptr[i]);
//  157     }
//  158     PRINTF("packetbuf_write: data: %s\n", buffer);
//  159   }
//  160 #endif /* DEBUG_LEVEL */
//  161   if(PACKETBUF_HDR_SIZE - hdrptr + buflen > PACKETBUF_SIZE) {
        LDR.N    R4,??DataTable24
        LDRH     R1,[R4, #+2]
        MOV      R5,R0
        LDRB     R0,[R4, #+0]
        RSB      R2,R0,#+48
        ADDS     R1,R1,R2
        CMP      R1,#+129
        BLT.N    ??packetbuf_copyto_0
//  162     /* Too large packet */
//  163     return 0;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}
//  164   }
//  165   memcpy(to, packetbuf + hdrptr, PACKETBUF_HDR_SIZE - hdrptr);
??packetbuf_copyto_0:
        ADDS     R0,R0,R4
        ADD      R1,R0,#+64
        MOV      R0,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  166   memcpy((uint8_t *)to + PACKETBUF_HDR_SIZE - hdrptr, packetbufptr + bufptr,
//  167 	 buflen);
        LDR      R0,[R4, #+44]
        LDRH     R1,[R4, #+4]
        LDRH     R2,[R4, #+2]
        ADDS     R1,R1,R0
        LDRB     R0,[R4, #+0]
        SUBS     R0,R5,R0
        ADDS     R0,R0,#+48
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  168   return PACKETBUF_HDR_SIZE - hdrptr + buflen;
        LDRB     R0,[R4, #+0]
        LDRH     R1,[R4, #+2]
        RSB      R0,R0,#+48
        ADDS     R0,R1,R0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5
//  169 }
//  170 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function packetbuf_hdralloc
          CFI NoCalls
        THUMB
//  171 int
//  172 packetbuf_hdralloc(int size)
//  173 {
//  174   if(hdrptr >= size && packetbuf_totlen() + size <= PACKETBUF_SIZE) {
packetbuf_hdralloc:
        LDR.N    R1,??DataTable24
        LDRB     R2,[R1, #+0]
        CMP      R2,R0
        BLT.N    ??packetbuf_hdralloc_0
        RSB      R3,R2,#+48
        UXTB     R3,R3
        CBNZ.N   R3,??packetbuf_hdralloc_1
        LDRH     R3,[R1, #+4]
??packetbuf_hdralloc_1:
        LDRH     R12,[R1, #+2]
        UXTB     R3,R3
        ADD      R3,R12,R3
        UXTH     R3,R3
        ADDS     R3,R0,R3
        CMP      R3,#+129
        BGE.N    ??packetbuf_hdralloc_0
//  175     hdrptr -= size;
        SUBS     R0,R2,R0
        STRB     R0,[R1, #+0]
//  176     return 1;
        MOVS     R0,#+1
        BX       LR
//  177   }
//  178   return 0;
??packetbuf_hdralloc_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  179 }
//  180 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function packetbuf_hdr_remove
          CFI NoCalls
        THUMB
//  181 void
//  182 packetbuf_hdr_remove(int size)
//  183 {
//  184   hdrptr += size;
packetbuf_hdr_remove:
        LDR.N    R1,??DataTable24
        LDRB     R2,[R1, #+0]
        ADDS     R0,R0,R2
        STRB     R0,[R1, #+0]
//  185 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  186 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function packetbuf_hdrreduce
          CFI NoCalls
        THUMB
//  187 int
//  188 packetbuf_hdrreduce(int size)
//  189 {
//  190   if(buflen < size) {
packetbuf_hdrreduce:
        LDR.N    R1,??DataTable24
        LDRH     R2,[R1, #+2]
        CMP      R2,R0
        BGE.N    ??packetbuf_hdrreduce_0
//  191     return 0;
        MOVS     R0,#+0
        BX       LR
//  192   }
//  193 
//  194   bufptr += size;
??packetbuf_hdrreduce_0:
        LDRH     R3,[R1, #+4]
        ADDS     R3,R0,R3
//  195   buflen -= size;
        SUBS     R0,R2,R0
        STRH     R0,[R1, #+2]
        STRH     R3,[R1, #+4]
//  196   return 1;
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  197 }
//  198 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function packetbuf_set_datalen
          CFI NoCalls
        THUMB
//  199 void
//  200 packetbuf_set_datalen(uint16_t len)
//  201 {
//  202   PRINTF("packetbuf_set_len: len %d\n", len);
//  203   buflen = len;
packetbuf_set_datalen:
        LDR.N    R1,??DataTable24
        STRH     R0,[R1, #+2]
//  204 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  205 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function packetbuf_dataptr
          CFI NoCalls
        THUMB
//  206 void *
//  207 packetbuf_dataptr(void)
//  208 {
//  209   return (void *)(&packetbuf[bufptr + PACKETBUF_HDR_SIZE]);
packetbuf_dataptr:
        LDR.N    R0,??DataTable24
        LDRH     R1,[R0, #+4]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+112
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  210 }
//  211 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function packetbuf_hdrptr
          CFI NoCalls
        THUMB
//  212 void *
//  213 packetbuf_hdrptr(void)
//  214 {
//  215   return (void *)(&packetbuf[hdrptr]);
packetbuf_hdrptr:
        LDR.N    R0,??DataTable24
        LDRB     R1,[R0, #+0]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+64
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  216 }
//  217 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function packetbuf_reference
        THUMB
//  218 void
//  219 packetbuf_reference(void *ptr, uint16_t len)
//  220 {
packetbuf_reference:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  221   packetbuf_clear();
        LDR.N    R6,??DataTable24
        MOVS     R0,#+0
        STRH     R0,[R6, #+4]
        STRH     R0,[R6, #+2]
        MOV      R5,R1
        MOVS     R0,#+48
        STRB     R0,[R6, #+0]
        MOVS     R1,#+36
        ADD      R0,R6,#+112
        STR      R0,[R6, #+44]
        ADD      R0,R6,#+8
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        LDR.N    R7,??DataTable24_1
        MOV      R1,R7
        ADD      R0,R6,#+48
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
        MOV      R1,R7
        ADD      R0,R6,#+56
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  222   packetbufptr = ptr;
        STR      R4,[R6, #+44]
//  223   buflen = len;
        STRH     R5,[R6, #+2]
//  224 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock12
//  225 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function packetbuf_is_reference
          CFI NoCalls
        THUMB
//  226 int
//  227 packetbuf_is_reference(void)
//  228 {
//  229   return packetbufptr != &packetbuf[PACKETBUF_HDR_SIZE];
packetbuf_is_reference:
        LDR.N    R0,??DataTable24
        LDR      R1,[R0, #+44]
        ADDS     R0,R0,#+112
        CMP      R1,R0
        BEQ.N    ??packetbuf_is_reference_0
        MOVS     R0,#+1
        BX       LR
??packetbuf_is_reference_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  230 }
//  231 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function packetbuf_reference_ptr
          CFI NoCalls
        THUMB
//  232 void *
//  233 packetbuf_reference_ptr(void)
//  234 {
//  235   return packetbufptr;
packetbuf_reference_ptr:
        LDR.N    R0,??DataTable24
        LDR      R0,[R0, #+44]
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  236 }
//  237 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function packetbuf_datalen
          CFI NoCalls
        THUMB
//  238 uint16_t
//  239 packetbuf_datalen(void)
//  240 {
//  241   return buflen;
packetbuf_datalen:
        LDR.N    R0,??DataTable24
        LDRH     R0,[R0, #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  242 }
//  243 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function packetbuf_hdrlen
          CFI NoCalls
        THUMB
//  244 uint8_t
//  245 packetbuf_hdrlen(void)
//  246 {
//  247   uint8_t hdrlen;
//  248   
//  249   hdrlen = PACKETBUF_HDR_SIZE - hdrptr;
packetbuf_hdrlen:
        LDR.N    R1,??DataTable24
        LDRB     R0,[R1, #+0]
        RSB      R0,R0,#+48
//  250   if(hdrlen) {
        UXTB     R0,R0
        CBNZ.N   R0,??packetbuf_hdrlen_0
//  251     /* outbound packet */
//  252     return hdrlen;
//  253   } else {
//  254     /* inbound packet */
//  255     return bufptr;
        LDRH     R0,[R1, #+4]
        UXTB     R0,R0
??packetbuf_hdrlen_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  256   }
//  257 }
//  258 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function packetbuf_totlen
          CFI NoCalls
        THUMB
//  259 uint16_t
//  260 packetbuf_totlen(void)
//  261 {
//  262   return packetbuf_hdrlen() + packetbuf_datalen();
packetbuf_totlen:
        LDR.N    R0,??DataTable24
        LDRB     R1,[R0, #+0]
        RSB      R1,R1,#+48
        UXTB     R1,R1
        CBNZ.N   R1,??packetbuf_totlen_0
        LDRH     R1,[R0, #+4]
??packetbuf_totlen_0:
        LDRH     R0,[R0, #+2]
        UXTB     R1,R1
        ADDS     R0,R0,R1
        UXTH     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  263 }
//  264 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function packetbuf_attr_clear
        THUMB
//  265 void
//  266 packetbuf_attr_clear(void)
//  267 {
packetbuf_attr_clear:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  268   int i;
//  269   for(i = 0; i < PACKETBUF_NUM_ATTRS; ++i) {
//  270     packetbuf_attrs[i].val = 0;
        LDR.N    R4,??DataTable24
        MOVS     R1,#+36
        ADD      R0,R4,#+8
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
          CFI EndBlock cfiBlock18
//  271   }
//  272   for(i = 0; i < PACKETBUF_NUM_ADDRS; ++i) {
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  273     linkaddr_copy(&packetbuf_addrs[i].addr, &linkaddr_null);
//  274   }
//  275 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+16
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        LDR.N    R5,??DataTable24_1
        MOV      R1,R5
        ADD      R0,R4,#+48
          CFI FunCall packetbuf_clear linkaddr_copy
          CFI FunCall packetbuf_attr_clear linkaddr_copy
        BL       linkaddr_copy
        MOV      R1,R5
        ADD      R0,R4,#+56
        POP      {R2,R4,R5,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI FunCall packetbuf_clear linkaddr_copy
          CFI FunCall packetbuf_attr_clear linkaddr_copy
        B.W      linkaddr_copy
          CFI EndBlock cfiBlock19
//  276 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function packetbuf_attr_copyto
        THUMB
//  277 void
//  278 packetbuf_attr_copyto(struct packetbuf_attr *attrs,
//  279 		    struct packetbuf_addr *addrs)
//  280 {
packetbuf_attr_copyto:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R1
//  281   memcpy(attrs, packetbuf_attrs, sizeof(packetbuf_attrs));
        LDR.N    R5,??DataTable24
        MOVS     R2,#+36
        ADD      R1,R5,#+8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  282   memcpy(addrs, packetbuf_addrs, sizeof(packetbuf_addrs));
        ADD      R1,R5,#+48
        MOV      R0,R4
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock20
//  283 }
//  284 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function packetbuf_attr_copyfrom
        THUMB
//  285 void
//  286 packetbuf_attr_copyfrom(struct packetbuf_attr *attrs,
//  287 		      struct packetbuf_addr *addrs)
//  288 {
packetbuf_attr_copyfrom:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R1
//  289   memcpy(packetbuf_attrs, attrs, sizeof(packetbuf_attrs));
        LDR.N    R5,??DataTable24
        MOV      R1,R0
        MOVS     R2,#+36
        ADD      R0,R5,#+8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  290   memcpy(packetbuf_addrs, addrs, sizeof(packetbuf_addrs));
        MOV      R1,R4
        ADD      R0,R5,#+48
          CFI EndBlock cfiBlock21
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  291 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+16
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine1:
        POP      {R3-R5,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
        MOVS     R2,#+16
          CFI FunCall packetbuf_attr_copyto __aeabi_memcpy
          CFI FunCall packetbuf_attr_copyfrom __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI EndBlock cfiBlock22
//  292 /*---------------------------------------------------------------------------*/
//  293 #if !PACKETBUF_CONF_ATTRS_INLINE

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function packetbuf_set_attr
          CFI NoCalls
        THUMB
//  294 int
//  295 packetbuf_set_attr(uint8_t type, const packetbuf_attr_t val)
//  296 {
//  297 /*   packetbuf_attrs[type].type = type; */
//  298   packetbuf_attrs[type].val = val;
packetbuf_set_attr:
        LDR.N    R2,??DataTable24
        ADD      R0,R2,R0, LSL #+1
        STRH     R1,[R0, #+8]
//  299   return 1;
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  300 }
//  301 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function packetbuf_attr
          CFI NoCalls
        THUMB
//  302 packetbuf_attr_t
//  303 packetbuf_attr(uint8_t type)
//  304 {
//  305   return packetbuf_attrs[type].val;
packetbuf_attr:
        LDR.N    R1,??DataTable24
        ADD      R0,R1,R0, LSL #+1
        LDRH     R0,[R0, #+8]
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
//  306 }
//  307 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function packetbuf_set_addr
        THUMB
//  308 int
//  309 packetbuf_set_addr(uint8_t type, const linkaddr_t *addr)
//  310 {
packetbuf_set_addr:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  311 /*   packetbuf_addrs[type - PACKETBUF_ADDR_FIRST].type = type; */
//  312   linkaddr_copy(&packetbuf_addrs[type - PACKETBUF_ADDR_FIRST].addr, addr);
        LDR.N    R2,??DataTable24
        ADD      R0,R2,R0, LSL #+3
        SUBS     R0,R0,#+96
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  313   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock25
//  314 }
//  315 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function packetbuf_addr
          CFI NoCalls
        THUMB
//  316 const linkaddr_t *
//  317 packetbuf_addr(uint8_t type)
//  318 {
//  319   return &packetbuf_addrs[type - PACKETBUF_ADDR_FIRST].addr;
packetbuf_addr:
        LDR.N    R1,??DataTable24
        ADD      R0,R1,R0, LSL #+3
        SUBS     R0,R0,#+96
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
//  320 }
//  321 /*---------------------------------------------------------------------------*/
//  322 #endif /* PACKETBUF_CONF_ATTRS_INLINE */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function packetbuf_holds_broadcast
        THUMB
//  323 int
//  324 packetbuf_holds_broadcast(void)
//  325 {
//  326   return linkaddr_cmp(&packetbuf_addrs[PACKETBUF_ADDR_RECEIVER - PACKETBUF_ADDR_FIRST].addr, &linkaddr_null);
packetbuf_holds_broadcast:
        LDR.N    R1,??DataTable24_1
        LDR.N    R0,??DataTable24_2
          CFI FunCall linkaddr_cmp
        B.W      linkaddr_cmp
          CFI EndBlock cfiBlock27
//  327 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     hdrptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     linkaddr_null

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     hdrptr+0x38

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  328 /*---------------------------------------------------------------------------*/
//  329 
//  330 /** @} */
// 
// 244 bytes in section .bss
//   4 bytes in section .data
// 686 bytes in section .text
// 
// 686 bytes of CODE memory
// 248 bytes of DATA memory
//
//Errors: none
//Warnings: 1
