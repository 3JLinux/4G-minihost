///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:37
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\contikimac\contikimac.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\contikimac\contikimac.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\contikimac.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN csma_driver
        EXTERN ctimer_set
        EXTERN ctimer_stop
        EXTERN framer_802154
        EXTERN linkaddr_cmp
        EXTERN linkaddr_node_addr
        EXTERN list_item_next
        EXTERN mac_call_sent_callback
        EXTERN mac_sequence_is_duplicate
        EXTERN mac_sequence_register_seqno
        EXTERN nullradio_driver
        EXTERN packetbuf_addr
        EXTERN packetbuf_attr
        EXTERN packetbuf_datalen
        EXTERN packetbuf_hdrptr
        EXTERN packetbuf_holds_broadcast
        EXTERN packetbuf_set_addr
        EXTERN packetbuf_set_attr
        EXTERN packetbuf_totlen
        EXTERN phase_init
        EXTERN phase_update
        EXTERN phase_wait
        EXTERN queuebuf_to_packetbuf
        EXTERN queuebuf_update_from_packetbuf
        EXTERN rtimer_arch_now
        EXTERN rtimer_set
        EXTERN ubACKFlag
        EXTERN ubAckData
        EXTERN watchdog_periodic
        EXTERN xprintf

        PUBLIC contikimac_debug_print
        PUBLIC contikimac_driver
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\contikimac\contikimac.c
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
//   35  *         Implementation of the ContikiMAC power-saving radio duty cycling protocol
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  *         Niclas Finne <nfi@sics.se>
//   39  *         Joakim Eriksson <joakime@sics.se>
//   40  */
//   41 
//   42 #include "contiki-conf.h"
//   43 #include "dev/leds.h"
//   44 #include "dev/radio.h"
//   45 #include "dev/watchdog.h"
//   46 #include "lib/random.h"
//   47 #include "net/mac/mac-sequence.h"
//   48 #include "net/mac/contikimac/contikimac.h"
//   49 #include "net/netstack.h"
//   50 #include "net/rime/rime.h"
//   51 #include "sys/compower.h"
//   52 #include "sys/pt.h"
//   53 #include "sys/rtimer.h"
//   54 
//   55 
//   56 #include <string.h>
//   57 
//   58 /* TX/RX cycles are synchronized with neighbor wake periods */
//   59 #ifdef CONTIKIMAC_CONF_WITH_PHASE_OPTIMIZATION
//   60 #define WITH_PHASE_OPTIMIZATION      CONTIKIMAC_CONF_WITH_PHASE_OPTIMIZATION
//   61 #else /* CONTIKIMAC_CONF_WITH_PHASE_OPTIMIZATION */
//   62 #define WITH_PHASE_OPTIMIZATION      1
//   63 #endif /* CONTIKIMAC_CONF_WITH_PHASE_OPTIMIZATION */
//   64 /* More aggressive radio sleeping when channel is busy with other traffic */
//   65 #ifndef WITH_FAST_SLEEP
//   66 #define WITH_FAST_SLEEP              1
//   67 #endif
//   68 /* Radio does CSMA and autobackoff */
//   69 #ifndef RDC_CONF_HARDWARE_CSMA
//   70 #define RDC_CONF_HARDWARE_CSMA       0
//   71 #endif
//   72 /* Radio returns TX_OK/TX_NOACK after autoack wait */
//   73 #ifndef RDC_CONF_HARDWARE_ACK
//   74 #define RDC_CONF_HARDWARE_ACK        0
//   75 #endif
//   76 /* MCU can sleep during radio off */
//   77 #ifndef RDC_CONF_MCU_SLEEP
//   78 #define RDC_CONF_MCU_SLEEP           0
//   79 #endif
//   80 
//   81 #if NETSTACK_RDC_CHANNEL_CHECK_RATE >= 64
//   82 #undef WITH_PHASE_OPTIMIZATION
//   83 #define WITH_PHASE_OPTIMIZATION 0
//   84 #endif
//   85 
//   86 /* CYCLE_TIME for channel cca checks, in rtimer ticks. */
//   87 #ifdef CONTIKIMAC_CONF_CYCLE_TIME
//   88 #define CYCLE_TIME (CONTIKIMAC_CONF_CYCLE_TIME)
//   89 #else
//   90 //#define CYCLE_TIME (RTIMER_ARCH_SECOND / NETSTACK_RDC_CHANNEL_CHECK_RATE)
//   91 #define CYCLE_TIME (RTIMER_ARCH_SECOND / NETSTACK_RDC_CHANNEL_CHECK_RATE)
//   92 #endif
//   93 
//   94 /* CHANNEL_CHECK_RATE is enforced to be a power of two.
//   95  * If RTIMER_ARCH_SECOND is not also a power of two, there will be an inexact
//   96  * number of channel checks per second due to the truncation of CYCLE_TIME.
//   97  * This will degrade the effectiveness of phase optimization with neighbors that
//   98  * do not have the same truncation error.
//   99  * Define SYNC_CYCLE_STARTS to ensure an integral number of checks per second.
//  100  */
//  101 #if RTIMER_ARCH_SECOND & (RTIMER_ARCH_SECOND - 1)
//  102 #define SYNC_CYCLE_STARTS                    1
//  103 #endif
//  104 
//  105 /* Are we currently receiving a burst? */
//  106 static int we_are_receiving_burst = 0;
//  107 
//  108 /* INTER_PACKET_DEADLINE is the maximum time a receiver waits for the
//  109    next packet of a burst when FRAME_PENDING is set. */
//  110 //#define INTER_PACKET_DEADLINE               CLOCK_SECOND / 32
//  111 #define INTER_PACKET_DEADLINE               CLOCK_SECOND / 6  //50ms
//  112 
//  113 
//  114 /* ContikiMAC performs periodic channel checks. Each channel check
//  115    consists of two or more CCA checks. CCA_COUNT_MAX is the number of
//  116    CCAs to be done for each periodic channel check. The default is
//  117    two.*/
//  118 #ifdef CONTIKIMAC_CONF_CCA_COUNT_MAX
//  119 #define CCA_COUNT_MAX                      (CONTIKIMAC_CONF_CCA_COUNT_MAX)
//  120 #else
//  121 #define CCA_COUNT_MAX                      2
//  122 #endif
//  123 
//  124 /* Before starting a transmission, Contikimac checks the availability
//  125    of the channel with CCA_COUNT_MAX_TX consecutive CCAs */
//  126 #ifdef CONTIKIMAC_CONF_CCA_COUNT_MAX_TX
//  127 #define CCA_COUNT_MAX_TX                   (CONTIKIMAC_CONF_CCA_COUNT_MAX_TX)
//  128 #else
//  129 #define CCA_COUNT_MAX_TX                   6
//  130 #endif
//  131 
//  132 /* CCA_CHECK_TIME is the time it takes to perform a CCA check. */
//  133 /* Note this may be zero. AVRs have 7612 ticks/sec, but block until cca is done */
//  134 #ifdef CONTIKIMAC_CONF_CCA_CHECK_TIME
//  135 #define CCA_CHECK_TIME                     (CONTIKIMAC_CONF_CCA_CHECK_TIME)
//  136 #else
//  137 #define CCA_CHECK_TIME                     RTIMER_ARCH_SECOND / 8192
//  138 #endif
//  139 
//  140 /* CCA_SLEEP_TIME is the time between two successive CCA checks. */
//  141 /* Add 1 when rtimer ticks are coarse */
//  142 #if RTIMER_ARCH_SECOND > 8000
//  143 #define CCA_SLEEP_TIME                     RTIMER_ARCH_SECOND / 2000
//  144 #else
//  145 #define CCA_SLEEP_TIME                     (RTIMER_ARCH_SECOND / 2000) + 1
//  146 #endif
//  147 
//  148 /* CHECK_TIME is the total time it takes to perform CCA_COUNT_MAX
//  149    CCAs. */
//  150 #define CHECK_TIME                         (CCA_COUNT_MAX * (CCA_CHECK_TIME + CCA_SLEEP_TIME))
//  151 
//  152 /* CHECK_TIME_TX is the total time it takes to perform CCA_COUNT_MAX_TX
//  153    CCAs. */
//  154 #define CHECK_TIME_TX                      (CCA_COUNT_MAX_TX * (CCA_CHECK_TIME + CCA_SLEEP_TIME))
//  155 
//  156 /* LISTEN_TIME_AFTER_PACKET_DETECTED is the time that we keep checking
//  157    for activity after a potential packet has been detected by a CCA
//  158    check. */
//  159 //#define LISTEN_TIME_AFTER_PACKET_DETECTED  RTIMER_ARCH_SECOND / 80
//  160 #define LISTEN_TIME_AFTER_PACKET_DETECTED  RTIMER_ARCH_SECOND / 20  //50ms
//  161 
//  162 /* MAX_SILENCE_PERIODS is the maximum amount of periods (a period is
//  163    CCA_CHECK_TIME + CCA_SLEEP_TIME) that we allow to be silent before
//  164    we turn of the radio. */
//  165 #define MAX_SILENCE_PERIODS                5
//  166 
//  167 /* MAX_NONACTIVITY_PERIODS is the maximum number of periods we allow
//  168    the radio to be turned on without any packet being received, when
//  169    WITH_FAST_SLEEP is enabled. */
//  170 #define MAX_NONACTIVITY_PERIODS            10
//  171 
//  172 
//  173 
//  174 /* STROBE_TIME is the maximum amount of time a transmitted packet
//  175    should be repeatedly transmitted as part of a transmission. */
//  176 #define STROBE_TIME                        (CYCLE_TIME + 2 * CHECK_TIME)
//  177 
//  178 /* GUARD_TIME is the time before the expected phase of a neighbor that
//  179    a transmitted should begin transmitting packets. */
//  180 #define GUARD_TIME                         10 * CHECK_TIME + CHECK_TIME_TX
//  181 
//  182 /* INTER_PACKET_INTERVAL is the interval between two successive packet transmissions */
//  183 #ifdef CONTIKIMAC_CONF_INTER_PACKET_INTERVAL
//  184 #define INTER_PACKET_INTERVAL              CONTIKIMAC_CONF_INTER_PACKET_INTERVAL
//  185 #else
//  186 //#define INTER_PACKET_INTERVAL              RTIMER_ARCH_SECOND / 2500
//  187 #define INTER_PACKET_INTERVAL              RTIMER_ARCH_SECOND /20  //50ms 
//  188 #endif
//  189 
//  190 /* AFTER_ACK_DETECTECT_WAIT_TIME is the time to wait after a potential
//  191    ACK packet has been detected until we can read it out from the
//  192    radio. */
//  193 #ifdef CONTIKIMAC_CONF_AFTER_ACK_DETECTECT_WAIT_TIME
//  194 #define AFTER_ACK_DETECTECT_WAIT_TIME      CONTIKIMAC_CONF_AFTER_ACK_DETECTECT_WAIT_TIME
//  195 #else
//  196 //#define AFTER_ACK_DETECTECT_WAIT_TIME      RTIMER_ARCH_SECOND / 1500
//  197 #define AFTER_ACK_DETECTECT_WAIT_TIME      RTIMER_ARCH_SECOND / 25  //40ms
//  198 #endif
//  199 
//  200 /* MAX_PHASE_STROBE_TIME is the time that we transmit repeated packets
//  201    to a neighbor for which we have a phase lock. */
//  202 //#define MAX_PHASE_STROBE_TIME              RTIMER_ARCH_SECOND / 60
//  203 #define MAX_PHASE_STROBE_TIME              RTIMER_ARCH_SECOND / 25  //40ms
//  204 
//  205 #define ACK_LEN 3
//  206 
//  207 #include <stdio.h>
//  208 static struct rtimer rt;
//  209 static struct pt pt;
//  210 
//  211 static volatile uint8_t contikimac_is_on = 0;
//  212 static volatile uint8_t contikimac_keep_radio_on = 0;
//  213 
//  214 static volatile unsigned char we_are_sending = 0;
//  215 static volatile unsigned char radio_is_on = 0;
//  216 
//  217 extern void xprintf (			/* Put a formatted string to the default device */
//  218 	const char*	fmt,	/* Pointer to the format string */
//  219 	...					/* Optional arguments */
//  220 );
//  221 
//  222 
//  223 #define DEBUG 1
//  224 #if DEBUG
//  225 #include <stdio.h>
//  226 #define PRINTF(...) xprintf(__VA_ARGS__)
//  227 #define PRINTDEBUG(...) xprintf(__VA_ARGS__)
//  228 #else
//  229 #define PRINTF(...)
//  230 #define PRINTDEBUG(...)
//  231 #endif
//  232 
//  233 #if CONTIKIMAC_CONF_COMPOWER
//  234 static struct compower_activity current_packet;
//  235 #endif /* CONTIKIMAC_CONF_COMPOWER */
//  236 
//  237 #if WITH_PHASE_OPTIMIZATION
//  238 
//  239 #include "net/mac/phase.h"
//  240 
//  241 #endif /* WITH_PHASE_OPTIMIZATION */
//  242 
//  243 #define DEFAULT_STREAM_TIME (4 * CYCLE_TIME)
//  244 
//  245 #ifndef MIN
//  246 #define MIN(a, b) ((a) < (b)? (a) : (b))
//  247 #endif /* MIN */
//  248 
//  249 #if CONTIKIMAC_CONF_BROADCAST_RATE_LIMIT
//  250 static struct timer broadcast_rate_timer;
//  251 static int broadcast_rate_counter;
//  252 #endif /* CONTIKIMAC_CONF_BROADCAST_RATE_LIMIT */
//  253 
//  254 /*---------------------------------------------------------------------------*/
//  255 static void
//  256 on(void)
//  257 {
//  258   if(contikimac_is_on && radio_is_on == 0) {
//  259     radio_is_on = 1;
//  260     NETSTACK_RADIO.on();
//  261   }
//  262 }
//  263 /*---------------------------------------------------------------------------*/
//  264 static void
//  265 off(void)
//  266 {
//  267   if(contikimac_is_on && radio_is_on != 0 &&
//  268      contikimac_keep_radio_on == 0) {
//  269     radio_is_on = 0;
//  270     NETSTACK_RADIO.off();
//  271   }
//  272 }
//  273 /*---------------------------------------------------------------------------*/
//  274 static volatile rtimer_clock_t cycle_start;
//  275 static char powercycle(struct rtimer *t, void *ptr);
//  276 static void
//  277 schedule_powercycle(struct rtimer *t, rtimer_clock_t time)
//  278 {
//  279   int r;
//  280 
//  281   if(contikimac_is_on) {
//  282 
//  283     if(RTIMER_CLOCK_LT(RTIMER_TIME(t) + time, RTIMER_NOW() + 2)) {
//  284       time = RTIMER_NOW() - RTIMER_TIME(t) + 2;
//  285     }
//  286 
//  287     r = rtimer_set(t, RTIMER_TIME(t) + time, 1,
//  288                    (void (*)(struct rtimer *, void *))powercycle, NULL);
//  289     if(r != RTIMER_OK) {
//  290       PRINTF("schedule_powercycle: could not set rtimer\n");
//  291     }
//  292   }
//  293 }
//  294 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function schedule_powercycle_fixed
        THUMB
//  295 static void
//  296 schedule_powercycle_fixed(struct rtimer *t, rtimer_clock_t fixed_time)
//  297 {
schedule_powercycle_fixed:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  298   int r;
//  299 
//  300   if(contikimac_is_on) {
        LDR.W    R0,??DataTable33
        LDRB     R0,[R0, #+0]
        MOV      R5,R1
        CBZ.N    R0,??schedule_powercycle_fixed_0
//  301 
//  302     if(RTIMER_CLOCK_LT(fixed_time, RTIMER_NOW() + 1)) {
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        SUBS     R0,R5,R0
        SUBS     R0,R0,#+1
        BPL.N    ??schedule_powercycle_fixed_1
//  303       fixed_time = RTIMER_NOW() + 1;
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        ADDS     R5,R0,#+1
//  304     }
//  305 
//  306     r = rtimer_set(t, fixed_time, 1,
//  307                    (void (*)(struct rtimer *, void *))powercycle, NULL);
//  308     if(r != RTIMER_OK) {
??schedule_powercycle_fixed_1:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R2,#+1
        ADR.W    R3,powercycle
        MOV      R1,R5
        MOV      R0,R4
          CFI FunCall rtimer_set
        BL       rtimer_set
        CBZ.N    R0,??schedule_powercycle_fixed_0
//  309       PRINTF("schedule_powercycle: could not set rtimer\n");
        POP      {R1,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R0,?_1
          CFI FunCall xprintf
        B.W      xprintf
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  310     }
//  311   }
//  312 }
??schedule_powercycle_fixed_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//  313 /*---------------------------------------------------------------------------*/
//  314 static void
//  315 powercycle_turn_radio_off(void)
//  316 {
//  317 #if CONTIKIMAC_CONF_COMPOWER
//  318   uint8_t was_on = radio_is_on;
//  319 #endif /* CONTIKIMAC_CONF_COMPOWER */
//  320   
//  321   if(we_are_sending == 0 && we_are_receiving_burst == 0) {
//  322     off();
//  323 #if CONTIKIMAC_CONF_COMPOWER
//  324     if(was_on && !radio_is_on) {
//  325       compower_accumulate(&compower_idle_activity);
//  326     }
//  327 #endif /* CONTIKIMAC_CONF_COMPOWER */
//  328   }
//  329 }
//  330 /*---------------------------------------------------------------------------*/
//  331 static void
//  332 powercycle_turn_radio_on(void)
//  333 {
//  334   if(we_are_sending == 0 && we_are_receiving_burst == 0) {
//  335     on();
//  336   }
//  337 }
//  338 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function powercycle
        THUMB
//  339 static char
//  340 powercycle(struct rtimer *t, void *ptr)
//  341 {
powercycle:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  342 #if SYNC_CYCLE_STARTS
//  343   static volatile rtimer_clock_t sync_cycle_start;
//  344   static volatile uint8_t sync_cycle_phase;
//  345 #endif
//  346 
//  347   PT_BEGIN(&pt);
        LDR.W    R5,??DataTable33
        MOV      R4,R0
        LDRH     R0,[R5, #+12]
        CBZ.N    R0,??powercycle_0
        MOVW     R1,#+397
        SUBS     R0,R0,R1
        BEQ.N    ??powercycle_1
        SUBS     R0,R0,#+50
        BEQ.N    ??powercycle_2
        SUBS     R0,R0,#+28
        BEQ.N    ??powercycle_3
        B.N      ??powercycle_4
//  348 
//  349 #if SYNC_CYCLE_STARTS
//  350   sync_cycle_start = RTIMER_NOW();
??powercycle_0:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        STR      R0,[R5, #+24]
//  351 #else
//  352   cycle_start = RTIMER_NOW();
//  353 #endif
//  354 
//  355   while(1) {
//  356     static uint8_t packet_seen;
//  357     static rtimer_clock_t t0;
//  358     static uint8_t count;
//  359 
//  360 #if SYNC_CYCLE_STARTS
//  361     /* Compute cycle start when RTIMER_ARCH_SECOND is not a multiple
//  362        of CHANNEL_CHECK_RATE */
//  363     if(sync_cycle_phase++ == NETSTACK_RDC_CHANNEL_CHECK_RATE) {
??powercycle_3:
        LDRB     R0,[R5, #+4]
        ADDS     R1,R0,#+1
        STRB     R1,[R5, #+4]
        CMP      R0,#+4
        MOVW     R1,#+10000
        BNE.N    ??powercycle_5
//  364       sync_cycle_phase = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+4]
//  365       sync_cycle_start += RTIMER_ARCH_SECOND;
        LDR      R0,[R5, #+24]
        ADDS     R0,R1,R0
        STR      R0,[R5, #+24]
//  366       cycle_start = sync_cycle_start;
        LDR      R0,[R5, #+24]
        B.N      ??powercycle_6
//  367     } else {
//  368 #if (RTIMER_ARCH_SECOND * NETSTACK_RDC_CHANNEL_CHECK_RATE) > 65535
//  369       cycle_start = sync_cycle_start + ((unsigned long)(sync_cycle_phase*RTIMER_ARCH_SECOND))/NETSTACK_RDC_CHANNEL_CHECK_RATE;
//  370 #else
//  371       cycle_start = sync_cycle_start + (sync_cycle_phase*RTIMER_ARCH_SECOND)/NETSTACK_RDC_CHANNEL_CHECK_RATE;
??powercycle_5:
        LDR      R0,[R5, #+24]
        LDRB     R2,[R5, #+4]
        MULS     R1,R1,R2
        ASRS     R2,R1,#+1
        ADD      R1,R1,R2, LSR #+30
        ADD      R0,R0,R1, ASR #+2
??powercycle_6:
        STR      R0,[R5, #+20]
//  372 #endif
//  373     }
//  374 #else
//  375     cycle_start += CYCLE_TIME;
//  376 #endif
//  377 
//  378     packet_seen = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+5]
//  379 
//  380     for(count = 0; count < CCA_COUNT_MAX; ++count) {
        STRB     R0,[R5, #+6]
//  381       t0 = RTIMER_NOW();
??powercycle_7:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
//  382       if(we_are_sending == 0 && we_are_receiving_burst == 0) {
        LDR      R0,[R5, #+16]
        LDRB     R1,[R5, #+2]
        ORRS     R1,R0,R1
        BNE.N    ??powercycle_8
//  383         powercycle_turn_radio_on();
        LDRB     R1,[R5, #+2]
        ORRS     R0,R0,R1
        BNE.N    ??powercycle_9
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??powercycle_9
        LDRB     R0,[R5, #+3]
        CBNZ.N   R0,??powercycle_9
        MOVS     R0,#+1
        STRB     R0,[R5, #+3]
        LDR.W    R0,??DataTable33_1
        LDR      R0,[R0, #+32]
          CFI FunCall
        BLX      R0
//  384         /* Check if a packet is seen in the air. If so, we keep the
//  385              radio on for a while (LISTEN_TIME_AFTER_PACKET_DETECTED) to
//  386              be able to receive the packet. We also continuously check
//  387              the radio medium to make sure that we wasn't woken up by a
//  388              false positive: a spurious radio interference that was not
//  389              caused by an incoming packet. */
//  390         if(NETSTACK_RADIO.channel_clear() == 0) {
??powercycle_9:
        LDR.W    R6,??DataTable33_1
        LDR      R0,[R6, #+20]
          CFI FunCall
        BLX      R0
        CBNZ.N   R0,??powercycle_10
//  391           packet_seen = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+5]
//  392           break;
        B.N      ??powercycle_11
//  393         }
//  394         powercycle_turn_radio_off();
??powercycle_10:
        LDRB     R0,[R5, #+2]
        LDR      R1,[R5, #+16]
        ORRS     R0,R1,R0
        BNE.N    ??powercycle_8
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R5, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??powercycle_8
        LDRB     R0,[R5, #+1]
        CBNZ.N   R0,??powercycle_8
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+36]
          CFI FunCall
        BLX      R0
//  395       }
//  396       schedule_powercycle_fixed(t, RTIMER_NOW() + CCA_SLEEP_TIME);
??powercycle_8:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        ADDS     R1,R0,#+5
        MOV      R0,R4
          CFI FunCall schedule_powercycle_fixed
        BL       schedule_powercycle_fixed
//  397       PT_YIELD(&pt);
        MOVW     R0,#+397
        B.N      ??powercycle_12
//  398     }
??powercycle_1:
        LDRB     R0,[R5, #+6]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+6]
        UXTB     R0,R0
        CMP      R0,#+2
        BLT.N    ??powercycle_7
//  399 
//  400     if(packet_seen) {
        LDRB     R0,[R5, #+5]
        CMP      R0,#+0
        BEQ.N    ??powercycle_13
//  401       static rtimer_clock_t start;
//  402       static uint8_t silence_periods, periods;
//  403       start = RTIMER_NOW();
??powercycle_11:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        STR      R0,[R5, #+28]
//  404 
//  405       periods = silence_periods = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+7]
        STRB     R0,[R5, #+8]
//  406       while(we_are_sending == 0 && radio_is_on &&
//  407             RTIMER_CLOCK_LT(RTIMER_NOW(),
//  408                             (start + LISTEN_TIME_AFTER_PACKET_DETECTED))) {
??powercycle_2:
        LDRB     R0,[R5, #+2]
        CBNZ.N   R0,??powercycle_14
        LDRB     R0,[R5, #+3]
        CBZ.N    R0,??powercycle_14
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        LDR      R1,[R5, #+28]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+500
        BPL.N    ??powercycle_14
//  409 
//  410         /* Check for a number of consecutive periods of
//  411              non-activity. If we see two such periods, we turn the
//  412              radio off. Also, if a packet has been successfully
//  413              received (as indicated by the
//  414              NETSTACK_RADIO.pending_packet() function), we stop
//  415              snooping. */
//  416 #if !RDC_CONF_HARDWARE_CSMA
//  417        /* A cca cycle will disrupt rx on some radios, e.g. mc1322x, rf230 */
//  418        /*TODO: Modify those drivers to just return the internal RSSI when already in rx mode */
//  419         if(NETSTACK_RADIO.channel_clear()) {
        LDR.W    R6,??DataTable33_1
        LDR      R0,[R6, #+20]
          CFI FunCall
        BLX      R0
        CBZ.N    R0,??powercycle_15
//  420           ++silence_periods;
        LDRB     R0,[R5, #+7]
        ADDS     R0,R0,#+1
//  421         } else {
//  422           silence_periods = 0;
??powercycle_15:
        STRB     R0,[R5, #+7]
//  423         }
//  424 #endif
//  425 
//  426         ++periods;
        LDRB     R0,[R5, #+8]
//  427 
//  428         if(NETSTACK_RADIO.receiving_packet()) {
        LDR      R7,[R6, #+24]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+8]
          CFI FunCall
        BLX      R7
        CBZ.N    R0,??powercycle_16
//  429           silence_periods = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+7]
        B.N      ??powercycle_17
//  430         }
//  431         if(silence_periods > MAX_SILENCE_PERIODS) {
??powercycle_16:
        LDRB     R0,[R5, #+7]
        CMP      R0,#+6
        BGE.N    ??powercycle_18
//  432           powercycle_turn_radio_off();
//  433           break;
//  434         }
//  435         if(WITH_FAST_SLEEP &&
//  436             periods > MAX_NONACTIVITY_PERIODS &&
//  437             !(NETSTACK_RADIO.receiving_packet() ||
//  438               NETSTACK_RADIO.pending_packet())) {
??powercycle_17:
        LDRB     R0,[R5, #+8]
        CMP      R0,#+11
        BLT.N    ??powercycle_19
          CFI FunCall
        BLX      R7
        CMP      R0,#+0
        BNE.N    ??powercycle_19
        LDR      R0,[R6, #+28]
          CFI FunCall
        BLX      R0
        CMP      R0,#+0
        BNE.N    ??powercycle_19
//  439           powercycle_turn_radio_off();
??powercycle_18:
        LDRB     R0,[R5, #+2]
        LDR      R1,[R5, #+16]
        ORRS     R0,R1,R0
        BNE.N    ??powercycle_14
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R5, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??powercycle_14
        LDRB     R0,[R5, #+1]
        CBNZ.N   R0,??powercycle_14
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+36]
          CFI FunCall
        BLX      R0
//  440           break;
//  441         }
//  442         if(NETSTACK_RADIO.pending_packet()) {
//  443           break;
//  444         }
//  445 
//  446         schedule_powercycle(t, CCA_CHECK_TIME + CCA_SLEEP_TIME);
//  447         PT_YIELD(&pt);
//  448       }
//  449       if(radio_is_on) {
??powercycle_14:
        LDRB     R0,[R5, #+3]
        CBZ.N    R0,??powercycle_13
//  450         if(!(NETSTACK_RADIO.receiving_packet() ||
//  451              NETSTACK_RADIO.pending_packet()) ||
//  452              !RTIMER_CLOCK_LT(RTIMER_NOW(),
//  453                  (start + LISTEN_TIME_AFTER_PACKET_DETECTED))) {
        LDR.W    R6,??DataTable33_1
        LDR      R0,[R6, #+24]
          CFI FunCall
        BLX      R0
        CBNZ.N   R0,??powercycle_20
        LDR      R0,[R6, #+28]
          CFI FunCall
        BLX      R0
        CBZ.N    R0,??powercycle_21
??powercycle_20:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        LDR      R1,[R5, #+28]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+500
        BMI.N    ??powercycle_13
//  454           powercycle_turn_radio_off();
??powercycle_21:
        LDRB     R0,[R5, #+2]
        LDR      R1,[R5, #+16]
        ORRS     R0,R1,R0
        BNE.N    ??powercycle_13
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R5, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??powercycle_13
        LDRB     R0,[R5, #+1]
        CBNZ.N   R0,??powercycle_13
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+36]
          CFI FunCall
        BLX      R0
//  455         }
//  456       }
//  457     }
//  458 
//  459     if(RTIMER_CLOCK_LT(RTIMER_NOW() - cycle_start, CYCLE_TIME - CHECK_TIME * 4)) {
??powercycle_13:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        LDR      R1,[R5, #+20]
        SUBS     R0,R0,R1
        SUBW     R0,R0,#+2452
        CMP      R0,#+0
        BPL.W    ??powercycle_3
//  460       /* Schedule the next powercycle interrupt, or sleep the mcu
//  461 	 until then.  Sleeping will not exit from this interrupt, so
//  462 	 ensure an occasional wake cycle or foreground processing will
//  463 	 be blocked until a packet is detected */
//  464 #if RDC_CONF_MCU_SLEEP
//  465       static uint8_t sleepcycle;
//  466       if((sleepcycle++ < 16) && !we_are_sending && !radio_is_on) {
//  467         rtimer_arch_sleep(CYCLE_TIME - (RTIMER_NOW() - cycle_start));
//  468       } else {
//  469         sleepcycle = 0;
//  470         schedule_powercycle_fixed(t, CYCLE_TIME + cycle_start);
//  471         PT_YIELD(&pt);
//  472       }
//  473 #else
//  474       schedule_powercycle_fixed(t, CYCLE_TIME + cycle_start);
        LDR      R0,[R5, #+20]
        ADDW     R1,R0,#+2500
        MOV      R0,R4
          CFI FunCall schedule_powercycle_fixed
        BL       schedule_powercycle_fixed
//  475       PT_YIELD(&pt);
        MOVW     R0,#+475
??powercycle_12:
        STRH     R0,[R5, #+12]
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//  476 #endif
//  477     }
??powercycle_19:
        LDR      R0,[R6, #+28]
          CFI FunCall
        BLX      R0
        CMP      R0,#+0
        BNE.N    ??powercycle_14
        LDRB     R0,[R5, #+0]
        MOVS     R6,#+6
        CBZ.N    R0,??powercycle_22
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        LDR      R1,[R4, #+0]
        ADDS     R1,R1,#+6
        SUBS     R0,R1,R0
        SUBS     R0,R0,#+2
        BPL.N    ??powercycle_23
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        LDR      R1,[R4, #+0]
        SUBS     R0,R0,R1
        ADDS     R6,R0,#+2
??powercycle_23:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R2,#+1
        LDR      R0,[R4, #+0]
        LDR.W    R3,??DataTable33_2
        ADDS     R1,R6,R0
        MOV      R0,R4
          CFI FunCall rtimer_set
        BL       rtimer_set
        CBZ.N    R0,??powercycle_22
        ADR.W    R0,?_1
          CFI FunCall xprintf
        BL       xprintf
??powercycle_22:
        MOVW     R0,#+447
        B.N      ??powercycle_12
//  478   }
//  479 
//  480   PT_END(&pt);
??powercycle_4:
        MOVS     R0,#+0
        STRH     R0,[R5, #+12]
        MOVS     R0,#+3
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock1
//  481 }
//  482 /*---------------------------------------------------------------------------*/
//  483 static int
//  484 broadcast_rate_drop(void)
//  485 {
//  486 #if CONTIKIMAC_CONF_BROADCAST_RATE_LIMIT
//  487   if(!timer_expired(&broadcast_rate_timer)) {
//  488     broadcast_rate_counter++;
//  489     if(broadcast_rate_counter < CONTIKIMAC_CONF_BROADCAST_RATE_LIMIT) {
//  490       return 0;
//  491     } else {
//  492       return 1;
//  493     }
//  494   } else {
//  495     timer_set(&broadcast_rate_timer, CLOCK_SECOND);
//  496     broadcast_rate_counter = 0;
//  497     return 0;
//  498   }
//  499 #else /* CONTIKIMAC_CONF_BROADCAST_RATE_LIMIT */
//  500   return 0;
//  501 #endif /* CONTIKIMAC_CONF_BROADCAST_RATE_LIMIT */
//  502 }
//  503 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function send_packet
        THUMB
//  504 static int
//  505 send_packet(mac_callback_t mac_callback, void *mac_callback_ptr,
//  506 	    struct rdc_buf_list *buf_list,
//  507             int is_receiver_awake)
//  508 {
send_packet:
        PUSH     {R0-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+52
        SUB      SP,SP,#+36
          CFI CFA R13+88
//  509   rtimer_clock_t t0;
//  510   rtimer_clock_t encounter_time = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
//  511   int strobes;
//  512   uint8_t got_strobe_ack = 0;
//  513   int len;
//  514   uint8_t is_broadcast = 0;
//  515   uint8_t is_reliable = 0;
//  516   uint8_t is_known_receiver = 0;
        STR      R0,[SP, #+20]
        MOV      R10,R0
//  517   uint8_t collisions;
//  518   int transmit_len;
//  519   int ret;
//  520   uint8_t contikimac_was_on;
//  521   uint8_t seqno;
//  522   
//  523   /* Exit if RDC and radio were explicitly turned off */
//  524    if(!contikimac_is_on && !contikimac_keep_radio_on) {
        LDR.W    R5,??DataTable33
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        ITTT     EQ 
        LDRBEQ   R0,[R5, #+1]
        CMPEQ    R0,#+0
        ADREQ.W  R0,?_2
//  525     PRINTF("contikimac: radio is turned off\n");
        BEQ.N    ??send_packet_0
//  526     return MAC_TX_ERR_FATAL;
//  527   }
//  528  
//  529   if(packetbuf_totlen() == 0) {
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        CBNZ.N   R0,??send_packet_1
//  530     PRINTF("contikimac: send_packet data len 0\n");
        ADR.W    R0,?_3
        B.N      ??send_packet_0
//  531     return MAC_TX_ERR_FATAL;
//  532   }
//  533 
//  534 #if !NETSTACK_CONF_BRIDGE_MODE
//  535   /* If NETSTACK_CONF_BRIDGE_MODE is set, assume PACKETBUF_ADDR_SENDER is already set. */
//  536   packetbuf_set_addr(PACKETBUF_ADDR_SENDER, &linkaddr_node_addr);
??send_packet_1:
        LDR.W    R1,??DataTable33_3
        MOVS     R0,#+18
          CFI FunCall packetbuf_set_addr
        BL       packetbuf_set_addr
//  537 #endif
//  538   if(packetbuf_holds_broadcast()) {
          CFI FunCall packetbuf_holds_broadcast
        BL       packetbuf_holds_broadcast
        CBZ.N    R0,??send_packet_2
//  539     is_broadcast = 1;
        MOV      R10,#+1
//  540     PRINTDEBUG("contikimac: send broadcast\n");
        ADR.W    R0,?_4
          CFI FunCall xprintf
        BL       xprintf
//  541 
//  542     if(broadcast_rate_drop()) {
//  543       PRINTDEBUG("contikimac: MAC_TX_COLLISION\n");
//  544       return MAC_TX_COLLISION;
//  545     }
//  546   } else {
        B.N      ??send_packet_3
//  547 #if NETSTACK_CONF_WITH_IPV6
//  548     PRINTDEBUG("contikimac: send unicast to %02x%02x:%02x%02x:%02x%02x:%02x%02x\n",
//  549                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[0],
//  550                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[1],
//  551                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[2],
//  552                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[3],
//  553                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[4],
//  554                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[5],
//  555                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[6],
//  556                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[7]);
??send_packet_2:
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        STR      R0,[SP, #+28]
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R6,R0
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R7,R0
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R8,R0
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R9,R0
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R4,R0
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        MOV      R11,R0
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        LDR      R1,[SP, #+28]
        LDRB     R1,[R1, #+7]
        STR      R1,[SP, #+16]
        LDRB     R1,[R6, #+6]
        STR      R1,[SP, #+12]
        LDRB     R1,[R7, #+5]
        STR      R1,[SP, #+8]
        LDRB     R1,[R8, #+4]
        STR      R1,[SP, #+4]
        LDRB     R1,[R9, #+3]
        STR      R1,[SP, #+0]
        LDRB     R1,[R0, #+0]
        LDRB     R3,[R4, #+2]
        LDRB     R2,[R11, #+1]
        ADR.W    R0,?_5
          CFI FunCall xprintf
        BL       xprintf
//  557 #else /* NETSTACK_CONF_WITH_IPV6 */
//  558     PRINTDEBUG("contikimac: send unicast to %u.%u\n",
//  559                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[0],
//  560                packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[1]);
//  561 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  562   }
//  563   is_reliable = packetbuf_attr(PACKETBUF_ATTR_RELIABLE)
//  564 #if NETSTACK_CONF_WITH_RIME
//  565           || packetbuf_attr(PACKETBUF_ATTR_ERELIABLE)
//  566 #endif /* NETSTACK_CONF_WITH_RIME */
//  567       ;
??send_packet_3:
        MOVS     R0,#+13
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
//  568 
//  569   if(!packetbuf_attr(PACKETBUF_ATTR_IS_CREATED_AND_SECURED)) {
        MOVS     R0,#+12
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        CBNZ.N   R0,??send_packet_4
//  570     packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);
        MOVS     R1,#+1
        MOVS     R0,#+11
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  571     if(NETSTACK_FRAMER.create_and_secure() < 0) {
        LDR.W    R0,??DataTable33_4
        LDR      R0,[R0, #+8]
          CFI FunCall
        BLX      R0
        CMP      R0,#+0
        BPL.N    ??send_packet_4
//  572       PRINTF("contikimac: framer failed\n");
        ADR.W    R0,?_6
??send_packet_0:
          CFI FunCall xprintf
        BL       xprintf
//  573       return MAC_TX_ERR_FATAL;
        MOVS     R0,#+5
        B.N      ?Subroutine0
//  574     }
//  575   }
//  576   
//  577   transmit_len = packetbuf_totlen();
??send_packet_4:
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        STR      R0,[SP, #+8]
//  578   NETSTACK_RADIO.prepare(packetbuf_hdrptr(), transmit_len);
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
        LDR.W    R6,??DataTable33_1
        LDR      R1,[SP, #+8]
        LDR      R2,[R6, #+4]
        UXTH     R1,R1
          CFI FunCall
        BLX      R2
//  579   
//  580   if(!is_broadcast && !is_receiver_awake) {
        CMP      R10,#+0
        ITT      EQ 
        LDREQ    R0,[SP, #+48]
        CMPEQ    R0,#+0
        BNE.N    ??send_packet_5
//  581 #if WITH_PHASE_OPTIMIZATION
//  582     ret = phase_wait(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
//  583                      CYCLE_TIME, GUARD_TIME,
//  584                      mac_callback, mac_callback_ptr, buf_list);
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        LDR      R1,[SP, #+44]
        LDR      R3,[SP, #+36]
        STR      R1,[SP, #+4]
        MOVS     R2,#+156
        LDR      R1,[SP, #+40]
        STR      R1,[SP, #+0]
        MOVW     R1,#+2500
          CFI FunCall phase_wait
        BL       phase_wait
//  585     if(ret == PHASE_DEFERRED) {
        CMP      R0,#+2
        IT       EQ 
        MOVEQ    R0,#+3
//  586       return MAC_TX_DEFERRED;
        BEQ.W    ??send_packet_6
//  587     }
//  588     if(ret != PHASE_UNKNOWN) {
        CBZ.N    R0,??send_packet_5
//  589       is_known_receiver = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
//  590     }
//  591 #endif /* WITH_PHASE_OPTIMIZATION */ 
//  592   }
//  593   
//  594 
//  595 
//  596   /* By setting we_are_sending to one, we ensure that the rtimer
//  597      powercycle interrupt do not interfere with us sending the packet. */
//  598   we_are_sending = 1;
??send_packet_5:
        MOVS     R0,#+1
        STRB     R0,[R5, #+2]
//  599 
//  600   /* If we have a pending packet in the radio, we should not send now,
//  601      because we will trash the received packet. Instead, we signal
//  602      that we have a collision, which lets the packet be received. This
//  603      packet will be retransmitted later by the MAC protocol
//  604      instread. */
//  605   if(NETSTACK_RADIO.receiving_packet() || NETSTACK_RADIO.pending_packet()) {
        LDR      R7,[R6, #+28]
        LDR      R8,[R6, #+24]
          CFI FunCall
        BLX      R8
        CBNZ.N   R0,??send_packet_7
          CFI FunCall
        BLX      R7
        CBZ.N    R0,??send_packet_8
//  606     we_are_sending = 0;
??send_packet_7:
        MOVS     R0,#+0
        STRB     R0,[R5, #+2]
//  607     PRINTF("contikimac: collision receiving %d, pending %d\n",
//  608            NETSTACK_RADIO.receiving_packet(), NETSTACK_RADIO.pending_packet());
          CFI FunCall
        BLX      R7
        MOV      R4,R0
          CFI FunCall
        BLX      R8
        MOV      R1,R0
        MOV      R2,R4
        ADR.W    R0,?_7
          CFI FunCall xprintf
        BL       xprintf
//  609     return MAC_TX_COLLISION;
        B.N      ??send_packet_9
//  610   }
//  611   
//  612   /* Switch off the radio to ensure that we didn't start sending while
//  613      the radio was doing a channel check. */
//  614   off();
??send_packet_8:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R5, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??send_packet_10
        LDRB     R0,[R5, #+1]
        CBNZ.N   R0,??send_packet_10
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+36]
          CFI FunCall
        BLX      R0
//  615 
//  616 
//  617   strobes = 0;
//  618 
//  619   /* Send a train of strobes until the receiver answers with an ACK. */
//  620   collisions = 0;
//  621 
//  622   got_strobe_ack = 0;
//  623 
//  624   /* Set contikimac_is_on to one to allow the on() and off() functions
//  625      to control the radio. We restore the old value of
//  626      contikimac_is_on when we are done. */
//  627   contikimac_was_on = contikimac_is_on;
??send_packet_10:
        LDRB     R0,[R5, #+0]
        STRB     R0,[SP, #+4]
        MOVS     R7,#+0
//  628   contikimac_is_on = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
        MOV      R9,#+0
//  629 
//  630 #if !RDC_CONF_HARDWARE_CSMA
//  631     /* Check if there are any transmissions by others. */
//  632     /* TODO: why does this give collisions before sending with the mc1322x? */
//  633   if(is_receiver_awake == 0) {
        LDR      R0,[SP, #+48]
        CMP      R0,#+0
        MOV      R8,R7
        BNE.N    ??send_packet_11
//  634     int i;
//  635     for(i = 0; i < CCA_COUNT_MAX_TX; ++i) {
        LDR      R0,[R6, #+20]
        STR      R0,[SP, #+0]
        MOV      R11,#+6
//  636       t0 = RTIMER_NOW();
??send_packet_12:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        MOV      R4,R0
//  637       on();
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??send_packet_13
        LDRB     R0,[R5, #+3]
        CBNZ.N   R0,??send_packet_13
        MOVS     R0,#+1
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+32]
          CFI FunCall
        BLX      R0
//  638 #if CCA_CHECK_TIME > 0
//  639       while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_CHECK_TIME)) { }
??send_packet_13:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        SUBS     R0,R0,R4
        SUBS     R0,R0,#+1
        BMI.N    ??send_packet_13
//  640 #endif
//  641       if(NETSTACK_RADIO.channel_clear() == 0) {
        LDR      R0,[SP, #+0]
          CFI FunCall
        BLX      R0
        CMP      R0,#+0
        LDRB     R0,[R5, #+0]
        BNE.N    ??send_packet_14
//  642         collisions++;
//  643         off();
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R5, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??send_packet_15
        LDRB     R0,[R5, #+1]
        CBNZ.N   R0,??send_packet_15
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+36]
          CFI FunCall
        BLX      R0
//  644         break;
//  645       }
//  646       off();
//  647       t0 = RTIMER_NOW();
//  648       while(RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + CCA_SLEEP_TIME)) { }
//  649     }
//  650   }
//  651 
//  652   if(collisions > 0) {
//  653     we_are_sending = 0;
??send_packet_15:
        STRB     R7,[R5, #+2]
//  654     off();
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R5, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??send_packet_16
        LDRB     R0,[R5, #+1]
        CBNZ.N   R0,??send_packet_16
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+36]
          CFI FunCall
        BLX      R0
//  655     PRINTF("contikimac: collisions before sending\n");
??send_packet_16:
        ADR.W    R0,?_8
          CFI FunCall xprintf
        BL       xprintf
//  656     contikimac_is_on = contikimac_was_on;
        LDRB     R0,[SP, #+4]
        STRB     R0,[R5, #+0]
//  657     return MAC_TX_COLLISION;
??send_packet_9:
        MOVS     R0,#+1
//  658   }
        B.N      ?Subroutine0
??send_packet_14:
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R5, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??send_packet_17
        LDRB     R0,[R5, #+1]
        CBNZ.N   R0,??send_packet_17
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+36]
          CFI FunCall
        BLX      R0
??send_packet_17:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        MOV      R4,R0
??send_packet_18:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        SUBS     R0,R0,R4
        SUBS     R0,R0,#+5
        BMI.N    ??send_packet_18
        SUBS     R11,R11,#+1
        BNE.N    ??send_packet_12
//  659 #endif /* RDC_CONF_HARDWARE_CSMA */
//  660 
//  661 #if !RDC_CONF_HARDWARE_ACK
//  662   if(!is_broadcast) {
??send_packet_11:
        CMP      R10,#+0
        BNE.N    ??send_packet_19
//  663     /* Turn radio on to receive expected unicast ack.  Not necessary
//  664        with hardware ack detection, and may trigger an unnecessary cca
//  665        or rx cycle */
//  666      on();
        LDRB     R0,[R5, #+0]
        CBZ.N    R0,??send_packet_19
        LDRB     R0,[R5, #+3]
        CBNZ.N   R0,??send_packet_19
        MOVS     R0,#+1
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+32]
          CFI FunCall
        BLX      R0
//  667   }
//  668 #endif
//  669   PRINTF("contikimac: send_packet1\n");
??send_packet_19:
        ADR.W    R0,?_9
          CFI FunCall xprintf
        BL       xprintf
//  670   watchdog_periodic();
          CFI FunCall watchdog_periodic
        BL       watchdog_periodic
//  671   t0 = RTIMER_NOW();
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        MOV      R4,R0
//  672   seqno = packetbuf_attr(PACKETBUF_ATTR_MAC_SEQNO);
        MOVS     R0,#+10
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STRB     R0,[SP, #+0]
//  673   for(strobes = 0, collisions = 0;
        LDR      R1,[SP, #+20]
        LDR      R0,[SP, #+48]
        LDR.W    R11,??DataTable33_5
        ORRS     R0,R1,R0
        STR      R0,[SP, #+28]
        B.N      ??send_packet_20
//  674       got_strobe_ack == 0 && collisions == 0 &&
//  675       RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + STROBE_TIME); strobes++) {
//  676 
//  677     watchdog_periodic();
//  678 
//  679     if(!is_broadcast && (is_receiver_awake || is_known_receiver) &&
//  680        !RTIMER_CLOCK_LT(RTIMER_NOW(), t0 + MAX_PHASE_STROBE_TIME)) {
//  681       PRINTF("miss to %d\n", packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[0]);
//  682       break;
//  683     }
//  684 
//  685     len = 0;
//  686 
//  687     {
//  688       rtimer_clock_t wt;
//  689       rtimer_clock_t txtime;
//  690       int ret;
//  691 
//  692       extern volatile uint8_t ubAckData[3];
//  693 	  extern volatile uint8_t  ubACKFlag;
//  694 	  ubACKFlag = 0;
//  695 	  ubAckData[0] = 0;
//  696 	  ubAckData[1] = 0;
//  697 	  ubAckData[2] = 0;
//  698 	  
//  699       txtime = RTIMER_NOW();
//  700       ret = NETSTACK_RADIO.transmit(transmit_len);
//  701 	  //PRINTF("contikimac: wait 1 ack\n");
//  702 
//  703 #if RDC_CONF_HARDWARE_ACK
//  704      /* For radios that block in the transmit routine and detect the
//  705 	ACK in hardware */
//  706       if(ret == RADIO_TX_OK) {
//  707         if(!is_broadcast) {
//  708           got_strobe_ack = 1;
//  709           encounter_time = txtime;
//  710           break;
//  711         }
//  712       } else if (ret == RADIO_TX_NOACK) {
//  713       } else if (ret == RADIO_TX_COLLISION) {
//  714           PRINTF("contikimac: collisions while sending\n");
//  715           collisions++;
//  716       }
//  717       wt = RTIMER_NOW();
//  718       while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)) { }
//  719 #else /* RDC_CONF_HARDWARE_ACK */
//  720      /* Wait for the ACK packet */
//  721      #if 0
//  722       wt = RTIMER_NOW();
//  723       while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)) { }
//  724 
//  725       if(!is_broadcast && (NETSTACK_RADIO.receiving_packet() ||
//  726                            NETSTACK_RADIO.pending_packet() ||
//  727                            NETSTACK_RADIO.channel_clear() == 0)) {
//  728         uint8_t ackbuf[ACK_LEN];
//  729         wt = RTIMER_NOW();
//  730         while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + AFTER_ACK_DETECTECT_WAIT_TIME)) { }
//  731 
//  732         len = NETSTACK_RADIO.read(ackbuf, ACK_LEN);
//  733         if(len == ACK_LEN && seqno == ackbuf[ACK_LEN - 1]) {
//  734           got_strobe_ack = 1;
//  735           encounter_time = txtime;
//  736           break;
//  737         } else {
//  738           PRINTF("contikimac: collisions while sending\n");
//  739           collisions++;
//  740         }
//  741       }
//  742       #else
//  743 
//  744       if(!is_broadcast) {
??send_packet_21:
        ADD      R9,R9,#+1
??send_packet_20:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        SUBS     R0,R0,R4
        SUBW     R0,R0,#+2524
        CMP      R0,#+0
        BPL.N    ??send_packet_22
          CFI FunCall watchdog_periodic
        BL       watchdog_periodic
        CMP      R10,#+0
        BNE.N    ??send_packet_23
        LDR      R0,[SP, #+28]
        CBZ.N    R0,??send_packet_23
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        SUBS     R0,R0,R4
        SUBS     R0,R0,#+400
        BMI.N    ??send_packet_23
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        LDRB     R1,[R0, #+0]
        ADR.W    R0,?_10
          CFI FunCall xprintf
        BL       xprintf
        B.N      ??send_packet_22
??send_packet_23:
        LDR.W    R1,??DataTable33_6
        STRB     R7,[R1, #+0]
        STRB     R7,[R11, #+0]
        STRB     R7,[R11, #+1]
        STRB     R7,[R11, #+2]
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        STR      R0,[SP, #+16]
        LDR      R0,[SP, #+8]
        LDR      R1,[R6, #+8]
        UXTH     R0,R0
          CFI FunCall
        BLX      R1
        CMP      R10,#+0
        BNE.N    ??send_packet_21
//  745         uint8_t ackbuf[ACK_LEN];
//  746      	wt = RTIMER_NOW();
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        STR      R0,[SP, #+12]
//  747         while(RTIMER_CLOCK_LT(RTIMER_NOW(), wt + INTER_PACKET_INTERVAL)&& ubACKFlag!=3) { }
??send_packet_24:
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        LDR      R1,[SP, #+12]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+500
        BPL.N    ??send_packet_25
        LDR.W    R0,??DataTable33_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??send_packet_24
//  748         
//  749 		if ( ubACKFlag == 3)
??send_packet_25:
        LDR.W    R0,??DataTable33_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??send_packet_21
//  750 		{
//  751   		  PRINTF("contikimac: wait data ack ok\n");
        ADR.W    R0,?_11
          CFI FunCall xprintf
        BL       xprintf
//  752           len = ubACKFlag;
        LDR.W    R0,??DataTable33_6
        LDRB     R0,[R0, #+0]
//  753           ackbuf[0] = ubAckData[0];
        LDRB     R1,[R11, #+0]
//  754           ackbuf[1] = ubAckData[1];
        LDRB     R1,[R11, #+1]
//  755           ackbuf[2] = ubAckData[2];
        LDRB     R1,[R11, #+2]
//  756           if(len == ACK_LEN && seqno == ackbuf[ACK_LEN - 1]) {
        CMP      R0,#+3
        ITT      EQ 
        LDRBEQ   R0,[SP, #+0]
        CMPEQ    R0,R1
        BNE.N    ??send_packet_26
//  757             got_strobe_ack = 1;
//  758             encounter_time = txtime;
        LDR      R0,[SP, #+16]
        STR      R0,[SP, #+24]
        MOV      R8,#+1
//  759             PRINTF("contikimac: ack ok\n");
        ADR.W    R0,?_12
          CFI FunCall xprintf
        BL       xprintf
//  760             break;
        B.N      ??send_packet_22
//  761           } else {
//  762             PRINTF("contikimac: collisions while sending\n");
??send_packet_26:
        ADR.W    R0,?_13
          CFI FunCall xprintf
        BL       xprintf
//  763             collisions++;
        MOVS     R7,#+1
        ADD      R9,R9,#+1
//  764           }
//  765         }
//  766       }      
//  767       #endif
//  768 #endif /* RDC_CONF_HARDWARE_ACK */
//  769     }
//  770   }
//  771 
//  772   off();
??send_packet_22:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R5, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??send_packet_27
        LDRB     R0,[R5, #+1]
        CBNZ.N   R0,??send_packet_27
        STRB     R0,[R5, #+3]
        LDR      R0,[R6, #+36]
          CFI FunCall
        BLX      R0
//  773 
//  774   PRINTF("contikimac: send (strobes=%u, len=%u, %s, %s), done\n", strobes,
//  775          packetbuf_totlen(),
//  776          got_strobe_ack ? "ack" : "no ack",
//  777          collisions ? "collision" : "no collision");
??send_packet_27:
        CMP      R7,#+0
        ITE      NE 
        ADRNE.W  R6,?_17
        ADREQ.W  R6,?_18
        CMP      R8,#+0
        ITE      NE 
        ADRNE.N  R4,??DataTable32  ;; "ack"
        ADREQ.W  R4,?_16
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        MOV      R2,R0
        STR      R6,[SP, #+0]
        MOV      R3,R4
        MOV      R1,R9
        ADR.W    R0,?_14
          CFI FunCall xprintf
        BL       xprintf
//  778 
//  779 #if CONTIKIMAC_CONF_COMPOWER
//  780   /* Accumulate the power consumption for the packet transmission. */
//  781   compower_accumulate(&current_packet);
//  782 
//  783   /* Convert the accumulated power consumption for the transmitted
//  784      packet to packet attributes so that the higher levels can keep
//  785      track of the amount of energy spent on transmitting the
//  786      packet. */
//  787   compower_attrconv(&current_packet);
//  788 
//  789   /* Clear the accumulated power consumption so that it is ready for
//  790      the next packet. */
//  791   compower_clear(&current_packet);
//  792 #endif /* CONTIKIMAC_CONF_COMPOWER */
//  793 
//  794   contikimac_is_on = contikimac_was_on;
        LDRB     R0,[SP, #+4]
        STRB     R0,[R5, #+0]
//  795   we_are_sending = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+2]
//  796 
//  797   /* Determine the return value that we will return from the
//  798      function. We must pass this value to the phase module before we
//  799      return from the function.  */
//  800   if(collisions > 0) {
        CBZ.N    R7,??send_packet_28
//  801     ret = MAC_TX_COLLISION;
        MOVS     R4,#+1
        B.N      ??send_packet_29
//  802   } else if(!is_broadcast && !got_strobe_ack) {
??send_packet_28:
        ORRS     R0,R8,R10
        ITE      EQ 
        MOVEQ    R4,#+2
        MOVNE    R4,#+0
//  803     ret = MAC_TX_NOACK;
//  804   } else {
//  805     ret = MAC_TX_OK;
//  806   }
//  807 
//  808 #if WITH_PHASE_OPTIMIZATION
//  809   if(is_known_receiver && got_strobe_ack) {
??send_packet_29:
        LDR      R0,[SP, #+20]
        UXTB     R0,R0
        TST      R0,R8
        BEQ.N    ??send_packet_30
//  810     PRINTF("no miss %d wake-ups %d\n",
//  811 	   packetbuf_addr(PACKETBUF_ADDR_RECEIVER)->u8[0],
//  812            strobes);
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        LDRB     R1,[R0, #+0]
        ADR.W    R0,?_19
        MOV      R2,R9
          CFI FunCall xprintf
        BL       xprintf
//  813   }
//  814 
//  815   if(!is_broadcast) {
??send_packet_30:
        CMP      R10,#+0
        BNE.N    ??send_packet_31
//  816     if(collisions == 0 && is_receiver_awake == 0) {
        LDR      R0,[SP, #+48]
        ORRS     R0,R0,R7
        BNE.N    ??send_packet_31
//  817       phase_update(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
//  818 		   encounter_time, ret);
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        LDR      R1,[SP, #+24]
        MOV      R2,R4
          CFI FunCall phase_update
        BL       phase_update
//  819     }
//  820   }
//  821 #endif /* WITH_PHASE_OPTIMIZATION */
//  822 
//  823   return ret;
??send_packet_31:
        MOV      R0,R4
          CFI EndBlock cfiBlock2
??send_packet_6:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  824 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls send_packet
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
?Subroutine0:
        ADD      SP,SP,#+52
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock3
//  825 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function qsend_packet
        THUMB
//  826 static void
//  827 qsend_packet(mac_callback_t sent, void *ptr)
//  828 {
qsend_packet:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  829   int ret = send_packet(sent, ptr, NULL, 0);
        MOVS     R3,#+0
        MOVS     R2,#+0
          CFI FunCall send_packet
        BL       send_packet
//  830   if(ret != MAC_TX_DEFERRED) {
        CMP      R0,#+3
        BEQ.N    ??qsend_packet_0
//  831     mac_call_sent_callback(sent, ptr, ret, 1);
        MOV      R2,R0
        MOV      R1,R5
        MOV      R0,R4
        ADD      SP,SP,#+4
          CFI CFA R13+12
        POP      {R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R3,#+1
          CFI FunCall mac_call_sent_callback
        B.W      mac_call_sent_callback
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  832   }
//  833 }
??qsend_packet_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock4
//  834 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function qsend_list
        THUMB
//  835 static void
//  836 qsend_list(mac_callback_t sent, void *ptr, struct rdc_buf_list *buf_list)
//  837 {
qsend_list:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R7,R2
        MOV      R8,R0
        MOV      R9,R1
//  838   struct rdc_buf_list *curr;
//  839   struct rdc_buf_list *next;
//  840   int ret;
//  841   int is_receiver_awake;
//  842   
//  843   if(buf_list == NULL) {
        BEQ.N    ??qsend_list_0
//  844     return;
//  845   }
//  846   /* Do not send during reception of a burst */
//  847   if(we_are_receiving_burst) {
        LDR.N    R0,??DataTable33
        LDR      R0,[R0, #+16]
        CBZ.N    R0,??qsend_list_1
//  848     /* Prepare the packetbuf for callback */
//  849     queuebuf_to_packetbuf(buf_list->buf);
        LDR      R0,[R7, #+4]
          CFI FunCall queuebuf_to_packetbuf
        BL       queuebuf_to_packetbuf
//  850     /* Return COLLISION so the MAC may try again later */
//  851     mac_call_sent_callback(sent, ptr, MAC_TX_COLLISION, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOV      R1,R9
        MOV      R0,R8
          CFI FunCall mac_call_sent_callback
        BL       mac_call_sent_callback
//  852     PRINTF("MAC_TX_COLLISION, again\n");
        POP      {R1,R4-R9,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R0,?_20
          CFI FunCall xprintf
        B.W      xprintf
          CFI R4 Frame(CFA, -28)
          CFI R5 Frame(CFA, -24)
          CFI R6 Frame(CFA, -20)
          CFI R7 Frame(CFA, -16)
          CFI R8 Frame(CFA, -12)
          CFI R9 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+32
//  853     return;
//  854   }
//  855   
//  856   /* Create and secure frames in advance */
//  857   curr = buf_list;
??qsend_list_1:
        MOV      R6,R7
        LDR.N    R4,??DataTable33_4
//  858   do {
//  859     next = list_item_next(curr);
??qsend_list_2:
        MOV      R0,R6
          CFI FunCall list_item_next
        BL       list_item_next
        MOV      R5,R0
//  860     queuebuf_to_packetbuf(curr->buf);
        LDR      R0,[R6, #+4]
          CFI FunCall queuebuf_to_packetbuf
        BL       queuebuf_to_packetbuf
//  861     if(!packetbuf_attr(PACKETBUF_ATTR_IS_CREATED_AND_SECURED)) {
        MOVS     R0,#+12
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        CBNZ.N   R0,??qsend_list_3
//  862       /* create and secure this frame */
//  863       if(next != NULL) {
        CBZ.N    R5,??qsend_list_4
//  864         packetbuf_set_attr(PACKETBUF_ATTR_PENDING, 1);
        MOVS     R1,#+1
        MOVS     R0,#+16
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  865       }
//  866       packetbuf_set_attr(PACKETBUF_ATTR_MAC_ACK, 1);
??qsend_list_4:
        MOVS     R1,#+1
        MOVS     R0,#+11
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  867       if(NETSTACK_FRAMER.create_and_secure() < 0) {
        LDR      R0,[R4, #+8]
          CFI FunCall
        BLX      R0
        CMP      R0,#+0
        BPL.N    ??qsend_list_5
//  868         PRINTF("contikimac: framer failed\n");
        ADR.W    R0,?_6
          CFI FunCall xprintf
        BL       xprintf
//  869         mac_call_sent_callback(sent, ptr, MAC_TX_ERR_FATAL, 1);
        MOV      R1,R9
        MOV      R0,R8
        ADD      SP,SP,#+4
          CFI CFA R13+28
        POP      {R4-R9,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R3,#+1
        MOVS     R2,#+5
          CFI FunCall mac_call_sent_callback
        B.W      mac_call_sent_callback
          CFI R4 Frame(CFA, -28)
          CFI R5 Frame(CFA, -24)
          CFI R6 Frame(CFA, -20)
          CFI R7 Frame(CFA, -16)
          CFI R8 Frame(CFA, -12)
          CFI R9 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+32
//  870         return;
//  871       }
//  872       
//  873       packetbuf_set_attr(PACKETBUF_ATTR_IS_CREATED_AND_SECURED, 1);
??qsend_list_5:
        MOVS     R1,#+1
        MOVS     R0,#+12
          CFI FunCall packetbuf_set_attr
        BL       packetbuf_set_attr
//  874       queuebuf_update_from_packetbuf(curr->buf);
        LDR      R0,[R6, #+4]
          CFI FunCall queuebuf_update_from_packetbuf
        BL       queuebuf_update_from_packetbuf
//  875     }
//  876     curr = next;
//  877   } while(next != NULL);
??qsend_list_3:
        CMP      R5,#+0
        MOV      R6,R5
        BNE.N    ??qsend_list_2
//  878   
//  879   /* The receiver needs to be awoken before we send */
//  880   is_receiver_awake = 0;
//  881   curr = buf_list;
        MOV      R6,R7
        MOVS     R4,#+0
        ADR.W    R7,?_21
//  882   do { /* A loop sending a burst of packets from buf_list */
//  883     next = list_item_next(curr);
??qsend_list_6:
        MOV      R0,R6
          CFI FunCall list_item_next
        BL       list_item_next
        MOV      R5,R0
//  884 
//  885     /* Prepare the packetbuf */
//  886     queuebuf_to_packetbuf(curr->buf);
        LDR      R0,[R6, #+4]
          CFI FunCall queuebuf_to_packetbuf
        BL       queuebuf_to_packetbuf
//  887     
//  888     /* Send the current packet */
//  889     PRINTF("qsend_list\n");
        MOV      R0,R7
          CFI FunCall xprintf
        BL       xprintf
//  890     ret = send_packet(sent, ptr, curr, is_receiver_awake);
        MOV      R3,R4
        MOV      R2,R6
        MOV      R1,R9
        MOV      R0,R8
          CFI FunCall send_packet
        BL       send_packet
        MOV      R6,R0
//  891     if(ret != MAC_TX_DEFERRED) {
        CMP      R6,#+3
        BEQ.N    ??qsend_list_0
//  892       mac_call_sent_callback(sent, ptr, ret, 1);
        MOVS     R3,#+1
        MOV      R2,R6
        MOV      R1,R9
        MOV      R0,R8
          CFI FunCall mac_call_sent_callback
        BL       mac_call_sent_callback
//  893       //PRINTF("qsend_list MAC_TX_DEFERRED\n");
//  894     }
//  895 
//  896     if(ret == MAC_TX_OK) {
        CBNZ.N   R6,??qsend_list_0
//  897       if(next != NULL) {
        CMP      R5,#+0
        BEQ.N    ??qsend_list_0
//  898         /* We're in a burst, no need to wake the receiver up again */
//  899         is_receiver_awake = 1;
        MOVS     R4,#+1
//  900         curr = next;
        MOV      R6,R5
        MOVS     R0,#+16
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        CMP      R0,#+0
        BNE.N    ??qsend_list_6
//  901         //PRINTF("qsend_list MAC_TX_OK, next!=null\n");
//  902       }
//  903       //PRINTF("qsend_list MAC_TX_OK, next=null\n");
//  904     } else {
//  905       /* The transmission failed, we stop the burst */
//  906       next = NULL;
//  907       //PRINTF("qsend_list failed\n");
//  908     }
//  909   } while((next != NULL) && packetbuf_attr(PACKETBUF_ATTR_PENDING));
//  910   //PRINTF("qsend_list exit\n");
//  911 }
??qsend_list_0:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock5
//  912 /*---------------------------------------------------------------------------*/
//  913 /* Timer callback triggered when receiving a burst, after having
//  914    waited for a next packet for a too long time. Turns the radio off
//  915    and leaves burst reception mode */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function recv_burst_off
        THUMB
//  916 static void
//  917 recv_burst_off(void *ptr)
//  918 {
recv_burst_off:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  919   off();
        LDR.N    R4,??DataTable33
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R4, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??recv_burst_off_0
        LDRB     R0,[R4, #+1]
        CBNZ.N   R0,??recv_burst_off_0
        STRB     R0,[R4, #+3]
        LDR.N    R0,??DataTable33_1
        LDR      R0,[R0, #+36]
          CFI FunCall
        BLX      R0
//  920   we_are_receiving_burst = 0;
??recv_burst_off_0:
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
//  921 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  922 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function input_packet
        THUMB
//  923 static void
//  924 input_packet(void)
//  925 {
input_packet:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  926   static struct ctimer ct;
//  927   if(!we_are_receiving_burst) {
        LDR.N    R4,??DataTable33
        LDR      R0,[R4, #+16]
        CBNZ.N   R0,??input_packet_0
//  928     off();
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R4, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??input_packet_0
        LDRB     R0,[R4, #+1]
        CBNZ.N   R0,??input_packet_0
        STRB     R0,[R4, #+3]
        LDR.N    R0,??DataTable33_1
        LDR      R0,[R0, #+36]
          CFI FunCall
        BLX      R0
//  929   }
//  930 
//  931   /*  printf("cycle_start 0x%02x 0x%02x\n", cycle_start, cycle_start % CYCLE_TIME);*/
//  932 
//  933   if(packetbuf_totlen() > 0 && NETSTACK_FRAMER.parse() >= 0) {
??input_packet_0:
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        CMP      R0,#+0
        BEQ.N    ??input_packet_1
        LDR.N    R0,??DataTable33_4
        LDR      R0,[R0, #+12]
          CFI FunCall
        BLX      R0
        CMP      R0,#+0
        BMI.N    ??input_packet_1
//  934     if(packetbuf_datalen() > 0 &&
//  935        packetbuf_totlen() > 0 &&
//  936        (linkaddr_cmp(packetbuf_addr(PACKETBUF_ADDR_RECEIVER),
//  937                      &linkaddr_node_addr) ||
//  938         packetbuf_holds_broadcast())) {
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        CMP      R0,#+0
        BEQ.N    ??input_packet_2
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        CMP      R0,#+0
        BEQ.N    ??input_packet_2
        MOVS     R0,#+19
          CFI FunCall packetbuf_addr
        BL       packetbuf_addr
        LDR.N    R1,??DataTable33_3
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CBNZ.N   R0,??input_packet_3
          CFI FunCall packetbuf_holds_broadcast
        BL       packetbuf_holds_broadcast
        CMP      R0,#+0
        BEQ.N    ??input_packet_2
//  939       /* This is a regular packet that is destined to us or to the
//  940          broadcast address. */
//  941 
//  942       /* If FRAME_PENDING is set, we are receiving a packets in a burst */
//  943       /* TODO To prevent denial-of-sleep attacks, the transceiver should
//  944          be disabled upon receipt of an unauthentic frame. */
//  945       we_are_receiving_burst = packetbuf_attr(PACKETBUF_ATTR_PENDING);
??input_packet_3:
        MOVS     R0,#+16
          CFI FunCall packetbuf_attr
        BL       packetbuf_attr
        STR      R0,[R4, #+16]
//  946       if(we_are_receiving_burst) {
        CMP      R0,#+0
        LDRB     R0,[R4, #+0]
        BEQ.N    ??input_packet_4
//  947         on();
        CBZ.N    R0,??input_packet_5
        LDRB     R0,[R4, #+3]
        CBNZ.N   R0,??input_packet_5
        MOVS     R0,#+1
        STRB     R0,[R4, #+3]
        LDR.N    R0,??DataTable33_1
        LDR      R0,[R0, #+32]
          CFI FunCall
        BLX      R0
//  948         /* Set a timer to turn the radio off in case we do not receive
//  949 	   a next packet */
//  950         ctimer_set(&ct, INTER_PACKET_DEADLINE, recv_burst_off, NULL);
??input_packet_5:
        LDR.N    R2,??DataTable33_7
        MOVS     R3,#+0
        MOVS     R1,#+166
        ADD      R0,R4,#+44
          CFI FunCall ctimer_set
        BL       ctimer_set
        B.N      ??input_packet_6
//  951       } else {
//  952         off();
??input_packet_4:
        CMP      R0,#+0
        ITT      NE 
        LDRBNE   R0,[R4, #+3]
        CMPNE    R0,#+0
        BEQ.N    ??input_packet_7
        LDRB     R0,[R4, #+1]
        CBNZ.N   R0,??input_packet_7
        STRB     R0,[R4, #+3]
        LDR.N    R0,??DataTable33_1
        LDR      R0,[R0, #+36]
          CFI FunCall
        BLX      R0
//  953         ctimer_stop(&ct);
??input_packet_7:
        ADD      R0,R4,#+44
          CFI FunCall ctimer_stop
        BL       ctimer_stop
//  954       }
//  955 
//  956 #if RDC_WITH_DUPLICATE_DETECTION
//  957       /* Check for duplicate packet. */
//  958       if(mac_sequence_is_duplicate()) {
??input_packet_6:
          CFI FunCall mac_sequence_is_duplicate
        BL       mac_sequence_is_duplicate
        CBNZ.N   R0,??input_packet_8
//  959         /* Drop the packet. */
//  960         /*        printf("Drop duplicate ContikiMAC layer packet\n");*/
//  961         return;
//  962       }
//  963       mac_sequence_register_seqno();
          CFI FunCall mac_sequence_register_seqno
        BL       mac_sequence_register_seqno
//  964 #endif /* RDC_WITH_DUPLICATE_DETECTION */
//  965 
//  966 #if CONTIKIMAC_CONF_COMPOWER
//  967       /* Accumulate the power consumption for the packet reception. */
//  968       compower_accumulate(&current_packet);
//  969       /* Convert the accumulated power consumption for the received
//  970          packet to packet attributes so that the higher levels can
//  971          keep track of the amount of energy spent on receiving the
//  972          packet. */
//  973       compower_attrconv(&current_packet);
//  974 
//  975       /* Clear the accumulated power consumption so that it is ready
//  976          for the next packet. */
//  977       compower_clear(&current_packet);
//  978 #endif /* CONTIKIMAC_CONF_COMPOWER */
//  979 
//  980       PRINTDEBUG("contikimac: data (%u)\n", packetbuf_datalen());
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        MOV      R1,R0
        ADR.W    R0,?_22
          CFI FunCall xprintf
        BL       xprintf
//  981       NETSTACK_MAC.input();
        LDR.N    R0,??DataTable33_8
        LDR      R0,[R0, #+12]
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  982       return;
//  983     } else {
//  984       PRINTDEBUG("contikimac: data not for us\n");
??input_packet_2:
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R0,?_23
          CFI FunCall xprintf
        B.W      xprintf
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  985     }
//  986   } else {
//  987     PRINTF("contikimac: failed to parse (%u)\n", packetbuf_totlen());
??input_packet_1:
          CFI FunCall packetbuf_totlen
        BL       packetbuf_totlen
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOV      R1,R0
        ADR.W    R0,?_24
          CFI FunCall xprintf
        B.W      xprintf
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  988   }
//  989 }
??input_packet_8:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
contikimac_is_on:
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 3
        DS8 4
        DS8 4
        DS8 4
        DS8 4
        DS8 4
        DS8 12
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DS8 4
//  990 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function init
        THUMB
//  991 static void
//  992 init(void)
//  993 {
init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  994   radio_is_on = 0;
        LDR.N    R4,??DataTable33
        SUB      SP,SP,#+8
          CFI CFA R13+16
        MOVS     R0,#+0
        STRB     R0,[R4, #+3]
//  995   PT_INIT(&pt);
        STRH     R0,[R4, #+12]
//  996 
//  997   rtimer_set(&rt, RTIMER_NOW() + CYCLE_TIME, 1,
//  998              (void (*)(struct rtimer *, void *))powercycle, NULL);
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        MOVS     R2,#+1
        ADDW     R1,R0,#+2500
        LDR.N    R3,??DataTable33_2
        ADD      R0,R4,#+32
          CFI FunCall rtimer_set
        BL       rtimer_set
//  999 
// 1000   contikimac_is_on = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
// 1001 
// 1002 #if WITH_PHASE_OPTIMIZATION
// 1003   phase_init();
        POP      {R0,R1,R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall phase_init
        B.W      phase_init
          CFI EndBlock cfiBlock8
// 1004 #endif /* WITH_PHASE_OPTIMIZATION */
// 1005 
// 1006 }
// 1007 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function turn_on
        THUMB
// 1008 static int
// 1009 turn_on(void)
// 1010 {
turn_on:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 1011   if(contikimac_is_on == 0) {
        LDR.N    R4,??DataTable33
        SUB      SP,SP,#+8
          CFI CFA R13+16
        LDRB     R0,[R4, #+0]
        CBNZ.N   R0,??turn_on_0
// 1012     contikimac_is_on = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
// 1013     contikimac_keep_radio_on = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+1]
// 1014     rtimer_set(&rt, RTIMER_NOW() + CYCLE_TIME, 1,
// 1015                (void (*)(struct rtimer *, void *))powercycle, NULL);
          CFI FunCall rtimer_arch_now
        BL       rtimer_arch_now
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
        MOVS     R2,#+1
        ADDW     R1,R0,#+2500
        LDR.N    R3,??DataTable33_2
        ADD      R0,R4,#+32
          CFI FunCall rtimer_set
        BL       rtimer_set
// 1016   }
// 1017   return 1;
??turn_on_0:
        MOVS     R0,#+1
        POP      {R1,R2,R4,PC}    ;; return
          CFI EndBlock cfiBlock9
// 1018 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32:
        DC8      "ack"
// 1019 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function turn_off
        THUMB
// 1020 static int
// 1021 turn_off(int keep_radio_on)
// 1022 {
// 1023   contikimac_is_on = 0;
turn_off:
        LDR.N    R1,??DataTable33
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
// 1024   contikimac_keep_radio_on = keep_radio_on;
        STRB     R0,[R1, #+1]
// 1025   if(keep_radio_on) {
        LDR.N    R2,??DataTable33_1
        CBZ.N    R0,??turn_off_0
// 1026     radio_is_on = 1;
        MOVS     R0,#+1
        STRB     R0,[R1, #+3]
// 1027     return NETSTACK_RADIO.on();
        LDR      R0,[R2, #+32]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
// 1028   } else {
// 1029     radio_is_on = 0;
??turn_off_0:
        STRB     R0,[R1, #+3]
// 1030     return NETSTACK_RADIO.off();
        LDR      R0,[R2, #+36]
          CFI FunCall
        ANOTE "tailcall"
        BX       R0
          CFI EndBlock cfiBlock10
// 1031   }
// 1032 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33:
        DC32     contikimac_is_on

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_1:
        DC32     nullradio_driver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_2:
        DC32     powercycle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_3:
        DC32     linkaddr_node_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_4:
        DC32     framer_802154

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_5:
        DC32     ubAckData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_6:
        DC32     ubACKFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_7:
        DC32     recv_burst_off

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_8:
        DC32     csma_driver
// 1033 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function duty_cycle
          CFI NoCalls
        THUMB
// 1034 static unsigned short
// 1035 duty_cycle(void)
// 1036 {
// 1037   return (1ul * CLOCK_SECOND * CYCLE_TIME) / RTIMER_ARCH_SECOND;
duty_cycle:
        MOVS     R0,#+250
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
// 1038 }

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "ContikiMAC"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_15:
        DC8 "ack"
// 1039 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
// 1040 const struct rdc_driver contikimac_driver = {
contikimac_driver:
        DC32 ?_0, init, qsend_packet, qsend_list, input_packet, turn_on
        DC32 turn_off, duty_cycle
// 1041   "ContikiMAC",
// 1042   init,
// 1043   qsend_packet,
// 1044   qsend_list,
// 1045   input_packet,
// 1046   turn_on,
// 1047   turn_off,
// 1048   duty_cycle,
// 1049 };
// 1050 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function contikimac_debug_print
          CFI NoCalls
        THUMB
// 1051 uint16_t
// 1052 contikimac_debug_print(void)
// 1053 {
// 1054   return 0;
contikimac_debug_print:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
// 1055 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "schedule_powercycle: could not set rtimer\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "contikimac: radio is turned off\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "contikimac: send_packet data len 0\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "contikimac: send broadcast\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 63H, 6FH, 6EH, 74H, 69H, 6BH, 69H, 6DH
        DC8 61H, 63H, 3AH, 20H, 73H, 65H, 6EH, 64H
        DC8 20H, 75H, 6EH, 69H, 63H, 61H, 73H, 74H
        DC8 20H, 74H, 6FH, 20H, 25H, 30H, 32H, 78H
        DC8 25H, 30H, 32H, 78H, 3AH, 25H, 30H, 32H
        DC8 78H, 25H, 30H, 32H, 78H, 3AH, 25H, 30H
        DC8 32H, 78H, 25H, 30H, 32H, 78H, 3AH, 25H
        DC8 30H, 32H, 78H, 25H, 30H, 32H, 78H, 0AH
        DC8 0
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_6:
        DC8 "contikimac: framer failed\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_7:
        DC8 "contikimac: collision receiving %d, pending %d\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_8:
        DC8 "contikimac: collisions before sending\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_9:
        DC8 "contikimac: send_packet1\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_10:
        DC8 "miss to %d\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_11:
        DC8 "contikimac: wait data ack ok\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_12:
        DC8 "contikimac: ack ok\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_13:
        DC8 "contikimac: collisions while sending\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_14:
        DC8 63H, 6FH, 6EH, 74H, 69H, 6BH, 69H, 6DH
        DC8 61H, 63H, 3AH, 20H, 73H, 65H, 6EH, 64H
        DC8 20H, 28H, 73H, 74H, 72H, 6FH, 62H, 65H
        DC8 73H, 3DH, 25H, 75H, 2CH, 20H, 6CH, 65H
        DC8 6EH, 3DH, 25H, 75H, 2CH, 20H, 25H, 73H
        DC8 2CH, 20H, 25H, 73H, 29H, 2CH, 20H, 64H
        DC8 6FH, 6EH, 65H, 0AH, 0
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_16:
        DC8 "no ack"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_17:
        DC8 "collision"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_18:
        DC8 "no collision"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_19:
        DC8 "no miss %d wake-ups %d\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_20:
        DC8 "MAC_TX_COLLISION, again\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_21:
        DC8 "qsend_list\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_22:
        DC8 "contikimac: data (%u)\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_23:
        DC8 "contikimac: data not for us\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_24:
        DC8 "contikimac: failed to parse (%u)\012"
        DC8 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1056 /*---------------------------------------------------------------------------*/
// 
//    80 bytes in section .bss
//    48 bytes in section .rodata
// 2 960 bytes in section .text
// 
// 2 960 bytes of CODE  memory
//    48 bytes of CONST memory
//    80 bytes of DATA  memory
//
//Errors: none
//Warnings: 5
