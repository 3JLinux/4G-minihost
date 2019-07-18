///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:20
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\apps\serial-shell\serial-shell.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\apps\serial-shell\serial-shell.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\serial-shell.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __xstd_printf
        EXTERN linkaddr_node_addr
        EXTERN process_start
        EXTERN serial_line_event_message
        EXTERN shell_init
        EXTERN shell_input
        EXTERN strlen
        EXTERN xprintf

        PUBLIC serial_shell_init
        PUBLIC serial_shell_process
        PUBLIC shell_default_output
        PUBLIC shell_exit
        PUBLIC shell_prompt
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\apps\serial-shell\serial-shell.c
//    1 /**
//    2  * \addtogroup shell
//    3  * @{
//    4  */
//    5 
//    6 /*
//    7  * Copyright (c) 2008, Swedish Institute of Computer Science.
//    8  * All rights reserved.
//    9  *
//   10  * Redistribution and use in source and binary forms, with or without
//   11  * modification, are permitted provided that the following conditions
//   12  * are met:
//   13  * 1. Redistributions of source code must retain the above copyright
//   14  *    notice, this list of conditions and the following disclaimer.
//   15  * 2. Redistributions in binary form must reproduce the above copyright
//   16  *    notice, this list of conditions and the following disclaimer in the
//   17  *    documentation and/or other materials provided with the distribution.
//   18  * 3. Neither the name of the Institute nor the names of its contributors
//   19  *    may be used to endorse or promote products derived from this software
//   20  *    without specific prior written permission.
//   21  *
//   22  * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
//   23  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   24  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   25  * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
//   26  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   27  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   28  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   29  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   30  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   31  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   32  * SUCH DAMAGE.
//   33  *
//   34  * This file is part of the Contiki operating system.
//   35  */
//   36 
//   37 /**
//   38  * \file
//   39  *         A shell back-end for the serial port
//   40  * \author
//   41  *         Adam Dunkels <adam@sics.se>
//   42  */
//   43 
//   44 #include "contiki.h"
//   45 #include "shell.h"
//   46 
//   47 #include "dev/serial-line.h"
//   48 #include "net/rime/rime.h"
//   49 
//   50 #include <stdio.h>
//   51 #include <string.h>
//   52 
//   53 
//   54 
//   55 //debug  replace printf used XPRINTF
//   56 #include "sysprintf.h"
//   57 
//   58 /*---------------------------------------------------------------------------*/

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   59 PROCESS(serial_shell_process, "Contiki serial shell");
serial_shell_process:
        DATA
        DC32 0H, ?_0, process_thread_serial_shell_process
        DC8 0, 0, 0, 0
//   60 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function shell_default_output
        THUMB
//   61 void
//   62 shell_default_output(const char *text1, int len1, const char *text2, int len2)
//   63 {
shell_default_output:
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
        MOV      R6,R2
        MOV      R7,R3
//   64   int i;
//   65   if(text1 == NULL) {
        ITT      EQ 
        ADREQ.N  R4,??DataTable8  ;; ""
        MOVEQ    R5,#+0
//   66     text1 = "";
//   67     len1 = 0;
//   68   }
//   69   if(text2 == NULL) {
        CBNZ.N   R6,??shell_default_output_0
//   70     text2 = "";
        ADR.N    R6,??DataTable8  ;; ""
//   71     len2 = 0;
        MOVS     R7,#+0
//   72   }
//   73 
//   74   /* Precision (printf("%.Ns", text1)) not supported on all platforms.
//   75      putchar(c) not be supported on all platforms. */
//   76   for(i = 0; i < len1; i++) {
??shell_default_output_0:
        CMP      R5,#+1
        BLT.N    ??shell_default_output_1
        ADR.W    R8,??DataTable8_1  ;; 0x25, 0x63, 0x00, 0x00
//   77     //printf("%c", text1[i]);
//   78     PRINTF("%c", text1[i]);
??shell_default_output_2:
        LDRB     R1,[R4], #+1
        MOV      R0,R8
          CFI FunCall xprintf
        BL       xprintf
//   79   }
        SUBS     R5,R5,#+1
        BNE.N    ??shell_default_output_2
//   80   for(i = 0; i < len2; i++) {
??shell_default_output_1:
        CMP      R7,#+1
        BLT.N    ??shell_default_output_3
        ADR.W    R8,??DataTable8_1  ;; 0x25, 0x63, 0x00, 0x00
//   81     //printf("%c", text2[i]);
//   82     PRINTF("%c", text2[i]);
??shell_default_output_4:
        LDRB     R1,[R6], #+1
        MOV      R0,R8
          CFI FunCall xprintf
        BL       xprintf
//   83   }
        SUBS     R7,R7,#+1
        BNE.N    ??shell_default_output_4
//   84 //  printf("\r\n");
//   85 	PRINTF("\r\n");  
??shell_default_output_3:
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.N    R0,??DataTable8_2  ;; 0x0D, 0x0A, 0x00, 0x00
          CFI FunCall xprintf
        B.W      xprintf
          CFI EndBlock cfiBlock0
//   86 }
//   87 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function shell_prompt
        THUMB
//   88 void
//   89 shell_prompt(char *str)
//   90 {
shell_prompt:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   91 #if 0
//   92   printf("%d.%d: %s\r\n", linkaddr_node_addr.u8[0], rimeaddr_node_addr.u8[1],
//   93 	 str);
//   94 #endif
//   95 //  XPRINTF((0,"%d.%d: %s\r\n", rimeaddr_node_addr.u8[0], rimeaddr_node_addr.u8[1],str));
//   96   XPRINTF((2,"%02x.%02x: %s\r\n", linkaddr_node_addr.u8[0], linkaddr_node_addr.u8[1],str));
        LDR.N    R1,??DataTable8_3
        LDRB     R3,[R1, #+1]
        LDRB     R2,[R1, #+0]
        ADR.W    R1,?_4
        STR      R0,[SP, #+0]
        MOVS     R0,#+2
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//   97 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//   98 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function shell_exit
          CFI NoCalls
        THUMB
//   99 void
//  100 shell_exit(void)
//  101 {
//  102 }
shell_exit:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  103 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function process_thread_serial_shell_process
        THUMB
//  104 PROCESS_THREAD(serial_shell_process, ev, data)
//  105 {
process_thread_serial_shell_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R2
//  106   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_serial_shell_process_0
        CMP      R0,#+111
        BEQ.N    ??process_thread_serial_shell_process_1
        B.N      ??process_thread_serial_shell_process_2
//  107 
//  108   shell_init();
??process_thread_serial_shell_process_0:
          CFI FunCall shell_init
        BL       shell_init
//  109 
//  110   while(1) {
//  111     PROCESS_WAIT_EVENT_UNTIL(ev == serial_line_event_message && data != NULL);
??process_thread_serial_shell_process_3:
        MOVS     R0,#+111
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_serial_shell_process_4
??process_thread_serial_shell_process_1:
        LDR.N    R0,??DataTable8_4
        LDRB     R0,[R0, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_serial_shell_process_4
        CBNZ.N   R5,??process_thread_serial_shell_process_5
??process_thread_serial_shell_process_4:
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
//  112     shell_input(data, strlen(data));
??process_thread_serial_shell_process_5:
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R1,R0
        MOV      R0,R5
          CFI FunCall shell_input
        BL       shell_input
        B.N      ??process_thread_serial_shell_process_3
//  113     //XPRINTF((10, "MSG\r\n"));
//  114   }
//  115 
//  116   PROCESS_END();
??process_thread_serial_shell_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//  117 }
//  118 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function serial_shell_init
        THUMB
//  119 void
//  120 serial_shell_init(void)
//  121 {
//  122   process_start(&serial_shell_process, NULL);
serial_shell_init:
        MOVS     R1,#+0
        LDR.N    R0,??DataTable8_5
          CFI FunCall process_start
        B.W      process_start
          CFI EndBlock cfiBlock4
//  123 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC8      "",0x0,0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC8      0x25, 0x63, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC8      0x0D, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     linkaddr_node_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     serial_line_event_message

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     serial_shell_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "%02x.%02x: %s\015\012"

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
        DC8 "Contiki serial shell"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(0)
        DATA
?_1:
        DC8 ""

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_2:
        DC8 "%c"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_3:
        DC8 "\015\012"
        DC8 0

        END
//  124 /*---------------------------------------------------------------------------*/
//  125 /** @} */
// 
//  16 bytes in section .data
//  33 bytes in section .rodata
// 214 bytes in section .text
// 
// 214 bytes of CODE  memory
//  33 bytes of CONST memory
//  16 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
