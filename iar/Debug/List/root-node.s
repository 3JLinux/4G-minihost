///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:13
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\root-node.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\root-node.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\root-node.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN clock_time
        EXTERN rpl_get_any_dag
        EXTERN rpl_set_prefix
        EXTERN rpl_set_root
        EXTERN simple_udp_register
        EXTERN udp_new
        EXTERN uip_ds6_addr_add
        EXTERN uip_ds6_addr_lookup
        EXTERN uip_ds6_if
        EXTERN uip_ds6_maddr_add
        EXTERN uip_ds6_maddr_lookup
        EXTERN uip_ds6_set_addr_iid
        EXTERN uip_lladdr
        EXTERN uip_udp_packet_send
        EXTERN xprintf

        PUBLIC get_unicast_conn
        PUBLIC join_mcast_group_node
        PUBLIC multicast_send
        PUBLIC unicast_receiver_root
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\root-node.c
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
//   29 #include "contiki.h"
//   30 #include "lib/random.h"
//   31 #include "sys/ctimer.h"
//   32 #include "sys/etimer.h"
//   33 #include "net/ip/uip.h"
//   34 #include "net/ipv6/uip-ds6.h"
//   35 
//   36 #include "net/ip/simple-udp.h"
//   37 
//   38 #include "net/rpl/rpl.h"
//   39 
//   40 #include <stdio.h>
//   41 #include <string.h>
//   42 
//   43 #include "sysprintf.h"
//   44 
//   45 #define UDP_PORT 1234
//   46 
//   47 #define MCAST_SINK_UDP_PORT 3001 /* Host byte order */
//   48 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   49 static struct simple_udp_connection unicast_connection;
//   50 
//   51 static struct uip_udp_conn *mcast_conn;
mcast_conn:
        DS8 4
        DS8 36
//   52 
//   53 static void prepare_mcast(void)
//   54 {
//   55 	uip_ipaddr_t ipaddr;
//   56 
//   57 	/*
//   58 	* IPHC will use stateless multicast compression for this destination
//   59 	* (M=1, DAC=0), with 32 inline bits (1E 89 AB CD)
//   60 	*/
//   61 	uip_ip6addr(&ipaddr, 0xFF1E,0,0,0,0,0,0x89,0xABCD);
//   62 	mcast_conn = udp_new(&ipaddr, UIP_HTONS(MCAST_SINK_UDP_PORT), NULL);
//   63 }
//   64 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function multicast_send
        THUMB
//   65 void multicast_send(const unsigned char *pData, int dataLen)
//   66 {
multicast_send:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        SUB      SP,SP,#+56
          CFI CFA R13+72
        MOV      R5,R1
//   67 	PRINTF("Send to: ");
        ADR.W    R0,?_1
          CFI FunCall xprintf
        BL       xprintf
//   68 	PRINT6ADDR_U(&mcast_conn->ripaddr);
        LDR.W    R6,??DataTable18_2
        LDR      R0,[R6, #+0]
        LDRB     R1,[R0, #+15]
        STR      R1,[SP, #+48]
        LDRB     R1,[R0, #+14]
        STR      R1,[SP, #+44]
        LDRB     R1,[R0, #+13]
        STR      R1,[SP, #+40]
        LDRB     R1,[R0, #+12]
        STR      R1,[SP, #+36]
        LDRB     R1,[R0, #+11]
        STR      R1,[SP, #+32]
        LDRB     R1,[R0, #+10]
        STR      R1,[SP, #+28]
        LDRB     R1,[R0, #+9]
        STR      R1,[SP, #+24]
        LDRB     R1,[R0, #+8]
        STR      R1,[SP, #+20]
        LDRB     R1,[R0, #+7]
        STR      R1,[SP, #+16]
        LDRB     R1,[R0, #+6]
        STR      R1,[SP, #+12]
        LDRB     R1,[R0, #+5]
        STR      R1,[SP, #+8]
        LDRB     R1,[R0, #+4]
        STR      R1,[SP, #+4]
        LDRB     R1,[R0, #+3]
        STR      R1,[SP, #+0]
        LDRB     R3,[R0, #+2]
        LDRB     R2,[R0, #+1]
        LDRB     R1,[R0, #+0]
        ADR.W    R0,?_2
          CFI FunCall xprintf
        BL       xprintf
//   69 	uip_udp_packet_send(mcast_conn, pData, dataLen);
        LDR      R0,[R6, #+0]
        MOV      R2,R5
        MOV      R1,R4
        ADD      SP,SP,#+56
          CFI CFA R13+16
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uip_udp_packet_send
        B.W      uip_udp_packet_send
          CFI EndBlock cfiBlock0
//   70 }
//   71 
//   72 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function join_mcast_group_node
        THUMB
//   73 uip_ds6_maddr_t *join_mcast_group_node(void)
//   74 {
join_mcast_group_node:
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
        SUB      SP,SP,#+100
          CFI CFA R13+136
//   75 	uip_ipaddr_t addr;
//   76 	uip_ds6_maddr_t *rv;
//   77 
//   78 	/*
//   79 	* IPHC will use stateless multicast compression for this destination
//   80 	* (M=1, DAC=0), with 32 inline bits (1E 89 AB CD)
//   81 	*/
//   82 	uip_ip6addr(&addr, 0xFF1E,0,0,0,0,0,0x89,0xABCD);
        MOVW     R0,#+7935
        STRH     R0,[SP, #+52]
        MOVS     R0,#+0
        STRH     R0,[SP, #+54]
        STR      R0,[SP, #+56]
        STR      R0,[SP, #+60]
        MOV      R0,#+35072
        STRH     R0,[SP, #+64]
        MOVW     R0,#+52651
        STRH     R0,[SP, #+66]
//   83 	rv = uip_ds6_maddr_add(&addr);
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_add
        BL       uip_ds6_maddr_add
//   84 
//   85 	if(rv) 
        CMP      R0,#+0
        STR      R0,[SP, #+68]
        BEQ.W    ??join_mcast_group_node_0
//   86 	{
//   87 		PRINTF("Joined multicast group ");
        ADR.W    R0,?_3
          CFI FunCall xprintf
        BL       xprintf
//   88 		PRINT6ADDR_U(&uip_ds6_maddr_lookup(&addr)->ipaddr);
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        STR      R0,[SP, #+96]
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        STR      R0,[SP, #+92]
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        STR      R0,[SP, #+88]
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        STR      R0,[SP, #+84]
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        STR      R0,[SP, #+80]
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        STR      R0,[SP, #+76]
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        STR      R0,[SP, #+72]
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        MOV      R4,R0
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        MOV      R5,R0
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        MOV      R6,R0
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        MOV      R7,R0
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        MOV      R8,R0
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        MOV      R9,R0
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        MOV      R10,R0
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        MOV      R11,R0
        ADD      R0,SP,#+52
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        LDR      R1,[SP, #+96]
        LDRB     R1,[R1, #+17]
        STR      R1,[SP, #+48]
        LDR      R1,[SP, #+92]
        LDRB     R1,[R1, #+16]
        STR      R1,[SP, #+44]
        LDR      R1,[SP, #+88]
        LDRB     R1,[R1, #+15]
        STR      R1,[SP, #+40]
        LDR      R1,[SP, #+84]
        LDRB     R1,[R1, #+14]
        STR      R1,[SP, #+36]
        LDR      R1,[SP, #+80]
        LDRB     R1,[R1, #+13]
        STR      R1,[SP, #+32]
        LDR      R1,[SP, #+76]
        LDRB     R1,[R1, #+12]
        STR      R1,[SP, #+28]
        LDR      R1,[SP, #+72]
        LDRB     R1,[R1, #+11]
        STR      R1,[SP, #+24]
        LDRB     R1,[R4, #+10]
        STR      R1,[SP, #+20]
        LDRB     R1,[R5, #+9]
        STR      R1,[SP, #+16]
        LDRB     R1,[R6, #+8]
        STR      R1,[SP, #+12]
        LDRB     R1,[R7, #+7]
        STR      R1,[SP, #+8]
        LDRB     R1,[R8, #+6]
        STR      R1,[SP, #+4]
        LDRB     R1,[R9, #+5]
        STR      R1,[SP, #+0]
        LDRB     R1,[R0, #+2]
        LDRB     R3,[R10, #+4]
        LDRB     R2,[R11, #+3]
        ADR.W    R0,?_2
          CFI FunCall xprintf
        BL       xprintf
//   89 		PRINTF("\n");
        ADR.N    R0,??DataTable18  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
//   90 
//   91 		/**/
//   92 		mcast_conn = udp_new(NULL, UIP_HTONS(0), NULL);
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOV      R0,R1
          CFI FunCall udp_new
        BL       udp_new
        LDR.N    R4,??DataTable18_2
        STR      R0,[R4, #+0]
//   93 		udp_bind(mcast_conn, UIP_HTONS(MCAST_SINK_UDP_PORT));
        MOVW     R1,#+47371
        STRH     R1,[R0, #+16]
//   94 
//   95 		PRINTF("Listening: ");
        ADR.W    R0,?_5
          CFI FunCall xprintf
        BL       xprintf
//   96 		PRINT6ADDR_U(&mcast_conn->ripaddr);
        LDR      R0,[R4, #+0]
        LDRB     R1,[R0, #+15]
        STR      R1,[SP, #+48]
        LDRB     R1,[R0, #+14]
        STR      R1,[SP, #+44]
        LDRB     R1,[R0, #+13]
        STR      R1,[SP, #+40]
        LDRB     R1,[R0, #+12]
        STR      R1,[SP, #+36]
        LDRB     R1,[R0, #+11]
        STR      R1,[SP, #+32]
        LDRB     R1,[R0, #+10]
        STR      R1,[SP, #+28]
        LDRB     R1,[R0, #+9]
        STR      R1,[SP, #+24]
        LDRB     R1,[R0, #+8]
        STR      R1,[SP, #+20]
        LDRB     R1,[R0, #+7]
        STR      R1,[SP, #+16]
        LDRB     R1,[R0, #+6]
        STR      R1,[SP, #+12]
        LDRB     R1,[R0, #+5]
        STR      R1,[SP, #+8]
        LDRB     R1,[R0, #+4]
        STR      R1,[SP, #+4]
        LDRB     R1,[R0, #+3]
        STR      R1,[SP, #+0]
        LDRB     R3,[R0, #+2]
        LDRB     R2,[R0, #+1]
        LDRB     R1,[R0, #+0]
        ADR.W    R0,?_2
          CFI FunCall xprintf
        BL       xprintf
//   97 		PRINTF(" local/remote port %u/%u\n",
//   98 		UIP_HTONS(mcast_conn->lport), UIP_HTONS(mcast_conn->rport));
        LDR      R0,[R4, #+0]
        LDRH     R1,[R0, #+16]
        LDRH     R0,[R0, #+18]
        LSRS     R2,R0,#+8
        ORR      R2,R2,R0, LSL #+8
        LSRS     R0,R1,#+8
        ORR      R1,R0,R1, LSL #+8
        UXTH     R2,R2
        UXTH     R1,R1
        ADR.W    R0,?_6
          CFI FunCall xprintf
        BL       xprintf
//   99 	}
//  100 	return rv;
??join_mcast_group_node_0:
        LDR      R0,[SP, #+68]
        ADD      SP,SP,#+100
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock1
//  101 }
//  102 
//  103 
//  104 
//  105 /*---------------------------------------------------------------------------*/

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  106 PROCESS(unicast_receiver_root, "Unicast receiver root process");
unicast_receiver_root:
        DATA
        DC32 0H, ?_0, process_thread_unicast_receiver_root
        DC8 0, 0, 0, 0
//  107 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function get_unicast_conn
          CFI NoCalls
        THUMB
//  108 struct simple_udp_connection* get_unicast_conn(void)
//  109 {
//  110 	return &unicast_connection;
get_unicast_conn:
        LDR.N    R0,??DataTable18_3
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  111 }
//  112 
//  113 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function receiver
        THUMB
//  114 static void
//  115 receiver(struct simple_udp_connection *c,
//  116          const uip_ipaddr_t *sender_addr,
//  117          uint16_t sender_port,
//  118          const uip_ipaddr_t *receiver_addr,
//  119          uint16_t receiver_port,
//  120          const uint8_t *data,
//  121          uint16_t datalen)
//  122 {
receiver:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+12
          CFI CFA R13+24
        MOV      R5,R2
//  123   XPRINTF((10,"Data from"));
        ADR.W    R1,?_7
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  124   //PRINT6ADDR_U(sender_addr);
//  125   XPRINTF((10,"on port %d from port %d with length %d:  time %d\n",receiver_port, sender_port, datalen, clock_time( )));
          CFI FunCall clock_time
        BL       clock_time
        LDR      R4,[SP, #+32]
        LDR      R2,[SP, #+24]
        ADR.W    R1,?_8
        STR      R0,[SP, #+4]
        STR      R4,[SP, #+0]
        MOV      R3,R5
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  126   MEM_DUMP(7, "<-w", data, datalen);
        LDR      R2,[SP, #+28]
        MOV      R3,R4
        ADD      SP,SP,#+12
          CFI CFA R13+12
        POP      {R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.N    R1,??DataTable18_1  ;; "<-w"
        MOVS     R0,#+7
          CFI FunCall __xstd_dump
        B.W      __xstd_dump
          CFI EndBlock cfiBlock3
//  127   //app_3762_get_udp_data(data, datalen);
//  128 }
//  129 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function set_global_address
        THUMB
//  130 static uip_ipaddr_t *
//  131 set_global_address(void)
//  132 {
set_global_address:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  133   static uip_ipaddr_t ipaddr;
//  134   int i;
//  135   uint8_t state;
//  136 
//  137   uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
        LDR.N    R4,??DataTable18_4
//  138   uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
        LDR.N    R1,??DataTable18_5
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
//  139   uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
        MOVS     R2,#+1
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall uip_ds6_addr_add
        BL       uip_ds6_addr_add
//  140 
//  141   PRINTF("IPv6 addresses: ");
        ADR.W    R0,?_10
          CFI FunCall xprintf
        BL       xprintf
//  142   for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
        LDR.N    R5,??DataTable18_6
//  143     state = uip_ds6_if.addr_list[i].state;
        LDRB     R0,[R5, #+42]
//  144     if(uip_ds6_if.addr_list[i].isused &&
//  145        (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
        LDRB     R1,[R5, #+24]
        CBZ.N    R1,??set_global_address_0
        CMP      R0,#+0
        IT       NE 
        CMPNE    R0,#+1
        BNE.N    ??set_global_address_0
//  146       PRINT6ADDR_U(&uip_ds6_if.addr_list[i].ipaddr);
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
        ADR.W    R0,?_2
          CFI FunCall xprintf
        BL       xprintf
//  147       PRINTF("\n");
        ADR.N    R0,??DataTable18  ;; "\n"
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
        ADR.W    R0,?_2
          CFI FunCall xprintf
        BL       xprintf
        ADR.N    R0,??DataTable18  ;; "\n"
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
        ADR.W    R0,?_2
          CFI FunCall xprintf
        BL       xprintf
        ADR.N    R0,??DataTable18  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
//  148     }
//  149   }
//  150 
//  151   return &ipaddr;
??set_global_address_2:
        MOV      R0,R4
        ADD      SP,SP,#+52
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock4
//  152 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??ipaddr:
        DS8 16
//  153 /*---------------------------------------------------------------------------*/
//  154 static void
//  155 create_rpl_dag(uip_ipaddr_t *ipaddr)
//  156 {
//  157   struct uip_ds6_addr *root_if;
//  158 
//  159   root_if = uip_ds6_addr_lookup(ipaddr);
//  160   if(root_if != NULL) {
//  161     rpl_dag_t *dag;
//  162     uip_ipaddr_t prefix;
//  163     
//  164     rpl_set_root(RPL_DEFAULT_INSTANCE, ipaddr);
//  165     dag = rpl_get_any_dag();
//  166     uip_ip6addr(&prefix, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
//  167     rpl_set_prefix(dag, &prefix, 64);
//  168     XPRINTF((12, "created a new RPL dag\r\n"));
//  169   } else {
//  170     XPRINTF((12, "failed to create a new RPL DAG\n"));
//  171   }
//  172 }
//  173 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function process_thread_unicast_receiver_root
        THUMB
//  174 PROCESS_THREAD(unicast_receiver_root, ev, data)
//  175 {
process_thread_unicast_receiver_root:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOV      R4,R0
        SUB      SP,SP,#+20
          CFI CFA R13+32
//  176   uip_ipaddr_t *ipaddr;
//  177 
//  178   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_unicast_receiver_root_0
        CMP      R0,#+191
        BEQ.N    ??process_thread_unicast_receiver_root_1
        B.N      ??process_thread_unicast_receiver_root_2
//  179 
//  180   ipaddr = set_global_address();
??process_thread_unicast_receiver_root_0:
          CFI FunCall set_global_address
        BL       set_global_address
        MOV      R5,R0
//  181 
//  182   create_rpl_dag(ipaddr);
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
        CBZ.N    R0,??process_thread_unicast_receiver_root_3
        MOV      R1,R5
        MOVS     R0,#+30
          CFI FunCall rpl_set_root
        BL       rpl_set_root
          CFI FunCall rpl_get_any_dag
        BL       rpl_get_any_dag
        MOVW     R1,#+43690
        STRH     R1,[SP, #+0]
        MOVS     R2,#+64
        MOVS     R1,#+0
        STRH     R1,[SP, #+2]
        STR      R1,[SP, #+4]
        STR      R1,[SP, #+8]
        STR      R1,[SP, #+12]
        ADD      R1,SP,#+0
          CFI FunCall rpl_set_prefix
        BL       rpl_set_prefix
        ADR.W    R1,?_11
        B.N      ??process_thread_unicast_receiver_root_4
??process_thread_unicast_receiver_root_3:
        ADR.W    R1,?_12
??process_thread_unicast_receiver_root_4:
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  183 
//  184   prepare_mcast( );
        MOVW     R0,#+7935
        STRH     R0,[SP, #+4]
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
        STR      R0,[SP, #+8]
        STR      R0,[SP, #+12]
        MOV      R0,#+35072
        STRH     R0,[SP, #+16]
        MOVW     R0,#+52651
        STRH     R0,[SP, #+18]
        MOVS     R2,#+0
        LDR.N    R5,??DataTable18_2
        MOVW     R1,#+47371
        ADD      R0,SP,#+4
          CFI FunCall udp_new
        BL       udp_new
        STR      R0,[R5, #+0]
//  185 
//  186 #if 1
//  187   simple_udp_register(&unicast_connection, UDP_PORT,
//  188                       NULL, UDP_PORT, receiver);
        MOVW     R1,#+1234
        LDR.N    R0,??DataTable18_7
        STR      R0,[SP, #+0]
        MOV      R3,R1
        MOVS     R2,#+0
        ADDS     R0,R5,#+4
          CFI FunCall simple_udp_register
        BL       simple_udp_register
//  189 #endif
//  190   while(1) {
//  191     PROCESS_WAIT_EVENT();
??process_thread_unicast_receiver_root_1:
        MOVS     R0,#+191
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+20
          CFI CFA R13+12
        MOVS     R0,#+1
        POP      {R4,R5,PC}
          CFI CFA R13+32
//  192   }
//  193   PROCESS_END();
??process_thread_unicast_receiver_root_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+20
          CFI CFA R13+12
        MOVS     R0,#+3
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock5
//  194 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC8      "<-w"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     mcast_conn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     mcast_conn+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     ??ipaddr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     uip_lladdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     receiver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "Send to: "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
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

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "Joined multicast group "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 "Listening: "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_6:
        DC8 " local/remote port %u/%u\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_7:
        DC8 "Data from"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_8:
        DC8 "on port %d from port %d with length %d:  time %d\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_10:
        DC8 "IPv6 addresses: "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_11:
        DC8 "created a new RPL dag\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_12:
        DC8 "failed to create a new RPL DAG\012"

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
        DC8 "Unicast receiver root process"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_4:
        DC8 "\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_9:
        DC8 "<-w"

        END
//  195 /*---------------------------------------------------------------------------*/
// 
//    56 bytes in section .bss
//    16 bytes in section .data
//    38 bytes in section .rodata
// 1 486 bytes in section .text
// 
// 1 486 bytes of CODE  memory
//    38 bytes of CONST memory
//    72 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
