///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:12
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\ringbufindex.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\ringbufindex.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ringbufindex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC ringbufindex_elements
        PUBLIC ringbufindex_empty
        PUBLIC ringbufindex_full
        PUBLIC ringbufindex_get
        PUBLIC ringbufindex_init
        PUBLIC ringbufindex_peek_get
        PUBLIC ringbufindex_peek_put
        PUBLIC ringbufindex_put
        PUBLIC ringbufindex_size
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\ringbufindex.c
//    1 /*
//    2  * Copyright (c) 2015, SICS Swedish ICT.
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
//   35  *         ringbufindex library. Implements basic support for ring buffers
//   36  *         of any type, as opposed to the core/lib/ringbuf module which
//   37  *         is only for byte arrays. Simply returns index in the ringbuf
//   38  *         rather than actual elements. The ringbuf size must be power of two.
//   39  *         Like the original ringbuf, this module implements atomic put and get.
//   40  * \author
//   41  *         Simon Duquennoy <simonduq@sics.se>
//   42  *         based on Contiki's core/lib/ringbuf library by Adam Dunkels
//   43  */
//   44 
//   45 #include <string.h>
//   46 #include "lib/ringbufindex.h"
//   47 
//   48 /* Initialize a ring buffer. The size must be a power of two */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ringbufindex_init
          CFI NoCalls
        THUMB
//   49 void
//   50 ringbufindex_init(struct ringbufindex *r, uint8_t size)
//   51 {
//   52   r->mask = size - 1;
ringbufindex_init:
        SUBS     R1,R1,#+1
        STRB     R1,[R0, #+0]
//   53   r->put_ptr = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//   54   r->get_ptr = 0;
        STRB     R1,[R0, #+2]
//   55 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   56 /* Put one element to the ring buffer */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ringbufindex_put
          CFI NoCalls
        THUMB
//   57 int
//   58 ringbufindex_put(struct ringbufindex *r)
//   59 {
//   60   /* Check if buffer is full. If it is full, return 0 to indicate that
//   61      the element was not inserted.
//   62 
//   63      XXX: there is a potential risk for a race condition here, because
//   64      the ->get_ptr field may be written concurrently by the
//   65      ringbufindex_get() function. To avoid this, access to ->get_ptr must
//   66      be atomic. We use an uint8_t type, which makes access atomic on
//   67      most platforms, but C does not guarantee this.
//   68    */
//   69   if(((r->put_ptr - r->get_ptr) & r->mask) == r->mask) {
ringbufindex_put:
        LDRB     R2,[R0, #+1]
        LDRB     R3,[R0, #+2]
        LDRB     R1,[R0, #+0]
        SUBS     R3,R2,R3
        ANDS     R3,R1,R3
        CMP      R3,R1
        BNE.N    ??ringbufindex_put_0
//   70     return 0;
        MOVS     R0,#+0
        BX       LR
//   71   }
//   72   r->put_ptr = (r->put_ptr + 1) & r->mask;
??ringbufindex_put_0:
        ADDS     R2,R2,#+1
        ANDS     R1,R1,R2
        STRB     R1,[R0, #+1]
//   73   return 1;
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   74 }
//   75 /* Check if there is space to put an element.
//   76  * Return the index where the next element is to be added */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ringbufindex_peek_put
          CFI NoCalls
        THUMB
//   77 int
//   78 ringbufindex_peek_put(const struct ringbufindex *r)
//   79 {
//   80   /* Check if there are bytes in the buffer. If so, we return the
//   81      first one. If there are no bytes left, we return -1.
//   82    */
//   83   if(((r->put_ptr - r->get_ptr) & r->mask) == r->mask) {
ringbufindex_peek_put:
        LDRB     R1,[R0, #+1]
        LDRB     R2,[R0, #+0]
        LDRB     R0,[R0, #+2]
        SUBS     R0,R1,R0
        ANDS     R0,R2,R0
        CMP      R0,R2
        BNE.N    ??ringbufindex_peek_put_0
//   84     return -1;
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock2
//   85   }
//   86   return (r->put_ptr + 1) & r->mask;
??ringbufindex_peek_put_0:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//   87 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls ringbufindex_peek_get
          CFI NoCalls ringbufindex_peek_put
        THUMB
?Subroutine0:
        ADDS     R0,R1,#+1
        ANDS     R0,R2,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   88 /* Remove the first element and return its index */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ringbufindex_get
          CFI NoCalls
        THUMB
//   89 int
//   90 ringbufindex_get(struct ringbufindex *r)
//   91 {
//   92   int get_ptr;
//   93 
//   94   /* Check if there are bytes in the buffer. If so, we return the
//   95      first one and increase the pointer. If there are no bytes left, we
//   96      return -1.
//   97 
//   98      XXX: there is a potential risk for a race condition here, because
//   99      the ->put_ptr field may be written concurrently by the
//  100      ringbufindex_put() function. To avoid this, access to ->get_ptr must
//  101      be atomic. We use an uint8_t type, which makes access atomic on
//  102      most platforms, but C does not guarantee this.
//  103    */
//  104   if(((r->put_ptr - r->get_ptr) & r->mask) > 0) {
ringbufindex_get:
        LDRB     R2,[R0, #+2]
        LDRB     R12,[R0, #+1]
        LDRB     R3,[R0, #+0]
        MOV      R1,R2
        SUB      R12,R12,R1
        AND      R12,R3,R12
        CMP      R12,#+1
        BLT.N    ??ringbufindex_get_0
//  105     get_ptr = r->get_ptr;
//  106     r->get_ptr = (r->get_ptr + 1) & r->mask;
        ADDS     R2,R2,#+1
        ANDS     R2,R3,R2
        STRB     R2,[R0, #+2]
//  107     return get_ptr;
        MOV      R0,R1
        BX       LR
          CFI EndBlock cfiBlock4
//  108   } else {
//  109     return -1;
??ringbufindex_get_0:
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  110   }
//  111 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls ringbufindex_get
          CFI NoCalls ringbufindex_peek_get
          CFI NoCalls ringbufindex_peek_put
        THUMB
?Subroutine1:
        MOV      R0,#-1
        BX       LR
          CFI EndBlock cfiBlock5
//  112 /* Return the index of the first element
//  113  * (which will be removed if calling ringbufindex_peek) */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ringbufindex_peek_get
          CFI NoCalls
        THUMB
//  114 int
//  115 ringbufindex_peek_get(const struct ringbufindex *r)
//  116 {
//  117   /* Check if there are bytes in the buffer. If so, we return the
//  118      first one. If there are no bytes left, we return -1.
//  119    */
//  120   if(((r->put_ptr - r->get_ptr) & r->mask) > 0) {
ringbufindex_peek_get:
        LDRB     R1,[R0, #+2]
        LDRB     R2,[R0, #+0]
        LDRB     R0,[R0, #+1]
        SUBS     R0,R0,R1
        ANDS     R0,R2,R0
        CMP      R0,#+1
        BLT.N    ??ringbufindex_peek_get_0
//  121     return (r->get_ptr + 1) & r->mask;
        B.N      ?Subroutine0
//  122   } else {
//  123     return -1;
??ringbufindex_peek_get_0:
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock6
//  124   }
//  125 }
//  126 /* Return the ring buffer size */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ringbufindex_size
          CFI NoCalls
        THUMB
//  127 int
//  128 ringbufindex_size(const struct ringbufindex *r)
//  129 {
//  130   return r->mask + 1;
ringbufindex_size:
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  131 }
//  132 /* Return the number of elements currently in the ring buffer */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function ringbufindex_elements
          CFI NoCalls
        THUMB
//  133 int
//  134 ringbufindex_elements(const struct ringbufindex *r)
//  135 {
//  136   return (r->put_ptr - r->get_ptr) & r->mask;
ringbufindex_elements:
        LDRB     R1,[R0, #+1]
        LDRB     R2,[R0, #+2]
        LDRB     R0,[R0, #+0]
        SUBS     R1,R1,R2
        ANDS     R0,R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  137 }
//  138 /* Is the ring buffer full? */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function ringbufindex_full
          CFI NoCalls
        THUMB
//  139 int
//  140 ringbufindex_full(const struct ringbufindex *r)
//  141 {
//  142   return ((r->put_ptr - r->get_ptr) & r->mask) == r->mask;
ringbufindex_full:
        LDRB     R1,[R0, #+0]
        LDRB     R2,[R0, #+1]
        LDRB     R0,[R0, #+2]
        SUBS     R0,R2,R0
        ANDS     R0,R1,R0
        CMP      R0,R1
        BNE.N    ??ringbufindex_full_0
        MOVS     R0,#+1
        BX       LR
??ringbufindex_full_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  143 }
//  144 /* Is the ring buffer empty? */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function ringbufindex_empty
          CFI NoCalls
        THUMB
//  145 int
//  146 ringbufindex_empty(const struct ringbufindex *r)
//  147 {
//  148   return ringbufindex_elements(r) == 0;
ringbufindex_empty:
        LDRB     R1,[R0, #+1]
        LDRB     R2,[R0, #+2]
        LDRB     R0,[R0, #+0]
        SUBS     R1,R1,R2
        ANDS     R0,R0,R1
        SUBS     R0,R0,#+1
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  149 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 178 bytes in section .text
// 
// 178 bytes of CODE memory
//
//Errors: none
//Warnings: 1
