///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:12
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\resolv.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\resolv.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\resolv.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN clock_seconds
        EXTERN etimer_set
        EXTERN process_alloc_event
        EXTERN process_exit
        EXTERN process_post
        EXTERN process_start
        EXTERN random_rand
        EXTERN strcasecmp
        EXTERN strcmp
        EXTERN strlen
        EXTERN strncasecmp
        EXTERN strncat
        EXTERN strncpy
        EXTERN tcpip_event
        EXTERN tcpip_poll_udp
        EXTERN tolower
        EXTERN udp_new
        EXTERN uip_aligned_buf
        EXTERN uip_appdata
        EXTERN uip_ds6_addr_lookup
        EXTERN uip_ds6_if
        EXTERN uip_ds6_maddr_add
        EXTERN uip_flags
        EXTERN uip_htons
        EXTERN uip_lladdr
        EXTERN uip_nameserver_get
        EXTERN uip_udp_conn
        EXTERN uip_udp_packet_sendto

        PUBLIC mdns_probe_process
        PUBLIC resolv_event_found
        PUBLIC resolv_get_hostname
        PUBLIC resolv_lookup
        PUBLIC resolv_process
        PUBLIC resolv_query
        PUBLIC resolv_set_hostname
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\resolv.c
//    1 /*
//    2  * Copyright (c) 2002-2003, Adam Dunkels.
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
//   35  * \file
//   36  *         DNS host name to IP address resolver.
//   37  * \author Adam Dunkels <adam@dunkels.com>
//   38  * \author Robert Quattlebaum <darco@deepdarc.com>
//   39  *
//   40  *         This file implements a DNS host name to IP address resolver,
//   41  *         as well as an MDNS responder and resolver.
//   42  */
//   43 
//   44 /**
//   45  * \addtogroup uip
//   46  * @{
//   47  */
//   48 
//   49 /**
//   50  * \defgroup uipdns uIP hostname resolver functions
//   51  * @{
//   52  *
//   53  * The uIP DNS resolver functions are used to lookup a hostname and
//   54  * map it to a numerical IP address. It maintains a list of resolved
//   55  * hostnames that can be queried with the resolv_lookup()
//   56  * function. New hostnames can be resolved using the resolv_query()
//   57  * function.
//   58  *
//   59  * The event resolv_event_found is posted when a hostname has been
//   60  * resolved. It is up to the receiving process to determine if the
//   61  * correct hostname has been found by calling the resolv_lookup()
//   62  * function with the hostname.
//   63  */
//   64 
//   65 #include "net/ip/tcpip.h"
//   66 #include "net/ip/resolv.h"
//   67 #include "net/ip/uip-udp-packet.h"
//   68 #include "net/ip/uip-nameserver.h"
//   69 #include "lib/random.h"
//   70 
//   71 #ifndef DEBUG
//   72 #define DEBUG CONTIKI_TARGET_COOJA
//   73 #endif
//   74 
//   75 #if UIP_UDP
//   76 
//   77 #include <string.h>
//   78 #include <stdio.h>
//   79 #include <ctype.h>
//   80 
//   81 #ifndef NULL
//   82 #define NULL (void *)0
//   83 #endif /* NULL */
//   84 
//   85 #if !defined(__SDCC) && defined(SDCC_REVISION)
//   86 #define __SDCC 1
//   87 #endif
//   88 
//   89 #if VERBOSE_DEBUG
//   90 #define DEBUG_PRINTF(...) printf(__VA_ARGS__)
//   91 #else
//   92 #define DEBUG_PRINTF(...) do { } while(0)
//   93 #endif
//   94 
//   95 #if DEBUG || VERBOSE_DEBUG
//   96 #define PRINTF(...) printf(__VA_ARGS__)
//   97 #else
//   98 #define PRINTF(...) do { } while(0)
//   99 #endif
//  100 
//  101 #ifdef __SDCC
//  102 static int
//  103 strncasecmp(const char *s1, const char *s2, size_t n)
//  104 {
//  105   /* TODO: Add case support! */
//  106   return strncmp(s1, s2, n);
//  107 }
//  108 static int
//  109 strcasecmp(const char *s1, const char *s2)
//  110 {
//  111   /* TODO: Add case support! */
//  112   return strcmp(s1, s2);
//  113 }
//  114 #endif /* __SDCC */
//  115 
//  116 #define UIP_UDP_BUF ((struct uip_udpip_hdr *)&uip_buf[UIP_LLH_LEN])
//  117 
//  118 /* If RESOLV_CONF_SUPPORTS_MDNS is set, then queries
//  119  * for domain names in the local TLD will use mDNS as
//  120  * described by draft-cheshire-dnsext-multicastdns.
//  121  */
//  122 #ifndef RESOLV_CONF_SUPPORTS_MDNS
//  123 #define RESOLV_CONF_SUPPORTS_MDNS 1
//  124 #endif
//  125 
//  126 #ifndef RESOLV_CONF_MDNS_INCLUDE_GLOBAL_V6_ADDRS
//  127 #define RESOLV_CONF_MDNS_INCLUDE_GLOBAL_V6_ADDRS 0
//  128 #endif
//  129 
//  130 /** The maximum number of retries when asking for a name. */
//  131 #ifndef RESOLV_CONF_MAX_RETRIES
//  132 #define RESOLV_CONF_MAX_RETRIES 4
//  133 #endif
//  134 
//  135 #ifndef RESOLV_CONF_MAX_MDNS_RETRIES
//  136 #define RESOLV_CONF_MAX_MDNS_RETRIES 3
//  137 #endif
//  138 
//  139 #ifndef RESOLV_CONF_MAX_DOMAIN_NAME_SIZE
//  140 #define RESOLV_CONF_MAX_DOMAIN_NAME_SIZE 32
//  141 #endif
//  142 
//  143 #ifdef RESOLV_CONF_AUTO_REMOVE_TRAILING_DOTS
//  144 #define RESOLV_AUTO_REMOVE_TRAILING_DOTS RESOLV_CONF_AUTO_REMOVE_TRAILING_DOTS
//  145 #else
//  146 #define RESOLV_AUTO_REMOVE_TRAILING_DOTS RESOLV_CONF_SUPPORTS_MDNS
//  147 #endif
//  148 
//  149 #ifdef RESOLV_CONF_VERIFY_ANSWER_NAMES
//  150 #define RESOLV_VERIFY_ANSWER_NAMES RESOLV_CONF_VERIFY_ANSWER_NAMES
//  151 #else
//  152 #define RESOLV_VERIFY_ANSWER_NAMES RESOLV_CONF_SUPPORTS_MDNS
//  153 #endif
//  154 
//  155 #ifdef RESOLV_CONF_SUPPORTS_RECORD_EXPIRATION
//  156 #define RESOLV_SUPPORTS_RECORD_EXPIRATION RESOLV_CONF_SUPPORTS_RECORD_EXPIRATION
//  157 #else
//  158 #define RESOLV_SUPPORTS_RECORD_EXPIRATION 1
//  159 #endif
//  160 
//  161 #if RESOLV_CONF_SUPPORTS_MDNS && !RESOLV_VERIFY_ANSWER_NAMES
//  162 #error RESOLV_CONF_SUPPORTS_MDNS cannot be set without RESOLV_CONF_VERIFY_ANSWER_NAMES
//  163 #endif
//  164 
//  165 #if !defined(CONTIKI_TARGET_NAME) && defined(BOARD)
//  166 #define stringy2(x) #x
//  167 #define stringy(x)  stringy2(x)
//  168 #define CONTIKI_TARGET_NAME stringy(BOARD)
//  169 #endif
//  170 
//  171 #ifndef CONTIKI_CONF_DEFAULT_HOSTNAME
//  172 #ifdef CONTIKI_TARGET_NAME
//  173 #define CONTIKI_CONF_DEFAULT_HOSTNAME "contiki-"CONTIKI_TARGET_NAME
//  174 #else
//  175 #define CONTIKI_CONF_DEFAULT_HOSTNAME "contiki"
//  176 #endif
//  177 #endif
//  178 
//  179 #define DNS_TYPE_A      1
//  180 #define DNS_TYPE_CNAME  5
//  181 #define DNS_TYPE_PTR   12
//  182 #define DNS_TYPE_MX    15
//  183 #define DNS_TYPE_TXT   16
//  184 #define DNS_TYPE_AAAA  28
//  185 #define DNS_TYPE_SRV   33
//  186 #define DNS_TYPE_ANY  255
//  187 #define DNS_TYPE_NSEC  47
//  188 
//  189 #if NETSTACK_CONF_WITH_IPV6
//  190 #define NATIVE_DNS_TYPE DNS_TYPE_AAAA /* IPv6 */
//  191 #else
//  192 #define NATIVE_DNS_TYPE DNS_TYPE_A    /* IPv4 */
//  193 #endif
//  194 
//  195 #define DNS_CLASS_IN    1
//  196 #define DNS_CLASS_ANY 255
//  197 
//  198 #ifndef DNS_PORT
//  199 #define DNS_PORT 53
//  200 #endif
//  201 
//  202 #ifndef MDNS_PORT
//  203 #define MDNS_PORT 5353
//  204 #endif
//  205 
//  206 #ifndef MDNS_RESPONDER_PORT
//  207 #define MDNS_RESPONDER_PORT 5354
//  208 #endif
//  209 
//  210 /** \internal The DNS message header. */
//  211 struct dns_hdr {
//  212   uint16_t id;
//  213   uint8_t flags1, flags2;
//  214 #define DNS_FLAG1_RESPONSE        0x80
//  215 #define DNS_FLAG1_OPCODE_STATUS   0x10
//  216 #define DNS_FLAG1_OPCODE_INVERSE  0x08
//  217 #define DNS_FLAG1_OPCODE_STANDARD 0x00
//  218 #define DNS_FLAG1_AUTHORATIVE     0x04
//  219 #define DNS_FLAG1_TRUNC           0x02
//  220 #define DNS_FLAG1_RD              0x01
//  221 #define DNS_FLAG2_RA              0x80
//  222 #define DNS_FLAG2_ERR_MASK        0x0f
//  223 #define DNS_FLAG2_ERR_NONE        0x00
//  224 #define DNS_FLAG2_ERR_NAME        0x03
//  225   uint16_t numquestions;
//  226   uint16_t numanswers;
//  227   uint16_t numauthrr;
//  228   uint16_t numextrarr;
//  229 };
//  230 
//  231 /** \internal The DNS answer message structure. */
//  232 struct dns_answer {
//  233   /* DNS answer record starts with either a domain name or a pointer
//  234    * to a name already present somewhere in the packet. */
//  235   uint16_t type;
//  236   uint16_t class;
//  237   uint16_t ttl[2];
//  238   uint16_t len;
//  239 #if NETSTACK_CONF_WITH_IPV6
//  240   uint8_t ipaddr[16];
//  241 #else
//  242   uint8_t ipaddr[4];
//  243 #endif
//  244 };
//  245 
//  246 struct namemap {
//  247 #define STATE_UNUSED 0
//  248 #define STATE_ERROR  1
//  249 #define STATE_NEW    2
//  250 #define STATE_ASKING 3
//  251 #define STATE_DONE   4
//  252   uint8_t state;
//  253   uint8_t tmr;
//  254   uint16_t id;
//  255   uint8_t retries;
//  256   uint8_t seqno;
//  257 #if RESOLV_SUPPORTS_RECORD_EXPIRATION
//  258   unsigned long expiration;
//  259 #endif /* RESOLV_SUPPORTS_RECORD_EXPIRATION */
//  260   uip_ipaddr_t ipaddr;
//  261   uint8_t err;
//  262   uint8_t server;
//  263 #if RESOLV_CONF_SUPPORTS_MDNS
//  264   int is_mdns:1, is_probe:1;
//  265 #endif
//  266   char name[RESOLV_CONF_MAX_DOMAIN_NAME_SIZE + 1];
//  267 };
//  268 
//  269 #ifndef UIP_CONF_RESOLV_ENTRIES
//  270 #define RESOLV_ENTRIES 4
//  271 #else /* UIP_CONF_RESOLV_ENTRIES */
//  272 #define RESOLV_ENTRIES UIP_CONF_RESOLV_ENTRIES
//  273 #endif /* UIP_CONF_RESOLV_ENTRIES */
//  274 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  275 static struct namemap names[RESOLV_ENTRIES];
names:
        DS8 256
//  276 
//  277 static uint8_t seqno;
//  278 
//  279 static struct uip_udp_conn *resolv_conn = NULL;
//  280 
//  281 static struct etimer retry;
//  282 
//  283 process_event_t resolv_event_found;
//  284 
//  285 PROCESS(resolv_process, "DNS resolver");
//  286 
//  287 static void resolv_found(char *name, uip_ipaddr_t * ipaddr);
//  288 
//  289 /** \internal The DNS question message structure. */
//  290 struct dns_question {
//  291   uint16_t type;
//  292   uint16_t class;
//  293 };
//  294 
//  295 #if RESOLV_CONF_SUPPORTS_MDNS
//  296 static char resolv_hostname[RESOLV_CONF_MAX_DOMAIN_NAME_SIZE + 1];
//  297 
//  298 enum {
//  299   MDNS_STATE_WAIT_BEFORE_PROBE,
//  300   MDNS_STATE_PROBING,
//  301   MDNS_STATE_READY,
//  302 };
//  303 
//  304 static uint8_t mdns_state;
//  305 
//  306 static const uip_ipaddr_t resolv_mdns_addr =
//  307 #if NETSTACK_CONF_WITH_IPV6
//  308   { { 0xff, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//  309       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfb } };
//  310 #include "net/ipv6/uip-ds6.h"
//  311 #else  /* NETSTACK_CONF_WITH_IPV6 */
//  312   { { 224, 0, 0, 251 } };
//  313 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  314 static int mdns_needs_host_announce;
//  315 
//  316 PROCESS(mdns_probe_process, "mDNS probe");
//  317 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
//  318 
//  319 /*---------------------------------------------------------------------------*/
//  320 #if RESOLV_VERIFY_ANSWER_NAMES || VERBOSE_DEBUG
//  321 /** \internal
//  322  * \brief Decodes a DNS name from the DNS format into the given string.
//  323  * \return 1 upon success, 0 if the size of the name would be too large.
//  324  *
//  325  * \note `dest` must point to a buffer with at least
//  326  *       `RESOLV_CONF_MAX_DOMAIN_NAME_SIZE+1` bytes large.
//  327  */
//  328 static uint8_t
//  329 decode_name(const unsigned char *query, char *dest,
//  330             const unsigned char *packet)
//  331 {
//  332   int len = RESOLV_CONF_MAX_DOMAIN_NAME_SIZE;
//  333 
//  334   unsigned char n = *query++;
//  335 
//  336   //DEBUG_PRINTF("resolver: decoding name: \"");
//  337 
//  338   while(len && n) {
//  339     if(n & 0xc0) {
//  340       const uint16_t offset = query[0] + ((n & ~0xC0) << 8);
//  341 
//  342       //DEBUG_PRINTF("<skip-to-%d>",offset);
//  343       query = packet + offset;
//  344       n = *query++;
//  345     }
//  346 
//  347     if(!n)
//  348       break;
//  349 
//  350     for(; n; --n) {
//  351       //DEBUG_PRINTF("%c",*query);
//  352 
//  353       *dest++ = *query++;
//  354 
//  355       if(!--len) {
//  356         *dest = 0;
//  357         return 0;
//  358       }
//  359     }
//  360 
//  361     n = *query++;
//  362 
//  363     if(n) {
//  364       //DEBUG_PRINTF(".");
//  365       *dest++ = '.';
//  366       --len;
//  367     }
//  368   }
//  369 
//  370   //DEBUG_PRINTF("\"\n");
//  371   *dest = 0;
//  372   return len != 0;
//  373 }
//  374 /*---------------------------------------------------------------------------*/
//  375 /** \internal
//  376  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function dns_name_isequal
        THUMB
//  377 static uint8_t
//  378 dns_name_isequal(const unsigned char *queryptr, const char *name,
//  379                  const unsigned char *packet)
//  380 {
dns_name_isequal:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R7,R0
        MOV      R4,R1
//  381   unsigned char n = *queryptr++;
        LDRB     R6,[R7], #+1
//  382 
//  383   if(*name == 0)
        LDRB     R0,[R4, #+0]
        MOV      R5,R2
        CBZ.N    R0,??dns_name_isequal_0
//  384     return 0;
//  385 
//  386   while(n) {
        CBZ.N    R6,??dns_name_isequal_1
//  387     if(n & 0xc0) {
??dns_name_isequal_2:
        MOVS     R0,#+192
        TST      R6,R0
        BEQ.N    ??dns_name_isequal_3
//  388       queryptr = packet + queryptr[0] + ((n & ~0xC0) << 8);
        LDRB     R0,[R7, #+0]
        ADDS     R0,R0,R5
        BIC      R1,R6,#0xC0
        ADD      R7,R0,R1, LSL #+8
//  389       n = *queryptr++;
        LDRB     R6,[R7], #+1
//  390     }
//  391 
//  392     for(; n; --n) {
??dns_name_isequal_4:
        UXTB     R6,R6
        CBZ.N    R6,??dns_name_isequal_5
//  393       if(!*name) {
??dns_name_isequal_3:
        LDRB     R0,[R4, #+0]
        CBZ.N    R0,??dns_name_isequal_0
//  394         return 0;
//  395       }
//  396 
//  397       if(tolower((unsigned int)*name++) != tolower((unsigned int)*queryptr++)) {
        LDRB     R0,[R4], #+1
          CFI FunCall tolower
        BL       tolower
        MOV      R8,R0
        LDRB     R0,[R7], #+1
          CFI FunCall tolower
        BL       tolower
        CMP      R8,R0
        IT       EQ 
        SUBEQ    R6,R6,#+1
//  398         return 0;
//  399       }
//  400     }
        BEQ.N    ??dns_name_isequal_4
        B.N      ??dns_name_isequal_0
//  401 
//  402     n = *queryptr++;
??dns_name_isequal_5:
        LDRB     R6,[R7], #+1
//  403 
//  404     if((n != 0) && (*name++ != '.')) {
        CBZ.N    R6,??dns_name_isequal_1
        LDRB     R0,[R4], #+1
        CMP      R0,#+46
        BEQ.N    ??dns_name_isequal_2
//  405       return 0;
??dns_name_isequal_0:
        MOVS     R0,#+0
        POP      {R4-R8,PC}
//  406     }
//  407   }
//  408 
//  409   if(*name == '.')
??dns_name_isequal_1:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+46
        IT       EQ 
        ADDEQ    R4,R4,#+1
//  410     ++name;
//  411 
//  412   return name[0] == 0;
        LDRB     R1,[R4, #+0]
        SUBS     R0,R1,#+1
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock0
//  413 }
//  414 #endif /* RESOLV_VERIFY_ANSWER_NAMES */
//  415 /*---------------------------------------------------------------------------*/
//  416 /** \internal
//  417  */
//  418 static unsigned char *
//  419 skip_name(unsigned char *query)
//  420 {
//  421   unsigned char n;
//  422 
//  423   DEBUG_PRINTF("resolver: skip name: ");
//  424 
//  425   do {
//  426     n = *query;
//  427     if(n & 0xc0) {
//  428       DEBUG_PRINTF("<skip-to-%d>", query[0] + ((n & ~0xC0) << 8));
//  429       ++query;
//  430       break;
//  431     }
//  432 
//  433     ++query;
//  434 
//  435     while(n > 0) {
//  436       DEBUG_PRINTF("%c", *query);
//  437       ++query;
//  438       --n;
//  439     };
//  440     DEBUG_PRINTF(".");
//  441   } while(*query != 0);
//  442   DEBUG_PRINTF("\n");
//  443   return query + 1;
//  444 }
//  445 /*---------------------------------------------------------------------------*/
//  446 /** \internal
//  447  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function encode_name
          CFI NoCalls
        THUMB
//  448 static unsigned char *
//  449 encode_name(unsigned char *query, const char *nameptr)
//  450 {
encode_name:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  451   char *nptr;
//  452 
//  453   --nameptr;
        SUBS     R1,R1,#+1
//  454   /* Convert hostname into suitable query format. */
//  455   do {
//  456     uint8_t n = 0;
//  457 
//  458     ++nameptr;
//  459     nptr = (char *)query;
??encode_name_0:
        MOV      R3,R0
        MOVS     R2,#+0
        ADDS     R1,R1,#+1
//  460     ++query;
        ADDS     R0,R0,#+1
//  461     for(n = 0; *nameptr != '.' && *nameptr != 0; ++nameptr) {
        B.N      ??encode_name_1
//  462       *query = *nameptr;
??encode_name_2:
        LDRB     R4,[R1], #+1
        STRB     R4,[R0], #+1
//  463       ++query;
//  464       ++n;
        ADDS     R2,R2,#+1
//  465     }
??encode_name_1:
        LDRB     R4,[R1, #+0]
        CMP      R4,#+46
        IT       NE 
        CMPNE    R4,#+0
        BNE.N    ??encode_name_2
//  466     *nptr = n;
        STRB     R2,[R3, #+0]
//  467   } while(*nameptr != 0);
        LDRB     R2,[R1, #+0]
        CMP      R2,#+0
        BNE.N    ??encode_name_0
//  468 
//  469   /* End the the name. */
//  470   *query++ = 0;
        MOVS     R1,#+0
        STRB     R1,[R0], #+1
//  471 
//  472   return query;
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  473 }
//  474 /*---------------------------------------------------------------------------*/
//  475 #if RESOLV_CONF_SUPPORTS_MDNS
//  476 /** \internal
//  477  */
//  478 static void
//  479 mdns_announce_requested(void)
//  480 {
//  481   mdns_needs_host_announce = 1;
//  482 }
//  483 /*---------------------------------------------------------------------------*/
//  484 /** \internal
//  485  */
//  486 static void
//  487 start_name_collision_check(clock_time_t after)
//  488 {
//  489   process_exit(&mdns_probe_process);
//  490   process_start(&mdns_probe_process, (void *)&after);
//  491 }
//  492 /*---------------------------------------------------------------------------*/
//  493 /** \internal
//  494  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function mdns_write_announce_records
        THUMB
//  495 static unsigned char *
//  496 mdns_write_announce_records(unsigned char *queryptr, uint8_t *count)
//  497 {
mdns_write_announce_records:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R7,R0
        MOV      R4,R1
//  498 #if NETSTACK_CONF_WITH_IPV6
//  499   uint8_t i;
//  500 
//  501   for(i = 0; i < UIP_DS6_ADDR_NB; ++i) {
        LDR.W    R5,??DataTable19
        LDR.W    R8,??DataTable19_1
        MOVS     R6,#+3
//  502     if(uip_ds6_if.addr_list[i].isused
//  503 #if !RESOLV_CONF_MDNS_INCLUDE_GLOBAL_V6_ADDRS
//  504        && uip_is_addr_link_local(&uip_ds6_if.addr_list[i].ipaddr)
//  505 #endif
//  506       ) {
??mdns_write_announce_records_0:
        LDRB     R0,[R5, #-2]
        CMP      R0,#+0
        BEQ.N    ??mdns_write_announce_records_1
        LDRB     R0,[R5, #+0]
        CMP      R0,#+254
        ITT      EQ 
        LDRBEQ   R0,[R5, #+1]
        CMPEQ    R0,#+128
        BNE.N    ??mdns_write_announce_records_1
//  507       if(!*count) {
        LDRB     R0,[R4, #+0]
        CBNZ.N   R0,??mdns_write_announce_records_2
//  508         queryptr = encode_name(queryptr, resolv_hostname);
        ADD      R0,R8,#+7
??mdns_write_announce_records_3:
        MOV      R2,R7
        MOVS     R1,#+0
        ADDS     R0,R0,#+1
        ADDS     R7,R7,#+1
        B.N      ??mdns_write_announce_records_4
??mdns_write_announce_records_5:
        LDRB     R3,[R0], #+1
        STRB     R3,[R7], #+1
        ADDS     R1,R1,#+1
??mdns_write_announce_records_4:
        LDRB     R3,[R0, #+0]
        CMP      R3,#+46
        IT       NE 
        CMPNE    R3,#+0
        BNE.N    ??mdns_write_announce_records_5
        STRB     R1,[R2, #+0]
        LDRB     R1,[R0, #+0]
        CMP      R1,#+0
        BNE.N    ??mdns_write_announce_records_3
        MOVS     R0,#+0
        B.N      ??mdns_write_announce_records_6
//  509       } else {
//  510         /* Use name compression to refer back to the first name */
//  511         *queryptr++ = 0xc0;
??mdns_write_announce_records_2:
        MOVS     R0,#+192
        STRB     R0,[R7], #+1
//  512         *queryptr++ = sizeof(struct dns_hdr);
        MOVS     R0,#+12
??mdns_write_announce_records_6:
        STRB     R0,[R7], #+1
//  513       }
//  514 
//  515       *queryptr++ = (uint8_t) ((NATIVE_DNS_TYPE) >> 8);
//  516       *queryptr++ = (uint8_t) ((NATIVE_DNS_TYPE));
//  517 
//  518       *queryptr++ = (uint8_t) ((DNS_CLASS_IN | 0x8000) >> 8);
//  519       *queryptr++ = (uint8_t) ((DNS_CLASS_IN | 0x8000));
//  520 
//  521       *queryptr++ = 0;
//  522       *queryptr++ = 0;
//  523       *queryptr++ = 0;
//  524       *queryptr++ = 120;
//  525 
//  526       *queryptr++ = 0;
//  527       *queryptr++ = sizeof(uip_ipaddr_t);
//  528 
//  529       uip_ipaddr_copy((uip_ipaddr_t*)queryptr, &uip_ds6_if.addr_list[i].ipaddr);
        MOV      R1,R5
        MOVS     R0,#+0
        STRB     R0,[R7], #+1
        MOVS     R2,#+16
        MOVS     R0,#+28
        STRB     R0,[R7], #+1
        MOVS     R0,#+128
        STRB     R0,[R7], #+1
        MOVS     R0,#+1
        STRB     R0,[R7], #+1
        MOVS     R0,#+0
        STRB     R0,[R7], #+1
        STRB     R0,[R7], #+1
        STRB     R0,[R7], #+1
        MOVS     R0,#+120
        STRB     R0,[R7], #+1
        MOVS     R0,#+0
        STRB     R0,[R7], #+1
        MOVS     R0,#+16
        STRB     R0,[R7], #+1
        MOV      R0,R7
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  530       queryptr += sizeof(uip_ipaddr_t);
//  531       ++(*count);
        LDRB     R0,[R4, #+0]
        ADDS     R0,R0,#+1
        ADDS     R7,R7,#+16
        STRB     R0,[R4, #+0]
//  532     }
//  533   }
??mdns_write_announce_records_1:
        ADDS     R5,R5,#+32
        SUBS     R6,R6,#+1
        BNE.N    ??mdns_write_announce_records_0
//  534 #else /* NETSTACK_CONF_WITH_IPV6 */
//  535   struct dns_answer *ans;
//  536 
//  537   queryptr = encode_name(queryptr, resolv_hostname);
//  538   ans = (struct dns_answer *)queryptr;
//  539   ans->type = UIP_HTONS(NATIVE_DNS_TYPE);
//  540   ans->class = UIP_HTONS(DNS_CLASS_IN | 0x8000);
//  541   ans->ttl[0] = 0;
//  542   ans->ttl[1] = UIP_HTONS(120);
//  543   ans->len = UIP_HTONS(sizeof(uip_ipaddr_t));
//  544   uip_gethostaddr((uip_ipaddr_t *) ans->ipaddr);
//  545   queryptr = (unsigned char *)ans + sizeof(*ans);
//  546   ++(*count);
//  547 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  548   return queryptr;
        MOV      R0,R7
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock2
//  549 }
//  550 /*---------------------------------------------------------------------------*/
//  551 /** \internal
//  552  * Called when we need to announce ourselves
//  553  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function mdns_prep_host_announce_packet
        THUMB
//  554 static size_t
//  555 mdns_prep_host_announce_packet(void)
//  556 {
mdns_prep_host_announce_packet:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
//  557   static const struct {
//  558     uint16_t type;
//  559     uint16_t class;
//  560     uint16_t ttl[2];
//  561     uint16_t len;
//  562     uint8_t data[8];
//  563 
//  564   } nsec_record = {
//  565     UIP_HTONS(DNS_TYPE_NSEC),
//  566     UIP_HTONS(DNS_CLASS_IN | 0x8000),
//  567     { 0, UIP_HTONS(120) },
//  568     UIP_HTONS(8),
//  569 
//  570     {
//  571       0xc0,
//  572       sizeof(struct dns_hdr), /* Name compression. Re-using the name of first record. */
//  573       0x00,
//  574       0x04,
//  575 
//  576 #if NETSTACK_CONF_WITH_IPV6
//  577       0x00,
//  578       0x00,
//  579       0x00,
//  580       0x08,
//  581 #else /* NETSTACK_CONF_WITH_IPV6 */
//  582       0x40,
//  583       0x00,
//  584       0x00,
//  585       0x00,
//  586 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  587     }
//  588   };
//  589 
//  590   unsigned char *queryptr;
//  591 
//  592   uint8_t total_answers = 0;
//  593 
//  594   /* Be aware that, unless `ARCH_DOESNT_NEED_ALIGNED_STRUCTS` is set,
//  595    * writing directly to the uint16_t members of this struct is an error. */
//  596   struct dns_hdr *hdr = (struct dns_hdr *)uip_appdata;
        LDR.W    R4,??DataTable19_2
        LDR      R5,[R4, #+0]
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  597 
//  598   /* Zero out the header */
//  599   memset((void *)hdr, 0, sizeof(*hdr));
        MOVS     R1,#+12
        MOV      R0,R5
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  600 
//  601   hdr->flags1 |= DNS_FLAG1_RESPONSE | DNS_FLAG1_AUTHORATIVE;
        LDRB     R0,[R5, #+2]
        ORR      R0,R0,#0x84
        STRB     R0,[R5, #+2]
//  602 
//  603   queryptr = (unsigned char *)uip_appdata + sizeof(*hdr);
//  604 
//  605   queryptr = mdns_write_announce_records(queryptr, &total_answers);
        ADD      R1,SP,#+0
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+12
          CFI FunCall mdns_write_announce_records
        BL       mdns_write_announce_records
        MOV      R6,R0
//  606 
//  607   /* We now need to add an NSEC record to indicate
//  608    * that this is all there is.
//  609    */
//  610   if(!total_answers) {
        LDRB     R0,[SP, #+0]
        CBNZ.N   R0,??mdns_prep_host_announce_packet_0
//  611     queryptr = encode_name(queryptr, resolv_hostname);
        LDR.W    R1,??DataTable19_3
        MOV      R0,R6
          CFI FunCall encode_name
        BL       encode_name
        MOV      R6,R0
        B.N      ??mdns_prep_host_announce_packet_1
//  612   } else {
//  613     /* Name compression. Re-using the name of first record. */
//  614     *queryptr++ = 0xc0;
??mdns_prep_host_announce_packet_0:
        MOVS     R0,#+192
        STRB     R0,[R6], #+1
//  615     *queryptr++ = sizeof(*hdr);
        MOVS     R0,#+12
        STRB     R0,[R6], #+1
//  616   }
//  617 
//  618   memcpy((void *)queryptr, (void *)&nsec_record, sizeof(nsec_record));
??mdns_prep_host_announce_packet_1:
        MOVS     R2,#+18
        ADR.W    R1,??nsec_record
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  619 
//  620   queryptr += sizeof(nsec_record);
//  621 
//  622   /* This platform might be picky about alignment. To avoid the possibility
//  623    * of doing an unaligned write, we are going to do this manually. */
//  624   ((uint8_t*)&hdr->numanswers)[1] = total_answers;
        LDRB     R0,[SP, #+0]
        STRB     R0,[R5, #+7]
//  625   ((uint8_t*)&hdr->numextrarr)[1] = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+11]
//  626 
//  627   return (queryptr - (unsigned char *)uip_appdata);
        ADD      R0,R6,#+18
        LDR      R1,[R4, #+0]
        SUBS     R0,R0,R1
        POP      {R1,R2,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock3
//  628 }
//  629 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
//  630 /*---------------------------------------------------------------------------*/
//  631 static char
//  632 try_next_server(struct namemap *namemapptr)
//  633 {
//  634 #if VERBOSE_DEBUG
//  635   printf("server %d\n", namemapptr->server);
//  636 #endif
//  637   namemapptr->server++;
//  638   if(uip_nameserver_get(namemapptr->server) != NULL) {
//  639     namemapptr->retries = 0;
//  640     return 1;
//  641   }
//  642   namemapptr->server = 0;
//  643   return 0;
//  644 }
//  645 /*---------------------------------------------------------------------------*/
//  646 /** \internal
//  647  * Runs through the list of names to see if there are any that have
//  648  * not yet been queried and, if so, sends out a query.
//  649  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function check_entries
        THUMB
//  650 static void
//  651 check_entries(void)
//  652 {
check_entries:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+8
          CFI CFA R13+32
//  653   volatile uint8_t i;
//  654 
//  655   uint8_t *query;
//  656 
//  657   register struct dns_hdr *hdr;
//  658 
//  659   register struct namemap *namemapptr;
//  660 
//  661   for(i = 0; i < RESOLV_ENTRIES; ++i) {
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        LDR.W    R6,??DataTable19_4
        LDR.W    R4,??DataTable19_1
        B.N      ??check_entries_0
//  662     namemapptr = &names[i];
//  663     if(namemapptr->state == STATE_NEW || namemapptr->state == STATE_ASKING) {
//  664       etimer_set(&retry, CLOCK_SECOND / 4);
//  665       if(namemapptr->state == STATE_ASKING) {
//  666         if(--namemapptr->tmr == 0) {
??check_entries_1:
        LDRB     R0,[R5, #+1]
        SUBS     R0,R0,#+1
        STRB     R0,[R5, #+1]
        UXTB     R0,R0
        CBNZ.N   R0,??check_entries_2
//  667 #if RESOLV_CONF_SUPPORTS_MDNS
//  668           if(++namemapptr->retries ==
//  669              (namemapptr->is_mdns ? RESOLV_CONF_MAX_MDNS_RETRIES :
//  670               RESOLV_CONF_MAX_RETRIES))
        LDRB     R0,[R5, #+4]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+4]
        UXTB     R0,R0
        LDR      R1,[R5, #+28]
        UBFX     R1,R1,#+16,#+1
        CMP      R1,#+0
        ITE      NE 
        MOVNE    R1,#+3
        MOVEQ    R1,#+4
        CMP      R0,R1
        BNE.N    ??check_entries_3
//  671 #else /* RESOLV_CONF_SUPPORTS_MDNS */
//  672           if(++namemapptr->retries == RESOLV_CONF_MAX_RETRIES)
//  673 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
//  674           {
//  675             /* Try the next server (if possible) before failing. Otherwise
//  676                simply mark the entry as failed. */
//  677             if(try_next_server(namemapptr) == 0) {
        LDRB     R0,[R5, #+29]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+29]
        UXTB     R0,R0
          CFI FunCall uip_nameserver_get
        BL       uip_nameserver_get
        CBZ.N    R0,??check_entries_4
        MOVS     R0,#+0
        STRB     R0,[R5, #+4]
//  678               /* STATE_ERROR basically means "not found". */
//  679               namemapptr->state = STATE_ERROR;
//  680 
//  681 #if RESOLV_SUPPORTS_RECORD_EXPIRATION
//  682               /* Keep the "not found" error valid for 30 seconds */
//  683               namemapptr->expiration = clock_seconds() + 30;
//  684 #endif /* RESOLV_SUPPORTS_RECORD_EXPIRATION */
//  685 
//  686               resolv_found(namemapptr->name, NULL);
//  687               continue;
//  688             }
//  689           }
//  690           namemapptr->tmr = namemapptr->retries * namemapptr->retries * 3;
??check_entries_3:
        LDRB     R0,[R5, #+4]
        MULS     R0,R0,R0
        ADD      R0,R0,R0, LSL #+1
        STRB     R0,[R5, #+1]
//  691 
//  692 #if RESOLV_CONF_SUPPORTS_MDNS
//  693           if(namemapptr->is_probe) {
        LDR      R0,[R5, #+28]
        UBFX     R0,R0,#+17,#+1
        CBZ.N    R0,??check_entries_5
//  694             /* Probing retries are much more aggressive, 250ms */
//  695             namemapptr->tmr = 2;
        MOVS     R0,#+2
        STRB     R0,[R5, #+1]
        B.N      ??check_entries_5
//  696           }
??check_entries_4:
        STRB     R0,[R5, #+29]
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
          CFI FunCall clock_seconds
        BL       clock_seconds
        ADDS     R0,R0,#+30
        STR      R0,[R5, #+8]
        MOVS     R1,#+0
        ADD      R0,R5,#+31
          CFI FunCall resolv_found
        BL       resolv_found
//  697 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
//  698         } else {
//  699           /* Its timer has not run out, so we move on to next
//  700            * entry.
//  701            */
//  702           continue;
//  703         }
//  704       } else {
??check_entries_2:
        LDRB     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+0]
??check_entries_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+4
        BGE.N    ??check_entries_6
        LDRB     R0,[SP, #+0]
        ADD      R5,R6,R0, LSL #+6
        LDRB     R0,[R5, #+0]
        CMP      R0,#+2
        IT       NE 
        CMPNE    R0,#+3
        BNE.N    ??check_entries_2
        MOVS     R1,#+250
        ADD      R0,R4,#+52
          CFI FunCall etimer_set
        BL       etimer_set
        LDRB     R0,[R5, #+0]
        CMP      R0,#+3
        BEQ.N    ??check_entries_1
//  705         namemapptr->state = STATE_ASKING;
        MOVS     R0,#+3
        STRB     R0,[R5, #+0]
//  706         namemapptr->tmr = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+1]
//  707         namemapptr->retries = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+4]
//  708       }
//  709       hdr = (struct dns_hdr *)uip_appdata;
//  710       memset(hdr, 0, sizeof(struct dns_hdr));
??check_entries_5:
        MOVS     R1,#+12
        LDR.W    R6,??DataTable19_2
        LDR      R7,[R6, #+0]
        MOV      R0,R7
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  711       hdr->id = random_rand();
          CFI FunCall random_rand
        BL       random_rand
        STRH     R0,[R7, #+0]
//  712       namemapptr->id = hdr->id;
        STRH     R0,[R5, #+2]
//  713 #if RESOLV_CONF_SUPPORTS_MDNS
//  714       if(!namemapptr->is_mdns || namemapptr->is_probe) {
        LDR      R0,[R5, #+28]
        AND      R0,R0,#0x30000
        CMP      R0,#+65536
        ITT      NE 
        MOVNE    R0,#+1
        STRBNE   R0,[R7, #+2]
//  715         hdr->flags1 = DNS_FLAG1_RD;
//  716       }
//  717       if(namemapptr->is_mdns) {
        LDR      R0,[R5, #+28]
        UBFX     R0,R0,#+16,#+1
        CBZ.N    R0,??check_entries_7
//  718         hdr->id = 0;
        MOVS     R0,#+0
        STRH     R0,[R7, #+0]
//  719       }
//  720 #else /* RESOLV_CONF_SUPPORTS_MDNS */
//  721       hdr->flags1 = DNS_FLAG1_RD;
//  722 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
//  723       hdr->numquestions = UIP_HTONS(1);
??check_entries_7:
        MOV      R0,#+256
        STRH     R0,[R7, #+4]
//  724       query = (unsigned char *)uip_appdata + sizeof(*hdr);
//  725       query = encode_name(query, namemapptr->name);
        ADD      R1,R5,#+31
        LDR      R0,[R6, #+0]
        ADDS     R0,R0,#+12
          CFI FunCall encode_name
        BL       encode_name
        MOV      R8,R0
//  726 #if RESOLV_CONF_SUPPORTS_MDNS
//  727       if(namemapptr->is_probe) {
        LDR      R0,[R5, #+28]
        UBFX     R0,R0,#+17,#+1
        CBZ.N    R0,??check_entries_8
//  728         *query++ = (uint8_t) ((DNS_TYPE_ANY) >> 8);
        MOVS     R0,#+0
        STRB     R0,[R8], #+1
//  729         *query++ = (uint8_t) ((DNS_TYPE_ANY));
        MOVS     R0,#+255
        B.N      ??check_entries_9
//  730       } else
//  731 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
//  732       {
//  733         *query++ = (uint8_t) ((NATIVE_DNS_TYPE) >> 8);
??check_entries_8:
        STRB     R0,[R8], #+1
//  734         *query++ = (uint8_t) ((NATIVE_DNS_TYPE));
        MOVS     R0,#+28
??check_entries_9:
        STRB     R0,[R8], #+1
//  735       }
//  736       *query++ = (uint8_t) ((DNS_CLASS_IN) >> 8);
        MOVS     R0,#+0
        STRB     R0,[R8], #+1
//  737       *query++ = (uint8_t) ((DNS_CLASS_IN));
        MOVS     R0,#+1
        STRB     R0,[R8], #+1
//  738 #if RESOLV_CONF_SUPPORTS_MDNS
//  739       if(namemapptr->is_mdns) {
        LDR      R0,[R5, #+28]
        UBFX     R1,R0,#+16,#+1
        CBZ.N    R1,??check_entries_10
//  740         if(namemapptr->is_probe) {
        UBFX     R0,R0,#+17,#+1
        CBZ.N    R0,??check_entries_11
//  741           /* This is our conflict detection request.
//  742            * In order to be in compliance with the MDNS
//  743            * spec, we need to add the records we are proposing
//  744            * to the rrauth section.
//  745            */
//  746           uint8_t count = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  747 
//  748           query = mdns_write_announce_records(query, &count);
        ADD      R1,SP,#+0
        MOV      R0,R8
          CFI FunCall mdns_write_announce_records
        BL       mdns_write_announce_records
        MOV      R8,R0
//  749           hdr->numauthrr = UIP_HTONS(count);
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+8
        STRH     R0,[R7, #+8]
//  750         }
//  751         uip_udp_packet_sendto(resolv_conn, uip_appdata,
//  752                               (query - (uint8_t *) uip_appdata),
//  753                               &resolv_mdns_addr, UIP_HTONS(MDNS_PORT));
??check_entries_11:
        MOVW     R0,#+59668
        LDR      R1,[R6, #+0]
        ADR.W    R3,resolv_mdns_addr
        STR      R0,[SP, #+0]
        B.N      ??check_entries_12
//  754 
//  755         PRINTF("resolver: (i=%d) Sent MDNS %s for \"%s\".\n", i,
//  756                namemapptr->is_probe?"probe":"request",namemapptr->name);
//  757       } else {
//  758         uip_udp_packet_sendto(resolv_conn, uip_appdata,
//  759                               (query - (uint8_t *) uip_appdata),
//  760                               (const uip_ipaddr_t *)
//  761                                 uip_nameserver_get(namemapptr->server), 
//  762                               UIP_HTONS(DNS_PORT));
??check_entries_10:
        LDRB     R0,[R5, #+29]
          CFI FunCall uip_nameserver_get
        BL       uip_nameserver_get
        MOV      R3,R0
        LDR      R1,[R6, #+0]
        MOV      R0,#+13568
        STR      R0,[SP, #+0]
??check_entries_12:
        SUB      R2,R8,R1
        LDR      R0,[R4, #+44]
          CFI FunCall uip_udp_packet_sendto
        BL       uip_udp_packet_sendto
//  763 
//  764         PRINTF("resolver: (i=%d) Sent DNS request for \"%s\".\n", i,
//  765                namemapptr->name);
//  766       }
//  767 #else /* RESOLV_CONF_SUPPORTS_MDNS */
//  768       uip_udp_packet_sendto(resolv_conn, uip_appdata,
//  769                             (query - (uint8_t *) uip_appdata),
//  770                             uip_nameserver_get(namemapptr->server), 
//  771                             UIP_HTONS(DNS_PORT));
//  772       PRINTF("resolver: (i=%d) Sent DNS request for \"%s\".\n", i,
//  773              namemapptr->name);
//  774 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
//  775       break;
//  776     }
//  777   }
//  778 }
??check_entries_6:
        POP      {R0,R1,R4-R8,PC}  ;; return
          CFI EndBlock cfiBlock4
//  779 /*---------------------------------------------------------------------------*/
//  780 /** \internal
//  781  * Called when new UDP data arrives.
//  782  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function newdata
        THUMB
//  783 static void
//  784 newdata(void)
//  785 {
newdata:
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
//  786   static uint8_t nquestions, nanswers;
//  787 
//  788   static int8_t i;
//  789 
//  790   register struct namemap *namemapptr = NULL;
//  791 
//  792   struct dns_answer *ans;
//  793 
//  794   register struct dns_hdr const *hdr = (struct dns_hdr *)uip_appdata;
        LDR.W    R8,??DataTable19_2
        LDR      R7,[R8, #+0]
//  795 
//  796   unsigned char *queryptr = (unsigned char *)hdr + sizeof(*hdr);
//  797 
//  798   const uint8_t is_request = ((hdr->flags1 & ~1) == 0) && (hdr->flags2 == 0);
        LDRB     R0,[R7, #+2]
        MOVS     R5,#+0
        MOVS     R1,#+254
        TST      R0,R1
        ADD      R4,R7,#+12
        BNE.N    ??newdata_0
        LDRB     R0,[R7, #+3]
        SUBS     R9,R0,#+1
        SBC      R9,R9,R9
        LSR      R9,R9,#+31
        B.N      ??newdata_1
??newdata_0:
        MOV      R9,R5
//  799 
//  800   /* We only care about the question(s) and the answers. The authrr
//  801    * and the extrarr are simply discarded.
//  802    */
//  803   nquestions = (uint8_t) uip_ntohs(hdr->numquestions);
??newdata_1:
        LDRH     R0,[R7, #+4]
        LDR.W    R6,??DataTable19_5
          CFI FunCall uip_htons
        BL       uip_htons
        STRB     R0,[R6, #+28]
//  804   nanswers = (uint8_t) uip_ntohs(hdr->numanswers);
        LDRH     R0,[R7, #+6]
          CFI FunCall uip_htons
        BL       uip_htons
        STRB     R0,[R6, #+29]
//  805 
//  806   queryptr = (unsigned char *)hdr + sizeof(*hdr);
//  807   i = 0;
//  808 
//  809   DEBUG_PRINTF
//  810     ("resolver: flags1=0x%02X flags2=0x%02X nquestions=%d, nanswers=%d, nauthrr=%d, nextrarr=%d\n",
//  811      hdr->flags1, hdr->flags2, (uint8_t) nquestions, (uint8_t) nanswers,
//  812      (uint8_t) uip_ntohs(hdr->numauthrr),
//  813      (uint8_t) uip_ntohs(hdr->numextrarr));
//  814 
//  815   if(is_request && (nquestions == 0)) {
        CMP      R9,#+0
        STRB     R5,[R6, #+30]
        BEQ.N    ??newdata_2
        LDRB     R0,[R6, #+28]
        CBNZ.N   R0,??newdata_2
//  816     /* Skip requests with no questions. */
//  817     DEBUG_PRINTF("resolver: Skipping request with no questions.\n");
//  818     return;
//  819   }
//  820 
//  821 /** QUESTION HANDLING SECTION ************************************************/
//  822 
//  823   for(; nquestions > 0;
//  824       queryptr = skip_name(queryptr) + sizeof(struct dns_question),
//  825       --nquestions
//  826   ) {
//  827 #if RESOLV_CONF_SUPPORTS_MDNS
//  828     if(!is_request) {
//  829       /* If this isn't a request, we don't need to bother
//  830        * looking at the individual questions. For the most
//  831        * part, this loop to just used to skip past them.
//  832        */
//  833       continue;
//  834     }
//  835 
//  836     {
//  837       struct dns_question *question = (struct dns_question *)skip_name(queryptr);
//  838 
//  839 #if !ARCH_DOESNT_NEED_ALIGNED_STRUCTS
//  840       static struct dns_question aligned;
//  841       memcpy(&aligned, question, sizeof(aligned));
//  842       question = &aligned;
//  843 #endif /* !ARCH_DOESNT_NEED_ALIGNED_STRUCTS */
//  844 
//  845       DEBUG_PRINTF("resolver: Question %d: type=%d class=%d\n", ++i,
//  846                    uip_htons(question->type), uip_htons(question->class));
//  847 
//  848       if(((uip_ntohs(question->class) & 0x7FFF) != DNS_CLASS_IN) ||
//  849          ((question->type != UIP_HTONS(DNS_TYPE_ANY)) &&
//  850           (question->type != UIP_HTONS(NATIVE_DNS_TYPE)))) {
//  851         /* Skip unrecognised records. */
//  852         continue;
//  853       }
//  854 
//  855       if(!dns_name_isequal(queryptr, resolv_hostname, uip_appdata)) {
//  856         continue;
//  857       }
//  858 
//  859       PRINTF("resolver: THIS IS A REQUEST FOR US!!!\n");
//  860 
//  861       if(mdns_state == MDNS_STATE_READY) {
//  862         /* We only send immediately if this isn't an MDNS request.
//  863          * Otherwise, we schedule ourselves to send later.
//  864          */
//  865         if(UIP_UDP_BUF->srcport == UIP_HTONS(MDNS_PORT)) {
//  866           mdns_announce_requested();
//  867         } else {
//  868           uip_udp_packet_sendto(resolv_conn, uip_appdata,
//  869                                 mdns_prep_host_announce_packet(),
//  870                                 &UIP_UDP_BUF->srcipaddr,
//  871                                 UIP_UDP_BUF->srcport);
//  872         }
//  873         return;
//  874       } else {
//  875         static uint8_t nauthrr;
//  876         PRINTF("resolver: But we are still probing. Waiting...\n");
//  877         /* We are still probing. We need to do the mDNS
//  878          * probe race condition check here and make sure
//  879          * we don't need to delay probing for a second.
//  880          */
//  881         nauthrr = (uint8_t)uip_ntohs(hdr->numauthrr);
//  882 
//  883         /* For now, we will always restart the collision check if
//  884          * there are *any* authority records present.
//  885          * In the future we should follow the spec more closely,
//  886          * but this should eventually converge to something reasonable.
//  887          */
//  888         if(nauthrr) {
//  889           start_name_collision_check(CLOCK_SECOND);
//  890         }
//  891       }
//  892     }
//  893 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
//  894   }
//  895 
//  896 /** ANSWER HANDLING SECTION **************************************************/
//  897 
//  898   if(nanswers == 0) {
//  899     /* Skip responses with no answers. */
//  900     return;
//  901   }
//  902 
//  903 #if RESOLV_CONF_SUPPORTS_MDNS
//  904   if(UIP_UDP_BUF->srcport == UIP_HTONS(MDNS_PORT) &&
//  905      hdr->id == 0) {
//  906     /* OK, this was from MDNS. Things get a little weird here,
//  907      * because we can't use the `id` field. We will look up the
//  908      * appropriate request in a later step. */
//  909 
//  910     i = -1;
//  911     namemapptr = NULL;
//  912   } else
//  913 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
//  914   {
//  915     for(i = 0; i < RESOLV_ENTRIES; ++i) {
//  916       namemapptr = &names[i];
//  917       if(namemapptr->state == STATE_ASKING &&
//  918          namemapptr->id == hdr->id) {
//  919         break;
//  920       }
//  921     }
//  922 
//  923     if(i >= RESOLV_ENTRIES || i < 0 || namemapptr->state != STATE_ASKING) {
//  924       PRINTF("resolver: DNS response has bad ID (%04X) \n", uip_ntohs(hdr->id));
//  925       return;
//  926     }
//  927 
//  928     PRINTF("resolver: Incoming response for \"%s\".\n", namemapptr->name);
//  929 
//  930     /* We'll change this to DONE when we find the record. */
//  931     namemapptr->state = STATE_ERROR;
//  932 
//  933     namemapptr->err = hdr->flags2 & DNS_FLAG2_ERR_MASK;
//  934 
//  935 #if RESOLV_SUPPORTS_RECORD_EXPIRATION
//  936     /* If we remain in the error state, keep it cached for 30 seconds. */
//  937     namemapptr->expiration = clock_seconds() + 30;
//  938 #endif /* RESOLV_SUPPORTS_RECORD_EXPIRATION */
//  939 
//  940     /* Check for error. If so, call callback to inform. */
//  941     if(namemapptr->err != 0) {
//  942       namemapptr->state = STATE_ERROR;
//  943       resolv_found(namemapptr->name, NULL);
//  944       return;
//  945     }
//  946   }
//  947 
//  948   i = 0;
//  949 
//  950   /* Answer parsing loop */
//  951   while(nanswers > 0) {
//  952     ans = (struct dns_answer *)skip_name(queryptr);
//  953 
//  954 #if !ARCH_DOESNT_NEED_ALIGNED_STRUCTS
//  955     {
//  956       static struct dns_answer aligned;
//  957       memcpy(&aligned, ans, sizeof(aligned));
//  958       ans = &aligned;
//  959     }
//  960 #endif /* !ARCH_DOESNT_NEED_ALIGNED_STRUCTS */
//  961 
//  962 #if VERBOSE_DEBUG
//  963     static char debug_name[40];
//  964     decode_name(queryptr, debug_name, uip_appdata);
//  965     DEBUG_PRINTF("resolver: Answer %d: \"%s\", type %d, class %d, ttl %d, length %d\n",
//  966                  ++i, debug_name, uip_ntohs(ans->type),
//  967                  uip_ntohs(ans->class) & 0x7FFF,
//  968                  (int)((uint32_t) uip_ntohs(ans->ttl[0]) << 16) | (uint32_t)
//  969                  uip_ntohs(ans->ttl[1]), uip_ntohs(ans->len));
//  970 #endif /* VERBOSE_DEBUG */
//  971 
//  972     /* Check the class and length of the answer to make sure
//  973      * it matches what we are expecting
//  974      */
//  975     if(((uip_ntohs(ans->class) & 0x7FFF) != DNS_CLASS_IN) ||
//  976        (ans->len != UIP_HTONS(sizeof(uip_ipaddr_t)))) {
//  977       goto skip_to_next_answer;
//  978     }
//  979 
//  980     if(ans->type != UIP_HTONS(NATIVE_DNS_TYPE)) {
//  981       goto skip_to_next_answer;
//  982     }
//  983 
//  984 #if RESOLV_CONF_SUPPORTS_MDNS
//  985     if(UIP_UDP_BUF->srcport == UIP_HTONS(MDNS_PORT) &&
//  986        hdr->id == 0) {
//  987       int8_t available_i = RESOLV_ENTRIES;
//  988 
//  989       DEBUG_PRINTF("resolver: MDNS query.\n");
//  990 
//  991       /* For MDNS, we need to actually look up the name we
//  992        * are looking for.
//  993        */
//  994       for(i = 0; i < RESOLV_ENTRIES; ++i) {
//  995         namemapptr = &names[i];
//  996         if(dns_name_isequal(queryptr, namemapptr->name, uip_appdata)) {
//  997           break;
//  998         }
//  999         if((namemapptr->state == STATE_UNUSED)
// 1000 #if RESOLV_SUPPORTS_RECORD_EXPIRATION
// 1001           || (namemapptr->state == STATE_DONE && clock_seconds() > namemapptr->expiration)
// 1002 #endif /* RESOLV_SUPPORTS_RECORD_EXPIRATION */
// 1003         ) {
// 1004           available_i = i;
// 1005         }
// 1006       }
// 1007       if(i == RESOLV_ENTRIES) {
// 1008         DEBUG_PRINTF("resolver: Unsolicited MDNS response.\n");
// 1009         i = available_i;
// 1010         namemapptr = &names[i];
// 1011         if(!decode_name(queryptr, namemapptr->name, uip_appdata)) {
// 1012           DEBUG_PRINTF("resolver: MDNS name too big to cache.\n");
// 1013           namemapptr = NULL;
// 1014           goto skip_to_next_answer;
// 1015         }
// 1016       }
// 1017       if(i == RESOLV_ENTRIES) {
// 1018         DEBUG_PRINTF
// 1019           ("resolver: Not enough room to keep track of unsolicited MDNS answer.\n");
// 1020 
// 1021         if(dns_name_isequal(queryptr, resolv_hostname, uip_appdata)) {
// 1022           /* Oh snap, they say they are us! We had better report them... */
// 1023           resolv_found(resolv_hostname, (uip_ipaddr_t *) ans->ipaddr);
// 1024         }
// 1025         namemapptr = NULL;
// 1026         goto skip_to_next_answer;
// 1027       }
// 1028       namemapptr = &names[i];
// 1029 
// 1030     } else
// 1031 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
// 1032     {
// 1033       /* This will force us to stop even if there are more answers. */
// 1034       nanswers = 1;
// 1035     }
// 1036 
// 1037 /*  This is disabled for now, so that we don't fail on CNAME records.
// 1038 #if RESOLV_VERIFY_ANSWER_NAMES
// 1039     if(namemapptr && !dns_name_isequal(queryptr, namemapptr->name, uip_appdata)) {
// 1040       DEBUG_PRINTF("resolver: Answer name doesn't match question...!\n");
// 1041       goto skip_to_next_answer;
// 1042     }
// 1043 #endif
// 1044 */
// 1045 
// 1046     DEBUG_PRINTF("resolver: Answer for \"%s\" is usable.\n", namemapptr->name);
// 1047 
// 1048     namemapptr->state = STATE_DONE;
// 1049 #if RESOLV_SUPPORTS_RECORD_EXPIRATION
// 1050     namemapptr->expiration = ans->ttl[1] + (ans->ttl[0] << 8);
// 1051     namemapptr->expiration += clock_seconds();
// 1052 #endif /* RESOLV_SUPPORTS_RECORD_EXPIRATION */
// 1053 
// 1054     uip_ipaddr_copy(&namemapptr->ipaddr, (uip_ipaddr_t *) ans->ipaddr);
// 1055 
// 1056     resolv_found(namemapptr->name, &namemapptr->ipaddr);
// 1057     break;
// 1058 
// 1059   skip_to_next_answer:
// 1060     queryptr = (unsigned char *)skip_name(queryptr) + 10 + uip_htons(ans->len);
// 1061     --nanswers;
// 1062   }
// 1063 
// 1064   /* Got to this point there's no answer, try next nameserver if available
// 1065      since this one doesn't know the answer */
// 1066 #if RESOLV_CONF_SUPPORTS_MDNS
// 1067   if(nanswers == 0 && UIP_UDP_BUF->srcport != UIP_HTONS(MDNS_PORT) 
// 1068       && hdr->id != 0)
// 1069 #else
// 1070   if(nanswers == 0) 
// 1071 #endif
// 1072   {
// 1073     if(try_next_server(namemapptr)) {
// 1074       namemapptr->state = STATE_ASKING;
// 1075       process_post(&resolv_process, PROCESS_EVENT_TIMER, NULL);
// 1076     }
// 1077   }
// 1078 
// 1079 }
        POP      {R0,R4-R11,PC}
??newdata_3:
        ADDS     R4,R4,#+1
        CBZ.N    R1,??newdata_4
        ADDS     R4,R1,R4
??newdata_4:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??newdata_5
??newdata_6:
        LDRB     R0,[R6, #+28]
        SUBS     R0,R0,#+1
        ADDS     R4,R4,#+5
        STRB     R0,[R6, #+28]
??newdata_2:
        LDRB     R0,[R6, #+28]
        CMP      R0,#+0
        BEQ.N    ??newdata_7
        CMP      R9,#+0
        BEQ.N    ??newdata_5
        MOV      R1,R4
        MOVS     R3,#+192
??newdata_8:
        LDRB     R2,[R1, #+0]
        TST      R2,R3
        BEQ.N    ??newdata_9
        ADDS     R1,R1,#+1
        B.N      ??newdata_10
??newdata_9:
        ADDS     R1,R1,#+1
        CBZ.N    R2,??newdata_11
        ADDS     R1,R2,R1
??newdata_11:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??newdata_8
??newdata_10:
        MOVS     R2,#+4
        ADDS     R1,R1,#+1
        ADD      R0,R6,#+32
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRH     R0,[R6, #+34]
          CFI FunCall uip_htons
        BL       uip_htons
        LSLS     R0,R0,#+17
        LSRS     R0,R0,#+17
        CMP      R0,#+1
        BNE.N    ??newdata_5
        LDRH     R0,[R6, #+32]
        CMP      R0,#+65280
        IT       NE 
        CMPNE    R0,#+7168
        BNE.N    ??newdata_5
        LDR.W    R11,??DataTable19_1
        LDR      R2,[R8, #+0]
        ADD      R1,R11,#+8
        MOV      R0,R4
          CFI FunCall dns_name_isequal
        BL       dns_name_isequal
        CBZ.N    R0,??newdata_5
        LDRB     R0,[R11, #+2]
        CMP      R0,#+2
        BNE.N    ??newdata_12
        LDR.W    R4,??DataTable19_6
        LDRH     R0,[R4, #+40]
        MOVW     R1,#+59668
        CMP      R0,R1
        BNE.N    ??newdata_13
        MOVS     R0,#+1
        STR      R0,[R11, #+48]
        POP      {R0,R4-R11,PC}
??newdata_13:
          CFI FunCall mdns_prep_host_announce_packet
        BL       mdns_prep_host_announce_packet
        MOV      R2,R0
        LDRH     R0,[R4, #+40]
        LDR      R1,[R8, #+0]
        STR      R0,[SP, #+0]
        ADD      R3,R4,#+8
        LDR      R0,[R11, #+44]
          CFI FunCall uip_udp_packet_sendto
        BL       uip_udp_packet_sendto
        POP      {R0,R4-R11,PC}
??newdata_12:
        LDRH     R0,[R7, #+8]
          CFI FunCall uip_htons
        BL       uip_htons
        UXTB     R0,R0
        CBZ.N    R0,??newdata_5
        MOV      R0,#+1000
        STR      R0,[SP, #+0]
        ADD      R0,R11,#+84
          CFI FunCall process_exit
        BL       process_exit
        ADD      R1,SP,#+0
        ADD      R0,R11,#+84
          CFI FunCall process_start
        BL       process_start
??newdata_5:
        LDRB     R1,[R4, #+0]
        MOVS     R2,#+192
        TST      R1,R2
        BEQ.N    ??newdata_3
        ADDS     R4,R4,#+1
        B.N      ??newdata_6
??newdata_7:
        LDRB     R0,[R6, #+29]
        CMP      R0,#+0
        BEQ.W    ??newdata_14
        LDR.W    R9,??DataTable19_6
        LDR.W    R10,??DataTable19_4
        LDRH     R0,[R9, #+40]
        MOVW     R1,#+59668
        CMP      R0,R1
        ITT      EQ 
        LDRHEQ   R0,[R7, #+0]
        CMPEQ    R0,#+0
        BEQ.N    ??newdata_15
        LDRB     R1,[R10, #+0]
        MOVS     R0,#+0
        CMP      R1,#+3
        ITTT     EQ 
        LDRHEQ   R1,[R10, #+2]
        LDRHEQ   R2,[R7, #+0]
        CMPEQ    R1,R2
        MOV      R5,R10
        BEQ.N    ??newdata_16
        LDRB     R1,[R10, #+64]
        MOVS     R0,#+1
        CMP      R1,#+3
        ITTT     EQ 
        LDRHEQ   R1,[R10, #+66]
        LDRHEQ   R2,[R7, #+0]
        CMPEQ    R1,R2
        ADD      R5,R10,#+64
        BEQ.N    ??newdata_16
        LDRB     R1,[R10, #+128]
        MOVS     R0,#+2
        CMP      R1,#+3
        ITTT     EQ 
        LDRHEQ   R1,[R10, #+130]
        LDRHEQ   R2,[R7, #+0]
        CMPEQ    R1,R2
        ADD      R5,R10,#+128
        BEQ.N    ??newdata_16
        LDRB     R1,[R10, #+192]
        MOVS     R0,#+3
        CMP      R1,#+3
        ADD      R5,R10,#+192
        ITTTE    EQ 
        LDRHEQ   R1,[R10, #+194]
        LDRHEQ   R2,[R7, #+0]
        CMPEQ    R1,R2
        MOVNE    R0,#+4
??newdata_16:
        STRB     R0,[R6, #+30]
        LDRSB    R0,[R6, #+30]
        CMP      R0,#+4
        BCS.W    ??newdata_14
        LDRB     R0,[R5, #+0]
        CMP      R0,#+3
        BNE.W    ??newdata_14
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
        LDRB     R0,[R7, #+3]
        AND      R0,R0,#0xF
        STRB     R0,[R5, #+28]
          CFI FunCall clock_seconds
        BL       clock_seconds
        ADDS     R0,R0,#+30
        STR      R0,[R5, #+8]
        LDRB     R0,[R5, #+28]
        CBZ.N    R0,??newdata_15
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
        MOVS     R1,#+0
        ADD      R0,R5,#+31
          CFI FunCall resolv_found
        BL       resolv_found
        POP      {R0,R4-R11,PC}
??newdata_15:
        MOVS     R0,#+0
        STRB     R0,[R6, #+30]
        B.N      ??newdata_17
??newdata_18:
        ADDS     R4,R4,#+1
        CBZ.N    R1,??newdata_19
        ADDS     R4,R1,R4
??newdata_19:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.W    ??newdata_20
??newdata_21:
        LDRH     R0,[R6, #+8]
          CFI FunCall uip_htons
        BL       uip_htons
        ADDS     R0,R0,R4
        ADD      R4,R0,#+11
        LDRB     R0,[R6, #+29]
        SUBS     R0,R0,#+1
        STRB     R0,[R6, #+29]
??newdata_17:
        LDRB     R0,[R6, #+29]
        CMP      R0,#+0
        BEQ.W    ??newdata_22
        MOV      R1,R4
        MOVS     R3,#+192
??newdata_23:
        LDRB     R2,[R1, #+0]
        TST      R2,R3
        BEQ.N    ??newdata_24
        ADDS     R1,R1,#+1
        B.N      ??newdata_25
??newdata_24:
        ADDS     R1,R1,#+1
        CBZ.N    R2,??newdata_26
        ADDS     R1,R2,R1
??newdata_26:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??newdata_23
??newdata_25:
        MOVS     R2,#+26
        ADDS     R1,R1,#+1
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRH     R0,[R6, #+2]
          CFI FunCall uip_htons
        BL       uip_htons
        LSLS     R0,R0,#+17
        LSRS     R0,R0,#+17
        CMP      R0,#+1
        ITTTT    EQ 
        LDRHEQ   R0,[R6, #+8]
        CMPEQ    R0,#+4096
        LDRHEQ   R0,[R6, #+0]
        CMPEQ    R0,#+7168
        BNE.N    ??newdata_20
        LDRH     R0,[R9, #+40]
        MOVW     R1,#+59668
        CMP      R0,R1
        ITT      EQ 
        LDRHEQ   R0,[R7, #+0]
        CMPEQ    R0,#+0
        BNE.N    ??newdata_27
        MOV      R11,#+4
        STRB     R0,[R6, #+30]
??newdata_28:
        LDRSB    R0,[R6, #+30]
        LDR      R2,[R8, #+0]
        ADD      R5,R10,R0, LSL #+6
        ADD      R1,R5,#+31
        MOV      R0,R4
          CFI FunCall dns_name_isequal
        BL       dns_name_isequal
        CBNZ.N   R0,??newdata_29
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??newdata_30
        CMP      R0,#+4
        BNE.N    ??newdata_31
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR      R1,[R5, #+8]
        CMP      R1,R0
        BCS.N    ??newdata_31
??newdata_30:
        LDRSB    R11,[R6, #+30]
??newdata_31:
        LDRB     R0,[R6, #+30]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+30]
        SXTB     R0,R0
        CMP      R0,#+4
        BLT.N    ??newdata_28
??newdata_29:
        LDRSB    R0,[R6, #+30]
        CMP      R0,#+4
        BNE.N    ??newdata_32
        STRB     R11,[R6, #+30]
        MOV      R12,R4
        LDRSB    R0,[R6, #+30]
        LDR      R1,[R8, #+0]
        ADD      R5,R10,R0, LSL #+6
        ADD      R2,R5,#+31
        LDRB     R5,[R12], #+1
        MOVS     R3,#+32
        CBZ.N    R5,??newdata_33
??newdata_34:
        MOVS     R0,#+192
        TST      R5,R0
        BEQ.N    ??newdata_35
        LDRB     R0,[R12, #+0]
        MOVW     R12,#+65343
        AND      R5,R12,R5
        ADD      R0,R0,R5, LSL #+8
        UXTH     R0,R0
        ADD      R12,R0,R1
        LDRB     R5,[R12], #+1
        CBNZ.N   R5,??newdata_35
??newdata_33:
        MOVS     R0,#+0
        STRB     R0,[R2, #+0]
        CBZ.N    R3,??newdata_36
??newdata_32:
        LDRSB    R0,[R6, #+30]
        CMP      R0,#+4
        BNE.N    ??newdata_37
        LDR.W    R5,??DataTable19_1
        LDR      R2,[R8, #+0]
        ADD      R1,R5,#+8
        MOV      R0,R4
          CFI FunCall dns_name_isequal
        BL       dns_name_isequal
        CBZ.N    R0,??newdata_36
        ADD      R1,R6,#+10
        ADD      R0,R5,#+8
          CFI FunCall resolv_found
        BL       resolv_found
??newdata_36:
        MOVS     R5,#+0
??newdata_20:
        LDRB     R1,[R4, #+0]
        MOVS     R2,#+192
        TST      R1,R2
        BEQ.W    ??newdata_18
        ADDS     R4,R4,#+1
        B.N      ??newdata_21
??newdata_38:
        LDRB     R5,[R12], #+1
        CMP      R5,#+0
        BEQ.N    ??newdata_33
        MOVS     R0,#+46
        SUBS     R3,R3,#+1
        STRB     R0,[R2], #+1
        BNE.N    ??newdata_34
        B.N      ??newdata_33
??newdata_39:
        SUBS     R5,R5,#+1
        UXTB     R5,R5
        CMP      R5,#+0
        BEQ.N    ??newdata_38
??newdata_35:
        LDRB     R0,[R12], #+1
        STRB     R0,[R2], #+1
        SUBS     R3,R3,#+1
        BNE.N    ??newdata_39
        MOVS     R0,#+0
        STRB     R0,[R2, #+0]
        B.N      ??newdata_36
??newdata_37:
        ADD      R5,R10,R0, LSL #+6
        B.N      ??newdata_40
??newdata_27:
        MOVS     R0,#+1
        STRB     R0,[R6, #+29]
??newdata_40:
        MOVS     R0,#+4
        STRB     R0,[R5, #+0]
        LDRH     R1,[R6, #+4]
        LDRH     R0,[R6, #+6]
        ADD      R0,R0,R1, LSL #+8
        STR      R0,[R5, #+8]
          CFI FunCall clock_seconds
        BL       clock_seconds
        MOVS     R2,#+16
        LDR      R1,[R5, #+8]
        ADDS     R0,R0,R1
        STR      R0,[R5, #+8]
        ADD      R1,R6,#+10
        ADD      R0,R5,#+12
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        ADD      R1,R5,#+12
        ADD      R0,R5,#+31
          CFI FunCall resolv_found
        BL       resolv_found
        LDRB     R0,[R6, #+29]
        CBNZ.N   R0,??newdata_14
??newdata_22:
        LDRH     R0,[R9, #+40]
        MOVW     R1,#+59668
        CMP      R0,R1
        ITT      NE 
        LDRHNE   R0,[R7, #+0]
        CMPNE    R0,#+0
        BEQ.N    ??newdata_14
        LDRB     R0,[R5, #+29]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+29]
        UXTB     R0,R0
          CFI FunCall uip_nameserver_get
        BL       uip_nameserver_get
        CBZ.N    R0,??newdata_41
        MOVS     R0,#+0
        STRB     R0,[R5, #+4]
        MOVS     R2,#+0
        MOVS     R0,#+3
        STRB     R0,[R5, #+0]
        MOVS     R1,#+136
        LDR.W    R0,??DataTable19_7
          CFI FunCall process_post
        BL       process_post
        POP      {R0,R4-R11,PC}
??newdata_41:
        STRB     R0,[R5, #+29]
??newdata_14:
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock5

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??aligned:
        DS8 28
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1
// 1080 /*---------------------------------------------------------------------------*/
// 1081 #if RESOLV_CONF_SUPPORTS_MDNS
// 1082 /**
// 1083  * \brief           Changes the local hostname advertised by MDNS.
// 1084  * \param hostname  The new hostname to advertise.
// 1085  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function resolv_set_hostname
        THUMB
// 1086 void
// 1087 resolv_set_hostname(const char *hostname)
// 1088 {
resolv_set_hostname:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
// 1089   strncpy(resolv_hostname, hostname, RESOLV_CONF_MAX_DOMAIN_NAME_SIZE);
        LDR.W    R4,??DataTable19_1
        MOV      R1,R0
        MOVS     R2,#+32
        ADD      R0,R4,#+8
          CFI FunCall strncpy
        BL       strncpy
// 1090 
// 1091   /* Add the .local suffix if it isn't already there */
// 1092   if(strlen(resolv_hostname) < 7 ||
// 1093      strcasecmp(resolv_hostname + strlen(resolv_hostname) - 6, ".local") != 0) {
        ADR.W    R5,?_2
          CFI FunCall strlen
        BL       strlen
        CMP      R0,#+7
        BCC.N    ??resolv_set_hostname_0
        ADD      R0,R4,#+8
          CFI FunCall strlen
        BL       strlen
        ADDS     R0,R0,R4
        MOV      R1,R5
        ADDS     R0,R0,#+2
          CFI FunCall strcasecmp
        BL       strcasecmp
        CBZ.N    R0,??resolv_set_hostname_1
// 1094     strncat(resolv_hostname, ".local", RESOLV_CONF_MAX_DOMAIN_NAME_SIZE);
??resolv_set_hostname_0:
        MOVS     R2,#+32
        MOV      R1,R5
        ADD      R0,R4,#+8
          CFI FunCall strncat
        BL       strncat
// 1095   }
// 1096 
// 1097   PRINTF("resolver: hostname changed to \"%s\"\n", resolv_hostname);
// 1098 
// 1099   start_name_collision_check(0);
??resolv_set_hostname_1:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        ADD      R0,R4,#+84
          CFI FunCall process_exit
        BL       process_exit
        ADD      R1,SP,#+0
        ADD      R0,R4,#+84
          CFI FunCall process_start
        BL       process_start
// 1100 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6
// 1101 /*---------------------------------------------------------------------------*/
// 1102 /**
// 1103  * \brief      Returns the local hostname being advertised via MDNS.
// 1104  * \return     C-string containing the local hostname.
// 1105  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function resolv_get_hostname
          CFI NoCalls
        THUMB
// 1106 const char *
// 1107 resolv_get_hostname(void)
// 1108 {
// 1109   return resolv_hostname;
resolv_get_hostname:
        LDR.W    R0,??DataTable19_3
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
// 1110 }
// 1111 /*---------------------------------------------------------------------------*/
// 1112 /** \internal
// 1113  * Process for probing for name conflicts.
// 1114  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function process_thread_mdns_probe_process
        THUMB
// 1115 PROCESS_THREAD(mdns_probe_process, ev, data)
// 1116 {
process_thread_mdns_probe_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
// 1117   static struct etimer delay;
// 1118 
// 1119   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_mdns_probe_process_0
        MOVW     R3,#+1129
        SUBS     R0,R0,R3
        BEQ.N    ??process_thread_mdns_probe_process_1
        SUBS     R0,R0,#+6
        BEQ.N    ??process_thread_mdns_probe_process_2
        SUBS     R0,R0,#+7
        BEQ.N    ??process_thread_mdns_probe_process_3
        B.N      ??process_thread_mdns_probe_process_4
// 1120   mdns_state = MDNS_STATE_WAIT_BEFORE_PROBE;
??process_thread_mdns_probe_process_0:
        LDR.W    R5,??DataTable19_1
        STRB     R0,[R5, #+2]
// 1121 
// 1122   PRINTF("mdns-probe: Process (re)started.\n");
// 1123 
// 1124   /* Wait extra time if specified in data */
// 1125   if(NULL != data) {
        CBZ.N    R2,??process_thread_mdns_probe_process_5
// 1126     PRINTF("mdns-probe: Probing will begin in %ld clocks.\n",
// 1127            (long)*(clock_time_t *) data);
// 1128     etimer_set(&delay, *(clock_time_t *) data);
        LDR      R1,[R2, #+0]
        ADD      R0,R5,#+100
          CFI FunCall etimer_set
        BL       etimer_set
// 1129     PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
        MOVW     R0,#+1129
        B.N      ??process_thread_mdns_probe_process_6
??process_thread_mdns_probe_process_1:
        CMP      R1,#+136
        BNE.N    ??process_thread_mdns_probe_process_7
// 1130   }
// 1131 
// 1132   /* We need to wait a random (0-250ms) period of time before
// 1133    * probing to be in compliance with the MDNS spec. */
// 1134   etimer_set(&delay, CLOCK_SECOND * (random_rand() & 0xFF) / 1024);
??process_thread_mdns_probe_process_5:
          CFI FunCall random_rand
        BL       random_rand
        UXTB     R0,R0
        MOV      R1,#+1000
        MULS     R0,R1,R0
        ASRS     R1,R0,#+9
        ADD      R0,R0,R1, LSR #+22
        ASRS     R1,R0,#+10
        LDR.W    R0,??DataTable19_8
          CFI FunCall etimer_set
        BL       etimer_set
// 1135   PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_TIMER);
        MOVW     R0,#+1135
        B.N      ??process_thread_mdns_probe_process_6
??process_thread_mdns_probe_process_2:
        CMP      R1,#+136
        BNE.N    ??process_thread_mdns_probe_process_7
// 1136 
// 1137   /* Begin searching for our name. */
// 1138   mdns_state = MDNS_STATE_PROBING;
        LDR.W    R5,??DataTable19_1
        MOVS     R0,#+1
        STRB     R0,[R5, #+2]
// 1139   resolv_query(resolv_hostname);
        ADD      R0,R5,#+8
          CFI FunCall resolv_query
        BL       resolv_query
// 1140 
// 1141   do {
// 1142     PROCESS_WAIT_EVENT_UNTIL(ev == resolv_event_found);
??process_thread_mdns_probe_process_8:
        MOVW     R0,#+1142
??process_thread_mdns_probe_process_6:
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_mdns_probe_process_7
??process_thread_mdns_probe_process_3:
        LDR.W    R5,??DataTable19_1
        LDRB     R0,[R5, #+1]
        CMP      R1,R0
        BEQ.N    ??process_thread_mdns_probe_process_9
??process_thread_mdns_probe_process_7:
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
// 1143   } while(strcasecmp(resolv_hostname, data) != 0);
??process_thread_mdns_probe_process_9:
        MOV      R1,R2
        ADD      R0,R5,#+8
          CFI FunCall strcasecmp
        BL       strcasecmp
        CMP      R0,#+0
        BNE.N    ??process_thread_mdns_probe_process_8
// 1144 
// 1145   mdns_state = MDNS_STATE_READY;
        MOVS     R0,#+2
        STRB     R0,[R5, #+2]
// 1146   mdns_announce_requested();
        MOVS     R0,#+1
        STR      R0,[R5, #+48]
// 1147 
// 1148   PRINTF("mdns-probe: Finished probing.\n");
// 1149 
// 1150   PROCESS_END();
??process_thread_mdns_probe_process_4:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock8
// 1151 }
// 1152 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
// 1153 /*---------------------------------------------------------------------------*/
// 1154 /** \internal
// 1155  * The main UDP function.
// 1156  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function process_thread_resolv_process
        THUMB
// 1157 PROCESS_THREAD(resolv_process, ev, data)
// 1158 {
process_thread_resolv_process:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        SUB      SP,SP,#+8
          CFI CFA R13+24
// 1159   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_resolv_process_0
        MOVW     R2,#+1183
        CMP      R0,R2
        BEQ.N    ??process_thread_resolv_process_1
        B.N      ??process_thread_resolv_process_2
// 1160 
// 1161   memset(names, 0, sizeof(names));
??process_thread_resolv_process_0:
        MOV      R1,#+256
        LDR.N    R0,??DataTable19_4
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 1162 
// 1163   resolv_event_found = process_alloc_event();
        LDR.N    R5,??DataTable19_1
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R5, #+1]
// 1164 
// 1165   PRINTF("resolver: Process started.\n");
// 1166 
// 1167   resolv_conn = udp_new(NULL, 0, NULL);
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOV      R0,R1
          CFI FunCall udp_new
        BL       udp_new
        STR      R0,[R5, #+44]
// 1168 
// 1169 #if RESOLV_CONF_SUPPORTS_MDNS
// 1170   PRINTF("resolver: Supports MDNS.\n");
// 1171   uip_udp_bind(resolv_conn, UIP_HTONS(MDNS_PORT));
        MOVW     R1,#+59668
        STRH     R1,[R0, #+16]
// 1172 
// 1173 #if NETSTACK_CONF_WITH_IPV6
// 1174   uip_ds6_maddr_add(&resolv_mdns_addr);
        ADR.W    R0,resolv_mdns_addr
          CFI FunCall uip_ds6_maddr_add
        BL       uip_ds6_maddr_add
// 1175 #else
// 1176   /* TODO: Is there anything we need to do here for IPv4 multicast? */
// 1177 #endif
// 1178 
// 1179   resolv_set_hostname(CONTIKI_CONF_DEFAULT_HOSTNAME);
        ADR.W    R0,?_3
          CFI FunCall resolv_set_hostname
        BL       resolv_set_hostname
// 1180 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
// 1181 
// 1182   while(1) {
// 1183     PROCESS_WAIT_EVENT();
??process_thread_resolv_process_3:
        MOVW     R0,#+1183
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R1,R2,R4-R6,PC}
// 1184 
// 1185     if(ev == PROCESS_EVENT_TIMER) {
??process_thread_resolv_process_1:
        CMP      R1,#+136
        LDR.N    R5,??DataTable19_1
        BEQ.N    ??process_thread_resolv_process_4
// 1186       tcpip_poll_udp(resolv_conn);
// 1187     } else if(ev == tcpip_event) {
        LDR.N    R0,??DataTable19_9
        LDRB     R0,[R0, #+0]
        CMP      R1,R0
        ITTTT    EQ 
        LDREQ.N  R0,??DataTable19_10
        LDREQ    R0,[R0, #+0]
        LDREQ    R1,[R5, #+44]
        CMPEQ    R0,R1
// 1188       if(uip_udp_conn == resolv_conn) {
        BNE.N    ??process_thread_resolv_process_5
// 1189         if(uip_newdata()) {
        LDR.N    R6,??DataTable19_11
        LDRB     R0,[R6, #+0]
        LSLS     R0,R0,#+30
        IT       MI 
        BLMI     newdata
// 1190           newdata();
// 1191         }
// 1192         if(uip_poll()) {
        LDRB     R0,[R6, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??process_thread_resolv_process_5
// 1193 #if RESOLV_CONF_SUPPORTS_MDNS
// 1194           if(mdns_needs_host_announce) {
        LDR      R0,[R5, #+48]
        CBZ.N    R0,??process_thread_resolv_process_6
// 1195             size_t len;
// 1196 
// 1197             PRINTF("resolver: Announcing that we are \"%s\".\n",
// 1198                    resolv_hostname);
// 1199 
// 1200             memset(uip_appdata, 0, sizeof(struct dns_hdr));
        LDR.N    R6,??DataTable19_2
        LDR      R0,[R6, #+0]
        MOVS     R1,#+12
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
// 1201 
// 1202             len = mdns_prep_host_announce_packet();
          CFI FunCall mdns_prep_host_announce_packet
        BL       mdns_prep_host_announce_packet
        MOV      R2,R0
// 1203 
// 1204             uip_udp_packet_sendto(resolv_conn, uip_appdata,
// 1205                                   len, &resolv_mdns_addr, UIP_HTONS(MDNS_PORT));
        MOVW     R0,#+59668
        STR      R0,[SP, #+0]
        LDR      R1,[R6, #+0]
        LDR      R0,[R5, #+44]
        ADR.W    R3,resolv_mdns_addr
          CFI FunCall uip_udp_packet_sendto
        BL       uip_udp_packet_sendto
// 1206 
// 1207             mdns_needs_host_announce = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+48]
// 1208 
// 1209             /* Poll again in case this fired
// 1210              * at the same time the event timer did.
// 1211              */
// 1212             tcpip_poll_udp(resolv_conn);
??process_thread_resolv_process_4:
        LDR      R0,[R5, #+44]
          CFI FunCall tcpip_poll_udp
        BL       tcpip_poll_udp
        B.N      ??process_thread_resolv_process_5
// 1213           } else
// 1214 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
// 1215           {
// 1216             check_entries();
??process_thread_resolv_process_6:
          CFI FunCall check_entries
        BL       check_entries
// 1217           }
// 1218         }
// 1219       }
// 1220     }
// 1221 
// 1222 #if RESOLV_CONF_SUPPORTS_MDNS
// 1223     if(mdns_needs_host_announce) {
??process_thread_resolv_process_5:
        LDR      R0,[R5, #+48]
        CMP      R0,#+0
        BEQ.N    ??process_thread_resolv_process_3
// 1224       tcpip_poll_udp(resolv_conn);
        LDR      R0,[R5, #+44]
          CFI FunCall tcpip_poll_udp
        BL       tcpip_poll_udp
        B.N      ??process_thread_resolv_process_3
// 1225     }
// 1226 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
// 1227   }
// 1228 
// 1229   PROCESS_END();
??process_thread_resolv_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R2,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock9
// 1230 }
// 1231 /*---------------------------------------------------------------------------*/
// 1232 static void
// 1233 init(void)
// 1234 {
// 1235   static uint8_t initialized = 0;
// 1236   if(!initialized) {
// 1237     process_start(&resolv_process, NULL);
// 1238     initialized = 1;
// 1239   }
// 1240 }
// 1241 /*---------------------------------------------------------------------------*/
// 1242 #if RESOLV_AUTO_REMOVE_TRAILING_DOTS

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function remove_trailing_dots
        THUMB
// 1243 static const char *
// 1244 remove_trailing_dots(const char *name) {
remove_trailing_dots:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R5,R0
// 1245   static char dns_name_without_dots[RESOLV_CONF_MAX_DOMAIN_NAME_SIZE + 1];
// 1246   size_t len = strlen(name);
          CFI FunCall strlen
        BL       strlen
        MOV      R4,R0
// 1247 
// 1248   if(name[len - 1] == '.') {
        ADDS     R0,R4,R5
        LDRB     R0,[R0, #-1]
        CMP      R0,#+46
        BNE.N    ??remove_trailing_dots_0
// 1249     strncpy(dns_name_without_dots, name, sizeof(dns_name_without_dots));
        LDR.N    R6,??DataTable19_12
        MOVS     R2,#+33
        MOV      R1,R5
        MOV      R0,R6
          CFI FunCall strncpy
        BL       strncpy
        ADDS     R0,R4,R6
        SUBS     R0,R0,#+1
        B.N      ??remove_trailing_dots_1
// 1250     while(len && (dns_name_without_dots[len - 1] == '.')) {
// 1251       dns_name_without_dots[--len] = 0;
??remove_trailing_dots_2:
        MOVS     R1,#+0
        SUBS     R4,R4,#+1
        STRB     R1,[R0], #-1
// 1252     }
??remove_trailing_dots_1:
        CBZ.N    R4,??remove_trailing_dots_3
        LDRB     R1,[R0, #+0]
        CMP      R1,#+46
        BEQ.N    ??remove_trailing_dots_2
// 1253     name = dns_name_without_dots;
??remove_trailing_dots_3:
        MOV      R5,R6
// 1254   }
// 1255   return name;
??remove_trailing_dots_0:
        MOV      R0,R5
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock10
// 1256 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??dns_name_without_dots:
        DS8 36
// 1257 #else /* RESOLV_AUTO_REMOVE_TRAILING_DOTS */
// 1258 #define remove_trailing_dots(x) (x)
// 1259 #endif /* RESOLV_AUTO_REMOVE_TRAILING_DOTS */
// 1260 /*---------------------------------------------------------------------------*/
// 1261 /**
// 1262  * Queues a name so that a question for the name will be sent out.
// 1263  *
// 1264  * \param name The hostname that is to be queried.
// 1265  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function resolv_query
        THUMB
// 1266 void
// 1267 resolv_query(const char *name)
// 1268 {
resolv_query:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
// 1269   static uint8_t i;
// 1270 
// 1271   static uint8_t lseq, lseqi;
// 1272 
// 1273   register struct namemap *nameptr = 0;
// 1274 
// 1275   init();
        LDR.N    R4,??DataTable19_1
        MOV      R6,R0
        LDRB     R0,[R4, #+3]
        CBNZ.N   R0,??resolv_query_0
        MOVS     R1,#+0
        ADD      R0,R4,#+68
          CFI FunCall process_start
        BL       process_start
        MOVS     R0,#+1
        STRB     R0,[R4, #+3]
// 1276   
// 1277   lseq = lseqi = 0;
??resolv_query_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+6]
        STRB     R0,[R4, #+5]
// 1278 
// 1279   /* Remove trailing dots, if present. */
// 1280   name = remove_trailing_dots(name);
        MOV      R0,R6
          CFI FunCall remove_trailing_dots
        BL       remove_trailing_dots
        MOV      R6,R0
// 1281 
// 1282   for(i = 0; i < RESOLV_ENTRIES; ++i) {
        MOVS     R0,#+0
        STRB     R0,[R4, #+4]
        MOVS     R7,#+255
        LDR.W    R8,??DataTable19_4
// 1283     nameptr = &names[i];
??resolv_query_1:
        LDRB     R0,[R4, #+4]
        ADD      R5,R8,R0, LSL #+6
// 1284     if(0 == strcasecmp(nameptr->name, name)) {
        MOV      R1,R6
        ADD      R0,R5,#+31
          CFI FunCall strcasecmp
        BL       strcasecmp
        CBZ.N    R0,??resolv_query_2
// 1285       break;
// 1286     }
// 1287     if((nameptr->state == STATE_UNUSED)
// 1288 #if RESOLV_SUPPORTS_RECORD_EXPIRATION
// 1289       || (nameptr->state == STATE_DONE && clock_seconds() > nameptr->expiration)
// 1290 #endif /* RESOLV_SUPPORTS_RECORD_EXPIRATION */
// 1291     ) {
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??resolv_query_3
        CMP      R0,#+4
        BNE.N    ??resolv_query_4
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR      R1,[R5, #+8]
        CMP      R1,R0
        BCS.N    ??resolv_query_4
// 1292       lseqi = i;
??resolv_query_3:
        LDRB     R0,[R4, #+4]
        STRB     R0,[R4, #+6]
// 1293       lseq = 255;
        STRB     R7,[R4, #+5]
        B.N      ??resolv_query_5
// 1294     } else if(seqno - nameptr->seqno > lseq) {
??resolv_query_4:
        LDRB     R0,[R5, #+5]
        LDRB     R1,[R4, #+0]
        LDRB     R2,[R4, #+5]
        SUBS     R3,R1,R0
        CMP      R2,R3
        BGE.N    ??resolv_query_5
// 1295       lseq = seqno - nameptr->seqno;
        SUBS     R0,R1,R0
        STRB     R0,[R4, #+5]
// 1296       lseqi = i;
        LDRB     R0,[R4, #+4]
        STRB     R0,[R4, #+6]
// 1297     }
// 1298   }
??resolv_query_5:
        LDRB     R0,[R4, #+4]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+4]
        UXTB     R0,R0
        CMP      R0,#+4
        BLT.N    ??resolv_query_1
// 1299 
// 1300   if(i == RESOLV_ENTRIES) {
??resolv_query_2:
        LDRB     R0,[R4, #+4]
        CMP      R0,#+4
        BNE.N    ??resolv_query_6
// 1301     i = lseqi;
        LDRB     R0,[R4, #+6]
        STRB     R0,[R4, #+4]
// 1302     nameptr = &names[i];
        ADD      R5,R8,R0, LSL #+6
// 1303   }
// 1304 
// 1305   PRINTF("resolver: Starting query for \"%s\".\n", name);
// 1306 
// 1307   memset(nameptr, 0, sizeof(*nameptr));
??resolv_query_6:
        MOVS     R1,#+64
        MOV      R0,R5
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 1308 
// 1309   strncpy(nameptr->name, name, sizeof(nameptr->name));
        MOVS     R2,#+33
        MOV      R1,R6
        ADD      R0,R5,#+31
          CFI FunCall strncpy
        BL       strncpy
// 1310   nameptr->state = STATE_NEW;
        MOVS     R0,#+2
        STRB     R0,[R5, #+0]
// 1311   nameptr->seqno = seqno;
        LDRB     R0,[R4, #+0]
        STRB     R0,[R5, #+5]
// 1312   ++seqno;
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+0]
// 1313 
// 1314 #if RESOLV_CONF_SUPPORTS_MDNS
// 1315   {
// 1316     size_t name_len = strlen(name);
        MOV      R0,R6
          CFI FunCall strlen
        BL       strlen
// 1317 
// 1318     static const char local_suffix[] = "local";
// 1319 
// 1320     if((name_len > (sizeof(local_suffix) - 1)) &&
// 1321        (0 == strcasecmp(name + name_len - (sizeof(local_suffix) - 1), local_suffix))) {
        CMP      R0,#+6
        BCC.N    ??resolv_query_7
        ADDS     R0,R0,R6
        ADR.W    R1,??local_suffix
        SUBS     R0,R0,#+5
          CFI FunCall strcasecmp
        BL       strcasecmp
        CBNZ.N   R0,??resolv_query_7
// 1322       PRINTF("resolver: Using MDNS to look up \"%s\".\n", name);
// 1323       nameptr->is_mdns = 1;
        LDR      R0,[R5, #+28]
        ORR      R0,R0,#0x10000
        B.N      ??resolv_query_8
// 1324     } else {
// 1325       nameptr->is_mdns = 0;
??resolv_query_7:
        LDR      R0,[R5, #+28]
        BIC      R0,R0,#0x10000
??resolv_query_8:
        STR      R0,[R5, #+28]
// 1326     }
// 1327   }
// 1328   nameptr->is_probe = (mdns_state == MDNS_STATE_PROBING) &&
// 1329                       (0 == strcmp(nameptr->name, resolv_hostname));
        LDRB     R0,[R4, #+2]
        CMP      R0,#+1
        BNE.N    ??resolv_query_9
        ADD      R1,R4,#+8
        ADD      R0,R5,#+31
          CFI FunCall strcmp
        BL       strcmp
        CBNZ.N   R0,??resolv_query_9
        MOV      R0,#+131072
        B.N      ??resolv_query_10
??resolv_query_9:
        MOVS     R0,#+0
??resolv_query_10:
        LDR      R1,[R5, #+28]
        BIC      R1,R1,#0x20000
        ORRS     R0,R0,R1
        STR      R0,[R5, #+28]
// 1330 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
// 1331 
// 1332   /* Force check_entires() to run on our process. */
// 1333   process_post(&resolv_process, PROCESS_EVENT_TIMER, 0);
        MOVS     R2,#+0
        ADD      R0,R4,#+68
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+136
          CFI FunCall process_post
        B.W      process_post
          CFI EndBlock cfiBlock11
// 1334 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
seqno:
        DATA
        DC8 0
resolv_event_found:
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC32 0H
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
resolv_process:
        DC32 0H, ?_0, process_thread_resolv_process
        DC8 0, 0, 0, 0
mdns_probe_process:
        DC32 0H, ?_1, process_thread_mdns_probe_process
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
// 1335 /*---------------------------------------------------------------------------*/
// 1336 /**
// 1337  * Look up a hostname in the array of known hostnames.
// 1338  *
// 1339  * \note This function only looks in the internal array of known
// 1340  * hostnames, it does not send out a query for the hostname if none
// 1341  * was found. The function resolv_query() can be used to send a query
// 1342  * for a hostname.
// 1343  *
// 1344  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function resolv_lookup
        THUMB
// 1345 resolv_status_t
// 1346 resolv_lookup(const char *name, uip_ipaddr_t ** ipaddr)
// 1347 {
resolv_lookup:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R5,R1
// 1348   resolv_status_t ret = RESOLV_STATUS_UNCACHED;
        MOVS     R4,#+1
// 1349 
// 1350   static uint8_t i;
// 1351 
// 1352   struct namemap *nameptr;
// 1353 
// 1354   /* Remove trailing dots, if present. */
// 1355   name = remove_trailing_dots(name);
          CFI FunCall remove_trailing_dots
        BL       remove_trailing_dots
        MOV      R8,R0
// 1356 
// 1357 #if UIP_CONF_LOOPBACK_INTERFACE
// 1358   if(strcmp(name, "localhost")) {
// 1359     static uip_ipaddr_t loopback =
// 1360 #if NETSTACK_CONF_WITH_IPV6
// 1361     { { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// 1362         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 } };
// 1363 #else /* NETSTACK_CONF_WITH_IPV6 */
// 1364     { { 127, 0, 0, 1 } };
// 1365 #endif /* NETSTACK_CONF_WITH_IPV6 */
// 1366     if(ipaddr) {
// 1367       *ipaddr = &loopback;
// 1368     }
// 1369     ret = RESOLV_STATUS_CACHED;
// 1370   }
// 1371 #endif /* UIP_CONF_LOOPBACK_INTERFACE */
// 1372 
// 1373   /* Walk through the list to see if the name is in there. */
// 1374   for(i = 0; i < RESOLV_ENTRIES; ++i) {
        LDR.N    R7,??DataTable19_13
        LDR.W    R9,??DataTable19_4
        MOVS     R0,#+0
        STRB     R0,[R7, #+0]
// 1375     nameptr = &names[i];
??resolv_lookup_0:
        LDRB     R0,[R7, #+0]
        ADD      R6,R9,R0, LSL #+6
// 1376 
// 1377     if(strcasecmp(name, nameptr->name) == 0) {
        ADD      R1,R6,#+31
        MOV      R0,R8
          CFI FunCall strcasecmp
        BL       strcasecmp
        CBNZ.N   R0,??resolv_lookup_1
// 1378       switch (nameptr->state) {
        LDRB     R0,[R6, #+0]
        CMP      R0,#+1
        BEQ.N    ??resolv_lookup_2
        BCC.N    ??resolv_lookup_3
        CMP      R0,#+3
        BEQ.N    ??resolv_lookup_4
        BCC.N    ??resolv_lookup_4
        CMP      R0,#+4
        BNE.N    ??resolv_lookup_3
// 1379       case STATE_DONE:
// 1380         ret = RESOLV_STATUS_CACHED;
        MOVS     R4,#+0
// 1381 #if RESOLV_SUPPORTS_RECORD_EXPIRATION
// 1382         if(clock_seconds() > nameptr->expiration) {
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR      R1,[R6, #+8]
        CMP      R1,R0
        BCS.N    ??resolv_lookup_3
// 1383           ret = RESOLV_STATUS_EXPIRED;
        MOVS     R4,#+2
        B.N      ??resolv_lookup_3
// 1384         }
// 1385 #endif /* RESOLV_SUPPORTS_RECORD_EXPIRATION */
// 1386         break;
// 1387       case STATE_NEW:
// 1388       case STATE_ASKING:
// 1389         ret = RESOLV_STATUS_RESOLVING;
??resolv_lookup_4:
        MOVS     R4,#+4
// 1390         break;
        B.N      ??resolv_lookup_3
// 1391       /* Almost certainly a not-found error from server */
// 1392       case STATE_ERROR:
// 1393         ret = RESOLV_STATUS_NOT_FOUND;
??resolv_lookup_2:
        MOVS     R4,#+3
// 1394 #if RESOLV_SUPPORTS_RECORD_EXPIRATION
// 1395         if(clock_seconds() > nameptr->expiration) {
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR      R1,[R6, #+8]
        CMP      R1,R0
        IT       CC 
        MOVCC    R4,#+1
// 1396           ret = RESOLV_STATUS_UNCACHED;
// 1397         }
// 1398 #endif /* RESOLV_SUPPORTS_RECORD_EXPIRATION */
// 1399         break;
// 1400       }
// 1401 
// 1402       if(ipaddr) {
??resolv_lookup_3:
        CBZ.N    R5,??resolv_lookup_5
// 1403         *ipaddr = &nameptr->ipaddr;
        ADD      R0,R6,#+12
        STR      R0,[R5, #+0]
        B.N      ??resolv_lookup_5
// 1404       }
// 1405 
// 1406       /* Break out of for loop. */
// 1407       break;
// 1408     }
// 1409   }
??resolv_lookup_1:
        LDRB     R0,[R7, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R7, #+0]
        UXTB     R0,R0
        CMP      R0,#+4
        BLT.N    ??resolv_lookup_0
// 1410 
// 1411 #if VERBOSE_DEBUG
// 1412   switch (ret) {
// 1413   case RESOLV_STATUS_CACHED:
// 1414     if(ipaddr) {
// 1415       PRINTF("resolver: Found \"%s\" in cache.\n", name);
// 1416       const uip_ipaddr_t *addr = *ipaddr;
// 1417 
// 1418       DEBUG_PRINTF
// 1419         ("resolver: %02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x \n",
// 1420          ((uint8_t *) addr)[0], ((uint8_t *) addr)[1], ((uint8_t *) addr)[2],
// 1421          ((uint8_t *) addr)[3], ((uint8_t *) addr)[4], ((uint8_t *) addr)[5],
// 1422          ((uint8_t *) addr)[6], ((uint8_t *) addr)[7], ((uint8_t *) addr)[8],
// 1423          ((uint8_t *) addr)[9], ((uint8_t *) addr)[10],
// 1424          ((uint8_t *) addr)[11], ((uint8_t *) addr)[12],
// 1425          ((uint8_t *) addr)[13], ((uint8_t *) addr)[14],
// 1426          ((uint8_t *) addr)[15]);
// 1427       break;
// 1428     }
// 1429   default:
// 1430     DEBUG_PRINTF("resolver: \"%s\" is NOT cached.\n", name);
// 1431     break;
// 1432   }
// 1433 #endif /* VERBOSE_DEBUG */
// 1434 
// 1435   return ret;
??resolv_lookup_5:
        MOV      R0,R4
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock12
// 1436 }

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??i_2:
        DS8 1
// 1437 /*---------------------------------------------------------------------------*/
// 1438 /** \internal
// 1439  * Callback function which is called when a hostname is found.
// 1440  *
// 1441  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function resolv_found
        THUMB
// 1442 static void
// 1443 resolv_found(char *name, uip_ipaddr_t * ipaddr)
// 1444 {
resolv_found:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R5,R0
// 1445 #if RESOLV_CONF_SUPPORTS_MDNS
// 1446   if(strncasecmp(resolv_hostname, name, strlen(resolv_hostname)) == 0 &&
// 1447      ipaddr
// 1448 #if NETSTACK_CONF_WITH_IPV6
// 1449      && !uip_ds6_is_my_addr(ipaddr)
// 1450 #else
// 1451      && uip_ipaddr_cmp(&uip_hostaddr, ipaddr) != 0
// 1452 #endif
// 1453     ) {
        LDR.N    R4,??DataTable19_1
        SUB      SP,SP,#+8
          CFI CFA R13+32
        MOV      R6,R1
        ADD      R0,R4,#+8
          CFI FunCall strlen
        BL       strlen
        MOV      R2,R0
        MOV      R1,R5
        ADD      R0,R4,#+8
          CFI FunCall strncasecmp
        BL       strncasecmp
        CMP      R0,#+0
        BNE.N    ??resolv_found_0
        CMP      R6,#+0
        BEQ.N    ??resolv_found_0
        MOV      R0,R6
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
        CMP      R0,#+0
        BNE.N    ??resolv_found_0
        LDRB     R0,[R4, #+2]
        CMP      R0,#+1
        BNE.N    ??resolv_found_1
// 1454     uint8_t i;
// 1455 
// 1456     if(mdns_state == MDNS_STATE_PROBING) {
// 1457       /* We found this new name while probing.
// 1458        * We must now rename ourselves.
// 1459        */
// 1460       PRINTF("resolver: Name collision detected for \"%s\".\n", name);
// 1461 
// 1462       /* Remove the ".local" suffix. */
// 1463       resolv_hostname[strlen(resolv_hostname) - 6] = 0;
        ADD      R0,R4,#+8
          CFI FunCall strlen
        BL       strlen
        ADDS     R0,R0,R4
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
// 1464 
// 1465       /* Append the last three hex parts of the link-level address. */
// 1466       for(i = 0; i < 3; ++i) {
        MOVS     R6,#+3
        LDR.N    R5,??DataTable19_14
        ADR.W    R8,?_4
        ADD      R7,SP,#+0
// 1467         uint8_t val = uip_lladdr.addr[(UIP_LLADDR_LEN - 3) + i];
??resolv_found_2:
        LDRB     R0,[R5, #+0]
// 1468 
// 1469         char append_str[4] = "-XX";
        LDR      R2,[R8, #0]
        ADD      R1,SP,#+0
        STR      R2,[R1, #+0]
// 1470 
// 1471         append_str[2] = (((val & 0xF) > 9) ? 'a' : '0') + (val & 0xF);
        AND      R1,R0,#0xF
        CMP      R1,#+10
        ITE      GE 
        MOVGE    R1,#+97
        MOVLT    R1,#+48
        AND      R2,R0,#0xF
        ADDS     R1,R2,R1
        STRB     R1,[R7, #+2]
// 1472         val >>= 4;
        LSRS     R0,R0,#+4
// 1473         append_str[1] = (((val & 0xF) > 9) ? 'a' : '0') + (val & 0xF);
        CMP      R0,#+10
        ITE      GE 
        MOVGE    R1,#+97
        MOVLT    R1,#+48
        ADDS     R0,R0,R1
        STRB     R0,[R7, #+1]
// 1474         strncat(resolv_hostname, append_str,
// 1475                 sizeof(resolv_hostname) - strlen(resolv_hostname) - 1); /* -1 in order to fit the terminating null byte. */
        ADD      R0,R4,#+8
          CFI FunCall strlen
        BL       strlen
        RSB      R2,R0,#+32
        ADD      R1,SP,#+0
        ADD      R0,R4,#+8
          CFI FunCall strncat
        BL       strncat
// 1476       }
        ADDS     R5,R5,#+1
        SUBS     R6,R6,#+1
        BNE.N    ??resolv_found_2
// 1477 
// 1478       /* Re-add the .local suffix */
// 1479       strncat(resolv_hostname, ".local", RESOLV_CONF_MAX_DOMAIN_NAME_SIZE);
        MOVS     R2,#+32
        ADR.W    R1,?_2
        ADD      R0,R4,#+8
          CFI FunCall strncat
        BL       strncat
// 1480 
// 1481       start_name_collision_check(CLOCK_SECOND * 5);
        MOVW     R0,#+5000
        B.N      ??resolv_found_3
// 1482     } else if(mdns_state == MDNS_STATE_READY) {
??resolv_found_1:
        CMP      R0,#+2
        BNE.N    ??resolv_found_4
// 1483       /* We found a collision after we had already asserted
// 1484        * that we owned this name. We need to immediately
// 1485        * and explicitly begin probing.
// 1486        */
// 1487       PRINTF("resolver: Possible name collision, probing...\n");
// 1488       start_name_collision_check(0);
        MOVS     R0,#+0
??resolv_found_3:
        STR      R0,[SP, #+0]
        ADD      R0,R4,#+84
          CFI FunCall process_exit
        BL       process_exit
        ADD      R1,SP,#+0
        ADD      R0,R4,#+84
          CFI FunCall process_start
        BL       process_start
// 1489     }
// 1490 
// 1491   } else
// 1492 #endif /* RESOLV_CONF_SUPPORTS_MDNS */
// 1493 
// 1494 #if VERBOSE_DEBUG
// 1495   if(ipaddr) {
// 1496     PRINTF("resolver: Found address for \"%s\".\n", name);
// 1497     PRINTF
// 1498       ("resolver: %02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x \n",
// 1499        ((uint8_t *) ipaddr)[0], ((uint8_t *) ipaddr)[1],
// 1500        ((uint8_t *) ipaddr)[2], ((uint8_t *) ipaddr)[3],
// 1501        ((uint8_t *) ipaddr)[4], ((uint8_t *) ipaddr)[5],
// 1502        ((uint8_t *) ipaddr)[6], ((uint8_t *) ipaddr)[7],
// 1503        ((uint8_t *) ipaddr)[8], ((uint8_t *) ipaddr)[9],
// 1504        ((uint8_t *) ipaddr)[10], ((uint8_t *) ipaddr)[11],
// 1505        ((uint8_t *) ipaddr)[12], ((uint8_t *) ipaddr)[13],
// 1506        ((uint8_t *) ipaddr)[14], ((uint8_t *) ipaddr)[15]);
// 1507   } else {
// 1508     PRINTF("resolver: Unable to retrieve address for \"%s\".\n", name);
// 1509   }
// 1510 #endif /* VERBOSE_DEBUG */
// 1511 
// 1512   process_post(PROCESS_BROADCAST, resolv_event_found, name);
// 1513 }
        POP      {R0,R1,R4-R8,PC}
??resolv_found_0:
        LDRB     R1,[R4, #+1]
        MOV      R2,R5
        MOVS     R0,#+0
          CFI FunCall process_post
        BL       process_post
??resolv_found_4:
        POP      {R0,R1,R4-R8,PC}  ;; return
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     uip_ds6_if+0x1A

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     seqno

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     seqno+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DC32     names

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DC32     ??aligned

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DC32     seqno+0x44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DC32     seqno+0x64

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DC32     tcpip_event

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_10:
        DC32     uip_udp_conn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_11:
        DC32     uip_flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_12:
        DC32     ??dns_name_without_dots

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_13:
        DC32     ??i_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_14:
        DC32     uip_lladdr+0x5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 ".local"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "contiki"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "-XX"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
resolv_mdns_addr:
        DC8 255, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 251

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??nsec_record:
        DC16 12032, 384, 0, 30720, 2048
        DC8 192, 12, 0, 4, 0, 0, 0, 8, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??local_suffix:
        DC8 "local"
        DC8 0, 0

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
        DC8 "DNS resolver"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "mDNS probe"
        DC8 0

        END
// 1514 /*---------------------------------------------------------------------------*/
// 1515 #endif /* UIP_UDP */
// 1516 
// 1517 /** @} */
// 1518 /** @} */
// 
//   330 bytes in section .bss
//   116 bytes in section .data
//    28 bytes in section .rodata
// 3 078 bytes in section .text
// 
// 3 078 bytes of CODE  memory
//    28 bytes of CONST memory
//   446 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
