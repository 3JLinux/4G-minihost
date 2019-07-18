///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:23
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\llsec\anti-replay.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\llsec\anti-replay.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\anti-replay.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN packetbuf_attr
        EXTERN packetbuf_holds_broadcast
        EXTERN packetbuf_set_attr

        PUBLIC anti_replay_get_counter
        PUBLIC anti_replay_init_info
        PUBLIC anti_replay_set_counter
        PUBLIC anti_replay_was_replayed
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\llsec\anti-replay.c
//    1 /*
//    2  * Copyright (c) 2014, Hasso-Plattner-Institut.
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
//   35  *         Protects against replay attacks by comparing with the last
//   36  *         unicast or broadcast frame counter of the sender.
//   37  * \author
//   38  *         Konrad Krentz <konrad.krentz@gmail.com>
//   39  */
//   40 
//   41 /**
//   42  * \addtogroup llsec802154
//   43  * @{
//   44  */
//   45 
//   46 #include "net/llsec/anti-replay.h"
//   47 #include "net/packetbuf.h"
//   48 
//   49 /* This node's current frame counter value */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   50 static uint32_t counter;
counter:
        DS8 4
//   51 
//   52 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function anti_replay_set_counter
        THUMB
//   53 void
//   54 anti_replay_set_counter(void)
//   55 {
anti_replay_set_counter:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   56   frame802154_frame_counter_t reordered_counter;
//   57   
//   58   reordered_counter.u32 = LLSEC802154_HTONL(++counter);
        LDR.N    R0,??DataTable0
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
        STR      R1,[SP, #+0]
//   59   
//   60   packetbuf_set_attr(PACKETBUF_ATTR_FRAME_COUNTER_BYTES_0_1, reordered_counter.u16[0]);
        MOVS     R0,#+1
        LDRH     R1,[SP, #+0]
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//   61   packetbuf_set_attr(PACKETBUF_ATTR_FRAME_COUNTER_BYTES_2_3, reordered_counter.u16[1]);
        LDRH     R1,[SP, #+2]
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R0,#+2
          CFI FunCall packetbuf_set_attr
        B.W      packetbuf_set_attr
          CFI EndBlock cfiBlock0
//   62 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     counter
//   63 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function anti_replay_get_counter
        THUMB
//   64 uint32_t
//   65 anti_replay_get_counter(void)
//   66 {
anti_replay_get_counter:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   67   frame802154_frame_counter_t disordered_counter;
//   68   
//   69   disordered_counter.u16[0] = packetbuf_attr(PACKETBUF_ATTR_FRAME_COUNTER_BYTES_0_1);
        MOVS     R0,#+1
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRH     R0,[SP, #+0]
//   70   disordered_counter.u16[1] = packetbuf_attr(PACKETBUF_ATTR_FRAME_COUNTER_BYTES_2_3);
        MOVS     R0,#+2
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRH     R0,[SP, #+2]
//   71   
//   72   return LLSEC802154_HTONL(disordered_counter.u32); 
        LDR      R0,[SP, #+0]
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock1
//   73 }
//   74 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function anti_replay_init_info
        THUMB
//   75 void
//   76 anti_replay_init_info(struct anti_replay_info *info)
//   77 {
anti_replay_init_info:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        SUB      SP,SP,#+8
          CFI CFA R13+16
//   78   info->last_broadcast_counter
//   79       = info->last_unicast_counter
//   80       = anti_replay_get_counter();
        MOVS     R0,#+1
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRH     R0,[SP, #+0]
        MOVS     R0,#+2
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRH     R0,[SP, #+2]
        LDR      R0,[SP, #+0]
        STR      R0,[R4, #+4]
        STR      R0,[R4, #+0]
//   81 }
        POP      {R0,R1,R4,PC}    ;; return
          CFI EndBlock cfiBlock2
//   82 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function anti_replay_was_replayed
        THUMB
//   83 int
//   84 anti_replay_was_replayed(struct anti_replay_info *info)
//   85 {
anti_replay_was_replayed:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        SUB      SP,SP,#+8
          CFI CFA R13+16
//   86   uint32_t received_counter;
//   87   
//   88   received_counter = anti_replay_get_counter();
        MOVS     R0,#+1
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRH     R0,[SP, #+0]
        MOVS     R0,#+2
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRH     R0,[SP, #+2]
//   89   
//   90   if(packetbuf_holds_broadcast()) {
          CFI FunCall packetbuf_holds_broadcast
        BL       packetbuf_holds_broadcast
        CBZ.N    R0,??anti_replay_was_replayed_0
//   91     /* broadcast */
//   92     if(received_counter <= info->last_broadcast_counter) {
        LDR      R0,[R4, #+0]
        LDR      R1,[SP, #+0]
        CMP      R0,R1
        BCS.N    ??anti_replay_was_replayed_1
//   93       return 1;
//   94     } else {
//   95       info->last_broadcast_counter = received_counter;
        STR      R1,[R4, #+0]
//   96       return 0;
        B.N      ??anti_replay_was_replayed_2
//   97     }
//   98   } else {
//   99     /* unicast */
//  100     if(received_counter <= info->last_unicast_counter) {
??anti_replay_was_replayed_0:
        LDR      R0,[R4, #+4]
        LDR      R1,[SP, #+0]
        CMP      R0,R1
        BCC.N    ??anti_replay_was_replayed_3
//  101       return 1;
??anti_replay_was_replayed_1:
        MOVS     R0,#+1
        POP      {R1,R2,R4,PC}
//  102     } else {
//  103       info->last_unicast_counter = received_counter;
??anti_replay_was_replayed_3:
        STR      R1,[R4, #+4]
//  104       return 0;
??anti_replay_was_replayed_2:
        MOVS     R0,#+0
        POP      {R1,R2,R4,PC}    ;; return
          CFI EndBlock cfiBlock3
//  105     }
//  106   }
//  107 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  108 /*---------------------------------------------------------------------------*/
//  109 
//  110 /** @} */
// 
//   4 bytes in section .bss
// 162 bytes in section .text
// 
// 162 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: 1
