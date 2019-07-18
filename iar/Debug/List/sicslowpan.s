///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:23
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\sicslowpan.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\sicslowpan.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\sicslowpan.s
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
        EXTERN __aeabi_memmove
        EXTERN framer_802154
        EXTERN linkaddr_cmp
        EXTERN linkaddr_copy
        EXTERN linkaddr_null
        EXTERN memcmp
        EXTERN nullsec_driver
        EXTERN packetbuf_addr
        EXTERN packetbuf_attr
        EXTERN packetbuf_clear
        EXTERN packetbuf_datalen
        EXTERN packetbuf_dataptr
        EXTERN packetbuf_set_addr
        EXTERN packetbuf_set_attr
        EXTERN packetbuf_set_datalen
        EXTERN queuebuf_free
        EXTERN queuebuf_new_from_packetbuf
        EXTERN queuebuf_numfree
        EXTERN queuebuf_to_packetbuf
        EXTERN tcpip_input
        EXTERN tcpip_set_outputfunc
        EXTERN timer_expired
        EXTERN timer_set
        EXTERN uip_aligned_buf
        EXTERN uip_ds6_link_neighbor_callback
        EXTERN uip_ds6_set_addr_iid
        EXTERN uip_len
        EXTERN uip_lladdr
        EXTERN watchdog_periodic

        PUBLIC frag_sender
        PUBLIC llprefix
        PUBLIC rime_sniffer_add
        PUBLIC rime_sniffer_remove
        PUBLIC sicslowpan_driver
        PUBLIC sicslowpan_get_last_rssi
        PUBLIC sicslowpan_init
        PUBLIC unc_ctxconf
        PUBLIC unc_llconf
        PUBLIC unc_mxconf
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\sicslowpan.c
//    1 /*
//    2  * Copyright (c) 2008, Swedish Institute of Computer Science.
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
//   33 /**
//   34  * \file
//   35  *         6lowpan implementation (RFC4944 and draft-ietf-6lowpan-hc-06)
//   36  *
//   37  * \author Adam Dunkels <adam@sics.se>
//   38  * \author Nicolas Tsiftes <nvt@sics.se>
//   39  * \author Niclas Finne <nfi@sics.se>
//   40  * \author Mathilde Durvy <mdurvy@cisco.com>
//   41  * \author Julien Abeille <jabeille@cisco.com>
//   42  * \author Joakim Eriksson <joakime@sics.se>
//   43  * \author Joel Hoglund <joel@sics.se>
//   44  */
//   45 
//   46 /**
//   47  * \addtogroup sicslowpan
//   48  * @{
//   49  */
//   50 
//   51 /**
//   52  * FOR HC-06 COMPLIANCE TODO:
//   53  * -Add compression options to UDP, currently only supports
//   54  *  both ports compressed or both ports elided
//   55  *  
//   56  * -Verify TC/FL compression works
//   57  *  
//   58  * -Add stateless multicast option
//   59  */
//   60 
//   61 #include <string.h>
//   62 
//   63 #include "contiki.h"
//   64 #include "dev/watchdog.h"
//   65 #include "net/ip/tcpip.h"
//   66 #include "net/ip/uip.h"
//   67 #include "net/ipv6/uip-ds6.h"
//   68 #include "net/rime/rime.h"
//   69 #include "net/ipv6/sicslowpan.h"
//   70 #include "net/netstack.h"
//   71 
//   72 #include <stdio.h>
//   73 
//   74 #define DEBUG DEBUG_NONE
//   75 #include "net/ip/uip-debug.h"
//   76 #if DEBUG
//   77 /* PRINTFI and PRINTFO are defined for input and output to debug one without changing the timing of the other */
//   78 uint8_t p;
//   79 #include <stdio.h>
//   80 #define PRINTFI(...) PRINTF(__VA_ARGS__)
//   81 #define PRINTFO(...) PRINTF(__VA_ARGS__)
//   82 #define PRINTPACKETBUF() PRINTF("packetbuf buffer: "); for(p = 0; p < packetbuf_datalen(); p++){PRINTF("%.2X", *(packetbuf_ptr + p));} PRINTF("\n")
//   83 #define PRINTUIPBUF() PRINTF("UIP buffer: "); for(p = 0; p < uip_len; p++){PRINTF("%.2X", uip_buf[p]);}PRINTF("\n")
//   84 #define PRINTSICSLOWPANBUF() PRINTF("SICSLOWPAN buffer: "); for(p = 0; p < sicslowpan_len; p++){PRINTF("%.2X", sicslowpan_buf[p]);}PRINTF("\n")
//   85 #else
//   86 #define PRINTFI(...)
//   87 #define PRINTFO(...)
//   88 #define PRINTPACKETBUF()
//   89 #define PRINTUIPBUF()
//   90 #define PRINTSICSLOWPANBUF()
//   91 #endif /* DEBUG == 1*/
//   92 
//   93 #if UIP_LOGGING
//   94 #include <stdio.h>
//   95 void uip_log(char *msg);
//   96 #define UIP_LOG(m) uip_log(m)
//   97 #else
//   98 #define UIP_LOG(m)
//   99 #endif /* UIP_LOGGING == 1 */
//  100 
//  101 #ifdef SICSLOWPAN_CONF_MAX_MAC_TRANSMISSIONS
//  102 #define SICSLOWPAN_MAX_MAC_TRANSMISSIONS SICSLOWPAN_CONF_MAX_MAC_TRANSMISSIONS
//  103 #else
//  104 #define SICSLOWPAN_MAX_MAC_TRANSMISSIONS 4
//  105 #endif
//  106 
//  107 #ifndef SICSLOWPAN_COMPRESSION
//  108 #ifdef SICSLOWPAN_CONF_COMPRESSION
//  109 #define SICSLOWPAN_COMPRESSION SICSLOWPAN_CONF_COMPRESSION
//  110 #else
//  111 #define SICSLOWPAN_COMPRESSION SICSLOWPAN_COMPRESSION_IPV6
//  112 #endif /* SICSLOWPAN_CONF_COMPRESSION */
//  113 #endif /* SICSLOWPAN_COMPRESSION */
//  114 
//  115 #define GET16(ptr,index) (((uint16_t)((ptr)[index] << 8)) | ((ptr)[(index) + 1]))
//  116 #define SET16(ptr,index,value) do {     \ 
//  117   (ptr)[index] = ((value) >> 8) & 0xff; \ 
//  118   (ptr)[index + 1] = (value) & 0xff;    \ 
//  119 } while(0)
//  120 
//  121 /** \name Pointers in the packetbuf buffer
//  122  *  @{
//  123  */
//  124 #define PACKETBUF_FRAG_PTR           (packetbuf_ptr)
//  125 #define PACKETBUF_FRAG_DISPATCH_SIZE 0   /* 16 bit */
//  126 #define PACKETBUF_FRAG_TAG           2   /* 16 bit */
//  127 #define PACKETBUF_FRAG_OFFSET        4   /* 8 bit */
//  128 
//  129 /* define the buffer as a byte array */
//  130 #define PACKETBUF_IPHC_BUF              ((uint8_t *)(packetbuf_ptr + packetbuf_hdr_len))
//  131 
//  132 #define PACKETBUF_HC1_PTR            (packetbuf_ptr + packetbuf_hdr_len)
//  133 #define PACKETBUF_HC1_DISPATCH       0 /* 8 bit */
//  134 #define PACKETBUF_HC1_ENCODING       1 /* 8 bit */
//  135 #define PACKETBUF_HC1_TTL            2 /* 8 bit */
//  136 
//  137 #define PACKETBUF_HC1_HC_UDP_PTR           (packetbuf_ptr + packetbuf_hdr_len)
//  138 #define PACKETBUF_HC1_HC_UDP_DISPATCH      0 /* 8 bit */
//  139 #define PACKETBUF_HC1_HC_UDP_HC1_ENCODING  1 /* 8 bit */
//  140 #define PACKETBUF_HC1_HC_UDP_UDP_ENCODING  2 /* 8 bit */
//  141 #define PACKETBUF_HC1_HC_UDP_TTL           3 /* 8 bit */
//  142 #define PACKETBUF_HC1_HC_UDP_PORTS         4 /* 8 bit */
//  143 #define PACKETBUF_HC1_HC_UDP_CHKSUM        5 /* 16 bit */
//  144 
//  145 /** \name Pointers in the sicslowpan and uip buffer
//  146  *  @{
//  147  */
//  148 #define SICSLOWPAN_IP_BUF   ((struct uip_ip_hdr *)&sicslowpan_buf[UIP_LLH_LEN])
//  149 #define SICSLOWPAN_UDP_BUF ((struct uip_udp_hdr *)&sicslowpan_buf[UIP_LLIPH_LEN])
//  150 
//  151 #define UIP_IP_BUF          ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
//  152 #define UIP_UDP_BUF          ((struct uip_udp_hdr *)&uip_buf[UIP_LLIPH_LEN])
//  153 #define UIP_TCP_BUF          ((struct uip_tcp_hdr *)&uip_buf[UIP_LLIPH_LEN])
//  154 #define UIP_ICMP_BUF          ((struct uip_icmp_hdr *)&uip_buf[UIP_LLIPH_LEN])
//  155 /** @} */
//  156 
//  157 
//  158 /** \brief Maximum available size for frame headers,
//  159            link layer security-related overhead, as well as
//  160            6LoWPAN payload. */
//  161 #ifdef SICSLOWPAN_CONF_MAC_MAX_PAYLOAD
//  162 #define MAC_MAX_PAYLOAD SICSLOWPAN_CONF_MAC_MAX_PAYLOAD
//  163 #else /* SICSLOWPAN_CONF_MAC_MAX_PAYLOAD */
//  164 #define MAC_MAX_PAYLOAD (127 - 2)
//  165 #endif /* SICSLOWPAN_CONF_MAC_MAX_PAYLOAD */
//  166 
//  167 
//  168 /** \brief Some MAC layers need a minimum payload, which is
//  169     configurable through the SICSLOWPAN_CONF_MIN_MAC_PAYLOAD
//  170     option. */
//  171 #ifdef SICSLOWPAN_CONF_COMPRESSION_THRESHOLD
//  172 #define COMPRESSION_THRESHOLD SICSLOWPAN_CONF_COMPRESSION_THRESHOLD
//  173 #else
//  174 #define COMPRESSION_THRESHOLD 0
//  175 #endif
//  176 
//  177 /** \name General variables
//  178  *  @{
//  179  */
//  180 #ifdef SICSLOWPAN_NH_COMPRESSOR
//  181 /** A pointer to the additional compressor */
//  182 extern struct sicslowpan_nh_compressor SICSLOWPAN_NH_COMPRESSOR;
//  183 #endif
//  184 
//  185 /**
//  186  * A pointer to the packetbuf buffer.
//  187  * We initialize it to the beginning of the packetbuf buffer, then
//  188  * access different fields by updating the offset packetbuf_hdr_len.
//  189  */
//  190 static uint8_t *packetbuf_ptr;
//  191 
//  192 /**
//  193  * packetbuf_hdr_len is the total length of (the processed) 6lowpan headers
//  194  * (fragment headers, IPV6 or HC1, HC2, and HC1 and HC2 non compressed
//  195  * fields).
//  196  */
//  197 static uint8_t packetbuf_hdr_len;
//  198 
//  199 /**
//  200  * The length of the payload in the Packetbuf buffer.
//  201  * The payload is what comes after the compressed or uncompressed
//  202  * headers (can be the IP payload if the IP header only is compressed
//  203  * or the UDP payload if the UDP header is also compressed)
//  204  */
//  205 static int packetbuf_payload_len;
//  206 
//  207 /**
//  208  * uncomp_hdr_len is the length of the headers before compression (if HC2
//  209  * is used this includes the UDP header in addition to the IP header).
//  210  */
//  211 static uint8_t uncomp_hdr_len;
//  212 
//  213 /**
//  214  * the result of the last transmitted fragment
//  215  */
//  216 static int last_tx_status;
//  217 /** @} */
//  218 
//  219 #if SICSLOWPAN_CONF_FRAG
//  220 /** \name Fragmentation related variables
//  221  *  @{
//  222  */
//  223 
//  224 static uint16_t sicslowpan_len;
//  225 
//  226 /**
//  227  * The buffer used for the 6lowpan reassembly.
//  228  * This buffer contains only the IPv6 packet (no MAC header, 6lowpan, etc).
//  229  * It has a fix size as we do not use dynamic memory allocation.
//  230  */
//  231 static uip_buf_t sicslowpan_aligned_buf;
//  232 #define sicslowpan_buf (sicslowpan_aligned_buf.u8)
//  233 
//  234 /** The total length of the IPv6 packet in the sicslowpan_buf. */
//  235 
//  236 /**
//  237  * length of the ip packet already sent / received.
//  238  * It includes IP and transport headers.
//  239  */
//  240 static uint16_t processed_ip_in_len;
//  241 
//  242 /** Datagram tag to be put in the fragments I send. */
//  243 static uint16_t my_tag;
//  244 
//  245 /** When reassembling, the tag in the fragments being merged. */
//  246 static uint16_t reass_tag;
//  247 
//  248 /** When reassembling, the source address of the fragments being merged */
//  249 linkaddr_t frag_sender;
//  250 
//  251 /** Reassembly %process %timer. */
//  252 static struct timer reass_timer;
//  253 
//  254 /** @} */
//  255 #else /* SICSLOWPAN_CONF_FRAG */
//  256 /** The buffer used for the 6lowpan processing is uip_buf.
//  257     We do not use any additional buffer.*/
//  258 #define sicslowpan_buf uip_buf
//  259 #define sicslowpan_len uip_len
//  260 #endif /* SICSLOWPAN_CONF_FRAG */
//  261 
//  262 static int last_rssi;
//  263 
//  264 /*-------------------------------------------------------------------------*/
//  265 /* Rime Sniffer support for one single listener to enable powertrace of IP */
//  266 /*-------------------------------------------------------------------------*/
//  267 static struct rime_sniffer *callback = NULL;
//  268 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function rime_sniffer_add
          CFI NoCalls
        THUMB
//  269 void
//  270 rime_sniffer_add(struct rime_sniffer *s)
//  271 {
//  272   callback = s;
rime_sniffer_add:
        LDR.W    R1,??DataTable16
        STR      R0,[R1, #+28]
//  273 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  274 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function rime_sniffer_remove
          CFI NoCalls
        THUMB
//  275 void
//  276 rime_sniffer_remove(struct rime_sniffer *s)
//  277 {
//  278   callback = NULL;
rime_sniffer_remove:
        LDR.W    R1,??DataTable16
        MOVS     R0,#+0
        STR      R0,[R1, #+28]
//  279 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  280 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function set_packet_attrs
        THUMB
//  281 static void
//  282 set_packet_attrs()
//  283 {
set_packet_attrs:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  284   int c = 0;
//  285   /* set protocol in NETWORK_ID */
//  286   packetbuf_set_attr(PACKETBUF_ATTR_NETWORK_ID, UIP_IP_BUF->proto);
        LDR.W    R5,??DataTable16_1
        LDRB     R1,[R5, #+6]
        MOVS     R4,#+0
        MOVS     R0,#+2
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
        LDRB     R0,[R5, #+6]
        CMP      R0,#+17
        IT       NE 
        CMPNE    R0,#+6
//  287 
//  288   /* assign values to the channel attribute (port or type + code) */
//  289   if(UIP_IP_BUF->proto == UIP_PROTO_UDP) {
//  290     c = UIP_UDP_BUF->srcport;
//  291     if(UIP_UDP_BUF->destport < c) {
//  292       c = UIP_UDP_BUF->destport;
//  293     }
//  294   } else if(UIP_IP_BUF->proto == UIP_PROTO_TCP) {
        BNE.N    ??set_packet_attrs_0
//  295     c = UIP_TCP_BUF->srcport;
        LDRH     R4,[R5, #+40]
//  296     if(UIP_TCP_BUF->destport < c) {
        LDRH     R0,[R5, #+42]
        CMP      R0,R4
        BGE.N    ??set_packet_attrs_1
//  297       c = UIP_TCP_BUF->destport;
        MOV      R4,R0
        B.N      ??set_packet_attrs_1
//  298     }
//  299   } else if(UIP_IP_BUF->proto == UIP_PROTO_ICMP6) {
??set_packet_attrs_0:
        CMP      R0,#+58
        BNE.N    ??set_packet_attrs_1
//  300     c = UIP_ICMP_BUF->type << 8 | UIP_ICMP_BUF->icode;
        LDRB     R0,[R5, #+40]
        LDRB     R1,[R5, #+41]
        ORR      R4,R1,R0, LSL #+8
//  301   }
//  302 
//  303   packetbuf_set_attr(PACKETBUF_ATTR_CHANNEL, c);
??set_packet_attrs_1:
        MOV      R1,R4
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R0,#+1
          CFI FunCall packetbuf_set_attr
        B.W      packetbuf_set_attr
          CFI EndBlock cfiBlock2
//  304 
//  305 /*   if(uip_ds6_is_my_addr(&UIP_IP_BUF->srcipaddr)) { */
//  306 /*     own = 1; */
//  307 /*   } */
//  308 
//  309 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
packetbuf_hdr_len:
        DS8 1
        DS8 1
        DS8 2
        DS8 2
        DS8 2
        DS8 2
        DS8 2
        DS8 4
        DS8 4
        DS8 4
        DS8 4
        DS8 4
        DS8 4
        DS8 4
frag_sender:
        DS8 8
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
sicslowpan_aligned_buf:
        DS8 1516
//  310 
//  311 
//  312 
//  313 #if SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC06
//  314 /** \name HC06 specific variables
//  315  *  @{
//  316  */
//  317 
//  318 /** Addresses contexts for IPHC. */
//  319 #if SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS > 0
//  320 static struct sicslowpan_addr_context 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  321 addr_contexts[SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS];
addr_contexts:
        DS8 12
//  322 #endif
//  323 
//  324 /** pointer to an address context. */
//  325 static struct sicslowpan_addr_context *context;
//  326 
//  327 /** pointer to the byte where to write next inline field. */
//  328 static uint8_t *hc06_ptr;
//  329 
//  330 /* Uncompression of linklocal */
//  331 /*   0 -> 16 bytes from packet  */
//  332 /*   1 -> 2 bytes from prefix - bunch of zeroes and 8 from packet */
//  333 /*   2 -> 2 bytes from prefix - 0000::00ff:fe00:XXXX from packet */
//  334 /*   3 -> 2 bytes from prefix - infer 8 bytes from lladdr */
//  335 /*   NOTE: => the uncompress function does change 0xf to 0x10 */
//  336 /*   NOTE: 0x00 => no-autoconfig => unspecified */
//  337 const uint8_t unc_llconf[] = {0x0f,0x28,0x22,0x20};
//  338 
//  339 /* Uncompression of ctx-based */
//  340 /*   0 -> 0 bits from packet [unspecified / reserved] */
//  341 /*   1 -> 8 bytes from prefix - bunch of zeroes and 8 from packet */
//  342 /*   2 -> 8 bytes from prefix - 0000::00ff:fe00:XXXX + 2 from packet */
//  343 /*   3 -> 8 bytes from prefix - infer 8 bytes from lladdr */
//  344 const uint8_t unc_ctxconf[] = {0x00,0x88,0x82,0x80};
//  345 
//  346 /* Uncompression of ctx-based */
//  347 /*   0 -> 0 bits from packet  */
//  348 /*   1 -> 2 bytes from prefix - bunch of zeroes 5 from packet */
//  349 /*   2 -> 2 bytes from prefix - zeroes + 3 from packet */
//  350 /*   3 -> 2 bytes from prefix - infer 1 bytes from lladdr */
//  351 const uint8_t unc_mxconf[] = {0x0f, 0x25, 0x23, 0x21};
//  352 
//  353 /* Link local prefix */
//  354 const uint8_t llprefix[] = {0xfe, 0x80};
//  355 
//  356 /* TTL uncompression values */
//  357 static const uint8_t ttl_values[] = {0, 1, 64, 255};
//  358 
//  359 /*--------------------------------------------------------------------*/
//  360 /** \name HC06 related functions
//  361  * @{                                                                 */
//  362 /*--------------------------------------------------------------------*/
//  363 /** \brief find the context corresponding to prefix ipaddr */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function addr_context_lookup_by_prefix
        THUMB
//  364 static struct sicslowpan_addr_context*
//  365 addr_context_lookup_by_prefix(uip_ipaddr_t *ipaddr)
//  366 {
addr_context_lookup_by_prefix:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  367 /* Remove code to avoid warnings and save flash if no context is used */
//  368 #if SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS > 0
//  369   int i;
//  370   for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
        LDR.W    R4,??DataTable18
//  371     if((addr_contexts[i].used == 1) &&
//  372        uip_ipaddr_prefixcmp(&addr_contexts[i].prefix, ipaddr, 64)) {
        LDRB     R1,[R4, #+0]
        CMP      R1,#+1
        BNE.N    ??addr_context_lookup_by_prefix_0
        MOV      R1,R0
        MOVS     R2,#+8
        ADDS     R0,R4,#+2
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??addr_context_lookup_by_prefix_0
//  373       return &addr_contexts[i];
        MOV      R0,R4
        POP      {R4,PC}
//  374     }
//  375   }
//  376 #endif /* SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS > 0 */
//  377   return NULL;
??addr_context_lookup_by_prefix_0:
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  378 }
//  379 /*--------------------------------------------------------------------*/
//  380 /** \brief find the context with the given number */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function addr_context_lookup_by_number
          CFI NoCalls
        THUMB
//  381 static struct sicslowpan_addr_context*
//  382 addr_context_lookup_by_number(uint8_t number)
//  383 {
//  384 /* Remove code to avoid warnings and save flash if no context is used */ 
//  385 #if SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS > 0
//  386   int i;
//  387   for(i = 0; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
addr_context_lookup_by_number:
        LDR.W    R1,??DataTable18
//  388     if((addr_contexts[i].used == 1) &&
//  389        addr_contexts[i].number == number) {
        LDRB     R2,[R1, #+0]
        CMP      R2,#+1
        ITT      EQ 
        LDRBEQ   R2,[R1, #+1]
        CMPEQ    R2,R0
        BNE.N    ??addr_context_lookup_by_number_0
//  390       return &addr_contexts[i];
        MOV      R0,R1
        BX       LR
//  391     }
//  392   }
//  393 #endif /* SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS > 0 */
//  394   return NULL;
??addr_context_lookup_by_number_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  395 }
//  396 /*--------------------------------------------------------------------*/
//  397 static uint8_t
//  398 compress_addr_64(uint8_t bitpos, uip_ipaddr_t *ipaddr, uip_lladdr_t *lladdr)
//  399 {
//  400   if(uip_is_addr_mac_addr_based(ipaddr, lladdr)) {
//  401     return 3 << bitpos; /* 0-bits */
//  402   } else if(sicslowpan_is_iid_16_bit_compressable(ipaddr)) {
//  403     /* compress IID to 16 bits xxxx::0000:00ff:fe00:XXXX */
//  404     memcpy(hc06_ptr, &ipaddr->u16[7], 2);
//  405     hc06_ptr += 2;
//  406     return 2 << bitpos; /* 16-bits */
//  407   } else {
//  408     /* do not compress IID => xxxx::IID */
//  409     memcpy(hc06_ptr, &ipaddr->u16[4], 8);
//  410     hc06_ptr += 8;
//  411     return 1 << bitpos; /* 64-bits */
//  412   }
//  413 }
//  414 
//  415 /*-------------------------------------------------------------------- */
//  416 /* Uncompress addresses based on a prefix and a postfix with zeroes in
//  417  * between. If the postfix is zero in length it will use the link address
//  418  * to configure the IP address (autoconf style).
//  419  * pref_post_count takes a byte where the first nibble specify prefix count
//  420  * and the second postfix count (NOTE: 15/0xf => 16 bytes copy).
//  421  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function uncompress_addr
        THUMB
//  422 static void
//  423 uncompress_addr(uip_ipaddr_t *ipaddr, uint8_t const prefix[],
//  424                 uint8_t pref_post_count, uip_lladdr_t *lladdr)
//  425 {
uncompress_addr:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  426   uint8_t prefcount = pref_post_count >> 4;
        LSRS     R7,R2,#+4
//  427   uint8_t postcount = pref_post_count & 0x0f;
//  428   /* full nibble 15 => 16 */
//  429   prefcount = prefcount == 15 ? 16 : prefcount;
        CMP      R7,#+15
        AND      R5,R2,#0xF
        IT       EQ 
        MOVEQ    R7,#+16
//  430   postcount = postcount == 15 ? 16 : postcount;
        CMP      R5,#+15
        MOV      R4,R0
        MOV      R6,R3
        IT       EQ 
        MOVEQ    R5,#+16
//  431 
//  432   PRINTF("Uncompressing %d + %d => ", prefcount, postcount);
//  433 
//  434   if(prefcount > 0) {
        CBZ.N    R7,??uncompress_addr_0
//  435     memcpy(ipaddr, prefix, prefcount);
        MOV      R2,R7
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  436   }
//  437   if(prefcount + postcount < 16) {
??uncompress_addr_0:
        ADDS     R0,R5,R7
        CMP      R0,#+16
        BGE.N    ??uncompress_addr_1
//  438     memset(&ipaddr->u8[prefcount], 0, 16 - (prefcount + postcount));
        RSB      R0,R7,#+16
        SUBS     R1,R0,R5
        ADDS     R0,R7,R4
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  439   }
//  440   if(postcount > 0) {
??uncompress_addr_1:
        CBZ.N    R5,??uncompress_addr_2
//  441     memcpy(&ipaddr->u8[16 - postcount], hc06_ptr, postcount);
        LDR.W    R6,??DataTable19
        LDR      R1,[R6, #+36]
        SUBS     R0,R4,R5
        MOV      R2,R5
        ADDS     R0,R0,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  442     if(postcount == 2 && prefcount < 11) {
        CMP      R5,#+2
        BNE.N    ??uncompress_addr_3
        CMP      R7,#+11
        BGE.N    ??uncompress_addr_3
//  443       /* 16 bits uncompression => 0000:00ff:fe00:XXXX */
//  444       ipaddr->u8[11] = 0xff;
        MOVS     R0,#+255
        STRB     R0,[R4, #+11]
//  445       ipaddr->u8[12] = 0xfe;
        MOVS     R0,#+254
        STRB     R0,[R4, #+12]
//  446     }
//  447     hc06_ptr += postcount;
??uncompress_addr_3:
        LDR      R0,[R6, #+36]
        ADDS     R0,R5,R0
        STR      R0,[R6, #+36]
        POP      {R0,R4-R7,PC}
//  448   } else if (prefcount > 0) {
??uncompress_addr_2:
        CBZ.N    R7,??uncompress_addr_4
//  449     /* no IID based configuration if no prefix and no data => unspec */
//  450     uip_ds6_set_addr_iid(ipaddr, lladdr);
        MOV      R1,R6
        MOV      R0,R4
        POP      {R2,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uip_ds6_set_addr_iid
        B.W      uip_ds6_set_addr_iid
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  451   }
//  452 
//  453   PRINT6ADDR(ipaddr);
//  454   PRINTF("\n");
//  455 }
??uncompress_addr_4:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock5
//  456 
//  457 /*--------------------------------------------------------------------*/
//  458 /**
//  459  * \brief Compress IP/UDP header
//  460  *
//  461  * This function is called by the 6lowpan code to create a compressed
//  462  * 6lowpan packet in the packetbuf buffer from a full IPv6 packet in the
//  463  * uip_buf buffer.
//  464  *
//  465  *
//  466  * HC-06 (draft-ietf-6lowpan-hc, version 6)\n
//  467  * http://tools.ietf.org/html/draft-ietf-6lowpan-hc-06
//  468  *
//  469  * \note We do not support ISA100_UDP header compression
//  470  *
//  471  * For LOWPAN_UDP compression, we either compress both ports or none.
//  472  * General format with LOWPAN_UDP compression is
//  473  * \verbatim
//  474  *                      1                   2                   3
//  475  *  0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
//  476  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//  477  * |0|1|1|TF |N|HLI|C|S|SAM|M|D|DAM| SCI   | DCI   | comp. IPv6 hdr|
//  478  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//  479  * | compressed IPv6 fields .....                                  |
//  480  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//  481  * | LOWPAN_UDP    | non compressed UDP fields ...                 |
//  482  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//  483  * | L4 data ...                                                   |
//  484  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//  485  * \endverbatim
//  486  * \note The context number 00 is reserved for the link local prefix.
//  487  * For unicast addresses, if we cannot compress the prefix, we neither
//  488  * compress the IID.
//  489  * \param link_destaddr L2 destination address, needed to compress IP
//  490  * dest
//  491  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function compress_hdr_hc06
        THUMB
//  492 static void
//  493 compress_hdr_hc06(linkaddr_t *link_destaddr)
//  494 {
compress_hdr_hc06:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
//  495   uint8_t tmp, iphc0, iphc1;
//  496 #if DEBUG
//  497   { uint16_t ndx;
//  498     PRINTF("before compression (%d): ", UIP_IP_BUF->len[1]);
//  499     for(ndx = 0; ndx < UIP_IP_BUF->len[1] + 40; ndx++) {
//  500       uint8_t data = ((uint8_t *) (UIP_IP_BUF))[ndx];
//  501       PRINTF("%02x", data);
//  502     }
//  503     PRINTF("\n");
//  504   }
//  505 #endif
//  506 
//  507   hc06_ptr = packetbuf_ptr + 2;
        LDR.W    R5,??DataTable16
//  508   /*
//  509    * As we copy some bit-length fields, in the IPHC encoding bytes,
//  510    * we sometimes use |=
//  511    * If the field is 0, and the current bit value in memory is 1,
//  512    * this does not work. We therefore reset the IPHC encoding here
//  513    */
//  514 
//  515   iphc0 = SICSLOWPAN_DISPATCH_IPHC;
//  516   iphc1 = 0;
//  517   PACKETBUF_IPHC_BUF[2] = 0; /* might not be used - but needs to be cleared */
//  518 
//  519   /*
//  520    * Address handling needs to be made first since it might
//  521    * cause an extra byte with [ SCI | DCI ]
//  522    *
//  523    */
//  524 
//  525 
//  526   /* check if dest context exists (for allocating third byte) */
//  527   /* TODO: fix this so that it remembers the looked up values for
//  528      avoiding two lookups - or set the lookup values immediately */
//  529   if(addr_context_lookup_by_prefix(&UIP_IP_BUF->destipaddr) != NULL ||
//  530      addr_context_lookup_by_prefix(&UIP_IP_BUF->srcipaddr) != NULL) {
        LDR.W    R7,??DataTable16_1
        LDRB     R2,[R5, #+0]
        MOV      R6,R0
        LDR      R0,[R5, #+12]
        ADDS     R1,R0,#+2
        ADDS     R0,R2,R0
        STR      R1,[R5, #+36]
        MOVS     R4,#+0
        STRB     R4,[R0, #+2]
        MOV      R8,#+96
        ADD      R0,R7,#+24
          CFI FunCall addr_context_lookup_by_prefix
        BL       addr_context_lookup_by_prefix
        CBNZ.N   R0,??compress_hdr_hc06_0
        ADD      R0,R7,#+8
          CFI FunCall addr_context_lookup_by_prefix
        BL       addr_context_lookup_by_prefix
        CBZ.N    R0,??compress_hdr_hc06_1
//  531     /* set context flag and increase hc06_ptr */
//  532     PRINTF("IPHC: compressing dest or src ipaddr - setting CID\n");
//  533     iphc1 |= SICSLOWPAN_IPHC_CID;
//  534     hc06_ptr++;
??compress_hdr_hc06_0:
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+1
        MOVS     R4,#+128
        STR      R0,[R5, #+36]
//  535   }
//  536 
//  537   /*
//  538    * Traffic class, flow label
//  539    * If flow label is 0, compress it. If traffic class is 0, compress it
//  540    * We have to process both in the same time as the offset of traffic class
//  541    * depends on the presence of version and flow label
//  542    */
//  543  
//  544   /* hc06 format of tc is ECN | DSCP , original is DSCP | ECN */
//  545   tmp = (UIP_IP_BUF->vtc << 4) | (UIP_IP_BUF->tcflow >> 4);
??compress_hdr_hc06_1:
        LDRB     R1,[R7, #+1]
        LDRB     R2,[R7, #+0]
        LSRS     R0,R1,#+4
        ORR      R0,R0,R2, LSL #+4
//  546   tmp = ((tmp & 0x03) << 6) | (tmp >> 2);
        UXTB     R0,R0
        LSRS     R3,R0,#+2
        ORR      R9,R3,R0, LSL #+6
//  547   
//  548   if(((UIP_IP_BUF->tcflow & 0x0F) == 0) &&
//  549      (UIP_IP_BUF->flow == 0)) {
        MOVS     R3,#+15
        TST      R1,R3
        ITT      EQ 
        LDRHEQ   R0,[R7, #+2]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_2
//  550     /* flow label can be compressed */
//  551     iphc0 |= SICSLOWPAN_IPHC_FL_C;
        MOV      R8,#+112
//  552     if(((UIP_IP_BUF->vtc & 0x0F) == 0) &&
//  553        ((UIP_IP_BUF->tcflow & 0xF0) == 0)) {
        TST      R2,R3
        ITTT     EQ 
        MOVEQ    R0,#+240
        TSTEQ    R1,R0
        MOVEQ    R8,#+120
//  554       /* compress (elide) all */
//  555       iphc0 |= SICSLOWPAN_IPHC_TC_C;
        BEQ.N    ??compress_hdr_hc06_3
//  556     } else {
//  557       /* compress only the flow label */
//  558      *hc06_ptr = tmp;
        LDR      R0,[R5, #+36]
        STRB     R9,[R0], #+1
//  559       hc06_ptr += 1;
        B.N      ??compress_hdr_hc06_4
//  560     }
//  561   } else {
//  562     /* Flow label cannot be compressed */
//  563     if(((UIP_IP_BUF->vtc & 0x0F) == 0) &&
//  564        ((UIP_IP_BUF->tcflow & 0xF0) == 0)) {
??compress_hdr_hc06_2:
        TST      R2,R3
        ITT      EQ 
        MOVEQ    R2,#+240
        TSTEQ    R1,R2
        BNE.N    ??compress_hdr_hc06_5
//  565       /* compress only traffic class */
//  566       iphc0 |= SICSLOWPAN_IPHC_TC_C;
//  567       *hc06_ptr = (tmp & 0xc0) |
//  568         (UIP_IP_BUF->tcflow & 0x0F);
        LDR      R0,[R5, #+36]
        AND      R2,R9,#0xC0
        AND      R1,R1,#0xF
        ORRS     R1,R1,R2
        STRB     R1,[R0], #+1
        MOV      R8,#+104
//  569       memcpy(hc06_ptr + 1, &UIP_IP_BUF->flow, 2);
        ADDS     R1,R7,#+2
        LDRB     R2,[R1, #0]
        STRB     R2,[R0, #+0]
        LDRB     R2,[R1, #+1]
        STRB     R2,[R0, #+1]
//  570       hc06_ptr += 3;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+3
        B.N      ??compress_hdr_hc06_4
//  571     } else {
//  572       /* compress nothing */
//  573       memcpy(hc06_ptr, &UIP_IP_BUF->vtc, 4);
??compress_hdr_hc06_5:
        LDR      R0,[R5, #+36]
        MOVS     R2,#+4
        MOV      R1,R7
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  574       /* but replace the top byte with the new ECN | DSCP format*/
//  575       *hc06_ptr = tmp;
        LDR      R0,[R5, #+36]
        STRB     R9,[R0], #+4
//  576       hc06_ptr += 4;
??compress_hdr_hc06_4:
        STR      R0,[R5, #+36]
//  577    }
//  578   }
//  579 
//  580   /* Note that the payload length is always compressed */
//  581 
//  582   /* Next header. We compress it if UDP */
//  583 #if UIP_CONF_UDP || UIP_CONF_ROUTER
//  584   if(UIP_IP_BUF->proto == UIP_PROTO_UDP) {
??compress_hdr_hc06_3:
        LDRB     R0,[R7, #+6]
//  585     iphc0 |= SICSLOWPAN_IPHC_NH_C;
//  586   }
//  587 #endif /*UIP_CONF_UDP*/
//  588 #ifdef SICSLOWPAN_NH_COMPRESSOR 
//  589   if(SICSLOWPAN_NH_COMPRESSOR.is_compressable(UIP_IP_BUF->proto)) {
//  590     iphc0 |= SICSLOWPAN_IPHC_NH_C;
//  591   }
//  592 #endif
//  593   if ((iphc0 & SICSLOWPAN_IPHC_NH_C) == 0) {
        LDR      R1,[R5, #+36]
        CMP      R0,#+17
        IT       EQ 
        ORREQ    R8,R8,#0x4
        LSLS     R2,R8,#+29
        IT       PL 
        STRBPL   R0,[R1], #+1
//  594     *hc06_ptr = UIP_IP_BUF->proto;
//  595     hc06_ptr += 1;
//  596   }
//  597 
//  598   /*
//  599    * Hop limit
//  600    * if 1: compress, encoding is 01
//  601    * if 64: compress, encoding is 10
//  602    * if 255: compress, encoding is 11
//  603    * else do not compress
//  604    */
//  605   switch(UIP_IP_BUF->ttl) {
        LDRB     R0,[R7, #+7]
        CMP      R0,#+1
        BEQ.N    ??compress_hdr_hc06_6
        CMP      R0,#+64
        BEQ.N    ??compress_hdr_hc06_7
        CMP      R0,#+255
        BEQ.N    ??compress_hdr_hc06_8
        B.N      ??compress_hdr_hc06_9
//  606     case 1:
//  607       iphc0 |= SICSLOWPAN_IPHC_TTL_1;
??compress_hdr_hc06_6:
        ORR      R8,R8,#0x1
//  608       break;
        B.N      ??compress_hdr_hc06_10
//  609     case 64:
//  610       iphc0 |= SICSLOWPAN_IPHC_TTL_64;
??compress_hdr_hc06_7:
        ORR      R8,R8,#0x2
//  611       break;
        B.N      ??compress_hdr_hc06_10
//  612     case 255:
//  613       iphc0 |= SICSLOWPAN_IPHC_TTL_255;
??compress_hdr_hc06_8:
        ORR      R8,R8,#0x3
//  614       break;
        B.N      ??compress_hdr_hc06_10
//  615     default:
//  616       *hc06_ptr = UIP_IP_BUF->ttl;
??compress_hdr_hc06_9:
        STRB     R0,[R1], #+1
//  617       hc06_ptr += 1;
//  618       break;
//  619   }
//  620 
//  621   /* source address - cannot be multicast */
//  622   if(uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)) {
??compress_hdr_hc06_10:
        LDRH     R0,[R7, #+8]
        STR      R1,[R5, #+36]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R7, #+10]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_11
        LDRH     R0,[R7, #+12]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R7, #+14]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_11
        LDRH     R0,[R7, #+16]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R7, #+18]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_11
        LDRH     R0,[R7, #+20]
        CMP      R0,#+0
        ITTT     EQ 
        LDRHEQ   R0,[R7, #+22]
        CMPEQ    R0,#+0
        ORREQ    R4,R4,#0x40
//  623     PRINTF("IPHC: compressing unspecified - setting SAC\n");
//  624     iphc1 |= SICSLOWPAN_IPHC_SAC;
//  625     iphc1 |= SICSLOWPAN_IPHC_SAM_00;
        BEQ.W    ??compress_hdr_hc06_12
//  626   } else if((context = addr_context_lookup_by_prefix(&UIP_IP_BUF->srcipaddr))
//  627      != NULL) {
??compress_hdr_hc06_11:
        ADD      R0,R7,#+8
          CFI FunCall addr_context_lookup_by_prefix
        BL       addr_context_lookup_by_prefix
        CMP      R0,#+0
        STR      R0,[R5, #+32]
        BEQ.N    ??compress_hdr_hc06_13
//  628     /* elide the prefix - indicate by CID and set context + SAC */
//  629     PRINTF("IPHC: compressing src with context - setting CID & SAC ctx: %d\n",
//  630 	   context->number);
//  631     iphc1 |= SICSLOWPAN_IPHC_CID | SICSLOWPAN_IPHC_SAC;
//  632     PACKETBUF_IPHC_BUF[2] |= context->number << 4;
        LDR      R1,[R5, #+12]
        LDRB     R2,[R5, #+0]
        LDRB     R0,[R0, #+1]
        ADDS     R1,R2,R1
        LDRB     R2,[R1, #+2]
        ORR      R0,R2,R0, LSL #+4
        STRB     R0,[R1, #+2]
//  633     /* compession compare with this nodes address (source) */
//  634 
//  635     iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_SAM_BIT,
//  636                               &UIP_IP_BUF->srcipaddr, &uip_lladdr);
        LDR.W    R0,??DataTable19_1
        LDRB     R1,[R7, #+16]
        LDRB     R2,[R0, #+0]
        EOR      R2,R2,#0x2
        CMP      R1,R2
        ITTT     EQ 
        LDRBEQ   R1,[R7, #+17]
        LDRBEQ   R2,[R0, #+1]
        CMPEQ    R1,R2
        BNE.N    ??compress_hdr_hc06_14
        LDRB     R1,[R7, #+18]
        LDRB     R2,[R0, #+2]
        CMP      R1,R2
        ITTT     EQ 
        LDRBEQ   R1,[R7, #+19]
        LDRBEQ   R2,[R0, #+3]
        CMPEQ    R1,R2
        BNE.N    ??compress_hdr_hc06_14
        LDRB     R1,[R7, #+20]
        LDRB     R2,[R0, #+4]
        CMP      R1,R2
        ITTT     EQ 
        LDRBEQ   R1,[R7, #+21]
        LDRBEQ   R2,[R0, #+5]
        CMPEQ    R1,R2
        BNE.N    ??compress_hdr_hc06_14
        LDRB     R1,[R7, #+22]
        LDRB     R2,[R0, #+6]
        CMP      R1,R2
        ITTTT    EQ 
        LDRBEQ   R1,[R7, #+23]
        LDRBEQ   R0,[R0, #+7]
        CMPEQ    R1,R0
        MOVEQ    R0,#+48
        BEQ.N    ??compress_hdr_hc06_15
??compress_hdr_hc06_14:
        LDRH     R0,[R7, #+16]
        CMP      R0,#+0
        ITT      EQ 
        LDRBEQ   R0,[R7, #+18]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_16
        LDRB     R0,[R7, #+19]
        CMP      R0,#+255
        ITT      EQ 
        LDRBEQ   R0,[R7, #+20]
        CMPEQ    R0,#+254
        BNE.N    ??compress_hdr_hc06_16
        LDRB     R0,[R7, #+21]
        CBNZ.N   R0,??compress_hdr_hc06_16
        ADD      R0,R7,#+22
        LDR      R1,[R5, #+36]
        LDRB     R2,[R0, #0]
        STRB     R2,[R1, #+0]
        LDRB     R2,[R0, #+1]
        STRB     R2,[R1, #+1]
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+2
        STR      R0,[R5, #+36]
        MOVS     R0,#+32
        B.N      ??compress_hdr_hc06_15
??compress_hdr_hc06_16:
        LDR      R0,[R5, #+36]
        MOVS     R2,#+8
        ADD      R1,R7,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+8
        STR      R0,[R5, #+36]
        MOVS     R0,#+16
//  637     /* No context found for this address */
//  638   } else if(uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr) &&
??compress_hdr_hc06_15:
        ORR      R4,R0,#0xC0
        B.N      ??compress_hdr_hc06_12
//  639 	    UIP_IP_BUF->destipaddr.u16[1] == 0 &&
//  640 	    UIP_IP_BUF->destipaddr.u16[2] == 0 &&
//  641 	    UIP_IP_BUF->destipaddr.u16[3] == 0) {
??compress_hdr_hc06_13:
        LDRB     R0,[R7, #+8]
        CMP      R0,#+254
        ITT      EQ 
        LDRBEQ   R0,[R7, #+9]
        CMPEQ    R0,#+128
        BNE.N    ??compress_hdr_hc06_17
        LDRH     R0,[R7, #+26]
        CMP      R0,#+0
        ITTTT    EQ 
        LDRHEQ   R0,[R7, #+28]
        CMPEQ    R0,#+0
        LDRHEQ   R0,[R7, #+30]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_17
//  642     iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_SAM_BIT,
//  643                               &UIP_IP_BUF->srcipaddr, &uip_lladdr);
        LDR.W    R0,??DataTable19_1
        LDRB     R1,[R7, #+16]
        LDRB     R2,[R0, #+0]
        EOR      R2,R2,#0x2
        CMP      R1,R2
        ITTT     EQ 
        LDRBEQ   R1,[R7, #+17]
        LDRBEQ   R2,[R0, #+1]
        CMPEQ    R1,R2
        BNE.N    ??compress_hdr_hc06_18
        LDRB     R1,[R7, #+18]
        LDRB     R2,[R0, #+2]
        CMP      R1,R2
        ITTT     EQ 
        LDRBEQ   R1,[R7, #+19]
        LDRBEQ   R2,[R0, #+3]
        CMPEQ    R1,R2
        BNE.N    ??compress_hdr_hc06_18
        LDRB     R1,[R7, #+20]
        LDRB     R2,[R0, #+4]
        CMP      R1,R2
        ITTT     EQ 
        LDRBEQ   R1,[R7, #+21]
        LDRBEQ   R2,[R0, #+5]
        CMPEQ    R1,R2
        BNE.N    ??compress_hdr_hc06_18
        LDRB     R1,[R7, #+22]
        LDRB     R2,[R0, #+6]
        CMP      R1,R2
        ITTTT    EQ 
        LDRBEQ   R1,[R7, #+23]
        LDRBEQ   R0,[R0, #+7]
        CMPEQ    R1,R0
        MOVEQ    R0,#+48
        BEQ.N    ??compress_hdr_hc06_19
??compress_hdr_hc06_18:
        LDRH     R0,[R7, #+16]
        CMP      R0,#+0
        ITT      EQ 
        LDRBEQ   R0,[R7, #+18]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_20
        LDRB     R0,[R7, #+19]
        CMP      R0,#+255
        ITT      EQ 
        LDRBEQ   R0,[R7, #+20]
        CMPEQ    R0,#+254
        BNE.N    ??compress_hdr_hc06_20
        LDRB     R0,[R7, #+21]
        CBNZ.N   R0,??compress_hdr_hc06_20
        ADD      R0,R7,#+22
        LDR      R1,[R5, #+36]
        LDRB     R2,[R0, #0]
        STRB     R2,[R1, #+0]
        LDRB     R2,[R0, #+1]
        STRB     R2,[R1, #+1]
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+2
        STR      R0,[R5, #+36]
        MOVS     R0,#+32
        B.N      ??compress_hdr_hc06_19
??compress_hdr_hc06_20:
        LDR      R0,[R5, #+36]
        MOVS     R2,#+8
        ADD      R1,R7,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+8
        STR      R0,[R5, #+36]
        MOVS     R0,#+16
//  644   } else {
??compress_hdr_hc06_19:
        ORRS     R4,R0,R4
        B.N      ??compress_hdr_hc06_12
//  645     /* send the full address => SAC = 0, SAM = 00 */
//  646     iphc1 |= SICSLOWPAN_IPHC_SAM_00; /* 128-bits */
//  647     memcpy(hc06_ptr, &UIP_IP_BUF->srcipaddr.u16[0], 16);
??compress_hdr_hc06_17:
        LDR      R0,[R5, #+36]
        MOVS     R2,#+16
        ADD      R1,R7,#+8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  648     hc06_ptr += 16;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+16
        STR      R0,[R5, #+36]
//  649   }
//  650 
//  651   /* dest address*/
//  652   if(uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
??compress_hdr_hc06_12:
        LDRB     R0,[R7, #+24]
        CMP      R0,#+255
        BNE.N    ??compress_hdr_hc06_21
//  653     /* Address is multicast, try to compress */
//  654     iphc1 |= SICSLOWPAN_IPHC_M;
//  655     if(sicslowpan_is_mcast_addr_compressable8(&UIP_IP_BUF->destipaddr)) {
        LDRB     R0,[R7, #+25]
        CMP      R0,#+2
        ITT      EQ 
        LDRHEQ   R1,[R7, #+26]
        CMPEQ    R1,#+0
        ORR      R4,R4,#0x8
        BNE.N    ??compress_hdr_hc06_22
        LDRH     R1,[R7, #+28]
        CBNZ.N   R1,??compress_hdr_hc06_23
        LDRH     R1,[R7, #+30]
        CBNZ.N   R1,??compress_hdr_hc06_24
        LDRH     R1,[R7, #+32]
        CBNZ.N   R1,??compress_hdr_hc06_25
        LDRH     R1,[R7, #+34]
        CBNZ.N   R1,??compress_hdr_hc06_26
        LDRH     R1,[R7, #+36]
        CMP      R1,#+0
        ITT      EQ 
        LDRBEQ   R1,[R7, #+38]
        CMPEQ    R1,#+0
        BNE.N    ??compress_hdr_hc06_27
//  656       iphc1 |= SICSLOWPAN_IPHC_DAM_11;
//  657       /* use last byte */
//  658       *hc06_ptr = UIP_IP_BUF->destipaddr.u8[15];
        LDR      R3,[R5, #+36]
        LDRB     R0,[R7, #+39]
        STRB     R0,[R3, #+0]
        ORR      R4,R4,#0x3
//  659       hc06_ptr += 1;
        ADDS     R0,R3,#+1
        B.N      ??compress_hdr_hc06_28
//  660     } else if(sicslowpan_is_mcast_addr_compressable32(&UIP_IP_BUF->destipaddr)) {
??compress_hdr_hc06_22:
        LDRH     R1,[R7, #+26]
        CMP      R1,#+0
        BNE.W    ??compress_hdr_hc06_29
??compress_hdr_hc06_23:
        LDRH     R1,[R7, #+28]
        CMP      R1,#+0
        BNE.W    ??compress_hdr_hc06_29
??compress_hdr_hc06_24:
        LDRH     R1,[R7, #+30]
        CMP      R1,#+0
        BNE.W    ??compress_hdr_hc06_29
??compress_hdr_hc06_25:
        LDRH     R1,[R7, #+32]
        CMP      R1,#+0
        BNE.W    ??compress_hdr_hc06_29
??compress_hdr_hc06_26:
        LDRH     R1,[R7, #+34]
        CBNZ.N   R1,??compress_hdr_hc06_30
??compress_hdr_hc06_27:
        LDRB     R1,[R7, #+36]
        CBNZ.N   R1,??compress_hdr_hc06_30
//  661       iphc1 |= SICSLOWPAN_IPHC_DAM_10;
//  662       /* second byte + the last three */
//  663       *hc06_ptr = UIP_IP_BUF->destipaddr.u8[1];
        LDR      R3,[R5, #+36]
        ORR      R4,R4,#0x2
        STRB     R0,[R3, #+0]
//  664       memcpy(hc06_ptr + 1, &UIP_IP_BUF->destipaddr.u8[13], 3);
        MOVS     R2,#+3
        ADD      R1,R7,#+37
        ADDS     R0,R3,#+1
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  665       hc06_ptr += 4;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+4
        B.N      ??compress_hdr_hc06_28
//  666     } else if(sicslowpan_is_mcast_addr_compressable48(&UIP_IP_BUF->destipaddr)) {
??compress_hdr_hc06_30:
        LDRB     R1,[R7, #+34]
        CMP      R1,#+0
        BNE.W    ??compress_hdr_hc06_29
//  667       iphc1 |= SICSLOWPAN_IPHC_DAM_01;
//  668       /* second byte + the last five */
//  669       *hc06_ptr = UIP_IP_BUF->destipaddr.u8[1];
        LDR      R3,[R5, #+36]
        ORR      R4,R4,#0x1
        STRB     R0,[R3, #+0]
//  670       memcpy(hc06_ptr + 1, &UIP_IP_BUF->destipaddr.u8[11], 5);
        MOVS     R2,#+5
        ADD      R1,R7,#+35
        ADDS     R0,R3,#+1
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  671       hc06_ptr += 6;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+6
        B.N      ??compress_hdr_hc06_28
//  672     } else {
//  673       iphc1 |= SICSLOWPAN_IPHC_DAM_00;
//  674       /* full address */
//  675       memcpy(hc06_ptr, &UIP_IP_BUF->destipaddr.u8[0], 16);
//  676       hc06_ptr += 16;
//  677     }
//  678   } else {
//  679     /* Address is unicast, try to compress */
//  680     if((context = addr_context_lookup_by_prefix(&UIP_IP_BUF->destipaddr)) != NULL) {
??compress_hdr_hc06_21:
        ADD      R0,R7,#+24
          CFI FunCall addr_context_lookup_by_prefix
        BL       addr_context_lookup_by_prefix
        CMP      R0,#+0
        STR      R0,[R5, #+32]
        BEQ.N    ??compress_hdr_hc06_31
//  681       /* elide the prefix */
//  682       iphc1 |= SICSLOWPAN_IPHC_DAC;
//  683       PACKETBUF_IPHC_BUF[2] |= context->number;
        LDR      R1,[R5, #+12]
        LDRB     R2,[R5, #+0]
        LDRB     R0,[R0, #+1]
        ADDS     R1,R2,R1
        LDRB     R2,[R1, #+2]
        ORRS     R0,R0,R2
        STRB     R0,[R1, #+2]
//  684       /* compession compare with link adress (destination) */
//  685 
//  686       iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_DAM_BIT,
//  687 	       &UIP_IP_BUF->destipaddr, (uip_lladdr_t *)link_destaddr);
        LDRB     R1,[R6, #+0]
        LDRB     R0,[R7, #+32]
        EOR      R1,R1,#0x2
        CMP      R0,R1
        ITTT     EQ 
        LDRBEQ   R0,[R7, #+33]
        LDRBEQ   R1,[R6, #+1]
        CMPEQ    R0,R1
        BNE.N    ??compress_hdr_hc06_32
        LDRB     R0,[R7, #+34]
        LDRB     R1,[R6, #+2]
        CMP      R0,R1
        ITTT     EQ 
        LDRBEQ   R0,[R7, #+35]
        LDRBEQ   R1,[R6, #+3]
        CMPEQ    R0,R1
        BNE.N    ??compress_hdr_hc06_32
        LDRB     R0,[R7, #+36]
        LDRB     R1,[R6, #+4]
        CMP      R0,R1
        ITTT     EQ 
        LDRBEQ   R0,[R7, #+37]
        LDRBEQ   R1,[R6, #+5]
        CMPEQ    R0,R1
        BNE.N    ??compress_hdr_hc06_32
        LDRB     R0,[R7, #+38]
        LDRB     R1,[R6, #+6]
        CMP      R0,R1
        ITTTT    EQ 
        LDRBEQ   R0,[R7, #+39]
        LDRBEQ   R1,[R6, #+7]
        CMPEQ    R0,R1
        MOVEQ    R0,#+3
        BEQ.N    ??compress_hdr_hc06_33
??compress_hdr_hc06_32:
        LDRH     R0,[R7, #+32]
        CMP      R0,#+0
        ITT      EQ 
        LDRBEQ   R0,[R7, #+34]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_34
        LDRB     R0,[R7, #+35]
        CMP      R0,#+255
        ITT      EQ 
        LDRBEQ   R0,[R7, #+36]
        CMPEQ    R0,#+254
        BNE.N    ??compress_hdr_hc06_34
        LDRB     R0,[R7, #+37]
        CBNZ.N   R0,??compress_hdr_hc06_34
        ADD      R0,R7,#+38
        LDR      R1,[R5, #+36]
        LDRB     R2,[R0, #0]
        STRB     R2,[R1, #+0]
        LDRB     R2,[R0, #+1]
        STRB     R2,[R1, #+1]
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+2
        STR      R0,[R5, #+36]
        MOVS     R0,#+2
        B.N      ??compress_hdr_hc06_33
??compress_hdr_hc06_34:
        LDR      R0,[R5, #+36]
        MOVS     R2,#+8
        ADD      R1,R7,#+32
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+8
        STR      R0,[R5, #+36]
        MOVS     R0,#+1
//  688       /* No context found for this address */
//  689     } else if(uip_is_addr_link_local(&UIP_IP_BUF->destipaddr) &&
??compress_hdr_hc06_33:
        ORRS     R0,R0,R4
        ORR      R4,R0,#0x4
        B.N      ??compress_hdr_hc06_35
//  690 	      UIP_IP_BUF->destipaddr.u16[1] == 0 &&
//  691 	      UIP_IP_BUF->destipaddr.u16[2] == 0 &&
//  692 	      UIP_IP_BUF->destipaddr.u16[3] == 0) {
??compress_hdr_hc06_31:
        LDRB     R0,[R7, #+24]
        CMP      R0,#+254
        ITT      EQ 
        LDRBEQ   R0,[R7, #+25]
        CMPEQ    R0,#+128
        BNE.N    ??compress_hdr_hc06_29
        LDRH     R0,[R7, #+26]
        CMP      R0,#+0
        ITTTT    EQ 
        LDRHEQ   R0,[R7, #+28]
        CMPEQ    R0,#+0
        LDRHEQ   R0,[R7, #+30]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_29
//  693       iphc1 |= compress_addr_64(SICSLOWPAN_IPHC_DAM_BIT,
//  694                &UIP_IP_BUF->destipaddr, (uip_lladdr_t *)link_destaddr);
        LDRB     R1,[R6, #+0]
        LDRB     R0,[R7, #+32]
        EOR      R1,R1,#0x2
        CMP      R0,R1
        ITTT     EQ 
        LDRBEQ   R0,[R7, #+33]
        LDRBEQ   R1,[R6, #+1]
        CMPEQ    R0,R1
        BNE.N    ??compress_hdr_hc06_36
        LDRB     R0,[R7, #+34]
        LDRB     R1,[R6, #+2]
        CMP      R0,R1
        ITTT     EQ 
        LDRBEQ   R0,[R7, #+35]
        LDRBEQ   R1,[R6, #+3]
        CMPEQ    R0,R1
        BNE.N    ??compress_hdr_hc06_36
        LDRB     R0,[R7, #+36]
        LDRB     R1,[R6, #+4]
        CMP      R0,R1
        ITTT     EQ 
        LDRBEQ   R0,[R7, #+37]
        LDRBEQ   R1,[R6, #+5]
        CMPEQ    R0,R1
        BNE.N    ??compress_hdr_hc06_36
        LDRB     R0,[R7, #+38]
        LDRB     R1,[R6, #+6]
        CMP      R0,R1
        ITTTT    EQ 
        LDRBEQ   R0,[R7, #+39]
        LDRBEQ   R1,[R6, #+7]
        CMPEQ    R0,R1
        MOVEQ    R0,#+3
        BEQ.N    ??compress_hdr_hc06_37
??compress_hdr_hc06_36:
        LDRH     R0,[R7, #+32]
        CMP      R0,#+0
        ITT      EQ 
        LDRBEQ   R0,[R7, #+34]
        CMPEQ    R0,#+0
        BNE.N    ??compress_hdr_hc06_38
        LDRB     R0,[R7, #+35]
        CMP      R0,#+255
        ITT      EQ 
        LDRBEQ   R0,[R7, #+36]
        CMPEQ    R0,#+254
        BNE.N    ??compress_hdr_hc06_38
        LDRB     R0,[R7, #+37]
        CBNZ.N   R0,??compress_hdr_hc06_38
        ADD      R0,R7,#+38
        LDR      R1,[R5, #+36]
        LDRB     R2,[R0, #0]
        STRB     R2,[R1, #+0]
        LDRB     R2,[R0, #+1]
        STRB     R2,[R1, #+1]
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+2
        STR      R0,[R5, #+36]
        MOVS     R0,#+2
        B.N      ??compress_hdr_hc06_37
??compress_hdr_hc06_38:
        LDR      R0,[R5, #+36]
        MOVS     R2,#+8
        ADD      R1,R7,#+32
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+8
        STR      R0,[R5, #+36]
        MOVS     R0,#+1
//  695     } else {
??compress_hdr_hc06_37:
        ORRS     R4,R0,R4
        B.N      ??compress_hdr_hc06_35
//  696       /* send the full address */
//  697       iphc1 |= SICSLOWPAN_IPHC_DAM_00; /* 128-bits */
//  698       memcpy(hc06_ptr, &UIP_IP_BUF->destipaddr.u16[0], 16);
??compress_hdr_hc06_29:
        LDR      R0,[R5, #+36]
        MOVS     R2,#+16
        ADD      R1,R7,#+24
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  699       hc06_ptr += 16;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+16
??compress_hdr_hc06_28:
        STR      R0,[R5, #+36]
//  700     }
//  701   }
//  702 
//  703   uncomp_hdr_len = UIP_IPH_LEN;
??compress_hdr_hc06_35:
        MOVS     R0,#+40
        STRB     R0,[R5, #+1]
//  704 
//  705 #if UIP_CONF_UDP || UIP_CONF_ROUTER
//  706   /* UDP header compression */
//  707   if(UIP_IP_BUF->proto == UIP_PROTO_UDP) {
        LDRB     R0,[R7, #+6]
        CMP      R0,#+17
        BNE.N    ??compress_hdr_hc06_39
//  708     PRINTF("IPHC: Uncompressed UDP ports on send side: %x, %x\n",
//  709 	   UIP_HTONS(UIP_UDP_BUF->srcport), UIP_HTONS(UIP_UDP_BUF->destport));
//  710     /* Mask out the last 4 bits can be used as a mask */
//  711     if(((UIP_HTONS(UIP_UDP_BUF->srcport) & 0xfff0) == SICSLOWPAN_UDP_4_BIT_PORT_MIN) &&
//  712        ((UIP_HTONS(UIP_UDP_BUF->destport) & 0xfff0) == SICSLOWPAN_UDP_4_BIT_PORT_MIN)) {
        LDRH     R1,[R7, #+40]
        LSLS     R0,R1,#+8
        MOVW     R3,#+65520
        ORR      R1,R0,R1, LSR #+8
        MOVW     R2,#+61616
        ANDS     R1,R3,R1
        CMP      R1,R2
        BNE.N    ??compress_hdr_hc06_40
        LDRH     R1,[R7, #+42]
        LSRS     R6,R1,#+8
        ORR      R1,R6,R1, LSL #+8
        ANDS     R1,R3,R1
        CMP      R1,R2
        BNE.N    ??compress_hdr_hc06_40
//  713       /* we can compress 12 bits of both source and dest */
//  714       *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_11;
        LDR      R0,[R5, #+36]
        MOVS     R1,#+243
        STRB     R1,[R0, #+0]
//  715       PRINTF("IPHC: remove 12 b of both source & dest with prefix 0xFOB\n");
//  716       *(hc06_ptr + 1) =
//  717 	(uint8_t)((UIP_HTONS(UIP_UDP_BUF->srcport) -
//  718 		SICSLOWPAN_UDP_4_BIT_PORT_MIN) << 4) +
//  719 	(uint8_t)((UIP_HTONS(UIP_UDP_BUF->destport) -
//  720 		SICSLOWPAN_UDP_4_BIT_PORT_MIN));
        LDRH     R2,[R7, #+42]
        LDRH     R1,[R7, #+40]
        LSRS     R1,R1,#+8
        LSRS     R2,R2,#+8
        ADD      R1,R2,R1, LSL #+4
        ADDS     R1,R1,#+80
        STRB     R1,[R0, #+1]
//  721       hc06_ptr += 2;
        ADDS     R0,R0,#+2
        B.N      ??compress_hdr_hc06_41
//  722     } else if((UIP_HTONS(UIP_UDP_BUF->destport) & 0xff00) == SICSLOWPAN_UDP_8_BIT_PORT_MIN) {
??compress_hdr_hc06_40:
        LDRH     R1,[R7, #+42]
        LSLS     R1,R1,#+24
        LSRS     R1,R1,#+16
        CMP      R1,#+61440
        BNE.N    ??compress_hdr_hc06_42
//  723       /* we can compress 8 bits of dest, leave source. */
//  724       *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_01;
        LDR      R0,[R5, #+36]
        MOVS     R1,#+241
        STRB     R1,[R0], #+1
//  725       PRINTF("IPHC: leave source, remove 8 bits of dest with prefix 0xF0\n");
//  726       memcpy(hc06_ptr + 1, &UIP_UDP_BUF->srcport, 2);
        ADD      R1,R7,#+40
        LDRB     R2,[R1, #0]
        STRB     R2,[R0, #+0]
        LDRB     R2,[R1, #+1]
        STRB     R2,[R0, #+1]
//  727       *(hc06_ptr + 3) =
//  728 	(uint8_t)((UIP_HTONS(UIP_UDP_BUF->destport) -
//  729 		SICSLOWPAN_UDP_8_BIT_PORT_MIN));
        LDR      R0,[R5, #+36]
        LDRH     R1,[R7, #+42]
        LSRS     R1,R1,#+8
        STRB     R1,[R0, #+3]
//  730       hc06_ptr += 4;
        ADDS     R0,R0,#+4
        B.N      ??compress_hdr_hc06_41
//  731     } else if((UIP_HTONS(UIP_UDP_BUF->srcport) & 0xff00) == SICSLOWPAN_UDP_8_BIT_PORT_MIN) {
??compress_hdr_hc06_42:
        UXTH     R0,R0
        CMP      R0,#+61440
        LDR      R0,[R5, #+36]
        BNE.N    ??compress_hdr_hc06_43
//  732       /* we can compress 8 bits of src, leave dest. Copy compressed port */
//  733       *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_10;
        MOVS     R1,#+242
        STRB     R1,[R0, #+0]
//  734       PRINTF("IPHC: remove 8 bits of source with prefix 0xF0, leave dest. hch: %i\n", *hc06_ptr);
//  735       *(hc06_ptr + 1) =
//  736 	(uint8_t)((UIP_HTONS(UIP_UDP_BUF->srcport) -
//  737 		SICSLOWPAN_UDP_8_BIT_PORT_MIN));
        LDRH     R1,[R7, #+40]
        LSRS     R1,R1,#+8
        STRB     R1,[R0, #+1]
//  738       memcpy(hc06_ptr + 2, &UIP_UDP_BUF->destport, 2);
        ADD      R1,R7,#+42
        LDRB     R2,[R1, #0]
        STRB     R2,[R0, #+2]!
        LDRB     R2,[R1, #+1]
        STRB     R2,[R0, #+1]
//  739       hc06_ptr += 4;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+4
        B.N      ??compress_hdr_hc06_41
//  740     } else {
//  741       /* we cannot compress. Copy uncompressed ports, full checksum  */
//  742       *hc06_ptr = SICSLOWPAN_NHC_UDP_CS_P_00;
??compress_hdr_hc06_43:
        MOVS     R1,#+240
        STRB     R1,[R0], #+1
//  743       PRINTF("IPHC: cannot compress headers\n");
//  744       memcpy(hc06_ptr + 1, &UIP_UDP_BUF->srcport, 4);
        MOVS     R2,#+4
        ADD      R1,R7,#+40
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  745       hc06_ptr += 5;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+5
??compress_hdr_hc06_41:
        STR      R0,[R5, #+36]
//  746     }
//  747     /* always inline the checksum  */
//  748     if(1) {
//  749       memcpy(hc06_ptr, &UIP_UDP_BUF->udpchksum, 2);
        ADD      R0,R7,#+46
        LDR      R1,[R5, #+36]
        LDRB     R2,[R0, #0]
        STRB     R2,[R1, #+0]
        LDRB     R2,[R0, #+1]
        STRB     R2,[R1, #+1]
//  750       hc06_ptr += 2;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+2
        STR      R0,[R5, #+36]
//  751     }
//  752     uncomp_hdr_len += UIP_UDPH_LEN;
        LDRB     R0,[R5, #+1]
        ADDS     R0,R0,#+8
        STRB     R0,[R5, #+1]
??compress_hdr_hc06_39:
        LDRB     R0,[R5, #+0]
        LDR      R1,[R5, #+12]
        STRB     R8,[R0, R1]
//  753   }
//  754 #endif /*UIP_CONF_UDP*/
//  755 
//  756 #ifdef SICSLOWPAN_NH_COMPRESSOR
//  757   /* if nothing to compress just return zero  */
//  758   hc06_ptr += SICSLOWPAN_NH_COMPRESSOR.compress(hc06_ptr, &uncomp_hdr_len);
//  759 #endif
//  760 
//  761   /* before the packetbuf_hdr_len operation */
//  762   PACKETBUF_IPHC_BUF[0] = iphc0;
//  763   PACKETBUF_IPHC_BUF[1] = iphc1;
        ADDS     R0,R0,R1
        STRB     R4,[R0, #+1]
//  764 
//  765   packetbuf_hdr_len = hc06_ptr - packetbuf_ptr;
        LDR      R0,[R5, #+36]
        SUBS     R0,R0,R1
        STRB     R0,[R5, #+0]
//  766   return;
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock6
//  767 }
//  768 
//  769 /*--------------------------------------------------------------------*/
//  770 /**
//  771  * \brief Uncompress HC06 (i.e., IPHC and LOWPAN_UDP) headers and put
//  772  * them in sicslowpan_buf
//  773  *
//  774  * This function is called by the input function when the dispatch is
//  775  * HC06.
//  776  * We %process the packet in the packetbuf buffer, uncompress the header
//  777  * fields, and copy the result in the sicslowpan buffer.
//  778  * At the end of the decompression, packetbuf_hdr_len and uncompressed_hdr_len
//  779  * are set to the appropriate values
//  780  *
//  781  * \param ip_len Equal to 0 if the packet is not a fragment (IP length
//  782  * is then inferred from the L2 length), non 0 if the packet is a 1st
//  783  * fragment.
//  784  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function uncompress_hdr_hc06
        THUMB
//  785 static void
//  786 uncompress_hdr_hc06(uint16_t ip_len)
//  787 {
uncompress_hdr_hc06:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
//  788   uint8_t tmp, iphc0, iphc1;
//  789   /* at least two byte will be used for the encoding */
//  790   hc06_ptr = packetbuf_ptr + packetbuf_hdr_len + 2;
        LDR.N    R5,??DataTable16
//  791 
//  792   iphc0 = PACKETBUF_IPHC_BUF[0];
//  793   iphc1 = PACKETBUF_IPHC_BUF[1];
//  794 
//  795   /* another if the CID flag is set */
//  796   if(iphc1 & SICSLOWPAN_IPHC_CID) {
//  797     PRINTF("IPHC: CID flag set - increase header with one\n");
//  798     hc06_ptr++;
//  799   }
//  800 
//  801   /* Traffic class and flow label */
//  802     if((iphc0 & SICSLOWPAN_IPHC_FL_C) == 0) {
        LDR.W    R6,??DataTable19_2
        LDR      R1,[R5, #+12]
        MOV      R8,R0
        LDRB     R0,[R5, #+0]
        LDRB     R4,[R0, R1]
        ADDS     R2,R0,R1
        ADDS     R3,R2,#+2
        LDRB     R7,[R2, #+1]
        LSLS     R0,R7,#+24
        IT       MI 
        ADDMI    R3,R3,#+1
        LSLS     R0,R4,#+27
        STR      R3,[R5, #+36]
        AND      R1,R4,#0x8
        BMI.N    ??uncompress_hdr_hc06_0
//  803       /* Flow label are carried inline */
//  804       if((iphc0 & SICSLOWPAN_IPHC_TC_C) == 0) {
        CBNZ.N   R1,??uncompress_hdr_hc06_1
//  805         /* Traffic class is carried inline */
//  806         memcpy(&SICSLOWPAN_IP_BUF->tcflow, hc06_ptr + 1, 3);
        MOVS     R2,#+3
        ADDS     R1,R3,#+1
        ADDS     R0,R6,#+1
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  807         tmp = *hc06_ptr;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+4
        STR      R0,[R5, #+36]
        SUBS     R0,R0,#+4
        LDRB     R0,[R0, #+0]
//  808         hc06_ptr += 4;
//  809         /* hc06 format of tc is ECN | DSCP , original is DSCP | ECN */
//  810         /* set version, pick highest DSCP bits and set in vtc */
//  811         SICSLOWPAN_IP_BUF->vtc = 0x60 | ((tmp >> 2) & 0x0f);
        LSRS     R1,R0,#+2
        AND      R2,R1,#0xF
//  812         /* ECN rolled down two steps + lowest DSCP bits at top two bits */
//  813         SICSLOWPAN_IP_BUF->tcflow = ((tmp >> 2) & 0x30) | (tmp << 6) |
//  814   	(SICSLOWPAN_IP_BUF->tcflow & 0x0f);
        AND      R1,R1,#0x30
        ORR      R0,R1,R0, LSL #+6
        LDRB     R1,[R6, #+1]
        AND      R1,R1,#0xF
        ORR      R2,R2,#0x60
        ORRS     R0,R1,R0
        STRB     R2,[R6, #+0]
        STRB     R0,[R6, #+1]
        B.N      ??uncompress_hdr_hc06_2
//  815       } else {
//  816         /* Traffic class is compressed (set version and no TC)*/
//  817         SICSLOWPAN_IP_BUF->vtc = 0x60;
??uncompress_hdr_hc06_1:
        MOVS     R1,#+96
        STRB     R1,[R6, #+0]
//  818         /* highest flow label bits + ECN bits */
//  819         SICSLOWPAN_IP_BUF->tcflow = (*hc06_ptr & 0x0F) |
//  820   	((*hc06_ptr >> 2) & 0x30);
//  821         memcpy(&SICSLOWPAN_IP_BUF->flow, hc06_ptr + 1, 2);
        ADDS     R0,R3,#+1
        LDRB     R1,[R3, #+0]
        AND      R2,R1,#0xF
        LSRS     R1,R1,#+2
        AND      R1,R1,#0x30
        ORRS     R1,R1,R2
        STRB     R1,[R6, #+1]
        ADDS     R1,R6,#+2
        LDRB     R2,[R0, #0]
        STRB     R2,[R1, #+0]
        LDRB     R2,[R0, #+1]
        STRB     R2,[R1, #+1]
//  822         hc06_ptr += 3;
        ADDS     R0,R3,#+3
        B.N      ??uncompress_hdr_hc06_3
//  823       }
//  824     } else {
//  825       /* Version is always 6! */
//  826       /* Version and flow label are compressed */
//  827       if((iphc0 & SICSLOWPAN_IPHC_TC_C) == 0) {
??uncompress_hdr_hc06_0:
        CBNZ.N   R1,??uncompress_hdr_hc06_4
//  828         /* Traffic class is inline */
//  829           SICSLOWPAN_IP_BUF->vtc = 0x60 | ((*hc06_ptr >> 2) & 0x0f);
        LDRB     R1,[R3, #+0]
        UBFX     R1,R1,#+2,#+4
        ORR      R1,R1,#0x60
        STRB     R1,[R6, #+0]
//  830           SICSLOWPAN_IP_BUF->tcflow = ((*hc06_ptr << 6) & 0xC0) | ((*hc06_ptr >> 2) & 0x30);
//  831           SICSLOWPAN_IP_BUF->flow = 0;
//  832           hc06_ptr += 1;
        ADDS     R0,R3,#+1
        LDRB     R1,[R3, #+0]
        LSRS     R2,R1,#+2
        AND      R2,R2,#0x30
        ORR      R1,R2,R1, LSL #+6
        STRB     R1,[R6, #+1]
        MOVS     R1,#+0
        STRH     R1,[R6, #+2]
??uncompress_hdr_hc06_3:
        STR      R0,[R5, #+36]
        B.N      ??uncompress_hdr_hc06_2
//  833       } else {
//  834         /* Traffic class is compressed */
//  835         SICSLOWPAN_IP_BUF->vtc = 0x60;
??uncompress_hdr_hc06_4:
        MOVS     R0,#+96
        STRB     R0,[R6, #+0]
//  836         SICSLOWPAN_IP_BUF->tcflow = 0;
        MOVS     R0,#+0
        STRB     R0,[R6, #+1]
//  837         SICSLOWPAN_IP_BUF->flow = 0;
        STRH     R0,[R6, #+2]
//  838       }
//  839     }
//  840 
//  841   /* Next Header */
//  842   if((iphc0 & SICSLOWPAN_IPHC_NH_C) == 0) {
??uncompress_hdr_hc06_2:
        ANDS     R9,R4,#0x4
        LDR      R0,[R5, #+36]
        ITT      EQ 
        LDRBEQ   R1,[R0], #+1
        STRBEQ   R1,[R6, #+6]
//  843     /* Next header is carried inline */
//  844     SICSLOWPAN_IP_BUF->proto = *hc06_ptr;
//  845     PRINTF("IPHC: next header inline: %d\n", SICSLOWPAN_IP_BUF->proto);
//  846     hc06_ptr += 1;
//  847   }
//  848 
//  849   /* Hop limit */
//  850   if((iphc0 & 0x03) != SICSLOWPAN_IPHC_TTL_I) {
        ANDS     R1,R4,#0x3
        ITTTE    NE 
        ADRNE.W  R1,ttl_values
        ANDNE    R2,R4,#0x3
        LDRBNE   R1,[R2, R1]
        LDRBEQ   R1,[R0], #+1
//  851     SICSLOWPAN_IP_BUF->ttl = ttl_values[iphc0 & 0x03];
//  852   } else {
//  853     SICSLOWPAN_IP_BUF->ttl = *hc06_ptr;
//  854     hc06_ptr += 1;
        STR      R0,[R5, #+36]
        STRB     R1,[R6, #+7]
//  855   }
//  856 
//  857   /* put the source address compression mode SAM in the tmp var */
//  858   tmp = ((iphc1 & SICSLOWPAN_IPHC_SAM_11) >> SICSLOWPAN_IPHC_SAM_BIT) & 0x03;
        LSRS     R0,R7,#+4
        AND      R4,R0,#0x3
//  859 
//  860   /* context based compression */
//  861   if(iphc1 & SICSLOWPAN_IPHC_SAC) {
        LSLS     R0,R7,#+25
        BPL.N    ??uncompress_hdr_hc06_5
//  862     uint8_t sci = (iphc1 & SICSLOWPAN_IPHC_CID) ?
//  863       PACKETBUF_IPHC_BUF[2] >> 4 : 0;
        LSLS     R0,R7,#+24
        BPL.N    ??uncompress_hdr_hc06_6
        LDR      R0,[R5, #+12]
        LDRB     R1,[R5, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+2]
        LSRS     R0,R0,#+4
        B.N      ??uncompress_hdr_hc06_7
??uncompress_hdr_hc06_6:
        MOVS     R0,#+0
//  864 
//  865     /* Source address - check context != NULL only if SAM bits are != 0*/
//  866     if (tmp != 0) {
??uncompress_hdr_hc06_7:
        CBZ.N    R4,??uncompress_hdr_hc06_8
//  867       context = addr_context_lookup_by_number(sci);
          CFI FunCall addr_context_lookup_by_number
        BL       addr_context_lookup_by_number
//  868       if(context == NULL) {
        CMP      R0,#+0
        STR      R0,[R5, #+32]
        BEQ.W    ??uncompress_hdr_hc06_9
//  869         PRINTF("sicslowpan uncompress_hdr: error context not found\n");
//  870         return;
//  871       }
//  872     }
//  873     /* if tmp == 0 we do not have a context and therefore no prefix */
//  874     uncompress_addr(&SICSLOWPAN_IP_BUF->srcipaddr,
//  875                     tmp != 0 ? context->prefix : NULL, unc_ctxconf[tmp],
//  876                     (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
??uncompress_hdr_hc06_8:
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R3,R0
        CMP      R4,#+0
        ITTE     NE 
        LDRNE    R0,[R5, #+32]
        ADDNE    R1,R0,#+2
        MOVEQ    R1,#+0
        ADR.W    R0,unc_ctxconf
        LDRB     R2,[R4, R0]
        B.N      ??uncompress_hdr_hc06_10
//  877   } else {
//  878     /* no compression and link local */
//  879     uncompress_addr(&SICSLOWPAN_IP_BUF->srcipaddr, llprefix, unc_llconf[tmp],
//  880                     (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
??uncompress_hdr_hc06_5:
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R3,R0
        ADR.W    R0,unc_llconf
        ADR.W    R1,llprefix
        LDRB     R2,[R4, R0]
??uncompress_hdr_hc06_10:
        ADD      R0,R6,#+8
          CFI FunCall uncompress_addr
        BL       uncompress_addr
//  881   }
//  882 
//  883   /* Destination address */
//  884   /* put the destination address compression mode into tmp */
//  885   tmp = ((iphc1 & SICSLOWPAN_IPHC_DAM_11) >> SICSLOWPAN_IPHC_DAM_BIT) & 0x03;
//  886 
//  887   /* multicast compression */
//  888   if(iphc1 & SICSLOWPAN_IPHC_M) {
        LSLS     R1,R7,#+28
        AND      R4,R7,#0x3
        AND      R0,R7,#0x4
        BPL.N    ??uncompress_hdr_hc06_11
//  889     /* context based multicast compression */
//  890     if(iphc1 & SICSLOWPAN_IPHC_DAC) {
        CMP      R0,#+0
        BNE.N    ??uncompress_hdr_hc06_12
//  891       /* TODO: implement this */
//  892     } else {
//  893       /* non-context based multicast compression - */
//  894       /* DAM_00: 128 bits  */
//  895       /* DAM_01:  48 bits FFXX::00XX:XXXX:XXXX */
//  896       /* DAM_10:  32 bits FFXX::00XX:XXXX */
//  897       /* DAM_11:   8 bits FF02::00XX */
//  898       uint8_t prefix[] = {0xff, 0x02};
        ADR.W    R0,?_1
        LDRH     R0,[R0, #+0]
        STRH     R0,[SP, #+0]
//  899       if(tmp > 0 && tmp < 3) {
        CBZ.N    R4,??uncompress_hdr_hc06_13
        CMP      R4,#+3
        BGE.N    ??uncompress_hdr_hc06_13
//  900         prefix[1] = *hc06_ptr;
        LDR      R0,[R5, #+36]
        ADDS     R0,R0,#+1
        STR      R0,[R5, #+36]
        SUBS     R0,R0,#+1
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+1]
//  901         hc06_ptr++;
//  902       }
//  903 
//  904       uncompress_addr(&SICSLOWPAN_IP_BUF->destipaddr, prefix,
//  905                       unc_mxconf[tmp], NULL);
??uncompress_hdr_hc06_13:
        MOVS     R3,#+0
        ADR.W    R0,unc_mxconf
        LDRB     R2,[R4, R0]
        ADD      R1,SP,#+0
        ADD      R0,R6,#+24
          CFI FunCall uncompress_addr
        BL       uncompress_addr
        B.N      ??uncompress_hdr_hc06_12
//  906     }
//  907   } else {
//  908     /* no multicast */
//  909     /* Context based */
//  910     if(iphc1 & SICSLOWPAN_IPHC_DAC) {
??uncompress_hdr_hc06_11:
        CBZ.N    R0,??uncompress_hdr_hc06_14
//  911       uint8_t dci = (iphc1 & SICSLOWPAN_IPHC_CID) ?
//  912 	PACKETBUF_IPHC_BUF[2] & 0x0f : 0;
        LSLS     R0,R7,#+24
        BPL.N    ??uncompress_hdr_hc06_15
        LDR      R0,[R5, #+12]
        LDRB     R1,[R5, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+2]
        AND      R0,R0,#0xF
        B.N      ??uncompress_hdr_hc06_16
??uncompress_hdr_hc06_15:
        MOVS     R0,#+0
//  913       context = addr_context_lookup_by_number(dci);
??uncompress_hdr_hc06_16:
          CFI FunCall addr_context_lookup_by_number
        BL       addr_context_lookup_by_number
//  914 
//  915       /* all valid cases below need the context! */
//  916       if(context == NULL) {
        CMP      R0,#+0
        STR      R0,[R5, #+32]
        BEQ.W    ??uncompress_hdr_hc06_9
//  917 	PRINTF("sicslowpan uncompress_hdr: error context not found\n");
//  918 	return;
//  919       }
//  920       uncompress_addr(&SICSLOWPAN_IP_BUF->destipaddr, context->prefix,
//  921                       unc_ctxconf[tmp],
//  922                       (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R3,R0
        ADR.W    R0,unc_ctxconf
        LDRB     R2,[R4, R0]
        LDR      R0,[R5, #+32]
        ADDS     R1,R0,#+2
        B.N      ??uncompress_hdr_hc06_17
//  923     } else {
//  924       /* not context based => link local M = 0, DAC = 0 - same as SAC */
//  925       uncompress_addr(&SICSLOWPAN_IP_BUF->destipaddr, llprefix,
//  926                       unc_llconf[tmp],
//  927                       (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
??uncompress_hdr_hc06_14:
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R3,R0
        ADR.W    R0,unc_llconf
        ADR.W    R1,llprefix
        LDRB     R2,[R4, R0]
??uncompress_hdr_hc06_17:
        ADD      R0,R6,#+24
          CFI FunCall uncompress_addr
        BL       uncompress_addr
//  928     }
//  929   }
//  930   uncomp_hdr_len += UIP_IPH_LEN;
??uncompress_hdr_hc06_12:
        LDRB     R0,[R5, #+1]
        ADDS     R0,R0,#+40
//  931 
//  932   /* Next header processing - continued */
//  933   if((iphc0 & SICSLOWPAN_IPHC_NH_C)) {
        CMP      R9,#+0
        STRB     R0,[R5, #+1]
        BEQ.N    ??uncompress_hdr_hc06_18
//  934     /* The next header is compressed, NHC is following */
//  935     if((*hc06_ptr & SICSLOWPAN_NHC_UDP_MASK) == SICSLOWPAN_NHC_UDP_ID) {
        LDR      R1,[R5, #+36]
        LDRB     R0,[R1, #+0]
        AND      R0,R0,#0xF8
        CMP      R0,#+240
        BNE.N    ??uncompress_hdr_hc06_18
//  936       uint8_t checksum_compressed;
//  937       SICSLOWPAN_IP_BUF->proto = UIP_PROTO_UDP;
        MOVS     R0,#+17
        STRB     R0,[R6, #+6]
//  938       checksum_compressed = *hc06_ptr & SICSLOWPAN_NHC_UDP_CHECKSUMC;
        LDRB     R2,[R1, #+0]
        AND      R0,R2,#0x4
//  939       PRINTF("IPHC: Incoming header value: %i\n", *hc06_ptr);
//  940       switch(*hc06_ptr & SICSLOWPAN_NHC_UDP_CS_P_11) {
        AND      R2,R2,#0xF3
        CMP      R2,#+240
        BEQ.N    ??uncompress_hdr_hc06_19
        BCC.N    ??uncompress_hdr_hc06_9
        CMP      R2,#+242
        BEQ.N    ??uncompress_hdr_hc06_20
        BCC.N    ??uncompress_hdr_hc06_21
        CMP      R2,#+243
        BEQ.N    ??uncompress_hdr_hc06_22
//  941       case SICSLOWPAN_NHC_UDP_CS_P_00:
//  942 	/* 1 byte for NHC, 4 byte for ports, 2 bytes chksum */
//  943 	memcpy(&SICSLOWPAN_UDP_BUF->srcport, hc06_ptr + 1, 2);
//  944 	memcpy(&SICSLOWPAN_UDP_BUF->destport, hc06_ptr + 3, 2);
//  945 	PRINTF("IPHC: Uncompressed UDP ports (ptr+5): %x, %x\n",
//  946 	       UIP_HTONS(SICSLOWPAN_UDP_BUF->srcport), UIP_HTONS(SICSLOWPAN_UDP_BUF->destport));
//  947 	hc06_ptr += 5;
//  948 	break;
//  949 
//  950       case SICSLOWPAN_NHC_UDP_CS_P_01:
//  951         /* 1 byte for NHC + source 16bit inline, dest = 0xF0 + 8 bit inline */
//  952 	PRINTF("IPHC: Decompressing destination\n");
//  953 	memcpy(&SICSLOWPAN_UDP_BUF->srcport, hc06_ptr + 1, 2);
//  954 	SICSLOWPAN_UDP_BUF->destport = UIP_HTONS(SICSLOWPAN_UDP_8_BIT_PORT_MIN + (*(hc06_ptr + 3)));
//  955 	PRINTF("IPHC: Uncompressed UDP ports (ptr+4): %x, %x\n",
//  956 	       UIP_HTONS(SICSLOWPAN_UDP_BUF->srcport), UIP_HTONS(SICSLOWPAN_UDP_BUF->destport));
//  957 	hc06_ptr += 4;
//  958 	break;
//  959 
//  960       case SICSLOWPAN_NHC_UDP_CS_P_10:
//  961         /* 1 byte for NHC + source = 0xF0 + 8bit inline, dest = 16 bit inline*/
//  962 	PRINTF("IPHC: Decompressing source\n");
//  963 	SICSLOWPAN_UDP_BUF->srcport = UIP_HTONS(SICSLOWPAN_UDP_8_BIT_PORT_MIN +
//  964 					    (*(hc06_ptr + 1)));
//  965 	memcpy(&SICSLOWPAN_UDP_BUF->destport, hc06_ptr + 2, 2);
//  966 	PRINTF("IPHC: Uncompressed UDP ports (ptr+4): %x, %x\n",
//  967 	       UIP_HTONS(SICSLOWPAN_UDP_BUF->srcport), UIP_HTONS(SICSLOWPAN_UDP_BUF->destport));
//  968 	hc06_ptr += 4;
//  969 	break;
//  970 
//  971       case SICSLOWPAN_NHC_UDP_CS_P_11:
//  972 	/* 1 byte for NHC, 1 byte for ports */
//  973 	SICSLOWPAN_UDP_BUF->srcport = UIP_HTONS(SICSLOWPAN_UDP_4_BIT_PORT_MIN +
//  974 					    (*(hc06_ptr + 1) >> 4));
//  975 	SICSLOWPAN_UDP_BUF->destport = UIP_HTONS(SICSLOWPAN_UDP_4_BIT_PORT_MIN +
//  976 					     ((*(hc06_ptr + 1)) & 0x0F));
//  977 	PRINTF("IPHC: Uncompressed UDP ports (ptr+2): %x, %x\n",
//  978 	       UIP_HTONS(SICSLOWPAN_UDP_BUF->srcport), UIP_HTONS(SICSLOWPAN_UDP_BUF->destport));
//  979 	hc06_ptr += 2;
//  980 	break;
//  981 
//  982       default:
//  983 	PRINTF("sicslowpan uncompress_hdr: error unsupported UDP compression\n");
//  984 	return;
//  985       }
//  986       if(!checksum_compressed) { /* has_checksum, default  */
//  987 	memcpy(&SICSLOWPAN_UDP_BUF->udpchksum, hc06_ptr, 2);
//  988 	hc06_ptr += 2;
//  989 	PRINTF("IPHC: sicslowpan uncompress_hdr: checksum included\n");
//  990       } else {
//  991 	PRINTF("IPHC: sicslowpan uncompress_hdr: checksum *NOT* included\n");
//  992       }
//  993       uncomp_hdr_len += UIP_UDPH_LEN;
//  994     }
//  995 #ifdef SICSLOWPAN_NH_COMPRESSOR
//  996     else {
//  997       hc06_ptr += SICSLOWPAN_NH_COMPRESSOR.uncompress(hc06_ptr, sicslowpan_buf, &uncomp_hdr_len);
//  998     }
//  999 #endif
// 1000   }
// 1001 
// 1002   packetbuf_hdr_len = hc06_ptr - packetbuf_ptr;
// 1003   
// 1004   /* IP length field. */
// 1005   if(ip_len == 0) {
// 1006     int len = packetbuf_datalen() - packetbuf_hdr_len + uncomp_hdr_len - UIP_IPH_LEN;
// 1007     /* This is not a fragmented packet */
// 1008     SICSLOWPAN_IP_BUF->len[0] = len >> 8;
// 1009     SICSLOWPAN_IP_BUF->len[1] = len & 0x00FF;
// 1010   } else {
// 1011     /* This is a 1st fragment */
// 1012     SICSLOWPAN_IP_BUF->len[0] = (ip_len - UIP_IPH_LEN) >> 8;
// 1013     SICSLOWPAN_IP_BUF->len[1] = (ip_len - UIP_IPH_LEN) & 0x00FF;
// 1014   }
// 1015   
// 1016   /* length field in UDP header */
// 1017   if(SICSLOWPAN_IP_BUF->proto == UIP_PROTO_UDP) {
// 1018     memcpy(&SICSLOWPAN_UDP_BUF->udplen, &SICSLOWPAN_IP_BUF->len[0], 2);
// 1019   }
// 1020 
// 1021   return;
        POP      {R0,R4-R9,PC}
??uncompress_hdr_hc06_19:
        ADD      R2,R6,#+40
        LDRB     R3,[R1, #+1]!
        STRB     R3,[R2, #+0]
        LDRB     R3,[R1, #+1]
        LDR      R1,[R5, #+36]
        STRB     R3,[R2, #+1]
        ADD      R2,R6,#+42
        LDRB     R3,[R1, #+3]!
        STRB     R3,[R2, #+0]
        LDRB     R3,[R1, #+1]
        LDR      R1,[R5, #+36]
        STRB     R3,[R2, #+1]
        ADDS     R1,R1,#+5
??uncompress_hdr_hc06_23:
        STR      R1,[R5, #+36]
        CBNZ.N   R0,??uncompress_hdr_hc06_24
        LDR      R0,[R5, #+36]
        LDRB     R2,[R0, #0]
        ADD      R1,R6,#+46
        STRB     R2,[R1, #+0]
        LDRB     R2,[R0, #+1]
        STRB     R2,[R1, #+1]
        ADDS     R0,R0,#+2
        STR      R0,[R5, #+36]
??uncompress_hdr_hc06_24:
        LDRB     R0,[R5, #+1]
        ADDS     R0,R0,#+8
        STRB     R0,[R5, #+1]
??uncompress_hdr_hc06_18:
        LDR      R0,[R5, #+36]
        LDR      R1,[R5, #+12]
        SUBS     R0,R0,R1
        CMP      R8,#+0
        STRB     R0,[R5, #+0]
        BNE.N    ??uncompress_hdr_hc06_25
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        LDRB     R1,[R5, #+0]
        SUBS     R0,R0,R1
        LDRB     R1,[R5, #+1]
        ADDS     R0,R1,R0
        SUBS     R0,R0,#+40
        ASRS     R1,R0,#+8
        STRB     R1,[R6, #+4]
        B.N      ??uncompress_hdr_hc06_26
??uncompress_hdr_hc06_21:
        ADD      R2,R6,#+40
        LDRB     R3,[R1, #+1]!
        STRB     R3,[R2, #+0]
        LDRB     R3,[R1, #+1]
        LDR      R1,[R5, #+36]
        STRB     R3,[R2, #+1]
        LDRB     R2,[R1, #+3]
        LSLS     R2,R2,#+8
        ORR      R2,R2,#0xF0
        STRH     R2,[R6, #+42]
        ADDS     R1,R1,#+4
        B.N      ??uncompress_hdr_hc06_23
??uncompress_hdr_hc06_20:
        LDRB     R2,[R1, #+1]
        LSLS     R2,R2,#+8
        ORR      R2,R2,#0xF0
        STRH     R2,[R6, #+40]
        ADD      R2,R6,#+42
        LDRB     R3,[R1, #+2]!
        STRB     R3,[R2, #+0]
        LDRB     R3,[R1, #+1]
        LDR      R1,[R5, #+36]
        STRB     R3,[R2, #+1]
        ADDS     R1,R1,#+4
        B.N      ??uncompress_hdr_hc06_23
??uncompress_hdr_hc06_22:
        LDRB     R2,[R1, #+1]
        LSRS     R2,R2,#+4
        SUB      R2,R2,#+3920
        LSLS     R2,R2,#+8
        ORR      R2,R2,#0xF0
        STRH     R2,[R6, #+40]
        LDRB     R2,[R1, #+1]
        AND      R2,R2,#0xF
        SUB      R2,R2,#+3920
        LSLS     R2,R2,#+8
        ORR      R2,R2,#0xF0
        STRH     R2,[R6, #+42]
        ADDS     R1,R1,#+2
        B.N      ??uncompress_hdr_hc06_23
??uncompress_hdr_hc06_25:
        SUB      R0,R8,#+40
        ASRS     R0,R0,#+8
        STRB     R0,[R6, #+4]
        SUB      R0,R8,#+40
??uncompress_hdr_hc06_26:
        STRB     R0,[R6, #+5]
        LDRB     R0,[R6, #+6]
        CMP      R0,#+17
        BNE.N    ??uncompress_hdr_hc06_9
        ADDS     R0,R6,#+4
        ADD      R1,R6,#+44
        LDRB     R2,[R0, #0]
        STRB     R2,[R1, #+0]
        LDRB     R2,[R0, #+1]
        STRB     R2,[R1, #+1]
??uncompress_hdr_hc06_9:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock7
// 1022 }
// 1023 /** @} */
// 1024 #endif /* SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC06 */
// 1025 
// 1026 
// 1027 #if SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC1
// 1028 /*--------------------------------------------------------------------*/
// 1029 /** \name HC1 compression and uncompression functions
// 1030  *  @{                                                                */
// 1031 /*--------------------------------------------------------------------*/
// 1032 /**
// 1033  * \brief Compress IP/UDP header using HC1 and HC_UDP
// 1034  *
// 1035  * This function is called by the 6lowpan code to create a compressed
// 1036  * 6lowpan packet in the packetbuf buffer from a full IPv6 packet in the
// 1037  * uip_buf buffer.
// 1038  *
// 1039  *
// 1040  * If we can compress everything, we use HC1 dispatch, if not we use
// 1041  * IPv6 dispatch.\n
// 1042  * We can compress everything if:
// 1043  *   - IP version is
// 1044  *   - Flow label and traffic class are 0
// 1045  *   - Both src and dest ip addresses are link local
// 1046  *   - Both src and dest interface ID are recoverable from lower layer
// 1047  *     header
// 1048  *   - Next header is either ICMP, UDP or TCP
// 1049  * Moreover, if next header is UDP, we try to compress it using HC_UDP.
// 1050  * This is feasible is both ports are between F0B0 and F0B0 + 15\n\n
// 1051  *
// 1052  * Resulting header structure:
// 1053  * - For ICMP, TCP, non compressed UDP\n
// 1054  *   HC1 encoding = 11111010 (UDP) 11111110 (TCP) 11111100 (ICMP)\n
// 1055  * \verbatim
// 1056  *                      1                   2                   3
// 1057  * 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
// 1058  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
// 1059  * | LoWPAN HC1 Dsp | HC1 encoding  | IPv6 Hop limit| L4 hdr + data|
// 1060  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
// 1061  * | ...
// 1062  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
// 1063  * \endverbatim
// 1064  *
// 1065  * - For compressed UDP
// 1066  *   HC1 encoding = 11111011, HC_UDP encoding = 11100000\n
// 1067  * \verbatim
// 1068  *                      1                   2                   3
// 1069  * 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
// 1070  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
// 1071  * | LoWPAN HC1 Dsp| HC1 encoding  |  HC_UDP encod.| IPv6 Hop limit|
// 1072  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
// 1073  * | src p.| dst p.| UDP checksum                  | L4 data...
// 1074  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
// 1075  * \endverbatim
// 1076  *
// 1077  * \param link_destaddr L2 destination address, needed to compress the
// 1078  * IP destination field
// 1079  */
// 1080 static void
// 1081 compress_hdr_hc1(linkaddr_t *link_destaddr)
// 1082 {
// 1083   /*
// 1084    * Check if all the assumptions for full compression
// 1085    * are valid :
// 1086    */
// 1087   if(UIP_IP_BUF->vtc != 0x60 ||
// 1088      UIP_IP_BUF->tcflow != 0 ||
// 1089      UIP_IP_BUF->flow != 0 ||
// 1090      !uip_is_addr_link_local(&UIP_IP_BUF->srcipaddr) ||
// 1091      !uip_is_addr_mac_addr_based(&UIP_IP_BUF->srcipaddr, &uip_lladdr) ||
// 1092      !uip_is_addr_link_local(&UIP_IP_BUF->destipaddr) ||
// 1093      !uip_is_addr_mac_addr_based(&UIP_IP_BUF->destipaddr,
// 1094                                  (uip_lladdr_t *)link_destaddr) ||
// 1095      (UIP_IP_BUF->proto != UIP_PROTO_ICMP6 &&
// 1096       UIP_IP_BUF->proto != UIP_PROTO_UDP &&
// 1097       UIP_IP_BUF->proto != UIP_PROTO_TCP))
// 1098   {
// 1099     /*
// 1100      * IPV6 DISPATCH
// 1101      * Something cannot be compressed, use IPV6 DISPATCH,
// 1102      * compress nothing, copy IPv6 header in packetbuf buffer
// 1103      */
// 1104     *packetbuf_ptr = SICSLOWPAN_DISPATCH_IPV6;
// 1105     packetbuf_hdr_len += SICSLOWPAN_IPV6_HDR_LEN;
// 1106     memcpy(packetbuf_ptr + packetbuf_hdr_len, UIP_IP_BUF, UIP_IPH_LEN);
// 1107     packetbuf_hdr_len += UIP_IPH_LEN;
// 1108     uncomp_hdr_len += UIP_IPH_LEN;
// 1109   } else {
// 1110     /*
// 1111      * HC1 DISPATCH
// 1112      * maximum compresssion:
// 1113      * All fields in the IP header but Hop Limit are elided
// 1114      * If next header is UDP, we compress UDP header using HC2
// 1115      */
// 1116     PACKETBUF_HC1_PTR[PACKETBUF_HC1_DISPATCH] = SICSLOWPAN_DISPATCH_HC1;
// 1117     uncomp_hdr_len += UIP_IPH_LEN;
// 1118     switch(UIP_IP_BUF->proto) {
// 1119       case UIP_PROTO_ICMP6:
// 1120         /* HC1 encoding and ttl */
// 1121         PACKETBUF_HC1_PTR[PACKETBUF_HC1_ENCODING] = 0xFC;
// 1122         PACKETBUF_HC1_PTR[PACKETBUF_HC1_TTL] = UIP_IP_BUF->ttl;
// 1123         packetbuf_hdr_len += SICSLOWPAN_HC1_HDR_LEN;
// 1124         break;
// 1125 #if UIP_CONF_TCP
// 1126       case UIP_PROTO_TCP:
// 1127         /* HC1 encoding and ttl */
// 1128         PACKETBUF_HC1_PTR[PACKETBUF_HC1_ENCODING] = 0xFE;
// 1129         PACKETBUF_HC1_PTR[PACKETBUF_HC1_TTL] = UIP_IP_BUF->ttl;
// 1130         packetbuf_hdr_len += SICSLOWPAN_HC1_HDR_LEN;
// 1131         break;
// 1132 #endif /* UIP_CONF_TCP */
// 1133 #if UIP_CONF_UDP
// 1134       case UIP_PROTO_UDP:
// 1135         /*
// 1136          * try to compress UDP header (we do only full compression).
// 1137          * This is feasible if both src and dest ports are between
// 1138          * SICSLOWPAN_UDP_PORT_MIN and SICSLOWPAN_UDP_PORT_MIN + 15
// 1139          */
// 1140         PRINTF("local/remote port %u/%u\n",UIP_UDP_BUF->srcport,UIP_UDP_BUF->destport);
// 1141         if(UIP_HTONS(UIP_UDP_BUF->srcport)  >= SICSLOWPAN_UDP_PORT_MIN &&
// 1142            UIP_HTONS(UIP_UDP_BUF->srcport)  <  SICSLOWPAN_UDP_PORT_MAX &&
// 1143            UIP_HTONS(UIP_UDP_BUF->destport) >= SICSLOWPAN_UDP_PORT_MIN &&
// 1144            UIP_HTONS(UIP_UDP_BUF->destport) <  SICSLOWPAN_UDP_PORT_MAX) {
// 1145           /* HC1 encoding */
// 1146           PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_HC1_ENCODING] = 0xFB;
// 1147         
// 1148           /* HC_UDP encoding, ttl, src and dest ports, checksum */
// 1149           PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_UDP_ENCODING] = 0xE0;
// 1150           PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_TTL] = UIP_IP_BUF->ttl;
// 1151 
// 1152           PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_PORTS] =
// 1153                (uint8_t)((UIP_HTONS(UIP_UDP_BUF->srcport) -
// 1154                        SICSLOWPAN_UDP_PORT_MIN) << 4) +
// 1155                (uint8_t)((UIP_HTONS(UIP_UDP_BUF->destport) - SICSLOWPAN_UDP_PORT_MIN));
// 1156           memcpy(&PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_CHKSUM], &UIP_UDP_BUF->udpchksum, 2);
// 1157           packetbuf_hdr_len += SICSLOWPAN_HC1_HC_UDP_HDR_LEN;
// 1158           uncomp_hdr_len += UIP_UDPH_LEN;
// 1159         } else {
// 1160           /* HC1 encoding and ttl */
// 1161           PACKETBUF_HC1_PTR[PACKETBUF_HC1_ENCODING] = 0xFA;
// 1162           PACKETBUF_HC1_PTR[PACKETBUF_HC1_TTL] = UIP_IP_BUF->ttl;
// 1163           packetbuf_hdr_len += SICSLOWPAN_HC1_HDR_LEN;
// 1164         }
// 1165         break;
// 1166 #endif /*UIP_CONF_UDP*/
// 1167     }
// 1168   }
// 1169   return;
// 1170 }
// 1171 
// 1172 /*--------------------------------------------------------------------*/
// 1173 /**
// 1174  * \brief Uncompress HC1 (and HC_UDP) headers and put them in
// 1175  * sicslowpan_buf
// 1176  *
// 1177  * This function is called by the input function when the dispatch is
// 1178  * HC1.
// 1179  * We %process the packet in the packetbuf buffer, uncompress the header
// 1180  * fields, and copy the result in the sicslowpan buffer.
// 1181  * At the end of the decompression, packetbuf_hdr_len and uncompressed_hdr_len
// 1182  * are set to the appropriate values
// 1183  *
// 1184  * \param ip_len Equal to 0 if the packet is not a fragment (IP length
// 1185  * is then inferred from the L2 length), non 0 if the packet is a 1st
// 1186  * fragment.
// 1187  */
// 1188 static void
// 1189 uncompress_hdr_hc1(uint16_t ip_len)
// 1190 {
// 1191   /* version, traffic class, flow label */
// 1192   SICSLOWPAN_IP_BUF->vtc = 0x60;
// 1193   SICSLOWPAN_IP_BUF->tcflow = 0;
// 1194   SICSLOWPAN_IP_BUF->flow = 0;
// 1195   
// 1196   /* src and dest ip addresses */
// 1197   uip_ip6addr(&SICSLOWPAN_IP_BUF->srcipaddr, 0xfe80, 0, 0, 0, 0, 0, 0, 0);
// 1198   uip_ds6_set_addr_iid(&SICSLOWPAN_IP_BUF->srcipaddr,
// 1199 		       (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
// 1200   uip_ip6addr(&SICSLOWPAN_IP_BUF->destipaddr, 0xfe80, 0, 0, 0, 0, 0, 0, 0);
// 1201   uip_ds6_set_addr_iid(&SICSLOWPAN_IP_BUF->destipaddr,
// 1202 		       (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_RECEIVER));
// 1203   
// 1204   uncomp_hdr_len += UIP_IPH_LEN;
// 1205   
// 1206   /* Next header field */
// 1207   switch(PACKETBUF_HC1_PTR[PACKETBUF_HC1_ENCODING] & 0x06) {
// 1208     case SICSLOWPAN_HC1_NH_ICMP6:
// 1209       SICSLOWPAN_IP_BUF->proto = UIP_PROTO_ICMP6;
// 1210       SICSLOWPAN_IP_BUF->ttl = PACKETBUF_HC1_PTR[PACKETBUF_HC1_TTL];
// 1211       packetbuf_hdr_len += SICSLOWPAN_HC1_HDR_LEN;
// 1212       break;
// 1213 #if UIP_CONF_TCP
// 1214     case SICSLOWPAN_HC1_NH_TCP:
// 1215       SICSLOWPAN_IP_BUF->proto = UIP_PROTO_TCP;
// 1216       SICSLOWPAN_IP_BUF->ttl = PACKETBUF_HC1_PTR[PACKETBUF_HC1_TTL];
// 1217       packetbuf_hdr_len += SICSLOWPAN_HC1_HDR_LEN;
// 1218       break;
// 1219 #endif/* UIP_CONF_TCP */
// 1220 #if UIP_CONF_UDP
// 1221     case SICSLOWPAN_HC1_NH_UDP:
// 1222       SICSLOWPAN_IP_BUF->proto = UIP_PROTO_UDP;
// 1223       if(PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_HC1_ENCODING] & 0x01) {
// 1224         /* UDP header is compressed with HC_UDP */
// 1225         if(PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_UDP_ENCODING] !=
// 1226            SICSLOWPAN_HC_UDP_ALL_C) {
// 1227           PRINTF("sicslowpan (uncompress_hdr), packet not supported");
// 1228           return;
// 1229         }
// 1230         /* IP TTL */
// 1231         SICSLOWPAN_IP_BUF->ttl = PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_TTL];
// 1232         /* UDP ports, len, checksum */
// 1233         SICSLOWPAN_UDP_BUF->srcport =
// 1234           UIP_HTONS(SICSLOWPAN_UDP_PORT_MIN +
// 1235                 (PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_PORTS] >> 4));
// 1236         SICSLOWPAN_UDP_BUF->destport =
// 1237           UIP_HTONS(SICSLOWPAN_UDP_PORT_MIN +
// 1238                 (PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_PORTS] & 0x0F));
// 1239         memcpy(&SICSLOWPAN_UDP_BUF->udpchksum, &PACKETBUF_HC1_HC_UDP_PTR[PACKETBUF_HC1_HC_UDP_CHKSUM], 2);
// 1240         uncomp_hdr_len += UIP_UDPH_LEN;
// 1241         packetbuf_hdr_len += SICSLOWPAN_HC1_HC_UDP_HDR_LEN;
// 1242       } else {
// 1243         packetbuf_hdr_len += SICSLOWPAN_HC1_HDR_LEN;
// 1244       }
// 1245       break;
// 1246 #endif/* UIP_CONF_UDP */
// 1247     default:
// 1248       /* this shouldn't happen, drop */
// 1249       return;
// 1250   }
// 1251   
// 1252   /* IP length field. */
// 1253   if(ip_len == 0) {
// 1254     int len = packetbuf_datalen() - packetbuf_hdr_len + uncomp_hdr_len - UIP_IPH_LEN;
// 1255     /* This is not a fragmented packet */
// 1256     SICSLOWPAN_IP_BUF->len[0] = len >> 8;
// 1257     SICSLOWPAN_IP_BUF->len[1] = len & 0x00FF;
// 1258   } else {
// 1259     /* This is a 1st fragment */
// 1260     SICSLOWPAN_IP_BUF->len[0] = (ip_len - UIP_IPH_LEN) >> 8;
// 1261     SICSLOWPAN_IP_BUF->len[1] = (ip_len - UIP_IPH_LEN) & 0x00FF;
// 1262   }
// 1263   /* length field in UDP header */
// 1264   if(SICSLOWPAN_IP_BUF->proto == UIP_PROTO_UDP) {
// 1265     memcpy(&SICSLOWPAN_UDP_BUF->udplen, &SICSLOWPAN_IP_BUF->len[0], 2);
// 1266   }
// 1267   return;
// 1268 }
// 1269 /** @} */
// 1270 #endif /* SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC1 */
// 1271 
// 1272 
// 1273 
// 1274 /*--------------------------------------------------------------------*/
// 1275 /** \name IPv6 dispatch "compression" function
// 1276  * @{                                                                 */
// 1277 /*--------------------------------------------------------------------*/
// 1278 /* \brief Packets "Compression" when only IPv6 dispatch is used
// 1279  *
// 1280  * There is no compression in this case, all fields are sent
// 1281  * inline. We just add the IPv6 dispatch byte before the packet.
// 1282  * \verbatim
// 1283  * 0               1                   2                   3
// 1284  * 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
// 1285  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
// 1286  * | IPv6 Dsp      | IPv6 header and payload ...
// 1287  * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
// 1288  * \endverbatim
// 1289  */
// 1290 static void
// 1291 compress_hdr_ipv6(linkaddr_t *link_destaddr)
// 1292 {
// 1293   *packetbuf_ptr = SICSLOWPAN_DISPATCH_IPV6;
// 1294   packetbuf_hdr_len += SICSLOWPAN_IPV6_HDR_LEN;
// 1295   memcpy(packetbuf_ptr + packetbuf_hdr_len, UIP_IP_BUF, UIP_IPH_LEN);
// 1296   packetbuf_hdr_len += UIP_IPH_LEN;
// 1297   uncomp_hdr_len += UIP_IPH_LEN;
// 1298   return;
// 1299 }
// 1300 /** @} */
// 1301 
// 1302 /*--------------------------------------------------------------------*/
// 1303 /** \name Input/output functions common to all compression schemes
// 1304  * @{                                                                 */
// 1305 /*--------------------------------------------------------------------*/
// 1306 /**
// 1307  * Callback function for the MAC packet sent callback
// 1308  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function packet_sent
        THUMB
// 1309 static void
// 1310 packet_sent(void *ptr, int status, int transmissions)
// 1311 {
packet_sent:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R1
        MOV      R1,R2
// 1312   uip_ds6_link_neighbor_callback(status, transmissions);
        MOV      R0,R4
          CFI FunCall uip_ds6_link_neighbor_callback
        BL       uip_ds6_link_neighbor_callback
// 1313 
// 1314   if(callback != NULL) {
        LDR.W    R5,??DataTable19
        LDR      R1,[R5, #+28]
        CBZ.N    R1,??packet_sent_0
// 1315     callback->output_callback(status);
        LDR      R1,[R1, #+8]
        MOV      R0,R4
          CFI FunCall
        BLX      R1
// 1316   }
// 1317   last_tx_status = status;
??packet_sent_0:
        STR      R4,[R5, #+20]
// 1318 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     packetbuf_hdr_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     uip_aligned_buf
// 1319 /*--------------------------------------------------------------------*/
// 1320 /**
// 1321  * \brief This function is called by the 6lowpan code to send out a
// 1322  * packet.
// 1323  * \param dest the link layer destination address of the packet
// 1324  */
// 1325 static void
// 1326 send_packet(linkaddr_t *dest)
// 1327 {
// 1328   /* Set the link layer destination address for the packet as a
// 1329    * packetbuf attribute. The MAC layer can access the destination
// 1330    * address with the function packetbuf_addr(PACKETBUF_ADDR_RECEIVER).
// 1331    */
// 1332   packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, dest);
// 1333 
// 1334 #if NETSTACK_CONF_BRIDGE_MODE
// 1335   /* This needs to be explicitly set here for bridge mode to work */
// 1336   packetbuf_set_addr(PACKETBUF_ADDR_SENDER,(void*)&uip_lladdr);
// 1337 #endif
// 1338 
// 1339   /* Provide a callback function to receive the result of
// 1340      a packet transmission. */
// 1341   NETSTACK_LLSEC.send(&packet_sent, NULL);
// 1342 
// 1343   /* If we are sending multiple packets in a row, we need to let the
// 1344      watchdog know that we are still alive. */
// 1345   watchdog_periodic();
// 1346 }
// 1347 /*--------------------------------------------------------------------*/
// 1348 /** \brief Take an IP packet and format it to be sent on an 802.15.4
// 1349  *  network using 6lowpan.
// 1350  *  \param localdest The MAC address of the destination
// 1351  *
// 1352  *  The IP packet is initially in uip_buf. Its header is compressed
// 1353  *  and if necessary it is fragmented. The resulting
// 1354  *  packet/fragments are put in packetbuf and delivered to the 802.15.4
// 1355  *  MAC.
// 1356  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function output
        THUMB
// 1357 static uint8_t
// 1358 output(const uip_lladdr_t *localdest)
// 1359 {
output:
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
        MOV      R5,R0
// 1360   int framer_hdrlen;
// 1361   int max_payload;
// 1362 
// 1363   /* The MAC address of the destination of the packet */
// 1364   linkaddr_t dest;
// 1365 
// 1366   /* Number of bytes processed. */
// 1367   uint16_t processed_ip_out_len;
// 1368 
// 1369   /* init */
// 1370   uncomp_hdr_len = 0;
        LDR.W    R4,??DataTable19
        MOVS     R0,#+0
        SUB      SP,SP,#+12
          CFI CFA R13+48
        STRB     R0,[R4, #+1]
// 1371   packetbuf_hdr_len = 0;
        STRB     R0,[R4, #+0]
// 1372 
// 1373   /* reset packetbuf buffer */
// 1374   packetbuf_clear();
          CFI FunCall packetbuf_clear
        BL       packetbuf_clear
// 1375   packetbuf_ptr = packetbuf_dataptr();
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        STR      R0,[R4, #+12]
// 1376 
// 1377   packetbuf_set_attr(PACKETBUF_ATTR_MAX_MAC_TRANSMISSIONS,
// 1378                      SICSLOWPAN_MAX_MAC_TRANSMISSIONS);
        MOVS     R1,#+4
        MOVS     R0,#+9
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
// 1379 
// 1380   if(callback) {
        LDR      R0,[R4, #+28]
        CBZ.N    R0,??output_0
// 1381     /* call the attribution when the callback comes, but set attributes
// 1382        here ! */
// 1383     set_packet_attrs();
          CFI FunCall set_packet_attrs
        BL       set_packet_attrs
// 1384   }
// 1385 
// 1386 #if PACKETBUF_WITH_PACKET_TYPE
// 1387 #define TCP_FIN 0x01
// 1388 #define TCP_ACK 0x10
// 1389 #define TCP_CTL 0x3f
// 1390   /* Set stream mode for all TCP packets, except FIN packets. */
// 1391   if(UIP_IP_BUF->proto == UIP_PROTO_TCP &&
// 1392      (UIP_TCP_BUF->flags & TCP_FIN) == 0 &&
// 1393      (UIP_TCP_BUF->flags & TCP_CTL) != TCP_ACK) {
// 1394     packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE,
// 1395                        PACKETBUF_ATTR_PACKET_TYPE_STREAM);
// 1396   } else if(UIP_IP_BUF->proto == UIP_PROTO_TCP &&
// 1397             (UIP_TCP_BUF->flags & TCP_FIN) == TCP_FIN) {
// 1398     packetbuf_set_attr(PACKETBUF_ATTR_PACKET_TYPE,
// 1399                        PACKETBUF_ATTR_PACKET_TYPE_STREAM_END);
// 1400   }
// 1401 #endif
// 1402 
// 1403   /*
// 1404    * The destination address will be tagged to each outbound
// 1405    * packet. If the argument localdest is NULL, we are sending a
// 1406    * broadcast packet.
// 1407    */
// 1408   if(localdest == NULL) {
??output_0:
        CMP      R5,#+0
        ITE      EQ 
        LDREQ.W  R1,??DataTable19_3
        MOVNE    R1,R5
// 1409     linkaddr_copy(&dest, &linkaddr_null);
// 1410   } else {
// 1411     linkaddr_copy(&dest, (const linkaddr_t *)localdest);
        ADD      R0,SP,#+0
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
// 1412   }
// 1413   
// 1414   PRINTFO("sicslowpan output: sending packet len %d\n", uip_len);
// 1415 
// 1416   if(uip_len >= COMPRESSION_THRESHOLD) {
        LDR.W    R5,??DataTable19_4
        LDRH     R0,[R5, #+0]
        CMP      R0,#+63
        BLT.N    ??output_1
// 1417     /* Try to compress the headers */
// 1418 #if SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC1
// 1419     compress_hdr_hc1(&dest);
// 1420 #endif /* SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC1 */
// 1421 #if SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_IPV6
// 1422     compress_hdr_ipv6(&dest);
// 1423 #endif /* SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_IPV6 */
// 1424 #if SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC06
// 1425     compress_hdr_hc06(&dest);
        ADD      R0,SP,#+0
          CFI FunCall compress_hdr_hc06
        BL       compress_hdr_hc06
        B.N      ??output_2
// 1426 #endif /* SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC06 */
// 1427   } else {
// 1428     compress_hdr_ipv6(&dest);
??output_1:
        LDR      R0,[R4, #+12]
        MOVS     R1,#+65
        STRB     R1,[R0, #+0]
        MOVS     R2,#+40
        LDRB     R1,[R4, #+0]
        ADDS     R3,R1,#+1
        STRB     R3,[R4, #+0]
        UXTB     R3,R3
        LDR.W    R1,??DataTable19_5
        ADDS     R0,R3,R0
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRB     R0,[R4, #+0]
        ADDS     R0,R0,#+40
        STRB     R0,[R4, #+0]
        LDRB     R0,[R4, #+1]
        ADDS     R0,R0,#+40
        STRB     R0,[R4, #+1]
// 1429   }
// 1430   PRINTFO("sicslowpan output: header of len %d\n", packetbuf_hdr_len);
// 1431 
// 1432   /* Calculate NETSTACK_FRAMER's header length, that will be added in the NETSTACK_RDC.
// 1433    * We calculate it here only to make a better decision of whether the outgoing packet
// 1434    * needs to be fragmented or not. */
// 1435 #define USE_FRAMER_HDRLEN 1
// 1436 #if USE_FRAMER_HDRLEN
// 1437   packetbuf_set_addr(PACKETBUF_ADDR_RECEIVER, &dest);
??output_2:
        ADD      R1,SP,#+0
        MOVS     R0,#+19
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
// 1438   framer_hdrlen = NETSTACK_FRAMER.length();
        LDR.W    R0,??DataTable19_6
        LDR      R0,[R0, #+0]
          CFI FunCall
        BLX      R0
// 1439   if(framer_hdrlen < 0) {
// 1440     /* Framing failed, we assume the maximum header length */
// 1441     framer_hdrlen = 21;
// 1442   }
// 1443 #else /* USE_FRAMER_HDRLEN */
// 1444   framer_hdrlen = 21;
// 1445 #endif /* USE_FRAMER_HDRLEN */
// 1446   max_payload = MAC_MAX_PAYLOAD - framer_hdrlen - NETSTACK_LLSEC.get_overhead();
        LDR.W    R7,??DataTable19_7
        CMP      R0,#+0
        IT       MI 
        MOVMI    R0,#+21
        RSB      R6,R0,#+125
        LDR      R0,[R7, #+20]
          CFI FunCall
        BLX      R0
        LDRH     R1,[R5, #+0]
        LDRB     R3,[R4, #+0]
        SUBS     R6,R6,R0
        LDRB     R0,[R4, #+1]
        SUBS     R2,R1,R0
        SUB      R11,R6,R3
        CMP      R11,R2
        BGE.W    ??output_3
// 1447 
// 1448   if((int)uip_len - (int)uncomp_hdr_len > max_payload - (int)packetbuf_hdr_len) {
// 1449 #if SICSLOWPAN_CONF_FRAG
// 1450     struct queuebuf *q;
// 1451     /*
// 1452      * The outbound IPv6 packet is too large to fit into a single 15.4
// 1453      * packet, so we fragment it into multiple packets and send them.
// 1454      * The first fragment contains frag1 dispatch, then
// 1455      * IPv6/HC1/HC06/HC_UDP dispatchs/headers.
// 1456      * The following fragments contain only the fragn dispatch.
// 1457      */
// 1458     int estimated_fragments = ((int)uip_len) / ((int)MAC_MAX_PAYLOAD - SICSLOWPAN_FRAGN_HDR_LEN) + 1;
        MOVS     R0,#+120
        SDIV     R0,R1,R0
        ADD      R11,R0,#+1
// 1459     int freebuf = queuebuf_numfree() - 1;
// 1460     PRINTFO("uip_len: %d, fragments: %d, free bufs: %d\n", uip_len, estimated_fragments, freebuf);
// 1461     if(freebuf < estimated_fragments) {
          CFI FunCall queuebuf_numfree
        BL       queuebuf_numfree
        SUBS     R0,R0,#+1
        CMP      R0,R11
        BLT.W    ??output_4
// 1462       PRINTFO("Dropping packet, not enough free bufs\n");
// 1463       return 0;
// 1464     }
// 1465 
// 1466     PRINTFO("Fragmentation sending packet len %d\n", uip_len);
// 1467 
// 1468     /* Create 1st Fragment */
// 1469     PRINTFO("sicslowpan output: 1rst fragment ");
// 1470 
// 1471     /* move HC1/HC06/IPv6 header */
// 1472     memmove(packetbuf_ptr + SICSLOWPAN_FRAG1_HDR_LEN, packetbuf_ptr, packetbuf_hdr_len);
        LDR      R1,[R4, #+12]
        LDRB     R2,[R4, #+0]
        ADDS     R0,R1,#+4
          CFI FunCall __aeabi_memmove
        BL       __aeabi_memmove
// 1473 
// 1474     /*
// 1475      * FRAG1 dispatch + header
// 1476      * Note that the length is in units of 8 bytes
// 1477      */
// 1478 /*     PACKETBUF_FRAG_BUF->dispatch_size = */
// 1479 /*       uip_htons((SICSLOWPAN_DISPATCH_FRAG1 << 8) | uip_len); */
// 1480     SET16(PACKETBUF_FRAG_PTR, PACKETBUF_FRAG_DISPATCH_SIZE,
// 1481           ((SICSLOWPAN_DISPATCH_FRAG1 << 8) | uip_len));
        LDRH     R1,[R5, #+0]
        LDR      R0,[R4, #+12]
// 1482 /*     PACKETBUF_FRAG_BUF->tag = uip_htons(my_tag); */
// 1483     SET16(PACKETBUF_FRAG_PTR, PACKETBUF_FRAG_TAG, my_tag);
// 1484     my_tag++;
// 1485 
// 1486     /* Copy payload and send */
// 1487     packetbuf_hdr_len += SICSLOWPAN_FRAG1_HDR_LEN;
// 1488     packetbuf_payload_len = (max_payload - packetbuf_hdr_len) & 0xfffffff8;
// 1489     PRINTFO("(len %d, tag %d)\n", packetbuf_payload_len, my_tag);
// 1490     memcpy(packetbuf_ptr + packetbuf_hdr_len,
// 1491            (uint8_t *)UIP_IP_BUF + uncomp_hdr_len, packetbuf_payload_len);
        LDR.W    R11,??DataTable19_5
        LSRS     R1,R1,#+8
        ORR      R1,R1,#0xC0
        STRB     R1,[R0, #+0]
        LDRH     R1,[R5, #+0]
        STRB     R1,[R0, #+1]
        LDRH     R1,[R4, #+6]
        LSRS     R2,R1,#+8
        STRB     R2,[R0, #+2]
        STRB     R1,[R0, #+3]
        ADDS     R1,R1,#+1
        STRH     R1,[R4, #+6]
        LDRB     R1,[R4, #+0]
        ADDS     R3,R1,#+4
        STRB     R3,[R4, #+0]
        UXTB     R3,R3
        SUBS     R1,R6,R3
        BIC      R2,R1,#0x7
        LDRB     R1,[R4, #+1]
        STR      R2,[R4, #+16]
        ADD      R1,R1,R11
        ADDS     R0,R3,R0
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1492     packetbuf_set_datalen(packetbuf_payload_len + packetbuf_hdr_len);
        LDR      R0,[R4, #+16]
        LDRB     R1,[R4, #+0]
        ADDS     R0,R1,R0
        UXTH     R0,R0
          CFI FunCall packetbuf_set_datalen
        BL       packetbuf_set_datalen
// 1493     q = queuebuf_new_from_packetbuf();
          CFI FunCall queuebuf_new_from_packetbuf
        BL       queuebuf_new_from_packetbuf
        MOVS     R8,R0
// 1494     if(q == NULL) {
        BEQ.N    ??output_4
// 1495       PRINTFO("could not allocate queuebuf for first fragment, dropping packet\n");
// 1496       return 0;
// 1497     }
// 1498     send_packet(&dest);
        ADD      R1,SP,#+0
        MOVS     R0,#+19
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
        LDR      R9,[R7, #+8]
        LDR.W    R10,??DataTable19_8
        MOVS     R1,#+0
        MOV      R0,R10
          CFI FunCall
        BLX      R9
          CFI FunCall watchdog_periodic
        BL       watchdog_periodic
// 1499     queuebuf_to_packetbuf(q);
        MOV      R0,R8
          CFI FunCall queuebuf_to_packetbuf
        BL       queuebuf_to_packetbuf
// 1500     queuebuf_free(q);
        MOV      R0,R8
          CFI FunCall queuebuf_free
        BL       queuebuf_free
// 1501     q = NULL;
// 1502 
// 1503     /* Check tx result. */
// 1504     if((last_tx_status == MAC_TX_COLLISION) ||
// 1505        (last_tx_status == MAC_TX_ERR) ||
// 1506        (last_tx_status == MAC_TX_ERR_FATAL)) {
        LDR      R0,[R4, #+20]
        CMP      R0,#+1
        ITT      NE 
        CMPNE    R0,#+4
        CMPNE    R0,#+5
        BEQ.N    ??output_4
// 1507       PRINTFO("error in fragment tx, dropping subsequent fragments.\n");
// 1508       return 0;
// 1509     }
// 1510 
// 1511     /* set processed_ip_out_len to what we already sent from the IP payload*/
// 1512     processed_ip_out_len = packetbuf_payload_len + uncomp_hdr_len;
        LDR      R0,[R4, #+16]
        LDRB     R1,[R4, #+1]
        ADDS     R0,R1,R0
        UXTH     R7,R0
// 1513     
// 1514     /*
// 1515      * Create following fragments
// 1516      * Datagram tag is already in the buffer, we need to set the
// 1517      * FRAGN dispatch and for each fragment, the offset
// 1518      */
// 1519     packetbuf_hdr_len = SICSLOWPAN_FRAGN_HDR_LEN;
        MOVS     R0,#+5
        STRB     R0,[R4, #+0]
// 1520 /*     PACKETBUF_FRAG_BUF->dispatch_size = */
// 1521 /*       uip_htons((SICSLOWPAN_DISPATCH_FRAGN << 8) | uip_len); */
// 1522     SET16(PACKETBUF_FRAG_PTR, PACKETBUF_FRAG_DISPATCH_SIZE,
// 1523           ((SICSLOWPAN_DISPATCH_FRAGN << 8) | uip_len));
        LDRH     R1,[R5, #+0]
        LDR      R0,[R4, #+12]
        LSRS     R1,R1,#+8
        ORR      R1,R1,#0xE0
        STRB     R1,[R0, #+0]
        LDRH     R1,[R5, #+0]
        STRB     R1,[R0, #+1]
// 1524     packetbuf_payload_len = (max_payload - packetbuf_hdr_len) & 0xfffffff8;
        SUBS     R0,R6,#+5
        BIC      R0,R0,#0x7
        STR      R0,[R4, #+16]
// 1525     while(processed_ip_out_len < uip_len) {
??output_5:
        LDRH     R0,[R5, #+0]
        CMP      R7,R0
        BGE.N    ??output_6
// 1526       PRINTFO("sicslowpan output: fragment ");
// 1527       PACKETBUF_FRAG_PTR[PACKETBUF_FRAG_OFFSET] = processed_ip_out_len >> 3;
        LDR      R0,[R4, #+12]
        ASRS     R1,R7,#+3
        STRB     R1,[R0, #+4]
// 1528       
// 1529       /* Copy payload and send */
// 1530       if(uip_len - processed_ip_out_len < packetbuf_payload_len) {
        LDRH     R1,[R5, #+0]
        LDR      R2,[R4, #+16]
        SUBS     R1,R1,R7
        CMP      R1,R2
        IT       LT 
        STRLT    R1,[R4, #+16]
// 1531         /* last fragment */
// 1532         packetbuf_payload_len = uip_len - processed_ip_out_len;
// 1533       }
// 1534       PRINTFO("(offset %d, len %d, tag %d)\n",
// 1535              processed_ip_out_len >> 3, packetbuf_payload_len, my_tag);
// 1536       memcpy(packetbuf_ptr + packetbuf_hdr_len,
// 1537              (uint8_t *)UIP_IP_BUF + processed_ip_out_len, packetbuf_payload_len);
        LDRB     R3,[R4, #+0]
        LDR      R2,[R4, #+16]
        ADD      R1,R7,R11
        ADDS     R0,R3,R0
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1538       packetbuf_set_datalen(packetbuf_payload_len + packetbuf_hdr_len);
        LDR      R0,[R4, #+16]
        LDRB     R1,[R4, #+0]
        ADDS     R0,R1,R0
        UXTH     R0,R0
          CFI FunCall packetbuf_set_datalen
        BL       packetbuf_set_datalen
// 1539       q = queuebuf_new_from_packetbuf();
          CFI FunCall queuebuf_new_from_packetbuf
        BL       queuebuf_new_from_packetbuf
        MOVS     R6,R0
// 1540       if(q == NULL) {
        BEQ.N    ??output_4
// 1541         PRINTFO("could not allocate queuebuf, dropping fragment\n");
// 1542         return 0;
// 1543       }
// 1544       send_packet(&dest);
        ADD      R1,SP,#+0
        MOVS     R0,#+19
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
        MOVS     R1,#+0
        MOV      R0,R10
          CFI FunCall
        BLX      R9
          CFI FunCall watchdog_periodic
        BL       watchdog_periodic
// 1545       queuebuf_to_packetbuf(q);
        MOV      R0,R6
          CFI FunCall queuebuf_to_packetbuf
        BL       queuebuf_to_packetbuf
// 1546       queuebuf_free(q);
        MOV      R0,R6
          CFI FunCall queuebuf_free
        BL       queuebuf_free
// 1547       q = NULL;
// 1548       processed_ip_out_len += packetbuf_payload_len;
        LDR      R0,[R4, #+16]
        ADDS     R0,R0,R7
        UXTH     R7,R0
// 1549 
// 1550       /* Check tx result. */
// 1551       if((last_tx_status == MAC_TX_COLLISION) ||
// 1552          (last_tx_status == MAC_TX_ERR) ||
// 1553          (last_tx_status == MAC_TX_ERR_FATAL)) {
        LDR      R0,[R4, #+20]
        CMP      R0,#+1
        IT       NE 
        CMPNE    R0,#+4
        IT       NE 
        CMPNE    R0,#+5
        BNE.N    ??output_5
// 1554         PRINTFO("error in fragment tx, dropping subsequent fragments.\n");
// 1555         return 0;
??output_4:
        MOVS     R0,#+0
        B.N      ?Subroutine0
// 1556       }
// 1557     }
// 1558 #else /* SICSLOWPAN_CONF_FRAG */
// 1559     PRINTFO("sicslowpan output: Packet too large to be sent without fragmentation support; dropping packet\n");
// 1560     return 0;
// 1561 #endif /* SICSLOWPAN_CONF_FRAG */
// 1562   } else {
// 1563 
// 1564     /*
// 1565      * The packet does not need to be fragmented
// 1566      * copy "payload" and send
// 1567      */
// 1568     memcpy(packetbuf_ptr + packetbuf_hdr_len, (uint8_t *)UIP_IP_BUF + uncomp_hdr_len,
// 1569            uip_len - uncomp_hdr_len);
??output_3:
        LDR.N    R1,??DataTable19_5
        ADDS     R1,R0,R1
        LDR      R0,[R4, #+12]
        ADDS     R0,R3,R0
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1570     packetbuf_set_datalen(uip_len - uncomp_hdr_len + packetbuf_hdr_len);
        LDRH     R0,[R5, #+0]
        LDRB     R1,[R4, #+1]
        SUBS     R0,R0,R1
        LDRB     R1,[R4, #+0]
        ADDS     R0,R1,R0
        UXTH     R0,R0
          CFI FunCall packetbuf_set_datalen
        BL       packetbuf_set_datalen
// 1571     send_packet(&dest);
        ADD      R1,SP,#+0
        MOVS     R0,#+19
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
        LDR      R2,[R7, #+8]
        LDR.N    R0,??DataTable19_8
        MOVS     R1,#+0
          CFI FunCall
        BLX      R2
          CFI FunCall watchdog_periodic
        BL       watchdog_periodic
// 1572   }
// 1573   return 1;
??output_6:
        MOVS     R0,#+1
          CFI EndBlock cfiBlock9
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
// 1574 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls output
          CFI CFA R13+48
          CFI R4 Frame(CFA, -36)
          CFI R5 Frame(CFA, -32)
          CFI R6 Frame(CFA, -28)
          CFI R7 Frame(CFA, -24)
          CFI R8 Frame(CFA, -20)
          CFI R9 Frame(CFA, -16)
          CFI R10 Frame(CFA, -12)
          CFI R11 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        ADD      SP,SP,#+12
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock10
// 1575 
// 1576 /*--------------------------------------------------------------------*/
// 1577 /** \brief Process a received 6lowpan packet.
// 1578  *  \param r The MAC layer
// 1579  *
// 1580  *  The 6lowpan packet is put in packetbuf by the MAC. If its a frag1 or
// 1581  *  a non-fragmented packet we first uncompress the IP header. The
// 1582  *  6lowpan payload and possibly the uncompressed IP header are then
// 1583  *  copied in siclowpan_buf. If the IP packet is complete it is copied
// 1584  *  to uip_buf and the IP layer is called.
// 1585  *
// 1586  * \note We do not check for overlapping sicslowpan fragments
// 1587  * (it is a SHALL in the RFC 4944 and should never happen)
// 1588  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function input
        THUMB
// 1589 static void
// 1590 input(void)
// 1591 {
input:
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
// 1592   /* size of the IP packet (read from fragment) */
// 1593   uint16_t frag_size = 0;
// 1594   /* offset of the fragment in the IP packet */
// 1595   uint8_t frag_offset = 0;
// 1596   uint8_t is_fragment = 0;
// 1597 #if SICSLOWPAN_CONF_FRAG
// 1598   /* tag of the fragment */
// 1599   uint16_t frag_tag = 0;
// 1600   uint8_t first_fragment = 0, last_fragment = 0;
// 1601 #endif /*SICSLOWPAN_CONF_FRAG*/
// 1602 
// 1603   /* init */
// 1604   uncomp_hdr_len = 0;
        LDR.N    R7,??DataTable19
        MOVS     R4,#+0
        STRB     R4,[R7, #+1]
        MOVS     R5,#+0
        MOV      R9,R4
        MOV      R10,R4
        MOV      R6,R4
        MOV      R8,R4
// 1605   packetbuf_hdr_len = 0;
        STRB     R4,[R7, #+0]
// 1606 
// 1607   /* The MAC puts the 15.4 payload inside the packetbuf data buffer */
// 1608   packetbuf_ptr = packetbuf_dataptr();
          CFI FunCall packetbuf_dataptr
        BL       packetbuf_dataptr
        STR      R0,[R7, #+12]
// 1609 
// 1610   /* Save the RSSI of the incoming packet in case the upper layer will
// 1611      want to query us for it later. */
// 1612   last_rssi = (signed short)packetbuf_attr(PACKETBUF_ATTR_RSSI);
        MOVS     R0,#+4
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        SXTH     R0,R0
        STR      R0,[R7, #+24]
// 1613 #if SICSLOWPAN_CONF_FRAG
// 1614   /* if reassembly timed out, cancel it */
// 1615   if(timer_expired(&reass_timer)) {
        ADD      R0,R7,#+48
          CFI FunCall timer_expired
        BL       timer_expired
        CBZ.N    R0,??input_0
// 1616     sicslowpan_len = 0;
        STRH     R4,[R7, #+2]
// 1617     processed_ip_in_len = 0;
        STRH     R4,[R7, #+4]
// 1618   }
// 1619   /*
// 1620    * Since we don't support the mesh and broadcast header, the first header
// 1621    * we look for is the fragmentation header
// 1622    */
// 1623   switch((GET16(PACKETBUF_FRAG_PTR, PACKETBUF_FRAG_DISPATCH_SIZE) & 0xf800) >> 8) {
??input_0:
        LDR      R0,[R7, #+12]
        LDRB     R1,[R0, #+0]
        AND      R2,R1,#0xF8
        CMP      R2,#+192
        BEQ.N    ??input_1
        CMP      R2,#+224
        BEQ.N    ??input_2
        B.N      ??input_3
// 1624     case SICSLOWPAN_DISPATCH_FRAG1:
// 1625       PRINTFI("sicslowpan input: FRAG1 ");
// 1626       frag_offset = 0;
// 1627 /*       frag_size = (uip_ntohs(PACKETBUF_FRAG_BUF->dispatch_size) & 0x07ff); */
// 1628       frag_size = GET16(PACKETBUF_FRAG_PTR, PACKETBUF_FRAG_DISPATCH_SIZE) & 0x07ff;
??input_1:
        LDRB     R2,[R0, #+1]
        ORR      R1,R2,R1, LSL #+8
        LSLS     R5,R1,#+21
// 1629 /*       frag_tag = uip_ntohs(PACKETBUF_FRAG_BUF->tag); */
// 1630       frag_tag = GET16(PACKETBUF_FRAG_PTR, PACKETBUF_FRAG_TAG);
        LDRB     R1,[R0, #+2]
        LDRB     R0,[R0, #+3]
        ORR      R10,R0,R1, LSL #+8
// 1631       PRINTFI("size %d, tag %d, offset %d)\n",
// 1632              frag_size, frag_tag, frag_offset);
// 1633       packetbuf_hdr_len += SICSLOWPAN_FRAG1_HDR_LEN;
        LDRB     R0,[R7, #+0]
        ADDS     R0,R0,#+4
// 1634       /*      printf("frag1 %d %d\n", reass_tag, frag_tag);*/
// 1635       first_fragment = 1;
        MOVS     R6,#+1
        LSRS     R5,R5,#+21
        STRB     R0,[R7, #+0]
// 1636       is_fragment = 1;
        MOV      R9,R6
// 1637       break;
        B.N      ??input_4
// 1638     case SICSLOWPAN_DISPATCH_FRAGN:
// 1639       /*
// 1640        * set offset, tag, size
// 1641        * Offset is in units of 8 bytes
// 1642        */
// 1643       PRINTFI("sicslowpan input: FRAGN ");
// 1644       frag_offset = PACKETBUF_FRAG_PTR[PACKETBUF_FRAG_OFFSET];
??input_2:
        LDRB     R4,[R0, #+4]
// 1645       frag_tag = GET16(PACKETBUF_FRAG_PTR, PACKETBUF_FRAG_TAG);
        LDRB     R2,[R0, #+2]
        LDRB     R3,[R0, #+3]
// 1646       frag_size = GET16(PACKETBUF_FRAG_PTR, PACKETBUF_FRAG_DISPATCH_SIZE) & 0x07ff;
        LDRB     R0,[R0, #+1]
        ORR      R0,R0,R1, LSL #+8
        LSLS     R5,R0,#+21
// 1647       PRINTFI("size %d, tag %d, offset %d)\n",
// 1648              frag_size, frag_tag, frag_offset);
// 1649       packetbuf_hdr_len += SICSLOWPAN_FRAGN_HDR_LEN;
        LDRB     R0,[R7, #+0]
        ADDS     R0,R0,#+5
        ORR      R10,R3,R2, LSL #+8
        LSRS     R5,R5,#+21
        STRB     R0,[R7, #+0]
// 1650 
// 1651       /* If this is the last fragment, we may shave off any extrenous
// 1652          bytes at the end. We must be liberal in what we accept. */
// 1653       PRINTFI("last_fragment?: processed_ip_in_len %d packetbuf_payload_len %d frag_size %d\n",
// 1654               processed_ip_in_len, packetbuf_datalen() - packetbuf_hdr_len, frag_size);
// 1655 
// 1656       if(processed_ip_in_len + packetbuf_datalen() - packetbuf_hdr_len >= frag_size) {
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
// 1657         last_fragment = 1;
// 1658       }
// 1659       is_fragment = 1;
        MOV      R9,#+1
        LDRH     R1,[R7, #+4]
        ADDS     R0,R0,R1
        LDRB     R1,[R7, #+0]
        SUBS     R0,R0,R1
        CMP      R0,R5
        IT       GE 
        MOVGE    R8,#+1
// 1660       break;
        LSLS     R4,R4,#+3
// 1661     default:
// 1662       break;
// 1663   }
// 1664 
// 1665   /* We are currently reassembling a packet, but have just received the first
// 1666    * fragment of another packet. We can either ignore it and hope to receive
// 1667    * the rest of the under-reassembly packet fragments, or we can discard the
// 1668    * previous packet altogether, and start reassembling the new packet.
// 1669    *
// 1670    * We discard the previous packet, and start reassembling the new packet.
// 1671    * This lessens the negative impacts of too high SICSLOWPAN_REASS_MAXAGE.
// 1672    */
// 1673 #define PRIORITIZE_NEW_PACKETS 1
// 1674 #if PRIORITIZE_NEW_PACKETS
// 1675 
// 1676   if(!is_fragment) {
// 1677     /* Prioritize non-fragment packets too. */
// 1678     sicslowpan_len = 0;
// 1679     processed_ip_in_len = 0;
// 1680   } else if(processed_ip_in_len > 0 && first_fragment
// 1681       && !linkaddr_cmp(&frag_sender, packetbuf_addr(PACKETBUF_ADDR_SENDER))) {
??input_4:
        LDRH     R0,[R7, #+4]
        CBZ.N    R0,??input_5
        CBZ.N    R6,??input_6
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R0
        ADD      R0,R7,#+40
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CBNZ.N   R0,??input_7
// 1682     sicslowpan_len = 0;
??input_3:
        MOVS     R0,#+0
        STRH     R0,[R7, #+2]
// 1683     processed_ip_in_len = 0;
        STRH     R0,[R7, #+4]
// 1684   }
// 1685 #endif /* PRIORITIZE_NEW_PACKETS */
// 1686 
// 1687   if(processed_ip_in_len > 0) {
// 1688     /* reassembly is ongoing */
// 1689     /*    printf("frag %d %d\n", reass_tag, frag_tag);*/
// 1690     if((frag_size > 0 &&
// 1691         (frag_size != sicslowpan_len ||
// 1692          reass_tag  != frag_tag ||
// 1693          !linkaddr_cmp(&frag_sender, packetbuf_addr(PACKETBUF_ADDR_SENDER))))  ||
// 1694        frag_size == 0) {
// 1695       /*
// 1696        * the packet is a fragment that does not belong to the packet
// 1697        * being reassembled or the packet is not a fragment.
// 1698        */
// 1699       PRINTFI("sicslowpan input: Dropping 6lowpan packet that is not a fragment of the packet currently being reassembled\n");
// 1700       return;
// 1701     }
// 1702   } else {
// 1703     /*
// 1704      * reassembly is off
// 1705      * start it if we received a fragment
// 1706      */
// 1707     if((frag_size > 0) && (frag_size <= UIP_BUFSIZE)) {
??input_5:
        CBZ.N    R5,??input_8
        MOVW     R0,#+1515
        CMP      R5,R0
        BGE.N    ??input_8
// 1708       /* We are currently not reassembling a packet, but have received a packet fragment
// 1709        * that is not the first one. */
// 1710       if(is_fragment && !first_fragment) {
        EOR      R0,R6,#0x1
        TST      R9,R0
        BEQ.N    ??input_9
// 1711         return;
// 1712       }
// 1713 
// 1714       sicslowpan_len = frag_size;
// 1715       reass_tag = frag_tag;
// 1716       timer_set(&reass_timer, SICSLOWPAN_REASS_MAXAGE * CLOCK_SECOND);
// 1717       PRINTFI("sicslowpan input: INIT FRAGMENTATION (len %d, tag %d)\n",
// 1718              sicslowpan_len, reass_tag);
// 1719       linkaddr_copy(&frag_sender, packetbuf_addr(PACKETBUF_ADDR_SENDER));
// 1720     }
// 1721   }
// 1722 
// 1723   if(packetbuf_hdr_len == SICSLOWPAN_FRAGN_HDR_LEN) {
// 1724     /* this is a FRAGN, skip the header compression dispatch section */
// 1725     goto copypayload;
// 1726   }
// 1727 #endif /* SICSLOWPAN_CONF_FRAG */
// 1728 
// 1729   /* Process next dispatch and headers */
// 1730 #if SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC06
// 1731   if((PACKETBUF_HC1_PTR[PACKETBUF_HC1_DISPATCH] & 0xe0) == SICSLOWPAN_DISPATCH_IPHC) {
// 1732     PRINTFI("sicslowpan input: IPHC\n");
// 1733     uncompress_hdr_hc06(frag_size);
// 1734   } else
// 1735 #endif /* SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC06 */
// 1736     switch(PACKETBUF_HC1_PTR[PACKETBUF_HC1_DISPATCH]) {
// 1737 #if SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC1
// 1738     case SICSLOWPAN_DISPATCH_HC1:
// 1739       PRINTFI("sicslowpan input: HC1\n");
// 1740       uncompress_hdr_hc1(frag_size);
// 1741       break;
// 1742 #endif /* SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC1 */
// 1743     case SICSLOWPAN_DISPATCH_IPV6:
// 1744       PRINTFI("sicslowpan input: IPV6\n");
// 1745       packetbuf_hdr_len += SICSLOWPAN_IPV6_HDR_LEN;
// 1746 
// 1747       /* Put uncompressed IP header in sicslowpan_buf. */
// 1748       memcpy(SICSLOWPAN_IP_BUF, packetbuf_ptr + packetbuf_hdr_len, UIP_IPH_LEN);
// 1749 
// 1750       /* Update uncomp_hdr_len and packetbuf_hdr_len. */
// 1751       packetbuf_hdr_len += UIP_IPH_LEN;
// 1752       uncomp_hdr_len += UIP_IPH_LEN;
// 1753       break;
// 1754     default:
// 1755       /* unknown header */
// 1756       PRINTFI("sicslowpan input: unknown dispatch: %u\n",
// 1757              PACKETBUF_HC1_PTR[PACKETBUF_HC1_DISPATCH]);
// 1758       return;
// 1759   }
// 1760    
// 1761     
// 1762 #if SICSLOWPAN_CONF_FRAG
// 1763  copypayload:
// 1764 #endif /*SICSLOWPAN_CONF_FRAG*/
// 1765   /*
// 1766    * copy "payload" from the packetbuf buffer to the sicslowpan_buf
// 1767    * if this is a first fragment or not fragmented packet,
// 1768    * we have already copied the compressed headers, uncomp_hdr_len
// 1769    * and packetbuf_hdr_len are non 0, frag_offset is.
// 1770    * If this is a subsequent fragment, this is the contrary.
// 1771    */
// 1772   if(packetbuf_datalen() < packetbuf_hdr_len) {
// 1773     PRINTF("SICSLOWPAN: packet dropped due to header > total packet\n");
// 1774     return;
// 1775   }
// 1776   packetbuf_payload_len = packetbuf_datalen() - packetbuf_hdr_len;
// 1777 
// 1778   /* Sanity-check size of incoming packet to avoid buffer overflow */
// 1779   {
// 1780     int req_size = UIP_LLH_LEN + uncomp_hdr_len + (uint16_t)(frag_offset << 3)
// 1781         + packetbuf_payload_len;
// 1782     if(req_size > sizeof(sicslowpan_buf)) {
// 1783       PRINTF(
// 1784           "SICSLOWPAN: packet dropped, minimum required SICSLOWPAN_IP_BUF size: %d+%d+%d+%d=%d (current size: %d)\n",
// 1785           UIP_LLH_LEN, uncomp_hdr_len, (uint16_t)(frag_offset << 3),
// 1786           packetbuf_payload_len, req_size, sizeof(sicslowpan_buf));
// 1787       return;
// 1788     }
// 1789   }
// 1790 
// 1791   memcpy((uint8_t *)SICSLOWPAN_IP_BUF + uncomp_hdr_len + (uint16_t)(frag_offset << 3), packetbuf_ptr + packetbuf_hdr_len, packetbuf_payload_len);
// 1792   
// 1793   /* update processed_ip_in_len if fragment, sicslowpan_len otherwise */
// 1794 
// 1795 #if SICSLOWPAN_CONF_FRAG
// 1796   if(frag_size > 0) {
// 1797     /* Add the size of the header only for the first fragment. */
// 1798     if(first_fragment != 0) {
// 1799       processed_ip_in_len += uncomp_hdr_len;
// 1800     }
// 1801     /* For the last fragment, we are OK if there is extrenous bytes at
// 1802        the end of the packet. */
// 1803     if(last_fragment != 0) {
// 1804       processed_ip_in_len = frag_size;
// 1805     } else {
// 1806       processed_ip_in_len += packetbuf_payload_len;
// 1807     }
// 1808     PRINTF("processed_ip_in_len %d, packetbuf_payload_len %d\n", processed_ip_in_len, packetbuf_payload_len);
// 1809 
// 1810   } else {
// 1811 #endif /* SICSLOWPAN_CONF_FRAG */
// 1812     sicslowpan_len = packetbuf_payload_len + uncomp_hdr_len;
// 1813 #if SICSLOWPAN_CONF_FRAG
// 1814   }
// 1815 
// 1816   /*
// 1817    * If we have a full IP packet in sicslowpan_buf, deliver it to
// 1818    * the IP stack
// 1819    */
// 1820   PRINTF("sicslowpan_init processed_ip_in_len %d, sicslowpan_len %d\n",
// 1821          processed_ip_in_len, sicslowpan_len);
// 1822   if(processed_ip_in_len == 0 || (processed_ip_in_len == sicslowpan_len)) {
// 1823     PRINTFI("sicslowpan input: IP packet ready (length %d)\n",
// 1824            sicslowpan_len);
// 1825     memcpy((uint8_t *)UIP_IP_BUF, (uint8_t *)SICSLOWPAN_IP_BUF, sicslowpan_len);
// 1826     uip_len = sicslowpan_len;
// 1827     sicslowpan_len = 0;
// 1828     processed_ip_in_len = 0;
// 1829 #endif /* SICSLOWPAN_CONF_FRAG */
// 1830 
// 1831 #if DEBUG
// 1832     {
// 1833       uint16_t ndx;
// 1834       PRINTF("after decompression %u:", SICSLOWPAN_IP_BUF->len[1]);
// 1835       for (ndx = 0; ndx < SICSLOWPAN_IP_BUF->len[1] + 40; ndx++) {
// 1836         uint8_t data = ((uint8_t *) (SICSLOWPAN_IP_BUF))[ndx];
// 1837         PRINTF("%02x", data);
// 1838       }
// 1839       PRINTF("\n");
// 1840     }
// 1841 #endif
// 1842 
// 1843     /* if callback is set then set attributes and call */
// 1844     if(callback) {
// 1845       set_packet_attrs();
// 1846       callback->input_callback();
// 1847     }
// 1848 
// 1849     tcpip_input();
// 1850 #if SICSLOWPAN_CONF_FRAG
// 1851   }
// 1852 #endif /* SICSLOWPAN_CONF_FRAG */
// 1853 }
        POP      {R4-R10,PC}
??input_7:
        LDRH     R0,[R7, #+4]
        CMP      R0,#+0
        BEQ.N    ??input_5
??input_6:
        CMP      R5,#+0
        BEQ.W    ??input_10
        LDRH     R1,[R7, #+2]
        CMP      R5,R1
        ITT      EQ 
        LDRHEQ   R0,[R7, #+8]
        CMPEQ    R0,R10
        BNE.W    ??input_10
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R0
        ADD      R0,R7,#+40
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CBNZ.N   R0,??input_8
        POP      {R4-R10,PC}
??input_9:
        STRH     R5,[R7, #+2]
        STRH     R10,[R7, #+8]
        MOV      R1,#+8000
        ADD      R0,R7,#+48
          CFI FunCall timer_set
        BL       timer_set
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R0
        ADD      R0,R7,#+40
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
??input_8:
        LDRB     R0,[R7, #+0]
        CMP      R0,#+5
        BEQ.N    ??input_11
        LDR      R3,[R7, #+12]
        LDRB     R1,[R0, R3]
        AND      R2,R1,#0xE0
        CMP      R2,#+96
        BNE.N    ??input_12
        MOV      R0,R5
          CFI FunCall uncompress_hdr_hc06
        BL       uncompress_hdr_hc06
??input_11:
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        LDRB     R1,[R7, #+0]
        CMP      R0,R1
        BCS.N    ??input_13
        POP      {R4-R10,PC}
??input_12:
        CMP      R1,#+65
        BNE.N    ??input_10
        ADDS     R0,R0,#+1
        STRB     R0,[R7, #+0]
        MOVS     R2,#+40
        UXTB     R0,R0
        ADDS     R1,R0,R3
        LDR.N    R0,??DataTable19_2
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRB     R0,[R7, #+0]
        ADDS     R0,R0,#+40
        STRB     R0,[R7, #+0]
        LDRB     R0,[R7, #+1]
        ADDS     R0,R0,#+40
        STRB     R0,[R7, #+1]
        B.N      ??input_11
??input_13:
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        LDRB     R1,[R7, #+0]
        SUBS     R2,R0,R1
        STR      R2,[R7, #+16]
        MOVW     R12,#+1515
        LDRB     R0,[R7, #+1]
        ADDS     R3,R4,R0
        ADDS     R3,R2,R3
        CMP      R3,R12
        BCS.N    ??input_10
        LDR.W    R9,??DataTable19_2
        LDR      R3,[R7, #+12]
        ADD      R0,R0,R9
        ADDS     R1,R1,R3
        ADDS     R0,R4,R0
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRH     R0,[R7, #+4]
        CBZ.N    R5,??input_14
        CBZ.N    R6,??input_15
        LDRB     R1,[R7, #+1]
        ADDS     R0,R1,R0
??input_15:
        CMP      R8,#+0
        ITTE     EQ 
        LDREQ    R1,[R7, #+16]
        ADDEQ    R0,R1,R0
        MOVNE    R0,R5
        B.N      ??input_16
??input_14:
        LDR      R1,[R7, #+16]
        LDRB     R2,[R7, #+1]
        ADDS     R1,R2,R1
        STRH     R1,[R7, #+2]
??input_16:
        STRH     R0,[R7, #+4]
        LDRH     R0,[R7, #+4]
        LDRH     R2,[R7, #+2]
        CMP      R0,#+0
        IT       NE 
        CMPNE    R0,R2
        BNE.N    ??input_10
        MOV      R1,R9
        LDR.N    R0,??DataTable19_5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRH     R0,[R7, #+2]
        LDR.N    R1,??DataTable19_4
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        STRH     R0,[R7, #+2]
        STRH     R0,[R7, #+4]
        LDR      R0,[R7, #+28]
        CBZ.N    R0,??input_17
          CFI FunCall set_packet_attrs
        BL       set_packet_attrs
        LDR      R0,[R7, #+28]
        LDR      R0,[R0, #+4]
          CFI FunCall
        BLX      R0
??input_17:
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
          CFI FunCall tcpip_input
        B.W      tcpip_input
          CFI R4 Frame(CFA, -32)
          CFI R5 Frame(CFA, -28)
          CFI R6 Frame(CFA, -24)
          CFI R7 Frame(CFA, -20)
          CFI R8 Frame(CFA, -16)
          CFI R9 Frame(CFA, -12)
          CFI R10 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+32
??input_10:
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock11
// 1854 /** @} */
// 1855 
// 1856 /*--------------------------------------------------------------------*/
// 1857 /* \brief 6lowpan init function (called by the MAC layer)             */
// 1858 /*--------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function sicslowpan_init
        THUMB
// 1859 void
// 1860 sicslowpan_init(void)
// 1861 {
sicslowpan_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1862   /*
// 1863    * Set out output function as the function to be called from uIP to
// 1864    * send a packet.
// 1865    */
// 1866   tcpip_set_outputfunc(output);
        LDR.N    R0,??DataTable19_9
          CFI FunCall tcpip_set_outputfunc
        BL       tcpip_set_outputfunc
// 1867 
// 1868 #if SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC06
// 1869 /* Preinitialize any address contexts for better header compression
// 1870  * (Saves up to 13 bytes per 6lowpan packet)
// 1871  * The platform contiki-conf.h file can override this using e.g.
// 1872  * #define SICSLOWPAN_CONF_ADDR_CONTEXT_0 {addr_contexts[0].prefix[0]=0xbb;addr_contexts[0].prefix[1]=0xbb;}
// 1873  */
// 1874 #if SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS > 0 
// 1875   addr_contexts[0].used   = 1;
        LDR.N    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1876   addr_contexts[0].number = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
// 1877 #ifdef SICSLOWPAN_CONF_ADDR_CONTEXT_0
// 1878 	SICSLOWPAN_CONF_ADDR_CONTEXT_0;
        MOVS     R1,#+170
        STRB     R1,[R0, #+2]
        STRB     R1,[R0, #+3]
// 1879 #else
// 1880   addr_contexts[0].prefix[0] = 0xaa; 
// 1881   addr_contexts[0].prefix[1] = 0xaa;
// 1882 #endif
// 1883 #endif /* SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS > 0 */
// 1884 
// 1885 #if SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS > 1
// 1886   {
// 1887     int i;
// 1888     for(i = 1; i < SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS; i++) {
// 1889 #ifdef SICSLOWPAN_CONF_ADDR_CONTEXT_1
// 1890 	  if (i==1) {
// 1891 	    addr_contexts[1].used   = 1;
// 1892 		addr_contexts[1].number = 1;
// 1893 		SICSLOWPAN_CONF_ADDR_CONTEXT_1;
// 1894 #ifdef SICSLOWPAN_CONF_ADDR_CONTEXT_2
// 1895       } else if (i==2) {
// 1896 	  	addr_contexts[2].used   = 1;
// 1897 		addr_contexts[2].number = 2;
// 1898 		SICSLOWPAN_CONF_ADDR_CONTEXT_2;
// 1899 #endif
// 1900       } else {
// 1901         addr_contexts[i].used = 0;
// 1902       }	  
// 1903 #else
// 1904       addr_contexts[i].used = 0;
// 1905 #endif /* SICSLOWPAN_CONF_ADDR_CONTEXT_1 */
// 1906 
// 1907     }
// 1908   }
// 1909 #endif /* SICSLOWPAN_CONF_MAX_ADDR_CONTEXTS > 1 */
// 1910 
// 1911 #endif /* SICSLOWPAN_COMPRESSION == SICSLOWPAN_COMPRESSION_HC06 */
// 1912 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     addr_contexts
// 1913 /*--------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function sicslowpan_get_last_rssi
          CFI NoCalls
        THUMB
// 1914 int
// 1915 sicslowpan_get_last_rssi(void)
// 1916 {
// 1917   return last_rssi;
sicslowpan_get_last_rssi:
        LDR.N    R0,??DataTable19
        LDR      R0,[R0, #+24]
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
// 1918 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     packetbuf_hdr_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     uip_lladdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     sicslowpan_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     linkaddr_null

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DC32     framer_802154

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DC32     nullsec_driver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DC32     packet_sent

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DC32     output

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 255, 2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
unc_llconf:
        DC8 15, 40, 34, 32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
unc_ctxconf:
        DC8 0, 136, 130, 128

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
unc_mxconf:
        DC8 15, 37, 35, 33

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
llprefix:
        DC8 254, 128

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ttl_values:
        DC8 0, 1, 64, 255

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "sicslowpan"
        DC8 0
// 1919 /*--------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
// 1920 const struct network_driver sicslowpan_driver = {
sicslowpan_driver:
        DC32 ?_0, sicslowpan_init, input

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1921   "sicslowpan",
// 1922   sicslowpan_init,
// 1923   input
// 1924 };
// 1925 /*--------------------------------------------------------------------*/
// 1926 /** @} */
// 
// 1 584 bytes in section .bss
//    24 bytes in section .rodata
// 3 646 bytes in section .text
// 
// 3 646 bytes of CODE  memory
//    24 bytes of CONST memory
// 1 584 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
