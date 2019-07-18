///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:03
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\memb.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\memb.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\memb.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr

        PUBLIC memb_alloc
        PUBLIC memb_free
        PUBLIC memb_init
        PUBLIC memb_inmemb
        PUBLIC memb_numfree
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\memb.c
//    1 /*
//    2 
//    3  * Copyright (c) 2004, Swedish Institute of Computer Science.
//    4  * All rights reserved.
//    5  *
//    6  * Redistribution and use in source and binary forms, with or without
//    7  * modification, are permitted provided that the following conditions
//    8  * are met:
//    9  * 1. Redistributions of source code must retain the above copyright
//   10  *    notice, this list of conditions and the following disclaimer.
//   11  * 2. Redistributions in binary form must reproduce the above copyright
//   12  *    notice, this list of conditions and the following disclaimer in the
//   13  *    documentation and/or other materials provided with the distribution.
//   14  * 3. Neither the name of the Institute nor the names of its contributors
//   15  *    may be used to endorse or promote products derived from this software
//   16  *    without specific prior written permission.
//   17  *
//   18  * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
//   19  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   20  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   21  * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
//   22  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   23  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   24  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   25  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   26  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   27  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   28  * SUCH DAMAGE.
//   29  *
//   30  * This file is part of the Contiki operating system.
//   31  *
//   32  * Author: Adam Dunkels <adam@sics.se>
//   33  *
//   34  */
//   35 
//   36 /**
//   37  * \addtogroup memb
//   38  * @{
//   39  */
//   40 
//   41  /**
//   42  * \file
//   43  * Memory block allocation routines.
//   44  * \author Adam Dunkels <adam@sics.se>
//   45  */
//   46 #include <string.h>
//   47 
//   48 #include "contiki.h"
//   49 #include "lib/memb.h"
//   50 
//   51 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function memb_init
        THUMB
//   52 void
//   53 memb_init(struct memb *m)
//   54 {
memb_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//   55   memset(m->count, 0, m->num);
        LDRH     R1,[R4, #+2]
        LDR      R0,[R4, #+4]
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//   56   memset(m->mem, 0, m->size * m->num);
        LDRH     R0,[R4, #+0]
        LDRH     R1,[R4, #+2]
        MULS     R1,R1,R0
        LDR      R0,[R4, #+8]
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall __aeabi_memclr
        B.W      __aeabi_memclr
          CFI EndBlock cfiBlock0
//   57 }
//   58 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function memb_alloc
          CFI NoCalls
        THUMB
//   59 void *
//   60 memb_alloc(struct memb *m)
//   61 {
memb_alloc:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   62   int i;
//   63 
//   64   for(i = 0; i < m->num; ++i) {
        LDR      R2,[R0, #+4]
        LDRH     R4,[R0, #+2]
        MOVS     R1,#+0
        MOV      R3,R2
        B.N      ??memb_alloc_0
??memb_alloc_1:
        ADDS     R1,R1,#+1
??memb_alloc_0:
        CMP      R1,R4
        BGE.N    ??memb_alloc_2
//   65     if(m->count[i] == 0) {
        LDRB     R5,[R3], #+1
        CMP      R5,#+0
        BNE.N    ??memb_alloc_1
//   66       /* If this block was unused, we increase the reference count to
//   67 	 indicate that it now is used and return a pointer to the
//   68 	 memory block. */
//   69       ++(m->count[i]);
        LDRB     R3,[R1, R2]
        ADDS     R3,R3,#+1
        STRB     R3,[R1, R2]
//   70       return (void *)((char *)m->mem + (i * m->size));
        LDR      R2,[R0, #+8]
        LDRH     R0,[R0, #+0]
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        MLA      R0,R0,R1,R2
        BX       LR
          CFI R4 Frame(CFA, -8)
          CFI R5 Frame(CFA, -4)
          CFI CFA R13+8
//   71     }
//   72   }
//   73 
//   74   /* No free block was found, so we return NULL to indicate failure to
//   75      allocate block. */
//   76   return NULL;
??memb_alloc_2:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   77 }
//   78 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function memb_free
          CFI NoCalls
        THUMB
//   79 char
//   80 memb_free(struct memb *m, void *ptr)
//   81 {
memb_free:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   82   int i;
//   83   char *ptr2;
//   84 
//   85   /* Walk through the list of blocks and try to find the block to
//   86      which the pointer "ptr" points to. */
//   87   ptr2 = (char *)m->mem;
        LDR      R2,[R0, #+8]
//   88   for(i = 0; i < m->num; ++i) {
        LDRH     R4,[R0, #+2]
        LDRH     R5,[R0, #+0]
        MOVS     R3,#+0
        B.N      ??memb_free_0
//   89     
//   90     if(ptr2 == (char *)ptr) {
//   91       /* We've found to block to which "ptr" points so we decrease the
//   92 	 reference count and return the new value of it. */
//   93       if(m->count[i] > 0) {
//   94 	/* Make sure that we don't deallocate free memory. */
//   95 	--(m->count[i]);
//   96       }
//   97       return m->count[i];
//   98     }
//   99     ptr2 += m->size;
??memb_free_1:
        ADDS     R2,R5,R2
        ADDS     R3,R3,#+1
??memb_free_0:
        CMP      R3,R4
        BGE.N    ??memb_free_2
        CMP      R2,R1
        BNE.N    ??memb_free_1
        LDR      R1,[R0, #+4]
        LDRB     R2,[R3, R1]
        CBZ.N    R2,??memb_free_3
        SUBS     R2,R2,#+1
        STRB     R2,[R3, R1]
??memb_free_3:
        LDR      R0,[R0, #+4]
        LDRB     R0,[R3, R0]
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR
          CFI R4 Frame(CFA, -8)
          CFI R5 Frame(CFA, -4)
          CFI CFA R13+8
//  100   }
//  101   return -1;
??memb_free_2:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        MOVS     R0,#+255
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  102 }
//  103 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function memb_inmemb
          CFI NoCalls
        THUMB
//  104 int
//  105 memb_inmemb(struct memb *m, void *ptr)
//  106 {
//  107   return (char *)ptr >= (char *)m->mem &&
//  108     (char *)ptr < (char *)m->mem + (m->num * m->size);
memb_inmemb:
        LDR      R2,[R0, #+8]
        CMP      R1,R2
        BCC.N    ??memb_inmemb_0
        LDRH     R3,[R0, #+2]
        LDRH     R0,[R0, #+0]
        MLA      R0,R0,R3,R2
        CMP      R1,R0
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
        BX       LR
??memb_inmemb_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  109 }
//  110 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function memb_numfree
          CFI NoCalls
        THUMB
//  111 int
//  112 memb_numfree(struct memb *m)
//  113 {
//  114   int i;
//  115   int num_free = 0;
memb_numfree:
        MOVS     R1,#+0
//  116 
//  117   for(i = 0; i < m->num; ++i) {
        MOVS     R2,#+0
        B.N      ??memb_numfree_0
//  118     if(m->count[i] == 0) {
??memb_numfree_1:
        LDR      R3,[R0, #+4]
        LDRB     R3,[R2, R3]
        CBNZ.N   R3,??memb_numfree_2
//  119       ++num_free;
        ADDS     R1,R1,#+1
//  120     }
//  121   }
??memb_numfree_2:
        ADDS     R2,R2,#+1
??memb_numfree_0:
        LDRH     R3,[R0, #+2]
        CMP      R2,R3
        BLT.N    ??memb_numfree_1
//  122 
//  123   return num_free;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  124 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  125 /** @} */
// 
// 178 bytes in section .text
// 
// 178 bytes of CODE memory
//
//Errors: none
//Warnings: 1
