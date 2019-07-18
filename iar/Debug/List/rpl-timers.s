///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:18
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-timers.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-timers.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rpl-timers.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ctimer_reset
        EXTERN ctimer_set
        EXTERN ctimer_stop
        EXTERN dao_output
        EXTERN dio_output
        EXTERN dis_output
        EXTERN etimer_expiration_time
        EXTERN etimer_expired
        EXTERN random_rand
        EXTERN rpl_get_any_dag
        EXTERN rpl_get_mode
        EXTERN rpl_purge_routes
        EXTERN rpl_recalculate_ranks
        EXTERN rpl_rm_error_routes
        EXTERN uip_ds6_get_link_local

        PUBLIC rpl_cancel_dao
        PUBLIC rpl_reset_dio_timer
        PUBLIC rpl_reset_periodic_timer
        PUBLIC rpl_schedule_dao
        PUBLIC rpl_schedule_dao_immediately
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\rpl\rpl-timers.c
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
//   34  *         RPL timer management.
//   35  *
//   36  * \author Joakim Eriksson <joakime@sics.se>, Nicolas Tsiftes <nvt@sics.se>
//   37  */
//   38 
//   39 /**
//   40  * \addtogroup uip6
//   41  * @{
//   42  */
//   43 
//   44 #include "contiki-conf.h"
//   45 #include "net/rpl/rpl-private.h"
//   46 #include "net/ipv6/multicast/uip-mcast6.h"
//   47 #include "lib/random.h"
//   48 #include "sys/ctimer.h"
//   49 
//   50 #define DEBUG DEBUG_NONE
//   51 #include "net/ip/uip-debug.h"
//   52 
//   53 //#include "sysprintf.h"
//   54 extern void xprintf (			/* Put a formatted string to the default device */
//   55 	const char*	fmt,	/* Pointer to the format string */
//   56 	...					/* Optional arguments */
//   57 );
//   58 
//   59 
//   60 
//   61 /*---------------------------------------------------------------------------*/

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   62 static struct ctimer periodic_timer;
//   63 
//   64 static void handle_periodic_timer(void *ptr);
//   65 static void new_dio_interval(rpl_instance_t *instance);
//   66 static void handle_dio_timer(void *ptr);
//   67 
//   68 static uint16_t next_dis;
next_dis:
        DS8 2
        DS8 2
        DS8 32
//   69 
//   70 /* dio_send_ok is true if the node is ready to send DIOs */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   71 static uint8_t dio_send_ok;
dio_send_ok:
        DS8 1
//   72 
//   73 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function handle_periodic_timer
        THUMB
//   74 static void
//   75 handle_periodic_timer(void *ptr)
//   76 {
handle_periodic_timer:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   77   rpl_purge_routes();
          CFI FunCall rpl_purge_routes
        BL       rpl_purge_routes
//   78   rpl_rm_error_routes();
          CFI FunCall rpl_rm_error_routes
        BL       rpl_rm_error_routes
//   79   rpl_recalculate_ranks();
          CFI FunCall rpl_recalculate_ranks
        BL       rpl_recalculate_ranks
//   80 
//   81   /* handle DIS */
//   82 #if RPL_DIS_SEND
//   83   next_dis++;
        LDR.N    R4,??DataTable5
        LDRH     R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+0]
//   84   if(rpl_get_any_dag() == NULL && next_dis >= RPL_DIS_INTERVAL) {
          CFI FunCall rpl_get_any_dag
        BL       rpl_get_any_dag
        CBNZ.N   R0,??handle_periodic_timer_0
        LDRH     R0,[R4, #+0]
        CMP      R0,#+1200
        BLT.N    ??handle_periodic_timer_0
//   85     next_dis = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
//   86     dis_output(NULL);
          CFI FunCall dis_output
        BL       dis_output
//   87   }
//   88 #endif
//   89   ctimer_reset(&periodic_timer);
??handle_periodic_timer_0:
        ADDS     R0,R4,#+4
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall ctimer_reset
        B.W      ctimer_reset
          CFI EndBlock cfiBlock0
//   90 }
//   91 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function new_dio_interval
        THUMB
//   92 static void
//   93 new_dio_interval(rpl_instance_t *instance)
//   94 {
new_dio_interval:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//   95   uint32_t time;
//   96   clock_time_t ticks;
//   97 
//   98   /* TODO: too small timer intervals for many cases */
//   99   time = 1UL << instance->dio_intcurrent;
//  100   /* Convert from milliseconds to CLOCK_TICKS. */
//  101   ticks = (time * CLOCK_SECOND) / 1000;
        MOVS     R0,#+1
        LDRB     R1,[R4, #+148]
        LSLS     R0,R0,R1
        MOV      R1,#+1000
        MULS     R0,R1,R0
//  102   instance->dio_next_delay = ticks;
        ADD      R5,R4,#+148
        UDIV     R0,R0,R1
        STR      R0,[R5, #+12]
//  103 
//  104   /* random number between I/2 and I */
//  105   ticks = ticks / 2 + (ticks / 2 * (uint32_t)random_rand()) / RANDOM_RAND_MAX;
        LSRS     R6,R0,#+1
          CFI FunCall random_rand
        BL       random_rand
        MULS     R0,R0,R6
        MOVW     R1,#+65535
        UDIV     R0,R0,R1
        ADDS     R1,R0,R6
//  106   /*
//  107    * The intervals must be equally long among the nodes for Trickle to
//  108    * operate efficiently. Therefore we need to calculate the delay between
//  109    * the randomized time and the start time of the next interval.
//  110    */
//  111   instance->dio_next_delay -= ticks;
        LDR      R0,[R5, #+12]
//  112   
//  113   instance->dio_send = 1;
//  114 
//  115 #if RPL_CONF_STATS
//  116   /* keep some stats */
//  117   instance->dio_totint++;
//  118   instance->dio_totrecv += instance->dio_counter;
//  119   ANNOTATE("#A rank=%u.%u(%u),stats=%d %d %d %d,color=%s\n",
//  120 	   DAG_RANK(instance->current_dag->rank, instance),
//  121            (10 * (instance->current_dag->rank % instance->min_hoprankinc)) / instance->min_hoprankinc,
//  122            instance->current_dag->version,
//  123            instance->dio_totint, instance->dio_totsend,
//  124            instance->dio_totrecv,instance->dio_intcurrent,
//  125 	   instance->current_dag->rank == ROOT_RANK(instance) ? "BLUE" : "ORANGE");
//  126 #endif /* RPL_CONF_STATS */
//  127 
//  128   /* reset the redundancy counter */
//  129   instance->dio_counter = 0;
//  130 
//  131   /* schedule the timer */
//  132   PRINTF("RPL: Scheduling DIO timer %lu ticks in future (Interval)\n", ticks);
//  133   ctimer_set(&instance->dio_timer, ticks, &handle_dio_timer, instance);
        ADR.W    R2,handle_dio_timer
        SUBS     R0,R0,R1
        STR      R0,[R5, #+12]
        MOV      R3,R4
        MOVS     R0,#+1
        STRB     R0,[R5, #+1]
        MOVS     R0,#+0
        STRB     R0,[R5, #+2]
          CFI EndBlock cfiBlock1
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  134 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+16
          CFI R4 Frame(CFA, -16)
          CFI R5 Frame(CFA, -12)
          CFI R6 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        ADD      R0,R4,#+164
        POP      {R4-R6,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI FunCall new_dio_interval ctimer_set
          CFI FunCall rpl_reset_dio_timer ctimer_set
        B.W      ctimer_set
          CFI EndBlock cfiBlock2
//  135 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function handle_dio_timer
        THUMB
//  136 static void
//  137 handle_dio_timer(void *ptr)
//  138 {
handle_dio_timer:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  139   rpl_instance_t *instance;
//  140 
//  141   instance = (rpl_instance_t *)ptr;
//  142 
//  143   PRINTF("RPL: DIO Timer triggered\n");
//  144   if(!dio_send_ok) {
        LDR.N    R5,??DataTable5_1
        MOV      R4,R0
        LDRB     R0,[R5, #+0]
        CBNZ.N   R0,??handle_dio_timer_0
//  145     if(uip_ds6_get_link_local(ADDR_PREFERRED) != NULL) {
        MOVS     R0,#+1
          CFI FunCall uip_ds6_get_link_local
        BL       uip_ds6_get_link_local
        CBZ.N    R0,??handle_dio_timer_1
//  146       dio_send_ok = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
//  147     } else {
//  148       PRINTF("RPL: Postponing DIO transmission since link local address is not ok\n");
//  149       ctimer_set(&instance->dio_timer, CLOCK_SECOND, &handle_dio_timer, instance);
//  150       return;
//  151     }
//  152   }
//  153 
//  154   if(instance->dio_send) {
??handle_dio_timer_0:
        ADD      R5,R4,#+144
        LDRB     R0,[R5, #+5]
        CBZ.N    R0,??handle_dio_timer_2
//  155     /* send DIO if counter is less than desired redundancy */
//  156     if(instance->dio_redundancy != 0 && instance->dio_counter < instance->dio_redundancy) {
        LDRB     R0,[R5, #+2]
        CBZ.N    R0,??handle_dio_timer_3
        LDRB     R1,[R5, #+6]
        CMP      R1,R0
        BCS.N    ??handle_dio_timer_3
//  157 #if RPL_CONF_STATS
//  158       instance->dio_totsend++;
//  159 #endif /* RPL_CONF_STATS */
//  160       dio_output(instance, NULL);
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall dio_output
        BL       dio_output
//  161     } else {
//  162       PRINTF("RPL: Supressing DIO transmission (%d >= %d)\n",
//  163              instance->dio_counter, instance->dio_redundancy);
//  164     }
//  165     instance->dio_send = 0;
??handle_dio_timer_3:
        MOVS     R0,#+0
        STRB     R0,[R5, #+5]
//  166     PRINTF("RPL: Scheduling DIO timer %lu ticks in future (sent)\n",
//  167            instance->dio_next_delay);
//  168     ctimer_set(&instance->dio_timer, instance->dio_next_delay, handle_dio_timer, instance);
        MOV      R3,R4
        LDR      R1,[R5, #+16]
        LDR.N    R2,??DataTable5_2
        B.N      ??handle_dio_timer_4
//  169   } else {
??handle_dio_timer_1:
        MOV      R3,R4
        LDR.N    R2,??DataTable5_2
        MOV      R1,#+1000
??handle_dio_timer_4:
        ADD      R0,R4,#+164
        ADD      SP,SP,#+4
          CFI CFA R13+12
        POP      {R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall ctimer_set
        B.W      ctimer_set
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  170     /* check if we need to double interval */
//  171     if(instance->dio_intcurrent < instance->dio_intmin + instance->dio_intdoubl) {
??handle_dio_timer_2:
        LDRB     R1,[R5, #+1]
        LDRB     R2,[R4, #+144]
        LDRB     R0,[R5, #+4]
        ADDS     R1,R2,R1
        CMP      R0,R1
        ITT      LT 
        ADDLT    R0,R0,#+1
        STRBLT   R0,[R5, #+4]
//  172       instance->dio_intcurrent++;
//  173       PRINTF("RPL: DIO Timer interval doubled %d\n", instance->dio_intcurrent);
//  174     }
//  175     new_dio_interval(instance);
        MOV      R0,R4
        POP      {R1,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall new_dio_interval
        B.N      new_dio_interval
          CFI EndBlock cfiBlock3
//  176   }
//  177 
//  178 #if DEBUG
//  179   rpl_print_neighbor_list();
//  180 #endif
//  181 }
//  182 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function rpl_reset_periodic_timer
        THUMB
//  183 void
//  184 rpl_reset_periodic_timer(void)
//  185 {
rpl_reset_periodic_timer:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  186   next_dis = RPL_DIS_INTERVAL / 2 +
//  187     ((uint32_t)RPL_DIS_INTERVAL * (uint32_t)random_rand()) / RANDOM_RAND_MAX -
//  188     RPL_DIS_START_DELAY;
        LDR.N    R4,??DataTable5
          CFI FunCall random_rand
        BL       random_rand
//  189   ctimer_set(&periodic_timer, CLOCK_SECOND, handle_periodic_timer, NULL);
        LDR.N    R2,??DataTable5_3
        MOV      R1,#+1200
        MULS     R0,R1,R0
        MOVW     R1,#+65535
        UDIV     R0,R0,R1
        ADDW     R0,R0,#+595
        STRH     R0,[R4, #+0]
        MOVS     R3,#+0
        ADDS     R0,R4,#+4
        POP      {R4,LR}
          CFI EndBlock cfiBlock4
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  190   //ctimer_set(&periodic_timer, CLOCK_SECOND*10, handle_periodic_timer, NULL); //
//  191 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine1:
        MOV      R1,#+1000
          CFI FunCall rpl_reset_periodic_timer ctimer_set
          CFI FunCall handle_dao_timer ctimer_set
        B.W      ctimer_set
          CFI EndBlock cfiBlock5
//  192 /*---------------------------------------------------------------------------*/
//  193 /* Resets the DIO timer in the instance to its minimal interval. */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function rpl_reset_dio_timer
        THUMB
//  194 void
//  195 rpl_reset_dio_timer(rpl_instance_t *instance)
//  196 {
rpl_reset_dio_timer:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//  197 #if !RPL_LEAF_ONLY
//  198   /* Do not reset if we are already on the minimum interval,
//  199      unless forced to do so. */
//  200   if(instance->dio_intcurrent > instance->dio_intmin) {
        ADD      R5,R4,#+145
        LDRB     R0,[R4, #+145]
        LDRB     R1,[R5, #+3]
        CMP      R0,R1
        BCS.N    ??rpl_reset_dio_timer_0
//  201     instance->dio_counter = 0;
        MOVS     R1,#+0
        STRB     R1,[R5, #+5]
//  202     instance->dio_intcurrent = instance->dio_intmin;
        STRB     R0,[R5, #+3]
//  203     new_dio_interval(instance);
        MOVS     R1,#+1
        LSL      R0,R1,R0
        MOV      R1,#+1000
        MULS     R0,R1,R0
        UDIV     R0,R0,R1
        STR      R0,[R4, #+160]
        LSRS     R6,R0,#+1
          CFI FunCall random_rand
        BL       random_rand
        MULS     R0,R0,R6
        MOVW     R1,#+65535
        UDIV     R0,R0,R1
        ADDS     R1,R0,R6
        LDR      R0,[R4, #+160]
        LDR.N    R2,??DataTable5_2
        SUBS     R0,R0,R1
        STR      R0,[R4, #+160]
        MOV      R3,R4
        MOVS     R0,#+1
        STRB     R0,[R5, #+4]
        MOVS     R0,#+0
        STRB     R0,[R5, #+5]
        B.N      ?Subroutine0
//  204   }
//  205 #if RPL_CONF_STATS
//  206   rpl_stats.resets++;
//  207 #endif /* RPL_CONF_STATS */
//  208 #endif /* RPL_LEAF_ONLY */
//  209 }
??rpl_reset_dio_timer_0:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock6
//  210 /*---------------------------------------------------------------------------*/
//  211 static void handle_dao_timer(void *ptr);

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function set_dao_lifetime_timer
        THUMB
//  212 static void
//  213 set_dao_lifetime_timer(rpl_instance_t *instance)
//  214 {
set_dao_lifetime_timer:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  215   if(rpl_get_mode() == RPL_MODE_FEATHER) {
          CFI FunCall rpl_get_mode
        BL       rpl_get_mode
        CMP      R0,#+1
        ITTT     NE 
        LDRHNE   R0,[R4, #+156]
        MOVWNE   R1,#+65535
        CMPNE    R0,R1
//  216     return;
//  217   }
//  218 
//  219   /* Set up another DAO within half the expiration time, if such a
//  220      time has been configured */
//  221   if(instance->lifetime_unit != 0xffff && instance->default_lifetime != 0xff) {
        ITT      NE 
        LDRBNE   R1,[R4, #+147]
        CMPNE    R1,#+255
        BEQ.N    ??set_dao_lifetime_timer_0
//  222     clock_time_t expiration_time;
//  223     expiration_time = (clock_time_t)instance->default_lifetime *
//  224       (clock_time_t)instance->lifetime_unit *
//  225       CLOCK_SECOND / 2;
//  226     PRINTF("RPL: Scheduling DAO lifetime timer %u ticks in the future\n",
//  227            (unsigned)expiration_time);
//  228     ctimer_set(&instance->dao_lifetime_timer, expiration_time,
//  229                handle_dao_timer, instance);
        MULS     R0,R0,R1
        MOV      R1,#+1000
        MULS     R0,R1,R0
        LSRS     R1,R0,#+1
        MOV      R3,R4
        ADD      R0,R4,#+228
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R2,handle_dao_timer
          CFI FunCall ctimer_set
        B.W      ctimer_set
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  230   }
//  231 }
??set_dao_lifetime_timer_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7
//  232 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function handle_dao_timer
        THUMB
//  233 static void
//  234 handle_dao_timer(void *ptr)
//  235 {
handle_dao_timer:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  236   rpl_instance_t *instance;
//  237 #if RPL_CONF_MULTICAST
//  238   uip_mcast6_route_t *mcast_route;
//  239   uint8_t i;
//  240 #endif
//  241 
//  242   instance = (rpl_instance_t *)ptr;
//  243 
//  244   if(!dio_send_ok && uip_ds6_get_link_local(ADDR_PREFERRED) == NULL) {
        LDR.N    R0,??DataTable5_1
        LDRB     R0,[R0, #+0]
        CBNZ.N   R0,??handle_dao_timer_0
        MOVS     R0,#+1
          CFI FunCall uip_ds6_get_link_local
        BL       uip_ds6_get_link_local
        CBNZ.N   R0,??handle_dao_timer_0
//  245     PRINTF("RPL: Postpone DAO transmission\n");
//  246     ctimer_set(&instance->dao_timer, CLOCK_SECOND, handle_dao_timer, instance);
        MOV      R3,R4
        ADD      R0,R4,#+196
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.N    R2,??DataTable5_4
        B.N      ?Subroutine1
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  247     return;
//  248   }
??handle_dao_timer_0:
        LDR      R0,[R4, #+12]
        LDR      R0,[R0, #+24]
        CBZ.N    R0,??handle_dao_timer_1
//  249 
//  250   /* Send the DAO to the DAO parent set -- the preferred parent in our case. */
//  251   if(instance->current_dag->preferred_parent != NULL) {
//  252     PRINTF("RPL: handle_dao_timer - sending DAO\n");
//  253     /* Set the route lifetime to the default value. */
//  254     dao_output(instance->current_dag->preferred_parent, instance->default_lifetime);
        LDRB     R1,[R4, #+147]
          CFI FunCall dao_output
        BL       dao_output
//  255 
//  256 #if RPL_CONF_MULTICAST
//  257     /* Send DAOs for multicast prefixes only if the instance is in MOP 3 */
//  258     if(instance->mop == RPL_MOP_STORING_MULTICAST) {
//  259       /* Send a DAO for own multicast addresses */
//  260       for(i = 0; i < UIP_DS6_MADDR_NB; i++) {
//  261         if(uip_ds6_if.maddr_list[i].isused
//  262             && uip_is_addr_mcast_global(&uip_ds6_if.maddr_list[i].ipaddr)) {
//  263           dao_output_target(instance->current_dag->preferred_parent,
//  264               &uip_ds6_if.maddr_list[i].ipaddr, RPL_MCAST_LIFETIME);
//  265         }
//  266       }
//  267 
//  268       /* Iterate over multicast routes and send DAOs */
//  269       mcast_route = uip_mcast6_route_list_head();
//  270       while(mcast_route != NULL) {
//  271         /* Don't send if it's also our own address, done that already */
//  272         if(uip_ds6_maddr_lookup(&mcast_route->group) == NULL) {
//  273           dao_output_target(instance->current_dag->preferred_parent,
//  274                      &mcast_route->group, RPL_MCAST_LIFETIME);
//  275         }
//  276         mcast_route = list_item_next(mcast_route);
//  277       }
//  278     }
//  279 #endif
//  280   } else {
//  281     PRINTF("RPL: No suitable DAO parent\n");
//  282   }
//  283 
//  284   ctimer_stop(&instance->dao_timer);
??handle_dao_timer_1:
        ADD      R0,R4,#+196
          CFI FunCall ctimer_stop
        BL       ctimer_stop
//  285 
//  286   if(etimer_expired(&instance->dao_lifetime_timer.etimer)) {
        ADD      R0,R4,#+232
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??handle_dao_timer_2
//  287     set_dao_lifetime_timer(instance);
        MOV      R0,R4
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall set_dao_lifetime_timer
        B.N      set_dao_lifetime_timer
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  288   }
//  289 }
??handle_dao_timer_2:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock8
//  290 /*---------------------------------------------------------------------------*/
//  291 static void
//  292 schedule_dao(rpl_instance_t *instance, clock_time_t latency)
//  293 {
//  294   clock_time_t expiration_time;
//  295 
//  296   if(rpl_get_mode() == RPL_MODE_FEATHER) {
//  297     return;
//  298   }
//  299 
//  300   expiration_time = etimer_expiration_time(&instance->dao_timer.etimer);
//  301 
//  302   if(!etimer_expired(&instance->dao_timer.etimer)) {
//  303     PRINTF("RPL: DAO timer already scheduled\n");
//  304   } else {
//  305     if(latency != 0) {
//  306       expiration_time = latency / 2 +
//  307         (random_rand() % (latency));
//  308     } else {
//  309       expiration_time = 0;
//  310     }
//  311     PRINTF("RPL: Scheduling DAO timer %u ticks in the future\n",
//  312            (unsigned)expiration_time);
//  313     ctimer_set(&instance->dao_timer, expiration_time,
//  314                handle_dao_timer, instance);
//  315 
//  316     set_dao_lifetime_timer(instance);
//  317   }
//  318 }
//  319 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function rpl_schedule_dao
        THUMB
//  320 void
//  321 rpl_schedule_dao(rpl_instance_t *instance)
//  322 {
rpl_schedule_dao:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  323   schedule_dao(instance, RPL_DAO_LATENCY);
          CFI FunCall rpl_get_mode
        BL       rpl_get_mode
        CMP      R0,#+1
        BEQ.N    ??rpl_schedule_dao_0
        ADD      R5,R4,#+200
        MOV      R0,R5
          CFI FunCall etimer_expiration_time
        BL       etimer_expiration_time
        MOV      R0,R5
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??rpl_schedule_dao_0
          CFI FunCall random_rand
        BL       random_rand
        ADD      R1,R0,#+2000
        MOV      R5,#+4000
        UDIV     R0,R0,R5
        MLS      R1,R5,R0,R1
        MOV      R3,R4
        LDR.N    R2,??DataTable5_4
        B.N      ?Subroutine2
//  324 }
??rpl_schedule_dao_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock9
//  325 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function rpl_schedule_dao_immediately
        THUMB
//  326 void
//  327 rpl_schedule_dao_immediately(rpl_instance_t *instance)
//  328 {
rpl_schedule_dao_immediately:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  329   schedule_dao(instance, 0);
          CFI FunCall rpl_get_mode
        BL       rpl_get_mode
        CMP      R0,#+1
        BEQ.N    ??rpl_schedule_dao_immediately_0
        ADD      R5,R4,#+200
        MOV      R0,R5
          CFI FunCall etimer_expiration_time
        BL       etimer_expiration_time
        MOV      R0,R5
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??rpl_schedule_dao_immediately_0
        MOV      R3,R4
        LDR.N    R2,??DataTable5_4
        MOVS     R1,#+0
        B.N      ?Subroutine2
//  330 }
??rpl_schedule_dao_immediately_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     next_dis

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     dio_send_ok

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     handle_dio_timer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     handle_periodic_timer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     handle_dao_timer

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+16
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine2:
        ADD      R0,R4,#+196
          CFI FunCall rpl_schedule_dao ctimer_set
          CFI FunCall rpl_schedule_dao_immediately ctimer_set
        BL       ctimer_set
        MOV      R0,R4
        POP      {R1,R4,R5,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI FunCall rpl_schedule_dao set_dao_lifetime_timer
          CFI FunCall rpl_schedule_dao_immediately set_dao_lifetime_timer
        B.N      set_dao_lifetime_timer
          CFI EndBlock cfiBlock11
//  331 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function rpl_cancel_dao
        THUMB
//  332 void
//  333 rpl_cancel_dao(rpl_instance_t *instance)
//  334 {
rpl_cancel_dao:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  335   ctimer_stop(&instance->dao_timer);
        ADD      R0,R4,#+196
          CFI FunCall ctimer_stop
        BL       ctimer_stop
//  336   ctimer_stop(&instance->dao_lifetime_timer);
        ADD      R0,R4,#+228
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall ctimer_stop
        B.W      ctimer_stop
          CFI EndBlock cfiBlock12
//  337 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  338 /*---------------------------------------------------------------------------*/
//  339 #if RPL_WITH_PROBING
//  340 static rpl_parent_t *
//  341 get_probing_target(rpl_dag_t *dag)
//  342 {
//  343   /* Returns the next probing target. The current implementation probes the current
//  344    * preferred parent if we have not updated its link for RPL_PROBING_EXPIRATION_TIME.
//  345    * Otherwise, it picks at random between:
//  346    * (1) selecting the best parent not updated for RPL_PROBING_EXPIRATION_TIME
//  347    * (2) selecting the least recently updated parent
//  348    */
//  349 
//  350   rpl_parent_t *p;
//  351   rpl_parent_t *probing_target = NULL;
//  352   rpl_rank_t probing_target_rank = INFINITE_RANK;
//  353   /* min_last_tx is the clock time RPL_PROBING_EXPIRATION_TIME in the past */
//  354   clock_time_t min_last_tx = clock_time();
//  355   min_last_tx = min_last_tx > 2 * RPL_PROBING_EXPIRATION_TIME
//  356       ? min_last_tx - RPL_PROBING_EXPIRATION_TIME : 1;
//  357 
//  358   if(dag == NULL ||
//  359       dag->instance == NULL ||
//  360       dag->preferred_parent == NULL) {
//  361     return NULL;
//  362   }
//  363 
//  364   /* Our preferred parent needs probing */
//  365   if(dag->preferred_parent->last_tx_time < min_last_tx) {
//  366     probing_target = dag->preferred_parent;
//  367   }
//  368 
//  369   /* With 50% probability: probe best parent not updated for RPL_PROBING_EXPIRATION_TIME */
//  370   if(probing_target == NULL && (random_rand() % 2) == 0) {
//  371     p = nbr_table_head(rpl_parents);
//  372     while(p != NULL) {
//  373       if(p->dag == dag && p->last_tx_time < min_last_tx) {
//  374         /* p is in our dag and needs probing */
//  375         rpl_rank_t p_rank = dag->instance->of->calculate_rank(p, 0);
//  376         if(probing_target == NULL
//  377             || p_rank < probing_target_rank) {
//  378           probing_target = p;
//  379           probing_target_rank = p_rank;
//  380         }
//  381       }
//  382       p = nbr_table_next(rpl_parents, p);
//  383     }
//  384   }
//  385 
//  386   /* The default probing target is the least recently updated parent */
//  387   if(probing_target == NULL) {
//  388     p = nbr_table_head(rpl_parents);
//  389     while(p != NULL) {
//  390       if(p->dag == dag) {
//  391         if(probing_target == NULL
//  392             || p->last_tx_time < probing_target->last_tx_time) {
//  393           probing_target = p;
//  394         }
//  395       }
//  396       p = nbr_table_next(rpl_parents, p);
//  397     }
//  398   }
//  399 
//  400   return probing_target;
//  401 }
//  402 /*---------------------------------------------------------------------------*/
//  403 static void
//  404 handle_probing_timer(void *ptr)
//  405 {
//  406   rpl_instance_t *instance = (rpl_instance_t *)ptr;
//  407   rpl_parent_t *probing_target = RPL_PROBING_SELECT_FUNC(instance->current_dag);
//  408 
//  409   /* Perform probing */
//  410   if(probing_target != NULL && rpl_get_parent_ipaddr(probing_target) != NULL) {
//  411     PRINTF("RPL: probing %3u\n",
//  412         nbr_table_get_lladdr(rpl_parents, probing_target)->u8[7]);
//  413     /* Send probe, e.g. unicast DIO or DIS */
//  414     RPL_PROBING_SEND_FUNC(instance, rpl_get_parent_ipaddr(probing_target));
//  415   }
//  416 
//  417   /* Schedule next probing */
//  418   rpl_schedule_probing(instance);
//  419 
//  420 #if DEBUG
//  421   rpl_print_neighbor_list();
//  422 #endif
//  423 }
//  424 /*---------------------------------------------------------------------------*/
//  425 void
//  426 rpl_schedule_probing(rpl_instance_t *instance)
//  427 {
//  428   ctimer_set(&instance->probing_timer, RPL_PROBING_DELAY_FUNC(),
//  429                   handle_probing_timer, instance);
//  430 }
//  431 #endif /* RPL_WITH_PROBING */
//  432 /** @}*/
// 
//  37 bytes in section .bss
// 668 bytes in section .text
// 
// 668 bytes of CODE memory
//  37 bytes of DATA memory
//
//Errors: none
//Warnings: 1
