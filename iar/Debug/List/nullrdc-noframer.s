///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:06
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\nullrdc-noframer.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\nullrdc-noframer.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\nullrdc-noframer.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN csma_driver
        EXTERN mac_call_sent_callback
        EXTERN nullradio_driver
        EXTERN packetbuf_hdrptr
        EXTERN packetbuf_totlen
        EXTERN queuebuf_to_packetbuf

        PUBLIC nullrdc_noframer_driver
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\nullrdc-noframer.c
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
//   35  *         A MAC protocol that does not do anything.
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  */
//   39 
//   40 #include "net/mac/nullrdc-noframer.h"
//   41 #include "net/packetbuf.h"
//   42 #include "net/queuebuf.h"
//   43 #include "net/netstack.h"
//   44 #include <string.h>
//   45 
//   46 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function send_packet
        THUMB
//   47 static void
//   48 send_packet(mac_callback_t sent, void *ptr)
//   49 {
send_packet:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//   50   int ret;
//   51   if(NETSTACK_RADIO.send(packetbuf_hdrptr(), packetbuf_totlen()) == RADIO_TX_OK) {
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        MOV      R6,R0
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
        LDR.N    R2,??DataTable5
        LDR      R2,[R2, #+12]
        MOV      R1,R6
          CFI FunCall
        BLX      R2
        CMP      R0,#+0
//   52     ret = MAC_TX_OK;
//   53   } else {
//   54     ret =  MAC_TX_ERR;
//   55   }
//   56   mac_call_sent_callback(sent, ptr, ret, 1);
        MOV      R1,R5
        MOV      R0,R4
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ITE      EQ 
        MOVEQ    R2,#+0
        MOVNE    R2,#+4
        MOVS     R3,#+1
          CFI FunCall mac_call_sent_callback
        B.W      mac_call_sent_callback
          CFI EndBlock cfiBlock0
//   57 }
//   58 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function send_list
        THUMB
//   59 static void
//   60 send_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
//   61 {
send_list:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//   62   if(buf_list != NULL) {
        CBZ.N    R2,??send_list_0
//   63     queuebuf_to_packetbuf(buf_list->buf);
        LDR      R0,[R2, #+4]
          CFI FunCall queuebuf_to_packetbuf
        BL       queuebuf_to_packetbuf
//   64     send_packet(sent, ptr);
        MOV      R1,R5
        MOV      R0,R4
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall send_packet
        B.N      send_packet
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//   65   }
//   66 }
??send_list_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//   67 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function packet_input
        THUMB
//   68 static void
//   69 packet_input(void)
//   70 {
//   71   NETSTACK_MAC.input();
packet_input:
        LDR.N    R0,??DataTable5_1
        LDR      R0,[R0, #+12]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock2
//   72 }
//   73 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function on
          CFI NoCalls
        THUMB
//   74 static int
//   75 on(void)
//   76 {
//   77   return NETSTACK_RADIO.on();
on:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock3
//   78 }
//   79 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function off
        THUMB
//   80 static int
//   81 off(int keep_radio_on)
//   82 {
//   83   if(keep_radio_on) {
off:
        LDR.N    R1,??DataTable5
        CMP      R0,#+0
        ITT      NE 
//   84     return NETSTACK_RADIO.on();
        LDRNE    R0,[R1, #+32]
          CFI FunCall
        ANOTE "tailcall"
        BXNE     R0
//   85   } else {
//   86     return NETSTACK_RADIO.off();
        LDR      R0,[R1, #+36]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock4
//   87   }
//   88 }
//   89 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function channel_check_interval
          CFI NoCalls
        THUMB
//   90 static unsigned short
//   91 channel_check_interval(void)
//   92 {
//   93   return 0;
channel_check_interval:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//   94 }
//   95 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function init
          CFI NoCalls
        THUMB
//   96 static void
//   97 init(void)
init:
        Nop      
          CFI EndBlock cfiBlock6
//   98 {
//   99   on();
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine0:
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+32]
          CFI FunCall on
          CFI FunCall init
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     nullradio_driver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     csma_driver

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "nullrdc-noframer"
        DC8 0, 0, 0
//  100 }
//  101 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  102 const struct rdc_driver nullrdc_noframer_driver = {
nullrdc_noframer_driver:
        DC32 ?_0, init, send_packet, send_list, packet_input, on, off
        DC32 channel_check_interval

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  103   "nullrdc-noframer",
//  104   init,
//  105   send_packet,
//  106   send_list,
//  107   packet_input,
//  108   on,
//  109   off,
//  110   channel_check_interval,
//  111 };
//  112 /*---------------------------------------------------------------------------*/
// 
//  52 bytes in section .rodata
// 114 bytes in section .text
// 
// 114 bytes of CODE  memory
//  52 bytes of CONST memory
//
//Errors: none
//Warnings: 1
