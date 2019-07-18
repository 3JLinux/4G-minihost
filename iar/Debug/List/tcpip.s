///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:40
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\tcpip.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\tcpip.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\tcpip.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN etimer_expired
        EXTERN etimer_restart
        EXTERN etimer_set
        EXTERN ip64_uip_fallback_interface
        EXTERN process_alloc_event
        EXTERN process_current
        EXTERN process_post
        EXTERN process_post_synch
        EXTERN remove_ext_hdr
        EXTERN stimer_set
        EXTERN uip_aligned_buf
        EXTERN uip_conn
        EXTERN uip_connect
        EXTERN uip_conns
        EXTERN uip_ds6_addr_lookup
        EXTERN uip_ds6_defrt_choose
        EXTERN uip_ds6_if
        EXTERN uip_ds6_is_addr_onlink
        EXTERN uip_ds6_nbr_add
        EXTERN uip_ds6_nbr_get_ll
        EXTERN uip_ds6_nbr_lookup
        EXTERN uip_ds6_periodic
        EXTERN uip_ds6_route_lookup
        EXTERN uip_ds6_route_nexthop
        EXTERN uip_ds6_route_rm
        EXTERN uip_ds6_timer_periodic
        EXTERN uip_ext_len
        EXTERN uip_flags
        EXTERN uip_icmp6_conns
        EXTERN uip_init
        EXTERN uip_len
        EXTERN uip_listen
        EXTERN uip_nd6_ns_output
        EXTERN uip_packetqueue_alloc
        EXTERN uip_packetqueue_buf
        EXTERN uip_packetqueue_buflen
        EXTERN uip_packetqueue_free
        EXTERN uip_packetqueue_set_buflen
        EXTERN uip_process
        EXTERN uip_reass_over
        EXTERN uip_reass_timer
        EXTERN uip_udp_conn
        EXTERN uip_udp_conns
        EXTERN uip_udp_new
        EXTERN uip_unlisten
        EXTERN xprintf

        PUBLIC icmp6_new
        PUBLIC tcp_attach
        PUBLIC tcp_connect
        PUBLIC tcp_listen
        PUBLIC tcp_unlisten
        PUBLIC tcpip_event
        PUBLIC tcpip_icmp6_call
        PUBLIC tcpip_icmp6_event
        PUBLIC tcpip_input
        PUBLIC tcpip_ipv6_output
        PUBLIC tcpip_output
        PUBLIC tcpip_poll_tcp
        PUBLIC tcpip_poll_udp
        PUBLIC tcpip_process
        PUBLIC tcpip_set_outputfunc
        PUBLIC tcpip_uipcall
        PUBLIC udp_attach
        PUBLIC udp_broadcast_new
        PUBLIC udp_new
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\tcpip.c
//    1 /*
//    2  * Copyright (c) 2004, Swedish Institute of Computer Science.
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
//   34  *         Code for tunnelling uIP packets over the Rime mesh routing module
//   35  *
//   36  * \author  Adam Dunkels <adam@sics.se>\author
//   37  * \author  Mathilde Durvy <mdurvy@cisco.com> (IPv6 related code)
//   38  * \author  Julien Abeille <jabeille@cisco.com> (IPv6 related code)
//   39  */
//   40 
//   41 #include "contiki-net.h"
//   42 #include "net/ip/uip-split.h"
//   43 #include "net/ip/uip-packetqueue.h"
//   44 
//   45 #if NETSTACK_CONF_WITH_IPV6
//   46 #include "net/ipv6/uip-nd6.h"
//   47 #include "net/ipv6/uip-ds6.h"
//   48 #endif
//   49 
//   50 #include <string.h>
//   51 
//   52 #define DEBUG DEBUG_NONE
//   53 #include "net/ip/uip-debug.h"
//   54 //#include "sysprintf.h"
//   55 
//   56 
//   57 
//   58 #if UIP_LOGGING
//   59 #include <stdio.h>
//   60 void uip_log(char *msg);
//   61 #define UIP_LOG(m) uip_log(m)
//   62 #else
//   63 #define UIP_LOG(m)
//   64 #endif
//   65 
//   66 #define UIP_ICMP_BUF ((struct uip_icmp_hdr *)&uip_buf[UIP_LLIPH_LEN + uip_ext_len])
//   67 #define UIP_IP_BUF ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
//   68 #define UIP_TCP_BUF ((struct uip_tcpip_hdr *)&uip_buf[UIP_LLH_LEN])
//   69 
//   70 #ifdef UIP_FALLBACK_INTERFACE
//   71 extern struct uip_fallback_interface UIP_FALLBACK_INTERFACE;
//   72 #endif
//   73 
//   74 #if UIP_CONF_IPV6_RPL
//   75 #include "rpl/rpl.h"
//   76 #endif
//   77 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   78 process_event_t tcpip_event;
tcpip_event:
        DS8 1
//   79 #if UIP_CONF_ICMP6
//   80 process_event_t tcpip_icmp6_event;
tcpip_icmp6_event:
        DS8 1
//   81 #endif /* UIP_CONF_ICMP6 */
//   82 
//   83 /* Periodic check of active connections. */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   84 static struct etimer periodic;
//   85 
//   86 #if NETSTACK_CONF_WITH_IPV6 && UIP_CONF_IPV6_REASSEMBLY
//   87 /* Timer for reassembly. */
//   88 extern struct etimer uip_reass_timer;
//   89 #endif
//   90 
//   91 #if UIP_TCP
//   92 /**
//   93  * \internal Structure for holding a TCP port and a process ID.
//   94  */
//   95 struct listenport {
//   96   uint16_t port;
//   97   struct process *p;
//   98 };
//   99 
//  100 static struct internal_state {
//  101   struct listenport listenports[UIP_LISTENPORTS];
//  102   struct process *p;
//  103 } s;
s:
        DS8 68
        DS8 16
//  104 #endif
//  105 
//  106 enum {
//  107   TCP_POLL,
//  108   UDP_POLL,
//  109   PACKET_INPUT
//  110 };
//  111 
//  112 /* Called on IP packet output. */
//  113 #if NETSTACK_CONF_WITH_IPV6
//  114 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  115 static uint8_t (* outputfunc)(const uip_lladdr_t *a);
outputfunc:
        DS8 4
//  116 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function tcpip_output
        THUMB
//  117 uint8_t
//  118 tcpip_output(const uip_lladdr_t *a)
//  119 {
//  120   int ret;
//  121   if(outputfunc != NULL) {
tcpip_output:
        LDR.W    R1,??DataTable18
        LDR      R1,[R1, #+0]
        MOVS     R2,R1
        IT       NE 
//  122     ret = outputfunc(a);
//  123     return ret;
          CFI FunCall
        ANOTE "tailcall"
        BXNE     R1
//  124   }
//  125   UIP_LOG("tcpip_output: Use tcpip_set_outputfunc() to set an output function");
//  126   return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  127 }
//  128 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function tcpip_set_outputfunc
          CFI NoCalls
        THUMB
//  129 void
//  130 tcpip_set_outputfunc(uint8_t (*f)(const uip_lladdr_t *))
//  131 {
//  132   outputfunc = f;
tcpip_set_outputfunc:
        LDR.W    R1,??DataTable18
        STR      R0,[R1, #+0]
//  133 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  134 #else
//  135 
//  136 static uint8_t (* outputfunc)(void);
//  137 uint8_t
//  138 tcpip_output(void)
//  139 {
//  140   if(outputfunc != NULL) {
//  141     return outputfunc();
//  142   }
//  143   UIP_LOG("tcpip_output: Use tcpip_set_outputfunc() to set an output function");
//  144   return 0;
//  145 }
//  146 
//  147 void
//  148 tcpip_set_outputfunc(uint8_t (*f)(void))
//  149 {
//  150   outputfunc = f;
//  151 }
//  152 #endif
//  153 
//  154 #if UIP_CONF_IP_FORWARD
//  155 unsigned char tcpip_is_forwarding; /* Forwarding right now? */
//  156 #endif /* UIP_CONF_IP_FORWARD */
//  157 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  158 PROCESS(tcpip_process, "TCP/IP stack");
tcpip_process:
        DATA
        DC32 0H, ?_0, process_thread_tcpip_process
        DC8 0, 0, 0, 0
//  159 
//  160 /*---------------------------------------------------------------------------*/
//  161 static void
//  162 start_periodic_tcp_timer(void)
//  163 {
//  164   if(etimer_expired(&periodic)) {
//  165     etimer_restart(&periodic);
//  166   }
//  167 }
//  168 /*---------------------------------------------------------------------------*/
//  169 static void
//  170 check_for_tcp_syn(void)
//  171 {
//  172 #if UIP_TCP || UIP_CONF_IP_FORWARD
//  173   /* This is a hack that is needed to start the periodic TCP timer if
//  174      an incoming packet contains a SYN: since uIP does not inform the
//  175      application if a SYN arrives, we have no other way of starting
//  176      this timer.  This function is called for every incoming IP packet
//  177      to check for such SYNs. */
//  178 #define TCP_SYN 0x02
//  179   if(UIP_IP_BUF->proto == UIP_PROTO_TCP &&
//  180      (UIP_TCP_BUF->flags & TCP_SYN) == TCP_SYN) {
//  181     start_periodic_tcp_timer();
//  182   }
//  183 #endif /* UIP_TCP || UIP_CONF_IP_FORWARD */
//  184 }
//  185 /*---------------------------------------------------------------------------*/
//  186 static void
//  187 packet_input(void)
//  188 {
//  189 #if UIP_CONF_IP_FORWARD
//  190   if(uip_len > 0) {
//  191     tcpip_is_forwarding = 1;
//  192     if(uip_fw_forward() == UIP_FW_LOCAL) {
//  193       tcpip_is_forwarding = 0;
//  194       check_for_tcp_syn();
//  195       uip_input();
//  196       if(uip_len > 0) {
//  197 #if UIP_CONF_TCP_SPLIT
//  198         uip_split_output();
//  199 #else /* UIP_CONF_TCP_SPLIT */
//  200 #if NETSTACK_CONF_WITH_IPV6
//  201         tcpip_ipv6_output();
//  202 #else
//  203 	PRINTF("tcpip packet_input forward output len %d\n", uip_len);
//  204         tcpip_output();
//  205 #endif
//  206 #endif /* UIP_CONF_TCP_SPLIT */
//  207       }
//  208     }
//  209     tcpip_is_forwarding = 0;
//  210   }
//  211 #else /* UIP_CONF_IP_FORWARD */
//  212   if(uip_len > 0) {
//  213     check_for_tcp_syn();
//  214     uip_input();
//  215     if(uip_len > 0) {
//  216 #if UIP_CONF_TCP_SPLIT
//  217       uip_split_output();
//  218 #else /* UIP_CONF_TCP_SPLIT */
//  219 #if NETSTACK_CONF_WITH_IPV6
//  220       tcpip_ipv6_output();
//  221 #else
//  222       PRINTF("tcpip packet_input output len %d\n", uip_len);
//  223       tcpip_output();
//  224 #endif
//  225 #endif /* UIP_CONF_TCP_SPLIT */
//  226     }
//  227   }
//  228 #endif /* UIP_CONF_IP_FORWARD */
//  229 }
//  230 /*---------------------------------------------------------------------------*/
//  231 #if UIP_TCP
//  232 #if UIP_ACTIVE_OPEN

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function tcp_connect
        THUMB
//  233 struct uip_conn *
//  234 tcp_connect(const uip_ipaddr_t *ripaddr, uint16_t port, void *appstate)
//  235 {
tcp_connect:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R2
//  236   struct uip_conn *c;
//  237   
//  238   c = uip_connect(ripaddr, port);
          CFI FunCall uip_connect
        BL       uip_connect
        MOVS     R5,R0
//  239   if(c == NULL) {
        BNE.N    ??tcp_connect_0
//  240     return NULL;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}
//  241   }
//  242 
//  243   c->appstate.p = PROCESS_CURRENT();
??tcp_connect_0:
        LDR.W    R0,??DataTable18_1
        LDR      R0,[R0, #+0]
        STR      R0,[R5, #+40]
//  244   c->appstate.state = appstate;
        STR      R4,[R5, #+44]
//  245   
//  246   tcpip_poll_tcp(c);
        MOV      R2,R5
        MOVS     R1,#+0
        LDR.W    R0,??DataTable18_2
          CFI FunCall process_post
        BL       process_post
//  247   
//  248   return c;
        MOV      R0,R5
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//  249 }
//  250 #endif /* UIP_ACTIVE_OPEN */
//  251 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function tcp_unlisten
        THUMB
//  252 void
//  253 tcp_unlisten(uint16_t port)
//  254 {
tcp_unlisten:
        PUSH     {R3,R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+8
//  255   static unsigned char i;
//  256   struct listenport *l;
//  257 
//  258   l = s.listenports;
        LDR.W    R2,??DataTable18_3
//  259   for(i = 0; i < UIP_LISTENPORTS; ++i) {
//  260     if(l->port == port &&
//  261        l->p == PROCESS_CURRENT()) {
        LDRH     R3,[R2, #+0]
        CMP      R3,R0
        ITTTT    EQ 
        LDREQ    R3,[R2, #+4]
        LDREQ.W  R4,??DataTable18_1
        LDREQ    R4,[R4, #+0]
        CMPEQ    R3,R4
        MOV      R1,R2
        BNE.N    ??tcp_unlisten_0
//  262       l->port = 0;
??tcp_unlisten_1:
        MOVS     R2,#+0
        STRH     R2,[R1, #+0]
//  263       uip_unlisten(port);
        POP      {R1,R4}
          CFI R4 SameValue
          CFI CFA R13+0
          CFI FunCall uip_unlisten
        B.W      uip_unlisten
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+8
//  264       break;
//  265     }
//  266     ++l;
??tcp_unlisten_0:
        LDRH     R3,[R2, #+8]
        CMP      R3,R0
        ITTTT    EQ 
        LDREQ    R3,[R2, #+12]
        LDREQ.W  R4,??DataTable18_1
        LDREQ    R4,[R4, #+0]
        CMPEQ    R3,R4
        ADD      R1,R2,#+8
        BEQ.N    ??tcp_unlisten_1
        LDRH     R3,[R2, #+16]
        CMP      R3,R0
        ITTTT    EQ 
        LDREQ    R3,[R2, #+20]
        LDREQ.W  R4,??DataTable18_1
        LDREQ    R4,[R4, #+0]
        CMPEQ    R3,R4
        ADD      R1,R2,#+16
        BEQ.N    ??tcp_unlisten_1
        LDRH     R3,[R2, #+24]
        CMP      R3,R0
        ITTTT    EQ 
        LDREQ    R3,[R2, #+28]
        LDREQ.W  R4,??DataTable18_1
        LDREQ    R4,[R4, #+0]
        CMPEQ    R3,R4
        ADD      R1,R2,#+24
        BEQ.N    ??tcp_unlisten_1
        LDRH     R3,[R2, #+32]
        CMP      R3,R0
        ITTTT    EQ 
        LDREQ    R3,[R2, #+36]
        LDREQ.W  R4,??DataTable18_1
        LDREQ    R4,[R4, #+0]
        CMPEQ    R3,R4
        ADD      R1,R2,#+32
        BEQ.N    ??tcp_unlisten_1
        LDRH     R3,[R2, #+40]
        CMP      R3,R0
        ITTTT    EQ 
        LDREQ    R3,[R2, #+44]
        LDREQ.W  R4,??DataTable18_1
        LDREQ    R4,[R4, #+0]
        CMPEQ    R3,R4
        ADD      R1,R2,#+40
        BEQ.N    ??tcp_unlisten_1
        LDRH     R3,[R2, #+48]
        CMP      R3,R0
        ITTTT    EQ 
        LDREQ    R3,[R2, #+52]
        LDREQ.W  R4,??DataTable18_1
        LDREQ    R4,[R4, #+0]
        CMPEQ    R3,R4
        ADD      R1,R2,#+48
        BEQ.N    ??tcp_unlisten_1
        LDRH     R3,[R2, #+56]
        ADD      R1,R2,#+56
        CMP      R3,R0
        ITTTT    EQ 
        LDREQ    R2,[R2, #+60]
        LDREQ.W  R3,??DataTable18_1
        LDREQ    R3,[R3, #+0]
        CMPEQ    R2,R3
        BEQ.N    ??tcp_unlisten_1
//  267   }
//  268 }
        POP      {R0,R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1
//  269 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function tcp_listen
        THUMB
//  270 void
//  271 tcp_listen(uint16_t port)
//  272 {
//  273   static unsigned char i;
//  274   struct listenport *l;
//  275 
//  276   l = s.listenports;
tcp_listen:
        LDR.W    R1,??DataTable18_3
//  277   for(i = 0; i < UIP_LISTENPORTS; ++i) {
//  278     if(l->port == 0) {
        LDRH     R3,[R1, #+0]
        MOV      R2,R1
        CBNZ.N   R3,??tcp_listen_0
//  279       l->port = port;
//  280       l->p = PROCESS_CURRENT();
??tcp_listen_1:
        LDR.W    R1,??DataTable18_1
        STRH     R0,[R2, #+0]
        LDR      R1,[R1, #+0]
        STR      R1,[R2, #+4]
//  281       uip_listen(port);
          CFI FunCall uip_listen
        B.W      uip_listen
//  282       break;
//  283     }
//  284     ++l;
??tcp_listen_0:
        LDRH     R3,[R1, #+8]
        ADD      R2,R1,#+8
        CMP      R3,#+0
        ITTT     NE 
        ADDNE    R2,R1,#+16
        LDRHNE   R3,[R1, #+16]
        CMPNE    R3,#+0
        BEQ.N    ??tcp_listen_1
        LDRH     R3,[R1, #+24]
        ADD      R2,R1,#+24
        CMP      R3,#+0
        ITTT     NE 
        ADDNE    R2,R1,#+32
        LDRHNE   R3,[R1, #+32]
        CMPNE    R3,#+0
        BEQ.N    ??tcp_listen_1
        LDRH     R3,[R1, #+40]
        ADD      R2,R1,#+40
        CMP      R3,#+0
        ITTT     NE 
        ADDNE    R2,R1,#+48
        LDRHNE   R3,[R1, #+48]
        CMPNE    R3,#+0
        ITTT     NE 
        ADDNE    R2,R1,#+56
        LDRHNE   R1,[R1, #+56]
        CMPNE    R1,#+0
        BEQ.N    ??tcp_listen_1
//  285   }
//  286 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1
//  287 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function tcp_attach
          CFI NoCalls
        THUMB
//  288 void
//  289 tcp_attach(struct uip_conn *conn,
//  290 	   void *appstate)
//  291 {
//  292   uip_tcp_appstate_t *s;
//  293 
//  294   s = &conn->appstate;
//  295   s->p = PROCESS_CURRENT();
tcp_attach:
        LDR.W    R2,??DataTable18_1
        LDR      R2,[R2, #+0]
        STR      R2,[R0, #+40]!
//  296   s->state = appstate;
        STR      R1,[R0, #+4]
//  297 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  298 
//  299 #endif /* UIP_TCP */
//  300 /*---------------------------------------------------------------------------*/
//  301 #if UIP_UDP

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function udp_attach
          CFI NoCalls
        THUMB
//  302 void
//  303 udp_attach(struct uip_udp_conn *conn,
//  304 	   void *appstate)
//  305 {
//  306   uip_udp_appstate_t *s;
//  307 
//  308   s = &conn->appstate;
//  309   s->p = PROCESS_CURRENT();
udp_attach:
        LDR.W    R2,??DataTable18_1
        LDR      R2,[R2, #+0]
        STR      R2,[R0, #+24]!
//  310   s->state = appstate;
        STR      R1,[R0, #+4]
//  311 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  312 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function udp_new
        THUMB
//  313 struct uip_udp_conn *
//  314 udp_new(const uip_ipaddr_t *ripaddr, uint16_t port, void *appstate)
//  315 {
udp_new:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R2
//  316   struct uip_udp_conn *c;
//  317   uip_udp_appstate_t *s;
//  318   
//  319   c = uip_udp_new(ripaddr, port);
          CFI FunCall uip_udp_new
        BL       uip_udp_new
//  320   if(c == NULL) {
        CBZ.N    R0,??udp_new_0
//  321     return NULL;
//  322   }
//  323 
//  324   s = &c->appstate;
//  325   s->p = PROCESS_CURRENT();
        LDR.W    R2,??DataTable18_1
        LDR      R2,[R2, #+0]
        ADD      R1,R0,#+24
        STR      R2,[R1, #+0]
//  326   s->state = appstate;
        STR      R4,[R1, #+4]
//  327 
//  328   return c;
??udp_new_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7
//  329 }
//  330 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function udp_broadcast_new
        THUMB
//  331 struct uip_udp_conn *
//  332 udp_broadcast_new(uint16_t port, void *appstate)
//  333 {
udp_broadcast_new:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+20
          CFI CFA R13+32
        MOV      R4,R0
//  334   uip_ipaddr_t addr;
//  335   struct uip_udp_conn *conn;
//  336 
//  337 #if NETSTACK_CONF_WITH_IPV6
//  338   uip_create_linklocal_allnodes_mcast(&addr);
        MOVW     R0,#+767
        STRH     R0,[SP, #+0]
        MOV      R5,R1
        MOVS     R0,#+0
        STRH     R0,[SP, #+2]
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+8]
        STRH     R0,[SP, #+12]
//  339 #else
//  340   uip_ipaddr(&addr, 255,255,255,255);
//  341 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  342   conn = udp_new(&addr, port, appstate);
        MOV      R1,R4
        MOV      R0,#+256
        STRH     R0,[SP, #+14]
        ADD      R0,SP,#+0
          CFI FunCall uip_udp_new
        BL       uip_udp_new
        CBZ.N    R0,??udp_broadcast_new_0
        LDR.W    R2,??DataTable18_1
        LDR      R2,[R2, #+0]
        ADD      R1,R0,#+24
        STR      R2,[R1, #+0]
        STR      R5,[R1, #+4]
//  343   if(conn != NULL) {
//  344     udp_bind(conn, port);
        STRH     R4,[R0, #+16]
//  345   }
//  346   return conn;
??udp_broadcast_new_0:
        ADD      SP,SP,#+20
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock8
//  347 }
//  348 #endif /* UIP_UDP */
//  349 /*---------------------------------------------------------------------------*/
//  350 #if UIP_CONF_ICMP6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function icmp6_new
          CFI NoCalls
        THUMB
//  351 uint8_t
//  352 icmp6_new(void *appstate) {
//  353   if(uip_icmp6_conns.appstate.p == PROCESS_NONE) {
icmp6_new:
        LDR.W    R1,??DataTable18_4
        LDR      R2,[R1, #+0]
        CBNZ.N   R2,??icmp6_new_0
//  354     uip_icmp6_conns.appstate.p = PROCESS_CURRENT();
        LDR.W    R2,??DataTable18_1
        LDR      R2,[R2, #+0]
//  355     uip_icmp6_conns.appstate.state = appstate;
        STR      R0,[R1, #+4]
        STR      R2,[R1, #+0]
//  356     return 0;
        MOVS     R0,#+0
        BX       LR
//  357   }
//  358   return 1;
??icmp6_new_0:
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  359 }
//  360 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function tcpip_icmp6_call
        THUMB
//  361 void
//  362 tcpip_icmp6_call(uint8_t type)
//  363 {
tcpip_icmp6_call:
        PUSH     {R0,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  364   if(uip_icmp6_conns.appstate.p != PROCESS_NONE) {
        LDR.W    R0,??DataTable18_4
        LDR      R0,[R0, #+0]
        CBZ.N    R0,??tcpip_icmp6_call_0
//  365     /* XXX: This is a hack that needs to be updated. Passing a pointer (&type)
//  366        like this only works with process_post_synch. */
//  367     process_post_synch(uip_icmp6_conns.appstate.p, tcpip_icmp6_event, &type);
        LDR.W    R1,??DataTable18_5
        LDRB     R1,[R1, #+1]
        ADD      R2,SP,#+0
          CFI FunCall process_post_synch
        BL       process_post_synch
//  368   }
//  369   return;
??tcpip_icmp6_call_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock10
//  370 }
//  371 #endif /* UIP_CONF_ICMP6 */
//  372 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function eventhandler
        THUMB
//  373 static void
//  374 eventhandler(process_event_t ev, process_data_t data)
//  375 {
eventhandler:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  376 #if UIP_TCP
//  377   static unsigned char i;
//  378   register struct listenport *l;
//  379 #endif /*UIP_TCP*/
//  380   struct process *p;
//  381 
//  382   switch(ev) {
        CMP      R0,#+0
        MOV      R4,R1
        BEQ.W    ??eventhandler_0
        CMP      R0,#+1
        BEQ.W    ??eventhandler_1
        CMP      R0,#+2
        BEQ.W    ??eventhandler_2
        CMP      R0,#+135
        BEQ.N    ??eventhandler_3
        CMP      R0,#+136
        BEQ.N    ??eventhandler_4
//  383     case PROCESS_EVENT_EXITED:
//  384       /* This is the event we get if a process has exited. We go through
//  385          the TCP/IP tables to see if this process had any open
//  386          connections or listening TCP ports. If so, we'll close those
//  387          connections. */
//  388 
//  389       p = (struct process *)data;
//  390 #if UIP_TCP
//  391       l = s.listenports;
//  392       for(i = 0; i < UIP_LISTENPORTS; ++i) {
//  393         if(l->p == p) {
//  394           uip_unlisten(l->port);
//  395           l->port = 0;
//  396           l->p = PROCESS_NONE;
//  397         }
//  398         ++l;
//  399       }
//  400 	 
//  401       {
//  402         struct uip_conn *cptr;
//  403 	    
//  404         for(cptr = &uip_conns[0]; cptr < &uip_conns[UIP_CONNS]; ++cptr) {
//  405           if(cptr->appstate.p == p) {
//  406             cptr->appstate.p = PROCESS_NONE;
//  407             cptr->tcpstateflags = UIP_CLOSED;
//  408           }
//  409         }
//  410       }
//  411 #endif /* UIP_TCP */
//  412 #if UIP_UDP
//  413       {
//  414         struct uip_udp_conn *cptr;
//  415 
//  416         for(cptr = &uip_udp_conns[0];
//  417             cptr < &uip_udp_conns[UIP_UDP_CONNS]; ++cptr) {
//  418           if(cptr->appstate.p == p) {
//  419             cptr->lport = 0;
//  420           }
//  421         }
//  422       }
//  423 #endif /* UIP_UDP */
//  424       break;
//  425 
//  426     case PROCESS_EVENT_TIMER:
//  427       /* We get this event if one of our timers have expired. */
//  428       {
//  429         /* Check the clock so see if we should call the periodic uIP
//  430            processing. */
//  431         if(data == &periodic &&
//  432            etimer_expired(&periodic)) {
//  433 #if UIP_TCP
//  434           for(i = 0; i < UIP_CONNS; ++i) {
//  435             if(uip_conn_active(i)) {
//  436               /* Only restart the timer if there are active
//  437                  connections. */
//  438               etimer_restart(&periodic);
//  439               uip_periodic(i);
//  440 #if NETSTACK_CONF_WITH_IPV6
//  441               tcpip_ipv6_output();
//  442 #else
//  443               if(uip_len > 0) {
//  444 		PRINTF("tcpip_output from periodic len %d\n", uip_len);
//  445                 tcpip_output();
//  446 		PRINTF("tcpip_output after periodic len %d\n", uip_len);
//  447               }
//  448 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  449             }
//  450           }
//  451 #endif /* UIP_TCP */
//  452 #if UIP_CONF_IP_FORWARD
//  453           uip_fw_periodic();
//  454 #endif /* UIP_CONF_IP_FORWARD */
//  455         }
//  456         
//  457 #if NETSTACK_CONF_WITH_IPV6
//  458 #if UIP_CONF_IPV6_REASSEMBLY
//  459         /*
//  460          * check the timer for reassembly
//  461          */
//  462         if(data == &uip_reass_timer &&
//  463            etimer_expired(&uip_reass_timer)) {
//  464           uip_reass_over();
//  465           tcpip_ipv6_output();
//  466         }
//  467 #endif /* UIP_CONF_IPV6_REASSEMBLY */
//  468         /*
//  469          * check the different timers for neighbor discovery and
//  470          * stateless autoconfiguration
//  471          */
//  472         /*if(data == &uip_ds6_timer_periodic &&
//  473            etimer_expired(&uip_ds6_timer_periodic)) {
//  474           uip_ds6_periodic();
//  475           tcpip_ipv6_output();
//  476         }*/
//  477 #if !UIP_CONF_ROUTER
//  478         if(data == &uip_ds6_timer_rs &&
//  479            etimer_expired(&uip_ds6_timer_rs)) {
//  480           uip_ds6_send_rs();
//  481           tcpip_ipv6_output();
//  482         }
//  483 #endif /* !UIP_CONF_ROUTER */
//  484         if(data == &uip_ds6_timer_periodic &&
//  485            etimer_expired(&uip_ds6_timer_periodic)) {
//  486           uip_ds6_periodic();
//  487           tcpip_ipv6_output();
//  488         }
//  489 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  490       }
//  491       break;
//  492 	 
//  493 #if UIP_TCP
//  494     case TCP_POLL:
//  495       if(data != NULL) {
//  496         uip_poll_conn(data);
//  497 #if NETSTACK_CONF_WITH_IPV6
//  498         tcpip_ipv6_output();
//  499 #else /* NETSTACK_CONF_WITH_IPV6 */
//  500         if(uip_len > 0) {
//  501 	  PRINTF("tcpip_output from tcp poll len %d\n", uip_len);
//  502           tcpip_output();
//  503         }
//  504 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  505         /* Start the periodic polling, if it isn't already active. */
//  506         start_periodic_tcp_timer();
//  507       }
//  508       break;
//  509 #endif /* UIP_TCP */
//  510 #if UIP_UDP
//  511     case UDP_POLL:
//  512       if(data != NULL) {
//  513         uip_udp_periodic_conn(data);
//  514 #if NETSTACK_CONF_WITH_IPV6
//  515         tcpip_ipv6_output();
//  516 #else
//  517         if(uip_len > 0) {
//  518           tcpip_output();
//  519         }
//  520 #endif /* UIP_UDP */
//  521       }
//  522       break;
//  523 #endif /* UIP_UDP */
//  524 
//  525     case PACKET_INPUT:
//  526       packet_input();
//  527       break;
//  528   };
//  529 }
        POP      {R4-R8,PC}
??eventhandler_3:
        LDR.W    R5,??DataTable18_6
        LDR.W    R6,??DataTable18_3
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
??eventhandler_5:
        LDR      R0,[R6, #+4]
        CMP      R0,R4
        BNE.N    ??eventhandler_6
        LDRH     R0,[R6, #+0]
          CFI FunCall uip_unlisten
        BL       uip_unlisten
        MOVS     R0,#+0
        STRH     R0,[R6, #+0]
        STR      R0,[R6, #+4]
??eventhandler_6:
        ADDS     R6,R6,#+8
        LDRB     R0,[R5, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+0]
        UXTB     R0,R0
        CMP      R0,#+8
        BLT.N    ??eventhandler_5
        LDR.W    R6,??DataTable18_7
        ADD      R0,R6,#+384
        CMP      R6,R0
        BCS.N    ??eventhandler_7
??eventhandler_8:
        LDR      R1,[R6, #+40]
        CMP      R1,R4
        BNE.N    ??eventhandler_9
        MOVS     R1,#+0
        STR      R1,[R6, #+40]
        STRB     R1,[R6, #+37]
??eventhandler_9:
        ADDS     R6,R6,#+48
        CMP      R6,R0
        BCC.N    ??eventhandler_8
??eventhandler_7:
        LDR.W    R0,??DataTable18_8
        ADD      R1,R0,#+320
        CMP      R0,R1
        BCS.W    ??eventhandler_10
??eventhandler_11:
        LDR      R2,[R0, #+24]
        CMP      R2,R4
        ITT      EQ 
        MOVEQ    R2,#+0
        STRHEQ   R2,[R0, #+16]
        ADDS     R0,R0,#+32
        CMP      R0,R1
        BCC.N    ??eventhandler_11
        POP      {R4-R8,PC}
??eventhandler_4:
        LDR.W    R8,??DataTable18_3
        ADD      R0,R8,#+68
        CMP      R4,R0
        BNE.N    ??eventhandler_12
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??eventhandler_12
        LDR.W    R5,??DataTable18_6
        LDR.W    R6,??DataTable18_7
        LDR.W    R7,??DataTable18_9
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
??eventhandler_13:
        LDRB     R0,[R5, #+0]
        ADD      R1,R0,R0, LSL #+1
        ADD      R0,R6,R1, LSL #+4
        LDRB     R0,[R0, #+37]
        CBZ.N    R0,??eventhandler_14
        ADD      R0,R8,#+68
          CFI FunCall etimer_restart
        BL       etimer_restart
        LDRB     R0,[R5, #+0]
        ADD      R1,R0,R0, LSL #+1
        ADD      R0,R6,R1, LSL #+4
        STR      R0,[R7, #+0]
        MOVS     R0,#+2
          CFI FunCall uip_process
        BL       uip_process
          CFI FunCall tcpip_ipv6_output
        BL       tcpip_ipv6_output
??eventhandler_14:
        LDRB     R0,[R5, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+0]
        UXTB     R0,R0
        CMP      R0,#+8
        BLT.N    ??eventhandler_13
??eventhandler_12:
        LDR.W    R0,??DataTable18_10
        CMP      R4,R0
        BNE.N    ??eventhandler_15
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??eventhandler_15
          CFI FunCall uip_reass_over
        BL       uip_reass_over
          CFI FunCall tcpip_ipv6_output
        BL       tcpip_ipv6_output
??eventhandler_15:
        LDR.W    R0,??DataTable18_11
        CMP      R4,R0
        BNE.N    ??eventhandler_10
          CFI FunCall etimer_expired
        BL       etimer_expired
        CMP      R0,#+0
        BEQ.N    ??eventhandler_10
          CFI FunCall uip_ds6_periodic
        BL       uip_ds6_periodic
        B.N      ??eventhandler_16
??eventhandler_0:
        CMP      R4,#+0
        BEQ.N    ??eventhandler_10
        LDR.W    R0,??DataTable18_9
        STR      R4,[R0, #+0]
        MOVS     R0,#+3
          CFI FunCall uip_process
        BL       uip_process
          CFI FunCall tcpip_ipv6_output
        BL       tcpip_ipv6_output
        LDR.W    R4,??DataTable18_3
        ADD      R0,R4,#+68
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??eventhandler_10
        ADD      R0,R4,#+68
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall etimer_restart
        B.W      etimer_restart
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
??eventhandler_1:
        CBZ.N    R4,??eventhandler_10
        LDR.W    R0,??DataTable18_12
        STR      R4,[R0, #+0]
        MOVS     R0,#+5
          CFI FunCall uip_process
        BL       uip_process
        B.N      ??eventhandler_16
??eventhandler_2:
        LDR.W    R4,??DataTable18_13
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??eventhandler_10
        LDR.W    R0,??DataTable18_14
        LDRB     R1,[R0, #+6]
        CMP      R1,#+6
        BNE.N    ??eventhandler_17
        LDRB     R0,[R0, #+53]
        LSLS     R0,R0,#+30
        BPL.N    ??eventhandler_17
        LDR.W    R5,??DataTable18_3
        ADD      R0,R5,#+68
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??eventhandler_17
        ADD      R0,R5,#+68
          CFI FunCall etimer_restart
        BL       etimer_restart
??eventhandler_17:
        MOVS     R0,#+1
          CFI FunCall uip_process
        BL       uip_process
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??eventhandler_10
??eventhandler_16:
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall tcpip_ipv6_output
        B.N      tcpip_ipv6_output
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
??eventhandler_10:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock11

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??i_2:
        DS8 1
//  530 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function tcpip_input
        THUMB
//  531 void
//  532 tcpip_input(void)
//  533 {
tcpip_input:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  534   process_post_synch(&tcpip_process, PACKET_INPUT, NULL);
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable18_2
          CFI FunCall process_post_synch
        BL       process_post_synch
//  535   uip_len = 0;
        LDR.W    R1,??DataTable18_13
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
//  536 #if NETSTACK_CONF_WITH_IPV6
//  537   uip_ext_len = 0;
        LDR.W    R1,??DataTable18_15
        STRB     R0,[R1, #+0]
//  538 #endif /*NETSTACK_CONF_WITH_IPV6*/
//  539 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock12
//  540 /*---------------------------------------------------------------------------*/
//  541 #if NETSTACK_CONF_WITH_IPV6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function tcpip_ipv6_output
        THUMB
//  542 void
//  543 tcpip_ipv6_output(void)
//  544 {
tcpip_ipv6_output:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  545   uip_ds6_nbr_t *nbr = NULL;
//  546   uip_ipaddr_t *nexthop;
//  547 
//  548   if(uip_len == 0) {
        LDR.N    R4,??DataTable18_13
        LDRH     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.W    ??tcpip_ipv6_output_0
//  549     return;
//  550   }
//  551 
//  552   if(uip_len > UIP_LINK_MTU) {
        CMP      R0,#+1280
        BGT.W    ??tcpip_ipv6_output_1
//  553     UIP_LOG("tcpip_ipv6_output: Packet to big");
//  554     uip_len = 0;
//  555     return;
//  556   }
//  557 
//  558   if(uip_is_addr_unspecified(&UIP_IP_BUF->destipaddr)){
        LDR.N    R5,??DataTable18_14
        LDRH     R0,[R5, #+24]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+26]
        CMPEQ    R0,#+0
        BNE.N    ??tcpip_ipv6_output_2
        LDRH     R0,[R5, #+28]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+30]
        CMPEQ    R0,#+0
        BNE.N    ??tcpip_ipv6_output_2
        LDRH     R0,[R5, #+32]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+34]
        CMPEQ    R0,#+0
        BNE.N    ??tcpip_ipv6_output_2
        LDRH     R0,[R5, #+36]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+38]
        CMPEQ    R0,#+0
        BEQ.W    ??tcpip_ipv6_output_1
//  559     UIP_LOG("tcpip_ipv6_output: Destination address unspecified");
//  560     uip_len = 0;
//  561     return;
//  562   }
//  563 
//  564   if(!uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
??tcpip_ipv6_output_2:
        LDRB     R0,[R5, #+24]
        CMP      R0,#+255
        BEQ.W    ??tcpip_ipv6_output_3
//  565     /* Next hop determination */
//  566     nbr = NULL;
//  567 
//  568     /* We first check if the destination address is on our immediate
//  569        link. If so, we simply use the destination address as our
//  570        nexthop address. */
//  571     if(uip_ds6_is_addr_onlink(&UIP_IP_BUF->destipaddr)){
        ADD      R0,R5,#+24
          CFI FunCall uip_ds6_is_addr_onlink
        BL       uip_ds6_is_addr_onlink
        CBZ.N    R0,??tcpip_ipv6_output_4
//  572       nexthop = &UIP_IP_BUF->destipaddr;
        ADD      R7,R5,#+24
//  573     } else {
//  574       uip_ds6_route_t *route;
//  575       /* Check if we have a route to the destination address. */
//  576       route = uip_ds6_route_lookup(&UIP_IP_BUF->destipaddr);
//  577 
//  578       /* No route was found - we send to the default route instead. */
//  579       if(route == NULL) {
//  580         PRINTF("tcpip_ipv6_output: no route found, using default route\n");
//  581         nexthop = uip_ds6_defrt_choose();
//  582         if(nexthop == NULL) {
//  583 #ifdef UIP_FALLBACK_INTERFACE
//  584 	  PRINTF("FALLBACK: removing ext hdrs & setting proto %d %d\n", 
//  585 		 uip_ext_len, *((uint8_t *)UIP_IP_BUF + 40));
//  586 	  if(uip_ext_len > 0) {
//  587 	    extern void remove_ext_hdr(void);
//  588 	    uint8_t proto = *((uint8_t *)UIP_IP_BUF + 40);
//  589 	    remove_ext_hdr();
//  590 	    /* This should be copied from the ext header... */
//  591 	    UIP_IP_BUF->proto = proto;
//  592 	  }
//  593 	  UIP_FALLBACK_INTERFACE.output();
//  594 #else
//  595           PRINTF("tcpip_ipv6_output: Destination off-link but no route\n");
//  596 #endif /* !UIP_FALLBACK_INTERFACE */
//  597           uip_len = 0;
//  598           return;
//  599         }
//  600 
//  601       } else {
//  602         /* A route was found, so we look up the nexthop neighbor for
//  603            the route. */
//  604         nexthop = uip_ds6_route_nexthop(route);
//  605 
//  606         /* If the nexthop is dead, for example because the neighbor
//  607            never responded to link-layer acks, we drop its route. */
//  608         if(nexthop == NULL) {
//  609 #if UIP_CONF_IPV6_RPL
//  610           /* If we are running RPL, and if we are the root of the
//  611              network, we'll trigger a global repair berfore we remove
//  612              the route. */
//  613           rpl_dag_t *dag;
//  614           rpl_instance_t *instance;
//  615 
//  616           dag = (rpl_dag_t *)route->state.dag;
//  617           if(dag != NULL) {
//  618             instance = dag->instance;
//  619 
//  620             rpl_repair_root(instance->instance_id);
//  621           }
//  622 #endif /* UIP_CONF_IPV6_RPL */
//  623           uip_ds6_route_rm(route);
//  624 
//  625           /* We don't have a nexthop to send the packet to, so we drop
//  626              it. */
//  627           return;
//  628         }
//  629       }
//  630 #if TCPIP_CONF_ANNOTATE_TRANSMISSIONS
//  631       if(nexthop != NULL) {
//  632         static uint8_t annotate_last;
//  633         static uint8_t annotate_has_last = 0;
//  634 
//  635         if(annotate_has_last) {
//  636           //printf("#L %u 0; red\n", annotate_last);
//  637           PRINTF("#L %u 0; red\n", annotate_last);
//  638         }
//  639         //printf("#L %u 1; red\n", nexthop->u8[sizeof(uip_ipaddr_t) - 1]);
//  640         PRINTF("#L %u 1; red\n", nexthop->u8[sizeof(uip_ipaddr_t) - 1]);
//  641         annotate_last = nexthop->u8[sizeof(uip_ipaddr_t) - 1];
//  642         annotate_has_last = 1;
//  643       }
//  644 #endif /* TCPIP_CONF_ANNOTATE_TRANSMISSIONS */
//  645     }
//  646 
//  647     /* End of next hop determination */
//  648 
//  649 #if UIP_CONF_IPV6_RPL
//  650     if(rpl_update_header_final(nexthop)) {
//  651       uip_len = 0;
//  652       return;
//  653     }
//  654 #endif /* UIP_CONF_IPV6_RPL */
//  655     nbr = uip_ds6_nbr_lookup(nexthop);
??tcpip_ipv6_output_5:
        MOV      R0,R7
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
        MOVS     R6,R0
//  656     if(nbr == NULL) {
        BNE.N    ??tcpip_ipv6_output_6
//  657 #if UIP_ND6_SEND_NA
//  658       if((nbr = uip_ds6_nbr_add(nexthop, NULL, 0, NBR_INCOMPLETE)) == NULL) {
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOV      R1,R2
        MOV      R0,R7
          CFI FunCall uip_ds6_nbr_add
        BL       uip_ds6_nbr_add
        MOVS     R6,R0
        BEQ.W    ??tcpip_ipv6_output_1
//  659         uip_len = 0;
//  660         return;
//  661       } else {
//  662 #if UIP_CONF_IPV6_QUEUE_PKT
//  663         /* Copy outgoing pkt in the queuing buffer for later transmit. */
//  664         if(uip_packetqueue_alloc(&nbr->packethandle, UIP_DS6_NBR_PACKET_LIFETIME) != NULL) {
        MOV      R1,#+4000
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_alloc
        BL       uip_packetqueue_alloc
        CBZ.N    R0,??tcpip_ipv6_output_7
//  665           memcpy(uip_packetqueue_buf(&nbr->packethandle), UIP_IP_BUF, uip_len);
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_buf
        BL       uip_packetqueue_buf
        LDRH     R2,[R4, #+0]
        MOV      R1,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  666           uip_packetqueue_set_buflen(&nbr->packethandle, uip_len);
        LDRH     R1,[R4, #+0]
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_set_buflen
        BL       uip_packetqueue_set_buflen
//  667         }
//  668 #endif
//  669       /* RFC4861, 7.2.2:
//  670        * "If the source address of the packet prompting the solicitation is the
//  671        * same as one of the addresses assigned to the outgoing interface, that
//  672        * address SHOULD be placed in the IP Source Address of the outgoing
//  673        * solicitation.  Otherwise, any one of the addresses assigned to the
//  674        * interface should be used."*/
//  675        if(uip_ds6_is_my_addr(&UIP_IP_BUF->srcipaddr)){
??tcpip_ipv6_output_7:
        ADD      R0,R5,#+8
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
        CMP      R0,#+0
        MOV      R2,R6
        ITTE     NE 
        MOVNE    R1,#+0
        ADDNE    R0,R5,#+8
        MOVEQ    R1,#+0
//  676           uip_nd6_ns_output(&UIP_IP_BUF->srcipaddr, NULL, &nbr->ipaddr);
//  677         } else {
//  678           uip_nd6_ns_output(NULL, NULL, &nbr->ipaddr);
        B.N      ??tcpip_ipv6_output_8
//  679         }
??tcpip_ipv6_output_4:
        ADD      R0,R5,#+24
          CFI FunCall uip_ds6_route_lookup
        BL       uip_ds6_route_lookup
        MOVS     R6,R0
        BNE.N    ??tcpip_ipv6_output_9
          CFI FunCall uip_ds6_defrt_choose
        BL       uip_ds6_defrt_choose
        MOVS     R7,R0
        BNE.N    ??tcpip_ipv6_output_5
        LDR.N    R0,??DataTable18_15
        LDRB     R0,[R0, #+0]
        CBZ.N    R0,??tcpip_ipv6_output_10
        LDRB     R6,[R5, #+40]
          CFI FunCall remove_ext_hdr
        BL       remove_ext_hdr
        STRB     R6,[R5, #+6]
??tcpip_ipv6_output_10:
        LDR.N    R0,??DataTable18_16
        LDR      R0,[R0, #+4]
          CFI FunCall
        BLX      R0
        B.N      ??tcpip_ipv6_output_1
??tcpip_ipv6_output_9:
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOVS     R7,R0
        BNE.N    ??tcpip_ipv6_output_5
        MOV      R0,R6
        POP      {R1,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uip_ds6_route_rm
        B.W      uip_ds6_route_rm
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
??tcpip_ipv6_output_8:
          CFI FunCall uip_nd6_ns_output
        BL       uip_nd6_ns_output
//  680 
//  681         stimer_set(&nbr->sendns, uip_ds6_if.retrans_timer / 1000);
        LDR.N    R0,??DataTable18_17
        LDR      R0,[R0, #+16]
        MOV      R1,#+1000
        UDIV     R1,R0,R1
        ADD      R0,R6,#+24
          CFI FunCall stimer_set
        BL       stimer_set
//  682         nbr->nscount = 1;
        MOVS     R0,#+1
        STRB     R0,[R6, #+32]
//  683       }
//  684 #endif /* UIP_ND6_SEND_NA */
//  685     } else {
//  686 #if UIP_ND6_SEND_NA
//  687       if(nbr->state == NBR_INCOMPLETE) {
//  688         PRINTF("tcpip_ipv6_output: nbr cache entry incomplete\n");
//  689 #if UIP_CONF_IPV6_QUEUE_PKT
//  690         /* Copy outgoing pkt in the queuing buffer for later transmit and set
//  691            the destination nbr to nbr. */
//  692         if(uip_packetqueue_alloc(&nbr->packethandle, UIP_DS6_NBR_PACKET_LIFETIME) != NULL) {
//  693           memcpy(uip_packetqueue_buf(&nbr->packethandle), UIP_IP_BUF, uip_len);
//  694           uip_packetqueue_set_buflen(&nbr->packethandle, uip_len);
//  695         }
//  696 #endif /*UIP_CONF_IPV6_QUEUE_PKT*/
//  697         uip_len = 0;
//  698         return;
//  699       }
//  700       /* Send in parallel if we are running NUD (nbc state is either STALE,
//  701          DELAY, or PROBE). See RFC 4861, section 7.3.3 on node behavior. */
//  702       if(nbr->state == NBR_STALE) {
//  703         nbr->state = NBR_DELAY;
//  704         stimer_set(&nbr->reachable, UIP_ND6_DELAY_FIRST_PROBE_TIME);
//  705         nbr->nscount = 0;
//  706         PRINTF("tcpip_ipv6_output: nbr cache entry stale moving to delay\n");
//  707       }
//  708 #endif /* UIP_ND6_SEND_NA */
//  709 
//  710       tcpip_output(uip_ds6_nbr_get_ll(nbr));
//  711 
//  712 #if UIP_CONF_IPV6_QUEUE_PKT
//  713       /*
//  714        * Send the queued packets from here, may not be 100% perfect though.
//  715        * This happens in a few cases, for example when instead of receiving a
//  716        * NA after sendiong a NS, you receive a NS with SLLAO: the entry moves
//  717        * to STALE, and you must both send a NA and the queued packet.
//  718        */
//  719       if(uip_packetqueue_buflen(&nbr->packethandle) != 0) {
//  720         uip_len = uip_packetqueue_buflen(&nbr->packethandle);
//  721         memcpy(UIP_IP_BUF, uip_packetqueue_buf(&nbr->packethandle), uip_len);
//  722         uip_packetqueue_free(&nbr->packethandle);
//  723         tcpip_output(uip_ds6_nbr_get_ll(nbr));
//  724       }
//  725 #endif /*UIP_CONF_IPV6_QUEUE_PKT*/
//  726 
//  727       uip_len = 0;
//  728       return;
//  729     }
//  730     return;
        POP      {R0,R4-R7,PC}
??tcpip_ipv6_output_6:
        ADD      R0,R6,#+32
        LDRB     R1,[R0, #+2]
        CBNZ.N   R1,??tcpip_ipv6_output_11
        MOV      R1,#+4000
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_alloc
        BL       uip_packetqueue_alloc
        CMP      R0,#+0
        BEQ.N    ??tcpip_ipv6_output_1
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_buf
        BL       uip_packetqueue_buf
        LDRH     R2,[R4, #+0]
        MOV      R1,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRH     R1,[R4, #+0]
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_set_buflen
        BL       uip_packetqueue_set_buflen
        B.N      ??tcpip_ipv6_output_1
??tcpip_ipv6_output_11:
        CMP      R1,#+2
        BNE.N    ??tcpip_ipv6_output_12
        MOVS     R1,#+3
        STRB     R1,[R0, #+2]
        ADD      R0,R6,#+16
        MOVS     R1,#+5
          CFI FunCall stimer_set
        BL       stimer_set
        MOVS     R0,#+0
        STRB     R0,[R6, #+32]
??tcpip_ipv6_output_12:
        MOV      R0,R6
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        LDR.N    R7,??DataTable18
        LDR      R1,[R7, #+0]
        MOVS     R2,R1
        IT       NE 
        BLXNE    R1
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_buflen
        BL       uip_packetqueue_buflen
        CBZ.N    R0,??tcpip_ipv6_output_1
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_buflen
        BL       uip_packetqueue_buflen
        STRH     R0,[R4, #+0]
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_buf
        BL       uip_packetqueue_buf
        MOV      R1,R0
        LDRH     R2,[R4, #+0]
        MOV      R0,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        ADD      R0,R6,#+40
          CFI FunCall uip_packetqueue_free
        BL       uip_packetqueue_free
        MOV      R0,R6
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        LDR      R1,[R7, #+0]
        MOVS     R2,R1
        IT       NE 
        BLXNE    R1
??tcpip_ipv6_output_1:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        POP      {R0,R4-R7,PC}
//  731   }
//  732   /* Multicast IP destination address. */
//  733   tcpip_output(NULL);
??tcpip_ipv6_output_3:
        LDR.N    R7,??DataTable18
        LDR      R1,[R7, #+0]
        MOVS     R0,R1
        ITT      NE 
        MOVNE    R0,#+0
        BLXNE    R1
//  734   uip_len = 0;
//  735   uip_ext_len = 0;
        LDR.N    R1,??DataTable18_15
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        STRB     R0,[R1, #+0]
//  736 }
??tcpip_ipv6_output_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock13
//  737 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  738 /*---------------------------------------------------------------------------*/
//  739 #if UIP_UDP

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function tcpip_poll_udp
          CFI NoCalls
        THUMB
//  740 void
//  741 tcpip_poll_udp(struct uip_udp_conn *conn)
//  742 {
//  743   process_post(&tcpip_process, UDP_POLL, conn);
tcpip_poll_udp:
        MOV      R2,R0
        MOVS     R1,#+1
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock14
//  744 }
//  745 #endif /* UIP_UDP */
//  746 /*---------------------------------------------------------------------------*/
//  747 #if UIP_TCP

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function tcpip_poll_tcp
          CFI NoCalls
        THUMB
//  748 void
//  749 tcpip_poll_tcp(struct uip_conn *conn)
//  750 {
//  751   process_post(&tcpip_process, TCP_POLL, conn);
tcpip_poll_tcp:
        MOV      R2,R0
        MOVS     R1,#+0
          CFI EndBlock cfiBlock15
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  752 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine0:
        LDR.N    R0,??DataTable18_2
          CFI FunCall tcpip_poll_udp process_post
          CFI FunCall tcpip_poll_tcp process_post
        B.W      process_post
          CFI EndBlock cfiBlock16
//  753 #endif /* UIP_TCP */
//  754 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function tcpip_uipcall
        THUMB
//  755 void
//  756 tcpip_uipcall(void)
//  757 {
tcpip_uipcall:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  758   uip_udp_appstate_t *ts;
//  759   
//  760 #if UIP_UDP
//  761   if(uip_conn != NULL) {
        LDR.N    R0,??DataTable18_9
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        ITEEE    NE 
        ADDNE    R4,R1,#+40
        LDREQ.N  R0,??DataTable18_12
        LDREQ    R0,[R0, #+0]
        ADDEQ    R4,R0,#+24
//  762     ts = &uip_conn->appstate;
//  763   } else {
//  764     ts = &uip_udp_conn->appstate;
//  765   }
//  766 #else /* UIP_UDP */
//  767   ts = &uip_conn->appstate;
//  768 #endif /* UIP_UDP */
//  769 
//  770 #if UIP_TCP
//  771  {
//  772    static unsigned char i;
//  773    struct listenport *l;
//  774    
//  775    /* If this is a connection request for a listening port, we must
//  776       mark the connection with the right process ID. */
//  777    if(uip_connected()) {
        LDR.N    R0,??DataTable18_18
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??tcpip_uipcall_0
//  778      l = &s.listenports[0];
        LDR.N    R5,??DataTable18_3
//  779      for(i = 0; i < UIP_LISTENPORTS; ++i) {
//  780        if(l->port == uip_conn->lport &&
//  781 	  l->p != PROCESS_NONE) {
        LDRH     R1,[R1, #+16]
        LDRH     R2,[R5, #+0]
        CMP      R2,R1
        MOV      R0,R5
        BNE.N    ??tcpip_uipcall_1
        LDR      R2,[R5, #+4]
        CBZ.N    R2,??tcpip_uipcall_1
//  782 	 ts->p = l->p;
??tcpip_uipcall_2:
        LDR      R0,[R0, #+4]
        STR      R0,[R4, #+0]
//  783 	 ts->state = NULL;
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
//  784 	 break;
        B.N      ??tcpip_uipcall_3
//  785        }
//  786        ++l;
??tcpip_uipcall_1:
        LDRH     R2,[R5, #+8]
        CMP      R2,R1
        ADD      R0,R5,#+8
        BNE.N    ??tcpip_uipcall_4
        LDR      R2,[R5, #+12]
        CMP      R2,#+0
        BNE.N    ??tcpip_uipcall_2
??tcpip_uipcall_4:
        LDRH     R2,[R5, #+16]
        CMP      R2,R1
        ADD      R0,R5,#+16
        BNE.N    ??tcpip_uipcall_5
        LDR      R2,[R5, #+20]
        CMP      R2,#+0
        BNE.N    ??tcpip_uipcall_2
??tcpip_uipcall_5:
        LDRH     R2,[R5, #+24]
        CMP      R2,R1
        ADD      R0,R5,#+24
        BNE.N    ??tcpip_uipcall_6
        LDR      R2,[R5, #+28]
        CMP      R2,#+0
        BNE.N    ??tcpip_uipcall_2
??tcpip_uipcall_6:
        LDRH     R2,[R5, #+32]
        CMP      R2,R1
        ADD      R0,R5,#+32
        BNE.N    ??tcpip_uipcall_7
        LDR      R2,[R5, #+36]
        CMP      R2,#+0
        BNE.N    ??tcpip_uipcall_2
??tcpip_uipcall_7:
        LDRH     R2,[R5, #+40]
        CMP      R2,R1
        ADD      R0,R5,#+40
        BNE.N    ??tcpip_uipcall_8
        LDR      R2,[R5, #+44]
        CMP      R2,#+0
        BNE.N    ??tcpip_uipcall_2
??tcpip_uipcall_8:
        LDRH     R2,[R5, #+48]
        CMP      R2,R1
        ADD      R0,R5,#+48
        BNE.N    ??tcpip_uipcall_9
        LDR      R2,[R5, #+52]
        CMP      R2,#+0
        BNE.N    ??tcpip_uipcall_2
??tcpip_uipcall_9:
        LDRH     R2,[R5, #+56]
        CMP      R2,R1
        ADD      R0,R5,#+56
        BNE.N    ??tcpip_uipcall_3
        LDR      R1,[R5, #+60]
        CMP      R1,#+0
        BNE.N    ??tcpip_uipcall_2
//  787      }
//  788      
//  789      /* Start the periodic polling, if it isn't already active. */
//  790      start_periodic_tcp_timer();
??tcpip_uipcall_3:
        ADD      R0,R5,#+68
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??tcpip_uipcall_0
        ADD      R0,R5,#+68
          CFI FunCall etimer_restart
        BL       etimer_restart
//  791    }
//  792  }
//  793 #endif /* UIP_TCP */
//  794   
//  795   if(ts->p != NULL) {
??tcpip_uipcall_0:
        LDR      R0,[R4, #+0]
        CBZ.N    R0,??tcpip_uipcall_10
//  796     process_post_synch(ts->p, tcpip_event, ts->state);
        LDR      R2,[R4, #+4]
        LDR.N    R1,??DataTable18_5
        LDRB     R1,[R1, #+0]
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall process_post_synch
        B.W      process_post_synch
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  797   }
//  798 }
??tcpip_uipcall_10:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock17

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1
//  799 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function process_thread_tcpip_process
        THUMB
//  800 PROCESS_THREAD(tcpip_process, ev, data)
//  801 {
process_thread_tcpip_process:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R0,R1
        MOV      R1,R2
//  802   PROCESS_BEGIN();
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_tcpip_process_0
        MOVW     R3,#+833
        CMP      R2,R3
        BEQ.N    ??process_thread_tcpip_process_1
        B.N      ??process_thread_tcpip_process_2
//  803   
//  804 #if UIP_TCP
//  805  {
//  806    static unsigned char i;
//  807    
//  808    for(i = 0; i < UIP_LISTENPORTS; ++i) {
??process_thread_tcpip_process_0:
        LDR.N    R5,??DataTable18_3
//  809      s.listenports[i].port = 0;
//  810    }
//  811    s.p = PROCESS_CURRENT();
//  812  }
//  813 #endif
//  814 
//  815   tcpip_event = process_alloc_event();
        LDR.N    R6,??DataTable18_5
        MOVS     R0,#+0
        STRH     R0,[R5, #+0]
        STRH     R0,[R5, #+8]
        STRH     R0,[R5, #+16]
        STRH     R0,[R5, #+24]
        STRH     R0,[R5, #+32]
        STRH     R0,[R5, #+40]
        STRH     R0,[R5, #+48]
        STRH     R0,[R5, #+56]
        LDR.N    R0,??DataTable18_1
        LDR      R0,[R0, #+0]
        STR      R0,[R5, #+64]
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R6, #+0]
//  816 #if UIP_CONF_ICMP6
//  817   tcpip_icmp6_event = process_alloc_event();
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R6, #+1]
//  818 #endif /* UIP_CONF_ICMP6 */
//  819   etimer_set(&periodic, CLOCK_SECOND / 2);
        MOV      R1,#+500
        ADD      R0,R5,#+68
          CFI FunCall etimer_set
        BL       etimer_set
//  820 
//  821   uip_init();
          CFI FunCall uip_init
        BL       uip_init
//  822 #ifdef UIP_FALLBACK_INTERFACE
//  823   //XPRINTF((10, "UIP_FALLBACK_INTERFACE\n"));
//  824   xprintf( "UIP_FALLBACK_INTERFACE\n");
        ADR.W    R0,?_1
          CFI FunCall xprintf
        BL       xprintf
//  825   UIP_FALLBACK_INTERFACE.init();
        LDR.N    R0,??DataTable18_16
        LDR      R0,[R0, #+0]
          CFI FunCall
        BLX      R0
//  826 #endif
//  827 /* initialize RPL if configured for using RPL */
//  828 #if NETSTACK_CONF_WITH_IPV6 && UIP_CONF_IPV6_RPL
//  829   rpl_init();
//  830 #endif /* UIP_CONF_IPV6_RPL */
//  831 
//  832   while(1) {
//  833     PROCESS_YIELD();
??process_thread_tcpip_process_3:
        MOVW     R0,#+833
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R4-R6,PC}
//  834     eventhandler(ev, data);
??process_thread_tcpip_process_1:
          CFI FunCall eventhandler
        BL       eventhandler
        B.N      ??process_thread_tcpip_process_3
//  835   }
//  836   
//  837   PROCESS_END();
??process_thread_tcpip_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock18
//  838 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     outputfunc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     process_current

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     tcpip_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     s

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     uip_icmp6_conns

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     tcpip_event

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     ??i_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     uip_conns

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     uip_udp_conns

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_9:
        DC32     uip_conn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_10:
        DC32     uip_reass_timer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_11:
        DC32     uip_ds6_timer_periodic

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_12:
        DC32     uip_udp_conn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_13:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_14:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_15:
        DC32     uip_ext_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_16:
        DC32     ip64_uip_fallback_interface

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_17:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_18:
        DC32     uip_flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "UIP_FALLBACK_INTERFACE\012"

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1

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
        DC8 "TCP/IP stack"
        DC8 0, 0, 0

        END
//  839 /*---------------------------------------------------------------------------*/
// 
//    95 bytes in section .bss
//    16 bytes in section .data
//    16 bytes in section .rodata
// 1 866 bytes in section .text
// 
// 1 866 bytes of CODE  memory
//    16 bytes of CONST memory
//   111 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
