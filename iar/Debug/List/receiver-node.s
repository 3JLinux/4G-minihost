///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:11
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\receiver-node.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\receiver-node.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\receiver-node.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN join_mcast_group_node
        EXTERN rpl_get_any_dag
        EXTERN simple_udp_register
        EXTERN tcpip_event
        EXTERN uip_appdata
        EXTERN uip_ds6_addr_add
        EXTERN uip_ds6_if
        EXTERN uip_ds6_notification_add
        EXTERN uip_ds6_set_addr_iid
        EXTERN uip_flags
        EXTERN uip_len
        EXTERN uip_lladdr
        EXTERN xprintf

        PUBLIC get_goal_uipaddr
        PUBLIC get_leafnode_unicast_conn
        PUBLIC get_senderip
        PUBLIC receiver_node_process
        PUBLIC should_blink
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\receiver-node.c
//    1 /*
//    2  * Copyright (c) 2012, Thingsquare, www.thingsquare.com.
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
//   28  */
//   29 
//   30 #include "contiki.h"
//   31 #include "lib/random.h"
//   32 #include "sys/ctimer.h"
//   33 #include "sys/etimer.h"
//   34 //#include "net/uip.h"
//   35 #include "net/ip/uip.h"
//   36 //#include "net/uip-ds6.h"
//   37 #include "net/ipv6/uip-ds6.h"
//   38 //#include "net/uip-debug.h"
//   39 
//   40 //#include "net/simple-udp.h"
//   41 #include "net/ip/simple-udp.h"
//   42 
//   43 #include "net/rpl/rpl.h"
//   44 #include "dev/leds.h"
//   45 
//   46 #include <stdio.h>
//   47 #include <string.h>
//   48 
//   49 
//   50 #include "sysprintf.h" 
//   51 #include "basictype.h"
//   52 #define UDP_PORT 1234
//   53 
//   54 static struct simple_udp_connection unicast_connection;
//   55 static uip_ipaddr_t ip_to_goal;
//   56 
//   57 
//   58 
//   59 /*---------------------------------------------------------------------------*/

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   60 PROCESS(receiver_node_process, "Receiver node");
receiver_node_process:
        DATA
        DC32 0H, ?_0, process_thread_receiver_node_process
        DC8 0, 0, 0, 0
//   61 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function get_leafnode_unicast_conn
          CFI NoCalls
        THUMB
//   62 struct simple_udp_connection* get_leafnode_unicast_conn(void)
//   63 {
//   64 	return &unicast_connection;
get_leafnode_unicast_conn:
        LDR.N    R0,??DataTable12_2
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   65 }
//   66 
//   67 //get sender ip

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function get_senderip
        THUMB
//   68 void get_senderip(uip_ipaddr_t *piouipAddr, const uip_ipaddr_t *pcSenderIp)
//   69 {
//   70 	if ((NULL != piouipAddr)&&(NULL != pcSenderIp))
get_senderip:
        CBZ.N    R0,??get_senderip_0
        CMP      R1,#+0
        ITT      NE 
//   71 	{
//   72 		memcpy(piouipAddr, pcSenderIp, sizeof(uip_ipaddr_t));
        MOVNE    R2,#+16
          CFI FunCall __aeabi_memcpy
        BNE.W    __aeabi_memcpy
//   73 	}
//   74 }
??get_senderip_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   75 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function get_goal_uipaddr
          CFI NoCalls
        THUMB
//   76 uip_ipaddr_t *get_goal_uipaddr(void)
//   77 {
//   78 	return (uip_ipaddr_t *)&ip_to_goal;
get_goal_uipaddr:
        LDR.N    R0,??DataTable12_3
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   79 }
//   80 
//   81 //get any local ip addr 
//   82 static uip_ipaddr_t* getLocalIpAddr(void)
//   83 {
//   84 	int i = 0;
//   85 	for(i = 0; i < UIP_DS6_ADDR_NB; i++) 
//   86 	{
//   87 		if(uip_ds6_if.addr_list[i].isused) 
//   88 		{
//   89 			//PRINT6ADDR_U(&uip_ds6_if.addr_list[i].ipaddr);
//   90 			return &uip_ds6_if.addr_list[i].ipaddr;
//   91 		}
//   92 	}
//   93 	return NULL;
//   94 }
//   95 
//   96 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function receiver
        THUMB
//   97 static void
//   98 receiver(struct simple_udp_connection *c,
//   99          const uip_ipaddr_t *sender_addr,
//  100          uint16_t sender_port,
//  101          const uip_ipaddr_t *receiver_addr,
//  102          uint16_t receiver_port,
//  103          const uint8_t *data,
//  104          uint16_t datalen)
//  105 {
receiver:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R1
        MOV      R5,R2
//  106 	uip_ipaddr_t *puipLocalAddr =  getLocalIpAddr( );
//  107 
//  108 	XPRINTF((10,"Data received from "));
        ADR.W    R1,?_1
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  109 	//PRINT6ADDR_U(sender_addr);
//  110 	get_senderip(&ip_to_goal, sender_addr);	
        CBZ.N    R4,??receiver_0
        MOVS     R2,#+16
        MOV      R1,R4
        LDR.N    R0,??DataTable12_3
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
??receiver_0:
        LDR      R4,[SP, #+24]
//  111 	XPRINTF((10," on port %d from port %d with length %d: \n",receiver_port, sender_port, datalen));
        LDR      R2,[SP, #+16]
        ADR.W    R1,?_2
        STR      R4,[SP, #+0]
        MOV      R3,R5
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  112 	
//  113 	MEM_DUMP(6 , "<-w", data, datalen);
        LDR      R2,[SP, #+20]
        MOV      R3,R4
        ADD      SP,SP,#+4
          CFI CFA R13+12
        POP      {R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.N    R1,??DataTable12  ;; "<-w"
        MOVS     R0,#+6
          CFI FunCall __xstd_dump
        B.W      __xstd_dump
          CFI EndBlock cfiBlock3
//  114 	//app_3762_get_udp_data(data, datalen);
//  115 }
//  116 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function set_global_address
        THUMB
//  117 static uip_ipaddr_t *
//  118 set_global_address(void)
//  119 {
set_global_address:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  120   static uip_ipaddr_t ipaddr;
//  121   int i;
//  122   uint8_t state;
//  123 
//  124   uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
        LDR.N    R4,??DataTable12_4
//  125   uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
        LDR.N    R1,??DataTable12_5
        MOVW     R0,#+43690
        STRH     R0,[R4, #+0]
        SUB      SP,SP,#+52
          CFI CFA R13+64
        MOVS     R0,#+0
        STRH     R0,[R4, #+2]
        STR      R0,[R4, #+4]
        STR      R0,[R4, #+8]
        STR      R0,[R4, #+12]
        MOV      R0,R4
          CFI FunCall uip_ds6_set_addr_iid
        BL       uip_ds6_set_addr_iid
//  126   uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall uip_ds6_addr_add
        BL       uip_ds6_addr_add
//  127 
//  128   XPRINTF((0,"IPv6 addresses: "));
        ADR.W    R1,?_4
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  129   for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
        LDR.N    R5,??DataTable12_6
//  130     state = uip_ds6_if.addr_list[i].state;
        LDRB     R0,[R5, #+42]
//  131     if(uip_ds6_if.addr_list[i].isused &&
//  132        (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
        LDRB     R1,[R5, #+24]
        CBZ.N    R1,??set_global_address_0
        CMP      R0,#+0
        IT       NE 
        CMPNE    R0,#+1
        BNE.N    ??set_global_address_0
//  133       PRINT6ADDR_U(&uip_ds6_if.addr_list[i].ipaddr);
        LDRB     R0,[R5, #+41]
        LDRB     R3,[R5, #+28]
        LDRB     R2,[R5, #+27]
        LDRB     R1,[R5, #+26]
        STR      R0,[SP, #+48]
        LDRB     R0,[R5, #+40]
        STR      R0,[SP, #+44]
        LDRB     R0,[R5, #+39]
        STR      R0,[SP, #+40]
        LDRB     R0,[R5, #+38]
        STR      R0,[SP, #+36]
        LDRB     R0,[R5, #+37]
        STR      R0,[SP, #+32]
        LDRB     R0,[R5, #+36]
        STR      R0,[SP, #+28]
        LDRB     R0,[R5, #+35]
        STR      R0,[SP, #+24]
        LDRB     R0,[R5, #+34]
        STR      R0,[SP, #+20]
        LDRB     R0,[R5, #+33]
        STR      R0,[SP, #+16]
        LDRB     R0,[R5, #+32]
        STR      R0,[SP, #+12]
        LDRB     R0,[R5, #+31]
        STR      R0,[SP, #+8]
        LDRB     R0,[R5, #+30]
        STR      R0,[SP, #+4]
        LDRB     R0,[R5, #+29]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_5
          CFI FunCall xprintf
        BL       xprintf
//  134       PRINTF("\n");
        ADR.N    R0,??DataTable12_1  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
??set_global_address_0:
        LDRB     R0,[R5, #+74]
        LDRB     R1,[R5, #+56]
        CBZ.N    R1,??set_global_address_1
        CMP      R0,#+0
        IT       NE 
        CMPNE    R0,#+1
        BNE.N    ??set_global_address_1
        LDRB     R0,[R5, #+73]
        LDRB     R3,[R5, #+60]
        LDRB     R2,[R5, #+59]
        LDRB     R1,[R5, #+58]
        STR      R0,[SP, #+48]
        LDRB     R0,[R5, #+72]
        STR      R0,[SP, #+44]
        LDRB     R0,[R5, #+71]
        STR      R0,[SP, #+40]
        LDRB     R0,[R5, #+70]
        STR      R0,[SP, #+36]
        LDRB     R0,[R5, #+69]
        STR      R0,[SP, #+32]
        LDRB     R0,[R5, #+68]
        STR      R0,[SP, #+28]
        LDRB     R0,[R5, #+67]
        STR      R0,[SP, #+24]
        LDRB     R0,[R5, #+66]
        STR      R0,[SP, #+20]
        LDRB     R0,[R5, #+65]
        STR      R0,[SP, #+16]
        LDRB     R0,[R5, #+64]
        STR      R0,[SP, #+12]
        LDRB     R0,[R5, #+63]
        STR      R0,[SP, #+8]
        LDRB     R0,[R5, #+62]
        STR      R0,[SP, #+4]
        LDRB     R0,[R5, #+61]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_5
          CFI FunCall xprintf
        BL       xprintf
        ADR.N    R0,??DataTable12_1  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
??set_global_address_1:
        LDRB     R0,[R5, #+106]
        LDRB     R1,[R5, #+88]
        CBZ.N    R1,??set_global_address_2
        CMP      R0,#+0
        IT       NE 
        CMPNE    R0,#+1
        BNE.N    ??set_global_address_2
        LDRB     R0,[R5, #+105]
        LDRB     R3,[R5, #+92]
        LDRB     R2,[R5, #+91]
        LDRB     R1,[R5, #+90]
        STR      R0,[SP, #+48]
        LDRB     R0,[R5, #+104]
        STR      R0,[SP, #+44]
        LDRB     R0,[R5, #+103]
        STR      R0,[SP, #+40]
        LDRB     R0,[R5, #+102]
        STR      R0,[SP, #+36]
        LDRB     R0,[R5, #+101]
        STR      R0,[SP, #+32]
        LDRB     R0,[R5, #+100]
        STR      R0,[SP, #+28]
        LDRB     R0,[R5, #+99]
        STR      R0,[SP, #+24]
        LDRB     R0,[R5, #+98]
        STR      R0,[SP, #+20]
        LDRB     R0,[R5, #+97]
        STR      R0,[SP, #+16]
        LDRB     R0,[R5, #+96]
        STR      R0,[SP, #+12]
        LDRB     R0,[R5, #+95]
        STR      R0,[SP, #+8]
        LDRB     R0,[R5, #+94]
        STR      R0,[SP, #+4]
        LDRB     R0,[R5, #+93]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_5
          CFI FunCall xprintf
        BL       xprintf
        ADR.N    R0,??DataTable12_1  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
//  135     }
//  136   }
//  137 
//  138   return &ipaddr;
??set_global_address_2:
        MOV      R0,R4
        ADD      SP,SP,#+52
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock4
//  139 }
//  140 /*---------------------------------------------------------------------------*/

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//  141 uint8_t should_blink = 1;
should_blink:
        DATA
        DC8 1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function route_callback
          CFI NoCalls
        THUMB
//  142 static void
//  143 route_callback(int event, uip_ipaddr_t *route, uip_ipaddr_t *ipaddr, int num_routes)
//  144 {
//  145   if(event == UIP_DS6_NOTIFICATION_DEFRT_ADD) {
route_callback:
        CMP      R0,#+0
        ITEE     NE 
        CMPNE    R0,#+1
        LDREQ.N  R1,??DataTable12_7
        STRBEQ   R0,[R1, #+0]
//  146     should_blink = 0;
//  147   } else if(event == UIP_DS6_NOTIFICATION_DEFRT_RM) {
//  148     should_blink = 1;
//  149   }
//  150 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  151 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function process_thread_receiver_node_process
        THUMB
//  152 PROCESS_THREAD(receiver_node_process, ev, data)
//  153 {
process_thread_receiver_node_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  154 //  static struct etimer et;
//  155   static struct uip_ds6_notification n;
//  156   uip_ipaddr_t *ipaddr;
//  157   static uip_ipaddr_t *ipladdr;
//  158   static struct rpl_dag* prpl_dag;
//  159 
//  160   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_receiver_node_process_0
        CMP      R0,#+190
        BEQ.N    ??process_thread_receiver_node_process_1
        B.N      ??process_thread_receiver_node_process_2
//  161 
//  162   ipaddr = set_global_address();
??process_thread_receiver_node_process_0:
          CFI FunCall set_global_address
        BL       set_global_address
//  163   ipladdr = getLocalIpAddr( );
//  164   prpl_dag = rpl_get_any_dag( );
          CFI FunCall rpl_get_any_dag
        BL       rpl_get_any_dag
//  165 
//  166   uip_ds6_notification_add(&n, route_callback);
        LDR.N    R5,??DataTable12_2
        LDR.N    R1,??DataTable12_8
        ADD      R0,R5,#+36
          CFI FunCall uip_ds6_notification_add
        BL       uip_ds6_notification_add
//  167 
//  168   simple_udp_register(&unicast_connection, UDP_PORT,
//  169                       NULL, UDP_PORT, receiver);
        LDR.N    R0,??DataTable12_9
        STR      R0,[SP, #+0]
        MOVW     R3,#+1234
        MOVS     R2,#+0
        MOV      R1,R3
        MOV      R0,R5
          CFI FunCall simple_udp_register
        BL       simple_udp_register
//  170 
//  171   join_mcast_group_node( );
          CFI FunCall join_mcast_group_node
        BL       join_mcast_group_node
//  172  // etimer_set(&et, CLOCK_SECOND*120);
//  173   while(1) {
//  174   	#if 0
//  175    	ipladdr = getLocalIpAddr( );
//  176   	prpl_dag = rpl_get_any_dag( );
//  177  	
//  178     PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
//  179     etimer_set(&et, 60*CLOCK_SECOND+(random_rand()%10)*CLOCK_SECOND + (random_rand()%20)*CLOCK_CONF_SECOND + (random_rand()%30)*CLOCK_SECOND);
//  180     if ( NULL != ipladdr && NULL != prpl_dag)
//  181 	{
//  182 		// XPRINTF((0, "senddata*dfdsafds**\r\n"));
//  183 
//  184 		ubNodeId = (ipladdr->u8[8] >> 4);
//  185 		xsprintf(buf, "msg %d from node %d", ubmsgid,ubNodeId);
//  186 		simple_udp_sendto(&unicast_connection, buf, strlen(buf) + 1, (const uip_ipaddr_t *)&(prpl_dag->dag_id));
//  187 	}
//  188     ubmsgid++;
//  189     #else
//  190     PROCESS_YIELD( );
??process_thread_receiver_node_process_3:
        MOVS     R0,#+190
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
//  191     if (ev == tcpip_event)
??process_thread_receiver_node_process_1:
        LDR.N    R0,??DataTable12_10
        LDRB     R0,[R0, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_receiver_node_process_3
//  192     {
//  193     	if(uip_newdata())
        LDR.N    R0,??DataTable12_11
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??process_thread_receiver_node_process_3
//  194     	{
//  195 			MEM_DUMP(6 , "<-w", uip_appdata, uip_datalen());
        LDR.N    R0,??DataTable12_12
        LDRH     R3,[R0, #+0]
        LDR.N    R0,??DataTable12_13
        LDR      R2,[R0, #+0]
        ADR.N    R1,??DataTable12  ;; "<-w"
        MOVS     R0,#+6
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        B.N      ??process_thread_receiver_node_process_3
//  196 			//app_3762_frame_process(ubaBuf3762, data);
//  197 			//app_3762_get_udp_data(uip_appdata, uip_datalen());    	
//  198 		}
//  199     }
//  200     #endif
//  201 
//  202 #if 0
//  203    if(should_blink) {
//  204       //leds_on(LEDS_ALL);
//  205       PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
//  206       etimer_reset(&et);
//  207       //leds_off(LEDS_ALL);
//  208     }
//  209  #endif
//  210   }
//  211   PROCESS_END();
??process_thread_receiver_node_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6
//  212 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC8      "<-w"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     unicast_connection

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     ip_to_goal

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     ??ipaddr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     uip_lladdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     should_blink

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     route_callback

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     receiver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     tcpip_event

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     uip_flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "Data received from "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 " on port %d from port %d with length %d: \012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "IPv6 addresses: "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 20H, 25H, 30H, 32H, 78H, 25H, 30H, 32H
        DC8 78H, 3AH, 25H, 30H, 32H, 78H, 25H, 30H
        DC8 32H, 78H, 3AH, 25H, 30H, 32H, 78H, 25H
        DC8 30H, 32H, 78H, 3AH, 25H, 30H, 32H, 78H
        DC8 25H, 30H, 32H, 78H, 3AH, 25H, 30H, 32H
        DC8 78H, 25H, 30H, 32H, 78H, 3AH, 25H, 30H
        DC8 32H, 78H, 25H, 30H, 32H, 78H, 3AH, 25H
        DC8 30H, 32H, 78H, 25H, 30H, 32H, 78H, 3AH
        DC8 25H, 30H, 32H, 78H, 25H, 30H, 32H, 78H
        DC8 20H, 0
        DC8 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
unicast_connection:
        DS8 36
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ip_to_goal:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??ipaddr:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DS8 4

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
        DC8 "Receiver node"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_3:
        DC8 "<-w"

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_6:
        DC8 "\012"

        END
//  213 /*---------------------------------------------------------------------------*/
// 
//  84 bytes in section .bss
//  17 bytes in section .data
//  22 bytes in section .rodata
// 830 bytes in section .text
// 
// 830 bytes of CODE  memory
//  22 bytes of CONST memory
// 101 bytes of DATA  memory
//
//Errors: none
//Warnings: 5
