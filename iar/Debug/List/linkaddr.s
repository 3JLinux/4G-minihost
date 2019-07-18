///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:02
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\linkaddr.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\linkaddr.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\linkaddr.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN memcmp

        PUBLIC linkaddr_cmp
        PUBLIC linkaddr_copy
        PUBLIC linkaddr_node_addr
        PUBLIC linkaddr_null
        PUBLIC linkaddr_set_node_addr
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\linkaddr.c
//    1 /*
//    2  * Copyright (c) 2007, Swedish Institute of Computer Science.
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
//   35  *         Functions for manipulating Rime addresses
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  */
//   39 
//   40 /**
//   41  * \addtogroup linkaddr
//   42  * @{
//   43  */
//   44 
//   45 #include "net/linkaddr.h"
//   46 #include <string.h>
//   47 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 linkaddr_t linkaddr_node_addr;
linkaddr_node_addr:
        DS8 8
//   49 #if LINKADDR_SIZE == 2
//   50 const linkaddr_t linkaddr_null = { { 0, 0 } };
//   51 #else /*LINKADDR_SIZE == 2*/
//   52 #if LINKADDR_SIZE == 8

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//   53 const linkaddr_t linkaddr_null = { { 0, 0, 0, 0, 0, 0, 0, 0 } };
linkaddr_null:
        DC8 0, 0, 0, 0, 0, 0, 0, 0
//   54 #endif /*LINKADDR_SIZE == 8*/
//   55 #endif /*LINKADDR_SIZE == 2*/
//   56 
//   57 
//   58 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function linkaddr_copy
        THUMB
//   59 void
//   60 linkaddr_copy(linkaddr_t *dest, const linkaddr_t *src)
//   61 {
//   62 	memcpy(dest, src, LINKADDR_SIZE);
linkaddr_copy:
        MOVS     R2,#+8
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI EndBlock cfiBlock0
//   63 }
//   64 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function linkaddr_cmp
        THUMB
//   65 int
//   66 linkaddr_cmp(const linkaddr_t *addr1, const linkaddr_t *addr2)
//   67 {
linkaddr_cmp:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   68 	return (memcmp(addr1, addr2, LINKADDR_SIZE) == 0);
        MOVS     R2,#+8
          CFI FunCall memcmp
        BL       memcmp
        SUBS     R0,R0,#+1
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock1
//   69 }
//   70 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function linkaddr_set_node_addr
        THUMB
//   71 void
//   72 linkaddr_set_node_addr(linkaddr_t *t)
//   73 {
//   74   linkaddr_copy(&linkaddr_node_addr, t);
linkaddr_set_node_addr:
        MOV      R1,R0
        MOVS     R2,#+8
        LDR.N    R0,??DataTable1
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI EndBlock cfiBlock2
//   75 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     linkaddr_node_addr

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   76 /*---------------------------------------------------------------------------*/
//   77 /** @} */
// 
//  8 bytes in section .bss
//  8 bytes in section .rodata
// 36 bytes in section .text
// 
// 36 bytes of CODE  memory
//  8 bytes of CONST memory
//  8 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
