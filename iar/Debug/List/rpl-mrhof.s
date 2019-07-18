///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:17
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-mrhof.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-mrhof.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rpl-mrhof.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN rpl_get_nbr

        PUBLIC rpl_mrhof
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-mrhof.c
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
//   35  *         The Minimum Rank with Hysteresis Objective Function (MRHOF)
//   36  *
//   37  *         This implementation uses the estimated number of
//   38  *         transmissions (ETX) as the additive routing metric,
//   39  *         and also provides stubs for the energy metric.
//   40  *
//   41  * \author Joakim Eriksson <joakime@sics.se>, Nicolas Tsiftes <nvt@sics.se>
//   42  */
//   43 
//   44 /**
//   45  * \addtogroup uip6
//   46  * @{
//   47  */
//   48 
//   49 #include "net/rpl/rpl-private.h"
//   50 #include "net/nbr-table.h"
//   51 
//   52 #define DEBUG DEBUG_NONE
//   53 #include "net/ip/uip-debug.h"
//   54 
//   55 static void reset(rpl_dag_t *);
//   56 static void neighbor_link_callback(rpl_parent_t *, int, int);
//   57 static rpl_parent_t *best_parent(rpl_parent_t *, rpl_parent_t *);
//   58 static rpl_dag_t *best_dag(rpl_dag_t *, rpl_dag_t *);
//   59 static rpl_rank_t calculate_rank(rpl_parent_t *, rpl_rank_t);
//   60 static void update_metric_container(rpl_instance_t *);
//   61 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   62 rpl_of_t rpl_mrhof = {
rpl_mrhof:
        DATA
        DC32 reset, neighbor_link_callback, best_parent, best_dag
        DC32 calculate_rank, update_metric_container
        DC16 1
        DC8 0, 0
//   63   reset,
//   64   neighbor_link_callback,
//   65   best_parent,
//   66   best_dag,
//   67   calculate_rank,
//   68   update_metric_container,
//   69   1
//   70 };
//   71 
//   72 /* Constants for the ETX moving average */
//   73 #define ETX_SCALE   100
//   74 #define ETX_ALPHA   90
//   75 
//   76 /* Reject parents that have a higher link metric than the following. */
//   77 #define MAX_LINK_METRIC			10
//   78 
//   79 /* Reject parents that have a higher path cost than the following. */
//   80 #define MAX_PATH_COST			100
//   81 
//   82 /*
//   83  * The rank must differ more than 1/PARENT_SWITCH_THRESHOLD_DIV in order
//   84  * to switch preferred parent.
//   85  */
//   86 #define PARENT_SWITCH_THRESHOLD_DIV	2
//   87 
//   88 typedef uint16_t rpl_path_metric_t;
//   89 
//   90 static rpl_path_metric_t
//   91 calculate_path_metric(rpl_parent_t *p)
//   92 {
//   93   uip_ds6_nbr_t *nbr;
//   94   if(p == NULL) {
//   95     return MAX_PATH_COST * RPL_DAG_MC_ETX_DIVISOR;
//   96   }
//   97   nbr = rpl_get_nbr(p);
//   98   if(nbr == NULL) {
//   99     return MAX_PATH_COST * RPL_DAG_MC_ETX_DIVISOR;
//  100   }
//  101 #if RPL_DAG_MC == RPL_DAG_MC_NONE
//  102   {
//  103     return p->rank + (uint16_t)nbr->link_metric;
//  104   }
//  105 #elif RPL_DAG_MC == RPL_DAG_MC_ETX
//  106   return p->mc.obj.etx + (uint16_t)nbr->link_metric;
//  107 #elif RPL_DAG_MC == RPL_DAG_MC_ENERGY
//  108   return p->mc.obj.energy.energy_est + (uint16_t)nbr->link_metric;
//  109 #else
//  110 #error "Unsupported RPL_DAG_MC configured. See rpl.h."
//  111 #endif /* RPL_DAG_MC */
//  112 }
//  113 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function reset
          CFI NoCalls
        THUMB
//  114 static void
//  115 reset(rpl_dag_t *dag)
//  116 {
//  117   PRINTF("RPL: Reset MRHOF\n");
//  118 }
reset:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  119 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function neighbor_link_callback
        THUMB
//  120 static void
//  121 neighbor_link_callback(rpl_parent_t *p, int status, int numtx)
//  122 {
neighbor_link_callback:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R5,R0
        MOV      R6,R1
//  123   uint16_t recorded_etx = 0;
//  124   uint16_t packet_etx = numtx * RPL_DAG_MC_ETX_DIVISOR;
        LSLS     R4,R2,#+8
//  125   uint16_t new_etx;
//  126   uip_ds6_nbr_t *nbr = NULL;
//  127 
//  128   nbr = rpl_get_nbr(p);
          CFI FunCall rpl_get_nbr
        BL       rpl_get_nbr
//  129   if(nbr == NULL) {
        CBZ.N    R0,??neighbor_link_callback_0
//  130     /* No neighbor for this parent - something bad has occurred */
//  131     return;
//  132   }
//  133 
//  134   recorded_etx = nbr->link_metric;
        LDRH     R1,[R0, #+36]
//  135 
//  136   /* Do not penalize the ETX when collisions or transmission errors occur. */
//  137   if(status == MAC_TX_OK || status == MAC_TX_NOACK) {
        CBZ.N    R6,??neighbor_link_callback_1
        CMP      R6,#+2
        BNE.N    ??neighbor_link_callback_0
//  138     if(status == MAC_TX_NOACK) {
//  139       packet_etx = MAX_LINK_METRIC * RPL_DAG_MC_ETX_DIVISOR;
        MOV      R4,#+2560
//  140     }
//  141 
//  142     if(p->flags & RPL_PARENT_FLAG_LINK_METRIC_VALID) {
??neighbor_link_callback_1:
        LDRB     R2,[R5, #+17]
        LSLS     R3,R2,#+30
        BPL.N    ??neighbor_link_callback_2
//  143       /* We already have a valid link metric, use weighted moving average to update it */
//  144       new_etx = ((uint32_t)recorded_etx * ETX_ALPHA +
//  145                  (uint32_t)packet_etx * (ETX_SCALE - ETX_ALPHA)) / ETX_SCALE;
        UXTH     R4,R4
        ADD      R3,R4,R4, LSL #+2
        MOVS     R2,#+90
        LSLS     R3,R3,#+1
        MLA      R1,R2,R1,R3
        MOVS     R2,#+100
        UDIV     R4,R1,R2
        B.N      ??neighbor_link_callback_3
//  146     } else {
//  147       /* We don't have a valid link metric, set it to the current packet's ETX */
//  148       new_etx = packet_etx;
//  149       /* Set link metric as valid */
//  150       p->flags |= RPL_PARENT_FLAG_LINK_METRIC_VALID;
??neighbor_link_callback_2:
        ORR      R1,R2,#0x2
        STRB     R1,[R5, #+17]
//  151     }
//  152 
//  153     PRINTF("RPL: ETX changed from %u to %u (packet ETX = %u)\n",
//  154         (unsigned)(recorded_etx / RPL_DAG_MC_ETX_DIVISOR),
//  155         (unsigned)(new_etx  / RPL_DAG_MC_ETX_DIVISOR),
//  156         (unsigned)(packet_etx / RPL_DAG_MC_ETX_DIVISOR));
//  157     /* update the link metric for this nbr */
//  158     nbr->link_metric = new_etx;
??neighbor_link_callback_3:
        STRH     R4,[R0, #+36]
//  159   }
//  160 }
??neighbor_link_callback_0:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1
//  161 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function calculate_rank
        THUMB
//  162 static rpl_rank_t
//  163 calculate_rank(rpl_parent_t *p, rpl_rank_t base_rank)
//  164 {
calculate_rank:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOV      R5,R1
//  165   rpl_rank_t new_rank;
//  166   rpl_rank_t rank_increase;
//  167   uip_ds6_nbr_t *nbr;
//  168 
//  169   if(p == NULL || (nbr = rpl_get_nbr(p)) == NULL) {
        BEQ.N    ??calculate_rank_0
          CFI FunCall rpl_get_nbr
        BL       rpl_get_nbr
        CBNZ.N   R0,??calculate_rank_1
//  170     if(base_rank == 0) {
??calculate_rank_0:
        CBNZ.N   R5,??calculate_rank_2
//  171       return INFINITE_RANK;
        MOVW     R0,#+65535
        POP      {R1,R4,R5,PC}
//  172     }
//  173     rank_increase = RPL_INIT_LINK_METRIC * RPL_DAG_MC_ETX_DIVISOR;
??calculate_rank_2:
        MOV      R1,#+512
        B.N      ??calculate_rank_3
//  174   } else {
//  175     rank_increase = nbr->link_metric;
??calculate_rank_1:
        LDRH     R1,[R0, #+36]
//  176     if(base_rank == 0) {
        CBNZ.N   R5,??calculate_rank_3
//  177       base_rank = p->rank;
        LDRH     R5,[R4, #+8]
//  178     }
//  179   }
//  180 
//  181   if(INFINITE_RANK - base_rank < rank_increase) {
??calculate_rank_3:
        MOVW     R0,#+65535
        SUBS     R2,R0,R5
        CMP      R2,R1
        IT       GE 
        ADDGE    R0,R1,R5
//  182     /* Reached the maximum rank. */
//  183     new_rank = INFINITE_RANK;
//  184   } else {
//  185    /* Calculate the rank based on the new rank information from DIO or
//  186       stored otherwise. */
//  187     new_rank = base_rank + rank_increase;
//  188   }
//  189 
//  190   return new_rank;
        UXTH     R0,R0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//  191 }
//  192 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function best_dag
          CFI NoCalls
        THUMB
//  193 static rpl_dag_t *
//  194 best_dag(rpl_dag_t *d1, rpl_dag_t *d2)
//  195 {
//  196   if(d1->grounded != d2->grounded) {
best_dag:
        LDRB     R2,[R0, #+19]
        LDRB     R3,[R1, #+19]
        CMP      R2,R3
        BEQ.N    ??best_dag_0
//  197     return d1->grounded ? d1 : d2;
        CBNZ.N   R2,??best_dag_1
        B.N      ??best_dag_2
//  198   }
//  199 
//  200   if(d1->preference != d2->preference) {
??best_dag_0:
        LDRB     R2,[R1, #+20]
        LDRB     R3,[R0, #+20]
        CMP      R3,R2
        ITT      EQ 
        LDRHEQ   R2,[R0, #+28]
        LDRHEQ   R3,[R1, #+28]
//  201     return d1->preference > d2->preference ? d1 : d2;
//  202   }
//  203 
//  204   return d1->rank < d2->rank ? d1 : d2;
        CMP      R2,R3
        BCC.N    ??best_dag_1
??best_dag_2:
        MOV      R0,R1
??best_dag_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  205 }
//  206 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function best_parent
        THUMB
//  207 static rpl_parent_t *
//  208 best_parent(rpl_parent_t *p1, rpl_parent_t *p2)
//  209 {
best_parent:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOV      R5,R1
//  210   rpl_dag_t *dag;
//  211   rpl_path_metric_t min_diff;
//  212   rpl_path_metric_t p1_metric;
//  213   rpl_path_metric_t p2_metric;
//  214 
//  215   dag = p1->dag; /* Both parents are in the same DAG. */
        LDR      R6,[R4, #+4]
//  216 
//  217   min_diff = RPL_DAG_MC_ETX_DIVISOR /
//  218              PARENT_SWITCH_THRESHOLD_DIV;
//  219 
//  220   p1_metric = calculate_path_metric(p1);
        BEQ.N    ??best_parent_0
          CFI FunCall rpl_get_nbr
        BL       rpl_get_nbr
        CBNZ.N   R0,??best_parent_1
??best_parent_0:
        MOV      R7,#+25600
        B.N      ??best_parent_2
??best_parent_1:
        LDRH     R1,[R4, #+8]
        LDRH     R0,[R0, #+36]
        ADDS     R7,R0,R1
??best_parent_2:
        UXTH     R7,R7
//  221   p2_metric = calculate_path_metric(p2);
        CBZ.N    R5,??best_parent_3
        MOV      R0,R5
          CFI FunCall rpl_get_nbr
        BL       rpl_get_nbr
        CBNZ.N   R0,??best_parent_4
??best_parent_3:
        MOV      R1,#+25600
        B.N      ??best_parent_5
??best_parent_4:
        LDRH     R1,[R5, #+8]
        LDRH     R0,[R0, #+36]
        ADDS     R1,R0,R1
//  222 
//  223   /* Maintain stability of the preferred parent in case of similar ranks. */
//  224   if(p1 == dag->preferred_parent || p2 == dag->preferred_parent) {
??best_parent_5:
        LDR      R0,[R6, #+24]
        CMP      R4,R0
        IT       NE 
        CMPNE    R5,R0
        UXTH     R1,R1
        BNE.N    ??best_parent_6
//  225     if(p1_metric < p2_metric + min_diff &&
//  226        p1_metric > p2_metric - min_diff) {
        ADD      R2,R1,#+128
        CMP      R7,R2
        ITT      LT 
        SUBLT    R2,R1,#+128
        CMPLT    R2,R7
        BLT.N    ??best_parent_7
//  227       PRINTF("RPL: MRHOF hysteresis: %u <= %u <= %u\n",
//  228              p2_metric - min_diff,
//  229              p1_metric,
//  230              p2_metric + min_diff);
//  231       return dag->preferred_parent;
//  232     }
//  233   }
//  234 
//  235   return p1_metric < p2_metric ? p1 : p2;
??best_parent_6:
        CMP      R7,R1
        IT       GE 
        MOVGE    R4,R5
        MOV      R0,R4
??best_parent_7:
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock4
//  236 }
//  237 
//  238 #if RPL_DAG_MC == RPL_DAG_MC_NONE

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function update_metric_container
          CFI NoCalls
        THUMB
//  239 static void
//  240 update_metric_container(rpl_instance_t *instance)
//  241 {
//  242   instance->mc.type = RPL_DAG_MC;
update_metric_container:
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  243 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  244 #else
//  245 static void
//  246 update_metric_container(rpl_instance_t *instance)
//  247 {
//  248   rpl_path_metric_t path_metric;
//  249   rpl_dag_t *dag;
//  250 #if RPL_DAG_MC == RPL_DAG_MC_ENERGY
//  251   uint8_t type;
//  252 #endif
//  253 
//  254   instance->mc.type = RPL_DAG_MC;
//  255   instance->mc.flags = RPL_DAG_MC_FLAG_P;
//  256   instance->mc.aggr = RPL_DAG_MC_AGGR_ADDITIVE;
//  257   instance->mc.prec = 0;
//  258 
//  259   dag = instance->current_dag;
//  260 
//  261   if (!dag->joined) {
//  262     PRINTF("RPL: Cannot update the metric container when not joined\n");
//  263     return;
//  264   }
//  265 
//  266   if(dag->rank == ROOT_RANK(instance)) {
//  267     path_metric = 0;
//  268   } else {
//  269     path_metric = calculate_path_metric(dag->preferred_parent);
//  270   }
//  271 
//  272 #if RPL_DAG_MC == RPL_DAG_MC_ETX
//  273   instance->mc.length = sizeof(instance->mc.obj.etx);
//  274   instance->mc.obj.etx = path_metric;
//  275 
//  276   PRINTF("RPL: My path ETX to the root is %u.%u\n",
//  277 	instance->mc.obj.etx / RPL_DAG_MC_ETX_DIVISOR,
//  278 	(instance->mc.obj.etx % RPL_DAG_MC_ETX_DIVISOR * 100) /
//  279 	 RPL_DAG_MC_ETX_DIVISOR);
//  280 #elif RPL_DAG_MC == RPL_DAG_MC_ENERGY
//  281   instance->mc.length = sizeof(instance->mc.obj.energy);
//  282 
//  283   if(dag->rank == ROOT_RANK(instance)) {
//  284     type = RPL_DAG_MC_ENERGY_TYPE_MAINS;
//  285   } else {
//  286     type = RPL_DAG_MC_ENERGY_TYPE_BATTERY;
//  287   }
//  288 
//  289   instance->mc.obj.energy.flags = type << RPL_DAG_MC_ENERGY_TYPE;
//  290   instance->mc.obj.energy.energy_est = path_metric;
//  291 #endif /* RPL_DAG_MC == RPL_DAG_MC_ETX */
//  292 }
//  293 #endif /* RPL_DAG_MC == RPL_DAG_MC_NONE */
//  294 
//  295 /** @}*/
// 
//  28 bytes in section .data
// 244 bytes in section .text
// 
// 244 bytes of CODE memory
//  28 bytes of DATA memory
//
//Errors: none
//Warnings: 1
