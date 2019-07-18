///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:45
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-nd6.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-nd6.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip-nd6.s
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
        EXTERN memcmp
        EXTERN stimer_set
        EXTERN uip_aligned_buf
        EXTERN uip_ds6_addr_lookup
        EXTERN uip_ds6_defrt_lookup
        EXTERN uip_ds6_defrt_rm
        EXTERN uip_ds6_if
        EXTERN uip_ds6_nbr_add
        EXTERN uip_ds6_nbr_get_ll
        EXTERN uip_ds6_nbr_lookup
        EXTERN uip_ds6_select_src
        EXTERN uip_ext_len
        EXTERN uip_icmp6_register_input_handler
        EXTERN uip_icmp6chksum
        EXTERN uip_len
        EXTERN uip_lladdr
        EXTERN uip_packetqueue_buf
        EXTERN uip_packetqueue_buflen
        EXTERN uip_packetqueue_free

        PUBLIC uip_nd6_init
        PUBLIC uip_nd6_ns_output
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-nd6.c
//    1 /*
//    2  * Copyright (C) 1995, 1996, 1997, and 1998 WIDE Project.
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
//   13  * 3. Neither the name of the project nor the names of its contributors
//   14  *    may be used to endorse or promote products derived from this software
//   15  *    without specific prior written permission.
//   16  *
//   17  * THIS SOFTWARE IS PROVIDED BY THE PROJECT AND CONTRIBUTORS ``AS IS'' AND
//   18  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   19  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   20  * ARE DISCLAIMED.  IN NO EVENT SHALL THE PROJECT OR CONTRIBUTORS BE LIABLE
//   21  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   22  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   23  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   24  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   25  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   26  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   27  * SUCH DAMAGE.
//   28  */
//   29 /*
//   30  * Copyright (c) 2006, Swedish Institute of Computer Science.
//   31  * All rights reserved.
//   32  *
//   33  * Redistribution and use in source and binary forms, with or without
//   34  * modification, are permitted provided that the following conditions
//   35  * are met:
//   36  * 1. Redistributions of source code must retain the above copyright
//   37  *   notice, this list of conditions and the following disclaimer.
//   38  * 2. Redistributions in binary form must reproduce the above copyright
//   39  *   notice, this list of conditions and the following disclaimer in the
//   40  *   documentation and/or other materials provided with the distribution.
//   41  * 3. Neither the name of the Institute nor the names of its contributors
//   42  *   may be used to endorse or promote products derived from this software
//   43  *   without specific prior written permission.
//   44  *
//   45  * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
//   46  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   47  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   48  * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
//   49  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   50  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   51  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   52  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   53  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   54  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   55  * SUCH DAMAGE.
//   56  *
//   57  */
//   58 
//   59 /**
//   60  * \addtogroup uip6
//   61  * @{
//   62  */
//   63 
//   64 /**
//   65  * \file
//   66  *    Neighbor discovery (RFC 4861)
//   67  * \author Mathilde Durvy <mdurvy@cisco.com>
//   68  * \author Julien Abeille <jabeille@cisco.com>
//   69  */
//   70 
//   71 #include <string.h>
//   72 #include "net/ipv6/uip-icmp6.h"
//   73 #include "net/ipv6/uip-nd6.h"
//   74 #include "net/ipv6/uip-ds6.h"
//   75 #include "net/ip/uip-nameserver.h"
//   76 #include "lib/random.h"
//   77 
//   78 /*------------------------------------------------------------------*/
//   79 #define DEBUG DEBUG_NONE
//   80 #include "net/ip/uip-debug.h"
//   81 
//   82 #if UIP_LOGGING
//   83 #include <stdio.h>
//   84 void uip_log(char *msg);
//   85 
//   86 #define UIP_LOG(m) uip_log(m)
//   87 #else
//   88 #define UIP_LOG(m)
//   89 #endif /* UIP_LOGGING == 1 */
//   90 
//   91 /*------------------------------------------------------------------*/
//   92 /** @{ */
//   93 /** \name Pointers to the header structures.
//   94  *  All pointers except UIP_IP_BUF depend on uip_ext_len, which at
//   95  *  packet reception, is the total length of the extension headers.
//   96  *  
//   97  *  The pointer to ND6 options header also depends on nd6_opt_offset,
//   98  *  which we set in each function.
//   99  *
//  100  *  Care should be taken when manipulating these buffers about the
//  101  *  value of these length variables
//  102  */
//  103 
//  104 #define UIP_IP_BUF                ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])  /**< Pointer to IP header */
//  105 #define UIP_ICMP_BUF            ((struct uip_icmp_hdr *)&uip_buf[uip_l2_l3_hdr_len])  /**< Pointer to ICMP header*/
//  106 /**@{  Pointers to messages just after icmp header */
//  107 #define UIP_ND6_RS_BUF            ((uip_nd6_rs *)&uip_buf[uip_l2_l3_icmp_hdr_len])
//  108 #define UIP_ND6_RA_BUF            ((uip_nd6_ra *)&uip_buf[uip_l2_l3_icmp_hdr_len])
//  109 #define UIP_ND6_NS_BUF            ((uip_nd6_ns *)&uip_buf[uip_l2_l3_icmp_hdr_len])
//  110 #define UIP_ND6_NA_BUF            ((uip_nd6_na *)&uip_buf[uip_l2_l3_icmp_hdr_len])
//  111 /** @} */
//  112 /** Pointer to ND option */
//  113 #define UIP_ND6_OPT_HDR_BUF  ((uip_nd6_opt_hdr *)&uip_buf[uip_l2_l3_icmp_hdr_len + nd6_opt_offset])
//  114 #define UIP_ND6_OPT_PREFIX_BUF ((uip_nd6_opt_prefix_info *)&uip_buf[uip_l2_l3_icmp_hdr_len + nd6_opt_offset])
//  115 #define UIP_ND6_OPT_MTU_BUF ((uip_nd6_opt_mtu *)&uip_buf[uip_l2_l3_icmp_hdr_len + nd6_opt_offset])
//  116 #define UIP_ND6_OPT_RDNSS_BUF ((uip_nd6_opt_dns *)&uip_buf[uip_l2_l3_icmp_hdr_len + nd6_opt_offset])
//  117 /** @} */
//  118 
//  119 #if UIP_ND6_SEND_NA || UIP_ND6_SEND_RA || !UIP_CONF_ROUTER

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  120 static uint8_t nd6_opt_offset;                     /** Offset from the end of the icmpv6 header to the option in uip_buf*/
nd6_opt_offset:
        DS8 1
        DS8 3
        DS8 4
        DS8 4
        DS8 4
//  121 static uint8_t *nd6_opt_llao;   /**  Pointer to llao option in uip_buf */
//  122 static uip_ds6_nbr_t *nbr; /**  Pointer to a nbr cache entry*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DS8 4
//  123 static uip_ds6_defrt_t *defrt; /**  Pointer to a router list entry */
//  124 static uip_ds6_addr_t *addr; /**  Pointer to an interface address */
//  125 #endif /* UIP_ND6_SEND_NA || UIP_ND6_SEND_RA || !UIP_CONF_ROUTER */
//  126 
//  127 #if !UIP_CONF_ROUTER            // TBD see if we move it to ra_input
//  128 static uip_nd6_opt_prefix_info *nd6_opt_prefix_info; /**  Pointer to prefix information option in uip_buf */
//  129 static uip_ipaddr_t ipaddr;
//  130 static uip_ds6_prefix_t *prefix; /**  Pointer to a prefix list entry */
//  131 #endif
//  132 
//  133 /*------------------------------------------------------------------*/
//  134 /* create a llao */ 
//  135 static void
//  136 create_llao(uint8_t *llao, uint8_t type) {
//  137   llao[UIP_ND6_OPT_TYPE_OFFSET] = type;
//  138   llao[UIP_ND6_OPT_LEN_OFFSET] = UIP_ND6_OPT_LLAO_LEN >> 3;
//  139   memcpy(&llao[UIP_ND6_OPT_DATA_OFFSET], &uip_lladdr, UIP_LLADDR_LEN);
//  140   /* padding on some */
//  141   memset(&llao[UIP_ND6_OPT_DATA_OFFSET + UIP_LLADDR_LEN], 0,
//  142          UIP_ND6_OPT_LLAO_LEN - 2 - UIP_LLADDR_LEN);
//  143 }
//  144 
//  145 /*------------------------------------------------------------------*/
//  146 
//  147 #if UIP_ND6_SEND_NA

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ns_input
        THUMB
//  148 static void
//  149 ns_input(void)
//  150 {
ns_input:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
//  151   uint8_t flags;
//  152   PRINTF("Received NS from ");
//  153   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  154   PRINTF(" to ");
//  155   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  156   PRINTF(" with target address");
//  157   PRINT6ADDR((uip_ipaddr_t *) (&UIP_ND6_NS_BUF->tgtipaddr));
//  158   PRINTF("\n");
//  159   UIP_STAT(++uip_stat.nd6.recv);
//  160 
//  161 #if UIP_CONF_IPV6_CHECKS
//  162   if((UIP_IP_BUF->ttl != UIP_ND6_HOP_LIMIT) ||
//  163      (uip_is_addr_mcast(&UIP_ND6_NS_BUF->tgtipaddr)) ||
//  164      (UIP_ICMP_BUF->icode != 0)) {
        LDR.W    R4,??DataTable3
        LDRB     R0,[R4, #+7]
        CMP      R0,#+255
        BNE.W    ??ns_input_0
        LDR.W    R5,??DataTable3_1
        LDRB     R0,[R5, #+0]
        ADDS     R0,R0,R4
        LDRB     R1,[R0, #+48]
        CMP      R1,#+255
        BEQ.W    ??ns_input_0
        LDRB     R0,[R0, #+41]
        CMP      R0,#+0
        BNE.W    ??ns_input_0
//  165     PRINTF("NS received is bad\n");
//  166     goto discard;
//  167   }
//  168 #endif /* UIP_CONF_IPV6_CHECKS */
//  169 
//  170   /* Options processing */
//  171   nd6_opt_llao = NULL;
        LDR.W    R7,??DataTable3_2
//  172   nd6_opt_offset = UIP_ND6_NS_LEN;
        LDR.W    R9,??DataTable3_3
        STR      R0,[R7, #+4]
        MOVS     R0,#+20
        STRB     R0,[R7, #+0]
        B.N      ??ns_input_1
//  173   while(uip_l3_icmp_hdr_len + nd6_opt_offset < uip_len) {
//  174 #if UIP_CONF_IPV6_CHECKS
//  175     if(UIP_ND6_OPT_HDR_BUF->len == 0) {
//  176       PRINTF("NS received is bad\n");
//  177       goto discard;
//  178     }
//  179 #endif /* UIP_CONF_IPV6_CHECKS */
//  180     switch (UIP_ND6_OPT_HDR_BUF->type) {
//  181     case UIP_ND6_OPT_SLLAO:
//  182       nd6_opt_llao = &uip_buf[uip_l2_l3_icmp_hdr_len + nd6_opt_offset];
//  183 #if UIP_CONF_IPV6_CHECKS
//  184       /* There must be NO option in a DAD NS */
//  185       if(uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) {
//  186         PRINTF("NS received is bad\n");
//  187         goto discard;
//  188       } else {
//  189 #endif /*UIP_CONF_IPV6_CHECKS */
//  190         nbr = uip_ds6_nbr_lookup(&UIP_IP_BUF->srcipaddr);
//  191         if(nbr == NULL) {
//  192           uip_ds6_nbr_add(&UIP_IP_BUF->srcipaddr,
//  193 			  (uip_lladdr_t *)&nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET],
//  194 			  0, NBR_STALE);
//  195         } else {
//  196           uip_lladdr_t *lladdr = (uip_lladdr_t *)uip_ds6_nbr_get_ll(nbr);
//  197           if(memcmp(&nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET],
//  198 		    lladdr, UIP_LLADDR_LEN) != 0) {
//  199             memcpy(lladdr, &nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET],
//  200 		   UIP_LLADDR_LEN);
//  201             nbr->state = NBR_STALE;
//  202           } else {
//  203             if(nbr->state == NBR_INCOMPLETE) {
??ns_input_2:
        LDR      R0,[R7, #+8]
        LDRB     R1,[R0, #+34]
        CBNZ.N   R1,??ns_input_3
//  204               nbr->state = NBR_STALE;
        MOVS     R1,#+2
        STRB     R1,[R0, #+34]
??ns_input_3:
        LDRB     R0,[R7, #+0]
        LDRB     R1,[R5, #+0]
        ADDS     R1,R0,R1
        ADDS     R1,R1,R4
        LDRB     R1,[R1, #+45]
        ADD      R0,R0,R1, LSL #+3
        STRB     R0,[R7, #+0]
??ns_input_1:
        LDRB     R0,[R5, #+0]
        LDRB     R1,[R7, #+0]
        LDRH     R3,[R9, #+0]
        ADDS     R1,R1,R0
        ADD      R2,R1,#+44
        CMP      R2,R3
        BGE.N    ??ns_input_4
//  205             }
//  206           }
//  207         }
//  208 #if UIP_CONF_IPV6_CHECKS
//  209       }
//  210 #endif /*UIP_CONF_IPV6_CHECKS */
//  211       break;
//  212     default:
//  213       PRINTF("ND option not supported in NS");
//  214       break;
//  215     }
//  216     nd6_opt_offset += (UIP_ND6_OPT_HDR_BUF->len << 3);
        ADDS     R0,R1,R4
        LDRB     R1,[R0, #+45]
        CMP      R1,#+0
        BEQ.W    ??ns_input_0
        LDRB     R1,[R0, #+44]
        CMP      R1,#+1
        BNE.N    ??ns_input_3
        ADDS     R0,R0,#+44
        STR      R0,[R7, #+4]
        LDRH     R0,[R4, #+8]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+10]
        CMPEQ    R0,#+0
        BNE.N    ??ns_input_5
        LDRH     R0,[R4, #+12]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+14]
        CMPEQ    R0,#+0
        BNE.N    ??ns_input_5
        LDRH     R0,[R4, #+16]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+18]
        CMPEQ    R0,#+0
        BNE.N    ??ns_input_5
        LDRH     R0,[R4, #+20]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+22]
        CMPEQ    R0,#+0
        BEQ.W    ??ns_input_0
??ns_input_5:
        ADD      R0,R4,#+8
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
        STR      R0,[R7, #+8]
        CBNZ.N   R0,??ns_input_6
        LDR      R0,[R7, #+4]
        ADDS     R1,R0,#+2
        MOVS     R3,#+2
        MOVS     R2,#+0
        ADD      R0,R4,#+8
          CFI FunCall uip_ds6_nbr_add
        BL       uip_ds6_nbr_add
        B.N      ??ns_input_3
??ns_input_6:
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        LDR      R6,[R7, #+4]
        MOV      R8,R0
        MOVS     R2,#+8
        MOV      R1,R8
        ADDS     R0,R6,#+2
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BEQ.N    ??ns_input_2
        MOVS     R2,#+8
        ADDS     R1,R6,#+2
        MOV      R0,R8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDR      R1,[R7, #+8]
        MOVS     R0,#+2
        STRB     R0,[R1, #+34]
        B.N      ??ns_input_3
//  217   }
//  218 
//  219   addr = uip_ds6_addr_lookup(&UIP_ND6_NS_BUF->tgtipaddr);
??ns_input_4:
        ADDS     R0,R0,R4
        ADDS     R0,R0,#+48
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
//  220   if(addr != NULL) {
        CMP      R0,#+0
        STR      R0,[R7, #+12]
        BEQ.W    ??ns_input_0
//  221 #if UIP_ND6_DEF_MAXDADNS > 0
//  222     if(uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) {
//  223       /* DAD CASE */
//  224 #if UIP_CONF_IPV6_CHECKS
//  225       if(!uip_is_addr_solicited_node(&UIP_IP_BUF->destipaddr)) {
//  226         PRINTF("NS received is bad\n");
//  227         goto discard;
//  228       }
//  229 #endif /* UIP_CONF_IPV6_CHECKS */
//  230       if(addr->state != ADDR_TENTATIVE) {
//  231         uip_create_linklocal_allnodes_mcast(&UIP_IP_BUF->destipaddr);
//  232         uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
//  233         flags = UIP_ND6_NA_FLAG_OVERRIDE;
//  234         goto create_na;
//  235       } else {
//  236           /** \todo if I sent a NS before him, I win */
//  237         uip_ds6_dad_failed(addr);
//  238         goto discard;
//  239       }
//  240 #else /* UIP_ND6_DEF_MAXDADNS > 0 */
//  241     if(uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) {
        LDRH     R0,[R4, #+8]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+10]
        CMPEQ    R0,#+0
        BNE.N    ??ns_input_7
        LDRH     R0,[R4, #+12]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+14]
        CMPEQ    R0,#+0
        BNE.N    ??ns_input_7
        LDRH     R0,[R4, #+16]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+18]
        CMPEQ    R0,#+0
        BNE.N    ??ns_input_7
        LDRH     R0,[R4, #+20]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+22]
        CMPEQ    R0,#+0
        BEQ.N    ??ns_input_0
//  242       /* DAD CASE */
//  243       goto discard;
//  244 #endif /* UIP_ND6_DEF_MAXDADNS > 0 */
//  245     }
//  246 #if UIP_CONF_IPV6_CHECKS
//  247     if(uip_ds6_is_my_addr(&UIP_IP_BUF->srcipaddr)) {
??ns_input_7:
        ADD      R0,R4,#+8
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
        CMP      R0,#+0
        BNE.N    ??ns_input_0
//  248         /**
//  249          * \NOTE do we do something here? we both are using the same address.
//  250          * If we are doing dad, we could cancel it, though we should receive a
//  251          * NA in response of DAD NS we sent, hence DAD will fail anyway. If we
//  252          * were not doing DAD, it means there is a duplicate in the network!
//  253          */
//  254       PRINTF("NS received is bad\n");
//  255       goto discard;
//  256     }
//  257 #endif /*UIP_CONF_IPV6_CHECKS */
//  258 
//  259     /* Address resolution case */
//  260     if(uip_is_addr_solicited_node(&UIP_IP_BUF->destipaddr)) {
        LDRB     R0,[R4, #+24]
        CMP      R0,#+255
        ITT      EQ 
        LDRBEQ   R0,[R4, #+25]
        CMPEQ    R0,#+2
        BNE.N    ??ns_input_8
        LDRH     R0,[R4, #+26]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+28]
        CMPEQ    R0,#+0
        BNE.N    ??ns_input_8
        LDRH     R0,[R4, #+30]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R4, #+32]
        CMPEQ    R0,#+0
        BNE.N    ??ns_input_8
        LDRB     R0,[R4, #+34]
        CMP      R0,#+0
        ITTTT    EQ 
        LDRBEQ   R0,[R4, #+35]
        CMPEQ    R0,#+1
        LDRBEQ   R0,[R4, #+36]
        CMPEQ    R0,#+255
        BEQ.N    ??ns_input_9
//  261       uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &UIP_IP_BUF->srcipaddr);
//  262       uip_ipaddr_copy(&UIP_IP_BUF->srcipaddr, &UIP_ND6_NS_BUF->tgtipaddr);
//  263       flags = UIP_ND6_NA_FLAG_SOLICITED | UIP_ND6_NA_FLAG_OVERRIDE;
//  264       goto create_na;
//  265     }
//  266 
//  267     /* NUD CASE */
//  268     if(uip_ds6_addr_lookup(&UIP_IP_BUF->destipaddr) == addr) {
??ns_input_8:
        ADD      R0,R4,#+24
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
        LDR      R1,[R7, #+12]
        CMP      R0,R1
        BNE.N    ??ns_input_0
//  269       uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &UIP_IP_BUF->srcipaddr);
??ns_input_9:
        ADD      R0,R4,#+24
        ADD      R1,R4,#+8
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  270       uip_ipaddr_copy(&UIP_IP_BUF->srcipaddr, &UIP_ND6_NS_BUF->tgtipaddr);
        LDRB     R1,[R5, #+0]
        ADDS     R1,R1,R4
        ADD      R0,R4,#+8
        ADDS     R1,R1,#+48
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  271       flags = UIP_ND6_NA_FLAG_SOLICITED | UIP_ND6_NA_FLAG_OVERRIDE;
//  272       goto create_na;
//  273     } else {
//  274 #if UIP_CONF_IPV6_CHECKS
//  275       PRINTF("NS received is bad\n");
//  276       goto discard;
//  277 #endif /* UIP_CONF_IPV6_CHECKS */
//  278     }
//  279   } else {
//  280     goto discard;
//  281   }
//  282 
//  283 
//  284 create_na:
//  285     /* If the node is a router it should set R flag in NAs */
//  286 #if UIP_CONF_ROUTER
//  287     flags = flags | UIP_ND6_NA_FLAG_ROUTER;
//  288 #endif
//  289   uip_ext_len = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
//  290   UIP_IP_BUF->vtc = 0x60;
//  291   UIP_IP_BUF->tcflow = 0;
//  292   UIP_IP_BUF->flow = 0;
//  293   UIP_IP_BUF->len[0] = 0;       /* length will not be more than 255 */
//  294   UIP_IP_BUF->len[1] = UIP_ICMPH_LEN + UIP_ND6_NA_LEN + UIP_ND6_OPT_LLAO_LEN;
//  295   UIP_IP_BUF->proto = UIP_PROTO_ICMP6;
//  296   UIP_IP_BUF->ttl = UIP_ND6_HOP_LIMIT;
//  297 
//  298   UIP_ICMP_BUF->type = ICMP6_NA;
//  299   UIP_ICMP_BUF->icode = 0;
//  300 
//  301   UIP_ND6_NA_BUF->flagsreserved = flags;
//  302   memcpy(&UIP_ND6_NA_BUF->tgtipaddr, &addr->ipaddr, sizeof(uip_ipaddr_t));
        MOVS     R2,#+16
        MOVS     R0,#+96
        STRB     R0,[R4, #+0]
        MOVS     R0,#+0
        STRB     R0,[R4, #+1]
        STRH     R0,[R4, #+2]
        STRB     R0,[R4, #+4]
        MOVS     R0,#+40
        STRB     R0,[R4, #+5]
        MOVS     R0,#+58
        STRB     R0,[R4, #+6]
        MOVS     R0,#+255
        STRB     R0,[R4, #+7]
        MOVS     R0,#+136
        STRB     R0,[R4, #+40]
        MOVS     R0,#+0
        STRB     R0,[R4, #+41]
        MOVS     R0,#+224
        STRB     R0,[R4, #+44]
        LDR      R0,[R7, #+12]
        ADDS     R1,R0,#+2
        ADD      R0,R4,#+48
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  303 
//  304   create_llao(&uip_buf[uip_l2_l3_icmp_hdr_len + UIP_ND6_NA_LEN],
//  305               UIP_ND6_OPT_TLLAO);
        LDRB     R0,[R5, #+0]
        LDR.N    R1,??DataTable3_4
        ADDS     R0,R0,R4
        ADD      R7,R0,#+64
        MOVS     R0,#+2
        STRB     R0,[R7, #+0]
        STRB     R0,[R7, #+1]
        MOVS     R2,#+8
        ADDS     R0,R7,#+2
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R1,#+6
        ADD      R0,R7,#+10
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  306 
//  307   UIP_ICMP_BUF->icmpchksum = 0;
        LDRB     R1,[R5, #+0]
        ADDS     R1,R1,R4
        MOVS     R0,#+0
        STRH     R0,[R1, #+42]
//  308   UIP_ICMP_BUF->icmpchksum = ~uip_icmp6chksum();
          CFI FunCall uip_icmp6chksum
        BL       uip_icmp6chksum
        MVNS     R0,R0
        LDRB     R1,[R5, #+0]
        ADDS     R1,R1,R4
        STRH     R0,[R1, #+42]
//  309 
//  310   uip_len =
//  311     UIP_IPH_LEN + UIP_ICMPH_LEN + UIP_ND6_NA_LEN + UIP_ND6_OPT_LLAO_LEN;
        MOVS     R0,#+80
        STRH     R0,[R9, #+0]
//  312 
//  313   UIP_STAT(++uip_stat.nd6.sent);
//  314   PRINTF("Sending NA to ");
//  315   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  316   PRINTF(" from ");
//  317   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  318   PRINTF(" with target address ");
//  319   PRINT6ADDR(&UIP_ND6_NA_BUF->tgtipaddr);
//  320   PRINTF("\n");
//  321   return;
//  322 
//  323 discard:
//  324   uip_len = 0;
//  325   return;
        POP      {R0,R4-R9,PC}
??ns_input_0:
        LDR.N    R1,??DataTable3_3
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock0
//  326 }
//  327 #endif /* UIP_ND6_SEND_NA */
//  328 
//  329 
//  330 /*------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function uip_nd6_ns_output
        THUMB
//  331 void
//  332 uip_nd6_ns_output(uip_ipaddr_t * src, uip_ipaddr_t * dest, uip_ipaddr_t * tgt)
//  333 {
uip_nd6_ns_output:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R6,R0
//  334   uip_ext_len = 0;
        LDR.N    R4,??DataTable3_1
//  335   UIP_IP_BUF->vtc = 0x60;
        LDR.N    R5,??DataTable3
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
        MOV      R7,R2
        MOVS     R0,#+96
        STRB     R0,[R5, #+0]
//  336   UIP_IP_BUF->tcflow = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+1]
//  337   UIP_IP_BUF->flow = 0;
        STRH     R0,[R5, #+2]
//  338   UIP_IP_BUF->proto = UIP_PROTO_ICMP6;
        MOVS     R0,#+58
        STRB     R0,[R5, #+6]
//  339   UIP_IP_BUF->ttl = UIP_ND6_HOP_LIMIT;
        MOVS     R0,#+255
        STRB     R0,[R5, #+7]
//  340 
//  341   if(dest == NULL) {
        CBNZ.N   R1,??uip_nd6_ns_output_0
//  342     uip_create_solicited_node(tgt, &UIP_IP_BUF->destipaddr);
        MOVS     R1,#+2
        STRB     R1,[R5, #+25]
        STRB     R0,[R5, #+24]
        MOVS     R1,#+0
        STRH     R1,[R5, #+26]
        STR      R1,[R5, #+28]
        STRH     R1,[R5, #+32]
        STRB     R1,[R5, #+34]
        STRB     R0,[R5, #+36]
        MOVS     R1,#+1
        STRB     R1,[R5, #+35]
        LDRB     R0,[R7, #+13]
        STRB     R0,[R5, #+37]
        LDRH     R0,[R7, #+14]
        STRH     R0,[R5, #+38]
        B.N      ??uip_nd6_ns_output_1
//  343   } else {
//  344     uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, dest);
??uip_nd6_ns_output_0:
        ADD      R0,R5,#+24
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  345   }
//  346   UIP_ICMP_BUF->type = ICMP6_NS;
??uip_nd6_ns_output_1:
        MOVS     R0,#+135
        STRB     R0,[R5, #+40]
//  347   UIP_ICMP_BUF->icode = 0;
//  348   UIP_ND6_NS_BUF->reserved = 0;
//  349   uip_ipaddr_copy((uip_ipaddr_t *) &UIP_ND6_NS_BUF->tgtipaddr, tgt);
        MOV      R1,R7
        MOVS     R0,#+0
        STRB     R0,[R5, #+41]
        STR      R0,[R5, #+44]
        MOVS     R2,#+16
        ADD      R0,R5,#+48
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  350   UIP_IP_BUF->len[0] = 0;       /* length will not be more than 255 */
        MOVS     R0,#+0
        STRB     R0,[R5, #+4]
//  351   /*
//  352    * check if we add a SLLAO option: for DAD, MUST NOT, for NUD, MAY
//  353    * (here yes), for Address resolution , MUST 
//  354    */
//  355   if(!(uip_ds6_is_my_addr(tgt))) {
        MOV      R0,R7
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
        CMP      R0,#+0
        BNE.N    ??uip_nd6_ns_output_2
//  356     if(src != NULL) {
        CBZ.N    R6,??uip_nd6_ns_output_3
//  357       uip_ipaddr_copy(&UIP_IP_BUF->srcipaddr, src);
        ADD      R0,R5,#+8
        MOV      R1,R6
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        B.N      ??uip_nd6_ns_output_4
//  358     } else {
//  359       uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
??uip_nd6_ns_output_3:
        ADD      R1,R5,#+24
        ADD      R0,R5,#+8
          CFI FunCall uip_ds6_select_src
        BL       uip_ds6_select_src
//  360     }
//  361     if (uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) {
??uip_nd6_ns_output_4:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+10]
        CMPEQ    R0,#+0
        BNE.N    ??uip_nd6_ns_output_5
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+14]
        CMPEQ    R0,#+0
        BNE.N    ??uip_nd6_ns_output_5
        LDRH     R0,[R5, #+16]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+18]
        CMPEQ    R0,#+0
        BNE.N    ??uip_nd6_ns_output_5
        LDRH     R0,[R5, #+20]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+22]
        CMPEQ    R0,#+0
        BNE.N    ??uip_nd6_ns_output_5
//  362       PRINTF("Dropping NS due to no suitable source address\n");
//  363       uip_len = 0;
        LDR.N    R1,??DataTable3_3
        STRH     R0,[R1, #+0]
//  364       return;
        POP      {R0,R4-R7,PC}
//  365     }
//  366     UIP_IP_BUF->len[1] =
//  367       UIP_ICMPH_LEN + UIP_ND6_NS_LEN + UIP_ND6_OPT_LLAO_LEN;
??uip_nd6_ns_output_5:
        MOVS     R0,#+40
        STRB     R0,[R5, #+5]
//  368 
//  369     create_llao(&uip_buf[uip_l2_l3_icmp_hdr_len + UIP_ND6_NS_LEN],
//  370 		UIP_ND6_OPT_SLLAO);
        MOVS     R2,#+8
        LDRB     R0,[R4, #+0]
        LDR.N    R1,??DataTable3_4
        ADDS     R0,R0,R5
        ADD      R6,R0,#+64
        MOVS     R0,#+1
        STRB     R0,[R6, #+0]
        MOVS     R0,#+2
        STRB     R0,[R6, #+1]
        ADDS     R0,R6,#+2
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R1,#+6
        ADD      R0,R6,#+10
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  371 
//  372     uip_len =
//  373       UIP_IPH_LEN + UIP_ICMPH_LEN + UIP_ND6_NS_LEN + UIP_ND6_OPT_LLAO_LEN;
        MOVS     R0,#+80
        B.N      ??uip_nd6_ns_output_6
//  374   } else {
//  375     uip_create_unspecified(&UIP_IP_BUF->srcipaddr);
??uip_nd6_ns_output_2:
        MOVS     R0,#+0
        STR      R0,[R5, #+8]
        STR      R0,[R5, #+12]
        STR      R0,[R5, #+16]
        STR      R0,[R5, #+20]
//  376     UIP_IP_BUF->len[1] = UIP_ICMPH_LEN + UIP_ND6_NS_LEN;
        MOVS     R0,#+24
        STRB     R0,[R5, #+5]
//  377     uip_len = UIP_IPH_LEN + UIP_ICMPH_LEN + UIP_ND6_NS_LEN;
        MOVS     R0,#+64
??uip_nd6_ns_output_6:
        LDR.N    R1,??DataTable3_3
        STRH     R0,[R1, #+0]
//  378   }
//  379 
//  380   UIP_ICMP_BUF->icmpchksum = 0;
        MOVS     R0,#+0
        LDRB     R1,[R4, #+0]
        ADDS     R1,R1,R5
        STRH     R0,[R1, #+42]
//  381   UIP_ICMP_BUF->icmpchksum = ~uip_icmp6chksum();
          CFI FunCall uip_icmp6chksum
        BL       uip_icmp6chksum
        MVNS     R0,R0
        LDRB     R1,[R4, #+0]
        ADDS     R1,R1,R5
        STRH     R0,[R1, #+42]
//  382 
//  383   UIP_STAT(++uip_stat.nd6.sent);
//  384   PRINTF("Sending NS to");
//  385   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  386   PRINTF("from");
//  387   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  388   PRINTF("with target address");
//  389   PRINT6ADDR(tgt);
//  390   PRINTF("\n");
//  391   return;
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock1
//  392 }
//  393 #if UIP_ND6_SEND_NA
//  394 /*------------------------------------------------------------------*/
//  395 /**
//  396  * Neighbor Advertisement Processing
//  397  *
//  398  * we might have to send a pkt that had been buffered while address
//  399  * resolution was performed (if we support buffering, see UIP_CONF_QUEUE_PKT)
//  400  *
//  401  * As per RFC 4861, on link layer that have addresses, TLLAO options MUST be
//  402  * included when responding to multicast solicitations, SHOULD be included in
//  403  * response to unicast (here we assume it is for now)
//  404  *
//  405  * NA can be received after sending NS for DAD, Address resolution or NUD. Can
//  406  * be unsolicited as well.
//  407  * It can trigger update of the state of the neighbor in the neighbor cache,
//  408  * router in the router list.
//  409  * If the NS was for DAD, it means DAD failed
//  410  *
//  411  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function na_input
        THUMB
//  412 static void
//  413 na_input(void)
//  414 {
na_input:
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
//  415   uint8_t is_llchange;
//  416   uint8_t is_router;
//  417   uint8_t is_solicited;
//  418   uint8_t is_override;
//  419 
//  420   PRINTF("Received NA from");
//  421   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  422   PRINTF("to");
//  423   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  424   PRINTF("with target address");
//  425   PRINT6ADDR((uip_ipaddr_t *) (&UIP_ND6_NA_BUF->tgtipaddr));
//  426   PRINTF("\n");
//  427   UIP_STAT(++uip_stat.nd6.recv);
//  428 
//  429   /* 
//  430    * booleans. the three last one are not 0 or 1 but 0 or 0x80, 0x40, 0x20
//  431    * but it works. Be careful though, do not use tests such as is_router == 1 
//  432    */
//  433   is_llchange = 0;
//  434   is_router = ((UIP_ND6_NA_BUF->flagsreserved & UIP_ND6_NA_FLAG_ROUTER));
        LDR.N    R7,??DataTable3_1
        LDR.N    R4,??DataTable3
        SUB      SP,SP,#+12
          CFI CFA R13+48
        LDRB     R0,[R7, #+0]
        ADDS     R1,R0,R4
        MOVS     R5,#+0
        LDRB     R2,[R1, #+44]
        AND      R3,R2,#0x80
//  435   is_solicited =
//  436     ((UIP_ND6_NA_BUF->flagsreserved & UIP_ND6_NA_FLAG_SOLICITED));
        AND      R11,R2,#0x40
//  437   is_override =
//  438     ((UIP_ND6_NA_BUF->flagsreserved & UIP_ND6_NA_FLAG_OVERRIDE));
        AND      R2,R2,#0x20
        STR      R2,[SP, #+4]
        STRB     R3,[SP, #+0]
//  439 
//  440 #if UIP_CONF_IPV6_CHECKS
//  441   if((UIP_IP_BUF->ttl != UIP_ND6_HOP_LIMIT) ||
//  442      (UIP_ICMP_BUF->icode != 0) ||
//  443      (uip_is_addr_mcast(&UIP_ND6_NA_BUF->tgtipaddr)) ||
//  444      (is_solicited && uip_is_addr_mcast(&UIP_IP_BUF->destipaddr))) {
        LDRB     R2,[R4, #+7]
        CMP      R2,#+255
        ITT      EQ 
        LDRBEQ   R2,[R1, #+41]
        CMPEQ    R2,#+0
        BNE.N    ??na_input_0
        LDRB     R2,[R1, #+48]
        CMP      R2,#+255
        BEQ.N    ??na_input_0
        CMP      R11,#+0
        BEQ.N    ??na_input_1
        LDRB     R2,[R4, #+24]
        CMP      R2,#+255
        BEQ.N    ??na_input_0
//  445     PRINTF("NA received is bad\n");
//  446     goto discard;
//  447   }
//  448 #endif /*UIP_CONF_IPV6_CHECKS */
//  449 
//  450   /* Options processing: we handle TLLAO, and must ignore others */
//  451   nd6_opt_offset = UIP_ND6_NA_LEN;
??na_input_1:
        LDR.N    R6,??DataTable3_2
//  452   nd6_opt_llao = NULL;
        LDR.W    R9,??DataTable3_3
        MOVS     R2,#+20
        STRB     R2,[R6, #+0]
        STR      R5,[R6, #+4]
        LDRH     R3,[R9, #+0]
        B.N      ??na_input_2
//  453   while(uip_l3_icmp_hdr_len + nd6_opt_offset < uip_len) {
//  454 #if UIP_CONF_IPV6_CHECKS
//  455     if(UIP_ND6_OPT_HDR_BUF->len == 0) {
??na_input_3:
        ADD      R12,R12,R4
        LDRB     LR,[R12, #+45]
        CMP      LR,#+0
        BEQ.N    ??na_input_0
//  456       PRINTF("NA received is bad\n");
//  457       goto discard;
//  458     }
//  459 #endif /*UIP_CONF_IPV6_CHECKS */
//  460     switch (UIP_ND6_OPT_HDR_BUF->type) {
        LDRB     LR,[R12, #+44]
        CMP      LR,#+2
        ITT      EQ 
        ADDEQ    LR,R12,#+44
        STREQ    LR,[R6, #+4]
//  461     case UIP_ND6_OPT_TLLAO:
//  462       nd6_opt_llao = (uint8_t *)UIP_ND6_OPT_HDR_BUF;
//  463       break;
//  464     default:
//  465       PRINTF("ND option not supported in NA\n");
//  466       break;
//  467     }
//  468     nd6_opt_offset += (UIP_ND6_OPT_HDR_BUF->len << 3);
        LDRB     R12,[R12, #+45]
        ADD      R2,R2,R12, LSL #+3
        STRB     R2,[R6, #+0]
??na_input_2:
        LDRB     R2,[R6, #+0]
        ADD      R12,R2,R0
        ADD      LR,R12,#+44
        CMP      LR,R3
        BLT.N    ??na_input_3
//  469   }
//  470   addr = uip_ds6_addr_lookup(&UIP_ND6_NA_BUF->tgtipaddr);
        ADD      R0,R1,#+48
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
//  471   /* Message processing, including TLLAO if any */
//  472   if(addr != NULL) {
        CMP      R0,#+0
        STR      R0,[R6, #+12]
        BNE.N    ??na_input_0
//  473 #if UIP_ND6_DEF_MAXDADNS > 0
//  474     if(addr->state == ADDR_TENTATIVE) {
//  475       uip_ds6_dad_failed(addr);
//  476     }
//  477 #endif /*UIP_ND6_DEF_MAXDADNS > 0 */
//  478     PRINTF("NA received is bad\n");
//  479     goto discard;
//  480   } else {
//  481     uip_lladdr_t *lladdr;
//  482     nbr = uip_ds6_nbr_lookup(&UIP_ND6_NA_BUF->tgtipaddr);
        LDRB     R0,[R7, #+0]
        ADDS     R0,R0,R4
        ADDS     R0,R0,#+48
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
        STR      R0,[R6, #+8]
//  483     lladdr = (uip_lladdr_t *)uip_ds6_nbr_get_ll(nbr);
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
//  484     if(nbr == NULL) {
        LDR      R10,[R6, #+8]
        CMP      R10,#+0
        MOV      R8,R0
        BEQ.N    ??na_input_0
//  485       goto discard;
//  486     }
//  487     if(nd6_opt_llao != 0) {
        LDR      R7,[R6, #+4]
        CBZ.N    R7,??na_input_4
//  488       is_llchange =
//  489         memcmp(&nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET], (void *)lladdr,
//  490                UIP_LLADDR_LEN);
        MOVS     R2,#+8
        MOV      R1,R8
        ADDS     R0,R7,#+2
          CFI FunCall memcmp
        BL       memcmp
        UXTB     R5,R0
//  491     }
//  492     if(nbr->state == NBR_INCOMPLETE) {
??na_input_4:
        LDRB     R0,[R10, #+34]
        CBNZ.N   R0,??na_input_5
//  493       if(nd6_opt_llao == NULL) {
        CBZ.N    R7,??na_input_0
//  494         goto discard;
//  495       }
//  496       memcpy(lladdr, &nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET],
//  497 	     UIP_LLADDR_LEN);
        MOVS     R2,#+8
        ADDS     R1,R7,#+2
        MOV      R0,R8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  498       if(is_solicited) {
        LDR      R0,[R6, #+8]
        CMP      R11,#+0
        ADD      R1,R0,#+32
        BEQ.N    ??na_input_6
//  499         nbr->state = NBR_REACHABLE;
        MOVS     R2,#+1
        STRB     R2,[R1, #+2]
//  500         nbr->nscount = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
//  501 
//  502         /* reachable time is stored in ms */
//  503         stimer_set(&(nbr->reachable), uip_ds6_if.reachable_time / 1000);
        MOV      R2,#+1000
        LDR.N    R1,??DataTable3_5
        LDR      R1,[R1, #+12]
        UDIV     R1,R1,R2
        ADDS     R0,R0,#+16
          CFI FunCall stimer_set
        BL       stimer_set
        B.N      ??na_input_7
//  504 
//  505       } else {
//  506         nbr->state = NBR_STALE;
??na_input_6:
        MOVS     R0,#+2
        STRB     R0,[R1, #+2]
        B.N      ??na_input_7
//  507       }
//  508       nbr->isrouter = is_router;
//  509     } else {
//  510       if(!is_override && is_llchange) {
??na_input_5:
        LDR      R1,[SP, #+4]
        CBNZ.N   R1,??na_input_8
        CBZ.N    R5,??na_input_8
//  511         if(nbr->state == NBR_REACHABLE) {
        CMP      R0,#+1
        ITT      EQ 
        MOVEQ    R0,#+2
        STRBEQ   R0,[R10, #+34]
//  512           nbr->state = NBR_STALE;
//  513         }
//  514         goto discard;
//  515       } else {
//  516         if(is_override || (!is_override && nd6_opt_llao != 0 && !is_llchange)
//  517            || nd6_opt_llao == 0) {
//  518           if(nd6_opt_llao != 0) {
//  519             memcpy(lladdr, &nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET],
//  520 		   UIP_LLADDR_LEN);
//  521           }
//  522           if(is_solicited) {
//  523             nbr->state = NBR_REACHABLE;
//  524             /* reachable time is stored in ms */
//  525             stimer_set(&(nbr->reachable), uip_ds6_if.reachable_time / 1000);
//  526           } else {
//  527             if(nd6_opt_llao != 0 && is_llchange) {
//  528               nbr->state = NBR_STALE;
//  529             }
//  530           }
//  531         }
//  532       }
//  533       if(nbr->isrouter && !is_router) {
//  534         defrt = uip_ds6_defrt_lookup(&UIP_IP_BUF->srcipaddr);
//  535         if(defrt != NULL) {
//  536           uip_ds6_defrt_rm(defrt);
//  537         }
//  538       }
//  539       nbr->isrouter = is_router;
//  540     }
//  541   }
//  542 #if UIP_CONF_IPV6_QUEUE_PKT
//  543   /* The nbr is now reachable, check if we had buffered a pkt for it */
//  544   /*if(nbr->queue_buf_len != 0) {
//  545     uip_len = nbr->queue_buf_len;
//  546     memcpy(UIP_IP_BUF, nbr->queue_buf, uip_len);
//  547     nbr->queue_buf_len = 0;
//  548     return;
//  549     }*/
//  550   if(uip_packetqueue_buflen(&nbr->packethandle) != 0) {
//  551     uip_len = uip_packetqueue_buflen(&nbr->packethandle);
//  552     memcpy(UIP_IP_BUF, uip_packetqueue_buf(&nbr->packethandle), uip_len);
//  553     uip_packetqueue_free(&nbr->packethandle);
//  554     return;
//  555   }
//  556   
//  557 #endif /*UIP_CONF_IPV6_QUEUE_PKT */
//  558 
//  559 discard:
//  560   uip_len = 0;
??na_input_0:
        LDR.N    R1,??DataTable3_3
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
//  561   return;
        ADD      SP,SP,#+12
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI CFA R13+48
??na_input_8:
        CBZ.N    R7,??na_input_9
        MOVS     R2,#+8
        ADDS     R1,R7,#+2
        MOV      R0,R8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
??na_input_9:
        CMP      R11,#+0
        BEQ.N    ??na_input_10
        LDR      R0,[R6, #+8]
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
        MOV      R2,#+1000
        LDR.N    R1,??DataTable3_5
        LDR      R1,[R1, #+12]
        UDIV     R1,R1,R2
        ADDS     R0,R0,#+16
          CFI FunCall stimer_set
        BL       stimer_set
        B.N      ??na_input_11
??na_input_10:
        LDR      R0,[R6, #+4]
        CMP      R0,#+0
        IT       NE 
        CMPNE    R5,#+0
        BEQ.N    ??na_input_11
        LDR      R1,[R6, #+8]
        MOVS     R0,#+2
        STRB     R0,[R1, #+34]
??na_input_11:
        LDR      R0,[R6, #+8]
        LDRB     R0,[R0, #+33]
        CBZ.N    R0,??na_input_7
        LDRB     R0,[SP, #+0]
        CBNZ.N   R0,??na_input_7
        ADD      R0,R4,#+8
          CFI FunCall uip_ds6_defrt_lookup
        BL       uip_ds6_defrt_lookup
        CBZ.N    R0,??na_input_7
          CFI FunCall uip_ds6_defrt_rm
        BL       uip_ds6_defrt_rm
??na_input_7:
        LDR      R0,[R6, #+8]
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+33]
        ADDS     R0,R0,#+40
          CFI FunCall uip_packetqueue_buflen
        BL       uip_packetqueue_buflen
        CMP      R0,#+0
        BEQ.N    ??na_input_0
        LDR      R0,[R6, #+8]
        ADDS     R0,R0,#+40
          CFI FunCall uip_packetqueue_buflen
        BL       uip_packetqueue_buflen
        STRH     R0,[R9, #+0]
        LDR      R0,[R6, #+8]
        ADDS     R0,R0,#+40
          CFI FunCall uip_packetqueue_buf
        BL       uip_packetqueue_buf
        MOV      R1,R0
        LDRH     R2,[R9, #+0]
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDR      R0,[R6, #+8]
        ADD      SP,SP,#+12
          CFI CFA R13+36
        POP      {R4-R11,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADDS     R0,R0,#+40
          CFI FunCall uip_packetqueue_free
        B.W      uip_packetqueue_free
          CFI EndBlock cfiBlock2
//  562 }
//  563 #endif /* UIP_ND6_SEND_NA */
//  564 
//  565 #if UIP_CONF_ROUTER
//  566 #if UIP_ND6_SEND_RA
//  567 /*---------------------------------------------------------------------------*/
//  568 static void
//  569 rs_input(void)
//  570 {
//  571 
//  572   PRINTF("Received RS from");
//  573   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  574   PRINTF("to");
//  575   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  576   PRINTF("\n");
//  577   UIP_STAT(++uip_stat.nd6.recv);
//  578 
//  579 
//  580 #if UIP_CONF_IPV6_CHECKS
//  581   /*
//  582    * Check hop limit / icmp code 
//  583    * target address must not be multicast
//  584    * if the NA is solicited, dest must not be multicast
//  585    */
//  586   if((UIP_IP_BUF->ttl != UIP_ND6_HOP_LIMIT) || (UIP_ICMP_BUF->icode != 0)) {
//  587     PRINTF("RS received is bad\n");
//  588     goto discard;
//  589   }
//  590 #endif /*UIP_CONF_IPV6_CHECKS */
//  591 
//  592   /* Only valid option is Source Link-Layer Address option any thing
//  593      else is discarded */
//  594   nd6_opt_offset = UIP_ND6_RS_LEN;
//  595   nd6_opt_llao = NULL;
//  596 
//  597   while(uip_l3_icmp_hdr_len + nd6_opt_offset < uip_len) {
//  598 #if UIP_CONF_IPV6_CHECKS
//  599     if(UIP_ND6_OPT_HDR_BUF->len == 0) {
//  600       PRINTF("RS received is bad\n");
//  601       goto discard;
//  602     }
//  603 #endif /*UIP_CONF_IPV6_CHECKS */
//  604     switch (UIP_ND6_OPT_HDR_BUF->type) {
//  605     case UIP_ND6_OPT_SLLAO:
//  606       nd6_opt_llao = (uint8_t *)UIP_ND6_OPT_HDR_BUF;
//  607       break;
//  608     default:
//  609       PRINTF("ND option not supported in RS\n");
//  610       break;
//  611     }
//  612     nd6_opt_offset += (UIP_ND6_OPT_HDR_BUF->len << 3);
//  613   }
//  614   /* Options processing: only SLLAO */
//  615   if(nd6_opt_llao != NULL) {
//  616 #if UIP_CONF_IPV6_CHECKS
//  617     if(uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) {
//  618       PRINTF("RS received is bad\n");
//  619       goto discard;
//  620     } else {
//  621 #endif /*UIP_CONF_IPV6_CHECKS */
//  622       if((nbr = uip_ds6_nbr_lookup(&UIP_IP_BUF->srcipaddr)) == NULL) {
//  623         /* we need to add the neighbor */
//  624         uip_ds6_nbr_add(&UIP_IP_BUF->srcipaddr,
//  625                         (uip_lladdr_t *)&nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET], 0, NBR_STALE);
//  626       } else {
//  627         /* If LL address changed, set neighbor state to stale */
//  628         if(memcmp(&nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET],
//  629             uip_ds6_nbr_get_ll(nbr), UIP_LLADDR_LEN) != 0) {
//  630           uip_ds6_nbr_t nbr_data = *nbr;
//  631           uip_ds6_nbr_rm(nbr);
//  632           nbr = uip_ds6_nbr_add(&UIP_IP_BUF->srcipaddr,
//  633                                 (uip_lladdr_t *)&nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET], 0, NBR_STALE);
//  634           nbr->reachable = nbr_data.reachable;
//  635           nbr->sendns = nbr_data.sendns;
//  636           nbr->nscount = nbr_data.nscount;
//  637         }
//  638         nbr->isrouter = 0;
//  639       }
//  640 #if UIP_CONF_IPV6_CHECKS
//  641     }
//  642 #endif /*UIP_CONF_IPV6_CHECKS */
//  643   }
//  644 
//  645   /* Schedule a sollicited RA */
//  646   uip_ds6_send_ra_sollicited();
//  647 
//  648 discard:
//  649   uip_len = 0;
//  650   return;
//  651 }
//  652 
//  653 /*---------------------------------------------------------------------------*/
//  654 void
//  655 uip_nd6_ra_output(uip_ipaddr_t * dest)
//  656 {
//  657 
//  658   UIP_IP_BUF->vtc = 0x60;
//  659   UIP_IP_BUF->tcflow = 0;
//  660   UIP_IP_BUF->flow = 0;
//  661   UIP_IP_BUF->proto = UIP_PROTO_ICMP6;
//  662   UIP_IP_BUF->ttl = UIP_ND6_HOP_LIMIT;
//  663 
//  664   if(dest == NULL) {
//  665     uip_create_linklocal_allnodes_mcast(&UIP_IP_BUF->destipaddr);
//  666   } else {
//  667     /* For sollicited RA */
//  668     uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, dest);
//  669   }
//  670   uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
//  671 
//  672   UIP_ICMP_BUF->type = ICMP6_RA;
//  673   UIP_ICMP_BUF->icode = 0;
//  674 
//  675   UIP_ND6_RA_BUF->cur_ttl = uip_ds6_if.cur_hop_limit;
//  676 
//  677   UIP_ND6_RA_BUF->flags_reserved =
//  678     (UIP_ND6_M_FLAG << 7) | (UIP_ND6_O_FLAG << 6);
//  679 
//  680   UIP_ND6_RA_BUF->router_lifetime = uip_htons(UIP_ND6_ROUTER_LIFETIME);
//  681   //UIP_ND6_RA_BUF->reachable_time = uip_htonl(uip_ds6_if.reachable_time);
//  682   //UIP_ND6_RA_BUF->retrans_timer = uip_htonl(uip_ds6_if.retrans_timer);
//  683   UIP_ND6_RA_BUF->reachable_time = 0;
//  684   UIP_ND6_RA_BUF->retrans_timer = 0;
//  685 
//  686   uip_len = UIP_IPH_LEN + UIP_ICMPH_LEN + UIP_ND6_RA_LEN;
//  687   nd6_opt_offset = UIP_ND6_RA_LEN;
//  688 
//  689 
//  690 #if !UIP_CONF_ROUTER
//  691   /* Prefix list */
//  692   for(prefix = uip_ds6_prefix_list;
//  693       prefix < uip_ds6_prefix_list + UIP_DS6_PREFIX_NB; prefix++) {
//  694     if((prefix->isused) && (prefix->advertise)) {
//  695       UIP_ND6_OPT_PREFIX_BUF->type = UIP_ND6_OPT_PREFIX_INFO;
//  696       UIP_ND6_OPT_PREFIX_BUF->len = UIP_ND6_OPT_PREFIX_INFO_LEN / 8;
//  697       UIP_ND6_OPT_PREFIX_BUF->preflen = prefix->length;
//  698       UIP_ND6_OPT_PREFIX_BUF->flagsreserved1 = prefix->l_a_reserved;
//  699       UIP_ND6_OPT_PREFIX_BUF->validlt = uip_htonl(prefix->vlifetime);
//  700       UIP_ND6_OPT_PREFIX_BUF->preferredlt = uip_htonl(prefix->plifetime);
//  701       UIP_ND6_OPT_PREFIX_BUF->reserved2 = 0;
//  702       uip_ipaddr_copy(&(UIP_ND6_OPT_PREFIX_BUF->prefix), &(prefix->ipaddr));
//  703       nd6_opt_offset += UIP_ND6_OPT_PREFIX_INFO_LEN;
//  704       uip_len += UIP_ND6_OPT_PREFIX_INFO_LEN;
//  705     }
//  706   }
//  707 #endif /* !UIP_CONF_ROUTER */
//  708 
//  709   /* Source link-layer option */
//  710   create_llao((uint8_t *)UIP_ND6_OPT_HDR_BUF, UIP_ND6_OPT_SLLAO);
//  711 
//  712   uip_len += UIP_ND6_OPT_LLAO_LEN;
//  713   nd6_opt_offset += UIP_ND6_OPT_LLAO_LEN;
//  714 
//  715   /* MTU */
//  716   UIP_ND6_OPT_MTU_BUF->type = UIP_ND6_OPT_MTU;
//  717   UIP_ND6_OPT_MTU_BUF->len = UIP_ND6_OPT_MTU_LEN >> 3;
//  718   UIP_ND6_OPT_MTU_BUF->reserved = 0;
//  719   //UIP_ND6_OPT_MTU_BUF->mtu = uip_htonl(uip_ds6_if.link_mtu);
//  720   UIP_ND6_OPT_MTU_BUF->mtu = uip_htonl(1500);
//  721 
//  722   uip_len += UIP_ND6_OPT_MTU_LEN;
//  723   nd6_opt_offset += UIP_ND6_OPT_MTU_LEN;
//  724 
//  725 #if UIP_ND6_RA_RDNSS
//  726   if(uip_nameserver_count() > 0) {
//  727     uint8_t i = 0;
//  728     uip_ipaddr_t *ip = &UIP_ND6_OPT_RDNSS_BUF->ip;
//  729     uip_ipaddr_t *dns = NULL;
//  730     UIP_ND6_OPT_RDNSS_BUF->type = UIP_ND6_OPT_RDNSS;
//  731     UIP_ND6_OPT_RDNSS_BUF->reserved = 0;
//  732     UIP_ND6_OPT_RDNSS_BUF->lifetime = uip_nameserver_next_expiration();
//  733     if(UIP_ND6_OPT_RDNSS_BUF->lifetime != UIP_NAMESERVER_INFINITE_LIFETIME) {
//  734       UIP_ND6_OPT_RDNSS_BUF->lifetime -= clock_seconds();
//  735     }
//  736     while((dns = uip_nameserver_get(i)) != NULL) {
//  737       uip_ipaddr_copy(ip++, dns);
//  738       i++;
//  739     }
//  740     UIP_ND6_OPT_RDNSS_BUF->len = UIP_ND6_OPT_RDNSS_LEN + (i << 1);
//  741     PRINTF("%d nameservers reported\n", i);
//  742     uip_len += UIP_ND6_OPT_RDNSS_BUF->len << 3;
//  743     nd6_opt_offset += UIP_ND6_OPT_RDNSS_BUF->len << 3;
//  744   }
//  745 #endif /* UIP_ND6_RA_RDNSS */
//  746 
//  747   UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
//  748   UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
//  749 
//  750   /*ICMP checksum */
//  751   UIP_ICMP_BUF->icmpchksum = 0;
//  752   UIP_ICMP_BUF->icmpchksum = ~uip_icmp6chksum();
//  753 
//  754   UIP_STAT(++uip_stat.nd6.sent);
//  755   PRINTF("Sending RA to");
//  756   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  757   PRINTF("from");
//  758   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  759   PRINTF("\n");
//  760   return;
//  761 }
//  762 #endif /* UIP_ND6_SEND_RA */
//  763 #endif /* UIP_CONF_ROUTER */
//  764 
//  765 #if !UIP_CONF_ROUTER
//  766 /*---------------------------------------------------------------------------*/
//  767 void
//  768 uip_nd6_rs_output(void)
//  769 {
//  770   UIP_IP_BUF->vtc = 0x60;
//  771   UIP_IP_BUF->tcflow = 0;
//  772   UIP_IP_BUF->flow = 0;
//  773   UIP_IP_BUF->proto = UIP_PROTO_ICMP6;
//  774   UIP_IP_BUF->ttl = UIP_ND6_HOP_LIMIT;
//  775   uip_create_linklocal_allrouters_mcast(&UIP_IP_BUF->destipaddr);
//  776   uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
//  777   UIP_ICMP_BUF->type = ICMP6_RS;
//  778   UIP_ICMP_BUF->icode = 0;
//  779   UIP_IP_BUF->len[0] = 0;       /* length will not be more than 255 */
//  780 
//  781   if(uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) {
//  782     UIP_IP_BUF->len[1] = UIP_ICMPH_LEN + UIP_ND6_RS_LEN;
//  783     uip_len = uip_l3_icmp_hdr_len + UIP_ND6_RS_LEN;
//  784   } else {
//  785     uip_len = uip_l3_icmp_hdr_len + UIP_ND6_RS_LEN + UIP_ND6_OPT_LLAO_LEN;
//  786     UIP_IP_BUF->len[1] =
//  787       UIP_ICMPH_LEN + UIP_ND6_RS_LEN + UIP_ND6_OPT_LLAO_LEN;
//  788 
//  789     create_llao(&uip_buf[uip_l2_l3_icmp_hdr_len + UIP_ND6_RS_LEN],
//  790 		UIP_ND6_OPT_SLLAO);
//  791   }
//  792 
//  793   UIP_ICMP_BUF->icmpchksum = 0;
//  794   UIP_ICMP_BUF->icmpchksum = ~uip_icmp6chksum();
//  795 
//  796   UIP_STAT(++uip_stat.nd6.sent);
//  797   PRINTF("Sendin RS to");
//  798   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  799   PRINTF("from");
//  800   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  801   PRINTF("\n");
//  802   return;
//  803 }
//  804 /*---------------------------------------------------------------------------*/
//  805 /*
//  806  * Process a Router Advertisement
//  807  *
//  808  * - Possible actions when receiving a RA: add router to router list,
//  809  *   recalculate reachable time, update link hop limit, update retrans timer.
//  810  * - If MTU option: update MTU.
//  811  * - If SLLAO option: update entry in neighbor cache
//  812  * - If prefix option: start autoconf, add prefix to prefix list
//  813  */
//  814 void
//  815 ra_input(void)
//  816 {
//  817   PRINTF("Received RA from");
//  818   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  819   PRINTF("to");
//  820   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  821   PRINTF("\n");
//  822   UIP_STAT(++uip_stat.nd6.recv);
//  823 
//  824 #if UIP_CONF_IPV6_CHECKS
//  825   if((UIP_IP_BUF->ttl != UIP_ND6_HOP_LIMIT) ||
//  826      (!uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr)) ||
//  827      (UIP_ICMP_BUF->icode != 0)) {
//  828     PRINTF("RA received is bad");
//  829     goto discard;
//  830   }
//  831 #endif /*UIP_CONF_IPV6_CHECKS */
//  832 
//  833   if(UIP_ND6_RA_BUF->cur_ttl != 0) {
//  834     uip_ds6_if.cur_hop_limit = UIP_ND6_RA_BUF->cur_ttl;
//  835     PRINTF("uip_ds6_if.cur_hop_limit %u\n", uip_ds6_if.cur_hop_limit);
//  836   }
//  837 
//  838   if(UIP_ND6_RA_BUF->reachable_time != 0) {
//  839     if(uip_ds6_if.base_reachable_time !=
//  840        uip_ntohl(UIP_ND6_RA_BUF->reachable_time)) {
//  841       uip_ds6_if.base_reachable_time = uip_ntohl(UIP_ND6_RA_BUF->reachable_time);
//  842       uip_ds6_if.reachable_time = uip_ds6_compute_reachable_time();
//  843     }
//  844   }
//  845   if(UIP_ND6_RA_BUF->retrans_timer != 0) {
//  846     uip_ds6_if.retrans_timer = uip_ntohl(UIP_ND6_RA_BUF->retrans_timer);
//  847   }
//  848 
//  849   /* Options processing */
//  850   nd6_opt_offset = UIP_ND6_RA_LEN;
//  851   while(uip_l3_icmp_hdr_len + nd6_opt_offset < uip_len) {
//  852     if(UIP_ND6_OPT_HDR_BUF->len == 0) {
//  853       PRINTF("RA received is bad");
//  854       goto discard;
//  855     }
//  856     switch (UIP_ND6_OPT_HDR_BUF->type) {
//  857     case UIP_ND6_OPT_SLLAO:
//  858       PRINTF("Processing SLLAO option in RA\n");
//  859       nd6_opt_llao = (uint8_t *) UIP_ND6_OPT_HDR_BUF;
//  860       nbr = uip_ds6_nbr_lookup(&UIP_IP_BUF->srcipaddr);
//  861       if(nbr == NULL) {
//  862         nbr = uip_ds6_nbr_add(&UIP_IP_BUF->srcipaddr,
//  863                               (uip_lladdr_t *)&nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET],
//  864 			      1, NBR_STALE);
//  865       } else {
//  866         uip_lladdr_t *lladdr = (uip_lladdr_t *)uip_ds6_nbr_get_ll(nbr);
//  867         if(nbr->state == NBR_INCOMPLETE) {
//  868           nbr->state = NBR_STALE;
//  869         }
//  870         if(memcmp(&nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET],
//  871 		  lladdr, UIP_LLADDR_LEN) != 0) {
//  872           memcpy(lladdr, &nd6_opt_llao[UIP_ND6_OPT_DATA_OFFSET],
//  873 		 UIP_LLADDR_LEN);
//  874           nbr->state = NBR_STALE;
//  875         }
//  876         nbr->isrouter = 1;
//  877       }
//  878       break;
//  879     case UIP_ND6_OPT_MTU:
//  880       PRINTF("Processing MTU option in RA\n");
//  881       uip_ds6_if.link_mtu =
//  882         uip_ntohl(((uip_nd6_opt_mtu *) UIP_ND6_OPT_HDR_BUF)->mtu);
//  883       break;
//  884     case UIP_ND6_OPT_PREFIX_INFO:
//  885       PRINTF("Processing PREFIX option in RA\n");
//  886       nd6_opt_prefix_info = (uip_nd6_opt_prefix_info *) UIP_ND6_OPT_HDR_BUF;
//  887       if((uip_ntohl(nd6_opt_prefix_info->validlt) >=
//  888           uip_ntohl(nd6_opt_prefix_info->preferredlt))
//  889          && (!uip_is_addr_link_local(&nd6_opt_prefix_info->prefix))) {
//  890         /* on-link flag related processing */
//  891         if(nd6_opt_prefix_info->flagsreserved1 & UIP_ND6_RA_FLAG_ONLINK) {
//  892           prefix =
//  893             uip_ds6_prefix_lookup(&nd6_opt_prefix_info->prefix,
//  894                                   nd6_opt_prefix_info->preflen);
//  895           if(prefix == NULL) {
//  896             if(nd6_opt_prefix_info->validlt != 0) {
//  897               if(nd6_opt_prefix_info->validlt != UIP_ND6_INFINITE_LIFETIME) {
//  898                 prefix = uip_ds6_prefix_add(&nd6_opt_prefix_info->prefix,
//  899                                             nd6_opt_prefix_info->preflen,
//  900                                             uip_ntohl(nd6_opt_prefix_info->
//  901                                                   validlt));
//  902               } else {
//  903                 prefix = uip_ds6_prefix_add(&nd6_opt_prefix_info->prefix,
//  904                                             nd6_opt_prefix_info->preflen, 0);
//  905               }
//  906             }
//  907           } else {
//  908             switch (nd6_opt_prefix_info->validlt) {
//  909             case 0:
//  910               uip_ds6_prefix_rm(prefix);
//  911               break;
//  912             case UIP_ND6_INFINITE_LIFETIME:
//  913               prefix->isinfinite = 1;
//  914               break;
//  915             default:
//  916               PRINTF("Updating timer of prefix");
//  917               PRINT6ADDR(&prefix->ipaddr);
//  918               PRINTF("new value %lu\n", uip_ntohl(nd6_opt_prefix_info->validlt));
//  919               stimer_set(&prefix->vlifetime,
//  920                          uip_ntohl(nd6_opt_prefix_info->validlt));
//  921               prefix->isinfinite = 0;
//  922               break;
//  923             }
//  924           }
//  925         }
//  926         /* End of on-link flag related processing */
//  927         /* autonomous flag related processing */
//  928         if((nd6_opt_prefix_info->flagsreserved1 & UIP_ND6_RA_FLAG_AUTONOMOUS)
//  929            && (nd6_opt_prefix_info->validlt != 0)
//  930            && (nd6_opt_prefix_info->preflen == UIP_DEFAULT_PREFIX_LEN)) {
//  931 	  
//  932           uip_ipaddr_copy(&ipaddr, &nd6_opt_prefix_info->prefix);
//  933           uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
//  934           addr = uip_ds6_addr_lookup(&ipaddr);
//  935           if((addr != NULL) && (addr->type == ADDR_AUTOCONF)) {
//  936             if(nd6_opt_prefix_info->validlt != UIP_ND6_INFINITE_LIFETIME) {
//  937               /* The processing below is defined in RFC4862 section 5.5.3 e */
//  938               if((uip_ntohl(nd6_opt_prefix_info->validlt) > 2 * 60 * 60) ||
//  939                  (uip_ntohl(nd6_opt_prefix_info->validlt) >
//  940                   stimer_remaining(&addr->vlifetime))) {
//  941                 PRINTF("Updating timer of address");
//  942                 PRINT6ADDR(&addr->ipaddr);
//  943                 PRINTF("new value %lu\n",
//  944                        uip_ntohl(nd6_opt_prefix_info->validlt));
//  945                 stimer_set(&addr->vlifetime,
//  946                            uip_ntohl(nd6_opt_prefix_info->validlt));
//  947               } else {
//  948                 stimer_set(&addr->vlifetime, 2 * 60 * 60);
//  949                 PRINTF("Updating timer of address ");
//  950                 PRINT6ADDR(&addr->ipaddr);
//  951                 PRINTF("new value %lu\n", (unsigned long)(2 * 60 * 60));
//  952               }
//  953               addr->isinfinite = 0;
//  954             } else {
//  955               addr->isinfinite = 1;
//  956             }
//  957           } else {
//  958             if(uip_ntohl(nd6_opt_prefix_info->validlt) ==
//  959                UIP_ND6_INFINITE_LIFETIME) {
//  960               uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
//  961             } else {
//  962               uip_ds6_addr_add(&ipaddr, uip_ntohl(nd6_opt_prefix_info->validlt),
//  963                                ADDR_AUTOCONF);
//  964             }
//  965           }
//  966         }
//  967         /* End of autonomous flag related processing */
//  968       }
//  969       break;
//  970 #if UIP_ND6_RA_RDNSS
//  971     case UIP_ND6_OPT_RDNSS:
//  972       if(UIP_ND6_RA_BUF->flags_reserved & (UIP_ND6_O_FLAG << 6)) {
//  973         PRINTF("Processing RDNSS option\n");
//  974         uint8_t naddr = (UIP_ND6_OPT_RDNSS_BUF->len - 1) / 2;
//  975         uip_ipaddr_t *ip = (uip_ipaddr_t *)(&UIP_ND6_OPT_RDNSS_BUF->ip);
//  976         PRINTF("got %d nameservers\n", naddr);
//  977         while(naddr-- > 0) {
//  978           PRINTF(" nameserver: ");
//  979           PRINT6ADDR(ip);
//  980           PRINTF(" lifetime: %lx\n", uip_ntohl(UIP_ND6_OPT_RDNSS_BUF->lifetime));
//  981           uip_nameserver_update(ip, uip_ntohl(UIP_ND6_OPT_RDNSS_BUF->lifetime));
//  982           ip++;
//  983         }
//  984       }
//  985       break;
//  986 #endif /* UIP_ND6_RA_RDNSS */
//  987     default:
//  988       PRINTF("ND option not supported in RA");
//  989       break;
//  990     }
//  991     nd6_opt_offset += (UIP_ND6_OPT_HDR_BUF->len << 3);
//  992   }
//  993 
//  994   defrt = uip_ds6_defrt_lookup(&UIP_IP_BUF->srcipaddr);
//  995   if(UIP_ND6_RA_BUF->router_lifetime != 0) {
//  996     if(nbr != NULL) {
//  997       nbr->isrouter = 1;
//  998     }
//  999     if(defrt == NULL) {
// 1000       uip_ds6_defrt_add(&UIP_IP_BUF->srcipaddr,
// 1001                         (unsigned
// 1002                          long)(uip_ntohs(UIP_ND6_RA_BUF->router_lifetime)));
// 1003     } else {
// 1004       stimer_set(&(defrt->lifetime),
// 1005                  (unsigned long)(uip_ntohs(UIP_ND6_RA_BUF->router_lifetime)));
// 1006     }
// 1007   } else {
// 1008     if(defrt != NULL) {
// 1009       uip_ds6_defrt_rm(defrt);
// 1010     }
// 1011   }
// 1012 
// 1013 #if UIP_CONF_IPV6_QUEUE_PKT
// 1014   /* If the nbr just became reachable (e.g. it was in NBR_INCOMPLETE state
// 1015    * and we got a SLLAO), check if we had buffered a pkt for it */
// 1016   /*  if((nbr != NULL) && (nbr->queue_buf_len != 0)) {
// 1017     uip_len = nbr->queue_buf_len;
// 1018     memcpy(UIP_IP_BUF, nbr->queue_buf, uip_len);
// 1019     nbr->queue_buf_len = 0;
// 1020     return;
// 1021     }*/
// 1022   if(nbr != NULL && uip_packetqueue_buflen(&nbr->packethandle) != 0) {
// 1023     uip_len = uip_packetqueue_buflen(&nbr->packethandle);
// 1024     memcpy(UIP_IP_BUF, uip_packetqueue_buf(&nbr->packethandle), uip_len);
// 1025     uip_packetqueue_free(&nbr->packethandle);
// 1026     return;
// 1027   }
// 1028 
// 1029 #endif /*UIP_CONF_IPV6_QUEUE_PKT */
// 1030 
// 1031 discard:
// 1032   uip_len = 0;
// 1033   return;
// 1034 }
// 1035 #endif /* !UIP_CONF_ROUTER */
// 1036 /*------------------------------------------------------------------*/
// 1037 /* ICMPv6 input handlers */
// 1038 #if UIP_ND6_SEND_NA

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// 1039 UIP_ICMP6_HANDLER(ns_input_handler, ICMP6_NS, UIP_ICMP6_HANDLER_CODE_ANY,
// 1040                   ns_input);
ns_input_handler:
        DATA
        DC32 0H
        DC8 135, 255, 0, 0
        DC32 ns_input
        DC32 0H
        DC8 136, 255, 0, 0
        DC32 na_input
// 1041 UIP_ICMP6_HANDLER(na_input_handler, ICMP6_NA, UIP_ICMP6_HANDLER_CODE_ANY,
// 1042                   na_input);
// 1043 #endif
// 1044 
// 1045 #if UIP_CONF_ROUTER && UIP_ND6_SEND_RA
// 1046 UIP_ICMP6_HANDLER(rs_input_handler, ICMP6_RS, UIP_ICMP6_HANDLER_CODE_ANY,
// 1047                   rs_input);
// 1048 #endif
// 1049 
// 1050 #if !UIP_CONF_ROUTER
// 1051 UIP_ICMP6_HANDLER(ra_input_handler, ICMP6_RA, UIP_ICMP6_HANDLER_CODE_ANY,
// 1052                   ra_input);
// 1053 #endif
// 1054 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function uip_nd6_init
        THUMB
// 1055 void
// 1056 uip_nd6_init()
// 1057 {
uip_nd6_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 1058 
// 1059 #if UIP_ND6_SEND_NA
// 1060   /* Only handle NSs if we are prepared to send out NAs */
// 1061   uip_icmp6_register_input_handler(&ns_input_handler);
        LDR.N    R4,??DataTable3_6
        MOV      R0,R4
          CFI FunCall uip_icmp6_register_input_handler
        BL       uip_icmp6_register_input_handler
// 1062 
// 1063   /*
// 1064    * Only handle NAs if we are prepared to send out NAs.
// 1065    * This is perhaps logically incorrect, but this condition was present in
// 1066    * uip_process and we keep it until proven wrong
// 1067    */
// 1068   uip_icmp6_register_input_handler(&na_input_handler);
        ADD      R0,R4,#+12
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uip_icmp6_register_input_handler
        B.W      uip_icmp6_register_input_handler
          CFI EndBlock cfiBlock3
// 1069 #endif
// 1070 
// 1071 
// 1072 #if UIP_CONF_ROUTER && UIP_ND6_SEND_RA
// 1073   /* Only accept RS if we are a router and happy to send out RAs */
// 1074   uip_icmp6_register_input_handler(&rs_input_handler);
// 1075 #endif
// 1076 
// 1077 #if !UIP_CONF_ROUTER
// 1078   /* Only process RAs if we are not a router */
// 1079   uip_icmp6_register_input_handler(&ra_input_handler);
// 1080 #endif
// 1081 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     uip_ext_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     nd6_opt_offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     uip_lladdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     ns_input_handler

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1082 /*---------------------------------------------------------------------------*/
// 1083  /** @} */
// 
//    20 bytes in section .bss
//    24 bytes in section .data
// 1 364 bytes in section .text
// 
// 1 364 bytes of CODE memory
//    44 bytes of DATA memory
//
//Errors: none
//Warnings: 1
