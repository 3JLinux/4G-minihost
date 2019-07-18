///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:04
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\mmem.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\mmem.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\mmem.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memmove
        EXTERN list_add
        EXTERN list_init
        EXTERN list_remove

        PUBLIC avail_memory
        PUBLIC mmem_alloc
        PUBLIC mmem_free
        PUBLIC mmem_init
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\mmem.c
//    1 /*
//    2  * Copyright (c) 2005, Swedish Institute of Computer Science
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
//   34  * \addtogroup mmem
//   35  * @{
//   36  */
//   37 
//   38 /**
//   39  * \file
//   40  *         Implementation of the managed memory allocator
//   41  * \author
//   42  *         Adam Dunkels <adam@sics.se>
//   43  * 
//   44  */
//   45 
//   46 
//   47 #include "mmem.h"
//   48 #include "list.h"
//   49 #include "contiki-conf.h"
//   50 #include <string.h>
//   51 
//   52 #ifdef MMEM_CONF_SIZE
//   53 #define MMEM_SIZE MMEM_CONF_SIZE
//   54 #else
//   55 #define MMEM_SIZE 16
//   56 #endif
//   57 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 mmemlist_list
//   58 LIST(mmemlist);
//   59 unsigned int avail_memory;
//   60 static char memory[MMEM_SIZE];
//   61 
//   62 /*---------------------------------------------------------------------------*/
//   63 /**
//   64  * \brief      Allocate a managed memory block
//   65  * \param m    A pointer to a struct mmem.
//   66  * \param size The size of the requested memory block
//   67  * \return     Non-zero if the memory could be allocated, zero if memory
//   68  *             was not available.
//   69  * \author     Adam Dunkels
//   70  *
//   71  *             This function allocates a chunk of managed memory. The
//   72  *             memory allocated with this function must be deallocated
//   73  *             using the mmem_free() function.
//   74  *
//   75  *             \note This function does NOT return a pointer to the
//   76  *             allocated memory, but a pointer to a structure that
//   77  *             contains information about the managed memory. The
//   78  *             macro MMEM_PTR() is used to get a pointer to the
//   79  *             allocated memory.
//   80  *
//   81  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function mmem_alloc
        THUMB
//   82 int
//   83 mmem_alloc(struct mmem *m, unsigned int size)
//   84 {
mmem_alloc:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//   85   /* Check if we have enough memory left for this allocation. */
//   86   if(avail_memory < size) {
        LDR.N    R4,??DataTable2
        MOV      R5,R0
        LDR      R0,[R4, #+0]
        MOV      R6,R1
        CMP      R0,R6
        BCS.N    ??mmem_alloc_0
//   87     return 0;
        MOVS     R0,#+0
        POP      {R4-R6,PC}
//   88   }
//   89 
//   90   /* We had enough memory so we add this memory block to the end of
//   91      the list of allocated memory blocks. */
//   92   list_add(mmemlist, m);
??mmem_alloc_0:
        MOV      R1,R5
        ADD      R0,R4,#+8
          CFI FunCall list_add
        BL       list_add
//   93 
//   94   /* Set up the pointer so that it points to the first available byte
//   95      in the memory block. */
//   96   m->ptr = &memory[MMEM_SIZE - avail_memory];
        LDR      R0,[R4, #+0]
        SUBS     R0,R4,R0
        ADDS     R0,R0,#+28
        STR      R0,[R5, #+8]
//   97 
//   98   /* Remember the size of this memory block. */
//   99   m->size = size;
        STR      R6,[R5, #+4]
//  100 
//  101   /* Decrease the amount of available memory. */
//  102   avail_memory -= size;
        LDR      R0,[R4, #+0]
        SUBS     R0,R0,R6
        STR      R0,[R4, #+0]
//  103 
//  104   /* Return non-zero to indicate that we were able to allocate
//  105      memory. */
//  106   return 1;
        MOVS     R0,#+1
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//  107 }
//  108 /*---------------------------------------------------------------------------*/
//  109 /**
//  110  * \brief      Deallocate a managed memory block
//  111  * \param m    A pointer to the managed memory block
//  112  * \author     Adam Dunkels
//  113  *
//  114  *             This function deallocates a managed memory block that
//  115  *             previously has been allocated with mmem_alloc().
//  116  *
//  117  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function mmem_free
        THUMB
//  118 void
//  119 mmem_free(struct mmem *m)
//  120 {
mmem_free:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  121   struct mmem *n;
//  122 
//  123   if(m->next != NULL) {
        LDR.N    R5,??DataTable2
        LDR      R0,[R4, #+0]
        CBZ.N    R0,??mmem_free_0
//  124     /* Compact the memory after the allocation that is to be removed
//  125        by moving it downwards. */
//  126     memmove(m->ptr, m->next->ptr,
//  127 	    &memory[MMEM_SIZE - avail_memory] - (char *)m->next->ptr);
        LDR      R1,[R0, #+8]
        LDR      R0,[R5, #+0]
        SUBS     R0,R5,R0
        ADDS     R0,R0,#+28
        SUBS     R2,R0,R1
        LDR      R0,[R4, #+8]
          CFI FunCall __aeabi_memmove
        BL       __aeabi_memmove
//  128     
//  129     /* Update all the memory pointers that points to memory that is
//  130        after the allocation that is to be removed. */
//  131     for(n = m->next; n != NULL; n = n->next) {
        LDR      R0,[R4, #+0]
        B.N      ??mmem_free_1
//  132       n->ptr = (void *)((char *)n->ptr - m->size);
??mmem_free_2:
        LDR      R1,[R0, #+8]
        LDR      R2,[R4, #+4]
        SUBS     R1,R1,R2
        STR      R1,[R0, #+8]
//  133     }
        LDR      R0,[R0, #+0]
??mmem_free_1:
        CMP      R0,#+0
        BNE.N    ??mmem_free_2
//  134   }
//  135 
//  136   avail_memory += m->size;
??mmem_free_0:
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+4]
        ADDS     R0,R1,R0
        STR      R0,[R5, #+0]
//  137 
//  138   /* Remove the memory block from the list. */
//  139   list_remove(mmemlist, m);
        MOV      R1,R4
        ADD      R0,R5,#+8
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall list_remove
        B.W      list_remove
          CFI EndBlock cfiBlock1
//  140 }
//  141 /*---------------------------------------------------------------------------*/
//  142 /**
//  143  * \brief      Initialize the managed memory module
//  144  * \author     Adam Dunkels
//  145  *
//  146  *             This function initializes the managed memory module and
//  147  *             should be called before any other function from the
//  148  *             module.
//  149  *
//  150  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function mmem_init
        THUMB
//  151 void
//  152 mmem_init(void)
//  153 {
mmem_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  154   static int inited = 0;
//  155   if(inited) {
        LDR.N    R4,??DataTable2
        LDR      R0,[R4, #+4]
        CBNZ.N   R0,??mmem_init_0
//  156     return;
//  157   }
//  158   list_init(mmemlist);
        ADD      R0,R4,#+8
          CFI FunCall list_init
        BL       list_init
//  159   avail_memory = MMEM_SIZE;
        MOVS     R0,#+16
        STR      R0,[R4, #+0]
//  160   inited = 1;
        MOVS     R0,#+1
        STR      R0,[R4, #+4]
//  161 }
??mmem_init_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     avail_memory

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
avail_memory:
        DS8 4
        DS8 4
mmemlist_list:
        DS8 4
        DS8 16

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  162 /*---------------------------------------------------------------------------*/
//  163 
//  164 /** @} */
// 
//  28 bytes in section .bss
//   4 bytes in section .data
// 144 bytes in section .text
// 
// 144 bytes of CODE memory
//  32 bytes of DATA memory
//
//Errors: none
//Warnings: 1
