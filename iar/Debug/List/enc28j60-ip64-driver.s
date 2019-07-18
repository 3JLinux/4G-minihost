///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:42
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\dev\enc28j60\enc28j60-ip64-driver.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\dev\enc28j60\enc28j60-ip64-driver.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\enc28j60-ip64-driver.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memcpy4
        EXTERN __xstd_dump
        EXTERN enc28j60_init
        EXTERN enc28j60_read
        EXTERN enc28j60_send
        EXTERN etimer_set
        EXTERN ip64_eth_addr
        EXTERN ip64_eth_interface_input
        EXTERN ip64_packet_buffer
        EXTERN ip64_packet_buffer_maxlen
        EXTERN linkaddr_node_addr
        EXTERN process_start
        EXTERN xprintf

        PUBLIC enc28j60_ip64_driver
        PUBLIC enc28j60_ip64_driver_process
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\dev\enc28j60\enc28j60-ip64-driver.c
//    1 /*
//    2  * Copyright (c) 2012-2013, Thingsquare, http://www.thingsquare.com/.
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
//   33 #include "enc28j60.h"
//   34 #include "enc28j60-ip64-driver.h"
//   35 
//   36 #include "ip64.h"
//   37 #include "ip64-eth.h"
//   38 #include "rime/rime.h"
//   39 
//   40 #include <string.h>
//   41 #include <stdio.h>
//   42 
//   43 
//   44 #include "sysprintf.h"
//   45 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   46 PROCESS(enc28j60_ip64_driver_process, "ENC28J60 IP64 driver");
enc28j60_ip64_driver_process:
        DATA
        DC32 0H, ?_0, process_thread_enc28j60_ip64_driver_process
        DC8 0, 0, 0, 0
//   47 
//   48 static int output(uint8_t *packet, uint16_t len);
//   49 
//   50 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function init
        THUMB
//   51 static void
//   52 init(void)
//   53 {
init:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+28
          CFI CFA R13+32
//   54   uint8_t eui64[8];
//   55   uint8_t macaddr[6];
//   56 
//   57   /* Assume that linkaddr_node_addr holds the EUI64 of this device. */
//   58   memcpy(eui64, &linkaddr_node_addr, sizeof(eui64));
        MOVS     R2,#+8
        LDR.N    R1,??DataTable6
        ADD      R0,SP,#+20
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   59 
//   60   /* Mangle the EUI64 into a 48-bit Ethernet address. */
//   61   memcpy(&macaddr[0], &eui64[0], 3);
        MOVS     R2,#+3
        ADD      R1,SP,#+20
        ADD      R0,SP,#+12
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//   62   memcpy(&macaddr[3], &eui64[5], 3);
        MOVS     R2,#+3
        ADD      R1,SP,#+25
        ADD      R0,SP,#+15
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   63 
//   64   /* In case the OUI happens to contain a broadcast bit, we mask that
//   65      out here. */
//   66   macaddr[0] = (macaddr[0] & 0xfe);
//   67 
//   68   /* Set the U/L bit, in order to create a locally administered MAC address */
//   69   macaddr[0] = (macaddr[0] | 0x02);
        LDRB     R0,[SP, #+12]
        AND      R0,R0,#0xFE
        ORR      R0,R0,#0x2
        STRB     R0,[SP, #+12]
//   70 
//   71   memcpy(ip64_eth_addr.addr, macaddr, sizeof(macaddr));
        MOVS     R2,#+6
        ADD      R1,SP,#+12
        LDR.N    R0,??DataTable6_1
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//   72 
//   73   PRINTF("MAC addr %02x:%02x:%02x:%02x:%02x:%02x\n",
//   74          macaddr[0], macaddr[1], macaddr[2],
//   75          macaddr[3], macaddr[4], macaddr[5]);
        LDRB     R2,[SP, #+13]
        ADD      R0,SP,#+12
        LDRB     R1,[R0, #+5]
        LDRB     R3,[R0, #+2]
        STR      R1,[SP, #+8]
        LDRB     R1,[SP, #+16]
        STR      R1,[SP, #+4]
        LDRB     R1,[R0, #+3]
        ADR.W    R0,?_1
        STR      R1,[SP, #+0]
        LDRB     R1,[SP, #+12]
          CFI FunCall xprintf
        BL       xprintf
//   76   enc28j60_init(macaddr);
        ADD      R0,SP,#+12
          CFI FunCall enc28j60_init
        BL       enc28j60_init
//   77   PRINTF("finish1\n");
        ADR.W    R0,?_2
          CFI FunCall xprintf
        BL       xprintf
//   78 
//   79   process_start(&enc28j60_ip64_driver_process, NULL);
        LDR.N    R0,??DataTable6_2
        MOVS     R1,#+0
          CFI FunCall process_start
        BL       process_start
//   80 }
        ADD      SP,SP,#+28
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock0
//   81 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function output
        THUMB
//   82 static int
//   83 output(uint8_t *packet, uint16_t len)
//   84 {
output:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//   85   enc28j60_send(packet, len);
          CFI FunCall enc28j60_send
        BL       enc28j60_send
//   86   MEM_DUMP(12, "->en", packet, len);
        MOV      R3,R5
        MOV      R2,R4
        ADR.W    R1,?_3
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//   87   return len;
        MOV      R0,R5
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//   88 }
//   89 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function process_thread_enc28j60_ip64_driver_process
        THUMB
//   90 PROCESS_THREAD(enc28j60_ip64_driver_process, ev, data)
//   91 {
process_thread_enc28j60_ip64_driver_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//   92   static int len;
//   93   static struct etimer e;
//   94   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_enc28j60_ip64_driver_process_0
        CMP      R0,#+98
        BEQ.N    ??process_thread_enc28j60_ip64_driver_process_1
        B.N      ??process_thread_enc28j60_ip64_driver_process_2
//   95 
//   96   while(1) {
//   97     etimer_set(&e, 1);
??process_thread_enc28j60_ip64_driver_process_0:
        MOVS     R1,#+1
        LDR.N    R0,??DataTable6_3
          CFI FunCall etimer_set
        BL       etimer_set
//   98     PROCESS_WAIT_EVENT();
        MOVS     R0,#+98
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
//   99     len = enc28j60_read(ip64_packet_buffer, ip64_packet_buffer_maxlen);
??process_thread_enc28j60_ip64_driver_process_1:
        LDR.N    R0,??DataTable6_4
        LDR.N    R5,??DataTable6_5
        LDRH     R1,[R0, #+0]
        LDR      R0,[R5, #+0]
          CFI FunCall enc28j60_read
        BL       enc28j60_read
//  100     if(len > 0) {
        CMP      R0,#+1
        BLT.N    ??process_thread_enc28j60_ip64_driver_process_0
//  101       //MEM_DUMP(10, "en<-", ip64_packet_buffer, len);
//  102       IP64_INPUT(ip64_packet_buffer, len);
        UXTH     R1,R0
        LDR      R0,[R5, #+0]
          CFI FunCall ip64_eth_interface_input
        BL       ip64_eth_interface_input
        B.N      ??process_thread_enc28j60_ip64_driver_process_0
//  103     }
//  104   }
//  105 
//  106   PROCESS_END();
??process_thread_enc28j60_ip64_driver_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//  107 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     linkaddr_node_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     ip64_eth_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     enc28j60_ip64_driver_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     ??e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     ip64_packet_buffer_maxlen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     ip64_packet_buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "MAC addr %02x:%02x:%02x:%02x:%02x:%02x\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "finish1\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "->en"
        DC8 0, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??e:
        DS8 16

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "ENC28J60 IP64 driver"
        DC8 0, 0, 0
//  108 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  109 const struct ip64_driver enc28j60_ip64_driver = {
enc28j60_ip64_driver:
        DC32 init, output

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  110   init,
//  111   output
//  112 };
//  113 /*---------------------------------------------------------------------------*/
// 
//  20 bytes in section .bss
//  16 bytes in section .data
//  32 bytes in section .rodata
// 300 bytes in section .text
// 
// 300 bytes of CODE  memory
//  32 bytes of CONST memory
//  36 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
