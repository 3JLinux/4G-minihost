///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:02
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\mac-sequence.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\mac-sequence.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\mac-sequence.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN linkaddr_cmp
        EXTERN linkaddr_copy
        EXTERN packetbuf_addr
        EXTERN packetbuf_attr

        PUBLIC mac_sequence_is_duplicate
        PUBLIC mac_sequence_register_seqno
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\mac-sequence.c
//    1 /*
//    2  * Copyright (c) 2010, Swedish Institute of Computer Science.
//    3  * All rights reserved.
//    4  *
//    5  * Copyright (c) 2013, ADVANSEE - http://www.advansee.com/
//    6  * Beno卯t Th茅baudeau <benoit.thebaudeau@advansee.com>
//    7  * All rights reserved.
//    8  *
//    9  * Redistribution and use in source and binary forms, with or without
//   10  * modification, are permitted provided that the following conditions
//   11  * are met:
//   12  * 1. Redistributions of source code must retain the above copyright
//   13  *    notice, this list of conditions and the following disclaimer.
//   14  * 2. Redistributions in binary form must reproduce the above copyright
//   15  *    notice, this list of conditions and the following disclaimer in the
//   16  *    documentation and/or other materials provided with the distribution.
//   17  * 3. Neither the name of the Institute nor the names of its contributors
//   18  *    may be used to endorse or promote products derived from this software
//   19  *    without specific prior written permission.
//   20  *
//   21  * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
//   22  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   23  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   24  * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
//   25  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   26  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   27  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   28  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   29  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   30  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   31  * SUCH DAMAGE.
//   32  *
//   33  * This file is part of the Contiki operating system.
//   34  *
//   35  */
//   36 
//   37 /**
//   38  * \file
//   39  *         MAC sequence numbers management
//   40  * \author
//   41  *         Adam Dunkels <adam@sics.se>
//   42  *         Beno卯t Th茅baudeau <benoit.thebaudeau@advansee.com>
//   43  */
//   44 
//   45 #include <string.h>
//   46 
//   47 #include "contiki-net.h"
//   48 #include "net/mac/mac-sequence.h"
//   49 #include "net/packetbuf.h"
//   50 #include "net/rime/rime.h"
//   51 
//   52 struct seqno {
//   53   linkaddr_t sender;
//   54   uint8_t seqno;
//   55 };
//   56 
//   57 #ifdef NETSTACK_CONF_MAC_SEQNO_HISTORY
//   58 #define MAX_SEQNOS NETSTACK_CONF_MAC_SEQNO_HISTORY
//   59 #else /* NETSTACK_CONF_MAC_SEQNO_HISTORY */
//   60 #define MAX_SEQNOS 16
//   61 #endif /* NETSTACK_CONF_MAC_SEQNO_HISTORY */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   62 static struct seqno received_seqnos[MAX_SEQNOS];
received_seqnos:
        DS8 144
//   63 
//   64 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function mac_sequence_is_duplicate
        THUMB
//   65 int
//   66 mac_sequence_is_duplicate(void)
//   67 {
mac_sequence_is_duplicate:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//   68   int i;
//   69 
//   70   /*
//   71    * Check for duplicate packet by comparing the sequence number of the incoming
//   72    * packet with the last few ones we saw.
//   73    */
//   74   for(i = 0; i < MAX_SEQNOS; ++i) {
        LDR.N    R5,??DataTable1
        MOVS     R4,#+0
        MOV      R6,R5
//   75     if(linkaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
//   76                     &received_seqnos[i].sender)) {
??mac_sequence_is_duplicate_0:
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R6
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CBZ.N    R0,??mac_sequence_is_duplicate_1
//   77       if(packetbuf_attr(PACKETBUF_ATTR_PACKET_ID) == received_seqnos[i].seqno) {
        MOVS     R0,#+14
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        ADD      R1,R4,R4, LSL #+3
        ADDS     R1,R1,R5
        LDRB     R1,[R1, #+8]
        CMP      R0,R1
        BNE.N    ??mac_sequence_is_duplicate_2
//   78         /* Duplicate packet. */
//   79         return 1;
        MOVS     R0,#+1
        POP      {R4-R6,PC}
//   80       }
//   81       break;
//   82     }
//   83   }
??mac_sequence_is_duplicate_1:
        ADDS     R4,R4,#+1
        ADDS     R6,R6,#+9
        CMP      R4,#+16
        BLT.N    ??mac_sequence_is_duplicate_0
//   84   return 0;
??mac_sequence_is_duplicate_2:
        MOVS     R0,#+0
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//   85 }
//   86 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function mac_sequence_register_seqno
        THUMB
//   87 void
//   88 mac_sequence_register_seqno(void)
//   89 {
mac_sequence_register_seqno:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//   90   int i, j;
//   91 
//   92   /* Locate possible previous sequence number for this address. */
//   93   for(i = 0; i < MAX_SEQNOS; ++i) {
        LDR.N    R5,??DataTable1
        MOVS     R4,#+0
        MOV      R6,R5
//   94     if(linkaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_SENDER),
//   95                     &received_seqnos[i].sender)) {
??mac_sequence_register_seqno_0:
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        ADDS     R4,R4,#+1
        MOV      R1,R6
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CBNZ.N   R0,??mac_sequence_register_seqno_1
//   96       i++;
//   97       break;
//   98     }
//   99   }
        ADDS     R6,R6,#+9
        CMP      R4,#+16
        BLT.N    ??mac_sequence_register_seqno_0
//  100 
//  101   /* Keep the last sequence number for each address as per 802.15.4e. */
//  102   for(j = i - 1; j > 0; --j) {
??mac_sequence_register_seqno_1:
        SUBS     R4,R4,#+1
        CMP      R4,#+1
        BLT.N    ??mac_sequence_register_seqno_2
        ADD      R0,R4,R4, LSL #+3
        ADDS     R0,R0,R5
//  103     memcpy(&received_seqnos[j], &received_seqnos[j - 1], sizeof(struct seqno));
??mac_sequence_register_seqno_3:
        SUB      R6,R0,#+9
        MOVS     R2,#+9
        MOV      R1,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  104   }
        SUBS     R4,R4,#+1
        CMP      R4,#+1
        MOV      R0,R6
        BGE.N    ??mac_sequence_register_seqno_3
//  105   received_seqnos[0].seqno = packetbuf_attr(PACKETBUF_ATTR_PACKET_ID);
??mac_sequence_register_seqno_2:
        MOVS     R0,#+14
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRB     R0,[R5, #+8]
//  106   linkaddr_copy(&received_seqnos[0].sender,
//  107                 packetbuf_addr(PACKETBUF_ADDR_SENDER));
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R0
        MOV      R0,R5
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall linkaddr_copy
        B.W      linkaddr_copy
          CFI EndBlock cfiBlock1
//  108 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     received_seqnos

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  109 /*---------------------------------------------------------------------------*/
// 
// 144 bytes in section .bss
// 148 bytes in section .text
// 
// 148 bytes of CODE memory
// 144 bytes of DATA memory
//
//Errors: none
//Warnings: 1
