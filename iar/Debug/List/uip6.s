///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:48
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip6.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip6.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip6.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memmove
        EXTERN __aeabi_memset
        EXTERN etimer_set
        EXTERN etimer_stop
        EXTERN memcmp
        EXTERN tcpip_icmp6_call
        EXTERN tcpip_uipcall
        EXTERN uip_ds6_addr_lookup
        EXTERN uip_ds6_if
        EXTERN uip_ds6_init
        EXTERN uip_ds6_is_addr_onlink
        EXTERN uip_ds6_maddr_lookup
        EXTERN uip_ds6_select_src
        EXTERN uip_icmp6_error_output
        EXTERN uip_icmp6_init
        EXTERN uip_icmp6_input
        EXTERN uip_nd6_init

        PUBLIC remove_ext_hdr
        PUBLIC uip_acc32
        PUBLIC uip_add32
        PUBLIC uip_aligned_buf
        PUBLIC uip_appdata
        PUBLIC uip_chksum
        PUBLIC uip_conn
        PUBLIC uip_connect
        PUBLIC uip_conns
        PUBLIC uip_ext_bitmap
        PUBLIC uip_ext_len
        PUBLIC uip_ext_opt_offset
        PUBLIC uip_flags
        PUBLIC uip_htonl
        PUBLIC uip_htons
        PUBLIC uip_icmp6_conns
        PUBLIC uip_icmp6chksum
        PUBLIC uip_init
        PUBLIC uip_ipchksum
        PUBLIC uip_len
        PUBLIC uip_listen
        PUBLIC uip_listenports
        PUBLIC uip_lladdr
        PUBLIC uip_next_hdr
        PUBLIC uip_process
        PUBLIC uip_reass_on
        PUBLIC uip_reass_over
        PUBLIC uip_reass_timer
        PUBLIC uip_sappdata
        PUBLIC uip_send
        PUBLIC uip_slen
        PUBLIC uip_tcpchksum
        PUBLIC uip_udp_conn
        PUBLIC uip_udp_conns
        PUBLIC uip_udp_new
        PUBLIC uip_udpchksum
        PUBLIC uip_unlisten
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip6.c
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
//   31  *
//   32  */
//   33 
//   34 /**
//   35  * \addtogroup uip6
//   36  * @{
//   37  */
//   38 
//   39 /**
//   40  * \file
//   41  *    The uIP TCP/IPv6 stack code.
//   42  *
//   43  * \author Adam Dunkels <adam@sics.se>
//   44  * \author Julien Abeille <jabeille@cisco.com> (IPv6 related code)
//   45  * \author Mathilde Durvy <mdurvy@cisco.com> (IPv6 related code)
//   46  */
//   47 
//   48 /*
//   49  * uIP is a small implementation of the IP, UDP and TCP protocols (as
//   50  * well as some basic ICMP stuff). The implementation couples the IP,
//   51  * UDP, TCP and the application layers very tightly. To keep the size
//   52  * of the compiled code down, this code frequently uses the goto
//   53  * statement. While it would be possible to break the uip_process()
//   54  * function into many smaller functions, this would increase the code
//   55  * size because of the overhead of parameter passing and the fact that
//   56  * the optimizer would not be as efficient.
//   57  *
//   58  * The principle is that we have a small buffer, called the uip_buf,
//   59  * in which the device driver puts an incoming packet. The TCP/IP
//   60  * stack parses the headers in the packet, and calls the
//   61  * application. If the remote host has sent data to the application,
//   62  * this data is present in the uip_buf and the application read the
//   63  * data from there. It is up to the application to put this data into
//   64  * a byte stream if needed. The application will not be fed with data
//   65  * that is out of sequence.
//   66  *
//   67  * If the application wishes to send data to the peer, it should put
//   68  * its data into the uip_buf. The uip_appdata pointer points to the
//   69  * first available byte. The TCP/IP stack will calculate the
//   70  * checksums, and fill in the necessary header fields and finally send
//   71  * the packet back to the peer.
//   72  */
//   73 
//   74 #include "sys/cc.h"
//   75 #include "net/ip/uip.h"
//   76 #include "net/ip/uipopt.h"
//   77 #include "net/ipv6/uip-icmp6.h"
//   78 #include "net/ipv6/uip-nd6.h"
//   79 #include "net/ipv6/uip-ds6.h"
//   80 #include "net/ipv6/multicast/uip-mcast6.h"
//   81 
//   82 #include <string.h>
//   83 
//   84 /*---------------------------------------------------------------------------*/
//   85 /* For Debug, logging, statistics                                            */
//   86 /*---------------------------------------------------------------------------*/
//   87 
//   88 #define DEBUG DEBUG_NONE
//   89 #include "net/ip/uip-debug.h"
//   90 
//   91 #if UIP_CONF_IPV6_RPL
//   92 #include "rpl/rpl.h"
//   93 #endif /* UIP_CONF_IPV6_RPL */
//   94 
//   95 #if UIP_LOGGING == 1
//   96 #include <stdio.h>
//   97 void uip_log(char *msg);
//   98 #define UIP_LOG(m) uip_log(m)
//   99 #else
//  100 #define UIP_LOG(m)
//  101 #endif /* UIP_LOGGING == 1 */
//  102 
//  103 #if UIP_STATISTICS == 1
//  104 struct uip_stats uip_stat;
//  105 #endif /* UIP_STATISTICS == 1 */
//  106 
//  107 
//  108 #ifndef MIN
//  109 #define MIN(a, b) ((a) < (b)? (a) : (b))
//  110 #endif /* MIN */
//  111 
//  112 /*---------------------------------------------------------------------------*/
//  113 /**
//  114  * \name Layer 2 variables
//  115  * @{
//  116  */
//  117 /*---------------------------------------------------------------------------*/
//  118 /** Host L2 address */
//  119 #if UIP_CONF_LL_802154

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  120 uip_lladdr_t uip_lladdr;
uip_lladdr:
        DS8 8
//  121 #else /*UIP_CONF_LL_802154*/
//  122 uip_lladdr_t uip_lladdr = {{0x00,0x06,0x98,0x00,0x02,0x32}};
//  123 #endif /*UIP_CONF_LL_802154*/
//  124 /** @} */
//  125 
//  126 /*---------------------------------------------------------------------------*/
//  127 /**
//  128  * \name Layer 3 variables
//  129  * @{
//  130  */
//  131 /*---------------------------------------------------------------------------*/
//  132 /**
//  133  * \brief Type of the next header in IPv6 header or extension headers
//  134  *
//  135  * Can be the next header field in the IPv6 header or in an extension header.
//  136  * When doing fragment reassembly, we must change the value of the next header
//  137  * field in the header before the fragmentation header, hence we need a pointer
//  138  * to this field.
//  139  */
//  140 uint8_t *uip_next_hdr;
//  141 /** \brief bitmap we use to record which IPv6 headers we have already seen */
//  142 uint8_t uip_ext_bitmap = 0;
//  143 /**
//  144  * \brief length of the extension headers read. updated each time we process
//  145  * a header
//  146  */
//  147 uint8_t uip_ext_len = 0;
//  148 /** \brief length of the header options read */
//  149 uint8_t uip_ext_opt_offset = 0;
//  150 /** @} */
//  151 
//  152 /*---------------------------------------------------------------------------*/
//  153 /* Buffers                                                                   */
//  154 /*---------------------------------------------------------------------------*/
//  155 /**
//  156  * \name Buffer defines
//  157  * @{
//  158  */
//  159 #define FBUF                             ((struct uip_tcpip_hdr *)&uip_reassbuf[0])
//  160 #define UIP_IP_BUF                          ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
//  161 #define UIP_ICMP_BUF                      ((struct uip_icmp_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//  162 #define UIP_UDP_BUF                        ((struct uip_udp_hdr *)&uip_buf[UIP_LLH_LEN + UIP_IPH_LEN])
//  163 #define UIP_TCP_BUF                        ((struct uip_tcp_hdr *)&uip_buf[UIP_LLH_LEN + UIP_IPH_LEN])
//  164 #define UIP_EXT_BUF                        ((struct uip_ext_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//  165 #define UIP_ROUTING_BUF                ((struct uip_routing_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//  166 #define UIP_FRAG_BUF                      ((struct uip_frag_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//  167 #define UIP_HBHO_BUF                      ((struct uip_hbho_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//  168 #define UIP_DESTO_BUF                    ((struct uip_desto_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//  169 #define UIP_EXT_HDR_OPT_BUF            ((struct uip_ext_hdr_opt *)&uip_buf[uip_l2_l3_hdr_len + uip_ext_opt_offset])
//  170 #define UIP_EXT_HDR_OPT_PADN_BUF  ((struct uip_ext_hdr_opt_padn *)&uip_buf[uip_l2_l3_hdr_len + uip_ext_opt_offset])
//  171 #if UIP_CONF_IPV6_RPL
//  172 #define UIP_EXT_HDR_OPT_RPL_BUF    ((struct uip_ext_hdr_opt_rpl *)&uip_buf[uip_l2_l3_hdr_len + uip_ext_opt_offset])
//  173 #endif /* UIP_CONF_IPV6_RPL */
//  174 #define UIP_ICMP6_ERROR_BUF            ((struct uip_icmp6_error *)&uip_buf[uip_l2_l3_icmp_hdr_len])
//  175 /** @} */
//  176 /**
//  177  * \name Buffer variables
//  178  * @{
//  179  */
//  180 /** Packet buffer for incoming and outgoing packets */
//  181 #ifndef UIP_CONF_EXTERNAL_BUFFER
//  182 uip_buf_t uip_aligned_buf;
//  183 #endif /* UIP_CONF_EXTERNAL_BUFFER */
//  184 
//  185 /* The uip_appdata pointer points to application data. */
//  186 void *uip_appdata;
//  187 /* The uip_appdata pointer points to the application data which is to be sent*/
//  188 void *uip_sappdata;
//  189 
//  190 #if UIP_URGDATA > 0
//  191 /* The uip_urgdata pointer points to urgent data (out-of-band data), if present */
//  192 void *uip_urgdata;
//  193 uint16_t uip_urglen, uip_surglen;
//  194 #endif /* UIP_URGDATA > 0 */
//  195 
//  196 /* The uip_len is either 8 or 16 bits, depending on the maximum packet size.*/
//  197 uint16_t uip_len, uip_slen;
//  198 /** @} */
//  199 
//  200 /*---------------------------------------------------------------------------*/
//  201 /**
//  202  * \name General variables
//  203  * @{
//  204  */
//  205 /*---------------------------------------------------------------------------*/
//  206 
//  207 /* The uip_flags variable is used for communication between the TCP/IP stack
//  208 and the application program. */
//  209 uint8_t uip_flags;
//  210 
//  211 /* uip_conn always points to the current connection (set to NULL for UDP). */
//  212 struct uip_conn *uip_conn;
//  213 
//  214 /* Temporary variables. */
//  215 #if (UIP_TCP || UIP_UDP)
//  216 static uint8_t c;
//  217 #endif
//  218 
//  219 #if UIP_ACTIVE_OPEN || UIP_UDP
//  220 /* Keeps track of the last port used for a new connection. */
//  221 static uint16_t lastport;
//  222 #endif /* UIP_ACTIVE_OPEN || UIP_UDP */
//  223 /** @} */
//  224 
//  225 /*---------------------------------------------------------------------------*/
//  226 /* TCP                                                                       */
//  227 /*---------------------------------------------------------------------------*/
//  228 /**
//  229  * \name TCP defines
//  230  *@{
//  231  */
//  232 /* Structures and definitions. */
//  233 #define TCP_FIN 0x01
//  234 #define TCP_SYN 0x02
//  235 #define TCP_RST 0x04
//  236 #define TCP_PSH 0x08
//  237 #define TCP_ACK 0x10
//  238 #define TCP_URG 0x20
//  239 #define TCP_CTL 0x3f
//  240 
//  241 #define TCP_OPT_END     0   /* End of TCP options list */
//  242 #define TCP_OPT_NOOP    1   /* "No-operation" TCP option */
//  243 #define TCP_OPT_MSS     2   /* Maximum segment size TCP option */
//  244 
//  245 #define TCP_OPT_MSS_LEN 4   /* Length of TCP MSS option. */
//  246 /** @} */
//  247 /**
//  248  * \name TCP variables
//  249  *@{
//  250  */
//  251 #if UIP_TCP
//  252 /* The uip_conns array holds all TCP connections. */
//  253 struct uip_conn uip_conns[UIP_CONNS];
//  254 
//  255 /* The uip_listenports list all currently listning ports. */
//  256 uint16_t uip_listenports[UIP_LISTENPORTS];
//  257 
//  258 /* The iss variable is used for the TCP initial sequence number. */
//  259 static uint8_t iss[4];
//  260 
//  261 /* Temporary variables. */
//  262 uint8_t uip_acc32[4];
//  263 static uint8_t opt;
//  264 static uint16_t tmp16;
//  265 #endif /* UIP_TCP */
//  266 /** @} */
//  267 
//  268 /*---------------------------------------------------------------------------*/
//  269 /**
//  270  * \name UDP variables
//  271  * @{
//  272  */
//  273 /*---------------------------------------------------------------------------*/
//  274 #if UIP_UDP
//  275 struct uip_udp_conn *uip_udp_conn;
//  276 struct uip_udp_conn uip_udp_conns[UIP_UDP_CONNS];
//  277 #endif /* UIP_UDP */
//  278 /** @} */
//  279 
//  280 /*---------------------------------------------------------------------------*/
//  281 /**
//  282  * \name ICMPv6 variables
//  283  * @{
//  284  */
//  285 /*---------------------------------------------------------------------------*/
//  286 #if UIP_CONF_ICMP6
//  287 /** single possible icmpv6 "connection" */
//  288 struct uip_icmp6_conn uip_icmp6_conns;
//  289 #endif /*UIP_CONF_ICMP6*/
//  290 /** @} */
//  291 
//  292 /*---------------------------------------------------------------------------*/
//  293 /* Functions                                                                 */
//  294 /*---------------------------------------------------------------------------*/
//  295 #if (!UIP_ARCH_ADD32 && UIP_TCP)

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function uip_add32
          CFI NoCalls
        THUMB
//  296 void
//  297 uip_add32(uint8_t *op32, uint16_t op16)
//  298 {
uip_add32:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  299   uip_acc32[3] = op32[3] + (op16 & 0xff);
        LDRB     R2,[R0, #+3]
        ADDS     R3,R1,R2
        LDR.W    R2,??DataTable11
        STRB     R3,[R2, #+7]
        LDRB     R5,[R0, #+2]
        ADD      R5,R5,R1, LSR #+8
        STRB     R5,[R2, #+6]
//  300   uip_acc32[2] = op32[2] + (op16 >> 8);
//  301   uip_acc32[1] = op32[1];
//  302   uip_acc32[0] = op32[0];
//  303   
//  304   if(uip_acc32[2] < (op16 >> 8)) {
        UXTB     R5,R5
        LDRB     R6,[R0, #+1]
        STRB     R6,[R2, #+5]
        CMP      R5,R1, LSR #+8
        LDRB     R0,[R0, #+0]
        STRB     R0,[R2, #+4]
        BCS.N    ??uip_add32_0
//  305     ++uip_acc32[1];
        ADDS     R4,R6,#+1
        STRB     R4,[R2, #+5]
//  306     if(uip_acc32[1] == 0) {
        UXTB     R4,R4
        CBNZ.N   R4,??uip_add32_0
//  307       ++uip_acc32[0];
        ADDS     R0,R0,#+1
        STRB     R0,[R2, #+4]
//  308     }
//  309   }
//  310   
//  311   
//  312   if(uip_acc32[3] < (op16 & 0xff)) {
??uip_add32_0:
        UXTB     R3,R3
        UXTB     R0,R1
        CMP      R3,R0
        BGE.N    ??uip_add32_1
//  313     ++uip_acc32[2];
        ADDS     R0,R5,#+1
        STRB     R0,[R2, #+6]
//  314     if(uip_acc32[2] == 0) {
        UXTB     R0,R0
        CBNZ.N   R0,??uip_add32_1
//  315       ++uip_acc32[1];
        LDRB     R0,[R2, #+5]
        ADDS     R0,R0,#+1
        STRB     R0,[R2, #+5]
//  316       if(uip_acc32[1] == 0) {
        UXTB     R0,R0
        CBNZ.N   R0,??uip_add32_1
//  317         ++uip_acc32[0];
        LDRB     R0,[R2, #+4]
        ADDS     R0,R0,#+1
        STRB     R0,[R2, #+4]
//  318       }
//  319     }
//  320   }
//  321 }
??uip_add32_1:
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  322 
//  323 #endif /* UIP_ARCH_ADD32 && UIP_TCP */
//  324 
//  325 #if ! UIP_ARCH_CHKSUM
//  326 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function chksum
          CFI NoCalls
        THUMB
//  327 static uint16_t
//  328 chksum(uint16_t sum, const uint8_t *data, uint16_t len)
//  329 {
//  330   uint16_t t;
//  331   const uint8_t *dataptr;
//  332   const uint8_t *last_byte;
//  333 
//  334   dataptr = data;
//  335   last_byte = data + len - 1;
chksum:
        ADDS     R2,R2,R1
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUBS     R2,R2,#+1
        CMP      R1,R2
        BCS.N    ??chksum_0
//  336   
//  337   while(dataptr < last_byte) {   /* At least two more bytes */
//  338     t = (dataptr[0] << 8) + dataptr[1];
??chksum_1:
        LDRB     R4,[R1, #+0]
        LDRB     R5,[R1, #+1]
        ADD      R4,R5,R4, LSL #+8
        UXTH     R4,R4
//  339     sum += t;
        ADDS     R0,R4,R0
//  340     if(sum < t) {
        UXTH     R0,R0
        CMP      R0,R4
        IT       CC 
        ADDCC    R0,R0,#+1
//  341       sum++;      /* carry */
//  342     }
//  343     dataptr += 2;
        ADDS     R1,R1,#+2
//  344   }
        CMP      R1,R2
        BCC.N    ??chksum_1
//  345   
//  346   if(dataptr == last_byte) {
??chksum_0:
        CMP      R1,R2
        BNE.N    ??chksum_2
//  347     t = (dataptr[0] << 8) + 0;
        LDRB     R1,[R1, #+0]
//  348     sum += t;
        ADD      R0,R0,R1, LSL #+8
//  349     if(sum < t) {
        UXTH     R0,R0
        CMP      R0,R1, LSL #+8
        IT       CC 
        ADDCC    R0,R0,#+1
//  350       sum++;      /* carry */
//  351     }
//  352   }
//  353 
//  354   /* Return sum in host byte order. */
//  355   return sum;
??chksum_2:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        UXTH     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  356 }
//  357 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function uip_chksum
        THUMB
//  358 uint16_t
//  359 uip_chksum(uint16_t *data, uint16_t len)
//  360 {
uip_chksum:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  361   return uip_htons(chksum(0, (uint8_t *)data, len));
        MOV      R2,R1
        MOV      R1,R0
        MOVS     R0,#+0
          CFI FunCall chksum
        BL       chksum
        LSRS     R1,R0,#+8
        ORR      R0,R1,R0, LSL #+8
        UXTH     R0,R0
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock2
//  362 }
//  363 /*---------------------------------------------------------------------------*/
//  364 #ifndef UIP_ARCH_IPCHKSUM

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function uip_ipchksum
        THUMB
//  365 uint16_t
//  366 uip_ipchksum(void)
//  367 {
uip_ipchksum:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  368   uint16_t sum;
//  369 
//  370   sum = chksum(0, &uip_buf[UIP_LLH_LEN], UIP_IPH_LEN);
        MOVS     R2,#+40
        LDR.W    R1,??DataTable11_1
        MOVS     R0,#+0
          CFI FunCall chksum
        BL       chksum
//  371   PRINTF("uip_ipchksum: sum 0x%04x\n", sum);
//  372   return (sum == 0) ? 0xffff : uip_htons(sum);
        CMP      R0,#+0
        ITEE     EQ 
        MOVWEQ   R0,#+65535
        LSRNE    R1,R0,#+8
        ORRNE    R0,R1,R0, LSL #+8
        UXTH     R0,R0
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock3
//  373 }
//  374 #endif
//  375 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function upper_layer_chksum
        THUMB
//  376 static uint16_t
//  377 upper_layer_chksum(uint8_t proto)
//  378 {
upper_layer_chksum:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        LDR.W    R1,??DataTable11
        LDR.W    R5,??DataTable11_1
        LDRB     R4,[R1, #+9]
        LDRB     R1,[R5, #+4]
        LDRB     R2,[R5, #+5]
        ADD      R1,R2,R1, LSL #+8
        SUBS     R1,R1,R4
        STRH     R1,[SP, #+0]
        MOVS     R2,#+32
//  379 /* gcc 4.4.0 - 4.6.1 (maybe 4.3...) with -Os on 8 bit CPUS incorrectly compiles:
//  380  * int bar (int);
//  381  * int foo (unsigned char a, unsigned char b) {
//  382  *   int len = (a << 8) + b; //len becomes 0xff00&<random>+b
//  383  *   return len + bar (len);
//  384  * }
//  385  * upper_layer_len triggers this bug unless it is declared volatile.
//  386  * See https://sourceforge.net/apps/mantisbt/contiki/view.php?id=3
//  387  */
//  388   volatile uint16_t upper_layer_len;
//  389   uint16_t sum;
//  390   
//  391   upper_layer_len = (((uint16_t)(UIP_IP_BUF->len[0]) << 8) + UIP_IP_BUF->len[1] - uip_ext_len);
//  392   
//  393   PRINTF("Upper layer checksum len: %d from: %d\n", upper_layer_len,
//  394 	 UIP_IPH_LEN + UIP_LLH_LEN + uip_ext_len);
//  395 
//  396   /* First sum pseudoheader. */
//  397   /* IP protocol and length fields. This addition cannot carry. */
//  398   sum = upper_layer_len + proto;
        LDRH     R3,[SP, #+0]
//  399   /* Sum IP source and destination addresses. */
//  400   sum = chksum(sum, (uint8_t *)&UIP_IP_BUF->srcipaddr, 2 * sizeof(uip_ipaddr_t));
        ADDS     R0,R0,R3
        ADD      R1,R5,#+8
        UXTH     R0,R0
          CFI FunCall chksum
        BL       chksum
//  401 
//  402   /* Sum TCP header and data. */
//  403   sum = chksum(sum, &uip_buf[UIP_IPH_LEN + UIP_LLH_LEN + uip_ext_len],
//  404                upper_layer_len);
        LDRH     R2,[SP, #+0]
        ADDS     R1,R4,R5
        ADDS     R1,R1,#+40
          CFI FunCall chksum
        BL       chksum
//  405     
//  406   return (sum == 0) ? 0xffff : uip_htons(sum);
        CMP      R0,#+0
        ITEE     EQ 
        MOVWEQ   R0,#+65535
        LSRNE    R1,R0,#+8
        ORRNE    R0,R1,R0, LSL #+8
        UXTH     R0,R0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock4
//  407 }
//  408 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function uip_icmp6chksum
        THUMB
//  409 uint16_t
//  410 uip_icmp6chksum(void)
//  411 {
//  412   return upper_layer_chksum(UIP_PROTO_ICMP6);
uip_icmp6chksum:
        MOVS     R0,#+58
          CFI FunCall upper_layer_chksum
        B.N      upper_layer_chksum
          CFI EndBlock cfiBlock5
//  413   
//  414 }
//  415 /*---------------------------------------------------------------------------*/
//  416 #if UIP_TCP

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function uip_tcpchksum
        THUMB
//  417 uint16_t
//  418 uip_tcpchksum(void)
//  419 {
//  420   return upper_layer_chksum(UIP_PROTO_TCP);
uip_tcpchksum:
        MOVS     R0,#+6
          CFI FunCall upper_layer_chksum
        B.N      upper_layer_chksum
          CFI EndBlock cfiBlock6
//  421 }
//  422 #endif /* UIP_TCP */
//  423 /*---------------------------------------------------------------------------*/
//  424 #if UIP_UDP && UIP_UDP_CHECKSUMS

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function uip_udpchksum
        THUMB
//  425 uint16_t
//  426 uip_udpchksum(void)
//  427 {
//  428   return upper_layer_chksum(UIP_PROTO_UDP);
uip_udpchksum:
        MOVS     R0,#+17
          CFI FunCall upper_layer_chksum
        B.N      upper_layer_chksum
          CFI EndBlock cfiBlock7
//  429 }
//  430 #endif /* UIP_UDP && UIP_UDP_CHECKSUMS */
//  431 #endif /* UIP_ARCH_CHKSUM */
//  432 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function uip_init
        THUMB
//  433 void
//  434 uip_init(void)
//  435 {
uip_init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  436    
//  437   uip_ds6_init();
          CFI FunCall uip_ds6_init
        BL       uip_ds6_init
//  438   uip_icmp6_init();
          CFI FunCall uip_icmp6_init
        BL       uip_icmp6_init
//  439   uip_nd6_init();
          CFI FunCall uip_nd6_init
        BL       uip_nd6_init
//  440 
//  441 #if UIP_TCP
//  442   for(c = 0; c < UIP_LISTENPORTS; ++c) {
//  443     uip_listenports[c] = 0;
        LDR.W    R0,??DataTable11
        ADD      R1,R0,#+40
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOV      R4,R2
        MOV      R5,R2
        STM      R1!,{R2-R5}
//  444   }
//  445   for(c = 0; c < UIP_CONNS; ++c) {
        MOV      R1,R2
        LDR.W    R2,??DataTable11_2
//  446     uip_conns[c].tcpstateflags = UIP_CLOSED;
??uip_init_0:
        ADDS     R1,R1,#+2
        STRB     R3,[R2], #+48
        CMP      R1,#+10
        STRB     R3,[R2], #+48
        BLT.N    ??uip_init_0
//  447   }
//  448 #endif /* UIP_TCP */
//  449 
//  450 #if UIP_ACTIVE_OPEN || UIP_UDP
//  451   lastport = 1024;
//  452 #endif /* UIP_ACTIVE_OPEN || UIP_UDP */
//  453 
//  454 #if UIP_UDP
//  455   for(c = 0; c < UIP_UDP_CONNS; ++c) {
        LDR.W    R2,??DataTable11_3
        MOV      R1,#+1024
        STRH     R1,[R0, #+60]
        MOVS     R1,#+0
//  456     uip_udp_conns[c].lport = 0;
??uip_init_1:
        ADDS     R1,R1,#+2
        STRH     R3,[R2], #+32
        CMP      R1,#+10
        STRH     R3,[R2], #+32
        BLT.N    ??uip_init_1
        STRB     R1,[R0, #+12]
//  457   }
//  458 #endif /* UIP_UDP */
//  459 
//  460 #if UIP_CONF_IPV6_MULTICAST
//  461   UIP_MCAST6.init();
//  462 #endif
//  463 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock8
//  464 /*---------------------------------------------------------------------------*/
//  465 #if UIP_TCP && UIP_ACTIVE_OPEN

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function uip_connect
        THUMB
//  466 struct uip_conn *
//  467 uip_connect(const uip_ipaddr_t *ripaddr, uint16_t rport)
//  468 {
uip_connect:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R2,R0
        MOV      R4,#+4096
        LDR.W    R0,??DataTable11
        LDR.W    R5,??DataTable11_4
//  469   register struct uip_conn *conn, *cconn;
//  470   
//  471   /* Find an unused local port. */
//  472  again:
//  473   ++lastport;
??uip_connect_0:
        LDRH     R3,[R0, #+60]
        ADDS     R3,R3,#+1
//  474 
//  475   if(lastport >= 32000) {
        UXTH     R3,R3
        CMP      R3,#+32000
        IT       GE 
        MOVGE    R3,R4
//  476     lastport = 4096;
        STRH     R3,[R0, #+60]
//  477   }
//  478 
//  479   /* Check if this port is already in use, and if so try to find
//  480      another one. */
//  481   for(c = 0; c < UIP_CONNS; ++c) {
        MOV      R6,R5
        MOVS     R3,#+0
        STRB     R3,[R0, #+12]
        LDRH     R3,[R0, #+60]
        LSRS     R7,R3,#+8
        ORR      R7,R7,R3, LSL #+8
        UXTH     R7,R7
//  482     conn = &uip_conns[c];
//  483     if(conn->tcpstateflags != UIP_CLOSED &&
//  484        conn->lport == uip_htons(lastport)) {
??uip_connect_1:
        LDRB     R12,[R6, #+37]
        CMP      R12,#+0
        BEQ.N    ??uip_connect_2
//  485       goto again;
//  486     }
//  487   }
        LDRH     R12,[R6, #+16]
        CMP      R12,R7
        BEQ.N    ??uip_connect_0
??uip_connect_2:
        LDRB     R12,[R0, #+12]
        ADD      R12,R12,#+1
        STRB     R12,[R0, #+12]
        ADDS     R6,R6,#+48
        UXTB     R12,R12
        CMP      R12,#+10
        BLT.N    ??uip_connect_1
//  488 
//  489   conn = 0;
        MOVS     R4,#+0
//  490   for(c = 0; c < UIP_CONNS; ++c) {
        MOVS     R6,#+0
//  491     cconn = &uip_conns[c];
//  492     if(cconn->tcpstateflags == UIP_CLOSED) {
??uip_connect_3:
        LDRB     R7,[R5, #+37]
        CBNZ.N   R7,??uip_connect_4
//  493       conn = cconn;
        MOV      R4,R5
//  494       break;
        B.N      ??uip_connect_5
//  495     }
//  496     if(cconn->tcpstateflags == UIP_TIME_WAIT) {
??uip_connect_4:
        CMP      R7,#+7
        BNE.N    ??uip_connect_6
//  497       if(conn == 0 ||
//  498          cconn->timer > conn->timer) {
        CBZ.N    R4,??uip_connect_7
        LDRB     R7,[R4, #+38]
        LDRB     R12,[R5, #+38]
        CMP      R7,R12
        BCS.N    ??uip_connect_6
//  499         conn = cconn;
??uip_connect_7:
        MOV      R4,R5
//  500       }
//  501     }
//  502   }
??uip_connect_6:
        ADDS     R6,R6,#+1
        ADDS     R5,R5,#+48
        UXTB     R6,R6
        CMP      R6,#+10
        BLT.N    ??uip_connect_3
??uip_connect_5:
        STRB     R6,[R0, #+12]
//  503 
//  504   if(conn == 0) {
        CBNZ.N   R4,??uip_connect_8
//  505     return 0;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
//  506   }
//  507   
//  508   conn->tcpstateflags = UIP_SYN_SENT;
??uip_connect_8:
        ADD      R5,R4,#+16
        MOVS     R6,#+2
        STRB     R6,[R5, #+21]
//  509 
//  510   conn->snd_nxt[0] = iss[0];
        LDRB     R6,[R0, #+0]
        STRB     R6,[R5, #+8]
//  511   conn->snd_nxt[1] = iss[1];
        LDRB     R6,[R0, #+1]
        STRB     R6,[R5, #+9]
//  512   conn->snd_nxt[2] = iss[2];
        LDRB     R6,[R0, #+2]
        STRB     R6,[R5, #+10]
//  513   conn->snd_nxt[3] = iss[3];
        LDRB     R0,[R0, #+3]
        STRB     R0,[R5, #+11]
//  514 
//  515   conn->rcv_nxt[0] = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+4]
//  516   conn->rcv_nxt[1] = 0;
        STRB     R0,[R5, #+5]
//  517   conn->rcv_nxt[2] = 0;
        STRB     R0,[R5, #+6]
//  518   conn->rcv_nxt[3] = 0;
        STRB     R0,[R5, #+7]
//  519 
//  520   conn->initialmss = conn->mss = UIP_TCP_MSS;
        MOVS     R0,#+64
        STRH     R0,[R5, #+14]
        STRH     R0,[R5, #+16]
//  521   
//  522   conn->len = 1;   /* TCP length of the SYN is one. */
        MOVS     R0,#+1
        STRH     R0,[R5, #+12]
//  523   conn->nrtx = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+23]
//  524   conn->timer = 1; /* Send the SYN next time around. */
        MOVS     R0,#+1
        STRB     R0,[R5, #+22]
//  525   conn->rto = UIP_RTO;
        MOVS     R0,#+3
        STRB     R0,[R5, #+20]
//  526   conn->sa = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+18]
//  527   conn->sv = 16;   /* Initial value of the RTT variance. */
        MOVS     R0,#+16
        STRB     R0,[R5, #+19]
//  528   conn->lport = uip_htons(lastport);
        LSRS     R0,R3,#+8
        ORR      R0,R0,R3, LSL #+8
        STRH     R0,[R4, #+16]
//  529   conn->rport = rport;
        STRH     R1,[R5, #+2]
//  530   uip_ipaddr_copy(&conn->ripaddr, ripaddr);
        MOV      R0,R4
        MOV      R1,R2
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  531   
//  532   return conn;
        MOV      R0,R4
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock9
//  533 }
//  534 #endif /* UIP_TCP && UIP_ACTIVE_OPEN */
//  535 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function remove_ext_hdr
        THUMB
//  536 void
//  537 remove_ext_hdr(void)
//  538 {
remove_ext_hdr:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  539   /* Remove ext header before TCP/UDP processing. */
//  540   if(uip_ext_len > 0) {
        LDR.W    R4,??DataTable11
        LDRB     R0,[R4, #+9]
        CBZ.N    R0,??remove_ext_hdr_0
//  541     PRINTF("Cutting ext-header before processing (extlen: %d, uiplen: %d)\n",
//  542 	   uip_ext_len, uip_len);
//  543     if(uip_len < UIP_IPH_LEN + uip_ext_len) {
        LDRH     R1,[R4, #+56]
        ADD      R2,R0,#+40
        CMP      R1,R2
        BGE.N    ??remove_ext_hdr_1
//  544       PRINTF("ERROR: uip_len too short compared to ext len\n");
//  545       uip_ext_len = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+9]
//  546       uip_len = 0;
        STRH     R0,[R4, #+56]
//  547       return;
        POP      {R0,R4,R5,PC}
//  548     }
//  549     memmove(((uint8_t *)UIP_TCP_BUF), (uint8_t *)UIP_TCP_BUF + uip_ext_len,
//  550 	    uip_len - UIP_IPH_LEN - uip_ext_len);
??remove_ext_hdr_1:
        SUBS     R1,R1,#+40
        LDR.W    R5,??DataTable11_1
        SUBS     R2,R1,R0
        ADDS     R0,R0,R5
        ADD      R1,R0,#+40
        ADD      R0,R5,#+40
          CFI FunCall __aeabi_memmove
        BL       __aeabi_memmove
//  551 
//  552     uip_len -= uip_ext_len;
        LDRH     R0,[R4, #+56]
        LDRB     R1,[R4, #+9]
        SUBS     R0,R0,R1
        STRH     R0,[R4, #+56]
//  553 
//  554     /* Update the IP length. */
//  555     UIP_IP_BUF->len[0] = (uip_len - UIP_IPH_LEN) >> 8;
        UXTH     R0,R0
        SUB      R1,R0,#+40
//  556     UIP_IP_BUF->len[1] = (uip_len - UIP_IPH_LEN) & 0xff;
        SUBS     R0,R0,#+40
        STRB     R0,[R5, #+5]
        ASRS     R1,R1,#+8
//  557     uip_ext_len = 0;
        MOVS     R0,#+0
        STRB     R1,[R5, #+4]
        STRB     R0,[R4, #+9]
//  558   }
//  559 }
??remove_ext_hdr_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock10
//  560 /*---------------------------------------------------------------------------*/
//  561 #if UIP_UDP

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function uip_udp_new
        THUMB
//  562 struct uip_udp_conn *
//  563 uip_udp_new(const uip_ipaddr_t *ripaddr, uint16_t rport)
//  564 {
uip_udp_new:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R2,R0
        LDR.W    R0,??DataTable11_5
        LDR.W    R3,??DataTable11
        MOV      R4,#+4096
//  565   register struct uip_udp_conn *conn;
//  566   
//  567   /* Find an unused local port. */
//  568  again:
//  569   ++lastport;
??uip_udp_new_0:
        LDRH     R5,[R3, #+60]
        ADDS     R5,R5,#+1
//  570 
//  571   if(lastport >= 32000) {
        UXTH     R5,R5
        CMP      R5,#+32000
        IT       GE 
        MOVGE    R5,R4
//  572     lastport = 4096;
        STRH     R5,[R3, #+60]
//  573   }
//  574   
//  575   for(c = 0; c < UIP_UDP_CONNS; ++c) {
        ADD      R6,R0,#+16
        MOVS     R5,#+0
        STRB     R5,[R3, #+12]
        LDRH     R5,[R3, #+60]
        LSRS     R7,R5,#+8
        ORR      R5,R7,R5, LSL #+8
        UXTH     R5,R5
//  576     if(uip_udp_conns[c].lport == uip_htons(lastport)) {
??uip_udp_new_1:
        LDRH     R7,[R6], #+32
        CMP      R7,R5
        BEQ.N    ??uip_udp_new_0
        LDRB     R7,[R3, #+12]
        ADDS     R7,R7,#+1
        STRB     R7,[R3, #+12]
//  577       goto again;
//  578     }
//  579   }
        LDRH     R12,[R6], #+32
        CMP      R12,R5
        BEQ.N    ??uip_udp_new_0
        ADDS     R7,R7,#+1
        STRB     R7,[R3, #+12]
        UXTB     R7,R7
        CMP      R7,#+10
        BLT.N    ??uip_udp_new_1
//  580 
//  581   conn = 0;
//  582   for(c = 0; c < UIP_UDP_CONNS; ++c) {
        MOVS     R4,#+0
        STRB     R4,[R3, #+12]
        ADD      R4,R0,#+16
//  583     if(uip_udp_conns[c].lport == 0) {
??uip_udp_new_2:
        LDRH     R6,[R4], #+32
        CBNZ.N   R6,??uip_udp_new_3
//  584       conn = &uip_udp_conns[c];
??uip_udp_new_4:
        LDRB     R3,[R3, #+12]
        ADD      R4,R0,R3, LSL #+5
//  585       break;
//  586     }
//  587   }
//  588 
//  589   if(conn == 0) {
//  590     return 0;
//  591   }
//  592   
//  593   conn->lport = UIP_HTONS(lastport);
        STRH     R5,[R4, #+16]
//  594   conn->rport = rport;
        STRH     R1,[R4, #+18]
//  595   if(ripaddr == NULL) {
        CBNZ.N   R2,??uip_udp_new_5
//  596     memset(&conn->ripaddr, 0, sizeof(uip_ipaddr_t));
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOV      R3,R0
        STM      R4!,{R0-R3}
        SUBS     R4,R4,#+16
//  597   } else {
        B.N      ??uip_udp_new_6
??uip_udp_new_3:
        LDRB     R6,[R3, #+12]
        ADDS     R6,R6,#+1
        STRB     R6,[R3, #+12]
        LDRH     R7,[R4], #+32
        CMP      R7,#+0
        BEQ.N    ??uip_udp_new_4
        ADDS     R6,R6,#+1
        STRB     R6,[R3, #+12]
        UXTB     R6,R6
        CMP      R6,#+10
        BLT.N    ??uip_udp_new_2
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
//  598     uip_ipaddr_copy(&conn->ripaddr, ripaddr);
??uip_udp_new_5:
        MOV      R1,R2
        MOV      R0,R4
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  599   }
//  600   conn->ttl = uip_ds6_if.cur_hop_limit;
??uip_udp_new_6:
        LDR.W    R0,??DataTable11_6
        LDRB     R0,[R0, #+4]
        STRB     R0,[R4, #+20]
//  601   
//  602   return conn;
        MOV      R0,R4
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock11
//  603 }
//  604 #endif /* UIP_UDP */
//  605 /*---------------------------------------------------------------------------*/
//  606 #if UIP_TCP

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function uip_unlisten
          CFI NoCalls
        THUMB
//  607 void
//  608 uip_unlisten(uint16_t port)
//  609 {
//  610   for(c = 0; c < UIP_LISTENPORTS; ++c) {
uip_unlisten:
        LDR.W    R1,??DataTable11
        MOVS     R2,#+0
        STRB     R2,[R1, #+12]
//  611     if(uip_listenports[c] == port) {
        LDRH     R2,[R1, #+40]
        CMP      R2,R0
        BNE.N    ??uip_unlisten_0
//  612       uip_listenports[c] = 0;
??uip_unlisten_1:
        LDRB     R0,[R1, #+12]
        ADD      R0,R1,R0, LSL #+1
        MOVS     R1,#+0
        STRH     R1,[R0, #+40]
//  613       return;
        BX       LR
//  614     }
??uip_unlisten_0:
        MOVS     R2,#+1
        STRB     R2,[R1, #+12]
        LDRH     R2,[R1, #+42]
        CMP      R2,R0
        ITTTT    NE 
        MOVNE    R2,#+2
        STRBNE   R2,[R1, #+12]
        LDRHNE   R2,[R1, #+44]
        CMPNE    R2,R0
        BEQ.N    ??uip_unlisten_1
        MOVS     R2,#+3
        STRB     R2,[R1, #+12]
        LDRH     R2,[R1, #+46]
        CMP      R2,R0
        ITTTT    NE 
        MOVNE    R2,#+4
        STRBNE   R2,[R1, #+12]
        LDRHNE   R2,[R1, #+48]
        CMPNE    R2,R0
        BEQ.N    ??uip_unlisten_1
        MOVS     R2,#+5
        STRB     R2,[R1, #+12]
        LDRH     R2,[R1, #+50]
        CMP      R2,R0
        ITTTT    NE 
        MOVNE    R2,#+6
        STRBNE   R2,[R1, #+12]
        LDRHNE   R2,[R1, #+52]
        CMPNE    R2,R0
        BEQ.N    ??uip_unlisten_1
        MOVS     R2,#+7
        STRB     R2,[R1, #+12]
        LDRH     R2,[R1, #+54]
        CMP      R2,R0
        BEQ.N    ??uip_unlisten_1
//  615   }
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock12
//  616 }
//  617 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function uip_listen
          CFI NoCalls
        THUMB
//  618 void
//  619 uip_listen(uint16_t port)
//  620 {
//  621   for(c = 0; c < UIP_LISTENPORTS; ++c) {
uip_listen:
        LDR.N    R1,??DataTable11
        MOVS     R2,#+0
        STRB     R2,[R1, #+12]
//  622     if(uip_listenports[c] == 0) {
        LDRH     R2,[R1, #+40]
        CBNZ.N   R2,??uip_listen_0
//  623       uip_listenports[c] = port;
??uip_listen_1:
        LDRB     R2,[R1, #+12]
        ADD      R1,R1,R2, LSL #+1
        STRH     R0,[R1, #+40]
//  624       return;
        BX       LR
//  625     }
??uip_listen_0:
        MOVS     R2,#+1
        STRB     R2,[R1, #+12]
        LDRH     R2,[R1, #+42]
        CMP      R2,#+0
        ITTTT    NE 
        MOVNE    R2,#+2
        STRBNE   R2,[R1, #+12]
        LDRHNE   R2,[R1, #+44]
        CMPNE    R2,#+0
        BEQ.N    ??uip_listen_1
        MOVS     R2,#+3
        STRB     R2,[R1, #+12]
        LDRH     R2,[R1, #+46]
        CMP      R2,#+0
        ITTTT    NE 
        MOVNE    R2,#+4
        STRBNE   R2,[R1, #+12]
        LDRHNE   R2,[R1, #+48]
        CMPNE    R2,#+0
        BEQ.N    ??uip_listen_1
        MOVS     R2,#+5
        STRB     R2,[R1, #+12]
        LDRH     R2,[R1, #+50]
        CMP      R2,#+0
        ITTTT    NE 
        MOVNE    R2,#+6
        STRBNE   R2,[R1, #+12]
        LDRHNE   R2,[R1, #+52]
        CMPNE    R2,#+0
        BEQ.N    ??uip_listen_1
        MOVS     R2,#+7
        STRB     R2,[R1, #+12]
        LDRH     R2,[R1, #+54]
        CMP      R2,#+0
        BEQ.N    ??uip_listen_1
          CFI EndBlock cfiBlock13
//  626   }
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  627 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls uip_listen
          CFI NoCalls uip_unlisten
        THUMB
?Subroutine0:
        MOVS     R0,#+8
        STRB     R0,[R1, #+12]
        BX       LR               ;; return
          CFI EndBlock cfiBlock14

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
iss:
        DS8 4
uip_acc32:
        DS8 4
uip_ext_bitmap:
        DS8 1
uip_ext_len:
        DS8 1
uip_ext_opt_offset:
        DS8 1
uip_flags:
        DS8 1
        DS8 1
        DS8 1
//  628 #endif
//  629 /*---------------------------------------------------------------------------*/
//  630 
//  631 #if UIP_CONF_IPV6_REASSEMBLY
//  632 #define UIP_REASS_BUFSIZE (UIP_BUFSIZE - UIP_LLH_LEN)
//  633 
//  634 static uint8_t uip_reassbuf[UIP_REASS_BUFSIZE];
//  635 
//  636 static uint8_t uip_reassbitmap[UIP_REASS_BUFSIZE / (8 * 8)];
//  637 /*the first byte of an IP fragment is aligned on an 8-byte boundary */
//  638 
//  639 static const uint8_t bitmap_bits[8] = {0xff, 0x7f, 0x3f, 0x1f,
//  640                                     0x0f, 0x07, 0x03, 0x01};
//  641 static uint16_t uip_reasslen;
//  642 static uint8_t uip_reassflags;
//  643 
//  644 #define UIP_REASS_FLAG_LASTFRAG 0x01
//  645 #define UIP_REASS_FLAG_FIRSTFRAG 0x02
//  646 #define UIP_REASS_FLAG_ERROR_MSG 0x04
//  647 
//  648 
//  649 /*
//  650  * See RFC 2460 for a description of fragmentation in IPv6
//  651  * A typical Ipv6 fragment
//  652  *  +------------------+--------+--------------+
//  653  *  |  Unfragmentable  |Fragment|    first     |
//  654  *  |       Part       | Header |   fragment   |
//  655  *  +------------------+--------+--------------+
//  656  */
//  657 
//  658 
//  659 struct etimer uip_reass_timer; /* timer for reassembly */
//  660 uint8_t uip_reass_on; /* equal to 1 if we are currently reassembling a packet */
uip_reass_on:
        DS8 1
        DS8 1
        DS8 24
uip_listenports:
        DS8 16
uip_len:
        DS8 2
uip_slen:
        DS8 2
        DS8 2
        DS8 2
uip_next_hdr:
        DS8 4
uip_appdata:
        DS8 4
uip_sappdata:
        DS8 4
uip_conn:
        DS8 4
uip_udp_conn:
        DS8 4
        DS8 4
        DS8 1516
uip_reass_timer:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uip_aligned_buf:
        DS8 1516
uip_conns:
        DS8 480

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uip_udp_conns:
        DS8 320

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
uip_icmp6_conns:
        DS8 8
//  661 
//  662 static uint32_t uip_id; /* For every packet that is to be fragmented, the source
//  663                         node generates an Identification value that is present
//  664                         in all the fragments */
//  665 #define IP_MF   0x0001
//  666 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function uip_reass
        THUMB
//  667 static uint16_t
//  668 uip_reass(void)
//  669 {
uip_reass:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
//  670   uint16_t offset=0;
//  671   uint16_t len;
//  672   uint16_t i;
//  673   
//  674   /* If ip_reasstmr is zero, no packet is present in the buffer */
//  675   /* We first write the unfragmentable part of IP header into the reassembly
//  676      buffer. The reset the other reassembly variables. */
//  677   if(uip_reass_on == 0) {
        LDR.N    R5,??DataTable11
        LDR.N    R4,??DataTable11_1
        LDRB     R0,[R5, #+14]
        CBNZ.N   R0,??uip_reass_0
//  678     PRINTF("Starting reassembly\n");
//  679     memcpy(FBUF, UIP_IP_BUF, uip_ext_len + UIP_IPH_LEN);
        LDRB     R0,[R5, #+9]
        ADD      R2,R0,#+40
        MOV      R1,R4
        ADD      R0,R5,#+88
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  680     /* temporary in case we do not receive the fragment with offset 0 first */
//  681     etimer_set(&uip_reass_timer, UIP_REASS_MAXAGE*CLOCK_SECOND);
        MOVW     R1,#+60000
        ADDW     R0,R5,#+1604
          CFI FunCall etimer_set
        BL       etimer_set
//  682     uip_reass_on = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+14]
//  683     uip_reassflags = 0;
//  684     uip_id = UIP_FRAG_BUF->id;
//  685     /* Clear the bitmap. */
//  686     memset(uip_reassbitmap, 0, sizeof(uip_reassbitmap));
        MOVS     R1,#+23
        MOVS     R0,#+0
        STRB     R0,[R5, #+13]
        LDRB     R0,[R5, #+9]
        ADDS     R0,R0,R4
        LDR      R0,[R0, #+44]
        STR      R0,[R5, #+84]
        ADD      R0,R5,#+16
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  687   }
//  688   /*
//  689    * Check if the incoming fragment matches the one currently present
//  690    * in the reasembly buffer. If so, we proceed with copying the fragment
//  691    * into the buffer.
//  692    */
//  693   if(uip_ipaddr_cmp(&FBUF->srcipaddr, &UIP_IP_BUF->srcipaddr) &&
//  694      uip_ipaddr_cmp(&FBUF->destipaddr, &UIP_IP_BUF->destipaddr) &&
//  695      UIP_FRAG_BUF->id == uip_id) {
??uip_reass_0:
        MOVS     R2,#+16
        ADD      R1,R4,#+8
        ADD      R0,R5,#+96
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.W    ??uip_reass_1
        MOVS     R2,#+16
        ADD      R1,R4,#+24
        ADD      R0,R5,#+112
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.W    ??uip_reass_1
        LDRB     R1,[R5, #+9]
        LDR      R3,[R5, #+84]
        ADDS     R0,R1,R4
        LDR      R2,[R0, #+44]
        CMP      R2,R3
        BNE.W    ??uip_reass_1
//  696     len = uip_len - uip_ext_len - UIP_IPH_LEN - UIP_FRAGH_LEN;
        LDRH     R2,[R5, #+56]
        SUBS     R1,R2,R1
        SUBS     R1,R1,#+48
        UXTH     R7,R1
//  697     offset = (uip_ntohs(UIP_FRAG_BUF->offsetresmore) & 0xfff8);
        LDRH     R1,[R0, #+42]
        LSRS     R2,R1,#+8
        ORR      R1,R2,R1, LSL #+8
        MOVW     R2,#+65528
        ANDS     R6,R2,R1
//  698     /* in byte, originaly in multiple of 8 bytes*/
//  699     PRINTF("len %d\n", len);
//  700     PRINTF("offset %d\n", offset);
//  701     if(offset == 0){
        BNE.N    ??uip_reass_2
//  702       uip_reassflags |= UIP_REASS_FLAG_FIRSTFRAG;
        LDRB     R1,[R5, #+13]
        ORR      R1,R1,#0x2
        STRB     R1,[R5, #+13]
//  703       /*
//  704        * The Next Header field of the last header of the Unfragmentable
//  705        * Part is obtained from the Next Header field of the first
//  706        * fragment's Fragment header.
//  707        */
//  708       *uip_next_hdr = UIP_FRAG_BUF->next;
        LDR      R1,[R5, #+64]
        LDRB     R0,[R0, #+40]
        STRB     R0,[R1, #+0]
//  709       memcpy(FBUF, UIP_IP_BUF, uip_ext_len + UIP_IPH_LEN);
        MOV      R1,R4
        LDRB     R0,[R5, #+9]
        ADD      R2,R0,#+40
        ADD      R0,R5,#+88
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  710       PRINTF("src ");
//  711       PRINT6ADDR(&FBUF->srcipaddr);
//  712       PRINTF("dest ");
//  713       PRINT6ADDR(&FBUF->destipaddr);
//  714       PRINTF("next %d\n", UIP_IP_BUF->proto);
//  715       
//  716     }
//  717     
//  718     /* If the offset or the offset + fragment length overflows the
//  719        reassembly buffer, we discard the entire packet. */
//  720     if(offset > UIP_REASS_BUFSIZE ||
//  721        offset + len > UIP_REASS_BUFSIZE) {
??uip_reass_2:
        MOVW     R0,#+1515
        CMP      R6,R0
        ITT      LT 
        ADDLT    R8,R7,R6
        CMPLT    R8,R0
        BLT.N    ??uip_reass_3
//  722       uip_reass_on = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+14]
//  723       etimer_stop(&uip_reass_timer);
        ADDW     R0,R5,#+1604
          CFI FunCall etimer_stop
        BL       etimer_stop
//  724       return 0;
        B.N      ??uip_reass_1
//  725     }
??uip_reass_3:
        LDRB     R0,[R5, #+9]
        ADDS     R1,R0,R4
        LDRH     R2,[R1, #+42]
//  726 
//  727     /* If this fragment has the More Fragments flag set to zero, it is the
//  728        last fragment*/
//  729     if((uip_ntohs(UIP_FRAG_BUF->offsetresmore) & IP_MF) == 0) {
        LSLS     R2,R2,#+23
        BMI.N    ??uip_reass_4
//  730       uip_reassflags |= UIP_REASS_FLAG_LASTFRAG;
        LDRB     R2,[R5, #+13]
        ORR      R2,R2,#0x1
        STRB     R2,[R5, #+13]
//  731       /*calculate the size of the entire packet*/
//  732       uip_reasslen = offset + len;
        ADDS     R2,R7,R6
        STRH     R2,[R5, #+62]
//  733       PRINTF("LAST FRAGMENT reasslen %d\n", uip_reasslen);
//  734     } else {
//  735       /* If len is not a multiple of 8 octets and the M flag of that fragment
//  736          is 1, then that fragment must be discarded and an ICMP Parameter
//  737          Problem, Code 0, message should be sent to the source of the fragment,
//  738          pointing to the Payload Length field of the fragment packet. */
//  739       if(len % 8 != 0){
//  740         uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_HEADER, 4);
//  741         uip_reassflags |= UIP_REASS_FLAG_ERROR_MSG;
//  742         /* not clear if we should interrupt reassembly, but it seems so from
//  743            the conformance tests */
//  744         uip_reass_on = 0;
//  745         etimer_stop(&uip_reass_timer);
//  746         return uip_len;
//  747       }
//  748     }
//  749     
//  750     /* Copy the fragment into the reassembly buffer, at the right
//  751        offset. */
//  752     memcpy((uint8_t *)FBUF + UIP_IPH_LEN + uip_ext_len + offset,
//  753            (uint8_t *)UIP_FRAG_BUF + UIP_FRAGH_LEN, len);
??uip_reass_5:
        ADDS     R0,R0,R5
        ADDS     R0,R6,R0
        MOV      R2,R7
        ADDS     R1,R1,#+48
        ADDS     R0,R0,#+128
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LSRS     R0,R6,#+3
        ADR.W    R7,bitmap_bits
        AND      R0,R0,#0x7
        ASR      R9,R8,#+6
        LDRB     R1,[R0, R7]
        ADD      R0,R5,R6, ASR #+6
        LSRS     R3,R6,#+6
        LDRB     R2,[R0, #+16]
        CMP      R3,R9
        BNE.N    ??uip_reass_6
//  754     
//  755     /* Update the bitmap. */
//  756     if(offset >> 6 == (offset + len) >> 6) {
//  757       uip_reassbitmap[offset >> 6] |=
//  758         bitmap_bits[(offset >> 3) & 7] &
//  759         ~bitmap_bits[((offset + len) >> 3)  & 7];
        ASR      R3,R8,#+3
        AND      R3,R3,#0x7
        LDRB     R3,[R3, R7]
        BICS     R1,R1,R3
        ORRS     R1,R1,R2
        B.N      ??uip_reass_7
//  760     } else {
??uip_reass_4:
        LSRS     R2,R7,#+2
        ADD      R2,R7,R2, LSR #+29
        LSRS     R2,R2,#+3
        SUBS     R2,R7,R2, LSL #+3
        BEQ.N    ??uip_reass_5
        MOVS     R2,#+4
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall uip_icmp6_error_output
        BL       uip_icmp6_error_output
        LDRB     R0,[R5, #+13]
        ORR      R0,R0,#0x4
        STRB     R0,[R5, #+13]
        MOVS     R0,#+0
        STRB     R0,[R5, #+14]
        ADDW     R0,R5,#+1604
          CFI FunCall etimer_stop
        BL       etimer_stop
        LDRH     R0,[R5, #+56]
        POP      {R1,R4-R9,PC}
//  761       /* If the two endpoints are in different bytes, we update the
//  762          bytes in the endpoints and fill the stuff inbetween with
//  763          0xff. */
//  764       uip_reassbitmap[offset >> 6] |= bitmap_bits[(offset >> 3) & 7];
??uip_reass_6:
        ORRS     R1,R1,R2
        STRB     R1,[R0, #+16]
        ADDS     R0,R3,#+1
//  765  
//  766       for(i = (1 + (offset >> 6)); i < ((offset + len) >> 6); ++i) {
        UXTH     R0,R0
        CMP      R0,R9
        BGE.N    ??uip_reass_8
//  767         uip_reassbitmap[i] = 0xff;
        SUB      R1,R9,R0
        ADDS     R0,R0,R5
        MOVS     R2,#+255
        ADDS     R0,R0,#+16
          CFI FunCall __aeabi_memset
        BL       __aeabi_memset
//  768       }
//  769       uip_reassbitmap[(offset + len) >> 6] |=
//  770         ~bitmap_bits[((offset + len) >> 3) & 7];
??uip_reass_8:
        ASR      R2,R8,#+3
        ADD      R0,R9,R5
        AND      R2,R2,#0x7
        LDRB     R1,[R0, #+16]
        LDRB     R2,[R2, R7]
        ORN      R1,R1,R2
??uip_reass_7:
        STRB     R1,[R0, #+16]
//  771     }
//  772   
//  773     /* Finally, we check if we have a full packet in the buffer. We do
//  774        this by checking if we have the last fragment and if all bits
//  775        in the bitmap are set. */
//  776     
//  777     if(uip_reassflags & UIP_REASS_FLAG_LASTFRAG) {
        LDRB     R0,[R5, #+13]
        LSLS     R0,R0,#+31
        BPL.N    ??uip_reass_1
//  778       /* Check all bytes up to and including all but the last byte in
//  779          the bitmap. */
//  780       for(i = 0; i < (uip_reasslen >> 6); ++i) {
        LDRH     R2,[R5, #+62]
        MOVS     R0,#+0
        ADD      R1,R5,#+16
        B.N      ??uip_reass_9
??uip_reass_10:
        ADDS     R0,R0,#+1
??uip_reass_9:
        UXTH     R0,R0
        CMP      R0,R2, LSR #+6
        BCS.N    ??uip_reass_11
//  781         if(uip_reassbitmap[i] != 0xff) {
        LDRB     R6,[R1], #+1
        CMP      R6,#+255
        BEQ.N    ??uip_reass_10
//  782           return 0;
        B.N      ??uip_reass_1
//  783         }
//  784       }
//  785       /* Check the last byte in the bitmap. It should contain just the
//  786          right amount of bits. */
//  787       if(uip_reassbitmap[uip_reasslen >> 6] !=
//  788          (uint8_t)~bitmap_bits[(uip_reasslen >> 3) & 7]) {
??uip_reass_11:
        UBFX     R1,R2,#+3,#+3
        ADD      R0,R5,R2, ASR #+6
        LDRB     R1,[R1, R7]
        LDRB     R0,[R0, #+16]
        MVNS     R1,R1
        UXTB     R1,R1
        CMP      R0,R1
        BNE.N    ??uip_reass_1
//  789         return 0;
//  790       }
//  791 
//  792      /* If we have come this far, we have a full packet in the
//  793          buffer, so we copy it to uip_buf. We also reset the timer. */
//  794       uip_reass_on = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+14]
//  795       etimer_stop(&uip_reass_timer);
        ADDW     R0,R5,#+1604
          CFI FunCall etimer_stop
        BL       etimer_stop
//  796 
//  797       uip_reasslen += UIP_IPH_LEN + uip_ext_len;
        LDRB     R1,[R5, #+9]
        LDRH     R0,[R5, #+62]
        ADDS     R1,R1,#+40
        ADDS     R0,R1,R0
        STRH     R0,[R5, #+62]
//  798       memcpy(UIP_IP_BUF, FBUF, uip_reasslen);
        ADD      R1,R5,#+88
        LDRH     R2,[R5, #+62]
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  799       UIP_IP_BUF->len[0] = ((uip_reasslen - UIP_IPH_LEN) >> 8);
        LDRH     R0,[R5, #+62]
        SUB      R1,R0,#+40
        ASRS     R1,R1,#+8
        STRB     R1,[R4, #+4]
//  800       UIP_IP_BUF->len[1] = ((uip_reasslen - UIP_IPH_LEN) & 0xff);
        SUB      R1,R0,#+40
        STRB     R1,[R4, #+5]
//  801       PRINTF("REASSEMBLED PAQUET %d (%d)\n", uip_reasslen,
//  802              (UIP_IP_BUF->len[0] << 8) | UIP_IP_BUF->len[1]);
//  803    
//  804       return uip_reasslen;
        POP      {R1,R4-R9,PC}
//  805       
//  806     }
//  807   } else {
//  808     PRINTF("Already reassembling another paquet\n");
//  809   }
//  810   return 0;
??uip_reass_1:
        MOVS     R0,#+0
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock15
//  811 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
bitmap_bits:
        DC8 255, 127, 63, 31, 15, 7, 3, 1
//  812 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function uip_reass_over
        THUMB
//  813 void
//  814 uip_reass_over(void)
//  815 {
uip_reass_over:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  816    /* to late, we abandon the reassembly of the packet */
//  817 
//  818   uip_reass_on = 0;
        LDR.N    R4,??DataTable11
        MOVS     R0,#+0
        STRB     R0,[R4, #+14]
//  819   etimer_stop(&uip_reass_timer);
        ADDW     R0,R4,#+1604
          CFI FunCall etimer_stop
        BL       etimer_stop
//  820 
//  821   if(uip_reassflags & UIP_REASS_FLAG_FIRSTFRAG){
        LDRB     R0,[R4, #+13]
        LSLS     R0,R0,#+30
        BPL.N    ??uip_reass_over_0
//  822     PRINTF("FRAG INTERRUPTED TOO LATE\n");
//  823     /* If the first fragment has been received, an ICMP Time Exceeded
//  824        -- Fragment Reassembly Time Exceeded message should be sent to the
//  825        source of that fragment. */
//  826     /** \note
//  827      * We don't have a complete packet to put in the error message.
//  828      * We could include the first fragment but since its not mandated by
//  829      * any RFC, we decided not to include it as it reduces the size of
//  830      * the packet.
//  831      */
//  832     uip_len = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+56]
//  833     uip_ext_len = 0;
        STRB     R0,[R4, #+9]
//  834     memcpy(UIP_IP_BUF, FBUF, UIP_IPH_LEN); /* copy the header for src
        MOVS     R2,#+40
        ADD      R1,R4,#+88
        LDR.N    R0,??DataTable11_1
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  835                                               and dest address*/
//  836     uip_icmp6_error_output(ICMP6_TIME_EXCEEDED, ICMP6_TIME_EXCEED_REASSEMBLY, 0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+3
          CFI FunCall uip_icmp6_error_output
        BL       uip_icmp6_error_output
//  837     
//  838     UIP_STAT(++uip_stat.ip.sent);
//  839     uip_flags = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+11]
//  840   }
//  841 }
??uip_reass_over_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock16
//  842 
//  843 #endif /* UIP_CONF_IPV6_REASSEMBLY */
//  844 
//  845 /*---------------------------------------------------------------------------*/
//  846 #if UIP_TCP
//  847 static void
//  848 uip_add_rcv_nxt(uint16_t n)
//  849 {
//  850   uip_add32(uip_conn->rcv_nxt, n);
//  851   uip_conn->rcv_nxt[0] = uip_acc32[0];
//  852   uip_conn->rcv_nxt[1] = uip_acc32[1];
//  853   uip_conn->rcv_nxt[2] = uip_acc32[2];
//  854   uip_conn->rcv_nxt[3] = uip_acc32[3];
//  855 }
//  856 #endif
//  857 /*---------------------------------------------------------------------------*/
//  858 
//  859 /**
//  860  * \brief Process the options in Destination and Hop By Hop extension headers
//  861  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function ext_hdr_options_process
        THUMB
//  862 static uint8_t
//  863 ext_hdr_options_process(void)
//  864 {
ext_hdr_options_process:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  865  /*
//  866   * Length field in the extension header: length of the header in units of
//  867   * 8 bytes, excluding the first 8 bytes
//  868   * length field in an option : the length of data in the option
//  869   */
//  870   uip_ext_opt_offset = 2;
        LDR.N    R0,??DataTable11
        LDR.N    R3,??DataTable11_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+10]
        LDRB     R1,[R0, #+9]
        ADDS     R4,R1,R3
        LDRB     R4,[R4, #+41]
        LSLS     R4,R4,#+3
        ADDS     R4,R4,#+8
        B.N      ??ext_hdr_options_process_0
//  871   while(uip_ext_opt_offset < ((UIP_EXT_BUF->len << 3) + 8)) {
//  872     switch(UIP_EXT_HDR_OPT_BUF->type) {
//  873       /*
//  874        * for now we do not support any options except padding ones
//  875        * PAD1 does not make sense as the header must be 8bytes aligned,
//  876        * hence we can only have
//  877        */
//  878       case UIP_EXT_HDR_OPT_PAD1:
//  879         PRINTF("Processing PAD1 option\n");
//  880         uip_ext_opt_offset += 1;
??ext_hdr_options_process_1:
        ADDS     R5,R5,#+1
??ext_hdr_options_process_2:
        STRB     R5,[R0, #+10]
//  881         break;
??ext_hdr_options_process_0:
        LDRB     R5,[R0, #+10]
        CMP      R5,R4
        BGE.N    ??ext_hdr_options_process_3
        ADDS     R6,R5,R1
        ADDS     R6,R6,R3
        LDRB     R7,[R6, #+40]
        CMP      R7,#+0
        BEQ.N    ??ext_hdr_options_process_1
        CMP      R7,#+1
        BEQ.N    ??ext_hdr_options_process_4
        CMP      R7,#+99
        BNE.N    ??ext_hdr_options_process_5
        B.N      ??ext_hdr_options_process_6
//  882       case UIP_EXT_HDR_OPT_PADN:
//  883         PRINTF("Processing PADN option\n");
//  884         uip_ext_opt_offset += UIP_EXT_HDR_OPT_PADN_BUF->opt_len + 2;
??ext_hdr_options_process_4:
        LDRB     R6,[R6, #+41]
        ADDS     R6,R6,#+2
        ADDS     R5,R6,R5
        B.N      ??ext_hdr_options_process_2
//  885         break;
//  886       case UIP_EXT_HDR_OPT_RPL:
//  887 		/* Fixes situation when a node that is not using RPL
//  888 		 * joins a network which does. The received packages will include the
//  889 		 * RPL header and processed by the "default" case of the switch
//  890 		 * (0x63 & 0xC0 = 0x40). Hence, the packet is discarded as the header
//  891 		 * is considered invalid.
//  892 		 * Using this fix, the header is ignored, and the next header (if
//  893 		 * present) is processed.
//  894 		 */
//  895 #if UIP_CONF_IPV6_RPL
//  896         PRINTF("Processing RPL option\n");
//  897         if(rpl_verify_header(uip_ext_opt_offset)) {
//  898           PRINTF("RPL Option Error: Dropping Packet\n");
//  899           return 1;
//  900         }
//  901 #endif /* UIP_CONF_IPV6_RPL */
//  902         uip_ext_opt_offset += (UIP_EXT_HDR_OPT_BUF->len) + 2;
??ext_hdr_options_process_6:
        LDRB     R1,[R6, #+41]
        ADDS     R1,R1,#+2
        ADDS     R1,R1,R5
        STRB     R1,[R0, #+10]
//  903         return 0;
        B.N      ??ext_hdr_options_process_3
//  904       default:
//  905         /*
//  906          * check the two highest order bits of the option
//  907          * - 00 skip over this option and continue processing the header.
//  908          * - 01 discard the packet.
//  909          * - 10 discard the packet and, regardless of whether or not the
//  910          *   packet's Destination Address was a multicast address, send an
//  911          *   ICMP Parameter Problem, Code 2, message to the packet's
//  912          *   Source Address, pointing to the unrecognized Option Type.
//  913          * - 11 discard the packet and, only if the packet's Destination
//  914          *   Address was not a multicast address, send an ICMP Parameter
//  915          *   Problem, Code 2, message to the packet's Source Address,
//  916          *   pointing to the unrecognized Option Type.
//  917          */
//  918         PRINTF("MSB %x\n", UIP_EXT_HDR_OPT_BUF->type);
//  919         switch(UIP_EXT_HDR_OPT_BUF->type & 0xC0) {
??ext_hdr_options_process_5:
        AND      R7,R7,#0xC0
        CMP      R7,#+64
        BEQ.N    ??ext_hdr_options_process_7
        CMP      R7,#+128
        BEQ.N    ??ext_hdr_options_process_8
        CMP      R7,#+192
        BNE.N    ??ext_hdr_options_process_9
//  920           case 0:
//  921             break;
//  922           case 0x40:
//  923             return 1;
//  924           case 0xC0:
//  925             if(uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
        LDRB     R0,[R3, #+24]
        CMP      R0,#+255
        BNE.N    ??ext_hdr_options_process_8
//  926               return 1;
??ext_hdr_options_process_7:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//  927             }
//  928           case 0x80:
//  929             uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_OPTION,
//  930                              (uint32_t)UIP_IPH_LEN + uip_ext_len + uip_ext_opt_offset);
??ext_hdr_options_process_8:
        ADDS     R0,R5,R1
        ADD      R2,R0,#+40
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall uip_icmp6_error_output
        BL       uip_icmp6_error_output
//  931             return 2;
        MOVS     R0,#+2
        POP      {R1,R4-R7,PC}
//  932         }
//  933         /* in the cases were we did not discard, update ext_opt* */
//  934         uip_ext_opt_offset += UIP_EXT_HDR_OPT_BUF->len + 2;
??ext_hdr_options_process_9:
        LDRB     R6,[R6, #+41]
        ADDS     R6,R6,#+2
        ADDS     R5,R6,R5
        B.N      ??ext_hdr_options_process_2
//  935         break;
//  936     }
//  937   }
//  938   return 0;
??ext_hdr_options_process_3:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock17
//  939 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     iss

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     uip_aligned_buf+0x611

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     uip_udp_conns+0x10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     uip_aligned_buf+0x5EC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     uip_udp_conns

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     uip_ds6_if
//  940 
//  941 
//  942 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function uip_process
        THUMB
//  943 void
//  944 uip_process(uint8_t flag)
//  945 {
uip_process:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  946 #if UIP_TCP
//  947   register struct uip_conn *uip_connr = uip_conn;
        LDR.W    R4,??uip_process_2
        LDR      R6,[R4, #+76]
//  948 #endif /* UIP_TCP */
//  949 #if UIP_UDP
//  950   if(flag == UIP_UDP_SEND_CONN) {
        CMP      R0,#+4
        BEQ.W    ??uip_process_3
//  951     goto udp_send;
//  952   }
//  953 #endif /* UIP_UDP */
//  954   uip_sappdata = uip_appdata = &uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN];
        LDR.W    R5,??uip_process_2+0x4
        ADD      R1,R5,#+60
//  955    
//  956   /* Check if we were invoked because of a poll request for a
//  957      particular connection. */
//  958   if(flag == UIP_POLL_REQUEST) {
        CMP      R0,#+3
        STR      R1,[R4, #+68]
        STR      R1,[R4, #+72]
        BNE.N    ??uip_process_4
//  959 #if UIP_TCP
//  960     if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_ESTABLISHED &&
//  961        !uip_outstanding(uip_connr)) {
        ADD      R0,R6,#+28
        LDRB     R0,[R0, #+9]
        AND      R1,R0,#0xF
        CMP      R1,#+3
        BNE.N    ??uip_process_5
        LDRH     R0,[R6, #+28]
        CMP      R0,#+0
        BEQ.N    ??uip_process_6
//  962       uip_flags = UIP_POLL;
//  963       UIP_APPCALL();
//  964       goto appsend;
//  965 #if UIP_ACTIVE_OPEN
//  966     } else if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_SENT) {
//  967       /* In the SYN_SENT state, we retransmit out SYN. */
//  968       UIP_TCP_BUF->flags = 0;
//  969       goto tcp_send_syn;
//  970 #endif /* UIP_ACTIVE_OPEN */
//  971     }
//  972     goto drop;
//  973 #endif /* UIP_TCP */
//  974     /* Check if we were invoked because of the perodic timer fireing. */
//  975   } else if(flag == UIP_TIMER) {
//  976     /* Reset the length variables. */
//  977 #if UIP_TCP
//  978     uip_len = 0;
//  979     uip_slen = 0;
//  980     
//  981     /* Increase the initial sequence number. */
//  982     if(++iss[3] == 0) {
//  983       if(++iss[2] == 0) {
//  984         if(++iss[1] == 0) {
//  985           ++iss[0];
//  986         }
//  987       }
//  988     }
//  989     
//  990     /*
//  991      * Check if the connection is in a state in which we simply wait
//  992      * for the connection to time out. If so, we increase the
//  993      * connection's timer and remove the connection if it times
//  994      * out.
//  995      */
//  996     if(uip_connr->tcpstateflags == UIP_TIME_WAIT ||
//  997        uip_connr->tcpstateflags == UIP_FIN_WAIT_2) {
//  998       ++(uip_connr->timer);
//  999       if(uip_connr->timer == UIP_TIME_WAIT_TIMEOUT) {
// 1000         uip_connr->tcpstateflags = UIP_CLOSED;
// 1001       }
// 1002     } else if(uip_connr->tcpstateflags != UIP_CLOSED) {
// 1003       /*
// 1004        * If the connection has outstanding data, we increase the
// 1005        * connection's timer and see if it has reached the RTO value
// 1006        * in which case we retransmit.
// 1007        */
// 1008       if(uip_outstanding(uip_connr)) {
// 1009         if(uip_connr->timer-- == 0) {
// 1010           if(uip_connr->nrtx == UIP_MAXRTX ||
// 1011              ((uip_connr->tcpstateflags == UIP_SYN_SENT ||
// 1012                uip_connr->tcpstateflags == UIP_SYN_RCVD) &&
// 1013               uip_connr->nrtx == UIP_MAXSYNRTX)) {
// 1014             uip_connr->tcpstateflags = UIP_CLOSED;
// 1015                   
// 1016             /*
// 1017              * We call UIP_APPCALL() with uip_flags set to
// 1018              * UIP_TIMEDOUT to inform the application that the
// 1019              * connection has timed out.
// 1020              */
// 1021             uip_flags = UIP_TIMEDOUT;
// 1022             UIP_APPCALL();
// 1023                   
// 1024             /* We also send a reset packet to the remote host. */
// 1025             UIP_TCP_BUF->flags = TCP_RST | TCP_ACK;
// 1026             goto tcp_send_nodata;
// 1027           }
// 1028                
// 1029           /* Exponential backoff. */
// 1030           uip_connr->timer = UIP_RTO << (uip_connr->nrtx > 4?
// 1031                                          4:
// 1032                                          uip_connr->nrtx);
// 1033           ++(uip_connr->nrtx);
// 1034                
// 1035           /*
// 1036            * Ok, so we need to retransmit. We do this differently
// 1037            * depending on which state we are in. In ESTABLISHED, we
// 1038            * call upon the application so that it may prepare the
// 1039            * data for the retransmit. In SYN_RCVD, we resend the
// 1040            * SYNACK that we sent earlier and in LAST_ACK we have to
// 1041            * retransmit our FINACK.
// 1042            */
// 1043           UIP_STAT(++uip_stat.tcp.rexmit);
// 1044           switch(uip_connr->tcpstateflags & UIP_TS_MASK) {
// 1045             case UIP_SYN_RCVD:
// 1046               /* In the SYN_RCVD state, we should retransmit our SYNACK. */
// 1047               goto tcp_send_synack;
// 1048                      
// 1049 #if UIP_ACTIVE_OPEN
// 1050             case UIP_SYN_SENT:
// 1051               /* In the SYN_SENT state, we retransmit out SYN. */
// 1052               UIP_TCP_BUF->flags = 0;
// 1053               goto tcp_send_syn;
// 1054 #endif /* UIP_ACTIVE_OPEN */
// 1055                      
// 1056             case UIP_ESTABLISHED:
// 1057               /*
// 1058                * In the ESTABLISHED state, we call upon the application
// 1059                * to do the actual retransmit after which we jump into
// 1060                * the code for sending out the packet (the apprexmit
// 1061                * label).
// 1062                */
// 1063               uip_flags = UIP_REXMIT;
// 1064               UIP_APPCALL();
// 1065               goto apprexmit;
// 1066                      
// 1067             case UIP_FIN_WAIT_1:
// 1068             case UIP_CLOSING:
// 1069             case UIP_LAST_ACK:
// 1070               /* In all these states we should retransmit a FINACK. */
// 1071               goto tcp_send_finack;
// 1072           }
// 1073         }
// 1074       } else if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_ESTABLISHED) {
// 1075         /*
// 1076          * If there was no need for a retransmission, we poll the
// 1077          * application for new data.
// 1078          */
// 1079         uip_flags = UIP_POLL;
// 1080         UIP_APPCALL();
// 1081         goto appsend;
// 1082       }
// 1083     }
// 1084     goto drop;
// 1085 #endif /* UIP_TCP */
// 1086   }
// 1087 #if UIP_UDP
// 1088   if(flag == UIP_UDP_TIMER) {
// 1089     if(uip_udp_conn->lport != 0) {
// 1090       uip_conn = NULL;
// 1091       uip_sappdata = uip_appdata = &uip_buf[UIP_IPUDPH_LEN + UIP_LLH_LEN];
// 1092       uip_len = uip_slen = 0;
// 1093       uip_flags = UIP_POLL;
// 1094       UIP_UDP_APPCALL();
// 1095       goto udp_send;
// 1096     } else {
// 1097       goto drop;
// 1098     }
// 1099   }
// 1100 #endif /* UIP_UDP */
// 1101 
// 1102   
// 1103   /* This is where the input processing starts. */
// 1104   UIP_STAT(++uip_stat.ip.recv);
// 1105    
// 1106   /* Start of IP input header processing code. */
// 1107    
// 1108   /* Check validity of the IP header. */
// 1109   if((UIP_IP_BUF->vtc & 0xf0) != 0x60)  { /* IP version and header length. */
// 1110     UIP_STAT(++uip_stat.ip.drop);
// 1111     UIP_STAT(++uip_stat.ip.vhlerr);
// 1112     UIP_LOG("ipv6: invalid version.");
// 1113     goto drop;
// 1114   }
// 1115   /*
// 1116    * Check the size of the packet. If the size reported to us in
// 1117    * uip_len is smaller the size reported in the IP header, we assume
// 1118    * that the packet has been corrupted in transit. If the size of
// 1119    * uip_len is larger than the size reported in the IP packet header,
// 1120    * the packet has been padded and we set uip_len to the correct
// 1121    * value..
// 1122    */
// 1123    
// 1124   if((UIP_IP_BUF->len[0] << 8) + UIP_IP_BUF->len[1] <= uip_len) {
// 1125     uip_len = (UIP_IP_BUF->len[0] << 8) + UIP_IP_BUF->len[1] + UIP_IPH_LEN;
// 1126     /*
// 1127      * The length reported in the IPv6 header is the
// 1128      * length of the payload that follows the
// 1129      * header. However, uIP uses the uip_len variable
// 1130      * for holding the size of the entire packet,
// 1131      * including the IP header. For IPv4 this is not a
// 1132      * problem as the length field in the IPv4 header
// 1133      * contains the length of the entire packet. But
// 1134      * for IPv6 we need to add the size of the IPv6
// 1135      * header (40 bytes).
// 1136      */
// 1137   } else {
// 1138     UIP_LOG("ip: packet shorter than reported in IP header.");
// 1139     goto drop;
// 1140   }
// 1141   
// 1142   PRINTF("IPv6 packet received from ");
// 1143   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
// 1144   PRINTF(" to ");
// 1145   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
// 1146   PRINTF("\n");
// 1147 
// 1148   if(uip_is_addr_mcast(&UIP_IP_BUF->srcipaddr)){
// 1149     UIP_STAT(++uip_stat.ip.drop);
// 1150     PRINTF("Dropping packet, src is mcast\n");
// 1151     goto drop;
// 1152   }
// 1153 
// 1154 #if UIP_CONF_ROUTER
// 1155   /*
// 1156    * Next header field processing. In IPv6, we can have extension headers,
// 1157    * if present, the Hop-by-Hop Option must be processed before forwarding
// 1158    * the packet.
// 1159    */
// 1160   uip_next_hdr = &UIP_IP_BUF->proto;
// 1161   uip_ext_len = 0;
// 1162   uip_ext_bitmap = 0;
// 1163   if(*uip_next_hdr == UIP_PROTO_HBHO) {
// 1164 #if UIP_CONF_IPV6_CHECKS
// 1165     uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_HBHO;
// 1166 #endif /* UIP_CONF_IPV6_CHECKS */
// 1167     switch(ext_hdr_options_process()) {
// 1168       case 0:
// 1169         /* continue */
// 1170         uip_next_hdr = &UIP_EXT_BUF->next;
// 1171         uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
// 1172         break;
// 1173       case 1:
// 1174 	PRINTF("Dropping packet after extension header processing\n");
// 1175         /* silently discard */
// 1176         goto drop;
// 1177       case 2:
// 1178 	PRINTF("Sending error message after extension header processing\n");
// 1179         /* send icmp error message (created in ext_hdr_options_process)
// 1180          * and discard*/
// 1181         goto send;
// 1182     }
// 1183   }
// 1184 
// 1185   /*
// 1186    * Process Packets with a routable multicast destination:
// 1187    * - We invoke the multicast engine and let it do its thing
// 1188    *   (cache, forward etc).
// 1189    * - We never execute the datagram forwarding logic in this file here. When
// 1190    *   the engine returns, forwarding has been handled if and as required.
// 1191    * - Depending on the return value, we either discard or deliver up the stack
// 1192    *
// 1193    * All multicast engines must hook in here. After this function returns, we
// 1194    * expect UIP_BUF to be unmodified
// 1195    */
// 1196 #if UIP_CONF_IPV6_MULTICAST
// 1197   if(uip_is_addr_mcast_routable(&UIP_IP_BUF->destipaddr)) {
// 1198     if(UIP_MCAST6.in() == UIP_MCAST6_ACCEPT) {
// 1199       /* Deliver up the stack */
// 1200       goto process;
// 1201     } else {
// 1202       /* Don't deliver up the stack */
// 1203       goto drop;
// 1204     }
// 1205   }
// 1206 #endif /* UIP_IPV6_CONF_MULTICAST */
// 1207 
// 1208   /* TBD Some Parameter problem messages */
// 1209   if(!uip_ds6_is_my_addr(&UIP_IP_BUF->destipaddr) &&
// 1210      !uip_ds6_is_my_maddr(&UIP_IP_BUF->destipaddr)) {
// 1211     if(!uip_is_addr_mcast(&UIP_IP_BUF->destipaddr) &&
// 1212        !uip_is_addr_link_local(&UIP_IP_BUF->destipaddr) &&
// 1213        !uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr) &&
// 1214        !uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr) &&
// 1215        !uip_is_addr_loopback(&UIP_IP_BUF->destipaddr)) {
// 1216 
// 1217 
// 1218       /* Check MTU */
// 1219       if(uip_len > UIP_LINK_MTU) {
// 1220         uip_icmp6_error_output(ICMP6_PACKET_TOO_BIG, 0, UIP_LINK_MTU);
// 1221         UIP_STAT(++uip_stat.ip.drop);
// 1222         goto send;
// 1223       }
// 1224       /* Check Hop Limit */
// 1225       if(UIP_IP_BUF->ttl <= 1) {
// 1226         uip_icmp6_error_output(ICMP6_TIME_EXCEEDED,
// 1227                                ICMP6_TIME_EXCEED_TRANSIT, 0);
// 1228         UIP_STAT(++uip_stat.ip.drop);
// 1229         goto send;
// 1230       }
// 1231 
// 1232 #if UIP_CONF_IPV6_RPL
// 1233       if(rpl_update_header_empty()) {
// 1234         /* Packet can not be forwarded */
// 1235         PRINTF("RPL Forward Option Error\n");
// 1236         goto drop;
// 1237       }
// 1238 #endif /* UIP_CONF_IPV6_RPL */
// 1239 
// 1240       UIP_IP_BUF->ttl = UIP_IP_BUF->ttl - 1;
// 1241       PRINTF("Forwarding packet to ");
// 1242       PRINT6ADDR(&UIP_IP_BUF->destipaddr);
// 1243       PRINTF("\n");
// 1244       UIP_STAT(++uip_stat.ip.forwarded);
// 1245       goto send;
// 1246     } else {
// 1247       if((uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr)) &&
// 1248          (!uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) &&
// 1249          (!uip_is_addr_loopback(&UIP_IP_BUF->destipaddr)) &&
// 1250          (!uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) &&
// 1251          (!uip_ds6_is_addr_onlink((&UIP_IP_BUF->destipaddr)))) {
// 1252         PRINTF("LL source address with off link destination, dropping\n");
// 1253         uip_icmp6_error_output(ICMP6_DST_UNREACH,
// 1254                                ICMP6_DST_UNREACH_NOTNEIGHBOR, 0);
// 1255         goto send;
// 1256       }
// 1257       PRINTF("Dropping packet, not for me and link local or multicast\n");
// 1258       UIP_STAT(++uip_stat.ip.drop);
// 1259       goto drop;
// 1260     }
// 1261   }
// 1262 #else /* UIP_CONF_ROUTER */
// 1263   if(!uip_ds6_is_my_addr(&UIP_IP_BUF->destipaddr) &&
// 1264      !uip_ds6_is_my_maddr(&UIP_IP_BUF->destipaddr) &&
// 1265      !uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
// 1266     PRINTF("Dropping packet, not for me\n");
// 1267     UIP_STAT(++uip_stat.ip.drop);
// 1268     goto drop;
// 1269   }
// 1270 
// 1271   /*
// 1272    * Next header field processing. In IPv6, we can have extension headers,
// 1273    * they are processed here
// 1274    */
// 1275   uip_next_hdr = &UIP_IP_BUF->proto;
// 1276   uip_ext_len = 0;
// 1277   uip_ext_bitmap = 0;
// 1278 #endif /* UIP_CONF_ROUTER */
// 1279 
// 1280 #if UIP_CONF_IPV6_MULTICAST
// 1281   process:
// 1282 #endif
// 1283 
// 1284   while(1) {
// 1285     switch(*uip_next_hdr){
// 1286 #if UIP_TCP
// 1287       case UIP_PROTO_TCP:
// 1288         /* TCP, for both IPv4 and IPv6 */
// 1289         goto tcp_input;
// 1290 #endif /* UIP_TCP */
// 1291 #if UIP_UDP
// 1292       case UIP_PROTO_UDP:
// 1293         /* UDP, for both IPv4 and IPv6 */
// 1294         goto udp_input;
// 1295 #endif /* UIP_UDP */
// 1296       case UIP_PROTO_ICMP6:
// 1297         /* ICMPv6 */
// 1298         goto icmp6_input;
// 1299       case UIP_PROTO_HBHO:
// 1300         PRINTF("Processing hbh header\n");
// 1301         /* Hop by hop option header */
// 1302 #if UIP_CONF_IPV6_CHECKS
// 1303         /* Hop by hop option header. If we saw one HBH already, drop */
// 1304         if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_HBHO) {
// 1305           goto bad_hdr;
// 1306         } else {
// 1307           uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_HBHO;
// 1308         }
// 1309 #endif /*UIP_CONF_IPV6_CHECKS*/
// 1310         switch(ext_hdr_options_process()) {
// 1311           case 0:
// 1312             /*continue*/
// 1313             uip_next_hdr = &UIP_EXT_BUF->next;
// 1314             uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
// 1315             break;
// 1316           case 1:
// 1317             /*silently discard*/
// 1318             goto drop;
// 1319           case 2:
// 1320             /* send icmp error message (created in ext_hdr_options_process)
// 1321              * and discard*/
// 1322             goto send;
// 1323         }
// 1324         break;
// 1325       case UIP_PROTO_DESTO:
// 1326 #if UIP_CONF_IPV6_CHECKS
// 1327         /* Destination option header. if we saw two already, drop */
// 1328         PRINTF("Processing desto header\n");
// 1329         if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_DESTO1) {
// 1330           if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_DESTO2) {
// 1331             goto bad_hdr;
// 1332           } else{
// 1333             uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_DESTO2;
// 1334           }
// 1335         } else {
// 1336           uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_DESTO1;
// 1337         }
// 1338 #endif /*UIP_CONF_IPV6_CHECKS*/
// 1339         switch(ext_hdr_options_process()) {
// 1340           case 0:
// 1341             /*continue*/
// 1342             uip_next_hdr = &UIP_EXT_BUF->next;
// 1343             uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
// 1344             break;
// 1345           case 1:
// 1346             /*silently discard*/
// 1347             goto drop;
// 1348           case 2:
// 1349             /* send icmp error message (created in ext_hdr_options_process)
// 1350              * and discard*/
// 1351             goto send;
// 1352         }
// 1353         break;
// 1354       case UIP_PROTO_ROUTING:
// 1355 #if UIP_CONF_IPV6_CHECKS
// 1356         /* Routing header. If we saw one already, drop */
// 1357         if(uip_ext_bitmap & UIP_EXT_HDR_BITMAP_ROUTING) {
// 1358           goto bad_hdr;
// 1359         } else {
// 1360           uip_ext_bitmap |= UIP_EXT_HDR_BITMAP_ROUTING;
// 1361         }
// 1362 #endif /*UIP_CONF_IPV6_CHECKS*/
// 1363         /*
// 1364          * Routing Header  length field is in units of 8 bytes, excluding
// 1365          * As per RFC2460 section 4.4, if routing type is unrecognized:
// 1366          * if segments left = 0, ignore the header
// 1367          * if segments left > 0, discard packet and send icmp error pointing
// 1368          * to the routing type
// 1369          */
// 1370 
// 1371         PRINTF("Processing Routing header\n");
// 1372         if(UIP_ROUTING_BUF->seg_left > 0) {
// 1373           uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_HEADER, UIP_IPH_LEN + uip_ext_len + 2);
// 1374           UIP_STAT(++uip_stat.ip.drop);
// 1375           UIP_LOG("ip6: unrecognized routing type");
// 1376           goto send;
// 1377         }
// 1378         uip_next_hdr = &UIP_EXT_BUF->next;
// 1379         uip_ext_len += (UIP_EXT_BUF->len << 3) + 8;
// 1380         break;
// 1381       case UIP_PROTO_FRAG:
// 1382         /* Fragmentation header:call the reassembly function, then leave */
// 1383 #if UIP_CONF_IPV6_REASSEMBLY
// 1384         PRINTF("Processing frag header\n");
// 1385         uip_len = uip_reass();
// 1386         if(uip_len == 0) {
// 1387           goto drop;
// 1388         }
// 1389         if(uip_reassflags & UIP_REASS_FLAG_ERROR_MSG){
// 1390           /* we are not done with reassembly, this is an error message */
// 1391           goto send;
// 1392         }
// 1393         /*packet is reassembled, reset the next hdr to the beginning
// 1394            of the IP header and restart the parsing of the reassembled pkt*/
// 1395         PRINTF("Processing reassembled packet\n");
// 1396         uip_ext_len = 0;
// 1397         uip_ext_bitmap = 0;
// 1398         uip_next_hdr = &UIP_IP_BUF->proto;
// 1399         break;
// 1400 #else /* UIP_CONF_IPV6_REASSEMBLY */
// 1401         UIP_STAT(++uip_stat.ip.drop);
// 1402         UIP_STAT(++uip_stat.ip.fragerr);
// 1403         UIP_LOG("ip: fragment dropped.");
// 1404         goto drop;
// 1405 #endif /* UIP_CONF_IPV6_REASSEMBLY */
// 1406       case UIP_PROTO_NONE:
// 1407         goto drop;
// 1408       default:
// 1409         goto bad_hdr;
// 1410     }
// 1411   }
// 1412   bad_hdr:
// 1413   /*
// 1414    * RFC 2460 send error message parameterr problem, code unrecognized
// 1415    * next header, pointing to the next header field
// 1416    */
// 1417   uip_icmp6_error_output(ICMP6_PARAM_PROB, ICMP6_PARAMPROB_NEXTHEADER, (uint32_t)(uip_next_hdr - (uint8_t *)UIP_IP_BUF));
// 1418   UIP_STAT(++uip_stat.ip.drop);
// 1419   UIP_STAT(++uip_stat.ip.protoerr);
// 1420   UIP_LOG("ip6: unrecognized header");
// 1421   goto send;
// 1422   /* End of headers processing */
// 1423   
// 1424   icmp6_input:
// 1425   /* This is IPv6 ICMPv6 processing code. */
// 1426   PRINTF("icmp6_input: length %d type: %d \n", uip_len, UIP_ICMP_BUF->type);
// 1427 
// 1428 #if UIP_CONF_IPV6_CHECKS
// 1429   /* Compute and check the ICMP header checksum */
// 1430   if(uip_icmp6chksum() != 0xffff) {
// 1431     UIP_STAT(++uip_stat.icmp.drop);
// 1432     UIP_STAT(++uip_stat.icmp.chkerr);
// 1433     UIP_LOG("icmpv6: bad checksum.");
// 1434     PRINTF("icmpv6: bad checksum.");
// 1435     goto drop;
// 1436   }
// 1437 #endif /*UIP_CONF_IPV6_CHECKS*/
// 1438 
// 1439   UIP_STAT(++uip_stat.icmp.recv);
// 1440   /*
// 1441    * Here we process incoming ICMPv6 packets
// 1442    * For echo request, we send echo reply
// 1443    * For ND pkts, we call the appropriate function in uip-nd6.c
// 1444    * We do not treat Error messages for now
// 1445    * If no pkt is to be sent as an answer to the incoming one, we
// 1446    * "goto drop". Else we just break; then at the after the "switch"
// 1447    * we "goto send"
// 1448    */
// 1449 #if UIP_CONF_ICMP6
// 1450   UIP_ICMP6_APPCALL(UIP_ICMP_BUF->type);
// 1451 #endif /*UIP_CONF_ICMP6*/
// 1452 
// 1453   /*
// 1454    * Search generic input handlers.
// 1455    * The handler is in charge of setting uip_len to 0
// 1456    */
// 1457   if(uip_icmp6_input(UIP_ICMP_BUF->type,
// 1458                      UIP_ICMP_BUF->icode) == UIP_ICMP6_INPUT_ERROR) {
// 1459     PRINTF("Unknown ICMPv6 message type/code %d\n", UIP_ICMP_BUF->type);
// 1460     UIP_STAT(++uip_stat.icmp.drop);
// 1461     UIP_STAT(++uip_stat.icmp.typeerr);
// 1462     UIP_LOG("icmp6: unknown ICMPv6 message.");
// 1463     uip_len = 0;
// 1464   }
// 1465   
// 1466   if(uip_len > 0) {
// 1467     goto send;
// 1468   } else {
// 1469     goto drop;
// 1470   }
// 1471   /* End of IPv6 ICMP processing. */
// 1472    
// 1473 
// 1474 #if UIP_UDP
// 1475   /* UDP input processing. */
// 1476  udp_input:
// 1477 
// 1478   remove_ext_hdr();
// 1479 
// 1480   PRINTF("Receiving UDP packet\n");
// 1481  
// 1482   /* UDP processing is really just a hack. We don't do anything to the
// 1483      UDP/IP headers, but let the UDP application do all the hard
// 1484      work. If the application sets uip_slen, it has a packet to
// 1485      send. */
// 1486 #if UIP_UDP_CHECKSUMS
// 1487   uip_len = uip_len - UIP_IPUDPH_LEN;
// 1488   uip_appdata = &uip_buf[UIP_IPUDPH_LEN + UIP_LLH_LEN];
// 1489   /* XXX hack: UDP/IPv6 receivers should drop packets with UDP
// 1490      checksum 0. Here, we explicitly receive UDP packets with checksum
// 1491      0. This is to be able to debug code that for one reason or
// 1492      another miscomputes UDP checksums. The reception of zero UDP
// 1493      checksums should be turned into a configration option. */
// 1494   if(UIP_UDP_BUF->udpchksum != 0 && uip_udpchksum() != 0xffff) {
// 1495     UIP_STAT(++uip_stat.udp.drop);
// 1496     UIP_STAT(++uip_stat.udp.chkerr);
// 1497     PRINTF("udp: bad checksum 0x%04x 0x%04x\n", UIP_UDP_BUF->udpchksum,
// 1498            uip_udpchksum());
// 1499     goto drop;
// 1500   }
// 1501 #else /* UIP_UDP_CHECKSUMS */
// 1502   uip_len = uip_len - UIP_IPUDPH_LEN;
// 1503 #endif /* UIP_UDP_CHECKSUMS */
// 1504 
// 1505   /* Make sure that the UDP destination port number is not zero. */
// 1506   if(UIP_UDP_BUF->destport == 0) {
// 1507     PRINTF("udp: zero port.\n");
// 1508     goto drop;
// 1509   }
// 1510 
// 1511   /* Demultiplex this UDP packet between the UDP "connections". */
// 1512   for(uip_udp_conn = &uip_udp_conns[0];
// 1513       uip_udp_conn < &uip_udp_conns[UIP_UDP_CONNS];
// 1514       ++uip_udp_conn) {
// 1515     /* If the local UDP port is non-zero, the connection is considered
// 1516        to be used. If so, the local port number is checked against the
// 1517        destination port number in the received packet. If the two port
// 1518        numbers match, the remote port number is checked if the
// 1519        connection is bound to a remote port. Finally, if the
// 1520        connection is bound to a remote IP address, the source IP
// 1521        address of the packet is checked. */
// 1522     if(uip_udp_conn->lport != 0 &&
// 1523        UIP_UDP_BUF->destport == uip_udp_conn->lport &&
// 1524        (uip_udp_conn->rport == 0 ||
// 1525         UIP_UDP_BUF->srcport == uip_udp_conn->rport) &&
// 1526        (uip_is_addr_unspecified(&uip_udp_conn->ripaddr) ||
// 1527         uip_ipaddr_cmp(&UIP_IP_BUF->srcipaddr, &uip_udp_conn->ripaddr))) {
// 1528       goto udp_found;
// 1529     }
// 1530   }
// 1531   PRINTF("udp: no matching connection found\n");
// 1532   UIP_STAT(++uip_stat.udp.drop);
// 1533 
// 1534 #if UIP_UDP_SEND_UNREACH_NOPORT
// 1535   uip_icmp6_error_output(ICMP6_DST_UNREACH, ICMP6_DST_UNREACH_NOPORT, 0);
// 1536   goto send;
// 1537 #else
// 1538   goto drop;
// 1539 #endif
// 1540 
// 1541  udp_found:
// 1542   PRINTF("In udp_found\n");
// 1543   UIP_STAT(++uip_stat.udp.recv);
// 1544  
// 1545   uip_conn = NULL;
// 1546   uip_flags = UIP_NEWDATA;
// 1547   uip_sappdata = uip_appdata = &uip_buf[UIP_IPUDPH_LEN + UIP_LLH_LEN];
// 1548   uip_slen = 0;
// 1549   UIP_UDP_APPCALL();
// 1550 
// 1551  udp_send:
// 1552   PRINTF("In udp_send\n");
// 1553 
// 1554   if(uip_slen == 0) {
// 1555     goto drop;
// 1556   }
// 1557   uip_len = uip_slen + UIP_IPUDPH_LEN;
// 1558 
// 1559   /* For IPv6, the IP length field does not include the IPv6 IP header
// 1560      length. */
// 1561   UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
// 1562   UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
// 1563 
// 1564   UIP_IP_BUF->ttl = uip_udp_conn->ttl;
// 1565   UIP_IP_BUF->proto = UIP_PROTO_UDP;
// 1566 
// 1567   UIP_UDP_BUF->udplen = UIP_HTONS(uip_slen + UIP_UDPH_LEN);
// 1568   UIP_UDP_BUF->udpchksum = 0;
// 1569 
// 1570   UIP_UDP_BUF->srcport  = uip_udp_conn->lport;
// 1571   UIP_UDP_BUF->destport = uip_udp_conn->rport;
// 1572 
// 1573   uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &uip_udp_conn->ripaddr);
// 1574   uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
// 1575 
// 1576   uip_appdata = &uip_buf[UIP_LLH_LEN + UIP_IPTCPH_LEN];
// 1577 
// 1578 #if UIP_UDP_CHECKSUMS
// 1579   /* Calculate UDP checksum. */
// 1580   UIP_UDP_BUF->udpchksum = ~(uip_udpchksum());
// 1581   if(UIP_UDP_BUF->udpchksum == 0) {
// 1582     UIP_UDP_BUF->udpchksum = 0xffff;
// 1583   }
// 1584 #endif /* UIP_UDP_CHECKSUMS */
// 1585 
// 1586 #if UIP_CONF_IPV6_RPL
// 1587   rpl_insert_header();
// 1588 #endif /* UIP_CONF_IPV6_RPL */
// 1589 
// 1590   UIP_STAT(++uip_stat.udp.sent);
// 1591   goto ip_send_nolen;
// 1592 #endif /* UIP_UDP */
// 1593 
// 1594 #if UIP_TCP
// 1595   /* TCP input processing. */
// 1596  tcp_input:
// 1597 
// 1598   remove_ext_hdr();
// 1599 
// 1600   UIP_STAT(++uip_stat.tcp.recv);
// 1601   PRINTF("Receiving TCP packet\n");
// 1602   /* Start of TCP input header processing code. */
// 1603   
// 1604   if(uip_tcpchksum() != 0xffff) {   /* Compute and check the TCP
// 1605                                        checksum. */
// 1606     UIP_STAT(++uip_stat.tcp.drop);
// 1607     UIP_STAT(++uip_stat.tcp.chkerr);
// 1608     PRINTF("tcp: bad checksum 0x%04x 0x%04x\n", UIP_TCP_BUF->tcpchksum,
// 1609            uip_tcpchksum());
// 1610     goto drop;
// 1611   }
// 1612 
// 1613   /* Make sure that the TCP port number is not zero. */
// 1614   if(UIP_TCP_BUF->destport == 0 || UIP_TCP_BUF->srcport == 0) {
// 1615     PRINTF("tcp: zero port.");
// 1616     goto drop;
// 1617   }
// 1618 
// 1619   /* Demultiplex this segment. */
// 1620   /* First check any active connections. */
// 1621   for(uip_connr = &uip_conns[0]; uip_connr <= &uip_conns[UIP_CONNS - 1];
// 1622       ++uip_connr) {
// 1623     if(uip_connr->tcpstateflags != UIP_CLOSED &&
// 1624        UIP_TCP_BUF->destport == uip_connr->lport &&
// 1625        UIP_TCP_BUF->srcport == uip_connr->rport &&
// 1626        uip_ipaddr_cmp(&UIP_IP_BUF->srcipaddr, &uip_connr->ripaddr)) {
// 1627       goto found;
// 1628     }
// 1629   }
// 1630 
// 1631   /* If we didn't find and active connection that expected the packet,
// 1632      either this packet is an old duplicate, or this is a SYN packet
// 1633      destined for a connection in LISTEN. If the SYN flag isn't set,
// 1634      it is an old packet and we send a RST. */
// 1635   if((UIP_TCP_BUF->flags & TCP_CTL) != TCP_SYN) {
// 1636     goto reset;
// 1637   }
// 1638   
// 1639   tmp16 = UIP_TCP_BUF->destport;
// 1640   /* Next, check listening connections. */
// 1641   for(c = 0; c < UIP_LISTENPORTS; ++c) {
// 1642     if(tmp16 == uip_listenports[c]) {
// 1643       goto found_listen;
// 1644     }
// 1645   }
// 1646   
// 1647   /* No matching connection found, so we send a RST packet. */
// 1648   UIP_STAT(++uip_stat.tcp.synrst);
// 1649 
// 1650  reset:
// 1651   PRINTF("In reset\n");
// 1652   /* We do not send resets in response to resets. */
// 1653   if(UIP_TCP_BUF->flags & TCP_RST) {
// 1654     goto drop;
// 1655   }
// 1656 
// 1657   UIP_STAT(++uip_stat.tcp.rst);
// 1658   
// 1659   UIP_TCP_BUF->flags = TCP_RST | TCP_ACK;
// 1660   uip_len = UIP_IPTCPH_LEN;
// 1661   UIP_TCP_BUF->tcpoffset = 5 << 4;
// 1662 
// 1663   /* Flip the seqno and ackno fields in the TCP header. */
// 1664   c = UIP_TCP_BUF->seqno[3];
// 1665   UIP_TCP_BUF->seqno[3] = UIP_TCP_BUF->ackno[3];
// 1666   UIP_TCP_BUF->ackno[3] = c;
// 1667   
// 1668   c = UIP_TCP_BUF->seqno[2];
// 1669   UIP_TCP_BUF->seqno[2] = UIP_TCP_BUF->ackno[2];
// 1670   UIP_TCP_BUF->ackno[2] = c;
// 1671   
// 1672   c = UIP_TCP_BUF->seqno[1];
// 1673   UIP_TCP_BUF->seqno[1] = UIP_TCP_BUF->ackno[1];
// 1674   UIP_TCP_BUF->ackno[1] = c;
// 1675   
// 1676   c = UIP_TCP_BUF->seqno[0];
// 1677   UIP_TCP_BUF->seqno[0] = UIP_TCP_BUF->ackno[0];
// 1678   UIP_TCP_BUF->ackno[0] = c;
// 1679 
// 1680   /* We also have to increase the sequence number we are
// 1681      acknowledging. If the least significant byte overflowed, we need
// 1682      to propagate the carry to the other bytes as well. */
// 1683   if(++UIP_TCP_BUF->ackno[3] == 0) {
// 1684     if(++UIP_TCP_BUF->ackno[2] == 0) {
// 1685       if(++UIP_TCP_BUF->ackno[1] == 0) {
// 1686         ++UIP_TCP_BUF->ackno[0];
// 1687       }
// 1688     }
// 1689   }
// 1690  
// 1691   /* Swap port numbers. */
// 1692   tmp16 = UIP_TCP_BUF->srcport;
// 1693   UIP_TCP_BUF->srcport = UIP_TCP_BUF->destport;
// 1694   UIP_TCP_BUF->destport = tmp16;
// 1695   
// 1696   /* Swap IP addresses. */
// 1697   uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &UIP_IP_BUF->srcipaddr);
// 1698   uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
// 1699   /* And send out the RST packet! */
// 1700   goto tcp_send_noconn;
// 1701 
// 1702   /* This label will be jumped to if we matched the incoming packet
// 1703      with a connection in LISTEN. In that case, we should create a new
// 1704      connection and send a SYNACK in return. */
// 1705  found_listen:
// 1706   PRINTF("In found listen\n");
// 1707   /* First we check if there are any connections avaliable. Unused
// 1708      connections are kept in the same table as used connections, but
// 1709      unused ones have the tcpstate set to CLOSED. Also, connections in
// 1710      TIME_WAIT are kept track of and we'll use the oldest one if no
// 1711      CLOSED connections are found. Thanks to Eddie C. Dost for a very
// 1712      nice algorithm for the TIME_WAIT search. */
// 1713   uip_connr = 0;
// 1714   for(c = 0; c < UIP_CONNS; ++c) {
// 1715     if(uip_conns[c].tcpstateflags == UIP_CLOSED) {
// 1716       uip_connr = &uip_conns[c];
// 1717       break;
// 1718     }
// 1719     if(uip_conns[c].tcpstateflags == UIP_TIME_WAIT) {
// 1720       if(uip_connr == 0 ||
// 1721          uip_conns[c].timer > uip_connr->timer) {
// 1722         uip_connr = &uip_conns[c];
// 1723       }
// 1724     }
// 1725   }
// 1726 
// 1727   if(uip_connr == 0) {
// 1728     /* All connections are used already, we drop packet and hope that
// 1729        the remote end will retransmit the packet at a time when we
// 1730        have more spare connections. */
// 1731     UIP_STAT(++uip_stat.tcp.syndrop);
// 1732     UIP_LOG("tcp: found no unused connections.");
// 1733     goto drop;
// 1734   }
// 1735   uip_conn = uip_connr;
// 1736   
// 1737   /* Fill in the necessary fields for the new connection. */
// 1738   uip_connr->rto = uip_connr->timer = UIP_RTO;
// 1739   uip_connr->sa = 0;
// 1740   uip_connr->sv = 4;
// 1741   uip_connr->nrtx = 0;
// 1742   uip_connr->lport = UIP_TCP_BUF->destport;
// 1743   uip_connr->rport = UIP_TCP_BUF->srcport;
// 1744   uip_ipaddr_copy(&uip_connr->ripaddr, &UIP_IP_BUF->srcipaddr);
// 1745   uip_connr->tcpstateflags = UIP_SYN_RCVD;
// 1746 
// 1747   uip_connr->snd_nxt[0] = iss[0];
// 1748   uip_connr->snd_nxt[1] = iss[1];
// 1749   uip_connr->snd_nxt[2] = iss[2];
// 1750   uip_connr->snd_nxt[3] = iss[3];
// 1751   uip_connr->len = 1;
// 1752 
// 1753   /* rcv_nxt should be the seqno from the incoming packet + 1. */
// 1754   uip_connr->rcv_nxt[3] = UIP_TCP_BUF->seqno[3];
// 1755   uip_connr->rcv_nxt[2] = UIP_TCP_BUF->seqno[2];
// 1756   uip_connr->rcv_nxt[1] = UIP_TCP_BUF->seqno[1];
// 1757   uip_connr->rcv_nxt[0] = UIP_TCP_BUF->seqno[0];
// 1758   uip_add_rcv_nxt(1);
// 1759 
// 1760   /* Parse the TCP MSS option, if present. */
// 1761   if((UIP_TCP_BUF->tcpoffset & 0xf0) > 0x50) {
// 1762     for(c = 0; c < ((UIP_TCP_BUF->tcpoffset >> 4) - 5) << 2 ;) {
// 1763       opt = uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + c];
// 1764       if(opt == TCP_OPT_END) {
// 1765         /* End of options. */
// 1766         break;
// 1767       } else if(opt == TCP_OPT_NOOP) {
// 1768         ++c;
// 1769         /* NOP option. */
// 1770       } else if(opt == TCP_OPT_MSS &&
// 1771                 uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == TCP_OPT_MSS_LEN) {
// 1772         /* An MSS option with the right option length. */
// 1773         tmp16 = ((uint16_t)uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 2 + c] << 8) |
// 1774           (uint16_t)uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN + 3 + c];
// 1775         uip_connr->initialmss = uip_connr->mss =
// 1776           tmp16 > UIP_TCP_MSS? UIP_TCP_MSS: tmp16;
// 1777    
// 1778         /* And we are done processing options. */
// 1779         break;
// 1780       } else {
// 1781         /* All other options have a length field, so that we easily
// 1782            can skip past them. */
// 1783         if(uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == 0) {
// 1784           /* If the length field is zero, the options are malformed
// 1785              and we don't process them further. */
// 1786           break;
// 1787         }
// 1788         c += uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c];
// 1789       }
// 1790     }
// 1791   }
// 1792   
// 1793   /* Our response will be a SYNACK. */
// 1794 #if UIP_ACTIVE_OPEN
// 1795  tcp_send_synack:
// 1796   UIP_TCP_BUF->flags = TCP_ACK;
// 1797   
// 1798  tcp_send_syn:
// 1799   UIP_TCP_BUF->flags |= TCP_SYN;
// 1800 #else /* UIP_ACTIVE_OPEN */
// 1801  tcp_send_synack:
// 1802   UIP_TCP_BUF->flags = TCP_SYN | TCP_ACK;
// 1803 #endif /* UIP_ACTIVE_OPEN */
// 1804   
// 1805   /* We send out the TCP Maximum Segment Size option with our
// 1806      SYNACK. */
// 1807   UIP_TCP_BUF->optdata[0] = TCP_OPT_MSS;
// 1808   UIP_TCP_BUF->optdata[1] = TCP_OPT_MSS_LEN;
// 1809   UIP_TCP_BUF->optdata[2] = (UIP_TCP_MSS) / 256;
// 1810   UIP_TCP_BUF->optdata[3] = (UIP_TCP_MSS) & 255;
// 1811   uip_len = UIP_IPTCPH_LEN + TCP_OPT_MSS_LEN;
// 1812   UIP_TCP_BUF->tcpoffset = ((UIP_TCPH_LEN + TCP_OPT_MSS_LEN) / 4) << 4;
// 1813   goto tcp_send;
// 1814 
// 1815   /* This label will be jumped to if we found an active connection. */
// 1816  found:
// 1817   PRINTF("In found\n");
// 1818   uip_conn = uip_connr;
// 1819   uip_flags = 0;
// 1820   /* We do a very naive form of TCP reset processing; we just accept
// 1821      any RST and kill our connection. We should in fact check if the
// 1822      sequence number of this reset is wihtin our advertised window
// 1823      before we accept the reset. */
// 1824   if(UIP_TCP_BUF->flags & TCP_RST) {
// 1825     uip_connr->tcpstateflags = UIP_CLOSED;
// 1826     UIP_LOG("tcp: got reset, aborting connection.");
// 1827     uip_flags = UIP_ABORT;
// 1828     UIP_APPCALL();
// 1829     goto drop;
// 1830   }
// 1831   /* Calculate the length of the data, if the application has sent
// 1832      any data to us. */
// 1833   c = (UIP_TCP_BUF->tcpoffset >> 4) << 2;
// 1834   /* uip_len will contain the length of the actual TCP data. This is
// 1835      calculated by subtracing the length of the TCP header (in
// 1836      c) and the length of the IP header (20 bytes). */
// 1837   uip_len = uip_len - c - UIP_IPH_LEN;
// 1838 
// 1839   /* First, check if the sequence number of the incoming packet is
// 1840      what we're expecting next. If not, we send out an ACK with the
// 1841      correct numbers in, unless we are in the SYN_RCVD state and
// 1842      receive a SYN, in which case we should retransmit our SYNACK
// 1843      (which is done futher down). */
// 1844   if(!((((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_SENT) &&
// 1845 	((UIP_TCP_BUF->flags & TCP_CTL) == (TCP_SYN | TCP_ACK))) ||
// 1846        (((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_RCVD) &&
// 1847 	((UIP_TCP_BUF->flags & TCP_CTL) == TCP_SYN)))) {
// 1848     if((uip_len > 0 || ((UIP_TCP_BUF->flags & (TCP_SYN | TCP_FIN)) != 0)) &&
// 1849        (UIP_TCP_BUF->seqno[0] != uip_connr->rcv_nxt[0] ||
// 1850         UIP_TCP_BUF->seqno[1] != uip_connr->rcv_nxt[1] ||
// 1851         UIP_TCP_BUF->seqno[2] != uip_connr->rcv_nxt[2] ||
// 1852         UIP_TCP_BUF->seqno[3] != uip_connr->rcv_nxt[3])) {
// 1853 
// 1854       if((UIP_TCP_BUF->flags & TCP_SYN)) {
// 1855         if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_RCVD) {
// 1856           goto tcp_send_synack;
// 1857         } else if((uip_connr->tcpstateflags & UIP_TS_MASK) == UIP_SYN_SENT) {
// 1858           goto tcp_send_syn;
// 1859         }
// 1860       }
// 1861       goto tcp_send_ack;
// 1862     }
// 1863   }
// 1864 
// 1865   /* Next, check if the incoming segment acknowledges any outstanding
// 1866      data. If so, we update the sequence number, reset the length of
// 1867      the outstanding data, calculate RTT estimations, and reset the
// 1868      retransmission timer. */
// 1869   if((UIP_TCP_BUF->flags & TCP_ACK) && uip_outstanding(uip_connr)) {
// 1870     uip_add32(uip_connr->snd_nxt, uip_connr->len);
// 1871 
// 1872     if(UIP_TCP_BUF->ackno[0] == uip_acc32[0] &&
// 1873        UIP_TCP_BUF->ackno[1] == uip_acc32[1] &&
// 1874        UIP_TCP_BUF->ackno[2] == uip_acc32[2] &&
// 1875        UIP_TCP_BUF->ackno[3] == uip_acc32[3]) {
// 1876       /* Update sequence number. */
// 1877       uip_connr->snd_nxt[0] = uip_acc32[0];
// 1878       uip_connr->snd_nxt[1] = uip_acc32[1];
// 1879       uip_connr->snd_nxt[2] = uip_acc32[2];
// 1880       uip_connr->snd_nxt[3] = uip_acc32[3];
// 1881    
// 1882       /* Do RTT estimation, unless we have done retransmissions. */
// 1883       if(uip_connr->nrtx == 0) {
// 1884         signed char m;
// 1885         m = uip_connr->rto - uip_connr->timer;
// 1886         /* This is taken directly from VJs original code in his paper */
// 1887         m = m - (uip_connr->sa >> 3);
// 1888         uip_connr->sa += m;
// 1889         if(m < 0) {
// 1890           m = -m;
// 1891         }
// 1892         m = m - (uip_connr->sv >> 2);
// 1893         uip_connr->sv += m;
// 1894         uip_connr->rto = (uip_connr->sa >> 3) + uip_connr->sv;
// 1895 
// 1896       }
// 1897       /* Set the acknowledged flag. */
// 1898       uip_flags = UIP_ACKDATA;
// 1899       /* Reset the retransmission timer. */
// 1900       uip_connr->timer = uip_connr->rto;
// 1901 
// 1902       /* Reset length of outstanding data. */
// 1903       uip_connr->len = 0;
// 1904     }
// 1905     
// 1906   }
// 1907 
// 1908   /* Do different things depending on in what state the connection is. */
// 1909   switch(uip_connr->tcpstateflags & UIP_TS_MASK) {
// 1910     /* CLOSED and LISTEN are not handled here. CLOSE_WAIT is not
// 1911        implemented, since we force the application to close when the
// 1912        peer sends a FIN (hence the application goes directly from
// 1913        ESTABLISHED to LAST_ACK). */
// 1914     case UIP_SYN_RCVD:
// 1915       /* In SYN_RCVD we have sent out a SYNACK in response to a SYN, and
// 1916          we are waiting for an ACK that acknowledges the data we sent
// 1917          out the last time. Therefore, we want to have the UIP_ACKDATA
// 1918          flag set. If so, we enter the ESTABLISHED state. */
// 1919       if(uip_flags & UIP_ACKDATA) {
// 1920         uip_connr->tcpstateflags = UIP_ESTABLISHED;
// 1921         uip_flags = UIP_CONNECTED;
// 1922         uip_connr->len = 0;
// 1923         if(uip_len > 0) {
// 1924           uip_flags |= UIP_NEWDATA;
// 1925           uip_add_rcv_nxt(uip_len);
// 1926         }
// 1927         uip_slen = 0;
// 1928         UIP_APPCALL();
// 1929         goto appsend;
// 1930       }
// 1931       /* We need to retransmit the SYNACK */
// 1932       if((UIP_TCP_BUF->flags & TCP_CTL) == TCP_SYN) {
// 1933 	goto tcp_send_synack;
// 1934       }
// 1935       goto drop;
// 1936 #if UIP_ACTIVE_OPEN
// 1937     case UIP_SYN_SENT:
// 1938       /* In SYN_SENT, we wait for a SYNACK that is sent in response to
// 1939          our SYN. The rcv_nxt is set to sequence number in the SYNACK
// 1940          plus one, and we send an ACK. We move into the ESTABLISHED
// 1941          state. */
// 1942       if((uip_flags & UIP_ACKDATA) &&
// 1943          (UIP_TCP_BUF->flags & TCP_CTL) == (TCP_SYN | TCP_ACK)) {
// 1944 
// 1945         /* Parse the TCP MSS option, if present. */
// 1946         if((UIP_TCP_BUF->tcpoffset & 0xf0) > 0x50) {
// 1947           for(c = 0; c < ((UIP_TCP_BUF->tcpoffset >> 4) - 5) << 2 ;) {
// 1948             opt = uip_buf[UIP_IPTCPH_LEN + UIP_LLH_LEN + c];
// 1949             if(opt == TCP_OPT_END) {
// 1950               /* End of options. */
// 1951               break;
// 1952             } else if(opt == TCP_OPT_NOOP) {
// 1953               ++c;
// 1954               /* NOP option. */
// 1955             } else if(opt == TCP_OPT_MSS &&
// 1956                       uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == TCP_OPT_MSS_LEN) {
// 1957               /* An MSS option with the right option length. */
// 1958               tmp16 = (uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 2 + c] << 8) |
// 1959                 uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 3 + c];
// 1960               uip_connr->initialmss =
// 1961                 uip_connr->mss = tmp16 > UIP_TCP_MSS? UIP_TCP_MSS: tmp16;
// 1962 
// 1963               /* And we are done processing options. */
// 1964               break;
// 1965             } else {
// 1966               /* All other options have a length field, so that we easily
// 1967                  can skip past them. */
// 1968               if(uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c] == 0) {
// 1969                 /* If the length field is zero, the options are malformed
// 1970                    and we don't process them further. */
// 1971                 break;
// 1972               }
// 1973               c += uip_buf[UIP_TCPIP_HLEN + UIP_LLH_LEN + 1 + c];
// 1974             }
// 1975           }
// 1976         }
// 1977         uip_connr->tcpstateflags = UIP_ESTABLISHED;
// 1978         uip_connr->rcv_nxt[0] = UIP_TCP_BUF->seqno[0];
// 1979         uip_connr->rcv_nxt[1] = UIP_TCP_BUF->seqno[1];
// 1980         uip_connr->rcv_nxt[2] = UIP_TCP_BUF->seqno[2];
// 1981         uip_connr->rcv_nxt[3] = UIP_TCP_BUF->seqno[3];
// 1982         uip_add_rcv_nxt(1);
// 1983         uip_flags = UIP_CONNECTED | UIP_NEWDATA;
// 1984         uip_connr->len = 0;
// 1985         uip_len = 0;
// 1986         uip_slen = 0;
// 1987         UIP_APPCALL();
// 1988         goto appsend;
// 1989       }
// 1990       /* Inform the application that the connection failed */
// 1991       uip_flags = UIP_ABORT;
// 1992       UIP_APPCALL();
// 1993       /* The connection is closed after we send the RST */
// 1994       uip_conn->tcpstateflags = UIP_CLOSED;
// 1995       goto reset;
// 1996 #endif /* UIP_ACTIVE_OPEN */
// 1997     
// 1998     case UIP_ESTABLISHED:
// 1999       /* In the ESTABLISHED state, we call upon the application to feed
// 2000          data into the uip_buf. If the UIP_ACKDATA flag is set, the
// 2001          application should put new data into the buffer, otherwise we are
// 2002          retransmitting an old segment, and the application should put that
// 2003          data into the buffer.
// 2004 
// 2005          If the incoming packet is a FIN, we should close the connection on
// 2006          this side as well, and we send out a FIN and enter the LAST_ACK
// 2007          state. We require that there is no outstanding data; otherwise the
// 2008          sequence numbers will be screwed up. */
// 2009 
// 2010       if(UIP_TCP_BUF->flags & TCP_FIN && !(uip_connr->tcpstateflags & UIP_STOPPED)) {
// 2011         if(uip_outstanding(uip_connr)) {
// 2012           goto drop;
// 2013         }
// 2014         uip_add_rcv_nxt(1 + uip_len);
// 2015         uip_flags |= UIP_CLOSE;
// 2016         if(uip_len > 0) {
// 2017           uip_flags |= UIP_NEWDATA;
// 2018         }
// 2019         UIP_APPCALL();
// 2020         uip_connr->len = 1;
// 2021         uip_connr->tcpstateflags = UIP_LAST_ACK;
// 2022         uip_connr->nrtx = 0;
// 2023       tcp_send_finack:
// 2024         UIP_TCP_BUF->flags = TCP_FIN | TCP_ACK;
// 2025         goto tcp_send_nodata;
// 2026       }
// 2027 
// 2028       /* Check the URG flag. If this is set, the segment carries urgent
// 2029          data that we must pass to the application. */
// 2030       if((UIP_TCP_BUF->flags & TCP_URG) != 0) {
// 2031 #if UIP_URGDATA > 0
// 2032         uip_urglen = (UIP_TCP_BUF->urgp[0] << 8) | UIP_TCP_BUF->urgp[1];
// 2033         if(uip_urglen > uip_len) {
// 2034           /* There is more urgent data in the next segment to come. */
// 2035           uip_urglen = uip_len;
// 2036         }
// 2037         uip_add_rcv_nxt(uip_urglen);
// 2038         uip_len -= uip_urglen;
// 2039         uip_urgdata = uip_appdata;
// 2040         uip_appdata += uip_urglen;
// 2041       } else {
// 2042         uip_urglen = 0;
// 2043 #else /* UIP_URGDATA > 0 */
// 2044         uip_appdata = ((char *)uip_appdata) + ((UIP_TCP_BUF->urgp[0] << 8) | UIP_TCP_BUF->urgp[1]);
// 2045         uip_len -= (UIP_TCP_BUF->urgp[0] << 8) | UIP_TCP_BUF->urgp[1];
// 2046 #endif /* UIP_URGDATA > 0 */
// 2047       }
// 2048 
// 2049       /* If uip_len > 0 we have TCP data in the packet, and we flag this
// 2050          by setting the UIP_NEWDATA flag and update the sequence number
// 2051          we acknowledge. If the application has stopped the dataflow
// 2052          using uip_stop(), we must not accept any data packets from the
// 2053          remote host. */
// 2054       if(uip_len > 0 && !(uip_connr->tcpstateflags & UIP_STOPPED)) {
// 2055         uip_flags |= UIP_NEWDATA;
// 2056         uip_add_rcv_nxt(uip_len);
// 2057       }
// 2058 
// 2059       /* Check if the available buffer space advertised by the other end
// 2060          is smaller than the initial MSS for this connection. If so, we
// 2061          set the current MSS to the window size to ensure that the
// 2062          application does not send more data than the other end can
// 2063          handle.
// 2064 
// 2065          If the remote host advertises a zero window, we set the MSS to
// 2066          the initial MSS so that the application will send an entire MSS
// 2067          of data. This data will not be acknowledged by the receiver,
// 2068          and the application will retransmit it. This is called the
// 2069          "persistent timer" and uses the retransmission mechanim.
// 2070       */
// 2071       tmp16 = ((uint16_t)UIP_TCP_BUF->wnd[0] << 8) + (uint16_t)UIP_TCP_BUF->wnd[1];
// 2072       if(tmp16 > uip_connr->initialmss ||
// 2073          tmp16 == 0) {
// 2074         tmp16 = uip_connr->initialmss;
// 2075       }
// 2076       uip_connr->mss = tmp16;
// 2077 
// 2078       /* If this packet constitutes an ACK for outstanding data (flagged
// 2079          by the UIP_ACKDATA flag, we should call the application since it
// 2080          might want to send more data. If the incoming packet had data
// 2081          from the peer (as flagged by the UIP_NEWDATA flag), the
// 2082          application must also be notified.
// 2083 
// 2084          When the application is called, the global variable uip_len
// 2085          contains the length of the incoming data. The application can
// 2086          access the incoming data through the global pointer
// 2087          uip_appdata, which usually points UIP_IPTCPH_LEN + UIP_LLH_LEN
// 2088          bytes into the uip_buf array.
// 2089 
// 2090          If the application wishes to send any data, this data should be
// 2091          put into the uip_appdata and the length of the data should be
// 2092          put into uip_len. If the application don't have any data to
// 2093          send, uip_len must be set to 0. */
// 2094       if(uip_flags & (UIP_NEWDATA | UIP_ACKDATA)) {
// 2095         uip_slen = 0;
// 2096         UIP_APPCALL();
// 2097 
// 2098       appsend:
// 2099       
// 2100         if(uip_flags & UIP_ABORT) {
// 2101           uip_slen = 0;
// 2102           uip_connr->tcpstateflags = UIP_CLOSED;
// 2103           UIP_TCP_BUF->flags = TCP_RST | TCP_ACK;
// 2104           goto tcp_send_nodata;
// 2105         }
// 2106 
// 2107         if(uip_flags & UIP_CLOSE) {
// 2108           uip_slen = 0;
// 2109           uip_connr->len = 1;
// 2110           uip_connr->tcpstateflags = UIP_FIN_WAIT_1;
// 2111           uip_connr->nrtx = 0;
// 2112           UIP_TCP_BUF->flags = TCP_FIN | TCP_ACK;
// 2113           goto tcp_send_nodata;
// 2114         }
// 2115 
// 2116         /* If uip_slen > 0, the application has data to be sent. */
// 2117         if(uip_slen > 0) {
// 2118 
// 2119           /* If the connection has acknowledged data, the contents of
// 2120              the ->len variable should be discarded. */
// 2121           if((uip_flags & UIP_ACKDATA) != 0) {
// 2122             uip_connr->len = 0;
// 2123           }
// 2124 
// 2125           /* If the ->len variable is non-zero the connection has
// 2126              already data in transit and cannot send anymore right
// 2127              now. */
// 2128           if(uip_connr->len == 0) {
// 2129 
// 2130             /* The application cannot send more than what is allowed by
// 2131                the mss (the minumum of the MSS and the available
// 2132                window). */
// 2133             if(uip_slen > uip_connr->mss) {
// 2134               uip_slen = uip_connr->mss;
// 2135             }
// 2136 
// 2137             /* Remember how much data we send out now so that we know
// 2138                when everything has been acknowledged. */
// 2139             uip_connr->len = uip_slen;
// 2140           } else {
// 2141 
// 2142             /* If the application already had unacknowledged data, we
// 2143                make sure that the application does not send (i.e.,
// 2144                retransmit) out more than it previously sent out. */
// 2145             uip_slen = uip_connr->len;
// 2146           }
// 2147         }
// 2148         uip_connr->nrtx = 0;
// 2149       apprexmit:
// 2150         uip_appdata = uip_sappdata;
// 2151       
// 2152         /* If the application has data to be sent, or if the incoming
// 2153            packet had new data in it, we must send out a packet. */
// 2154         if(uip_slen > 0 && uip_connr->len > 0) {
// 2155           /* Add the length of the IP and TCP headers. */
// 2156           uip_len = uip_connr->len + UIP_TCPIP_HLEN;
// 2157           /* We always set the ACK flag in response packets. */
// 2158           UIP_TCP_BUF->flags = TCP_ACK | TCP_PSH;
// 2159           /* Send the packet. */
// 2160           goto tcp_send_noopts;
// 2161         }
// 2162         /* If there is no data to send, just send out a pure ACK if
// 2163            there is newdata. */
// 2164         if(uip_flags & UIP_NEWDATA) {
// 2165           uip_len = UIP_TCPIP_HLEN;
// 2166           UIP_TCP_BUF->flags = TCP_ACK;
// 2167           goto tcp_send_noopts;
// 2168         }
// 2169       }
// 2170       goto drop;
// 2171     case UIP_LAST_ACK:
// 2172       /* We can close this connection if the peer has acknowledged our
// 2173          FIN. This is indicated by the UIP_ACKDATA flag. */
// 2174       if(uip_flags & UIP_ACKDATA) {
// 2175         uip_connr->tcpstateflags = UIP_CLOSED;
// 2176         uip_flags = UIP_CLOSE;
// 2177         UIP_APPCALL();
// 2178       }
// 2179       break;
// 2180     
// 2181     case UIP_FIN_WAIT_1:
// 2182       /* The application has closed the connection, but the remote host
// 2183          hasn't closed its end yet. Thus we do nothing but wait for a
// 2184          FIN from the other side. */
// 2185       if(uip_len > 0) {
// 2186         uip_add_rcv_nxt(uip_len);
// 2187       }
// 2188       if(UIP_TCP_BUF->flags & TCP_FIN) {
// 2189         if(uip_flags & UIP_ACKDATA) {
// 2190           uip_connr->tcpstateflags = UIP_TIME_WAIT;
// 2191           uip_connr->timer = 0;
// 2192           uip_connr->len = 0;
// 2193         } else {
// 2194           uip_connr->tcpstateflags = UIP_CLOSING;
// 2195         }
// 2196         uip_add_rcv_nxt(1);
// 2197         uip_flags = UIP_CLOSE;
// 2198         UIP_APPCALL();
// 2199         goto tcp_send_ack;
// 2200       } else if(uip_flags & UIP_ACKDATA) {
// 2201         uip_connr->tcpstateflags = UIP_FIN_WAIT_2;
// 2202         uip_connr->len = 0;
// 2203         goto drop;
// 2204       }
// 2205       if(uip_len > 0) {
// 2206         goto tcp_send_ack;
// 2207       }
// 2208       goto drop;
// 2209       
// 2210     case UIP_FIN_WAIT_2:
// 2211       if(uip_len > 0) {
// 2212         uip_add_rcv_nxt(uip_len);
// 2213       }
// 2214       if(UIP_TCP_BUF->flags & TCP_FIN) {
// 2215         uip_connr->tcpstateflags = UIP_TIME_WAIT;
// 2216         uip_connr->timer = 0;
// 2217         uip_add_rcv_nxt(1);
// 2218         uip_flags = UIP_CLOSE;
// 2219         UIP_APPCALL();
// 2220         goto tcp_send_ack;
// 2221       }
// 2222       if(uip_len > 0) {
// 2223         goto tcp_send_ack;
// 2224       }
// 2225       goto drop;
// 2226 
// 2227     case UIP_TIME_WAIT:
// 2228       goto tcp_send_ack;
// 2229     
// 2230     case UIP_CLOSING:
// 2231       if(uip_flags & UIP_ACKDATA) {
// 2232         uip_connr->tcpstateflags = UIP_TIME_WAIT;
// 2233         uip_connr->timer = 0;
// 2234       }
// 2235   }
// 2236   goto drop;
// 2237   
// 2238   /* We jump here when we are ready to send the packet, and just want
// 2239      to set the appropriate TCP sequence numbers in the TCP header. */
// 2240  tcp_send_ack:
// 2241   UIP_TCP_BUF->flags = TCP_ACK;
// 2242 
// 2243  tcp_send_nodata:
// 2244   uip_len = UIP_IPTCPH_LEN;
// 2245 
// 2246  tcp_send_noopts:
// 2247   UIP_TCP_BUF->tcpoffset = (UIP_TCPH_LEN / 4) << 4;
// 2248 
// 2249   /* We're done with the input processing. We are now ready to send a
// 2250      reply. Our job is to fill in all the fields of the TCP and IP
// 2251      headers before calculating the checksum and finally send the
// 2252      packet. */
// 2253  tcp_send:
// 2254   PRINTF("In tcp_send\n");
// 2255    
// 2256   UIP_TCP_BUF->ackno[0] = uip_connr->rcv_nxt[0];
// 2257   UIP_TCP_BUF->ackno[1] = uip_connr->rcv_nxt[1];
// 2258   UIP_TCP_BUF->ackno[2] = uip_connr->rcv_nxt[2];
// 2259   UIP_TCP_BUF->ackno[3] = uip_connr->rcv_nxt[3];
// 2260   
// 2261   UIP_TCP_BUF->seqno[0] = uip_connr->snd_nxt[0];
// 2262   UIP_TCP_BUF->seqno[1] = uip_connr->snd_nxt[1];
// 2263   UIP_TCP_BUF->seqno[2] = uip_connr->snd_nxt[2];
// 2264   UIP_TCP_BUF->seqno[3] = uip_connr->snd_nxt[3];
// 2265 
// 2266   UIP_TCP_BUF->srcport  = uip_connr->lport;
// 2267   UIP_TCP_BUF->destport = uip_connr->rport;
// 2268 
// 2269   uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &uip_connr->ripaddr);
// 2270   uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
// 2271   PRINTF("Sending TCP packet to ");
// 2272   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
// 2273   PRINTF(" from ");
// 2274   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
// 2275   PRINTF("\n");
// 2276 
// 2277   if(uip_connr->tcpstateflags & UIP_STOPPED) {
// 2278     /* If the connection has issued uip_stop(), we advertise a zero
// 2279        window so that the remote host will stop sending data. */
// 2280     UIP_TCP_BUF->wnd[0] = UIP_TCP_BUF->wnd[1] = 0;
// 2281   } else {
// 2282     UIP_TCP_BUF->wnd[0] = ((UIP_RECEIVE_WINDOW) >> 8);
// 2283     UIP_TCP_BUF->wnd[1] = ((UIP_RECEIVE_WINDOW) & 0xff);
// 2284   }
// 2285 
// 2286  tcp_send_noconn:
// 2287   UIP_IP_BUF->proto = UIP_PROTO_TCP;
// 2288 
// 2289   UIP_IP_BUF->ttl = uip_ds6_if.cur_hop_limit;
// 2290   UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
// 2291   UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
// 2292 
// 2293   UIP_TCP_BUF->urgp[0] = UIP_TCP_BUF->urgp[1] = 0;
// 2294   
// 2295   /* Calculate TCP checksum. */
// 2296   UIP_TCP_BUF->tcpchksum = 0;
// 2297   UIP_TCP_BUF->tcpchksum = ~(uip_tcpchksum());
// 2298   UIP_STAT(++uip_stat.tcp.sent);
// 2299 
// 2300 #endif /* UIP_TCP */
// 2301 #if UIP_UDP
// 2302  ip_send_nolen:
// 2303 #endif
// 2304   UIP_IP_BUF->vtc = 0x60;
// 2305   UIP_IP_BUF->tcflow = 0x00;
// 2306   UIP_IP_BUF->flow = 0x00;
// 2307  send:
// 2308   PRINTF("Sending packet with length %d (%d)\n", uip_len,
// 2309          (UIP_IP_BUF->len[0] << 8) | UIP_IP_BUF->len[1]);
// 2310   
// 2311   UIP_STAT(++uip_stat.ip.sent);
// 2312   /* Return and let the caller do the actual transmission. */
// 2313   uip_flags = 0;
// 2314   return;
// 2315 
// 2316  drop:
// 2317   uip_len = 0;
??uip_process_7:
        MOVS     R0,#+0
        STRH     R0,[R4, #+56]
// 2318   uip_ext_len = 0;
// 2319   uip_ext_bitmap = 0;
        STRH     R0,[R4, #+8]
// 2320   uip_flags = 0;
??uip_process_8:
        STRB     R0,[R4, #+11]
// 2321   return;
        POP      {R0,R4-R7,PC}    ;; return
??uip_process_5:
        AND      R0,R0,#0xF
        CMP      R0,#+2
        BNE.N    ??uip_process_7
        B.N      ??uip_process_9
??uip_process_4:
        CMP      R0,#+2
        BNE.N    ??uip_process_10
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
        LDRB     R0,[R4, #+3]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+3]
        UXTB     R0,R0
        CBNZ.N   R0,??uip_process_11
        LDRB     R0,[R4, #+2]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+2]
        UXTB     R0,R0
        CBNZ.N   R0,??uip_process_11
        LDRB     R0,[R4, #+1]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+1]
        UXTB     R0,R0
        CBNZ.N   R0,??uip_process_11
        LDRB     R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+0]
??uip_process_11:
        ADD      R0,R6,#+28
        LDRB     R1,[R0, #+9]
        CMP      R1,#+7
        IT       NE 
        CMPNE    R1,#+5
        BNE.N    ??uip_process_12
        LDRB     R1,[R0, #+10]
        ADDS     R1,R1,#+1
        STRB     R1,[R0, #+10]
        UXTB     R1,R1
        CMP      R1,#+120
        BNE.N    ??uip_process_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
        B.N      ??uip_process_7
??uip_process_12:
        CMP      R1,#+0
        BEQ.N    ??uip_process_7
        LDRH     R3,[R6, #+28]
        CMP      R3,#+0
        BEQ.N    ??uip_process_13
        LDRB     R3,[R0, #+10]
        SUBS     R7,R3,#+1
        CMP      R3,#+0
        STRB     R7,[R0, #+10]
        BNE.N    ??uip_process_7
        LDRB     R3,[R0, #+11]
        CMP      R3,#+8
        BEQ.N    ??uip_process_14
        CMP      R1,#+2
        ITE      NE 
        CMPNE    R1,#+1
        CMPEQ    R3,#+5
        BNE.N    ??uip_process_15
??uip_process_14:
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
        MOVS     R0,#+128
        STRB     R0,[R4, #+11]
          CFI FunCall tcpip_uipcall
        BL       tcpip_uipcall
        MOVS     R0,#+20
        B.W      ??uip_process_16
??uip_process_15:
        CMP      R3,#+5
        ITE      GE 
        MOVGE    R2,#+4
        MOVLT    R2,R3
        MOVS     R7,#+3
        LSL      R2,R7,R2
        STRB     R2,[R0, #+10]
        ADDS     R2,R3,#+1
        STRB     R2,[R0, #+11]
        AND      R0,R1,#0xF
        SUBS     R0,R0,#+1
        CMP      R0,#+7
        BHI.N    ??uip_process_7
        TBH      [PC, R0, LSL #+1]
        DATA
??uip_process_0:
        DC16     0x408,0x9,0xC,0x56D
        DC16     0x8,0x56D,0x8,0x56D
        THUMB
??uip_process_17:
        B.N      ??uip_process_7
??uip_process_9:
        MOVS     R0,#+0
        B.W      ??uip_process_18
??uip_process_19:
        MOVS     R0,#+4
        STRB     R0,[R4, #+11]
          CFI FunCall tcpip_uipcall
        BL       tcpip_uipcall
        B.W      ??uip_process_20
??uip_process_13:
        AND      R0,R1,#0xF
        CMP      R0,#+3
        BNE.N    ??uip_process_7
??uip_process_6:
        MOVS     R0,#+8
        STRB     R0,[R4, #+11]
        B.W      ??uip_process_21
??uip_process_10:
        CMP      R0,#+5
        BNE.N    ??uip_process_22
        LDR      R0,[R4, #+80]
        LDRH     R0,[R0, #+16]
        CMP      R0,#+0
        BEQ.W    ??uip_process_7
        MOVS     R0,#+0
        STR      R0,[R4, #+76]
        ADD      R0,R5,#+48
        STR      R0,[R4, #+68]
        STR      R0,[R4, #+72]
        MOVS     R0,#+0
        STR      R0,[R4, #+56]
        MOVS     R0,#+8
        STRB     R0,[R4, #+11]
??uip_process_23:
          CFI FunCall tcpip_uipcall
        BL       tcpip_uipcall
??uip_process_3:
        LDRH     R0,[R4, #+58]
        CMP      R0,#+0
        BEQ.W    ??uip_process_7
        ADD      R1,R0,#+48
        STRH     R1,[R4, #+56]
        UXTH     R1,R1
        LDR.W    R5,??uip_process_2+0x4
        SUB      R2,R1,#+40
        SUBS     R1,R1,#+40
        STRB     R1,[R5, #+5]
        ASRS     R2,R2,#+8
        LDR      R1,[R4, #+80]
        STRB     R2,[R5, #+4]
        ADDS     R0,R0,#+8
        LDRB     R2,[R1, #+20]
        STRB     R2,[R5, #+7]
        UXTH     R0,R0
        MOVS     R2,#+17
        STRB     R2,[R5, #+6]
        LSRS     R2,R0,#+8
        ORR      R0,R2,R0, LSL #+8
        STRH     R0,[R5, #+44]
        MOVS     R2,#+16
        MOVS     R0,#+0
        STRH     R0,[R5, #+46]
        LDRH     R0,[R1, #+16]
        STRH     R0,[R5, #+40]
        LDRH     R0,[R1, #+18]
        STRH     R0,[R5, #+42]
        ADD      R0,R5,#+24
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        ADD      R1,R5,#+24
        ADD      R0,R5,#+8
          CFI FunCall uip_ds6_select_src
        BL       uip_ds6_select_src
        ADD      R0,R5,#+60
        STR      R0,[R4, #+68]
        MOVS     R0,#+17
          CFI FunCall upper_layer_chksum
        BL       upper_layer_chksum
        MVNS     R0,R0
        STRH     R0,[R5, #+46]
        LDRH     R0,[R5, #+46]
        CMP      R0,#+0
        BNE.W    ??uip_process_24
        MOVW     R0,#+65535
        STRH     R0,[R5, #+46]
        B.W      ??uip_process_24
??uip_process_22:
        LDRB     R0,[R5, #+0]
        AND      R0,R0,#0xF0
        CMP      R0,#+96
        BNE.W    ??uip_process_7
        LDRB     R0,[R5, #+5]
        LDRB     R1,[R5, #+4]
        LDRH     R2,[R4, #+56]
        ADD      R3,R0,R1, LSL #+8
        CMP      R2,R3
        BLT.W    ??uip_process_7
        ADD      R0,R0,R1, LSL #+8
        ADDS     R0,R0,#+40
        STRH     R0,[R4, #+56]
        LDRB     R0,[R5, #+8]
        CMP      R0,#+255
        BEQ.W    ??uip_process_7
        ADDS     R0,R5,#+6
        STR      R0,[R4, #+64]
        MOVS     R0,#+0
        STRH     R0,[R4, #+8]
        LDRB     R0,[R5, #+6]
        CBNZ.N   R0,??uip_process_25
        MOVS     R0,#+1
        STRB     R0,[R4, #+8]
          CFI FunCall ext_hdr_options_process
        BL       ext_hdr_options_process
        CBZ.N    R0,??uip_process_26
        CMP      R0,#+2
        BEQ.W    ??uip_process_27
        BCC.W    ??uip_process_7
        B.N      ??uip_process_25
??uip_process_26:
        LDRB     R0,[R4, #+9]
        ADDS     R1,R0,R5
        ADD      R2,R1,#+40
        STR      R2,[R4, #+64]
        LDRB     R1,[R1, #+41]
        LSLS     R1,R1,#+3
        ADDS     R1,R1,#+8
        ADDS     R0,R1,R0
        STRB     R0,[R4, #+9]
??uip_process_25:
        ADD      R0,R5,#+24
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
        CMP      R0,#+0
        BNE.W    ??uip_process_28
        ADD      R0,R5,#+24
          CFI FunCall uip_ds6_maddr_lookup
        BL       uip_ds6_maddr_lookup
        CMP      R0,#+0
        BNE.W    ??uip_process_28
        LDRB     R0,[R5, #+24]
        CMP      R0,#+255
        BEQ.N    ??uip_process_29
        CMP      R0,#+254
        ITT      EQ 
        LDRBEQ   R1,[R5, #+25]
        CMPEQ    R1,#+128
        BEQ.N    ??uip_process_29
        LDRB     R1,[R5, #+8]
        CMP      R1,#+254
        ITT      EQ 
        LDRBEQ   R1,[R5, #+9]
        CMPEQ    R1,#+128
        BEQ.N    ??uip_process_30
        LDRH     R1,[R5, #+8]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+10]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_31
        LDRH     R1,[R5, #+12]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+14]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_31
        LDRH     R1,[R5, #+16]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+18]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_31
        LDRH     R1,[R5, #+20]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+22]
        CMPEQ    R1,#+0
        BEQ.N    ??uip_process_29
??uip_process_31:
        LDRH     R1,[R5, #+24]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+26]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_32
        LDRH     R1,[R5, #+28]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+30]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_32
        LDRH     R1,[R5, #+32]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+34]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_32
        LDRH     R1,[R5, #+36]
        CMP      R1,#+0
        ITTTT    EQ 
        LDRBEQ   R1,[R5, #+38]
        CMPEQ    R1,#+0
        LDRBEQ   R1,[R5, #+39]
        CMPEQ    R1,#+1
        BEQ.N    ??uip_process_29
??uip_process_32:
        LDRH     R0,[R4, #+56]
        CMP      R0,#+1280
        BLE.N    ??uip_process_33
        MOV      R2,#+1280
        MOVS     R1,#+0
        MOVS     R0,#+2
        B.N      ??uip_process_34
??uip_process_33:
        LDRB     R0,[R5, #+7]
        CMP      R0,#+2
        BGE.N    ??uip_process_35
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+3
        B.N      ??uip_process_34
??uip_process_35:
        SUBS     R0,R0,#+1
        STRB     R0,[R5, #+7]
        B.W      ??uip_process_27
??uip_process_29:
        LDRB     R1,[R5, #+8]
        CMP      R1,#+254
        ITT      EQ 
        LDRBEQ   R1,[R5, #+9]
        CMPEQ    R1,#+128
        BNE.W    ??uip_process_7
??uip_process_30:
        LDRH     R1,[R5, #+8]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+10]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_36
        LDRH     R1,[R5, #+12]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+14]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_36
        LDRH     R1,[R5, #+16]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+18]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_36
        LDRH     R1,[R5, #+20]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+22]
        CMPEQ    R1,#+0
        BEQ.W    ??uip_process_7
??uip_process_36:
        LDRH     R1,[R5, #+24]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+26]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_37
        LDRH     R1,[R5, #+28]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+30]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_37
        LDRH     R1,[R5, #+32]
        CMP      R1,#+0
        ITT      EQ 
        LDRHEQ   R1,[R5, #+34]
        CMPEQ    R1,#+0
        BNE.N    ??uip_process_37
        LDRH     R1,[R5, #+36]
        CMP      R1,#+0
        ITTTT    EQ 
        LDRBEQ   R1,[R5, #+38]
        CMPEQ    R1,#+0
        LDRBEQ   R1,[R5, #+39]
        CMPEQ    R1,#+1
        BEQ.W    ??uip_process_7
??uip_process_37:
        CMP      R0,#+255
        BEQ.W    ??uip_process_7
        ADD      R0,R5,#+24
          CFI FunCall uip_ds6_is_addr_onlink
        BL       uip_ds6_is_addr_onlink
        CMP      R0,#+0
        BNE.W    ??uip_process_7
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        B.N      ??uip_process_34
??uip_process_38:
          CFI FunCall remove_ext_hdr
        BL       remove_ext_hdr
        MOVS     R0,#+6
          CFI FunCall upper_layer_chksum
        BL       upper_layer_chksum
        MOVW     R1,#+65535
        CMP      R0,R1
        BNE.W    ??uip_process_7
        LDRH     R0,[R5, #+42]
        CMP      R0,#+0
        ITT      NE 
        LDRHNE   R0,[R5, #+40]
        CMPNE    R0,#+0
        BEQ.W    ??uip_process_7
        ADDW     R6,R5,#+1516
        ADDW     R7,R5,#+1948
        B.N      ??uip_process_39
??uip_process_40:
        LDRB     R0,[R5, #+4]
        LDRB     R1,[R5, #+5]
        LDRB     R6,[R4, #+9]
        ADD      R0,R1,R0, LSL #+8
        SUBS     R0,R0,R6
        STRH     R0,[SP, #+0]
        MOVS     R2,#+32
        LDRH     R0,[SP, #+0]
        ADDS     R0,R0,#+58
        ADD      R1,R5,#+8
        UXTH     R0,R0
          CFI FunCall chksum
        BL       chksum
        ADDS     R6,R6,R5
        LDRH     R2,[SP, #+0]
        ADD      R1,R6,#+40
          CFI FunCall chksum
        BL       chksum
        CBZ.N    R0,??uip_process_41
        LSRS     R1,R0,#+8
        ORR      R0,R1,R0, LSL #+8
        UXTH     R0,R0
        MOVW     R1,#+65535
        CMP      R0,R1
        BNE.W    ??uip_process_7
??uip_process_41:
        LDRB     R0,[R6, #+40]
          CFI FunCall tcpip_icmp6_call
        BL       tcpip_icmp6_call
        LDRB     R0,[R4, #+9]
        ADDS     R0,R0,R5
        LDRB     R1,[R0, #+41]
        LDRB     R0,[R0, #+40]
          CFI FunCall uip_icmp6_input
        BL       uip_icmp6_input
        CMP      R0,#+1
        BEQ.W    ??uip_process_7
        LDRH     R0,[R4, #+56]
        CMP      R0,#+0
        BNE.W    ??uip_process_27
        B.N      ??uip_process_7
??uip_process_42:
        LDRB     R0,[R4, #+8]
        LSLS     R2,R0,#+31
        BMI.N    ??uip_process_43
        ORR      R0,R0,#0x1
        STRB     R0,[R4, #+8]
??uip_process_44:
          CFI FunCall ext_hdr_options_process
        BL       ext_hdr_options_process
        CBZ.N    R0,??uip_process_45
        CMP      R0,#+2
        BEQ.W    ??uip_process_27
        BCS.N    ??uip_process_28
        B.N      ??uip_process_7
??uip_process_45:
        LDRB     R0,[R4, #+9]
        ADDS     R1,R0,R5
        ADD      R2,R1,#+40
        STR      R2,[R4, #+64]
        LDRB     R1,[R1, #+41]
        LSLS     R1,R1,#+3
        ADDS     R1,R1,#+8
        ADDS     R0,R1,R0
        STRB     R0,[R4, #+9]
??uip_process_28:
        LDR      R1,[R4, #+64]
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??uip_process_42
        CMP      R0,#+6
        BEQ.N    ??uip_process_38
        CMP      R0,#+17
        BEQ.N    ??uip_process_46
        CMP      R0,#+43
        BEQ.N    ??uip_process_47
        CMP      R0,#+44
        BEQ.N    ??uip_process_48
        CMP      R0,#+58
        BEQ.N    ??uip_process_40
        CMP      R0,#+59
        BEQ.W    ??uip_process_7
        CMP      R0,#+60
        BNE.N    ??uip_process_43
        LDRB     R0,[R4, #+8]
        LSLS     R2,R0,#+30
        BPL.N    ??uip_process_49
        LSLS     R2,R0,#+25
        IT       PL 
        ORRPL    R0,R0,#0x40
        BPL.N    ??uip_process_50
        B.N      ??uip_process_43
??uip_process_49:
        ORR      R0,R0,#0x2
??uip_process_50:
        STRB     R0,[R4, #+8]
        B.N      ??uip_process_44
??uip_process_47:
        LDRB     R0,[R4, #+8]
        LSLS     R2,R0,#+29
        BMI.N    ??uip_process_43
        ORR      R0,R0,#0x4
        STRB     R0,[R4, #+8]
        LDRB     R6,[R4, #+9]
        ADDS     R0,R6,R5
        LDRB     R0,[R0, #+43]
        CMP      R0,#+0
        BEQ.N    ??uip_process_45
        ADD      R2,R6,#+42
        MOVS     R1,#+0
        B.N      ??uip_process_51
??uip_process_48:
          CFI FunCall uip_reass
        BL       uip_reass
        CMP      R0,#+0
        STRH     R0,[R4, #+56]
        BEQ.W    ??uip_process_7
        LDRB     R0,[R4, #+13]
        LSLS     R0,R0,#+29
        BMI.W    ??uip_process_27
        MOVS     R0,#+0
        STRH     R0,[R4, #+8]
        ADDS     R0,R5,#+6
        STR      R0,[R4, #+64]
        B.N      ??uip_process_28
??uip_process_43:
        SUBS     R2,R1,R5
        MOVS     R1,#+1
??uip_process_51:
        MOVS     R0,#+4
??uip_process_34:
          CFI FunCall uip_icmp6_error_output
        BL       uip_icmp6_error_output
        B.W      ??uip_process_27
??uip_process_46:
          CFI FunCall remove_ext_hdr
        BL       remove_ext_hdr
        LDRH     R0,[R4, #+56]
        SUBS     R0,R0,#+48
        STRH     R0,[R4, #+56]
        ADD      R0,R5,#+48
        STR      R0,[R4, #+68]
        LDRH     R0,[R5, #+46]
        CBZ.N    R0,??uip_process_52
        MOVS     R0,#+17
          CFI FunCall upper_layer_chksum
        BL       upper_layer_chksum
        MOVW     R1,#+65535
        CMP      R0,R1
        BNE.W    ??uip_process_7
??uip_process_52:
        LDRH     R0,[R5, #+42]
        CMP      R0,#+0
        BEQ.W    ??uip_process_7
        LDR.W    R0,??DataTable13
        STR      R0,[R4, #+80]
        ADD      R6,R0,#+320
??uip_process_53:
        LDR      R7,[R4, #+80]
        LDRH     R0,[R7, #+16]
        CBZ.N    R0,??uip_process_54
        LDRH     R1,[R5, #+42]
        CMP      R1,R0
        BNE.N    ??uip_process_54
        LDRH     R0,[R7, #+18]
        CMP      R0,#+0
        ITT      NE 
        LDRHNE   R1,[R5, #+40]
        CMPNE    R1,R0
        BNE.N    ??uip_process_54
        LDRH     R0,[R7, #+0]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R7, #+2]
        CMPEQ    R0,#+0
        BNE.N    ??uip_process_55
        LDRH     R0,[R7, #+4]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R7, #+6]
        CMPEQ    R0,#+0
        BNE.N    ??uip_process_55
        LDRH     R0,[R7, #+8]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R7, #+10]
        CMPEQ    R0,#+0
        BNE.N    ??uip_process_55
        LDRH     R0,[R7, #+12]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R7, #+14]
        CMPEQ    R0,#+0
        BEQ.N    ??uip_process_56
??uip_process_55:
        MOVS     R2,#+16
        MOV      R1,R7
        ADD      R0,R5,#+8
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??uip_process_54
??uip_process_56:
        MOVS     R0,#+0
        STR      R0,[R4, #+76]
        MOVS     R0,#+2
        STRB     R0,[R4, #+11]
        ADD      R0,R5,#+48
        STR      R0,[R4, #+72]
        MOVS     R0,#+0
        STRH     R0,[R4, #+58]
        B.N      ??uip_process_23
        Nop      
        DATA
??uip_process_2:
        DC32     iss
        DC32     uip_aligned_buf
        THUMB
??uip_process_54:
        ADD      R0,R7,#+32
        CMP      R0,R6
        STR      R0,[R4, #+80]
        BCC.N    ??uip_process_53
        B.N      ??uip_process_7
??uip_process_57:
        ADDS     R6,R6,#+48
??uip_process_39:
        CMP      R7,R6
        BCC.W    ??uip_process_58
        LDRB     R0,[R6, #+37]
        CMP      R0,#+0
        BEQ.N    ??uip_process_57
        LDRH     R0,[R5, #+42]
        LDRH     R1,[R6, #+16]
        CMP      R0,R1
        ITTT     EQ 
        LDRHEQ   R0,[R5, #+40]
        LDRHEQ   R1,[R6, #+18]
        CMPEQ    R0,R1
        BNE.N    ??uip_process_57
        MOVS     R2,#+16
        MOV      R1,R6
        ADD      R0,R5,#+8
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??uip_process_57
        STRB     R0,[R4, #+11]
        STR      R6,[R4, #+76]
        LDRB     R0,[R5, #+53]
        LSLS     R1,R0,#+29
        BMI.W    ??uip_process_59
        LDRB     R1,[R5, #+52]
        LDRH     R2,[R4, #+56]
        LSRS     R1,R1,#+4
        LSLS     R1,R1,#+2
        STRB     R1,[R4, #+12]
        SUBS     R1,R2,R1
        SUB      R2,R1,#+40
        STRH     R2,[R4, #+56]
        LDRB     R1,[R6, #+37]
        AND      R3,R1,#0xF
        CMP      R3,#+2
        BNE.W    ??uip_process_60
        AND      R3,R0,#0x3F
        CMP      R3,#+18
        BNE.W    ??uip_process_61
??uip_process_62:
        LSLS     R0,R0,#+27
        BPL.N    ??uip_process_63
        LDRH     R1,[R6, #+28]
        CMP      R1,#+0
        BEQ.N    ??uip_process_63
        ADD      R0,R6,#+24
          CFI FunCall uip_add32
        BL       uip_add32
        LDRB     R0,[R4, #+4]
        LDRB     R1,[R5, #+48]
        CMP      R1,R0
        ITTT     EQ 
        LDRBEQ   R1,[R5, #+49]
        LDRBEQ   R2,[R4, #+5]
        CMPEQ    R1,R2
        BNE.N    ??uip_process_63
        LDRB     R1,[R5, #+50]
        LDRB     R2,[R4, #+6]
        CMP      R1,R2
        ITTT     EQ 
        LDRBEQ   R1,[R5, #+51]
        LDRBEQ   R2,[R4, #+7]
        CMPEQ    R1,R2
        BNE.N    ??uip_process_63
        STRB     R0,[R6, #+24]
        LDRB     R0,[R4, #+5]
        STRB     R0,[R6, #+25]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R6, #+26]
        LDRB     R0,[R4, #+7]
        STRB     R0,[R6, #+27]
        LDRB     R0,[R6, #+39]
        CBNZ.N   R0,??uip_process_64
        LDRSB    R1,[R6, #+36]
        LDRSB    R2,[R6, #+38]
        LDRB     R0,[R6, #+34]
        SUBS     R1,R1,R2
        SUB      R1,R1,R0, LSR #+3
        SXTB     R1,R1
        ADDS     R0,R1,R0
        STRB     R0,[R6, #+34]
        CMP      R1,#+0
        LDRB     R2,[R6, #+35]
        IT       MI 
        RSBMI    R1,R1,#+0
        ADDS     R1,R1,R2
        SUB      R1,R1,R2, LSR #+2
        UXTB     R0,R0
        STRB     R1,[R6, #+35]
        ADD      R0,R1,R0, LSR #+3
        STRB     R0,[R6, #+36]
??uip_process_64:
        MOVS     R0,#+1
        STRB     R0,[R4, #+11]
        LDRB     R0,[R6, #+36]
        STRB     R0,[R6, #+38]
        MOVS     R0,#+0
        STRH     R0,[R6, #+28]
??uip_process_63:
        LDRB     R0,[R6, #+37]
        AND      R1,R0,#0xF
        SUBS     R1,R1,#+1
        CMP      R1,#+7
        BHI.W    ??uip_process_7
        TBH      [PC, R1, LSL #+1]
        DATA
??uip_process_1:
        DC16     0x9,0x1C1,0x23B,0x34B
        DC16     0x3C9,0x415,0x180,0x342
        THUMB
??uip_process_65:
        B.N      ??uip_process_7
??uip_process_66:
        LDRB     R0,[R4, #+11]
        LSLS     R0,R0,#+31
        BPL.W    ??uip_process_67
        MOVS     R0,#+3
        STRB     R0,[R6, #+37]
        MOVS     R0,#+64
        STRB     R0,[R4, #+11]
        MOVS     R0,#+0
        STRH     R0,[R6, #+28]
        LDRH     R1,[R4, #+56]
        CMP      R1,#+0
        BEQ.W    ??uip_process_68
        MOVS     R0,#+66
        STRB     R0,[R4, #+11]
        LDR      R7,[R4, #+76]
        ADD      R0,R7,#+20
          CFI FunCall uip_add32
        BL       uip_add32
        LDRB     R0,[R4, #+4]
        STRB     R0,[R7, #+20]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+5]
        STRB     R0,[R1, #+21]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R1, #+22]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+7]
        STRB     R0,[R1, #+23]
        B.N      ??uip_process_68
??uip_process_58:
        LDRB     R0,[R5, #+53]
        AND      R0,R0,#0x3F
        CMP      R0,#+2
        BNE.N    ??uip_process_69
        LDRH     R0,[R5, #+42]
        LDRH     R1,[R4, #+40]
        CMP      R0,R1
        BNE.N    ??uip_process_70
??uip_process_71:
        MOVS     R6,#+0
        MOVS     R0,#+0
        ADDW     R1,R5,#+1553
??uip_process_72:
        LDRB     R2,[R1, #+0]
        CMP      R2,#+0
        BNE.N    ??uip_process_73
        ADD      R1,R0,R0, LSL #+1
        ADD      R1,R5,R1, LSL #+4
        ADDW     R6,R1,#+1516
        B.N      ??uip_process_74
??uip_process_70:
        LDRH     R1,[R4, #+42]
        CMP      R0,R1
        ITT      NE 
        LDRHNE   R1,[R4, #+44]
        CMPNE    R0,R1
        BEQ.N    ??uip_process_71
        LDRH     R1,[R4, #+46]
        CMP      R0,R1
        ITT      NE 
        LDRHNE   R1,[R4, #+48]
        CMPNE    R0,R1
        BEQ.N    ??uip_process_71
        LDRH     R1,[R4, #+50]
        CMP      R0,R1
        ITTTT    NE 
        LDRHNE   R1,[R4, #+52]
        CMPNE    R0,R1
        LDRHNE   R1,[R4, #+54]
        CMPNE    R0,R1
        BEQ.N    ??uip_process_71
        MOVS     R0,#+8
        STRB     R0,[R4, #+12]
??uip_process_69:
        LDRB     R0,[R5, #+53]
        LSLS     R0,R0,#+29
        BMI.W    ??uip_process_7
        MOVS     R0,#+20
        STRB     R0,[R5, #+53]
        MOVS     R0,#+60
        STRH     R0,[R4, #+56]
        MOVS     R0,#+80
        STRB     R0,[R5, #+52]
        LDRB     R1,[R5, #+51]
        LDRB     R0,[R5, #+47]
        LDRB     R2,[R5, #+50]
        LDRB     R3,[R5, #+49]
        LDRB     R6,[R5, #+48]
        STRB     R1,[R5, #+47]
        STRB     R0,[R4, #+12]
        STRB     R0,[R5, #+51]
        ADDS     R0,R0,#+1
        LDRB     R1,[R5, #+46]
        STRB     R2,[R5, #+46]
        STRB     R0,[R5, #+51]
        STRB     R1,[R4, #+12]
        STRB     R1,[R5, #+50]
        UXTB     R0,R0
        LDRB     R2,[R5, #+45]
        STRB     R3,[R5, #+45]
        STRB     R2,[R4, #+12]
        STRB     R2,[R5, #+49]
        CMP      R0,#+0
        LDRB     R3,[R5, #+44]
        STRB     R3,[R4, #+12]
        STRB     R6,[R5, #+44]
        STRB     R3,[R5, #+48]
        ITTTT    EQ 
        ADDEQ    R0,R1,#+1
        STRBEQ   R0,[R5, #+50]
        UXTBEQ   R0,R0
        CMPEQ    R0,#+0
        BNE.N    ??uip_process_75
        ADDS     R0,R2,#+1
        STRB     R0,[R5, #+49]
        UXTB     R0,R0
        CBNZ.N   R0,??uip_process_75
        ADDS     R0,R3,#+1
        STRB     R0,[R5, #+48]
??uip_process_75:
        LDRH     R0,[R5, #+40]
        LDRH     R1,[R5, #+42]
        STRH     R1,[R5, #+40]
        STRH     R0,[R5, #+42]
        ADD      R1,R5,#+8
        ADD      R0,R5,#+24
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        ADD      R1,R5,#+24
        ADD      R0,R5,#+8
          CFI FunCall uip_ds6_select_src
        BL       uip_ds6_select_src
        B.N      ??uip_process_76
??uip_process_73:
        CMP      R2,#+7
        BNE.N    ??uip_process_77
        CBZ.N    R6,??uip_process_78
        LDRB     R2,[R6, #+38]
        LDRB     R3,[R1, #+1]
        CMP      R2,R3
        BCS.N    ??uip_process_77
??uip_process_78:
        SUB      R6,R1,#+37
??uip_process_77:
        ADDS     R0,R0,#+1
        ADDS     R1,R1,#+48
        UXTB     R0,R0
        CMP      R0,#+10
        BLT.W    ??uip_process_72
??uip_process_74:
        CMP      R6,#+0
        STRB     R0,[R4, #+12]
        BEQ.W    ??uip_process_7
        STR      R6,[R4, #+76]
        MOVS     R0,#+3
        STRB     R0,[R6, #+38]
        STRB     R0,[R6, #+36]
        ADD      R1,R5,#+8
        MOVS     R0,#+0
        STRB     R0,[R6, #+34]
        MOVS     R2,#+16
        MOVS     R0,#+4
        STRB     R0,[R6, #+35]
        MOVS     R0,#+0
        STRB     R0,[R6, #+39]
        LDRH     R0,[R5, #+42]
        STRH     R0,[R6, #+16]
        LDRH     R0,[R5, #+40]
        STRH     R0,[R6, #+18]
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R0,#+1
        STRB     R0,[R6, #+37]
        MOVS     R1,#+1
        LDRB     R0,[R4, #+0]
        STRB     R0,[R6, #+24]
        LDRB     R0,[R4, #+1]
        STRB     R0,[R6, #+25]
        LDRB     R0,[R4, #+2]
        STRB     R0,[R6, #+26]
        LDRB     R0,[R4, #+3]
        STRB     R0,[R6, #+27]
        MOVS     R0,#+1
        STRH     R0,[R6, #+28]
        LDRB     R0,[R5, #+47]
        STRB     R0,[R6, #+23]
        LDRB     R0,[R5, #+46]
        STRB     R0,[R6, #+22]
        LDRB     R0,[R5, #+45]
        STRB     R0,[R6, #+21]
        LDRB     R0,[R5, #+44]
        STRB     R0,[R6, #+20]
        LDR      R7,[R4, #+76]
        ADD      R0,R7,#+20
          CFI FunCall uip_add32
        BL       uip_add32
        LDRB     R0,[R4, #+4]
        STRB     R0,[R7, #+20]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+5]
        STRB     R0,[R1, #+21]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R1, #+22]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+7]
        STRB     R0,[R1, #+23]
        LDRB     R0,[R5, #+52]
        AND      R1,R0,#0xF0
        CMP      R1,#+81
        BLT.N    ??uip_process_79
        MOVS     R1,#+0
        B.N      ??uip_process_80
??uip_process_81:
        ADDS     R1,R1,#+1
??uip_process_80:
        STRB     R1,[R4, #+12]
        LSRS     R3,R0,#+4
        LDRB     R1,[R4, #+12]
        SUBS     R3,R3,#+5
        CMP      R1,R3, LSL #+2
        BGE.N    ??uip_process_79
        ADDS     R2,R1,R5
        LDRB     R3,[R2, #+60]
        CBZ.N    R3,??uip_process_79
        CMP      R3,#+1
        BEQ.N    ??uip_process_81
        CMP      R3,#+2
        ITTT     EQ 
        ADDEQ    R3,R2,#+60
        LDRBEQ   R7,[R3, #+1]
        CMPEQ    R7,#+4
        BNE.N    ??uip_process_82
        LDRB     R0,[R3, #+2]
        LDRB     R1,[R3, #+3]
        ORR      R0,R1,R0, LSL #+8
        CMP      R0,#+65
        IT       GE 
        MOVGE    R0,#+64
        STRH     R0,[R6, #+30]
        STRH     R0,[R6, #+32]
??uip_process_79:
        MOVS     R0,#+16
??uip_process_18:
        STRB     R0,[R5, #+53]
??uip_process_83:
        MOVS     R1,#+96
        LDRB     R0,[R5, #+53]
        ORR      R0,R0,#0x2
        STRB     R0,[R5, #+53]
        MOVS     R0,#+2
        STRB     R0,[R5, #+60]
        MOVS     R0,#+4
        STRB     R0,[R5, #+61]
        MOVS     R0,#+0
        STRB     R0,[R5, #+62]
        MOVS     R0,#+64
        STRB     R0,[R5, #+63]
        B.N      ??uip_process_84
??uip_process_82:
        ADD      R3,R2,#+60
        LDRB     R2,[R3, #+1]
        CMP      R2,#+0
        IT       NE 
        ADDNE    R1,R2,R1
        BNE.N    ??uip_process_80
        B.N      ??uip_process_79
??uip_process_59:
        MOVS     R0,#+0
        STRB     R0,[R6, #+37]
        MOVS     R0,#+32
??uip_process_85:
        STRB     R0,[R4, #+11]
          CFI FunCall tcpip_uipcall
        BL       tcpip_uipcall
        B.W      ??uip_process_7
??uip_process_60:
        CMP      R3,#+1
        ITT      EQ 
        ANDEQ    R3,R0,#0x3F
        CMPEQ    R3,#+2
        BEQ.W    ??uip_process_62
??uip_process_61:
        UXTH     R2,R2
        CMP      R2,#+0
        ITT      EQ 
        MOVEQ    R2,#+3
        TSTEQ    R0,R2
        BEQ.W    ??uip_process_62
        LDRB     R2,[R5, #+44]
        LDRB     R3,[R6, #+20]
        CMP      R2,R3
        ITTT     EQ 
        LDRBEQ   R2,[R5, #+45]
        LDRBEQ   R3,[R6, #+21]
        CMPEQ    R2,R3
        BNE.N    ??uip_process_86
        LDRB     R2,[R5, #+46]
        LDRB     R3,[R6, #+22]
        CMP      R2,R3
        ITTT     EQ 
        LDRBEQ   R2,[R5, #+47]
        LDRBEQ   R3,[R6, #+23]
        CMPEQ    R2,R3
        BEQ.W    ??uip_process_62
??uip_process_86:
        LSLS     R0,R0,#+30
        BPL.N    ??uip_process_87
        AND      R0,R1,#0xF
        CMP      R0,#+1
        BEQ.N    ??uip_process_79
        CMP      R0,#+2
        BEQ.N    ??uip_process_83
??uip_process_87:
        MOVS     R0,#+16
??uip_process_16:
        STRB     R0,[R5, #+53]
        MOVS     R0,#+60
??uip_process_88:
        MOVS     R1,#+80
??uip_process_84:
        STRH     R0,[R4, #+56]
        ADD      R7,R6,#+16
        STRB     R1,[R5, #+52]
        MOV      R1,R6
        LDRB     R0,[R7, #+4]
        STRB     R0,[R5, #+48]
        MOVS     R2,#+16
        LDRB     R0,[R7, #+5]
        STRB     R0,[R5, #+49]
        LDRB     R0,[R7, #+6]
        STRB     R0,[R5, #+50]
        LDRB     R0,[R7, #+7]
        STRB     R0,[R5, #+51]
        LDRB     R0,[R7, #+8]
        STRB     R0,[R5, #+44]
        LDRB     R0,[R7, #+9]
        STRB     R0,[R5, #+45]
        LDRB     R0,[R7, #+10]
        STRB     R0,[R5, #+46]
        LDRB     R0,[R7, #+11]
        STRB     R0,[R5, #+47]
        LDRH     R0,[R6, #+16]
        STRH     R0,[R5, #+40]
        LDRH     R0,[R7, #+2]
        STRH     R0,[R5, #+42]
        ADD      R0,R5,#+24
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        ADD      R1,R5,#+24
        ADD      R0,R5,#+8
          CFI FunCall uip_ds6_select_src
        BL       uip_ds6_select_src
        LDRB     R0,[R7, #+21]
        LSLS     R0,R0,#+27
        BPL.W    ??uip_process_89
        MOVS     R0,#+0
        STRH     R0,[R5, #+54]
        B.N      ??uip_process_76
??uip_process_67:
        LDRB     R0,[R5, #+53]
        AND      R0,R0,#0x3F
        CMP      R0,#+2
        BNE.W    ??uip_process_7
        B.N      ??uip_process_79
??uip_process_90:
        LDRB     R0,[R4, #+11]
        LSLS     R0,R0,#+31
        BPL.N    ??uip_process_91
        LDRB     R0,[R5, #+53]
        AND      R0,R0,#0x3F
        CMP      R0,#+18
        BNE.N    ??uip_process_91
        LDRB     R0,[R5, #+52]
        AND      R1,R0,#0xF0
        CMP      R1,#+81
        BLT.N    ??uip_process_92
        MOVS     R1,#+0
        B.N      ??uip_process_93
??uip_process_94:
        ADDS     R1,R1,#+1
??uip_process_93:
        STRB     R1,[R4, #+12]
        LSRS     R3,R0,#+4
        LDRB     R1,[R4, #+12]
        SUBS     R3,R3,#+5
        CMP      R1,R3, LSL #+2
        BGE.N    ??uip_process_92
        ADDS     R2,R1,R5
        LDRB     R3,[R2, #+60]
        CBZ.N    R3,??uip_process_92
        CMP      R3,#+1
        BEQ.N    ??uip_process_94
        CMP      R3,#+2
        ITTT     EQ 
        ADDEQ    R3,R2,#+60
        LDRBEQ   R7,[R3, #+1]
        CMPEQ    R7,#+4
        BNE.N    ??uip_process_95
        LDRB     R0,[R3, #+2]
        LDRB     R1,[R3, #+3]
        ORR      R0,R1,R0, LSL #+8
        CMP      R0,#+65
        IT       GE 
        MOVGE    R0,#+64
        STRH     R0,[R6, #+30]
        STRH     R0,[R6, #+32]
??uip_process_92:
        MOVS     R0,#+3
        STRB     R0,[R6, #+37]
        LDRB     R0,[R5, #+44]
        STRB     R0,[R6, #+20]
        LDRB     R0,[R5, #+45]
        STRB     R0,[R6, #+21]
        LDRB     R0,[R5, #+46]
        STRB     R0,[R6, #+22]
        LDRB     R0,[R5, #+47]
        STRB     R0,[R6, #+23]
        LDR      R0,[R4, #+76]
        ADD      R1,R0,#+20
        LDRB     R2,[R1, #+3]
        ADDS     R2,R2,#+1
        STRB     R2,[R4, #+7]
        UXTB     R2,R2
        LDRB     R3,[R1, #+2]
        STRB     R3,[R4, #+6]
        CMP      R2,#+0
        LDRB     R7,[R1, #+1]
        STRB     R7,[R4, #+5]
        LDRB     R1,[R1, #+0]
        STRB     R1,[R4, #+4]
        ITTTT    EQ 
        ADDEQ    R2,R3,#+1
        STRBEQ   R2,[R4, #+6]
        UXTBEQ   R2,R2
        CMPEQ    R2,#+0
        BNE.N    ??uip_process_96
        ADDS     R2,R7,#+1
        STRB     R2,[R4, #+5]
        UXTB     R2,R2
        CBNZ.N   R2,??uip_process_96
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+4]
??uip_process_96:
        LDRB     R1,[R4, #+4]
        STRB     R1,[R0, #+20]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+5]
        STRB     R0,[R1, #+21]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R1, #+22]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+7]
        STRB     R0,[R1, #+23]
        MOVS     R0,#+66
        STRB     R0,[R4, #+11]
        MOVS     R0,#+0
        STRH     R0,[R6, #+28]
        STR      R0,[R4, #+56]
        B.N      ??uip_process_21
??uip_process_95:
        ADD      R3,R2,#+60
        LDRB     R2,[R3, #+1]
        CMP      R2,#+0
        IT       NE 
        ADDNE    R1,R2,R1
        BNE.N    ??uip_process_93
        B.N      ??uip_process_92
??uip_process_91:
        MOVS     R0,#+32
        STRB     R0,[R4, #+11]
          CFI FunCall tcpip_uipcall
        BL       tcpip_uipcall
        MOVS     R0,#+0
        LDR      R1,[R4, #+76]
        STRB     R0,[R1, #+37]
        B.N      ??uip_process_69
??uip_process_97:
        LDRB     R1,[R5, #+53]
        LSLS     R2,R1,#+31
        BPL.N    ??uip_process_98
        LSLS     R0,R0,#+27
        BMI.N    ??uip_process_98
        LDRH     R0,[R6, #+28]
        CMP      R0,#+0
        BNE.W    ??uip_process_7
        LDRH     R0,[R4, #+56]
        ADDS     R1,R0,#+1
        LDR      R0,[R4, #+76]
        ADD      R3,R0,#+20
        LDRB     R2,[R3, #+3]
        ADDS     R2,R1,R2
        STRB     R2,[R4, #+7]
        UXTH     R1,R1
        LDRB     R7,[R3, #+2]
        ADD      R7,R7,R1, LSR #+8
        STRB     R7,[R4, #+6]
        UXTB     R12,R7
        LDRB     LR,[R3, #+1]
        STRB     LR,[R4, #+5]
        CMP      R12,R1, LSR #+8
        LDRB     R3,[R3, #+0]
        STRB     R3,[R4, #+4]
        BCS.N    ??uip_process_99
        ADD      R7,LR,#+1
        STRB     R7,[R4, #+5]
        UXTB     R7,R7
        CBNZ.N   R7,??uip_process_99
        ADDS     R3,R3,#+1
        STRB     R3,[R4, #+4]
??uip_process_99:
        UXTB     R2,R2
        UXTB     R1,R1
        CMP      R2,R1
        BGE.N    ??uip_process_100
        ADD      R1,R12,#+1
        STRB     R1,[R4, #+6]
        UXTB     R1,R1
        CBNZ.N   R1,??uip_process_100
        LDRB     R1,[R4, #+5]
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+5]
        UXTB     R1,R1
        CBNZ.N   R1,??uip_process_100
        LDRB     R1,[R4, #+4]
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+4]
??uip_process_100:
        LDRB     R1,[R4, #+4]
        STRB     R1,[R0, #+20]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+5]
        STRB     R0,[R1, #+21]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R1, #+22]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+7]
        STRB     R0,[R1, #+23]
        LDRB     R0,[R4, #+11]
        LDRH     R1,[R4, #+56]
        ORR      R0,R0,#0x10
        CBZ.N    R1,??uip_process_101
        ORR      R0,R0,#0x2
??uip_process_101:
        STRB     R0,[R4, #+11]
          CFI FunCall tcpip_uipcall
        BL       tcpip_uipcall
        MOVS     R0,#+1
        STRH     R0,[R6, #+28]
        MOVS     R0,#+8
        STRB     R0,[R6, #+37]
        MOVS     R0,#+0
        STRB     R0,[R6, #+39]
??uip_process_102:
        MOVS     R0,#+17
        B.N      ??uip_process_16
??uip_process_98:
        LSLS     R0,R1,#+26
        BPL.N    ??uip_process_103
        LDRB     R0,[R5, #+59]
        LDRB     R1,[R5, #+58]
        LDR      R2,[R4, #+68]
        ORR      R3,R0,R1, LSL #+8
        ADDS     R2,R3,R2
        STR      R2,[R4, #+68]
        ORR      R0,R0,R1, LSL #+8
        LDRH     R2,[R4, #+56]
        SUBS     R0,R2,R0
        STRH     R0,[R4, #+56]
??uip_process_103:
        LDRH     R1,[R4, #+56]
        CMP      R1,#+0
        BEQ.N    ??uip_process_104
        LDRB     R0,[R6, #+37]
        LSLS     R0,R0,#+27
        BMI.N    ??uip_process_104
        LDRB     R0,[R4, #+11]
        ORR      R0,R0,#0x2
        STRB     R0,[R4, #+11]
        LDR      R0,[R4, #+76]
        ADD      R3,R0,#+20
        LDRB     R2,[R3, #+3]
        ADDS     R2,R1,R2
        STRB     R2,[R4, #+7]
        LDRB     R7,[R3, #+2]
        ADD      R7,R7,R1, LSR #+8
        STRB     R7,[R4, #+6]
        UXTB     R12,R7
        LDRB     LR,[R3, #+1]
        STRB     LR,[R4, #+5]
        CMP      R12,R1, LSR #+8
        LDRB     R3,[R3, #+0]
        STRB     R3,[R4, #+4]
        BCS.N    ??uip_process_105
        ADD      R7,LR,#+1
        STRB     R7,[R4, #+5]
        UXTB     R7,R7
        CBNZ.N   R7,??uip_process_105
        ADDS     R3,R3,#+1
        STRB     R3,[R4, #+4]
??uip_process_105:
        UXTB     R2,R2
        UXTB     R1,R1
        CMP      R2,R1
        BGE.N    ??uip_process_106
        ADD      R1,R12,#+1
        STRB     R1,[R4, #+6]
        UXTB     R1,R1
        CBNZ.N   R1,??uip_process_106
        LDRB     R1,[R4, #+5]
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+5]
        UXTB     R1,R1
        CBNZ.N   R1,??uip_process_106
        LDRB     R1,[R4, #+4]
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+4]
??uip_process_106:
        LDRB     R1,[R4, #+4]
        STRB     R1,[R0, #+20]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+5]
        STRB     R0,[R1, #+21]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R1, #+22]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+7]
        STRB     R0,[R1, #+23]
??uip_process_104:
        LDRB     R0,[R5, #+54]
        LDRB     R1,[R5, #+55]
        ADD      R0,R1,R0, LSL #+8
        LDRH     R1,[R6, #+32]
        UXTH     R0,R0
        CMP      R1,R0
        BCC.N    ??uip_process_107
        CBNZ.N   R0,??uip_process_108
??uip_process_107:
        MOV      R0,R1
??uip_process_108:
        STRH     R0,[R6, #+30]
        MOVS     R1,#+3
        LDRB     R0,[R4, #+11]
        TST      R0,R1
        BEQ.W    ??uip_process_7
??uip_process_68:
        MOVS     R0,#+0
        STRH     R0,[R4, #+58]
??uip_process_21:
          CFI FunCall tcpip_uipcall
        BL       tcpip_uipcall
        LDRB     R0,[R4, #+11]
        LSLS     R1,R0,#+26
        BPL.N    ??uip_process_109
        MOVS     R0,#+0
        ADD      R1,R6,#+28
        STRH     R0,[R4, #+58]
        STRB     R0,[R1, #+9]
        MOVS     R0,#+20
        B.N      ??uip_process_16
??uip_process_109:
        LSLS     R1,R0,#+27
        BPL.N    ??uip_process_110
        MOVS     R0,#+0
        STRH     R0,[R4, #+58]
        MOVS     R1,#+4
        MOVS     R0,#+1
        STRH     R0,[R6, #+28]
        ADD      R0,R6,#+28
        STRB     R1,[R0, #+9]
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        MOVS     R0,#+17
        B.N      ??uip_process_16
??uip_process_110:
        LDRH     R1,[R4, #+58]
        CBZ.N    R1,??uip_process_111
        LSLS     R0,R0,#+31
        BPL.N    ??uip_process_112
        MOVS     R0,#+0
        STRH     R0,[R6, #+28]
        B.N      ??uip_process_113
??uip_process_112:
        LDRH     R0,[R6, #+28]
        CBNZ.N   R0,??uip_process_114
??uip_process_113:
        ADD      R0,R6,#+28
        LDRH     R1,[R4, #+58]
        LDRH     R0,[R0, #+2]
        CMP      R0,R1
        IT       HI 
        MOVHI    R0,R1
        STRH     R0,[R4, #+58]
        LDRH     R0,[R4, #+58]
        STRH     R0,[R6, #+28]
        B.N      ??uip_process_111
??uip_process_114:
        STRH     R0,[R4, #+58]
??uip_process_111:
        ADD      R1,R6,#+28
        MOVS     R0,#+0
        STRB     R0,[R1, #+11]
??uip_process_20:
        LDR      R0,[R4, #+72]
        STR      R0,[R4, #+68]
        LDRH     R0,[R4, #+58]
        CMP      R0,#+0
        ITT      NE 
        LDRHNE   R0,[R6, #+28]
        CMPNE    R0,#+0
        BEQ.N    ??uip_process_115
        ADDS     R0,R0,#+60
        MOVS     R1,#+24
??uip_process_116:
        STRB     R1,[R5, #+53]
        B.N      ??uip_process_88
??uip_process_115:
        LDRB     R0,[R4, #+11]
        LSLS     R0,R0,#+30
        BPL.W    ??uip_process_7
        MOVS     R0,#+60
        MOVS     R1,#+16
        B.N      ??uip_process_116
??uip_process_117:
        LDRB     R0,[R4, #+11]
        LSLS     R0,R0,#+31
        BPL.W    ??uip_process_7
        MOVS     R0,#+0
        STRB     R0,[R6, #+37]
        MOVS     R0,#+16
        B.N      ??uip_process_85
??uip_process_118:
        LDRH     R1,[R4, #+56]
        CMP      R1,#+0
        BEQ.N    ??uip_process_119
        LDR      R0,[R4, #+76]
        ADD      R7,R0,#+20
        LDRB     R2,[R7, #+3]
        ADDS     R2,R1,R2
        STRB     R2,[R4, #+7]
        LDRB     R3,[R7, #+2]
        ADD      R3,R3,R1, LSR #+8
        STRB     R3,[R4, #+6]
        UXTB     R12,R3
        LDRB     LR,[R7, #+1]
        STRB     LR,[R4, #+5]
        CMP      R12,R1, LSR #+8
        LDRB     R7,[R7, #+0]
        STRB     R7,[R4, #+4]
        BCS.N    ??uip_process_120
        ADD      R3,LR,#+1
        STRB     R3,[R4, #+5]
        UXTB     R3,R3
        CBNZ.N   R3,??uip_process_120
        ADDS     R3,R7,#+1
        STRB     R3,[R4, #+4]
??uip_process_120:
        UXTB     R2,R2
        UXTB     R1,R1
        CMP      R2,R1
        BGE.N    ??uip_process_121
        ADD      R1,R12,#+1
        STRB     R1,[R4, #+6]
        UXTB     R1,R1
        CBNZ.N   R1,??uip_process_121
        LDRB     R1,[R4, #+5]
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+5]
        UXTB     R1,R1
        CBNZ.N   R1,??uip_process_121
        LDRB     R1,[R4, #+4]
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+4]
??uip_process_121:
        LDRB     R1,[R4, #+4]
        STRB     R1,[R0, #+20]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+5]
        STRB     R0,[R1, #+21]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R1, #+22]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+7]
        STRB     R0,[R1, #+23]
??uip_process_119:
        LDRB     R1,[R5, #+53]
        LDRB     R0,[R4, #+11]
        LSLS     R1,R1,#+31
        BPL.N    ??uip_process_122
        LSLS     R0,R0,#+31
        BPL.N    ??uip_process_123
        MOVS     R1,#+0
        STRB     R1,[R6, #+38]
        MOVS     R0,#+7
        STRH     R1,[R6, #+28]
        B.N      ??uip_process_124
??uip_process_123:
        MOVS     R0,#+6
??uip_process_124:
        STRB     R0,[R6, #+37]
??uip_process_125:
        LDR      R0,[R4, #+76]
        ADD      R1,R0,#+20
        LDRB     R2,[R1, #+3]
        ADDS     R2,R2,#+1
        STRB     R2,[R4, #+7]
        UXTB     R2,R2
        LDRB     R3,[R1, #+2]
        STRB     R3,[R4, #+6]
        CMP      R2,#+0
        LDRB     R7,[R1, #+1]
        STRB     R7,[R4, #+5]
        LDRB     R1,[R1, #+0]
        STRB     R1,[R4, #+4]
        ITTTT    EQ 
        ADDEQ    R2,R3,#+1
        STRBEQ   R2,[R4, #+6]
        UXTBEQ   R2,R2
        CMPEQ    R2,#+0
        BNE.N    ??uip_process_126
        ADDS     R2,R7,#+1
        STRB     R2,[R4, #+5]
        UXTB     R2,R2
        CBNZ.N   R2,??uip_process_126
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+4]
??uip_process_126:
        LDRB     R1,[R4, #+4]
        STRB     R1,[R0, #+20]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+5]
        STRB     R0,[R1, #+21]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R1, #+22]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+7]
        STRB     R0,[R1, #+23]
        MOVS     R0,#+16
        STRB     R0,[R4, #+11]
          CFI FunCall tcpip_uipcall
        BL       tcpip_uipcall
        B.N      ??uip_process_87
??uip_process_122:
        LSLS     R0,R0,#+31
        BPL.N    ??uip_process_127
        MOVS     R0,#+5
        STRB     R0,[R6, #+37]
        MOVS     R0,#+0
        STRH     R0,[R6, #+28]
        B.W      ??uip_process_7
??uip_process_128:
        LDRH     R1,[R4, #+56]
        CMP      R1,#+0
        BEQ.N    ??uip_process_129
        LDR      R0,[R4, #+76]
        ADD      R7,R0,#+20
        LDRB     R2,[R7, #+3]
        ADDS     R2,R1,R2
        STRB     R2,[R4, #+7]
        LDRB     R3,[R7, #+2]
        ADD      R3,R3,R1, LSR #+8
        STRB     R3,[R4, #+6]
        UXTB     R12,R3
        LDRB     LR,[R7, #+1]
        STRB     LR,[R4, #+5]
        CMP      R12,R1, LSR #+8
        LDRB     R7,[R7, #+0]
        STRB     R7,[R4, #+4]
        BCS.N    ??uip_process_130
        ADD      R3,LR,#+1
        STRB     R3,[R4, #+5]
        UXTB     R3,R3
        CBNZ.N   R3,??uip_process_130
        ADDS     R3,R7,#+1
        STRB     R3,[R4, #+4]
??uip_process_130:
        UXTB     R2,R2
        UXTB     R1,R1
        CMP      R2,R1
        BGE.N    ??uip_process_131
        ADD      R1,R12,#+1
        STRB     R1,[R4, #+6]
        UXTB     R1,R1
        CBNZ.N   R1,??uip_process_131
        LDRB     R1,[R4, #+5]
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+5]
        UXTB     R1,R1
        CBNZ.N   R1,??uip_process_131
        LDRB     R1,[R4, #+4]
        ADDS     R1,R1,#+1
        STRB     R1,[R4, #+4]
??uip_process_131:
        LDRB     R1,[R4, #+4]
        STRB     R1,[R0, #+20]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+5]
        STRB     R0,[R1, #+21]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R1, #+22]
        LDR      R1,[R4, #+76]
        LDRB     R0,[R4, #+7]
        STRB     R0,[R1, #+23]
??uip_process_129:
        LDRB     R0,[R5, #+53]
        LSLS     R0,R0,#+31
        BPL.N    ??uip_process_127
        MOVS     R0,#+7
        STRB     R0,[R6, #+37]
        MOVS     R0,#+0
        STRB     R0,[R6, #+38]
        B.N      ??uip_process_125
??uip_process_127:
        LDRH     R0,[R4, #+56]
        CMP      R0,#+0
        BNE.W    ??uip_process_87
        B.W      ??uip_process_7
??uip_process_132:
        LDRB     R0,[R4, #+11]
        LSLS     R0,R0,#+31
        BPL.W    ??uip_process_7
        MOVS     R0,#+7
        STRB     R0,[R6, #+37]
        MOVS     R0,#+0
        STRB     R0,[R6, #+38]
        B.W      ??uip_process_7
??uip_process_89:
        MOVS     R0,#+0
        STRB     R0,[R5, #+54]
        MOVS     R0,#+64
        STRB     R0,[R5, #+55]
??uip_process_76:
        MOVS     R0,#+6
        STRB     R0,[R5, #+6]
        LDR.N    R0,??DataTable13_1
        LDRB     R0,[R0, #+4]
        STRB     R0,[R5, #+7]
        LDRH     R0,[R4, #+56]
        SUB      R1,R0,#+40
        SUBS     R0,R0,#+40
        STRB     R0,[R5, #+5]
        ASRS     R1,R1,#+8
        MOVS     R0,#+0
        STR      R0,[R5, #+56]
        STRB     R1,[R5, #+4]
        MOVS     R0,#+6
          CFI FunCall upper_layer_chksum
        BL       upper_layer_chksum
        MVNS     R0,R0
        STRH     R0,[R5, #+56]
??uip_process_24:
        MOVS     R0,#+96
        STRB     R0,[R5, #+0]
        MOVS     R0,#+0
        STRB     R0,[R5, #+1]
        STRH     R0,[R5, #+2]
??uip_process_27:
        MOVS     R0,#+0
        B.W      ??uip_process_8
          CFI EndBlock cfiBlock18
// 2322 }
// 2323 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function uip_htons
          CFI NoCalls
        THUMB
// 2324 uint16_t
// 2325 uip_htons(uint16_t val)
// 2326 {
// 2327   return UIP_HTONS(val);
uip_htons:
        LSRS     R1,R0,#+8
        ORR      R0,R1,R0, LSL #+8
        UXTH     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
// 2328 }
// 2329 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function uip_htonl
          CFI NoCalls
        THUMB
// 2330 uint32_t
// 2331 uip_htonl(uint32_t val)
uip_htonl:
        LSLS     R2,R0,#+16
        LSRS     R1,R0,#+16
        LSRS     R2,R2,#+24
        ORR      R0,R2,R0, LSL #+8
        LSRS     R2,R1,#+8
        ORR      R1,R2,R1, LSL #+8
        UXTH     R0,R0
        UXTH     R1,R1
        ORR      R0,R1,R0, LSL #+16
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
// 2332 {
// 2333   return UIP_HTONL(val);
// 2334 }
// 2335 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function uip_send
        THUMB
// 2336 void
// 2337 uip_send(const void *data, int len)
// 2338 {
uip_send:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 2339   int copylen;
// 2340 
// 2341   if(uip_sappdata != NULL) {
        LDR.N    R2,??DataTable13_2
        MOV      R3,R0
        LDR      R0,[R2, #+72]
        CMP      R0,#+0
        MOVW     R4,#+1454
        BEQ.N    ??uip_send_0
// 2342     copylen = MIN(len, UIP_BUFSIZE - UIP_LLH_LEN - UIP_TCPIP_HLEN -
// 2343                   (int)((char *)uip_sappdata -
// 2344                         (char *)&uip_buf[UIP_LLH_LEN + UIP_TCPIP_HLEN]));
        LDR.N    R5,??DataTable13_3
        SUBS     R5,R0,R5
        SUBS     R4,R4,R5
        CMP      R1,R4
        IT       GT 
        MOVGT    R1,R4
// 2345   } else {
// 2346     copylen = MIN(len, UIP_BUFSIZE - UIP_LLH_LEN - UIP_TCPIP_HLEN);
// 2347   }
// 2348   if(copylen > 0) {
??uip_send_1:
        CMP      R1,#+1
        BLT.N    ??uip_send_2
// 2349     uip_slen = copylen;
// 2350     if(data != uip_sappdata) {
??uip_send_3:
        CMP      R3,R0
        STRH     R1,[R2, #+58]
        BEQ.N    ??uip_send_2
        LDRH     R2,[R2, #+58]
        CMP      R0,#+0
        MOV      R1,R3
        BNE.N    ??uip_send_4
// 2351       if(uip_sappdata == NULL) {
// 2352         memcpy((char *)&uip_buf[UIP_LLH_LEN + UIP_TCPIP_HLEN],
// 2353                (data), uip_slen);
        LDR.N    R0,??DataTable13_3
        B.N      ??uip_send_4
// 2354       } else {
??uip_send_0:
        CMP      R1,R4
        BLT.N    ??uip_send_1
        MOV      R1,R4
        B.N      ??uip_send_3
// 2355         memcpy(uip_sappdata, (data), uip_slen);
??uip_send_4:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI R4 Frame(CFA, -8)
          CFI R5 Frame(CFA, -4)
          CFI CFA R13+8
// 2356       }
// 2357     }
// 2358   }
// 2359 }
??uip_send_2:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     uip_udp_conns

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     iss

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     uip_aligned_buf+0x3C

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 2360 /*---------------------------------------------------------------------------*/
// 2361 /** @} */
// 
// 3 955 bytes in section .bss
// 5 766 bytes in section .text
// 
// 5 766 bytes of CODE memory
// 3 955 bytes of DATA memory
//
//Errors: none
//Warnings: 1
