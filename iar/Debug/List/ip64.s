///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:00
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ip64.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN enc28j60_ip64_driver
        EXTERN ip64_addr_4to6
        EXTERN ip64_addr_6to4
        EXTERN ip64_addr_copy4
        EXTERN ip64_addr_copy6
        EXTERN ip64_addrmap_create
        EXTERN ip64_addrmap_lookup
        EXTERN ip64_addrmap_lookup_port
        EXTERN ip64_addrmap_set_lifetime
        EXTERN ip64_addrmap_set_recycleble
        EXTERN ip64_eth_interface
        EXTERN ip64_ipv4_dhcp_init
        EXTERN ip64_special_ports_incoming_is_special
        EXTERN ip64_special_ports_outgoing_is_special
        EXTERN ip64_special_ports_translate_incoming
        EXTERN ip64_special_ports_translate_outgoing
        EXTERN uip_ds6_if
        EXTERN uip_htons

        PUBLIC ip64_4to6
        PUBLIC ip64_6to4
        PUBLIC ip64_get_draddr
        PUBLIC ip64_get_hostaddr
        PUBLIC ip64_get_netmask
        PUBLIC ip64_hostaddr_is_configured
        PUBLIC ip64_init
        PUBLIC ip64_packet_buffer
        PUBLIC ip64_packet_buffer_aligned
        PUBLIC ip64_packet_buffer_maxlen
        PUBLIC ip64_set_draddr
        PUBLIC ip64_set_hostaddr
        PUBLIC ip64_set_ipv4_address
        PUBLIC ip64_set_ipv6_address
        PUBLIC ip64_set_netmask
        PUBLIC ip64_uip_fallback_interface
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64.c
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
//   31 
//   32 /* The ip64 module is a translator between IPv6 and IPv4 packets. The
//   33    IPv6 packets come from an IPv6 network and are translated into a
//   34    single IPv4 host, as shown in the ASCII graphics below.  The IPv6
//   35    network typically is a low-power RF network and the IPv4 network
//   36    typically is an Ethernet.
//   37 
//   38    +----------------+
//   39    |                |
//   40    |                |   +------+
//   41    |  IPv6 network  |---| ip64 |-- IPv4 network
//   42    |                |   +------+
//   43    |                |
//   44    +----------------+
//   45 
//   46    ip64 maps all IPv6 addresses from inside the IPv6 network to its
//   47    own IPv4 address. This IPv4 address would typically have been
//   48    obtained with DHCP from the IPv4 network, but the exact way this
//   49    has been obtained is outside the scope of the ip64 module. The IPv4
//   50    address is given to the ip64 module through the
//   51    ip64_set_ipv4_address() function.
//   52 */
//   53 
//   54 #include "ip64.h"
//   55 #include "ip64-addr.h"
//   56 #include "ip64-addrmap.h"
//   57 #include "ip64-conf.h"
//   58 #include "ip64-special-ports.h"
//   59 #include "ip64-eth-interface.h"
//   60 #include "ip64-slip-interface.h"
//   61 
//   62 #include "ip64-ipv4-dhcp.h"
//   63 #include "contiki-net.h"
//   64 
//   65 #include "net/ip/uip-debug.h"
//   66 
//   67 #include <string.h> /* for memcpy() */
//   68 #include <stdio.h> /* for printf() */
//   69 
//   70 
//   71 
//   72 #define DEBUG 0
//   73 
//   74 #if DEBUG
//   75 #include "sysprintf.h"
//   76 #else /* DEBUG */
//   77 #define PRINTF(...)
//   78 #endif /* DEBUG */
//   79 
//   80 struct ipv6_hdr {
//   81   uint8_t vtc;
//   82   uint8_t tcflow;
//   83   uint16_t flow;
//   84   uint8_t len[2];
//   85   uint8_t nxthdr, hoplim;
//   86   uip_ip6addr_t srcipaddr, destipaddr;
//   87 };
//   88 
//   89 struct ipv4_hdr {
//   90   uint8_t vhl,
//   91     tos,
//   92     len[2],
//   93     ipid[2],
//   94     ipoffset[2],
//   95     ttl,
//   96     proto;
//   97   uint16_t ipchksum;
//   98   uip_ip4addr_t srcipaddr, destipaddr;
//   99 };
//  100 
//  101 #define EPHEMERAL_PORTRANGE 1024
//  102 
//  103 #define IPV6_HDRLEN 40
//  104 #define IPV4_HDRLEN 20
//  105 
//  106 #define IP_PROTO_ICMPV4  1
//  107 #define IP_PROTO_TCP     6
//  108 #define IP_PROTO_UDP     17
//  109 #define IP_PROTO_ICMPV6  58
//  110 
//  111 #define ICMP_ECHO_REPLY  0
//  112 #define ICMP_ECHO        8
//  113 #define ICMP6_ECHO_REPLY 129
//  114 #define ICMP6_ECHO       128
//  115 
//  116 struct tcp_hdr {
//  117   uint16_t srcport;
//  118   uint16_t destport;
//  119   uint8_t seqno[4];
//  120   uint8_t ackno[4];
//  121   uint8_t tcpoffset;
//  122   uint8_t flags;
//  123   uint8_t  wnd[2];
//  124   uint16_t tcpchksum;
//  125   uint8_t urgp[2];
//  126   uint8_t optdata[4];
//  127 };
//  128 
//  129 struct udp_hdr {
//  130   uint16_t srcport;
//  131   uint16_t destport;
//  132   uint16_t udplen;
//  133   uint16_t udpchksum;
//  134 };
//  135 
//  136 struct icmpv4_hdr {
//  137   uint8_t type, icode;
//  138   uint16_t icmpchksum;
//  139 };
//  140 
//  141 struct icmpv6_hdr {
//  142   uint8_t type, icode;
//  143   uint16_t icmpchksum;
//  144   uint16_t id, seqno;
//  145 };
//  146 
//  147 #define BUFSIZE UIP_BUFSIZE
//  148 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  149 uip_buf_t ip64_packet_buffer_aligned;
ip64_packet_buffer_aligned:
        DS8 1516

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  150 uint8_t *ip64_packet_buffer = ip64_packet_buffer_aligned.u8;
ip64_packet_buffer:
        DATA
        DC32 ip64_packet_buffer_aligned
//  151 

        SECTION `.data`:DATA:REORDER:NOROOT(1)
//  152 uint16_t ip64_packet_buffer_maxlen = BUFSIZE;
ip64_packet_buffer_maxlen:
        DATA
        DC16 1514
//  153 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  154 static uip_ip4addr_t ip64_hostaddr;
//  155 static uip_ip4addr_t ip64_netmask;
//  156 static uip_ip4addr_t ip64_draddr;
//  157 
//  158 static uint16_t ipid;
//  159 static uint8_t ip64_hostaddr_configured = 0;
//  160 
//  161 static uip_ip6addr_t ipv6_local_address;
//  162 static uint8_t ipv6_local_address_configured = 0;
//  163 
//  164 static uip_ip4addr_t ipv4_broadcast_addr;
ipv4_broadcast_addr:
        DS8 4
        DS8 1
        DS8 3
        DS8 4
        DS8 4
        DS8 2
        DS8 2
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ip64_draddr:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1
//  165 
//  166 /* Lifetimes for address mappings. */
//  167 #define SYN_LIFETIME     (CLOCK_SECOND * 20)
//  168 #define RST_LIFETIME     (CLOCK_SECOND * 30)
//  169 #define DEFAULT_LIFETIME (CLOCK_SECOND * 60 * 5)
//  170 
//  171 /* TCP flag defines */
//  172 #define TCP_FIN 0x01
//  173 #define TCP_SYN 0x02
//  174 #define TCP_RST 0x04
//  175 
//  176 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ip64_init
        THUMB
//  177 void
//  178 ip64_init(void)
//  179 {
ip64_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  180   int i;
//  181   uint8_t state;
//  182 
//  183   uip_ipaddr(&ipv4_broadcast_addr, 255,255,255,255);
        LDR.W    R4,??DataTable12
        MOVS     R0,#+255
        STRB     R0,[R4, #+0]
        STRB     R0,[R4, #+1]
        STRB     R0,[R4, #+2]
        STRB     R0,[R4, #+3]
//  184   ip64_hostaddr_configured = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+4]
//  185 
//  186   PRINTF("ip64_init\n");
//  187   IP64_ETH_DRIVER.init();
        LDR.W    R0,??DataTable12_1
        LDR      R0,[R0, #+0]
          CFI FunCall
        BLX      R0
//  188 #if IP64_CONF_DHCP
//  189   ip64_ipv4_dhcp_init();
          CFI FunCall ip64_ipv4_dhcp_init
        BL       ip64_ipv4_dhcp_init
//  190 #endif /* IP64_CONF_DHCP */
//  191 
//  192   /* Specify an IPv6 address for local communication to the
//  193      host. We'll just pick the first one we find in our list. */
//  194   for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
        LDR.W    R1,??DataTable12_2
//  195     state = uip_ds6_if.addr_list[i].state;
        LDRB     R2,[R1, #+42]
//  196     PRINTF("i %d used %d\n", i, uip_ds6_if.addr_list[i].isused);
//  197     if(uip_ds6_if.addr_list[i].isused &&
//  198        (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
        LDRB     R3,[R1, #+24]
        MOVS     R0,#+0
        CBZ.N    R3,??ip64_init_0
        CMP      R2,#+0
        IT       NE 
        CMPNE    R2,#+1
        BNE.N    ??ip64_init_0
//  199       ip64_set_ipv6_address(&uip_ds6_if.addr_list[i].ipaddr);
??ip64_init_1:
        ADD      R0,R1,R0, LSL #+5
        ADD      R1,R0,#+26
        ADD      R0,R4,#+20
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall ip64_addr_copy6
        B.W      ip64_addr_copy6
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  200       break;
//  201     }
??ip64_init_0:
        LDRB     R2,[R1, #+74]
        LDRB     R3,[R1, #+56]
        MOVS     R0,#+1
        CBZ.N    R3,??ip64_init_2
        CMP      R2,#+0
        IT       NE 
        CMPNE    R2,#+1
        BEQ.N    ??ip64_init_1
??ip64_init_2:
        LDRB     R2,[R1, #+106]
        LDRB     R3,[R1, #+88]
        MOVS     R0,#+2
        CBZ.N    R3,??ip64_init_3
        CMP      R2,#+0
        IT       NE 
        CMPNE    R2,#+1
        BEQ.N    ??ip64_init_1
//  202   }
//  203 
//  204 }
??ip64_init_3:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//  205 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ip64_set_hostaddr
        THUMB
//  206 void
//  207 ip64_set_hostaddr(const uip_ip4addr_t *hostaddr)
//  208 {
//  209   ip64_hostaddr_configured = 1;
ip64_set_hostaddr:
        LDR.W    R2,??DataTable12
        MOVS     R1,#+1
        STRB     R1,[R2, #+4]
//  210   ip64_addr_copy4(&ip64_hostaddr, hostaddr);
        MOV      R1,R0
        ADD      R0,R2,#+8
          CFI FunCall ip64_addr_copy4
        B.W      ip64_addr_copy4
          CFI EndBlock cfiBlock1
//  211 }
//  212 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ip64_set_netmask
        THUMB
//  213 void
//  214 ip64_set_netmask(const uip_ip4addr_t *netmask)
//  215 {
//  216   ip64_addr_copy4(&ip64_netmask, netmask);
ip64_set_netmask:
        MOV      R1,R0
        LDR.W    R0,??DataTable12_3
          CFI FunCall ip64_addr_copy4
        B.W      ip64_addr_copy4
          CFI EndBlock cfiBlock2
//  217 }
//  218 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ip64_set_draddr
        THUMB
//  219 void
//  220 ip64_set_draddr(const uip_ip4addr_t *draddr)
//  221 {
//  222   ip64_addr_copy4(&ip64_draddr, draddr);
ip64_set_draddr:
        MOV      R1,R0
        LDR.W    R0,??DataTable12_4
          CFI FunCall ip64_addr_copy4
        B.W      ip64_addr_copy4
          CFI EndBlock cfiBlock3
//  223 }
//  224 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ip64_get_hostaddr
          CFI NoCalls
        THUMB
//  225 const uip_ip4addr_t *
//  226 ip64_get_hostaddr(void)
//  227 {
//  228   return &ip64_hostaddr;
ip64_get_hostaddr:
        LDR.W    R0,??DataTable12_5
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  229 }
//  230 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function ip64_get_netmask
          CFI NoCalls
        THUMB
//  231 const uip_ip4addr_t *
//  232 ip64_get_netmask(void)
//  233 {
//  234   return &ip64_netmask;
ip64_get_netmask:
        LDR.W    R0,??DataTable12_3
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  235 }
//  236 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ip64_get_draddr
          CFI NoCalls
        THUMB
//  237 const uip_ip4addr_t *
//  238 ip64_get_draddr(void)
//  239 {
//  240   return &ip64_draddr;
ip64_get_draddr:
        LDR.W    R0,??DataTable12_4
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  241 }
//  242 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ip64_set_ipv4_address
        THUMB
//  243 void
//  244 ip64_set_ipv4_address(const uip_ip4addr_t *addr, const uip_ip4addr_t *netmask)
//  245 {
ip64_set_ipv4_address:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R1
//  246   ip64_set_hostaddr(addr);
        LDR.W    R5,??DataTable12
        MOVS     R1,#+1
        STRB     R1,[R5, #+4]
        MOV      R1,R0
        ADD      R0,R5,#+8
          CFI FunCall ip64_addr_copy4
        BL       ip64_addr_copy4
//  247   ip64_set_netmask(netmask);
        MOV      R1,R4
        ADD      R0,R5,#+12
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall ip64_addr_copy4
        B.W      ip64_addr_copy4
          CFI EndBlock cfiBlock7
//  248 
//  249   PRINTF("ip64_set_ipv4_address: configuring address %d.%d.%d.%d/%d.%d.%d.%d\n",
//  250 	 ip64_hostaddr.u8[0], ip64_hostaddr.u8[1],
//  251 	 ip64_hostaddr.u8[2], ip64_hostaddr.u8[3],
//  252 	 ip64_netmask.u8[0], ip64_netmask.u8[1],
//  253 	 ip64_netmask.u8[2], ip64_netmask.u8[3]);
//  254 }
//  255 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function ip64_set_ipv6_address
        THUMB
//  256 void
//  257 ip64_set_ipv6_address(const uip_ip6addr_t *addr)
//  258 {
//  259   ip64_addr_copy6(&ipv6_local_address, (const uip_ip6addr_t *)addr);
ip64_set_ipv6_address:
        MOV      R1,R0
        LDR.W    R0,??DataTable12_6
          CFI FunCall ip64_addr_copy6
        B.W      ip64_addr_copy6
          CFI EndBlock cfiBlock8
//  260   ipv6_local_address_configured = 1;
//  261 #if DEBUG
//  262   PRINTF("ip64_set_ipv6_address: configuring address ");
//  263   uip_debug_ipaddr_print(addr);
//  264   PRINTF("\n");
//  265 #endif /* DEBUG */
//  266 }
//  267 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function chksum
          CFI NoCalls
        THUMB
//  268 static uint16_t
//  269 chksum(uint16_t sum, const uint8_t *data, uint16_t len)
//  270 {
//  271   uint16_t t;
//  272   const uint8_t *dataptr;
//  273   const uint8_t *last_byte;
//  274 
//  275   dataptr = data;
//  276   last_byte = data + len - 1;
chksum:
        ADDS     R2,R2,R1
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUBS     R2,R2,#+1
        CMP      R1,R2
        BCS.N    ??chksum_0
//  277 
//  278   while(dataptr < last_byte) {	/* At least two more bytes */
//  279     t = (dataptr[0] << 8) + dataptr[1];
??chksum_1:
        LDRB     R4,[R1, #+0]
        LDRB     R5,[R1, #+1]
        ADD      R4,R5,R4, LSL #+8
        UXTH     R4,R4
//  280     sum += t;
        ADDS     R0,R4,R0
//  281     if(sum < t) {
        UXTH     R0,R0
        CMP      R0,R4
        IT       CC 
        ADDCC    R0,R0,#+1
//  282       sum++;		/* carry */
//  283     }
//  284     dataptr += 2;
        ADDS     R1,R1,#+2
//  285   }
        CMP      R1,R2
        BCC.N    ??chksum_1
//  286 
//  287   if(dataptr == last_byte) {
??chksum_0:
        CMP      R1,R2
        BNE.N    ??chksum_2
//  288     t = (dataptr[0] << 8) + 0;
        LDRB     R1,[R1, #+0]
//  289     sum += t;
        ADD      R0,R0,R1, LSL #+8
//  290     if(sum < t) {
        UXTH     R0,R0
        CMP      R0,R1, LSL #+8
        IT       CC 
        ADDCC    R0,R0,#+1
//  291       sum++;		/* carry */
//  292     }
//  293   }
//  294 
//  295   /* Return sum in host byte order. */
//  296   return sum;
??chksum_2:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        UXTH     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  297 }
//  298 /*---------------------------------------------------------------------------*/
//  299 static uint16_t
//  300 ipv4_checksum(struct ipv4_hdr *hdr)
//  301 {
//  302   uint16_t sum;
//  303 
//  304   sum = chksum(0, (uint8_t *)hdr, IPV4_HDRLEN);
//  305   return (sum == 0) ? 0xffff : uip_htons(sum);
//  306 }
//  307 /*---------------------------------------------------------------------------*/
//  308 static uint16_t
//  309 ipv4_transport_checksum(const uint8_t *packet, uint16_t len, uint8_t proto)
//  310 {
//  311   uint16_t transport_layer_len;
//  312   uint16_t sum;
//  313   struct ipv4_hdr *v4hdr = (struct ipv4_hdr *)packet;
//  314 
//  315   transport_layer_len = len - IPV4_HDRLEN;
//  316 
//  317   /* First sum pseudoheader. */
//  318 
//  319   if(proto != IP_PROTO_ICMPV4) {
//  320     /* IP protocol and length fields. This addition cannot carry. */
//  321     sum = transport_layer_len + proto;
//  322     /* Sum IP source and destination addresses. */
//  323     sum = chksum(sum, (uint8_t *)&v4hdr->srcipaddr, 2 * sizeof(uip_ip4addr_t));
//  324   } else {
//  325     /* ping replies' checksums are calculated over the icmp-part only */
//  326     sum = 0;
//  327   }
//  328 
//  329   /* Sum transport layer header and data. */
//  330   sum = chksum(sum, &packet[IPV4_HDRLEN], transport_layer_len);
//  331 
//  332   return (sum == 0) ? 0xffff : uip_htons(sum);
//  333 }
//  334 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function ipv6_transport_checksum
        THUMB
//  335 static uint16_t
//  336 ipv6_transport_checksum(const uint8_t *packet, uint16_t len, uint8_t proto)
//  337 {
ipv6_transport_checksum:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R0,R2
//  338   uint16_t transport_layer_len;
//  339   uint16_t sum;
//  340   struct ipv6_hdr *v6hdr = (struct ipv6_hdr *)packet;
//  341 
//  342   transport_layer_len = len - IPV6_HDRLEN;
        SUB      R5,R1,#+40
//  343 
//  344   /* First sum pseudoheader. */
//  345 
//  346   /* IP protocol and length fields. This addition cannot carry. */
//  347   sum = transport_layer_len + proto;
//  348   /* Sum IP source and destination addresses. */
//  349   sum = chksum(sum, (uint8_t *)&v6hdr->srcipaddr, sizeof(uip_ip6addr_t));
        ADDS     R0,R0,R5
        MOVS     R2,#+16
        ADD      R1,R4,#+8
        UXTH     R0,R0
          CFI FunCall chksum
        BL       chksum
//  350   sum = chksum(sum, (uint8_t *)&v6hdr->destipaddr, sizeof(uip_ip6addr_t));
        MOVS     R2,#+16
        ADD      R1,R4,#+24
          CFI FunCall chksum
        BL       chksum
//  351 
//  352   /* Sum transport layer header and data. */
//  353   sum = chksum(sum, &packet[IPV6_HDRLEN], transport_layer_len);
        UXTH     R2,R5
        ADD      R1,R4,#+40
          CFI FunCall chksum
        BL       chksum
//  354 
//  355   return (sum == 0) ? 0xffff : uip_htons(sum);
        CMP      R0,#+0
        ITT      NE 
        POPNE    {R1,R4,R5,LR}
          CFI FunCall uip_htons
        BNE.W    uip_htons
        MOVW     R0,#+65535
        POP      {R1,R4,R5,PC}
          CFI EndBlock cfiBlock10
//  356 }
//  357 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function ip64_6to4
        THUMB
//  358 int
//  359 ip64_6to4(const uint8_t *ipv6packet, const uint16_t ipv6packet_len,
//  360 	  uint8_t *resultpacket)
//  361 {
ip64_6to4:
        PUSH     {R4-R7,R9,R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+28
        MOV      R4,R0
        SUB      SP,SP,#+12
          CFI CFA R13+40
        MOV      R5,R2
//  362   struct ipv4_hdr *v4hdr;
//  363   struct ipv6_hdr *v6hdr;
//  364   struct udp_hdr *udphdr;
//  365   struct tcp_hdr *tcphdr;
//  366   struct icmpv4_hdr *icmpv4hdr;
//  367   struct icmpv6_hdr *icmpv6hdr;
//  368   uint16_t ipv6len, ipv4len;
//  369   struct ip64_addrmap_entry *m;
//  370   
//  371   v6hdr = (struct ipv6_hdr *)ipv6packet;
//  372   v4hdr = (struct ipv4_hdr *)resultpacket;
//  373 
//  374   if((v6hdr->len[0] << 8) + v6hdr->len[1] <= ipv6packet_len) {
        LDRB     R0,[R4, #+5]
        LDRB     R2,[R4, #+4]
        ADD      R3,R0,R2, LSL #+8
        CMP      R1,R3
        BLT.W    ??ip64_6to4_0
//  375     ipv6len = (v6hdr->len[0] << 8) + v6hdr->len[1] + IPV6_HDRLEN;
        ADD      R0,R0,R2, LSL #+8
        ADDS     R0,R0,#+40
//  376   } else {
//  377     PRINTF("ip64_6to4: packet smaller than reported in IPv6 header, dropping\n");
//  378     return 0;
//  379   }
//  380 
//  381   /* We copy the data from the IPv6 packet into the IPv4 packet. We do
//  382      not modify the data in any way. */
//  383   memcpy(&resultpacket[IPV4_HDRLEN],
//  384 	 &ipv6packet[IPV6_HDRLEN],
//  385 	 ipv6len - IPV6_HDRLEN);
        ADD      R6,R5,#+20
        UXTH     R10,R0
        SUB      R2,R10,#+40
        ADD      R1,R4,#+40
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  386 
//  387   udphdr = (struct udp_hdr *)&resultpacket[IPV4_HDRLEN];
//  388   tcphdr = (struct tcp_hdr *)&resultpacket[IPV4_HDRLEN];
//  389   icmpv4hdr = (struct icmpv4_hdr *)&resultpacket[IPV4_HDRLEN];
        STR      R6,[SP, #+4]
//  390   icmpv6hdr = (struct icmpv6_hdr *)&ipv6packet[IPV6_HDRLEN];
//  391 
//  392   /* Translate the IPv6 header into an IPv4 header. */
//  393 
//  394   /* First the basics: the IPv4 version, header length, type of
//  395      service, and offset fields. Those are the same for all IPv4
//  396      packets we send, regardless of the values found in the IPv6
//  397      packet. */
//  398   v4hdr->vhl = 0x45;
        MOVS     R0,#+69
        STRB     R0,[R5, #+0]
//  399   v4hdr->tos = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+1]
//  400   v4hdr->ipoffset[0] = v4hdr->ipoffset[1] = 0;
        STRB     R0,[R5, #+7]
        STRB     R0,[R5, #+6]
//  401 
//  402   /* We assume that the IPv6 packet has a fixed size header with no
//  403      extension headers, and compute the length of the IPv4 packet and
//  404      place the resulting value in the IPv4 packet header. */
//  405   ipv4len = ipv6len - IPV6_HDRLEN + IPV4_HDRLEN;
        SUB      R0,R10,#+20
//  406   v4hdr->len[0] = ipv4len >> 8;
        UXTH     R9,R0
        LSR      R0,R9,#+8
        STRB     R0,[R5, #+2]
//  407   v4hdr->len[1] = ipv4len & 0xff;
        STRB     R9,[R5, #+3]
//  408 
//  409   /* For simplicity, we set a unique IP id for each outgoing IPv4
//  410      packet. */
//  411   ipid++;
        LDR.W    R7,??DataTable12
        LDRH     R0,[R7, #+16]
        ADDS     R0,R0,#+1
        STRH     R0,[R7, #+16]
//  412   v4hdr->ipid[0] = ipid >> 8;
        UXTH     R0,R0
        LSRS     R1,R0,#+8
        STRB     R1,[R5, #+4]
//  413   v4hdr->ipid[1] = ipid & 0xff;
        STRB     R0,[R5, #+5]
//  414 
//  415   /* Set the IPv4 protocol. We only support TCP, UDP, and ICMP at this
//  416      point. While the IPv4 header protocol numbers are the same as the
//  417      IPv6 next header numbers, the ICMPv4 and ICMPv6 numbers are
//  418      different so we cannot simply copy the contents of the IPv6 next
//  419      header field. */
//  420   switch(v6hdr->nxthdr) {
        LDRB     R0,[R4, #+6]
        CMP      R0,#+6
        BEQ.N    ??ip64_6to4_1
        CMP      R0,#+17
        BEQ.N    ??ip64_6to4_2
        CMP      R0,#+58
        BEQ.N    ??ip64_6to4_3
        B.N      ??ip64_6to4_0
//  421   case IP_PROTO_TCP:
//  422     PRINTF("ip64_6to4: TCP header\n");
//  423     v4hdr->proto = IP_PROTO_TCP;
??ip64_6to4_1:
        STRB     R0,[R5, #+9]
//  424 
//  425     /* Compute and check the TCP checksum - since we're going to
//  426        recompute it ourselves, we must ensure that it was correct in
//  427        the first place. */
//  428     if(ipv6_transport_checksum(ipv6packet, ipv6len,
//  429                                IP_PROTO_TCP) != 0xffff) {
        MOVS     R2,#+6
        MOV      R1,R10
        MOV      R0,R4
          CFI FunCall ipv6_transport_checksum
        BL       ipv6_transport_checksum
//  430       PRINTF("Bad TCP checksum, dropping packet\n");
//  431     }
//  432 
//  433     break;
        B.N      ??ip64_6to4_4
//  434 
//  435   case IP_PROTO_UDP:
//  436     PRINTF("ip64_6to4: UDP header\n");
//  437     v4hdr->proto = IP_PROTO_UDP;
??ip64_6to4_2:
        STRB     R0,[R5, #+9]
//  438     /* Compute and check the UDP checksum - since we're going to
//  439        recompute it ourselves, we must ensure that it was correct in
//  440        the first place. */
//  441     if(ipv6_transport_checksum(ipv6packet, ipv6len,
//  442                                IP_PROTO_UDP) != 0xffff) {
        SUB      R10,R10,#+40
        ADD      R0,R10,#+17
        MOVS     R2,#+16
        ADD      R1,R4,#+8
        UXTH     R0,R0
          CFI FunCall chksum
        BL       chksum
        MOVS     R2,#+16
        ADD      R1,R4,#+24
          CFI FunCall chksum
        BL       chksum
        UXTH     R2,R10
        ADD      R1,R4,#+40
          CFI FunCall chksum
        BL       chksum
        CBZ.N    R0,??ip64_6to4_4
          CFI FunCall uip_htons
        BL       uip_htons
        B.N      ??ip64_6to4_4
//  443       PRINTF("Bad UDP checksum, dropping packet\n");
//  444     }
//  445     break;
//  446 
//  447   case IP_PROTO_ICMPV6:
//  448     PRINTF("ip64_6to4: ICMPv6 header\n");
//  449     v4hdr->proto = IP_PROTO_ICMPV4;
??ip64_6to4_3:
        MOVS     R0,#+1
        STRB     R0,[R5, #+9]
//  450     /* Translate only ECHO_REPLY messages. */
//  451     if(icmpv6hdr->type == ICMP6_ECHO_REPLY) {
        LDRB     R0,[R4, #+40]
        CMP      R0,#+129
        BNE.W    ??ip64_6to4_0
//  452       icmpv4hdr->type = ICMP_ECHO_REPLY;
        LDR      R1,[SP, #+4]
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  453     } else {
//  454       PRINTF("ip64_6to4: ICMPv6 mapping for type %d not implemented.\n",
//  455 	     icmpv6hdr->type);
//  456       return 0;
//  457     }
//  458     break;
//  459 
//  460   default:
//  461     /* We did not recognize the next header, and we do not attempt to
//  462        translate something we do not understand, so we return 0 to
//  463        indicate that no successful translation could be made. */
//  464     PRINTF("ip64_6to4: Could not convert IPv6 next hop %d to an IPv4 protocol number.\n",
//  465 	   v6hdr->nxthdr);
//  466     return 0;
//  467   }
//  468 
//  469   /* We set the IPv4 ttl value to the hoplim number from the IPv6
//  470      header. This means that information about the IPv6 topology is
//  471      transported into to the IPv4 network. */
//  472   v4hdr->ttl = v6hdr->hoplim;
//  473 
//  474   /* We next convert the destination address. We make this conversion
//  475      with the ip64_addr_6to4() function. If the conversion
//  476      fails, ip64_addr_6to4() returns 0. If so, we also return 0 to
//  477      indicate failure. */
//  478   if(ip64_addr_6to4(&v6hdr->destipaddr,
//  479 		    &v4hdr->destipaddr) == 0) {
??ip64_6to4_4:
        ADD      R1,R5,#+16
        LDRB     R0,[R4, #+7]
        STRB     R0,[R5, #+8]
        ADD      R0,R4,#+24
          CFI FunCall ip64_addr_6to4
        BL       ip64_addr_6to4
        CMP      R0,#+0
        BEQ.W    ??ip64_6to4_0
//  480 #if DEBUG
//  481     PRINTF("ip64_6to4: Could not convert IPv6 destination address.\n");
//  482     uip_debug_ipaddr_print(&v6hdr->destipaddr);
//  483     PRINTF("\n");
//  484 #endif /* DEBUG */
//  485     return 0;
//  486   }
//  487 
//  488   /* We set the source address in the IPv4 packet to be the IPv4
//  489      address that we have been configured with through the
//  490      ip64_set_ipv4_address() function. Only let broadcasts through. */
//  491   if(!ip64_hostaddr_configured &&
//  492      !uip_ip4addr_cmp(&v4hdr->destipaddr, &ipv4_broadcast_addr)) {
        LDRB     R0,[R7, #+4]
        CBNZ.N   R0,??ip64_6to4_5
        LDRH     R0,[R5, #+16]
        LDRH     R1,[R7, #+0]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[R5, #+18]
        LDRHEQ   R1,[R7, #+2]
        CMPEQ    R0,R1
        BNE.W    ??ip64_6to4_0
//  493     PRINTF("ip64_6to4: no IPv4 address configured.\n");
//  494     return 0;
//  495   }
//  496   ip64_addr_copy4(&v4hdr->srcipaddr, &ip64_hostaddr);
??ip64_6to4_5:
        ADD      R1,R7,#+8
        ADD      R0,R5,#+12
          CFI FunCall ip64_addr_copy4
        BL       ip64_addr_copy4
//  497 
//  498 
//  499   /* Next we update the transport layer header. This must be updated
//  500      in two ways: the source port number is changed and the transport
//  501      layer checksum must be recomputed. The reason why we change the
//  502      source port number is so that we can remember what IPv6 address
//  503      this packet came from, in case the packet will result in a reply
//  504      from the host on the IPv4 network. If a reply would be sent, it
//  505      would be sent to the port number that we chose, and we will be
//  506      able to map this back to the IPv6 address of the original sender
//  507      of the packet.
//  508   */
//  509 
//  510   /* We check to see if we already have an existing IP address mapping
//  511      for this connection. If not, we create a new one. */
//  512   if((v4hdr->proto == IP_PROTO_UDP || v4hdr->proto == IP_PROTO_TCP)) {
        LDRB     R0,[R5, #+9]
        CMP      R0,#+17
        IT       NE 
        CMPNE    R0,#+6
        BNE.N    ??ip64_6to4_6
//  513 
//  514     if(ip64_special_ports_outgoing_is_special(uip_ntohs(udphdr->srcport))) {
        LDRH     R0,[R6, #+0]
          CFI FunCall uip_htons
        BL       uip_htons
          CFI FunCall ip64_special_ports_outgoing_is_special
        BL       ip64_special_ports_outgoing_is_special
        CMP      R0,#+0
        LDRH     R0,[R6, #+0]
        BEQ.N    ??ip64_6to4_7
//  515       uint16_t newport;
//  516       if(ip64_special_ports_translate_outgoing(uip_ntohs(udphdr->srcport),
//  517 					       &v6hdr->srcipaddr,
//  518 					       &newport)) {
          CFI FunCall uip_htons
        BL       uip_htons
        ADD      R2,SP,#+0
        ADD      R1,R4,#+8
          CFI FunCall ip64_special_ports_translate_outgoing
        BL       ip64_special_ports_translate_outgoing
        CMP      R0,#+0
        BEQ.N    ??ip64_6to4_6
//  519 	udphdr->srcport = uip_htons(newport);
        LDRH     R0,[SP, #+0]
        B.N      ??ip64_6to4_8
//  520       }
//  521     } else if(uip_ntohs(udphdr->srcport) >= EPHEMERAL_PORTRANGE) {
??ip64_6to4_7:
          CFI FunCall uip_htons
        BL       uip_htons
        CMP      R0,#+1024
        BLT.N    ??ip64_6to4_6
//  522       m = ip64_addrmap_lookup(&v6hdr->srcipaddr,
//  523                               uip_ntohs(udphdr->srcport),
//  524 			      &v4hdr->destipaddr,
//  525 			      uip_ntohs(udphdr->destport),
//  526 			      v4hdr->proto);
        LDRH     R0,[R6, #+2]
          CFI FunCall uip_htons
        BL       uip_htons
        MOV      R7,R0
        LDRH     R0,[R6, #+0]
          CFI FunCall uip_htons
        BL       uip_htons
        LDRB     R1,[R5, #+9]
        STR      R1,[SP, #+0]
        MOV      R3,R7
        MOV      R1,R0
        ADD      R2,R5,#+16
        ADD      R0,R4,#+8
          CFI FunCall ip64_addrmap_lookup
        BL       ip64_addrmap_lookup
        MOVS     R7,R0
//  527       if(m == NULL) {
        BNE.N    ??ip64_6to4_9
//  528 	PRINTF("Lookup failed\n");
//  529 	m = ip64_addrmap_create(&v6hdr->srcipaddr,
//  530 				uip_ntohs(udphdr->srcport),
//  531 				&v4hdr->destipaddr,
//  532 				uip_ntohs(udphdr->destport),
//  533 				v4hdr->proto);
        LDRH     R0,[R6, #+2]
          CFI FunCall uip_htons
        BL       uip_htons
        MOV      R7,R0
        LDRH     R0,[R6, #+0]
          CFI FunCall uip_htons
        BL       uip_htons
        LDRB     R1,[R5, #+9]
        STR      R1,[SP, #+0]
        MOV      R3,R7
        MOV      R1,R0
        ADD      R2,R5,#+16
        ADD      R0,R4,#+8
          CFI FunCall ip64_addrmap_create
        BL       ip64_addrmap_create
        MOVS     R7,R0
//  534 	if(m == NULL) {
        BEQ.W    ??ip64_6to4_0
//  535 	  PRINTF("Could not create new map\n");
//  536 	  return 0;
//  537 	} else {
//  538 	  PRINTF("Could create new local port %d\n", m->mapped_port);
//  539 	}
//  540       } else {
//  541 	PRINTF("Lookup: found local port %d (%d)\n", m->mapped_port,
//  542 	       uip_htons(m->mapped_port));
//  543       }
//  544 
//  545       /* Update the lifetime of the address mapping. We need to be
//  546          frugal with address mapping table entries, so we assign
//  547          different lifetimes depending on the type of packet we see.
//  548 
//  549          For TCP connections, we don't want to have a lot of failed
//  550          connection attmpts lingering around, so we assign mappings
//  551          with TCP SYN segments a short lifetime. If we see a RST
//  552          segment, this indicates that the connection might be dead,
//  553          and we'll assign a shorter lifetime.
//  554 
//  555          For UDP packets and for non-SYN/non-RST segments, we assign
//  556          the default lifetime. */
//  557       if(v4hdr->proto == IP_PROTO_TCP) {
??ip64_6to4_9:
        LDRB     R0,[R5, #+9]
        CMP      R0,#+6
        BNE.N    ??ip64_6to4_10
//  558         if((tcphdr->flags & TCP_SYN)) {
        LDRB     R0,[R6, #+13]
        LSLS     R1,R0,#+30
        IT       MI 
        MOVWMI   R1,#+20000
//  559           ip64_addrmap_set_lifetime(m, SYN_LIFETIME);
        BMI.N    ??ip64_6to4_11
//  560         } else if((tcphdr->flags & TCP_RST)) {
        LSLS     R0,R0,#+29
        ITE      MI 
        MOVWMI   R1,#+30000
        LDRPL.W  R1,??DataTable12_7  ;; 0x493e0
//  561           ip64_addrmap_set_lifetime(m, RST_LIFETIME);
//  562         } else {
//  563           ip64_addrmap_set_lifetime(m, DEFAULT_LIFETIME);
??ip64_6to4_11:
        MOV      R0,R7
          CFI FunCall ip64_addrmap_set_lifetime
        BL       ip64_addrmap_set_lifetime
//  564         }
//  565 
//  566         /* Also check if we see a FIN segment. If so, we'll mark the
//  567            address mapping as being candidate for recycling. Same for
//  568            RST segments. */
//  569         if((tcphdr->flags & TCP_FIN) ||
//  570            (tcphdr->flags & TCP_RST)) {
        LDRB     R0,[R6, #+13]
        MOVS     R1,#+5
        TST      R0,R1
        BEQ.N    ??ip64_6to4_12
//  571           ip64_addrmap_set_recycleble(m);
        B.N      ??ip64_6to4_13
//  572         }
//  573       } else {
//  574         ip64_addrmap_set_lifetime(m, DEFAULT_LIFETIME);
??ip64_6to4_10:
        LDR.W    R1,??DataTable12_7  ;; 0x493e0
        MOV      R0,R7
          CFI FunCall ip64_addrmap_set_lifetime
        BL       ip64_addrmap_set_lifetime
//  575 
//  576         /* Treat DNS requests specially: since the are one-shot, we
//  577            mark them as recyclable. */
//  578         if(udphdr->destport == UIP_HTONS(53)) {
        LDRH     R0,[R6, #+2]
        CMP      R0,#+13568
        BNE.N    ??ip64_6to4_12
//  579           ip64_addrmap_set_recycleble(m);
??ip64_6to4_13:
        MOV      R0,R7
          CFI FunCall ip64_addrmap_set_recycleble
        BL       ip64_addrmap_set_recycleble
//  580         }
//  581       }
//  582 
//  583       /* Set the source port of the packet to be the mapped port
//  584          number. */
//  585       udphdr->srcport = uip_htons(m->mapped_port);
??ip64_6to4_12:
        LDRH     R0,[R7, #+32]
??ip64_6to4_8:
          CFI FunCall uip_htons
        BL       uip_htons
        STRH     R0,[R6, #+0]
//  586     }
//  587   }
//  588 
//  589   /* The IPv4 header is now complete, so we can compute the IPv4
//  590      header checksum. */
//  591   v4hdr->ipchksum = 0;
??ip64_6to4_6:
        MOVS     R0,#+0
        STRH     R0,[R5, #+10]
//  592   v4hdr->ipchksum = ~(ipv4_checksum(v4hdr));
        MOVS     R2,#+20
        MOV      R1,R5
          CFI FunCall chksum
        BL       chksum
        CMP      R0,#+0
        ITE      EQ 
        MOVWEQ   R0,#+65535
        BLNE     uip_htons
        MVNS     R0,R0
        STRH     R0,[R5, #+10]
//  593 
//  594 
//  595 
//  596   /* The checksum is in different places in the different protocol
//  597      headers, so we need to be sure that we update the correct
//  598      field. */
//  599   switch(v4hdr->proto) {
        LDRB     R0,[R5, #+9]
        CMP      R0,#+1
        BEQ.N    ??ip64_6to4_14
        CMP      R0,#+6
        BEQ.N    ??ip64_6to4_15
        CMP      R0,#+17
        BEQ.N    ??ip64_6to4_16
        B.N      ??ip64_6to4_0
//  600   case IP_PROTO_TCP:
//  601     tcphdr->tcpchksum = 0;
??ip64_6to4_15:
        MOVS     R0,#+0
        STRH     R0,[R6, #+16]
//  602     tcphdr->tcpchksum = ~(ipv4_transport_checksum(resultpacket, ipv4len,
//  603 						  IP_PROTO_TCP));
        SUB      R4,R9,#+20
        ADDS     R0,R4,#+6
        MOVS     R2,#+8
        ADD      R1,R5,#+12
        UXTH     R0,R0
          CFI FunCall chksum
        BL       chksum
        UXTH     R2,R4
        MOV      R1,R6
          CFI FunCall chksum
        BL       chksum
        CMP      R0,#+0
        ITE      EQ 
        MOVWEQ   R0,#+65535
        BLNE     uip_htons
        MVNS     R0,R0
        STRH     R0,[R6, #+16]
//  604     break;
//  605   case IP_PROTO_UDP:
//  606     udphdr->udpchksum = 0;
//  607     udphdr->udpchksum = ~(ipv4_transport_checksum(resultpacket, ipv4len,
//  608 						  IP_PROTO_UDP));
//  609     if(udphdr->udpchksum == 0) {
//  610       udphdr->udpchksum = 0xffff;
//  611     }
//  612     break;
//  613   case IP_PROTO_ICMPV4:
//  614     icmpv4hdr->icmpchksum = 0;
//  615     icmpv4hdr->icmpchksum = ~(ipv4_transport_checksum(resultpacket, ipv4len,
//  616 						      IP_PROTO_ICMPV4));
//  617     break;
//  618 
//  619   default:
//  620     PRINTF("ip64_6to4: transport protocol %d not implemented\n", v4hdr->proto);
//  621     return 0;
//  622   }
//  623 
//  624   /* Finally, we return the length of the resulting IPv4 packet. */
//  625   PRINTF("ip64_6to4: ipv4len %d\n", ipv4len);
//  626   return ipv4len;
??ip64_6to4_17:
        MOV      R0,R9
        B.N      ?Subroutine0
??ip64_6to4_16:
        MOVS     R0,#+0
        STRH     R0,[R6, #+6]
        SUB      R4,R9,#+20
        ADD      R0,R4,#+17
        MOVS     R2,#+8
        ADD      R1,R5,#+12
        UXTH     R0,R0
          CFI FunCall chksum
        BL       chksum
        UXTH     R2,R4
        MOV      R1,R6
          CFI FunCall chksum
        BL       chksum
        CMP      R0,#+0
        ITE      EQ 
        MOVWEQ   R0,#+65535
        BLNE     uip_htons
        MVNS     R0,R0
        STRH     R0,[R6, #+6]
        LDRH     R0,[R6, #+6]
        CMP      R0,#+0
        BNE.N    ??ip64_6to4_17
        MOVW     R0,#+65535
        STRH     R0,[R6, #+6]
        B.N      ??ip64_6to4_17
??ip64_6to4_14:
        LDR      R1,[SP, #+4]
        MOVS     R0,#+0
        STRH     R0,[R1, #+2]
        SUB      R2,R9,#+20
        UXTH     R2,R2
        MOV      R1,R6
          CFI FunCall chksum
        BL       chksum
        CMP      R0,#+0
        ITE      EQ 
        MOVWEQ   R0,#+65535
        BLNE     uip_htons
        LDR      R1,[SP, #+4]
        MVNS     R0,R0
        STRH     R0,[R1, #+2]
        B.N      ??ip64_6to4_17
??ip64_6to4_0:
        MOVS     R0,#+0
          CFI EndBlock cfiBlock11
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  627 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls ip64_6to4
          CFI CFA R13+40
          CFI R4 Frame(CFA, -28)
          CFI R5 Frame(CFA, -24)
          CFI R6 Frame(CFA, -20)
          CFI R7 Frame(CFA, -16)
          CFI R9 Frame(CFA, -12)
          CFI R10 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        ADD      SP,SP,#+12
          CFI CFA R13+28
        POP      {R4-R7,R9,R10,PC}
          CFI EndBlock cfiBlock12
//  628 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function ip64_4to6
        THUMB
//  629 int
//  630 ip64_4to6(const uint8_t *ipv4packet, const uint16_t ipv4packet_len,
//  631 	  uint8_t *resultpacket)
//  632 {
ip64_4to6:
        PUSH     {R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+36
        MOV      R6,R0
        SUB      SP,SP,#+20
          CFI CFA R13+56
        MOV      R4,R2
//  633   struct ipv4_hdr *v4hdr;
//  634   struct ipv6_hdr *v6hdr;
//  635   struct udp_hdr *udphdr;
//  636   struct tcp_hdr *tcphdr;
//  637   struct icmpv4_hdr *icmpv4hdr;
//  638   struct icmpv6_hdr *icmpv6hdr;
//  639   uint16_t ipv4len, ipv6len, ipv6_packet_len;
//  640   struct ip64_addrmap_entry *m;
//  641 
//  642   v6hdr = (struct ipv6_hdr *)resultpacket;
//  643   v4hdr = (struct ipv4_hdr *)ipv4packet;
//  644 
//  645  // MEM_DUMP(10, "IPV4", ipv4packet, ipv4packet_len);
//  646 
//  647   if((v4hdr->len[0] << 8) + v4hdr->len[1] <= ipv4packet_len) {
        LDRB     R0,[R6, #+3]
        LDRB     R2,[R6, #+2]
        ADD      R3,R0,R2, LSL #+8
        CMP      R1,R3
        ITTT     GE 
        ADDGE    R0,R0,R2, LSL #+8
        UXTHGE   R7,R0
        CMPGE    R7,#+21
//  648     ipv4len = (v4hdr->len[0] << 8) + v4hdr->len[1];
//  649   } else {
//  650     PRINTF("ip64_4to6: packet smaller than reported in IPv4 header, dropping\n");
//  651     return 0;
//  652   }
//  653 
//  654   if(ipv4len <= IPV4_HDRLEN) {
        BLT.W    ??ip64_4to6_0
//  655     return 0;
//  656   }
//  657 
//  658   /* Make sure that the resulting packet fits in the ip64 packet
//  659      buffer. If not, we drop it. */
//  660   if(ipv4len - IPV4_HDRLEN + IPV6_HDRLEN > BUFSIZE) {
        ADD      R0,R7,#+20
        MOVW     R1,#+1515
        CMP      R0,R1
        BGE.W    ??ip64_4to6_0
//  661     PRINTF("ip64_4to6: packet too big to fit in buffer, dropping\n");
//  662     return 0;
//  663   }
//  664   /* We copy the data from the IPv4 packet into the IPv6 packet. */
//  665   memcpy(&resultpacket[IPV6_HDRLEN],
//  666 	 &ipv4packet[IPV4_HDRLEN],
//  667 	 ipv4len - IPV4_HDRLEN);
        SUB      R2,R7,#+20
        ADD      R1,R6,#+20
        ADD      R0,R4,#+40
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  668   
//  669   udphdr = (struct udp_hdr *)&resultpacket[IPV6_HDRLEN];
//  670   tcphdr = (struct tcp_hdr *)&resultpacket[IPV6_HDRLEN];
//  671   icmpv4hdr = (struct icmpv4_hdr *)&ipv4packet[IPV4_HDRLEN];
//  672   icmpv6hdr = (struct icmpv6_hdr *)&resultpacket[IPV6_HDRLEN];
//  673 
//  674   ipv6len = ipv4len - IPV4_HDRLEN + IPV6_HDRLEN;
        ADD      R0,R7,#+20
        STRH     R0,[SP, #+2]
        ADD      R5,R4,#+40
//  675   ipv6_packet_len = ipv6len - IPV6_HDRLEN;
        LDRH     R0,[SP, #+2]
        SUBS     R0,R0,#+40
        UXTH     R10,R0
//  676 
//  677   /* Translate the IPv4 header into an IPv6 header. */
//  678 
//  679   /* We first fill in the simple fields: IP header version, traffic
//  680      class and flow label, and length fields. */
//  681   v6hdr->vtc = 0x60;
        MOVS     R0,#+96
        STRB     R0,[R4, #+0]
        ADD      R8,R4,#+40
//  682   v6hdr->tcflow = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+1]
//  683   v6hdr->flow = 0;
        STRH     R0,[R4, #+2]
        ADD      R11,R6,#+20
//  684   v6hdr->len[0] = ipv6_packet_len >> 8;
        LSR      R0,R10,#+8
        STRB     R0,[R4, #+4]
//  685   v6hdr->len[1] = ipv6_packet_len & 0xff;
        STRB     R10,[R4, #+5]
        ADD      R9,R4,#+40
//  686 
//  687   /* We use the IPv4 TTL field as the IPv6 hop limit field. */
//  688   v6hdr->hoplim = v4hdr->ttl;
        LDRB     R0,[R6, #+8]
        STRB     R0,[R4, #+7]
//  689 
//  690   
//  691   /* We now translate the IPv4 source and destination addresses to
//  692      IPv6 source and destination addresses. We translate the IPv4
//  693      source address into an IPv6-encoded IPv4 address. The IPv4
//  694      destination address will be the address with which we have
//  695      previously been configured, through the ip64_set_ipv4_address()
//  696      function. We use the mapping table to look up the new IPv6
//  697      destination address. As we assume that the IPv4 packet is a
//  698      response to a previously sent IPv6 packet, we should have a
//  699      mapping between the (protocol, destport, srcport, srcaddress)
//  700      tuple. If not, we'll return 0 to indicate that we failed to
//  701      translate the packet. */
//  702   if(ip64_addr_4to6(&v4hdr->srcipaddr, &v6hdr->srcipaddr) == 0) {
        ADD      R1,R4,#+8
        ADD      R0,R6,#+12
          CFI FunCall ip64_addr_4to6
        BL       ip64_addr_4to6
        CMP      R0,#+0
        BEQ.W    ??ip64_4to6_0
//  703     PRINTF("ip64_packet_4to6: failed to convert source IP address\n");
//  704     return 0;
//  705   }
//  706 
//  707     /* For the next header field, we simply use the IPv4 protocol
//  708      field. We only support UDP and TCP packets. */
//  709   switch(v4hdr->proto) {
        LDRB     R0,[R6, #+9]
        LDR.N    R7,??DataTable12
        CMP      R0,#+1
        BEQ.N    ??ip64_4to6_1
        CMP      R0,#+6
        IT       NE 
        CMPNE    R0,#+17
        BNE.W    ??ip64_4to6_0
//  710   case IP_PROTO_UDP:
//  711     v6hdr->nxthdr = IP_PROTO_UDP;
//  712     break;
//  713 
//  714   case IP_PROTO_TCP:
//  715     v6hdr->nxthdr = IP_PROTO_TCP;
        STRB     R0,[R4, #+6]
//  716     break;
        B.N      ??ip64_4to6_2
//  717 
//  718   case IP_PROTO_ICMPV4:
//  719     /* Allow only ICMPv4 ECHO_REQUESTS (ping packets) through to the
//  720        local IPv6 host. */
//  721     if(icmpv4hdr->type == ICMP_ECHO) {
??ip64_4to6_1:
        LDRB     R0,[R11, #+0]
        CMP      R0,#+8
        BNE.W    ??ip64_4to6_0
//  722       PRINTF("ip64_4to6: translating ICMPv4 ECHO packet\n");
//  723       v6hdr->nxthdr = IP_PROTO_ICMPV6;
        MOVS     R0,#+58
        STRB     R0,[R4, #+6]
//  724       icmpv6hdr->type = ICMP6_ECHO;
//  725       ip64_addr_copy6(&v6hdr->destipaddr, &ipv6_local_address);
        ADD      R1,R7,#+20
        MOVS     R0,#+128
        STRB     R0,[R9, #+0]
        ADD      R0,R4,#+24
          CFI FunCall ip64_addr_copy6
        BL       ip64_addr_copy6
//  726     } else {
//  727       PRINTF("ip64_packet_4to6: ICMPv4 packet type %d not supported\n",
//  728 	     icmpv4hdr->type);
//  729       return 0;
//  730     }
//  731     break;
//  732 
//  733   default:
//  734     /* For protocol types that we do not support, we return 0 to
//  735        indicate that we failed to translate the packet to an IPv6
//  736        packet. */
//  737     PRINTF("ip64_packet_4to6: protocol type %d not supported\n",
//  738 	   v4hdr->proto);
//  739     return 0;
//  740   }
//  741 
//  742   /* Translate IPv4 broadcasts to IPv6 all-nodes multicasts. */
//  743   if(uip_ip4addr_cmp(&v4hdr->destipaddr, &ipv4_broadcast_addr) ||
//  744      (uip_ipaddr_maskcmp(&v4hdr->destipaddr, &ip64_hostaddr,
//  745 			 &ip64_netmask) &&
//  746       ((v4hdr->destipaddr.u16[0] & (~ip64_netmask.u16[0])) ==
//  747        (ipv4_broadcast_addr.u16[0] & (~ip64_netmask.u16[0]))) &&
//  748       ((v4hdr->destipaddr.u16[1] & (~ip64_netmask.u16[1])) ==
//  749        (ipv4_broadcast_addr.u16[1] & (~ip64_netmask.u16[1]))))) {
??ip64_4to6_2:
        LDRH     R0,[R6, #+16]
        LDRH     R2,[R7, #+0]
        CMP      R0,R2
        ITTT     EQ 
        LDRHEQ   R1,[R6, #+18]
        LDRHEQ   R3,[R7, #+2]
        CMPEQ    R1,R3
        BEQ.N    ??ip64_4to6_3
        LDRH     R1,[R7, #+12]
        LDRH     R3,[R7, #+8]
        LDRH     LR,[R7, #+12]
        ANDS     R1,R1,R0
        AND      R3,LR,R3
        CMP      R1,R3
        BNE.N    ??ip64_4to6_4
        LDRH     R12,[R7, #+14]
        LDRH     R1,[R6, #+18]
        LDRH     R11,[R7, #+10]
        AND      R3,R12,R1
        AND      R11,R12,R11
        CMP      R3,R11
        BNE.N    ??ip64_4to6_4
        LDRH     R3,[R7, #+12]
        MVN      LR,R3
        AND      R3,LR,R0
        AND      R2,LR,R2
        CMP      R3,R2
        BNE.N    ??ip64_4to6_4
        MVN      R2,R12
        LDRH     R3,[R7, #+2]
        ANDS     R1,R2,R1
        ANDS     R2,R2,R3
        CMP      R1,R2
        BNE.N    ??ip64_4to6_4
//  750     uip_create_linklocal_allnodes_mcast(&v6hdr->destipaddr);
??ip64_4to6_3:
        MOVW     R0,#+767
        STRH     R0,[R4, #+24]
        MOVS     R0,#+0
        STRH     R0,[R4, #+26]
        STRH     R0,[R4, #+28]
        STRH     R0,[R4, #+30]
        STRH     R0,[R4, #+32]
        STRH     R0,[R4, #+34]
        STRH     R0,[R4, #+36]
        MOV      R0,#+256
        STRH     R0,[R4, #+38]
        B.N      ??ip64_4to6_5
//  751   } else {
//  752 
//  753     if(!ip64_hostaddr_configured) {
??ip64_4to6_4:
        LDRB     R1,[R7, #+4]
        CMP      R1,#+0
        BEQ.W    ??ip64_4to6_0
//  754       PRINTF("ip64_packet_4to6: no local IPv4 address configured, dropping incoming packet.\n");
//  755       return 0;
//  756     }
//  757 
//  758     if(!uip_ip4addr_cmp(&v4hdr->destipaddr, &ip64_hostaddr)) {
        LDRH     R1,[R7, #+8]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[R6, #+18]
        LDRHEQ   R1,[R7, #+10]
        CMPEQ    R0,R1
        BNE.W    ??ip64_4to6_0
//  759       PRINTF("ip64_packet_4to6: the IPv4 destination address %d.%d.%d.%d did not match our IPv4 address %d.%d.%d.%d\n",
//  760 	     uip_ipaddr_to_quad(&v4hdr->destipaddr),
//  761 	     uip_ipaddr_to_quad(&ip64_hostaddr));
//  762       return 0;
//  763     }
//  764 
//  765 
//  766   /* Now we translate the transport layer port numbers. We assume that
//  767      the IPv4 packet is a response to a packet that has previously
//  768      been translated from IPv6 to IPv4. If this is the case, the tuple
//  769      (protocol, destport, srcport, srcaddress) corresponds to an address/port
//  770      pair in our mapping table. If we do not find a mapping, we return
//  771      0 to indicate that we could not translate the IPv4 packet to an
//  772      IPv6 packet. */
//  773 
//  774   /* XXX treat a few ports differently: those ports should be let
//  775      through to the local host. For those ports, we set up an address
//  776      mapping that ensures that the local port number is retained. */
//  777 
//  778     if((v4hdr->proto == IP_PROTO_TCP || v4hdr->proto == IP_PROTO_UDP)) {
        LDRB     R0,[R6, #+9]
        CMP      R0,#+6
        IT       NE 
        CMPNE    R0,#+17
        BNE.N    ??ip64_4to6_5
//  779       if(uip_htons(tcphdr->destport) < EPHEMERAL_PORTRANGE) {
        LDRH     R0,[R8, #+2]
          CFI FunCall uip_htons
        BL       uip_htons
        CMP      R0,#+1024
        BLT.N    ??ip64_4to6_6
//  780 	/* This packet should go to the local host. */
//  781 	PRINTF("Port is in the non-ephemeral port range %d (%d)\n",
//  782 	       tcphdr->destport, uip_htons(tcphdr->destport));
//  783 	ip64_addr_copy6(&v6hdr->destipaddr, &ipv6_local_address);
//  784       } else if(ip64_special_ports_incoming_is_special(uip_htons(tcphdr->destport))) {
        LDRH     R0,[R8, #+2]
          CFI FunCall uip_htons
        BL       uip_htons
          CFI FunCall ip64_special_ports_incoming_is_special
        BL       ip64_special_ports_incoming_is_special
        CBZ.N    R0,??ip64_4to6_7
//  785 	uip_ip6addr_t newip6addr;
//  786 	uint16_t newport;
//  787 	PRINTF("ip64 port %d (%d) is special, treating it differently\n",
//  788 	       tcphdr->destport, uip_htons(tcphdr->destport));
//  789 	if(ip64_special_ports_translate_incoming(uip_htons(tcphdr->destport),
//  790 						 &newip6addr, &newport)) {
        LDRH     R0,[R8, #+2]
          CFI FunCall uip_htons
        BL       uip_htons
        ADD      R2,SP,#+0
        ADD      R1,SP,#+4
          CFI FunCall ip64_special_ports_translate_incoming
        BL       ip64_special_ports_translate_incoming
        CBZ.N    R0,??ip64_4to6_6
//  791 	  ip64_addr_copy6(&v6hdr->destipaddr, &newip6addr);
        ADD      R1,SP,#+4
        ADD      R0,R4,#+24
          CFI FunCall ip64_addr_copy6
        BL       ip64_addr_copy6
//  792 	  tcphdr->destport = uip_htons(newport);
        LDRH     R0,[SP, #+0]
          CFI FunCall uip_htons
        BL       uip_htons
        STRH     R0,[R8, #+2]
        B.N      ??ip64_4to6_5
//  793 	  PRINTF("New port %d (%d)\n",
//  794 		 tcphdr->destport, uip_htons(tcphdr->destport));
//  795 	} else {
//  796 	  ip64_addr_copy6(&v6hdr->destipaddr, &ipv6_local_address);
??ip64_4to6_6:
        ADD      R1,R7,#+20
        ADD      R0,R4,#+24
          CFI FunCall ip64_addr_copy6
        BL       ip64_addr_copy6
        B.N      ??ip64_4to6_5
//  797 	  PRINTF("No new port\n");
//  798 	}
//  799       } else {
//  800       /* The TCP or UDP port numbers were not non-ephemeral and not
//  801 	 special, so we map the port number according to the address
//  802 	 mapping table. */
//  803 
//  804 	m = ip64_addrmap_lookup_port(uip_ntohs(udphdr->destport),
//  805 				     v4hdr->proto);
??ip64_4to6_7:
        LDRH     R0,[R5, #+2]
          CFI FunCall uip_htons
        BL       uip_htons
        LDRB     R1,[R6, #+9]
          CFI FunCall ip64_addrmap_lookup_port
        BL       ip64_addrmap_lookup_port
        MOVS     R6,R0
//  806 	if(m == NULL) {
        BEQ.N    ??ip64_4to6_0
//  807 	  PRINTF("Inbound lookup failed\n");
//  808 	  return 0;
//  809 	} else {
//  810 	  PRINTF("Inbound lookup did not fail\n");
//  811 	}
//  812 	ip64_addr_copy6(&v6hdr->destipaddr, &m->ip6addr);
        ADD      R1,R6,#+12
        ADD      R0,R4,#+24
          CFI FunCall ip64_addr_copy6
        BL       ip64_addr_copy6
//  813 	udphdr->destport = uip_htons(m->ip6port);
        LDRH     R0,[R6, #+34]
          CFI FunCall uip_htons
        BL       uip_htons
        STRH     R0,[R5, #+2]
//  814       }
//  815     }
//  816   }
//  817 
//  818   /* The checksum is in different places in the different protocol
//  819      headers, so we need to be sure that we update the correct
//  820      field. */
//  821   switch(v6hdr->nxthdr) {
??ip64_4to6_5:
        LDRB     R0,[R4, #+6]
        CMP      R0,#+6
        BEQ.N    ??ip64_4to6_8
        CMP      R0,#+17
        BEQ.N    ??ip64_4to6_9
        CMP      R0,#+58
        BEQ.N    ??ip64_4to6_10
        B.N      ??ip64_4to6_0
//  822   case IP_PROTO_TCP:
//  823     tcphdr->tcpchksum = 0;
??ip64_4to6_8:
        ADD      R5,R8,#+2
        MOVS     R0,#+0
        STRH     R0,[R5, #+14]
//  824     tcphdr->tcpchksum = ~(ipv6_transport_checksum(resultpacket,
//  825 						  ipv6len,
//  826 						  IP_PROTO_TCP));
        MOVS     R2,#+16
        ADD      R0,R10,#+6
        ADD      R1,R4,#+8
        UXTH     R0,R0
          CFI FunCall chksum
        BL       chksum
        MOVS     R2,#+16
        ADD      R1,R4,#+24
          CFI FunCall chksum
        BL       chksum
        MOV      R2,R10
        ADD      R1,R4,#+40
          CFI FunCall chksum
        BL       chksum
        CMP      R0,#+0
        ITE      EQ 
        MOVWEQ   R0,#+65535
        BLNE     uip_htons
        MVNS     R0,R0
        STRH     R0,[R5, #+14]
//  827     break;
//  828   case IP_PROTO_UDP:
//  829     udphdr->udpchksum = 0;
//  830     udphdr->udpchksum = ~(ipv6_transport_checksum(resultpacket,
//  831 						  ipv6len,
//  832 						  IP_PROTO_UDP));
//  833     if(udphdr->udpchksum == 0) {
//  834       udphdr->udpchksum = 0xffff;
//  835     }
//  836     break;
//  837 
//  838   case IP_PROTO_ICMPV6:
//  839     icmpv6hdr->icmpchksum = 0;
//  840     icmpv6hdr->icmpchksum = ~(ipv6_transport_checksum(resultpacket,
//  841                                                 ipv6len,
//  842                                                 IP_PROTO_ICMPV6));
//  843     break;
//  844   default:
//  845     PRINTF("ip64_4to6: transport protocol %d not implemented\n", v4hdr->proto);
//  846     return 0;
//  847   }
//  848 
//  849   /* Finally, we return the length of the resulting IPv6 packet. */
//  850   PRINTF("ip64_4to6: ipv6len %d\n", ipv6len);
//  851   return ipv6len;
??ip64_4to6_11:
        LDRH     R0,[SP, #+2]
        B.N      ?Subroutine1
??ip64_4to6_9:
        MOVS     R0,#+0
        STRH     R0,[R5, #+6]
        MOVS     R2,#+16
        ADD      R0,R10,#+17
        ADD      R1,R4,#+8
        UXTH     R0,R0
          CFI FunCall chksum
        BL       chksum
        MOVS     R2,#+16
        ADD      R1,R4,#+24
          CFI FunCall chksum
        BL       chksum
        MOV      R2,R10
        ADD      R1,R4,#+40
          CFI FunCall chksum
        BL       chksum
        CMP      R0,#+0
        ITE      EQ 
        MOVWEQ   R0,#+65535
        BLNE     uip_htons
        MVNS     R0,R0
        STRH     R0,[R5, #+6]
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BNE.N    ??ip64_4to6_11
        MOVW     R0,#+65535
        STRH     R0,[R5, #+6]
        B.N      ??ip64_4to6_11
??ip64_4to6_10:
        MOVS     R0,#+0
        STRH     R0,[R9, #+2]
        MOVS     R2,#+16
        ADD      R0,R10,#+58
        ADD      R1,R4,#+8
        UXTH     R0,R0
          CFI FunCall chksum
        BL       chksum
        MOVS     R2,#+16
        ADD      R1,R4,#+24
          CFI FunCall chksum
        BL       chksum
        MOV      R2,R10
        ADD      R1,R4,#+40
          CFI FunCall chksum
        BL       chksum
        CMP      R0,#+0
        ITE      EQ 
        MOVWEQ   R0,#+65535
        BLNE     uip_htons
        MVNS     R0,R0
        STRH     R0,[R9, #+2]
        B.N      ??ip64_4to6_11
??ip64_4to6_0:
        MOVS     R0,#+0
          CFI EndBlock cfiBlock13
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  852 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls ip64_4to6
          CFI CFA R13+56
          CFI R4 Frame(CFA, -36)
          CFI R5 Frame(CFA, -32)
          CFI R6 Frame(CFA, -28)
          CFI R7 Frame(CFA, -24)
          CFI R8 Frame(CFA, -20)
          CFI R9 Frame(CFA, -16)
          CFI R10 Frame(CFA, -12)
          CFI R11 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine1:
        ADD      SP,SP,#+20
          CFI CFA R13+36
        POP      {R4-R11,PC}
          CFI EndBlock cfiBlock14
//  853 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function ip64_hostaddr_is_configured
          CFI NoCalls
        THUMB
//  854 int
//  855 ip64_hostaddr_is_configured(void)
//  856 {
//  857   return ip64_hostaddr_configured;
ip64_hostaddr_is_configured:
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+4]
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  858 }
//  859 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function interface_init
        THUMB
//  860 static void
//  861 interface_init(void)
//  862 {
//  863   IP64_CONF_UIP_FALLBACK_INTERFACE.init();
interface_init:
        LDR.N    R0,??DataTable12_8
        LDR      R0,[R0, #+0]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock16
//  864 }
//  865 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function interface_output
        THUMB
//  866 static void
//  867 interface_output(void)
//  868 {
//  869   PRINTF("ip64: interface_output len %d\n", uip_len);
//  870   IP64_CONF_UIP_FALLBACK_INTERFACE.output();
interface_output:
        LDR.N    R0,??DataTable12_8
        LDR      R0,[R0, #+4]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock17
//  871 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     ipv4_broadcast_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     enc28j60_ip64_driver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     ipv4_broadcast_addr+0xC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     ip64_draddr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     ipv4_broadcast_addr+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     ipv4_broadcast_addr+0x14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x493e0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     ip64_eth_interface
//  872 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  873 const struct uip_fallback_interface ip64_uip_fallback_interface = {
ip64_uip_fallback_interface:
        DC32 interface_init, interface_output

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  874   interface_init, interface_output
//  875 };
//  876 
// 
// 1 557 bytes in section .bss
//     6 bytes in section .data
//     8 bytes in section .rodata
// 1 760 bytes in section .text
// 
// 1 760 bytes of CODE  memory
//     8 bytes of CONST memory
// 1 563 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
