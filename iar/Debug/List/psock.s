///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:09
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\psock.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\psock.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\psock.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN uip_appdata
        EXTERN uip_conn
        EXTERN uip_flags
        EXTERN uip_len
        EXTERN uip_send

        PUBLIC psock_datalen
        PUBLIC psock_generator_send
        PUBLIC psock_init
        PUBLIC psock_newdata
        PUBLIC psock_readbuf_len
        PUBLIC psock_readto
        PUBLIC psock_send
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\psock.c
//    1 /*
//    2  * Copyright (c) 2004, Swedish Institute of Computer Science.
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
//   31  * Author: Adam Dunkels <adam@sics.se>
//   32  *
//   33  */
//   34 
//   35 #include <string.h>
//   36 
//   37 #include "net/ip/psock.h"
//   38 
//   39 #define STATE_NONE 0
//   40 #define STATE_ACKED 1
//   41 #define STATE_READ 2
//   42 #define STATE_BLOCKED_NEWDATA 3
//   43 #define STATE_BLOCKED_CLOSE 4
//   44 #define STATE_BLOCKED_SEND 5
//   45 #define STATE_DATA_SENT 6
//   46 
//   47 /*
//   48  * Return value of the buffering functions that indicates that a
//   49  * buffer was not filled by incoming data.
//   50  *
//   51  */
//   52 #define BUF_NOT_FULL 0
//   53 #define BUF_NOT_FOUND 0
//   54 
//   55 /*
//   56  * Return value of the buffering functions that indicates that a
//   57  * buffer was completely filled by incoming data.
//   58  *
//   59  */
//   60 #define BUF_FULL 1
//   61 
//   62 /*
//   63  * Return value of the buffering functions that indicates that an
//   64  * end-marker byte was found.
//   65  *
//   66  */
//   67 #define BUF_FOUND 2
//   68 
//   69 /*---------------------------------------------------------------------------*/
//   70 static void
//   71 buf_setup(struct psock_buf *buf,
//   72 	  uint8_t *bufptr, uint16_t bufsize)
//   73 {
//   74   buf->ptr = bufptr;
//   75   buf->left = bufsize;
//   76 }
//   77 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function buf_bufdata
        THUMB
//   78 static uint8_t
//   79 buf_bufdata(struct psock_buf *buf, uint16_t len,
//   80 	    uint8_t **dataptr, uint16_t *datalen)
//   81 {
buf_bufdata:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R6,R3
        MOV      R5,R2
//   82   if(*datalen < buf->left) {
        LDRH     R3,[R4, #+4]
        LDRH     R2,[R6, #+0]
        LDR      R0,[R4, #+0]
        LDR      R1,[R5, #+0]
        CMP      R2,R3
        BCS.N    ??buf_bufdata_0
//   83     memcpy(buf->ptr, *dataptr, *datalen);
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   84     buf->ptr += *datalen;
        LDRH     R0,[R6, #+0]
        LDR      R1,[R4, #+0]
        ADDS     R1,R0,R1
        STR      R1,[R4, #+0]
//   85     buf->left -= *datalen;
        LDRH     R1,[R4, #+4]
        SUBS     R0,R1,R0
        STRH     R0,[R4, #+4]
//   86     *dataptr += *datalen;
        LDRH     R1,[R6, #+0]
        LDR      R0,[R5, #+0]
        ADDS     R0,R1,R0
        STR      R0,[R5, #+0]
//   87     *datalen = 0;
        MOVS     R0,#+0
        STRH     R0,[R6, #+0]
//   88     return BUF_NOT_FULL;
        POP      {R4-R6,PC}
//   89   } else if(*datalen == buf->left) {
??buf_bufdata_0:
        BNE.N    ??buf_bufdata_1
//   90     memcpy(buf->ptr, *dataptr, *datalen);
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   91     buf->ptr += *datalen;
        LDR      R0,[R4, #+0]
        LDRH     R1,[R6, #+0]
        ADDS     R0,R1,R0
        STR      R0,[R4, #+0]
//   92     buf->left = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+4]
//   93     *dataptr += *datalen;
        LDRH     R1,[R6, #+0]
        LDR      R0,[R5, #+0]
        ADDS     R0,R1,R0
        STR      R0,[R5, #+0]
//   94     *datalen = 0;
        MOVS     R0,#+0
        STRH     R0,[R6, #+0]
//   95     return BUF_FULL;
        B.N      ??buf_bufdata_2
//   96   } else {
//   97     memcpy(buf->ptr, *dataptr, buf->left);
??buf_bufdata_1:
        MOV      R2,R3
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   98     buf->ptr += buf->left;
        LDRH     R0,[R4, #+4]
        LDR      R1,[R4, #+0]
        ADDS     R1,R0,R1
        STR      R1,[R4, #+0]
//   99     *datalen -= buf->left;
        LDRH     R1,[R6, #+0]
        SUBS     R0,R1,R0
        STRH     R0,[R6, #+0]
//  100     *dataptr += buf->left;
        LDRH     R1,[R4, #+4]
        LDR      R0,[R5, #+0]
        ADDS     R0,R1,R0
        STR      R0,[R5, #+0]
//  101     buf->left = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+4]
//  102     return BUF_FULL;
??buf_bufdata_2:
        MOVS     R0,#+1
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//  103   }
//  104 }
//  105 /*---------------------------------------------------------------------------*/
//  106 static uint8_t
//  107 buf_bufto(CC_REGISTER_ARG struct psock_buf *buf, uint8_t endmarker,
//  108 	  CC_REGISTER_ARG uint8_t **dataptr, CC_REGISTER_ARG uint16_t *datalen)
//  109 {
//  110   uint8_t c;
//  111   while(buf->left > 0 && *datalen > 0) {
//  112     c = *buf->ptr = **dataptr;
//  113     ++*dataptr;
//  114     ++buf->ptr;
//  115     --*datalen;
//  116     --buf->left;
//  117     
//  118     if(c == endmarker) {
//  119       return BUF_FOUND;
//  120     }
//  121   }
//  122 
//  123   if(*datalen == 0) {
//  124     return BUF_NOT_FOUND;
//  125   }
//  126 
//  127   return BUF_FULL;
//  128 }
//  129 /*---------------------------------------------------------------------------*/
//  130 static char
//  131 data_is_sent_and_acked(CC_REGISTER_ARG struct psock *s)
//  132 {
//  133   /* If data has previously been sent, and the data has been acked, we
//  134      increase the send pointer and call send_data() to send more
//  135      data. */
//  136   if(s->state != STATE_DATA_SENT || uip_rexmit()) {
//  137     if(s->sendlen > uip_mss()) {
//  138       uip_send(s->sendptr, uip_mss());
//  139     } else {
//  140       uip_send(s->sendptr, s->sendlen);
//  141     }
//  142     s->state = STATE_DATA_SENT;
//  143     return 0;
//  144   } else if(s->state == STATE_DATA_SENT && uip_acked()) {
//  145     if(s->sendlen > uip_mss()) {
//  146       s->sendlen -= uip_mss();
//  147       s->sendptr += uip_mss();
//  148     } else {
//  149       s->sendptr += s->sendlen;
//  150       s->sendlen = 0;
//  151     }
//  152     s->state = STATE_ACKED;
//  153     return 1;
//  154   }
//  155   return 0;
//  156 }
//  157 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function psock_send
        THUMB
//  158 PT_THREAD(psock_send(CC_REGISTER_ARG struct psock *s, const uint8_t *buf,
//  159 		     unsigned int len))
//  160 {
psock_send:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  161   PT_BEGIN(&s->psockpt);
        LDRH     R0,[R4, #+2]
        CBZ.N    R0,??psock_send_0
        CMP      R0,#+183
        BEQ.N    ??psock_send_1
        B.N      ??psock_send_2
//  162 
//  163   /* If there is no data to send, we exit immediately. */
//  164   if(len == 0) {
??psock_send_0:
        CBNZ.N   R2,??psock_send_3
//  165     PT_EXIT(&s->psockpt);
        MOVS     R0,#+2
        POP      {R4,PC}
//  166   }
//  167 
//  168   /* Save the length of and a pointer to the data that is to be
//  169      sent. */
//  170   s->sendptr = buf;
??psock_send_3:
        STR      R1,[R4, #+4]
//  171   s->sendlen = len;
        STRH     R2,[R4, #+16]
//  172 
//  173   s->state = STATE_NONE;
??psock_send_4:
        STRB     R0,[R4, #+32]
//  174 
//  175   /* We loop here until all data is sent. The s->sendlen variable is
//  176      updated by the data_sent() function. */
//  177   while(s->sendlen > 0) {
        LDRH     R0,[R4, #+16]
        CBZ.N    R0,??psock_send_5
//  178 
//  179     /*
//  180      * The protothread will wait here until all data has been
//  181      * acknowledged and sent (data_is_acked_and_send() returns 1).
//  182      */
//  183     PT_WAIT_UNTIL(&s->psockpt, data_is_sent_and_acked(s));
        MOVS     R0,#+183
        STRH     R0,[R4, #+2]
??psock_send_1:
        LDRB     R0,[R4, #+32]
        CMP      R0,#+6
        BNE.N    ??psock_send_6
        LDR.N    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        LSLS     R1,R0,#+29
        BMI.N    ??psock_send_6
        LSLS     R0,R0,#+31
        BPL.N    ??psock_send_7
        LDR.N    R0,??DataTable3_1
        LDR      R3,[R0, #+0]
        LDRH     R1,[R4, #+16]
        LDRH     R2,[R3, #+30]
        LDR      R0,[R4, #+4]
        CMP      R2,R1
        BCS.N    ??psock_send_8
        SUBS     R1,R1,R2
        STRH     R1,[R4, #+16]
        LDRH     R1,[R3, #+30]
        ADDS     R0,R1,R0
        STR      R0,[R4, #+4]
        B.N      ??psock_send_9
??psock_send_8:
        ADDS     R0,R1,R0
        STR      R0,[R4, #+4]
        MOVS     R0,#+0
        STRH     R0,[R4, #+16]
??psock_send_9:
        MOVS     R0,#+1
        B.N      ??psock_send_4
??psock_send_6:
        LDR.N    R0,??DataTable3_1
        LDR      R3,[R0, #+0]
        LDRH     R1,[R4, #+16]
        LDRH     R2,[R3, #+30]
        LDR      R0,[R4, #+4]
        CMP      R2,R1
        IT       CC 
        MOVCC    R1,R2
          CFI FunCall uip_send
        BL       uip_send
        MOVS     R0,#+6
        STRB     R0,[R4, #+32]
??psock_send_7:
        MOVS     R0,#+0
        POP      {R4,PC}
//  184   }
//  185 
//  186   s->state = STATE_NONE;
??psock_send_5:
        STRB     R0,[R4, #+32]
//  187   
//  188   PT_END(&s->psockpt);
??psock_send_2:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock1
//  189 }
//  190 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function psock_generator_send
        THUMB
//  191 PT_THREAD(psock_generator_send(CC_REGISTER_ARG struct psock *s,
//  192 			       unsigned short (*generate)(void *), void *arg))
//  193 {
psock_generator_send:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R2
//  194   PT_BEGIN(&s->psockpt);
        LDRH     R2,[R4, #+2]
        CBZ.N    R2,??psock_generator_send_0
        CMP      R2,#+217
        BEQ.N    ??psock_generator_send_1
        B.N      ??psock_generator_send_2
//  195 
//  196   /* Ensure that there is a generator function to call. */
//  197   if(generate == NULL) {
??psock_generator_send_0:
        MOVS     R2,R1
        BNE.N    ??psock_generator_send_3
//  198     PT_EXIT(&s->psockpt);
        MOVS     R0,#+2
        POP      {R4,PC}
//  199   }
//  200 
//  201   s->state = STATE_NONE;
??psock_generator_send_3:
        MOVS     R2,#+0
        STRB     R2,[R4, #+32]
//  202   do {
//  203     /* Call the generator function to generate the data in the
//  204      uip_appdata buffer. */
//  205     s->sendlen = generate(arg);
??psock_generator_send_4:
          CFI FunCall
        BLX      R1
        MOV      R1,R0
//  206     s->sendptr = uip_appdata;
        LDR.N    R0,??DataTable3_2
        LDR.N    R2,??DataTable3_1
        STRH     R1,[R4, #+16]
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+4]
        LDR      R2,[R2, #+0]
        LDRH     R2,[R2, #+30]
        CMP      R2,R1
        IT       CC 
        MOVCC    R1,R2
//  207     
//  208     if(s->sendlen > uip_mss()) {
//  209       uip_send(s->sendptr, uip_mss());
//  210     } else {
//  211       uip_send(s->sendptr, s->sendlen);
          CFI FunCall uip_send
        BL       uip_send
//  212     }
//  213     s->state = STATE_DATA_SENT;
        MOVS     R0,#+6
        STRB     R0,[R4, #+32]
//  214 
//  215     /* Wait until all data is sent and acknowledged. */
//  216  // if (!s->sendlen) break;   //useful debugging aid
//  217     PT_YIELD_UNTIL(&s->psockpt, uip_acked() || uip_rexmit());
        MOVS     R0,#+217
        STRH     R0,[R4, #+2]
        B.N      ??psock_generator_send_5
??psock_generator_send_1:
        LDR.N    R2,??DataTable3
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+5
        TST      R2,R3
        BNE.N    ??psock_generator_send_6
??psock_generator_send_5:
        MOVS     R0,#+1
        POP      {R4,PC}
//  218   } while(!uip_acked());
??psock_generator_send_6:
        LSLS     R2,R2,#+31
        BPL.N    ??psock_generator_send_4
//  219   
//  220   s->state = STATE_NONE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+32]
          CFI EndBlock cfiBlock2
//  221   
//  222   PT_END(&s->psockpt);
??psock_generator_send_2:
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  223 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls psock_send
          CFI NoCalls psock_generator_send
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        MOVS     R0,#+0
        STRH     R0,[R4, #+2]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  224 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function psock_datalen
          CFI NoCalls
        THUMB
//  225 uint16_t
//  226 psock_datalen(struct psock *psock)
//  227 {
//  228   return psock->bufsize - psock->buf.left;
psock_datalen:
        LDR      R1,[R0, #+28]
        LDRH     R0,[R0, #+24]
        SUBS     R0,R1,R0
        UXTH     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  229 }
//  230 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function psock_newdata
          CFI NoCalls
        THUMB
//  231 char
//  232 psock_newdata(struct psock *s)
//  233 {
//  234   if(s->readlen > 0) {
psock_newdata:
        LDRH     R1,[R0, #+18]
        CBNZ.N   R1,??psock_newdata_0
//  235     /* There is data in the uip_appdata buffer that has not yet been
//  236        read with the PSOCK_READ functions. */
//  237     return 1;
//  238   } else if(s->state == STATE_READ) {
        LDRB     R1,[R0, #+32]
        CMP      R1,#+2
        BNE.N    ??psock_newdata_1
//  239     /* All data in uip_appdata buffer already consumed. */
//  240     s->state = STATE_BLOCKED_NEWDATA;
        MOVS     R1,#+3
        STRB     R1,[R0, #+32]
//  241     return 0;
        B.N      ??psock_newdata_2
//  242   } else if(uip_newdata()) {
??psock_newdata_1:
        LDR.N    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??psock_newdata_2
//  243     /* There is new data that has not been consumed. */
//  244     return 1;
??psock_newdata_0:
        MOVS     R0,#+1
        BX       LR
//  245   } else {
//  246     /* There is no new data. */
//  247     return 0;
??psock_newdata_2:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  248   }
//  249 }
//  250 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function psock_readto
          CFI NoCalls
        THUMB
//  251 PT_THREAD(psock_readto(CC_REGISTER_ARG struct psock *psock, unsigned char c))
//  252 {
psock_readto:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  253   PT_BEGIN(&psock->psockpt);
        LDRH     R2,[R0, #+2]
        CBZ.N    R2,??psock_readto_0
        CMP      R2,#+262
        BEQ.N    ??psock_readto_1
        B.N      ??psock_readto_2
//  254 
//  255   buf_setup(&psock->buf, psock->bufptr, psock->bufsize);
??psock_readto_0:
        LDR      R2,[R0, #+28]
        LDR      R4,[R0, #+12]
        ADD      R3,R0,#+20
        STR      R4,[R3, #+0]
        STRH     R2,[R3, #+4]
//  256   
//  257   /* XXX: Should add buf_checkmarker() before do{} loop, if
//  258      incoming data has been handled while waiting for a write. */
//  259 
//  260   do {
//  261     if(psock->readlen == 0) {
??psock_readto_3:
        LDRH     R2,[R0, #+18]
        CBNZ.N   R2,??psock_readto_4
//  262       PT_WAIT_UNTIL(&psock->psockpt, psock_newdata(psock));
        MOV      R2,#+262
        STRH     R2,[R0, #+2]
        B.N      ??psock_readto_5
??psock_readto_1:
        LDRH     R2,[R0, #+18]
        CBNZ.N   R2,??psock_readto_6
??psock_readto_5:
        LDRB     R2,[R0, #+32]
        CMP      R2,#+2
        BNE.N    ??psock_readto_7
        MOVS     R1,#+3
        STRB     R1,[R0, #+32]
        B.N      ??psock_readto_8
??psock_readto_7:
        LDR.N    R2,??DataTable3
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+30
        BPL.N    ??psock_readto_8
//  263       psock->state = STATE_READ;
??psock_readto_6:
        MOVS     R2,#+2
        STRB     R2,[R0, #+32]
//  264       psock->readptr = (uint8_t *)uip_appdata;
        LDR.N    R2,??DataTable3_2
        LDR      R2,[R2, #+0]
        STR      R2,[R0, #+8]
//  265       psock->readlen = uip_datalen();
        LDR.N    R2,??DataTable3_3
        LDRH     R2,[R2, #+0]
        STRH     R2,[R0, #+18]
//  266     }
//  267   } while(buf_bufto(&psock->buf, c,
//  268 		    &psock->readptr,
//  269 		    &psock->readlen) == BUF_NOT_FOUND);
??psock_readto_4:
        ADD      R2,R0,#+18
        ADD      R3,R0,#+8
        ADD      R4,R0,#+20
??psock_readto_9:
        LDRH     R5,[R2, #+0]
        LDRH     R6,[R4, #+4]
        CBZ.N    R6,??psock_readto_10
        CMP      R5,#+0
        BEQ.N    ??psock_readto_3
        LDR      R5,[R3, #+0]
        LDR      R6,[R4, #+0]
        LDRB     R5,[R5, #+0]
        STRB     R5,[R6, #+0]
        LDR      R6,[R3, #+0]
        ADDS     R6,R6,#+1
        STR      R6,[R3, #+0]
        LDR      R6,[R4, #+0]
        ADDS     R6,R6,#+1
        STR      R6,[R4, #+0]
        LDRH     R6,[R2, #+0]
        SUBS     R6,R6,#+1
        STRH     R6,[R2, #+0]
        LDRH     R6,[R4, #+4]
        SUBS     R6,R6,#+1
        CMP      R5,R1
        STRH     R6,[R4, #+4]
        BNE.N    ??psock_readto_9
        B.N      ??psock_readto_11
??psock_readto_10:
        CMP      R5,#+0
        BEQ.N    ??psock_readto_3
//  270   
//  271   if(psock_datalen(psock) == 0) {
??psock_readto_11:
        LDR      R1,[R0, #+28]
        LDRH     R2,[R0, #+24]
        SUBS     R1,R1,R2
        UXTH     R1,R1
        CBNZ.N   R1,??psock_readto_2
//  272     psock->state = STATE_NONE;
        STRB     R1,[R0, #+32]
//  273     PT_RESTART(&psock->psockpt);
        STRH     R1,[R0, #+2]
??psock_readto_8:
        MOVS     R0,#+0
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R6 Frame(CFA, -4)
          CFI CFA R13+12
//  274   }
//  275   PT_END(&psock->psockpt);
??psock_readto_2:
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R0,#+3
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  276 }
//  277 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function psock_readbuf_len
        THUMB
//  278 PT_THREAD(psock_readbuf_len(CC_REGISTER_ARG struct psock *psock, uint16_t len))
//  279 {
psock_readbuf_len:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  280   PT_BEGIN(&psock->psockpt);
        LDRH     R0,[R4, #+2]
        CBZ.N    R0,??psock_readbuf_len_0
        CMP      R0,#+290
        BEQ.N    ??psock_readbuf_len_1
        B.N      ??psock_readbuf_len_2
//  281 
//  282   buf_setup(&psock->buf, psock->bufptr, psock->bufsize);
??psock_readbuf_len_0:
        LDR      R0,[R4, #+28]
        LDR      R2,[R4, #+12]
        ADD      R1,R4,#+20
        STR      R2,[R1, #+0]
        STRH     R0,[R1, #+4]
//  283 
//  284   /* XXX: Should add buf_checkmarker() before do{} loop, if
//  285      incoming data has been handled while waiting for a write. */
//  286   
//  287   /* read len bytes or to end of data */
//  288   do {
//  289     if(psock->readlen == 0) {
??psock_readbuf_len_3:
        LDRH     R0,[R4, #+18]
        CBNZ.N   R0,??psock_readbuf_len_4
//  290       PT_WAIT_UNTIL(&psock->psockpt, psock_newdata(psock));
        MOV      R0,#+290
        STRH     R0,[R4, #+2]
        B.N      ??psock_readbuf_len_5
??psock_readbuf_len_1:
        LDRH     R0,[R4, #+18]
        CBNZ.N   R0,??psock_readbuf_len_6
??psock_readbuf_len_5:
        LDRB     R0,[R4, #+32]
        CMP      R0,#+2
        BNE.N    ??psock_readbuf_len_7
        MOVS     R0,#+3
        STRB     R0,[R4, #+32]
        B.N      ??psock_readbuf_len_8
??psock_readbuf_len_7:
        LDR.N    R0,??DataTable3
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BMI.N    ??psock_readbuf_len_6
??psock_readbuf_len_8:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}
//  291       psock->state = STATE_READ;
??psock_readbuf_len_6:
        MOVS     R0,#+2
        STRB     R0,[R4, #+32]
//  292       psock->readptr = (uint8_t *)uip_appdata;
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+8]
//  293       psock->readlen = uip_datalen();
        LDR.N    R0,??DataTable3_3
        LDRH     R0,[R0, #+0]
        STRH     R0,[R4, #+18]
//  294     }
//  295   } while(buf_bufdata(&psock->buf, psock->bufsize,
//  296 		      &psock->readptr, &psock->readlen) == BUF_NOT_FULL &&
//  297 	  psock_datalen(psock) < len);
??psock_readbuf_len_4:
        ADD      R3,R4,#+18
        LDR      R1,[R4, #+28]
        ADD      R2,R4,#+8
        UXTH     R1,R1
        ADD      R0,R4,#+20
          CFI FunCall buf_bufdata
        BL       buf_bufdata
        CBNZ.N   R0,??psock_readbuf_len_9
        LDR      R0,[R4, #+28]
        LDRH     R1,[R4, #+24]
        SUBS     R0,R0,R1
        UXTH     R0,R0
        CMP      R0,R5
        BCC.N    ??psock_readbuf_len_3
//  298   
//  299   if(psock_datalen(psock) == 0) {
??psock_readbuf_len_9:
        LDR      R0,[R4, #+28]
        LDRH     R1,[R4, #+24]
        SUBS     R0,R0,R1
        UXTH     R0,R0
        CBNZ.N   R0,??psock_readbuf_len_2
//  300     psock->state = STATE_NONE;
        STRB     R0,[R4, #+32]
//  301     PT_RESTART(&psock->psockpt);
        STRH     R0,[R4, #+2]
        POP      {R1,R4,R5,PC}
//  302   }
//  303   PT_END(&psock->psockpt);
??psock_readbuf_len_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+2]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock7
//  304 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     uip_flags

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     uip_conn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     uip_len
//  305 
//  306 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function psock_init
          CFI NoCalls
        THUMB
//  307 void
//  308 psock_init(CC_REGISTER_ARG struct psock *psock,
//  309 	   uint8_t *buffer, unsigned int buffersize)
//  310 {
//  311   psock->state = STATE_NONE;
psock_init:
        MOVS     R3,#+0
        STRB     R3,[R0, #+32]
//  312   psock->readlen = 0;
        STRH     R3,[R0, #+18]
//  313   psock->bufptr = buffer;
        STR      R1,[R0, #+12]
//  314   psock->bufsize = buffersize;
//  315   buf_setup(&psock->buf, buffer, buffersize);
        ADD      R3,R0,#+20
        STR      R2,[R0, #+28]
        STR      R1,[R3, #+0]
        STRH     R2,[R3, #+4]
//  316   PT_INIT(&psock->pt);
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  317   PT_INIT(&psock->psockpt);
        STRH     R1,[R0, #+2]
//  318 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  319 /*---------------------------------------------------------------------------*/
// 
// 774 bytes in section .text
// 
// 774 bytes of CODE memory
//
//Errors: none
//Warnings: 1
