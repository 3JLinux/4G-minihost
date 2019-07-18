///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:12
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\ringbuf.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\ringbuf.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ringbuf.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC ringbuf_elements
        PUBLIC ringbuf_get
        PUBLIC ringbuf_init
        PUBLIC ringbuf_put
        PUBLIC ringbuf_size
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\ringbuf.c
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
//   33 /**
//   34  * \file
//   35  *         Ring buffer library implementation
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  */
//   39 
//   40 #include "lib/ringbuf.h"
//   41 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ringbuf_init
          CFI NoCalls
        THUMB
//   42 void
//   43 ringbuf_init(struct ringbuf *r, uint8_t *dataptr, uint8_t size)
//   44 {
//   45   r->data = dataptr;
ringbuf_init:
        STR      R1,[R0, #+0]
//   46   r->mask = size - 1;
        SUBS     R1,R2,#+1
        STRB     R1,[R0, #+4]
//   47   r->put_ptr = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
//   48   r->get_ptr = 0;
        STRB     R1,[R0, #+6]
//   49 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   50 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ringbuf_put
          CFI NoCalls
        THUMB
//   51 int
//   52 ringbuf_put(struct ringbuf *r, uint8_t c)
//   53 {
//   54   /* Check if buffer is full. If it is full, return 0 to indicate that
//   55      the element was not inserted into the buffer.
//   56 
//   57      XXX: there is a potential risk for a race condition here, because
//   58      the ->get_ptr field may be written concurrently by the
//   59      ringbuf_get() function. To avoid this, access to ->get_ptr must
//   60      be atomic. We use an uint8_t type, which makes access atomic on
//   61      most platforms, but C does not guarantee this.
//   62   */
//   63   if(((r->put_ptr - r->get_ptr) & r->mask) == r->mask) {
ringbuf_put:
        LDRB     R3,[R0, #+5]
        LDRB     R12,[R0, #+6]
        LDRB     R2,[R0, #+4]
        SUB      R12,R3,R12
        AND      R12,R2,R12
        CMP      R12,R2
        BNE.N    ??ringbuf_put_0
//   64     return 0;
        MOVS     R0,#+0
        BX       LR
//   65   }
//   66   r->data[r->put_ptr] = c;
??ringbuf_put_0:
        LDR      R2,[R0, #+0]
        STRB     R1,[R3, R2]
//   67   r->put_ptr = (r->put_ptr + 1) & r->mask;
        LDRB     R1,[R0, #+5]
        LDRB     R2,[R0, #+4]
        ADDS     R1,R1,#+1
        ANDS     R1,R2,R1
        STRB     R1,[R0, #+5]
//   68   return 1;
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   69 }
//   70 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ringbuf_get
          CFI NoCalls
        THUMB
//   71 int
//   72 ringbuf_get(struct ringbuf *r)
//   73 {
ringbuf_get:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//   74   uint8_t c;
//   75   
//   76   /* Check if there are bytes in the buffer. If so, we return the
//   77      first one and increase the pointer. If there are no bytes left, we
//   78      return -1.
//   79 
//   80      XXX: there is a potential risk for a race condition here, because
//   81      the ->put_ptr field may be written concurrently by the
//   82      ringbuf_put() function. To avoid this, access to ->get_ptr must
//   83      be atomic. We use an uint8_t type, which makes access atomic on
//   84      most platforms, but C does not guarantee this.
//   85   */
//   86   if(((r->put_ptr - r->get_ptr) & r->mask) > 0) {
        LDRB     R2,[R0, #+6]
        LDRB     R4,[R0, #+5]
        LDRB     R3,[R0, #+4]
        SUBS     R4,R4,R2
        ANDS     R4,R3,R4
        CMP      R4,#+1
        BLT.N    ??ringbuf_get_0
//   87     c = r->data[r->get_ptr];
        LDR      R4,[R0, #+0]
        LDRB     R1,[R2, R4]
//   88     r->get_ptr = (r->get_ptr + 1) & r->mask;
        ADDS     R2,R2,#+1
        ANDS     R2,R3,R2
        STRB     R2,[R0, #+6]
//   89     return c;
        MOV      R0,R1
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//   90   } else {
//   91     return -1;
??ringbuf_get_0:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        MOV      R0,#-1
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   92   }
//   93 }
//   94 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ringbuf_size
          CFI NoCalls
        THUMB
//   95 int
//   96 ringbuf_size(struct ringbuf *r)
//   97 {
//   98   return r->mask + 1;
ringbuf_size:
        LDRB     R0,[R0, #+4]
        ADDS     R0,R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   99 }
//  100 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ringbuf_elements
          CFI NoCalls
        THUMB
//  101 int
//  102 ringbuf_elements(struct ringbuf *r)
//  103 {
//  104   return (r->put_ptr - r->get_ptr) & r->mask;
ringbuf_elements:
        LDRB     R1,[R0, #+5]
        LDRB     R2,[R0, #+6]
        LDRB     R0,[R0, #+4]
        SUBS     R1,R1,R2
        ANDS     R0,R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  105 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  106 /*---------------------------------------------------------------------------*/
// 
// 114 bytes in section .text
// 
// 114 bytes of CODE memory
//
//Errors: none
//Warnings: 1
