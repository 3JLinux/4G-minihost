///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:17
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-of0.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-of0.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rpl-of0.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN rpl_get_nbr

        PUBLIC rpl_of0
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-of0.c
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
//   30  */
//   31 
//   32 /**
//   33  * \file
//   34  *         An implementation of RPL's objective function 0.
//   35  *
//   36  * \author Joakim Eriksson <joakime@sics.se>, Nicolas Tsiftes <nvt@sics.se>
//   37  */
//   38 
//   39 /**
//   40  * \addtogroup uip6
//   41  * @{
//   42  */
//   43 
//   44 #include "net/rpl/rpl-private.h"
//   45 
//   46 #define DEBUG DEBUG_NONE
//   47 #include "net/ip/uip-debug.h"
//   48 
//   49 static void reset(rpl_dag_t *);
//   50 static rpl_parent_t *best_parent(rpl_parent_t *, rpl_parent_t *);
//   51 static rpl_dag_t *best_dag(rpl_dag_t *, rpl_dag_t *);
//   52 static rpl_rank_t calculate_rank(rpl_parent_t *, rpl_rank_t);
//   53 static void update_metric_container(rpl_instance_t *);
//   54 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   55 rpl_of_t rpl_of0 = {
rpl_of0:
        DATA
        DC32 reset, 0H, best_parent, best_dag, calculate_rank
        DC32 update_metric_container
        DC16 0
        DC8 0, 0
//   56   reset,
//   57   NULL,
//   58   best_parent,
//   59   best_dag,
//   60   calculate_rank,
//   61   update_metric_container,
//   62   0
//   63 };
//   64 
//   65 #define DEFAULT_RANK_INCREMENT  RPL_MIN_HOPRANKINC
//   66 
//   67 #define MIN_DIFFERENCE (RPL_MIN_HOPRANKINC + RPL_MIN_HOPRANKINC / 2)
//   68 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function reset
          CFI NoCalls
        THUMB
//   69 static void
//   70 reset(rpl_dag_t *dag)
//   71 {
//   72   PRINTF("RPL: Resetting OF0\n");
//   73 }
reset:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   74 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function calculate_rank
          CFI NoCalls
        THUMB
//   75 static rpl_rank_t
//   76 calculate_rank(rpl_parent_t *p, rpl_rank_t base_rank)
//   77 {
//   78   rpl_rank_t increment;
//   79   if(base_rank == 0) {
calculate_rank:
        CBNZ.N   R1,??calculate_rank_0
//   80     if(p == NULL) {
        CBZ.N    R0,??calculate_rank_1
//   81       return INFINITE_RANK;
//   82     }
//   83     base_rank = p->rank;
        LDRH     R1,[R0, #+8]
        B.N      ??calculate_rank_2
//   84   }
//   85 
//   86   increment = p != NULL ?
//   87                 p->dag->instance->min_hoprankinc :
//   88                 DEFAULT_RANK_INCREMENT;
??calculate_rank_0:
        CBZ.N    R0,??calculate_rank_3
??calculate_rank_2:
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+32]
        LDRH     R0,[R0, #+154]
        B.N      ??calculate_rank_4
??calculate_rank_3:
        MOV      R0,#+256
//   89 
//   90   if((rpl_rank_t)(base_rank + increment) < base_rank) {
??calculate_rank_4:
        ADDS     R0,R0,R1
        UXTH     R0,R0
        CMP      R0,R1
        BCS.N    ??calculate_rank_5
//   91     PRINTF("RPL: OF0 rank %d incremented to infinite rank due to wrapping\n",
//   92         base_rank);
//   93     return INFINITE_RANK;
??calculate_rank_1:
        MOVW     R0,#+65535
//   94   }
//   95   return base_rank + increment;
??calculate_rank_5:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   96 
//   97 }
//   98 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function best_dag
          CFI NoCalls
        THUMB
//   99 static rpl_dag_t *
//  100 best_dag(rpl_dag_t *d1, rpl_dag_t *d2)
//  101 {
//  102   if(d1->grounded) {
best_dag:
        LDRB     R2,[R0, #+19]
        CMP      R2,#+0
        LDRB     R2,[R1, #+19]
        BEQ.N    ??best_dag_0
//  103     if (!d2->grounded) {
        CBNZ.N   R2,??best_dag_1
//  104       return d1;
        BX       LR
//  105     }
//  106   } else if(d2->grounded) {
??best_dag_0:
        CBNZ.N   R2,??best_dag_2
//  107     return d2;
//  108   }
//  109 
//  110   if(d1->preference < d2->preference) {
??best_dag_1:
        LDRB     R2,[R1, #+20]
        LDRB     R3,[R0, #+20]
        CMP      R3,R2
        BCC.N    ??best_dag_2
//  111     return d2;
//  112   } else {
//  113     if(d1->preference > d2->preference) {
        CMP      R2,R3
        BCC.N    ??best_dag_3
//  114       return d1;
//  115     }
//  116   }
//  117 
//  118   if(d2->rank < d1->rank) {
        LDRH     R2,[R1, #+28]
        LDRH     R3,[R0, #+28]
        CMP      R2,R3
        BCS.N    ??best_dag_3
//  119     return d2;
??best_dag_2:
        MOV      R0,R1
//  120   } else {
//  121     return d1;
??best_dag_3:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  122   }
//  123 }
//  124 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function best_parent
        THUMB
//  125 static rpl_parent_t *
//  126 best_parent(rpl_parent_t *p1, rpl_parent_t *p2)
//  127 {
best_parent:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  128   rpl_rank_t r1, r2;
//  129   rpl_dag_t *dag;  
//  130   uip_ds6_nbr_t *nbr1, *nbr2;
//  131   nbr1 = rpl_get_nbr(p1);
          CFI FunCall rpl_get_nbr
        BL       rpl_get_nbr
        MOV      R6,R0
//  132   nbr2 = rpl_get_nbr(p2);
        MOV      R0,R5
          CFI FunCall rpl_get_nbr
        BL       rpl_get_nbr
//  133 
//  134   dag = (rpl_dag_t *)p1->dag; /* Both parents must be in the same DAG. */
        LDR      R2,[R4, #+4]
//  135 
//  136   if(nbr1 == NULL || nbr2 == NULL) {
        CMP      R6,#+0
        IT       NE 
        CMPNE    R0,#+0
        MOV      R1,R2
        BEQ.N    ??best_parent_0
        LDR      R2,[R2, #+32]
        LDRH     R3,[R4, #+8]
        LDRH     R2,[R2, #+154]
        LDRH     R6,[R6, #+36]
//  137     return dag->preferred_parent;
//  138   }
//  139 
//  140   PRINTF("RPL: Comparing parent ");
//  141   PRINT6ADDR(rpl_get_parent_ipaddr(p1));
//  142   PRINTF(" (confidence %d, rank %d) with parent ",
//  143         nbr1->link_metric, p1->rank);
//  144   PRINT6ADDR(rpl_get_parent_ipaddr(p2));
//  145   PRINTF(" (confidence %d, rank %d)\n",
//  146         nbr2->link_metric, p2->rank);
//  147 
//  148 
//  149   r1 = DAG_RANK(p1->rank, p1->dag->instance) * RPL_MIN_HOPRANKINC  +
//  150     nbr1->link_metric;
//  151   r2 = DAG_RANK(p2->rank, p1->dag->instance) * RPL_MIN_HOPRANKINC  +
//  152     nbr2->link_metric;
        LDRH     R0,[R0, #+36]
        SDIV     R3,R3,R2
        ADD      R3,R6,R3, LSL #+8
        LDRH     R6,[R5, #+8]
        SDIV     R2,R6,R2
        ADD      R0,R0,R2, LSL #+8
        UXTH     R0,R0
        UXTH     R3,R3
//  153   /* Compare two parents by looking both and their rank and at the ETX
//  154      for that parent. We choose the parent that has the most
//  155      favourable combination. */
//  156 
//  157   if(r1 < r2 + MIN_DIFFERENCE &&
//  158      r1 > r2 - MIN_DIFFERENCE) {
        ADD      R2,R0,#+384
        CMP      R3,R2
        ITT      LT 
        SUBLT    R2,R0,#+384
        CMPLT    R2,R3
        BGE.N    ??best_parent_1
//  159     return dag->preferred_parent;
??best_parent_0:
        LDR      R0,[R1, #+24]
        POP      {R4-R6,PC}
//  160   } else if(r1 < r2) {
??best_parent_1:
        CMP      R3,R0
        BGE.N    ??best_parent_2
//  161     return p1;
        MOV      R0,R4
        POP      {R4-R6,PC}
//  162   } else {
//  163     return p2;
??best_parent_2:
        MOV      R0,R5
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock3
//  164   }
//  165 }
//  166 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function update_metric_container
          CFI NoCalls
        THUMB
//  167 static void
//  168 update_metric_container(rpl_instance_t *instance)
//  169 {
//  170   instance->mc.type = RPL_DAG_MC_NONE;
update_metric_container:
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  171 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  172 
//  173 /** @}*/
// 
//  28 bytes in section .data
// 180 bytes in section .text
// 
// 180 bytes of CODE memory
//  28 bytes of DATA memory
//
//Errors: none
//Warnings: 1
