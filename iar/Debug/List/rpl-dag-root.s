///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:14
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-dag-root.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-dag-root.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rpl-dag-root.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ctimer_set
        EXTERN dis_output
        EXTERN memcmp
        EXTERN rpl_get_any_dag
        EXTERN rpl_get_default_instance
        EXTERN rpl_remove_routes
        EXTERN rpl_set_prefix
        EXTERN rpl_set_root
        EXTERN uip_debug_ipaddr_print
        EXTERN uip_ds6_addr_add
        EXTERN uip_ds6_addr_lookup
        EXTERN uip_ds6_defrt_rm
        EXTERN uip_ds6_if
        EXTERN uip_ds6_notification_add
        EXTERN uip_ds6_set_addr_iid
        EXTERN uip_lladdr

        PUBLIC rpl_dag_root_init
        PUBLIC rpl_dag_root_init_dag
        PUBLIC rpl_dag_root_init_dag_immediately
        PUBLIC rpl_dag_root_is_root
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-dag-root.c
//    1 /*
//    2  * Copyright (c) 2012-2014, Thingsquare, http://www.thingsquare.com/.
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
//   13  * 3. Neither the name of the copyright holder nor the names of its
//   14  *    contributors may be used to endorse or promote products derived
//   15  *    from this software without specific prior written permission.
//   16  *
//   17  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//   18  * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//   19  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
//   20  * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
//   21  * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
//   22  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//   23  * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   24  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   25  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
//   26  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//   27  * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
//   28  * OF THE POSSIBILITY OF SUCH DAMAGE.
//   29  *
//   30  */
//   31 
//   32 #include "contiki.h"
//   33 #include "contiki-net.h"
//   34 
//   35 #include "net/rpl/rpl.h"
//   36 #include "net/rpl/rpl-private.h"
//   37 #include "net/rpl/rpl-dag-root.h"
//   38 
//   39 #include <string.h>
//   40 
//   41 #define DEBUG DEBUG_NONE
//   42 #include "net/ip/uip-debug.h"
//   43 
//   44 #if DEBUG
//   45 #include <stdio.h>
//   46 #define PRINTF(...) printf(__VA_ARGS__)
//   47 #else
//   48 #define PRINTF(...)
//   49 #endif
//   50 
//   51 #define RPL_DAG_GRACE_PERIOD (CLOCK_SECOND * 20 * 1)
//   52 
//   53 static struct uip_ds6_notification n;
//   54 static uint8_t to_become_root;
//   55 static struct ctimer c;
//   56 /*---------------------------------------------------------------------------*/
//   57 static const uip_ipaddr_t *
//   58 dag_root(void)
//   59 {
//   60   rpl_dag_t *dag;
//   61 
//   62   dag = rpl_get_any_dag();
//   63   if(dag != NULL) {
//   64     return &dag->dag_id;
//   65   }
//   66 
//   67   return NULL;
//   68 }
//   69 /*---------------------------------------------------------------------------*/
//   70 static const uip_ipaddr_t *
//   71 get_global_address(void)
//   72 {
//   73   int i;
//   74   uint8_t state;
//   75   uip_ipaddr_t *ipaddr = NULL;
//   76 
//   77   for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
//   78     state = uip_ds6_if.addr_list[i].state;
//   79     if(uip_ds6_if.addr_list[i].isused &&
//   80        state == ADDR_PREFERRED &&
//   81        !uip_is_addr_link_local(&uip_ds6_if.addr_list[i].ipaddr)) {
//   82       ipaddr = &uip_ds6_if.addr_list[i].ipaddr;
//   83     }
//   84   }
//   85   return ipaddr;
//   86 }
//   87 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function create_dag_callback
        THUMB
//   88 static void
//   89 create_dag_callback(void *ptr)
//   90 {
create_dag_callback:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   91   const uip_ipaddr_t *root, *ipaddr;
//   92 
//   93   root = dag_root();
          CFI FunCall rpl_get_any_dag
        BL       rpl_get_any_dag
//   94   ipaddr = get_global_address();
        MOVS     R1,#+0
        LDR.N    R2,??DataTable4
        MOVS     R3,#+3
??create_dag_callback_0:
        LDRB     R4,[R2, #+0]
        CBZ.N    R4,??create_dag_callback_1
        LDRB     R4,[R2, #+18]
        CMP      R4,#+1
        BNE.N    ??create_dag_callback_1
        LDRB     R4,[R2, #+2]
        CMP      R4,#+254
        ITTE     EQ 
        LDRBEQ   R4,[R2, #+3]
        CMPEQ    R4,#+128
        ADDNE    R1,R2,#+2
??create_dag_callback_1:
        ADDS     R2,R2,#+32
        SUBS     R3,R3,#+1
        BNE.N    ??create_dag_callback_0
//   95 
//   96   if(root == NULL || uip_ipaddr_cmp(root, ipaddr)) {
        CBZ.N    R0,??create_dag_callback_2
        MOVS     R2,#+16
          CFI FunCall memcmp
        BL       memcmp
        CBNZ.N   R0,??create_dag_callback_3
//   97     /* The RPL network we are joining is one that we created, so we
//   98        become root. */
//   99     if(to_become_root) {
??create_dag_callback_2:
        LDR.N    R4,??DataTable4_1
        LDRB     R0,[R4, #+0]
        CBZ.N    R0,??create_dag_callback_4
//  100       rpl_dag_root_init_dag_immediately();
          CFI FunCall rpl_dag_root_init_dag_immediately
        BL       rpl_dag_root_init_dag_immediately
//  101       to_become_root = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
        POP      {R4,PC}
//  102     }
//  103   } else {
//  104     rpl_dag_t *dag;
//  105 
//  106     dag = rpl_get_any_dag();
??create_dag_callback_3:
          CFI FunCall rpl_get_any_dag
        BL       rpl_get_any_dag
//  107 #if DEBUG
//  108     PRINTF("Found a network we did not create\n");
//  109     PRINTF("version %d grounded %d preference %d used %d joined %d rank %d\n",
//  110            dag->version, dag->grounded,
//  111            dag->preference, dag->used,
//  112            dag->joined, dag->rank);
//  113 #endif /* DEBUG */
//  114 
//  115     /* We found a RPL network that we did not create so we just join
//  116        it without becoming root. But if the network has an infinite
//  117        rank, we assume the network has broken, and we become the new
//  118        root of the network. */
//  119 
//  120     if(dag->rank == INFINITE_RANK) {
        LDRH     R0,[R0, #+28]
        LDR.N    R4,??DataTable4_1
        MOVW     R1,#+65535
        CMP      R0,R1
        BNE.N    ??create_dag_callback_5
//  121       if(to_become_root) {
        LDRB     R0,[R4, #+0]
        CBZ.N    R0,??create_dag_callback_5
//  122         rpl_dag_root_init_dag_immediately();
          CFI FunCall rpl_dag_root_init_dag_immediately
        BL       rpl_dag_root_init_dag_immediately
//  123         to_become_root = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  124       }
//  125     }
//  126 
//  127     /* Try again after the grace period */
//  128     ctimer_set(&c, RPL_DAG_GRACE_PERIOD, create_dag_callback, NULL);
??create_dag_callback_5:
        ADD      R0,R4,#+28
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R3,#+0
        LDR.N    R2,??DataTable4_2
        MOVW     R1,#+20000
          CFI FunCall ctimer_set
        B.W      ctimer_set
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  129   }
//  130 }
??create_dag_callback_4:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//  131 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function route_callback
        THUMB
//  132 static void
//  133 route_callback(int event, uip_ipaddr_t *route, uip_ipaddr_t *ipaddr,
//  134                int numroutes)
//  135 {
//  136   if(event == UIP_DS6_NOTIFICATION_DEFRT_ADD) {
route_callback:
        CMP      R0,#+0
        BNE.N    ??route_callback_0
//  137     if(route != NULL && ipaddr != NULL &&
//  138        !uip_is_addr_unspecified(route) &&
//  139        !uip_is_addr_unspecified(ipaddr)) {
        CMP      R1,#+0
        IT       NE 
        CMPNE    R2,#+0
        BEQ.N    ??route_callback_0
        LDRH     R0,[R1, #+0]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R1, #+2]
        CMPEQ    R0,#+0
        BNE.N    ??route_callback_1
        LDRH     R0,[R1, #+4]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R1, #+6]
        CMPEQ    R0,#+0
        BNE.N    ??route_callback_1
        LDRH     R0,[R1, #+8]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R1, #+10]
        CMPEQ    R0,#+0
        BNE.N    ??route_callback_1
        LDRH     R0,[R1, #+12]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R1, #+14]
        CMPEQ    R0,#+0
        BEQ.N    ??route_callback_0
??route_callback_1:
        LDRH     R0,[R2, #+0]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R2, #+2]
        CMPEQ    R0,#+0
        BNE.N    ??route_callback_2
        LDRH     R0,[R2, #+4]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R2, #+6]
        CMPEQ    R0,#+0
        BNE.N    ??route_callback_2
        LDRH     R0,[R2, #+8]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R2, #+10]
        CMPEQ    R0,#+0
        BNE.N    ??route_callback_2
        LDRH     R0,[R2, #+12]
        CMP      R0,#+0
        ITT      EQ 
        LDRHEQ   R0,[R2, #+14]
        CMPEQ    R0,#+0
        BEQ.N    ??route_callback_0
//  140       if(to_become_root) {
??route_callback_2:
        LDR.N    R0,??DataTable4_1
        LDRB     R1,[R0, #+0]
        CBZ.N    R1,??route_callback_0
//  141         ctimer_set(&c, 0, create_dag_callback, NULL);
        MOVS     R3,#+0
        LDR.N    R2,??DataTable4_2
        MOVS     R1,#+0
        ADDS     R0,R0,#+28
          CFI FunCall ctimer_set
        B.W      ctimer_set
//  142       }
//  143     }
//  144   }
//  145 }
??route_callback_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  146 /*---------------------------------------------------------------------------*/
//  147 static uip_ipaddr_t *
//  148 set_global_address(void)
//  149 {
//  150   static uip_ipaddr_t ipaddr;
//  151   int i;
//  152   uint8_t state;
//  153 
//  154   /* Assign a unique local address (RFC4193,
//  155      http://tools.ietf.org/html/rfc4193). */
//  156   uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
//  157   uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
//  158   uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);
//  159 
//  160   PRINTF("IPv6 addresses: ");
//  161   for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
//  162     state = uip_ds6_if.addr_list[i].state;
//  163     if(uip_ds6_if.addr_list[i].isused &&
//  164        (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
//  165       uip_debug_ipaddr_print(&uip_ds6_if.addr_list[i].ipaddr);
//  166       PRINTF("\n");
//  167     }
//  168   }
//  169 
//  170   return &ipaddr;
//  171 }
//  172 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function rpl_dag_root_init
        THUMB
//  173 void
//  174 rpl_dag_root_init(void)
//  175 {
rpl_dag_root_init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  176   static uint8_t initialized = 0;
//  177 
//  178   if(!initialized) {
        LDR.N    R4,??DataTable4_1
        LDRB     R0,[R4, #+1]
        CMP      R0,#+0
        BNE.N    ??rpl_dag_root_init_0
//  179     to_become_root = 0;
        STRB     R0,[R4, #+0]
//  180     set_global_address();
        MOVW     R0,#+43690
        STRH     R0,[R4, #+4]
        MOVS     R0,#+0
        STRH     R0,[R4, #+6]
        STRH     R0,[R4, #+8]
        STRH     R0,[R4, #+10]
        STRH     R0,[R4, #+12]
        STRH     R0,[R4, #+14]
        STRH     R0,[R4, #+16]
        STRH     R0,[R4, #+18]
        ADDS     R0,R4,#+4
        LDR.N    R1,??DataTable4_3
          CFI FunCall uip_ds6_set_addr_iid
        BL       uip_ds6_set_addr_iid
        MOVS     R2,#+1
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
          CFI FunCall uip_ds6_addr_add
        BL       uip_ds6_addr_add
        LDR.N    R5,??DataTable4_4
        LDRB     R0,[R5, #+42]
        LDRB     R1,[R5, #+24]
        CBZ.N    R1,??rpl_dag_root_init_1
        CMP      R0,#+0
        ITEE     NE 
        CMPNE    R0,#+1
        ADDEQ    R0,R5,#+26
        BLEQ     uip_debug_ipaddr_print
??rpl_dag_root_init_1:
        LDRB     R0,[R5, #+74]
        LDRB     R1,[R5, #+56]
        CBZ.N    R1,??rpl_dag_root_init_2
        CMP      R0,#+0
        ITEE     NE 
        CMPNE    R0,#+1
        ADDEQ    R0,R5,#+58
        BLEQ     uip_debug_ipaddr_print
??rpl_dag_root_init_2:
        LDRB     R0,[R5, #+106]
        LDRB     R1,[R5, #+88]
        CBZ.N    R1,??rpl_dag_root_init_3
        CMP      R0,#+0
        ITEE     NE 
        CMPNE    R0,#+1
        ADDEQ    R0,R5,#+90
        BLEQ     uip_debug_ipaddr_print
//  181     uip_ds6_notification_add(&n, route_callback);
??rpl_dag_root_init_3:
        LDR.N    R1,??DataTable4_5
        ADD      R0,R4,#+20
          CFI FunCall uip_ds6_notification_add
        BL       uip_ds6_notification_add
//  182     initialized = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+1]
//  183   }
//  184 }
??rpl_dag_root_init_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
to_become_root:
        DS8 1
        DS8 1
        DS8 2
        DS8 16
        DS8 8
        DS8 32
//  185 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function rpl_dag_root_init_dag_immediately
        THUMB
//  186 int
//  187 rpl_dag_root_init_dag_immediately(void)
//  188 {
rpl_dag_root_init_dag_immediately:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+16
          CFI CFA R13+24
//  189   struct uip_ds6_addr *root_if;
//  190   int i;
//  191   uint8_t state;
//  192   uip_ipaddr_t *ipaddr = NULL;
        MOVS     R4,#+0
//  193 
//  194   rpl_dag_root_init();
          CFI FunCall rpl_dag_root_init
        BL       rpl_dag_root_init
//  195 
//  196   for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
        LDR.N    R0,??DataTable4
        MOVS     R1,#+3
//  197     state = uip_ds6_if.addr_list[i].state;
//  198     if(uip_ds6_if.addr_list[i].isused &&
//  199        state == ADDR_PREFERRED &&
//  200        !uip_is_addr_link_local(&uip_ds6_if.addr_list[i].ipaddr)) {
??rpl_dag_root_init_dag_immediately_0:
        LDRB     R2,[R0, #+0]
        CBZ.N    R2,??rpl_dag_root_init_dag_immediately_1
        LDRB     R2,[R0, #+18]
        CMP      R2,#+1
        BNE.N    ??rpl_dag_root_init_dag_immediately_1
        LDRB     R2,[R0, #+2]
        CMP      R2,#+254
        ITTE     EQ 
        LDRBEQ   R2,[R0, #+3]
        CMPEQ    R2,#+128
        ADDNE    R4,R0,#+2
//  201       ipaddr = &uip_ds6_if.addr_list[i].ipaddr;
//  202     }
//  203   }
??rpl_dag_root_init_dag_immediately_1:
        ADDS     R0,R0,#+32
        SUBS     R1,R1,#+1
        BNE.N    ??rpl_dag_root_init_dag_immediately_0
//  204 
//  205   if(ipaddr != NULL) {
        CBZ.N    R4,??rpl_dag_root_init_dag_immediately_2
//  206     root_if = uip_ds6_addr_lookup(ipaddr);
//  207     if(root_if != NULL) {
        MOV      R0,R4
          CFI FunCall uip_ds6_addr_lookup
        BL       uip_ds6_addr_lookup
        CBZ.N    R0,??rpl_dag_root_init_dag_immediately_3
//  208       rpl_dag_t *dag;
//  209       uip_ipaddr_t prefix;
//  210 
//  211       rpl_set_root(RPL_DEFAULT_INSTANCE, ipaddr);
        MOV      R1,R4
        MOVS     R0,#+30
          CFI FunCall rpl_set_root
        BL       rpl_set_root
//  212       dag = rpl_get_any_dag();
          CFI FunCall rpl_get_any_dag
        BL       rpl_get_any_dag
        MOV      R4,R0
//  213 
//  214       /* If there are routes in this dag, we remove them all as we are
//  215          from now on the new dag root and the old routes are wrong */
//  216       rpl_remove_routes(dag);
          CFI FunCall rpl_remove_routes
        BL       rpl_remove_routes
//  217       if(dag->instance != NULL &&
//  218          dag->instance->def_route != NULL) {
        LDR      R0,[R4, #+32]
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R0,[R0, #+136]
        CMPNE    R0,#+0
        BEQ.N    ??rpl_dag_root_init_dag_immediately_4
//  219 	uip_ds6_defrt_rm(dag->instance->def_route);
          CFI FunCall uip_ds6_defrt_rm
        BL       uip_ds6_defrt_rm
//  220         dag->instance->def_route = NULL;
        LDR      R1,[R4, #+32]
        MOVS     R0,#+0
        STR      R0,[R1, #+136]
//  221       }
//  222 
//  223       uip_ip6addr(&prefix, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
??rpl_dag_root_init_dag_immediately_4:
        MOVW     R0,#+43690
        STRH     R0,[SP, #+0]
//  224       rpl_set_prefix(dag, &prefix, 64);
        MOVS     R2,#+64
        MOVS     R0,#+0
        STRH     R0,[SP, #+2]
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+8]
        STR      R0,[SP, #+12]
        ADD      R1,SP,#+0
        MOV      R0,R4
          CFI FunCall rpl_set_prefix
        BL       rpl_set_prefix
//  225       PRINTF("rpl_dag_root_init_dag: created a new RPL dag\n");
//  226       return 0;
        MOVS     R0,#+0
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}
          CFI CFA R13+24
//  227     } else {
//  228       PRINTF("rpl_dag_root_init_dag: failed to create a new RPL DAG\n");
//  229       return -1;
??rpl_dag_root_init_dag_immediately_3:
        MOV      R0,#-1
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}
          CFI CFA R13+24
//  230     }
//  231   } else {
//  232     PRINTF("rpl_dag_root_init_dag: failed to create a new RPL DAG, no preferred IP address found\n");
//  233     return -2;
??rpl_dag_root_init_dag_immediately_2:
        MVN      R0,#+1
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  234   }
//  235 }
//  236 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function rpl_dag_root_init_dag
        THUMB
//  237 void
//  238 rpl_dag_root_init_dag(void)
//  239 {
rpl_dag_root_init_dag:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  240   rpl_dag_root_init();
          CFI FunCall rpl_dag_root_init
        BL       rpl_dag_root_init
//  241 
//  242   ctimer_set(&c, RPL_DAG_GRACE_PERIOD, create_dag_callback, NULL);
        LDR.N    R4,??DataTable4_1
        LDR.N    R2,??DataTable4_2
        MOVS     R3,#+0
        MOVW     R1,#+20000
        ADD      R0,R4,#+28
          CFI FunCall ctimer_set
        BL       ctimer_set
//  243   to_become_root = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//  244 
//  245   /* Send a DIS packet to request RPL info from neighbors. */
//  246   dis_output(NULL);
        MOVS     R0,#+0
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall dis_output
        B.W      dis_output
          CFI EndBlock cfiBlock4
//  247 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     uip_ds6_if+0x18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     to_become_root

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     create_dag_callback

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     uip_lladdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     route_callback
//  248 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function rpl_dag_root_is_root
        THUMB
//  249 int
//  250 rpl_dag_root_is_root(void)
//  251 {
rpl_dag_root_is_root:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  252   rpl_instance_t *instance;
//  253 
//  254   instance = rpl_get_default_instance();
          CFI FunCall rpl_get_default_instance
        BL       rpl_get_default_instance
//  255 
//  256   if(instance == NULL) {
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R1,[R0, #+12]
        CMPNE    R1,#+0
//  257     return 0;
//  258   }
//  259 
//  260   if(instance->current_dag &&
//  261      instance->current_dag->rank == ROOT_RANK(instance)) {
        BEQ.N    ??rpl_dag_root_is_root_0
        LDRH     R1,[R1, #+28]
        LDRH     R0,[R0, #+154]
        CMP      R1,R0
        BNE.N    ??rpl_dag_root_is_root_0
//  262     return 1;
        MOVS     R0,#+1
        POP      {R1,PC}
//  263   }
//  264 
//  265   return 0;
??rpl_dag_root_is_root_0:
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock5
//  266 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  267 /*---------------------------------------------------------------------------*/
// 
//  60 bytes in section .bss
// 628 bytes in section .text
// 
// 628 bytes of CODE memory
//  60 bytes of DATA memory
//
//Errors: none
//Warnings: 1
