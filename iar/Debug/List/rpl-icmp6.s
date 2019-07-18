///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:16
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-icmp6.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-icmp6.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rpl-icmp6.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN instance_table
        EXTERN memcmp
        EXTERN packetbuf_addr
        EXTERN rpl_add_route
        EXTERN rpl_find_parent
        EXTERN rpl_get_instance
        EXTERN rpl_get_mode
        EXTERN rpl_get_parent_ipaddr
        EXTERN rpl_lock_parent
        EXTERN rpl_mrhof
        EXTERN rpl_process_dio
        EXTERN rpl_reset_dio_timer
        EXTERN stimer_set
        EXTERN uip_aligned_buf
        EXTERN uip_ds6_if
        EXTERN uip_ds6_nbr_add
        EXTERN uip_ds6_nbr_lookup
        EXTERN uip_ds6_route_lookup
        EXTERN uip_ds6_route_nexthop
        EXTERN uip_ext_len
        EXTERN uip_icmp6_register_input_handler
        EXTERN uip_icmp6_send
        EXTERN uip_len

        PUBLIC dao_ack_output
        PUBLIC dao_output
        PUBLIC dao_output_target
        PUBLIC dio_output
        PUBLIC dis_output
        PUBLIC rpl_icmp6_register_handlers
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-icmp6.c
//    1 /*
//    2  * Copyright (c) 2010, Swedish Institute of Computer Science.
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
//   35  *         ICMP6 I/O for RPL control messages.
//   36  *
//   37  * \author Joakim Eriksson <joakime@sics.se>, Nicolas Tsiftes <nvt@sics.se>
//   38  * Contributors: Niclas Finne <nfi@sics.se>, Joel Hoglund <joel@sics.se>,
//   39  *               Mathieu Pouillot <m.pouillot@watteco.com>
//   40  *               George Oikonomou <oikonomou@users.sourceforge.net> (multicast)
//   41  */
//   42 
//   43 /**
//   44  * \addtogroup uip6
//   45  * @{
//   46  */
//   47 
//   48 #include "net/ip/tcpip.h"
//   49 #include "net/ip/uip.h"
//   50 #include "net/ipv6/uip-ds6.h"
//   51 #include "net/ipv6/uip-nd6.h"
//   52 #include "net/ipv6/uip-icmp6.h"
//   53 #include "net/rpl/rpl-private.h"
//   54 #include "net/packetbuf.h"
//   55 #include "net/ipv6/multicast/uip-mcast6.h"
//   56 
//   57 #include <limits.h>
//   58 #include <string.h>
//   59 
//   60 #define DEBUG DEBUG_NONE
//   61 
//   62 #include "net/ip/uip-debug.h"
//   63 
//   64 /*---------------------------------------------------------------------------*/
//   65 #define RPL_DIO_GROUNDED                 0x80
//   66 #define RPL_DIO_MOP_SHIFT                3
//   67 #define RPL_DIO_MOP_MASK                 0x38
//   68 #define RPL_DIO_PREFERENCE_MASK          0x07
//   69 
//   70 #define UIP_IP_BUF       ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
//   71 #define UIP_ICMP_BUF     ((struct uip_icmp_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//   72 #define UIP_ICMP_PAYLOAD ((unsigned char *)&uip_buf[uip_l2_l3_icmp_hdr_len])
//   73 /*---------------------------------------------------------------------------*/
//   74 static void dis_input(void);
//   75 static void dio_input(void);
//   76 static void dao_input(void);
//   77 static void dao_ack_input(void);
//   78 
//   79 /* some debug callbacks useful when debugging RPL networks */
//   80 #ifdef RPL_DEBUG_DIO_INPUT
//   81 void RPL_DEBUG_DIO_INPUT(uip_ipaddr_t *, rpl_dio_t *);
//   82 #endif
//   83 
//   84 #ifdef RPL_DEBUG_DAO_OUTPUT
//   85 void RPL_DEBUG_DAO_OUTPUT(rpl_parent_t *);
//   86 #endif
//   87 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   88 static uint8_t dao_sequence = RPL_LOLLIPOP_INIT;
dao_sequence:
        DATA
        DC8 240
//   89 
//   90 extern rpl_of_t RPL_OF;
//   91 
//   92 #if RPL_CONF_MULTICAST
//   93 static uip_mcast6_route_t *mcast_group;
//   94 #endif
//   95 /*---------------------------------------------------------------------------*/
//   96 /* Initialise RPL ICMPv6 message handlers */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   97 UIP_ICMP6_HANDLER(dis_handler, ICMP6_RPL, RPL_CODE_DIS, dis_input);
dis_handler:
        DATA
        DC32 0H
        DC8 155, 0, 0, 0
        DC32 dis_input
        DC32 0H
        DC8 155, 1, 0, 0
        DC32 dio_input
        DC32 0H
        DC8 155, 2, 0, 0
        DC32 dao_input
        DC32 0H
        DC8 155, 3, 0, 0
        DC32 dao_ack_input
//   98 UIP_ICMP6_HANDLER(dio_handler, ICMP6_RPL, RPL_CODE_DIO, dio_input);
//   99 UIP_ICMP6_HANDLER(dao_handler, ICMP6_RPL, RPL_CODE_DAO, dao_input);
//  100 UIP_ICMP6_HANDLER(dao_ack_handler, ICMP6_RPL, RPL_CODE_DAO_ACK, dao_ack_input);
//  101 /*---------------------------------------------------------------------------*/
//  102 static int
//  103 get_global_addr(uip_ipaddr_t *addr)
//  104 {
//  105   int i;
//  106   int state;
//  107 
//  108   for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
//  109     state = uip_ds6_if.addr_list[i].state;
//  110     if(uip_ds6_if.addr_list[i].isused &&
//  111        (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
//  112       if(!uip_is_addr_link_local(&uip_ds6_if.addr_list[i].ipaddr)) {
//  113         memcpy(addr, &uip_ds6_if.addr_list[i].ipaddr, sizeof(uip_ipaddr_t));
//  114         return 1;
//  115       }
//  116     }
//  117   }
//  118   return 0;
//  119 }
//  120 /*---------------------------------------------------------------------------*/
//  121 static uint32_t
//  122 get32(uint8_t *buffer, int pos)
//  123 {
//  124   return (uint32_t)buffer[pos] << 24 | (uint32_t)buffer[pos + 1] << 16 |
//  125          (uint32_t)buffer[pos + 2] << 8 | buffer[pos + 3];
//  126 }
//  127 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function set32
          CFI NoCalls
        THUMB
//  128 static void
//  129 set32(uint8_t *buffer, int pos, uint32_t value)
//  130 {
//  131   buffer[pos++] = value >> 24;
set32:
        LSRS     R3,R2,#+24
        STRB     R3,[R1, R0]
        ADDS     R1,R1,#+1
//  132   buffer[pos++] = (value >> 16) & 0xff;
        LSRS     R3,R2,#+16
        STRB     R3,[R1, R0]
        ADDS     R1,R1,#+1
//  133   buffer[pos++] = (value >> 8) & 0xff;
        LSRS     R3,R2,#+8
        STRB     R3,[R1, R0]
//  134   buffer[pos++] = value & 0xff;
        ADDS     R0,R1,R0
        STRB     R2,[R0, #+1]
//  135 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  136 /*---------------------------------------------------------------------------*/
//  137 static uint16_t
//  138 get16(uint8_t *buffer, int pos)
//  139 {
//  140   return (uint16_t)buffer[pos] << 8 | buffer[pos + 1];
//  141 }
//  142 /*---------------------------------------------------------------------------*/
//  143 static void
//  144 set16(uint8_t *buffer, int pos, uint16_t value)
//  145 {
//  146   buffer[pos++] = value >> 8;
//  147   buffer[pos++] = value & 0xff;
//  148 }
//  149 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function dis_input
        THUMB
//  150 static void
//  151 dis_input(void)
//  152 {
dis_input:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  153   rpl_instance_t *instance;
//  154   rpl_instance_t *end;
//  155 
//  156   /* DAG Information Solicitation */
//  157   PRINTF("RPL: Received a DIS from ");
//  158   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  159   PRINTF("\n");
//  160 
//  161   for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES;
        LDR.W    R4,??DataTable6
        ADD      R5,R4,#+260
        CMP      R4,R5
        BCS.N    ??dis_input_0
        LDR.W    R6,??DataTable6_1
//  162       instance < end; ++instance) {
//  163     if(instance->used == 1) {
??dis_input_1:
        LDRB     R0,[R4, #+141]
        CMP      R0,#+1
        BNE.N    ??dis_input_2
//  164 #if RPL_LEAF_ONLY
//  165       if(!uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
//  166 	PRINTF("RPL: LEAF ONLY Multicast DIS will NOT reset DIO timer\n");
//  167 #else /* !RPL_LEAF_ONLY */
//  168       if(uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
        LDRB     R0,[R6, #+24]
        CMP      R0,#+255
        BNE.N    ??dis_input_3
//  169         PRINTF("RPL: Multicast DIS => reset DIO timer\n");
//  170         rpl_reset_dio_timer(instance);
        MOV      R0,R4
          CFI FunCall rpl_reset_dio_timer
        BL       rpl_reset_dio_timer
        B.N      ??dis_input_2
//  171       } else {
//  172 #endif /* !RPL_LEAF_ONLY */
//  173         PRINTF("RPL: Unicast DIS, reply to sender\n");
//  174         dio_output(instance, &UIP_IP_BUF->srcipaddr);
??dis_input_3:
        ADD      R1,R6,#+8
        MOV      R0,R4
          CFI FunCall dio_output
        BL       dio_output
//  175       }
//  176     }
//  177   }
??dis_input_2:
        ADD      R4,R4,#+260
        CMP      R4,R5
        BCC.N    ??dis_input_1
//  178   uip_len = 0;
??dis_input_0:
        LDR.W    R1,??DataTable6_2
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
//  179 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1
//  180 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function dis_output
        THUMB
//  181 void
//  182 dis_output(uip_ipaddr_t *addr)
//  183 {
dis_output:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
//  184   unsigned char *buffer;
//  185   uip_ipaddr_t tmpaddr;
//  186 
//  187   /*
//  188    * DAG Information Solicitation  - 2 bytes reserved
//  189    *      0                   1                   2
//  190    *      0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3
//  191    *     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//  192    *     |     Flags     |   Reserved    |   Option(s)...
//  193    *     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
//  194    */
//  195 
//  196   buffer = UIP_ICMP_PAYLOAD;
        LDR.W    R2,??DataTable6_3
        LDR.W    R1,??DataTable6_1
        LDRB     R2,[R2, #+0]
        ADDS     R1,R2,R1
        ADDS     R1,R1,#+44
        SUB      SP,SP,#+20
          CFI CFA R13+24
//  197   buffer[0] = buffer[1] = 0;
        MOVS     R2,#+0
        STRB     R2,[R1, #+1]
        STRB     R2,[R1, #+0]
//  198 
//  199   if(addr == NULL) {
        CBNZ.N   R0,??dis_output_0
//  200     uip_create_linklocal_rplnodes_mcast(&tmpaddr);
        MOVW     R0,#+767
        STRH     R0,[SP, #+0]
        STRH     R2,[SP, #+2]
        STR      R2,[SP, #+4]
        STR      R2,[SP, #+8]
        MOV      R0,#+6656
        STRH     R0,[SP, #+14]
        STRH     R2,[SP, #+12]
//  201     addr = &tmpaddr;
        ADD      R0,SP,#+0
//  202   }
//  203 
//  204   PRINTF("RPL: Sending a DIS to ");
//  205   PRINT6ADDR(addr);
//  206   PRINTF("\n");
//  207 
//  208   uip_icmp6_send(addr, ICMP6_RPL, RPL_CODE_DIS, 2);
??dis_output_0:
        MOVS     R3,#+2
        MOVS     R1,#+155
          CFI FunCall uip_icmp6_send
        BL       uip_icmp6_send
//  209 }
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock2
//  210 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function dio_input
        THUMB
//  211 static void
//  212 dio_input(void)
//  213 {
dio_input:
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
        SUB      SP,SP,#+112
          CFI CFA R13+144
//  214   unsigned char *buffer;
//  215   uint8_t buffer_length;
//  216   rpl_dio_t dio;
//  217   uint8_t subopt_type;
//  218   int i;
//  219   int len;
//  220   uip_ipaddr_t from;
//  221   uip_ds6_nbr_t *nbr;
//  222 
//  223   memset(&dio, 0, sizeof(dio));
        MOVS     R1,#+92
        ADD      R0,SP,#+16
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  224 
//  225   /* Set default values in case the DIO configuration option is missing. */
//  226   dio.dag_intdoubl = RPL_DIO_INTERVAL_DOUBLINGS;
        ADD      R4,SP,#+32
        MOVS     R0,#+8
        STRB     R0,[R4, #+10]
//  227   dio.dag_intmin = RPL_DIO_INTERVAL_MIN;
        MOVS     R0,#+14
        STRB     R0,[R4, #+11]
//  228   dio.dag_redund = RPL_DIO_REDUNDANCY;
        MOVS     R0,#+10
        STRB     R0,[R4, #+12]
//  229   dio.dag_min_hoprankinc = RPL_MIN_HOPRANKINC;
        MOV      R0,#+256
        STRH     R0,[R4, #+18]
//  230   dio.dag_max_rankinc = RPL_MAX_RANKINC;
        MOV      R0,#+1792
        STRH     R0,[R4, #+16]
//  231   dio.ocp = RPL_OF.ocp;
//  232   dio.default_lifetime = RPL_DEFAULT_LIFETIME;
//  233   dio.lifetime_unit = RPL_DEFAULT_LIFETIME_UNIT;
//  234 
//  235   uip_ipaddr_copy(&from, &UIP_IP_BUF->srcipaddr);
        LDR.W    R7,??DataTable6_1
        LDR.W    R0,??DataTable6_4
        LDRH     R0,[R0, #+24]
        STRH     R0,[SP, #+32]
        ADD      R1,R7,#+8
        MOVS     R0,#+255
        STRB     R0,[R4, #+13]
        MOVW     R0,#+65535
        STRH     R0,[R4, #+14]
        ADD      R0,SP,#+0
        LDM      R1!,{R2,R3,R5,R6}
        STM      R0!,{R2,R3,R5,R6}
//  236 
//  237   /* DAG Information Object */
//  238   PRINTF("RPL: Received a DIO from ");
//  239   PRINT6ADDR(&from);
//  240   //PRINT6ADDR_U(&from);
//  241   PRINTF("\n");
//  242 
//  243   if((nbr = uip_ds6_nbr_lookup(&from)) == NULL) {
        ADD      R0,SP,#+0
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
        CBNZ.N   R0,??dio_input_0
//  244     if((nbr = uip_ds6_nbr_add(&from, (uip_lladdr_t *)
//  245                               packetbuf_addr(PACKETBUF_ADDR_SENDER),
//  246                               0, NBR_REACHABLE)) != NULL) {
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R0
        MOVS     R3,#+1
        MOVS     R2,#+0
        ADD      R0,SP,#+0
          CFI FunCall uip_ds6_nbr_add
        BL       uip_ds6_nbr_add
        CMP      R0,#+0
        BEQ.W    ??dio_input_1
//  247       /* set reachable timer */
//  248       stimer_set(&nbr->reachable, UIP_ND6_REACHABLE_TIME / 1000);
        MOV      R1,#+600
        ADDS     R0,R0,#+16
          CFI FunCall stimer_set
        BL       stimer_set
//  249       PRINTF("RPL: Neighbor added to neighbor cache ");
//  250       PRINT6ADDR(&from);
//  251       PRINTF(", ");
//  252       PRINTLLADDR((uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
//  253       PRINTF("\n");
//  254     } else {
//  255       PRINTF("RPL: Out of memory, dropping DIO from ");
//  256       PRINT6ADDR(&from);
//  257       PRINTF(", ");
//  258       PRINTLLADDR((uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
//  259       PRINTF("\n");
//  260       return;
//  261     }
//  262   } else {
//  263     PRINTF("RPL: Neighbor already in neighbor cache\n");
//  264   }
//  265 
//  266   buffer_length = uip_len - uip_l3_icmp_hdr_len;
??dio_input_0:
        LDR.W    R0,??DataTable6_3
        LDR.W    R5,??DataTable6_2
        LDRB     R0,[R0, #+0]
        LDRH     R1,[R5, #+0]
        SUBS     R1,R1,R0
//  267 
//  268   /* Process the DIO base option. */
//  269   i = 0;
//  270   buffer = UIP_ICMP_PAYLOAD;
        ADDS     R0,R0,R7
        ADD      R7,R0,#+44
        SUB      R6,R1,#+44
//  271 //  MEM_DUMP(0, "dioi", buffer, buffer_length);   //linzi
//  272   dio.instance_id = buffer[i++];
        LDRB     R0,[R7, #+0]
        STRB     R0,[R4, #+8]
        UXTB     R6,R6
//  273   dio.version = buffer[i++];
        LDRB     R0,[R7, #+1]
        STRB     R0,[R4, #+7]
//  274   dio.rank = get16(buffer, i);
//  275   i += 2;
//  276 
//  277   PRINTF("RPL: Incoming DIO (id, ver, rank) = (%u,%u,%u)\n",
//  278          (unsigned)dio.instance_id,
//  279          (unsigned)dio.version,
//  280          (unsigned)dio.rank);
//  281 
//  282   dio.grounded = buffer[i] & RPL_DIO_GROUNDED;
//  283   dio.mop = (buffer[i]& RPL_DIO_MOP_MASK) >> RPL_DIO_MOP_SHIFT;
//  284   dio.preference = buffer[i++] & RPL_DIO_PREFERENCE_MASK;
//  285 
//  286   dio.dtsn = buffer[i++];
//  287   /* two reserved bytes */
//  288   i += 2;
//  289 
//  290   memcpy(&dio.dag_id, buffer + i, sizeof(dio.dag_id));
        MOVS     R2,#+16
        LDRB     R0,[R7, #+2]
        LDRB     R1,[R7, #+3]
        ORR      R0,R1,R0, LSL #+8
        STRH     R0,[R4, #+2]
        ADD      R1,R7,#+8
        LDRB     R0,[R7, #+4]
        AND      R0,R0,#0x80
        STRB     R0,[R4, #+4]
        LDRB     R0,[R7, #+4]
        UBFX     R0,R0,#+3,#+3
        STRB     R0,[R4, #+5]
        LDRB     R0,[R7, #+4]
        AND      R0,R0,#0x7
        STRB     R0,[R4, #+6]
        LDRB     R0,[R7, #+5]
        STRB     R0,[R4, #+9]
        ADD      R0,SP,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  291   i += sizeof(dio.dag_id);
        MOVS     R0,#+24
        ADD      R8,SP,#+104
        ADD      R9,SP,#+72
        B.N      ??dio_input_2
//  292 
//  293   PRINTF("RPL: Incoming DIO (dag_id, pref) = (");
//  294   PRINT6ADDR(&dio.dag_id);
//  295   PRINTF(", %u)\n", dio.preference);
//  296 
//  297   /* Check if there are any DIO suboptions. */
//  298   for(; i < buffer_length; i += len) {
//  299     subopt_type = buffer[i];
//  300     if(subopt_type == RPL_OPTION_PAD1) {
//  301       len = 1;
//  302     } else {
//  303       /* Suboption with a two-byte header + payload */
//  304       len = 2 + buffer[i + 1];
//  305     }
//  306 
//  307     if(len + i > buffer_length) {
//  308       PRINTF("RPL: Invalid DIO packet\n");
//  309       RPL_STAT(rpl_stats.malformed_msgs++);
//  310       return;
//  311     }
//  312 
//  313     PRINTF("RPL: DIO option %u, length: %u\n", subopt_type, len - 2);
//  314 
//  315     switch(subopt_type) {
//  316     case RPL_OPTION_DAG_METRIC_CONTAINER:
//  317       if(len < 6) {
//  318         PRINTF("RPL: Invalid DAG MC, len = %d\n", len);
//  319 	RPL_STAT(rpl_stats.malformed_msgs++);
//  320         return;
//  321       }
//  322       dio.mc.type = buffer[i + 2];
//  323       dio.mc.flags = buffer[i + 3] << 1;
//  324       dio.mc.flags |= buffer[i + 4] >> 7;
//  325       dio.mc.aggr = (buffer[i + 4] >> 4) & 0x3;
//  326       dio.mc.prec = buffer[i + 4] & 0xf;
//  327       dio.mc.length = buffer[i + 5];
//  328 
//  329       if(dio.mc.type == RPL_DAG_MC_NONE) {
//  330         /* No metric container: do nothing */
//  331       } else if(dio.mc.type == RPL_DAG_MC_ETX) {
//  332         dio.mc.obj.etx = get16(buffer, i + 6);
//  333 
//  334         PRINTF("RPL: DAG MC: type %u, flags %u, aggr %u, prec %u, length %u, ETX %u\n",
//  335 	       (unsigned)dio.mc.type,
//  336 	       (unsigned)dio.mc.flags,
//  337 	       (unsigned)dio.mc.aggr,
//  338 	       (unsigned)dio.mc.prec,
//  339 	       (unsigned)dio.mc.length,
//  340 	       (unsigned)dio.mc.obj.etx);
//  341       } else if(dio.mc.type == RPL_DAG_MC_ENERGY) {
//  342         dio.mc.obj.energy.flags = buffer[i + 6];
//  343         dio.mc.obj.energy.energy_est = buffer[i + 7];
//  344       } else {
//  345        PRINTF("RPL: Unhandled DAG MC type: %u\n", (unsigned)dio.mc.type);
//  346        return;
//  347       }
//  348       break;
//  349     case RPL_OPTION_ROUTE_INFO:
//  350       if(len < 9) {
//  351         PRINTF("RPL: Invalid destination prefix option, len = %d\n", len);
//  352 	RPL_STAT(rpl_stats.malformed_msgs++);
//  353         return;
//  354       }
//  355 
//  356       /* The flags field includes the preference value. */
//  357       dio.destination_prefix.length = buffer[i + 2];
//  358       dio.destination_prefix.flags = buffer[i + 3];
//  359       dio.destination_prefix.lifetime = get32(buffer, i + 4);
//  360 
//  361       if(((dio.destination_prefix.length + 7) / 8) + 8 <= len &&
//  362          dio.destination_prefix.length <= 128) {
//  363         PRINTF("RPL: Copying destination prefix\n");
//  364         memcpy(&dio.destination_prefix.prefix, &buffer[i + 8],
//  365                (dio.destination_prefix.length + 7) / 8);
//  366       } else {
//  367         PRINTF("RPL: Invalid route info option, len = %d\n", len);
//  368 	RPL_STAT(rpl_stats.malformed_msgs++);
//  369 	return;
//  370       }
//  371 
//  372       break;
//  373     case RPL_OPTION_DAG_CONF:
//  374       if(len != 16) {
//  375         PRINTF("RPL: Invalid DAG configuration option, len = %d\n", len);
//  376 	RPL_STAT(rpl_stats.malformed_msgs++);
//  377         return;
//  378       }
//  379 
//  380       /* Path control field not yet implemented - at i + 2 */
//  381       dio.dag_intdoubl = buffer[i + 3];
//  382       dio.dag_intmin = buffer[i + 4];
//  383       dio.dag_redund = buffer[i + 5];
//  384       dio.dag_max_rankinc = get16(buffer, i + 6);
//  385       dio.dag_min_hoprankinc = get16(buffer, i + 8);
//  386       dio.ocp = get16(buffer, i + 10);
//  387       /* buffer + 12 is reserved */
//  388       dio.default_lifetime = buffer[i + 13];
//  389       dio.lifetime_unit = get16(buffer, i + 14);
//  390       PRINTF("RPL: DAG conf:dbl=%d, min=%d red=%d maxinc=%d mininc=%d ocp=%d d_l=%u l_u=%u\n",
//  391              dio.dag_intdoubl, dio.dag_intmin, dio.dag_redund,
//  392              dio.dag_max_rankinc, dio.dag_min_hoprankinc, dio.ocp,
//  393              dio.default_lifetime, dio.lifetime_unit);
//  394       break;
//  395     case RPL_OPTION_PREFIX_INFO:
//  396       if(len != 32) {
//  397         PRINTF("RPL: Invalid DAG prefix info, len != 32\n");
//  398 	RPL_STAT(rpl_stats.malformed_msgs++);
//  399         return;
//  400       }
//  401       dio.prefix_info.length = buffer[i + 2];
??dio_input_3:
        ADDS     R1,R0,R7
        LDRB     R1,[R1, #+2]
        STRB     R1,[R9, #+24]
//  402       dio.prefix_info.flags = buffer[i + 3];
        ADDS     R1,R0,R7
        LDRB     R1,[R1, #+3]
        STRB     R1,[R9, #+25]
//  403       /* valid lifetime is ingnored for now - at i + 4 */
//  404       /* preferred lifetime stored in lifetime */
//  405       dio.prefix_info.lifetime = get32(buffer, i + 8);
        ADD      R1,R0,#+8
        ADDS     R3,R1,R7
        LDRB     R3,[R3, #+1]
        LDRB     R2,[R1, R7]
        LSLS     R3,R3,#+16
        ORR      R2,R3,R2, LSL #+24
        ADDS     R3,R1,R7
        ADDS     R1,R1,R7
        LDRB     R3,[R3, #+2]
        LDRB     R1,[R1, #+3]
        ORR      R2,R2,R3, LSL #+8
        ORRS     R1,R1,R2
        STR      R1,[R9, #+20]
//  406       /* 32-bit reserved at i + 12 */
//  407       PRINTF("RPL: Copying prefix information\n");
//  408       memcpy(&dio.prefix_info.prefix, &buffer[i + 16], 16);
        ADDS     R0,R0,R7
        ADD      R1,R0,#+16
        MOVS     R2,#+16
        ADD      R0,SP,#+76
??dio_input_4:
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  409       break;
??dio_input_5:
        MOV      R0,R10
??dio_input_2:
        CMP      R0,R6
        BGE.W    ??dio_input_6
        LDRB     R1,[R0, R7]
        CMP      R1,#+0
        ITEEE    EQ 
        MOVEQ    R3,#+1
        ADDNE    R2,R0,R7
        LDRBNE   R2,[R2, #+1]
        ADDNE    R3,R2,#+2
        ADD      R10,R0,R3
        CMP      R6,R10
        BLT.W    ??dio_input_1
        CMP      R1,#+2
        BEQ.N    ??dio_input_7
        CMP      R1,#+3
        BEQ.N    ??dio_input_8
        CMP      R1,#+4
        BEQ.N    ??dio_input_9
        CMP      R1,#+8
        BEQ.W    ??dio_input_10
        B.N      ??dio_input_5
??dio_input_7:
        CMP      R3,#+6
        BLT.W    ??dio_input_1
        ADDS     R1,R0,R7
        ADDS     R2,R0,R7
        LDRB     R1,[R1, #+2]
        STRB     R1,[R9, #+28]
        ADDS     R3,R0,R7
        LDRB     R2,[R2, #+3]
        LSLS     R2,R2,#+1
        STRB     R2,[R9, #+29]
        LDRB     R3,[R3, #+4]
        ORR      R2,R2,R3, LSR #+7
        STRB     R2,[R9, #+29]
        ADDS     R2,R0,R7
        LDRB     R2,[R2, #+4]
        UBFX     R2,R2,#+4,#+2
        STRB     R2,[R9, #+30]
        ADDS     R2,R0,R7
        LDRB     R2,[R2, #+4]
        AND      R2,R2,#0xF
        STRB     R2,[R9, #+31]
        ADDS     R2,R0,R7
        CMP      R1,#+0
        LDRB     R2,[R2, #+5]
        STRB     R2,[SP, #+104]
        BEQ.N    ??dio_input_5
        CMP      R1,#+7
        BNE.N    ??dio_input_11
        ADDS     R0,R0,#+6
        LDRB     R1,[R0, R7]
        ADDS     R0,R0,R7
        LDRB     R0,[R0, #+1]
        ORR      R0,R0,R1, LSL #+8
        STRH     R0,[R8, #+2]
        B.N      ??dio_input_5
??dio_input_11:
        CMP      R1,#+2
        BNE.N    ??dio_input_1
        ADDS     R1,R0,R7
        ADDS     R0,R0,R7
        LDRB     R1,[R1, #+6]
        STRB     R1,[R8, #+2]
        LDRB     R0,[R0, #+7]
        STRB     R0,[R8, #+3]
        B.N      ??dio_input_5
??dio_input_8:
        CMP      R3,#+9
        BLT.N    ??dio_input_1
        ADDS     R1,R0,R7
        ADDS     R2,R0,R7
        LDRB     R1,[R1, #+2]
        STRB     R1,[SP, #+72]
        LDRB     R2,[R2, #+3]
        STRB     R2,[R9, #+1]
        ADDS     R2,R0,#+4
        ADD      LR,R2,R7
        LDRB     LR,[LR, #+1]
        LDRB     R12,[R2, R7]
        LSL      LR,LR,#+16
        ORR      R12,LR,R12, LSL #+24
        ADD      LR,R2,R7
        ADDS     R2,R2,R7
        LDRB     LR,[LR, #+2]
        LDRB     R2,[R2, #+3]
        ORR      R12,R12,LR, LSL #+8
        ORR      R2,R2,R12
        STR      R2,[R4, #+36]
        ADD      R12,R1,#+7
        ASR      R2,R12,#+2
        ADD      R2,R12,R2, LSR #+29
        ASRS     R2,R2,#+3
        ADD      LR,R2,#+8
        CMP      R3,LR
        BLT.N    ??dio_input_1
        CMP      R1,#+129
        ITTT     LT 
        ADDLT    R0,R0,R7
        ADDLT    R1,R0,#+8
        ADDLT    R0,SP,#+52
        BLT.W    ??dio_input_4
//  410     default:
//  411       PRINTF("RPL: Unsupported suboption type in DIO: %u\n",
//  412 	(unsigned)subopt_type);
//  413     }
//  414   }
//  415 
//  416 #ifdef RPL_DEBUG_DIO_INPUT
//  417   RPL_DEBUG_DIO_INPUT(&from, &dio);
//  418 #endif
//  419 
//  420   rpl_process_dio(&from, &dio);
//  421 
//  422   uip_len = 0;
//  423 }
        B.N      ?Subroutine0
??dio_input_9:
        CMP      R3,#+16
        BNE.N    ??dio_input_1
        ADDS     R1,R0,R7
        LDRB     R1,[R1, #+3]
        STRB     R1,[R4, #+10]
        ADDS     R1,R0,R7
        LDRB     R1,[R1, #+4]
        STRB     R1,[R4, #+11]
        ADDS     R1,R0,R7
        LDRB     R1,[R1, #+5]
        STRB     R1,[R4, #+12]
        ADDS     R1,R0,#+6
        LDRB     R2,[R1, R7]
        ADDS     R1,R1,R7
        LDRB     R1,[R1, #+1]
        ORR      R1,R1,R2, LSL #+8
        STRH     R1,[R4, #+16]
        ADD      R1,R0,#+8
        LDRB     R2,[R1, R7]
        ADDS     R1,R1,R7
        LDRB     R1,[R1, #+1]
        ORR      R1,R1,R2, LSL #+8
        STRH     R1,[R4, #+18]
        ADD      R1,R0,#+10
        LDRB     R2,[R1, R7]
        ADDS     R1,R1,R7
        LDRB     R1,[R1, #+1]
        ORR      R1,R1,R2, LSL #+8
        STRH     R1,[SP, #+32]
        ADDS     R1,R0,R7
        ADDS     R0,R0,#+14
        LDRB     R1,[R1, #+13]
        STRB     R1,[R4, #+13]
        LDRB     R1,[R0, R7]
        ADDS     R0,R0,R7
        LDRB     R0,[R0, #+1]
        ORR      R0,R0,R1, LSL #+8
        STRH     R0,[R4, #+14]
        B.N      ??dio_input_5
??dio_input_10:
        CMP      R3,#+32
        BEQ.W    ??dio_input_3
        B.N      ?Subroutine0
??dio_input_6:
        ADD      R1,SP,#+16
        ADD      R0,SP,#+0
          CFI FunCall rpl_process_dio
        BL       rpl_process_dio
        MOVS     R0,#+0
        STRH     R0,[R5, #+0]
          CFI EndBlock cfiBlock3
??dio_input_1:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls dio_input
          CFI CFA R13+144
          CFI R4 Frame(CFA, -32)
          CFI R5 Frame(CFA, -28)
          CFI R6 Frame(CFA, -24)
          CFI R7 Frame(CFA, -20)
          CFI R8 Frame(CFA, -16)
          CFI R9 Frame(CFA, -12)
          CFI R10 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        ADD      SP,SP,#+112
          CFI CFA R13+32
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock4
//  424 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function dio_output
        THUMB
//  425 void
//  426 dio_output(rpl_instance_t *instance, uip_ipaddr_t *uc_addr)
//  427 {
dio_output:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        MOV      R5,R1
//  428   unsigned char *buffer;
//  429   int pos;
//  430   rpl_dag_t *dag = instance->current_dag;
//  431 #if !RPL_LEAF_ONLY
//  432   uip_ipaddr_t addr;
//  433 #endif /* !RPL_LEAF_ONLY */
//  434 
//  435 #if RPL_LEAF_ONLY
//  436   /* In leaf mode, we only send DIO messages as unicasts in response to
//  437      unicast DIS messages. */
//  438   if(uc_addr == NULL) {
//  439     PRINTF("RPL: LEAF ONLY have multicast addr: skip dio_output\n");
//  440     return;
//  441   }
//  442 #endif /* RPL_LEAF_ONLY */
//  443 
//  444   /* DAG Information Object */
//  445   pos = 0;
//  446 
//  447   buffer = UIP_ICMP_PAYLOAD;
        LDR.W    R1,??DataTable6_3
        LDRB     R1,[R1, #+0]
        MOV      R4,R0
        LDR.W    R0,??DataTable6_1
        ADDS     R0,R1,R0
        SUB      SP,SP,#+20
          CFI CFA R13+40
        ADD      R7,R0,#+44
        LDR      R6,[R4, #+12]
//  448   buffer[pos++] = instance->instance_id;
        LDRB     R0,[R4, #+140]
        STRB     R0,[R7, #+0]
//  449   buffer[pos++] = dag->version;
        LDRB     R0,[R6, #+18]
        STRB     R0,[R7, #+1]
//  450 
//  451 #if RPL_LEAF_ONLY
//  452   PRINTF("RPL: LEAF ONLY DIO rank set to INFINITE_RANK\n");
//  453   set16(buffer, pos, INFINITE_RANK);
//  454 #else /* RPL_LEAF_ONLY */
//  455   set16(buffer, pos, dag->rank);
        ADD      R0,R6,#+18
        LDRH     R1,[R0, #+10]
        LSRS     R2,R1,#+8
        STRB     R2,[R7, #+2]
        STRB     R1,[R7, #+3]
//  456 #endif /* RPL_LEAF_ONLY */
//  457   pos += 2;
//  458 
//  459   buffer[pos] = 0;
        MOVS     R1,#+0
        STRB     R1,[R7, #+4]
//  460   if(dag->grounded) {
        LDRB     R1,[R0, #+1]
        CBZ.N    R1,??dio_output_0
//  461     buffer[pos] |= RPL_DIO_GROUNDED;
        MOVS     R1,#+128
        STRB     R1,[R7, #+4]
//  462   }
//  463 
//  464   buffer[pos] |= instance->mop << RPL_DIO_MOP_SHIFT;
??dio_output_0:
        LDRB     R1,[R7, #+4]
        LDRB     R2,[R4, #+143]
        ORR      R1,R1,R2, LSL #+3
        STRB     R1,[R7, #+4]
//  465   buffer[pos] |= dag->preference & RPL_DIO_PREFERENCE_MASK;
        LDRB     R0,[R0, #+2]
        AND      R0,R0,#0x7
        ORRS     R0,R0,R1
        STRB     R0,[R7, #+4]
//  466   pos++;
//  467 
//  468   buffer[pos++] = instance->dtsn_out;
        LDRB     R0,[R4, #+142]
        STRB     R0,[R7, #+5]
//  469 
//  470   if(uc_addr == NULL) {
        CBNZ.N   R5,??dio_output_1
//  471     /* Request new DAO to refresh route. We do not do this for unicast DIO
//  472      * in order to avoid DAO messages after a DIS-DIO update,
//  473      * or upon unicast DIO probing. */
//  474     RPL_LOLLIPOP_INCREMENT(instance->dtsn_out);
        LDRB     R0,[R4, #+142]
        CMP      R0,#+128
        ITEE     GE 
        ADDGE    R0,R0,#+1
        ADDLT    R0,R0,#+1
        ANDLT    R0,R0,#0x7F
        STRB     R0,[R4, #+142]
//  475   }
//  476 
//  477   /* reserved 2 bytes */
//  478   buffer[pos++] = 0; /* flags */
??dio_output_1:
        MOVS     R0,#+0
        STRB     R0,[R7, #+6]
//  479   buffer[pos++] = 0; /* reserved */
        STRB     R0,[R7, #+7]
//  480 
//  481   memcpy(buffer + pos, &dag->dag_id, sizeof(dag->dag_id));
        MOVS     R2,#+16
        MOV      R1,R6
        ADD      R0,R7,#+8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  482   pos += 16;
//  483 
//  484 #if !RPL_LEAF_ONLY
//  485   if(instance->mc.type != RPL_DAG_MC_NONE) {
        LDRB     R0,[R4, #+0]
        MOVS     R3,#+24
        CBZ.N    R0,??dio_output_2
//  486     instance->of->update_metric_container(instance);
        LDR      R1,[R4, #+8]
        LDR      R1,[R1, #+20]
        MOV      R0,R4
          CFI FunCall
        BLX      R1
//  487 
//  488     buffer[pos++] = RPL_OPTION_DAG_METRIC_CONTAINER;
        MOVS     R0,#+2
        STRB     R0,[R7, #+24]
//  489     buffer[pos++] = 6;
        MOVS     R0,#+6
        STRB     R0,[R7, #+25]
//  490     buffer[pos++] = instance->mc.type;
        LDRB     R0,[R4, #+0]
        STRB     R0,[R7, #+26]
//  491     buffer[pos++] = instance->mc.flags >> 1;
        LDRB     R0,[R4, #+1]
        LSRS     R0,R0,#+1
        STRB     R0,[R7, #+27]
//  492     buffer[pos] = (instance->mc.flags & 1) << 7;
        LDRB     R0,[R4, #+1]
        LSLS     R0,R0,#+7
        STRB     R0,[R7, #+28]
//  493     buffer[pos++] |= (instance->mc.aggr << 4) | instance->mc.prec;
        LDRB     R1,[R4, #+2]
        LDRB     R2,[R4, #+3]
        ORR      R1,R2,R1, LSL #+4
        ORRS     R0,R1,R0
        STRB     R0,[R7, #+28]
//  494     if(instance->mc.type == RPL_DAG_MC_ETX) {
        LDRB     R0,[R4, #+0]
        CMP      R0,#+7
        BNE.W    ??dio_output_3
//  495       buffer[pos++] = 2;
        MOVS     R0,#+2
        STRB     R0,[R7, #+29]
//  496       set16(buffer, pos, instance->mc.obj.etx);
        LDRH     R0,[R4, #+6]
        LSRS     R1,R0,#+8
        STRB     R1,[R7, #+30]
??dio_output_4:
        STRB     R0,[R7, #+31]
//  497       pos += 2;
        MOVS     R3,#+32
//  498     } else if(instance->mc.type == RPL_DAG_MC_ENERGY) {
//  499       buffer[pos++] = 2;
//  500       buffer[pos++] = instance->mc.obj.energy.flags;
//  501       buffer[pos++] = instance->mc.obj.energy.energy_est;
//  502     } else {
//  503       PRINTF("RPL: Unable to send DIO because of unhandled DAG MC type %u\n",
//  504 	(unsigned)instance->mc.type);
//  505       return;
//  506     }
//  507   }
//  508 #endif /* !RPL_LEAF_ONLY */
//  509 
//  510   /* Always add a DAG configuration option. */
//  511   buffer[pos++] = RPL_OPTION_DAG_CONF;
??dio_output_2:
        MOVS     R0,#+4
        STRB     R0,[R3, R7]
//  512   buffer[pos++] = 14;
        MOVS     R1,#+14
        ADDS     R0,R3,#+1
        STRB     R1,[R0, R7]
        ADDS     R0,R0,#+1
//  513   buffer[pos++] = 0; /* No Auth, PCS = 0 */
        MOVS     R1,#+0
        STRB     R1,[R0, R7]
        ADDS     R0,R0,#+1
//  514   buffer[pos++] = instance->dio_intdoubl;
        LDRB     R1,[R4, #+144]
        STRB     R1,[R0, R7]
        ADDS     R0,R0,#+1
//  515   buffer[pos++] = instance->dio_intmin;
        LDRB     R1,[R4, #+145]
        STRB     R1,[R0, R7]
        ADDS     R0,R0,#+1
//  516   buffer[pos++] = instance->dio_redundancy;
        LDRB     R1,[R4, #+146]
        STRB     R1,[R0, R7]
        ADDS     R0,R0,#+1
//  517   set16(buffer, pos, instance->max_rankinc);
        LDRH     R1,[R4, #+152]
        LSRS     R2,R1,#+8
        STRB     R2,[R0, R7]
        ADDS     R2,R0,R7
//  518   pos += 2;
        ADDS     R0,R0,#+2
        STRB     R1,[R2, #+1]
//  519   set16(buffer, pos, instance->min_hoprankinc);
        LDRH     R1,[R4, #+154]
        LSRS     R2,R1,#+8
        STRB     R2,[R0, R7]
        ADDS     R2,R0,R7
//  520   pos += 2;
        ADDS     R0,R0,#+2
        STRB     R1,[R2, #+1]
//  521   /* OCP is in the DAG_CONF option */
//  522   set16(buffer, pos, instance->of->ocp);
        LDR      R1,[R4, #+8]
        LDRH     R1,[R1, #+24]
        LSRS     R2,R1,#+8
        STRB     R2,[R0, R7]
        ADDS     R2,R0,R7
//  523   pos += 2;
        ADDS     R0,R0,#+2
        STRB     R1,[R2, #+1]
//  524   buffer[pos++] = 0; /* reserved */
        MOVS     R1,#+0
        STRB     R1,[R0, R7]
        ADDS     R0,R0,#+1
//  525   buffer[pos++] = instance->default_lifetime;
        LDRB     R1,[R4, #+147]
        STRB     R1,[R0, R7]
        ADDS     R0,R0,#+1
//  526   set16(buffer, pos, instance->lifetime_unit);
        LDRH     R1,[R4, #+156]
        LSRS     R2,R1,#+8
        STRB     R2,[R0, R7]
//  527   pos += 2;
        ADDS     R3,R0,#+2
        ADDS     R2,R0,R7
//  528 
//  529   /* Check if we have a prefix to send also. */
//  530   if(dag->prefix_info.length > 0) {
        ADD      R0,R6,#+52
        STRB     R1,[R2, #+1]
        LDRB     R1,[R0, #+4]
        CBZ.N    R1,??dio_output_5
//  531     buffer[pos++] = RPL_OPTION_PREFIX_INFO;
        MOVS     R1,#+8
        STRB     R1,[R3, R7]
//  532     buffer[pos++] = 30; /* always 30 bytes + 2 long */
        MOVS     R2,#+30
        ADDS     R1,R3,#+1
        STRB     R2,[R1, R7]
        ADDS     R1,R1,#+1
//  533     buffer[pos++] = dag->prefix_info.length;
        LDRB     R2,[R0, #+4]
        STRB     R2,[R1, R7]
        ADDS     R1,R1,#+1
//  534     buffer[pos++] = dag->prefix_info.flags;
        LDRB     R0,[R0, #+5]
        STRB     R0,[R1, R7]
        ADDS     R4,R1,#+1
//  535     set32(buffer, pos, dag->prefix_info.lifetime);
        LDR      R2,[R6, #+52]
        MOV      R1,R4
        MOV      R0,R7
          CFI FunCall set32
        BL       set32
//  536     pos += 4;
        ADDS     R4,R4,#+4
//  537     set32(buffer, pos, dag->prefix_info.lifetime);
        LDR      R2,[R6, #+52]
        MOV      R1,R4
        MOV      R0,R7
          CFI FunCall set32
        BL       set32
//  538     pos += 4;
        ADDS     R4,R4,#+4
//  539     memset(&buffer[pos], 0, 4);
        MOVS     R1,#+4
        ADDS     R0,R4,R7
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  540     pos += 4;
        ADDS     R4,R4,#+4
//  541     memcpy(&buffer[pos], &dag->prefix_info.prefix, 16);
        MOVS     R2,#+16
        ADD      R1,R6,#+36
        ADDS     R0,R4,R7
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  542     pos += 16;
        ADD      R3,R4,#+16
//  543     PRINTF("RPL: Sending prefix info in DIO for ");
//  544     PRINT6ADDR(&dag->prefix_info.prefix);
//  545     PRINTF("\n");
//  546   } else {
//  547     PRINTF("RPL: No prefix to announce (len %d)\n",
//  548            dag->prefix_info.length);
//  549   }
//  550 
//  551 #if RPL_LEAF_ONLY
//  552 #if (DEBUG) & DEBUG_PRINT
//  553   if(uc_addr == NULL) {
//  554     PRINTF("RPL: LEAF ONLY sending unicast-DIO from multicast-DIO\n");
//  555   }
//  556 #endif /* DEBUG_PRINT */
//  557   PRINTF("RPL: Sending unicast-DIO with rank %u to ",
//  558       (unsigned)dag->rank);
//  559   PRINT6ADDR(uc_addr);
//  560   PRINTF("\n");
//  561   uip_icmp6_send(uc_addr, ICMP6_RPL, RPL_CODE_DIO, pos);
//  562 #else /* RPL_LEAF_ONLY */
//  563   /* Unicast requests get unicast replies! */
//  564   if(uc_addr == NULL) {
??dio_output_5:
        CBNZ.N   R5,??dio_output_6
//  565     PRINTF("RPL: Sending a multicast-DIO with rank %u\n",
//  566         (unsigned)instance->current_dag->rank);
//  567     uip_create_linklocal_rplnodes_mcast(&addr);
        MOVW     R0,#+767
        STRH     R0,[SP, #+0]
//  568     uip_icmp6_send(&addr, ICMP6_RPL, RPL_CODE_DIO, pos);
        MOVS     R2,#+1
        MOVS     R0,#+0
        STRH     R0,[SP, #+2]
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+8]
        STRH     R0,[SP, #+12]
        MOVS     R1,#+155
        MOV      R0,#+6656
        STRH     R0,[SP, #+14]
        ADD      R0,SP,#+0
          CFI FunCall uip_icmp6_send
        BL       uip_icmp6_send
//  569   } else {
//  570     PRINTF("RPL: Sending unicast-DIO with rank %u to ",
//  571         (unsigned)instance->current_dag->rank);
//  572     PRINT6ADDR(uc_addr);
//  573     PRINTF("\n");
//  574     uip_icmp6_send(uc_addr, ICMP6_RPL, RPL_CODE_DIO, pos);
//  575   }
//  576 #endif /* RPL_LEAF_ONLY */
//  577 }
        ADD      SP,SP,#+20
          CFI CFA R13+20
        POP      {R4-R7,PC}
          CFI CFA R13+40
??dio_output_3:
        CMP      R0,#+2
        BNE.N    ??dio_output_7
        STRB     R0,[R7, #+29]
        LDRB     R0,[R4, #+6]
        STRB     R0,[R7, #+30]
        LDRB     R0,[R4, #+7]
        B.N      ??dio_output_4
??dio_output_6:
        MOVS     R2,#+1
        MOVS     R1,#+155
        MOV      R0,R5
          CFI FunCall uip_icmp6_send
        BL       uip_icmp6_send
??dio_output_7:
        ADD      SP,SP,#+20
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock5
//  578 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function dao_input
        THUMB
//  579 static void
//  580 dao_input(void)
//  581 {
dao_input:
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
//  582   uip_ipaddr_t dao_sender_addr;
//  583   rpl_dag_t *dag;
//  584   rpl_instance_t *instance;
//  585   unsigned char *buffer;
//  586   uint16_t sequence;
//  587   uint8_t instance_id;
//  588   uint8_t lifetime;
//  589   uint8_t prefixlen;
//  590   uint8_t flags;
//  591   uint8_t subopt_type;
//  592   /*
//  593   uint8_t pathcontrol;
//  594   uint8_t pathsequence;
//  595   */
//  596   uip_ipaddr_t prefix;
//  597   uip_ds6_route_t *rep;
//  598   uint8_t buffer_length;
//  599   int pos;
//  600   int len;
//  601   int i;
//  602   int learned_from;
//  603   rpl_parent_t *parent;
//  604   uip_ds6_nbr_t *nbr;
//  605 
//  606   prefixlen = 0;
//  607   parent = NULL;
//  608 
//  609   uip_ipaddr_copy(&dao_sender_addr, &UIP_IP_BUF->srcipaddr);
        LDR.W    R0,??DataTable6_1
        SUB      SP,SP,#+52
          CFI CFA R13+88
        ADD      R2,R0,#+8
        LDM      R2!,{R3,R6,R7,R12}
        ADD      R1,SP,#+16
        MOVS     R4,#+0
        STM      R1!,{R3,R6,R7,R12}
//  610 
//  611   /* Destination Advertisement Object */
//  612   PRINTF("RPL: Received a DAO from ");
//  613   PRINT6ADDR(&dao_sender_addr);
//  614   PRINTF("\n");
//  615 
//  616   buffer = UIP_ICMP_PAYLOAD;
        LDR.W    R1,??DataTable6_3
        LDRB     R1,[R1, #+0]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+44
        STR      R0,[SP, #+0]
        MOVS     R5,#+0
        LDR.W    R0,??DataTable6_2
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+44
        UXTB     R0,R0
        STR      R0,[SP, #+8]
//  617   buffer_length = uip_len - uip_l3_icmp_hdr_len;
//  618 
//  619   pos = 0;
//  620   instance_id = buffer[pos++];
//  621 
//  622   instance = rpl_get_instance(instance_id);
        LDR      R0,[SP, #+0]
        LDRB     R0,[R0, #+0]
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
        MOVS     R6,R0
//  623   if(instance == NULL) {
        BEQ.W    ??dao_input_0
//  624     PRINTF("RPL: Ignoring a DAO for an unknown RPL instance(%u)\n",
//  625            instance_id);
//  626     return;
//  627   }
//  628 
//  629   lifetime = instance->default_lifetime;
        LDRB     R0,[R6, #+147]
        STRB     R0,[SP, #+4]
//  630 
//  631   flags = buffer[pos++];
//  632   /* reserved */
//  633   pos++;
//  634   sequence = buffer[pos++];
        MOV      R11,#+4
        LDR      R0,[SP, #+0]
        LDRB     R7,[R0, #+1]
        LDRB     R0,[R0, #+3]
        STR      R0,[SP, #+12]
//  635 
//  636   dag = instance->current_dag;
//  637   /* Is the DAG ID present? */
//  638   if(flags & RPL_DAO_D_FLAG) {
        LSLS     R0,R7,#+25
        LDR      R8,[R6, #+12]
        BPL.N    ??dao_input_1
//  639     if(memcmp(&dag->dag_id, &buffer[pos], sizeof(dag->dag_id))) {
        LDR      R0,[SP, #+0]
        ADDS     R1,R0,#+4
        MOVS     R2,#+16
        MOV      R0,R8
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.W    ??dao_input_0
//  640       PRINTF("RPL: Ignoring a DAO for a DAG different from ours\n");
//  641       return;
//  642     }
//  643     pos += 16;
        MOV      R11,#+20
//  644   }
//  645 
//  646   learned_from = uip_is_addr_mcast(&dao_sender_addr) ?
//  647                  RPL_ROUTE_FROM_MULTICAST_DAO : RPL_ROUTE_FROM_UNICAST_DAO;
??dao_input_1:
        LDRB     R0,[SP, #+16]
        CMP      R0,#+255
        IT       EQ 
        MOVEQ    R9,#+2
//  648 
//  649   PRINTF("RPL: DAO from %s\n",
//  650          learned_from == RPL_ROUTE_FROM_UNICAST_DAO? "unicast": "multicast");
//  651   if(learned_from == RPL_ROUTE_FROM_UNICAST_DAO) {
//  652     /* Check whether this is a DAO forwarding loop. */
//  653     parent = rpl_find_parent(dag, &dao_sender_addr);
//  654     /* check if this is a new DAO registration with an "illegal" rank */
//  655     /* if we already route to this node it is likely */
//  656     if(parent != NULL &&
//  657        DAG_RANK(parent->rank, instance) < DAG_RANK(dag->rank, instance)) {
//  658       PRINTF("RPL: Loop detected when receiving a unicast DAO from a node with a lower rank! (%u < %u)\n",
//  659           DAG_RANK(parent->rank, instance), DAG_RANK(dag->rank, instance));
//  660       parent->rank = INFINITE_RANK;
//  661       parent->flags |= RPL_PARENT_FLAG_UPDATED;
//  662       return;
//  663     }
//  664 
//  665     /* If we get the DAO from our parent, we also have a loop. */
//  666     if(parent != NULL && parent == dag->preferred_parent) {
//  667       PRINTF("RPL: Loop detected when receiving a unicast DAO from our parent\n");
//  668       parent->rank = INFINITE_RANK;
//  669       parent->flags |= RPL_PARENT_FLAG_UPDATED;
//  670       return;
//  671     }
//  672   }
//  673 
//  674   /* Check if there are any RPL options present. */
//  675   for(i = pos; i < buffer_length; i += len) {
        BEQ.N    ??dao_input_2
        MOV      R9,#+1
        ADD      R1,SP,#+16
        MOV      R0,R8
          CFI FunCall rpl_find_parent
        BL       rpl_find_parent
        MOVS     R5,R0
        BEQ.N    ??dao_input_2
        LDRH     R0,[R6, #+154]
        LDRH     R1,[R8, #+28]
        LDRH     R2,[R5, #+8]
        SDIV     R1,R1,R0
        SDIV     R0,R2,R0
        CMP      R0,R1
        BLT.N    ??dao_input_3
        LDR      R0,[R8, #+24]
        CMP      R5,R0
        BNE.N    ??dao_input_2
??dao_input_3:
        MOVW     R0,#+65535
        STRH     R0,[R5, #+8]
        LDRB     R0,[R5, #+17]
        ORR      R0,R0,#0x1
        STRB     R0,[R5, #+17]
//  676     subopt_type = buffer[i];
//  677     if(subopt_type == RPL_OPTION_PAD1) {
//  678       len = 1;
//  679     } else {
//  680       /* The option consists of a two-byte header and a payload. */
//  681       len = 2 + buffer[i + 1];
//  682     }
//  683 
//  684     switch(subopt_type) {
//  685     case RPL_OPTION_TARGET:
//  686       /* Handle the target option. */
//  687       prefixlen = buffer[i + 3];
//  688       memset(&prefix, 0, sizeof(prefix));
//  689       memcpy(&prefix, buffer + i + 4, (prefixlen + 7) / CHAR_BIT);
//  690       break;
//  691     case RPL_OPTION_TRANSIT:
//  692       /* The path sequence and control are ignored. */
//  693       /*      pathcontrol = buffer[i + 3];
//  694               pathsequence = buffer[i + 4];*/
//  695       lifetime = buffer[i + 5];
//  696       /* The parent address is also ignored. */
//  697       break;
//  698     }
//  699   }
//  700 
//  701   PRINTF("RPL: DAO lifetime: %u, prefix length: %u prefix: ",
//  702           (unsigned)lifetime, (unsigned)prefixlen);
//  703   PRINT6ADDR(&prefix);
//  704   PRINTF("\n");
//  705 
//  706 #if RPL_CONF_MULTICAST
//  707   if(uip_is_addr_mcast_global(&prefix)) {
//  708     mcast_group = uip_mcast6_route_add(&prefix);
//  709     if(mcast_group) {
//  710       mcast_group->dag = dag;
//  711       mcast_group->lifetime = RPL_LIFETIME(instance, lifetime);
//  712     }
//  713     goto fwd_dao;
//  714   }
//  715 #endif
//  716 
//  717   rep = uip_ds6_route_lookup(&prefix);
//  718 
//  719   if(lifetime == RPL_ZERO_LIFETIME) {
//  720     PRINTF("RPL: No-Path DAO received\n");
//  721     /* No-Path DAO received; invoke the route purging routine. */
//  722     if(rep != NULL &&
//  723        rep->state.nopath_received == 0 &&
//  724        rep->length == prefixlen &&
//  725        uip_ds6_route_nexthop(rep) != NULL &&
//  726        uip_ipaddr_cmp(uip_ds6_route_nexthop(rep), &dao_sender_addr)) {
//  727       PRINTF("RPL: Setting expiration timer for prefix ");
//  728       PRINT6ADDR(&prefix);
//  729       PRINTF("\n");
//  730       rep->state.nopath_received = 1;
//  731       rep->state.lifetime = DAO_EXPIRATION_TIMEOUT;
//  732 
//  733       /* We forward the incoming no-path DAO to our parent, if we have
//  734          one. */
//  735       if(dag->preferred_parent != NULL &&
//  736          rpl_get_parent_ipaddr(dag->preferred_parent) != NULL) {
//  737         PRINTF("RPL: Forwarding no-path DAO to parent ");
//  738         PRINT6ADDR(rpl_get_parent_ipaddr(dag->preferred_parent));
//  739         PRINTF("\n");
//  740         uip_icmp6_send(rpl_get_parent_ipaddr(dag->preferred_parent),
//  741                        ICMP6_RPL, RPL_CODE_DAO, buffer_length);
//  742       }
//  743       if(flags & RPL_DAO_K_FLAG) {
//  744         dao_ack_output(instance, &dao_sender_addr, sequence);
//  745       }
//  746     }
//  747     return;
//  748   }
//  749 
//  750   PRINTF("RPL: adding DAO route\n");
//  751 
//  752   if((nbr = uip_ds6_nbr_lookup(&dao_sender_addr)) == NULL) {
//  753     if((nbr = uip_ds6_nbr_add(&dao_sender_addr,
//  754                               (uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER),
//  755                               0, NBR_REACHABLE)) != NULL) {
//  756       /* set reachable timer */
//  757       stimer_set(&nbr->reachable, UIP_ND6_REACHABLE_TIME / 1000);
//  758       PRINTF("RPL: Neighbor added to neighbor cache ");
//  759       PRINT6ADDR(&dao_sender_addr);
//  760       PRINTF(", ");
//  761       PRINTLLADDR((uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
//  762       PRINTF("\n");
//  763     } else {
//  764       PRINTF("RPL: Out of Memory, dropping DAO from ");
//  765       PRINT6ADDR(&dao_sender_addr);
//  766       PRINTF(", ");
//  767       PRINTLLADDR((uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
//  768       PRINTF("\n");
//  769       return;
//  770     }
//  771   } else {
//  772     PRINTF("RPL: Neighbor already in neighbor cache\n");
//  773   }
//  774 
//  775   rpl_lock_parent(parent);
//  776 
//  777   rep = rpl_add_route(dag, &prefix, prefixlen, &dao_sender_addr);
//  778   if(rep == NULL) {
//  779     RPL_STAT(rpl_stats.mem_overflows++);
//  780     PRINTF("RPL: Could not add a route after receiving a DAO\n");
//  781     return;
//  782   }
//  783 
//  784   rep->state.lifetime = RPL_LIFETIME(instance, lifetime);
//  785   rep->state.learned_from = learned_from;
//  786   rep->state.nopath_received = 0;
//  787 
//  788 #if RPL_CONF_MULTICAST
//  789 fwd_dao:
//  790 #endif
//  791 
//  792   if(learned_from == RPL_ROUTE_FROM_UNICAST_DAO) {
//  793     if(dag->preferred_parent != NULL &&
//  794        rpl_get_parent_ipaddr(dag->preferred_parent) != NULL) {
//  795       PRINTF("RPL: Forwarding DAO to parent ");
//  796       PRINT6ADDR(rpl_get_parent_ipaddr(dag->preferred_parent));
//  797       PRINTF("\n");
//  798       uip_icmp6_send(rpl_get_parent_ipaddr(dag->preferred_parent),
//  799                      ICMP6_RPL, RPL_CODE_DAO, buffer_length);
//  800     }
//  801     if(flags & RPL_DAO_K_FLAG) {
//  802       dao_ack_output(instance, &dao_sender_addr, sequence);
//  803     }
//  804   }
//  805   uip_len = 0;
//  806 }
        B.N      ?Subroutine1
??dao_input_4:
        ADD      R11,R10,R11
??dao_input_2:
        LDR      R0,[SP, #+8]
        CMP      R11,R0
        BGE.N    ??dao_input_5
        LDR      R0,[SP, #+0]
        LDRB     R0,[R11, R0]
        CBNZ.N   R0,??dao_input_6
        MOV      R10,#+1
        B.N      ??dao_input_4
??dao_input_6:
        LDR      R1,[SP, #+0]
        ADD      R1,R11,R1
        CMP      R0,#+5
        LDRB     R1,[R1, #+1]
        ADD      R10,R1,#+2
        BEQ.N    ??dao_input_7
        CMP      R0,#+6
        ITTTT    EQ 
        LDREQ    R0,[SP, #+0]
        ADDEQ    R0,R11,R0
        LDRBEQ   R0,[R0, #+5]
        STRBEQ   R0,[SP, #+4]
        B.N      ??dao_input_4
??dao_input_7:
        LDR      R0,[SP, #+0]
        ADD      R0,R11,R0
        MOVS     R1,#+0
        LDRB     R4,[R0, #+3]
        ADD      R0,SP,#+32
        MOVS     R2,#+0
        MOV      R3,R1
        MOV      R12,R1
        STM      R0!,{R1-R3,R12}
        ADDS     R0,R4,#+7
        ASRS     R1,R0,#+2
        ADD      R0,R0,R1, LSR #+29
        ASRS     R2,R0,#+3
        LDR      R0,[SP, #+0]
        ADD      R0,R11,R0
        ADDS     R1,R0,#+4
        ADD      R0,SP,#+32
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        B.N      ??dao_input_4
??dao_input_5:
        ADD      R0,SP,#+32
          CFI FunCall uip_ds6_route_lookup
        BL       uip_ds6_route_lookup
        MOV      R10,R0
        LDRB     R0,[SP, #+4]
        CBNZ.N   R0,??dao_input_8
        CMP      R10,#+0
        BEQ.N    ??dao_input_0
        ADD      R5,R10,#+24
        LDRB     R0,[R5, #+9]
        CMP      R0,#+0
        ITT      EQ 
        LDRBEQ   R0,[R5, #+12]
        CMPEQ    R0,R4
        BNE.N    ??dao_input_0
        MOV      R0,R10
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        CMP      R0,#+0
        BEQ.N    ??dao_input_0
        MOV      R0,R10
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOVS     R2,#+16
        ADD      R1,SP,#+16
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??dao_input_0
        MOVS     R0,#+1
        STRB     R0,[R5, #+9]
        MOVW     R0,#+6000
        STR      R0,[R10, #+24]
        LDR      R0,[R8, #+24]
        CBZ.N    R0,??dao_input_9
          CFI FunCall rpl_get_parent_ipaddr
        BL       rpl_get_parent_ipaddr
        CBZ.N    R0,??dao_input_9
        LDR      R0,[R8, #+24]
          CFI FunCall rpl_get_parent_ipaddr
        BL       rpl_get_parent_ipaddr
        LDR      R3,[SP, #+8]
        MOVS     R2,#+2
        MOVS     R1,#+155
          CFI FunCall uip_icmp6_send
        BL       uip_icmp6_send
??dao_input_9:
        LSLS     R0,R7,#+24
        BPL.N    ??dao_input_0
        LDR      R2,[SP, #+12]
        UXTB     R2,R2
        ADD      R1,SP,#+16
        MOV      R0,R6
          CFI FunCall dao_ack_output
        BL       dao_ack_output
        B.N      ?Subroutine1
??dao_input_8:
        ADD      R0,SP,#+16
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
        CBNZ.N   R0,??dao_input_10
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R1,R0
        MOVS     R3,#+1
        MOVS     R2,#+0
        ADD      R0,SP,#+16
          CFI FunCall uip_ds6_nbr_add
        BL       uip_ds6_nbr_add
        CMP      R0,#+0
        BEQ.N    ??dao_input_0
        MOV      R1,#+600
        ADDS     R0,R0,#+16
          CFI FunCall stimer_set
        BL       stimer_set
??dao_input_10:
        MOV      R0,R5
          CFI FunCall rpl_lock_parent
        BL       rpl_lock_parent
        ADD      R3,SP,#+16
        MOV      R2,R4
        ADD      R1,SP,#+32
        MOV      R0,R8
          CFI FunCall rpl_add_route
        BL       rpl_add_route
        MOVS     R2,R0
        BEQ.N    ??dao_input_0
        LDRH     R0,[R6, #+156]
        LDRB     R1,[SP, #+4]
        MULS     R0,R1,R0
        STR      R0,[R2, #+24]
        MOVS     R1,#+0
        ADD      R0,R2,#+24
        CMP      R9,#+1
        STRB     R9,[R0, #+8]
        STRB     R1,[R0, #+9]
        BNE.N    ??dao_input_11
        LDR      R0,[R8, #+24]
        CBZ.N    R0,??dao_input_12
          CFI FunCall rpl_get_parent_ipaddr
        BL       rpl_get_parent_ipaddr
        CBZ.N    R0,??dao_input_12
        LDR      R0,[R8, #+24]
          CFI FunCall rpl_get_parent_ipaddr
        BL       rpl_get_parent_ipaddr
        LDR      R3,[SP, #+8]
        MOVS     R2,#+2
        MOVS     R1,#+155
          CFI FunCall uip_icmp6_send
        BL       uip_icmp6_send
??dao_input_12:
        LSLS     R0,R7,#+24
        BPL.N    ??dao_input_11
        LDR      R2,[SP, #+12]
        UXTB     R2,R2
        ADD      R1,SP,#+16
        MOV      R0,R6
          CFI FunCall dao_ack_output
        BL       dao_ack_output
??dao_input_11:
        LDR.N    R1,??DataTable6_2
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
          CFI EndBlock cfiBlock6
??dao_input_0:
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls dao_input
          CFI CFA R13+88
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
?Subroutine1:
        ADD      SP,SP,#+52
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock7
//  807 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function dao_output
        THUMB
//  808 void
//  809 dao_output(rpl_parent_t *parent, uint8_t lifetime)
//  810 {
dao_output:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R5,R1
        MOV      R4,R0
//  811   /* Destination Advertisement Object */
//  812   uip_ipaddr_t prefix;
//  813 
//  814   if(get_global_addr(&prefix) == 0) {
        LDR.N    R1,??DataTable6_5
        SUB      SP,SP,#+16
          CFI CFA R13+32
        MOVS     R0,#+0
        ADD      R2,R1,#+24
??dao_output_0:
        LDRB     R3,[R2, #+18]
        LDRB     R6,[R2, #+0]
        CBZ.N    R6,??dao_output_1
        CMP      R3,#+0
        IT       NE 
        CMPNE    R3,#+1
        BNE.N    ??dao_output_1
        LDRB     R3,[R2, #+2]
        CMP      R3,#+254
        ITT      EQ 
        LDRBEQ   R3,[R2, #+3]
        CMPEQ    R3,#+128
        BNE.N    ??dao_output_2
??dao_output_1:
        ADDS     R0,R0,#+1
        ADDS     R2,R2,#+32
        CMP      R0,#+3
        BLT.N    ??dao_output_0
//  815     PRINTF("RPL: No global address set for this node - suppressing DAO\n");
//  816     return;
        ADD      SP,SP,#+16
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
          CFI CFA R13+32
??dao_output_2:
        ADD      R0,R1,R0, LSL #+5
        ADD      R1,R0,#+26
        MOVS     R2,#+16
        ADD      R0,SP,#+0
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  817   }
//  818 
//  819   /* Sending a DAO with own prefix as target */
//  820   dao_output_target(parent, &prefix, lifetime);
        MOV      R2,R5
        ADD      R1,SP,#+0
        MOV      R0,R4
          CFI FunCall dao_output_target
        BL       dao_output_target
//  821 }
        ADD      SP,SP,#+16
          CFI CFA R13+16
        POP      {R4-R6,PC}
          CFI EndBlock cfiBlock8
//  822 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function dao_output_target
        THUMB
//  823 void
//  824 dao_output_target(rpl_parent_t *parent, uip_ipaddr_t *prefix, uint8_t lifetime)
//  825 {
dao_output_target:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R5,R1
        MOV      R6,R2
//  826   rpl_dag_t *dag;
//  827   rpl_instance_t *instance;
//  828   unsigned char *buffer;
//  829   uint8_t prefixlen;
//  830   int pos;
//  831 
//  832   /* Destination Advertisement Object */
//  833 
//  834   /* If we are in feather mode, we should not send any DAOs */
//  835   if(rpl_get_mode() == RPL_MODE_FEATHER) {
          CFI FunCall rpl_get_mode
        BL       rpl_get_mode
        CMP      R0,#+1
        IT       NE 
        CMPNE    R4,#+0
//  836     return;
//  837   }
//  838 
//  839   if(parent == NULL) {
        BEQ.N    ??dao_output_target_0
//  840     PRINTF("RPL dao_output_target error parent NULL\n");
//  841     return;
//  842   }
//  843 
//  844   dag = parent->dag;
        LDR      R1,[R4, #+4]
//  845   if(dag == NULL) {
        CMP      R1,#+0
        ITTT     NE 
        LDRNE    R0,[R1, #+32]
        CMPNE    R0,#+0
        CMPNE    R5,#+0
//  846     PRINTF("RPL dao_output_target error dag NULL\n");
//  847     return;
//  848   }
//  849 
//  850   instance = dag->instance;
//  851 
//  852   if(instance == NULL) {
//  853     PRINTF("RPL dao_output_target error instance NULL\n");
//  854     return;
//  855   }
//  856   if(prefix == NULL) {
        BEQ.N    ??dao_output_target_0
//  857     PRINTF("RPL dao_output_target error prefix NULL\n");
//  858     return;
//  859   }
//  860 #ifdef RPL_DEBUG_DAO_OUTPUT
//  861   RPL_DEBUG_DAO_OUTPUT(parent);
//  862 #endif
//  863 
//  864   buffer = UIP_ICMP_PAYLOAD;
        LDR.N    R3,??DataTable6_3
        LDR.N    R2,??DataTable6_1
        LDRB     R3,[R3, #+0]
        ADDS     R2,R3,R2
        ADD      R7,R2,#+44
//  865 
//  866   RPL_LOLLIPOP_INCREMENT(dao_sequence);
        LDR.N    R2,??DataTable6_6
        LDRB     R3,[R2, #+0]
        ADD      R12,R3,#+1
        CMP      R3,#+128
        IT       LT 
        ANDLT    R12,R12,#0x7F
        STRB     R12,[R2, #+0]
//  867   pos = 0;
//  868 
//  869   buffer[pos++] = instance->instance_id;
        LDRB     R0,[R0, #+140]
        STRB     R0,[R7, #+0]
//  870   buffer[pos] = 0;
//  871 #if RPL_DAO_SPECIFY_DAG
//  872   buffer[pos] |= RPL_DAO_D_FLAG;
        MOVS     R0,#+64
        STRB     R0,[R7, #+1]
//  873 #endif /* RPL_DAO_SPECIFY_DAG */
//  874 #if RPL_CONF_DAO_ACK
//  875   buffer[pos] |= RPL_DAO_K_FLAG;
//  876 #endif /* RPL_CONF_DAO_ACK */
//  877   ++pos;
//  878   buffer[pos++] = 0; /* reserved */
        MOVS     R0,#+0
        STRB     R0,[R7, #+2]
//  879   buffer[pos++] = dao_sequence;
        LDRB     R0,[R2, #+0]
        STRB     R0,[R7, #+3]
//  880 #if RPL_DAO_SPECIFY_DAG
//  881   memcpy(buffer + pos, &dag->dag_id, sizeof(dag->dag_id));
        MOVS     R2,#+16
        ADDS     R0,R7,#+4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  882   pos+=sizeof(dag->dag_id);
//  883 #endif /* RPL_DAO_SPECIFY_DAG */
//  884 
//  885   /* create target subopt */
//  886   prefixlen = sizeof(*prefix) * CHAR_BIT;
//  887   buffer[pos++] = RPL_OPTION_TARGET;
        MOVS     R0,#+5
        STRB     R0,[R7, #+20]
//  888   buffer[pos++] = 2 + ((prefixlen + 7) / CHAR_BIT);
//  889   buffer[pos++] = 0; /* reserved */
//  890   buffer[pos++] = prefixlen;
//  891   memcpy(buffer + pos, prefix, (prefixlen + 7) / CHAR_BIT);
        MOVS     R2,#+16
        MOVS     R0,#+18
        STRB     R0,[R7, #+21]
        MOV      R1,R5
        MOVS     R0,#+0
        STRB     R0,[R7, #+22]
        MOVS     R0,#+128
        STRB     R0,[R7, #+23]
        ADD      R0,R7,#+24
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  892   pos += ((prefixlen + 7) / CHAR_BIT);
//  893 
//  894   /* Create a transit information sub-option. */
//  895   buffer[pos++] = RPL_OPTION_TRANSIT;
        MOVS     R0,#+6
        STRB     R0,[R7, #+40]
//  896   buffer[pos++] = 4;
        MOVS     R0,#+4
        STRB     R0,[R7, #+41]
//  897   buffer[pos++] = 0; /* flags - ignored */
        MOVS     R0,#+0
        STRB     R0,[R7, #+42]
//  898   buffer[pos++] = 0; /* path control - ignored */
        STRB     R0,[R7, #+43]
//  899   buffer[pos++] = 0; /* path seq - ignored */
        STRB     R0,[R7, #+44]
//  900   buffer[pos++] = lifetime;
        STRB     R6,[R7, #+45]
//  901 
//  902   PRINTF("RPL: Sending DAO with prefix ");
//  903   PRINT6ADDR(prefix);
//  904   PRINTF(" to ");
//  905   PRINT6ADDR(rpl_get_parent_ipaddr(parent));
//  906   PRINTF("\n");
//  907 
//  908   if(rpl_get_parent_ipaddr(parent) != NULL) {
        MOV      R0,R4
          CFI FunCall rpl_get_parent_ipaddr
        BL       rpl_get_parent_ipaddr
        CBZ.N    R0,??dao_output_target_0
//  909     uip_icmp6_send(rpl_get_parent_ipaddr(parent), ICMP6_RPL, RPL_CODE_DAO, pos);
        MOV      R0,R4
          CFI FunCall rpl_get_parent_ipaddr
        BL       rpl_get_parent_ipaddr
        ADD      SP,SP,#+4
          CFI CFA R13+20
        POP      {R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R3,#+46
        MOVS     R2,#+2
        B.N      ?Subroutine2
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  910   }
//  911 }
??dao_output_target_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock9
//  912 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function dao_ack_input
          CFI NoCalls
        THUMB
//  913 static void
//  914 dao_ack_input(void)
//  915 {
//  916 #if DEBUG
//  917   unsigned char *buffer;
//  918   uint8_t buffer_length;
//  919   uint8_t instance_id;
//  920   uint8_t sequence;
//  921   uint8_t status;
//  922 
//  923   buffer = UIP_ICMP_PAYLOAD;
//  924   buffer_length = uip_len - uip_l3_icmp_hdr_len;
//  925 
//  926   instance_id = buffer[0];
//  927   sequence = buffer[2];
//  928   status = buffer[3];
//  929 
//  930   PRINTF("RPL: Received a DAO ACK with sequence number %d and status %d from ",
//  931     sequence, status);
//  932   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  933   PRINTF("\n");
//  934 #endif /* DEBUG */
//  935   uip_len = 0;
dao_ack_input:
        LDR.N    R1,??DataTable6_2
        MOVS     R0,#+0
        STRH     R0,[R1, #+0]
//  936 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  937 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function dao_ack_output
          CFI NoCalls
        THUMB
//  938 void
//  939 dao_ack_output(rpl_instance_t *instance, uip_ipaddr_t *dest, uint8_t sequence)
//  940 {
dao_ack_output:
        PUSH     {R3,R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+8
//  941   unsigned char *buffer;
//  942 
//  943   PRINTF("RPL: Sending a DAO ACK with sequence number %d to ", sequence);
//  944   PRINT6ADDR(dest);
//  945   PRINTF("\n");
//  946 
//  947   buffer = UIP_ICMP_PAYLOAD;
        LDR.N    R4,??DataTable6_3
        LDRB     R4,[R4, #+0]
        MOV      R3,R0
        MOV      R0,R1
        LDR.N    R1,??DataTable6_1
//  948 
//  949   buffer[0] = instance->instance_id;
        LDRB     R3,[R3, #+140]
        ADDS     R1,R4,R1
        STRB     R3,[R1, #+44]!
//  950   buffer[1] = 0;
        MOVS     R3,#+0
        STRB     R3,[R1, #+1]
//  951   buffer[2] = sequence;
        STRB     R2,[R1, #+2]
//  952   buffer[3] = 0;
        STRB     R3,[R1, #+3]
//  953 
//  954   uip_icmp6_send(dest, ICMP6_RPL, RPL_CODE_DAO_ACK, 4);
        ADD      SP,SP,#+4
          CFI CFA R13+4
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        MOVS     R3,#+4
        MOVS     R2,#+3
          CFI EndBlock cfiBlock11
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  955 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine2:
        MOVS     R1,#+155
          CFI FunCall dao_output_target uip_icmp6_send
          CFI FunCall dao_ack_output uip_icmp6_send
        B.W      uip_icmp6_send
          CFI EndBlock cfiBlock12
//  956 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function rpl_icmp6_register_handlers
        THUMB
//  957 void
//  958 rpl_icmp6_register_handlers()
//  959 {
rpl_icmp6_register_handlers:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  960   uip_icmp6_register_input_handler(&dis_handler);
        LDR.N    R4,??DataTable6_7
        MOV      R0,R4
          CFI FunCall uip_icmp6_register_input_handler
        BL       uip_icmp6_register_input_handler
//  961   uip_icmp6_register_input_handler(&dio_handler);
        ADD      R0,R4,#+12
          CFI FunCall uip_icmp6_register_input_handler
        BL       uip_icmp6_register_input_handler
//  962   uip_icmp6_register_input_handler(&dao_handler);
        ADD      R0,R4,#+24
          CFI FunCall uip_icmp6_register_input_handler
        BL       uip_icmp6_register_input_handler
//  963   uip_icmp6_register_input_handler(&dao_ack_handler);
        ADD      R0,R4,#+36
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uip_icmp6_register_input_handler
        B.W      uip_icmp6_register_input_handler
          CFI EndBlock cfiBlock13
//  964 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     instance_table

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     uip_ext_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     rpl_mrhof

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     dao_sequence

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     dis_handler

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  965 /*---------------------------------------------------------------------------*/
//  966 
//  967 /** @}*/
// 
//    49 bytes in section .data
// 2 240 bytes in section .text
// 
// 2 240 bytes of CODE memory
//    49 bytes of DATA memory
//
//Errors: none
//Warnings: 1
