///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:56
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-eth-interface.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-eth-interface.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ip64-eth-interface.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN enc28j60_ip64_driver
        EXTERN ip64_4to6
        EXTERN ip64_6to4
        EXTERN ip64_arp_arp_input
        EXTERN ip64_arp_check_cache
        EXTERN ip64_arp_create_arp_request
        EXTERN ip64_arp_create_ethhdr
        EXTERN ip64_packet_buffer
        EXTERN tcpip_input
        EXTERN uip_aligned_buf
        EXTERN uip_len

        PUBLIC ip64_eth_interface
        PUBLIC ip64_eth_interface_input
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-eth-interface.c
//    1 /*
//    2  * Copyright (c) 2012, Thingsquare, http://www.thingsquare.com/.
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
//   13  * 3. Neither the name of the copyright holder nor the names of its
//   14  *    contributors may be used to endorse or promote products derived
//   15  *    from this software without specific prior written permission.
//   16  *
//   17  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//   18  * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//   19  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
//   20  * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
//   21  * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
//   22  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//   23  * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   24  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   25  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
//   26  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//   27  * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
//   28  * OF THE POSSIBILITY OF SUCH DAMAGE.
//   29  *
//   30  */
//   31 #include "net/ip/uip.h"
//   32 #include "net/ipv6/uip-ds6.h"
//   33 #include "dev/slip.h"
//   34 
//   35 #include "ip64.h"
//   36 #include "ip64-arp.h"
//   37 #include "ip64-eth-interface.h"
//   38 
//   39 #include <string.h>
//   40 
//   41 #define DEBUG 1
//   42 
//   43 #if DEBUG
//   44 #include "sysprintf.h"
//   45 #else
//   46 #define PRINTF(...)
//   47 #endif
//   48 
//   49 #define UIP_IP_BUF        ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
//   50 
//   51 #define DEBUG DEBUG_NONE
//   52 #include "net/ip/uip-debug.h"
//   53 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ip64_eth_interface_input
        THUMB
//   54 void
//   55 ip64_eth_interface_input(uint8_t *packet, uint16_t len)
//   56 {
ip64_eth_interface_input:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R0,R1
//   57   struct ip64_eth_hdr *ethhdr;
//   58   ethhdr = (struct ip64_eth_hdr *)packet;
//   59 
//   60   if(ethhdr->type == UIP_HTONS(IP64_ETH_TYPE_ARP)) {
        LDRH     R1,[R4, #+12]
        CMP      R1,#+1544
        BNE.N    ??ip64_eth_interface_input_0
//   61     len = ip64_arp_arp_input(packet, len);
        MOV      R1,R0
        MOV      R0,R4
          CFI FunCall ip64_arp_arp_input
        BL       ip64_arp_arp_input
//   62 
//   63     if(len > 0) {
        CBZ.N    R0,??ip64_eth_interface_input_1
//   64       IP64_ETH_DRIVER.output(packet, len);
        MOV      R1,R0
        MOV      R0,R4
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.N    R2,??DataTable2
        LDR      R2,[R2, #+4]
          CFI FunCall
        ANOTE "tailcall"
        BX       R2
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//   65     }
//   66   } else if(ethhdr->type == UIP_HTONS(IP64_ETH_TYPE_IP) &&
//   67 	    len > sizeof(struct ip64_eth_hdr)) {
??ip64_eth_interface_input_0:
        CMP      R1,#+8
        BNE.N    ??ip64_eth_interface_input_1
        CMP      R0,#+15
        BCC.N    ??ip64_eth_interface_input_1
//   68     PRINTF("-------------->\n");
//   69     uip_len = ip64_4to6(&packet[sizeof(struct ip64_eth_hdr)],
//   70 			len - sizeof(struct ip64_eth_hdr),
//   71 			&uip_buf[UIP_LLH_LEN]);
        SUB      R1,R0,#+14
        LDR.N    R5,??DataTable2_1
        LDR.N    R2,??DataTable2_2
        UXTH     R1,R1
        ADD      R0,R4,#+14
          CFI FunCall ip64_4to6
        BL       ip64_4to6
        STRH     R0,[R5, #+0]
//   72     if(uip_len > 0) {
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        ITT      NE 
//   73       PRINTF("ip64_interface_process: converted %d bytes\n", uip_len);
//   74       PRINTF("ip64_interface_process: converted %d bytes\n", uip_len);
//   75 
//   76       PRINTF("ip64-interface: input source ");
//   77       PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//   78       PRINTF(" destination ");
//   79       PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//   80       PRINTF("\n");
//   81 
//   82       tcpip_input();
        POPNE    {R0,R4,R5,LR}
          CFI FunCall tcpip_input
        BNE.W    tcpip_input
//   83       PRINTF("Done\n");
//   84     }
//   85   }
//   86 }
??ip64_eth_interface_input_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//   87 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function init
          CFI NoCalls
        THUMB
//   88 static void
//   89 init(void)
//   90 {
//   91   PRINTF("ip64-eth-interface: init\n");
//   92 }
init:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   93 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function output
        THUMB
//   94 static void
//   95 output(void)
//   96 {
output:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   97   int len, ret;
//   98 
//   99 
//  100   PRINTF("ip64-interface: output source ");
//  101   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  102   PRINTF(" destination ");
//  103   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  104   PRINTF("\n");
//  105 
//  106   PRINTF("<--------------\n");
//  107   len = ip64_6to4(&uip_buf[UIP_LLH_LEN], uip_len,
//  108 		  &ip64_packet_buffer[sizeof(struct ip64_eth_hdr)]);
        LDR.N    R4,??DataTable2_3
        LDR      R0,[R4, #+0]
        ADD      R2,R0,#+14
        LDR.N    R0,??DataTable2_1
        LDRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable2_2
          CFI FunCall ip64_6to4
        BL       ip64_6to4
        MOV      R5,R0
//  109 
//  110   PRINTF("ip64-interface: output len %d\n", len);
//  111   if(len > 0) {
        CMP      R5,#+1
        BLT.N    ??output_0
//  112     if(ip64_arp_check_cache(&ip64_packet_buffer[sizeof(struct ip64_eth_hdr)])) {
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+14
          CFI FunCall ip64_arp_check_cache
        BL       ip64_arp_check_cache
        CMP      R0,#+0
        LDR      R0,[R4, #+0]
        ADD      R1,R0,#+14
        BEQ.N    ??output_1
//  113       PRINTF("Create header\n");
//  114       ret = ip64_arp_create_ethhdr(ip64_packet_buffer,
//  115 				   &ip64_packet_buffer[sizeof(struct ip64_eth_hdr)]);
          CFI FunCall ip64_arp_create_ethhdr
        BL       ip64_arp_create_ethhdr
//  116       if(ret > 0) {
        CMP      R0,#+1
        BLT.N    ??output_0
//  117 	len += ret;
//  118 	IP64_ETH_DRIVER.output(ip64_packet_buffer, len);
        ADDS     R1,R0,R5
        UXTH     R1,R1
        B.N      ??output_2
//  119       }
//  120     } else {
//  121       PRINTF("Create request\n");
//  122       len = ip64_arp_create_arp_request(ip64_packet_buffer,
//  123 					&ip64_packet_buffer[sizeof(struct ip64_eth_hdr)]);
??output_1:
          CFI FunCall ip64_arp_create_arp_request
        BL       ip64_arp_create_arp_request
//  124       IP64_ETH_DRIVER.output(ip64_packet_buffer, len);
        UXTH     R1,R0
??output_2:
        LDR      R0,[R4, #+0]
        LDR.N    R2,??DataTable2
        LDR      R2,[R2, #+4]
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall
        ANOTE "tailcall"
        BX       R2
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  125     }
//  126   }
//  127 }
??output_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     enc28j60_ip64_driver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     ip64_packet_buffer
//  128 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  129 const struct uip_fallback_interface ip64_eth_interface = {
ip64_eth_interface:
        DC32 init, output

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  130   init,
//  131   output
//  132 };
//  133 /*---------------------------------------------------------------------------*/
// 
//   8 bytes in section .rodata
// 178 bytes in section .text
// 
// 178 bytes of CODE  memory
//   8 bytes of CONST memory
//
//Errors: none
//Warnings: 3
