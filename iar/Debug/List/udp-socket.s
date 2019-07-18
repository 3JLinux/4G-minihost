///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:41
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\udp-socket.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\udp-socket.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\udp-socket.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN process_current
        EXTERN process_start
        EXTERN tcpip_event
        EXTERN udp_new
        EXTERN uip_aligned_buf
        EXTERN uip_appdata
        EXTERN uip_flags
        EXTERN uip_len
        EXTERN uip_udp_packet_send
        EXTERN uip_udp_packet_sendto

        PUBLIC udp_socket_bind
        PUBLIC udp_socket_close
        PUBLIC udp_socket_connect
        PUBLIC udp_socket_process
        PUBLIC udp_socket_register
        PUBLIC udp_socket_send
        PUBLIC udp_socket_sendto
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\udp-socket.c
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
//   32 #include "contiki-net.h"
//   33 #include "udp-socket.h"
//   34 
//   35 #include <string.h>
//   36 
//   37 PROCESS(udp_socket_process, "UDP socket process");
//   38 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 static uint8_t buf[UIP_BUFSIZE];
buf:
        DS8 1516

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   40 
//   41 #define UIP_IP_BUF   ((struct uip_udpip_hdr *)&uip_buf[UIP_LLH_LEN])
//   42 
//   43 
//   44 /*---------------------------------------------------------------------------*/
//   45 static void
//   46 init(void)
//   47 {
//   48   static uint8_t inited = 0;
??inited:
        DATA
        DC8 0
        DC8 0, 0, 0
udp_socket_process:
        DC32 0H, ?_0, process_thread_udp_socket_process
        DC8 0, 0, 0, 0
//   49   if(!inited) {
//   50     inited = 1;
//   51     process_start(&udp_socket_process, NULL);
//   52   }
//   53 }
//   54 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function udp_socket_register
        THUMB
//   55 int
//   56 udp_socket_register(struct udp_socket *c,
//   57                     void *ptr,
//   58                     udp_socket_input_callback_t input_callback)
//   59 {
udp_socket_register:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//   60   init();
        LDR.N    R5,??DataTable2
        MOV      R4,R0
        LDRB     R0,[R5, #+0]
        MOV      R6,R1
        MOV      R7,R2
        CBNZ.N   R0,??udp_socket_register_0
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
        MOVS     R1,#+0
        ADDS     R0,R5,#+4
          CFI FunCall process_start
        BL       process_start
//   61 
//   62   if(c == NULL) {
??udp_socket_register_0:
        CBZ.N    R4,??udp_socket_register_1
//   63     return -1;
//   64   }
//   65   c->ptr = ptr;
        STR      R6,[R4, #+4]
//   66   c->input_callback = input_callback;
        STR      R7,[R4, #+0]
//   67 
//   68   c->p = PROCESS_CURRENT();
//   69   PROCESS_CONTEXT_BEGIN(&udp_socket_process);
//   70   c->udp_conn = udp_new(NULL, 0, c);
        MOV      R2,R4
        LDR.N    R6,??DataTable2_1
        LDR      R0,[R6, #+0]
        STR      R0,[R4, #+8]
        ADDS     R0,R5,#+4
        LDR      R7,[R6, #+0]
        STR      R0,[R6, #+0]
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall udp_new
        BL       udp_new
        STR      R0,[R4, #+12]
//   71   PROCESS_CONTEXT_END();
        STR      R7,[R6, #+0]
//   72 
//   73   if(c->udp_conn == NULL) {
        CBNZ.N   R0,??udp_socket_register_2
//   74     return -1;
??udp_socket_register_1:
        MOV      R0,#-1
        POP      {R1,R4-R7,PC}
//   75   }
//   76   return 1;
??udp_socket_register_2:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock0
//   77 }
//   78 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function udp_socket_close
          CFI NoCalls
        THUMB
//   79 int
//   80 udp_socket_close(struct udp_socket *c)
//   81 {
//   82   if(c == NULL) {
udp_socket_close:
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R0,[R0, #+12]
        CMPNE    R0,#+0
//   83     return -1;
//   84   }
//   85   if(c->udp_conn != NULL) {
        BEQ.N    ??udp_socket_close_0
//   86     uip_udp_remove(c->udp_conn);
        MOVS     R1,#+0
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock1
//   87     return 1;
//   88   }
//   89   return -1;
??udp_socket_close_0:
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//   90 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls udp_socket_bind
          CFI NoCalls udp_socket_close
        THUMB
?Subroutine1:
        MOV      R0,#-1
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   91 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function udp_socket_bind
          CFI NoCalls
        THUMB
//   92 int
//   93 udp_socket_bind(struct udp_socket *c,
//   94                 uint16_t local_port)
//   95 {
//   96   if(c == NULL || c->udp_conn == NULL) {
udp_socket_bind:
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R0,[R0, #+12]
        CMPNE    R0,#+0
        BNE.N    ??udp_socket_bind_0
//   97     return -1;
        B.N      ?Subroutine1
//   98   }
//   99   udp_bind(c->udp_conn, UIP_HTONS(local_port));
??udp_socket_bind_0:
        LSRS     R2,R1,#+8
        ORR      R1,R2,R1, LSL #+8
          CFI EndBlock cfiBlock3
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  100 
//  101   return 1;
//  102 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls udp_socket_bind
          CFI NoCalls udp_socket_close
        THUMB
?Subroutine0:
        STRH     R1,[R0, #+16]
        MOVS     R0,#+1
        BX       LR
          CFI EndBlock cfiBlock4
//  103 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function udp_socket_connect
        THUMB
//  104 int
//  105 udp_socket_connect(struct udp_socket *c,
//  106                    uip_ipaddr_t *remote_addr,
//  107                    uint16_t remote_port)
//  108 {
udp_socket_connect:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  109   if(c == NULL || c->udp_conn == NULL) {
        ITT      NE 
        LDRNE    R0,[R4, #+12]
        CMPNE    R0,#+0
        MOV      R5,R2
        BNE.N    ??udp_socket_connect_0
//  110     return -1;
        B.N      ?Subroutine2
//  111   }
//  112 
//  113   if(remote_addr != NULL) {
??udp_socket_connect_0:
        CBZ.N    R1,??udp_socket_connect_1
//  114     uip_ipaddr_copy(&c->udp_conn->ripaddr, remote_addr);
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  115   }
//  116   c->udp_conn->rport = UIP_HTONS(remote_port);
??udp_socket_connect_1:
        LDR      R1,[R4, #+12]
        LSRS     R0,R5,#+8
        ORR      R0,R0,R5, LSL #+8
        STRH     R0,[R1, #+18]
//  117   return 1;
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5
//  118 }
//  119 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function udp_socket_send
        THUMB
//  120 int
//  121 udp_socket_send(struct udp_socket *c,
//  122                 const void *data, uint16_t datalen)
//  123 {
udp_socket_send:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  124   if(c == NULL || c->udp_conn == NULL) {
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R0,[R0, #+12]
        CMPNE    R0,#+0
        MOV      R4,R2
        BNE.N    ??udp_socket_send_0
//  125     return -1;
        MOV      R0,#-1
        POP      {R4,PC}
//  126   }
//  127 
//  128   uip_udp_packet_send(c->udp_conn, data, datalen);
??udp_socket_send_0:
          CFI FunCall uip_udp_packet_send
        BL       uip_udp_packet_send
//  129   return datalen;
        MOV      R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  130 }
//  131 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function udp_socket_sendto
        THUMB
//  132 int
//  133 udp_socket_sendto(struct udp_socket *c,
//  134                   const void *data, uint16_t datalen,
//  135                   const uip_ipaddr_t *to,
//  136                   uint16_t port)
//  137 {
udp_socket_sendto:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  138   if(c == NULL || c->udp_conn == NULL) {
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R0,[R0, #+12]
        CMPNE    R0,#+0
        MOV      R4,R2
        BNE.N    ??udp_socket_sendto_0
//  139     return -1;
        B.N      ?Subroutine2
//  140   }
//  141 
//  142   if(c->udp_conn != NULL) {
//  143     uip_udp_packet_sendto(c->udp_conn, data, datalen,
//  144                           to, UIP_HTONS(port));
??udp_socket_sendto_0:
        LDR      R2,[SP, #+16]
        LSRS     R5,R2,#+8
        ORR      R2,R5,R2, LSL #+8
        UXTH     R2,R2
        STR      R2,[SP, #+0]
        MOV      R2,R4
          CFI FunCall uip_udp_packet_sendto
        BL       uip_udp_packet_sendto
//  145     return datalen;
        MOV      R0,R4
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock7
//  146   }
//  147   return -1;
//  148 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls udp_socket_connect
          CFI NoCalls udp_socket_sendto
          CFI CFA R13+16
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine2:
        MOV      R0,#-1
        POP      {R1,R4,R5,PC}
          CFI EndBlock cfiBlock8
//  149 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function process_thread_udp_socket_process
        THUMB
//  150 PROCESS_THREAD(udp_socket_process, ev, data)
//  151 {
process_thread_udp_socket_process:
        PUSH     {R4-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+28
        MOV      R4,R0
        SUB      SP,SP,#+20
          CFI CFA R13+48
//  152   struct udp_socket *c;
//  153   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        MOV      R5,R2
        CBZ.N    R0,??process_thread_udp_socket_process_0
        CMP      R0,#+156
        BEQ.N    ??process_thread_udp_socket_process_1
        B.N      ??process_thread_udp_socket_process_2
//  154 
//  155   while(1) {
//  156     PROCESS_WAIT_EVENT();
??process_thread_udp_socket_process_0:
        MOVS     R0,#+156
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+20
          CFI CFA R13+28
        MOVS     R0,#+1
        POP      {R4-R9,PC}
          CFI CFA R13+48
//  157     if(ev == tcpip_event) {
??process_thread_udp_socket_process_1:
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_udp_socket_process_0
//  158 
//  159       /* An appstate pointer is passed to use from the IP stack
//  160          through the 'data' pointer. We registered this appstate when
//  161          we did the udp_new() call in udp_socket_register() as the
//  162          struct udp_socket pointer. So we extract this
//  163          pointer and use it when calling the reception callback. */
//  164       c = (struct udp_socket *)data;
//  165 
//  166       /* Defensive coding: although the appstate *should* be non-null
//  167          here, we make sure to avoid the program crashing on us. */
//  168       if(c != NULL) {
        CMP      R5,#+0
        BEQ.N    ??process_thread_udp_socket_process_0
//  169 
//  170         /* If we were called because of incoming data, we should call
//  171            the reception callback. */
//  172         if(uip_newdata()) {
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??process_thread_udp_socket_process_0
//  173           /* Copy the data from the uIP data buffer into our own
//  174              buffer to avoid the uIP buffer being messed with by the
//  175              callee. */
//  176           memcpy(buf, uip_appdata, uip_datalen());
        LDR.N    R0,??DataTable2_4
        LDR.N    R7,??DataTable2_5
        LDR      R1,[R0, #+0]
        LDR.N    R6,??DataTable2_6
        LDRH     R2,[R7, #+0]
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  177 
//  178           /* Call the client process. We use the PROCESS_CONTEXT
//  179              mechanism to temporarily switch process context to the
//  180              client process. */
//  181           if(c->input_callback != NULL) {
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??process_thread_udp_socket_process_0
//  182             PROCESS_CONTEXT_BEGIN(c->p);
        LDR.W    R8,??DataTable2_1
        LDR      R0,[R5, #+8]
        LDR      R9,[R8, #+0]
//  183             c->input_callback(c, c->ptr,
//  184                               &(UIP_IP_BUF->srcipaddr),
//  185                               UIP_HTONS(UIP_IP_BUF->srcport),
//  186                               &(UIP_IP_BUF->destipaddr),
//  187                               UIP_HTONS(UIP_IP_BUF->destport),
//  188                               buf, uip_datalen());
        LDRH     R3,[R7, #+0]
        STR      R0,[R8, #+0]
        STR      R3,[SP, #+12]
        STR      R6,[SP, #+8]
        LDR.N    R0,??DataTable2_7
        LDRH     R2,[R0, #+42]
        LDRH     R1,[R0, #+40]
        LSRS     R3,R2,#+8
        ORR      R2,R3,R2, LSL #+8
        UXTH     R2,R2
        STR      R2,[SP, #+4]
        ADD      R2,R0,#+24
        STR      R2,[SP, #+0]
        LSRS     R2,R1,#+8
        ORR      R3,R2,R1, LSL #+8
        ADD      R2,R0,#+8
        LDR      R1,[R5, #+4]
        MOV      R0,R5
        LDR      R5,[R5, #+0]
        UXTH     R3,R3
          CFI FunCall
        BLX      R5
//  189             PROCESS_CONTEXT_END();
        STR      R9,[R8, #+0]
        B.N      ??process_thread_udp_socket_process_0
//  190           }
//  191         }
//  192       }
//  193     }
//  194   }
//  195 
//  196   PROCESS_END();
??process_thread_udp_socket_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+20
          CFI CFA R13+28
        MOVS     R0,#+3
        POP      {R4-R9,PC}       ;; return
          CFI EndBlock cfiBlock9
//  197 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ??inited

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     process_current

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     tcpip_event

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     uip_flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     uip_aligned_buf

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "UDP socket process"
        DC8 0

        END
//  198 /*---------------------------------------------------------------------------*/
//  199 /** @} */
// 
// 1 516 bytes in section .bss
//    20 bytes in section .data
//    20 bytes in section .rodata
//   410 bytes in section .text
// 
//   410 bytes of CODE  memory
//    20 bytes of CONST memory
// 1 536 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
