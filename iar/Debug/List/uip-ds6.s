///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:44
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-ds6.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-ds6.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip-ds6.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN etimer_reset
        EXTERN etimer_set
        EXTERN memcmp
        EXTERN random_rand
        EXTERN stimer_expired
        EXTERN stimer_set
        EXTERN uip_ds6_defrt_periodic
        EXTERN uip_ds6_neighbor_periodic
        EXTERN uip_ds6_neighbors_init
        EXTERN uip_ds6_route_init
        EXTERN uip_lladdr

        PUBLIC get_match_length
        PUBLIC uip_ds6_aaddr_add
        PUBLIC uip_ds6_aaddr_lookup
        PUBLIC uip_ds6_aaddr_rm
        PUBLIC uip_ds6_addr_add
        PUBLIC uip_ds6_addr_lookup
        PUBLIC uip_ds6_addr_rm
        PUBLIC uip_ds6_addr_size
        PUBLIC uip_ds6_compute_reachable_time
        PUBLIC uip_ds6_get_global
        PUBLIC uip_ds6_get_link_local
        PUBLIC uip_ds6_if
        PUBLIC uip_ds6_init
        PUBLIC uip_ds6_is_addr_onlink
        PUBLIC uip_ds6_list_loop
        PUBLIC uip_ds6_maddr_add
        PUBLIC uip_ds6_maddr_lookup
        PUBLIC uip_ds6_maddr_rm
        PUBLIC uip_ds6_netif_addr_list_offset
        PUBLIC uip_ds6_periodic
        PUBLIC uip_ds6_prefix_add
        PUBLIC uip_ds6_prefix_list
        PUBLIC uip_ds6_prefix_lookup
        PUBLIC uip_ds6_prefix_rm
        PUBLIC uip_ds6_select_src
        PUBLIC uip_ds6_set_addr_iid
        PUBLIC uip_ds6_timer_periodic
        PUBLIC uip_ds6_timer_ra
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-ds6.c
//    1 /*
//    2  * Copyright (c) 2006, Swedish Institute of Computer Science.
//    3  * All rights reserved.
//    4  *
//    5  * Redistribution and use in source and binary forms, with or without
//    6  * modification, are permitted provided that the following conditions
//    7  * are met:
//    8  * 1. Redistributions of source code must retain the above copyright
//    9  *   notice, this list of conditions and the following disclaimer.
//   10  * 2. Redistributions in binary form must reproduce the above copyright
//   11  *   notice, this list of conditions and the following disclaimer in the
//   12  *   documentation and/or other materials provided with the distribution.
//   13  * 3. Neither the name of the Institute nor the names of its contributors
//   14  *   may be used to endorse or promote products derived from this software
//   15  *   without specific prior written permission.
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
//   29  */
//   30 
//   31 /**
//   32  * \addtogroup uip6
//   33  * @{
//   34  */
//   35 
//   36 /**
//   37  * \file
//   38  *    IPv6 data structure manipulation.
//   39  *    Comprises part of the Neighbor discovery (RFC 4861)
//   40  *    and auto configuration (RFC 4862) state machines.
//   41  * \author Mathilde Durvy <mdurvy@cisco.com>
//   42  * \author Julien Abeille <jabeille@cisco.com>
//   43  */
//   44 
//   45 #include <string.h>
//   46 #include <stdlib.h>
//   47 #include <stddef.h>
//   48 #include "lib/random.h"
//   49 #include "net/ipv6/uip-nd6.h"
//   50 #include "net/ipv6/uip-ds6.h"
//   51 #include "net/ip/uip-packetqueue.h"
//   52 
//   53 #define DEBUG DEBUG_NONE
//   54 #include "net/ip/uip-debug.h"
//   55 
//   56 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   57 struct etimer uip_ds6_timer_periodic;                           /** \brief Timer for maintenance of data structures */
//   58 
//   59 #if UIP_CONF_ROUTER
//   60 struct stimer uip_ds6_timer_ra;                                 /** \brief RA timer, to schedule RA sending */
//   61 #if UIP_ND6_SEND_RA
//   62 static uint8_t racount;                                         /** \brief number of RA already sent */
//   63 static uint16_t rand_time;                                      /** \brief random time value for timers */
//   64 #endif
//   65 #else /* UIP_CONF_ROUTER */
//   66 struct etimer uip_ds6_timer_rs;                                 /** \brief RS timer, to schedule RS sending */
//   67 static uint8_t rscount;                                         /** \brief number of rs already sent */
//   68 #endif /* UIP_CONF_ROUTER */
//   69 
//   70 /** \name "DS6" Data structures */
//   71 /** @{ */
//   72 uip_ds6_netif_t uip_ds6_if;                                       /** \brief The single interface */
uip_ds6_if:
        DS8 248
uip_ds6_timer_periodic:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uip_ds6_timer_ra:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   73 uip_ds6_prefix_t uip_ds6_prefix_list[UIP_DS6_PREFIX_NB];          /** \brief Prefix list */
//   74 
//   75 /* Used by Cooja to enable extraction of addresses from memory.*/
//   76 uint8_t uip_ds6_addr_size;
//   77 uint8_t uip_ds6_netif_addr_list_offset;
//   78 
//   79 /** @} */
//   80 
//   81 /* "full" (as opposed to pointer) ip address used in this file,  */
//   82 static uip_ipaddr_t loc_fipaddr;
loc_fipaddr:
        DS8 16
uip_ds6_addr_size:
        DS8 1
uip_ds6_netif_addr_list_offset:
        DS8 1
        DS8 2
        DS8 4
        DS8 4
        DS8 4
uip_ds6_prefix_list:
        DS8 96
//   83 
//   84 /* Pointers used in this file */
//   85 static uip_ds6_addr_t *locaddr;
//   86 static uip_ds6_maddr_t *locmaddr;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   87 static uip_ds6_aaddr_t *locaaddr;
locaaddr:
        DS8 4
//   88 static uip_ds6_prefix_t *locprefix;
//   89 
//   90 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function uip_ds6_init
        THUMB
//   91 void
//   92 uip_ds6_init(void)
//   93 {
uip_ds6_init:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
//   94 
//   95   uip_ds6_neighbors_init();
          CFI FunCall uip_ds6_neighbors_init
        BL       uip_ds6_neighbors_init
//   96   uip_ds6_route_init();
          CFI FunCall uip_ds6_route_init
        BL       uip_ds6_route_init
//   97 
//   98   PRINTF("Init of IPv6 data structures\n");
//   99   PRINTF("%u neighbors\n%u default routers\n%u prefixes\n%u routes\n%u unicast addresses\n%u multicast addresses\n%u anycast addresses\n",
//  100      NBR_TABLE_MAX_NEIGHBORS, UIP_DS6_DEFRT_NB, UIP_DS6_PREFIX_NB, UIP_DS6_ROUTE_NB,
//  101      UIP_DS6_ADDR_NB, UIP_DS6_MADDR_NB, UIP_DS6_AADDR_NB);
//  102   memset(uip_ds6_prefix_list, 0, sizeof(uip_ds6_prefix_list));
        LDR.W    R4,??DataTable14
        MOVS     R1,#+96
        ADD      R0,R4,#+32
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  103   memset(&uip_ds6_if, 0, sizeof(uip_ds6_if));
        LDR.W    R5,??DataTable14_1
        MOVS     R1,#+248
        MOV      R0,R5
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  104   uip_ds6_addr_size = sizeof(struct uip_ds6_addr);
        MOVS     R0,#+32
        STRB     R0,[R4, #+16]
//  105   uip_ds6_netif_addr_list_offset = offsetof(struct uip_ds6_netif, addr_list);
        MOVS     R0,#+24
        STRB     R0,[R4, #+17]
//  106 
//  107   /* Set interface parameters */
//  108   uip_ds6_if.link_mtu = UIP_LINK_MTU;
        MOV      R0,#+1280
        STR      R0,[R5, #+0]
//  109   uip_ds6_if.cur_hop_limit = UIP_TTL;
        MOVS     R0,#+64
        STRB     R0,[R5, #+4]
//  110   uip_ds6_if.base_reachable_time = UIP_ND6_REACHABLE_TIME;
        LDR.W    R0,??DataTable14_2  ;; 0x927c0
        STR      R0,[R5, #+8]
//  111   uip_ds6_if.reachable_time = uip_ds6_compute_reachable_time();
          CFI FunCall uip_ds6_compute_reachable_time
        BL       uip_ds6_compute_reachable_time
        STR      R0,[R5, #+12]
//  112   uip_ds6_if.retrans_timer = UIP_ND6_RETRANS_TIMER;
//  113   uip_ds6_if.maxdadns = UIP_ND6_DEF_MAXDADNS;
//  114 
//  115   /* Create link local address, prefix, multicast addresses, anycast addresses */
//  116   uip_create_linklocal_prefix(&loc_fipaddr);
//  117 #if UIP_CONF_ROUTER
//  118   uip_ds6_prefix_add(&loc_fipaddr, UIP_DEFAULT_PREFIX_LEN, 0, 0, 0, 0);
        MOVS     R3,#+0
        MOVW     R0,#+10000
        STR      R0,[R5, #+16]
        MOVS     R1,#+64
        MOVS     R0,#+0
        STRB     R0,[R5, #+20]
        MOVW     R0,#+33022
        STRH     R0,[R4, #+0]
        MOVS     R0,#+0
        STRH     R0,[R4, #+2]
        STR      R0,[R4, #+4]
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+0]
        MOV      R2,R0
        MOV      R0,R4
          CFI FunCall uip_ds6_prefix_add
        BL       uip_ds6_prefix_add
//  119 #else /* UIP_CONF_ROUTER */
//  120   uip_ds6_prefix_add(&loc_fipaddr, UIP_DEFAULT_PREFIX_LEN, 0);
//  121 #endif /* UIP_CONF_ROUTER */
//  122   uip_ds6_set_addr_iid(&loc_fipaddr, &uip_lladdr);
        LDR.W    R1,??DataTable14_3
        MOV      R0,R4
          CFI FunCall uip_ds6_set_addr_iid
        BL       uip_ds6_set_addr_iid
//  123   uip_ds6_addr_add(&loc_fipaddr, 0, ADDR_AUTOCONF);
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall uip_ds6_addr_add
        BL       uip_ds6_addr_add
//  124 
//  125   uip_create_linklocal_allnodes_mcast(&loc_fipaddr);
        MOVS     R0,#+0
        STRH     R0,[R4, #+2]
        STR      R0,[R4, #+4]
        STR      R0,[R4, #+8]
        STRH     R0,[R4, #+12]
        MOVW     R6,#+767
        MOV      R0,#+256
        STRH     R0,[R4, #+14]
        STRH     R6,[R4, #+0]
//  126   uip_ds6_maddr_add(&loc_fipaddr);
        MOV      R0,R4
          CFI FunCall uip_ds6_maddr_add
        BL       uip_ds6_maddr_add
//  127 #if UIP_CONF_ROUTER
//  128   uip_create_linklocal_allrouters_mcast(&loc_fipaddr);
        MOVS     R0,#+0
        STRH     R0,[R4, #+2]
        STR      R0,[R4, #+4]
        STR      R0,[R4, #+8]
        STRH     R0,[R4, #+12]
        STRH     R6,[R4, #+0]
        MOV      R0,#+512
        STRH     R0,[R4, #+14]
//  129   uip_ds6_maddr_add(&loc_fipaddr);
        MOV      R0,R4
          CFI FunCall uip_ds6_maddr_add
        BL       uip_ds6_maddr_add
//  130 #if UIP_ND6_SEND_RA
//  131   stimer_set(&uip_ds6_timer_ra, 2);     /* wait to have a link local IP address */
//  132 #endif /* UIP_ND6_SEND_RA */
//  133 #else /* UIP_CONF_ROUTER */
//  134   etimer_set(&uip_ds6_timer_rs,
//  135              random_rand() % (UIP_ND6_MAX_RTR_SOLICITATION_DELAY *
//  136                               CLOCK_SECOND));
//  137 #endif /* UIP_CONF_ROUTER */
//  138   etimer_set(&uip_ds6_timer_periodic, UIP_DS6_PERIOD);
        ADD      R0,R5,#+248
        POP      {R2-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOV      R1,#+1000
          CFI FunCall etimer_set
        B.W      etimer_set
          CFI EndBlock cfiBlock0
//  139 
//  140   return;
//  141 }
//  142 
//  143 
//  144 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function uip_ds6_periodic
        THUMB
//  145 void
//  146 uip_ds6_periodic(void)
//  147 {
uip_ds6_periodic:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  148 
//  149   /* Periodic processing on unicast addresses */
//  150   for(locaddr = uip_ds6_if.addr_list;
        LDR.W    R4,??DataTable14
        LDR.W    R5,??DataTable14_1
        ADD      R0,R5,#+24
        STR      R0,[R4, #+20]
        ADD      R6,R5,#+120
        B.N      ??uip_ds6_periodic_0
//  151       locaddr < uip_ds6_if.addr_list + UIP_DS6_ADDR_NB; locaddr++) {
//  152     if(locaddr->isused) {
??uip_ds6_periodic_1:
        LDRB     R1,[R0, #+0]
        CBZ.N    R1,??uip_ds6_periodic_2
//  153       if((!locaddr->isinfinite) && (stimer_expired(&locaddr->vlifetime))) {
        LDRB     R1,[R0, #+20]
        CBNZ.N   R1,??uip_ds6_periodic_2
        ADDS     R0,R0,#+24
          CFI FunCall stimer_expired
        BL       stimer_expired
        CBZ.N    R0,??uip_ds6_periodic_2
//  154         uip_ds6_addr_rm(locaddr);
        LDR      R0,[R4, #+20]
          CFI FunCall uip_ds6_addr_rm
        BL       uip_ds6_addr_rm
//  155 #if UIP_ND6_DEF_MAXDADNS > 0
//  156       } else if((locaddr->state == ADDR_TENTATIVE)
//  157                 && (locaddr->dadnscount <= uip_ds6_if.maxdadns)
//  158                 && (timer_expired(&locaddr->dadtimer))
//  159                 && (uip_len == 0)) {
//  160         uip_ds6_dad(locaddr);
//  161 #endif /* UIP_ND6_DEF_MAXDADNS > 0 */
//  162       }
//  163     }
//  164   }
??uip_ds6_periodic_2:
        LDR      R0,[R4, #+20]
        ADDS     R0,R0,#+32
        STR      R0,[R4, #+20]
??uip_ds6_periodic_0:
        LDR      R0,[R4, #+20]
        CMP      R0,R6
        BCC.N    ??uip_ds6_periodic_1
//  165 
//  166   /* Periodic processing on default routers */
//  167   uip_ds6_defrt_periodic();
          CFI FunCall uip_ds6_defrt_periodic
        BL       uip_ds6_defrt_periodic
//  168   /*  for(locdefrt = uip_ds6_defrt_list;
//  169       locdefrt < uip_ds6_defrt_list + UIP_DS6_DEFRT_NB; locdefrt++) {
//  170     if((locdefrt->isused) && (!locdefrt->isinfinite) &&
//  171        (stimer_expired(&(locdefrt->lifetime)))) {
//  172       uip_ds6_defrt_rm(locdefrt);
//  173     }
//  174     }*/
//  175 
//  176 #if !UIP_CONF_ROUTER
//  177   /* Periodic processing on prefixes */
//  178   for(locprefix = uip_ds6_prefix_list;
//  179       locprefix < uip_ds6_prefix_list + UIP_DS6_PREFIX_NB;
//  180       locprefix++) {
//  181     if(locprefix->isused && !locprefix->isinfinite
//  182        && stimer_expired(&(locprefix->vlifetime))) {
//  183       uip_ds6_prefix_rm(locprefix);
//  184     }
//  185   }
//  186 #endif /* !UIP_CONF_ROUTER */
//  187 
//  188   uip_ds6_neighbor_periodic();
          CFI FunCall uip_ds6_neighbor_periodic
        BL       uip_ds6_neighbor_periodic
//  189 
//  190 #if UIP_CONF_ROUTER && UIP_ND6_SEND_RA
//  191   /* Periodic RA sending */
//  192   if(stimer_expired(&uip_ds6_timer_ra) && (uip_len == 0)) {
//  193     uip_ds6_send_ra_periodic();
//  194   }
//  195 #endif /* UIP_CONF_ROUTER && UIP_ND6_SEND_RA */
//  196   etimer_reset(&uip_ds6_timer_periodic);
        ADD      R0,R5,#+248
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall etimer_reset
        B.W      etimer_reset
          CFI EndBlock cfiBlock1
//  197   return;
//  198 }
//  199 
//  200 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function uip_ds6_list_loop
        THUMB
//  201 uint8_t
//  202 uip_ds6_list_loop(uip_ds6_element_t *list, uint8_t size,
//  203                   uint16_t elementsize, uip_ipaddr_t *ipaddr,
//  204                   uint8_t ipaddrlen, uip_ds6_element_t **out_element)
//  205 {
uip_ds6_list_loop:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        LDR      R5,[SP, #+36]
        MOV      R6,R0
//  206   uip_ds6_element_t *element;
//  207 
//  208   *out_element = NULL;
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
        MOV      R9,R2
//  209 
//  210   for(element = list;
        LDR      R0,[SP, #+32]
        MOV      R4,R3
        MLA      R8,R9,R1,R6
        LSRS     R7,R0,#+3
        B.N      ??uip_ds6_list_loop_0
//  211       element <
//  212       (uip_ds6_element_t *)((uint8_t *)list + (size * elementsize));
//  213       element = (uip_ds6_element_t *)((uint8_t *)element + elementsize)) {
//  214     if(element->isused) {
//  215       if(uip_ipaddr_prefixcmp(&element->ipaddr, ipaddr, ipaddrlen)) {
//  216         *out_element = element;
//  217         return FOUND;
//  218       }
//  219     } else {
//  220       *out_element = element;
??uip_ds6_list_loop_1:
        STR      R6,[R5, #+0]
//  221     }
??uip_ds6_list_loop_2:
        ADD      R6,R9,R6
??uip_ds6_list_loop_0:
        CMP      R6,R8
        BCS.N    ??uip_ds6_list_loop_3
        LDRB     R0,[R6, #+0]
        CMP      R0,#+0
        BEQ.N    ??uip_ds6_list_loop_1
        MOV      R2,R7
        MOV      R1,R4
        ADDS     R0,R6,#+2
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??uip_ds6_list_loop_2
        STR      R6,[R5, #+0]
        POP      {R1,R4-R9,PC}
//  222   }
//  223 
//  224   return *out_element != NULL ? FREESPACE : NOSPACE;
??uip_ds6_list_loop_3:
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        ITE      NE 
        MOVNE    R0,#+1
        MOVEQ    R0,#+2
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock2
//  225 }
//  226 
//  227 /*---------------------------------------------------------------------------*/
//  228 #if UIP_CONF_ROUTER
//  229 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function uip_ds6_prefix_add
        THUMB
//  230 uip_ds6_prefix_t *
//  231 uip_ds6_prefix_add(uip_ipaddr_t *ipaddr, uint8_t ipaddrlen,
//  232                    uint8_t advertise, uint8_t flags, unsigned long vtime,
//  233                    unsigned long ptime)
//  234 {
uip_ds6_prefix_add:
        PUSH     {R2-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+40
        MOV      R8,R0
//  235   if(uip_ds6_list_loop
//  236      ((uip_ds6_element_t *)uip_ds6_prefix_list, UIP_DS6_PREFIX_NB,
//  237       sizeof(uip_ds6_prefix_t), ipaddr, ipaddrlen,
//  238       (uip_ds6_element_t **)&locprefix) == FREESPACE) {
        LDR.W    R4,??DataTable14
        MOVS     R0,#+0
        MOV      R5,R1
        MOV      R6,R2
        MOV      R9,R3
        STR      R0,[R4, #+28]
        ADD      R7,R4,#+32
        ADD      R10,R4,#+128
??uip_ds6_prefix_add_0:
        LDRB     R0,[R7, #+0]
        CBNZ.N   R0,??uip_ds6_prefix_add_1
        STR      R7,[R4, #+28]
        B.N      ??uip_ds6_prefix_add_2
??uip_ds6_prefix_add_1:
        LSRS     R2,R5,#+3
        MOV      R1,R8
        ADDS     R0,R7,#+2
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_prefix_add_3
??uip_ds6_prefix_add_2:
        ADDS     R7,R7,#+32
        CMP      R7,R10
        BCC.N    ??uip_ds6_prefix_add_0
        LDR      R0,[R4, #+28]
        CBZ.N    R0,??uip_ds6_prefix_add_4
//  239     locprefix->isused = 1;
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  240     uip_ipaddr_copy(&locprefix->ipaddr, ipaddr);
        MOV      R1,R8
        LDR      R0,[R4, #+28]
        ADDS     R0,R0,#+2
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  241     locprefix->length = ipaddrlen;
        LDR      R0,[R4, #+28]
        STRB     R5,[R0, #+18]
//  242     locprefix->advertise = advertise;
        LDR      R0,[R4, #+28]
        STRB     R6,[R0, #+19]
//  243     locprefix->l_a_reserved = flags;
        LDR      R0,[R4, #+28]
        STRB     R9,[R0, #+28]
//  244     locprefix->vlifetime = vtime;
        LDR      R0,[R4, #+28]
        LDR      R1,[SP, #+40]
        STR      R1,[R0, #+20]
//  245     locprefix->plifetime = ptime;
        LDR      R1,[SP, #+44]
        STR      R1,[R0, #+24]
//  246     PRINTF("Adding prefix ");
//  247     PRINT6ADDR(&locprefix->ipaddr);
//  248     PRINTF("length %u, flags %x, Valid lifetime %lx, Preffered lifetime %lx\n",
//  249        ipaddrlen, flags, vtime, ptime);
//  250     return locprefix;
        POP      {R1,R2,R4-R10,PC}
//  251   } else {
??uip_ds6_prefix_add_3:
        STR      R7,[R4, #+28]
//  252     PRINTF("No more space in Prefix list\n");
//  253   }
//  254   return NULL;
??uip_ds6_prefix_add_4:
        MOVS     R0,#+0
        POP      {R1,R2,R4-R10,PC}  ;; return
          CFI EndBlock cfiBlock3
//  255 }
//  256 
//  257 
//  258 #else /* UIP_CONF_ROUTER */
//  259 uip_ds6_prefix_t *
//  260 uip_ds6_prefix_add(uip_ipaddr_t *ipaddr, uint8_t ipaddrlen,
//  261                    unsigned long interval)
//  262 {
//  263   if(uip_ds6_list_loop
//  264      ((uip_ds6_element_t *)uip_ds6_prefix_list, UIP_DS6_PREFIX_NB,
//  265       sizeof(uip_ds6_prefix_t), ipaddr, ipaddrlen,
//  266       (uip_ds6_element_t **)&locprefix) == FREESPACE) {
//  267     locprefix->isused = 1;
//  268     uip_ipaddr_copy(&locprefix->ipaddr, ipaddr);
//  269     locprefix->length = ipaddrlen;
//  270     if(interval != 0) {
//  271       stimer_set(&(locprefix->vlifetime), interval);
//  272       locprefix->isinfinite = 0;
//  273     } else {
//  274       locprefix->isinfinite = 1;
//  275     }
//  276     PRINTF("Adding prefix ");
//  277     PRINT6ADDR(&locprefix->ipaddr);
//  278     PRINTF("length %u, vlifetime%lu\n", ipaddrlen, interval);
//  279   }
//  280   return NULL;
//  281 }
//  282 #endif /* UIP_CONF_ROUTER */
//  283 
//  284 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function uip_ds6_prefix_rm
          CFI NoCalls
        THUMB
//  285 void
//  286 uip_ds6_prefix_rm(uip_ds6_prefix_t *prefix)
//  287 {
//  288   if(prefix != NULL) {
uip_ds6_prefix_rm:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock4
//  289     prefix->isused = 0;
//  290   }
//  291   return;
//  292 }
//  293 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function uip_ds6_prefix_lookup
        THUMB
//  294 uip_ds6_prefix_t *
//  295 uip_ds6_prefix_lookup(uip_ipaddr_t *ipaddr, uint8_t ipaddrlen)
//  296 {
uip_ds6_prefix_lookup:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
//  297   if(uip_ds6_list_loop((uip_ds6_element_t *)uip_ds6_prefix_list,
//  298 		       UIP_DS6_PREFIX_NB, sizeof(uip_ds6_prefix_t),
//  299 		       ipaddr, ipaddrlen,
//  300 		       (uip_ds6_element_t **)&locprefix) == FOUND) {
        LDR.W    R4,??DataTable14
        STR      R1,[SP, #+0]
        ADD      R2,R4,#+28
        STR      R2,[SP, #+4]
        MOV      R3,R0
        MOVS     R2,#+32
        MOVS     R1,#+3
        ADD      R0,R4,#+32
          CFI FunCall uip_ds6_list_loop
        BL       uip_ds6_list_loop
        CBNZ.N   R0,??uip_ds6_prefix_lookup_0
//  301     return locprefix;
        LDR      R0,[R4, #+28]
        POP      {R1,R2,R4,PC}
//  302   }
//  303   return NULL;
??uip_ds6_prefix_lookup_0:
        MOVS     R0,#+0
        POP      {R1,R2,R4,PC}    ;; return
          CFI EndBlock cfiBlock5
//  304 }
//  305 
//  306 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function uip_ds6_is_addr_onlink
        THUMB
//  307 uint8_t
//  308 uip_ds6_is_addr_onlink(uip_ipaddr_t *ipaddr)
//  309 {
uip_ds6_is_addr_onlink:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  310   for(locprefix = uip_ds6_prefix_list;
        LDR.W    R5,??DataTable14
        ADD      R0,R5,#+32
        STR      R0,[R5, #+28]
        ADD      R6,R5,#+128
//  311       locprefix < uip_ds6_prefix_list + UIP_DS6_PREFIX_NB; locprefix++) {
//  312     if(locprefix->isused &&
//  313        uip_ipaddr_prefixcmp(&locprefix->ipaddr, ipaddr, locprefix->length)) {
??uip_ds6_is_addr_onlink_0:
        LDR      R7,[R5, #+28]
        LDRB     R0,[R7, #+0]
        CBZ.N    R0,??uip_ds6_is_addr_onlink_1
        LDRB     R0,[R7, #+18]
        LSRS     R2,R0,#+3
        MOV      R1,R4
        ADDS     R0,R7,#+2
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??uip_ds6_is_addr_onlink_1
//  314       return 1;
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//  315     }
//  316   }
??uip_ds6_is_addr_onlink_1:
        ADD      R0,R7,#+32
        CMP      R0,R6
        STR      R0,[R5, #+28]
        BCC.N    ??uip_ds6_is_addr_onlink_0
//  317   return 0;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock6
//  318 }
//  319 
//  320 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function uip_ds6_addr_add
        THUMB
//  321 uip_ds6_addr_t *
//  322 uip_ds6_addr_add(uip_ipaddr_t *ipaddr, unsigned long vlifetime, uint8_t type)
//  323 {
uip_ds6_addr_add:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+12
          CFI CFA R13+32
        MOV      R4,R0
//  324   if(uip_ds6_list_loop
//  325      ((uip_ds6_element_t *)uip_ds6_if.addr_list, UIP_DS6_ADDR_NB,
//  326       sizeof(uip_ds6_addr_t), ipaddr, 128,
//  327       (uip_ds6_element_t **)&locaddr) == FREESPACE) {
        LDR.W    R5,??DataTable14
        ADD      R0,R5,#+20
        STR      R0,[SP, #+4]
        MOV      R6,R1
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        MOV      R7,R2
        MOV      R3,R4
        MOVS     R2,#+32
        MOVS     R1,#+3
        LDR.W    R0,??DataTable14_4
          CFI FunCall uip_ds6_list_loop
        BL       uip_ds6_list_loop
        CMP      R0,#+1
        BNE.N    ??uip_ds6_addr_add_0
//  328     locaddr->isused = 1;
        LDR      R1,[R5, #+20]
        STRB     R0,[R1, #+0]
//  329     uip_ipaddr_copy(&locaddr->ipaddr, ipaddr);
        MOV      R1,R4
        LDR      R0,[R5, #+20]
        ADDS     R0,R0,#+2
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  330     locaddr->type = type;
        LDR      R0,[R5, #+20]
        STRB     R7,[R0, #+19]
//  331     if(vlifetime == 0) {
        LDR      R0,[R5, #+20]
        CBNZ.N   R6,??uip_ds6_addr_add_1
//  332       locaddr->isinfinite = 1;
        MOVS     R1,#+1
        STRB     R1,[R0, #+20]
        B.N      ??uip_ds6_addr_add_2
//  333     } else {
//  334       locaddr->isinfinite = 0;
??uip_ds6_addr_add_1:
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
//  335       stimer_set(&(locaddr->vlifetime), vlifetime);
        MOV      R1,R6
        LDR      R0,[R5, #+20]
        ADDS     R0,R0,#+24
          CFI FunCall stimer_set
        BL       stimer_set
//  336     }
//  337 #if UIP_ND6_DEF_MAXDADNS > 0
//  338     locaddr->state = ADDR_TENTATIVE;
//  339     timer_set(&locaddr->dadtimer,
//  340               random_rand() % (UIP_ND6_MAX_RTR_SOLICITATION_DELAY *
//  341                                CLOCK_SECOND));
//  342     locaddr->dadnscount = 0;
//  343 #else /* UIP_ND6_DEF_MAXDADNS > 0 */
//  344     locaddr->state = ADDR_PREFERRED;
??uip_ds6_addr_add_2:
        LDR      R1,[R5, #+20]
        MOVS     R0,#+1
        STRB     R0,[R1, #+18]
//  345 #endif /* UIP_ND6_DEF_MAXDADNS > 0 */
//  346     uip_create_solicited_node(ipaddr, &loc_fipaddr);
        MOVS     R1,#+2
        STRB     R1,[R5, #+1]
        MOVS     R0,#+255
        MOVS     R1,#+0
        STRH     R1,[R5, #+2]
        STR      R1,[R5, #+4]
        STRH     R1,[R5, #+8]
        STRB     R1,[R5, #+10]
        STRB     R0,[R5, #+0]
        MOVS     R1,#+1
        STRB     R0,[R5, #+12]
        STRB     R1,[R5, #+11]
        LDRB     R0,[R4, #+13]
        STRB     R0,[R5, #+13]
        LDRH     R0,[R4, #+14]
        STRH     R0,[R5, #+14]
//  347     uip_ds6_maddr_add(&loc_fipaddr);
        MOV      R0,R5
          CFI FunCall uip_ds6_maddr_add
        BL       uip_ds6_maddr_add
//  348     return locaddr;
        LDR      R0,[R5, #+20]
        ADD      SP,SP,#+12
          CFI CFA R13+20
        POP      {R4-R7,PC}
          CFI CFA R13+32
//  349   }
//  350   return NULL;
??uip_ds6_addr_add_0:
        MOVS     R0,#+0
        ADD      SP,SP,#+12
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock7
//  351 }
//  352 
//  353 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function uip_ds6_addr_rm
        THUMB
//  354 void
//  355 uip_ds6_addr_rm(uip_ds6_addr_t *addr)
//  356 {
uip_ds6_addr_rm:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  357   if(addr != NULL) {
        BEQ.N    ??uip_ds6_addr_rm_0
//  358     uip_create_solicited_node(&addr->ipaddr, &loc_fipaddr);
        LDR.W    R5,??DataTable14
        MOVS     R1,#+2
        STRB     R1,[R5, #+1]
        MOVS     R0,#+255
        MOVS     R1,#+0
        STRH     R1,[R5, #+2]
        STR      R1,[R5, #+4]
        STRH     R1,[R5, #+8]
        STRB     R1,[R5, #+10]
        STRB     R0,[R5, #+0]
        MOVS     R1,#+1
        STRB     R0,[R5, #+12]
        STRB     R1,[R5, #+11]
        LDRB     R0,[R4, #+15]
        STRB     R0,[R5, #+13]
        LDRH     R0,[R4, #+16]
        STRH     R0,[R5, #+14]
//  359     if((locmaddr = uip_ds6_maddr_lookup(&loc_fipaddr)) != NULL) {
        MOV      R0,R5
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        STR      R0,[R5, #+24]
        CBZ.N    R0,??uip_ds6_addr_rm_1
//  360       uip_ds6_maddr_rm(locmaddr);
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  361     }
//  362     addr->isused = 0;
??uip_ds6_addr_rm_1:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  363   }
//  364   return;
??uip_ds6_addr_rm_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock8
//  365 }
//  366 
//  367 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function uip_ds6_addr_lookup
        THUMB
//  368 uip_ds6_addr_t *
//  369 uip_ds6_addr_lookup(uip_ipaddr_t *ipaddr)
//  370 {
uip_ds6_addr_lookup:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  371   if(uip_ds6_list_loop
//  372      ((uip_ds6_element_t *)uip_ds6_if.addr_list, UIP_DS6_ADDR_NB,
//  373       sizeof(uip_ds6_addr_t), ipaddr, 128,
//  374       (uip_ds6_element_t **)&locaddr) == FOUND) {
        LDR.W    R5,??DataTable14
        LDR.W    R6,??DataTable14_1
        MOVS     R0,#+0
        STR      R0,[R5, #+20]
        ADD      R1,R6,#+120
        ADD      R0,R6,#+24
        CMP      R0,R1
        ADD      R7,R6,#+24
        BCS.N    ??uip_ds6_addr_lookup_0
        LDRB     R0,[R6, #+24]
        CBNZ.N   R0,??uip_ds6_addr_lookup_1
        ADD      R0,R6,#+24
        STR      R0,[R5, #+20]
        B.N      ??uip_ds6_addr_lookup_2
??uip_ds6_addr_lookup_1:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R6,#+26
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_addr_lookup_3
??uip_ds6_addr_lookup_2:
        LDRB     R0,[R6, #+56]
        ADD      R7,R6,#+56
        CBNZ.N   R0,??uip_ds6_addr_lookup_4
        ADD      R0,R6,#+56
        STR      R0,[R5, #+20]
        B.N      ??uip_ds6_addr_lookup_5
??uip_ds6_addr_lookup_4:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R6,#+58
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_addr_lookup_3
??uip_ds6_addr_lookup_5:
        LDRB     R0,[R6, #+88]
        ADD      R7,R6,#+88
        CBNZ.N   R0,??uip_ds6_addr_lookup_6
        ADD      R0,R6,#+88
        STR      R0,[R5, #+20]
//  375     return locaddr;
//  376   }
//  377   return NULL;
??uip_ds6_addr_lookup_0:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
??uip_ds6_addr_lookup_6:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R6,#+90
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??uip_ds6_addr_lookup_0
??uip_ds6_addr_lookup_3:
        STR      R7,[R5, #+20]
        MOV      R0,R7
        POP      {R1,R4-R7,PC}
          CFI EndBlock cfiBlock9
//  378 }
//  379 
//  380 /*---------------------------------------------------------------------------*/
//  381 /*
//  382  * get a link local address -
//  383  * state = -1 => any address is ok. Otherwise state = desired state of addr.
//  384  * (TENTATIVE, PREFERRED, DEPRECATED)
//  385  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function uip_ds6_get_link_local
          CFI NoCalls
        THUMB
//  386 uip_ds6_addr_t *
//  387 uip_ds6_get_link_local(int8_t state)
//  388 {
uip_ds6_get_link_local:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  389   for(locaddr = uip_ds6_if.addr_list;
        LDR.W    R3,??DataTable14
        LDR.W    R1,??DataTable14_1
        ADD      R2,R1,#+24
        STR      R2,[R3, #+20]
        ADD      R4,R1,#+120
//  390       locaddr < uip_ds6_if.addr_list + UIP_DS6_ADDR_NB; locaddr++) {
//  391     if(locaddr->isused && (state == -1 || locaddr->state == state)
//  392        && (uip_is_addr_link_local(&locaddr->ipaddr))) {
??uip_ds6_get_link_local_0:
        LDR      R1,[R3, #+20]
        LDRB     R5,[R1, #+0]
        CBZ.N    R5,??uip_ds6_get_link_local_1
        CMN      R0,#+1
        ITT      NE 
        LDRBNE   R5,[R1, #+18]
        CMPNE    R5,R0
        BNE.N    ??uip_ds6_get_link_local_1
        LDRB     R5,[R1, #+2]
        CMP      R5,#+254
        ITT      EQ 
        LDRBEQ   R5,[R1, #+3]
        CMPEQ    R5,#+128
        BNE.N    ??uip_ds6_get_link_local_1
//  393       return locaddr;
        B.N      ?Subroutine2
//  394     }
//  395   }
??uip_ds6_get_link_local_1:
        ADDS     R1,R1,#+32
        CMP      R1,R4
        STR      R1,[R3, #+20]
        BCC.N    ??uip_ds6_get_link_local_0
//  396   return NULL;
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock10
//  397 }
//  398 
//  399 /*---------------------------------------------------------------------------*/
//  400 /*
//  401  * get a global address -
//  402  * state = -1 => any address is ok. Otherwise state = desired state of addr.
//  403  * (TENTATIVE, PREFERRED, DEPRECATED)
//  404  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function uip_ds6_get_global
          CFI NoCalls
        THUMB
//  405 uip_ds6_addr_t *
//  406 uip_ds6_get_global(int8_t state)
//  407 {
uip_ds6_get_global:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  408   for(locaddr = uip_ds6_if.addr_list;
        LDR.W    R3,??DataTable14
        LDR.W    R1,??DataTable14_1
        ADD      R2,R1,#+24
        STR      R2,[R3, #+20]
        ADD      R4,R1,#+120
//  409       locaddr < uip_ds6_if.addr_list + UIP_DS6_ADDR_NB; locaddr++) {
//  410     if(locaddr->isused && (state == -1 || locaddr->state == state)
//  411        && !(uip_is_addr_link_local(&locaddr->ipaddr))) {
??uip_ds6_get_global_0:
        LDR      R1,[R3, #+20]
        LDRB     R5,[R1, #+0]
        CBZ.N    R5,??uip_ds6_get_global_1
        CMN      R0,#+1
        ITT      NE 
        LDRBNE   R5,[R1, #+18]
        CMPNE    R5,R0
        BNE.N    ??uip_ds6_get_global_1
        LDRB     R5,[R1, #+2]
        CMP      R5,#+254
        ITT      EQ 
        LDRBEQ   R5,[R1, #+3]
        CMPEQ    R5,#+128
        BEQ.N    ??uip_ds6_get_global_1
//  412       return locaddr;
        B.N      ?Subroutine2
//  413     }
//  414   }
??uip_ds6_get_global_1:
        ADDS     R1,R1,#+32
        CMP      R1,R4
        STR      R1,[R3, #+20]
        BCC.N    ??uip_ds6_get_global_0
//  415   return NULL;
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock11
//  416 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls uip_ds6_get_link_local
          CFI NoCalls uip_ds6_get_global
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R5 Frame(CFA, -4)
        THUMB
?Subroutine2:
        POP      {R4,R5}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
        MOV      R0,R1
        BX       LR
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls uip_ds6_get_link_local
          CFI NoCalls uip_ds6_get_global
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R5 Frame(CFA, -4)
        THUMB
?Subroutine1:
        POP      {R4,R5}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  417 
//  418 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function uip_ds6_maddr_add
        THUMB
//  419 uip_ds6_maddr_t *
//  420 uip_ds6_maddr_add(const uip_ipaddr_t *ipaddr)
//  421 {
uip_ds6_maddr_add:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R4,R0
//  422   if(uip_ds6_list_loop
//  423      ((uip_ds6_element_t *)uip_ds6_if.maddr_list, UIP_DS6_MADDR_NB,
//  424       sizeof(uip_ds6_maddr_t), (void*)ipaddr, 128,
//  425       (uip_ds6_element_t **)&locmaddr) == FREESPACE) {
        LDR.W    R5,??DataTable14
        LDR.W    R8,??DataTable14_1
        MOVS     R0,#+0
        STR      R0,[R5, #+24]
        ADD      R6,R8,#+156
        ADD      R0,R8,#+246
        CMP      R6,R0
        MOV      R7,R6
        BCS.N    ??uip_ds6_maddr_add_0
        LDRB     R0,[R8, #+156]
        CBNZ.N   R0,??uip_ds6_maddr_add_1
        STR      R6,[R5, #+24]
        B.N      ??uip_ds6_maddr_add_2
??uip_ds6_maddr_add_1:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+158
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BEQ.N    ??uip_ds6_maddr_add_3
??uip_ds6_maddr_add_2:
        LDRB     R0,[R6, #+18]
        ADD      R7,R8,#+174
        CBNZ.N   R0,??uip_ds6_maddr_add_4
        STR      R7,[R5, #+24]
        B.N      ??uip_ds6_maddr_add_5
??uip_ds6_maddr_add_4:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+176
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BEQ.N    ??uip_ds6_maddr_add_3
??uip_ds6_maddr_add_5:
        ADD      R6,R8,#+192
        LDRB     R0,[R8, #+192]
        MOV      R7,R6
        CBNZ.N   R0,??uip_ds6_maddr_add_6
        STR      R6,[R5, #+24]
        B.N      ??uip_ds6_maddr_add_7
??uip_ds6_maddr_add_6:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+194
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_maddr_add_3
??uip_ds6_maddr_add_7:
        LDRB     R0,[R6, #+18]
        ADD      R7,R8,#+210
        CBNZ.N   R0,??uip_ds6_maddr_add_8
        STR      R7,[R5, #+24]
        B.N      ??uip_ds6_maddr_add_9
??uip_ds6_maddr_add_8:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+212
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_maddr_add_3
??uip_ds6_maddr_add_9:
        LDRB     R0,[R8, #+228]
        ADD      R7,R8,#+228
        CBNZ.N   R0,??uip_ds6_maddr_add_10
        STR      R7,[R5, #+24]
??uip_ds6_maddr_add_0:
        LDR      R0,[R5, #+24]
        CBZ.N    R0,??uip_ds6_maddr_add_11
//  426     locmaddr->isused = 1;
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  427     uip_ipaddr_copy(&locmaddr->ipaddr, ipaddr);
        MOV      R1,R4
        LDR      R0,[R5, #+24]
        ADDS     R0,R0,#+2
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  428     return locmaddr;
        LDR      R0,[R5, #+24]
        POP      {R4-R8,PC}
//  429   }
??uip_ds6_maddr_add_10:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+230
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??uip_ds6_maddr_add_0
??uip_ds6_maddr_add_3:
        STR      R7,[R5, #+24]
          CFI EndBlock cfiBlock14
//  430   return NULL;
??uip_ds6_maddr_add_11:
        REQUIRE ?Subroutine3
        ;; // Fall through to label ?Subroutine3
//  431 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls uip_ds6_maddr_add
          CFI NoCalls uip_ds6_maddr_lookup
          CFI NoCalls uip_ds6_aaddr_add
          CFI NoCalls uip_ds6_aaddr_lookup
          CFI CFA R13+24
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine3:
        MOVS     R0,#+0
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock15
//  432 
//  433 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function uip_ds6_maddr_rm
          CFI NoCalls
        THUMB
//  434 void
//  435 uip_ds6_maddr_rm(uip_ds6_maddr_t *maddr)
uip_ds6_maddr_rm:
        Nop      
          CFI EndBlock cfiBlock16
//  436 {
//  437   if(maddr != NULL) {
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls uip_ds6_prefix_rm
          CFI NoCalls uip_ds6_maddr_rm
          CFI NoCalls uip_ds6_aaddr_rm
        THUMB
?Subroutine0:
        CBZ.N    R0,??Subroutine0_0
//  438     maddr->isused = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  439   }
//  440   return;
??Subroutine0_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  441 }
//  442 
//  443 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function uip_ds6_maddr_lookup
        THUMB
//  444 uip_ds6_maddr_t *
//  445 uip_ds6_maddr_lookup(const uip_ipaddr_t *ipaddr)
//  446 {
uip_ds6_maddr_lookup:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R4,R0
//  447   if(uip_ds6_list_loop
//  448      ((uip_ds6_element_t *)uip_ds6_if.maddr_list, UIP_DS6_MADDR_NB,
//  449       sizeof(uip_ds6_maddr_t), (void*)ipaddr, 128,
//  450       (uip_ds6_element_t **)&locmaddr) == FOUND) {
        LDR.N    R5,??DataTable14
        LDR.W    R8,??DataTable14_1
        MOVS     R0,#+0
        STR      R0,[R5, #+24]
        ADD      R6,R8,#+156
        ADD      R0,R8,#+246
        CMP      R6,R0
        MOV      R7,R6
        BCS.N    ??uip_ds6_maddr_lookup_0
        LDRB     R0,[R8, #+156]
        CBNZ.N   R0,??uip_ds6_maddr_lookup_1
        STR      R6,[R5, #+24]
        B.N      ??uip_ds6_maddr_lookup_2
??uip_ds6_maddr_lookup_1:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+158
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BEQ.N    ??uip_ds6_maddr_lookup_3
??uip_ds6_maddr_lookup_2:
        LDRB     R0,[R6, #+18]
        ADD      R7,R8,#+174
        CBNZ.N   R0,??uip_ds6_maddr_lookup_4
        STR      R7,[R5, #+24]
        B.N      ??uip_ds6_maddr_lookup_5
??uip_ds6_maddr_lookup_4:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+176
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_maddr_lookup_3
??uip_ds6_maddr_lookup_5:
        ADD      R6,R8,#+192
        LDRB     R0,[R8, #+192]
        MOV      R7,R6
        CBNZ.N   R0,??uip_ds6_maddr_lookup_6
        STR      R6,[R5, #+24]
        B.N      ??uip_ds6_maddr_lookup_7
??uip_ds6_maddr_lookup_6:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+194
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_maddr_lookup_3
??uip_ds6_maddr_lookup_7:
        LDRB     R0,[R6, #+18]
        ADD      R7,R8,#+210
        CBNZ.N   R0,??uip_ds6_maddr_lookup_8
        STR      R7,[R5, #+24]
        B.N      ??uip_ds6_maddr_lookup_9
??uip_ds6_maddr_lookup_8:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+212
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_maddr_lookup_3
??uip_ds6_maddr_lookup_9:
        LDRB     R0,[R8, #+228]
        ADD      R7,R8,#+228
        CBNZ.N   R0,??uip_ds6_maddr_lookup_10
        STR      R7,[R5, #+24]
//  451     return locmaddr;
//  452   }
//  453   return NULL;
??uip_ds6_maddr_lookup_0:
        B.N      ?Subroutine3
??uip_ds6_maddr_lookup_10:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+230
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??uip_ds6_maddr_lookup_0
??uip_ds6_maddr_lookup_3:
        STR      R7,[R5, #+24]
        MOV      R0,R7
        POP      {R4-R8,PC}
          CFI EndBlock cfiBlock18
//  454 }
//  455 
//  456 
//  457 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function uip_ds6_aaddr_add
        THUMB
//  458 uip_ds6_aaddr_t *
//  459 uip_ds6_aaddr_add(uip_ipaddr_t *ipaddr)
//  460 {
uip_ds6_aaddr_add:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R4,R0
//  461   if(uip_ds6_list_loop
//  462      ((uip_ds6_element_t *)uip_ds6_if.aaddr_list, UIP_DS6_AADDR_NB,
//  463       sizeof(uip_ds6_aaddr_t), ipaddr, 128,
//  464       (uip_ds6_element_t **)&locaaddr) == FREESPACE) {
        LDR.N    R5,??DataTable14_5
        LDR.W    R8,??DataTable14_1
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
        ADD      R7,R8,#+120
        ADD      R0,R8,#+156
        CMP      R7,R0
        MOV      R6,R7
        BCS.N    ??uip_ds6_aaddr_add_0
        LDRB     R0,[R8, #+120]
        CBNZ.N   R0,??uip_ds6_aaddr_add_1
        STR      R7,[R5, #+0]
        B.N      ??uip_ds6_aaddr_add_2
??uip_ds6_aaddr_add_1:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+122
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_aaddr_add_3
??uip_ds6_aaddr_add_2:
        LDRB     R0,[R7, #+18]
        ADD      R6,R8,#+138
        CBNZ.N   R0,??uip_ds6_aaddr_add_4
        STR      R6,[R5, #+0]
??uip_ds6_aaddr_add_0:
        LDR      R0,[R5, #+0]
        CBZ.N    R0,??uip_ds6_aaddr_add_5
//  465     locaaddr->isused = 1;
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  466     uip_ipaddr_copy(&locaaddr->ipaddr, ipaddr);
        MOV      R1,R4
        LDR      R0,[R5, #+0]
        ADDS     R0,R0,#+2
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  467     return locaaddr;
        LDR      R0,[R5, #+0]
        POP      {R4-R8,PC}
//  468   }
??uip_ds6_aaddr_add_4:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+140
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??uip_ds6_aaddr_add_0
??uip_ds6_aaddr_add_3:
        STR      R6,[R5, #+0]
//  469   return NULL;
??uip_ds6_aaddr_add_5:
        B.N      ?Subroutine3
          CFI EndBlock cfiBlock19
//  470 }
//  471 
//  472 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function uip_ds6_aaddr_rm
          CFI NoCalls
        THUMB
//  473 void
//  474 uip_ds6_aaddr_rm(uip_ds6_aaddr_t *aaddr)
//  475 {
//  476   if(aaddr != NULL) {
uip_ds6_aaddr_rm:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock20
//  477     aaddr->isused = 0;
//  478   }
//  479   return;
//  480 }
//  481 
//  482 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function uip_ds6_aaddr_lookup
        THUMB
//  483 uip_ds6_aaddr_t *
//  484 uip_ds6_aaddr_lookup(uip_ipaddr_t *ipaddr)
//  485 {
uip_ds6_aaddr_lookup:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R4,R0
//  486   if(uip_ds6_list_loop((uip_ds6_element_t *)uip_ds6_if.aaddr_list,
//  487 		       UIP_DS6_AADDR_NB, sizeof(uip_ds6_aaddr_t), ipaddr, 128,
//  488 		       (uip_ds6_element_t **)&locaaddr) == FOUND) {
        LDR.N    R5,??DataTable14_5
        LDR.W    R8,??DataTable14_1
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
        ADD      R7,R8,#+120
        ADD      R0,R8,#+156
        CMP      R7,R0
        MOV      R6,R7
        BCS.N    ??uip_ds6_aaddr_lookup_0
        LDRB     R0,[R8, #+120]
        CBNZ.N   R0,??uip_ds6_aaddr_lookup_1
        STR      R7,[R5, #+0]
        B.N      ??uip_ds6_aaddr_lookup_2
??uip_ds6_aaddr_lookup_1:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+122
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??uip_ds6_aaddr_lookup_3
??uip_ds6_aaddr_lookup_2:
        LDRB     R0,[R7, #+18]
        ADD      R6,R8,#+138
        CBNZ.N   R0,??uip_ds6_aaddr_lookup_4
        STR      R6,[R5, #+0]
//  489     return locaaddr;
//  490   }
//  491   return NULL;
??uip_ds6_aaddr_lookup_0:
        B.N      ?Subroutine3
??uip_ds6_aaddr_lookup_4:
        MOVS     R2,#+16
        MOV      R1,R4
        ADD      R0,R8,#+140
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??uip_ds6_aaddr_lookup_0
??uip_ds6_aaddr_lookup_3:
        STR      R6,[R5, #+0]
        MOV      R0,R6
        POP      {R4-R8,PC}
          CFI EndBlock cfiBlock21
//  492 }
//  493 
//  494 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function uip_ds6_select_src
        THUMB
//  495 void
//  496 uip_ds6_select_src(uip_ipaddr_t *src, uip_ipaddr_t *dst)
//  497 {
uip_ds6_select_src:
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
        MOV      R5,R1
        MOV      R4,R0
//  498   uint8_t best = 0;             /* number of bit in common with best match */
//  499   uint8_t n = 0;
//  500   uip_ds6_addr_t *matchaddr = NULL;
//  501 
//  502   if(!uip_is_addr_link_local(dst) && !uip_is_addr_mcast(dst)) {
        LDRB     R0,[R5, #+0]
        MOV      R8,#+0
        CMP      R0,#+254
        MOV      R10,R8
        BNE.N    ??uip_ds6_select_src_0
        LDRB     R0,[R5, #+1]
        CMP      R0,#+128
        BNE.N    ??uip_ds6_select_src_1
//  503     /* find longest match */
//  504     for(locaddr = uip_ds6_if.addr_list;
//  505         locaddr < uip_ds6_if.addr_list + UIP_DS6_ADDR_NB; locaddr++) {
//  506       /* Only preferred global (not link-local) addresses */
//  507       if(locaddr->isused && locaddr->state == ADDR_PREFERRED &&
//  508          !uip_is_addr_link_local(&locaddr->ipaddr)) {
//  509         n = get_match_length(dst, &locaddr->ipaddr);
//  510         if(n >= best) {
//  511           best = n;
//  512           matchaddr = locaddr;
//  513         }
//  514       }
//  515     }
//  516 #if UIP_IPV6_MULTICAST
//  517   } else if(uip_is_addr_mcast_routable(dst)) {
//  518     matchaddr = uip_ds6_get_global(ADDR_PREFERRED);
//  519 #endif
//  520   } else {
//  521     matchaddr = uip_ds6_get_link_local(ADDR_PREFERRED);
??uip_ds6_select_src_2:
        MOVS     R0,#+1
          CFI FunCall uip_ds6_get_link_local
        BL       uip_ds6_get_link_local
        MOV      R10,R0
//  522   }
//  523 
//  524   /* use the :: (unspecified address) as source if no match found */
//  525   if(matchaddr == NULL) {
??uip_ds6_select_src_3:
        CMP      R10,#+0
        BNE.N    ??uip_ds6_select_src_4
//  526     uip_create_unspecified(src);
??uip_ds6_select_src_5:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        STRH     R0,[R4, #+2]
        STRH     R0,[R4, #+4]
        STRH     R0,[R4, #+6]
        STRH     R0,[R4, #+8]
        STRH     R0,[R4, #+10]
        STRH     R0,[R4, #+12]
        STRH     R0,[R4, #+14]
//  527   } else {
//  528     uip_ipaddr_copy(src, &matchaddr->ipaddr);
//  529   }
//  530 }
        POP      {R4-R10,PC}
??uip_ds6_select_src_0:
        CMP      R0,#+255
        BEQ.N    ??uip_ds6_select_src_2
??uip_ds6_select_src_1:
        LDR.N    R0,??DataTable14_1
        ADD      R1,R0,#+24
        ADD      R9,R0,#+120
        LDR.N    R6,??DataTable14
        STR      R1,[R6, #+20]
        ADDS     R0,R0,#+24
        CMP      R0,R9
        BCS.N    ??uip_ds6_select_src_5
??uip_ds6_select_src_6:
        LDR      R7,[R6, #+20]
        LDRB     R0,[R7, #+0]
        CBZ.N    R0,??uip_ds6_select_src_7
        LDRB     R0,[R7, #+18]
        CMP      R0,#+1
        BNE.N    ??uip_ds6_select_src_7
        LDRB     R0,[R7, #+2]
        CMP      R0,#+254
        ITT      EQ 
        LDRBEQ   R0,[R7, #+3]
        CMPEQ    R0,#+128
        BEQ.N    ??uip_ds6_select_src_7
        ADDS     R1,R7,#+2
        MOV      R0,R5
          CFI FunCall get_match_length
        BL       get_match_length
        CMP      R0,R8
        ITT      CS 
        MOVCS    R8,R0
        MOVCS    R10,R7
??uip_ds6_select_src_7:
        ADD      R0,R7,#+32
        CMP      R0,R9
        STR      R0,[R6, #+20]
        BCC.N    ??uip_ds6_select_src_6
        B.N      ??uip_ds6_select_src_3
??uip_ds6_select_src_4:
        MOV      R0,R4
        ADD      R1,R10,#+2
        POP      {R4-R10,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI EndBlock cfiBlock22
//  531 
//  532 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function uip_ds6_set_addr_iid
        THUMB
//  533 void
//  534 uip_ds6_set_addr_iid(uip_ipaddr_t *ipaddr, uip_lladdr_t *lladdr)
//  535 {
uip_ds6_set_addr_iid:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  536   /* We consider only links with IEEE EUI-64 identifier or
//  537    * IEEE 48-bit MAC addresses */
//  538 #if (UIP_LLADDR_LEN == 8)
//  539   memcpy(ipaddr->u8 + 8, lladdr, UIP_LLADDR_LEN);
        MOVS     R2,#+8
        ADD      R0,R4,#+8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  540   ipaddr->u8[8] ^= 0x02;
        LDRB     R0,[R4, #+8]
        EOR      R0,R0,#0x2
        STRB     R0,[R4, #+8]
//  541 #elif (UIP_LLADDR_LEN == 6)
//  542   memcpy(ipaddr->u8 + 8, lladdr, 3);
//  543   ipaddr->u8[11] = 0xff;
//  544   ipaddr->u8[12] = 0xfe;
//  545   memcpy(ipaddr->u8 + 13, (uint8_t *)lladdr + 3, 3);
//  546   ipaddr->u8[8] ^= 0x02;
//  547 #else
//  548 #error uip-ds6.c cannot build interface address when UIP_LLADDR_LEN is not 6 or 8
//  549 #endif
//  550 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock23
//  551 
//  552 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function get_match_length
          CFI NoCalls
        THUMB
//  553 uint8_t
//  554 get_match_length(uip_ipaddr_t *src, uip_ipaddr_t *dst)
//  555 {
get_match_length:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R2,R0
//  556   uint8_t j, k, x_or;
//  557   uint8_t len = 0;
        MOVS     R0,#+0
//  558 
//  559   for(j = 0; j < 16; j++) {
        MOVS     R3,#+0
//  560     if(src->u8[j] == dst->u8[j]) {
??get_match_length_0:
        LDRB     R4,[R3, R2]
        LDRB     R5,[R3, R1]
        CMP      R4,R5
        BNE.N    ??get_match_length_1
//  561       len += 8;
        ADDS     R3,R3,#+1
        UXTB     R3,R3
        LDRB     R4,[R3, R2]
        LDRB     R5,[R3, R1]
        ADDS     R0,R0,#+8
        CMP      R4,R5
        BNE.N    ??get_match_length_1
        ADDS     R3,R3,#+1
        UXTB     R3,R3
        LDRB     R4,[R3, R2]
        LDRB     R5,[R3, R1]
        ADDS     R0,R0,#+8
        CMP      R4,R5
        BNE.N    ??get_match_length_1
        ADDS     R3,R3,#+1
        UXTB     R3,R3
        LDRB     R4,[R3, R2]
        LDRB     R5,[R3, R1]
        ADDS     R0,R0,#+8
        CMP      R4,R5
        BNE.N    ??get_match_length_1
//  562     } else {
        ADDS     R3,R3,#+1
        ADDS     R0,R0,#+8
        UXTB     R3,R3
        CMP      R3,#+16
        BLT.N    ??get_match_length_0
        B.N      ??get_match_length_2
//  563       x_or = src->u8[j] ^ dst->u8[j];
??get_match_length_1:
        LDRB     R2,[R3, R2]
        LDRB     R1,[R3, R1]
        EORS     R1,R1,R2
//  564       for(k = 0; k < 8; k++) {
        MOVS     R2,#+8
//  565         if((x_or & 0x80) == 0) {
??get_match_length_3:
        LSLS     R3,R1,#+24
        BMI.N    ??get_match_length_2
//  566           len++;
        ADDS     R0,R0,#+1
//  567           x_or <<= 1;
        LSLS     R1,R1,#+1
//  568         } else {
//  569           break;
//  570         }
//  571       }
        SUBS     R2,R2,#+1
        BNE.N    ??get_match_length_3
//  572       break;
//  573     }
//  574   }
//  575   return len;
??get_match_length_2:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        UXTB     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
//  576 }
//  577 
//  578 /*---------------------------------------------------------------------------*/
//  579 #if UIP_ND6_DEF_MAXDADNS > 0
//  580 void
//  581 uip_ds6_dad(uip_ds6_addr_t *addr)
//  582 {
//  583   /* send maxdadns NS for DAD  */
//  584   if(addr->dadnscount < uip_ds6_if.maxdadns) {
//  585     uip_nd6_ns_output(NULL, NULL, &addr->ipaddr);
//  586     addr->dadnscount++;
//  587     timer_set(&addr->dadtimer,
//  588               uip_ds6_if.retrans_timer / 1000 * CLOCK_SECOND);
//  589     return;
//  590   }
//  591   /*
//  592    * If we arrive here it means DAD succeeded, otherwise the dad process
//  593    * would have been interrupted in ds6_dad_ns/na_input
//  594    */
//  595   PRINTF("DAD succeeded, ipaddr:");
//  596   PRINT6ADDR(&addr->ipaddr);
//  597   PRINTF("\n");
//  598 
//  599   addr->state = ADDR_PREFERRED;
//  600   return;
//  601 }
//  602 
//  603 /*---------------------------------------------------------------------------*/
//  604 /*
//  605  * Calling code must handle when this returns 0 (e.g. link local
//  606  * address can not be used).
//  607  */
//  608 int
//  609 uip_ds6_dad_failed(uip_ds6_addr_t *addr)
//  610 {
//  611   if(uip_is_addr_link_local(&addr->ipaddr)) {
//  612     PRINTF("Contiki shutdown, DAD for link local address failed\n");
//  613     return 0;
//  614   }
//  615   uip_ds6_addr_rm(addr);
//  616   return 1;
//  617 }
//  618 #endif /*UIP_ND6_DEF_MAXDADNS > 0 */
//  619 
//  620 /*---------------------------------------------------------------------------*/
//  621 #if UIP_CONF_ROUTER
//  622 #if UIP_ND6_SEND_RA
//  623 void
//  624 uip_ds6_send_ra_sollicited(void)
//  625 {
//  626   /* We have a pb here: RA timer max possible value is 1800s,
//  627    * hence we have to use stimers. However, when receiving a RS, we
//  628    * should delay the reply by a random value between 0 and 500ms timers.
//  629    * stimers are in seconds, hence we cannot do this. Therefore we just send
//  630    * the RA (setting the timer to 0 below). We keep the code logic for
//  631    * the days contiki will support appropriate timers */
//  632   rand_time = 0;
//  633   PRINTF("Solicited RA, random time %u\n", rand_time);
//  634 
//  635   if(stimer_remaining(&uip_ds6_timer_ra) > rand_time) {
//  636     if(stimer_elapsed(&uip_ds6_timer_ra) < UIP_ND6_MIN_DELAY_BETWEEN_RAS) {
//  637       /* Ensure that the RAs are rate limited */
//  638 /*      stimer_set(&uip_ds6_timer_ra, rand_time +
//  639                  UIP_ND6_MIN_DELAY_BETWEEN_RAS -
//  640                  stimer_elapsed(&uip_ds6_timer_ra));
//  641   */ } else {
//  642       stimer_set(&uip_ds6_timer_ra, rand_time);
//  643     }
//  644   }
//  645 }
//  646 
//  647 /*---------------------------------------------------------------------------*/
//  648 void
//  649 uip_ds6_send_ra_periodic(void)
//  650 {
//  651   if(racount > 0) {
//  652     /* send previously scheduled RA */
//  653     uip_nd6_ra_output(NULL);
//  654     PRINTF("Sending periodic RA\n");
//  655   }
//  656 
//  657   rand_time = UIP_ND6_MIN_RA_INTERVAL + random_rand() %
//  658     (uint16_t) (UIP_ND6_MAX_RA_INTERVAL - UIP_ND6_MIN_RA_INTERVAL);
//  659   PRINTF("Random time 1 = %u\n", rand_time);
//  660 
//  661   if(racount < UIP_ND6_MAX_INITIAL_RAS) {
//  662     if(rand_time > UIP_ND6_MAX_INITIAL_RA_INTERVAL) {
//  663       rand_time = UIP_ND6_MAX_INITIAL_RA_INTERVAL;
//  664       PRINTF("Random time 2 = %u\n", rand_time);
//  665     }
//  666     racount++;
//  667   }
//  668   PRINTF("Random time 3 = %u\n", rand_time);
//  669   stimer_set(&uip_ds6_timer_ra, rand_time);
//  670 }
//  671 
//  672 #endif /* UIP_ND6_SEND_RA */
//  673 #else /* UIP_CONF_ROUTER */
//  674 /*---------------------------------------------------------------------------*/
//  675 void
//  676 uip_ds6_send_rs(void)
//  677 {
//  678   if((uip_ds6_defrt_choose() == NULL)
//  679      && (rscount < UIP_ND6_MAX_RTR_SOLICITATIONS)) {
//  680     PRINTF("Sending RS %u\n", rscount);
//  681     uip_nd6_rs_output();
//  682     rscount++;
//  683     etimer_set(&uip_ds6_timer_rs,
//  684                UIP_ND6_RTR_SOLICITATION_INTERVAL * CLOCK_SECOND);
//  685   } else {
//  686     PRINTF("Router found ? (boolean): %u\n",
//  687            (uip_ds6_defrt_choose() != NULL));
//  688     etimer_stop(&uip_ds6_timer_rs);
//  689   }
//  690   return;
//  691 }
//  692 
//  693 #endif /* UIP_CONF_ROUTER */
//  694 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function uip_ds6_compute_reachable_time
        THUMB
//  695 uint32_t
//  696 uip_ds6_compute_reachable_time(void)
//  697 {
uip_ds6_compute_reachable_time:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  698   return (uint32_t) (UIP_ND6_MIN_RANDOM_FACTOR
//  699                      (uip_ds6_if.base_reachable_time)) +
//  700     ((uint16_t) (random_rand() << 8) +
//  701      (uint16_t) random_rand()) %
//  702     (uint32_t) (UIP_ND6_MAX_RANDOM_FACTOR(uip_ds6_if.base_reachable_time) -
//  703                 UIP_ND6_MIN_RANDOM_FACTOR(uip_ds6_if.base_reachable_time));
          CFI FunCall random_rand
        BL       random_rand
        LSLS     R4,R0,#+8
        UXTH     R4,R4
          CFI FunCall random_rand
        BL       random_rand
        LDR.N    R1,??DataTable14_1
        LDR      R1,[R1, #+8]
        ADDS     R0,R0,R4
        ADD      R2,R0,R1, LSR #+1
        UDIV     R0,R0,R1
        MLS      R0,R1,R0,R2
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock25
//  704 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     loc_fipaddr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     0x927c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     uip_lladdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     uip_ds6_if+0x18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     locaaddr

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  705 /*---------------------------------------------------------------------------*/
//  706 
//  707 /** @}*/
// 
//   404 bytes in section .bss
// 1 944 bytes in section .text
// 
// 1 944 bytes of CODE memory
//   404 bytes of DATA memory
//
//Errors: none
//Warnings: 2
