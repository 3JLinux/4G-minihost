///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:46
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-udp-packet.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-udp-packet.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip-udp-packet.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN tcpip_ipv6_output
        EXTERN uip_aligned_buf
        EXTERN uip_process
        EXTERN uip_slen
        EXTERN uip_udp_conn

        PUBLIC uip_udp_packet_send
        PUBLIC uip_udp_packet_sendto
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-udp-packet.c
//    1 /*
//    2  * Copyright (c) 2006, Swedish Institute of Computer Science.
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
//   35  *         Module for sending UDP packets through uIP.
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  */
//   39 
//   40 #include "contiki-conf.h"
//   41 
//   42 extern uint16_t uip_slen;
//   43 
//   44 #include "net/ip/uip-udp-packet.h"
//   45 #include "net/ipv6/multicast/uip-mcast6.h"
//   46 
//   47 #include <string.h>
//   48 
//   49 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function uip_udp_packet_send
        THUMB
//   50 void
//   51 uip_udp_packet_send(struct uip_udp_conn *c, const void *data, int len)
//   52 {
uip_udp_packet_send:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   53 #if UIP_UDP
//   54   if(data != NULL) {
        LDR.N    R4,??DataTable1
        CBZ.N    R1,??uip_udp_packet_send_0
//   55     uip_udp_conn = c;
        LDR.N    R3,??DataTable1_1
//   56     uip_slen = len;
        STRH     R2,[R4, #+0]
        STR      R0,[R3, #+0]
//   57     memcpy(&uip_buf[UIP_LLH_LEN + UIP_IPUDPH_LEN], data,
//   58            len > UIP_BUFSIZE - UIP_LLH_LEN - UIP_IPUDPH_LEN?
//   59            UIP_BUFSIZE - UIP_LLH_LEN - UIP_IPUDPH_LEN: len);
        MOVW     R0,#+1467
        CMP      R2,R0
        IT       GE 
        MOVWGE   R2,#+1466
        LDR.N    R0,??DataTable1_2
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   60     uip_process(UIP_UDP_SEND_CONN);
        MOVS     R0,#+4
          CFI FunCall uip_process
        BL       uip_process
//   61 
//   62 #if UIP_CONF_IPV6_MULTICAST
//   63   /* Let the multicast engine process the datagram before we send it */
//   64   if(uip_is_addr_mcast_routable(&uip_udp_conn->ripaddr)) {
//   65     UIP_MCAST6.out();
//   66   }
//   67 #endif /* UIP_IPV6_MULTICAST */
//   68 
//   69 #if NETSTACK_CONF_WITH_IPV6
//   70     tcpip_ipv6_output();
          CFI FunCall tcpip_ipv6_output
        BL       tcpip_ipv6_output
//   71 #else
//   72     if(uip_len > 0) {
//   73       tcpip_output();
//   74     }
//   75 #endif
//   76   }
//   77   uip_slen = 0;
??uip_udp_packet_send_0:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
//   78 #endif /* UIP_UDP */
//   79 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   80 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function uip_udp_packet_sendto
        THUMB
//   81 void
//   82 uip_udp_packet_sendto(struct uip_udp_conn *c, const void *data, int len,
//   83 		      const uip_ipaddr_t *toaddr, uint16_t toport)
//   84 {
uip_udp_packet_sendto:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R6,R3
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R4,R0
        MOV      R5,R1
        MOV      R8,R2
//   85   uip_ipaddr_t curaddr;
//   86   uint16_t curport;
//   87 
//   88   if(toaddr != NULL) {
        BEQ.N    ??uip_udp_packet_sendto_0
//   89     /* Save current IP addr/port. */
//   90     uip_ipaddr_copy(&curaddr, &c->ripaddr);
        ADD      R0,SP,#+0
        MOV      R1,R4
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   91     curport = c->rport;
        LDRH     R7,[R4, #+18]
//   92 
//   93     /* Load new IP addr/port */
//   94     uip_ipaddr_copy(&c->ripaddr, toaddr);
        MOV      R0,R4
        MOV      R1,R6
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   95     c->rport = toport;
        LDR      R0,[SP, #+40]
//   96 
//   97     uip_udp_packet_send(c, data, len);
        LDR.N    R6,??DataTable1
        STRH     R0,[R4, #+18]
        CBZ.N    R5,??uip_udp_packet_sendto_1
        LDR.N    R0,??DataTable1_1
        STRH     R8,[R6, #+0]
        STR      R4,[R0, #+0]
        MOVW     R0,#+1467
        CMP      R8,R0
        IT       GE 
        MOVWGE   R8,#+1466
        MOV      R2,R8
        MOV      R1,R5
        LDR.N    R0,??DataTable1_2
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R0,#+4
          CFI FunCall uip_process
        BL       uip_process
          CFI FunCall tcpip_ipv6_output
        BL       tcpip_ipv6_output
??uip_udp_packet_sendto_1:
        MOVS     R0,#+0
        STRH     R0,[R6, #+0]
//   98 
//   99     /* Restore old IP addr/port */
//  100     uip_ipaddr_copy(&c->ripaddr, &curaddr);
        ADD      R1,SP,#+0
        MOV      R0,R4
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  101     c->rport = curport;
        STRH     R7,[R4, #+18]
//  102   }
//  103 }
??uip_udp_packet_sendto_0:
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     uip_slen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     uip_udp_conn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     uip_aligned_buf+0x30

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  104 /*---------------------------------------------------------------------------*/
// 
// 166 bytes in section .text
// 
// 166 bytes of CODE memory
//
//Errors: none
//Warnings: 1
