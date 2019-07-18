///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:58
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-ipv4-dhcp.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-ipv4-dhcp.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ip64-ipv4-dhcp.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ip64_addr_4to6
        EXTERN ip64_dhcpc_appcall
        EXTERN ip64_dhcpc_init
        EXTERN ip64_dhcpc_request
        EXTERN ip64_eth_addr
        EXTERN ip64_set_draddr
        EXTERN ip64_set_hostaddr
        EXTERN ip64_set_netmask
        EXTERN process_start
        EXTERN tcpip_event
        EXTERN xprintf

        PUBLIC ip64_dhcpc_configured
        PUBLIC ip64_dhcpc_unconfigured
        PUBLIC ip64_ipv4_dhcp_init
        PUBLIC ip64_ipv4_dhcp_process
        PUBLIC uip_hostaddr
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-ipv4-dhcp.c
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
//   31 #include "contiki.h"
//   32 #include "contiki-net.h"
//   33 #include "ip64-dhcpc.h"
//   34 
//   35 #include "ip64.h"
//   36 #include "ip64-eth.h"
//   37 #include "ip64-addr.h"
//   38 
//   39 #include <stdio.h>
//   40 
//   41 #define DEBUG 1
//   42 
//   43 #if DEBUG
//   44 #include "sysprintf.h"
//   45 #else
//   46 #define PRINTF(...)
//   47 #endif
//   48 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   49 PROCESS(ip64_ipv4_dhcp_process, "IPv4 DHCP");
ip64_ipv4_dhcp_process:
        DATA
        DC32 0H, ?_0, process_thread_ip64_ipv4_dhcp_process
        DC8 0, 0, 0, 0
//   50 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   51 uip_ipaddr_t uip_hostaddr; /* Needed because it is referenced by dhcpc.c */
uip_hostaddr:
        DS8 16
//   52 
//   53 
//   54 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ip64_ipv4_dhcp_init
        THUMB
//   55 void
//   56 ip64_ipv4_dhcp_init(void)
//   57 {
ip64_ipv4_dhcp_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   58   PRINTF("Starting DHCPv4\n");
        ADR.W    R0,?_1
          CFI FunCall xprintf
        BL       xprintf
//   59   process_start(&ip64_ipv4_dhcp_process, NULL);
        LDR.N    R0,??DataTable6
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
          CFI FunCall process_start
        B.W      process_start
          CFI EndBlock cfiBlock0
//   60 }
//   61 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function process_thread_ip64_ipv4_dhcp_process
        THUMB
//   62 PROCESS_THREAD(ip64_ipv4_dhcp_process, ev, data)
//   63 {
process_thread_ip64_ipv4_dhcp_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R1
        MOV      R1,R2
//   64   PROCESS_BEGIN();
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_ip64_ipv4_dhcp_process_0
        CMP      R2,#+73
        BEQ.N    ??process_thread_ip64_ipv4_dhcp_process_1
        B.N      ??process_thread_ip64_ipv4_dhcp_process_2
//   65 
//   66   ip64_dhcpc_init(&ip64_eth_addr, sizeof(ip64_eth_addr));
??process_thread_ip64_ipv4_dhcp_process_0:
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6_1
          CFI FunCall ip64_dhcpc_init
        BL       ip64_dhcpc_init
//   67 
//   68   PRINTF("Inited\n");
        ADR.W    R0,?_2
          CFI FunCall xprintf
        BL       xprintf
//   69 
//   70   ip64_dhcpc_request();
          CFI FunCall ip64_dhcpc_request
        BL       ip64_dhcpc_request
//   71   PRINTF("Requested\n");
        ADR.W    R0,?_3
          CFI FunCall xprintf
        BL       xprintf
//   72   while(1) {
//   73     PROCESS_WAIT_EVENT();
??process_thread_ip64_ipv4_dhcp_process_3:
        MOVS     R0,#+73
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R4,PC}
//   74 
//   75     if(ev == tcpip_event ||
//   76        ev == PROCESS_EVENT_TIMER) {
??process_thread_ip64_ipv4_dhcp_process_1:
        LDR.N    R2,??DataTable6_2
        LDRB     R2,[R2, #+0]
        CMP      R0,R2
        IT       NE 
        CMPNE    R0,#+136
        BNE.N    ??process_thread_ip64_ipv4_dhcp_process_3
//   77       ip64_dhcpc_appcall(ev, data);
          CFI FunCall ip64_dhcpc_appcall
        BL       ip64_dhcpc_appcall
        B.N      ??process_thread_ip64_ipv4_dhcp_process_3
//   78     }
//   79   }
//   80 
//   81   PROCESS_END();
??process_thread_ip64_ipv4_dhcp_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   82 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     ip64_ipv4_dhcp_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     ip64_eth_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     tcpip_event
//   83 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ip64_dhcpc_configured
        THUMB
//   84 void
//   85 ip64_dhcpc_configured(const struct ip64_dhcpc_state *s)
//   86 {
ip64_dhcpc_configured:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOV      R4,R0
//   87   uip_ip6addr_t ip6dnsaddr;
//   88   PRINTF("DHCP Configured with %d.%d.%d.%d\n",
//   89 	 s->ipaddr.u8[0], s->ipaddr.u8[1],
//   90 	 s->ipaddr.u8[2], s->ipaddr.u8[3]);
        ADD      R5,R4,#+44
        SUB      SP,SP,#+20
          CFI CFA R13+32
        LDRB     R0,[R5, #+3]
        STR      R0,[SP, #+0]
        LDRB     R3,[R5, #+2]
        LDRB     R2,[R5, #+1]
        LDRB     R1,[R4, #+44]
        ADR.W    R0,?_4
          CFI FunCall xprintf
        BL       xprintf
//   91 
//   92   ip64_set_hostaddr((uip_ip4addr_t *)&s->ipaddr);
        MOV      R0,R5
          CFI FunCall ip64_set_hostaddr
        BL       ip64_set_hostaddr
//   93   ip64_set_netmask((uip_ip4addr_t *)&s->netmask);
        ADD      R0,R4,#+60
          CFI FunCall ip64_set_netmask
        BL       ip64_set_netmask
//   94   ip64_set_draddr((uip_ip4addr_t *)&s->default_router);
        ADD      R0,R4,#+92
          CFI FunCall ip64_set_draddr
        BL       ip64_set_draddr
//   95   ip64_addr_4to6((uip_ip4addr_t *)&s->dnsaddr, &ip6dnsaddr);
        ADD      R1,SP,#+4
        ADD      R0,R4,#+76
          CFI FunCall ip64_addr_4to6
        BL       ip64_addr_4to6
//   96   //  mdns_conf(&ip6dnsaddr);
//   97 }
        ADD      SP,SP,#+20
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock2
//   98 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ip64_dhcpc_unconfigured
          CFI NoCalls
        THUMB
//   99 void
//  100 ip64_dhcpc_unconfigured(const struct ip64_dhcpc_state *s)
//  101 {
//  102 }
ip64_dhcpc_unconfigured:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "Starting DHCPv4\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "Inited\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "Requested\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "DHCP Configured with %d.%d.%d.%d\012"
        DC8 0, 0

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
        DC8 "IPv4 DHCP"
        DC8 0, 0

        END
//  103 /*---------------------------------------------------------------------------*/
// 
//  16 bytes in section .bss
//  16 bytes in section .data
//  12 bytes in section .rodata
// 258 bytes in section .text
// 
// 258 bytes of CODE  memory
//  12 bytes of CONST memory
//  32 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
