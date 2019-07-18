///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:54
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-arp.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-arp.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ip64-arp.s
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
        EXTERN __aeabi_memset
        EXTERN ip64_eth_addr
        EXTERN ip64_get_draddr
        EXTERN ip64_get_hostaddr
        EXTERN ip64_get_netmask
        EXTERN uip_aligned_buf
        EXTERN uip_appdata

        PUBLIC ip64_arp_arp_input
        PUBLIC ip64_arp_check_cache
        PUBLIC ip64_arp_create_arp_request
        PUBLIC ip64_arp_create_ethhdr
        PUBLIC ip64_arp_init
        PUBLIC ip64_arp_timer
        PUBLIC uip_all_zeroes_addr
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-arp.c
//    1 /*
//    2  * Copyright (c) 2001-2003, Adam Dunkels.
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
//   13  * 3. The name of the author may not be used to endorse or promote
//   14  *    products derived from this software without specific prior
//   15  *    written permission.
//   16  *
//   17  * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS
//   18  * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//   19  * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   20  * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
//   21  * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   22  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
//   23  * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//   24  * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
//   25  * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//   26  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//   27  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   28  *
//   29  * This file is part of the uIP TCP/IP stack.
//   30  *
//   31  * $Id: uip_arp.c,v 1.8 2010/12/14 22:45:22 dak664 Exp $
//   32  *
//   33  */
//   34 
//   35 #include "ip64.h"
//   36 #include "ip64-eth.h"
//   37 #include "ip64-arp.h"
//   38 
//   39 #include <string.h>
//   40 #include <stdio.h>
//   41 
//   42 #define DEBUG 0
//   43 
//   44 #if DEBUG
//   45 #include "sysprintf.h"
//   46 #else
//   47 #define PRINTF(...)
//   48 #endif
//   49 struct arp_hdr {
//   50   struct ip64_eth_hdr ethhdr;
//   51   uint16_t hwtype;
//   52   uint16_t protocol;
//   53   uint8_t hwlen;
//   54   uint8_t protolen;
//   55   uint16_t opcode;
//   56   struct uip_eth_addr shwaddr;
//   57   uip_ip4addr_t sipaddr;
//   58   struct uip_eth_addr dhwaddr;
//   59   uip_ip4addr_t dipaddr;
//   60 };
//   61 
//   62 struct ethip_hdr {
//   63   struct ip64_eth_hdr ethhdr;
//   64   /* IP header. */
//   65   uint8_t vhl,
//   66     tos,
//   67     len[2],
//   68     ipid[2],
//   69     ipoffset[2],
//   70     ttl,
//   71     proto;
//   72   uint16_t ipchksum;
//   73   uip_ip4addr_t srcipaddr, destipaddr;
//   74 };
//   75 
//   76 struct ipv4_hdr {
//   77   /* IP header. */
//   78   uint8_t vhl,
//   79     tos,
//   80     len[2],
//   81     ipid[2],
//   82     ipoffset[2],
//   83     ttl,
//   84     proto;
//   85   uint16_t ipchksum;
//   86   uip_ip4addr_t srcipaddr, destipaddr;
//   87 };
//   88 
//   89 #define ARP_REQUEST 1
//   90 #define ARP_REPLY   2
//   91 
//   92 #define ARP_HWTYPE_ETH 1
//   93 
//   94 struct arp_entry {
//   95   uip_ip4addr_t ipaddr;
//   96   struct uip_eth_addr ethaddr;
//   97   uint8_t time;
//   98 };
//   99 
//  100 static const struct ip64_eth_addr broadcast_ethaddr =
//  101   {{0xff,0xff,0xff,0xff,0xff,0xff}};
//  102 static const uint16_t broadcast_ipaddr[2] = {0xffff,0xffff};
//  103 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  104 static struct arp_entry arp_table[UIP_ARPTAB_SIZE];
arp_table:
        DS8 96
//  105 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  106 static uint8_t arptime;
arptime:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1
//  107 static uint8_t tmpage;
//  108 
//  109 
//  110 
//  111 const uip_ipaddr_t uip_all_zeroes_addr;
//  112 
//  113 /*---------------------------------------------------------------------------*/
//  114 /**
//  115  * Initialize the ARP module.
//  116  *
//  117  */
//  118 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ip64_arp_init
          CFI NoCalls
        THUMB
//  119 void
//  120 ip64_arp_init(void)
//  121 {
//  122   int i;
//  123   for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
//  124     memset(&arp_table[i].ipaddr, 0, 4);
ip64_arp_init:
        LDR.W    R0,??DataTable8
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R2,#+0
        ADD      R1,R0,#+12
        STR      R2,[R1, #+0]
        ADD      R1,R0,#+24
        STR      R2,[R1, #+0]
        ADD      R1,R0,#+36
        STR      R2,[R1, #+0]
        ADD      R1,R0,#+48
        STR      R2,[R1, #+0]
        ADD      R1,R0,#+60
        STR      R2,[R1, #+0]
        ADD      R1,R0,#+72
        STR      R2,[R0, #+84]!
        STR      R2,[R1, #+0]
//  125   }
//  126 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  127 /*---------------------------------------------------------------------------*/
//  128 /**
//  129  * Periodic ARP processing function.
//  130  *
//  131  * This function performs periodic timer processing in the ARP module
//  132  * and should be called at regular intervals. The recommended interval
//  133  * is 10 seconds between the calls.
//  134  *
//  135  */
//  136 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ip64_arp_timer
        THUMB
//  137 void
//  138 ip64_arp_timer(void)
//  139 {
ip64_arp_timer:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  140   struct arp_entry *tabptr;
//  141   int i;
//  142   
//  143   ++arptime;
        LDR.W    R4,??DataTable8_1
//  144   for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
        LDR.W    R6,??DataTable8
        LDRB     R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+0]
        MOVS     R5,#+0
        ADR.W    R0,uip_all_zeroes_addr
        LDRH     R7,[R0, #+2]
        LDRH     R8,[R0, #+0]
//  145     tabptr = &arp_table[i];
//  146     if(uip_ip4addr_cmp(&tabptr->ipaddr, &uip_all_zeroes_addr) &&
//  147        arptime - tabptr->time >= UIP_ARP_MAXAGE) {
??ip64_arp_timer_0:
        LDRH     R0,[R6, #+0]
        CMP      R0,R8
        ITT      EQ 
        LDRHEQ   R0,[R6, #+2]
        CMPEQ    R0,R7
        BNE.N    ??ip64_arp_timer_1
        LDRB     R0,[R4, #+0]
        LDRB     R1,[R6, #+10]
        SUBS     R0,R0,R1
        CMP      R0,#+120
        BLT.N    ??ip64_arp_timer_1
//  148       memset(&tabptr->ipaddr, 0, 4);
        MOVS     R1,#+4
        MOV      R0,R6
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  149     }
//  150   }
??ip64_arp_timer_1:
        ADDS     R5,R5,#+1
        ADDS     R6,R6,#+12
        CMP      R5,#+8
        BLT.N    ??ip64_arp_timer_0
//  151 
//  152 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock1
//  153 
//  154 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function arp_update
        THUMB
//  155 static void
//  156 arp_update(uip_ip4addr_t *ipaddr, struct uip_eth_addr *ethaddr)
//  157 {
arp_update:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  158   register struct arp_entry *tabptr = arp_table;
//  159   int i, c;
//  160   
//  161   /* Walk through the ARP mapping table and try to find an entry to
//  162      update. If none is found, the IP -> MAC address mapping is
//  163      inserted in the ARP table. */
//  164   for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
        ADR.W    R6,uip_all_zeroes_addr
        LDR.W    R3,??DataTable8
        LDRH     R5,[R6, #+0]
        LDRH     R8,[R6, #+2]
        MOVS     R2,#+0
        MOV      R7,R3
//  165     tabptr = &arp_table[i];
??arp_update_0:
        MOV      R4,R7
//  166 
//  167     /* Only check those entries that are actually in use. */
//  168     if(!uip_ip4addr_cmp(&tabptr->ipaddr, &uip_all_zeroes_addr)) {
        LDRH     R12,[R4, #+0]
        CMP      R12,R5
        ITT      EQ 
        LDRHEQ   LR,[R4, #+2]
        CMPEQ    LR,R8
        BEQ.N    ??arp_update_1
//  169 
//  170       /* Check if the source IP address of the incoming packet matches
//  171          the IP address in this ARP table entry. */
//  172       if(uip_ip4addr_cmp(ipaddr, &tabptr->ipaddr)) {
        LDRH     LR,[R0, #+0]
        CMP      LR,R12
        ITTT     EQ 
        LDRHEQ   R12,[R0, #+2]
        LDRHEQ   LR,[R4, #+2]
        CMPEQ    R12,LR
        BNE.N    ??arp_update_1
//  173 	 
//  174 	/* An old entry found, update this and return. */
//  175 	memcpy(tabptr->ethaddr.addr, ethaddr->addr, 6);
??arp_update_2:
        MOVS     R2,#+6
        ADDS     R0,R4,#+4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  176 	tabptr->time = arptime;
        LDR.W    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        B.N      ??arp_update_3
//  177 
//  178 	return;
//  179       }
//  180     }
//  181 	tabptr++;
??arp_update_1:
        LDRH     R12,[R4, #+12]!
        ADDS     R2,R2,#+1
        CMP      R12,R5
        ITTT     EQ 
        LDRHEQ   R12,[R4, #+2]
        LDRHEQ   LR,[R6, #+2]
        CMPEQ    R12,LR
        BEQ.N    ??arp_update_4
        LDRH     R12,[R0, #+0]
        LDRH     LR,[R4, #+0]
        CMP      R12,LR
        ITTT     EQ 
        LDRHEQ   R12,[R0, #+2]
        LDRHEQ   LR,[R4, #+2]
        CMPEQ    R12,LR
        BEQ.N    ??arp_update_2
//  182   }
??arp_update_4:
        ADDS     R2,R2,#+1
        ADDS     R7,R7,#+24
        CMP      R2,#+8
        BLT.N    ??arp_update_0
//  183 
//  184   /* If we get here, no existing ARP table entry was found, so we
//  185      create one. */
//  186 
//  187   /* First, we try to find an unused entry in the ARP table. */
//  188   for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
        LDRH     R6,[R6, #+2]
        MOVS     R2,#+0
        MOV      R7,R3
//  189     tabptr = &arp_table[i];
??arp_update_5:
        MOV      R4,R7
//  190     if(uip_ip4addr_cmp(&tabptr->ipaddr, &uip_all_zeroes_addr)) {
        LDRH     R12,[R4, #+0]
        CMP      R12,R5
        ITT      EQ 
        LDRHEQ   R12,[R4, #+2]
        CMPEQ    R12,R6
        BEQ.N    ??arp_update_6
        ADD      R4,R7,#+12
        ADDS     R2,R2,#+1
        LDRH     R12,[R4, #+0]
        CMP      R12,R5
        ITT      EQ 
        LDRHEQ   R12,[R4, #+2]
        CMPEQ    R12,R6
        BEQ.N    ??arp_update_6
//  191       break;
//  192     }
//  193   }
        ADDS     R2,R2,#+1
        ADDS     R7,R7,#+24
        CMP      R2,#+8
        BLT.N    ??arp_update_5
//  194 
//  195   /* If no unused entry is found, we try to find the oldest entry and
//  196      throw it away. */
//  197   if(i == UIP_ARPTAB_SIZE) {
??arp_update_6:
        CMP      R2,#+8
        LDR.W    R5,??DataTable8_1
        BNE.N    ??arp_update_7
//  198     tmpage = 0;
        MOVS     R4,#+0
//  199     c = 0;
        MOVS     R6,#+0
//  200     for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
        MOV      R2,R4
        MOV      R7,R3
//  201       tabptr = &arp_table[i];
//  202       if(arptime - tabptr->time > tmpage) {
??arp_update_8:
        LDRB     R12,[R7, #+10]
        LDRB     LR,[R5, #+0]
        UXTB     R4,R4
        SUB      R8,LR,R12
        CMP      R4,R8
        ITT      LT 
        SUBLT    R4,LR,R12
        MOVLT    R6,R2
//  203 	tmpage = arptime - tabptr->time;
//  204 	c = i;
//  205       }
//  206     }
        ADDS     R2,R2,#+1
        ADDS     R7,R7,#+12
        CMP      R2,#+8
        BLT.N    ??arp_update_8
//  207     i = c;
//  208     tabptr = &arp_table[i];
        ADD      R2,R6,R6, LSL #+1
        ADD      R4,R3,R2, LSL #+2
//  209   }
//  210 
//  211   /* Now, i is the ARP table entry which we will fill with the new
//  212      information. */
//  213   uip_ip4addr_copy(&tabptr->ipaddr, ipaddr);
??arp_update_7:
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+0]
//  214   memcpy(tabptr->ethaddr.addr, ethaddr->addr, 6);
        MOVS     R2,#+6
        ADDS     R0,R4,#+4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  215   tabptr->time = arptime;
        LDRB     R0,[R5, #+0]
??arp_update_3:
        STRB     R0,[R4, #+10]
//  216 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock2
//  217 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ip64_arp_arp_input
        THUMB
//  218 uint16_t
//  219 ip64_arp_arp_input(const uint8_t *packet, uint16_t packet_len)
//  220 {
ip64_arp_arp_input:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  221   struct arp_hdr *arphdr = (struct arp_hdr *)packet;
//  222 
//  223   if(packet_len < sizeof(struct arp_hdr)) {
        CMP      R1,#+42
        MOV      R4,R0
        BCC.N    ??ip64_arp_arp_input_0
//  224     PRINTF("ip64_arp_arp_input: len too small %d\n", packet_len);
//  225     return 0;
//  226   }
//  227 
//  228   switch(arphdr->opcode) {
        LDRH     R0,[R4, #+20]
        CMP      R0,#+256
        BEQ.N    ??ip64_arp_arp_input_1
        CMP      R0,#+512
        BEQ.N    ??ip64_arp_arp_input_2
        B.N      ??ip64_arp_arp_input_0
//  229   case UIP_HTONS(ARP_REQUEST):
//  230     /* ARP request. If it asked for our address, we send out a
//  231        reply. */
//  232     PRINTF("ip64_arp_arp_input: request for %d.%d.%d.%d (we are %d.%d.%d.%d)\n",
//  233 	   arphdr->dipaddr.u8[0], arphdr->dipaddr.u8[1],
//  234 	   arphdr->dipaddr.u8[2], arphdr->dipaddr.u8[3],
//  235 	   ip64_get_hostaddr()->u8[0], ip64_get_hostaddr()->u8[1],
//  236 	   ip64_get_hostaddr()->u8[2], ip64_get_hostaddr()->u8[3]);
//  237     if(uip_ip4addr_cmp(&arphdr->dipaddr, ip64_get_hostaddr())) {
??ip64_arp_arp_input_1:
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        LDRH     R1,[R4, #+38]
        LDRH     R0,[R0, #+0]
        CMP      R1,R0
        BNE.N    ??ip64_arp_arp_input_0
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        LDRH     R1,[R4, #+40]
        LDRH     R0,[R0, #+2]
        CMP      R1,R0
        BNE.N    ??ip64_arp_arp_input_0
//  238       /* First, we register the one who made the request in our ARP
//  239 	 table, since it is likely that we will do more communication
//  240 	 with this host in the future. */
//  241       arp_update(&arphdr->sipaddr, &arphdr->shwaddr);
        ADD      R1,R4,#+22
        ADD      R0,R4,#+28
          CFI FunCall arp_update
        BL       arp_update
//  242       
//  243       arphdr->opcode = UIP_HTONS(ARP_REPLY);
        MOV      R0,#+512
        STRH     R0,[R4, #+20]
//  244 
//  245       memcpy(arphdr->dhwaddr.addr, arphdr->shwaddr.addr, 6);
        MOVS     R2,#+6
        ADD      R1,R4,#+22
        ADD      R0,R4,#+32
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  246       memcpy(arphdr->shwaddr.addr, ip64_eth_addr.addr, 6);
        LDR.W    R5,??DataTable8_2
        MOVS     R2,#+6
        MOV      R1,R5
        ADD      R0,R4,#+22
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  247       memcpy(arphdr->ethhdr.src.addr, ip64_eth_addr.addr, 6);
        MOVS     R2,#+6
        MOV      R1,R5
        ADDS     R0,R4,#+6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  248       memcpy(arphdr->ethhdr.dest.addr, arphdr->dhwaddr.addr, 6);
        MOVS     R2,#+6
        ADD      R1,R4,#+32
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  249 
//  250       uip_ip4addr_copy(&arphdr->dipaddr, &arphdr->sipaddr);
        LDR      R0,[R4, #+28]
        STR      R0,[R4, #+38]
//  251       uip_ip4addr_copy(&arphdr->sipaddr, ip64_get_hostaddr());
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+28]
//  252 
//  253       arphdr->ethhdr.type = UIP_HTONS(IP64_ETH_TYPE_ARP);
        MOV      R0,#+1544
        STRH     R0,[R4, #+12]
//  254       return sizeof(struct arp_hdr);
        MOVS     R0,#+42
        POP      {R1,R4,R5,PC}
//  255     }
//  256     break;
//  257   case UIP_HTONS(ARP_REPLY):
//  258     /* ARP reply. We insert or update the ARP table if it was meant
//  259        for us. */
//  260     if(uip_ip4addr_cmp(&arphdr->dipaddr, ip64_get_hostaddr())) {
??ip64_arp_arp_input_2:
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        LDRH     R1,[R4, #+38]
        LDRH     R0,[R0, #+0]
        CMP      R1,R0
        BNE.N    ??ip64_arp_arp_input_0
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        LDRH     R1,[R4, #+40]
        LDRH     R0,[R0, #+2]
        CMP      R1,R0
        BNE.N    ??ip64_arp_arp_input_0
//  261       arp_update(&arphdr->sipaddr, &arphdr->shwaddr);
        ADD      R1,R4,#+22
        ADD      R0,R4,#+28
          CFI FunCall arp_update
        BL       arp_update
//  262     }
//  263     break;
//  264   }
//  265 
//  266   return 0;
??ip64_arp_arp_input_0:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//  267 }
//  268 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ip64_arp_check_cache
        THUMB
//  269 int
//  270 ip64_arp_check_cache(const uint8_t *nlhdr)
//  271 {
ip64_arp_check_cache:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOV      R4,R0
//  272   struct ipv4_hdr *ipv4_hdr = (struct ipv4_hdr *)nlhdr;
//  273   uip_ip4addr_t broadcast_addr;
//  274   struct arp_entry *tabptr = arp_table;
//  275 
//  276   PRINTF("check cache %d.%d.%d.%d\n",
//  277 	 uip_ipaddr_to_quad(&ipv4_hdr->destipaddr));
//  278   
//  279   /* First check if destination is a local broadcast. */
//  280   uip_ipaddr(&broadcast_addr, 255,255,255,255);
        MOVS     R0,#+255
        STRB     R0,[SP, #+0]
        STRB     R0,[SP, #+1]
        STRB     R0,[SP, #+2]
        STRB     R0,[SP, #+3]
//  281   if(uip_ip4addr_cmp(&ipv4_hdr->destipaddr, &broadcast_addr)) {
        LDRH     R1,[SP, #+0]
        LDRH     R0,[R4, #+16]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[R4, #+18]
        LDRHEQ   R1,[SP, #+2]
        CMPEQ    R0,R1
        ITT      NE 
        LDRBNE   R0,[R4, #+16]
        CMPNE    R0,#+224
//  282     PRINTF("Return 1\n");
//  283     return 1;
//  284   } else if(ipv4_hdr->destipaddr.u8[0] == 224) {
        BEQ.N    ??ip64_arp_check_cache_0
//  285     /* Multicast. */
//  286     return 1;
//  287   } else {
//  288     uip_ip4addr_t ipaddr;
//  289     int i;
//  290     /* Check if the destination address is on the local network. */
//  291     if(!uip_ipaddr_maskcmp(&ipv4_hdr->destipaddr,
//  292 			   ip64_get_hostaddr(),
//  293 			   ip64_get_netmask())) {
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        MOV      R5,R0
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        MOV      R6,R0
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        LDRH     R1,[R4, #+16]
        LDRH     R2,[R5, #+0]
        LDRH     R0,[R0, #+0]
        ANDS     R1,R2,R1
        LDRH     R2,[R6, #+0]
        ANDS     R0,R0,R2
        CMP      R1,R0
        BNE.N    ??ip64_arp_check_cache_1
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        MOV      R5,R0
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        MOV      R6,R0
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        LDRH     R1,[R4, #+18]
        LDRH     R2,[R5, #+2]
        LDRH     R0,[R0, #+2]
        ANDS     R1,R2,R1
        LDRH     R2,[R6, #+2]
        ANDS     R0,R0,R2
        CMP      R1,R0
        BEQ.N    ??ip64_arp_check_cache_2
//  294       /* Destination address was not on the local network, so we need to
//  295 	 use the default router's IP address instead of the destination
//  296 	 address when determining the MAC address. */
//  297       uip_ip4addr_copy(&ipaddr, ip64_get_draddr());
??ip64_arp_check_cache_1:
          CFI FunCall ip64_get_draddr
        BL       ip64_get_draddr
        LDR      R0,[R0, #+0]
        B.N      ??ip64_arp_check_cache_3
//  298     } else {
//  299       /* Else, we use the destination IP address. */
//  300       uip_ip4addr_copy(&ipaddr, &ipv4_hdr->destipaddr);
??ip64_arp_check_cache_2:
        LDR      R0,[R4, #+16]
??ip64_arp_check_cache_3:
        STR      R0,[SP, #+0]
//  301     }
//  302     for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
//  303       if(uip_ip4addr_cmp(&ipaddr, &tabptr->ipaddr)) {
        LDR.N    R0,??DataTable8
        LDRH     R1,[SP, #+0]
        LDRH     R2,[R0, #+0]
        CMP      R1,R2
        ITTT     EQ 
        LDRHEQ   R1,[SP, #+2]
        LDRHEQ   R2,[R0, #+2]
        CMPEQ    R1,R2
        BEQ.N    ??ip64_arp_check_cache_0
//  304 	break;
//  305       }
//  306       tabptr++;
        LDRH     R1,[SP, #+0]
        LDRH     R2,[R0, #+12]
        CMP      R1,R2
        ITTT     EQ 
        LDRHEQ   R1,[SP, #+2]
        LDRHEQ   R2,[R0, #+14]
        CMPEQ    R1,R2
        BEQ.N    ??ip64_arp_check_cache_0
        LDRH     R1,[SP, #+0]
        LDRH     R2,[R0, #+24]
        CMP      R1,R2
        ITTT     EQ 
        LDRHEQ   R1,[SP, #+2]
        LDRHEQ   R2,[R0, #+26]
        CMPEQ    R1,R2
        BEQ.N    ??ip64_arp_check_cache_0
        LDRH     R1,[SP, #+0]
        LDRH     R2,[R0, #+36]
        CMP      R1,R2
        ITTT     EQ 
        LDRHEQ   R1,[SP, #+2]
        LDRHEQ   R2,[R0, #+38]
        CMPEQ    R1,R2
        BEQ.N    ??ip64_arp_check_cache_0
        LDRH     R1,[SP, #+0]
        LDRH     R2,[R0, #+48]
        CMP      R1,R2
        ITTT     EQ 
        LDRHEQ   R1,[SP, #+2]
        LDRHEQ   R2,[R0, #+50]
        CMPEQ    R1,R2
        BEQ.N    ??ip64_arp_check_cache_0
        LDRH     R1,[SP, #+0]
        LDRH     R2,[R0, #+60]
        CMP      R1,R2
        ITTT     EQ 
        LDRHEQ   R1,[SP, #+2]
        LDRHEQ   R2,[R0, #+62]
        CMPEQ    R1,R2
        BEQ.N    ??ip64_arp_check_cache_0
        LDRH     R1,[SP, #+0]
        LDRH     R2,[R0, #+72]
        CMP      R1,R2
        ITTT     EQ 
        LDRHEQ   R1,[SP, #+2]
        LDRHEQ   R2,[R0, #+74]
        CMPEQ    R1,R2
        BEQ.N    ??ip64_arp_check_cache_0
        LDRH     R1,[SP, #+0]
        LDRH     R2,[R0, #+84]
        CMP      R1,R2
        ITTT     EQ 
        LDRHEQ   R1,[SP, #+2]
        LDRHEQ   R0,[R0, #+86]
        CMPEQ    R1,R0
        BEQ.N    ??ip64_arp_check_cache_0
//  307     }
//  308 
//  309     if(i == UIP_ARPTAB_SIZE) {
//  310       return 0;
        MOVS     R0,#+0
        POP      {R1,R2,R4-R6,PC}
//  311     }
//  312     return 1;
??ip64_arp_check_cache_0:
        MOVS     R0,#+1
        POP      {R1,R2,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock4
//  313   }
//  314   return 0;
//  315 }
//  316 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function ip64_arp_create_ethhdr
        THUMB
//  317 int
//  318 ip64_arp_create_ethhdr(uint8_t *llhdr, const uint8_t *nlhdr)
//  319 {
ip64_arp_create_ethhdr:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R4,R0
//  320   struct arp_entry *tabptr = arp_table;
//  321   struct ipv4_hdr *ipv4_hdr = (struct ipv4_hdr *)nlhdr;
//  322   struct ip64_eth_hdr *ethhdr = (struct ip64_eth_hdr *)llhdr;
//  323   uip_ip4addr_t broadcast_addr;
//  324   
//  325   /* Find the destination IP address in the ARP table and construct
//  326      the Ethernet header. If the destination IP addres isn't on the
//  327      local network, we use the default router's IP address instead.
//  328 
//  329      If not ARP table entry is found, we overwrite the original IP
//  330      packet with an ARP request for the IP address. */
//  331 
//  332   /* First check if destination is a local broadcast. */
//  333   uip_ipaddr(&broadcast_addr, 255,255,255,255);
        MOVS     R0,#+255
        MOV      R5,R1
        STRB     R0,[SP, #+0]
        STRB     R0,[SP, #+1]
        STRB     R0,[SP, #+2]
        STRB     R0,[SP, #+3]
//  334   if(uip_ip4addr_cmp(&ipv4_hdr->destipaddr, &broadcast_addr)) {
        LDRH     R1,[SP, #+0]
        LDRH     R0,[R5, #+16]
        LDR.N    R6,??DataTable8
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[R5, #+18]
        LDRHEQ   R1,[SP, #+2]
        CMPEQ    R0,R1
        MOV      R8,R6
        BNE.N    ??ip64_arp_create_ethhdr_0
//  335     memcpy(&ethhdr->dest.addr, &broadcast_ethaddr.addr, 6);
        MOVS     R2,#+6
        ADR.W    R1,broadcast_ethaddr
        B.N      ??ip64_arp_create_ethhdr_1
//  336   } else if(ipv4_hdr->destipaddr.u8[0] == 224) {
??ip64_arp_create_ethhdr_0:
        LDRB     R0,[R5, #+16]
        CMP      R0,#+224
        BNE.N    ??ip64_arp_create_ethhdr_2
//  337     /* Multicast. */
//  338     ethhdr->dest.addr[0] = 0x01;
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//  339     ethhdr->dest.addr[1] = 0x00;
        MOVS     R0,#+0
        STRB     R0,[R4, #+1]
//  340     ethhdr->dest.addr[2] = 0x5e;
        MOVS     R0,#+94
        STRB     R0,[R4, #+2]
//  341     ethhdr->dest.addr[3] = ipv4_hdr->destipaddr.u8[1];
        LDRB     R0,[R5, #+17]
        STRB     R0,[R4, #+3]
//  342     ethhdr->dest.addr[4] = ipv4_hdr->destipaddr.u8[2];
        LDRB     R0,[R5, #+18]
        STRB     R0,[R4, #+4]
//  343     ethhdr->dest.addr[5] = ipv4_hdr->destipaddr.u8[3];
        LDRB     R0,[R5, #+19]
        STRB     R0,[R4, #+5]
        B.N      ??ip64_arp_create_ethhdr_3
//  344   } else {
//  345     uip_ip4addr_t ipaddr;
//  346     int i;
//  347     /* Check if the destination address is on the local network. */
//  348     if(!uip_ipaddr_maskcmp(&ipv4_hdr->destipaddr,
//  349 			   ip64_get_hostaddr(),
//  350 			   ip64_get_netmask())) {
??ip64_arp_create_ethhdr_2:
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        MOV      R9,R0
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        MOV      R7,R0
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        LDRH     R1,[R5, #+16]
        LDRH     R2,[R9, #+0]
        LDRH     R0,[R0, #+0]
        ANDS     R1,R2,R1
        LDRH     R2,[R7, #+0]
        ANDS     R0,R0,R2
        CMP      R1,R0
        BNE.N    ??ip64_arp_create_ethhdr_4
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        MOV      R9,R0
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        MOV      R7,R0
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        LDRH     R1,[R5, #+18]
        LDRH     R2,[R9, #+2]
        LDRH     R0,[R0, #+2]
        ANDS     R1,R2,R1
        LDRH     R2,[R7, #+2]
        ANDS     R0,R0,R2
        CMP      R1,R0
        BEQ.N    ??ip64_arp_create_ethhdr_5
//  351       /* Destination address was not on the local network, so we need to
//  352 	 use the default router's IP address instead of the destination
//  353 	 address when determining the MAC address. */
//  354       uip_ip4addr_copy(&ipaddr, ip64_get_draddr());
??ip64_arp_create_ethhdr_4:
          CFI FunCall ip64_get_draddr
        BL       ip64_get_draddr
        LDR      R0,[R0, #+0]
        B.N      ??ip64_arp_create_ethhdr_6
//  355     } else {
//  356       /* Else, we use the destination IP address. */
//  357       uip_ip4addr_copy(&ipaddr, &ipv4_hdr->destipaddr);
??ip64_arp_create_ethhdr_5:
        LDR      R0,[R5, #+16]
??ip64_arp_create_ethhdr_6:
        STR      R0,[SP, #+0]
//  358     }
//  359     for(i = 0; i < UIP_ARPTAB_SIZE; ++i) {
//  360       if(uip_ip4addr_cmp(&ipaddr, &tabptr->ipaddr)) {
        LDRH     R1,[R6, #+0]
        LDRH     R0,[SP, #+0]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[SP, #+2]
        LDRHEQ   R1,[R6, #+2]
        CMPEQ    R0,R1
        BEQ.N    ??ip64_arp_create_ethhdr_7
//  361 	break;
//  362       }
//  363       tabptr++;
        LDRH     R0,[SP, #+0]
        LDRH     R1,[R6, #+12]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[SP, #+2]
        LDRHEQ   R1,[R6, #+14]
        CMPEQ    R0,R1
        ADD      R8,R6,#+12
        BEQ.N    ??ip64_arp_create_ethhdr_7
        LDRH     R0,[SP, #+0]
        LDRH     R1,[R6, #+24]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[SP, #+2]
        LDRHEQ   R1,[R6, #+26]
        CMPEQ    R0,R1
        ADD      R8,R6,#+24
        BEQ.N    ??ip64_arp_create_ethhdr_7
        LDRH     R0,[SP, #+0]
        LDRH     R1,[R6, #+36]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[SP, #+2]
        LDRHEQ   R1,[R6, #+38]
        CMPEQ    R0,R1
        ADD      R8,R6,#+36
        BEQ.N    ??ip64_arp_create_ethhdr_7
        LDRH     R0,[SP, #+0]
        LDRH     R1,[R6, #+48]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[SP, #+2]
        LDRHEQ   R1,[R6, #+50]
        CMPEQ    R0,R1
        ADD      R8,R6,#+48
        BEQ.N    ??ip64_arp_create_ethhdr_7
        LDRH     R0,[SP, #+0]
        LDRH     R1,[R6, #+60]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[SP, #+2]
        LDRHEQ   R1,[R6, #+62]
        CMPEQ    R0,R1
        ADD      R8,R6,#+60
        BEQ.N    ??ip64_arp_create_ethhdr_7
        LDRH     R0,[SP, #+0]
        LDRH     R1,[R6, #+72]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[SP, #+2]
        LDRHEQ   R1,[R6, #+74]
        CMPEQ    R0,R1
        ADD      R8,R6,#+72
        BEQ.N    ??ip64_arp_create_ethhdr_7
        LDRH     R0,[SP, #+0]
        LDRH     R1,[R6, #+84]
        CMP      R0,R1
        ITTTE    EQ 
        LDRHEQ   R0,[SP, #+2]
        LDRHEQ   R1,[R6, #+86]
        CMPEQ    R0,R1
        MOVNE    R0,#+0
        ADD      R8,R6,#+84
//  364     }
//  365 
//  366     if(i == UIP_ARPTAB_SIZE) {
//  367       return 0;
        BNE.N    ??ip64_arp_create_ethhdr_8
//  368     }
//  369 
//  370     memcpy(ethhdr->dest.addr, tabptr->ethaddr.addr, 6);
??ip64_arp_create_ethhdr_7:
        MOVS     R2,#+6
        ADD      R1,R8,#+4
??ip64_arp_create_ethhdr_1:
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  371 
//  372   }
//  373   memcpy(ethhdr->src.addr, ip64_eth_addr.addr, 6);
??ip64_arp_create_ethhdr_3:
        MOVS     R2,#+6
        LDR.N    R1,??DataTable8_2
        ADDS     R0,R4,#+6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  374   
//  375   ethhdr->type = UIP_HTONS(IP64_ETH_TYPE_IP);
        MOVS     R0,#+8
        STRH     R0,[R4, #+12]
//  376   return sizeof(struct ip64_eth_hdr);
        MOVS     R0,#+14
??ip64_arp_create_ethhdr_8:
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock5
//  377 }
//  378 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ip64_arp_create_arp_request
        THUMB
//  379 int
//  380 ip64_arp_create_arp_request(uint8_t *llhdr, const uint8_t *nlhdr)
//  381 {
ip64_arp_create_arp_request:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R5,R1
//  382   struct ipv4_hdr *ipv4_hdr = (struct ipv4_hdr *)nlhdr;
//  383   struct arp_hdr *arp_hdr = (struct arp_hdr *)llhdr;
//  384   uip_ip4addr_t ipaddr;
//  385   
//  386   if(!uip_ipaddr_maskcmp(&ipv4_hdr->destipaddr,
//  387 			 ip64_get_hostaddr(),
//  388 			 ip64_get_netmask())) {
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        MOV      R6,R0
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        MOV      R7,R0
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        LDRH     R1,[R5, #+16]
        LDRH     R2,[R6, #+0]
        LDRH     R0,[R0, #+0]
        ANDS     R1,R2,R1
        LDRH     R2,[R7, #+0]
        ANDS     R0,R0,R2
        CMP      R1,R0
        BNE.N    ??ip64_arp_create_arp_request_0
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        MOV      R6,R0
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        MOV      R7,R0
          CFI FunCall ip64_get_netmask
        BL       ip64_get_netmask
        LDRH     R1,[R5, #+18]
        LDRH     R2,[R6, #+2]
        LDRH     R0,[R0, #+2]
        ANDS     R1,R2,R1
        LDRH     R2,[R7, #+2]
        ANDS     R0,R0,R2
        CMP      R1,R0
        BEQ.N    ??ip64_arp_create_arp_request_1
//  389     /* Destination address was not on the local network, so we need to
//  390        use the default router's IP address instead of the destination
//  391        address when determining the MAC address. */
//  392     uip_ip4addr_copy(&ipaddr, ip64_get_draddr());
??ip64_arp_create_arp_request_0:
          CFI FunCall ip64_get_draddr
        BL       ip64_get_draddr
        LDR      R5,[R0, #+0]
        B.N      ??ip64_arp_create_arp_request_2
//  393   } else {
//  394     /* Else, we use the destination IP address. */
//  395     uip_ip4addr_copy(&ipaddr, &ipv4_hdr->destipaddr);
??ip64_arp_create_arp_request_1:
        LDR      R5,[R5, #+16]
//  396   }
//  397   
//  398   memset(arp_hdr->ethhdr.dest.addr, 0xff, 6);
??ip64_arp_create_arp_request_2:
        MOVS     R2,#+255
        MOVS     R1,#+6
        MOV      R0,R4
          CFI FunCall __aeabi_memset
        BL       __aeabi_memset
//  399   memset(arp_hdr->dhwaddr.addr, 0x00, 6);
        MOVS     R1,#+6
        ADD      R0,R4,#+32
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  400   memcpy(arp_hdr->ethhdr.src.addr, ip64_eth_addr.addr, 6);
        LDR.N    R6,??DataTable8_2
        MOVS     R2,#+6
        MOV      R1,R6
        ADDS     R0,R4,#+6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  401   memcpy(arp_hdr->shwaddr.addr, ip64_eth_addr.addr, 6);
        MOVS     R2,#+6
        MOV      R1,R6
        ADD      R0,R4,#+22
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  402 
//  403   uip_ip4addr_copy(&arp_hdr->dipaddr, &ipaddr);
        STR      R5,[R4, #+38]
//  404   uip_ip4addr_copy(&arp_hdr->sipaddr, ip64_get_hostaddr());
          CFI FunCall ip64_get_hostaddr
        BL       ip64_get_hostaddr
        LDR      R0,[R0, #+0]
//  405   arp_hdr->opcode = UIP_HTONS(ARP_REQUEST);
//  406   arp_hdr->hwtype = UIP_HTONS(ARP_HWTYPE_ETH);
//  407   arp_hdr->protocol = UIP_HTONS(IP64_ETH_TYPE_IP);
//  408   arp_hdr->hwlen = 6;
//  409   arp_hdr->protolen = 4;
//  410   arp_hdr->ethhdr.type = UIP_HTONS(IP64_ETH_TYPE_ARP);
//  411   
//  412   uip_appdata = &uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN];
        LDR.N    R1,??DataTable8_3
        STR      R0,[R4, #+28]
        MOV      R0,#+256
        STRH     R0,[R4, #+20]
        STRH     R0,[R4, #+14]
        MOVS     R0,#+8
        STRH     R0,[R4, #+16]
        MOVS     R0,#+6
        STRB     R0,[R4, #+18]
        MOVS     R0,#+4
        STRB     R0,[R4, #+19]
        MOV      R0,#+1544
        STRH     R0,[R4, #+12]
        LDR.N    R0,??DataTable8_4
        STR      R0,[R1, #+0]
//  413 
//  414   return sizeof(struct arp_hdr);
        MOVS     R0,#+42
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock6
//  415 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     arp_table

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     arptime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     ip64_eth_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     uip_aligned_buf+0x3C

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
broadcast_ethaddr:
        DC8 255, 255, 255, 255, 255, 255, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
uip_all_zeroes_addr:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  416 /*---------------------------------------------------------------------------*/
// 
//    98 bytes in section .bss
// 1 486 bytes in section .text
// 
// 1 486 bytes of CODE memory
//    98 bytes of DATA memory
//
//Errors: none
//Warnings: 3
