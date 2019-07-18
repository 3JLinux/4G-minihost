///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:46
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-split.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-split.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip-split.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN tcpip_ipv6_output
        EXTERN uip_acc32
        EXTERN uip_add32
        EXTERN uip_aligned_buf
        EXTERN uip_appdata
        EXTERN uip_len
        EXTERN uip_tcpchksum

        PUBLIC uip_split_output
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-split.c
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
//   30  *
//   31  * Author: Adam Dunkels <adam@sics.se>
//   32  *
//   33  */
//   34 
//   35 #include <string.h>
//   36 
//   37 #include "net/ip/uip-split.h"
//   38 #include "net/ip/uip.h"
//   39 #include "net/ipv4/uip-fw.h"
//   40 #include "net/ip/uip_arch.h"
//   41 
//   42 #include "net/ip/tcpip.h"
//   43 
//   44 #define BUF ((struct uip_tcpip_hdr *)&uip_buf[UIP_LLH_LEN])
//   45 
//   46 #ifdef UIP_SPLIT_CONF_SIZE
//   47 #define UIP_SPLIT_SIZE UIP_SPLIT_CONF_SIZE
//   48 #else /* UIP_SPLIT_CONF_SIZE */
//   49 #define UIP_SPLIT_SIZE UIP_TCP_MSS
//   50 #endif /* UIP_SPLIT_CONF_SIZE */
//   51 
//   52 /*-----------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function uip_split_output
        THUMB
//   53 void
//   54 uip_split_output(void)
//   55 {
uip_split_output:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//   56 #if UIP_TCP
//   57   uint16_t tcplen, len1, len2;
//   58 
//   59   /* We only split TCP segments that are larger than or equal to
//   60      UIP_SPLIT_SIZE, which is configurable through
//   61      UIP_SPLIT_CONF_SIZE. */
//   62   if(BUF->proto == UIP_PROTO_TCP &&
//   63      uip_len >= UIP_SPLIT_SIZE + UIP_TCPIP_HLEN) {
        LDR.N    R4,??uip_split_output_0
        LDRB     R0,[R4, #+6]
        CMP      R0,#+6
        BNE.N    ??uip_split_output_1
        LDR.N    R5,??uip_split_output_0+0x4
        LDRH     R0,[R5, #+0]
        CMP      R0,#+124
        BLT.N    ??uip_split_output_1
//   64 
//   65     tcplen = uip_len - UIP_TCPIP_HLEN;
        SUBS     R0,R0,#+60
        UXTH     R0,R0
//   66     /* Split the segment in two. If the original packet length was
//   67        odd, we make the second packet one byte larger. */
//   68     len1 = len2 = tcplen / 2;
        ADD      R1,R0,R0, LSR #+31
        LSLS     R7,R1,#+15
        LSRS     R7,R7,#+16
        MOV      R6,R7
//   69     if(len1 + len2 < tcplen) {
        ADDS     R1,R7,R6
        CMP      R1,R0
//   70       ++len2;
//   71     }
//   72 
//   73     /* Create the first packet. This is done by altering the length
//   74        field of the IP header and updating the checksums. */
//   75     uip_len = len1 + UIP_TCPIP_HLEN;
        ADD      R0,R6,#+60
        STRH     R0,[R5, #+0]
        IT       LT 
        ADDLT    R7,R7,#+1
//   76 #if NETSTACK_CONF_WITH_IPV6
//   77     /* For IPv6, the IP length field does not include the IPv6 IP header
//   78        length. */
//   79     BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
        UXTH     R0,R0
        SUB      R1,R0,#+40
//   80     BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
        SUBS     R0,R0,#+40
        STRB     R0,[R4, #+5]
        ASRS     R1,R1,#+8
//   81 #else /* NETSTACK_CONF_WITH_IPV6 */
//   82     BUF->len[0] = uip_len >> 8;
//   83     BUF->len[1] = uip_len & 0xff;
//   84 #endif /* NETSTACK_CONF_WITH_IPV6 */
//   85     
//   86     /* Recalculate the TCP checksum. */
//   87     BUF->tcpchksum = 0;
        MOVS     R0,#+0
        STRB     R1,[R4, #+4]
        STRH     R0,[R4, #+56]
//   88     BUF->tcpchksum = ~(uip_tcpchksum());
          CFI FunCall uip_tcpchksum
        BL       uip_tcpchksum
        MVNS     R0,R0
        STRH     R0,[R4, #+56]
//   89 
//   90 #if !NETSTACK_CONF_WITH_IPV6
//   91     /* Recalculate the IP checksum. */
//   92     BUF->ipchksum = 0;
//   93     BUF->ipchksum = ~(uip_ipchksum());
//   94 #endif /* NETSTACK_CONF_WITH_IPV6 */
//   95     
//   96     /* Transmit the first packet. */
//   97     /*    uip_fw_output();*/
//   98 #if NETSTACK_CONF_WITH_IPV6
//   99     tcpip_ipv6_output();
          CFI FunCall tcpip_ipv6_output
        BL       tcpip_ipv6_output
//  100 #else
//  101     tcpip_output();
//  102 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  103    
//  104     /* Now, create the second packet. To do this, it is not enough to
//  105        just alter the length field, but we must also update the TCP
//  106        sequence number and point the uip_appdata to a new place in
//  107        memory. This place is detemined by the length of the first
//  108        packet (len1). */
//  109     uip_len = len2 + UIP_TCPIP_HLEN;
        ADD      R0,R7,#+60
        STRH     R0,[R5, #+0]
//  110 #if NETSTACK_CONF_WITH_IPV6
//  111     /* For IPv6, the IP length field does not include the IPv6 IP header
//  112        length. */
//  113     BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
//  114     BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
//  115 #else /* NETSTACK_CONF_WITH_IPV6 */
//  116     BUF->len[0] = uip_len >> 8;
//  117     BUF->len[1] = uip_len & 0xff;
//  118 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  119     
//  120     /*    uip_appdata += len1;*/
//  121     memcpy(uip_appdata, (uint8_t *)uip_appdata + len1, len2);
        UXTH     R2,R7
        UXTH     R0,R0
        SUB      R1,R0,#+40
        SUBS     R0,R0,#+40
        STRB     R0,[R4, #+5]
        ASRS     R1,R1,#+8
        LDR.N    R0,??uip_split_output_0+0x8
        LDR      R0,[R0, #+0]
        STRB     R1,[R4, #+4]
        ADDS     R1,R6,R0
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  122 
//  123     uip_add32(BUF->seqno, len1);
        MOV      R1,R6
        ADD      R0,R4,#+44
          CFI FunCall uip_add32
        BL       uip_add32
//  124     BUF->seqno[0] = uip_acc32[0];
        LDR.N    R0,??uip_split_output_0+0xC
        LDRB     R1,[R0, #+0]
        STRB     R1,[R4, #+44]
//  125     BUF->seqno[1] = uip_acc32[1];
        LDRB     R1,[R0, #+1]
        STRB     R1,[R4, #+45]
//  126     BUF->seqno[2] = uip_acc32[2];
        LDRB     R1,[R0, #+2]
//  127     BUF->seqno[3] = uip_acc32[3];
        LDRB     R0,[R0, #+3]
        STRB     R0,[R4, #+47]
        STRB     R1,[R4, #+46]
//  128     
//  129     /* Recalculate the TCP checksum. */
//  130     BUF->tcpchksum = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+56]
//  131     BUF->tcpchksum = ~(uip_tcpchksum());
          CFI FunCall uip_tcpchksum
        BL       uip_tcpchksum
        MVNS     R0,R0
        STRH     R0,[R4, #+56]
//  132 
//  133 #if !NETSTACK_CONF_WITH_IPV6
//  134     /* Recalculate the IP checksum. */
//  135     BUF->ipchksum = 0;
//  136     BUF->ipchksum = ~(uip_ipchksum());
//  137 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  138 
//  139     /* Transmit the second packet. */
//  140     /*    uip_fw_output();*/
//  141 #if NETSTACK_CONF_WITH_IPV6
//  142     tcpip_ipv6_output();
//  143 #else
//  144     tcpip_output();
//  145 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  146     return;
//  147   }
//  148 #endif /* UIP_TCP */
//  149 
//  150   /*    uip_fw_output();*/
//  151 #if NETSTACK_CONF_WITH_IPV6
//  152      tcpip_ipv6_output();
??uip_split_output_1:
        POP      {R0,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall tcpip_ipv6_output
        B.W      tcpip_ipv6_output
        DATA
??uip_split_output_0:
        DC32     uip_aligned_buf
        DC32     uip_len
        DC32     uip_appdata
        DC32     uip_acc32
          CFI EndBlock cfiBlock0
//  153 #else
//  154      tcpip_output();
//  155 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  156 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  157 
//  158 /*-----------------------------------------------------------------------------*/
// 
// 180 bytes in section .text
// 
// 180 bytes of CODE memory
//
//Errors: none
//Warnings: 1
