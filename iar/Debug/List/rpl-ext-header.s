///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:16
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-ext-header.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-ext-header.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rpl-ext-header.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr
        EXTERN __aeabi_memmove
        EXTERN dao_output_target
        EXTERN default_instance
        EXTERN packetbuf_addr
        EXTERN rpl_find_parent
        EXTERN rpl_get_instance
        EXTERN rpl_get_parent
        EXTERN rpl_reset_dio_timer
        EXTERN uip_aligned_buf
        EXTERN uip_ds6_route_lookup
        EXTERN uip_ds6_route_rm
        EXTERN uip_ext_len
        EXTERN uip_len

        PUBLIC rpl_insert_header
        PUBLIC rpl_invert_header
        PUBLIC rpl_remove_header
        PUBLIC rpl_update_header_empty
        PUBLIC rpl_update_header_final
        PUBLIC rpl_verify_header
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-ext-header.c
//    1 /*
//    2  * Copyright (c) 2009, Swedish Institute of Computer Science.
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
//   34  *         Management of extension headers for ContikiRPL.
//   35  *
//   36  * \author Vincent Brillault <vincent.brillault@imag.fr>,
//   37  *         Joakim Eriksson <joakime@sics.se>,
//   38  *         Niclas Finne <nfi@sics.se>,
//   39  *         Nicolas Tsiftes <nvt@sics.se>.
//   40  */
//   41 
//   42 /**
//   43  * \addtogroup uip6
//   44  * @{
//   45  */
//   46 
//   47 #include "net/ip/uip.h"
//   48 #include "net/ip/tcpip.h"
//   49 #include "net/ipv6/uip-ds6.h"
//   50 #include "net/rpl/rpl-private.h"
//   51 #include "net/packetbuf.h"
//   52 
//   53 #define DEBUG DEBUG_NONE
//   54 #include "net/ip/uip-debug.h"
//   55 
//   56 #include <limits.h>
//   57 #include <string.h>
//   58 
//   59 /*---------------------------------------------------------------------------*/
//   60 #define UIP_IP_BUF                ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
//   61 #define UIP_EXT_BUF               ((struct uip_ext_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//   62 #define UIP_HBHO_BUF              ((struct uip_hbho_hdr *)&uip_buf[uip_l2_l3_hdr_len])
//   63 #define UIP_HBHO_NEXT_BUF         ((struct uip_ext_hdr *)&uip_buf[uip_l2_l3_hdr_len + RPL_HOP_BY_HOP_LEN])
//   64 #define UIP_EXT_HDR_OPT_BUF       ((struct uip_ext_hdr_opt *)&uip_buf[uip_l2_l3_hdr_len + uip_ext_opt_offset])
//   65 #define UIP_EXT_HDR_OPT_PADN_BUF  ((struct uip_ext_hdr_opt_padn *)&uip_buf[uip_l2_l3_hdr_len + uip_ext_opt_offset])
//   66 #define UIP_EXT_HDR_OPT_RPL_BUF   ((struct uip_ext_hdr_opt_rpl *)&uip_buf[uip_l2_l3_hdr_len + uip_ext_opt_offset])
//   67 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function rpl_verify_header
        THUMB
//   68 int
//   69 rpl_verify_header(int uip_ext_opt_offset)
//   70 {
rpl_verify_header:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//   71   rpl_instance_t *instance;
//   72   int down;
//   73   uint16_t sender_rank;
//   74   uint8_t sender_closer;
//   75   uip_ds6_route_t *route;
//   76 
//   77   if(UIP_HBHO_BUF->len != RPL_HOP_BY_HOP_LEN - 8) {
        LDR.N    R7,??DataTable5
        LDR.N    R5,??DataTable5_1
        MOV      R6,R0
        LDRB     R0,[R7, #+0]
        ADDS     R1,R0,R5
        LDRB     R1,[R1, #+41]
        CMP      R1,#+0
        ITTTT    EQ 
        ADDEQ    R0,R6,R0
        ADDEQ    R0,R0,R5
        LDRBEQ   R1,[R0, #+40]
        CMPEQ    R1,#+99
//   78     PRINTF("RPL: Hop-by-hop extension header has wrong size\n");
//   79     return 1;
//   80   }
//   81 
//   82   if(UIP_EXT_HDR_OPT_RPL_BUF->opt_type != UIP_EXT_HDR_OPT_RPL) {
        BNE.N    ??rpl_verify_header_0
//   83     PRINTF("RPL: Non RPL Hop-by-hop option\n");
//   84     return 1;
//   85   }
//   86 
//   87   if(UIP_EXT_HDR_OPT_RPL_BUF->opt_len != RPL_HDR_OPT_LEN) {
        LDRB     R1,[R0, #+41]
        CMP      R1,#+4
        BNE.N    ??rpl_verify_header_0
//   88     PRINTF("RPL: Bad header option! (wrong length)\n");
//   89     return 1;
//   90   }
//   91 
//   92   instance = rpl_get_instance(UIP_EXT_HDR_OPT_RPL_BUF->instance);
        LDRB     R0,[R0, #+43]
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
        MOVS     R4,R0
//   93   if(instance == NULL) {
        BEQ.N    ??rpl_verify_header_0
//   94     PRINTF("RPL: Unknown instance: %u\n",
//   95            UIP_EXT_HDR_OPT_RPL_BUF->instance);
//   96     return 1;
//   97   }
//   98 
//   99   if(UIP_EXT_HDR_OPT_RPL_BUF->flags & RPL_HDR_OPT_FWD_ERR) {
        LDRB     R0,[R7, #+0]
        ADDS     R0,R6,R0
        ADDS     R0,R0,R5
        LDRB     R1,[R0, #+42]
        LSLS     R2,R1,#+26
        BPL.N    ??rpl_verify_header_1
//  100     PRINTF("RPL: Forward error!\n");
//  101     /* We should try to repair it by removing the neighbor that caused
//  102        the packet to be forwareded in the first place. We drop any
//  103        routes that go through the neighbor that sent the packet to
//  104        us. */
//  105     route = uip_ds6_route_lookup(&UIP_IP_BUF->destipaddr);
        ADD      R0,R5,#+24
          CFI FunCall uip_ds6_route_lookup
        BL       uip_ds6_route_lookup
//  106     if(route != NULL) {
        CBZ.N    R0,??rpl_verify_header_2
//  107       uip_ds6_route_rm(route);
          CFI FunCall uip_ds6_route_rm
        BL       uip_ds6_route_rm
        B.N      ??rpl_verify_header_2
//  108     }
//  109     RPL_STAT(rpl_stats.forward_errors++);
//  110     /* Trigger DAO retransmission */
//  111     rpl_reset_dio_timer(instance);
//  112     /* drop the packet as it is not routable */
//  113     return 1;
//  114   }
//  115 
//  116   if(!instance->current_dag->joined) {
??rpl_verify_header_1:
        LDR      R2,[R4, #+12]
        LDRB     R3,[R2, #+22]
        CBZ.N    R3,??rpl_verify_header_0
//  117     PRINTF("RPL: No DAG in the instance\n");
//  118     return 1;
//  119   }
//  120 
//  121   down = 0;
        MOVS     R3,#+0
//  122   if(UIP_EXT_HDR_OPT_RPL_BUF->flags & RPL_HDR_OPT_DOWN) {
        LSLS     R1,R1,#+24
//  123     down = 1;
        ADD      R1,R0,#+42
        IT       MI 
        MOVMI    R3,#+1
        LDRH     R1,[R1, #+2]
        LDRH     R2,[R2, #+28]
        LSRS     R5,R1,#+8
        ORR      R5,R5,R1, LSL #+8
        UXTH     R5,R5
        CMP      R5,R2
        SBCS     R1,R1,R1
        LSRS     R1,R1,#+31
//  124   }
//  125 
//  126   sender_rank = UIP_HTONS(UIP_EXT_HDR_OPT_RPL_BUF->senderrank);
//  127   sender_closer = sender_rank < instance->current_dag->rank;
//  128 
//  129   PRINTF("RPL: Packet going %s, sender closer %d (%d < %d)\n", down == 1 ? "down" : "up",
//  130 	 sender_closer,
//  131 	 sender_rank,
//  132 	 instance->current_dag->rank
//  133 	 );
//  134 
//  135   if((down && !sender_closer) || (!down && sender_closer)) {
        EOR      R2,R1,#0x1
        ANDS     R2,R2,R3
        EOR      R3,R3,#0x1
        ANDS     R1,R1,R3
        ORRS     R1,R1,R2
        BEQ.N    ??rpl_verify_header_3
//  136     PRINTF("RPL: Loop detected - senderrank: %d my-rank: %d sender_closer: %d\n",
//  137 	   sender_rank, instance->current_dag->rank,
//  138 	   sender_closer);
//  139     if(UIP_EXT_HDR_OPT_RPL_BUF->flags & RPL_HDR_OPT_RANK_ERR) {
        LDRB     R1,[R0, #+42]
        LSLS     R2,R1,#+25
        BPL.N    ??rpl_verify_header_4
//  140       RPL_STAT(rpl_stats.loop_errors++);
//  141       PRINTF("RPL: Rank error signalled in RPL option!\n");
//  142       /* Packet must be dropped and dio trickle timer reset, see RFC6550 - 11.2.2.2 */
//  143       rpl_reset_dio_timer(instance);
??rpl_verify_header_2:
        MOV      R0,R4
          CFI FunCall rpl_reset_dio_timer
        BL       rpl_reset_dio_timer
//  144       return 1;
??rpl_verify_header_0:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//  145     }
//  146     PRINTF("RPL: Single error tolerated\n");
//  147     RPL_STAT(rpl_stats.loop_warnings++);
//  148     UIP_EXT_HDR_OPT_RPL_BUF->flags |= RPL_HDR_OPT_RANK_ERR;
??rpl_verify_header_4:
        ORR      R1,R1,#0x40
        STRB     R1,[R0, #+42]
//  149     return 0;
//  150   }
//  151 
//  152   PRINTF("RPL: Rank OK\n");
//  153 
//  154   return 0;
??rpl_verify_header_3:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock0
//  155 }
//  156 /*---------------------------------------------------------------------------*/
//  157 static void
//  158 set_rpl_opt(unsigned uip_ext_opt_offset)
//  159 {
//  160   uint8_t temp_len;
//  161 
//  162   memmove(UIP_HBHO_NEXT_BUF, UIP_EXT_BUF, uip_len - UIP_IPH_LEN);
//  163   memset(UIP_HBHO_BUF, 0, RPL_HOP_BY_HOP_LEN);
//  164   UIP_HBHO_BUF->next = UIP_IP_BUF->proto;
//  165   UIP_IP_BUF->proto = UIP_PROTO_HBHO;
//  166   UIP_HBHO_BUF->len = RPL_HOP_BY_HOP_LEN - 8;
//  167   UIP_EXT_HDR_OPT_RPL_BUF->opt_type = UIP_EXT_HDR_OPT_RPL;
//  168   UIP_EXT_HDR_OPT_RPL_BUF->opt_len = RPL_HDR_OPT_LEN;
//  169   UIP_EXT_HDR_OPT_RPL_BUF->flags = 0;
//  170   UIP_EXT_HDR_OPT_RPL_BUF->instance = 0;
//  171   UIP_EXT_HDR_OPT_RPL_BUF->senderrank = 0;
//  172   uip_len += RPL_HOP_BY_HOP_LEN;
//  173   temp_len = UIP_IP_BUF->len[1];
//  174   UIP_IP_BUF->len[1] += UIP_HBHO_BUF->len + 8;
//  175   if(UIP_IP_BUF->len[1] < temp_len) {
//  176     UIP_IP_BUF->len[0]++;
//  177   }
//  178 }
//  179 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function rpl_update_header_empty
        THUMB
//  180 int
//  181 rpl_update_header_empty(void)
//  182 {
rpl_update_header_empty:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  183   rpl_instance_t *instance;
//  184   int uip_ext_opt_offset;
//  185   int last_uip_ext_len;
//  186   rpl_parent_t *parent;
//  187 
//  188   last_uip_ext_len = uip_ext_len;
        LDR.N    R5,??DataTable5
//  189   uip_ext_len = 0;
//  190   uip_ext_opt_offset = 2;
//  191 
//  192   PRINTF("RPL: Verifying the presence of the RPL header option\n");
//  193 
//  194   switch(UIP_IP_BUF->proto) {
        LDR.N    R4,??DataTable5_1
        LDRB     R6,[R5, #+0]
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
        LDRB     R0,[R4, #+6]
        CMP      R0,#+0
        BNE.N    ??rpl_update_header_empty_0
//  195   case UIP_PROTO_HBHO:
//  196     if(UIP_HBHO_BUF->len != RPL_HOP_BY_HOP_LEN - 8) {
        LDRB     R0,[R4, #+41]
        CMP      R0,#+0
        ITTTT    EQ 
        LDRBEQ   R0,[R4, #+42]
        CMPEQ    R0,#+99
        LDRBEQ   R0,[R4, #+43]
        CMPEQ    R0,#+4
//  197       PRINTF("RPL: Hop-by-hop extension header has wrong size\n");
//  198       uip_ext_len = last_uip_ext_len;
//  199       return 0;
//  200     }
//  201     if(UIP_EXT_HDR_OPT_RPL_BUF->opt_type != UIP_EXT_HDR_OPT_RPL) {
//  202       PRINTF("RPL: Non RPL Hop-by-hop option support not implemented\n");
//  203       uip_ext_len = last_uip_ext_len;
//  204       return 0;
//  205     }
//  206     if(UIP_EXT_HDR_OPT_RPL_BUF->opt_len != RPL_HDR_OPT_LEN) {
        BNE.W    ??rpl_update_header_empty_1
//  207       PRINTF("RPL: RPL Hop-by-hop option has wrong length\n");
//  208       uip_ext_len = last_uip_ext_len;
//  209       return 0;
//  210     }
//  211     instance = rpl_get_instance(UIP_EXT_HDR_OPT_RPL_BUF->instance);
        LDRB     R0,[R4, #+45]
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
//  212     if(instance == NULL || !instance->used || !instance->current_dag->joined) {
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R1,[R0, #+141]
        CMPNE    R1,#+0
        ITTT     NE 
        LDRNE    R0,[R0, #+12]
        LDRBNE   R1,[R0, #+22]
        CMPNE    R1,#+0
        BEQ.N    ??rpl_update_header_empty_2
//  213       PRINTF("RPL: Unable to add hop-by-hop extension header: incorrect instance\n");
//  214       return 0;
//  215     }
//  216     break;
//  217   default:
//  218 #if RPL_INSERT_HBH_OPTION
//  219     PRINTF("RPL: No hop-by-hop option found, creating it\n");
//  220     if(uip_len + RPL_HOP_BY_HOP_LEN > UIP_BUFSIZE) {
//  221       PRINTF("RPL: Packet too long: impossible to add hop-by-hop option\n");
//  222       uip_ext_len = last_uip_ext_len;
//  223       return 0;
//  224     }
//  225     set_rpl_opt(uip_ext_opt_offset);
//  226     uip_ext_len = last_uip_ext_len + RPL_HOP_BY_HOP_LEN;
//  227 #endif
//  228     return 0;
//  229   }
//  230 
//  231   switch(UIP_EXT_HDR_OPT_BUF->type) {
        LDRB     R1,[R5, #+0]
        ADDS     R1,R1,R4
        LDRB     R2,[R1, #+42]
        CMP      R2,#+99
        BNE.N    ??rpl_update_header_empty_1
//  232   case UIP_EXT_HDR_OPT_RPL:
//  233     PRINTF("RPL: Updating RPL option\n");
//  234     UIP_EXT_HDR_OPT_RPL_BUF->senderrank = UIP_HTONS(instance->current_dag->rank);
        LDRH     R0,[R0, #+28]
        LSRS     R2,R0,#+8
        ORR      R0,R2,R0, LSL #+8
        STRH     R0,[R1, #+46]
//  235 
//  236     /* Check the direction of the down flag, as per Section 11.2.2.3,
//  237        which states that if a packet is going down it should in
//  238        general not go back up again. If this happens, a
//  239        RPL_HDR_OPT_FWD_ERR should be flagged. */
//  240     if((UIP_EXT_HDR_OPT_RPL_BUF->flags & RPL_HDR_OPT_DOWN)) {
        LDRB     R0,[R1, #+44]
        LSLS     R0,R0,#+24
        ADD      R0,R4,#+24
        BPL.N    ??rpl_update_header_empty_3
//  241       if(uip_ds6_route_lookup(&UIP_IP_BUF->destipaddr) == NULL) {
          CFI FunCall uip_ds6_route_lookup
        BL       uip_ds6_route_lookup
        CMP      R0,#+0
        BNE.N    ??rpl_update_header_empty_1
//  242         UIP_EXT_HDR_OPT_RPL_BUF->flags |= RPL_HDR_OPT_FWD_ERR;
        LDRB     R0,[R5, #+0]
        ADDS     R0,R0,R4
        LDRB     R1,[R0, #+44]
        ORR      R1,R1,#0x20
        STRB     R1,[R0, #+44]
//  243         PRINTF("RPL forwarding error\n");
//  244         /* We should send back the packet to the originating parent,
//  245            but it is not feasible yet, so we send a No-Path DAO instead */
//  246         PRINTF("RPL generate No-Path DAO\n");
//  247         parent = rpl_get_parent((uip_lladdr_t *)packetbuf_addr(PACKETBUF_ADDR_SENDER));
        MOVS     R0,#+18
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
          CFI FunCall rpl_get_parent
        BL       rpl_get_parent
//  248         if(parent != NULL) {
        CBZ.N    R0,??rpl_update_header_empty_4
//  249           dao_output_target(parent, &UIP_IP_BUF->destipaddr, RPL_ZERO_LIFETIME);
        MOVS     R2,#+0
        ADD      R1,R4,#+24
          CFI FunCall dao_output_target
        BL       dao_output_target
//  250         }
//  251         /* Drop packet */
//  252         return 1;
??rpl_update_header_empty_4:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//  253       }
//  254     } else {
??rpl_update_header_empty_0:
        LDR.N    R7,??DataTable5_2
        LDRH     R0,[R7, #+0]
        ADD      R1,R0,#+8
        MOVW     R2,#+1515
        CMP      R1,R2
        BGE.N    ??rpl_update_header_empty_1
        SUB      R2,R0,#+40
        ADD      R1,R4,#+40
        ADD      R0,R4,#+48
          CFI FunCall __aeabi_memmove
        BL       __aeabi_memmove
        LDRB     R0,[R5, #+0]
        ADDS     R0,R0,R4
        MOVS     R1,#+8
        ADDS     R0,R0,#+40
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
        LDRB     R0,[R5, #+0]
        ADDS     R1,R0,R4
        LDRB     R0,[R4, #+6]
        STRB     R0,[R1, #+40]
        MOVS     R2,#+0
        MOVS     R0,#+0
        STRB     R0,[R4, #+6]
        ADD      R0,R1,#+40
        STRB     R2,[R0, #+1]
        MOVS     R2,#+99
        STRB     R2,[R1, #+42]
        MOVS     R2,#+4
        STRB     R2,[R1, #+43]
        MOVS     R2,#+0
        STRB     R2,[R1, #+44]
        STRB     R2,[R1, #+45]
        STRH     R2,[R1, #+46]
        LDRH     R1,[R7, #+0]
        ADDS     R1,R1,#+8
        STRH     R1,[R7, #+0]
        LDRB     R0,[R0, #+1]
        LDRB     R1,[R4, #+5]
        ADDS     R0,R0,#+8
        ADDS     R0,R0,R1
        STRB     R0,[R4, #+5]
        LDRB     R0,[R4, #+5]
        CMP      R0,R1
        BCS.N    ??rpl_update_header_empty_5
        LDRB     R0,[R4, #+4]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+4]
??rpl_update_header_empty_5:
        ADD      R0,R6,#+8
        STRB     R0,[R5, #+0]
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
//  255       /* Set the down extension flag correctly as described in Section
//  256          11.2 of RFC6550. If the packet progresses along a DAO route,
//  257          the down flag should be set. */
//  258       if(uip_ds6_route_lookup(&UIP_IP_BUF->destipaddr) == NULL) {
??rpl_update_header_empty_3:
          CFI FunCall uip_ds6_route_lookup
        BL       uip_ds6_route_lookup
        CMP      R0,#+0
        LDRB     R0,[R5, #+0]
        BNE.N    ??rpl_update_header_empty_6
//  259         /* No route was found, so this packet will go towards the RPL
//  260            root. If so, we should not set the down flag. */
//  261         UIP_EXT_HDR_OPT_RPL_BUF->flags &= ~RPL_HDR_OPT_DOWN;
        ADDS     R0,R0,R4
        LDRB     R1,[R0, #+44]
        AND      R1,R1,#0x7F
        B.N      ??rpl_update_header_empty_7
//  262         PRINTF("RPL option going up\n");
//  263       } else {
//  264         /* A DAO route was found so we set the down flag. */
//  265         UIP_EXT_HDR_OPT_RPL_BUF->flags |= RPL_HDR_OPT_DOWN;
??rpl_update_header_empty_6:
        ADDS     R0,R0,R4
        LDRB     R1,[R0, #+44]
        ORR      R1,R1,#0x80
??rpl_update_header_empty_7:
        STRB     R1,[R0, #+44]
//  266         PRINTF("RPL option going down\n");
//  267       }
//  268     }
//  269 
//  270     uip_ext_len = last_uip_ext_len;
//  271     return 0;
//  272   default:
//  273     PRINTF("RPL: Multi Hop-by-hop options not implemented\n");
//  274     uip_ext_len = last_uip_ext_len;
??rpl_update_header_empty_1:
        STRB     R6,[R5, #+0]
//  275     return 0;
??rpl_update_header_empty_2:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock1
//  276   }
//  277 }
//  278 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function rpl_update_header_final
        THUMB
//  279 int
//  280 rpl_update_header_final(uip_ipaddr_t *addr)
//  281 {
rpl_update_header_final:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  282   rpl_parent_t *parent;
//  283   int uip_ext_opt_offset;
//  284   int last_uip_ext_len;
//  285 
//  286   last_uip_ext_len = uip_ext_len;
        LDR.N    R4,??DataTable5
//  287   uip_ext_len = 0;
//  288   uip_ext_opt_offset = 2;
//  289 
//  290   if(UIP_IP_BUF->proto == UIP_PROTO_HBHO) {
        LDR.N    R5,??DataTable5_1
        LDRB     R1,[R4, #+0]
        MOVS     R2,#+0
        STRB     R2,[R4, #+0]
        LDRB     R2,[R5, #+6]
        CBNZ.N   R2,??rpl_update_header_final_0
//  291     if(UIP_HBHO_BUF->len != RPL_HOP_BY_HOP_LEN - 8) {
        LDRB     R2,[R5, #+41]
        CBZ.N    R2,??rpl_update_header_final_1
//  292       PRINTF("RPL: Non RPL Hop-by-hop options support not implemented\n");
//  293       uip_ext_len = last_uip_ext_len;
        STRB     R1,[R4, #+0]
//  294       return 0;
        B.N      ??rpl_update_header_final_0
//  295     }
//  296 
//  297     if(UIP_EXT_HDR_OPT_BUF->type == UIP_EXT_HDR_OPT_RPL) {
??rpl_update_header_final_1:
        LDRB     R1,[R5, #+42]
        CMP      R1,#+99
        ITT      EQ 
        LDRHEQ   R1,[R5, #+46]
        CMPEQ    R1,#+0
//  298       if(UIP_EXT_HDR_OPT_RPL_BUF->senderrank == 0) {
        BNE.N    ??rpl_update_header_final_0
//  299         PRINTF("RPL: Updating RPL option\n");
//  300         if(default_instance == NULL || !default_instance->used || !default_instance->current_dag->joined) {
        LDR.N    R6,??DataTable5_3
        LDR      R1,[R6, #+0]
        CMP      R1,#+0
        ITT      NE 
        LDRBNE   R2,[R1, #+141]
        CMPNE    R2,#+0
        BEQ.N    ??rpl_update_header_final_2
        LDR      R2,[R1, #+12]
        LDRB     R1,[R2, #+22]
        CBNZ.N   R1,??rpl_update_header_final_3
//  301           PRINTF("RPL: Unable to add hop-by-hop extension header: incorrect default instance\n");
//  302           return 1;
??rpl_update_header_final_2:
        MOVS     R0,#+1
        POP      {R4-R6,PC}
//  303         }
//  304         parent = rpl_find_parent(default_instance->current_dag, addr);
??rpl_update_header_final_3:
        MOV      R1,R0
        MOV      R0,R2
          CFI FunCall rpl_find_parent
        BL       rpl_find_parent
//  305         if(parent == NULL || parent != parent->dag->preferred_parent) {
        CBZ.N    R0,??rpl_update_header_final_4
        LDR      R1,[R0, #+4]
        LDR      R1,[R1, #+24]
        CMP      R0,R1
        BEQ.N    ??rpl_update_header_final_5
//  306           UIP_EXT_HDR_OPT_RPL_BUF->flags = RPL_HDR_OPT_DOWN;
??rpl_update_header_final_4:
        LDRB     R1,[R4, #+0]
        ADDS     R1,R1,R5
        MOVS     R0,#+128
        STRB     R0,[R1, #+44]
??rpl_update_header_final_5:
        LDRB     R0,[R4, #+0]
        LDR      R1,[R6, #+0]
        LDRB     R2,[R1, #+140]
        ADDS     R0,R0,R5
        ADDS     R0,R0,#+44
        STRB     R2,[R0, #+1]
        LDR      R1,[R1, #+12]
        LDRH     R1,[R1, #+28]
        LSRS     R2,R1,#+8
        ORR      R1,R2,R1, LSL #+8
        STRH     R1,[R0, #+2]
//  307         }
//  308         UIP_EXT_HDR_OPT_RPL_BUF->instance = default_instance->instance_id;
//  309         UIP_EXT_HDR_OPT_RPL_BUF->senderrank = UIP_HTONS(default_instance->current_dag->rank);
//  310       }
//  311     }
//  312   }
//  313   return 0;
??rpl_update_header_final_0:
        MOVS     R0,#+0
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//  314 }
//  315 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function rpl_remove_header
        THUMB
//  316 void
//  317 rpl_remove_header(void)
//  318 {
rpl_remove_header:
        PUSH     {R3,R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+8
//  319   uint8_t temp_len;
//  320 
//  321   uip_ext_len = 0;
        LDR.N    R1,??DataTable5
        MOVS     R0,#+0
        STRB     R0,[R1, #+0]
//  322 
//  323   PRINTF("RPL: Verifying the presence of the RPL header option\n");
//  324   switch(UIP_IP_BUF->proto){
        LDR.N    R0,??DataTable5_1
        LDRB     R1,[R0, #+6]
        CBNZ.N   R1,??rpl_remove_header_0
//  325   case UIP_PROTO_HBHO:
//  326     PRINTF("RPL: Removing the RPL header option\n");
//  327     UIP_IP_BUF->proto = UIP_HBHO_BUF->next;
        LDRB     R1,[R0, #+40]
//  328     temp_len = UIP_IP_BUF->len[1];
//  329     uip_len -= UIP_HBHO_BUF->len + 8;
        LDR.N    R3,??DataTable5_2
        LDRB     R2,[R0, #+41]
        LDRH     R4,[R3, #+0]
        STRB     R1,[R0, #+6]
        SUBS     R4,R4,R2
        LDRB     R1,[R0, #+5]
//  330     UIP_IP_BUF->len[1] -= UIP_HBHO_BUF->len + 8;
        SUBS     R2,R1,R2
        SUBS     R2,R2,#+8
        STRB     R2,[R0, #+5]
        SUBS     R4,R4,#+8
//  331     if(UIP_IP_BUF->len[1] > temp_len) {
        UXTB     R2,R2
        CMP      R1,R2
        STRH     R4,[R3, #+0]
        BCS.N    ??rpl_remove_header_1
//  332       UIP_IP_BUF->len[0]--;
        LDRB     R1,[R0, #+4]
        SUBS     R1,R1,#+1
        STRB     R1,[R0, #+4]
//  333     }
//  334     memmove(UIP_EXT_BUF, UIP_HBHO_NEXT_BUF, uip_len - UIP_IPH_LEN);
??rpl_remove_header_1:
        UXTH     R4,R4
        SUB      R2,R4,#+40
        POP      {R3,R4}
          CFI R4 SameValue
          CFI CFA R13+0
        ADD      R1,R0,#+48
        ADDS     R0,R0,#+40
          CFI FunCall __aeabi_memmove
        B.W      __aeabi_memmove
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+8
//  335     break;
//  336   default:
//  337     PRINTF("RPL: No hop-by-hop Option found\n");
//  338   }
//  339 }
??rpl_remove_header_0:
        POP      {R0,R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  340 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function rpl_invert_header
        THUMB
//  341 uint8_t
//  342 rpl_invert_header(void)
//  343 {
rpl_invert_header:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  344   uint8_t uip_ext_opt_offset;
//  345   uint8_t last_uip_ext_len;
//  346 
//  347   last_uip_ext_len = uip_ext_len;
        LDR.N    R4,??DataTable5
//  348   uip_ext_len = 0;
//  349   uip_ext_opt_offset = 2;
//  350 
//  351   PRINTF("RPL: Verifying the presence of the RPL header option\n");
//  352   switch(UIP_IP_BUF->proto) {
        LDR.N    R6,??DataTable5_1
        LDRB     R5,[R4, #+0]
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
        LDRB     R0,[R6, #+6]
        CMP      R0,#+0
        ITT      EQ 
        LDRBEQ   R0,[R6, #+42]
        CMPEQ    R0,#+99
//  353   case UIP_PROTO_HBHO:
//  354     break;
//  355   default:
//  356     PRINTF("RPL: No hop-by-hop Option found\n");
//  357     uip_ext_len = last_uip_ext_len;
//  358     return 0;
//  359   }
//  360 
//  361   switch (UIP_EXT_HDR_OPT_BUF->type) {
        BNE.N    ??rpl_invert_header_0
//  362   case UIP_EXT_HDR_OPT_RPL:
//  363     PRINTF("RPL: Updating RPL option (switching direction)\n");
//  364     UIP_EXT_HDR_OPT_RPL_BUF->flags &= RPL_HDR_OPT_DOWN;
//  365     UIP_EXT_HDR_OPT_RPL_BUF->flags ^= RPL_HDR_OPT_DOWN;
        LDRB     R0,[R6, #+44]
        AND      R0,R0,#0x80
        EOR      R0,R0,#0x80
        STRB     R0,[R6, #+44]
//  366     UIP_EXT_HDR_OPT_RPL_BUF->senderrank = UIP_HTONS(rpl_get_instance(UIP_EXT_HDR_OPT_RPL_BUF->instance)->current_dag->rank);
        LDRB     R0,[R6, #+45]
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
        MOV      R7,R0
        LDRB     R0,[R4, #+0]
        ADDS     R0,R0,R6
        LDRB     R0,[R0, #+45]
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
        LDR      R1,[R7, #+12]
        LDR      R0,[R0, #+12]
        LDRH     R1,[R1, #+28]
        LDRH     R0,[R0, #+28]
        LSRS     R0,R0,#+8
        ORR      R0,R0,R1, LSL #+8
        LDRB     R1,[R4, #+0]
        ADDS     R1,R1,R6
        STRH     R0,[R1, #+46]
//  367     uip_ext_len = last_uip_ext_len;
        STRB     R5,[R4, #+0]
//  368     return RPL_HOP_BY_HOP_LEN;
        MOVS     R0,#+8
        POP      {R1,R4-R7,PC}
//  369   default:
//  370     PRINTF("RPL: Multi Hop-by-hop options not implemented\n");
//  371     uip_ext_len = last_uip_ext_len;
??rpl_invert_header_0:
        STRB     R5,[R4, #+0]
//  372     return 0;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock4
//  373   }
//  374 }
//  375 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function rpl_insert_header
        THUMB
//  376 void
//  377 rpl_insert_header(void)
//  378 {
//  379 #if RPL_INSERT_HBH_OPTION
//  380   if(default_instance != NULL && !uip_is_addr_mcast(&UIP_IP_BUF->destipaddr)) {
rpl_insert_header:
        LDR.N    R0,??DataTable5_3
        LDR      R0,[R0, #+0]
        CBZ.N    R0,??rpl_insert_header_0
        LDR.N    R0,??DataTable5_1
        LDRB     R0,[R0, #+24]
        CMP      R0,#+255
        IT       NE 
//  381     rpl_update_header_empty();
          CFI FunCall rpl_update_header_empty
        BNE.W    rpl_update_header_empty
//  382   }
//  383 #endif
//  384 }
??rpl_insert_header_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     uip_ext_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     default_instance

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  385 /*---------------------------------------------------------------------------*/
//  386 
//  387 /** @}*/
// 
// 820 bytes in section .text
// 
// 820 bytes of CODE memory
//
//Errors: none
//Warnings: 1
