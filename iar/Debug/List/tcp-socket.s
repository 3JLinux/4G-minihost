///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:39
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\tcp-socket.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\tcp-socket.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\tcp-socket.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN MIN
        EXTERN __aeabi_memcpy
        EXTERN list_add
        EXTERN list_head
        EXTERN list_init
        EXTERN list_item_next
        EXTERN list_remove
        EXTERN process_current
        EXTERN process_start
        EXTERN strlen
        EXTERN tcp_attach
        EXTERN tcp_connect
        EXTERN tcp_listen
        EXTERN tcp_unlisten
        EXTERN tcpip_event
        EXTERN uip_appdata
        EXTERN uip_conn
        EXTERN uip_flags
        EXTERN uip_htons
        EXTERN uip_len
        EXTERN uip_send

        PUBLIC tcp_socket_close
        PUBLIC tcp_socket_connect
        PUBLIC tcp_socket_listen
        PUBLIC tcp_socket_max_sendlen
        PUBLIC tcp_socket_process
        PUBLIC tcp_socket_register
        PUBLIC tcp_socket_send
        PUBLIC tcp_socket_send_str
        PUBLIC tcp_socket_unlisten
        PUBLIC tcp_socket_unregister
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\tcp-socket.c
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
//   33 #include "sys/cc.h"
//   34 #include "contiki-net.h"
//   35 
//   36 #include "lib/list.h"
//   37 
//   38 #include "tcp-socket.h"
//   39 
//   40 #include <stdio.h>
//   41 #include <string.h>
//   42 
//   43 
//   44 static void relisten(struct tcp_socket *s);
//   45 
//   46 #define DEBUG_LEVEL 0
//   47 
//   48 #if DEBUG_LEVEL
//   49 #define PRINTF(...)  xprintf(...)
//   50 #else
//   51 #define PRINTF(...)
//   52 #endif
//   53 
//   54 LIST(socketlist);
//   55 /*---------------------------------------------------------------------------*/
//   56 PROCESS(tcp_socket_process, "TCP socket process");
//   57 /*---------------------------------------------------------------------------*/
//   58 static void
//   59 call_event(struct tcp_socket *s, tcp_socket_event_t event)
//   60 {
//   61   if(s != NULL && s->event_callback != NULL) {
//   62     s->event_callback(s, s->ptr, event);
//   63   }
//   64 }
//   65 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function senddata
        THUMB
//   66 static void
//   67 senddata(struct tcp_socket *s)
//   68 {
senddata:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//   69   int len = MIN(s->output_data_max_seg, uip_mss());
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        LDRH     R1,[R0, #+30]
        LDRH     R0,[R4, #+40]
          CFI FunCall MIN
        BL       MIN
//   70 
//   71   if(s->output_senddata_len > 0) {
        LDRH     R2,[R4, #+38]
        CBZ.N    R2,??senddata_0
//   72     len = MIN(s->output_senddata_len, len);
        MOV      R1,R0
        MOV      R0,R2
          CFI FunCall MIN
        BL       MIN
//   73     s->output_data_send_nxt = len;
        STRH     R0,[R4, #+36]
//   74     uip_send(s->output_data_ptr, len);
        MOV      R1,R0
        LDR      R0,[R4, #+24]
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uip_send
        B.W      uip_send
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   75   }
//   76 }
??senddata_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   77 /*---------------------------------------------------------------------------*/
//   78 static void
//   79 acked(struct tcp_socket *s)
//   80 {
//   81   if(s->output_senddata_len > 0) {
//   82     /* Copy the data in the outputbuf down and update outputbufptr and
//   83        outputbuf_lastsent */
//   84 
//   85     if(s->output_data_send_nxt > 0) {
//   86       memcpy(&s->output_data_ptr[0],
//   87              &s->output_data_ptr[s->output_data_send_nxt],
//   88              s->output_data_maxlen - s->output_data_send_nxt);
//   89     }
//   90     if(s->output_data_len < s->output_data_send_nxt) {
//   91       PRINTF("tcp: acked assertion failed s->output_data_len (%d) < s->output_data_send_nxt (%d)\n",
//   92              s->output_data_len,
//   93              s->output_data_send_nxt);
//   94       tcp_markconn(uip_conn, NULL);
//   95       uip_abort();
//   96       call_event(s, TCP_SOCKET_ABORTED);
//   97       relisten(s);
//   98       return;
//   99     }
//  100     s->output_data_len -= s->output_data_send_nxt;
//  101     s->output_senddata_len = s->output_data_len;
//  102     s->output_data_send_nxt = 0;
//  103 
//  104     call_event(s, TCP_SOCKET_DATA_SENT);
//  105   }
//  106 }
//  107 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function newdata
        THUMB
//  108 static void
//  109 newdata(struct tcp_socket *s)
//  110 {
newdata:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  111   uint16_t len, copylen, bytesleft;
//  112   uint8_t *dataptr;
//  113   len = uip_datalen();
        LDR.W    R0,??DataTable8_1
        LDRH     R5,[R0, #+0]
//  114   dataptr = uip_appdata;
        LDR.W    R0,??DataTable8_2
        LDR      R6,[R0, #+0]
//  115 
//  116   /* We have a segment with data coming in. We copy as much data as
//  117      possible into the input buffer and call the input callback
//  118      function. The input callback returns the number of bytes that
//  119      should be retained in the buffer, or zero if all data should be
//  120      consumed. If there is data to be retained, the highest bytes of
//  121      data are copied down into the input buffer. */
//  122   do {
//  123     copylen = MIN(len, s->input_data_maxlen);
??newdata_0:
        LDRH     R1,[R4, #+28]
        MOV      R0,R5
          CFI FunCall MIN
        BL       MIN
        UXTH     R7,R0
//  124     memcpy(s->input_data_ptr, dataptr, copylen);
        LDR      R0,[R4, #+20]
        MOV      R2,R7
        MOV      R1,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  125     if(s->input_callback) {
        LDR      R12,[R4, #+4]
        CMP      R12,#+0
        BEQ.N    ??newdata_1
//  126       bytesleft = s->input_callback(s, s->ptr,
//  127 				    s->input_data_ptr, copylen);
        LDR      R2,[R4, #+20]
        LDR      R1,[R4, #+12]
        MOV      R3,R7
        MOV      R0,R4
          CFI FunCall
        BLX      R12
//  128     } else {
//  129       bytesleft = 0;
//  130     }
//  131     if(bytesleft > 0) {
//  132       PRINTF("tcp: newdata, bytesleft > 0 (%d) not implemented\n", bytesleft);
//  133     }
//  134     dataptr += copylen;
//  135     len -= copylen;
??newdata_1:
        SUBS     R5,R5,R7
        ADDS     R6,R7,R6
        UXTH     R5,R5
//  136 
//  137   } while(len > 0);
        CMP      R5,#+0
        BNE.N    ??newdata_0
//  138 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock1
//  139 /*---------------------------------------------------------------------------*/
//  140 static void
//  141 relisten(struct tcp_socket *s)
//  142 {
//  143   if(s != NULL && s->listen_port != 0) {
//  144     s->flags |= TCP_SOCKET_FLAGS_LISTENING;
//  145   }
//  146 }
//  147 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function appcall
        THUMB
//  148 static void
//  149 appcall(void *state)
//  150 {
appcall:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  151   struct tcp_socket *s = state;
        MOVS     R4,R0
//  152 
//  153   if(s != NULL && s->c != NULL && s->c != uip_conn) {
        ITT      NE 
        LDRNE    R0,[R4, #+48]
        CMPNE    R0,#+0
        ITTT     NE 
        LDRNE.W  R1,??DataTable8
        LDRNE    R1,[R1, #+0]
        CMPNE    R0,R1
        BNE.W    ??appcall_0
//  154     /* Safe-guard: this should not happen, as the incoming event relates to
//  155      * a previous connection */
//  156     return;
//  157   }
//  158   if(uip_connected()) {
        LDR.W    R5,??DataTable8_3
        LDRB     R0,[R5, #+0]
        LSLS     R1,R0,#+25
        BPL.N    ??appcall_1
//  159     /* Check if this connection originated in a local listen
//  160        socket. We do this by checking the state pointer - if NULL,
//  161        this is an incoming listen connection. If so, we need to
//  162        connect the socket to the uip_conn and call the event
//  163        function. */
//  164     if(s == NULL) {
        CBNZ.N   R4,??appcall_2
//  165       for(s = list_head(socketlist);
        LDR.W    R0,??DataTable8_4
          CFI FunCall list_head
        BL       list_head
        MOV      R4,R0
        LDR.W    R6,??DataTable8
        B.N      ??appcall_3
//  166 	  s != NULL;
//  167 	  s = list_item_next(s)) {
??appcall_4:
        MOV      R0,R4
          CFI FunCall list_item_next
        BL       list_item_next
        MOV      R4,R0
??appcall_3:
        CMP      R4,#+0
        BEQ.W    ??appcall_5
//  168 	if((s->flags & TCP_SOCKET_FLAGS_LISTENING) != 0 &&
//  169 	   s->listen_port != 0 &&
//  170 	   s->listen_port == uip_htons(uip_conn->lport)) {
        ADD      R7,R4,#+40
        LDRB     R0,[R7, #+2]
        LSLS     R0,R0,#+31
        BPL.N    ??appcall_4
        LDRH     R0,[R7, #+4]
        CMP      R0,#+0
        BEQ.N    ??appcall_4
        LDR      R0,[R6, #+0]
        LDRH     R0,[R0, #+16]
          CFI FunCall uip_htons
        BL       uip_htons
        LDRH     R1,[R7, #+4]
        CMP      R1,R0
        BNE.N    ??appcall_4
//  171 	  s->flags &= ~TCP_SOCKET_FLAGS_LISTENING;
        LDRB     R0,[R7, #+2]
        AND      R0,R0,#0xFE
        STRB     R0,[R7, #+2]
//  172           s->output_data_max_seg = uip_mss();
        LDR      R0,[R6, #+0]
        LDRH     R1,[R0, #+30]
        STRH     R1,[R4, #+40]
//  173 	  tcp_markconn(uip_conn, s);
        MOV      R1,R4
          CFI FunCall tcp_attach
        BL       tcp_attach
//  174 	  call_event(s, TCP_SOCKET_CONNECTED);
??appcall_6:
        LDR      R3,[R4, #+8]
        MOVS     R0,R3
        BEQ.N    ??appcall_7
        LDR      R1,[R4, #+12]
        MOVS     R2,#+0
        MOV      R0,R4
          CFI FunCall
        BLX      R3
//  175 	  break;
//  176 	}
//  177       }
//  178     } else {
//  179       s->output_data_max_seg = uip_mss();
//  180       call_event(s, TCP_SOCKET_CONNECTED);
//  181     }
//  182 
//  183     if(s == NULL) {
??appcall_7:
        CBNZ.N   R4,??appcall_8
//  184       uip_abort();
        B.N      ??appcall_5
//  185     } else {
??appcall_2:
        LDR.N    R0,??DataTable8
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+30]
        STRH     R0,[R4, #+40]
        B.N      ??appcall_6
//  186       if(uip_newdata()) {
??appcall_8:
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+30
        ITT      MI 
        MOVMI    R0,R4
        BLMI     newdata
//  187         newdata(s);
//  188       }
//  189       senddata(s);
        MOV      R0,R4
        POP      {R1,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall senddata
        B.N      senddata
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  190     }
//  191     return;
//  192   }
//  193 
//  194   if(uip_timedout()) {
??appcall_1:
        LSLS     R0,R0,#+24
        BPL.N    ??appcall_9
//  195     call_event(s, TCP_SOCKET_TIMEDOUT);
        CBZ.N    R4,??appcall_9
        LDR      R3,[R4, #+8]
        MOVS     R0,R3
        BEQ.N    ??appcall_10
        LDR      R1,[R4, #+12]
        MOVS     R2,#+2
        MOV      R0,R4
          CFI FunCall
        BLX      R3
??appcall_10:
        LDRH     R0,[R4, #+44]
        CBZ.N    R0,??appcall_9
        LDRB     R0,[R4, #+42]
        ORR      R0,R0,#0x1
        STRB     R0,[R4, #+42]
//  196     relisten(s);
//  197   }
//  198 
//  199   if(uip_aborted()) {
??appcall_9:
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??appcall_11
//  200     tcp_markconn(uip_conn, NULL);
        LDR.N    R0,??DataTable8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
          CFI FunCall tcp_attach
        BL       tcp_attach
//  201     call_event(s, TCP_SOCKET_ABORTED);
        CMP      R4,#+0
        BEQ.N    ??appcall_5
        LDR      R3,[R4, #+8]
        MOVS     R0,R3
        BEQ.N    ??appcall_12
        LDR      R1,[R4, #+12]
        MOVS     R2,#+3
        MOV      R0,R4
          CFI FunCall
        BLX      R3
??appcall_12:
        LDRH     R0,[R4, #+44]
        CBZ.N    R0,??appcall_13
        LDRB     R0,[R4, #+42]
        ORR      R0,R0,#0x1
        STRB     R0,[R4, #+42]
//  202     relisten(s);
//  203 
//  204   }
//  205 
//  206   if(s == NULL) {
//  207     uip_abort();
//  208     return;
//  209   }
//  210 
//  211   if(uip_acked()) {
??appcall_13:
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??appcall_14
//  212     acked(s);
        LDRH     R0,[R4, #+38]
        CBZ.N    R0,??appcall_14
        LDRH     R1,[R4, #+36]
        CBZ.N    R1,??appcall_15
        LDRH     R2,[R4, #+32]
        LDR      R0,[R4, #+24]
        SUBS     R2,R2,R1
        ADDS     R1,R1,R0
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
??appcall_15:
        LDRH     R0,[R4, #+36]
        LDRH     R1,[R4, #+34]
        CMP      R1,R0
        BCS.N    ??appcall_16
        LDR.N    R0,??DataTable8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
          CFI FunCall tcp_attach
        BL       tcp_attach
        MOVS     R0,#+32
        STRB     R0,[R5, #+0]
        LDR      R3,[R4, #+8]
        MOVS     R0,R3
        BEQ.N    ??appcall_17
        LDR      R1,[R4, #+12]
        MOVS     R2,#+3
        MOV      R0,R4
          CFI FunCall
        BLX      R3
??appcall_17:
        LDRH     R0,[R4, #+44]
        CBZ.N    R0,??appcall_14
        LDRB     R0,[R4, #+42]
        ORR      R0,R0,#0x1
        STRB     R0,[R4, #+42]
        B.N      ??appcall_14
//  213   }
??appcall_11:
        CMP      R4,#+0
        BNE.N    ??appcall_13
??appcall_5:
        MOVS     R0,#+32
        STRB     R0,[R5, #+0]
        POP      {R0,R4-R7,PC}
??appcall_16:
        SUBS     R0,R1,R0
        STRH     R0,[R4, #+34]
        STRH     R0,[R4, #+38]
        MOVS     R0,#+0
        STRH     R0,[R4, #+36]
        LDR      R3,[R4, #+8]
        MOVS     R0,R3
        BEQ.N    ??appcall_14
        LDR      R1,[R4, #+12]
        MOVS     R2,#+4
        MOV      R0,R4
          CFI FunCall
        BLX      R3
//  214   if(uip_newdata()) {
??appcall_14:
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+30
        ITT      MI 
        MOVMI    R0,R4
        BLMI     newdata
//  215     newdata(s);
//  216   }
//  217 
//  218   if(uip_rexmit() ||
//  219      uip_newdata() ||
//  220      uip_acked()) {
        LDRB     R0,[R5, #+0]
        MOVS     R1,#+7
        TST      R0,R1
        BNE.N    ??appcall_18
//  221     senddata(s);
//  222   } else if(uip_poll()) {
        LSLS     R0,R0,#+28
        BPL.N    ??appcall_19
//  223     senddata(s);
??appcall_18:
        MOV      R0,R4
          CFI FunCall senddata
        BL       senddata
//  224   }
//  225 
//  226   if(s->output_data_len == 0 && s->flags & TCP_SOCKET_FLAGS_CLOSING) {
??appcall_19:
        LDRH     R0,[R4, #+34]
        CBNZ.N   R0,??appcall_20
        LDRB     R0,[R4, #+42]
        LSLS     R1,R0,#+30
        BPL.N    ??appcall_20
//  227     s->flags &= ~TCP_SOCKET_FLAGS_CLOSING;
        AND      R0,R0,#0xFD
        STRB     R0,[R4, #+42]
//  228     uip_close();
//  229     s->c = NULL;
//  230     tcp_markconn(uip_conn, NULL);
        MOVS     R1,#+0
        MOVS     R0,#+16
        STRB     R0,[R5, #+0]
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
        LDR.N    R0,??DataTable8
        LDR      R0,[R0, #+0]
          CFI FunCall tcp_attach
        BL       tcp_attach
//  231     s->c = NULL;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
//  232     /*call_event(s, TCP_SOCKET_CLOSED);*/
//  233     relisten(s);
        LDRH     R0,[R4, #+44]
        CBZ.N    R0,??appcall_20
        LDRB     R0,[R4, #+42]
        ORR      R0,R0,#0x1
        STRB     R0,[R4, #+42]
//  234   }
//  235 
//  236   if(uip_closed()) {
??appcall_20:
        LDRB     R0,[R5, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??appcall_0
//  237     tcp_markconn(uip_conn, NULL);
        LDR.N    R0,??DataTable8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
          CFI FunCall tcp_attach
        BL       tcp_attach
//  238     s->c = NULL;
        MOVS     R0,#+0
        STR      R0,[R4, #+48]
//  239     call_event(s, TCP_SOCKET_CLOSED);
        LDR      R3,[R4, #+8]
        MOVS     R0,R3
        BEQ.N    ??appcall_21
        LDR      R1,[R4, #+12]
        MOVS     R2,#+1
        MOV      R0,R4
          CFI FunCall
        BLX      R3
??appcall_21:
        LDRH     R0,[R4, #+44]
        CBZ.N    R0,??appcall_0
        LDRB     R0,[R4, #+42]
        ORR      R0,R0,#0x1
        STRB     R0,[R4, #+42]
//  240     relisten(s);
//  241   }
//  242 }
??appcall_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock2
//  243 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function process_thread_tcp_socket_process
        THUMB
//  244 PROCESS_THREAD(tcp_socket_process, ev, data)
//  245 {
process_thread_tcp_socket_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R2
//  246   PROCESS_BEGIN();
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_tcp_socket_process_0
        CMP      R2,#+248
        BEQ.N    ??process_thread_tcp_socket_process_1
        B.N      ??process_thread_tcp_socket_process_2
//  247   while(1) {
//  248     PROCESS_WAIT_EVENT();
??process_thread_tcp_socket_process_0:
        MOVS     R0,#+248
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R4,PC}
//  249 
//  250     if(ev == tcpip_event) {
??process_thread_tcp_socket_process_1:
        LDR.N    R2,??DataTable8_5
        LDRB     R2,[R2, #+0]
        CMP      R1,R2
        BNE.N    ??process_thread_tcp_socket_process_0
//  251       appcall(data);
          CFI FunCall appcall
        BL       appcall
        B.N      ??process_thread_tcp_socket_process_0
//  252     }
//  253   }
//  254   PROCESS_END();
??process_thread_tcp_socket_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  255 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  256 /*---------------------------------------------------------------------------*/
//  257 static void
//  258 init(void)
//  259 {
//  260   static uint8_t inited = 0;
??inited:
        DATA
        DC8 0
        DC8 0, 0, 0
socketlist_list:
        DC32 0H
tcp_socket_process:
        DC32 0H, ?_0, process_thread_tcp_socket_process
        DC8 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 socketlist_list
//  261   if(!inited) {
//  262     list_init(socketlist);
//  263     process_start(&tcp_socket_process, NULL);
//  264     inited = 1;
//  265   }
//  266 }
//  267 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function tcp_socket_register
        THUMB
//  268 int
//  269 tcp_socket_register(struct tcp_socket *s, void *ptr,
//  270 		    uint8_t *input_databuf, int input_databuf_len,
//  271 		    uint8_t *output_databuf, int output_databuf_len,
//  272 		    tcp_socket_data_callback_t input_callback,
//  273 		    tcp_socket_event_callback_t event_callback)
//  274 {
tcp_socket_register:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  275 
//  276   init();
        LDR.N    R5,??DataTable8_6
        MOV      R4,R0
        LDRB     R0,[R5, #+0]
        MOV      R6,R1
        MOV      R7,R2
        MOV      R8,R3
        CBNZ.N   R0,??tcp_socket_register_0
        ADDS     R0,R5,#+4
          CFI FunCall list_init
        BL       list_init
        MOVS     R1,#+0
        ADD      R0,R5,#+8
          CFI FunCall process_start
        BL       process_start
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
//  277 
//  278   if(s == NULL) {
??tcp_socket_register_0:
        CBNZ.N   R4,??tcp_socket_register_1
//  279     return -1;
        B.N      ?Subroutine0
//  280   }
//  281   s->ptr = ptr;
??tcp_socket_register_1:
        ADDS     R0,R4,#+4
//  282   s->input_data_ptr = input_databuf;
//  283   s->input_data_maxlen = input_databuf_len;
//  284   s->output_data_len = 0;
        MOVS     R1,#+0
        STR      R6,[R0, #+8]
        STR      R7,[R0, #+16]
        STRH     R8,[R0, #+24]
        STRH     R1,[R0, #+30]
//  285   s->output_data_ptr = output_databuf;
        LDR      R1,[SP, #+24]
        STR      R1,[R0, #+20]
//  286   s->output_data_maxlen = output_databuf_len;
        LDR      R1,[SP, #+28]
        STRH     R1,[R0, #+28]
//  287   s->input_callback = input_callback;
        LDR      R1,[SP, #+32]
        STR      R1,[R4, #+4]
//  288   s->event_callback = event_callback;
        LDR      R1,[SP, #+36]
        STR      R1,[R0, #+4]
//  289   list_add(socketlist, s);
        ADDS     R0,R5,#+4
        MOV      R1,R4
          CFI FunCall list_add
        BL       list_add
//  290 
//  291   s->listen_port = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+44]
//  292   s->flags = TCP_SOCKET_FLAGS_NONE;
        STRB     R0,[R4, #+42]
//  293   return 1;
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock4
//  294 }
//  295 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function tcp_socket_connect
        THUMB
//  296 int
//  297 tcp_socket_connect(struct tcp_socket *s,
//  298                    const uip_ipaddr_t *ipaddr,
//  299                    uint16_t port)
//  300 {
tcp_socket_connect:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOV      R5,R1
        MOV      R8,R2
//  301   if(s == NULL) {
        BEQ.N    ??tcp_socket_connect_0
//  302     return -1;
//  303   }
//  304   if(s->c != NULL) {
        LDR      R0,[R4, #+48]
        CBZ.N    R0,??tcp_socket_connect_1
//  305     tcp_markconn(s->c, NULL);
        MOVS     R1,#+0
          CFI FunCall tcp_attach
        BL       tcp_attach
//  306   }
//  307   PROCESS_CONTEXT_BEGIN(&tcp_socket_process);
??tcp_socket_connect_1:
        LDR.N    R7,??DataTable8_7
        LDR.N    R0,??DataTable8_8
        LDR      R6,[R7, #+0]
        STR      R0,[R7, #+0]
//  308   s->c = tcp_connect(ipaddr, uip_htons(port), s);
        MOV      R0,R8
          CFI FunCall uip_htons
        BL       uip_htons
        MOV      R1,R0
        MOV      R2,R4
        MOV      R0,R5
          CFI FunCall tcp_connect
        BL       tcp_connect
        STR      R0,[R4, #+48]
//  309   PROCESS_CONTEXT_END();
        STR      R6,[R7, #+0]
//  310   if(s->c == NULL) {
        CBNZ.N   R0,??tcp_socket_connect_2
//  311     return -1;
??tcp_socket_connect_0:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock5
//  312   } else {
//  313     return 1;
??tcp_socket_connect_2:
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  314   }
//  315 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls tcp_socket_register
          CFI NoCalls tcp_socket_connect
          CFI CFA R13+24
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine1:
        MOVS     R0,#+1
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls tcp_socket_register
          CFI NoCalls tcp_socket_connect
          CFI CFA R13+24
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        MOV      R0,#-1
        POP      {R4-R8,PC}
          CFI EndBlock cfiBlock7
//  316 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function tcp_socket_listen
        THUMB
//  317 int
//  318 tcp_socket_listen(struct tcp_socket *s,
//  319            uint16_t port)
//  320 {
tcp_socket_listen:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOV      R0,R1
//  321   if(s == NULL) {
        BNE.N    ??tcp_socket_listen_0
//  322     return -1;
        B.N      ?Subroutine2
//  323   }
//  324 
//  325   s->listen_port = port;
//  326   PROCESS_CONTEXT_BEGIN(&tcp_socket_process);
??tcp_socket_listen_0:
        LDR.N    R5,??DataTable8_7
        LDR.N    R1,??DataTable8_8
        STRH     R0,[R4, #+44]
        LDR      R6,[R5, #+0]
        STR      R1,[R5, #+0]
//  327   tcp_listen(uip_htons(port));
          CFI FunCall uip_htons
        BL       uip_htons
          CFI FunCall tcp_listen
        BL       tcp_listen
//  328   PROCESS_CONTEXT_END();
        STR      R6,[R5, #+0]
//  329   s->flags |= TCP_SOCKET_FLAGS_LISTENING;
        LDRB     R0,[R4, #+42]
        ORR      R0,R0,#0x1
        STRB     R0,[R4, #+42]
//  330   return 1;
        MOVS     R0,#+1
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock8
//  331 }
//  332 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function tcp_socket_unlisten
        THUMB
//  333 int
//  334 tcp_socket_unlisten(struct tcp_socket *s)
//  335 {
tcp_socket_unlisten:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//  336   if(s == NULL) {
        BNE.N    ??tcp_socket_unlisten_0
//  337     return -1;
        MOV      R0,#-1
        POP      {R1,R4-R7,PC}
//  338   }
//  339 
//  340   PROCESS_CONTEXT_BEGIN(&tcp_socket_process);
??tcp_socket_unlisten_0:
        LDR.N    R5,??DataTable8_7
        LDR.N    R0,??DataTable8_8
        LDR      R6,[R5, #+0]
        STR      R0,[R5, #+0]
//  341   tcp_unlisten(uip_htons(s->listen_port));
        ADD      R7,R4,#+42
        LDRH     R0,[R7, #+2]
          CFI FunCall uip_htons
        BL       uip_htons
          CFI FunCall tcp_unlisten
        BL       tcp_unlisten
//  342   PROCESS_CONTEXT_END();
        STR      R6,[R5, #+0]
//  343   s->listen_port = 0;
        MOVS     R0,#+0
        STRH     R0,[R7, #+2]
//  344   s->flags &= ~TCP_SOCKET_FLAGS_LISTENING;
        LDRB     R0,[R4, #+42]
        AND      R0,R0,#0xFE
        STRB     R0,[R4, #+42]
//  345   return 1;
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock9
//  346 }
//  347 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function tcp_socket_send
        THUMB
//  348 int
//  349 tcp_socket_send(struct tcp_socket *s,
//  350                 const uint8_t *data, int datalen)
//  351 {
tcp_socket_send:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOV      R5,R1
        MOV      R0,R2
//  352   int len;
//  353 
//  354   if(s == NULL) {
        BNE.N    ??tcp_socket_send_0
//  355     return -1;
        B.N      ?Subroutine2
//  356   }
//  357 
//  358   len = MIN(datalen, s->output_data_maxlen - s->output_data_len);
??tcp_socket_send_0:
        LDRH     R1,[R4, #+32]
        LDRH     R2,[R4, #+34]
        SUBS     R1,R1,R2
          CFI FunCall MIN
        BL       MIN
        MOV      R6,R0
//  359 
//  360   memcpy(&s->output_data_ptr[s->output_data_len], data, len);
        LDR      R0,[R4, #+24]
        LDRH     R3,[R4, #+34]
        MOV      R2,R6
        MOV      R1,R5
        ADDS     R0,R3,R0
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  361   s->output_data_len += len;
        LDRH     R0,[R4, #+34]
        ADDS     R0,R6,R0
        STRH     R0,[R4, #+34]
//  362 
//  363   if(s->output_senddata_len == 0) {
        LDRH     R1,[R4, #+38]
        CBNZ.N   R1,??tcp_socket_send_1
//  364     s->output_senddata_len = s->output_data_len;
        STRH     R0,[R4, #+38]
//  365   }
//  366 
//  367   return len;
??tcp_socket_send_1:
        MOV      R0,R6
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock10
//  368 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls tcp_socket_listen
          CFI NoCalls tcp_socket_send
          CFI CFA R13+16
          CFI R4 Frame(CFA, -16)
          CFI R5 Frame(CFA, -12)
          CFI R6 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine2:
        MOV      R0,#-1
        POP      {R4-R6,PC}
          CFI EndBlock cfiBlock11
//  369 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function tcp_socket_send_str
        THUMB
//  370 int
//  371 tcp_socket_send_str(struct tcp_socket *s,
//  372              const char *str)
//  373 {
tcp_socket_send_str:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  374   return tcp_socket_send(s, (const uint8_t *)str, strlen(str));
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R2,R0
        MOV      R1,R5
        MOV      R0,R4
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall tcp_socket_send
        B.N      tcp_socket_send
          CFI EndBlock cfiBlock12
//  375 }
//  376 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function tcp_socket_close
          CFI NoCalls
        THUMB
//  377 int
//  378 tcp_socket_close(struct tcp_socket *s)
//  379 {
//  380   if(s == NULL) {
tcp_socket_close:
        CBNZ.N   R0,??tcp_socket_close_0
//  381     return -1;
        MOV      R0,#-1
        BX       LR
//  382   }
//  383 
//  384   s->flags |= TCP_SOCKET_FLAGS_CLOSING;
??tcp_socket_close_0:
        LDRB     R1,[R0, #+42]
        ORR      R1,R1,#0x2
        STRB     R1,[R0, #+42]
//  385   return 1;
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  386 }
//  387 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function tcp_socket_unregister
        THUMB
//  388 int
//  389 tcp_socket_unregister(struct tcp_socket *s)
//  390 {
tcp_socket_unregister:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  391   if(s == NULL) {
        BNE.N    ??tcp_socket_unregister_0
//  392     return -1;
        MOV      R0,#-1
        POP      {R4,PC}
//  393   }
//  394 
//  395   tcp_socket_unlisten(s);
??tcp_socket_unregister_0:
          CFI FunCall tcp_socket_unlisten
        BL       tcp_socket_unlisten
//  396   if(s->c != NULL) {
        LDR      R0,[R4, #+48]
        CBZ.N    R0,??tcp_socket_unregister_1
//  397     tcp_attach(s->c, NULL);
        MOVS     R1,#+0
          CFI FunCall tcp_attach
        BL       tcp_attach
//  398   }
//  399   list_remove(socketlist, s);
??tcp_socket_unregister_1:
        MOV      R1,R4
        LDR.N    R0,??DataTable8_4
          CFI FunCall list_remove
        BL       list_remove
//  400   return 1;
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock14
//  401 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     uip_conn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     uip_flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     ??inited+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     tcpip_event

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     ??inited

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     process_current

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     ??inited+0x8
//  402 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function tcp_socket_max_sendlen
          CFI NoCalls
        THUMB
//  403 int
//  404 tcp_socket_max_sendlen(struct tcp_socket *s)
//  405 {
//  406   return s->output_data_maxlen - s->output_data_len;
tcp_socket_max_sendlen:
        LDRH     R1,[R0, #+32]
        LDRH     R0,[R0, #+34]
        SUBS     R0,R1,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  407 }

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
        DC8 "TCP socket process"
        DC8 0

        END
//  408 /*---------------------------------------------------------------------------*/
// 
//    28 bytes in section .data
//    20 bytes in section .rodata
// 1 114 bytes in section .text
// 
// 1 114 bytes of CODE  memory
//    20 bytes of CONST memory
//    28 bytes of DATA  memory
//
//Errors: none
//Warnings: 4
