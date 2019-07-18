///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\simple-udp.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\simple-udp.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\simple-udp.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN process_current
        EXTERN process_start
        EXTERN tcpip_event
        EXTERN udp_new
        EXTERN uip_aligned_buf
        EXTERN uip_appdata
        EXTERN uip_flags
        EXTERN uip_len
        EXTERN uip_udp_packet_sendto

        PUBLIC simple_udp_process
        PUBLIC simple_udp_register
        PUBLIC simple_udp_send
        PUBLIC simple_udp_sendto
        PUBLIC simple_udp_sendto_port
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\simple-udp.c
//    1 /*
//    2  * Copyright (c) 2011, Swedish Institute of Computer Science.
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
//   30  */
//   31 
//   32 /**
//   33  * \file
//   34  *         Code for the simple-udp module.
//   35  * \author
//   36  *         Adam Dunkels <adam@sics.se>
//   37  *
//   38  */
//   39 
//   40 /**
//   41  * \addtogroup simple-udp
//   42  * @{
//   43  */
//   44 
//   45 #include "contiki-net.h"
//   46 #include "net/ip/simple-udp.h"
//   47 
//   48 #include <string.h>
//   49 
//   50 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   51 PROCESS(simple_udp_process, "Simple UDP process");
//   52 static uint8_t started = 0;
started:
        DATA
        DC8 0
        DC8 0, 0, 0
simple_udp_process:
        DC32 0H, ?_0, process_thread_simple_udp_process
        DC8 0, 0, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   53 static uint8_t databuffer[UIP_BUFSIZE];
databuffer:
        DS8 1516
//   54 
//   55 #define UIP_IP_BUF   ((struct uip_udpip_hdr *)&uip_buf[UIP_LLH_LEN])
//   56 
//   57 /*---------------------------------------------------------------------------*/
//   58 static void
//   59 init_simple_udp(void)
//   60 {
//   61   if(started == 0) {
//   62     process_start(&simple_udp_process, NULL);
//   63     started = 1;
//   64   }
//   65 }
//   66 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function simple_udp_send
        THUMB
//   67 int
//   68 simple_udp_send(struct simple_udp_connection *c,
//   69                 const void *data, uint16_t datalen)
//   70 {
simple_udp_send:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R3,R0
//   71   if(c->udp_conn != NULL) {
        LDR      R0,[R3, #+28]
        CBZ.N    R0,??simple_udp_send_0
//   72     uip_udp_packet_sendto(c->udp_conn, data, datalen,
//   73                           &c->remote_addr, UIP_HTONS(c->remote_port));
        LDRH     R4,[R3, #+20]
        LSRS     R5,R4,#+8
        ORR      R4,R5,R4, LSL #+8
        UXTH     R4,R4
        STR      R4,[SP, #+0]
        ADDS     R3,R3,#+4
          CFI FunCall uip_udp_packet_sendto
        BL       uip_udp_packet_sendto
//   74   }
//   75   return 0;
??simple_udp_send_0:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//   76 }
//   77 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function simple_udp_sendto
        THUMB
//   78 int
//   79 simple_udp_sendto(struct simple_udp_connection *c,
//   80                   const void *data, uint16_t datalen,
//   81                   const uip_ipaddr_t *to)
//   82 {
simple_udp_sendto:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//   83   if(c->udp_conn != NULL) {
        LDR      R0,[R4, #+28]
        CBZ.N    R0,??simple_udp_sendto_0
//   84     uip_udp_packet_sendto(c->udp_conn, data, datalen,
//   85                           to, UIP_HTONS(c->remote_port));
        LDRH     R4,[R4, #+20]
        LSRS     R5,R4,#+8
        ORR      R4,R5,R4, LSL #+8
        UXTH     R4,R4
        STR      R4,[SP, #+0]
          CFI FunCall uip_udp_packet_sendto
        BL       uip_udp_packet_sendto
//   86   }
//   87   return 0;
??simple_udp_sendto_0:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//   88 }
//   89 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function simple_udp_sendto_port
        THUMB
//   90 int
//   91 simple_udp_sendto_port(struct simple_udp_connection *c,
//   92 		       const void *data, uint16_t datalen,
//   93 		       const uip_ipaddr_t *to,
//   94 		       uint16_t port)
//   95 {
simple_udp_sendto_port:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   96   if(c->udp_conn != NULL) {
        LDR      R0,[R0, #+28]
        CBZ.N    R0,??simple_udp_sendto_port_0
        LDR      R4,[SP, #+16]
//   97     uip_udp_packet_sendto(c->udp_conn, data, datalen,
//   98                           to, UIP_HTONS(port));
        LSRS     R5,R4,#+8
        ORR      R4,R5,R4, LSL #+8
        UXTH     R4,R4
        STR      R4,[SP, #+0]
          CFI FunCall uip_udp_packet_sendto
        BL       uip_udp_packet_sendto
//   99   }
//  100   return 0;
??simple_udp_sendto_port_0:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//  101 }
//  102 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function simple_udp_register
        THUMB
//  103 int
//  104 simple_udp_register(struct simple_udp_connection *c,
//  105                     uint16_t local_port,
//  106                     uip_ipaddr_t *remote_addr,
//  107                     uint16_t remote_port,
//  108                     simple_udp_callback receive_callback)
//  109 {
simple_udp_register:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
//  110 
//  111   init_simple_udp();
        LDR.N    R6,??DataTable2
        MOV      R4,R0
        LDRB     R0,[R6, #+0]
        MOV      R5,R1
        MOV      R8,R2
        MOV      R7,R3
        CBNZ.N   R0,??simple_udp_register_0
        MOVS     R1,#+0
        ADDS     R0,R6,#+4
          CFI FunCall process_start
        BL       process_start
        MOVS     R0,#+1
        STRB     R0,[R6, #+0]
//  112 
//  113   c->local_port = local_port;
??simple_udp_register_0:
        STRH     R5,[R4, #+22]
//  114   c->remote_port = remote_port;
//  115   if(remote_addr != NULL) {
        CMP      R8,#+0
        STRH     R7,[R4, #+20]
        BEQ.N    ??simple_udp_register_1
//  116     uip_ipaddr_copy(&c->remote_addr, remote_addr);
        ADDS     R0,R4,#+4
        MOV      R1,R8
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  117   }
//  118   c->receive_callback = receive_callback;
??simple_udp_register_1:
        LDR      R0,[SP, #+32]
//  119 
//  120   PROCESS_CONTEXT_BEGIN(&simple_udp_process);
        LDR.W    R9,??DataTable2_1
        STR      R0,[R4, #+24]
        ADDS     R0,R6,#+4
        LDR      R10,[R9, #+0]
        STR      R0,[R9, #+0]
//  121   c->udp_conn = udp_new(remote_addr, UIP_HTONS(remote_port), c);
        MOV      R2,R4
        LSRS     R0,R7,#+8
        ORR      R1,R0,R7, LSL #+8
        UXTH     R1,R1
        MOV      R0,R8
          CFI FunCall udp_new
        BL       udp_new
        STR      R0,[R4, #+28]
//  122   if(c->udp_conn != NULL) {
        CBZ.N    R0,??simple_udp_register_2
//  123     udp_bind(c->udp_conn, UIP_HTONS(local_port));
        LSRS     R1,R5,#+8
        ORR      R1,R1,R5, LSL #+8
        STRH     R1,[R0, #+16]
//  124   }
//  125   PROCESS_CONTEXT_END();
??simple_udp_register_2:
        STR      R10,[R9, #+0]
//  126 
//  127   if(c->udp_conn == NULL) {
        CBZ.N    R0,??simple_udp_register_3
//  128     return 0;
//  129   }
//  130   return 1;
        MOVS     R0,#+1
??simple_udp_register_3:
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock3
//  131 }
//  132 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function process_thread_simple_udp_process
        THUMB
//  133 PROCESS_THREAD(simple_udp_process, ev, data)
//  134 {
process_thread_simple_udp_process:
        PUSH     {R4-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+28
        MOV      R4,R0
        SUB      SP,SP,#+12
          CFI CFA R13+40
//  135   struct simple_udp_connection *c;
//  136   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        MOV      R5,R2
        CBZ.N    R0,??process_thread_simple_udp_process_0
        CMP      R0,#+139
        BEQ.N    ??process_thread_simple_udp_process_1
        B.N      ??process_thread_simple_udp_process_2
//  137   
//  138   while(1) {
//  139     PROCESS_WAIT_EVENT();
??process_thread_simple_udp_process_0:
        MOVS     R0,#+139
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+12
          CFI CFA R13+28
        MOVS     R0,#+1
        POP      {R4-R9,PC}
          CFI CFA R13+40
//  140     if(ev == tcpip_event) {
??process_thread_simple_udp_process_1:
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_simple_udp_process_0
//  141 
//  142       /* An appstate pointer is passed to use from the IP stack
//  143          through the 'data' pointer. We registered this appstate when
//  144          we did the udp_new() call in simple_udp_register() as the
//  145          struct simple_udp_connection pointer. So we extract this
//  146          pointer and use it when calling the reception callback. */
//  147       c = (struct simple_udp_connection *)data;
//  148       //if (c->local_port)
//  149 
//  150       /* Defensive coding: although the appstate *should* be non-null
//  151          here, we make sure to avoid the program crashing on us. */
//  152       if(c != NULL) {
        CMP      R5,#+0
        BEQ.N    ??process_thread_simple_udp_process_0
//  153 
//  154         /* If we were called because of incoming data, we should call
//  155            the reception callback. */
//  156         if(uip_newdata()) {
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??process_thread_simple_udp_process_0
//  157           /* Copy the data from the uIP data buffer into our own
//  158              buffer to avoid the uIP buffer being messed with by the
//  159              callee. */
//  160           memcpy(databuffer, uip_appdata, uip_datalen());
        LDR.N    R0,??DataTable2_4
        LDR.N    R7,??DataTable2_5
        LDR      R1,[R0, #+0]
        LDR.N    R6,??DataTable2_6
        LDRH     R2,[R7, #+0]
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  161 
//  162           /* Call the client process. We use the PROCESS_CONTEXT
//  163              mechanism to temporarily switch process context to the
//  164              client process. */
//  165           if(c->receive_callback != NULL) {
        LDR      R0,[R5, #+24]
        CMP      R0,#+0
        BEQ.N    ??process_thread_simple_udp_process_0
//  166             PROCESS_CONTEXT_BEGIN(c->client_process);
        LDR.W    R8,??DataTable2_1
        LDR      R0,[R5, #+32]
        LDR      R9,[R8, #+0]
//  167             c->receive_callback(c,
//  168                                 &(UIP_IP_BUF->srcipaddr),
//  169                                 UIP_HTONS(UIP_IP_BUF->srcport),
//  170                                 &(UIP_IP_BUF->destipaddr),
//  171                                 UIP_HTONS(UIP_IP_BUF->destport),
//  172                                 databuffer, uip_datalen());
        LDRH     R3,[R7, #+0]
        STR      R0,[R8, #+0]
        STR      R3,[SP, #+8]
        STR      R6,[SP, #+4]
        LDR.N    R0,??DataTable2_7
        LDRH     R2,[R0, #+42]
        LDRH     R1,[R0, #+40]
        LSRS     R3,R2,#+8
        ORR      R2,R3,R2, LSL #+8
        UXTH     R2,R2
        STR      R2,[SP, #+0]
        ADD      R3,R0,#+24
        LSRS     R2,R1,#+8
        ORR      R2,R2,R1, LSL #+8
        ADD      R1,R0,#+8
        MOV      R0,R5
        LDR      R5,[R5, #+24]
        UXTH     R2,R2
          CFI FunCall
        BLX      R5
//  173             PROCESS_CONTEXT_END();
        STR      R9,[R8, #+0]
        B.N      ??process_thread_simple_udp_process_0
//  174           }
//  175         }
//  176       }
//  177     }
//  178 
//  179   }
//  180 
//  181   PROCESS_END();
??process_thread_simple_udp_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+12
          CFI CFA R13+28
        MOVS     R0,#+3
        POP      {R4-R9,PC}       ;; return
          CFI EndBlock cfiBlock4
//  182 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     started

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     process_current

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     tcpip_event

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     uip_flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     databuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     uip_aligned_buf

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "Simple UDP process"
        DC8 0

        END
//  183 /*---------------------------------------------------------------------------*/
//  184 /** @} */
// 
// 1 516 bytes in section .bss
//    20 bytes in section .data
//    20 bytes in section .rodata
//   374 bytes in section .text
// 
//   374 bytes of CODE  memory
//    20 bytes of CONST memory
// 1 536 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
