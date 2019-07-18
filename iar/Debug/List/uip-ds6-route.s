///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:43
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-ds6-route.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-ds6-route.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip-ds6-route.s
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
        EXTERN list_add
        EXTERN list_head
        EXTERN list_init
        EXTERN list_item_next
        EXTERN list_length
        EXTERN list_push
        EXTERN list_remove
        EXTERN list_tail
        EXTERN memb_alloc
        EXTERN memb_free
        EXTERN memb_init
        EXTERN memcmp
        EXTERN nbr_table_add_lladdr
        EXTERN nbr_table_get_from_lladdr
        EXTERN nbr_table_get_lladdr
        EXTERN nbr_table_register
        EXTERN nbr_table_remove
        EXTERN stimer_expired
        EXTERN stimer_set
        EXTERN uip_debug_ipaddr_print
        EXTERN uip_ds6_nbr_ipaddr_from_lladdr
        EXTERN uip_ds6_nbr_lladdr_from_ipaddr
        EXTERN uip_ds6_nbr_lookup

        PUBLIC uip_ds6_defrt_add
        PUBLIC uip_ds6_defrt_choose
        PUBLIC uip_ds6_defrt_lookup
        PUBLIC uip_ds6_defrt_periodic
        PUBLIC uip_ds6_defrt_rm
        PUBLIC uip_ds6_notification_add
        PUBLIC uip_ds6_notification_rm
        PUBLIC uip_ds6_route_add
        PUBLIC uip_ds6_route_head
        PUBLIC uip_ds6_route_init
        PUBLIC uip_ds6_route_lookup
        PUBLIC uip_ds6_route_next
        PUBLIC uip_ds6_route_nexthop
        PUBLIC uip_ds6_route_num_routes
        PUBLIC uip_ds6_route_rm
        PUBLIC uip_ds6_route_rm_by_nexthop
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ipv6\uip-ds6-route.c
//    1 /*
//    2  * Copyright (c) 2012, Thingsquare, http://www.thingsquare.com/.
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
//   13  *
//   14  * 3. Neither the name of the copyright holder nor the names of its
//   15  *    contributors may be used to endorse or promote products derived
//   16  *    from this software without specific prior written permission.
//   17  *
//   18  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//   19  * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//   20  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
//   21  * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
//   22  * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
//   23  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//   24  * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   25  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   26  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
//   27  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//   28  * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
//   29  * OF THE POSSIBILITY OF SUCH DAMAGE.
//   30  *
//   31  */
//   32 /**
//   33  * \addtogroup uip6
//   34  * @{
//   35  */
//   36 
//   37 /**
//   38  * \file
//   39  *    Routing table manipulation
//   40  */
//   41 #include "net/ipv6/uip-ds6.h"
//   42 #include "net/ip/uip.h"
//   43 
//   44 #include "lib/list.h"
//   45 #include "lib/memb.h"
//   46 #include "net/nbr-table.h"
//   47 
//   48 #include <string.h>
//   49 
//   50 /* The nbr_routes holds a neighbor table to be able to maintain
//   51    information about what routes go through what neighbor. This
//   52    neighbor table is registered with the central nbr-table repository
//   53    so that it will be maintained along with the rest of the neighbor
//   54    tables in the system. */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   55 NBR_TABLE(struct uip_ds6_route_neighbor_routes, nbr_routes);
_nbr_routes_mem:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   56 MEMB(neighborroutememb, struct uip_ds6_route_neighbor_route, UIP_DS6_ROUTE_NB);
neighborroutememb_memb_count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct uip_ds6_route_neighbor_route neighborroutememb_memb_mem[1]
neighborroutememb_memb_mem:
        DS8 8
//   57 
//   58 /* Each route is repressented by a uip_ds6_route_t structure and
//   59    memory for each route is allocated from the routememb memory
//   60    block. These routes are maintained on the routelist. */
//   61 LIST(routelist);

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   62 MEMB(routememb, uip_ds6_route_t, UIP_DS6_ROUTE_NB);
routememb_memb_count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute uip_ds6_route_t routememb_memb_mem[1]
routememb_memb_mem:
        DS8 40
//   63 
//   64 /* Default routes are held on the defaultrouterlist and their
//   65    structures are allocated from the defaultroutermemb memory block.*/
//   66 LIST(defaultrouterlist);

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   67 MEMB(defaultroutermemb, uip_ds6_defrt_t, UIP_DS6_DEFRT_NB);
defaultroutermemb_memb_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute uip_ds6_defrt_t defaultroutermemb_memb_mem[2]
defaultroutermemb_memb_mem:
        DS8 64

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   68 
//   69 #if UIP_DS6_NOTIFICATIONS
//   70 LIST(notificationlist);
//   71 #endif
//   72 
//   73 static int num_routes = 0;
num_routes:
        DATA
        DC32 0
nbr_routes_struct:
        DC32 0, 8, 0H, _nbr_routes_mem
        DC16 8, 1
        DC32 neighborroutememb_memb_count, neighborroutememb_memb_mem
routelist_list:
        DC32 0H
        DC16 40, 1
        DC32 routememb_memb_count, routememb_memb_mem
defaultrouterlist_list:
        DC32 0H
        DC16 32, 2
        DC32 defaultroutermemb_memb_count, defaultroutermemb_memb_mem
notificationlist_list:
        DC32 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 nbr_routes_struct

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 routelist_list

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 defaultrouterlist_list

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 notificationlist_list
//   74 
//   75 #undef DEBUG
//   76 #define DEBUG DEBUG_NONE
//   77 #include "net/ip/uip-debug.h"
//   78 
//   79 static void rm_routelist_callback(nbr_table_item_t *ptr);
//   80 /*---------------------------------------------------------------------------*/
//   81 #if DEBUG != DEBUG_NONE
//   82 static void
//   83 assert_nbr_routes_list_sane(void)
//   84 {
//   85   uip_ds6_route_t *r;
//   86   int count;
//   87 
//   88   /* Check if the route list has an infinite loop. */
//   89   for(r = uip_ds6_route_head(),
//   90         count = 0;
//   91       r != NULL &&
//   92         count < UIP_DS6_ROUTE_NB * 2;
//   93       r = uip_ds6_route_next(r),
//   94         count++);
//   95 
//   96   if(count > UIP_DS6_ROUTE_NB) {
//   97     PRINTF("uip-ds6-route.c: assert_nbr_routes_list_sane route list is in infinite loop\n");
//   98   }
//   99 
//  100   /* Make sure that the route list has as many entries as the
//  101      num_routes vairable. */
//  102   if(count < num_routes) {
//  103     PRINTF("uip-ds6-route.c: assert_nbr_routes_list_sane too few entries on route list: should be %d, is %d, max %d\n",
//  104            num_routes, count, UIP_CONF_MAX_ROUTES);
//  105   }
//  106 }
//  107 #endif /* DEBUG != DEBUG_NONE */
//  108 /*---------------------------------------------------------------------------*/
//  109 #if UIP_DS6_NOTIFICATIONS
//  110 static void
//  111 call_route_callback(int event, uip_ipaddr_t *route,
//  112 		    uip_ipaddr_t *nexthop)
//  113 {
//  114   int num;
//  115   struct uip_ds6_notification *n;
//  116   for(n = list_head(notificationlist);
//  117       n != NULL;
//  118       n = list_item_next(n)) {
//  119     if(event == UIP_DS6_NOTIFICATION_DEFRT_ADD ||
//  120        event == UIP_DS6_NOTIFICATION_DEFRT_RM) {
//  121       num = list_length(defaultrouterlist);
//  122     } else {
//  123       num = num_routes;
//  124     }
//  125     n->callback(event, route, nexthop, num);
//  126   }
//  127 }
//  128 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function uip_ds6_notification_add
        THUMB
//  129 void
//  130 uip_ds6_notification_add(struct uip_ds6_notification *n,
//  131 			 uip_ds6_notification_callback c)
//  132 {
//  133   if(n != NULL && c != NULL) {
uip_ds6_notification_add:
        CBZ.N    R0,??uip_ds6_notification_add_0
        MOVS     R2,R1
        BEQ.N    ??uip_ds6_notification_add_0
//  134     n->callback = c;
        STR      R1,[R0, #+4]
//  135     list_add(notificationlist, n);
        MOV      R1,R0
        LDR.W    R0,??DataTable14
          CFI FunCall list_add
        B.W      list_add
//  136   }
//  137 }
??uip_ds6_notification_add_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  138 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function uip_ds6_notification_rm
        THUMB
//  139 void
//  140 uip_ds6_notification_rm(struct uip_ds6_notification *n)
//  141 {
//  142   list_remove(notificationlist, n);
uip_ds6_notification_rm:
        MOV      R1,R0
        LDR.W    R0,??DataTable14
          CFI FunCall list_remove
        B.W      list_remove
          CFI EndBlock cfiBlock1
//  143 }
//  144 #endif
//  145 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function uip_ds6_route_init
        THUMB
//  146 void
//  147 uip_ds6_route_init(void)
//  148 {
uip_ds6_route_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  149   memb_init(&routememb);
        LDR.W    R4,??DataTable14_1
        ADD      R0,R4,#+36
          CFI FunCall memb_init
        BL       memb_init
//  150   list_init(routelist);
        ADD      R0,R4,#+32
          CFI FunCall list_init
        BL       list_init
//  151   nbr_table_register(nbr_routes,
//  152                      (nbr_table_callback *)rm_routelist_callback);
        ADR.W    R1,rm_routelist_callback
        ADDS     R0,R4,#+4
          CFI FunCall nbr_table_register
        BL       nbr_table_register
//  153 
//  154   memb_init(&defaultroutermemb);
        ADD      R0,R4,#+52
          CFI FunCall memb_init
        BL       memb_init
//  155   list_init(defaultrouterlist);
        ADD      R0,R4,#+48
          CFI FunCall list_init
        BL       list_init
//  156 
//  157 #if UIP_DS6_NOTIFICATIONS
//  158   list_init(notificationlist);
        ADD      R0,R4,#+64
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall list_init
        B.W      list_init
          CFI EndBlock cfiBlock2
//  159 #endif
//  160 }
//  161 /*---------------------------------------------------------------------------*/
//  162 static uip_lladdr_t *
//  163 uip_ds6_route_nexthop_lladdr(uip_ds6_route_t *route)
//  164 {
//  165   if(route != NULL) {
//  166     return (uip_lladdr_t *)nbr_table_get_lladdr(nbr_routes,
//  167                                                 route->neighbor_routes);
//  168   } else {
//  169     return NULL;
//  170   }
//  171 }
//  172 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function uip_ds6_route_nexthop
        THUMB
//  173 uip_ipaddr_t *
//  174 uip_ds6_route_nexthop(uip_ds6_route_t *route)
//  175 {
uip_ds6_route_nexthop:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  176   if(route != NULL) {
        CBZ.N    R0,??uip_ds6_route_nexthop_0
//  177     return uip_ds6_nbr_ipaddr_from_lladdr(uip_ds6_route_nexthop_lladdr(route));
        LDR      R1,[R0, #+4]
        LDR.W    R0,??DataTable14_2
          CFI FunCall nbr_table_get_lladdr
        BL       nbr_table_get_lladdr
//  178   } else {
        POP      {R1,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uip_ds6_nbr_ipaddr_from_lladdr
        B.W      uip_ds6_nbr_ipaddr_from_lladdr
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  179     return NULL;
??uip_ds6_route_nexthop_0:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock3
//  180   }
//  181 }
//  182 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function uip_ds6_route_head
        THUMB
//  183 uip_ds6_route_t *
//  184 uip_ds6_route_head(void)
//  185 {
//  186   return list_head(routelist);
uip_ds6_route_head:
        LDR.W    R0,??DataTable14_3
          CFI FunCall list_head
        B.W      list_head
          CFI EndBlock cfiBlock4
//  187 }
//  188 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function uip_ds6_route_next
        THUMB
//  189 uip_ds6_route_t *
//  190 uip_ds6_route_next(uip_ds6_route_t *r)
//  191 {
//  192   if(r != NULL) {
uip_ds6_route_next:
        CMP      R0,#+0
        IT       NE 
//  193     uip_ds6_route_t *n = list_item_next(r);
//  194     return n;
          CFI FunCall list_item_next
        BNE.W    list_item_next
//  195   }
//  196   return NULL;
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  197 }
//  198 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function uip_ds6_route_num_routes
          CFI NoCalls
        THUMB
//  199 int
//  200 uip_ds6_route_num_routes(void)
//  201 {
//  202   return num_routes;
uip_ds6_route_num_routes:
        LDR.W    R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  203 }
//  204 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function uip_ds6_route_lookup
        THUMB
//  205 uip_ds6_route_t *
//  206 uip_ds6_route_lookup(uip_ipaddr_t *addr)
//  207 {
uip_ds6_route_lookup:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R8,R0
//  208   uip_ds6_route_t *r;
//  209   uip_ds6_route_t *found_route;
//  210   uint8_t longestmatch;
//  211 
//  212   PRINTF("uip-ds6-route: Looking up route for ");
//  213   PRINT6ADDR(addr);
//  214   PRINTF("\n");
//  215 
//  216 
//  217   found_route = NULL;
//  218   longestmatch = 0;
//  219   for(r = uip_ds6_route_head();
        LDR.W    R9,??DataTable14_1
        MOVS     R5,#+0
        MOVS     R6,#+0
        ADD      R0,R9,#+32
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_ds6_route_lookup_0
//  220       r != NULL;
//  221       r = uip_ds6_route_next(r)) {
//  222     if(r->length >= longestmatch &&
//  223        uip_ipaddr_prefixcmp(addr, &r->ipaddr, r->length)) {
??uip_ds6_route_lookup_1:
        LDRB     R7,[R4, #+36]
        CMP      R7,R6
        BLT.N    ??uip_ds6_route_lookup_2
        LSRS     R2,R7,#+3
        ADD      R1,R4,#+8
        MOV      R0,R8
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        ITTT     EQ 
        MOVEQ    R6,R7
        MOVEQ    R5,R4
        CMPEQ    R6,#+128
//  224       longestmatch = r->length;
//  225       found_route = r;
//  226       /* check if total match - e.g. all 128 bits do match */
//  227       if(longestmatch == 128) {
        BEQ.N    ??uip_ds6_route_lookup_3
??uip_ds6_route_lookup_2:
        MOV      R0,R4
          CFI FunCall list_item_next
        BL       list_item_next
??uip_ds6_route_lookup_0:
        MOVS     R4,R0
//  228 	break;
//  229       }
//  230     }
//  231   }
        BNE.N    ??uip_ds6_route_lookup_1
//  232 
//  233   if(found_route != NULL) {
//  234     PRINTF("uip-ds6-route: Found route: ");
//  235     PRINT6ADDR(addr);
//  236     PRINTF(" via ");
//  237     PRINT6ADDR(uip_ds6_route_nexthop(found_route));
//  238     PRINTF("\n");
//  239   } else {
//  240     PRINTF("uip-ds6-route: No route found\n");
//  241   }
//  242 
//  243   if(found_route != NULL && found_route != list_head(routelist)) {
        CBZ.N    R5,??uip_ds6_route_lookup_4
??uip_ds6_route_lookup_3:
        ADD      R0,R9,#+32
          CFI FunCall list_head
        BL       list_head
        CMP      R5,R0
        BEQ.N    ??uip_ds6_route_lookup_4
//  244     /* If we found a route, we put it at the start of the routeslist
//  245        list. The list is ordered by how recently we looked them up:
//  246        the least recently used route will be at the end of the
//  247        list - for fast lookups (assuming multiple packets to the same node). */
//  248 
//  249     list_remove(routelist, found_route);
        MOV      R1,R5
        ADD      R0,R9,#+32
          CFI FunCall list_remove
        BL       list_remove
//  250     list_push(routelist, found_route);
        MOV      R1,R5
        ADD      R0,R9,#+32
          CFI FunCall list_push
        BL       list_push
          CFI EndBlock cfiBlock7
//  251   }
//  252 
//  253   return found_route;
??uip_ds6_route_lookup_4:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  254 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls uip_ds6_route_lookup
          CFI NoCalls uip_ds6_route_add
          CFI CFA R13+32
          CFI R4 Frame(CFA, -28)
          CFI R5 Frame(CFA, -24)
          CFI R6 Frame(CFA, -20)
          CFI R7 Frame(CFA, -16)
          CFI R8 Frame(CFA, -12)
          CFI R9 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        MOV      R0,R5
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock8
//  255 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function uip_ds6_route_add
        THUMB
//  256 uip_ds6_route_t *
//  257 uip_ds6_route_add(uip_ipaddr_t *ipaddr, uint8_t length,
//  258 		  uip_ipaddr_t *nexthop)
//  259 {
uip_ds6_route_add:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R4,R0
        MOV      R9,R2
        MOV      R8,R1
//  260   uip_ds6_route_t *r;
//  261   struct uip_ds6_route_neighbor_route *nbrr;
//  262 
//  263 #if DEBUG != DEBUG_NONE
//  264   assert_nbr_routes_list_sane();
//  265 #endif /* DEBUG != DEBUG_NONE */
//  266 
//  267   /* Get link-layer address of next hop, make sure it is in neighbor table */
//  268   const uip_lladdr_t *nexthop_lladdr = uip_ds6_nbr_lladdr_from_ipaddr(nexthop);
        MOV      R0,R9
          CFI FunCall uip_ds6_nbr_lladdr_from_ipaddr
        BL       uip_ds6_nbr_lladdr_from_ipaddr
        MOVS     R6,R0
//  269   if(nexthop_lladdr == NULL) {
        BEQ.N    ??uip_ds6_route_add_0
//  270     PRINTF("uip_ds6_route_add: neighbor link-local address unknown for ");
//  271     PRINT6ADDR(nexthop);
//  272     PRINTF("\n");
//  273     return NULL;
//  274   }
//  275 
//  276   /* First make sure that we don't add a route twice. If we find an
//  277      existing route for our destination, we'll delete the old
//  278      one first. */
//  279   r = uip_ds6_route_lookup(ipaddr);
        MOV      R0,R4
          CFI FunCall uip_ds6_route_lookup
        BL       uip_ds6_route_lookup
        MOVS     R5,R0
//  280   if(r != NULL) {
        LDR.N    R7,??DataTable14_1
        BEQ.N    ??uip_ds6_route_add_1
        LDR      R1,[R5, #+4]
        ADDS     R0,R7,#+4
          CFI FunCall nbr_table_get_lladdr
        BL       nbr_table_get_lladdr
          CFI FunCall uip_ds6_nbr_ipaddr_from_lladdr
        BL       uip_ds6_nbr_ipaddr_from_lladdr
        MOVS     R1,R0
//  281     uip_ipaddr_t *current_nexthop;
//  282     current_nexthop = uip_ds6_route_nexthop(r);
//  283     if(current_nexthop != NULL && uip_ipaddr_cmp(nexthop, current_nexthop)) {
        BEQ.N    ??uip_ds6_route_add_2
        MOVS     R2,#+16
        MOV      R0,R9
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??uip_ds6_route_add_2
//  284       /* no need to update route - already correct! */
//  285       return r;
        B.N      ?Subroutine0
//  286     }
//  287     PRINTF("uip_ds6_route_add: old route for ");
//  288     PRINT6ADDR(ipaddr);
//  289     PRINTF(" found, deleting it\n");
//  290 
//  291     uip_ds6_route_rm(r);
??uip_ds6_route_add_2:
        MOV      R0,R5
          CFI FunCall uip_ds6_route_rm
        BL       uip_ds6_route_rm
//  292   }
//  293   {
//  294     struct uip_ds6_route_neighbor_routes *routes;
//  295     /* If there is no routing entry, create one. We first need to
//  296        check if we have room for this route. If not, we remove the
//  297        least recently used one we have. */
//  298 
//  299     if(uip_ds6_route_num_routes() == UIP_DS6_ROUTE_NB) {
??uip_ds6_route_add_1:
        LDR      R0,[R7, #+0]
        CMP      R0,#+1
        BNE.N    ??uip_ds6_route_add_3
//  300       /* Removing the oldest route entry from the route table. The
//  301          least recently used route is the first route on the list. */
//  302       uip_ds6_route_t *oldest;
//  303 
//  304       oldest = list_tail(routelist); /* uip_ds6_route_head(); */
        ADD      R0,R7,#+32
          CFI FunCall list_tail
        BL       list_tail
//  305       PRINTF("uip_ds6_route_add: dropping route to ");
//  306       PRINT6ADDR(&oldest->ipaddr);
//  307       PRINTF("\n");
//  308       uip_ds6_route_rm(oldest);
          CFI FunCall uip_ds6_route_rm
        BL       uip_ds6_route_rm
//  309     }
//  310 
//  311 
//  312     /* Every neighbor on our neighbor table holds a struct
//  313        uip_ds6_route_neighbor_routes which holds a list of routes that
//  314        go through the neighbor. We add our route entry to this list.
//  315 
//  316        We first check to see if we already have this neighbor in our
//  317        nbr_route table. If so, the neighbor already has a route entry
//  318        list.
//  319     */
//  320     routes = nbr_table_get_from_lladdr(nbr_routes,
//  321                                        (linkaddr_t *)nexthop_lladdr);
??uip_ds6_route_add_3:
        MOV      R1,R6
        ADDS     R0,R7,#+4
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
        MOVS     R5,R0
//  322 
//  323     if(routes == NULL) {
        BNE.N    ??uip_ds6_route_add_4
//  324       /* If the neighbor did not have an entry in our neighbor table,
//  325          we create one. The nbr_table_add_lladdr() function returns a
//  326          pointer to a pointer that we may use for our own purposes. We
//  327          initialize this pointer with the list of routing entries that
//  328          are attached to this neighbor. */
//  329       routes = nbr_table_add_lladdr(nbr_routes,
//  330                                     (linkaddr_t *)nexthop_lladdr);
        MOV      R1,R6
        ADDS     R0,R7,#+4
          CFI FunCall nbr_table_add_lladdr
        BL       nbr_table_add_lladdr
        MOVS     R5,R0
//  331       if(routes == NULL) {
        BEQ.N    ??uip_ds6_route_add_0
//  332         /* This should not happen, as we explicitly deallocated one
//  333            route table entry above. */
//  334         PRINTF("uip_ds6_route_add: could not allocate neighbor table entry\n");
//  335         return NULL;
//  336       }
//  337       LIST_STRUCT_INIT(routes, route_list);
        STR      R5,[R5, #+4]
        MOVS     R1,#+0
        STR      R1,[R5, #+0]
          CFI FunCall list_init
        BL       list_init
//  338     }
//  339 
//  340     /* Allocate a routing entry and populate it. */
//  341     r = memb_alloc(&routememb);
??uip_ds6_route_add_4:
        ADD      R0,R7,#+36
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R6,R0
//  342 
//  343     if(r == NULL) {
        BEQ.N    ??uip_ds6_route_add_0
//  344       /* This should not happen, as we explicitly deallocated one
//  345          route table entry above. */
//  346       PRINTF("uip_ds6_route_add: could not allocate route\n");
//  347       return NULL;
//  348     }
//  349 
//  350     /* add new routes first - assuming that there is a reason to add this
//  351        and that there is a packet coming soon. */
//  352     list_push(routelist, r);
        MOV      R1,R6
        ADD      R0,R7,#+32
          CFI FunCall list_push
        BL       list_push
//  353 
//  354     nbrr = memb_alloc(&neighborroutememb);
        ADD      R0,R7,#+20
          CFI FunCall memb_alloc
        BL       memb_alloc
//  355     if(nbrr == NULL) {
        CBNZ.N   R0,??uip_ds6_route_add_5
//  356       /* This should not happen, as we explicitly deallocated one
//  357          route table entry above. */
//  358       PRINTF("uip_ds6_route_add: could not allocate neighbor route list entry\n");
//  359       memb_free(&routememb, r);
        MOV      R1,R6
        ADD      R0,R7,#+36
          CFI FunCall memb_free
        BL       memb_free
//  360       return NULL;
??uip_ds6_route_add_0:
        MOVS     R0,#+0
        POP      {R1,R4-R9,PC}
//  361     }
//  362 
//  363     nbrr->route = r;
??uip_ds6_route_add_5:
        STR      R6,[R0, #+4]
//  364     /* Add the route to this neighbor */
//  365     list_add(routes->route_list, nbrr);
        MOV      R1,R0
        LDR      R0,[R5, #+4]
          CFI FunCall list_add
        BL       list_add
//  366     r->neighbor_routes = routes;
        STR      R5,[R6, #+4]
//  367     num_routes++;
//  368 
//  369     PRINTF("uip_ds6_route_add num %d\n", num_routes);
//  370   }
//  371 
//  372   uip_ipaddr_copy(&(r->ipaddr), ipaddr);
        MOV      R1,R4
        LDR      R0,[R7, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R7, #+0]
        MOVS     R2,#+16
        ADD      R0,R6,#+8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  373   r->length = length;
        STRB     R8,[R6, #+36]
//  374 
//  375 #ifdef UIP_DS6_ROUTE_STATE_TYPE
//  376   memset(&r->state, 0, sizeof(UIP_DS6_ROUTE_STATE_TYPE));
        MOVS     R1,#+12
        ADD      R0,R6,#+24
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  377 #endif
//  378 
//  379   PRINTF("uip_ds6_route_add: adding route: ");
//  380   PRINT6ADDR(ipaddr);
//  381   PRINTF(" via ");
//  382   PRINT6ADDR(nexthop);
//  383   PRINTF("\n");
//  384   ANNOTATE("#L %u 1;blue\n", nexthop->u8[sizeof(uip_ipaddr_t) - 1]);
//  385 
//  386 #if UIP_DS6_NOTIFICATIONS
//  387   call_route_callback(UIP_DS6_NOTIFICATION_ROUTE_ADD, ipaddr, nexthop);
        ADD      R0,R7,#+64
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_ds6_route_add_6
??uip_ds6_route_add_7:
        LDR      R3,[R7, #+0]
        LDR      R12,[R5, #+4]
        MOV      R2,R9
        MOV      R1,R4
        MOVS     R0,#+2
          CFI FunCall
        BLX      R12
        MOV      R0,R5
          CFI FunCall list_item_next
        BL       list_item_next
??uip_ds6_route_add_6:
        MOVS     R5,R0
        BNE.N    ??uip_ds6_route_add_7
//  388 #endif
//  389 
//  390 #if DEBUG != DEBUG_NONE
//  391   assert_nbr_routes_list_sane();
//  392 #endif /* DEBUG != DEBUG_NONE */
//  393   return r;
        MOV      R0,R6
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock9
//  394 }
//  395 
//  396 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function uip_ds6_route_rm
        THUMB
//  397 void
//  398 uip_ds6_route_rm(uip_ds6_route_t *route)
//  399 {
uip_ds6_route_rm:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R5,R0
//  400   struct uip_ds6_route_neighbor_route *neighbor_route;
//  401 #if DEBUG != DEBUG_NONE
//  402   assert_nbr_routes_list_sane();
//  403 #endif /* DEBUG != DEBUG_NONE */
//  404   if(route != NULL && route->neighbor_routes != NULL) {
        ITT      NE 
        LDRNE    R0,[R5, #+4]
        CMPNE    R0,#+0
        BEQ.N    ??uip_ds6_route_rm_0
//  405 
//  406     PRINTF("uip_ds6_route_rm: removing route: ");
//  407     PRINT6ADDR(&route->ipaddr);
//  408     PRINTF("\n");
//  409 
//  410     /* Remove the route from the route list */
//  411     list_remove(routelist, route);
        LDR.N    R4,??DataTable14_1
        MOV      R1,R5
        ADD      R0,R4,#+32
          CFI FunCall list_remove
        BL       list_remove
//  412 
//  413     /* Find the corresponding neighbor_route and remove it. */
//  414     for(neighbor_route = list_head(route->neighbor_routes->route_list);
        LDR      R0,[R5, #+4]
        LDR      R0,[R0, #+4]
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_ds6_route_rm_1
//  415         neighbor_route != NULL && neighbor_route->route != route;
??uip_ds6_route_rm_2:
        LDR      R0,[R6, #+4]
        CMP      R0,R5
        BEQ.N    ??uip_ds6_route_rm_3
//  416         neighbor_route = list_item_next(neighbor_route));
        MOV      R0,R6
          CFI FunCall list_item_next
        BL       list_item_next
??uip_ds6_route_rm_1:
        MOVS     R6,R0
        BNE.N    ??uip_ds6_route_rm_2
//  417 
//  418     if(neighbor_route == NULL) {
//  419       PRINTF("uip_ds6_route_rm: neighbor_route was NULL for ");
//  420       uip_debug_ipaddr_print(&route->ipaddr);
        ADD      R0,R5,#+8
          CFI FunCall uip_debug_ipaddr_print
        BL       uip_debug_ipaddr_print
//  421       PRINTF("\n");
//  422     }
//  423     list_remove(route->neighbor_routes->route_list, neighbor_route);
??uip_ds6_route_rm_3:
        LDR      R0,[R5, #+4]
        LDR      R0,[R0, #+4]
        MOV      R1,R6
          CFI FunCall list_remove
        BL       list_remove
//  424     if(list_head(route->neighbor_routes->route_list) == NULL) {
        LDR      R0,[R5, #+4]
        LDR      R0,[R0, #+4]
          CFI FunCall list_head
        BL       list_head
        CBNZ.N   R0,??uip_ds6_route_rm_4
//  425       /* If this was the only route using this neighbor, remove the
//  426          neibhor from the table */
//  427       PRINTF("uip_ds6_route_rm: removing neighbor too\n");
//  428       nbr_table_remove(nbr_routes, route->neighbor_routes->route_list);
        LDR      R0,[R5, #+4]
        LDR      R1,[R0, #+4]
        ADDS     R0,R4,#+4
          CFI FunCall nbr_table_remove
        BL       nbr_table_remove
//  429     }
//  430     memb_free(&routememb, route);
??uip_ds6_route_rm_4:
        MOV      R1,R5
        ADD      R0,R4,#+36
          CFI FunCall memb_free
        BL       memb_free
//  431     memb_free(&neighborroutememb, neighbor_route);
        MOV      R1,R6
        ADD      R0,R4,#+20
          CFI FunCall memb_free
        BL       memb_free
//  432 
//  433     num_routes--;
        LDR      R0,[R4, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[R4, #+0]
//  434 
//  435     PRINTF("uip_ds6_route_rm num %d\n", num_routes);
//  436 
//  437 #if UIP_DS6_NOTIFICATIONS
//  438     call_route_callback(UIP_DS6_NOTIFICATION_ROUTE_RM,
//  439         &route->ipaddr, uip_ds6_route_nexthop(route));
        ADDS     R0,R4,#+4
        LDR      R1,[R5, #+4]
          CFI FunCall nbr_table_get_lladdr
        BL       nbr_table_get_lladdr
          CFI FunCall uip_ds6_nbr_ipaddr_from_lladdr
        BL       uip_ds6_nbr_ipaddr_from_lladdr
        MOV      R6,R0
//  440 #endif
//  441 #if 0 //(DEBUG & DEBUG_ANNOTATE) == DEBUG_ANNOTATE
//  442     /* we need to check if this was the last route towards "nexthop" */
//  443     /* if so - remove that link (annotation) */
//  444     uip_ds6_route_t *r;
//  445     for(r = uip_ds6_route_head();
//  446         r != NULL;
//  447         r = uip_ds6_route_next(r)) {
//  448       uip_ipaddr_t *nextr, *nextroute;
//  449       nextr = uip_ds6_route_nexthop(r);
//  450       nextroute = uip_ds6_route_nexthop(route);
//  451       if(nextr != NULL &&
//  452          nextroute != NULL &&
//  453          uip_ipaddr_cmp(nextr, nextroute)) {
//  454         /* we found another link using the specific nexthop, so keep the #L */
//  455         return;
//  456       }
//  457     }
//  458     ANNOTATE("#L %u 0\n", uip_ds6_route_nexthop(route)->u8[sizeof(uip_ipaddr_t) - 1]);
//  459 #endif
//  460   }
        ADDS     R5,R5,#+8
        ADD      R0,R4,#+64
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_ds6_route_rm_5
??uip_ds6_route_rm_6:
        LDR      R3,[R4, #+0]
        LDR      R12,[R7, #+4]
        MOV      R2,R6
        MOV      R1,R5
        MOVS     R0,#+3
          CFI FunCall
        BLX      R12
        MOV      R0,R7
          CFI FunCall list_item_next
        BL       list_item_next
??uip_ds6_route_rm_5:
        MOVS     R7,R0
        BNE.N    ??uip_ds6_route_rm_6
//  461 
//  462 #if DEBUG != DEBUG_NONE
//  463   assert_nbr_routes_list_sane();
//  464 #endif /* DEBUG != DEBUG_NONE */
//  465   return;
??uip_ds6_route_rm_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock10
//  466 }
//  467 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function rm_routelist
        THUMB
//  468 static void
//  469 rm_routelist(struct uip_ds6_route_neighbor_routes *routes)
//  470 {
rm_routelist:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  471 #if DEBUG != DEBUG_NONE
//  472   assert_nbr_routes_list_sane();
//  473 #endif /* DEBUG != DEBUG_NONE */
//  474   PRINTF("uip_ds6_route_rm_routelist\n");
//  475   if(routes != NULL && routes->route_list != NULL) {
        ITT      NE 
        LDRNE    R0,[R4, #+4]
        CMPNE    R0,#+0
        BEQ.N    ??rm_routelist_0
//  476     struct uip_ds6_route_neighbor_route *r;
//  477     r = list_head(routes->route_list);
        B.N      ??rm_routelist_1
//  478     while(r != NULL) {
//  479       uip_ds6_route_rm(r->route);
??rm_routelist_2:
        LDR      R0,[R0, #+4]
          CFI FunCall uip_ds6_route_rm
        BL       uip_ds6_route_rm
//  480       r = list_head(routes->route_list);
        LDR      R0,[R4, #+4]
??rm_routelist_1:
          CFI FunCall list_head
        BL       list_head
//  481     }
        CMP      R0,#+0
        BNE.N    ??rm_routelist_2
//  482     nbr_table_remove(nbr_routes, routes);
        MOV      R1,R4
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.N    R0,??DataTable14_2
          CFI FunCall nbr_table_remove
        B.W      nbr_table_remove
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  483   }
//  484 #if DEBUG != DEBUG_NONE
//  485   assert_nbr_routes_list_sane();
//  486 #endif /* DEBUG != DEBUG_NONE */
//  487 }
??rm_routelist_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock11
//  488 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function rm_routelist_callback
          CFI FunCall rm_routelist
        THUMB
//  489 static void
//  490 rm_routelist_callback(nbr_table_item_t *ptr)
//  491 {
//  492   rm_routelist((struct uip_ds6_route_neighbor_routes *)ptr);
rm_routelist_callback:
        B.N      rm_routelist
          CFI EndBlock cfiBlock12
//  493 }
//  494 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function uip_ds6_route_rm_by_nexthop
        THUMB
//  495 void
//  496 uip_ds6_route_rm_by_nexthop(uip_ipaddr_t *nexthop)
//  497 {
uip_ds6_route_rm_by_nexthop:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  498   /* Get routing entry list of this neighbor */
//  499   const uip_lladdr_t *nexthop_lladdr;
//  500   struct uip_ds6_route_neighbor_routes *routes;
//  501 
//  502   nexthop_lladdr = uip_ds6_nbr_lladdr_from_ipaddr(nexthop);
          CFI FunCall uip_ds6_nbr_lladdr_from_ipaddr
        BL       uip_ds6_nbr_lladdr_from_ipaddr
//  503   routes = nbr_table_get_from_lladdr(nbr_routes,
//  504                                      (linkaddr_t *)nexthop_lladdr);
        MOV      R1,R0
        LDR.N    R0,??DataTable14_2
          CFI FunCall nbr_table_get_from_lladdr
        BL       nbr_table_get_from_lladdr
//  505   rm_routelist(routes);
        POP      {R1,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall rm_routelist
        B.N      rm_routelist
          CFI EndBlock cfiBlock13
//  506 }
//  507 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function uip_ds6_defrt_add
        THUMB
//  508 uip_ds6_defrt_t *
//  509 uip_ds6_defrt_add(uip_ipaddr_t *ipaddr, unsigned long interval)
//  510 {
uip_ds6_defrt_add:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R5,R1
//  511   uip_ds6_defrt_t *d;
//  512 
//  513 #if DEBUG != DEBUG_NONE
//  514   assert_nbr_routes_list_sane();
//  515 #endif /* DEBUG != DEBUG_NONE */
//  516 
//  517   PRINTF("uip_ds6_defrt_add\n");
//  518   d = uip_ds6_defrt_lookup(ipaddr);
          CFI FunCall uip_ds6_defrt_lookup
        BL       uip_ds6_defrt_lookup
        MOVS     R6,R0
//  519   if(d == NULL) {
        BNE.N    ??uip_ds6_defrt_add_0
//  520     d = memb_alloc(&defaultroutermemb);
        LDR.N    R7,??DataTable14_1
        ADD      R0,R7,#+52
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R6,R0
//  521     if(d == NULL) {
        BNE.N    ??uip_ds6_defrt_add_1
//  522       PRINTF("uip_ds6_defrt_add: could not add default route to ");
//  523       PRINT6ADDR(ipaddr);
//  524       PRINTF(", out of memory\n");
//  525       return NULL;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
//  526     } else {
//  527       PRINTF("uip_ds6_defrt_add: adding default route to ");
//  528       PRINT6ADDR(ipaddr);
//  529       PRINTF("\n");
//  530     }
//  531 
//  532     list_push(defaultrouterlist, d);
??uip_ds6_defrt_add_1:
        MOV      R1,R6
        ADD      R0,R7,#+48
          CFI FunCall list_push
        BL       list_push
//  533   }
//  534 
//  535   uip_ipaddr_copy(&d->ipaddr, ipaddr);
??uip_ds6_defrt_add_0:
        ADDS     R0,R6,#+4
        MOV      R1,R4
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  536   if(interval != 0) {
        CBZ.N    R5,??uip_ds6_defrt_add_2
//  537     stimer_set(&d->lifetime, interval);
        MOV      R1,R5
        ADD      R0,R6,#+20
          CFI FunCall stimer_set
        BL       stimer_set
//  538     d->isinfinite = 0;
        MOVS     R0,#+0
        B.N      ??uip_ds6_defrt_add_3
//  539   } else {
//  540     d->isinfinite = 1;
??uip_ds6_defrt_add_2:
        MOVS     R0,#+1
??uip_ds6_defrt_add_3:
        STRB     R0,[R6, #+28]
//  541   }
//  542 
//  543   ANNOTATE("#L %u 1\n", ipaddr->u8[sizeof(uip_ipaddr_t) - 1]);
//  544 
//  545 #if UIP_DS6_NOTIFICATIONS
//  546   call_route_callback(UIP_DS6_NOTIFICATION_DEFRT_ADD, ipaddr, ipaddr);
        LDR.N    R7,??DataTable14_1
        ADD      R0,R7,#+64
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_ds6_defrt_add_4
??uip_ds6_defrt_add_5:
        ADD      R0,R7,#+48
          CFI FunCall list_length
        BL       list_length
        MOV      R3,R0
        LDR      R12,[R5, #+4]
        MOV      R2,R4
        MOV      R1,R4
        MOVS     R0,#+0
          CFI FunCall
        BLX      R12
        MOV      R0,R5
          CFI FunCall list_item_next
        BL       list_item_next
??uip_ds6_defrt_add_4:
        MOVS     R5,R0
        BNE.N    ??uip_ds6_defrt_add_5
//  547 #endif
//  548 
//  549 #if DEBUG != DEBUG_NONE
//  550   assert_nbr_routes_list_sane();
//  551 #endif /* DEBUG != DEBUG_NONE */
//  552 
//  553   return d;
        MOV      R0,R6
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock14
//  554 }
//  555 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function uip_ds6_defrt_rm
        THUMB
//  556 void
//  557 uip_ds6_defrt_rm(uip_ds6_defrt_t *defrt)
//  558 {
uip_ds6_defrt_rm:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  559   uip_ds6_defrt_t *d;
//  560 
//  561 #if DEBUG != DEBUG_NONE
//  562   assert_nbr_routes_list_sane();
//  563 #endif /* DEBUG != DEBUG_NONE */
//  564 
//  565   /* Make sure that the defrt is in the list before we remove it. */
//  566   for(d = list_head(defaultrouterlist);
        LDR.N    R5,??DataTable14_1
        ADD      R0,R5,#+48
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_ds6_defrt_rm_0
//  567       d != NULL;
//  568       d = list_item_next(d)) {
??uip_ds6_defrt_rm_1:
          CFI FunCall list_item_next
        BL       list_item_next
??uip_ds6_defrt_rm_0:
        CBZ.N    R0,??uip_ds6_defrt_rm_2
//  569     if(d == defrt) {
        CMP      R0,R4
        BNE.N    ??uip_ds6_defrt_rm_1
//  570       PRINTF("Removing default route\n");
//  571       list_remove(defaultrouterlist, defrt);
        MOV      R1,R4
        ADD      R0,R5,#+48
          CFI FunCall list_remove
        BL       list_remove
//  572       memb_free(&defaultroutermemb, defrt);
        MOV      R1,R4
        ADD      R0,R5,#+52
          CFI FunCall memb_free
        BL       memb_free
//  573       ANNOTATE("#L %u 0\n", defrt->ipaddr.u8[sizeof(uip_ipaddr_t) - 1]);
//  574 #if UIP_DS6_NOTIFICATIONS
//  575       call_route_callback(UIP_DS6_NOTIFICATION_DEFRT_RM,
//  576 			  &defrt->ipaddr, &defrt->ipaddr);
        ADDS     R6,R4,#+4
        ADDS     R4,R4,#+4
        ADD      R0,R5,#+64
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_ds6_defrt_rm_3
??uip_ds6_defrt_rm_4:
        ADD      R0,R5,#+48
          CFI FunCall list_length
        BL       list_length
        MOV      R3,R0
        LDR      R12,[R7, #+4]
        MOV      R2,R6
        MOV      R1,R4
        MOVS     R0,#+1
          CFI FunCall
        BLX      R12
        MOV      R0,R7
          CFI FunCall list_item_next
        BL       list_item_next
??uip_ds6_defrt_rm_3:
        MOVS     R7,R0
        BNE.N    ??uip_ds6_defrt_rm_4
//  577 #endif
//  578       return;
//  579     }
//  580   }
//  581 #if DEBUG != DEBUG_NONE
//  582   assert_nbr_routes_list_sane();
//  583 #endif /* DEBUG != DEBUG_NONE */
//  584 
//  585 }
??uip_ds6_defrt_rm_2:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock15
//  586 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function uip_ds6_defrt_lookup
        THUMB
//  587 uip_ds6_defrt_t *
//  588 uip_ds6_defrt_lookup(uip_ipaddr_t *ipaddr)
//  589 {
uip_ds6_defrt_lookup:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  590   uip_ds6_defrt_t *d;
//  591   for(d = list_head(defaultrouterlist);
        LDR.N    R0,??DataTable14_4
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_ds6_defrt_lookup_0
//  592       d != NULL;
//  593       d = list_item_next(d)) {
??uip_ds6_defrt_lookup_1:
          CFI FunCall list_item_next
        BL       list_item_next
??uip_ds6_defrt_lookup_0:
        MOVS     R5,R0
        BEQ.N    ??uip_ds6_defrt_lookup_2
//  594     if(uip_ipaddr_cmp(&d->ipaddr, ipaddr)) {
        MOVS     R2,#+16
        MOV      R1,R4
        ADDS     R0,R5,#+4
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        MOV      R0,R5
        BNE.N    ??uip_ds6_defrt_lookup_1
//  595       return d;
        POP      {R1,R4,R5,PC}
//  596     }
//  597   }
//  598   return NULL;
??uip_ds6_defrt_lookup_2:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock16
//  599 }
//  600 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function uip_ds6_defrt_choose
        THUMB
//  601 uip_ipaddr_t *
//  602 uip_ds6_defrt_choose(void)
//  603 {
uip_ds6_defrt_choose:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  604   uip_ds6_defrt_t *d;
//  605   uip_ds6_nbr_t *bestnbr;
//  606   uip_ipaddr_t *addr;
//  607 
//  608   addr = NULL;
        MOVS     R4,#+0
//  609   for(d = list_head(defaultrouterlist);
        LDR.N    R0,??DataTable14_4
          CFI FunCall list_head
        BL       list_head
        B.N      ??uip_ds6_defrt_choose_0
//  610       d != NULL;
//  611       d = list_item_next(d)) {
//  612     PRINTF("Defrt, IP address ");
//  613     PRINT6ADDR(&d->ipaddr);
//  614     PRINTF("\n");
//  615     bestnbr = uip_ds6_nbr_lookup(&d->ipaddr);
//  616     if(bestnbr != NULL && bestnbr->state != NBR_INCOMPLETE) {
//  617       PRINTF("Defrt found, IP address ");
//  618       PRINT6ADDR(&d->ipaddr);
//  619       PRINTF("\n");
//  620       return &d->ipaddr;
//  621     } else {
//  622       addr = &d->ipaddr;
??uip_ds6_defrt_choose_1:
        ADDS     R4,R5,#+4
//  623       PRINTF("Defrt INCOMPLETE found, IP address ");
//  624       PRINT6ADDR(&d->ipaddr);
//  625       PRINTF("\n");
//  626     }
        MOV      R0,R5
          CFI FunCall list_item_next
        BL       list_item_next
??uip_ds6_defrt_choose_0:
        MOVS     R5,R0
        BEQ.N    ??uip_ds6_defrt_choose_2
        ADDS     R0,R5,#+4
          CFI FunCall uip_ds6_nbr_lookup
        BL       uip_ds6_nbr_lookup
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R0, #+34]
        CMPNE    R0,#+0
        BEQ.N    ??uip_ds6_defrt_choose_1
        ADDS     R0,R5,#+4
        POP      {R1,R4,R5,PC}
//  627   }
//  628   return addr;
??uip_ds6_defrt_choose_2:
        MOV      R0,R4
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock17
//  629 }
//  630 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function uip_ds6_defrt_periodic
        THUMB
//  631 void
//  632 uip_ds6_defrt_periodic(void)
//  633 {
uip_ds6_defrt_periodic:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  634   uip_ds6_defrt_t *d;
//  635   d = list_head(defaultrouterlist);
        LDR.N    R4,??DataTable14_1
        B.N      ??uip_ds6_defrt_periodic_0
//  636   while(d != NULL) {
//  637     if(!d->isinfinite &&
//  638        stimer_expired(&d->lifetime)) {
//  639       PRINTF("uip_ds6_defrt_periodic: defrt lifetime expired\n");
//  640       uip_ds6_defrt_rm(d);
??uip_ds6_defrt_periodic_1:
        MOV      R0,R5
          CFI FunCall uip_ds6_defrt_rm
        BL       uip_ds6_defrt_rm
//  641       d = list_head(defaultrouterlist);
??uip_ds6_defrt_periodic_0:
        ADD      R0,R4,#+48
          CFI FunCall list_head
        BL       list_head
??uip_ds6_defrt_periodic_2:
        MOVS     R5,R0
//  642     } else {
        BEQ.N    ??uip_ds6_defrt_periodic_3
        LDRB     R0,[R5, #+28]
        CBNZ.N   R0,??uip_ds6_defrt_periodic_4
        ADD      R0,R5,#+20
          CFI FunCall stimer_expired
        BL       stimer_expired
        CMP      R0,#+0
        BNE.N    ??uip_ds6_defrt_periodic_1
//  643       d = list_item_next(d);
??uip_ds6_defrt_periodic_4:
        MOV      R0,R5
          CFI FunCall list_item_next
        BL       list_item_next
        B.N      ??uip_ds6_defrt_periodic_2
//  644     }
//  645   }
//  646 }
??uip_ds6_defrt_periodic_3:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     num_routes+0x40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     num_routes

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     num_routes+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     num_routes+0x20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     num_routes+0x30

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  647 /*---------------------------------------------------------------------------*/
//  648 /** @} */
// 
//   124 bytes in section .bss
//    84 bytes in section .data
// 1 104 bytes in section .text
// 
// 1 104 bytes of CODE memory
//   208 bytes of DATA memory
//
//Errors: none
//Warnings: 1
