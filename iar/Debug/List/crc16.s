///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:37
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\crc16.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\crc16.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\crc16.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC crc16_add
        PUBLIC crc16_data
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\crc16.c
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
//   33 /** \addtogroup crc16
//   34  * @{ */
//   35 
//   36 /**
//   37  * \file
//   38  *         Implementation of the CRC16 calculcation
//   39  * \author
//   40  *         Adam Dunkels <adam@sics.se>
//   41  *
//   42  */
//   43 
//   44 /* CITT CRC16 polynomial ^16 + ^12 + ^5 + 1 */
//   45 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function crc16_add
          CFI NoCalls
        THUMB
//   46 unsigned short
//   47 crc16_add(unsigned char b, unsigned short acc)
//   48 {
//   49   /*
//   50     acc  = (unsigned char)(acc >> 8) | (acc << 8);
//   51     acc ^= b;
//   52     acc ^= (unsigned char)(acc & 0xff) >> 4;
//   53     acc ^= (acc << 8) << 4;
//   54     acc ^= ((acc & 0xff) << 4) << 1;
//   55   */
//   56 
//   57   acc ^= b;
crc16_add:
        EORS     R0,R0,R1
//   58   acc  = (acc >> 8) | (acc << 8);
        LSLS     R1,R0,#+8
        ORR      R0,R1,R0, LSR #+8
//   59   acc ^= (acc & 0xff00) << 4;
        AND      R1,R0,#0xFF00
        EOR      R0,R0,R1, LSL #+4
//   60   acc ^= (acc >> 8) >> 4;
        UXTH     R0,R0
        EORS     R0,R0,R0, LSR #+12
//   61   acc ^= (acc & 0xff00) >> 5;
//   62   return acc;
        LSRS     R1,R0,#+5
        AND      R1,R1,#0x7F8
        EORS     R0,R1,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   63 }
//   64 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function crc16_data
          CFI NoCalls
        THUMB
//   65 unsigned short
//   66 crc16_data(const unsigned char *data, int len, unsigned short acc)
//   67 {
//   68   int i;
//   69   
//   70   for(i = 0; i < len; ++i) {
crc16_data:
        CMP      R1,#+1
        BLT.N    ??crc16_data_0
//   71     acc = crc16_add(*data, acc);
??crc16_data_1:
        LDRB     R3,[R0], #+1
        EORS     R2,R3,R2
        LSLS     R3,R2,#+8
        ORR      R2,R3,R2, LSR #+8
        AND      R3,R2,#0xFF00
        EOR      R2,R2,R3, LSL #+4
        UXTH     R2,R2
        EORS     R2,R2,R2, LSR #+12
        LSRS     R3,R2,#+5
        AND      R3,R3,#0x7F8
        EORS     R2,R3,R2
//   72     ++data;
//   73   }
        SUBS     R1,R1,#+1
        BNE.N    ??crc16_data_1
//   74   return acc;
??crc16_data_0:
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   75 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   76 /*---------------------------------------------------------------------------*/
//   77 
//   78 /** @} */
// 
// 78 bytes in section .text
// 
// 78 bytes of CODE memory
//
//Errors: none
//Warnings: 1
