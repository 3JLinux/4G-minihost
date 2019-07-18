///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\slipdev.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\slipdev.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\slipdev.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy4
        EXTERN slipdev_char_poll
        EXTERN slipdev_char_put
        EXTERN uip_aligned_buf
        EXTERN uip_appdata
        EXTERN uip_len

        PUBLIC slipdev_init
        PUBLIC slipdev_poll
        PUBLIC slipdev_send
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\slipdev.c
//    1 /*
//    2  * Copyright (c) 2001, Adam Dunkels.
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
//   13  * 3. The name of the author may not be used to endorse or promote
//   14  *    products derived from this software without specific prior
//   15  *    written permission.  
//   16  *
//   17  * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS
//   18  * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//   19  * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   20  * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
//   21  * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   22  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
//   23  * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//   24  * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
//   25  * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//   26  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//   27  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  
//   28  *
//   29  * This file is part of the uIP TCP/IP stack.
//   30  *
//   31  *
//   32  */
//   33 
//   34 /**
//   35  * \file
//   36  * SLIP protocol implementation
//   37  * \author Adam Dunkels <adam@dunkels.com>
//   38  */
//   39 
//   40 /**
//   41  * \addtogroup uip
//   42  * @{
//   43  */
//   44 
//   45 /**
//   46  * \defgroup slip Serial Line IP (SLIP) protocol
//   47  * @{
//   48  *
//   49  * The SLIP protocol is a very simple way to transmit IP packets over
//   50  * a serial line. It does not provide any framing or error control,
//   51  * and is therefore not very widely used today.
//   52  *
//   53  * This SLIP implementation requires two functions for accessing the
//   54  * serial device: slipdev_char_poll() and slipdev_char_put(). These
//   55  * must be implemented specifically for the system on which the SLIP
//   56  * protocol is to be run.
//   57  */
//   58 
//   59 /*
//   60  * This is a generic implementation of the SLIP protocol over an RS232
//   61  * (serial) device. 
//   62  *
//   63  * Huge thanks to Ullrich von Bassewitz <uz@cc65.org> of cc65 fame for
//   64  * and endless supply of bugfixes, insightsful comments and
//   65  * suggestions, and improvements to this code!
//   66  */
//   67 
//   68 #include "uip.h"
//   69 #include "slipdev.h"
//   70 #include <string.h>  /* For memcpy() */
//   71 
//   72 #define SLIP_END     0300
//   73 #define SLIP_ESC     0333
//   74 #define SLIP_ESC_END 0334
//   75 #define SLIP_ESC_ESC 0335
//   76 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   77 static uint8_t slip_buf[UIP_BUFSIZE];
slip_buf:
        DS8 1516
//   78 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   79 static uint16_t len, tmplen;
//   80 static uint8_t lastc;
lastc:
        DS8 1
        DS8 1
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DS8 2
//   81 
//   82 /*-----------------------------------------------------------------------------------*/
//   83 /**
//   84  * Send the packet in the uip_buf and uip_appdata buffers using the
//   85  * SLIP protocol.
//   86  *
//   87  * The first 40 bytes of the packet (the IP and TCP headers) are read
//   88  * from the uip_buf buffer, and the following bytes (the application
//   89  * data) are read from the uip_appdata buffer.
//   90  *
//   91  * \return This function will always return 0.
//   92  */
//   93 /*-----------------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function slipdev_send
        THUMB
//   94 uint8_t
//   95 slipdev_send(void)
//   96 {
slipdev_send:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//   97   uint16_t i;
//   98   uint8_t *ptr;
//   99   uint8_t c;
//  100 
//  101   slipdev_char_put(SLIP_END);
        MOVS     R0,#+192
          CFI FunCall slipdev_char_put
        BL       slipdev_char_put
//  102 
//  103   ptr = &uip_buf[UIP_LLH_LEN];
        LDR.N    R4,??DataTable2
//  104   for(i = 0; i < uip_len; ++i) {
        LDR.N    R6,??DataTable2_1
        LDR.N    R7,??DataTable2_2
        MOVS     R5,#+0
        B.N      ??slipdev_send_0
//  105     if(i == UIP_TCPIP_HLEN) {
//  106       ptr = (uint8_t *)uip_appdata;
//  107     }
//  108     c = *ptr++;
//  109     switch(c) {
//  110     case SLIP_END:
//  111       slipdev_char_put(SLIP_ESC);
//  112       slipdev_char_put(SLIP_ESC_END);
//  113       break;
//  114     case SLIP_ESC:
//  115       slipdev_char_put(SLIP_ESC);
//  116       slipdev_char_put(SLIP_ESC_ESC);
//  117       break;
//  118     default:
//  119       slipdev_char_put(c);
??slipdev_send_1:
          CFI FunCall slipdev_char_put
        BL       slipdev_char_put
//  120       break;
        ADDS     R5,R5,#+1
??slipdev_send_0:
        LDRH     R0,[R7, #+0]
        UXTH     R5,R5
        CMP      R5,R0
        BCS.N    ??slipdev_send_2
        CMP      R5,#+60
        IT       EQ 
        LDREQ    R4,[R6, #+0]
        LDRB     R0,[R4], #+1
        CMP      R0,#+192
        BEQ.N    ??slipdev_send_3
        CMP      R0,#+219
        BEQ.N    ??slipdev_send_4
        B.N      ??slipdev_send_1
??slipdev_send_3:
        MOVS     R0,#+219
          CFI FunCall slipdev_char_put
        BL       slipdev_char_put
        MOVS     R0,#+220
        B.N      ??slipdev_send_1
??slipdev_send_4:
          CFI FunCall slipdev_char_put
        BL       slipdev_char_put
        MOVS     R0,#+221
        B.N      ??slipdev_send_1
//  121     }
//  122   }
//  123   slipdev_char_put(SLIP_END);
??slipdev_send_2:
        MOVS     R0,#+192
          CFI FunCall slipdev_char_put
        BL       slipdev_char_put
//  124 
//  125   return 0;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock0
//  126 }
//  127 /*-----------------------------------------------------------------------------------*/
//  128 /** 
//  129  * Poll the SLIP device for an available packet.
//  130  *
//  131  * This function will poll the SLIP device to see if a packet is
//  132  * available. It uses a buffer in which all avaliable bytes from the
//  133  * RS232 interface are read into. When a full packet has been read
//  134  * into the buffer, the packet is copied into the uip_buf buffer and
//  135  * the length of the packet is returned.
//  136  *
//  137  * \return The length of the packet placed in the uip_buf buffer, or
//  138  * zero if no packet is available.
//  139  */
//  140 /*-----------------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function slipdev_poll
        THUMB
//  141 uint16_t
//  142 slipdev_poll(void)
//  143 {
slipdev_poll:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOVW     R4,#+1515
        LDR.N    R5,??DataTable2_3
        LDR.N    R6,??DataTable2_4
        B.N      ??slipdev_poll_0
//  144   uint8_t c;
//  145   
//  146   while(slipdev_char_poll(&c)) {
//  147     switch(c) {
//  148     case SLIP_ESC:
//  149       lastc = c;
??slipdev_poll_1:
        STRB     R0,[R6, #+0]
//  150       break;
??slipdev_poll_0:
        ADD      R0,SP,#+0
          CFI FunCall slipdev_char_poll
        BL       slipdev_char_poll
        CBZ.N    R0,??slipdev_poll_2
        LDRB     R0,[SP, #+0]
        CMP      R0,#+192
        BEQ.N    ??slipdev_poll_3
        CMP      R0,#+219
        BEQ.N    ??slipdev_poll_1
        B.N      ??slipdev_poll_4
//  151       
//  152     case SLIP_END:
//  153       lastc = c;
??slipdev_poll_3:
        STRB     R0,[R6, #+0]
//  154       /* End marker found, we copy our input buffer to the uip_buf
//  155 	 buffer and return the size of the packet we copied. */
//  156       memcpy(&uip_buf[UIP_LLH_LEN], slip_buf, len);
        MOV      R1,R5
        LDRH     R2,[R6, #+2]
        LDR.N    R0,??DataTable2
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  157       tmplen = len;
        LDRH     R0,[R6, #+2]
//  158       len = 0;
        MOVS     R1,#+0
        STRH     R1,[R6, #+2]
//  159       return tmplen;
        POP      {R1,R2,R4-R6,PC}
//  160       
//  161     default:     
//  162       if(lastc == SLIP_ESC) {
??slipdev_poll_4:
        LDRB     R1,[R6, #+0]
        CMP      R1,#+219
        MOV      R1,R0
        BNE.N    ??slipdev_poll_5
//  163 	lastc = c;
//  164 	/* Previous read byte was an escape byte, so this byte will be
//  165 	   interpreted differently from others. */
//  166 	switch(c) {
        CMP      R0,#+220
        BEQ.N    ??slipdev_poll_6
        CMP      R0,#+221
        BEQ.N    ??slipdev_poll_7
        B.N      ??slipdev_poll_5
//  167 	case SLIP_ESC_END:
//  168 	  c = SLIP_END;
??slipdev_poll_6:
        MOVS     R0,#+192
        B.N      ??slipdev_poll_8
//  169 	  break;
//  170 	case SLIP_ESC_ESC:
//  171 	  c = SLIP_ESC;
??slipdev_poll_7:
        MOVS     R0,#+219
??slipdev_poll_8:
        STRB     R0,[SP, #+0]
//  172 	  break;
//  173 	}
//  174       } else {
//  175 	lastc = c;
??slipdev_poll_5:
        STRB     R1,[R6, #+0]
//  176       }
//  177       
//  178       slip_buf[len] = c;
        LDRH     R0,[R6, #+2]
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, R5]
//  179       ++len;
        ADDS     R0,R0,#+1
        STRH     R0,[R6, #+2]
//  180       
//  181       if(len > UIP_BUFSIZE) {
        UXTH     R0,R0
        CMP      R0,R4
        BLT.N    ??slipdev_poll_0
//  182 	len = 0;
        MOVS     R0,#+0
        STRH     R0,[R6, #+2]
        B.N      ??slipdev_poll_0
//  183       }
//  184     
//  185       break;
//  186     }
//  187   }
//  188   return 0;
??slipdev_poll_2:
        POP      {R1,R2,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock1
//  189 }
//  190 /*-----------------------------------------------------------------------------------*/
//  191 /**
//  192  * Initialize the SLIP module.
//  193  *
//  194  * This function does not initialize the underlying RS232 device, but
//  195  * only the SLIP part.
//  196  */ 
//  197 /*-----------------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function slipdev_init
          CFI NoCalls
        THUMB
//  198 void
//  199 slipdev_init(void)
//  200 {
//  201   lastc = len = 0;
slipdev_init:
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        STRB     R1,[R0, #+0]
//  202 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     uip_appdata

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     slip_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     lastc

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  203 /*-----------------------------------------------------------------------------------*/
//  204 
//  205 /** @} */
//  206 /** @} */
// 
// 1 522 bytes in section .bss
//   224 bytes in section .text
// 
//   224 bytes of CODE memory
// 1 522 bytes of DATA memory
//
//Errors: none
//Warnings: 1
