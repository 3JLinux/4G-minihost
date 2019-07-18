///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:20
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\dev\serial-line.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\dev\serial-line.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\serial-line.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN process_alloc_event
        EXTERN process_current
        EXTERN process_poll
        EXTERN process_post
        EXTERN process_start
        EXTERN ringbuf_get
        EXTERN ringbuf_init
        EXTERN ringbuf_put
        EXTERN serial_shell_process
        EXTERN xprintf

        PUBLIC serial_line_event_message
        PUBLIC serial_line_init
        PUBLIC serial_line_input_byte
        PUBLIC serial_line_process
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\dev\serial-line.c
//    1 /*
//    2  * Copyright (c) 2005, Swedish Institute of Computer Science
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
//   32 #include "dev/serial-line.h"
//   33 #include <string.h> /* for memcpy() */
//   34 
//   35 #include "lib/ringbuf.h"
//   36 
//   37 //debug
//   38 #include "sysprintf.h"
//   39 
//   40 PROCESS_NAME(serial_shell_process);
//   41 
//   42 
//   43 #ifdef SERIAL_LINE_CONF_BUFSIZE
//   44 #define BUFSIZE SERIAL_LINE_CONF_BUFSIZE
//   45 #else /* SERIAL_LINE_CONF_BUFSIZE */
//   46 #define BUFSIZE 64
//   47 #endif /* SERIAL_LINE_CONF_BUFSIZE */
//   48 
//   49 #if (BUFSIZE & (BUFSIZE - 1)) != 0
//   50 #error SERIAL_LINE_CONF_BUFSIZE must be a power of two (i.e., 1, 2, 4, 8, 16, 32, 64, ...).
//   51 #error Change SERIAL_LINE_CONF_BUFSIZE in contiki-conf.h.
//   52 #endif
//   53 
//   54 //#define IGNORE_CHAR(c) (c == 0x0d)
//   55 //#define END 0x0a
//   56 
//   57 #define IGNORE_CHAR(c) (c == '\n')
//   58 #define END (0x0d)  //->enter key
//   59 
//   60 
//   61 static struct ringbuf rxbuf;
//   62 static uint8_t rxbuf_data[BUFSIZE];
//   63 
//   64 PROCESS(serial_line_process, "Serial driver");
//   65 
//   66 process_event_t serial_line_event_message;
//   67 
//   68 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function serial_line_input_byte
        THUMB
//   69 int
//   70 serial_line_input_byte(unsigned char c)
//   71 {
serial_line_input_byte:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   72   static uint8_t overflow = 0; /* Buffer overflow: ignore until END */
//   73   
//   74   if(IGNORE_CHAR(c)) {
        MOV      R1,R0
        CMP      R1,#+10
        BNE.N    ??serial_line_input_byte_0
//   75     return 0;
        MOVS     R0,#+0
        POP      {R4,PC}
//   76   }
//   77 
//   78   if(!overflow) {
??serial_line_input_byte_0:
        LDR.N    R4,??DataTable6_3
        LDRB     R2,[R4, #+1]
        CBNZ.N   R2,??serial_line_input_byte_1
//   79     /* Add character */
//   80     
//   81     if(ringbuf_put(&rxbuf, c) == 0) {
        ADD      R0,R4,#+72
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBNZ.N   R0,??serial_line_input_byte_2
//   82       /* Buffer overflow: ignore the rest of the line */
//   83       overflow = 1;
        MOVS     R0,#+1
        B.N      ??serial_line_input_byte_3
//   84     }
//   85   } else {
//   86     /* Buffer overflowed:
//   87      * Only (try to) add terminator characters, otherwise skip */
//   88     if(c == END && ringbuf_put(&rxbuf, c) != 0) {
??serial_line_input_byte_1:
        CMP      R1,#+13
        BNE.N    ??serial_line_input_byte_2
        ADD      R0,R4,#+72
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBZ.N    R0,??serial_line_input_byte_2
//   89       overflow = 0;
        MOVS     R0,#+0
??serial_line_input_byte_3:
        STRB     R0,[R4, #+1]
//   90     }
//   91   }
//   92 
//   93   /* Wake up consumer process */
//   94   process_poll(&serial_line_process);
??serial_line_input_byte_2:
        ADD      R0,R4,#+144
          CFI FunCall process_poll
        BL       process_poll
//   95   return 1;
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   96 }
//   97 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function process_thread_serial_line_process
        THUMB
//   98 PROCESS_THREAD(serial_line_process, ev, data)
//   99 {
process_thread_serial_line_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  100 	static char buf[BUFSIZE];
//  101 	static int ptr;
//  102 
//  103 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_serial_line_process_0
        CMP      R0,#+117
        BEQ.N    ??process_thread_serial_line_process_1
        CMP      R0,#+157
        BEQ.N    ??process_thread_serial_line_process_2
        B.N      ??process_thread_serial_line_process_3
//  104 
//  105 	serial_line_event_message = process_alloc_event();
??process_thread_serial_line_process_0:
        LDR.N    R5,??DataTable6_3
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R5, #+0]
//  106 	ptr = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+68]
        B.N      ??process_thread_serial_line_process_1
//  107 
//  108 	while(1) 
//  109 	{
//  110 		/* Fill application buffer until newline or empty */
//  111 		int c = ringbuf_get(&rxbuf);
//  112 		//c = ringbuf_get(&rxbuf);
//  113 		//XPRINTF((10, "ptr is %d\r\n", ptr));
//  114 		if(c == -1) 
//  115 		{
//  116 			/* Buffer empty, wait for poll */
//  117 			PROCESS_YIELD();
//  118 		} 
//  119 		else 
//  120 		{
//  121 			if(c != END) 
//  122 			{
//  123 				if(ptr < BUFSIZE-1) 
//  124 				{
//  125 					if (c == '\b')
//  126 					{
//  127 						if ( c == '\b')
//  128 						{
//  129 							buf[--ptr] = 0;
//  130 							PRINTF("\b \b");
//  131 						}
//  132 					}
//  133 					else
//  134 					{
//  135 						buf[ptr++] = (uint8_t)c;
??process_thread_serial_line_process_4:
        ADDS     R2,R1,R5
        ADDS     R1,R1,#+1
        STRB     R0,[R2, #+4]
        STR      R1,[R5, #+68]
//  136 						PRINTF( "%c", (uint8_t)c);
        UXTB     R1,R0
        ADR.N    R0,??DataTable6  ;; 0x25, 0x63, 0x00, 0x00
          CFI FunCall xprintf
        BL       xprintf
//  137 					}
??process_thread_serial_line_process_1:
        LDR.N    R5,??DataTable6_3
        ADD      R0,R5,#+72
          CFI FunCall ringbuf_get
        BL       ringbuf_get
        CMN      R0,#+1
        BNE.N    ??process_thread_serial_line_process_5
        MOVS     R0,#+117
        B.N      ??process_thread_serial_line_process_6
??process_thread_serial_line_process_5:
        CMP      R0,#+13
        BEQ.N    ??process_thread_serial_line_process_7
        LDR      R1,[R5, #+68]
        CMP      R1,#+63
        BGE.N    ??process_thread_serial_line_process_1
        CMP      R0,#+8
        BNE.N    ??process_thread_serial_line_process_4
        SUBS     R0,R1,#+1
        STR      R0,[R5, #+68]
        MOVS     R1,#+0
        ADDS     R0,R0,R5
        STRB     R1,[R0, #+4]
        ADR.N    R0,??DataTable6_1  ;; "\b \b"
          CFI FunCall xprintf
        BL       xprintf
        B.N      ??process_thread_serial_line_process_1
//  138 				} 
//  139 				else 
//  140 				{
//  141 
//  142 				/* Ignore character (wait for EOL) */
//  143 				}
//  144 			} 
//  145 			else 
//  146 			{
//  147 				/* Terminate */
//  148 				PRINTF("\r\n");
??process_thread_serial_line_process_7:
        ADR.N    R0,??DataTable6_2  ;; 0x0D, 0x0A, 0x00, 0x00
          CFI FunCall xprintf
        BL       xprintf
//  149 				buf[ptr++] = (uint8_t)'\0';
        LDR      R0,[R5, #+68]
        ADDS     R2,R0,R5
        MOVS     R1,#+0
        STRB     R1,[R2, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[R5, #+68]
//  150 				//XPRINTF((10, "%s\r\n", buf));
//  151 				/* Broadcast event */
//  152 				//process_post(PROCESS_BROADCAST, serial_line_event_message, buf);
//  153 				process_post(&serial_shell_process, serial_line_event_message, buf);
        ADDS     R2,R5,#+4
        LDRB     R1,[R5, #+0]
        LDR.N    R0,??DataTable6_4
          CFI FunCall process_post
        BL       process_post
//  154 				/* Wait until all processes have handled the serial line event */
//  155 				if(PROCESS_ERR_OK ==
//  156 				process_post(PROCESS_CURRENT(), PROCESS_EVENT_CONTINUE, NULL)) {
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        MOVS     R2,#+0
        MOVS     R1,#+133
          CFI FunCall process_post
        BL       process_post
        CBNZ.N   R0,??process_thread_serial_line_process_8
//  157 				PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_CONTINUE);
        MOVS     R0,#+157
??process_thread_serial_line_process_6:
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_serial_line_process_9
??process_thread_serial_line_process_2:
        CMP      R1,#+133
        BEQ.N    ??process_thread_serial_line_process_8
??process_thread_serial_line_process_9:
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
//  158 				}
//  159 				ptr = 0;
??process_thread_serial_line_process_8:
        LDR.N    R1,??DataTable6_3
        MOVS     R0,#+0
        STR      R0,[R1, #+68]
        B.N      ??process_thread_serial_line_process_1
//  160 				//memset(buf, 0, sizeof(buf));
//  161 			}
//  162 		}
//  163 	}
//  164 
//  165   PROCESS_END();
??process_thread_serial_line_process_3:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//  166 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
serial_line_event_message:
        DATA
        DC8 0
        DC8 0
        DC8 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
serial_line_process:
        DC32 0H, ?_0, process_thread_serial_line_process
        DC8 0, 0, 0, 0
//  167 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function serial_line_init
        THUMB
//  168 void
//  169 serial_line_init(void)
//  170 {
serial_line_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  171   ringbuf_init(&rxbuf, rxbuf_data, sizeof(rxbuf_data));
        LDR.N    R4,??DataTable6_3
        MOVS     R2,#+64
        ADD      R1,R4,#+80
        ADD      R0,R4,#+72
          CFI FunCall ringbuf_init
        BL       ringbuf_init
//  172   process_start(&serial_line_process, NULL);
        ADD      R0,R4,#+144
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
          CFI FunCall process_start
        B.W      process_start
          CFI EndBlock cfiBlock2
//  173 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC8      0x25, 0x63, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC8      "\b \b"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC8      0x0D, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     serial_line_event_message

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     serial_shell_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     process_current

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
        DC8 "Serial driver"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "\010 \010"

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
//  174 /*---------------------------------------------------------------------------*/
// 
// 160 bytes in section .data
//  28 bytes in section .rodata
// 290 bytes in section .text
// 
// 290 bytes of CODE  memory
//  28 bytes of CONST memory
// 160 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
