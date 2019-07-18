///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:42
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-ds6-nbr.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-ds6-nbr.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip-ds6-nbr.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN linkaddr_cmp
        EXTERN linkaddr_null
        EXTERN memcmp
        EXTERN nbr_table_add_lladdr
        EXTERN nbr_table_get_from_lladdr
        EXTERN nbr_table_get_lladdr
        EXTERN nbr_table_head
        EXTERN nbr_table_next
        EXTERN nbr_table_register
        EXTERN nbr_table_remove
        EXTERN packetbuf_addr
        EXTERN stimer_expired
        EXTERN stimer_remaining
        EXTERN stimer_set
        EXTERN uip_ds6_defrt_lookup
        EXTERN uip_ds6_defrt_rm
        EXTERN uip_ds6_if
        EXTERN uip_len
        EXTERN uip_nd6_ns_output
        EXTERN uip_packetqueue_free
        EXTERN uip_packetqueue_new

        PUBLIC ds6_neighbors
        PUBLIC uip_ds6_get_least_lifetime_neighbor
        PUBLIC uip_ds6_link_neighbor_callback
        PUBLIC uip_ds6_nbr_add
        PUBLIC uip_ds6_nbr_get_ipaddr
        PUBLIC uip_ds6_nbr_get_ll
        PUBLIC uip_ds6_nbr_ipaddr_from_lladdr
        PUBLIC uip_ds6_nbr_ll_lookup
        PUBLIC uip_ds6_nbr_lladdr_from_ipaddr
        PUBLIC uip_ds6_nbr_lookup
        PUBLIC uip_ds6_nbr_num
        PUBLIC uip_ds6_nbr_rm
        PUBLIC uip_ds6_neighbor_periodic
        PUBLIC uip_ds6_neighbors_init
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-ds6-nbr.c
//    1 /*
//    2  * Copyright (c) 2013, Swedish Institute of Computer Science.
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
//   29  *
//   30  */
//   31 
//   32 /**
//   33  * \addtogroup uip6
//   34  * @{
//   35  */
//   36 
//   37 /**
//   38  * \file
//   39  *    IPv6 Neighbor cache (link-layer/IPv6 address mapping)
//   40  * \author Mathilde Durvy <mdurvy@cisco.com>
//   41  * \author Julien Abeille <jabeille@cisco.com>
//   42  * \author Simon Duquennoy <simonduq@sics.se>
//   43  *
//   44  */
//   45 
//   46 #include <string.h>
//   47 #include <stdlib.h>
//   48 #include <stddef.h>
//   49 #include "lib/list.h"
//   50 #include "net/linkaddr.h"
//   51 #include "net/packetbuf.h"
//   52 #include "net/ipv6/uip-ds6-nbr.h"
//   53 
//   54 #define DEBUG DEBUG_NONE
//   55 #include "net/ip/uip-debug.h"
//   56 
//   57 
//   58 #ifdef UIP_CONF_DS6_NEIGHBOR_STATE_CHANGED
//   59 #define NEIGHBOR_STATE_CHANGED(n) UIP_CONF_DS6_NEIGHBOR_STATE_CHANGED(n)
//   60 void NEIGHBOR_STATE_CHANGED(uip_ds6_nbr_t *n);
//   61 #else
//   62 #define NEIGHBOR_STATE_CHANGED(n)
//   63 #endif /* UIP_DS6_CONF_NEIGHBOR_STATE_CHANGED */
//   64 
//   65 #ifdef UIP_CONF_DS6_LINK_NEIGHBOR_CALLBACK
//   66 #define LINK_NEIGHBOR_CALLBACK(addr, status, numtx) UIP_CONF_DS6_LINK_NEIGHBOR_CALLBACK(addr, status, numtx)
//   67 void LINK_NEIGHBOR_CALLBACK(const linkaddr_t *addr, int status, int numtx);
//   68 #else
//   69 #define LINK_NEIGHBOR_CALLBACK(addr, status, numtx)
//   70 #endif /* UIP_CONF_DS6_LINK_NEIGHBOR_CALLBACK */
//   71 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   72 NBR_TABLE_GLOBAL(uip_ds6_nbr_t, ds6_neighbors);
_ds6_neighbors_mem:
        DS8 44

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// static __absolute nbr_table_t ds6_neighbors_struct
ds6_neighbors_struct:
        DATA
        DC32 0, 44, 0H, _ds6_neighbors_mem

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// __absolute nbr_table_t *ds6_neighbors
ds6_neighbors:
        DATA
        DC32 ds6_neighbors_struct
//   73 
//   74 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function uip_ds6_neighbors_init
        THUMB
//   75 void
//   76 uip_ds6_neighbors_init(void)
//   77 {
//   78   nbr_table_register(ds6_neighbors, (nbr_table_callback *)uip_ds6_nbr_rm);
uip_ds6_neighbors_init:
        LDR.N    R0,??DataTable10
        ADR.W    R1,uip_ds6_nbr_rm
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_register
        B.W      nbr_table_register
          CFI EndBlock cfiBlock0
//   79 }
//   80 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function uip_ds6_nbr_add
        THUMB
//   81 uip_ds6_nbr_t *
//   82 uip_ds6_nbr_add(const uip_ipaddr_t *ipaddr, const uip_lladdr_t *lladdr,
//   83                 uint8_t isrouter, uint8_t state)
//   84 {
uip_ds6_nbr_add:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//   85   uip_ds6_nbr_t *nbr = nbr_table_add_lladdr(ds6_neighbors, (linkaddr_t*)lladdr);
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+0]
        MOV      R5,R2
        MOV      R6,R3
          CFI FunCall nbr_table_add_lladdr
        BL       nbr_table_add_lladdr
        MOVS     R7,R0
//   86   if(nbr) {
        BEQ.N    ??uip_ds6_nbr_add_0
//   87     uip_ipaddr_copy(&nbr->ipaddr, ipaddr);
        MOV      R1,R4
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   88     nbr->isrouter = isrouter;
        ADD      R0,R7,#+32
        STRB     R5,[R0, #+1]
//   89     nbr->state = state;
        STRB     R6,[R0, #+2]
//   90   #if UIP_CONF_IPV6_QUEUE_PKT
//   91     uip_packetqueue_new(&nbr->packethandle);
        ADD      R0,R7,#+40
          CFI FunCall uip_packetqueue_new
        BL       uip_packetqueue_new
//   92   #endif /* UIP_CONF_IPV6_QUEUE_PKT */
//   93     /* timers are set separately, for now we put them in expired state */
//   94     stimer_set(&nbr->reachable, 0);
        MOVS     R1,#+0
        ADD      R0,R7,#+16
          CFI FunCall stimer_set
        BL       stimer_set
//   95     stimer_set(&nbr->sendns, 0);
        MOVS     R1,#+0
        ADD      R0,R7,#+24
          CFI FunCall stimer_set
        BL       stimer_set
//   96     nbr->nscount = 0;
        MOVS     R0,#+0
        STRB     R0,[R7, #+32]
//   97     PRINTF("Adding neighbor with ip addr ");
//   98     PRINT6ADDR(ipaddr);
//   99     PRINTF(" link addr ");
//  100     PRINTLLADDR(lladdr);
//  101     PRINTF(" state %u\n", state);
//  102     NEIGHBOR_STATE_CHANGED(nbr);
//  103     return nbr;
        MOV      R0,R7
        POP      {R1,R4-R7,PC}
//  104   } else {
//  105     PRINTF("uip_ds6_nbr_add drop ip addr ");
//  106     PRINT6ADDR(ipaddr);
//  107     PRINTF(" link addr (%p) ", lladdr);
//  108     PRINTLLADDR(lladdr);
//  109     PRINTF(" state %u\n", state);
//  110     return NULL;
??uip_ds6_nbr_add_0:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock1
//  111   }
//  112 }
//  113 
//  114 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function uip_ds6_nbr_rm
        THUMB
//  115 void
//  116 uip_ds6_nbr_rm(uip_ds6_nbr_t *nbr)
//  117 {
uip_ds6_nbr_rm:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  118   if(nbr != NULL) {
        BEQ.N    ??uip_ds6_nbr_rm_0
//  119 #if UIP_CONF_IPV6_QUEUE_PKT
//  120     uip_packetqueue_free(&nbr->packethandle);
        ADD      R0,R4,#+40
          CFI FunCall uip_packetqueue_free
        BL       uip_packetqueue_free
//  121 #endif /* UIP_CONF_IPV6_QUEUE_PKT */
//  122     NEIGHBOR_STATE_CHANGED(nbr);
//  123     nbr_table_remove(ds6_neighbors, nbr);
        MOV      R1,R4
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+0]
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall nbr_table_remove
        B.W      nbr_table_remove
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  124   }
//  125   return;
??uip_ds6_nbr_rm_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//  126 }
//  127 
//  128 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function uip_ds6_nbr_get_ipaddr
          CFI NoCalls
        THUMB
//  129 const uip_ipaddr_t *
//  130 uip_ds6_nbr_get_ipaddr(const uip_ds6_nbr_t *nbr)
//  131 {
//  132   return (nbr != NULL) ? &nbr->ipaddr : NULL;
uip_ds6_nbr_get_ipaddr:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  133 }
//  134 
//  135 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function uip_ds6_nbr_get_ll
        THUMB
//  136 const uip_lladdr_t *
//  137 uip_ds6_nbr_get_ll(const uip_ds6_nbr_t *nbr)
//  138 {
//  139   return (const uip_lladdr_t *)nbr_table_get_lladdr(ds6_neighbors, nbr);
uip_ds6_nbr_get_ll:
        MOV      R1,R0
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_lladdr
        B.W      nbr_table_get_lladdr
          CFI EndBlock cfiBlock4
//  140 }
//  141 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function uip_ds6_nbr_num
        THUMB
//  142 int
//  143 uip_ds6_nbr_num(void)
//  144 {
uip_ds6_nbr_num:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  145   uip_ds6_nbr_t *nbr;
//  146   int num;
//  147 
//  148   num = 0;
//  149   for(nbr = nbr_table_head(ds6_neighbors);
        LDR.N    R5,??DataTable10
        LDR      R0,[R5, #+0]
        MOVS     R4,#+0
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        B.N      ??uip_ds6_nbr_num_0
//  150       nbr != NULL;
//  151       nbr = nbr_table_next(ds6_neighbors, nbr)) {
//  152     num++;
??uip_ds6_nbr_num_1:
        MOV      R1,R0
        LDR      R0,[R5, #+0]
        ADDS     R4,R4,#+1
          CFI FunCall nbr_table_next
        BL       nbr_table_next
??uip_ds6_nbr_num_0:
        CMP      R0,#+0
        BNE.N    ??uip_ds6_nbr_num_1
//  153   }
//  154   return num;
        MOV      R0,R4
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5
//  155 }
//  156 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function uip_ds6_nbr_lookup
        THUMB
//  157 uip_ds6_nbr_t *
//  158 uip_ds6_nbr_lookup(const uip_ipaddr_t *ipaddr)
//  159 {
uip_ds6_nbr_lookup:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  160   uip_ds6_nbr_t *nbr = nbr_table_head(ds6_neighbors);
        LDR.N    R5,??DataTable10
        MOV      R4,R0
        LDR      R0,[R5, #+0]
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        MOV      R6,R0
//  161   if(ipaddr != NULL) {
        CBNZ.N   R4,??uip_ds6_nbr_lookup_0
//  162     while(nbr != NULL) {
//  163       if(uip_ipaddr_cmp(&nbr->ipaddr, ipaddr)) {
//  164         return nbr;
//  165       }
//  166       nbr = nbr_table_next(ds6_neighbors, nbr);
//  167     }
//  168   }
//  169   return NULL;
??uip_ds6_nbr_lookup_1:
        MOVS     R0,#+0
        POP      {R4-R6,PC}       ;; return
??uip_ds6_nbr_lookup_2:
        LDR      R0,[R5, #+0]
        MOV      R1,R6
          CFI FunCall nbr_table_next
        BL       nbr_table_next
        MOV      R6,R0
??uip_ds6_nbr_lookup_0:
        CMP      R6,#+0
        BEQ.N    ??uip_ds6_nbr_lookup_1
        MOVS     R2,#+16
        MOV      R1,R4
        MOV      R0,R6
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??uip_ds6_nbr_lookup_2
        MOV      R0,R6
        POP      {R4-R6,PC}
          CFI EndBlock cfiBlock6
//  170 }
//  171 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function uip_ds6_nbr_ll_lookup
          CFI NoCalls
        THUMB
//  172 uip_ds6_nbr_t *
//  173 uip_ds6_nbr_ll_lookup(const uip_lladdr_t *lladdr)
//  174 {
//  175   return nbr_table_get_from_lladdr(ds6_neighbors, (linkaddr_t*)lladdr);
uip_ds6_nbr_ll_lookup:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock7
//  176 }
//  177 
//  178 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function uip_ds6_nbr_ipaddr_from_lladdr
          CFI NoCalls
        THUMB
//  179 uip_ipaddr_t *
//  180 uip_ds6_nbr_ipaddr_from_lladdr(const uip_lladdr_t *lladdr)
uip_ds6_nbr_ipaddr_from_lladdr:
        Nop      
          CFI EndBlock cfiBlock8
//  181 {
//  182   uip_ds6_nbr_t *nbr = uip_ds6_nbr_ll_lookup(lladdr);
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine0:
        MOV      R1,R0
        LDR.N    R0,??DataTable10
        LDR      R0,[R0, #+0]
          CFI FunCall uip_ds6_nbr_ll_lookup nbr_table_get_from_lladdr
          CFI FunCall uip_ds6_nbr_ipaddr_from_lladdr nbr_table_get_from_lladdr
        B.W      nbr_table_get_from_lladdr
          CFI EndBlock cfiBlock9
//  183   return nbr ? &nbr->ipaddr : NULL;
//  184 }
//  185 
//  186 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function uip_ds6_nbr_lladdr_from_ipaddr
        THUMB
//  187 const uip_lladdr_t *
//  188 uip_ds6_nbr_lladdr_from_ipaddr(const uip_ipaddr_t *ipaddr)
//  189 {
uip_ds6_nbr_lladdr_from_ipaddr:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  190   uip_ds6_nbr_t *nbr = uip_ds6_nbr_lookup(ipaddr);
        LDR.N    R5,??DataTable10
        MOV      R4,R0
        LDR      R0,[R5, #+0]
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        MOV      R6,R0
        CBNZ.N   R4,??uip_ds6_nbr_lladdr_from_ipaddr_0
??uip_ds6_nbr_lladdr_from_ipaddr_1:
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
??uip_ds6_nbr_lladdr_from_ipaddr_2:
          CFI FunCall nbr_table_next
        BL       nbr_table_next
        MOV      R6,R0
??uip_ds6_nbr_lladdr_from_ipaddr_0:
        CMP      R6,#+0
        BEQ.N    ??uip_ds6_nbr_lladdr_from_ipaddr_1
        LDR      R7,[R5, #+0]
        MOVS     R2,#+16
        MOV      R1,R4
        MOV      R0,R6
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        MOV      R1,R6
        MOV      R0,R7
        BNE.N    ??uip_ds6_nbr_lladdr_from_ipaddr_2
        POP      {R2,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall nbr_table_get_lladdr
        B.W      nbr_table_get_lladdr
          CFI EndBlock cfiBlock10
//  191   return nbr ? uip_ds6_nbr_get_ll(nbr) : NULL;
//  192 }
//  193 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function uip_ds6_link_neighbor_callback
        THUMB
//  194 void
//  195 uip_ds6_link_neighbor_callback(int status, int numtx)
//  196 {
uip_ds6_link_neighbor_callback:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  197   const linkaddr_t *dest = packetbuf_addr(PACKETBUF_ADDR_RECEIVER);
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
//  198   if(linkaddr_cmp(dest, &linkaddr_null)) {
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.N    R1,??DataTable10_1
          CFI FunCall linkaddr_cmp
        B.W      linkaddr_cmp
          CFI EndBlock cfiBlock11
//  199     return;
//  200   }
//  201 
//  202   LINK_NEIGHBOR_CALLBACK(dest, status, numtx);
//  203 
//  204 #if UIP_DS6_LL_NUD
//  205   /* From RFC4861, page 72, last paragraph of section 7.3.3:
//  206    *
//  207    * 	"In some cases, link-specific information may indicate that a path to
//  208    * 	a neighbor has failed (e.g., the resetting of a virtual circuit). In
//  209    * 	such cases, link-specific information may be used to purge Neighbor
//  210    * 	Cache entries before the Neighbor Unreachability Detection would do
//  211    * 	so. However, link-specific information MUST NOT be used to confirm
//  212    * 	the reachability of a neighbor; such information does not provide
//  213    * 	end-to-end confirmation between neighboring IP layers."
//  214    *
//  215    * However, we assume that receiving a link layer ack ensures the delivery
//  216    * of the transmitted packed to the IP stack of the neighbour. This is a 
//  217    * fair assumption and allows battery powered nodes save some battery by 
//  218    * not re-testing the state of a neighbour periodically if it 
//  219    * acknowledges link packets. */
//  220   if(status == MAC_TX_OK) {
//  221     uip_ds6_nbr_t *nbr;
//  222     nbr = uip_ds6_nbr_ll_lookup((uip_lladdr_t *)dest);
//  223     if(nbr != NULL && nbr->state != NBR_INCOMPLETE) {
//  224       nbr->state = NBR_REACHABLE;
//  225       stimer_set(&nbr->reachable, UIP_ND6_REACHABLE_TIME / 1000);
//  226       PRINTF("uip-ds6-neighbor : received a link layer ACK : ");
//  227       PRINTLLADDR((uip_lladdr_t *)dest);
//  228       PRINTF(" is reachable.\n");
//  229     }
//  230   }
//  231 #endif /* UIP_DS6_LL_NUD */
//  232 
//  233 }
//  234 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function uip_ds6_neighbor_periodic
        THUMB
//  235 void
//  236 uip_ds6_neighbor_periodic(void)
//  237 {
uip_ds6_neighbor_periodic:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  238   /* Periodic processing on neighbors */
//  239   uip_ds6_nbr_t *nbr = nbr_table_head(ds6_neighbors);
        LDR.N    R4,??DataTable10
        LDR      R0,[R4, #+0]
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        LDR.N    R6,??DataTable10_2
        LDR.N    R7,??DataTable10_3
        MOVS     R8,R0
        B.N      ??uip_ds6_neighbor_periodic_1
//  240   while(nbr != NULL) {
//  241     switch(nbr->state) {
//  242     case NBR_REACHABLE:
//  243       if(stimer_expired(&nbr->reachable)) {
//  244 #if UIP_CONF_IPV6_RPL
//  245         /* when a neighbor leave it's REACHABLE state and is a default router,
//  246            instead of going to STALE state it enters DELAY state in order to
//  247            force a NUD on it. Otherwise, if there is no upward traffic, the
//  248            node never knows if the default router is still reachable. This
//  249            mimics the 6LoWPAN-ND behavior.
//  250          */
//  251         if(uip_ds6_defrt_lookup(&nbr->ipaddr) != NULL) {
//  252           PRINTF("REACHABLE: defrt moving to DELAY (");
//  253           PRINT6ADDR(&nbr->ipaddr);
//  254           PRINTF(")\n");
//  255           nbr->state = NBR_DELAY;
//  256           stimer_set(&nbr->reachable, UIP_ND6_DELAY_FIRST_PROBE_TIME);
//  257           nbr->nscount = 0;
//  258         } else {
//  259           PRINTF("REACHABLE: moving to STALE (");
//  260           PRINT6ADDR(&nbr->ipaddr);
//  261           PRINTF(")\n");
//  262           nbr->state = NBR_STALE;
//  263         }
//  264 #else /* UIP_CONF_IPV6_RPL */
//  265         PRINTF("REACHABLE: moving to STALE (");
//  266         PRINT6ADDR(&nbr->ipaddr);
//  267         PRINTF(")\n");
//  268         nbr->state = NBR_STALE;
//  269 #endif /* UIP_CONF_IPV6_RPL */
//  270       }
//  271       break;
//  272 #if UIP_ND6_SEND_NA
//  273     case NBR_INCOMPLETE:
//  274       if(nbr->nscount >= UIP_ND6_MAX_MULTICAST_SOLICIT) {
//  275         uip_ds6_nbr_rm(nbr);
//  276       } else if(stimer_expired(&nbr->sendns) && (uip_len == 0)) {
//  277         nbr->nscount++;
//  278         PRINTF("NBR_INCOMPLETE: NS %u\n", nbr->nscount);
//  279         uip_nd6_ns_output(NULL, NULL, &nbr->ipaddr);
//  280         stimer_set(&nbr->sendns, uip_ds6_if.retrans_timer / 1000);
//  281       }
//  282       break;
//  283     case NBR_DELAY:
//  284       if(stimer_expired(&nbr->reachable)) {
//  285         nbr->state = NBR_PROBE;
//  286         nbr->nscount = 0;
//  287         PRINTF("DELAY: moving to PROBE\n");
//  288         stimer_set(&nbr->sendns, 0);
//  289       }
//  290       break;
//  291     case NBR_PROBE:
//  292       if(nbr->nscount >= UIP_ND6_MAX_UNICAST_SOLICIT) {
//  293         uip_ds6_defrt_t *locdefrt;
//  294         PRINTF("PROBE END\n");
//  295         if((locdefrt = uip_ds6_defrt_lookup(&nbr->ipaddr)) != NULL) {
//  296           if (!locdefrt->isinfinite) {
//  297             uip_ds6_defrt_rm(locdefrt);
//  298           }
//  299         }
//  300         uip_ds6_nbr_rm(nbr);
//  301       } else if(stimer_expired(&nbr->sendns) && (uip_len == 0)) {
??uip_ds6_neighbor_periodic_2:
        ADD      R0,R8,#+24
          CFI FunCall stimer_expired
        BL       stimer_expired
        CBZ.N    R0,??uip_ds6_neighbor_periodic_3
        LDRH     R0,[R7, #+0]
        CBNZ.N   R0,??uip_ds6_neighbor_periodic_3
//  302         nbr->nscount++;
        LDRB     R0,[R8, #+32]
        ADDS     R0,R0,#+1
        STRB     R0,[R8, #+32]
//  303         PRINTF("PROBE: NS %u\n", nbr->nscount);
//  304         uip_nd6_ns_output(NULL, &nbr->ipaddr, &nbr->ipaddr);
        MOV      R2,R8
        MOV      R1,R8
        MOVS     R0,#+0
??uip_ds6_neighbor_periodic_4:
          CFI FunCall uip_nd6_ns_output
        BL       uip_nd6_ns_output
//  305         stimer_set(&nbr->sendns, uip_ds6_if.retrans_timer / 1000);
        LDR      R0,[R6, #+16]
        MOV      R1,#+1000
        UDIV     R1,R0,R1
??uip_ds6_neighbor_periodic_5:
        ADD      R0,R8,#+24
          CFI FunCall stimer_set
        BL       stimer_set
//  306       }
//  307       break;
//  308 #endif /* UIP_ND6_SEND_NA */
//  309     default:
//  310       break;
//  311     }
//  312     nbr = nbr_table_next(ds6_neighbors, nbr);
??uip_ds6_neighbor_periodic_3:
        LDR      R0,[R4, #+0]
        MOV      R1,R8
          CFI FunCall nbr_table_next
        BL       nbr_table_next
        MOVS     R8,R0
??uip_ds6_neighbor_periodic_1:
        BEQ.N    ??uip_ds6_neighbor_periodic_6
        ADD      R5,R8,#+32
        LDRB     R0,[R5, #+2]
        CMP      R0,#+4
        BHI.N    ??uip_ds6_neighbor_periodic_3
        TBB      [PC, R0]
        DATA
??uip_ds6_neighbor_periodic_0:
        DC8      0xD,0x4,0x3,0x23
        DC8      0x30,0x0
        THUMB
??uip_ds6_neighbor_periodic_7:
        B.N      ??uip_ds6_neighbor_periodic_3
??uip_ds6_neighbor_periodic_8:
        ADD      R0,R8,#+16
          CFI FunCall stimer_expired
        BL       stimer_expired
        CMP      R0,#+0
        BEQ.N    ??uip_ds6_neighbor_periodic_3
        MOVS     R0,#+2
        STRB     R0,[R5, #+2]
        B.N      ??uip_ds6_neighbor_periodic_3
??uip_ds6_neighbor_periodic_9:
        LDRB     R0,[R8, #+32]
        CMP      R0,#+3
        BGE.N    ??uip_ds6_neighbor_periodic_10
        ADD      R0,R8,#+24
          CFI FunCall stimer_expired
        BL       stimer_expired
        CMP      R0,#+0
        BEQ.N    ??uip_ds6_neighbor_periodic_3
        LDRH     R0,[R7, #+0]
        CMP      R0,#+0
        BNE.N    ??uip_ds6_neighbor_periodic_3
        LDRB     R0,[R8, #+32]
        ADDS     R0,R0,#+1
        STRB     R0,[R8, #+32]
        MOV      R2,R8
        MOVS     R1,#+0
        MOVS     R0,#+0
        B.N      ??uip_ds6_neighbor_periodic_4
??uip_ds6_neighbor_periodic_11:
        ADD      R0,R8,#+16
          CFI FunCall stimer_expired
        BL       stimer_expired
        CMP      R0,#+0
        BEQ.N    ??uip_ds6_neighbor_periodic_3
        MOVS     R0,#+4
        STRB     R0,[R5, #+2]
        MOVS     R1,#+0
        MOVS     R0,#+0
        STRB     R0,[R8, #+32]
        B.N      ??uip_ds6_neighbor_periodic_5
??uip_ds6_neighbor_periodic_12:
        LDRB     R0,[R8, #+32]
        CMP      R0,#+3
        BLT.N    ??uip_ds6_neighbor_periodic_2
        MOV      R0,R8
          CFI FunCall uip_ds6_defrt_lookup
        BL       uip_ds6_defrt_lookup
        CBZ.N    R0,??uip_ds6_neighbor_periodic_10
        LDRB     R1,[R0, #+28]
        CBNZ.N   R1,??uip_ds6_neighbor_periodic_10
          CFI FunCall uip_ds6_defrt_rm
        BL       uip_ds6_defrt_rm
??uip_ds6_neighbor_periodic_10:
        ADD      R0,R8,#+40
          CFI FunCall uip_packetqueue_free
        BL       uip_packetqueue_free
        LDR      R0,[R4, #+0]
        MOV      R1,R8
          CFI FunCall nbr_table_remove
        BL       nbr_table_remove
        B.N      ??uip_ds6_neighbor_periodic_3
//  313   }
//  314 }
??uip_ds6_neighbor_periodic_6:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock12
//  315 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function uip_ds6_get_least_lifetime_neighbor
        THUMB
//  316 uip_ds6_nbr_t *
//  317 uip_ds6_get_least_lifetime_neighbor(void)
//  318 {
uip_ds6_get_least_lifetime_neighbor:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  319   uip_ds6_nbr_t *nbr = nbr_table_head(ds6_neighbors);
        LDR.N    R4,??DataTable10
        LDR      R0,[R4, #+0]
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        MOV      R5,R0
//  320   uip_ds6_nbr_t *nbr_expiring = NULL;
        MOVS     R6,#+0
        CMP      R5,#+0
        B.N      ??uip_ds6_get_least_lifetime_neighbor_0
//  321   while(nbr != NULL) {
//  322     if(nbr_expiring != NULL) {
//  323       clock_time_t curr = stimer_remaining(&nbr->reachable);
//  324       if(curr < stimer_remaining(&nbr->reachable)) {
//  325         nbr_expiring = nbr;
//  326       }
//  327     } else {
//  328       nbr_expiring = nbr;
??uip_ds6_get_least_lifetime_neighbor_1:
        MOV      R6,R5
//  329     }
//  330     nbr = nbr_table_next(ds6_neighbors, nbr);
??uip_ds6_get_least_lifetime_neighbor_2:
        LDR      R0,[R4, #+0]
        MOV      R1,R5
          CFI FunCall nbr_table_next
        BL       nbr_table_next
        MOVS     R5,R0
??uip_ds6_get_least_lifetime_neighbor_0:
        BEQ.N    ??uip_ds6_get_least_lifetime_neighbor_3
        CMP      R6,#+0
        BEQ.N    ??uip_ds6_get_least_lifetime_neighbor_1
        ADD      R0,R5,#+16
          CFI FunCall stimer_remaining
        BL       stimer_remaining
        MOV      R7,R0
        ADD      R0,R5,#+16
          CFI FunCall stimer_remaining
        BL       stimer_remaining
        CMP      R7,R0
        BCS.N    ??uip_ds6_get_least_lifetime_neighbor_2
        B.N      ??uip_ds6_get_least_lifetime_neighbor_1
//  331   }
//  332   return nbr_expiring;
??uip_ds6_get_least_lifetime_neighbor_3:
        MOV      R0,R6
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock13
//  333 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     ds6_neighbors

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     linkaddr_null

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     uip_len

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  334 /*---------------------------------------------------------------------------*/
//  335 /** @} */
// 
//  44 bytes in section .bss
//  20 bytes in section .data
// 630 bytes in section .text
// 
// 630 bytes of CODE memory
//  64 bytes of DATA memory
//
//Errors: none
//Warnings: 2
