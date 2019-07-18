///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:15
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-dag.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-dag.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rpl-dag.s
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
        EXTERN __aeabi_memcpy4
        EXTERN clock_time
        EXTERN ctimer_stop
        EXTERN dao_output
        EXTERN ds6_neighbors
        EXTERN memcmp
        EXTERN nbr_table_add_lladdr
        EXTERN nbr_table_get_from_lladdr
        EXTERN nbr_table_get_lladdr
        EXTERN nbr_table_head
        EXTERN nbr_table_lock
        EXTERN nbr_table_next
        EXTERN nbr_table_register
        EXTERN nbr_table_remove
        EXTERN nbr_table_unlock
        EXTERN rpl_mrhof
        EXTERN rpl_remove_routes
        EXTERN rpl_remove_routes_by_nexthop
        EXTERN rpl_reset_dio_timer
        EXTERN rpl_schedule_dao
        EXTERN uip_ds6_addr_add
        EXTERN uip_ds6_addr_lookup
        EXTERN uip_ds6_addr_rm
        EXTERN uip_ds6_defrt_add
        EXTERN uip_ds6_defrt_rm
        EXTERN uip_ds6_nbr_get_ll
        EXTERN uip_ds6_nbr_ipaddr_from_lladdr
        EXTERN uip_ds6_nbr_lladdr_from_ipaddr
        EXTERN uip_ds6_nbr_lookup
        EXTERN uip_ds6_set_addr_iid
        EXTERN uip_lladdr

        PUBLIC default_instance
        PUBLIC instance_table
        PUBLIC rpl_add_dag
        PUBLIC rpl_add_parent
        PUBLIC rpl_alloc_dag
        PUBLIC rpl_alloc_instance
        PUBLIC rpl_dag_init
        PUBLIC rpl_find_of
        PUBLIC rpl_find_parent
        PUBLIC rpl_find_parent_any_dag
        PUBLIC rpl_free_dag
        PUBLIC rpl_free_instance
        PUBLIC rpl_get_any_dag
        PUBLIC rpl_get_default_instance
        PUBLIC rpl_get_instance
        PUBLIC rpl_get_nbr
        PUBLIC rpl_get_parent
        PUBLIC rpl_get_parent_ipaddr
        PUBLIC rpl_get_parent_link_metric
        PUBLIC rpl_get_parent_rank
        PUBLIC rpl_join_instance
        PUBLIC rpl_local_repair
        PUBLIC rpl_lock_parent
        PUBLIC rpl_move_parent
        PUBLIC rpl_nullify_parent
        PUBLIC rpl_parents
        PUBLIC rpl_print_neighbor_list
        PUBLIC rpl_process_dio
        PUBLIC rpl_process_parent_event
        PUBLIC rpl_recalculate_ranks
        PUBLIC rpl_remove_parent
        PUBLIC rpl_repair_root
        PUBLIC rpl_select_dag
        PUBLIC rpl_select_parent
        PUBLIC rpl_set_default_instance
        PUBLIC rpl_set_default_route
        PUBLIC rpl_set_prefix
        PUBLIC rpl_set_root
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-dag.c
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
//   35  *         Logic for Directed Acyclic Graphs in RPL.
//   36  *
//   37  * \author Joakim Eriksson <joakime@sics.se>, Nicolas Tsiftes <nvt@sics.se>
//   38  * Contributors: George Oikonomou <oikonomou@users.sourceforge.net> (multicast)
//   39  */
//   40 
//   41 /**
//   42  * \addtogroup uip6
//   43  * @{
//   44  */
//   45 
//   46 #include "contiki.h"
//   47 #include "net/rpl/rpl-private.h"
//   48 #include "net/ip/uip.h"
//   49 #include "net/ipv6/uip-nd6.h"
//   50 #include "net/ipv6/uip-ds6-nbr.h"
//   51 #include "net/nbr-table.h"
//   52 #include "net/ipv6/multicast/uip-mcast6.h"
//   53 #include "lib/list.h"
//   54 #include "lib/memb.h"
//   55 #include "sys/ctimer.h"
//   56 
//   57 #include <limits.h>
//   58 #include <string.h>
//   59 
//   60 #define DEBUG DEBUG_NONE
//   61 #include "net/ip/uip-debug.h"
//   62 
//   63 
//   64 /*
//   65 #if DEBUG
//   66 #include <stdio.h>
//   67 #define PRINTF(...) printf(__VA_ARGS__)
//   68 #else
//   69 #define PRINTF(...)
//   70 #endif
//   71 
//   72 */
//   73 
//   74 /*---------------------------------------------------------------------------*/
//   75 extern rpl_of_t RPL_OF;
//   76 static rpl_of_t * const objective_functions[] = {&RPL_OF};
//   77 
//   78 /*---------------------------------------------------------------------------*/
//   79 /* RPL definitions. */
//   80 
//   81 #ifndef RPL_CONF_GROUNDED
//   82 #define RPL_GROUNDED                    0
//   83 #else
//   84 #define RPL_GROUNDED                    RPL_CONF_GROUNDED
//   85 #endif /* !RPL_CONF_GROUNDED */
//   86 
//   87 /*---------------------------------------------------------------------------*/
//   88 /* Per-parent RPL information */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   89 NBR_TABLE_GLOBAL(rpl_parent_t, rpl_parents);
_rpl_parents_mem:
        DS8 20

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// static __absolute nbr_table_t rpl_parents_struct
rpl_parents_struct:
        DATA
        DC32 0, 20, 0H, _rpl_parents_mem
//   90 /*---------------------------------------------------------------------------*/
//   91 /* Allocate instance table. */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   92 rpl_instance_t instance_table[RPL_MAX_INSTANCES];
instance_table:
        DS8 260

        SECTION `.data`:DATA:REORDER:NOROOT(2)
rpl_parents:
        DATA
        DC32 rpl_parents_struct
//   93 rpl_instance_t *default_instance;
default_instance:
        DC8 0, 0, 0, 0
//   94 
//   95 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function rpl_print_neighbor_list
        THUMB
//   96 void
//   97 rpl_print_neighbor_list()
//   98 {
rpl_print_neighbor_list:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//   99   if(default_instance != NULL && default_instance->current_dag != NULL &&
//  100       default_instance->of != NULL && default_instance->of->calculate_rank != NULL) {
        LDR.W    R4,??DataTable28
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R1,[R0, #+12]
        CMPNE    R1,#+0
        BEQ.N    ??rpl_print_neighbor_list_0
        LDR      R0,[R0, #+8]
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R0,[R0, #+16]
        CMPNE    R0,#+0
        BEQ.N    ??rpl_print_neighbor_list_0
//  101     int curr_dio_interval = default_instance->dio_intcurrent;
//  102     int curr_rank = default_instance->current_dag->rank;
//  103     rpl_parent_t *p = nbr_table_head(rpl_parents);
        LDR      R0,[R4, #+0]
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        MOV      R5,R0
//  104     clock_time_t now = clock_time();
          CFI FunCall clock_time
        BL       clock_time
        LDR.W    R6,??DataTable28_1
        CMP      R5,#+0
        B.N      ??rpl_print_neighbor_list_1
//  105 
//  106     PRINTF("RPL: rank %u dioint %u, %u nbr(s)\n", curr_rank, curr_dio_interval, uip_ds6_nbr_num());
//  107     while(p != NULL) {
//  108       uip_ds6_nbr_t *nbr = rpl_get_nbr(p);
??rpl_print_neighbor_list_2:
        LDR      R0,[R4, #+0]
        MOV      R1,R5
          CFI FunCall nbr_table_get_lladdr
        BL       nbr_table_get_lladdr
        CBZ.N    R0,??rpl_print_neighbor_list_3
        MOV      R1,R0
        LDR      R0,[R6, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
//  109       PRINTF("RPL: nbr %3u %5u, %5u => %5u %c (last tx %u min ago)\n",
//  110           nbr_table_get_lladdr(rpl_parents, p)->u8[7],
//  111           p->rank, nbr ? nbr->link_metric : 0,
//  112           default_instance->of->calculate_rank(p, 0),
//  113           p == default_instance->current_dag->preferred_parent ? '*' : ' ',
//  114           (unsigned)((now - p->last_tx_time) / (60 * CLOCK_SECOND)));
//  115       p = nbr_table_next(rpl_parents, p);
??rpl_print_neighbor_list_3:
        LDR      R0,[R4, #+0]
        MOV      R1,R5
          CFI FunCall nbr_table_next
        BL       nbr_table_next
        MOVS     R5,R0
//  116     }
??rpl_print_neighbor_list_1:
        BNE.N    ??rpl_print_neighbor_list_2
//  117     PRINTF("RPL: end of list\n");
//  118   }
//  119 }
??rpl_print_neighbor_list_0:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//  120 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function rpl_get_nbr
        THUMB
//  121 uip_ds6_nbr_t *
//  122 rpl_get_nbr(rpl_parent_t *parent)
//  123 {
rpl_get_nbr:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  124   linkaddr_t *lladdr = NULL;
//  125   lladdr = nbr_table_get_lladdr(rpl_parents, parent);
        MOV      R1,R0
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_lladdr
        BL       nbr_table_get_lladdr
//  126   if(lladdr != NULL) {
        CBZ.N    R0,??rpl_get_nbr_0
//  127     return nbr_table_get_from_lladdr(ds6_neighbors, lladdr);
        MOV      R1,R0
        LDR.W    R0,??DataTable28_1
        LDR      R0,[R0, #+0]
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall nbr_table_get_from_lladdr
        B.W      nbr_table_get_from_lladdr
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  128   } else {
//  129     return NULL;
??rpl_get_nbr_0:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock1
//  130   }
//  131 }
//  132 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function nbr_callback
          CFI NoCalls
        THUMB
//  133 static void
//  134 nbr_callback(void *ptr)
nbr_callback:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock2
//  135 {
//  136   rpl_remove_parent(ptr);
//  137 }
//  138 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function rpl_dag_init
        THUMB
//  139 void
//  140 rpl_dag_init(void)
//  141 {
//  142   nbr_table_register(rpl_parents, (nbr_table_callback *)nbr_callback);
rpl_dag_init:
        LDR.W    R0,??DataTable28
        LDR.W    R1,??DataTable28_2
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_register
        B.W      nbr_table_register
          CFI EndBlock cfiBlock3
//  143 }
//  144 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function rpl_get_parent
        THUMB
//  145 rpl_parent_t *
//  146 rpl_get_parent(uip_lladdr_t *addr)
//  147 {
//  148   rpl_parent_t *p = nbr_table_get_from_lladdr(rpl_parents, (linkaddr_t *)addr);
//  149   return p;
rpl_get_parent:
        MOV      R1,R0
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        B.W      nbr_table_get_from_lladdr
          CFI EndBlock cfiBlock4
//  150 }
//  151 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function rpl_get_parent_rank
        THUMB
//  152 rpl_rank_t
//  153 rpl_get_parent_rank(uip_lladdr_t *addr)
//  154 {
rpl_get_parent_rank:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  155   rpl_parent_t *p = nbr_table_get_from_lladdr(rpl_parents, (linkaddr_t *)addr);
        MOV      R1,R0
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
//  156   if(p != NULL) {
        CBZ.N    R0,??rpl_get_parent_rank_0
//  157     return p->rank;
        LDRH     R0,[R0, #+8]
//  158   } else {
//  159     return 0;
??rpl_get_parent_rank_0:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock5
//  160   }
//  161 }
//  162 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function rpl_get_parent_link_metric
        THUMB
//  163 uint16_t
//  164 rpl_get_parent_link_metric(const uip_lladdr_t *addr)
//  165 {
rpl_get_parent_link_metric:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  166   uip_ds6_nbr_t *nbr;
//  167   nbr = nbr_table_get_from_lladdr(ds6_neighbors, (const linkaddr_t *)addr);
        MOV      R1,R0
        LDR.W    R0,??DataTable28_1
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
//  168   
//  169   if(nbr != NULL) {
        CBZ.N    R0,??rpl_get_parent_link_metric_0
//  170     return nbr->link_metric;
        LDRH     R0,[R0, #+36]
//  171   } else {
//  172     return 0;
??rpl_get_parent_link_metric_0:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock6
//  173   }
//  174 }
//  175 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function rpl_get_parent_ipaddr
        THUMB
//  176 uip_ipaddr_t *
//  177 rpl_get_parent_ipaddr(rpl_parent_t *p)
//  178 {
rpl_get_parent_ipaddr:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  179   linkaddr_t *lladdr = nbr_table_get_lladdr(rpl_parents, p);
        MOV      R1,R0
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_lladdr
        BL       nbr_table_get_lladdr
//  180   return uip_ds6_nbr_ipaddr_from_lladdr((uip_lladdr_t *)lladdr);
        POP      {R1,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uip_ds6_nbr_ipaddr_from_lladdr
        B.W      uip_ds6_nbr_ipaddr_from_lladdr
          CFI EndBlock cfiBlock7
//  181 }
//  182 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function rpl_set_preferred_parent
        THUMB
//  183 static void
//  184 rpl_set_preferred_parent(rpl_dag_t *dag, rpl_parent_t *p)
//  185 {
rpl_set_preferred_parent:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOV      R5,R1
//  186   if(dag != NULL && dag->preferred_parent != p) {
        ITT      NE 
        LDRNE    R1,[R4, #+24]
        CMPNE    R1,R5
        BEQ.N    ??rpl_set_preferred_parent_0
//  187     PRINTF("RPL: rpl_set_preferred_parent ");
//  188     if(p != NULL) {
//  189       PRINT6ADDR(rpl_get_parent_ipaddr(p));
//  190     } else {
//  191       PRINTF("NULL");
//  192     }
//  193     PRINTF(" used to be ");
//  194     if(dag->preferred_parent != NULL) {
//  195       PRINT6ADDR(rpl_get_parent_ipaddr(dag->preferred_parent));
//  196     } else {
//  197       PRINTF("NULL");
//  198     }
//  199     PRINTF("\n");
//  200 
//  201     /* Always keep the preferred parent locked, so it remains in the
//  202      * neighbor table. */
//  203     nbr_table_unlock(rpl_parents, dag->preferred_parent);
        LDR.W    R6,??DataTable28
        LDR      R0,[R6, #+0]
          CFI FunCall nbr_table_unlock
        BL       nbr_table_unlock
//  204     nbr_table_lock(rpl_parents, p);
        LDR      R0,[R6, #+0]
        MOV      R1,R5
          CFI FunCall nbr_table_lock
        BL       nbr_table_lock
//  205     dag->preferred_parent = p;
        STR      R5,[R4, #+24]
//  206   }
//  207 }
??rpl_set_preferred_parent_0:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock8
//  208 /*---------------------------------------------------------------------------*/
//  209 /* Greater-than function for the lollipop counter.                      */
//  210 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function lollipop_greater_than
          CFI NoCalls
        THUMB
//  211 static int
//  212 lollipop_greater_than(int a, int b)
//  213 {
//  214   /* Check if we are comparing an initial value with an old value */
//  215   if(a > RPL_LOLLIPOP_CIRCULAR_REGION && b <= RPL_LOLLIPOP_CIRCULAR_REGION) {
lollipop_greater_than:
        CMP      R0,#+128
        BLT.N    ??lollipop_greater_than_0
        CMP      R1,#+128
        BGE.N    ??lollipop_greater_than_0
//  216     return (RPL_LOLLIPOP_MAX_VALUE + 1 + b - a) > RPL_LOLLIPOP_SEQUENCE_WINDOWS;
        ADD      R1,R1,#+256
        SUBS     R0,R1,R0
        CMP      R0,#+17
        BLT.N    ??lollipop_greater_than_1
        B.N      ??lollipop_greater_than_2
//  217   }
//  218   /* Otherwise check if a > b and comparable => ok, or
//  219      if they have wrapped and are still comparable */
//  220   return (a > b && (a - b) < RPL_LOLLIPOP_SEQUENCE_WINDOWS) ||
//  221     (a < b && (b - a) > (RPL_LOLLIPOP_CIRCULAR_REGION + 1-
//  222 			 RPL_LOLLIPOP_SEQUENCE_WINDOWS));
??lollipop_greater_than_0:
        CMP      R1,R0
        BGE.N    ??lollipop_greater_than_3
        SUBS     R0,R0,R1
        CMP      R0,#+16
        BLT.N    ??lollipop_greater_than_2
??lollipop_greater_than_1:
        MOVS     R0,#+0
        BX       LR               ;; return
??lollipop_greater_than_3:
        CMP      R0,R1
        BGE.N    ??lollipop_greater_than_1
        SUBS     R0,R1,R0
        CMP      R0,#+113
        BLT.N    ??lollipop_greater_than_1
??lollipop_greater_than_2:
        MOVS     R0,#+1
        BX       LR
          CFI EndBlock cfiBlock9
//  223 }
//  224 /*---------------------------------------------------------------------------*/
//  225 /* Remove DAG parents with a rank that is at least the same as minimum_rank. */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function remove_parents
        THUMB
//  226 static void
//  227 remove_parents(rpl_dag_t *dag, rpl_rank_t minimum_rank)
//  228 {
remove_parents:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  229   rpl_parent_t *p;
//  230 
//  231   PRINTF("RPL: Removing parents (minimum rank %u)\n",
//  232 	minimum_rank);
//  233 
//  234   p = nbr_table_head(rpl_parents);
        LDR.W    R6,??DataTable28
        MOV      R4,R0
        LDR      R0,[R6, #+0]
        MOV      R5,R1
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        B.N      ??remove_parents_0
//  235   while(p != NULL) {
//  236     if(dag == p->dag && p->rank >= minimum_rank) {
??remove_parents_1:
        LDR      R0,[R7, #+4]
        CMP      R4,R0
        BNE.N    ??remove_parents_2
        LDRH     R0,[R7, #+8]
        CMP      R0,R5
        BCC.N    ??remove_parents_2
//  237       rpl_remove_parent(p);
        MOV      R0,R7
          CFI FunCall rpl_nullify_parent
        BL       rpl_nullify_parent
        LDR      R0,[R6, #+0]
        MOV      R1,R7
          CFI FunCall nbr_table_remove
        BL       nbr_table_remove
//  238     }
//  239     p = nbr_table_next(rpl_parents, p);
??remove_parents_2:
        LDR      R0,[R6, #+0]
        MOV      R1,R7
          CFI FunCall nbr_table_next
        BL       nbr_table_next
??remove_parents_0:
        MOVS     R7,R0
//  240   }
        BNE.N    ??remove_parents_1
//  241 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock10
//  242 /*---------------------------------------------------------------------------*/
//  243 static void
//  244 nullify_parents(rpl_dag_t *dag, rpl_rank_t minimum_rank)
//  245 {
//  246   rpl_parent_t *p;
//  247 
//  248   PRINTF("RPL: Nullifying parents (minimum rank %u)\n",
//  249 	minimum_rank);
//  250 
//  251   p = nbr_table_head(rpl_parents);
//  252   while(p != NULL) {
//  253     if(dag == p->dag && p->rank >= minimum_rank) {
//  254       rpl_nullify_parent(p);
//  255     }
//  256     p = nbr_table_next(rpl_parents, p);
//  257   }
//  258 }
//  259 /*---------------------------------------------------------------------------*/
//  260 static int
//  261 should_send_dao(rpl_instance_t *instance, rpl_dio_t *dio, rpl_parent_t *p)
//  262 {
//  263   /* if MOP is set to no downward routes no DAO should be sent */
//  264   if(instance->mop == RPL_MOP_NO_DOWNWARD_ROUTES) {
//  265     return 0;
//  266   }
//  267   /* check if the new DTSN is more recent */
//  268   return p == instance->current_dag->preferred_parent &&
//  269     (lollipop_greater_than(dio->dtsn, p->dtsn));
//  270 }
//  271 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function acceptable_rank
          CFI NoCalls
        THUMB
//  272 static int
//  273 acceptable_rank(rpl_dag_t *dag, rpl_rank_t rank)
//  274 {
//  275   return rank != INFINITE_RANK &&
//  276     ((dag->instance->max_rankinc == 0) ||
//  277      DAG_RANK(rank, dag->instance) <= DAG_RANK(dag->min_rank + dag->instance->max_rankinc, dag->instance));
acceptable_rank:
        MOVW     R2,#+65535
        CMP      R1,R2
        BEQ.N    ??acceptable_rank_0
        LDR      R2,[R0, #+32]
        LDRH     R3,[R2, #+152]
        CBZ.N    R3,??acceptable_rank_1
        ADDS     R2,R2,#+152
        LDRH     R0,[R0, #+16]
        LDRH     R2,[R2, #+2]
        ADDS     R0,R3,R0
        SDIV     R1,R1,R2
        SDIV     R0,R0,R2
        CMP      R0,R1
        BLT.N    ??acceptable_rank_0
??acceptable_rank_1:
        MOVS     R0,#+1
        BX       LR
??acceptable_rank_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  278 }
//  279 /*---------------------------------------------------------------------------*/
//  280 static rpl_dag_t *
//  281 get_dag(uint8_t instance_id, uip_ipaddr_t *dag_id)
//  282 {
//  283   rpl_instance_t *instance;
//  284   rpl_dag_t *dag;
//  285   int i;
//  286 
//  287   instance = rpl_get_instance(instance_id);
//  288   if(instance == NULL) {
//  289     return NULL;
//  290   }
//  291 
//  292   for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; ++i) {
//  293     dag = &instance->dag_table[i];
//  294     if(dag->used && uip_ipaddr_cmp(&dag->dag_id, dag_id)) {
//  295       return dag;
//  296     }
//  297   }
//  298 
//  299   return NULL;
//  300 }
//  301 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function rpl_set_root
        THUMB
//  302 rpl_dag_t *
//  303 rpl_set_root(uint8_t instance_id, uip_ipaddr_t *dag_id)
//  304 {
rpl_set_root:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R6,R0
        MOV      R9,R1
//  305   rpl_dag_t *dag;
//  306   rpl_instance_t *instance;
//  307   uint8_t version;
//  308   int i;
//  309 
//  310   version = RPL_LOLLIPOP_INIT;
        MOVS     R5,#+240
//  311   instance = rpl_get_instance(instance_id);
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
//  312   if(instance != NULL) {
        CMP      R0,#+0
        BEQ.N    ??rpl_set_root_0
//  313     for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; ++i) {
        MOVS     R7,#+0
        ADD      R8,R0,#+16
//  314       dag = &instance->dag_table[i];
//  315       if(dag->used) {
??rpl_set_root_1:
        ADD      R4,R8,#+18
        LDRB     R0,[R4, #+3]
        CBZ.N    R0,??rpl_set_root_2
//  316         if(uip_ipaddr_cmp(&dag->dag_id, dag_id)) {
        MOVS     R2,#+16
        MOV      R1,R9
        MOV      R0,R8
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??rpl_set_root_3
//  317           version = dag->version;
        LDRB     R0,[R8, #+18]
//  318           RPL_LOLLIPOP_INCREMENT(version);
        ADDS     R5,R0,#+1
        CMP      R0,#+128
        ITE      GE 
        UXTBGE   R5,R5
        ANDLT    R5,R5,#0x7F
//  319         }
//  320         if(dag == dag->instance->current_dag) {
??rpl_set_root_3:
        LDR      R0,[R8, #+32]
        LDR      R1,[R0, #+12]
        CMP      R8,R1
        ITT      EQ 
        MOVEQ    R1,#+0
        STREQ    R1,[R0, #+12]
//  321           PRINTF("RPL: Dropping a joined DAG when setting this node as root");
//  322           dag->instance->current_dag = NULL;
//  323         } else {
//  324           PRINTF("RPL: Dropping a DAG when setting this node as root");
//  325         }
//  326         rpl_free_dag(dag);
        LDRB     R0,[R4, #+4]
        CBZ.N    R0,??rpl_set_root_4
        MOVS     R0,#+0
        STRB     R0,[R4, #+4]
        MOV      R0,R8
          CFI FunCall rpl_remove_routes
        BL       rpl_remove_routes
        LDRB     R0,[R8, #+57]
        LSLS     R0,R0,#+25
        BPL.N    ??rpl_set_root_5
        MOVS     R1,#+0
        ADD      R0,R8,#+36
          CFI FunCall check_prefix
        BL       check_prefix
??rpl_set_root_5:
        MOVS     R1,#+0
        MOV      R0,R8
          CFI FunCall remove_parents
        BL       remove_parents
??rpl_set_root_4:
        MOVS     R0,#+0
        STRB     R0,[R4, #+3]
//  327       }
//  328     }
??rpl_set_root_2:
        ADDS     R7,R7,#+1
        CMP      R7,#+2
        ADD      R8,R8,#+60
        BLT.N    ??rpl_set_root_1
//  329   }
//  330 
//  331   dag = rpl_alloc_dag(instance_id, dag_id);
??rpl_set_root_0:
        MOV      R1,R9
        MOV      R0,R6
          CFI FunCall rpl_alloc_dag
        BL       rpl_alloc_dag
        MOVS     R6,R0
//  332   if(dag == NULL) {
        IT       EQ 
        MOVEQ    R0,#+0
//  333     PRINTF("RPL: Failed to allocate a DAG\n");
//  334     return NULL;
        BEQ.N    ??rpl_set_root_6
//  335   }
//  336 
//  337   instance = dag->instance;
        LDR      R7,[R6, #+32]
//  338 
//  339   dag->version = version;
        STRB     R5,[R6, #+18]
//  340   dag->joined = 1;
        MOVS     R0,#+1
        STRB     R0,[R6, #+22]
//  341   dag->grounded = RPL_GROUNDED;
//  342   dag->preference = RPL_PREFERENCE;
//  343   instance->mop = RPL_MOP_DEFAULT;
//  344   instance->of = &RPL_OF;
//  345   rpl_set_preferred_parent(dag, NULL);
        MOVS     R1,#+0
        MOVS     R0,#+0
        STRB     R0,[R6, #+19]
        STRB     R0,[R6, #+20]
        MOVS     R0,#+2
        STRB     R0,[R7, #+143]
        LDR.W    R0,??DataTable30
        STR      R0,[R7, #+8]
        MOV      R0,R6
          CFI FunCall rpl_set_preferred_parent
        BL       rpl_set_preferred_parent
//  346 
//  347   memcpy(&dag->dag_id, dag_id, sizeof(dag->dag_id));
        MOVS     R2,#+16
        MOV      R1,R9
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  348 
//  349   instance->dio_intdoubl = RPL_DIO_INTERVAL_DOUBLINGS;
        MOVS     R0,#+8
        STRB     R0,[R7, #+144]
//  350   instance->dio_intmin = RPL_DIO_INTERVAL_MIN;
        MOVS     R0,#+14
        STRB     R0,[R7, #+145]
//  351   /* The current interval must differ from the minimum interval in order to
//  352      trigger a DIO timer reset. */
//  353   instance->dio_intcurrent = RPL_DIO_INTERVAL_MIN +
//  354     RPL_DIO_INTERVAL_DOUBLINGS;
        MOVS     R0,#+22
        STRB     R0,[R7, #+148]
//  355   instance->dio_redundancy = RPL_DIO_REDUNDANCY;
        MOVS     R0,#+10
        STRB     R0,[R7, #+146]
//  356   instance->max_rankinc = RPL_MAX_RANKINC;
        MOV      R0,#+1792
        STRH     R0,[R7, #+152]
//  357   instance->min_hoprankinc = RPL_MIN_HOPRANKINC;
        MOV      R0,#+256
        STRH     R0,[R7, #+154]
//  358   instance->default_lifetime = RPL_DEFAULT_LIFETIME;
        MOVS     R0,#+255
        STRB     R0,[R7, #+147]
//  359   instance->lifetime_unit = RPL_DEFAULT_LIFETIME_UNIT;
        MOVW     R0,#+65535
        STRH     R0,[R7, #+156]
//  360 
//  361   dag->rank = ROOT_RANK(instance);
        LDRH     R0,[R7, #+154]
        STRH     R0,[R6, #+28]
//  362 
//  363   if(instance->current_dag != dag && instance->current_dag != NULL) {
        LDR      R0,[R7, #+12]
        CMP      R0,R6
        IT       NE 
        CMPNE    R0,#+0
        BEQ.N    ??rpl_set_root_7
//  364     /* Remove routes installed by DAOs. */
//  365     rpl_remove_routes(instance->current_dag);
          CFI FunCall rpl_remove_routes
        BL       rpl_remove_routes
//  366 
//  367     instance->current_dag->joined = 0;
        LDR      R1,[R7, #+12]
        MOVS     R0,#+0
        STRB     R0,[R1, #+22]
//  368   }
//  369 
//  370   instance->current_dag = dag;
??rpl_set_root_7:
        STR      R6,[R7, #+12]
//  371   instance->dtsn_out = RPL_LOLLIPOP_INIT;
        MOVS     R0,#+240
        STRB     R0,[R7, #+142]
//  372   instance->of->update_metric_container(instance);
        MOV      R0,R7
        LDR      R1,[R7, #+8]
        LDR      R1,[R1, #+20]
          CFI FunCall
        BLX      R1
//  373   default_instance = instance;
        LDR.W    R0,??DataTable28
        STR      R7,[R0, #+4]
//  374 
//  375   PRINTF("RPL: Node set to be a DAG root with DAG ID ");
//  376   PRINT6ADDR(&dag->dag_id);
//  377   PRINTF("\n");
//  378 
//  379   ANNOTATE("#A root=%u\n", dag->dag_id.u8[sizeof(dag->dag_id) - 1]);
//  380 
//  381   rpl_reset_dio_timer(instance);
        MOV      R0,R7
          CFI FunCall rpl_reset_dio_timer
        BL       rpl_reset_dio_timer
//  382 
//  383   return dag;
        MOV      R0,R6
??rpl_set_root_6:
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock12
//  384 }
//  385 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function rpl_repair_root
        THUMB
//  386 int
//  387 rpl_repair_root(uint8_t instance_id)
//  388 {
rpl_repair_root:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  389   rpl_instance_t *instance;
//  390 
//  391   instance = rpl_get_instance(instance_id);
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
//  392   if(instance == NULL ||
//  393      instance->current_dag->rank != ROOT_RANK(instance)) {
        CBZ.N    R0,??rpl_repair_root_0
        LDR      R1,[R0, #+12]
        LDRH     R3,[R0, #+154]
        LDRH     R2,[R1, #+28]
        CMP      R2,R3
        BEQ.N    ??rpl_repair_root_1
//  394     PRINTF("RPL: rpl_repair_root triggered but not root\n");
//  395     return 0;
??rpl_repair_root_0:
        MOVS     R0,#+0
        POP      {R1,PC}
//  396   }
//  397   RPL_STAT(rpl_stats.root_repairs++);
//  398 
//  399   RPL_LOLLIPOP_INCREMENT(instance->current_dag->version);
??rpl_repair_root_1:
        LDRB     R2,[R1, #+18]
        ADDS     R3,R2,#+1
        CMP      R2,#+128
        ITEE     GE 
        STRBGE   R3,[R1, #+18]
        ANDLT    R2,R3,#0x7F
        STRBLT   R2,[R1, #+18]
//  400   RPL_LOLLIPOP_INCREMENT(instance->dtsn_out);
        LDRB     R1,[R0, #+142]
        ADDS     R2,R1,#+1
        CMP      R1,#+128
        IT       LT 
        ANDLT    R2,R2,#0x7F
        STRB     R2,[R0, #+142]
//  401   PRINTF("RPL: rpl_repair_root initiating global repair with version %d\n", instance->current_dag->version);
//  402   rpl_reset_dio_timer(instance);
          CFI FunCall rpl_reset_dio_timer
        BL       rpl_reset_dio_timer
//  403   return 1;
        MOVS     R0,#+1
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock13
//  404 }
//  405 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function set_ip_from_prefix
        THUMB
//  406 static void
//  407 set_ip_from_prefix(uip_ipaddr_t *ipaddr, rpl_prefix_t *prefix)
//  408 {
set_ip_from_prefix:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R5,R1
        MOV      R4,R0
//  409   memset(ipaddr, 0, sizeof(uip_ipaddr_t));
        MOVS     R1,#+16
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  410   memcpy(ipaddr, &prefix->prefix, (prefix->length + 7) / 8);
        LDRB     R0,[R5, #+20]
        ADDS     R0,R0,#+7
        ASRS     R1,R0,#+2
        ADD      R0,R0,R1, LSR #+29
        ASRS     R2,R0,#+3
        MOV      R1,R5
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  411   uip_ds6_set_addr_iid(ipaddr, &uip_lladdr);
        MOV      R0,R4
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.W    R1,??DataTable30_1
          CFI FunCall uip_ds6_set_addr_iid
        B.W      uip_ds6_set_addr_iid
          CFI EndBlock cfiBlock14
//  412 }
//  413 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function check_prefix
        THUMB
//  414 static void
//  415 check_prefix(rpl_prefix_t *last_prefix, rpl_prefix_t *new_prefix)
//  416 {
check_prefix:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOVS     R4,R0
        SUB      SP,SP,#+20
          CFI CFA R13+32
        MOV      R5,R1
//  417   uip_ipaddr_t ipaddr;
//  418   uip_ds6_addr_t *rep;
//  419 
//  420   if(last_prefix != NULL && new_prefix != NULL &&
//  421      last_prefix->length == new_prefix->length &&
//  422      uip_ipaddr_prefixcmp(&last_prefix->prefix, &new_prefix->prefix, new_prefix->length) &&
//  423      last_prefix->flags == new_prefix->flags) {
        BEQ.N    ??check_prefix_0
        CBZ.N    R5,??check_prefix_1
        LDRB     R0,[R5, #+20]
        LDRB     R1,[R4, #+20]
        CMP      R1,R0
        BNE.N    ??check_prefix_1
        LSRS     R2,R0,#+3
        MOV      R1,R5
        MOV      R0,R4
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        ITTT     EQ 
        LDRBEQ   R0,[R4, #+21]
        LDRBEQ   R1,[R5, #+21]
        CMPEQ    R0,R1
        BEQ.N    ??check_prefix_2
//  424     /* Nothing has changed. */
//  425     return;
//  426   }
//  427 
//  428   if(last_prefix != NULL) {
//  429     set_ip_from_prefix(&ipaddr, last_prefix);
??check_prefix_1:
        MOV      R1,R4
        ADD      R0,SP,#+0
          CFI FunCall set_ip_from_prefix
        BL       set_ip_from_prefix
//  430     rep = uip_ds6_addr_lookup(&ipaddr);
        ADD      R0,SP,#+0
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
//  431     if(rep != NULL) {
        CBZ.N    R0,??check_prefix_0
//  432       PRINTF("RPL: removing global IP address ");
//  433       PRINT6ADDR(&ipaddr);
//  434       PRINTF("\n");
//  435       uip_ds6_addr_rm(rep);
          CFI FunCall uip_ds6_addr_rm
        BL       uip_ds6_addr_rm
//  436     }
//  437   }
//  438 
//  439   if(new_prefix != NULL) {
??check_prefix_0:
        CBZ.N    R5,??check_prefix_2
//  440     set_ip_from_prefix(&ipaddr, new_prefix);
        MOV      R1,R5
        ADD      R0,SP,#+0
          CFI FunCall set_ip_from_prefix
        BL       set_ip_from_prefix
//  441     if(uip_ds6_addr_lookup(&ipaddr) == NULL) {
        ADD      R0,SP,#+0
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
        CBNZ.N   R0,??check_prefix_2
//  442       PRINTF("RPL: adding global IP address ");
//  443       PRINT6ADDR(&ipaddr);
//  444       PRINTF("\n");
//  445       uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
        MOVS     R2,#+1
        MOVS     R1,#+0
        ADD      R0,SP,#+0
          CFI FunCall uip_ds6_addr_add
        BL       uip_ds6_addr_add
//  446     }
//  447   }
//  448 }
??check_prefix_2:
        ADD      SP,SP,#+20
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock15
//  449 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function rpl_set_prefix
        THUMB
//  450 int
//  451 rpl_set_prefix(rpl_dag_t *dag, uip_ipaddr_t *prefix, unsigned len)
//  452 {
rpl_set_prefix:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        MOV      R4,R0
        SUB      SP,SP,#+28
          CFI CFA R13+48
//  453   rpl_prefix_t last_prefix;
//  454   uint8_t last_len = dag->prefix_info.length;
        LDRB     R0,[R4, #+56]
        MOV      R6,R2
        MOV      R7,R0
//  455 
//  456   if(len > 128) {
        CMP      R6,#+129
        MOV      R5,R1
        IT       CS 
        MOVCS    R0,#+0
//  457     return 0;
        BCS.N    ??rpl_set_prefix_0
//  458   }
//  459   if(dag->prefix_info.length != 0) {
        CBZ.N    R0,??rpl_set_prefix_1
//  460     memcpy(&last_prefix, &dag->prefix_info, sizeof(rpl_prefix_t));
        MOVS     R2,#+24
        ADD      R1,R4,#+36
        ADD      R0,SP,#+0
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  461   }
//  462   memset(&dag->prefix_info.prefix, 0, sizeof(dag->prefix_info.prefix));
??rpl_set_prefix_1:
        ADD      R0,R4,#+36
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOV      R3,R1
        MOV      R12,R1
        STM      R0!,{R1-R3,R12}
//  463   memcpy(&dag->prefix_info.prefix, prefix, (len + 7) / 8);
        ADDS     R0,R6,#+7
        LSRS     R2,R0,#+3
        MOV      R1,R5
        ADD      R0,R4,#+36
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  464   dag->prefix_info.length = len;
//  465   dag->prefix_info.flags = UIP_ND6_RA_FLAG_AUTONOMOUS;
        MOVS     R0,#+64
        STRB     R6,[R4, #+56]
//  466   PRINTF("RPL: Prefix set - will announce this in DIOs\n");
//  467   /* Autoconfigure an address if this node does not already have an address
//  468      with this prefix. Otherwise, update the prefix */
//  469   if(last_len == 0) {
        CMP      R7,#+0
        STRB     R0,[R4, #+57]
        ADD      R1,R4,#+36
        BNE.N    ??rpl_set_prefix_2
//  470     PRINTF("rpl_set_prefix - prefix NULL\n");
//  471     check_prefix(NULL, &dag->prefix_info);
        MOVS     R0,#+0
          CFI FunCall check_prefix
        BL       check_prefix
        B.N      ??rpl_set_prefix_3
//  472   } else {
//  473     PRINTF("rpl_set_prefix - prefix NON-NULL\n");
//  474     check_prefix(&last_prefix, &dag->prefix_info);
??rpl_set_prefix_2:
        ADD      R0,SP,#+0
          CFI FunCall check_prefix
        BL       check_prefix
//  475   }
//  476   return 1;
??rpl_set_prefix_3:
        MOVS     R0,#+1
??rpl_set_prefix_0:
        ADD      SP,SP,#+28
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock16
//  477 }
//  478 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function rpl_set_default_route
        THUMB
//  479 int
//  480 rpl_set_default_route(rpl_instance_t *instance, uip_ipaddr_t *from)
//  481 {
rpl_set_default_route:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  482   if(instance->def_route != NULL) {
        LDR      R0,[R4, #+136]
        CBZ.N    R0,??rpl_set_default_route_0
//  483     PRINTF("RPL: Removing default route through ");
//  484     PRINT6ADDR(&instance->def_route->ipaddr);
//  485     PRINTF("\n");
//  486     uip_ds6_defrt_rm(instance->def_route);
          CFI FunCall uip_ds6_defrt_rm
        BL       uip_ds6_defrt_rm
//  487     instance->def_route = NULL;
        MOVS     R0,#+0
        STR      R0,[R4, #+136]
//  488   }
//  489 
//  490   if(from != NULL) {
??rpl_set_default_route_0:
        CBZ.N    R5,??rpl_set_default_route_1
//  491     PRINTF("RPL: Adding default route through ");
//  492     PRINT6ADDR(from);
//  493     PRINTF("\n");
//  494     instance->def_route = uip_ds6_defrt_add(from,
//  495         RPL_DEFAULT_ROUTE_INFINITE_LIFETIME ? 0 : RPL_LIFETIME(instance, instance->default_lifetime));
        ADD      R0,R4,#+136
        LDRH     R1,[R0, #+20]
        LDRB     R0,[R0, #+11]
        MULS     R1,R0,R1
        MOV      R0,R5
          CFI FunCall uip_ds6_defrt_add
        BL       uip_ds6_defrt_add
        STR      R0,[R4, #+136]
//  496     if(instance->def_route == NULL) {
        CBNZ.N   R0,??rpl_set_default_route_2
//  497       return 0;
        POP      {R1,R4,R5,PC}
//  498     }
//  499   } else {
//  500     PRINTF("RPL: Removing default route\n");
//  501     if(instance->def_route != NULL) {
??rpl_set_default_route_1:
        LDR      R0,[R4, #+136]
        CBZ.N    R0,??rpl_set_default_route_2
//  502       uip_ds6_defrt_rm(instance->def_route);
          CFI FunCall uip_ds6_defrt_rm
        BL       uip_ds6_defrt_rm
//  503     } else {
//  504       PRINTF("RPL: Not actually removing default route, since instance had no default route\n");
//  505     }
//  506   }
//  507   return 1;
??rpl_set_default_route_2:
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock17
//  508 }
//  509 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function rpl_alloc_instance
        THUMB
//  510 rpl_instance_t *
//  511 rpl_alloc_instance(uint8_t instance_id)
//  512 {
rpl_alloc_instance:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//  513   rpl_instance_t *instance, *end;
//  514 
//  515   for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES;
        LDR.W    R5,??DataTable30_2
        ADD      R0,R5,#+260
//  516       instance < end; ++instance) {
//  517     if(instance->used == 0) {
??rpl_alloc_instance_0:
        ADD      R6,R5,#+136
        LDRB     R1,[R6, #+5]
        CBNZ.N   R1,??rpl_alloc_instance_1
//  518       memset(instance, 0, sizeof(*instance));
        MOV      R1,#+260
        MOV      R0,R5
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  519       instance->instance_id = instance_id;
        STRB     R4,[R6, #+4]
//  520       instance->def_route = NULL;
        MOVS     R0,#+0
        STR      R0,[R5, #+136]
//  521       instance->used = 1;
        MOVS     R0,#+1
        STRB     R0,[R6, #+5]
//  522 #if RPL_WITH_PROBING
//  523       rpl_schedule_probing(instance);
//  524 #endif /* RPL_WITH_PROBING */
//  525       return instance;
        MOV      R0,R5
        POP      {R4-R6,PC}
//  526     }
//  527   }
??rpl_alloc_instance_1:
        ADD      R5,R5,#+260
        CMP      R5,R0
        BCC.N    ??rpl_alloc_instance_0
//  528   return NULL;
        MOVS     R0,#+0
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock18
//  529 }
//  530 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function rpl_alloc_dag
        THUMB
//  531 rpl_dag_t *
//  532 rpl_alloc_dag(uint8_t instance_id, uip_ipaddr_t *dag_id)
//  533 {
rpl_alloc_dag:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  534   rpl_dag_t *dag, *end;
//  535   rpl_instance_t *instance;
//  536 
//  537   instance = rpl_get_instance(instance_id);
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
        MOVS     R5,R0
//  538   if(instance == NULL) {
        BNE.N    ??rpl_alloc_dag_0
//  539     instance = rpl_alloc_instance(instance_id);
        MOV      R0,R4
          CFI FunCall rpl_alloc_instance
        BL       rpl_alloc_instance
        MOVS     R5,R0
//  540     if(instance == NULL) {
        BEQ.N    ??rpl_alloc_dag_1
//  541       RPL_STAT(rpl_stats.mem_overflows++);
//  542       return NULL;
//  543     }
//  544   }
//  545 
//  546   for(dag = &instance->dag_table[0], end = dag + RPL_MAX_DAG_PER_INSTANCE; dag < end; ++dag) {
??rpl_alloc_dag_0:
        ADD      R4,R5,#+16
        ADD      R0,R4,#+120
        B.N      ??rpl_alloc_dag_2
??rpl_alloc_dag_3:
        ADDS     R4,R4,#+60
??rpl_alloc_dag_2:
        CMP      R4,R0
        BCS.N    ??rpl_alloc_dag_1
//  547     if(!dag->used) {
        LDRB     R1,[R4, #+21]
        CMP      R1,#+0
        BNE.N    ??rpl_alloc_dag_3
//  548       memset(dag, 0, sizeof(*dag));
        MOVS     R1,#+60
        MOV      R0,R4
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  549       dag->used = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+21]
//  550       dag->rank = INFINITE_RANK;
        MOVW     R0,#+65535
        STRH     R0,[R4, #+28]
//  551       dag->min_rank = INFINITE_RANK;
        STRH     R0,[R4, #+16]
//  552       dag->instance = instance;
        STR      R5,[R4, #+32]
//  553       return dag;
        MOV      R0,R4
        POP      {R1,R4,R5,PC}
//  554     }
//  555   }
//  556 
//  557   RPL_STAT(rpl_stats.mem_overflows++);
//  558   return NULL;
??rpl_alloc_dag_1:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock19
//  559 }
//  560 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function rpl_set_default_instance
          CFI NoCalls
        THUMB
//  561 void
//  562 rpl_set_default_instance(rpl_instance_t *instance)
//  563 {
//  564   default_instance = instance;
rpl_set_default_instance:
        LDR.W    R1,??DataTable28
        STR      R0,[R1, #+4]
//  565 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  566 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function rpl_get_default_instance
          CFI NoCalls
        THUMB
//  567 rpl_instance_t *
//  568 rpl_get_default_instance(void)
//  569 {
//  570   return default_instance;
rpl_get_default_instance:
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  571 }
//  572 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function rpl_free_instance
        THUMB
//  573 void
//  574 rpl_free_instance(rpl_instance_t *instance)
//  575 {
rpl_free_instance:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//  576   rpl_dag_t *dag;
//  577   rpl_dag_t *end;
//  578 
//  579   PRINTF("RPL: Leaving the instance %u\n", instance->instance_id);
//  580 
//  581   /* Remove any DAG inside this instance */
//  582   for(dag = &instance->dag_table[0], end = dag + RPL_MAX_DAG_PER_INSTANCE; dag < end; ++dag) {
        ADD      R5,R4,#+16
        ADD      R6,R5,#+120
        CMP      R5,R6
        BCS.N    ??rpl_free_instance_0
//  583     if(dag->used) {
??rpl_free_instance_1:
        LDRB     R0,[R5, #+21]
        CBZ.N    R0,??rpl_free_instance_2
//  584       rpl_free_dag(dag);
        ADD      R0,R5,#+21
        LDRB     R1,[R0, #+1]
        CBZ.N    R1,??rpl_free_instance_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        MOV      R0,R5
          CFI FunCall rpl_remove_routes
        BL       rpl_remove_routes
        LDRB     R0,[R5, #+57]
        LSLS     R0,R0,#+25
        BPL.N    ??rpl_free_instance_4
        MOVS     R1,#+0
        ADD      R0,R5,#+36
          CFI FunCall check_prefix
        BL       check_prefix
??rpl_free_instance_4:
        MOVS     R1,#+0
        MOV      R0,R5
          CFI FunCall remove_parents
        BL       remove_parents
??rpl_free_instance_3:
        MOVS     R0,#+0
        STRB     R0,[R5, #+21]
//  585     }
//  586   }
??rpl_free_instance_2:
        ADDS     R5,R5,#+60
        CMP      R5,R6
        BCC.N    ??rpl_free_instance_1
//  587 
//  588   rpl_set_default_route(instance, NULL);
??rpl_free_instance_0:
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall rpl_set_default_route
        BL       rpl_set_default_route
//  589 
//  590 #if RPL_WITH_PROBING
//  591   ctimer_stop(&instance->probing_timer);
//  592 #endif /* RPL_WITH_PROBING */
//  593   ctimer_stop(&instance->dio_timer);
        ADD      R0,R4,#+164
          CFI FunCall ctimer_stop
        BL       ctimer_stop
//  594   ctimer_stop(&instance->dao_timer);
        ADD      R0,R4,#+196
          CFI FunCall ctimer_stop
        BL       ctimer_stop
//  595   ctimer_stop(&instance->dao_lifetime_timer);
        ADD      R0,R4,#+228
          CFI FunCall ctimer_stop
        BL       ctimer_stop
//  596 
//  597   if(default_instance == instance) {
        LDR.W    R0,??DataTable28
        LDR      R1,[R0, #+4]
        CMP      R1,R4
        ITT      EQ 
        MOVEQ    R1,#+0
        STREQ    R1,[R0, #+4]
//  598     default_instance = NULL;
//  599   }
//  600 
//  601   instance->used = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+141]
//  602 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock22
//  603 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function rpl_free_dag
        THUMB
//  604 void
//  605 rpl_free_dag(rpl_dag_t *dag)
//  606 {
rpl_free_dag:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  607   if(dag->joined) {
        ADD      R0,R4,#+21
        LDRB     R1,[R0, #+1]
        CBZ.N    R1,??rpl_free_dag_0
//  608     PRINTF("RPL: Leaving the DAG ");
//  609     PRINT6ADDR(&dag->dag_id);
//  610     PRINTF("\n");
//  611     dag->joined = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//  612 
//  613     /* Remove routes installed by DAOs. */
//  614     rpl_remove_routes(dag);
        MOV      R0,R4
          CFI FunCall rpl_remove_routes
        BL       rpl_remove_routes
//  615 
//  616    /* Remove autoconfigured address */
//  617     if((dag->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS)) {
        LDRB     R0,[R4, #+57]
        LSLS     R0,R0,#+25
        BPL.N    ??rpl_free_dag_1
//  618       check_prefix(&dag->prefix_info, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+36
          CFI FunCall check_prefix
        BL       check_prefix
//  619     }
//  620 
//  621     remove_parents(dag, 0);
??rpl_free_dag_1:
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall remove_parents
        BL       remove_parents
//  622   }
//  623   dag->used = 0;
??rpl_free_dag_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+21]
//  624 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock23
//  625 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function rpl_add_parent
        THUMB
//  626 rpl_parent_t *
//  627 rpl_add_parent(rpl_dag_t *dag, rpl_dio_t *dio, uip_ipaddr_t *addr)
//  628 {
rpl_add_parent:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R5,R0
        MOV      R6,R1
        MOV      R0,R2
//  629   rpl_parent_t *p = NULL;
        MOVS     R4,#+0
//  630   /* Is the parent known by ds6? Drop this request if not.
//  631    * Typically, the parent is added upon receiving a DIO. */
//  632   const uip_lladdr_t *lladdr = uip_ds6_nbr_lladdr_from_ipaddr(addr);
          CFI FunCall uip_ds6_nbr_lladdr_from_ipaddr
        BL       uip_ds6_nbr_lladdr_from_ipaddr
        MOVS     R1,R0
//  633 
//  634   PRINTF("RPL: rpl_add_parent lladdr %p ", lladdr);
//  635   PRINT6ADDR(addr);
//  636   PRINTF("\n");
//  637   if(lladdr != NULL) {
        BEQ.N    ??rpl_add_parent_0
//  638     /* Add parent in rpl_parents */
//  639     p = nbr_table_add_lladdr(rpl_parents, (linkaddr_t *)lladdr);
        LDR.W    R7,??DataTable28
        LDR      R0,[R7, #+0]
          CFI FunCall nbr_table_add_lladdr
        BL       nbr_table_add_lladdr
        MOVS     R4,R0
//  640     if(p == NULL) {
        BEQ.N    ??rpl_add_parent_0
//  641       PRINTF("RPL: rpl_add_parent p NULL\n");
//  642     } else {
//  643       uip_ds6_nbr_t *nbr;
//  644       nbr = rpl_get_nbr(p);
        LDR      R0,[R7, #+0]
        MOV      R1,R4
          CFI FunCall nbr_table_get_lladdr
        BL       nbr_table_get_lladdr
        CBZ.N    R0,??rpl_add_parent_1
        MOV      R1,R0
        LDR.W    R0,??DataTable28_1
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
//  645 
//  646       p->dag = dag;
??rpl_add_parent_1:
        STR      R5,[R4, #+4]
//  647       p->rank = dio->rank;
        LDRH     R1,[R6, #+18]
        STRH     R1,[R4, #+8]
//  648       p->dtsn = dio->dtsn;
        LDRB     R1,[R6, #+25]
        STRB     R1,[R4, #+16]
//  649       
//  650       /* Check whether we have a neighbor that has not gotten a link metric yet */
//  651       if(nbr != NULL && nbr->link_metric == 0) {
        CBZ.N    R0,??rpl_add_parent_0
        LDRH     R1,[R0, #+36]
        CBNZ.N   R1,??rpl_add_parent_0
//  652 	nbr->link_metric = RPL_INIT_LINK_METRIC * RPL_DAG_MC_ETX_DIVISOR;
        MOV      R1,#+512
        STRH     R1,[R0, #+36]
//  653       }
//  654 #if RPL_DAG_MC != RPL_DAG_MC_NONE
//  655       memcpy(&p->mc, &dio->mc, sizeof(p->mc));
//  656 #endif /* RPL_DAG_MC != RPL_DAG_MC_NONE */
//  657     }
//  658   }
//  659 
//  660   return p;
??rpl_add_parent_0:
        MOV      R0,R4
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock24
//  661 }
//  662 /*---------------------------------------------------------------------------*/
//  663 static rpl_parent_t *
//  664 find_parent_any_dag_any_instance(uip_ipaddr_t *addr)
//  665 {
//  666   uip_ds6_nbr_t *ds6_nbr = uip_ds6_nbr_lookup(addr);
//  667   const uip_lladdr_t *lladdr = uip_ds6_nbr_get_ll(ds6_nbr);
//  668   return nbr_table_get_from_lladdr(rpl_parents, (linkaddr_t *)lladdr);
//  669 }
//  670 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function rpl_find_parent
        THUMB
//  671 rpl_parent_t *
//  672 rpl_find_parent(rpl_dag_t *dag, uip_ipaddr_t *addr)
//  673 {
rpl_find_parent:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  674   rpl_parent_t *p = find_parent_any_dag_any_instance(addr);
        MOV      R0,R1
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        MOV      R1,R0
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
//  675   if(p != NULL && p->dag == dag) {
        CBZ.N    R0,??rpl_find_parent_0
        LDR      R1,[R0, #+4]
        CMP      R1,R4
        BEQ.N    ??rpl_find_parent_1
//  676     return p;
//  677   } else {
//  678     return NULL;
??rpl_find_parent_0:
        MOVS     R0,#+0
??rpl_find_parent_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock25
//  679   }
//  680 }
//  681 /*---------------------------------------------------------------------------*/
//  682 static rpl_dag_t *
//  683 find_parent_dag(rpl_instance_t *instance, uip_ipaddr_t *addr)
//  684 {
//  685   rpl_parent_t *p = find_parent_any_dag_any_instance(addr);
//  686   if(p != NULL) {
//  687     return p->dag;
//  688   } else {
//  689     return NULL;
//  690   }
//  691 }
//  692 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function rpl_find_parent_any_dag
        THUMB
//  693 rpl_parent_t *
//  694 rpl_find_parent_any_dag(rpl_instance_t *instance, uip_ipaddr_t *addr)
//  695 {
rpl_find_parent_any_dag:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  696   rpl_parent_t *p = find_parent_any_dag_any_instance(addr);
        MOV      R0,R1
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        MOV      R1,R0
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
//  697   if(p && p->dag && p->dag->instance == instance) {
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R1,[R0, #+4]
        CMPNE    R1,#+0
        BEQ.N    ??rpl_find_parent_any_dag_0
        LDR      R1,[R1, #+32]
        CMP      R1,R4
        BEQ.N    ??rpl_find_parent_any_dag_1
//  698     return p;
//  699   } else {
//  700     return NULL;
??rpl_find_parent_any_dag_0:
        MOVS     R0,#+0
??rpl_find_parent_any_dag_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock26
//  701   }
//  702 }
//  703 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function rpl_select_dag
        THUMB
//  704 rpl_dag_t *
//  705 rpl_select_dag(rpl_instance_t *instance, rpl_parent_t *p)
//  706 {
rpl_select_dag:
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
        MOV      R5,R0
//  707   rpl_parent_t *last_parent;
//  708   rpl_dag_t *dag, *end, *best_dag;
//  709   rpl_rank_t old_rank;
//  710 
//  711   old_rank = instance->current_dag->rank;
//  712   last_parent = instance->current_dag->preferred_parent;
        ADD      R6,R5,#+8
//  713 
//  714   best_dag = instance->current_dag;
//  715   if(best_dag->rank != ROOT_RANK(instance)) {
        ADD      R9,R5,#+142
        LDR      R4,[R6, #+4]
        LDR      R8,[R4, #+24]
        LDRH     R0,[R4, #+28]
        MOV      R7,R1
        LDRH     R1,[R9, #+12]
        CMP      R0,R1
        BEQ.N    ??rpl_select_dag_0
//  716     if(rpl_select_parent(p->dag) != NULL) {
        LDR      R0,[R7, #+4]
          CFI FunCall rpl_select_parent
        BL       rpl_select_parent
        CBZ.N    R0,??rpl_select_dag_1
//  717       if(p->dag != best_dag) {
        LDR      R1,[R7, #+4]
        CMP      R1,R4
        BEQ.N    ??rpl_select_dag_0
//  718         best_dag = instance->of->best_dag(best_dag, p->dag);
        LDR      R2,[R5, #+8]
        LDR      R2,[R2, #+12]
        MOV      R0,R4
          CFI FunCall
        BLX      R2
        MOV      R4,R0
        B.N      ??rpl_select_dag_0
//  719       }
//  720     } else if(p->dag == best_dag) {
??rpl_select_dag_1:
        LDR      R0,[R7, #+4]
        CMP      R0,R4
        BNE.N    ??rpl_select_dag_0
//  721       best_dag = NULL;
//  722       for(dag = &instance->dag_table[0], end = dag + RPL_MAX_DAG_PER_INSTANCE; dag < end; ++dag) {
        ADD      R7,R5,#+16
        MOVS     R4,#+0
        ADD      R11,R7,#+120
        CMP      R7,R11
        BCS.N    ??rpl_select_dag_2
        MOVW     R10,#+65535
//  723         if(dag->used && dag->preferred_parent != NULL && dag->preferred_parent->rank != INFINITE_RANK) {
??rpl_select_dag_3:
        LDRB     R0,[R7, #+21]
        CMP      R0,#+0
        ITTTT    NE 
        LDRNE    R0,[R7, #+24]
        CMPNE    R0,#+0
        LDRHNE   R0,[R0, #+8]
        CMPNE    R0,R10
        BEQ.N    ??rpl_select_dag_4
//  724           if(best_dag == NULL) {
        CBNZ.N   R4,??rpl_select_dag_5
//  725             best_dag = dag;
        MOV      R4,R7
        B.N      ??rpl_select_dag_4
//  726           } else {
//  727             best_dag = instance->of->best_dag(best_dag, dag);
??rpl_select_dag_5:
        LDR      R2,[R5, #+8]
        LDR      R2,[R2, #+12]
        MOV      R1,R7
        MOV      R0,R4
          CFI FunCall
        BLX      R2
        MOV      R4,R0
//  728           }
//  729         }
//  730       }
??rpl_select_dag_4:
        ADDS     R7,R7,#+60
        CMP      R7,R11
        BCC.N    ??rpl_select_dag_3
//  731     }
//  732   }
//  733 
//  734   if(best_dag == NULL) {
??rpl_select_dag_0:
        CMP      R4,#+0
        BEQ.N    ??rpl_select_dag_2
//  735     /* No parent found: the calling function handle this problem. */
//  736     return NULL;
//  737   }
//  738 
//  739   if(instance->current_dag != best_dag) {
        LDR      R0,[R6, #+4]
        CMP      R0,R4
        BEQ.N    ??rpl_select_dag_6
//  740     /* Remove routes installed by DAOs. */
//  741     rpl_remove_routes(instance->current_dag);
          CFI FunCall rpl_remove_routes
        BL       rpl_remove_routes
//  742 
//  743     PRINTF("RPL: New preferred DAG: ");
//  744     PRINT6ADDR(&best_dag->dag_id);
//  745     PRINTF("\n");
//  746 
//  747     if(best_dag->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
        LDRB     R0,[R4, #+57]
        LSLS     R0,R0,#+25
        BPL.N    ??rpl_select_dag_7
//  748       check_prefix(&instance->current_dag->prefix_info, &best_dag->prefix_info);
        LDR      R0,[R6, #+4]
        ADD      R1,R4,#+36
        B.N      ??rpl_select_dag_8
//  749     } else if(instance->current_dag->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
??rpl_select_dag_7:
        LDR      R0,[R6, #+4]
        LDRB     R1,[R0, #+57]
        LSLS     R1,R1,#+25
        BPL.N    ??rpl_select_dag_9
//  750       check_prefix(&instance->current_dag->prefix_info, NULL);
        MOVS     R1,#+0
??rpl_select_dag_8:
        ADDS     R0,R0,#+36
          CFI FunCall check_prefix
        BL       check_prefix
//  751     }
//  752 
//  753     best_dag->joined = 1;
??rpl_select_dag_9:
        MOVS     R0,#+1
        STRB     R0,[R4, #+22]
//  754     instance->current_dag->joined = 0;
        MOVS     R0,#+0
        LDR      R1,[R6, #+4]
        STRB     R0,[R1, #+22]
//  755     instance->current_dag = best_dag;
        STR      R4,[R6, #+4]
//  756   }
//  757 
//  758   instance->of->update_metric_container(instance);
??rpl_select_dag_6:
        MOV      R0,R5
        LDR      R1,[R5, #+8]
        LDR      R1,[R1, #+20]
          CFI FunCall
        BLX      R1
//  759   /* Update the DAG rank. */
//  760   best_dag->rank = instance->of->calculate_rank(best_dag->preferred_parent, 0);
        LDR      R2,[R5, #+8]
        LDR      R0,[R4, #+24]
        LDR      R2,[R2, #+16]
        MOVS     R1,#+0
          CFI FunCall
        BLX      R2
//  761   if(last_parent == NULL || best_dag->rank < best_dag->min_rank) {
        CMP      R8,#+0
        STRH     R0,[R4, #+28]
        BEQ.N    ??rpl_select_dag_10
        LDRH     R1,[R4, #+16]
        CMP      R0,R1
        BCS.N    ??rpl_select_dag_11
//  762     best_dag->min_rank = best_dag->rank;
??rpl_select_dag_10:
        STRH     R0,[R4, #+16]
//  763   } else if(!acceptable_rank(best_dag, best_dag->rank)) {
//  764     PRINTF("RPL: New rank unacceptable!\n");
//  765     rpl_set_preferred_parent(instance->current_dag, NULL);
//  766     if(instance->mop != RPL_MOP_NO_DOWNWARD_ROUTES && last_parent != NULL) {
//  767       /* Send a No-Path DAO to the removed preferred parent. */
//  768       dao_output(last_parent, RPL_ZERO_LIFETIME);
//  769     }
//  770     return NULL;
//  771   }
//  772 
//  773   if(best_dag->preferred_parent != last_parent) {
??rpl_select_dag_12:
        LDR      R1,[R4, #+24]
        CMP      R1,R8
        BEQ.N    ??rpl_select_dag_13
//  774     rpl_set_default_route(instance, rpl_get_parent_ipaddr(best_dag->preferred_parent));
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_get_lladdr
        BL       nbr_table_get_lladdr
          CFI FunCall uip_ds6_nbr_ipaddr_from_lladdr
        BL       uip_ds6_nbr_ipaddr_from_lladdr
        MOV      R1,R0
        MOV      R0,R5
          CFI FunCall rpl_set_default_route
        BL       rpl_set_default_route
//  775     PRINTF("RPL: Changed preferred parent, rank changed from %u to %u\n",
//  776   	(unsigned)old_rank, best_dag->rank);
//  777     RPL_STAT(rpl_stats.parent_switch++);
//  778     if(instance->mop != RPL_MOP_NO_DOWNWARD_ROUTES) {
        LDRB     R0,[R9, #+1]
        CBZ.N    R0,??rpl_select_dag_14
//  779       if(last_parent != NULL) {
        CMP      R8,#+0
        BEQ.N    ??rpl_select_dag_15
//  780         /* Send a No-Path DAO to the removed preferred parent. */
//  781         dao_output(last_parent, RPL_ZERO_LIFETIME);
        MOVS     R1,#+0
        MOV      R0,R8
          CFI FunCall dao_output
        BL       dao_output
//  782       }
//  783       /* The DAO parent set changed - schedule a DAO transmission. */
//  784       RPL_LOLLIPOP_INCREMENT(instance->dtsn_out);
??rpl_select_dag_15:
        LDRB     R0,[R5, #+142]
        ADDS     R1,R0,#+1
        CMP      R0,#+128
        IT       LT 
        ANDLT    R1,R1,#0x7F
        B.N      ??rpl_select_dag_16
??rpl_select_dag_11:
        MOV      R1,R0
        MOV      R0,R4
          CFI FunCall acceptable_rank
        BL       acceptable_rank
        CMP      R0,#+0
        BNE.N    ??rpl_select_dag_12
        LDR      R0,[R6, #+4]
        MOVS     R1,#+0
          CFI FunCall rpl_set_preferred_parent
        BL       rpl_set_preferred_parent
        LDRB     R0,[R9, #+1]
        CBZ.N    R0,??rpl_select_dag_2
        MOVS     R1,#+0
        MOV      R0,R8
          CFI FunCall dao_output
        BL       dao_output
??rpl_select_dag_2:
        MOVS     R0,#+0
        POP      {R1,R4-R11,PC}
??rpl_select_dag_16:
        STRB     R1,[R5, #+142]
//  785       rpl_schedule_dao(instance);
        MOV      R0,R5
          CFI FunCall rpl_schedule_dao
        BL       rpl_schedule_dao
//  786     }
//  787     rpl_reset_dio_timer(instance);
??rpl_select_dag_14:
        MOV      R0,R5
          CFI FunCall rpl_reset_dio_timer
        BL       rpl_reset_dio_timer
//  788 #if DEBUG
//  789     rpl_print_neighbor_list();
//  790 #endif
//  791   } else if(best_dag->rank != old_rank) {
//  792     PRINTF("RPL: Preferred parent update, rank changed from %u to %u\n",
//  793   	(unsigned)old_rank, best_dag->rank);
//  794   }
//  795   return best_dag;
??rpl_select_dag_13:
        MOV      R0,R4
        POP      {R1,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock27
//  796 }
//  797 /*---------------------------------------------------------------------------*/
//  798 static rpl_parent_t *
//  799 best_parent(rpl_dag_t *dag)
//  800 {
//  801   rpl_parent_t *p, *best;
//  802 
//  803   best = NULL;
//  804 
//  805   p = nbr_table_head(rpl_parents);
//  806   while(p != NULL) {
//  807     if(p->dag != dag || p->rank == INFINITE_RANK) {
//  808       /* ignore this neighbor */
//  809     } else if(best == NULL) {
//  810       best = p;
//  811     } else {
//  812       best = dag->instance->of->best_parent(best, p);
//  813     }
//  814     p = nbr_table_next(rpl_parents, p);
//  815   }
//  816 
//  817   return best;
//  818 }
//  819 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function rpl_select_parent
        THUMB
//  820 rpl_parent_t *
//  821 rpl_select_parent(rpl_dag_t *dag)
//  822 {
rpl_select_parent:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  823   rpl_parent_t *best = best_parent(dag);
        LDR.W    R5,??DataTable28
        MOV      R4,R0
        LDR      R0,[R5, #+0]
        MOVS     R6,#+0
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        MOVS     R7,R0
        MOVW     R8,#+65535
        B.N      ??rpl_select_parent_0
??rpl_select_parent_1:
        LDR      R2,[R4, #+32]
        LDR      R2,[R2, #+8]
        LDR      R2,[R2, #+8]
        MOV      R1,R7
        MOV      R0,R6
          CFI FunCall
        BLX      R2
        MOV      R6,R0
??rpl_select_parent_2:
        LDR      R0,[R5, #+0]
        MOV      R1,R7
          CFI FunCall nbr_table_next
        BL       nbr_table_next
        MOVS     R7,R0
??rpl_select_parent_0:
        BEQ.N    ??rpl_select_parent_3
        LDR      R0,[R7, #+4]
        CMP      R0,R4
        BNE.N    ??rpl_select_parent_2
        LDRH     R0,[R7, #+8]
        CMP      R0,R8
        BEQ.N    ??rpl_select_parent_2
        CMP      R6,#+0
        BNE.N    ??rpl_select_parent_1
        MOV      R6,R7
        B.N      ??rpl_select_parent_2
//  824 
//  825   if(best != NULL) {
??rpl_select_parent_3:
        CBZ.N    R6,??rpl_select_parent_4
//  826     rpl_set_preferred_parent(dag, best);
        MOV      R1,R6
        MOV      R0,R4
          CFI FunCall rpl_set_preferred_parent
        BL       rpl_set_preferred_parent
//  827     dag->rank = dag->instance->of->calculate_rank(dag->preferred_parent, 0);
        LDR      R2,[R4, #+32]
        LDR      R0,[R4, #+24]
        LDR      R2,[R2, #+8]
        LDR      R2,[R2, #+16]
        MOVS     R1,#+0
          CFI FunCall
        BLX      R2
        STRH     R0,[R4, #+28]
        B.N      ??rpl_select_parent_5
//  828   } else {
//  829     dag->rank = INFINITE_RANK;
??rpl_select_parent_4:
        STRH     R8,[R4, #+28]
//  830   }
//  831 
//  832   return best;
??rpl_select_parent_5:
        MOV      R0,R6
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock28
//  833 }
//  834 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function rpl_remove_parent
          CFI NoCalls
        THUMB
//  835 void
//  836 rpl_remove_parent(rpl_parent_t *parent)
rpl_remove_parent:
        PUSH     {R4,LR}
          CFI EndBlock cfiBlock29
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
//  837 {
?Subroutine0:
        MOV      R4,R0
//  838   PRINTF("RPL: Removing parent ");
//  839   PRINT6ADDR(rpl_get_parent_ipaddr(parent));
//  840   PRINTF("\n");
//  841 
//  842   rpl_nullify_parent(parent);
          CFI FunCall nbr_callback rpl_nullify_parent
          CFI FunCall rpl_remove_parent rpl_nullify_parent
        BL       rpl_nullify_parent
//  843 
//  844   nbr_table_remove(rpl_parents, parent);
        MOV      R1,R4
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
        POP      {R4,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R14 SameValue
          CFI FunCall nbr_callback nbr_table_remove
          CFI FunCall rpl_remove_parent nbr_table_remove
        B.W      nbr_table_remove
          CFI EndBlock cfiBlock30
//  845 }
//  846 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function rpl_nullify_parent
        THUMB
//  847 void
//  848 rpl_nullify_parent(rpl_parent_t *parent)
//  849 {
rpl_nullify_parent:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  850   rpl_dag_t *dag = parent->dag;
        LDR      R5,[R4, #+4]
//  851   /* This function can be called when the preferred parent is NULL, so we
//  852      need to handle this condition in order to trigger uip_ds6_defrt_rm. */
//  853   if(parent == dag->preferred_parent || dag->preferred_parent == NULL) {
        LDR      R0,[R5, #+24]
        CMP      R4,R0
        IT       NE 
        CMPNE    R0,#+0
        BNE.N    ??rpl_nullify_parent_0
//  854     dag->rank = INFINITE_RANK;
        MOVW     R0,#+65535
        STRH     R0,[R5, #+28]
//  855     if(dag->joined) {
        LDRB     R0,[R5, #+22]
        CBZ.N    R0,??rpl_nullify_parent_0
        LDR      R0,[R5, #+32]
        LDR      R0,[R0, #+136]
        CBZ.N    R0,??rpl_nullify_parent_1
//  856       if(dag->instance->def_route != NULL) {
//  857         PRINTF("RPL: Removing default route ");
//  858         PRINT6ADDR(rpl_get_parent_ipaddr(parent));
//  859         PRINTF("\n");
//  860         uip_ds6_defrt_rm(dag->instance->def_route);
          CFI FunCall uip_ds6_defrt_rm
        BL       uip_ds6_defrt_rm
//  861         dag->instance->def_route = NULL;
        LDR      R1,[R5, #+32]
        MOVS     R0,#+0
        STR      R0,[R1, #+136]
//  862       }
//  863       /* Send no-path DAO only to preferred parent, if any */
//  864       if(parent == dag->preferred_parent) {
??rpl_nullify_parent_1:
        LDR      R0,[R5, #+24]
        CMP      R4,R0
        BNE.N    ??rpl_nullify_parent_0
//  865         dao_output(parent, RPL_ZERO_LIFETIME);
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall dao_output
        BL       dao_output
//  866         rpl_set_preferred_parent(dag, NULL);
        MOV      R0,R5
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
          CFI FunCall rpl_set_preferred_parent
        B.N      rpl_set_preferred_parent
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  867       }
//  868     }
//  869   }
//  870 
//  871   PRINTF("RPL: Nullifying parent ");
//  872   PRINT6ADDR(rpl_get_parent_ipaddr(parent));
//  873   PRINTF("\n");
//  874 }
??rpl_nullify_parent_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock31
//  875 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function rpl_move_parent
        THUMB
//  876 void
//  877 rpl_move_parent(rpl_dag_t *dag_src, rpl_dag_t *dag_dst, rpl_parent_t *parent)
//  878 {
rpl_move_parent:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R6,R2
//  879   if(parent == dag_src->preferred_parent) {
        LDR      R0,[R4, #+24]
        CMP      R6,R0
        MOV      R5,R1
        BNE.N    ??rpl_move_parent_0
//  880       rpl_set_preferred_parent(dag_src, NULL);
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall rpl_set_preferred_parent
        BL       rpl_set_preferred_parent
//  881       dag_src->rank = INFINITE_RANK;
        MOVW     R0,#+65535
        STRH     R0,[R4, #+28]
//  882     if(dag_src->joined && dag_src->instance->def_route != NULL) {
        LDRB     R0,[R4, #+22]
        CMP      R0,#+0
        ITTT     NE 
        LDRNE    R0,[R4, #+32]
        LDRNE    R0,[R0, #+136]
        CMPNE    R0,#+0
        BEQ.N    ??rpl_move_parent_1
//  883       PRINTF("RPL: Removing default route ");
//  884       PRINT6ADDR(rpl_get_parent_ipaddr(parent));
//  885       PRINTF("\n");
//  886       PRINTF("rpl_move_parent\n");
//  887       uip_ds6_defrt_rm(dag_src->instance->def_route);
          CFI FunCall uip_ds6_defrt_rm
        BL       uip_ds6_defrt_rm
//  888       dag_src->instance->def_route = NULL;
        LDR      R1,[R4, #+32]
        MOVS     R0,#+0
        STR      R0,[R1, #+136]
        B.N      ??rpl_move_parent_1
//  889     }
//  890   } else if(dag_src->joined) {
??rpl_move_parent_0:
        LDRB     R0,[R4, #+22]
        CBZ.N    R0,??rpl_move_parent_1
//  891     /* Remove uIPv6 routes that have this parent as the next hop. */
//  892     rpl_remove_routes_by_nexthop(rpl_get_parent_ipaddr(parent), dag_src);
        LDR.W    R0,??DataTable28
        LDR      R0,[R0, #+0]
        MOV      R1,R6
          CFI FunCall nbr_table_get_lladdr
        BL       nbr_table_get_lladdr
          CFI FunCall uip_ds6_nbr_ipaddr_from_lladdr
        BL       uip_ds6_nbr_ipaddr_from_lladdr
//  893   }
        MOV      R1,R4
          CFI FunCall rpl_remove_routes_by_nexthop
        BL       rpl_remove_routes_by_nexthop
//  894 
//  895   PRINTF("RPL: Moving parent ");
//  896   PRINT6ADDR(rpl_get_parent_ipaddr(parent));
//  897   PRINTF("\n");
//  898 
//  899   parent->dag = dag_dst;
??rpl_move_parent_1:
        STR      R5,[R6, #+4]
//  900 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock32
//  901 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function rpl_get_any_dag
          CFI NoCalls
        THUMB
//  902 rpl_dag_t *
//  903 rpl_get_any_dag(void)
//  904 {
//  905   int i;
//  906 
//  907   for(i = 0; i < RPL_MAX_INSTANCES; ++i) {
rpl_get_any_dag:
        LDR.W    R0,??DataTable30_2
//  908     if(instance_table[i].used && instance_table[i].current_dag->joined) {
        LDRB     R1,[R0, #+141]
        CMP      R1,#+0
        ITTTE    NE 
        LDRNE    R0,[R0, #+12]
        LDRBNE   R1,[R0, #+22]
        CMPNE    R1,#+0
        MOVEQ    R0,#+0
//  909       return instance_table[i].current_dag;
//  910     }
//  911   }
//  912   return NULL;
        BX       LR               ;; return
          CFI EndBlock cfiBlock33
//  913 }
//  914 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function rpl_get_instance
          CFI NoCalls
        THUMB
//  915 rpl_instance_t *
//  916 rpl_get_instance(uint8_t instance_id)
//  917 {
//  918   int i;
//  919 
//  920   for(i = 0; i < RPL_MAX_INSTANCES; ++i) {
rpl_get_instance:
        LDR.W    R1,??DataTable30_2
//  921     if(instance_table[i].used && instance_table[i].instance_id == instance_id) {
        LDRB     R2,[R1, #+141]
        CBZ.N    R2,??rpl_get_instance_0
        LDRB     R2,[R1, #+140]
        CMP      R2,R0
        BNE.N    ??rpl_get_instance_0
//  922       return &instance_table[i];
        MOV      R0,R1
        BX       LR
//  923     }
//  924   }
//  925   return NULL;
??rpl_get_instance_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock34
//  926 }
//  927 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function rpl_find_of
          CFI NoCalls
        THUMB
//  928 rpl_of_t *
//  929 rpl_find_of(rpl_ocp_t ocp)
//  930 {
//  931   unsigned int i;
//  932 
//  933   for(i = 0;
rpl_find_of:
        LDR.W    R1,??DataTable30
//  934       i < sizeof(objective_functions) / sizeof(objective_functions[0]);
//  935       i++) {
//  936     if(objective_functions[i]->ocp == ocp) {
        LDRH     R2,[R1, #+24]
        CMP      R2,R0
        BNE.N    ??rpl_find_of_0
//  937       return objective_functions[i];
        MOV      R0,R1
        BX       LR
//  938     }
//  939   }
//  940 
//  941   return NULL;
??rpl_find_of_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock35
//  942 }
//  943 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function rpl_join_instance
        THUMB
//  944 void
//  945 rpl_join_instance(uip_ipaddr_t *from, rpl_dio_t *dio)
//  946 {
rpl_join_instance:
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
        MOV      R5,R1
//  947   rpl_instance_t *instance;
//  948   rpl_dag_t *dag;
//  949   rpl_parent_t *p;
//  950   rpl_of_t *of;
//  951 
//  952   dag = rpl_alloc_dag(dio->instance_id, &dio->dag_id);
        ADD      R6,R5,#+16
        MOV      R8,R0
        LDRB     R0,[R6, #+8]
          CFI FunCall rpl_alloc_dag
        BL       rpl_alloc_dag
        MOVS     R7,R0
//  953   if(dag == NULL) {
        BEQ.N    ??rpl_join_instance_0
//  954     PRINTF("RPL: Failed to allocate a DAG object!\n");
//  955     return;
//  956   }
//  957 
//  958   instance = dag->instance;
        LDR      R4,[R7, #+32]
//  959 
//  960   p = rpl_add_parent(dag, dio, from);
        MOV      R2,R8
        MOV      R1,R5
          CFI FunCall rpl_add_parent
        BL       rpl_add_parent
        MOVS     R9,R0
//  961   PRINTF("RPL: Adding ");
//  962   PRINT6ADDR(from);
//  963   PRINTF(" as a parent: ");
//  964   if(p == NULL) {
        BEQ.N    ??rpl_join_instance_1
//  965     PRINTF("failed\n");
//  966     instance->used = 0;
//  967     return;
//  968   }
//  969   p->dtsn = dio->dtsn;
        LDRB     R0,[R6, #+9]
//  970   PRINTF("succeeded\n");
//  971 
//  972   /* Determine the objective function by using the
//  973      objective code point of the DIO. */
//  974   of = rpl_find_of(dio->ocp);
        LDR.W    R10,??DataTable30
        STRB     R0,[R9, #+16]
        LDRH     R1,[R5, #+16]
        LDRH     R0,[R10, #+24]
        CMP      R0,R1
        BNE.N    ??rpl_join_instance_2
//  975   if(of == NULL) {
//  976     PRINTF("RPL: DIO for DAG instance %u does not specify a supported OF\n",
//  977         dio->instance_id);
//  978     rpl_remove_parent(p);
//  979     instance->used = 0;
//  980     return;
//  981   }
//  982 
//  983   /* Autoconfigure an address if this node does not already have an address
//  984      with this prefix. */
//  985   if(dio->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
        LDRB     R0,[R5, #+81]
        LSLS     R0,R0,#+25
        BPL.N    ??rpl_join_instance_3
//  986     check_prefix(NULL, &dio->prefix_info);
        ADD      R1,R5,#+60
        MOVS     R0,#+0
          CFI FunCall check_prefix
        BL       check_prefix
//  987   }
//  988 
//  989   dag->joined = 1;
??rpl_join_instance_3:
        MOVS     R0,#+1
        STRB     R0,[R7, #+22]
//  990   dag->preference = dio->preference;
        LDRB     R0,[R6, #+6]
        STRB     R0,[R7, #+20]
//  991   dag->grounded = dio->grounded;
        LDRB     R0,[R6, #+4]
        STRB     R0,[R7, #+19]
//  992   dag->version = dio->version;
        LDRB     R0,[R6, #+7]
        STRB     R0,[R7, #+18]
//  993 
//  994   instance->of = of;
        STR      R10,[R4, #+8]
//  995   instance->mop = dio->mop;
        LDRB     R0,[R6, #+5]
        STRB     R0,[R4, #+143]
//  996   instance->current_dag = dag;
        STR      R7,[R4, #+12]
//  997   instance->dtsn_out = RPL_LOLLIPOP_INIT;
        MOVS     R0,#+240
        STRB     R0,[R4, #+142]
//  998 
//  999   instance->max_rankinc = dio->dag_max_rankinc;
        LDRH     R0,[R6, #+16]
        STRH     R0,[R4, #+152]
// 1000   instance->min_hoprankinc = dio->dag_min_hoprankinc;
        LDRH     R0,[R6, #+18]
        STRH     R0,[R4, #+154]
// 1001   instance->dio_intdoubl = dio->dag_intdoubl;
        LDRB     R0,[R6, #+10]
        STRB     R0,[R4, #+144]
// 1002   instance->dio_intmin = dio->dag_intmin;
        LDRB     R1,[R6, #+11]
        STRB     R1,[R4, #+145]
// 1003   instance->dio_intcurrent = instance->dio_intmin + instance->dio_intdoubl;
        ADDS     R0,R0,R1
        STRB     R0,[R4, #+148]
// 1004   instance->dio_redundancy = dio->dag_redund;
        LDRB     R0,[R6, #+12]
        STRB     R0,[R4, #+146]
// 1005   instance->default_lifetime = dio->default_lifetime;
        LDRB     R0,[R6, #+13]
        STRB     R0,[R4, #+147]
// 1006   instance->lifetime_unit = dio->lifetime_unit;
        LDRH     R0,[R6, #+14]
        STRH     R0,[R4, #+156]
// 1007 
// 1008   memcpy(&dag->dag_id, &dio->dag_id, sizeof(dio->dag_id));
        LDM      R5!,{R0-R3}
        STM      R7!,{R0-R3}
        SUBS     R5,R5,#+16
        SUBS     R7,R7,#+16
// 1009 
// 1010   /* Copy prefix information from the DIO into the DAG object. */
// 1011   memcpy(&dag->prefix_info, &dio->prefix_info, sizeof(rpl_prefix_t));
        MOVS     R2,#+24
        ADD      R1,R5,#+60
        ADD      R0,R7,#+36
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
// 1012 
// 1013   rpl_set_preferred_parent(dag, p);
        MOV      R1,R9
        MOV      R0,R7
          CFI FunCall rpl_set_preferred_parent
        BL       rpl_set_preferred_parent
// 1014   instance->of->update_metric_container(instance);
        LDR      R1,[R4, #+8]
        LDR      R1,[R1, #+20]
        MOV      R0,R4
          CFI FunCall
        BLX      R1
// 1015   dag->rank = instance->of->calculate_rank(p, 0);
        LDR      R2,[R4, #+8]
        LDR      R2,[R2, #+16]
        MOVS     R1,#+0
        MOV      R0,R9
          CFI FunCall
        BLX      R2
        STRH     R0,[R7, #+28]
// 1016   /* So far this is the lowest rank we are aware of. */
// 1017   dag->min_rank = dag->rank;
        STRH     R0,[R7, #+16]
// 1018 
// 1019   if(default_instance == NULL) {
        LDR.N    R0,??DataTable28
        LDR      R1,[R0, #+4]
        CBNZ.N   R1,??rpl_join_instance_4
// 1020     default_instance = instance;
        STR      R4,[R0, #+4]
// 1021   }
// 1022 
// 1023   PRINTF("RPL: Joined DAG with instance ID %u, rank %hu, DAG ID ",
// 1024          dio->instance_id, dag->rank);
// 1025   PRINT6ADDR(&dag->dag_id);
// 1026   PRINTF("\n");
// 1027 
// 1028   ANNOTATE("#A join=%u\n", dag->dag_id.u8[sizeof(dag->dag_id) - 1]);
// 1029 
// 1030   rpl_reset_dio_timer(instance);
??rpl_join_instance_4:
        MOV      R0,R4
          CFI FunCall rpl_reset_dio_timer
        BL       rpl_reset_dio_timer
// 1031   rpl_set_default_route(instance, from);
        MOV      R1,R8
        MOV      R0,R4
          CFI FunCall rpl_set_default_route
        BL       rpl_set_default_route
// 1032 
// 1033   if(instance->mop != RPL_MOP_NO_DOWNWARD_ROUTES) {
        LDRB     R0,[R4, #+143]
        CBZ.N    R0,??rpl_join_instance_0
// 1034     rpl_schedule_dao(instance);
        MOV      R0,R4
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
          CFI FunCall rpl_schedule_dao
        B.W      rpl_schedule_dao
          CFI R4 Frame(CFA, -32)
          CFI R5 Frame(CFA, -28)
          CFI R6 Frame(CFA, -24)
          CFI R7 Frame(CFA, -20)
          CFI R8 Frame(CFA, -16)
          CFI R9 Frame(CFA, -12)
          CFI R10 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+32
// 1035   } else {
// 1036     PRINTF("RPL: The DIO does not meet the prerequisites for sending a DAO\n");
// 1037   }
// 1038 }
??rpl_join_instance_0:
        POP      {R4-R10,PC}      ;; return
??rpl_join_instance_2:
        MOV      R0,R9
          CFI FunCall rpl_nullify_parent
        BL       rpl_nullify_parent
        LDR.N    R0,??DataTable28
        LDR      R0,[R0, #+0]
        MOV      R1,R9
          CFI FunCall nbr_table_remove
        BL       nbr_table_remove
        MOVS     R0,#+0
??rpl_join_instance_1:
        STRB     R0,[R4, #+141]
        POP      {R4-R10,PC}
          CFI EndBlock cfiBlock36
// 1039 
// 1040 #if RPL_MAX_DAG_PER_INSTANCE > 1
// 1041 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function rpl_add_dag
        THUMB
// 1042 void
// 1043 rpl_add_dag(uip_ipaddr_t *from, rpl_dio_t *dio)
// 1044 {
rpl_add_dag:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R4,R1
        MOV      R9,R0
// 1045   rpl_instance_t *instance;
// 1046   rpl_dag_t *dag, *previous_dag;
// 1047   rpl_parent_t *p;
// 1048   rpl_of_t *of;
// 1049 
// 1050   dag = rpl_alloc_dag(dio->instance_id, &dio->dag_id);
        LDRB     R0,[R4, #+24]
          CFI FunCall rpl_alloc_dag
        BL       rpl_alloc_dag
        MOVS     R5,R0
// 1051   if(dag == NULL) {
        BEQ.W    ??rpl_add_dag_0
// 1052     PRINTF("RPL: Failed to allocate a DAG object!\n");
// 1053     return;
// 1054   }
// 1055 
// 1056   instance = dag->instance;
        LDR      R6,[R5, #+32]
// 1057 
// 1058   previous_dag = find_parent_dag(instance, from);
        MOV      R0,R9
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        LDR.N    R7,??DataTable28
        MOV      R1,R0
        LDR      R0,[R7, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R8,[R0, #+4]
        CMPNE    R8,#+0
// 1059   if(previous_dag == NULL) {
        BNE.N    ??rpl_add_dag_1
// 1060     PRINTF("RPL: Adding ");
// 1061     PRINT6ADDR(from);
// 1062     PRINTF(" as a parent: ");
// 1063     p = rpl_add_parent(dag, dio, from);
        MOV      R2,R9
        MOV      R1,R4
        MOV      R0,R5
          CFI FunCall rpl_add_parent
        BL       rpl_add_parent
        MOVS     R9,R0
// 1064     if(p == NULL) {
        BNE.N    ??rpl_add_dag_2
// 1065       PRINTF("failed\n");
// 1066       dag->used = 0;
        B.N      ??rpl_add_dag_3
// 1067       return;
// 1068     }
// 1069     PRINTF("succeeded\n");
// 1070   } else {
// 1071     p = rpl_find_parent(previous_dag, from);
??rpl_add_dag_1:
        MOV      R0,R9
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        MOV      R1,R0
        LDR      R0,[R7, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
        MOVS     R9,R0
        BEQ.N    ??rpl_add_dag_4
        LDR      R0,[R9, #+4]
        CMP      R0,R8
        BNE.N    ??rpl_add_dag_4
// 1072     if(p != NULL) {
// 1073       rpl_move_parent(previous_dag, dag, p);
        MOV      R2,R9
        MOV      R1,R5
        MOV      R0,R8
          CFI FunCall rpl_move_parent
        BL       rpl_move_parent
        B.N      ??rpl_add_dag_2
// 1074     }
// 1075   }
??rpl_add_dag_4:
        MOV      R9,#+0
// 1076 
// 1077   /* Determine the objective function by using the
// 1078      objective code point of the DIO. */
// 1079   of = rpl_find_of(dio->ocp);
??rpl_add_dag_2:
        LDR.W    R0,??DataTable30
        LDRH     R2,[R4, #+16]
        LDRH     R1,[R0, #+24]
        CMP      R1,R2
// 1080   if(of != instance->of ||
// 1081      instance->mop != dio->mop ||
// 1082      instance->max_rankinc != dio->dag_max_rankinc ||
// 1083      instance->min_hoprankinc != dio->dag_min_hoprankinc ||
// 1084      instance->dio_intdoubl != dio->dag_intdoubl ||
// 1085      instance->dio_intmin != dio->dag_intmin ||
// 1086      instance->dio_redundancy != dio->dag_redund ||
// 1087      instance->default_lifetime != dio->default_lifetime ||
// 1088      instance->lifetime_unit != dio->lifetime_unit) {
        LDR      R1,[R6, #+8]
        IT       NE 
        MOVNE    R0,#+0
        CMP      R0,R1
        ITTT     EQ 
        LDRBEQ   R0,[R6, #+143]
        LDRBEQ   R1,[R4, #+21]
        CMPEQ    R0,R1
        BNE.N    ??rpl_add_dag_5
        LDRH     R0,[R6, #+152]
        LDRH     R1,[R4, #+32]
        CMP      R0,R1
        ITTTT    EQ 
        ADDEQ    R0,R6,#+152
        LDRHEQ   R1,[R0, #+2]
        LDRHEQ   R2,[R4, #+34]
        CMPEQ    R1,R2
        BNE.N    ??rpl_add_dag_5
        ADD      R1,R6,#+143
        LDRB     R3,[R4, #+26]
        LDRB     R2,[R1, #+1]
        CMP      R2,R3
        ITTT     EQ 
        LDRBEQ   R2,[R1, #+2]
        LDRBEQ   R3,[R4, #+27]
        CMPEQ    R2,R3
        BNE.N    ??rpl_add_dag_5
        LDRB     R2,[R1, #+3]
        LDRB     R3,[R4, #+28]
        CMP      R2,R3
        ITTT     EQ 
        LDRBEQ   R1,[R1, #+4]
        LDRBEQ   R2,[R4, #+29]
        CMPEQ    R1,R2
        ITTT     EQ 
        LDRHEQ   R0,[R0, #+4]
        LDRHEQ   R1,[R4, #+30]
        CMPEQ    R0,R1
        BEQ.N    ??rpl_add_dag_6
// 1089     PRINTF("RPL: DIO for DAG instance %u incompatible with previous DIO\n",
// 1090 	   dio->instance_id);
// 1091     rpl_remove_parent(p);
??rpl_add_dag_5:
        MOV      R0,R9
          CFI FunCall rpl_nullify_parent
        BL       rpl_nullify_parent
        LDR      R0,[R7, #+0]
        MOV      R1,R9
          CFI FunCall nbr_table_remove
        BL       nbr_table_remove
// 1092     dag->used = 0;
        MOVS     R0,#+0
??rpl_add_dag_3:
        STRB     R0,[R5, #+21]
// 1093     return;
// 1094   }
// 1095 
// 1096   dag->used = 1;
// 1097   dag->grounded = dio->grounded;
// 1098   dag->preference = dio->preference;
// 1099   dag->version = dio->version;
// 1100 
// 1101   memcpy(&dag->dag_id, &dio->dag_id, sizeof(dio->dag_id));
// 1102 
// 1103   /* copy prefix information into the dag */
// 1104   memcpy(&dag->prefix_info, &dio->prefix_info, sizeof(rpl_prefix_t));
// 1105 
// 1106   rpl_set_preferred_parent(dag, p);
// 1107   dag->rank = instance->of->calculate_rank(p, 0);
// 1108   dag->min_rank = dag->rank; /* So far this is the lowest rank we know of. */
// 1109 
// 1110   PRINTF("RPL: Joined DAG with instance ID %u, rank %hu, DAG ID ",
// 1111          dio->instance_id, dag->rank);
// 1112   PRINT6ADDR(&dag->dag_id);
// 1113   PRINTF("\n");
// 1114 
// 1115   ANNOTATE("#A join=%u\n", dag->dag_id.u8[sizeof(dag->dag_id) - 1]);
// 1116 
// 1117   rpl_process_parent_event(instance, p);
// 1118   p->dtsn = dio->dtsn;
// 1119 }
        POP      {R0,R4-R9,PC}
??rpl_add_dag_6:
        MOVS     R0,#+1
        STRB     R0,[R5, #+21]
        LDRB     R0,[R4, #+20]
        STRB     R0,[R5, #+19]
        LDRB     R0,[R4, #+22]
        STRB     R0,[R5, #+20]
        LDRB     R0,[R4, #+23]
        STRB     R0,[R5, #+18]
        LDM      R4!,{R0-R3}
        STM      R5!,{R0-R3}
        SUBS     R4,R4,#+16
        SUBS     R5,R5,#+16
        MOVS     R2,#+24
        ADD      R1,R4,#+60
        ADD      R0,R5,#+36
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        MOV      R1,R9
        MOV      R0,R5
          CFI FunCall rpl_set_preferred_parent
        BL       rpl_set_preferred_parent
        LDR      R2,[R6, #+8]
        LDR      R2,[R2, #+16]
        MOVS     R1,#+0
        MOV      R0,R9
          CFI FunCall
        BLX      R2
        STRH     R0,[R5, #+28]
        STRH     R0,[R5, #+16]
        MOV      R1,R9
        MOV      R0,R6
          CFI FunCall rpl_process_parent_event
        BL       rpl_process_parent_event
        LDRB     R0,[R4, #+25]
        STRB     R0,[R9, #+16]
??rpl_add_dag_0:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock37
// 1120 #endif /* RPL_MAX_DAG_PER_INSTANCE > 1 */
// 1121 
// 1122 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function global_repair
        THUMB
// 1123 static void
// 1124 global_repair(uip_ipaddr_t *from, rpl_dag_t *dag, rpl_dio_t *dio)
// 1125 {
global_repair:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R5,R0
        MOV      R4,R1
        MOV      R6,R2
// 1126   rpl_parent_t *p;
// 1127 
// 1128   remove_parents(dag, 0);
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall remove_parents
        BL       remove_parents
// 1129   dag->version = dio->version;
        LDRB     R0,[R6, #+23]
        STRB     R0,[R4, #+18]
// 1130 
// 1131   /* copy parts of the configuration so that it propagates in the network */
// 1132   dag->instance->dio_intdoubl = dio->dag_intdoubl;
        LDR      R1,[R4, #+32]
        LDRB     R0,[R6, #+26]
        STRB     R0,[R1, #+144]
// 1133   dag->instance->dio_intmin = dio->dag_intmin;
        LDR      R1,[R4, #+32]
        LDRB     R0,[R6, #+27]
        STRB     R0,[R1, #+145]
// 1134   dag->instance->dio_redundancy = dio->dag_redund;
        LDR      R1,[R4, #+32]
        LDRB     R0,[R6, #+28]
        STRB     R0,[R1, #+146]
// 1135   dag->instance->default_lifetime = dio->default_lifetime;
        LDR      R1,[R4, #+32]
        LDRB     R0,[R6, #+29]
        STRB     R0,[R1, #+147]
// 1136   dag->instance->lifetime_unit = dio->lifetime_unit;
        LDR      R1,[R4, #+32]
        LDRH     R0,[R6, #+30]
        STRH     R0,[R1, #+156]
// 1137 
// 1138   dag->instance->of->reset(dag);
        MOV      R0,R4
        LDR      R1,[R1, #+8]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
// 1139   dag->min_rank = INFINITE_RANK;
        MOVW     R7,#+65535
        STRH     R7,[R4, #+16]
// 1140   RPL_LOLLIPOP_INCREMENT(dag->instance->dtsn_out);
        LDR      R0,[R4, #+32]
        LDRB     R1,[R0, #+142]
        ADDS     R2,R1,#+1
        CMP      R1,#+128
        ITEE     GE 
        STRBGE   R2,[R0, #+142]
        ANDLT    R1,R2,#0x7F
        STRBLT   R1,[R0, #+142]
// 1141 
// 1142   p = rpl_add_parent(dag, dio, from);
        MOV      R2,R5
        MOV      R1,R6
        MOV      R0,R4
          CFI FunCall rpl_add_parent
        BL       rpl_add_parent
        MOVS     R5,R0
// 1143   if(p == NULL) {
        BNE.N    ??global_repair_0
// 1144     PRINTF("RPL: Failed to add a parent during the global repair\n");
// 1145     dag->rank = INFINITE_RANK;
        STRH     R7,[R4, #+28]
        POP      {R0,R4-R7,PC}
// 1146   } else {
// 1147     dag->rank = dag->instance->of->calculate_rank(p, 0);
??global_repair_0:
        LDR      R2,[R4, #+32]
        LDR      R2,[R2, #+8]
        LDR      R2,[R2, #+16]
        MOVS     R1,#+0
          CFI FunCall
        BLX      R2
        STRH     R0,[R4, #+28]
// 1148     dag->min_rank = dag->rank;
        STRH     R0,[R4, #+16]
// 1149     PRINTF("RPL: rpl_process_parent_event global repair\n");
// 1150     rpl_process_parent_event(dag->instance, p);
        MOV      R1,R5
        LDR      R0,[R4, #+32]
        POP      {R2,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall rpl_process_parent_event
        B.N      rpl_process_parent_event
          CFI EndBlock cfiBlock38
// 1151   }
// 1152 
// 1153   PRINTF("RPL: Participating in a global repair (version=%u, rank=%hu)\n",
// 1154          dag->version, dag->rank);
// 1155 
// 1156   RPL_STAT(rpl_stats.global_repairs++);
// 1157 }
// 1158 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function rpl_local_repair
        THUMB
// 1159 void
// 1160 rpl_local_repair(rpl_instance_t *instance)
// 1161 {
rpl_local_repair:
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
        MOVS     R10,R0
// 1162   int i;
// 1163 
// 1164   if(instance == NULL) {
        BEQ.N    ??rpl_local_repair_0
// 1165     PRINTF("RPL: local repair requested for instance NULL\n");
// 1166     return;
// 1167   }
// 1168   PRINTF("RPL: Starting a local instance repair\n");
// 1169   for(i = 0; i < RPL_MAX_DAG_PER_INSTANCE; i++) {
        MOVS     R5,#+0
        ADD      R6,R10,#+16
        LDR.N    R7,??DataTable28
        MOVW     R8,#+65535
// 1170     if(instance->dag_table[i].used) {
??rpl_local_repair_1:
        LDRB     R0,[R6, #+21]
        CBZ.N    R0,??rpl_local_repair_2
// 1171       instance->dag_table[i].rank = INFINITE_RANK;
        STRH     R8,[R6, #+28]
// 1172       nullify_parents(&instance->dag_table[i], 0);
        LDR      R0,[R7, #+0]
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        B.N      ??rpl_local_repair_3
??rpl_local_repair_4:
        LDR      R4,[R9, #+4]
        CMP      R6,R4
        BNE.N    ??rpl_local_repair_5
        LDR      R0,[R4, #+24]
        CMP      R9,R0
        IT       NE 
        CMPNE    R0,#+0
        BNE.N    ??rpl_local_repair_5
        STRH     R8,[R4, #+28]
        LDRB     R0,[R4, #+22]
        CBZ.N    R0,??rpl_local_repair_5
        LDR      R0,[R4, #+32]
        LDR      R0,[R0, #+136]
        CBZ.N    R0,??rpl_local_repair_6
          CFI FunCall uip_ds6_defrt_rm
        BL       uip_ds6_defrt_rm
        LDR      R1,[R4, #+32]
        MOVS     R0,#+0
        STR      R0,[R1, #+136]
??rpl_local_repair_6:
        LDR      R0,[R4, #+24]
        CMP      R9,R0
        BNE.N    ??rpl_local_repair_5
        MOVS     R1,#+0
        MOV      R0,R9
          CFI FunCall dao_output
        BL       dao_output
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall rpl_set_preferred_parent
        BL       rpl_set_preferred_parent
??rpl_local_repair_5:
        LDR      R0,[R7, #+0]
        MOV      R1,R9
          CFI FunCall nbr_table_next
        BL       nbr_table_next
??rpl_local_repair_3:
        MOVS     R9,R0
        BNE.N    ??rpl_local_repair_4
// 1173     }
// 1174   }
??rpl_local_repair_2:
        ADDS     R5,R5,#+1
        ADDS     R6,R6,#+60
        CMP      R5,#+2
        BLT.N    ??rpl_local_repair_1
// 1175 
// 1176   rpl_reset_dio_timer(instance);
        MOV      R0,R10
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
          CFI FunCall rpl_reset_dio_timer
        B.W      rpl_reset_dio_timer
          CFI R4 Frame(CFA, -32)
          CFI R5 Frame(CFA, -28)
          CFI R6 Frame(CFA, -24)
          CFI R7 Frame(CFA, -20)
          CFI R8 Frame(CFA, -16)
          CFI R9 Frame(CFA, -12)
          CFI R10 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+32
??rpl_local_repair_0:
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock39
// 1177 
// 1178   RPL_STAT(rpl_stats.local_repairs++);
// 1179 }
// 1180 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function rpl_recalculate_ranks
        THUMB
// 1181 void
// 1182 rpl_recalculate_ranks(void)
// 1183 {
rpl_recalculate_ranks:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 1184   rpl_parent_t *p;
// 1185 
// 1186   /*
// 1187    * We recalculate ranks when we receive feedback from the system rather
// 1188    * than RPL protocol messages. This periodical recalculation is called
// 1189    * from a timer in order to keep the stack depth reasonably low.
// 1190    */
// 1191   p = nbr_table_head(rpl_parents);
        LDR.N    R4,??DataTable28
        LDR      R0,[R4, #+0]
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        B.N      ??rpl_recalculate_ranks_0
// 1192   while(p != NULL) {
// 1193     if(p->dag != NULL && p->dag->instance && (p->flags & RPL_PARENT_FLAG_UPDATED)) {
??rpl_recalculate_ranks_1:
        LDR      R0,[R5, #+4]
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R1,[R0, #+32]
        CMPNE    R1,#+0
        BEQ.N    ??rpl_recalculate_ranks_2
        LDRB     R1,[R5, #+17]
        LSLS     R2,R1,#+31
        BPL.N    ??rpl_recalculate_ranks_2
// 1194       p->flags &= ~RPL_PARENT_FLAG_UPDATED;
        AND      R1,R1,#0xFE
        STRB     R1,[R5, #+17]
// 1195       PRINTF("RPL: rpl_process_parent_event recalculate_ranks\n");
// 1196       if(!rpl_process_parent_event(p->dag->instance, p)) {
        LDR      R6,[R0, #+32]
        LDRH     R1,[R5, #+8]
          CFI FunCall acceptable_rank
        BL       acceptable_rank
        CBNZ.N   R0,??rpl_recalculate_ranks_3
        MOV      R0,R5
          CFI FunCall rpl_nullify_parent
        BL       rpl_nullify_parent
        LDR      R0,[R6, #+12]
        LDR      R0,[R0, #+24]
        CMP      R5,R0
        BNE.N    ??rpl_recalculate_ranks_2
??rpl_recalculate_ranks_3:
        MOV      R1,R5
        MOV      R0,R6
          CFI FunCall rpl_select_dag
        BL       rpl_select_dag
        CBNZ.N   R0,??rpl_recalculate_ranks_2
        MOV      R0,R6
          CFI FunCall rpl_local_repair
        BL       rpl_local_repair
// 1197         PRINTF("RPL: A parent was dropped\n");
// 1198       }
// 1199     }
// 1200     p = nbr_table_next(rpl_parents, p);
??rpl_recalculate_ranks_2:
        LDR      R0,[R4, #+0]
        MOV      R1,R5
          CFI FunCall nbr_table_next
        BL       nbr_table_next
??rpl_recalculate_ranks_0:
        MOVS     R5,R0
// 1201   }
        BNE.N    ??rpl_recalculate_ranks_1
// 1202 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28:
        DC32     rpl_parents

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_1:
        DC32     ds6_neighbors

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28_2:
        DC32     nbr_callback
// 1203 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock41 Using cfiCommon0
          CFI Function rpl_process_parent_event
        THUMB
// 1204 int
// 1205 rpl_process_parent_event(rpl_instance_t *instance, rpl_parent_t *p)
// 1206 {
rpl_process_parent_event:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R5,R1
        MOV      R4,R0
// 1207   int return_value;
// 1208 
// 1209 #if DEBUG
// 1210   rpl_rank_t old_rank;
// 1211   old_rank = instance->current_dag->rank;
// 1212 #endif /* DEBUG */
// 1213 
// 1214   return_value = 1;
// 1215 
// 1216   if(!acceptable_rank(p->dag, p->rank)) {
        LDRH     R1,[R5, #+8]
        LDR      R0,[R5, #+4]
        MOVS     R6,#+1
          CFI FunCall acceptable_rank
        BL       acceptable_rank
        CBNZ.N   R0,??rpl_process_parent_event_0
// 1217     /* The candidate parent is no longer valid: the rank increase resulting
// 1218        from the choice of it as a parent would be too high. */
// 1219     PRINTF("RPL: Unacceptable rank %u\n", (unsigned)p->rank);
// 1220     rpl_nullify_parent(p);
        MOV      R0,R5
          CFI FunCall rpl_nullify_parent
        BL       rpl_nullify_parent
// 1221     if(p != instance->current_dag->preferred_parent) {
        LDR      R0,[R4, #+12]
        LDR      R0,[R0, #+24]
        CMP      R5,R0
        BNE.N    ??rpl_process_parent_event_1
// 1222       return 0;
// 1223     } else {
// 1224       return_value = 0;
        MOVS     R6,#+0
// 1225     }
// 1226   }
// 1227 
// 1228   if(rpl_select_dag(instance, p) == NULL) {
??rpl_process_parent_event_0:
        MOV      R1,R5
        MOV      R0,R4
          CFI FunCall rpl_select_dag
        BL       rpl_select_dag
        CBNZ.N   R0,??rpl_process_parent_event_2
// 1229     /* No suitable parent; trigger a local repair. */
// 1230     PRINTF("RPL: No parents found in any DAG\n");
// 1231     rpl_local_repair(instance);
        MOV      R0,R4
          CFI FunCall rpl_local_repair
        BL       rpl_local_repair
// 1232     return 0;
??rpl_process_parent_event_1:
        MOVS     R0,#+0
        POP      {R4-R6,PC}
// 1233   }
// 1234 
// 1235 #if DEBUG
// 1236   if(DAG_RANK(old_rank, instance) != DAG_RANK(instance->current_dag->rank, instance)) {
// 1237     PRINTF("RPL: Moving in the instance from rank %hu to %hu\n",
// 1238 	   DAG_RANK(old_rank, instance), DAG_RANK(instance->current_dag->rank, instance));
// 1239     if(instance->current_dag->rank != INFINITE_RANK) {
// 1240       PRINTF("RPL: The preferred parent is ");
// 1241       PRINT6ADDR(rpl_get_parent_ipaddr(instance->current_dag->preferred_parent));
// 1242       PRINTF(" (rank %u)\n",
// 1243            (unsigned)DAG_RANK(instance->current_dag->preferred_parent->rank, instance));
// 1244     } else {
// 1245       PRINTF("RPL: We don't have any parent");
// 1246     }
// 1247   }
// 1248 #endif /* DEBUG */
// 1249 
// 1250   return return_value;
??rpl_process_parent_event_2:
        MOV      R0,R6
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock41
// 1251 }
// 1252 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock42 Using cfiCommon0
          CFI Function rpl_process_dio
        THUMB
// 1253 void
// 1254 rpl_process_dio(uip_ipaddr_t *from, rpl_dio_t *dio)
// 1255 {
rpl_process_dio:
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
        MOV      R11,R1
// 1256   rpl_instance_t *instance;
// 1257   rpl_dag_t *dag, *previous_dag;
// 1258   rpl_parent_t *p;
// 1259 
// 1260 #if RPL_CONF_MULTICAST
// 1261   /* If the root is advertising MOP 2 but we support MOP 3 we can still join
// 1262    * In that scenario, we suppress DAOs for multicast targets */
// 1263   if(dio->mop < RPL_MOP_STORING_NO_MULTICAST) {
// 1264 #else
// 1265   if(dio->mop != RPL_MOP_DEFAULT) {
        ADD      R6,R11,#+18
        MOV      R9,R0
        LDRB     R0,[R6, #+3]
        CMP      R0,#+2
        BNE.W    ??rpl_process_dio_0
// 1266 #endif
// 1267     PRINTF("RPL: Ignoring a DIO with an unsupported MOP: %d\n", dio->mop);
// 1268     return;
// 1269   }
// 1270 
// 1271   dag = get_dag(dio->instance_id, &dio->dag_id);
        LDRB     R0,[R6, #+6]
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
        MOVS     R4,R0
        BEQ.N    ??rpl_process_dio_1
        ADD      R7,R4,#+16
        LDRB     R0,[R7, #+21]
        CBZ.N    R0,??rpl_process_dio_2
        MOVS     R2,#+16
        MOV      R1,R11
        MOV      R0,R7
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??rpl_process_dio_3
??rpl_process_dio_2:
        ADD      R7,R4,#+76
        LDRB     R0,[R7, #+21]
        CBZ.N    R0,??rpl_process_dio_1
        MOVS     R2,#+16
        MOV      R1,R11
        MOV      R0,R7
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??rpl_process_dio_3
??rpl_process_dio_1:
        MOVS     R7,#+0
// 1272   instance = rpl_get_instance(dio->instance_id);
??rpl_process_dio_3:
        LDRB     R0,[R6, #+6]
          CFI FunCall rpl_get_instance
        BL       rpl_get_instance
        MOV      R8,R0
// 1273 
// 1274   if(dag != NULL && instance != NULL) {
        CBZ.N    R7,??rpl_process_dio_4
        CMP      R8,#+0
        BEQ.N    ??rpl_process_dio_5
// 1275     if(lollipop_greater_than(dio->version, dag->version)) {
        LDRB     R1,[R7, #+18]
        LDRB     R0,[R6, #+5]
          CFI FunCall lollipop_greater_than
        BL       lollipop_greater_than
        CBZ.N    R0,??rpl_process_dio_6
// 1276       if(dag->rank == ROOT_RANK(instance)) {
        LDRH     R0,[R7, #+28]
        ADD      R1,R8,#+142
        LDRH     R1,[R1, #+12]
        CMP      R0,R1
        BNE.N    ??rpl_process_dio_7
// 1277 	PRINTF("RPL: Root received inconsistent DIO version number\n");
// 1278 	dag->version = dio->version;
        LDRB     R0,[R6, #+5]
// 1279 	RPL_LOLLIPOP_INCREMENT(dag->version);
        ADDS     R1,R0,#+1
        CMP      R0,#+128
        IT       LT 
        ANDLT    R1,R1,#0x7F
        STRB     R1,[R7, #+18]
// 1280 	rpl_reset_dio_timer(instance);
        B.N      ??rpl_process_dio_8
// 1281       } else {
// 1282         PRINTF("RPL: Global repair\n");
// 1283         if(dio->prefix_info.length != 0) {
??rpl_process_dio_7:
        LDRB     R2,[R11, #+80]
        CBZ.N    R2,??rpl_process_dio_9
// 1284           if(dio->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
        ADD      R0,R11,#+80
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+25
        BPL.N    ??rpl_process_dio_9
// 1285             PRINTF("RPL : Prefix announced in DIO\n");
// 1286             rpl_set_prefix(dag, &dio->prefix_info.prefix, dio->prefix_info.length);
        ADD      R1,R11,#+60
        MOV      R0,R7
          CFI FunCall rpl_set_prefix
        BL       rpl_set_prefix
// 1287           }
// 1288         }
// 1289 	global_repair(from, dag, dio);
??rpl_process_dio_9:
        MOV      R2,R11
        MOV      R1,R7
        MOV      R0,R9
        POP      {R3-R11,LR}
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
          CFI FunCall global_repair
        B.N      global_repair
          CFI R4 Frame(CFA, -36)
          CFI R5 Frame(CFA, -32)
          CFI R6 Frame(CFA, -28)
          CFI R7 Frame(CFA, -24)
          CFI R8 Frame(CFA, -20)
          CFI R9 Frame(CFA, -16)
          CFI R10 Frame(CFA, -12)
          CFI R11 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
// 1290       }
// 1291       return;
// 1292     }
// 1293 
// 1294     if(lollipop_greater_than(dag->version, dio->version)) {
??rpl_process_dio_6:
        LDRB     R1,[R6, #+5]
        LDRB     R0,[R7, #+18]
          CFI FunCall lollipop_greater_than
        BL       lollipop_greater_than
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R7, #+22]
        CMPNE    R0,#+0
// 1295       /* The DIO sender is on an older version of the DAG. */
// 1296       PRINTF("RPL: old version received => inconsistency detected\n");
// 1297       if(dag->joined) {
        BEQ.N    ??rpl_process_dio_10
// 1298         rpl_reset_dio_timer(instance);
??rpl_process_dio_8:
        MOV      R0,R8
        POP      {R1,R4-R11,LR}
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
          CFI FunCall rpl_reset_dio_timer
        B.W      rpl_reset_dio_timer
          CFI R4 Frame(CFA, -36)
          CFI R5 Frame(CFA, -32)
          CFI R6 Frame(CFA, -28)
          CFI R7 Frame(CFA, -24)
          CFI R8 Frame(CFA, -20)
          CFI R9 Frame(CFA, -16)
          CFI R10 Frame(CFA, -12)
          CFI R11 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
// 1299         return;
// 1300       }
// 1301     }
// 1302   }
// 1303 
// 1304   if(instance == NULL) {
??rpl_process_dio_4:
        CMP      R8,#+0
        BNE.N    ??rpl_process_dio_10
// 1305     PRINTF("RPL: New instance detected: Joining...\n");
// 1306     rpl_join_instance(from, dio);
??rpl_process_dio_5:
        MOV      R1,R11
        MOV      R0,R9
        POP      {R2,R4-R11,LR}
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
          CFI FunCall rpl_join_instance
        B.N      rpl_join_instance
          CFI R4 Frame(CFA, -36)
          CFI R5 Frame(CFA, -32)
          CFI R6 Frame(CFA, -28)
          CFI R7 Frame(CFA, -24)
          CFI R8 Frame(CFA, -20)
          CFI R9 Frame(CFA, -16)
          CFI R10 Frame(CFA, -12)
          CFI R11 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
// 1307     return;
// 1308   }
// 1309 
// 1310   if(instance->current_dag->rank == ROOT_RANK(instance) && instance->current_dag != dag) {
??rpl_process_dio_10:
        LDR      R1,[R8, #+12]
        LDRH     R2,[R1, #+28]
        ADD      R4,R8,#+142
        LDRH     R0,[R4, #+12]
        CMP      R2,R0
        BNE.N    ??rpl_process_dio_11
        CMP      R1,R7
        BNE.W    ??rpl_process_dio_0
// 1311     PRINTF("RPL: Root ignored DIO for different DAG\n");
// 1312     return;
// 1313   }
// 1314 
// 1315   if(dag == NULL) {
??rpl_process_dio_11:
        CBNZ.N   R7,??rpl_process_dio_12
// 1316 #if RPL_MAX_DAG_PER_INSTANCE > 1
// 1317     PRINTF("RPL: Adding new DAG to known instance.\n");
// 1318     rpl_add_dag(from, dio);
        MOV      R1,R11
        MOV      R0,R9
        POP      {R2,R4-R11,LR}
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
          CFI FunCall rpl_add_dag
        B.N      rpl_add_dag
          CFI R4 Frame(CFA, -36)
          CFI R5 Frame(CFA, -32)
          CFI R6 Frame(CFA, -28)
          CFI R7 Frame(CFA, -24)
          CFI R8 Frame(CFA, -20)
          CFI R9 Frame(CFA, -16)
          CFI R10 Frame(CFA, -12)
          CFI R11 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
// 1319     return;
// 1320 #else /* RPL_MAX_DAG_PER_INSTANCE > 1 */
// 1321     PRINTF("RPL: Only one instance supported.\n");
// 1322     return;
// 1323 #endif /* RPL_MAX_DAG_PER_INSTANCE > 1 */
// 1324   }
// 1325 
// 1326 
// 1327   if(dio->rank < ROOT_RANK(instance)) {
??rpl_process_dio_12:
        LDRH     R1,[R11, #+18]
        CMP      R1,R0
        BCC.W    ??rpl_process_dio_0
// 1328     PRINTF("RPL: Ignoring DIO with too low rank: %u\n",
// 1329            (unsigned)dio->rank);
// 1330     return;
// 1331   } else if(dio->rank == INFINITE_RANK && dag->joined) {
        MOVW     R5,#+65535
        CMP      R1,R5
        BNE.N    ??rpl_process_dio_13
        LDRB     R0,[R7, #+22]
        CBZ.N    R0,??rpl_process_dio_13
// 1332     rpl_reset_dio_timer(instance);
        MOV      R0,R8
          CFI FunCall rpl_reset_dio_timer
        BL       rpl_reset_dio_timer
// 1333   }
// 1334 
// 1335   /* Prefix Information Option treated to add new prefix */
// 1336   if(dio->prefix_info.length != 0) {
??rpl_process_dio_13:
        LDRB     R2,[R11, #+80]
        CBZ.N    R2,??rpl_process_dio_14
// 1337     if(dio->prefix_info.flags & UIP_ND6_RA_FLAG_AUTONOMOUS) {
        ADD      R0,R11,#+80
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+25
        BPL.N    ??rpl_process_dio_14
// 1338       PRINTF("RPL : Prefix announced in DIO\n");
// 1339       rpl_set_prefix(dag, &dio->prefix_info.prefix, dio->prefix_info.length);
        ADD      R1,R11,#+60
        MOV      R0,R7
          CFI FunCall rpl_set_prefix
        BL       rpl_set_prefix
// 1340     }
// 1341   }
// 1342 
// 1343   if(dag->rank == ROOT_RANK(instance)) {
??rpl_process_dio_14:
        LDRH     R0,[R7, #+28]
        LDRH     R1,[R4, #+12]
        CMP      R0,R1
        BNE.N    ??rpl_process_dio_15
// 1344     if(dio->rank != INFINITE_RANK) {
        LDRH     R0,[R11, #+18]
        CMP      R0,R5
        BEQ.W    ??rpl_process_dio_0
// 1345       instance->dio_counter++;
        LDRB     R0,[R4, #+8]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+8]
// 1346     }
// 1347     return;
// 1348   }
// 1349 
// 1350   /*
// 1351    * At this point, we know that this DIO pertains to a DAG that
// 1352    * we are already part of. We consider the sender of the DIO to be
// 1353    * a candidate parent, and let rpl_process_parent_event decide
// 1354    * whether to keep it in the set.
// 1355    */
// 1356 
// 1357   p = rpl_find_parent(dag, from);
// 1358   if(p == NULL) {
// 1359     previous_dag = find_parent_dag(instance, from);
// 1360     if(previous_dag == NULL) {
// 1361       /* Add the DIO sender as a candidate parent. */
// 1362       p = rpl_add_parent(dag, dio, from);
// 1363       if(p == NULL) {
// 1364         PRINTF("RPL: Failed to add a new parent (");
// 1365         PRINT6ADDR(from);
// 1366         PRINTF(")\n");
// 1367         return;
// 1368       }
// 1369       PRINTF("RPL: New candidate parent with rank %u: ", (unsigned)p->rank);
// 1370       PRINT6ADDR(from);
// 1371       PRINTF("\n");
// 1372     } else {
// 1373       p = rpl_find_parent(previous_dag, from);
// 1374       if(p != NULL) {
// 1375         rpl_move_parent(previous_dag, dag, p);
// 1376       }
// 1377     }
// 1378   } else {
// 1379     if(p->rank == dio->rank) {
// 1380       PRINTF("RPL: Received consistent DIO\n");
// 1381       if(dag->joined) {
// 1382         instance->dio_counter++;
// 1383       }
// 1384     } else {
// 1385       p->rank=dio->rank;
// 1386     }
// 1387   }
// 1388 
// 1389   /* Parent info has been updated, trigger rank recalculation */
// 1390   p->flags |= RPL_PARENT_FLAG_UPDATED;
// 1391 
// 1392   PRINTF("RPL: preferred DAG ");
// 1393   PRINT6ADDR(&instance->current_dag->dag_id);
// 1394   PRINTF(", rank %u, min_rank %u, ",
// 1395 	 instance->current_dag->rank, instance->current_dag->min_rank);
// 1396   PRINTF("parent rank %u, parent etx %u, link metric %u, instance etx %u\n",
// 1397 	 p->rank, -1/*p->mc.obj.etx*/, rpl_get_nbr(p)->link_metric, instance->mc.obj.etx);
// 1398 
// 1399   /* We have allocated a candidate parent; process the DIO further. */
// 1400 
// 1401 #if RPL_DAG_MC != RPL_DAG_MC_NONE
// 1402   memcpy(&p->mc, &dio->mc, sizeof(p->mc));
// 1403 #endif /* RPL_DAG_MC != RPL_DAG_MC_NONE */
// 1404   if(rpl_process_parent_event(instance, p) == 0) {
// 1405     PRINTF("RPL: The candidate parent is rejected\n");
// 1406     return;
// 1407   }
// 1408 
// 1409   /* We don't use route control, so we can have only one official parent. */
// 1410   if(dag->joined && p == dag->preferred_parent) {
// 1411     if(should_send_dao(instance, dio, p)) {
// 1412       RPL_LOLLIPOP_INCREMENT(instance->dtsn_out);
// 1413       rpl_schedule_dao(instance);
// 1414     }
// 1415     /* We received a new DIO from our preferred parent.
// 1416      * Call uip_ds6_defrt_add to set a fresh value for the lifetime counter */
// 1417     uip_ds6_defrt_add(from, RPL_DEFAULT_ROUTE_INFINITE_LIFETIME ? 0 : RPL_LIFETIME(instance, instance->default_lifetime));
// 1418   }
// 1419   p->dtsn = dio->dtsn;
// 1420 }
        POP      {R0,R4-R11,PC}
??rpl_process_dio_15:
        MOV      R0,R9
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        LDR.W    R10,??DataTable30_3
        MOV      R1,R0
        LDR      R0,[R10, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
        MOVS     R5,R0
        BEQ.N    ??rpl_process_dio_16
        LDR      R0,[R5, #+4]
        CMP      R0,R7
        BEQ.N    ??rpl_process_dio_17
??rpl_process_dio_16:
        MOVS     R5,#+0
??rpl_process_dio_17:
        CBNZ.N   R5,??rpl_process_dio_18
        MOV      R0,R9
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        MOV      R1,R0
        LDR      R0,[R10, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
        CMP      R0,#+0
        ITTT     NE 
        LDRNE    R0,[R0, #+4]
        STRNE    R0,[SP, #+0]
        CMPNE    R0,#+0
        BNE.N    ??rpl_process_dio_19
        MOV      R2,R9
        MOV      R1,R11
        MOV      R0,R7
          CFI FunCall rpl_add_parent
        BL       rpl_add_parent
        MOVS     R5,R0
        BNE.N    ??rpl_process_dio_20
        POP      {R0,R4-R11,PC}
??rpl_process_dio_19:
        MOV      R0,R9
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
          CFI FunCall uip_ds6_nbr_get_ll
        BL       uip_ds6_nbr_get_ll
        MOV      R1,R0
        LDR      R0,[R10, #+0]
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
        MOVS     R5,R0
        BEQ.N    ??rpl_process_dio_21
        LDR      R0,[R5, #+4]
        LDR      R1,[SP, #+0]
        CMP      R0,R1
        BEQ.N    ??rpl_process_dio_22
??rpl_process_dio_21:
        MOVS     R5,#+0
??rpl_process_dio_22:
        CBZ.N    R5,??rpl_process_dio_20
        LDR      R0,[SP, #+0]
        MOV      R2,R5
        MOV      R1,R7
          CFI FunCall rpl_move_parent
        BL       rpl_move_parent
        B.N      ??rpl_process_dio_20
??rpl_process_dio_18:
        LDRH     R0,[R11, #+18]
        LDRH     R1,[R5, #+8]
        CMP      R1,R0
        BNE.N    ??rpl_process_dio_23
        LDRB     R0,[R7, #+22]
        CBZ.N    R0,??rpl_process_dio_20
        LDRB     R0,[R4, #+8]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+8]
        B.N      ??rpl_process_dio_20
??rpl_process_dio_23:
        STRH     R0,[R5, #+8]
??rpl_process_dio_20:
        LDRB     R0,[R5, #+17]
        ORR      R0,R0,#0x1
        STRB     R0,[R5, #+17]
        MOV      R1,R5
        MOV      R0,R8
          CFI FunCall rpl_process_parent_event
        BL       rpl_process_parent_event
        CBZ.N    R0,??rpl_process_dio_0
        LDRB     R0,[R7, #+22]
        CBZ.N    R0,??rpl_process_dio_24
        LDR      R0,[R7, #+24]
        CMP      R5,R0
        BNE.N    ??rpl_process_dio_24
        LDRB     R0,[R4, #+1]
        CBZ.N    R0,??rpl_process_dio_25
        LDR      R0,[R8, #+12]
        LDR      R0,[R0, #+24]
        CMP      R5,R0
        BNE.N    ??rpl_process_dio_25
        LDRB     R1,[R5, #+16]
        LDRB     R0,[R6, #+7]
          CFI FunCall lollipop_greater_than
        BL       lollipop_greater_than
        CBZ.N    R0,??rpl_process_dio_25
        LDRB     R0,[R8, #+142]
        ADDS     R1,R0,#+1
        CMP      R0,#+128
        IT       LT 
        ANDLT    R1,R1,#0x7F
        STRB     R1,[R8, #+142]
        MOV      R0,R8
          CFI FunCall rpl_schedule_dao
        BL       rpl_schedule_dao
??rpl_process_dio_25:
        LDRH     R0,[R4, #+14]
        LDRB     R1,[R4, #+5]
        MULS     R1,R1,R0
        MOV      R0,R9
          CFI FunCall uip_ds6_defrt_add
        BL       uip_ds6_defrt_add
??rpl_process_dio_24:
        LDRB     R0,[R6, #+7]
        STRB     R0,[R5, #+16]
??rpl_process_dio_0:
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock42
// 1421 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock43 Using cfiCommon0
          CFI Function rpl_lock_parent
        THUMB
// 1422 void
// 1423 rpl_lock_parent(rpl_parent_t *p)
// 1424 {
// 1425   nbr_table_lock(rpl_parents, p);
rpl_lock_parent:
        MOV      R1,R0
        LDR.N    R0,??DataTable30_3
        LDR      R0,[R0, #+0]
          CFI FunCall nbr_table_lock
        B.W      nbr_table_lock
          CFI EndBlock cfiBlock43
// 1426 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     rpl_mrhof

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_1:
        DC32     uip_lladdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_2:
        DC32     instance_table

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30_3:
        DC32     rpl_parents

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1427 /*---------------------------------------------------------------------------*/
// 1428 /** @} */
// 
//   280 bytes in section .bss
//    24 bytes in section .data
// 3 908 bytes in section .text
// 
// 3 908 bytes of CODE memory
//   304 bytes of DATA memory
//
//Errors: none
//Warnings: 3
