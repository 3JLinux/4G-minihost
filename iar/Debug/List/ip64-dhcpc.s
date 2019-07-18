///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:55
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-dhcpc.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-dhcpc.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ip64-dhcpc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr
        EXTERN __aeabi_memcpy
        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN etimer_expired
        EXTERN etimer_set
        EXTERN ip64_addr_4to6
        EXTERN ip64_dhcpc_configured
        EXTERN ip64_dhcpc_unconfigured
        EXTERN memcmp
        EXTERN tcpip_event
        EXTERN tcpip_poll_udp
        EXTERN udp_new
        EXTERN uip_appdata
        EXTERN uip_flags
        EXTERN uip_hostaddr
        EXTERN uip_htons
        EXTERN uip_len
        EXTERN uip_send
        EXTERN xprintf

        PUBLIC ip64_dhcpc_appcall
        PUBLIC ip64_dhcpc_init
        PUBLIC ip64_dhcpc_request
        PUBLIC ip64_print_dhcpc_info
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-dhcpc.c
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
//   31  * @(#)$Id: dhcpc.c,v 1.9 2010/10/19 18:29:04 adamdunkels Exp $
//   32  */
//   33 
//   34 #include <stdio.h>
//   35 #include <string.h>
//   36 
//   37 #include "contiki.h"
//   38 #include "contiki-net.h"
//   39 #include "ip64-dhcpc.h"
//   40 
//   41 #include "ip64-addr.h"
//   42 #include "sysprintf.h"
//   43 
//   44 #define STATE_INITIAL         0
//   45 #define STATE_SENDING         1
//   46 #define STATE_OFFER_RECEIVED  2
//   47 #define STATE_CONFIG_RECEIVED 3
//   48 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 static struct ip64_dhcpc_state s;
s:
        DS8 108
        DS8 4
//   50 //static struct ip64_dhcpc_state s;
//   51 //static struct ip64_dhcpc_state sip = {0x00};
//   52 //const uint8_t cmpipaddr[4] = {192,168,1,100};
//   53 //static uint8_t yipaddr[4] = {0};
//   54 
//   55 struct dhcp_msg {
//   56   uint8_t op, htype, hlen, hops;
//   57   uint8_t xid[4];
//   58   uint16_t secs, flags;
//   59   uint8_t ciaddr[4];
//   60   uint8_t yiaddr[4];
//   61   uint8_t siaddr[4];
//   62   uint8_t giaddr[4];
//   63   uint8_t chaddr[16];
//   64   uint8_t sname[64];
//   65   uint8_t file[128];
//   66   uint8_t options[312];
//   67 };
//   68 
//   69 #if (UIP_BUFSIZE - UIP_UDPIP_HLEN) < 548
//   70 #error UIP_CONF_BUFFER_SIZE may be too small to accomodate DHCPv4 packets
//   71 #error Increase UIP_CONF_BUFFER_SIZE in your project-conf.h, platform-conf.h, or contiki-conf.h
//   72 #error A good size is 600 bytes
//   73 #endif
//   74 
//   75 #define BOOTP_BROADCAST 0x8000
//   76 
//   77 #define DHCP_REQUEST        1
//   78 #define DHCP_REPLY          2
//   79 #define DHCP_HTYPE_ETHERNET 1
//   80 #define DHCP_HLEN_ETHERNET  6
//   81 #define DHCP_MSG_LEN      236
//   82 
//   83 #define IP64_DHCPC_SERVER_PORT  67
//   84 #define IP64_DHCPC_CLIENT_PORT  68
//   85 
//   86 #define DHCPDISCOVER  1
//   87 #define DHCPOFFER     2
//   88 #define DHCPREQUEST   3
//   89 #define DHCPDECLINE   4
//   90 #define DHCPACK       5
//   91 #define DHCPNAK       6
//   92 #define DHCPRELEASE   7
//   93 
//   94 #define DHCP_OPTION_SUBNET_MASK   1
//   95 #define DHCP_OPTION_ROUTER        3
//   96 #define DHCP_OPTION_DNS_SERVER    6
//   97 #define DHCP_OPTION_REQ_IPADDR   50
//   98 #define DHCP_OPTION_LEASE_TIME   51
//   99 #define DHCP_OPTION_MSG_TYPE     53
//  100 #define DHCP_OPTION_SERVER_ID    54
//  101 #define DHCP_OPTION_REQ_LIST     55
//  102 #define DHCP_OPTION_END         255
//  103 
//  104 static uint32_t xid;
//  105 static const uint8_t magic_cookie[4] = {99, 130, 83, 99};
//  106 
//  107 void ip64_print_dhcpc_info(void);
//  108 
//  109 
//  110 /*---------------------------------------------------------------------------*/
//  111 static uint8_t 
//  112 check_ip(uip_ip4addr_t *ip4addr)
//  113 {
//  114 	if (ip4addr->u8[0] == 0 && ip4addr->u8[1] == 0 && ip4addr->u8[2] == 0 && ip4addr->u8[3] ==0)
//  115 		return 1;
//  116 	return 0;
//  117 }
//  118 
//  119 
//  120 
//  121 /*---------------------------------------------------------------------------*/
//  122 static uint8_t *
//  123 add_msg_type(uint8_t *optptr, uint8_t type)
//  124 {
//  125   *optptr++ = DHCP_OPTION_MSG_TYPE;
//  126   *optptr++ = 1;
//  127   *optptr++ = type;
//  128   return optptr;
//  129 }
//  130 /*---------------------------------------------------------------------------*/
//  131 static uint8_t *
//  132 add_server_id(uint8_t *optptr)
//  133 {
//  134   *optptr++ = DHCP_OPTION_SERVER_ID;
//  135   *optptr++ = 4;
//  136   memcpy(optptr, s.serverid, 4);
//  137   return optptr + 4;
//  138 }
//  139 /*---------------------------------------------------------------------------*/
//  140 static uint8_t *
//  141 add_req_ipaddr(uint8_t *optptr)
//  142 {
//  143   *optptr++ = DHCP_OPTION_REQ_IPADDR;
//  144   *optptr++ = 4;
//  145   memcpy(optptr, s.ipaddr.u16, 4);
//  146   return optptr + 4;
//  147 }
//  148 /*---------------------------------------------------------------------------*/
//  149 static uint8_t *
//  150 add_req_options(uint8_t *optptr)
//  151 {
//  152   *optptr++ = DHCP_OPTION_REQ_LIST;
//  153   *optptr++ = 3;
//  154   *optptr++ = DHCP_OPTION_SUBNET_MASK;
//  155   *optptr++ = DHCP_OPTION_ROUTER;
//  156   *optptr++ = DHCP_OPTION_DNS_SERVER;
//  157   return optptr;
//  158 }
//  159 /*---------------------------------------------------------------------------*/
//  160 static uint8_t *
//  161 add_end(uint8_t *optptr)
//  162 {
//  163   *optptr++ = DHCP_OPTION_END;
//  164   return optptr;
//  165 }
//  166 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function create_msg
        THUMB
//  167 static void
//  168 create_msg(CC_REGISTER_ARG struct dhcp_msg *m)
//  169 {
create_msg:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  170   m->op = DHCP_REQUEST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//  171   m->htype = DHCP_HTYPE_ETHERNET;
        STRB     R0,[R4, #+1]
//  172   m->hlen = s.mac_len;
//  173   m->hops = 0;
//  174   memcpy(m->xid, &xid, sizeof(m->xid));
        MOVS     R2,#+4
        LDR.W    R5,??DataTable36
        LDR      R0,[R5, #+32]
        STRB     R0,[R4, #+2]
        ADD      R1,R5,#+108
        MOVS     R0,#+0
        STRB     R0,[R4, #+3]
        ADDS     R0,R4,#+4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  175   m->secs = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+8]
//  176   m->flags = UIP_HTONS(BOOTP_BROADCAST); /*  Broadcast bit. */
//  177   /*  uip_ipaddr_copy(m->ciaddr, uip_hostaddr);*/
//  178   memcpy(m->ciaddr, uip_hostaddr.u16, sizeof(m->ciaddr));
        MOVS     R2,#+4
        MOVS     R0,#+128
        STRH     R0,[R4, #+10]
        ADD      R0,R4,#+12
        LDR.W    R1,??DataTable36_1
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  179   memset(m->yiaddr, 0, sizeof(m->yiaddr));
        MOVS     R1,#+4
        ADD      R0,R4,#+16
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  180   memset(m->siaddr, 0, sizeof(m->siaddr));
        MOVS     R1,#+4
        ADD      R0,R4,#+20
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  181   memset(m->giaddr, 0, sizeof(m->giaddr));
        MOVS     R1,#+4
        ADD      R0,R4,#+24
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  182   memcpy(m->chaddr, s.mac_addr, s.mac_len);
        LDR      R2,[R5, #+32]
        LDR      R1,[R5, #+28]
        ADD      R0,R4,#+28
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  183   memset(&m->chaddr[s.mac_len], 0, sizeof(m->chaddr) - s.mac_len);
        LDR      R0,[R5, #+32]
        RSB      R1,R0,#+16
        ADDS     R0,R0,R4
        ADDS     R0,R0,#+28
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  184 
//  185   memset(m->sname, 0, sizeof(m->sname));
        MOVS     R1,#+64
        ADD      R0,R4,#+44
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  186   strcpy((char *)m->sname, "Thingsquare");
        MOVS     R2,#+12
        ADR.W    R1,?_0
        ADD      R0,R4,#+44
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  187   memset(m->file, 0, sizeof(m->file));
        MOVS     R1,#+128
        ADD      R0,R4,#+108
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  188 
//  189 
//  190   memcpy(m->options, magic_cookie, sizeof(magic_cookie));
        ADD      R0,R4,#+236
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R2,#+4
        ADR.W    R1,magic_cookie
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI EndBlock cfiBlock0
//  191 }
//  192 /*---------------------------------------------------------------------------*/
//  193 static void
//  194 send_discover(void)
//  195 {
//  196   uint8_t *end;
//  197   struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
//  198 
//  199   create_msg(m);
//  200 
//  201   end = add_msg_type(&m->options[4], DHCPDISCOVER);
//  202   end = add_req_options(end);
//  203   end = add_end(end);
//  204 
//  205   uip_send(uip_appdata, (int)(end - (uint8_t *)uip_appdata));
//  206   //MEM_DUMP(10, "CMSG", m, sizeof(*m));
//  207 }
//  208 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function send_request
        THUMB
//  209 static void
//  210 send_request(void)
//  211 {
send_request:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  212   uint8_t *end;
//  213   struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
        LDR.W    R4,??DataTable36_2
        LDR      R5,[R4, #+0]
//  214 
//  215   create_msg(m);
        MOV      R0,R5
          CFI FunCall create_msg
        BL       create_msg
//  216   
//  217   end = add_msg_type(&m->options[4], DHCPREQUEST);
        ADDS     R5,R5,#+240
        MOVS     R0,#+53
        STRB     R0,[R5], #+1
        MOVS     R0,#+1
        STRB     R0,[R5], #+1
        MOVS     R0,#+3
        STRB     R0,[R5], #+1
//  218   end = add_server_id(end);
        MOVS     R0,#+54
        STRB     R0,[R5], #+1
        MOVS     R0,#+4
        STRB     R0,[R5], #+1
        MOVS     R2,#+4
        LDR.W    R6,??DataTable36
        ADD      R1,R6,#+36
        MOV      R0,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  219   end = add_req_ipaddr(end);
        ADDS     R5,R5,#+4
        MOVS     R0,#+50
        STRB     R0,[R5], #+1
        ADD      R1,R6,#+44
        MOVS     R0,#+4
        STRB     R0,[R5], #+1
        MOV      R2,R0
        MOV      R0,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  220   end = add_end(end);
        ADDS     R1,R5,#+4
        MOVS     R0,#+255
        STRB     R0,[R1], #+1
//  221   
//  222   uip_send(uip_appdata, (int)(end - (uint8_t *)uip_appdata));
        LDR      R0,[R4, #+0]
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        SUBS     R1,R1,R0
          CFI FunCall uip_send
        B.W      uip_send
          CFI EndBlock cfiBlock1
//  223 }
//  224 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function parse_options
        THUMB
//  225 static uint8_t
//  226 parse_options(uint8_t *optptr, int len)
//  227 {
parse_options:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOV      R4,R0
//  228   uint8_t *end = optptr + len;
        ADDS     R0,R1,R4
        STR      R0,[SP, #+0]
//  229   uint8_t type = 0;
        MOVS     R5,#+0
//  230   static uint8_t ip_cfg = 0;
//  231  // struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
//  232 
//  233   XPRINTF((10, "*optptr is %d\n", *optptr));
        LDRB     R2,[R4, #+0]
        ADR.W    R1,?_1
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  234   ip_cfg++;
        LDR.W    R0,??DataTable36_3
        ADR.W    R6,?_7
        LDRB     R1,[R0, #+0]
        ADR.W    R7,?_10
        ADR.W    R8,?_9
        ADR.W    R9,?_12
        LDR.W    R10,??DataTable36
        ADR.W    R11,?_11
        ADDS     R1,R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??parse_options_0
//  235   while(optptr < end) {
//  236     switch(*optptr) {
//  237     case DHCP_OPTION_SUBNET_MASK:
//  238       XPRINTF((8, "DHCP_OPTION_SUBNET_MASK\n"));
??parse_options_1:
        ADR.W    R1,?_2
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  239  	  memcpy(s.netmask.u16, optptr + 2, 4);
        MOVS     R2,#+4
        ADDS     R1,R4,#+2
        ADD      R0,R10,#+60
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  240  	  MEM_DUMP(8, "mask", s.netmask.u16, 4);
        MOVS     R3,#+4
        ADD      R2,R10,#+60
        ADR.W    R1,?_3
??parse_options_2:
        MOVS     R0,#+8
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  241       break;
//  242     case DHCP_OPTION_ROUTER:
//  243       XPRINTF((8, "DHCP_OPTION_ROUTER\n"));
//  244       memcpy(s.default_router.u16, optptr + 2, 4);
//  245       MEM_DUMP(8, "rout", s.default_router.u16, 4);
//  246       break;
//  247     case DHCP_OPTION_DNS_SERVER:
//  248       XPRINTF((8, "DHCP_OPTION_DNS_SERVER\n"));
//  249       memcpy(s.dnsaddr.u16, optptr + 2, 4);
//  250       MEM_DUMP(8, "dsna", s.dnsaddr.u16, 4);
//  251       break;
//  252     case DHCP_OPTION_MSG_TYPE:
//  253       type = *(optptr + 2);
//  254       XPRINTF((8, "DHCP_OPTION_MSG_TYPE\n"));
//  255       break;
//  256     case DHCP_OPTION_SERVER_ID:
//  257       XPRINTF((8, "DHCP_OPTION_SERVER_ID\n"));
//  258       memcpy(s.serverid, optptr + 2, 4);
//  259       MEM_DUMP(8, "serv", s.serverid, 4);
//  260       break;
//  261     case DHCP_OPTION_LEASE_TIME:
//  262       XPRINTF((8, "DHCP_OPTION_LEASE_TIME\n"));
//  263       memcpy(s.lease_time, optptr + 2, 4);
//  264       MEM_DUMP(8, "time", s.lease_time, 4);
//  265       break;
//  266     case DHCP_OPTION_END:
//  267       XPRINTF((8, "DHCP_OPTION_END\n"));
//  268       return type;
//  269     }
//  270 
//  271     optptr += optptr[1] + 2;
??parse_options_3:
        LDRB     R0,[R4, #+1]
        ADDS     R0,R0,R4
        ADDS     R4,R0,#+2
??parse_options_0:
        LDR      R0,[SP, #+0]
        CMP      R4,R0
        BCS.N    ??parse_options_4
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BEQ.N    ??parse_options_1
        CMP      R0,#+3
        BEQ.N    ??parse_options_5
        CMP      R0,#+6
        BEQ.N    ??parse_options_6
        CMP      R0,#+51
        BEQ.N    ??parse_options_7
        CMP      R0,#+53
        BEQ.N    ??parse_options_8
        CMP      R0,#+54
        BEQ.N    ??parse_options_9
        CMP      R0,#+255
        BNE.N    ??parse_options_3
        B.N      ??parse_options_10
??parse_options_5:
        ADR.W    R1,?_4
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R2,#+4
        ADDS     R1,R4,#+2
        ADD      R0,R10,#+92
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R3,#+4
        ADD      R2,R10,#+92
        ADR.W    R1,?_5
        B.N      ??parse_options_2
??parse_options_6:
        ADR.W    R1,?_6
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R2,#+4
        ADDS     R1,R4,#+2
        ADD      R0,R10,#+76
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R3,#+4
        ADD      R2,R10,#+76
        MOV      R1,R6
        B.N      ??parse_options_2
??parse_options_8:
        LDRB     R5,[R4, #+2]
        ADR.W    R1,?_8
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        B.N      ??parse_options_3
??parse_options_9:
        MOV      R1,R8
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R2,#+4
        ADDS     R1,R4,#+2
        ADD      R0,R10,#+36
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R3,#+4
        ADD      R2,R10,#+36
        MOV      R1,R7
        B.N      ??parse_options_2
??parse_options_7:
        MOV      R1,R11
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R2,#+4
        ADDS     R1,R4,#+2
        ADD      R0,R10,#+40
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R3,#+4
        ADD      R2,R10,#+40
        MOV      R1,R9
        B.N      ??parse_options_2
??parse_options_10:
        ADR.W    R1,?_13
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        B.N      ??parse_options_11
//  272   }
//  273   XPRINTF((10, "parse option type is %02x\n", type));
??parse_options_4:
        MOV      R2,R5
        ADR.W    R1,?_14
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  274   return type;
??parse_options_11:
        MOV      R0,R5
        POP      {R1,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock2
//  275 }

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??ip_cfg:
        DS8 1
//  276 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function parse_msg
        THUMB
//  277 static uint8_t
//  278 parse_msg(void)
//  279 {
parse_msg:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  280   struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
        LDR.W    R0,??DataTable36_2
//  281   MEM_DUMP(8,"pmsa", m->chaddr, s.mac_len);
        LDR.W    R5,??DataTable36
        LDR      R4,[R0, #+0]
        LDR      R3,[R5, #+32]
        ADR.W    R1,?_15
        ADD      R2,R4,#+28
        MOVS     R0,#+8
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  282   MEM_DUMP(8,"smsa", s.mac_addr, s.mac_len);
        LDR      R3,[R5, #+32]
        LDR      R2,[R5, #+28]
        ADR.W    R1,?_16
        MOVS     R0,#+8
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  283   //MEM_DUMP(10,"opti", &m->options[4], uip_datalen());
//  284   
//  285   if(m->op == DHCP_REPLY &&
//  286      memcmp(m->xid, &xid, sizeof(xid)) == 0 &&
//  287      memcmp(m->chaddr, s.mac_addr, s.mac_len) == 0) {
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BNE.N    ??parse_msg_0
        MOVS     R2,#+4
        ADD      R1,R5,#+108
        ADDS     R0,R4,#+4
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??parse_msg_0
        LDR      R2,[R5, #+32]
        LDR      R1,[R5, #+28]
        ADD      R0,R4,#+28
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??parse_msg_0
//  288      memcpy(s.ipaddr.u16, m->yiaddr, 4);
        MOVS     R2,#+4
        ADD      R1,R4,#+16
        ADD      R0,R5,#+44
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  289      
//  290      return parse_options(&m->options[4], uip_datalen());
        LDR.W    R0,??DataTable36_4
        LDRH     R1,[R0, #+0]
        ADD      R0,R4,#+240
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall parse_options
        B.N      parse_options
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  291   }
//  292   return 0;
??parse_msg_0:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//  293 }
//  294 /*---------------------------------------------------------------------------*/
//  295 /*
//  296  * Is this a "fresh" reply for me? If it is, return the type.
//  297  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function msg_for_me
        THUMB
//  298 static int
//  299 msg_for_me(void)
//  300 {
msg_for_me:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  301   struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
        LDR.W    R0,??DataTable36_2
        LDR      R5,[R0, #+0]
//  302   uint8_t *optptr = &m->options[4];
//  303   uint8_t *end = (uint8_t*)uip_appdata + uip_datalen();
        LDR.W    R0,??DataTable36_4
        LDRH     R0,[R0, #+0]
        ADDS     R6,R0,R5
//  304   if(m->op == DHCP_REPLY &&
//  305      memcmp(m->xid, &xid, sizeof(xid)) == 0 &&
//  306      memcmp(m->chaddr, s.mac_addr, s.mac_len) == 0) {
        LDRB     R0,[R5, #+0]
        CMP      R0,#+2
        ADD      R4,R5,#+240
        BNE.N    ??msg_for_me_0
        LDR.W    R7,??DataTable36
        MOVS     R2,#+4
        ADD      R1,R7,#+108
        ADDS     R0,R5,#+4
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??msg_for_me_0
        LDR      R2,[R7, #+32]
        LDR      R1,[R7, #+28]
        ADD      R0,R5,#+28
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??msg_for_me_0
        B.N      ??msg_for_me_1
//  307      while(optptr < end) {
//  308       if(*optptr == DHCP_OPTION_MSG_TYPE) {
//  309       	XPRINTF((10, "OPT2 = %02x\n", *(optptr + 2)));
//  310 	    return *(optptr + 2);
//  311       } else if (*optptr == DHCP_OPTION_END) {
//  312 	    return -1;
//  313       }
//  314       optptr += optptr[1] + 2;
??msg_for_me_2:
        LDRB     R0,[R4, #+1]
        ADDS     R0,R0,R4
        ADDS     R4,R0,#+2
??msg_for_me_1:
        CMP      R4,R6
        BCS.N    ??msg_for_me_0
        LDRB     R0,[R4, #+0]
        CMP      R0,#+53
        BNE.N    ??msg_for_me_3
        LDRB     R2,[R4, #+2]
        ADR.W    R1,?_17
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDRB     R0,[R4, #+2]
        POP      {R1,R4-R7,PC}
??msg_for_me_3:
        CMP      R0,#+255
        BNE.N    ??msg_for_me_2
//  315     }
//  316   }
//  317   return -1;
??msg_for_me_0:
        MOV      R0,#-1
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock4
//  318 }
//  319 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function handle_dhcp
        THUMB
//  320 static
//  321 PT_THREAD(handle_dhcp(process_event_t ev, void *data))
//  322 {
handle_dhcp:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  323   clock_time_t ticks;
//  324 
//  325   PT_BEGIN(&s.pt);
        LDR.W    R4,??DataTable36
        MOV      R5,R0
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??handle_dhcp_0
        MOVW     R1,#+333
        SUBS     R0,R0,R1
        BEQ.N    ??handle_dhcp_1
        SUBS     R0,R0,#+5
        BEQ.N    ??handle_dhcp_2
        SUBS     R0,R0,#+21
        BEQ.N    ??handle_dhcp_3
        SUBS     R0,R0,#+5
        BEQ.W    ??handle_dhcp_4
        SUBS     R0,R0,#+61
        BEQ.W    ??handle_dhcp_5
        SUBS     R0,R0,#+16
        BEQ.W    ??handle_dhcp_6
        SUBS     R0,R0,#+7
        BEQ.W    ??handle_dhcp_7
        B.N      ??handle_dhcp_8
//  326  init:
//  327   xid++;
??handle_dhcp_0:
        LDR      R0,[R4, #+108]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+108]
//  328   s.state = STATE_SENDING;
        MOVS     R0,#+1
        STRB     R0,[R4, #+2]
//  329   s.ticks = CLOCK_SECOND * 4;
        MOV      R0,#+4000
??handle_dhcp_9:
        STR      R0,[R4, #+24]
//  330   while(1) {
//  331     while(ev != tcpip_event) {
??handle_dhcp_1:
        LDR.N    R0,??DataTable36_5
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BEQ.N    ??handle_dhcp_10
//  332       tcpip_poll_udp(s.conn);
        LDR      R0,[R4, #+4]
          CFI FunCall tcpip_poll_udp
        BL       tcpip_poll_udp
//  333       PT_YIELD(&s.pt);
        MOVW     R0,#+333
??handle_dhcp_11:
        STRH     R0,[R4, #+0]
//  334     }
//  335     send_discover();
//  336     etimer_set(&s.etimer, s.ticks);
//  337     do {
//  338       PT_YIELD(&s.pt);
//  339       XPRINTF((12, "msg_for_me 1\n"));
//  340       if(ev == tcpip_event && uip_newdata() && msg_for_me() == DHCPOFFER) {
//  341 	    parse_msg();
//  342 	    s.state = STATE_OFFER_RECEIVED;
//  343 	    goto selecting;
//  344       }
//  345     } while(!etimer_expired(&s.etimer));
//  346 
//  347     if(s.ticks < CLOCK_SECOND * 60) {
//  348       s.ticks *= 2;
//  349     }
//  350   }
//  351   
//  352  selecting:
//  353  // XPRINTF((10, "handle_dhcp2\n")); 
//  354   xid++;
//  355   s.ticks = CLOCK_SECOND;
//  356   do {
//  357     while(ev != tcpip_event) {
//  358       tcpip_poll_udp(s.conn);
//  359       PT_YIELD(&s.pt);
//  360     }
//  361     send_request();
//  362     etimer_set(&s.etimer, s.ticks);
//  363     do {
//  364       PT_YIELD(&s.pt);
//  365       XPRINTF((12, "msg_for_me 2\n"));
//  366       if(ev == tcpip_event && uip_newdata() && msg_for_me() == DHCPACK) {
//  367       //if(ev == tcpip_event && uip_newdata() && (msg_for_me() == DHCPACK || msg_for_me() == DHCPOFFER)) {
//  368 	    parse_msg();
//  369 	    s.state = STATE_CONFIG_RECEIVED;
//  370 	    goto bound;
//  371       }
//  372     } while (!etimer_expired(&s.etimer));
//  373 
//  374     if(s.ticks <= CLOCK_SECOND * 10) {
//  375       s.ticks += CLOCK_SECOND;
//  376     } else {
//  377       goto init;
//  378     }
//  379   } while(s.state != STATE_CONFIG_RECEIVED);
//  380   
//  381  bound:
//  382  /*
//  383   PRINTF("Got IP address %d.%d.%d.%d\n", uip_ipaddr_to_quad(&s.ipaddr));
//  384   PRINTF("Got netmask %d.%d.%d.%d\n",	 uip_ipaddr_to_quad(&s.netmask));
//  385   PRINTF("Got DNS server %d.%d.%d.%d\n", uip_ipaddr_to_quad(&s.dnsaddr));
//  386   PRINTF("Got default router %d.%d.%d.%d\n",
//  387 	 uip_ipaddr_to_quad(&s.default_router));
//  388   PRINTF("Lease expires in %ld seconds\n",
//  389 	 uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1]));
//  390  */
//  391   ip64_print_dhcpc_info();
//  392 
//  393   ip64_dhcpc_configured(&s);
//  394   //appUpdateNetMode();
//  395 
//  396   /*
//  397   if (mem_cmp(s.ipaddr, cmpipaddr, 3) == 0 && check_ip((uip_ip4addr_t *)&sip.ipaddr))
//  398   {
//  399     ip64_dhcpc_configured(&s);
//  400     XPRINTF((10,"IP100\n"));
//  401   }
//  402   else
//  403   {
//  404     ip64_dhcpc_configured(&sip);
//  405     XPRINTF((10,"IP other\n"));
//  406   }
//  407   */
//  408   
//  409 #define MAX_TICKS (~((clock_time_t)0) / 2)
//  410 #define MAX_TICKS32 (~((uint32_t)0))
//  411 #define IMIN(a, b) ((a) < (b) ? (a) : (b))
//  412 
//  413   if((uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1]))*CLOCK_SECOND/2
//  414      <= MAX_TICKS32) {
//  415     s.ticks = (uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1])
//  416 	       )*CLOCK_SECOND/2;
//  417   } else {
//  418     s.ticks = MAX_TICKS32;
//  419   }
//  420 
//  421   while(s.ticks > 0) {
//  422     ticks = IMIN(s.ticks, MAX_TICKS);
//  423     s.ticks -= ticks;
//  424     etimer_set(&s.etimer, ticks);
//  425     PT_YIELD_UNTIL(&s.pt, etimer_expired(&s.etimer));
//  426   }
//  427 
//  428   if((uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1]))*CLOCK_SECOND/2
//  429      <= MAX_TICKS32) {
//  430     s.ticks = (uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1])
//  431 	       )*CLOCK_SECOND/2;
//  432   } else {
//  433     s.ticks = MAX_TICKS32;
//  434   }
//  435 
//  436   /* renewing: */
//  437   xid++;
//  438   do {
//  439     while(ev != tcpip_event) {
//  440       tcpip_poll_udp(s.conn);
//  441       PT_YIELD(&s.pt);
//  442     }
//  443     send_request();
//  444     ticks = IMIN(s.ticks / 2, MAX_TICKS);
//  445     s.ticks -= ticks;
//  446     etimer_set(&s.etimer, ticks);
//  447     do {
//  448       PT_YIELD(&s.pt);		//msg_for_me() == DHCPACK
??handle_dhcp_12:
        MOVS     R0,#+1
        POP      {R4-R6,PC}
??handle_dhcp_10:
        LDR.N    R5,??DataTable36_2
        LDR      R6,[R5, #+0]
        MOV      R0,R6
          CFI FunCall create_msg
        BL       create_msg
        ADD      R1,R6,#+240
        MOVS     R0,#+53
        STRB     R0,[R1], #+1
        MOVS     R0,#+1
        STRB     R0,[R1], #+1
        STRB     R0,[R1], #+1
        MOVS     R0,#+55
        STRB     R0,[R1], #+1
        MOVS     R0,#+3
        STRB     R0,[R1], #+1
        MOVS     R0,#+1
        STRB     R0,[R1], #+1
        MOVS     R0,#+3
        STRB     R0,[R1], #+1
        MOVS     R0,#+6
        STRB     R0,[R1], #+1
        MOVS     R0,#+255
        STRB     R0,[R1], #+1
        LDR      R0,[R5, #+0]
        SUBS     R1,R1,R0
          CFI FunCall uip_send
        BL       uip_send
        LDR      R1,[R4, #+24]
        ADD      R0,R4,#+8
          CFI FunCall etimer_set
        BL       etimer_set
??handle_dhcp_13:
        MOV      R0,#+338
        B.N      ??handle_dhcp_11
??handle_dhcp_2:
        ADR.W    R1,?_18
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDR.N    R0,??DataTable36_5
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BNE.N    ??handle_dhcp_14
        LDR.N    R0,??DataTable36_6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??handle_dhcp_14
          CFI FunCall msg_for_me
        BL       msg_for_me
        CMP      R0,#+2
        BNE.N    ??handle_dhcp_14
          CFI FunCall parse_msg
        BL       parse_msg
        MOVS     R0,#+2
        STRB     R0,[R4, #+2]
        LDR      R0,[R4, #+108]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+108]
        MOV      R0,#+1000
        STR      R0,[R4, #+24]
??handle_dhcp_3:
        LDR.N    R0,??DataTable36_5
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BEQ.N    ??handle_dhcp_15
        LDR      R0,[R4, #+4]
          CFI FunCall tcpip_poll_udp
        BL       tcpip_poll_udp
        MOVW     R0,#+359
        B.N      ??handle_dhcp_11
??handle_dhcp_14:
        ADD      R0,R4,#+8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CMP      R0,#+0
        BEQ.N    ??handle_dhcp_13
        LDR      R0,[R4, #+24]
        MOVW     R1,#+60000
        CMP      R0,R1
        BCS.N    ??handle_dhcp_1
        LSLS     R0,R0,#+1
        B.N      ??handle_dhcp_9
??handle_dhcp_15:
          CFI FunCall send_request
        BL       send_request
        LDR      R1,[R4, #+24]
        ADD      R0,R4,#+8
          CFI FunCall etimer_set
        BL       etimer_set
??handle_dhcp_16:
        MOV      R0,#+364
        B.N      ??handle_dhcp_11
??handle_dhcp_4:
        ADR.W    R1,?_19
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDR.N    R0,??DataTable36_5
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BNE.N    ??handle_dhcp_17
        LDR.N    R0,??DataTable36_6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??handle_dhcp_17
          CFI FunCall msg_for_me
        BL       msg_for_me
        CMP      R0,#+5
        BNE.N    ??handle_dhcp_17
          CFI FunCall parse_msg
        BL       parse_msg
        MOVS     R0,#+3
        STRB     R0,[R4, #+2]
        B.N      ??handle_dhcp_18
??handle_dhcp_17:
        ADD      R0,R4,#+8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CMP      R0,#+0
        BEQ.N    ??handle_dhcp_16
        LDR      R0,[R4, #+24]
        MOVW     R1,#+10001
        CMP      R0,R1
        BCS.W    ??handle_dhcp_0
        ADD      R0,R0,#+1000
        STR      R0,[R4, #+24]
        LDRB     R0,[R4, #+2]
        CMP      R0,#+3
        BNE.N    ??handle_dhcp_3
??handle_dhcp_18:
          CFI FunCall ip64_print_dhcpc_info
        BL       ip64_print_dhcpc_info
        MOV      R0,R4
          CFI FunCall ip64_dhcpc_configured
        BL       ip64_dhcpc_configured
        LDRH     R0,[R4, #+40]
          CFI FunCall uip_htons
        BL       uip_htons
        LDRH     R0,[R4, #+42]
          CFI FunCall uip_htons
        BL       uip_htons
        LDRH     R0,[R4, #+40]
          CFI FunCall uip_htons
        BL       uip_htons
        MOV      R6,R0
        LDRH     R0,[R4, #+42]
          CFI FunCall uip_htons
        BL       uip_htons
        ADD      R0,R0,R6, LSL #+16
        MOV      R1,#+1000
        MULS     R0,R1,R0
        LSRS     R0,R0,#+1
        STR      R0,[R4, #+24]
??handle_dhcp_19:
        LDR      R0,[R4, #+24]
        CBZ.N    R0,??handle_dhcp_20
        MVN      R1,#-2147483648
        CMP      R0,R1
        IT       CC 
        MOVCC    R1,R0
        SUBS     R0,R0,R1
        STR      R0,[R4, #+24]
        ADD      R0,R4,#+8
          CFI FunCall etimer_set
        BL       etimer_set
        MOVW     R0,#+425
        B.N      ??handle_dhcp_11
??handle_dhcp_5:
        ADD      R0,R4,#+8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CMP      R0,#+0
        BNE.N    ??handle_dhcp_19
        B.N      ??handle_dhcp_12
??handle_dhcp_20:
        LDRH     R0,[R4, #+40]
          CFI FunCall uip_htons
        BL       uip_htons
        LDRH     R0,[R4, #+42]
          CFI FunCall uip_htons
        BL       uip_htons
        LDRH     R0,[R4, #+40]
          CFI FunCall uip_htons
        BL       uip_htons
        MOV      R6,R0
        LDRH     R0,[R4, #+42]
          CFI FunCall uip_htons
        BL       uip_htons
        ADD      R0,R0,R6, LSL #+16
        MOV      R1,#+1000
        MULS     R0,R1,R0
        LSRS     R0,R0,#+1
        STR      R0,[R4, #+24]
        LDR      R0,[R4, #+108]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+108]
??handle_dhcp_6:
        LDR.N    R0,??DataTable36_5
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BEQ.N    ??handle_dhcp_21
        LDR      R0,[R4, #+4]
          CFI FunCall tcpip_poll_udp
        BL       tcpip_poll_udp
        MOVW     R0,#+441
        B.N      ??handle_dhcp_11
??handle_dhcp_21:
          CFI FunCall send_request
        BL       send_request
        LDR      R0,[R4, #+24]
        LSRS     R2,R0,#+1
        MVN      R1,#-2147483648
        CMP      R2,R1
        IT       CC 
        MOVCC    R1,R2
        SUBS     R0,R0,R1
        STR      R0,[R4, #+24]
        ADD      R0,R4,#+8
          CFI FunCall etimer_set
        BL       etimer_set
??handle_dhcp_22:
        MOV      R0,#+448
        B.N      ??handle_dhcp_11
//  449       XPRINTF((10, "msg_for_me 3\n"));
??handle_dhcp_7:
        ADR.W    R1,?_20
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  450       if(ev == tcpip_event && uip_newdata() && msg_for_me() == DHCPACK) {
        LDR.N    R0,??DataTable36_5
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BNE.N    ??handle_dhcp_23
        LDR.N    R0,??DataTable36_6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??handle_dhcp_23
          CFI FunCall msg_for_me
        BL       msg_for_me
        CMP      R0,#+5
        BNE.N    ??handle_dhcp_23
//  451       //if(ev == tcpip_event && uip_newdata() && (msg_for_me() == DHCPACK || msg_for_me() == DHCPOFFER)) {
//  452 	parse_msg();
          CFI FunCall parse_msg
        BL       parse_msg
//  453 	goto bound;
        B.N      ??handle_dhcp_18
//  454       }
//  455     } while(!etimer_expired(&s.etimer));
??handle_dhcp_23:
        ADD      R0,R4,#+8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CMP      R0,#+0
        BEQ.N    ??handle_dhcp_22
//  456   } while(s.ticks >= CLOCK_SECOND*3);
        LDR      R0,[R4, #+24]
        MOVW     R1,#+3000
        CMP      R0,R1
        BCS.N    ??handle_dhcp_6
//  457 
//  458   /* rebinding: */
//  459 
//  460   /* lease_expired: */
//  461   ip64_dhcpc_unconfigured(&s);
        MOV      R0,R4
          CFI FunCall ip64_dhcpc_unconfigured
        BL       ip64_dhcpc_unconfigured
//  462   goto init;
        B.N      ??handle_dhcp_0
//  463 
//  464   PT_END(&s.pt);
??handle_dhcp_8:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock5
//  465 }
//  466 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ip64_dhcpc_init
        THUMB
//  467 void
//  468 ip64_dhcpc_init(const void *mac_addr, int mac_len)
//  469 {
ip64_dhcpc_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  470   /* Although this is DHCPv4, we explicitly bind the socket to an IPv6
//  471      address so that it can operate over the ip64 bridge. */
//  472   uip_ip6addr_t v6addr;
//  473   uip_ip4addr_t v4addr;
//  474   struct uip_udp_conn *conn2;
//  475   
//  476   s.mac_addr = mac_addr;
        LDR.N    R4,??DataTable36
        SUB      SP,SP,#+24
          CFI CFA R13+32
        STR      R0,[R4, #+28]
//  477   s.mac_len  = mac_len;
        STR      R1,[R4, #+32]
//  478 
//  479   s.state = STATE_INITIAL;
        MOVS     R0,#+0
        STRB     R0,[R4, #+2]
//  480   uip_ipaddr(&v4addr, 255,255,255,255); 
//  481   ip64_addr_4to6(&v4addr, &v6addr);
        ADD      R1,SP,#+4
        MOVS     R0,#+255
        STRB     R0,[SP, #+0]
        STRB     R0,[SP, #+1]
        STRB     R0,[SP, #+2]
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
          CFI FunCall ip64_addr_4to6
        BL       ip64_addr_4to6
//  482   s.conn = udp_new(&v6addr, UIP_HTONS(IP64_DHCPC_SERVER_PORT), NULL);
        MOVS     R2,#+0
        MOV      R1,#+17152
        ADD      R0,SP,#+4
          CFI FunCall udp_new
        BL       udp_new
        STR      R0,[R4, #+4]
//  483   conn2 = udp_new(NULL, UIP_HTONS(IP64_DHCPC_SERVER_PORT), NULL);
        MOVS     R2,#+0
        MOV      R1,#+17152
        MOVS     R0,#+0
          CFI FunCall udp_new
        BL       udp_new
//  484   if(s.conn != NULL) {
        LDR      R1,[R4, #+4]
        CBZ.N    R1,??ip64_dhcpc_init_0
//  485     udp_bind(s.conn, UIP_HTONS(IP64_DHCPC_CLIENT_PORT));
        MOV      R2,#+17408
        STRH     R2,[R1, #+16]
//  486   }
//  487   if(conn2 != NULL) {
??ip64_dhcpc_init_0:
        CBZ.N    R0,??ip64_dhcpc_init_1
//  488     udp_bind(conn2, UIP_HTONS(IP64_DHCPC_CLIENT_PORT));
        MOV      R1,#+17408
        STRH     R1,[R0, #+16]
//  489   }
//  490   PT_INIT(&s.pt);
??ip64_dhcpc_init_1:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
//  491 }
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  492 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ip64_dhcpc_appcall
        THUMB
//  493 void
//  494 ip64_dhcpc_appcall(process_event_t ev, void *data)
//  495 {
//  496   if(ev == tcpip_event || ev == PROCESS_EVENT_TIMER) {
ip64_dhcpc_appcall:
        LDR.N    R2,??DataTable36_5
        LDRB     R2,[R2, #+0]
        CMP      R0,R2
        ITE      NE 
        CMPNE    R0,#+136
//  497     handle_dhcp(ev, data);
          CFI FunCall handle_dhcp
        BEQ.W    handle_dhcp
//  498   }
//  499 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  500 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function ip64_dhcpc_request
        THUMB
//  501 void
//  502 ip64_dhcpc_request(void)
//  503 {
ip64_dhcpc_request:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
//  504   uip_ipaddr_t ipaddr;
//  505   
//  506   if(s.state == STATE_INITIAL) {
        LDR.N    R0,??DataTable36
        LDRB     R0,[R0, #+2]
        SUB      SP,SP,#+20
          CFI CFA R13+24
        CBNZ.N   R0,??ip64_dhcpc_request_0
//  507     uip_ipaddr(&ipaddr, 0,0,0,0);
        STRB     R0,[SP, #+0]
        STRB     R0,[SP, #+1]
        STRB     R0,[SP, #+2]
        STRB     R0,[SP, #+3]
//  508     uip_sethostaddr(&ipaddr);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable36_1
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  509     handle_dhcp(PROCESS_EVENT_NONE, NULL);
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
        MOVS     R0,#+128
          CFI FunCall handle_dhcp
        B.N      handle_dhcp
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  510   }
//  511 }
??ip64_dhcpc_request_0:
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock8
//  512 /*---------------------------------------------------------------------------*/
//  513 
//  514 
//  515 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function ip64_print_dhcpc_info
        THUMB
//  516 void ip64_print_dhcpc_info(void)
//  517 {
ip64_print_dhcpc_info:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  518    //if (mem_cmp(s.ipaddr, cmpipaddr, 4) == 0 && check_ip((uip_ip4addr_t *)&sip.ipaddr))
//  519    {
//  520       PRINTF("Got IP address %d.%d.%d.%d\n", uip_ipaddr_to_quad(&s.ipaddr));
        LDR.N    R4,??DataTable36
        ADD      R5,R4,#+40
        SUB      SP,SP,#+8
          CFI CFA R13+24
        LDRB     R0,[R5, #+7]
        LDRB     R3,[R5, #+6]
        LDRB     R2,[R5, #+5]
        LDRB     R1,[R5, #+4]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_21
          CFI FunCall xprintf
        BL       xprintf
//  521       PRINTF("Got netmask %d.%d.%d.%d\n",	 uip_ipaddr_to_quad(&s.netmask));
        LDRB     R0,[R5, #+23]
        LDRB     R3,[R5, #+22]
        LDRB     R2,[R5, #+21]
        LDRB     R1,[R5, #+20]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_22
          CFI FunCall xprintf
        BL       xprintf
//  522       PRINTF("Got DNS server %d.%d.%d.%d\n", uip_ipaddr_to_quad(&s.dnsaddr));
        LDRB     R1,[R4, #+76]
        ADD      R6,R4,#+76
        LDRB     R0,[R6, #+3]
        LDRB     R3,[R6, #+2]
        LDRB     R2,[R6, #+1]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_23
          CFI FunCall xprintf
        BL       xprintf
//  523       PRINTF("Got default router %d.%d.%d.%d\n",
//  524     	 uip_ipaddr_to_quad(&s.default_router));
        LDRB     R0,[R6, #+19]
        LDRB     R3,[R6, #+18]
        LDRB     R2,[R6, #+17]
        LDRB     R1,[R6, #+16]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_24
          CFI FunCall xprintf
        BL       xprintf
//  525   }
//  526   /*
//  527   else
//  528   {
//  529       PRINTF("Got IP address %d.%d.%d.%d\n", uip_ipaddr_to_quad(&sip.ipaddr));
//  530       PRINTF("Got netmask %d.%d.%d.%d\n",	 uip_ipaddr_to_quad(&sip.netmask));
//  531       PRINTF("Got DNS server %d.%d.%d.%d\n", uip_ipaddr_to_quad(&sip.dnsaddr));
//  532       PRINTF("Got default router %d.%d.%d.%d\n",
//  533     	 uip_ipaddr_to_quad(&sip.default_router));  
//  534   }
//  535   */
//  536   PRINTF("Lease expires in %ld seconds\n",
//  537 	 uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1]));
        LDRH     R0,[R4, #+40]
          CFI FunCall uip_htons
        BL       uip_htons
        MOV      R4,R0
        LDRH     R0,[R5, #+2]
          CFI FunCall uip_htons
        BL       uip_htons
        ADD      R1,R0,R4, LSL #+16
        POP      {R2-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R0,?_25
          CFI FunCall xprintf
        B.W      xprintf
          CFI EndBlock cfiBlock9
//  538 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36:
        DC32     s

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_1:
        DC32     uip_hostaddr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_2:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_3:
        DC32     ??ip_cfg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_4:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_5:
        DC32     tcpip_event

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_6:
        DC32     uip_flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_0:
        DC8 "Thingsquare"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "*optptr is %d\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "DHCP_OPTION_SUBNET_MASK\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "mask"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "DHCP_OPTION_ROUTER\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 "rout"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_6:
        DC8 "DHCP_OPTION_DNS_SERVER\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_7:
        DC8 "dsna"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_8:
        DC8 "DHCP_OPTION_MSG_TYPE\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_9:
        DC8 "DHCP_OPTION_SERVER_ID\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_10:
        DC8 "serv"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_11:
        DC8 "DHCP_OPTION_LEASE_TIME\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_12:
        DC8 "time"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_13:
        DC8 "DHCP_OPTION_END\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_14:
        DC8 "parse option type is %02x\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_15:
        DC8 "pmsa"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_16:
        DC8 "smsa"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_17:
        DC8 "OPT2 = %02x\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_18:
        DC8 "msg_for_me 1\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_19:
        DC8 "msg_for_me 2\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_20:
        DC8 "msg_for_me 3\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_21:
        DC8 "Got IP address %d.%d.%d.%d\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_22:
        DC8 "Got netmask %d.%d.%d.%d\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_23:
        DC8 "Got DNS server %d.%d.%d.%d\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_24:
        DC8 "Got default router %d.%d.%d.%d\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_25:
        DC8 "Lease expires in %ld seconds\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
magic_cookie:
        DC8 99, 130, 83, 99

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//   113 bytes in section .bss
// 2 254 bytes in section .text
// 
// 2 254 bytes of CODE memory
//   113 bytes of DATA memory
//
//Errors: none
//Warnings: 4
