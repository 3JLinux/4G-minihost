///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:42
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-debug.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-debug.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip-debug.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN xprintf

        PUBLIC uip_debug_ipaddr_print
        PUBLIC uip_debug_lladdr_print
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-debug.c
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
//   29  */
//   30 
//   31 /**
//   32  * \file
//   33  *         A set of debugging tools
//   34  * \author
//   35  *         Nicolas Tsiftes <nvt@sics.se>
//   36  *         Niclas Finne <nfi@sics.se>
//   37  *         Joakim Eriksson <joakime@sics.se>
//   38  */
//   39 
//   40 #include "net/ip/uip-debug.h"
//   41 
//   42 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function uip_debug_ipaddr_print
        THUMB
//   43 void
//   44 uip_debug_ipaddr_print(const uip_ipaddr_t *addr)
//   45 {
uip_debug_ipaddr_print:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R6,R0
//   46 #if NETSTACK_CONF_WITH_IPV6
//   47   uint16_t a;
//   48   unsigned int i;
//   49   int f;
//   50 #endif /* NETSTACK_CONF_WITH_IPV6 */
//   51   if(addr == NULL) {
        BNE.N    ??uip_debug_ipaddr_print_0
//   52     PRINTA("(NULL IP addr)");
        POP      {R1,R4-R11,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R0,?_0
          CFI FunCall xprintf
        B.W      xprintf
          CFI R4 Frame(CFA, -36)
          CFI R5 Frame(CFA, -32)
          CFI R6 Frame(CFA, -28)
          CFI R7 Frame(CFA, -24)
          CFI R8 Frame(CFA, -20)
          CFI R9 Frame(CFA, -16)
          CFI R10 Frame(CFA, -12)
          CFI R11 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
//   53     return;
//   54   }
//   55 #if NETSTACK_CONF_WITH_IPV6
//   56   for(i = 0, f = 0; i < sizeof(uip_ipaddr_t); i += 2) {
??uip_debug_ipaddr_print_0:
        MOVS     R4,#+0
        MOVS     R5,#+0
        ADR.W    R9,??DataTable7  ;; 0x25, 0x78, 0x00, 0x00
        ADR.W    R10,??DataTable7_1  ;; ":"
        MOV      R11,#-1
        ADR.W    R8,??DataTable7_2  ;; 0x3A, 0x3A, 0x00, 0x00
//   57     a = (addr->u8[i] << 8) + addr->u8[i + 1];
??uip_debug_ipaddr_print_1:
        LDRB     R0,[R6, #+0]
        LDRB     R1,[R6, #+1]
        ADD      R0,R1,R0, LSL #+8
        UXTH     R7,R0
//   58     if(a == 0 && f >= 0) {
        CBNZ.N   R7,??uip_debug_ipaddr_print_2
        CMP      R5,#+0
        BMI.N    ??uip_debug_ipaddr_print_2
//   59       if(f++ == 0) {
        MOV      R0,R5
        ADDS     R5,R0,#+1
        CBNZ.N   R0,??uip_debug_ipaddr_print_3
//   60         PRINTA("::");
        MOV      R0,R8
          CFI FunCall xprintf
        BL       xprintf
        B.N      ??uip_debug_ipaddr_print_3
//   61       }
//   62     } else {
//   63       if(f > 0) {
??uip_debug_ipaddr_print_2:
        CMP      R5,#+1
        IT       GE 
        MOVGE    R5,R11
//   64         f = -1;
        BGE.N    ??uip_debug_ipaddr_print_4
//   65       } else if(i > 0) {
        CBZ.N    R4,??uip_debug_ipaddr_print_4
//   66         PRINTA(":");
        MOV      R0,R10
          CFI FunCall xprintf
        BL       xprintf
//   67       }
//   68       PRINTA("%x", a);
??uip_debug_ipaddr_print_4:
        MOV      R1,R7
        MOV      R0,R9
          CFI FunCall xprintf
        BL       xprintf
//   69     }
//   70   }
??uip_debug_ipaddr_print_3:
        ADDS     R4,R4,#+2
        ADDS     R6,R6,#+2
        CMP      R4,#+16
        BCC.N    ??uip_debug_ipaddr_print_1
//   71 #else /* NETSTACK_CONF_WITH_IPV6 */
//   72   PRINTA("%u.%u.%u.%u", addr->u8[0], addr->u8[1], addr->u8[2], addr->u8[3]);
//   73 #endif /* NETSTACK_CONF_WITH_IPV6 */
//   74 }
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock0
//   75 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function uip_debug_lladdr_print
        THUMB
//   76 void
//   77 uip_debug_lladdr_print(const uip_lladdr_t *addr)
//   78 {
uip_debug_lladdr_print:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//   79   unsigned int i;
//   80   if(addr == NULL) {
        BNE.N    ??uip_debug_lladdr_print_0
//   81     PRINTA("(NULL LL addr)");
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R0,?_4
          CFI FunCall xprintf
        B.W      xprintf
          CFI R4 Frame(CFA, -16)
          CFI R5 Frame(CFA, -12)
          CFI R6 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//   82     return;
//   83   }
//   84   for(i = 0; i < sizeof(uip_lladdr_t); i++) {
??uip_debug_lladdr_print_0:
        ADR.W    R5,?_5
//   85     if(i > 0) {
//   86       PRINTA(":");
//   87     }
//   88     PRINTA("%02x", addr->addr[i]);
        LDRB     R1,[R4, #+0]
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        ADR.N    R6,??DataTable7_1  ;; ":"
        MOV      R0,R6
          CFI FunCall xprintf
        BL       xprintf
        LDRB     R1,[R4, #+1]
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        MOV      R0,R6
          CFI FunCall xprintf
        BL       xprintf
        LDRB     R1,[R4, #+2]
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        MOV      R0,R6
          CFI FunCall xprintf
        BL       xprintf
        LDRB     R1,[R4, #+3]
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        MOV      R0,R6
          CFI FunCall xprintf
        BL       xprintf
        LDRB     R1,[R4, #+4]
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        MOV      R0,R6
          CFI FunCall xprintf
        BL       xprintf
        LDRB     R1,[R4, #+5]
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        MOV      R0,R6
          CFI FunCall xprintf
        BL       xprintf
        LDRB     R1,[R4, #+6]
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
        MOV      R0,R6
          CFI FunCall xprintf
        BL       xprintf
        LDRB     R1,[R4, #+7]
        MOV      R0,R5
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall xprintf
        B.W      xprintf
          CFI EndBlock cfiBlock1
//   89   }
//   90 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC8      0x25, 0x78, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC8      ":",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC8      0x3A, 0x3A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_0:
        DC8 "(NULL IP addr)"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "(NULL LL addr)"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 "%02x"
        DC8 0, 0, 0

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
?_1:
        DC8 "::"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_2:
        DC8 ":"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_3:
        DC8 "%x"
        DC8 0

        END
//   91 /*---------------------------------------------------------------------------*/
// 
//  10 bytes in section .rodata
// 292 bytes in section .text
// 
// 292 bytes of CODE  memory
//  10 bytes of CONST memory
//
//Errors: none
//Warnings: 1
