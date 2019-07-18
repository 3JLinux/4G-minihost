///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:45
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-icmp6.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-icmp6.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip-icmp6.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memmove
        EXTERN list_add
        EXTERN list_head
        EXTERN list_item_next
        EXTERN list_remove
        EXTERN tcpip_ipv6_output
        EXTERN uip_aligned_buf
        EXTERN uip_ds6_if
        EXTERN uip_ds6_select_src
        EXTERN uip_ext_len
        EXTERN uip_htonl
        EXTERN uip_icmp6chksum
        EXTERN uip_len

        PUBLIC uip_icmp6_echo_reply_callback_add
        PUBLIC uip_icmp6_echo_reply_callback_rm
        PUBLIC uip_icmp6_error_output
        PUBLIC uip_icmp6_init
        PUBLIC uip_icmp6_input
        PUBLIC uip_icmp6_register_input_handler
        PUBLIC uip_icmp6_send
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-icmp6.c
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
//   31  */
//   32 
//   33 /**
//   34  * \addtogroup uip6
//   35  * @{
//   36  */
//   37 
//   38 /**
//   39  * \file
//   40  *    ICMPv6 (RFC 4443) implementation, with message and error handling
//   41  * \author Julien Abeille <jabeille@cisco.com> 
//   42  * \author Mathilde Durvy <mdurvy@cisco.com>
//   43  */
//   44 
//   45 #include <string.h>
//   46 #include "net/ipv6/uip-ds6.h"
//   47 #include "net/ipv6/uip-icmp6.h"
//   48 #include "contiki-default-conf.h"
//   49 
//   50 #define DEBUG 0
//   51 #if DEBUG
//   52 #include <stdio.h>
//   53 #define PRINTF(...) printf(__VA_ARGS__)
//   54 #define PRINT6ADDR(addr) PRINTF(" %02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x:%02x%02x ", ((uint8_t *)addr)[0], ((uint8_t *)addr)[1], ((uint8_t *)addr)[2], ((uint8_t *)addr)[3], ((uint8_t *)addr)[4], ((uint8_t *)addr)[5], ((uint8_t *)addr)[6], ((uint8_t *)addr)[7], ((uint8_t *)addr)[8], ((uint8_t *)addr)[9], ((uint8_t *)addr)[10], ((uint8_t *)addr)[11], ((uint8_t *)addr)[12], ((uint8_t *)addr)[13], ((uint8_t *)addr)[14], ((uint8_t *)addr)[15])
//   55 #define PRINTLLADDR(lladdr) PRINTF(" %02x:%02x:%02x:%02x:%02x:%02x ",lladdr->addr[0], lladdr->addr[1], lladdr->addr[2], lladdr->addr[3],lladdr->addr[4], lladdr->addr[5])
//   56 #else
//   57 #define PRINTF(...)
//   58 #define PRINT6ADDR(addr)
//   59 #endif
//   60 
//   61 //#include "sysprintf.h"  //linzi
//   62 
//   63 #define UIP_IP_BUF                ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
//   64 #define UIP_ICMP_BUF            ((struct uip_icmp_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//   65 #define UIP_ICMP6_ERROR_BUF  ((struct uip_icmp6_error *)&uip_buf[uip_l2_l3_icmp_hdr_len])
//   66 #define UIP_EXT_BUF              ((struct uip_ext_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//   67 #define UIP_FIRST_EXT_BUF        ((struct uip_ext_hdr *)&uip_buf[UIP_LLIPH_LEN])
//   68 
//   69 #if UIP_CONF_IPV6_RPL
//   70 #include "rpl/rpl.h"
//   71 #endif /* UIP_CONF_IPV6_RPL */
//   72 
//   73 /** \brief temporary IP address */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   74 static uip_ipaddr_t tmp_ipaddr;
tmp_ipaddr:
        DS8 16
//   75 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 echo_reply_callback_list_list

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   76 LIST(echo_reply_callback_list);
echo_reply_callback_list_list:
        DS8 4
//   77 /*---------------------------------------------------------------------------*/
//   78 /* List of input handlers */
//   79 LIST(input_handler_list);
//   80 /*---------------------------------------------------------------------------*/
//   81 static uip_icmp6_input_handler_t *
//   82 input_handler_lookup(uint8_t type, uint8_t icode)
//   83 {
//   84   uip_icmp6_input_handler_t *handler = NULL;
//   85 
//   86   for(handler = list_head(input_handler_list);
//   87       handler != NULL;
//   88       handler = list_item_next(handler)) {
//   89     if(handler->type == type &&
//   90        (handler->icode == icode ||
//   91         handler->icode == UIP_ICMP6_HANDLER_CODE_ANY)) {
//   92       return handler;
//   93     }
//   94   }
//   95 
//   96   return NULL;
//   97 }
//   98 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function uip_icmp6_input
        THUMB
//   99 uint8_t
//  100 uip_icmp6_input(uint8_t type, uint8_t icode)
//  101 {
uip_icmp6_input:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  102   uip_icmp6_input_handler_t *handler = input_handler_lookup(type, icode);
        LDR.N    R0,??DataTable8
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_icmp6_input_0
??uip_icmp6_input_1:
          CFI FunCall list_item_next
        BL       list_item_next
??uip_icmp6_input_0:
        CBZ.N    R0,??uip_icmp6_input_2
        LDRB     R1,[R0, #+4]
        CMP      R1,R4
        BNE.N    ??uip_icmp6_input_1
        LDRB     R1,[R0, #+5]
        CMP      R1,R5
        IT       NE 
        CMPNE    R1,#+255
        BNE.N    ??uip_icmp6_input_1
//  103 
//  104   if(handler == NULL) {
//  105     return UIP_ICMP6_INPUT_ERROR;
//  106   }
//  107 
//  108   if(handler->handler == NULL) {
        LDR      R0,[R0, #+8]
        MOVS     R1,R0
        BNE.N    ??uip_icmp6_input_3
??uip_icmp6_input_2:
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
//  109     return UIP_ICMP6_INPUT_ERROR;
//  110   }
//  111 
//  112   handler->handler();
??uip_icmp6_input_3:
          CFI FunCall
        BLX      R0
//  113   return UIP_ICMP6_INPUT_SUCCESS;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//  114 }
//  115 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function uip_icmp6_register_input_handler
        THUMB
//  116 void
//  117 uip_icmp6_register_input_handler(uip_icmp6_input_handler_t *handler)
//  118 {
//  119   list_add(input_handler_list, handler);
uip_icmp6_register_input_handler:
        MOV      R1,R0
        LDR.N    R0,??DataTable8
          CFI FunCall list_add
        B.W      list_add
          CFI EndBlock cfiBlock1
//  120 }
//  121 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function echo_request_input
        THUMB
//  122 static void
//  123 echo_request_input(void)
//  124 {
echo_request_input:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  125 #if UIP_CONF_IPV6_RPL
//  126   uint8_t temp_ext_len;
//  127 #endif /* UIP_CONF_IPV6_RPL */
//  128   /*
//  129    * we send an echo reply. It is trivial if there was no extension
//  130    * headers in the request otherwise we need to remove the extension
//  131    * headers and change a few fields
//  132    */
//  133   PRINTF("Received Echo Request from");
//  134   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  135   PRINTF("to");
//  136   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  137   PRINTF("\n");
//  138 
//  139   /* IP header */
//  140   UIP_IP_BUF->ttl = uip_ds6_if.cur_hop_limit;
        LDR.N    R0,??DataTable8_1
        LDR.N    R4,??DataTable8_2
        LDRB     R0,[R0, #+4]
        STRB     R0,[R4, #+7]
//  141 
//  142   if(uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)){
        LDRB     R0,[R4, #+24]
        CMP      R0,#+255
        BNE.N    ??echo_request_input_0
//  143     uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &UIP_IP_BUF->srcipaddr);
        ADD      R0,R4,#+24
        ADD      R1,R4,#+8
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  144     uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
        ADD      R1,R4,#+24
        ADD      R0,R4,#+8
          CFI FunCall uip_ds6_select_src
        BL       uip_ds6_select_src
        B.N      ??echo_request_input_1
//  145   } else {
//  146     uip_ipaddr_copy(&tmp_ipaddr, &UIP_IP_BUF->srcipaddr);
??echo_request_input_0:
        ADD      R0,R4,#+8
        LDM      R0!,{R1-R3,R6}
        LDR.N    R5,??DataTable8_3
//  147     uip_ipaddr_copy(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
        ADD      R0,R4,#+8
        STM      R5!,{R1-R3,R6}
        SUBS     R5,R5,#+16
        ADD      R1,R4,#+24
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  148     uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &tmp_ipaddr);
        ADD      R0,R4,#+24
        MOV      R1,R5
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  149   }
//  150 
//  151   if(uip_ext_len > 0) {
??echo_request_input_1:
        LDR.N    R5,??DataTable8_4
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??echo_request_input_2
//  152 #if UIP_CONF_IPV6_RPL
//  153     if((temp_ext_len = rpl_invert_header())) {
//  154       /* If there were other extension headers*/
//  155       UIP_FIRST_EXT_BUF->next = UIP_PROTO_ICMP6;
//  156       if (uip_ext_len != temp_ext_len) {
//  157         uip_len -= (uip_ext_len - temp_ext_len);
//  158         UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
//  159         UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
//  160         /* move the echo request payload (starting after the icmp header)
//  161          * to the new location in the reply.
//  162          * The shift is equal to the length of the remaining extension headers present
//  163          * Note: UIP_ICMP_BUF still points to the echo request at this stage
//  164          */
//  165       memmove((uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN - (uip_ext_len - temp_ext_len),
//  166               (uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN,
//  167               (uip_len - UIP_IPH_LEN - temp_ext_len - UIP_ICMPH_LEN));
//  168       }
//  169       uip_ext_len = temp_ext_len;
//  170     } else {
//  171 #endif /* UIP_CONF_IPV6_RPL */
//  172       /* If there were extension headers*/
//  173       UIP_IP_BUF->proto = UIP_PROTO_ICMP6;
        MOVS     R1,#+58
        STRB     R1,[R4, #+6]
//  174       uip_len -= uip_ext_len;
        LDR.N    R1,??DataTable8_5
        LDRH     R2,[R1, #+0]
        SUBS     R2,R2,R0
        STRH     R2,[R1, #+0]
//  175       UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
        UXTH     R2,R2
        MOV      R1,R2
        SUB      R3,R1,#+40
        ASRS     R3,R3,#+8
        STRB     R3,[R4, #+4]
//  176       UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
        SUBS     R2,R2,#+40
        STRB     R2,[R4, #+5]
//  177       /* move the echo request payload (starting after the icmp header)
//  178        * to the new location in the reply.
//  179        * The shift is equal to the length of the extension headers present
//  180        * Note: UIP_ICMP_BUF still points to the echo request at this stage
//  181        */
//  182       memmove((uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN - uip_ext_len,
//  183               (uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN,
//  184               (uip_len - UIP_IPH_LEN - UIP_ICMPH_LEN));
        ADDS     R3,R0,R4
        SUB      R2,R1,#+44
        SUBS     R0,R3,R0
        ADD      R1,R3,#+44
        ADDS     R0,R0,#+44
          CFI FunCall __aeabi_memmove
        BL       __aeabi_memmove
//  185       uip_ext_len = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
//  186 #if UIP_CONF_IPV6_RPL
//  187     }
//  188 #endif /* UIP_CONF_IPV6_RPL */
//  189   }
//  190   /* Below is important for the correctness of UIP_ICMP_BUF and the
//  191    * checksum
//  192    */
//  193 
//  194   /* Note: now UIP_ICMP_BUF points to the beginning of the echo reply */
//  195   UIP_ICMP_BUF->type = ICMP6_ECHO_REPLY;
??echo_request_input_2:
        MOVS     R1,#+129
        LDRB     R0,[R5, #+0]
        ADDS     R0,R0,R4
        STRB     R1,[R0, #+40]
//  196   UIP_ICMP_BUF->icode = 0;
        ADDS     R0,R0,#+40
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//  197   UIP_ICMP_BUF->icmpchksum = 0;
        STRH     R1,[R0, #+2]
//  198   UIP_ICMP_BUF->icmpchksum = ~uip_icmp6chksum();
          CFI FunCall uip_icmp6chksum
        BL       uip_icmp6chksum
        MVNS     R0,R0
        LDRB     R1,[R5, #+0]
        ADDS     R1,R1,R4
        STRH     R0,[R1, #+42]
//  199 
//  200   PRINTF("Sending Echo Reply to");
//  201   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  202   PRINTF("from");
//  203   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  204   PRINTF("\n");
//  205   UIP_STAT(++uip_stat.icmp.sent);
//  206   return;
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//  207 }
//  208 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function uip_icmp6_error_output
        THUMB
//  209 void
//  210 uip_icmp6_error_output(uint8_t type, uint8_t code, uint32_t param) {
uip_icmp6_error_output:
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
//  211 
//  212  /* check if originating packet is not an ICMP error*/
//  213   if (uip_ext_len) {
        LDR.N    R4,??DataTable8_4
        LDR.N    R5,??DataTable8_2
        MOV      R9,R0
        LDRB     R0,[R4, #+0]
        MOV      R10,R1
        MOV      R8,R2
        CBZ.N    R0,??uip_icmp6_error_output_0
//  214     if(UIP_EXT_BUF->next == UIP_PROTO_ICMP6 && UIP_ICMP_BUF->type < 128){
        ADDS     R0,R0,R5
        LDRB     R0,[R0, #+40]
        CMP      R0,#+58
        BNE.N    ??uip_icmp6_error_output_1
        B.N      ??uip_icmp6_error_output_2
//  215       uip_len = 0;
//  216       return;
//  217     }
//  218   } else {
//  219     if(UIP_IP_BUF->proto == UIP_PROTO_ICMP6 && UIP_ICMP_BUF->type < 128){
??uip_icmp6_error_output_0:
        LDRB     R0,[R5, #+6]
        CMP      R0,#+58
        BNE.N    ??uip_icmp6_error_output_1
        LDRB     R0,[R5, #+40]
        CMP      R0,#+128
        BLT.N    ??uip_icmp6_error_output_2
//  220       uip_len = 0;
//  221       return;
//  222     }
//  223   }
//  224 
//  225 #if UIP_CONF_IPV6_RPL
//  226   uip_ext_len = rpl_invert_header();
//  227 #else /* UIP_CONF_IPV6_RPL */
//  228   uip_ext_len = 0;
??uip_icmp6_error_output_1:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  229 #endif /* UIP_CONF_IPV6_RPL */
//  230 
//  231   /* remember data of original packet before shifting */
//  232   uip_ipaddr_copy(&tmp_ipaddr, &UIP_IP_BUF->destipaddr);
        ADD      R0,R5,#+24
        LDM      R0!,{R1-R3,R12}
        LDR.N    R7,??DataTable8_3
//  233 
//  234   uip_len += UIP_IPICMPH_LEN + UIP_ICMP6_ERROR_LEN;
        LDR.N    R6,??DataTable8_5
        STM      R7!,{R1-R3,R12}
        LDRH     R0,[R6, #+0]
        ADDS     R0,R0,#+48
        SUBS     R7,R7,#+16
//  235 
//  236   if(uip_len > UIP_LINK_MTU)
        UXTH     R0,R0
        CMP      R0,#+1280
        IT       GT 
        MOVGT    R0,#+1280
//  237     uip_len = UIP_LINK_MTU;
        STRH     R0,[R6, #+0]
//  238 
//  239   memmove((uint8_t *)UIP_ICMP6_ERROR_BUF + uip_ext_len + UIP_ICMP6_ERROR_LEN,
//  240           (void *)UIP_IP_BUF, uip_len - UIP_IPICMPH_LEN - uip_ext_len - UIP_ICMP6_ERROR_LEN);
        MOV      R1,R5
        LDRH     R0,[R6, #+0]
        SUB      R2,R0,#+48
        ADD      R0,R5,#+48
          CFI FunCall __aeabi_memmove
        BL       __aeabi_memmove
//  241 
//  242   UIP_IP_BUF->vtc = 0x60;
        MOVS     R0,#+96
        STRB     R0,[R5, #+0]
//  243   UIP_IP_BUF->tcflow = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+1]
//  244   UIP_IP_BUF->flow = 0;
        STRH     R0,[R5, #+2]
//  245   if (uip_ext_len) {
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        ITTEE    NE 
        MOVNE    R0,#+58
        STRBNE   R0,[R5, #+40]
        MOVEQ    R0,#+58
        STRBEQ   R0,[R5, #+6]
//  246     UIP_FIRST_EXT_BUF->next = UIP_PROTO_ICMP6;
//  247   } else {
//  248     UIP_IP_BUF->proto = UIP_PROTO_ICMP6;
//  249   }
//  250   UIP_IP_BUF->ttl = uip_ds6_if.cur_hop_limit;
        LDR.N    R0,??DataTable8_1
        LDRB     R0,[R0, #+4]
        STRB     R0,[R5, #+7]
//  251 
//  252   /* the source should not be unspecified nor multicast, the check for
//  253      multicast is done in uip_process */
//  254   if(uip_is_addr_unspecified(&UIP_IP_BUF->srcipaddr)){
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+10]
        CMPEQ    R0,#+0
        BNE.N    ??uip_icmp6_error_output_3
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+14]
        CMPEQ    R0,#+0
        BNE.N    ??uip_icmp6_error_output_3
        LDRH     R0,[R5, #+16]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+18]
        CMPEQ    R0,#+0
        BNE.N    ??uip_icmp6_error_output_3
        LDRH     R0,[R5, #+20]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R5, #+22]
        CMPEQ    R0,#+0
        BEQ.N    ??uip_icmp6_error_output_2
//  255     uip_len = 0;
//  256     return;
//  257   }
//  258 
//  259   uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, &UIP_IP_BUF->srcipaddr);
??uip_icmp6_error_output_3:
        ADD      R0,R5,#+24
        ADD      R1,R5,#+8
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  260 
//  261   if(uip_is_addr_mcast(&tmp_ipaddr)){
        LDRB     R0,[R7, #+0]
        CMP      R0,#+255
        BNE.N    ??uip_icmp6_error_output_4
//  262     if(type == ICMP6_PARAM_PROB && code == ICMP6_PARAMPROB_OPTION){
        CMP      R9,#+4
        IT       EQ 
        CMPEQ    R10,#+2
        BEQ.N    ??uip_icmp6_error_output_4
//  263       uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &tmp_ipaddr);
//  264     } else {
//  265       uip_len = 0;
??uip_icmp6_error_output_2:
        LDR.N    R1,??DataTable8_5
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
//  266       return;
//  267     }
//  268   } else {
//  269 #if UIP_CONF_ROUTER
//  270     /* need to pick a source that corresponds to this node */
//  271     uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &tmp_ipaddr);
//  272 #else
//  273     uip_ipaddr_copy(&UIP_IP_BUF->srcipaddr, &tmp_ipaddr);
//  274 #endif
//  275   }
//  276 
//  277   UIP_ICMP_BUF->type = type;
//  278   UIP_ICMP_BUF->icode = code;
//  279   UIP_ICMP6_ERROR_BUF->param = uip_htonl(param);
//  280   UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
//  281   UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
//  282   UIP_ICMP_BUF->icmpchksum = 0;
//  283   UIP_ICMP_BUF->icmpchksum = ~uip_icmp6chksum();
//  284 
//  285   UIP_STAT(++uip_stat.icmp.sent);
//  286 
//  287   PRINTF("Sending ICMPv6 ERROR message type %d code %d to", type, code);
//  288   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  289   PRINTF("from");
//  290   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  291   PRINTF("\n");
//  292   return;
        POP      {R4-R10,PC}
??uip_icmp6_error_output_4:
        MOV      R1,R7
        ADD      R0,R5,#+8
          CFI FunCall uip_ds6_select_src
        BL       uip_ds6_select_src
        LDRB     R0,[R4, #+0]
        ADDS     R0,R0,R5
        STRB     R9,[R0, #+40]
        STRB     R10,[R0, #+41]
        MOV      R0,R8
          CFI FunCall uip_htonl
        BL       uip_htonl
        LDRB     R1,[R4, #+0]
        ADDS     R1,R1,R5
        STR      R0,[R1, #+44]
        LDRH     R0,[R6, #+0]
        SUB      R2,R0,#+40
        SUBS     R0,R0,#+40
        STRB     R0,[R5, #+5]
        ASRS     R2,R2,#+8
        STRB     R2,[R5, #+4]
        MOVS     R0,#+0
        STRH     R0,[R1, #+42]
          CFI FunCall uip_icmp6chksum
        BL       uip_icmp6chksum
        MVNS     R0,R0
        LDRB     R1,[R4, #+0]
        ADDS     R1,R1,R5
        STRH     R0,[R1, #+42]
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock3
//  293 }
//  294 
//  295 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function uip_icmp6_send
        THUMB
//  296 void
//  297 uip_icmp6_send(const uip_ipaddr_t *dest, int type, int code, int payload_len)
//  298 {
uip_icmp6_send:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R8,R1
//  299 
//  300   UIP_IP_BUF->vtc = 0x60;
        LDR.N    R5,??DataTable8_2
        MOVS     R1,#+96
        STRB     R1,[R5, #+0]
        MOV      R4,R3
//  301   UIP_IP_BUF->tcflow = 0;
        MOVS     R1,#+0
        STRB     R1,[R5, #+1]
//  302   UIP_IP_BUF->flow = 0;
        STRH     R1,[R5, #+2]
        MOV      R6,R2
//  303   UIP_IP_BUF->proto = UIP_PROTO_ICMP6;
        MOVS     R1,#+58
        STRB     R1,[R5, #+6]
//  304   UIP_IP_BUF->ttl = uip_ds6_if.cur_hop_limit;
//  305   UIP_IP_BUF->len[0] = (UIP_ICMPH_LEN + payload_len) >> 8;
//  306   UIP_IP_BUF->len[1] = (UIP_ICMPH_LEN + payload_len) & 0xff;
//  307 
//  308   memcpy(&UIP_IP_BUF->destipaddr, dest, sizeof(*dest));
        MOVS     R2,#+16
        LDR.N    R1,??DataTable8_1
        LDRB     R1,[R1, #+4]
        STRB     R1,[R5, #+7]
        ADDS     R1,R4,#+4
        ASRS     R1,R1,#+8
        STRB     R1,[R5, #+4]
        ADDS     R1,R4,#+4
        STRB     R1,[R5, #+5]
        MOV      R1,R0
        ADD      R0,R5,#+24
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  309   uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
        ADD      R1,R5,#+24
        ADD      R0,R5,#+8
          CFI FunCall uip_ds6_select_src
        BL       uip_ds6_select_src
//  310 
//  311   UIP_ICMP_BUF->type = type;
        LDR.N    R7,??DataTable8_4
        LDRB     R0,[R7, #+0]
        ADDS     R0,R0,R5
//  312   UIP_ICMP_BUF->icode = code;
//  313 
//  314   UIP_ICMP_BUF->icmpchksum = 0;
        MOVS     R1,#+0
        STRB     R8,[R0, #+40]
        ADDS     R0,R0,#+40
        STRB     R6,[R0, #+1]
        STRH     R1,[R0, #+2]
//  315   UIP_ICMP_BUF->icmpchksum = ~ uip_icmp6chksum();
          CFI FunCall uip_icmp6chksum
        BL       uip_icmp6chksum
        MVNS     R0,R0
        LDRB     R1,[R7, #+0]
        ADDS     R1,R1,R5
        STRH     R0,[R1, #+42]
//  316 
//  317   uip_len = UIP_IPH_LEN + UIP_ICMPH_LEN + payload_len;
        ADD      R0,R4,#+44
        LDR.N    R1,??DataTable8_5
        STRH     R0,[R1, #+0]
//  318 
//  319  // MEM_DUMP(0,"ICMP", );
//  320   tcpip_ipv6_output();
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall tcpip_ipv6_output
        B.W      tcpip_ipv6_output
          CFI EndBlock cfiBlock4
//  321 }
//  322 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function echo_reply_input
        THUMB
//  323 static void
//  324 echo_reply_input(void)
//  325 {
echo_reply_input:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  326   int ttl;
//  327   uip_ipaddr_t sender;
//  328 #if UIP_CONF_IPV6_RPL
//  329   uint8_t temp_ext_len;
//  330 #endif /* UIP_CONF_IPV6_RPL */
//  331 
//  332   uip_ipaddr_copy(&sender, &UIP_IP_BUF->srcipaddr);
        LDR.N    R4,??DataTable8_2
        SUB      SP,SP,#+16
          CFI CFA R13+40
        ADD      R1,R4,#+8
        LDM      R1!,{R2,R3,R5,R6}
        ADD      R0,SP,#+0
        STM      R0!,{R2,R3,R5,R6}
//  333   ttl = UIP_IP_BUF->ttl;
//  334 
//  335   if(uip_ext_len > 0) {
        LDR.N    R6,??DataTable8_4
        LDRB     R5,[R4, #+7]
        LDRB     R0,[R6, #+0]
        CBZ.N    R0,??echo_reply_input_0
//  336 #if UIP_CONF_IPV6_RPL
//  337     if((temp_ext_len = rpl_invert_header())) {
//  338       /* If there were other extension headers*/
//  339       UIP_FIRST_EXT_BUF->next = UIP_PROTO_ICMP6;
//  340       if (uip_ext_len != temp_ext_len) {
//  341         uip_len -= (uip_ext_len - temp_ext_len);
//  342         UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
//  343         UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
//  344         /* move the echo reply payload (starting after the icmp
//  345          * header) to the new location in the reply.  The shift is
//  346          * equal to the length of the remaining extension headers
//  347          * present Note: UIP_ICMP_BUF still points to the echo reply
//  348          * at this stage
//  349          */
//  350         memmove((uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN - (uip_ext_len - temp_ext_len),
//  351                 (uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN,
//  352                 (uip_len - UIP_IPH_LEN - temp_ext_len - UIP_ICMPH_LEN));
//  353       }
//  354       uip_ext_len = temp_ext_len;
//  355       uip_len -= uip_ext_len;
//  356     } else {
//  357 #endif /* UIP_CONF_IPV6_RPL */
//  358       /* If there were extension headers*/
//  359       UIP_IP_BUF->proto = UIP_PROTO_ICMP6;
        MOVS     R1,#+58
        STRB     R1,[R4, #+6]
//  360       uip_len -= uip_ext_len;
        LDR.N    R7,??DataTable8_5
        LDRH     R1,[R7, #+0]
        SUBS     R1,R1,R0
        STRH     R1,[R7, #+0]
//  361       UIP_IP_BUF->len[0] = ((uip_len - UIP_IPH_LEN) >> 8);
        UXTH     R1,R1
        MOV      R2,R1
        SUB      R3,R2,#+40
        ASRS     R3,R3,#+8
        STRB     R3,[R4, #+4]
//  362       UIP_IP_BUF->len[1] = ((uip_len - UIP_IPH_LEN) & 0xff);
        SUBS     R1,R1,#+40
        STRB     R1,[R4, #+5]
//  363       /* move the echo reply payload (starting after the icmp header)
//  364        * to the new location in the reply.  The shift is equal to the
//  365        * length of the extension headers present Note: UIP_ICMP_BUF
//  366        * still points to the echo request at this stage
//  367        */
//  368       memmove((uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN - uip_ext_len,
//  369               (uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN,
//  370               (uip_len - UIP_IPH_LEN - UIP_ICMPH_LEN));
        ADDS     R3,R0,R4
        SUBS     R0,R3,R0
        SUBS     R2,R2,#+44
        ADD      R1,R3,#+44
        ADDS     R0,R0,#+44
          CFI FunCall __aeabi_memmove
        BL       __aeabi_memmove
//  371       uip_ext_len = 0;
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
//  372 #if UIP_CONF_IPV6_RPL
//  373     }
//  374 #endif /* UIP_CONF_IPV6_RPL */
//  375   }
//  376 
//  377   /* Call all registered applications to let them know an echo reply
//  378      has been received. */
//  379   {
//  380     struct uip_icmp6_echo_reply_notification *n;
//  381     for(n = list_head(echo_reply_callback_list);
??echo_reply_input_0:
        LDR.N    R0,??DataTable8_6
          CFI FunCall list_head
        BL       list_head
        MOV      R8,R0
        LDR.N    R7,??DataTable8_5
        B.N      ??echo_reply_input_1
//  382         n != NULL;
//  383         n = list_item_next(n)) {
//  384       if(n->callback != NULL) {
??echo_reply_input_2:
        LDR      R12,[R8, #+4]
        CMP      R12,#+0
        BEQ.N    ??echo_reply_input_3
//  385         n->callback(&sender, ttl,
//  386                     (uint8_t *)&UIP_ICMP_BUF[sizeof(struct uip_icmp_hdr)],
//  387                     uip_len - sizeof(struct uip_icmp_hdr) - UIP_IPH_LEN);
        LDRH     R0,[R7, #+0]
        SUB      R3,R0,#+44
        LDRB     R0,[R6, #+0]
        ADDS     R0,R0,R4
        ADD      R2,R0,#+56
        UXTH     R3,R3
        MOV      R1,R5
        ADD      R0,SP,#+0
          CFI FunCall
        BLX      R12
//  388       }
//  389     }
??echo_reply_input_3:
        MOV      R0,R8
          CFI FunCall list_item_next
        BL       list_item_next
        MOV      R8,R0
??echo_reply_input_1:
        CMP      R8,#+0
        BNE.N    ??echo_reply_input_2
//  390   }
//  391 
//  392   uip_len = 0;
        MOVS     R0,#+0
        STRH     R0,[R7, #+0]
//  393   return;
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock5
//  394 }
//  395 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function uip_icmp6_echo_reply_callback_add
        THUMB
//  396 void
//  397 uip_icmp6_echo_reply_callback_add(struct uip_icmp6_echo_reply_notification *n,
//  398                                   uip_icmp6_echo_reply_callback_t c)
//  399 {
//  400   if(n != NULL && c != NULL) {
uip_icmp6_echo_reply_callback_add:
        CBZ.N    R0,??uip_icmp6_echo_reply_callback_add_0
        MOVS     R2,R1
        BEQ.N    ??uip_icmp6_echo_reply_callback_add_0
//  401     n->callback = c;
        STR      R1,[R0, #+4]
//  402     list_add(echo_reply_callback_list, n);
        MOV      R1,R0
        LDR.N    R0,??DataTable8_6
          CFI FunCall list_add
        B.W      list_add
//  403   }
//  404 }
??uip_icmp6_echo_reply_callback_add_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  405 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function uip_icmp6_echo_reply_callback_rm
        THUMB
//  406 void
//  407 uip_icmp6_echo_reply_callback_rm(struct uip_icmp6_echo_reply_notification *n)
//  408 {
//  409   list_remove(echo_reply_callback_list, n);
uip_icmp6_echo_reply_callback_rm:
        MOV      R1,R0
        LDR.N    R0,??DataTable8_6
          CFI FunCall list_remove
        B.W      list_remove
          CFI EndBlock cfiBlock7
//  410 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
input_handler_list_list:
        DATA
        DC32 0H
        DC32 0H
        DC8 128, 255, 0, 0
        DC32 echo_request_input
        DC32 0H
        DC8 129, 255, 0, 0
        DC32 echo_reply_input

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 input_handler_list_list
//  411 /*---------------------------------------------------------------------------*/
//  412 UIP_ICMP6_HANDLER(echo_request_handler, ICMP6_ECHO_REQUEST,
//  413                   UIP_ICMP6_HANDLER_CODE_ANY, echo_request_input);
//  414 UIP_ICMP6_HANDLER(echo_reply_handler, ICMP6_ECHO_REPLY,
//  415                   UIP_ICMP6_HANDLER_CODE_ANY, echo_reply_input);
//  416 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function uip_icmp6_init
        THUMB
//  417 void
//  418 uip_icmp6_init()
//  419 {
uip_icmp6_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  420   /* Register Echo Request and Reply handlers */
//  421   uip_icmp6_register_input_handler(&echo_request_handler);
        LDR.N    R4,??DataTable8
        ADDS     R1,R4,#+4
        MOV      R0,R4
          CFI FunCall list_add
        BL       list_add
//  422   uip_icmp6_register_input_handler(&echo_reply_handler);
        ADD      R1,R4,#+16
        MOV      R0,R4
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall list_add
        B.W      list_add
          CFI EndBlock cfiBlock8
//  423 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     input_handler_list_list

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     tmp_ipaddr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     uip_ext_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     echo_reply_callback_list_list

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  424 /*---------------------------------------------------------------------------*/
//  425 /** @} */
// 
//  20 bytes in section .bss
//  36 bytes in section .data
// 854 bytes in section .text
// 
// 854 bytes of CODE memory
//  56 bytes of DATA memory
//
//Errors: none
//Warnings: 1
