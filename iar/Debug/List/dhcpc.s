///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:41
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\dhcpc.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\dhcpc.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\dhcpc.s
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
        EXTERN dhcpc_configured
        EXTERN dhcpc_unconfigured
        EXTERN etimer_expired
        EXTERN etimer_set
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

        PUBLIC dhcpc_appcall
        PUBLIC dhcpc_init
        PUBLIC dhcpc_request
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\dhcpc.c
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
//   33 #include <stdio.h>
//   34 #include <string.h>
//   35 
//   36 #include "contiki.h"
//   37 #include "contiki-net.h"
//   38 #include "net/ip/dhcpc.h"
//   39 
//   40 #define STATE_INITIAL         0
//   41 #define STATE_SENDING         1
//   42 #define STATE_OFFER_RECEIVED  2
//   43 #define STATE_CONFIG_RECEIVED 3
//   44 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 static struct dhcpc_state s;
s:
        DS8 108
        DS8 4
//   46 
//   47 struct dhcp_msg {
//   48   uint8_t op, htype, hlen, hops;
//   49   uint8_t xid[4];
//   50   uint16_t secs, flags;
//   51   uint8_t ciaddr[4];
//   52   uint8_t yiaddr[4];
//   53   uint8_t siaddr[4];
//   54   uint8_t giaddr[4];
//   55   uint8_t chaddr[16];
//   56 #ifndef UIP_CONF_DHCP_LIGHT
//   57   uint8_t sname[64];
//   58   uint8_t file[128];
//   59 #endif
//   60   uint8_t options[312];
//   61 };
//   62 
//   63 #define BOOTP_BROADCAST 0x8000
//   64 
//   65 #define DHCP_REQUEST        1
//   66 #define DHCP_REPLY          2
//   67 #define DHCP_HTYPE_ETHERNET 1
//   68 #define DHCP_HLEN_ETHERNET  6
//   69 #define DHCP_MSG_LEN      236
//   70 
//   71 #define DHCPC_SERVER_PORT  67
//   72 #define DHCPC_CLIENT_PORT  68
//   73 
//   74 #define DHCPDISCOVER  1
//   75 #define DHCPOFFER     2
//   76 #define DHCPREQUEST   3
//   77 #define DHCPDECLINE   4
//   78 #define DHCPACK       5
//   79 #define DHCPNAK       6
//   80 #define DHCPRELEASE   7
//   81 
//   82 #define DHCP_OPTION_SUBNET_MASK   1
//   83 #define DHCP_OPTION_ROUTER        3
//   84 #define DHCP_OPTION_DNS_SERVER    6
//   85 #define DHCP_OPTION_REQ_IPADDR   50
//   86 #define DHCP_OPTION_LEASE_TIME   51
//   87 #define DHCP_OPTION_MSG_TYPE     53
//   88 #define DHCP_OPTION_SERVER_ID    54
//   89 #define DHCP_OPTION_REQ_LIST     55
//   90 #define DHCP_OPTION_END         255
//   91 
//   92 static uint32_t xid;
//   93 static const uint8_t magic_cookie[4] = {99, 130, 83, 99};
//   94 /*---------------------------------------------------------------------------*/
//   95 static uint8_t *
//   96 add_msg_type(uint8_t *optptr, uint8_t type)
//   97 {
//   98   *optptr++ = DHCP_OPTION_MSG_TYPE;
//   99   *optptr++ = 1;
//  100   *optptr++ = type;
//  101   return optptr;
//  102 }
//  103 /*---------------------------------------------------------------------------*/
//  104 static uint8_t *
//  105 add_server_id(uint8_t *optptr)
//  106 {
//  107   *optptr++ = DHCP_OPTION_SERVER_ID;
//  108   *optptr++ = 4;
//  109   memcpy(optptr, s.serverid, 4);
//  110   return optptr + 4;
//  111 }
//  112 /*---------------------------------------------------------------------------*/
//  113 static uint8_t *
//  114 add_req_ipaddr(uint8_t *optptr)
//  115 {
//  116   *optptr++ = DHCP_OPTION_REQ_IPADDR;
//  117   *optptr++ = 4;
//  118   memcpy(optptr, s.ipaddr.u16, 4);
//  119   return optptr + 4;
//  120 }
//  121 /*---------------------------------------------------------------------------*/
//  122 static uint8_t *
//  123 add_req_options(uint8_t *optptr)
//  124 {
//  125   *optptr++ = DHCP_OPTION_REQ_LIST;
//  126   *optptr++ = 3;
//  127   *optptr++ = DHCP_OPTION_SUBNET_MASK;
//  128   *optptr++ = DHCP_OPTION_ROUTER;
//  129   *optptr++ = DHCP_OPTION_DNS_SERVER;
//  130   return optptr;
//  131 }
//  132 /*---------------------------------------------------------------------------*/
//  133 static uint8_t *
//  134 add_end(uint8_t *optptr)
//  135 {
//  136   *optptr++ = DHCP_OPTION_END;
//  137   return optptr;
//  138 }
//  139 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function create_msg
        THUMB
//  140 static void
//  141 create_msg(CC_REGISTER_ARG struct dhcp_msg *m)
//  142 {
create_msg:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  143   m->op = DHCP_REQUEST;
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//  144   m->htype = DHCP_HTYPE_ETHERNET;
        STRB     R0,[R4, #+1]
//  145   m->hlen = s.mac_len;
//  146   m->hops = 0;
//  147   memcpy(m->xid, &xid, sizeof(m->xid));
        MOVS     R2,#+4
        LDR.W    R5,??DataTable8
        LDR      R0,[R5, #+32]
        STRB     R0,[R4, #+2]
        ADD      R1,R5,#+108
        MOVS     R0,#+0
        STRB     R0,[R4, #+3]
        ADDS     R0,R4,#+4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  148   m->secs = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+8]
//  149   m->flags = UIP_HTONS(BOOTP_BROADCAST); /*  Broadcast bit. */
//  150   /*  uip_ipaddr_copy(m->ciaddr, uip_hostaddr);*/
//  151   memcpy(m->ciaddr, uip_hostaddr.u16, sizeof(m->ciaddr));
        MOVS     R2,#+4
        MOVS     R0,#+128
        STRH     R0,[R4, #+10]
        ADD      R0,R4,#+12
        LDR.W    R1,??DataTable8_1
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  152   memset(m->yiaddr, 0, sizeof(m->yiaddr));
        MOVS     R1,#+4
        ADD      R0,R4,#+16
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  153   memset(m->siaddr, 0, sizeof(m->siaddr));
        MOVS     R1,#+4
        ADD      R0,R4,#+20
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  154   memset(m->giaddr, 0, sizeof(m->giaddr));
        MOVS     R1,#+4
        ADD      R0,R4,#+24
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  155   memcpy(m->chaddr, s.mac_addr, s.mac_len);
        LDR      R2,[R5, #+32]
        LDR      R1,[R5, #+28]
        ADD      R0,R4,#+28
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  156   memset(&m->chaddr[s.mac_len], 0, sizeof(m->chaddr) - s.mac_len);
        LDR      R0,[R5, #+32]
        RSB      R1,R0,#+16
        ADDS     R0,R0,R4
        ADDS     R0,R0,#+28
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  157 #ifndef UIP_CONF_DHCP_LIGHT
//  158   memset(m->sname, 0, sizeof(m->sname));
        MOVS     R1,#+64
        ADD      R0,R4,#+44
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  159   memset(m->file, 0, sizeof(m->file));
        MOVS     R1,#+128
        ADD      R0,R4,#+108
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  160 #endif
//  161 
//  162   memcpy(m->options, magic_cookie, sizeof(magic_cookie));
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
//  163 }
//  164 /*---------------------------------------------------------------------------*/
//  165 static void
//  166 send_discover(void)
//  167 {
//  168   uint8_t *end;
//  169   struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
//  170 
//  171   create_msg(m);
//  172 
//  173   end = add_msg_type(&m->options[4], DHCPDISCOVER);
//  174   end = add_req_options(end);
//  175   end = add_end(end);
//  176 
//  177   uip_send(uip_appdata, (int)(end - (uint8_t *)uip_appdata));
//  178 }
//  179 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function send_request
        THUMB
//  180 static void
//  181 send_request(void)
//  182 {
send_request:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  183   uint8_t *end;
//  184   struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
        LDR.W    R4,??DataTable8_2
        LDR      R5,[R4, #+0]
//  185 
//  186   create_msg(m);
        MOV      R0,R5
          CFI FunCall create_msg
        BL       create_msg
//  187   
//  188   end = add_msg_type(&m->options[4], DHCPREQUEST);
        ADDS     R5,R5,#+240
        MOVS     R0,#+53
        STRB     R0,[R5], #+1
        MOVS     R0,#+1
        STRB     R0,[R5], #+1
        MOVS     R0,#+3
        STRB     R0,[R5], #+1
//  189   end = add_server_id(end);
        MOVS     R0,#+54
        STRB     R0,[R5], #+1
        MOVS     R0,#+4
        STRB     R0,[R5], #+1
        MOVS     R2,#+4
        LDR.W    R6,??DataTable8
        ADD      R1,R6,#+36
        MOV      R0,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  190   end = add_req_ipaddr(end);
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
//  191   end = add_end(end);
        ADDS     R1,R5,#+4
        MOVS     R0,#+255
        STRB     R0,[R1], #+1
//  192   
//  193   uip_send(uip_appdata, (int)(end - (uint8_t *)uip_appdata));
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
//  194 }
//  195 /*---------------------------------------------------------------------------*/
//  196 static uint8_t
//  197 parse_options(uint8_t *optptr, int len)
//  198 {
//  199   uint8_t *end = optptr + len;
//  200   uint8_t type = 0;
//  201 
//  202   while(optptr < end) {
//  203     switch(*optptr) {
//  204     case DHCP_OPTION_SUBNET_MASK:
//  205       memcpy(s.netmask.u16, optptr + 2, 4);
//  206       break;
//  207     case DHCP_OPTION_ROUTER:
//  208       memcpy(s.default_router.u16, optptr + 2, 4);
//  209       break;
//  210     case DHCP_OPTION_DNS_SERVER:
//  211       memcpy(s.dnsaddr.u16, optptr + 2, 4);
//  212       break;
//  213     case DHCP_OPTION_MSG_TYPE:
//  214       type = *(optptr + 2);
//  215       break;
//  216     case DHCP_OPTION_SERVER_ID:
//  217       memcpy(s.serverid, optptr + 2, 4);
//  218       break;
//  219     case DHCP_OPTION_LEASE_TIME:
//  220       memcpy(s.lease_time, optptr + 2, 4);
//  221       break;
//  222     case DHCP_OPTION_END:
//  223       return type;
//  224     }
//  225 
//  226     optptr += optptr[1] + 2;
//  227   }
//  228   return type;
//  229 }
//  230 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function parse_msg
        THUMB
//  231 static uint8_t
//  232 parse_msg(void)
//  233 {
parse_msg:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  234   struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
        LDR.W    R0,??DataTable8_2
        LDR      R5,[R0, #+0]
//  235   
//  236   if(m->op == DHCP_REPLY &&
//  237      memcmp(m->xid, &xid, sizeof(xid)) == 0 &&
//  238      memcmp(m->chaddr, s.mac_addr, s.mac_len) == 0) {
        LDRB     R0,[R5, #+0]
        CMP      R0,#+2
        BNE.N    ??parse_msg_0
        LDR.W    R4,??DataTable8
        MOVS     R2,#+4
        ADD      R1,R4,#+108
        ADDS     R0,R5,#+4
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??parse_msg_0
        LDR      R2,[R4, #+32]
        LDR      R1,[R4, #+28]
        ADD      R0,R5,#+28
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??parse_msg_0
//  239     memcpy(s.ipaddr.u16, m->yiaddr, 4);
        MOVS     R2,#+4
        ADD      R1,R5,#+16
        ADD      R0,R4,#+44
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  240     return parse_options(&m->options[4], uip_datalen());
        LDR.W    R0,??DataTable8_3
        LDRH     R0,[R0, #+0]
        ADDS     R5,R5,#+240
        ADDS     R6,R0,R5
        MOVS     R7,#+0
        B.N      ??parse_msg_1
??parse_msg_2:
        MOVS     R2,#+4
        ADDS     R1,R5,#+2
        ADD      R0,R4,#+60
??parse_msg_3:
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
??parse_msg_4:
        LDRB     R0,[R5, #+1]
        ADDS     R0,R0,R5
        ADDS     R5,R0,#+2
??parse_msg_1:
        CMP      R5,R6
        BCS.N    ??parse_msg_5
        LDRB     R0,[R5, #+0]
        CMP      R0,#+1
        BEQ.N    ??parse_msg_2
        CMP      R0,#+3
        BEQ.N    ??parse_msg_6
        CMP      R0,#+6
        BEQ.N    ??parse_msg_7
        CMP      R0,#+51
        BEQ.N    ??parse_msg_8
        CMP      R0,#+53
        BEQ.N    ??parse_msg_9
        CMP      R0,#+54
        BEQ.N    ??parse_msg_10
        CMP      R0,#+255
        BNE.N    ??parse_msg_4
        B.N      ??parse_msg_5
??parse_msg_8:
        MOVS     R2,#+4
        ADDS     R1,R5,#+2
        ADD      R0,R4,#+40
        B.N      ??parse_msg_3
??parse_msg_10:
        MOVS     R2,#+4
        ADDS     R1,R5,#+2
        ADD      R0,R4,#+36
        B.N      ??parse_msg_3
??parse_msg_9:
        LDRB     R7,[R5, #+2]
        B.N      ??parse_msg_4
??parse_msg_7:
        MOVS     R2,#+4
        ADDS     R1,R5,#+2
        ADD      R0,R4,#+76
        B.N      ??parse_msg_3
??parse_msg_6:
        MOVS     R2,#+4
        ADDS     R1,R5,#+2
        ADD      R0,R4,#+92
        B.N      ??parse_msg_3
//  241   }
??parse_msg_5:
        MOV      R0,R7
        POP      {R1,R4-R7,PC}
//  242   return 0;
??parse_msg_0:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock2
//  243 }
//  244 /*---------------------------------------------------------------------------*/
//  245 /*
//  246  * Is this a "fresh" reply for me? If it is, return the type.
//  247  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function msg_for_me
        THUMB
//  248 static int
//  249 msg_for_me(void)
//  250 {
msg_for_me:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  251   struct dhcp_msg *m = (struct dhcp_msg *)uip_appdata;
        LDR.N    R0,??DataTable8_2
        LDR      R5,[R0, #+0]
//  252   uint8_t *optptr = &m->options[4];
//  253   uint8_t *end = (uint8_t*)uip_appdata + uip_datalen();
        LDR.N    R0,??DataTable8_3
        LDRH     R0,[R0, #+0]
        ADDS     R6,R0,R5
//  254   
//  255   if(m->op == DHCP_REPLY &&
//  256      memcmp(m->xid, &xid, sizeof(xid)) == 0 &&
//  257      memcmp(m->chaddr, s.mac_addr, s.mac_len) == 0) {
        LDRB     R0,[R5, #+0]
        CMP      R0,#+2
        ADD      R4,R5,#+240
        BNE.N    ??msg_for_me_0
        LDR.N    R7,??DataTable8
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
//  258      while(optptr < end) {
//  259       if(*optptr == DHCP_OPTION_MSG_TYPE) {
//  260 	    return *(optptr + 2);
//  261       } else if (*optptr == DHCP_OPTION_END) {
//  262 	    return -1;
//  263       }
//  264       optptr += optptr[1] + 2;
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
        LDRB     R0,[R4, #+2]
        POP      {R1,R4-R7,PC}
??msg_for_me_3:
        CMP      R0,#+255
        BNE.N    ??msg_for_me_2
//  265     }
//  266   }
//  267   return -1;
??msg_for_me_0:
        MOV      R0,#-1
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock3
//  268 }
//  269 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function handle_dhcp
        THUMB
//  270 static
//  271 PT_THREAD(handle_dhcp(process_event_t ev, void *data))
//  272 {
handle_dhcp:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  273   clock_time_t ticks;
//  274 
//  275   PT_BEGIN(&s.pt);
        LDR.N    R4,??DataTable8
        MOV      R5,R0
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??handle_dhcp_0
        MOV      R1,#+284
        SUBS     R0,R0,R1
        BEQ.N    ??handle_dhcp_1
        SUBS     R0,R0,#+5
        BEQ.N    ??handle_dhcp_2
        SUBS     R0,R0,#+19
        BEQ.N    ??handle_dhcp_3
        SUBS     R0,R0,#+5
        BEQ.W    ??handle_dhcp_4
        SUBS     R0,R0,#+44
        BEQ.W    ??handle_dhcp_5
        SUBS     R0,R0,#+16
        BEQ.W    ??handle_dhcp_6
        SUBS     R0,R0,#+7
        BEQ.W    ??handle_dhcp_7
        B.N      ??handle_dhcp_8
//  276   
//  277  init:
//  278   xid++;
??handle_dhcp_0:
        LDR      R0,[R4, #+108]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+108]
//  279   s.state = STATE_SENDING;
        MOVS     R0,#+1
        STRB     R0,[R4, #+2]
//  280   s.ticks = CLOCK_SECOND;
        MOV      R0,#+1000
??handle_dhcp_9:
        STR      R0,[R4, #+24]
//  281   while (1) {
//  282     while(ev != tcpip_event) {
??handle_dhcp_1:
        LDR.N    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BEQ.N    ??handle_dhcp_10
//  283       tcpip_poll_udp(s.conn);
        LDR      R0,[R4, #+4]
          CFI FunCall tcpip_poll_udp
        BL       tcpip_poll_udp
//  284       PT_YIELD(&s.pt);
        MOV      R0,#+284
??handle_dhcp_11:
        STRH     R0,[R4, #+0]
//  285     }
//  286     send_discover();
//  287     etimer_set(&s.etimer, s.ticks);
//  288     do {
//  289       PT_YIELD(&s.pt);
//  290       if(ev == tcpip_event && uip_newdata() && msg_for_me() == DHCPOFFER) {
//  291 	parse_msg();
//  292 	s.state = STATE_OFFER_RECEIVED;
//  293 	goto selecting;
//  294       }
//  295     } while (!etimer_expired(&s.etimer));
//  296 
//  297     if(s.ticks < CLOCK_SECOND * 60) {
//  298       s.ticks *= 2;
//  299     }
//  300   }
//  301   
//  302  selecting:
//  303   xid++;
//  304   s.ticks = CLOCK_SECOND;
//  305   do {
//  306     while(ev != tcpip_event) {
//  307       tcpip_poll_udp(s.conn);
//  308       PT_YIELD(&s.pt);
//  309     }
//  310     send_request();
//  311     etimer_set(&s.etimer, s.ticks);
//  312     do {
//  313       PT_YIELD(&s.pt);
//  314       if(ev == tcpip_event && uip_newdata() && msg_for_me() == DHCPACK) {
//  315 	parse_msg();
//  316 	s.state = STATE_CONFIG_RECEIVED;
//  317 	goto bound;
//  318       }
//  319     } while (!etimer_expired(&s.etimer));
//  320 
//  321     if(s.ticks <= CLOCK_SECOND * 10) {
//  322       s.ticks += CLOCK_SECOND;
//  323     } else {
//  324       goto init;
//  325     }
//  326   } while(s.state != STATE_CONFIG_RECEIVED);
//  327   
//  328  bound:
//  329 #if 0
//  330   printf("Got IP address %d.%d.%d.%d\n", uip_ipaddr_to_quad(&s.ipaddr));
//  331   printf("Got netmask %d.%d.%d.%d\n",	 uip_ipaddr_to_quad(&s.netmask));
//  332   printf("Got DNS server %d.%d.%d.%d\n", uip_ipaddr_to_quad(&s.dnsaddr));
//  333   printf("Got default router %d.%d.%d.%d\n",
//  334 	 uip_ipaddr_to_quad(&s.default_router));
//  335   printf("Lease expires in %ld seconds\n",
//  336 	 uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1]));
//  337 #endif
//  338 
//  339   dhcpc_configured(&s);
//  340   
//  341 #define MAX_TICKS (~((clock_time_t)0) / 2)
//  342 #define MAX_TICKS32 (~((uint32_t)0))
//  343 #define IMIN(a, b) ((a) < (b) ? (a) : (b))
//  344 
//  345   if((uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1]))*CLOCK_SECOND/2
//  346      <= MAX_TICKS32) {
//  347     s.ticks = (uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1])
//  348 	       )*CLOCK_SECOND/2;
//  349   } else {
//  350     s.ticks = MAX_TICKS32;
//  351   }
//  352 
//  353   while(s.ticks > 0) {
//  354     ticks = IMIN(s.ticks, MAX_TICKS);
//  355     s.ticks -= ticks;
//  356     etimer_set(&s.etimer, ticks);
//  357     PT_YIELD_UNTIL(&s.pt, etimer_expired(&s.etimer));
//  358   }
//  359 
//  360   if((uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1]))*CLOCK_SECOND/2
//  361      <= MAX_TICKS32) {
//  362     s.ticks = (uip_ntohs(s.lease_time[0])*65536ul + uip_ntohs(s.lease_time[1])
//  363 	       )*CLOCK_SECOND/2;
//  364   } else {
//  365     s.ticks = MAX_TICKS32;
//  366   }
//  367 
//  368   /* renewing: */
//  369   xid++;
//  370   do {
//  371     while(ev != tcpip_event) {
//  372       tcpip_poll_udp(s.conn);
//  373       PT_YIELD(&s.pt);
//  374     }
//  375     send_request();
//  376     ticks = IMIN(s.ticks / 2, MAX_TICKS);
//  377     s.ticks -= ticks;
//  378     etimer_set(&s.etimer, ticks);
//  379     do {
//  380       PT_YIELD(&s.pt);
??handle_dhcp_12:
        MOVS     R0,#+1
        POP      {R4-R6,PC}
??handle_dhcp_10:
        LDR.N    R5,??DataTable8_2
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
        MOVW     R0,#+289
        B.N      ??handle_dhcp_11
??handle_dhcp_2:
        LDR.N    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BNE.N    ??handle_dhcp_14
        LDR.N    R0,??DataTable8_5
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
        LDR.N    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BEQ.N    ??handle_dhcp_15
        LDR      R0,[R4, #+4]
          CFI FunCall tcpip_poll_udp
        BL       tcpip_poll_udp
        MOV      R0,#+308
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
        MOVW     R0,#+313
        B.N      ??handle_dhcp_11
??handle_dhcp_4:
        LDR.N    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BNE.N    ??handle_dhcp_17
        LDR.N    R0,??DataTable8_5
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
        MOV      R0,R4
          CFI FunCall dhcpc_configured
        BL       dhcpc_configured
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
        MOVW     R0,#+357
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
        LDR.N    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BEQ.N    ??handle_dhcp_21
        LDR      R0,[R4, #+4]
          CFI FunCall tcpip_poll_udp
        BL       tcpip_poll_udp
        MOVW     R0,#+373
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
        MOV      R0,#+380
        B.N      ??handle_dhcp_11
//  381       if(ev == tcpip_event && uip_newdata() && msg_for_me() == DHCPACK) {
??handle_dhcp_7:
        LDR.N    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        CMP      R5,R0
        BNE.N    ??handle_dhcp_23
        LDR.N    R0,??DataTable8_5
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??handle_dhcp_23
          CFI FunCall msg_for_me
        BL       msg_for_me
        CMP      R0,#+5
        BNE.N    ??handle_dhcp_23
//  382 	parse_msg();
          CFI FunCall parse_msg
        BL       parse_msg
//  383 	goto bound;
        B.N      ??handle_dhcp_18
//  384       }
//  385     } while(!etimer_expired(&s.etimer));
??handle_dhcp_23:
        ADD      R0,R4,#+8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CMP      R0,#+0
        BEQ.N    ??handle_dhcp_22
//  386   } while(s.ticks >= CLOCK_SECOND*3);
        LDR      R0,[R4, #+24]
        MOVW     R1,#+3000
        CMP      R0,R1
        BCS.N    ??handle_dhcp_6
//  387 
//  388   /* rebinding: */
//  389 
//  390   /* lease_expired: */
//  391   dhcpc_unconfigured(&s);
        MOV      R0,R4
          CFI FunCall dhcpc_unconfigured
        BL       dhcpc_unconfigured
//  392   goto init;
        B.N      ??handle_dhcp_0
//  393 
//  394   PT_END(&s.pt);
??handle_dhcp_8:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock4
//  395 }
//  396 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function dhcpc_init
        THUMB
//  397 void
//  398 dhcpc_init(const void *mac_addr, int mac_len)
//  399 {
dhcpc_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  400   uip_ipaddr_t addr;
//  401   
//  402   s.mac_addr = mac_addr;
        LDR.N    R4,??DataTable8
        SUB      SP,SP,#+16
          CFI CFA R13+24
        STR      R0,[R4, #+28]
//  403   s.mac_len  = mac_len;
        STR      R1,[R4, #+32]
//  404 
//  405   s.state = STATE_INITIAL;
        MOVS     R0,#+0
        STRB     R0,[R4, #+2]
//  406   uip_ipaddr(&addr, 255,255,255,255);
//  407   s.conn = udp_new(&addr, UIP_HTONS(DHCPC_SERVER_PORT), NULL);
        MOVS     R2,#+0
        MOVS     R0,#+255
        STRB     R0,[SP, #+0]
        STRB     R0,[SP, #+1]
        STRB     R0,[SP, #+2]
        STRB     R0,[SP, #+3]
        MOV      R1,#+17152
        ADD      R0,SP,#+0
          CFI FunCall udp_new
        BL       udp_new
        STR      R0,[R4, #+4]
//  408   if(s.conn != NULL) {
        CBZ.N    R0,??dhcpc_init_0
//  409     udp_bind(s.conn, UIP_HTONS(DHCPC_CLIENT_PORT));
        MOV      R1,#+17408
        STRH     R1,[R0, #+16]
//  410   }
//  411   PT_INIT(&s.pt);
??dhcpc_init_0:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
//  412 }
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  413 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function dhcpc_appcall
        THUMB
//  414 void
//  415 dhcpc_appcall(process_event_t ev, void *data)
//  416 {
//  417   if(ev == tcpip_event || ev == PROCESS_EVENT_TIMER) {
dhcpc_appcall:
        LDR.N    R2,??DataTable8_4
        LDRB     R2,[R2, #+0]
        CMP      R0,R2
        ITE      NE 
        CMPNE    R0,#+136
//  418     handle_dhcp(ev, data);
          CFI FunCall handle_dhcp
        BEQ.W    handle_dhcp
//  419   }
//  420 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  421 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function dhcpc_request
        THUMB
//  422 void
//  423 dhcpc_request(void)
//  424 {
dhcpc_request:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
//  425   uip_ipaddr_t ipaddr;
//  426   
//  427   if(s.state == STATE_INITIAL) {
        LDR.N    R0,??DataTable8
        LDRB     R0,[R0, #+2]
        SUB      SP,SP,#+20
          CFI CFA R13+24
        CBNZ.N   R0,??dhcpc_request_0
//  428     uip_ipaddr(&ipaddr, 0,0,0,0);
        STRB     R0,[SP, #+0]
        STRB     R0,[SP, #+1]
        STRB     R0,[SP, #+2]
        STRB     R0,[SP, #+3]
//  429     uip_sethostaddr(&ipaddr);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable8_1
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  430     handle_dhcp(PROCESS_EVENT_NONE, NULL);
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
//  431   }
//  432 }
??dhcpc_request_0:
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     s

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     uip_hostaddr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     tcpip_event

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     uip_flags

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
//  433 /*---------------------------------------------------------------------------*/
// 
//   112 bytes in section .bss
// 1 308 bytes in section .text
// 
// 1 308 bytes of CODE memory
//   112 bytes of DATA memory
//
//Errors: none
//Warnings: 3
