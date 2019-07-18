///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:18
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rpl.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN clock_time
        EXTERN dao_output_target
        EXTERN default_instance
        EXTERN instance_table
        EXTERN memcmp
        EXTERN rpl_cancel_dao
        EXTERN rpl_dag_init
        EXTERN rpl_find_parent_any_dag
        EXTERN rpl_get_any_dag
        EXTERN rpl_icmp6_register_handlers
        EXTERN rpl_mrhof
        EXTERN rpl_reset_periodic_timer
        EXTERN rpl_schedule_dao_immediately
        EXTERN uip_ds6_maddr_add
        EXTERN uip_ds6_route_add
        EXTERN uip_ds6_route_head
        EXTERN uip_ds6_route_next
        EXTERN uip_ds6_route_nexthop
        EXTERN uip_ds6_route_rm
        EXTERN uip_ds6_set_addr_iid

        PUBLIC rpl_add_route
        PUBLIC rpl_get_mode
        PUBLIC rpl_init
        PUBLIC rpl_ipv6_neighbor_callback
        PUBLIC rpl_link_neighbor_callback
        PUBLIC rpl_purge_routes
        PUBLIC rpl_remove_routes
        PUBLIC rpl_remove_routes_by_nexthop
        PUBLIC rpl_rm_error_routes
        PUBLIC rpl_set_mode
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl.c
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
//   34  *         ContikiRPL, an implementation of RPL: IPv6 Routing Protocol
//   35  *         for Low-Power and Lossy Networks (IETF RFC 6550)
//   36  *
//   37  * \author Joakim Eriksson <joakime@sics.se>, Nicolas Tsiftes <nvt@sics.se>
//   38  */
//   39 
//   40 /**
//   41  * \addtogroup uip6
//   42  * @{
//   43  */
//   44 
//   45 #include "net/ip/uip.h"
//   46 #include "net/ip/tcpip.h"
//   47 #include "net/ipv6/uip-ds6.h"
//   48 #include "net/ipv6/uip-icmp6.h"
//   49 #include "net/rpl/rpl-private.h"
//   50 #include "net/ipv6/multicast/uip-mcast6.h"
//   51 
//   52 #define DEBUG DEBUG_NONE
//   53 
//   54 #include "net/ip/uip-debug.h"
//   55 
//   56 #include <limits.h>
//   57 #include <string.h>
//   58 
//   59 #if RPL_CONF_STATS
//   60 rpl_stats_t rpl_stats;
//   61 #endif
//   62 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   63 static enum rpl_mode mode = RPL_MODE_MESH;
mode:
        DS8 1
//   64 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function rpl_get_mode
          CFI NoCalls
        THUMB
//   65 enum rpl_mode
//   66 rpl_get_mode(void)
//   67 {
//   68   return mode;
rpl_get_mode:
        LDR.N    R0,??DataTable5
        LDRB     R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   69 }
//   70 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function rpl_set_mode
        THUMB
//   71 enum rpl_mode
//   72 rpl_set_mode(enum rpl_mode m)
//   73 {
rpl_set_mode:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   74   enum rpl_mode oldmode = mode;
        LDR.N    R1,??DataTable5
        LDRB     R4,[R1, #+0]
//   75 
//   76   /* We need to do different things depending on what mode we are
//   77      switching to. */
//   78   if(m == RPL_MODE_MESH) {
        CBNZ.N   R0,??rpl_set_mode_0
//   79 
//   80     /* If we switch to mesh mode, we should send out a DAO message to
//   81        inform our parent that we now are reachable. Before we do this,
//   82        we must set the mode variable, since DAOs will not be sent if
//   83        we are in feather mode. */
//   84     PRINTF("RPL: switching to mesh mode\n");
//   85     mode = m;
        STRB     R0,[R1, #+0]
//   86 
//   87     if(default_instance != NULL) {
        LDR.N    R0,??DataTable5_1
        LDR      R0,[R0, #+0]
        CBZ.N    R0,??rpl_set_mode_1
//   88       rpl_schedule_dao_immediately(default_instance);
          CFI FunCall rpl_schedule_dao_immediately
        BL       rpl_schedule_dao_immediately
        B.N      ??rpl_set_mode_1
//   89     }
//   90   } else if(m == RPL_MODE_FEATHER) {
??rpl_set_mode_0:
        CMP      R0,#+1
        STRB     R0,[R1, #+0]
        BNE.N    ??rpl_set_mode_1
//   91 
//   92     PRINTF("RPL: switching to feather mode\n");
//   93     mode = m;
//   94     if(default_instance != NULL) {
        LDR.N    R0,??DataTable5_1
        LDR      R0,[R0, #+0]
        CBZ.N    R0,??rpl_set_mode_1
//   95       rpl_cancel_dao(default_instance);
          CFI FunCall rpl_cancel_dao
        BL       rpl_cancel_dao
//   96     }
//   97 
//   98   } else {
//   99     mode = m;
//  100   }
//  101 
//  102   return oldmode;
??rpl_set_mode_1:
        MOV      R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//  103 }
//  104 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function rpl_purge_routes
        THUMB
//  105 void
//  106 rpl_purge_routes(void)
//  107 {
rpl_purge_routes:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+16
          CFI CFA R13+24
//  108   uip_ds6_route_t *r;
//  109   uip_ipaddr_t prefix;
//  110   rpl_dag_t *dag;
//  111 #if RPL_CONF_MULTICAST
//  112   uip_mcast6_route_t *mcast_route;
//  113 #endif
//  114 
//  115   /* First pass, decrement lifetime */
//  116   r = uip_ds6_route_head();
          CFI FunCall uip_ds6_route_head
        BL       uip_ds6_route_head
        B.N      ??rpl_purge_routes_0
//  117   
//  118   while(r != NULL) {
//  119     if(r->state.lifetime >= 1) {
??rpl_purge_routes_1:
        LDR      R1,[R0, #+24]
        CBZ.N    R1,??rpl_purge_routes_2
//  120       /*
//  121        * If a route is at lifetime == 1, set it to 0, scheduling it for
//  122        * immediate removal below. This achieves the same as the original code,
//  123        * which would delete lifetime <= 1
//  124        */
//  125         r->state.lifetime--;
        SUBS     R1,R1,#+1
        STR      R1,[R0, #+24]
//  126     }
//  127     r = uip_ds6_route_next(r);
??rpl_purge_routes_2:
          CFI FunCall uip_ds6_route_next
        BL       uip_ds6_route_next
//  128   }
??rpl_purge_routes_0:
        CMP      R0,#+0
        BNE.N    ??rpl_purge_routes_1
//  129 
//  130   /* Second pass, remove dead routes */
//  131   r = uip_ds6_route_head();
          CFI FunCall uip_ds6_route_head
        BL       uip_ds6_route_head
        B.N      ??rpl_purge_routes_3
//  132 
//  133   while(r != NULL) {
//  134     if(r->state.lifetime < 1) {
//  135       /* Routes with lifetime == 1 have only just been decremented from 2 to 1,
//  136        * thus we want to keep them. Hence < and not <= */
//  137       uip_ipaddr_copy(&prefix, &r->ipaddr);
//  138       uip_ds6_route_rm(r);
//  139       r = uip_ds6_route_head();
//  140       PRINTF("No more routes to ");
//  141       PRINT6ADDR(&prefix);
//  142       dag = default_instance->current_dag;
//  143       /* Propagate this information with a No-Path DAO to preferred parent if we are not a RPL Root */
//  144       if(dag->rank != ROOT_RANK(default_instance)) {
//  145         PRINTF(" -> generate No-Path DAO\n");
//  146         dao_output_target(dag->preferred_parent, &prefix, RPL_ZERO_LIFETIME);
//  147         /* Don't schedule more than 1 No-Path DAO, let next iteration handle that */
//  148         return;
//  149       }
//  150       PRINTF("\n");
//  151     } else {
//  152       r = uip_ds6_route_next(r);
??rpl_purge_routes_4:
        MOV      R0,R4
          CFI FunCall uip_ds6_route_next
        BL       uip_ds6_route_next
??rpl_purge_routes_3:
        MOV      R4,R0
//  153     }
??rpl_purge_routes_5:
        CBZ.N    R4,??rpl_purge_routes_6
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BNE.N    ??rpl_purge_routes_4
        ADD      R0,SP,#+0
        ADD      R1,R4,#+8
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOV      R0,R4
          CFI FunCall uip_ds6_route_rm
        BL       uip_ds6_route_rm
          CFI FunCall uip_ds6_route_head
        BL       uip_ds6_route_head
        MOV      R4,R0
        LDR.N    R0,??DataTable5_1
        LDR      R0,[R0, #+0]
        LDR      R3,[R0, #+12]
        LDRH     R0,[R0, #+154]
        LDRH     R1,[R3, #+28]
        CMP      R1,R0
        BEQ.N    ??rpl_purge_routes_5
        LDR      R0,[R3, #+24]
        MOVS     R2,#+0
        ADD      R1,SP,#+0
          CFI FunCall dao_output_target
        BL       dao_output_target
//  154   }
//  155 
//  156 #if RPL_CONF_MULTICAST
//  157   mcast_route = uip_mcast6_route_list_head();
//  158 
//  159   while(mcast_route != NULL) {
//  160     if(mcast_route->lifetime <= 1) {
//  161       uip_mcast6_route_rm(mcast_route);
//  162       mcast_route = uip_mcast6_route_list_head();
//  163     } else {
//  164       mcast_route->lifetime--;
//  165       mcast_route = list_item_next(mcast_route);
//  166     }
//  167   }
//  168 #endif
//  169 }
??rpl_purge_routes_6:
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//  170 /*---------------------------------------------------------------------------*/
//  171 //lin add ,because route table error, remove error route

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function rpl_rm_error_routes
        THUMB
//  172 void
//  173 rpl_rm_error_routes(void)
//  174 {
rpl_rm_error_routes:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  175   uip_ds6_route_t *r;
//  176   //uip_ipaddr_t prefix;
//  177   rpl_dag_t *dag;
//  178 
//  179   //
//  180   dag = rpl_get_any_dag();
          CFI FunCall rpl_get_any_dag
        BL       rpl_get_any_dag
        MOVS     R4,R0
//  181   if (NULL != dag)
        BEQ.N    ??rpl_rm_error_routes_0
//  182   {
//  183     r = uip_ds6_route_head();
        B.N      ??rpl_rm_error_routes_1
//  184     while(r != NULL) {
//  185       if(r->ipaddr.u16[0] != dag->dag_id.u16[0]) {    
//  186 		uip_ds6_route_rm(r);
??rpl_rm_error_routes_2:
          CFI FunCall uip_ds6_route_rm
        BL       uip_ds6_route_rm
//  187 		r = uip_ds6_route_head();
??rpl_rm_error_routes_1:
          CFI FunCall uip_ds6_route_head
        BL       uip_ds6_route_head
//  188       }else{
??rpl_rm_error_routes_3:
        CBZ.N    R0,??rpl_rm_error_routes_0
        LDRH     R1,[R0, #+8]
        LDRH     R2,[R4, #+0]
        CMP      R1,R2
        BNE.N    ??rpl_rm_error_routes_2
//  189         r = uip_ds6_route_next(r);
          CFI FunCall uip_ds6_route_next
        BL       uip_ds6_route_next
        B.N      ??rpl_rm_error_routes_3
//  190       }
//  191     } 
//  192   }
//  193 }
??rpl_rm_error_routes_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  194 
//  195 
//  196 
//  197 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function rpl_remove_routes
        THUMB
//  198 void
//  199 rpl_remove_routes(rpl_dag_t *dag)
//  200 {
rpl_remove_routes:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  201   uip_ds6_route_t *r;
//  202 #if RPL_CONF_MULTICAST
//  203   uip_mcast6_route_t *mcast_route;
//  204 #endif
//  205 
//  206   r = uip_ds6_route_head();
        B.N      ??rpl_remove_routes_0
//  207   PRINTF("RPL: Remove routes\n");
//  208   while(r != NULL) {
//  209     if(r->state.dag == dag) {
//  210       uip_ds6_route_rm(r);
??rpl_remove_routes_1:
          CFI FunCall uip_ds6_route_rm
        BL       uip_ds6_route_rm
//  211       r = uip_ds6_route_head();
??rpl_remove_routes_0:
          CFI FunCall uip_ds6_route_head
        BL       uip_ds6_route_head
//  212     } else {
??rpl_remove_routes_2:
        CBZ.N    R0,??rpl_remove_routes_3
        LDR      R1,[R0, #+28]
        CMP      R1,R4
        BEQ.N    ??rpl_remove_routes_1
//  213       r = uip_ds6_route_next(r);
          CFI FunCall uip_ds6_route_next
        BL       uip_ds6_route_next
        B.N      ??rpl_remove_routes_2
//  214     }
//  215   }
//  216 
//  217 #if RPL_CONF_MULTICAST
//  218   mcast_route = uip_mcast6_route_list_head();
//  219 
//  220   while(mcast_route != NULL) {
//  221     if(mcast_route->dag == dag) {
//  222       uip_mcast6_route_rm(mcast_route);
//  223       mcast_route = uip_mcast6_route_list_head();
//  224     } else {
//  225       mcast_route = list_item_next(mcast_route);
//  226     }
//  227   }
//  228 #endif
//  229 }
??rpl_remove_routes_3:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  230 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function rpl_remove_routes_by_nexthop
        THUMB
//  231 void
//  232 rpl_remove_routes_by_nexthop(uip_ipaddr_t *nexthop, rpl_dag_t *dag)
//  233 {
rpl_remove_routes_by_nexthop:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  234   uip_ds6_route_t *r;
//  235 
//  236   r = uip_ds6_route_head();
        B.N      ??rpl_remove_routes_by_nexthop_0
//  237 
//  238   while(r != NULL) {
//  239     if(uip_ipaddr_cmp(uip_ds6_route_nexthop(r), nexthop) &&
//  240        r->state.dag == dag) {
//  241       uip_ds6_route_rm(r);
??rpl_remove_routes_by_nexthop_1:
        MOV      R0,R6
          CFI FunCall uip_ds6_route_rm
        BL       uip_ds6_route_rm
//  242       r = uip_ds6_route_head();
??rpl_remove_routes_by_nexthop_0:
          CFI FunCall uip_ds6_route_head
        BL       uip_ds6_route_head
??rpl_remove_routes_by_nexthop_2:
        MOVS     R6,R0
//  243     } else {
        BEQ.N    ??rpl_remove_routes_by_nexthop_3
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOVS     R2,#+16
        MOV      R1,R4
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        ITT      EQ 
        LDREQ    R0,[R6, #+28]
        CMPEQ    R0,R5
        BEQ.N    ??rpl_remove_routes_by_nexthop_1
//  244       r = uip_ds6_route_next(r);
        MOV      R0,R6
          CFI FunCall uip_ds6_route_next
        BL       uip_ds6_route_next
        B.N      ??rpl_remove_routes_by_nexthop_2
//  245     }
//  246   }
//  247   ANNOTATE("#L %u 0\n", nexthop->u8[sizeof(uip_ipaddr_t) - 1]);
//  248 }
??rpl_remove_routes_by_nexthop_3:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock5
//  249 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function rpl_add_route
        THUMB
//  250 uip_ds6_route_t *
//  251 rpl_add_route(rpl_dag_t *dag, uip_ipaddr_t *prefix, int prefix_len,
//  252               uip_ipaddr_t *next_hop)
//  253 {
rpl_add_route:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R1
        MOV      R1,R2
        MOV      R2,R3
//  254   uip_ds6_route_t *rep;
//  255 
//  256   if((rep = uip_ds6_route_add(prefix, prefix_len, next_hop)) == NULL) {
        UXTB     R1,R1
          CFI FunCall uip_ds6_route_add
        BL       uip_ds6_route_add
        CBZ.N    R0,??rpl_add_route_0
//  257     PRINTF("RPL: No space for more route entries\n");
//  258     return NULL;
//  259   }
//  260 
//  261   rep->state.dag = dag;
        STR      R4,[R0, #+28]
//  262   rep->state.lifetime = RPL_LIFETIME(dag->instance, dag->instance->default_lifetime);
        LDR      R1,[R4, #+32]
        LDRH     R2,[R1, #+156]
        LDRB     R1,[R1, #+147]
        MULS     R1,R1,R2
        STR      R1,[R0, #+24]
//  263   rep->state.learned_from = RPL_ROUTE_FROM_INTERNAL;
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
//  264 
//  265   PRINTF("RPL: Added a route to ");
//  266   PRINT6ADDR(prefix);
//  267   PRINTF("/%d via ", prefix_len);
//  268   PRINT6ADDR(next_hop);
//  269   PRINTF("\n");
//  270 
//  271   return rep;
??rpl_add_route_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  272 }
//  273 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function rpl_link_neighbor_callback
        THUMB
//  274 void
//  275 rpl_link_neighbor_callback(const linkaddr_t *addr, int status, int numtx)
//  276 {
rpl_link_neighbor_callback:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R4,R1
//  277   uip_ipaddr_t ipaddr;
//  278   rpl_parent_t *parent;
//  279   rpl_instance_t *instance;
//  280   rpl_instance_t *end;
//  281 
//  282   uip_ip6addr(&ipaddr, 0xfe80, 0, 0, 0, 0, 0, 0, 0);
        MOVW     R1,#+33022
        STRH     R1,[SP, #+0]
        MOV      R5,R2
        MOVS     R1,#+0
        STRH     R1,[SP, #+2]
        STR      R1,[SP, #+4]
        STR      R1,[SP, #+8]
        STR      R1,[SP, #+12]
//  283   uip_ds6_set_addr_iid(&ipaddr, (uip_lladdr_t *)addr);
        MOV      R1,R0
        ADD      R0,SP,#+0
          CFI FunCall uip_ds6_set_addr_iid
        BL       uip_ds6_set_addr_iid
//  284 
//  285   for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES; instance < end; ++instance) {
        LDR.N    R7,??DataTable5_2
        ADD      R8,R7,#+260
        CMP      R7,R8
        BCS.N    ??rpl_link_neighbor_callback_0
//  286     if(instance->used == 1 ) {
??rpl_link_neighbor_callback_1:
        LDRB     R0,[R7, #+141]
        CMP      R0,#+1
        BNE.N    ??rpl_link_neighbor_callback_2
//  287       parent = rpl_find_parent_any_dag(instance, &ipaddr);
        ADD      R1,SP,#+0
        MOV      R0,R7
          CFI FunCall rpl_find_parent_any_dag
        BL       rpl_find_parent_any_dag
        MOVS     R6,R0
//  288       if(parent != NULL) {
        BEQ.N    ??rpl_link_neighbor_callback_2
//  289         /* Trigger DAG rank recalculation. */
//  290         PRINTF("RPL: rpl_link_neighbor_callback triggering update\n");
//  291         parent->flags |= RPL_PARENT_FLAG_UPDATED;
        LDRB     R0,[R6, #+17]
        ORR      R0,R0,#0x1
        STRB     R0,[R6, #+17]
        LDR      R0,[R7, #+8]
        LDR      R3,[R0, #+4]
        MOVS     R0,R3
        BEQ.N    ??rpl_link_neighbor_callback_2
//  292         if(instance->of->neighbor_link_callback != NULL) {
//  293           instance->of->neighbor_link_callback(parent, status, numtx);
        MOV      R2,R5
        MOV      R1,R4
        MOV      R0,R6
          CFI FunCall
        BLX      R3
//  294           parent->last_tx_time = clock_time();
          CFI FunCall clock_time
        BL       clock_time
        STR      R0,[R6, #+12]
//  295         }
//  296       }
//  297     }
//  298   }
??rpl_link_neighbor_callback_2:
        ADD      R7,R7,#+260
        CMP      R7,R8
        BCC.N    ??rpl_link_neighbor_callback_1
//  299 }
??rpl_link_neighbor_callback_0:
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock7
//  300 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function rpl_ipv6_neighbor_callback
        THUMB
//  301 void
//  302 rpl_ipv6_neighbor_callback(uip_ds6_nbr_t *nbr)
//  303 {
rpl_ipv6_neighbor_callback:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  304   rpl_parent_t *p;
//  305   rpl_instance_t *instance;
//  306   rpl_instance_t *end;
//  307 
//  308   PRINTF("RPL: Neighbor state changed for ");
//  309   PRINT6ADDR(&nbr->ipaddr);
//  310   PRINTF(", nscount=%u, state=%u\n", nbr->nscount, nbr->state);
//  311   for(instance = &instance_table[0], end = instance + RPL_MAX_INSTANCES; instance < end; ++instance) {
        LDR.N    R5,??DataTable5_2
        ADD      R6,R5,#+260
        CMP      R5,R6
        MOV      R4,R0
        BCS.N    ??rpl_ipv6_neighbor_callback_0
        MOVW     R7,#+65535
//  312     if(instance->used == 1 ) {
??rpl_ipv6_neighbor_callback_1:
        LDRB     R0,[R5, #+141]
        CMP      R0,#+1
        BNE.N    ??rpl_ipv6_neighbor_callback_2
//  313       p = rpl_find_parent_any_dag(instance, &nbr->ipaddr);
        MOV      R1,R4
        MOV      R0,R5
          CFI FunCall rpl_find_parent_any_dag
        BL       rpl_find_parent_any_dag
//  314       if(p != NULL) {
        CBZ.N    R0,??rpl_ipv6_neighbor_callback_2
//  315         p->rank = INFINITE_RANK;
        STRH     R7,[R0, #+8]
//  316         /* Trigger DAG rank recalculation. */
//  317         PRINTF("RPL: rpl_ipv6_neighbor_callback infinite rank\n");
//  318         p->flags |= RPL_PARENT_FLAG_UPDATED;
        LDRB     R1,[R0, #+17]
        ORR      R1,R1,#0x1
        STRB     R1,[R0, #+17]
//  319       }
//  320     }
//  321   }
??rpl_ipv6_neighbor_callback_2:
        ADD      R5,R5,#+260
        CMP      R5,R6
        BCC.N    ??rpl_ipv6_neighbor_callback_1
//  322 }
??rpl_ipv6_neighbor_callback_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock8
//  323 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function rpl_init
        THUMB
//  324 void
//  325 rpl_init(void)
//  326 {
rpl_init:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
//  327   uip_ipaddr_t rplmaddr;
//  328   PRINTF("RPL started\n");
//  329   default_instance = NULL;
        LDR.N    R1,??DataTable5_1
        MOVS     R0,#+0
        SUB      SP,SP,#+20
          CFI CFA R13+24
        STR      R0,[R1, #+0]
//  330 
//  331   rpl_dag_init();
          CFI FunCall rpl_dag_init
        BL       rpl_dag_init
//  332   rpl_reset_periodic_timer();
          CFI FunCall rpl_reset_periodic_timer
        BL       rpl_reset_periodic_timer
//  333   rpl_icmp6_register_handlers();
          CFI FunCall rpl_icmp6_register_handlers
        BL       rpl_icmp6_register_handlers
//  334 
//  335   /* add rpl multicast address */
//  336   uip_create_linklocal_rplnodes_mcast(&rplmaddr);
        MOVW     R0,#+767
        STRH     R0,[SP, #+0]
        MOVS     R0,#+0
        STRH     R0,[SP, #+2]
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+8]
        STRH     R0,[SP, #+12]
        MOV      R0,#+6656
        STRH     R0,[SP, #+14]
//  337   uip_ds6_maddr_add(&rplmaddr);
        ADD      R0,SP,#+0
          CFI FunCall uip_ds6_maddr_add
        BL       uip_ds6_maddr_add
//  338 
//  339 #if RPL_CONF_STATS
//  340   memset(&rpl_stats, 0, sizeof(rpl_stats));
//  341 #endif
//  342 
//  343   RPL_OF.reset(NULL);
        LDR.N    R1,??DataTable5_3
        LDR      R1,[R1, #+0]
        MOVS     R0,#+0
          CFI FunCall
        BLX      R1
//  344 }
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     default_instance

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     instance_table

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     rpl_mrhof

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  345 /*---------------------------------------------------------------------------*/
//  346 
//  347 /** @}*/
// 
//   1 byte  in section .bss
// 568 bytes in section .text
// 
// 568 bytes of CODE memory
//   1 byte  of DATA memory
//
//Errors: none
//Warnings: 1
