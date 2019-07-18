///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:52
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64-addr\ip64-addr.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64-addr\ip64-addr.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ip64-addr.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy

        PUBLIC ip64_addr_4to6
        PUBLIC ip64_addr_6to4
        PUBLIC ip64_addr_copy4
        PUBLIC ip64_addr_copy6
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64-addr\ip64-addr.c
//    1 /*
//    2  * Copyright (c) 2012, Thingsquare, http://www.thingsquare.com/.
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
//   13  *
//   14  * 3. Neither the name of the copyright holder nor the names of its
//   15  *    contributors may be used to endorse or promote products derived
//   16  *    from this software without specific prior written permission.
//   17  *
//   18  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//   19  * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//   20  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
//   21  * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
//   22  * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
//   23  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//   24  * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   25  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   26  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
//   27  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//   28  * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
//   29  * OF THE POSSIBILITY OF SUCH DAMAGE.
//   30  *
//   31  */
//   32 #include "ip64-addr.h"
//   33 
//   34 #include <stdio.h>
//   35 #include <string.h>
//   36 
//   37 #define DEBUG 0
//   38 
//   39 #if DEBUG
//   40 #include "sysprintf.h"
//   41 #else
//   42 #define PRINTF(...)
//   43 #endif
//   44 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ip64_addr_copy4
        THUMB
//   45 void
//   46 ip64_addr_copy4(uip_ip4addr_t *dest, const uip_ip4addr_t *src)
//   47 {
//   48   memcpy(dest, src, sizeof(uip_ip4addr_t));
ip64_addr_copy4:
        MOVS     R2,#+4
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI EndBlock cfiBlock0
//   49 }
//   50 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ip64_addr_copy6
        THUMB
//   51 void
//   52 ip64_addr_copy6(uip_ip6addr_t *dest, const uip_ip6addr_t *src)
//   53 {
//   54   memcpy(dest, src, sizeof(uip_ip6addr_t));
ip64_addr_copy6:
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI EndBlock cfiBlock1
//   55 }
//   56 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ip64_addr_4to6
          CFI NoCalls
        THUMB
//   57 int
//   58 ip64_addr_4to6(const uip_ip4addr_t *ipv4addr,
//   59 	       uip_ip6addr_t *ipv6addr)
//   60 {
//   61   /* This function converts an IPv4 addresses into an IPv6
//   62      addresses. It returns 0 if it failed to convert the address and
//   63      non-zero if it could successfully convert the address. */
//   64 
//   65   /* The IPv4 address is encoded as an IPv6-encoded IPv4 address in
//   66      the ::ffff:0000/24 prefix.*/
//   67   ipv6addr->u8[0] = 0;
ip64_addr_4to6:
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   68   ipv6addr->u8[1] = 0;
        STRB     R2,[R1, #+1]
//   69   ipv6addr->u8[2] = 0;
        STRB     R2,[R1, #+2]
//   70   ipv6addr->u8[3] = 0;
        STRB     R2,[R1, #+3]
//   71   ipv6addr->u8[4] = 0;
        STRB     R2,[R1, #+4]
//   72   ipv6addr->u8[5] = 0;
        STRB     R2,[R1, #+5]
//   73   ipv6addr->u8[6] = 0;
        STRB     R2,[R1, #+6]
//   74   ipv6addr->u8[7] = 0;
        STRB     R2,[R1, #+7]
//   75   ipv6addr->u8[8] = 0;
        STRB     R2,[R1, #+8]
//   76   ipv6addr->u8[9] = 0;
        STRB     R2,[R1, #+9]
//   77   ipv6addr->u8[10] = 0xff;
        MOVS     R2,#+255
        STRB     R2,[R1, #+10]
//   78   ipv6addr->u8[11] = 0xff;
        STRB     R2,[R1, #+11]
//   79   ipv6addr->u8[12] = ipv4addr->u8[0];
        LDRB     R2,[R0, #+0]
        STRB     R2,[R1, #+12]
//   80   ipv6addr->u8[13] = ipv4addr->u8[1];
        LDRB     R2,[R0, #+1]
        STRB     R2,[R1, #+13]
//   81   ipv6addr->u8[14] = ipv4addr->u8[2];
        LDRB     R2,[R0, #+2]
        STRB     R2,[R1, #+14]
//   82   ipv6addr->u8[15] = ipv4addr->u8[3];
        LDRB     R0,[R0, #+3]
        STRB     R0,[R1, #+15]
//   83   PRINTF("ip64_addr_4to6: IPv6-encoded IPv4 address %d.%d.%d.%d\n",
//   84 	 ipv4addr->u8[0], ipv4addr->u8[1],
//   85 	 ipv4addr->u8[2], ipv4addr->u8[3]);
//   86 
//   87   /* Conversion succeeded, we return non-zero. */
//   88   return 1;
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   89 }
//   90 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ip64_addr_6to4
          CFI NoCalls
        THUMB
//   91 int
//   92 ip64_addr_6to4(const uip_ip6addr_t *ipv6addr,
//   93 	       uip_ip4addr_t *ipv4addr)
//   94 {
//   95   /* This function converts IPv6 addresses to IPv4 addresses. It
//   96      returns 0 if it failed to convert the address and non-zero if it
//   97      could successfully convert the address. */
//   98 
//   99   /* If the IPv6 address is an IPv6-encoded
//  100      IPv4 address (i.e. in the ::ffff:0/8 prefix), we simply use the
//  101      IPv4 addresses directly. */
//  102   if(ipv6addr->u8[0] == 0 &&
//  103      ipv6addr->u8[1] == 0 &&
//  104      ipv6addr->u8[2] == 0 &&
//  105      ipv6addr->u8[3] == 0 &&
//  106      ipv6addr->u8[4] == 0 &&
//  107      ipv6addr->u8[5] == 0 &&
//  108      ipv6addr->u8[6] == 0 &&
//  109      ipv6addr->u8[7] == 0 &&
//  110      ipv6addr->u8[8] == 0 &&
//  111      ipv6addr->u8[9] == 0 &&
//  112      ipv6addr->u8[10] == 0xff &&
//  113      ipv6addr->u8[11] == 0xff) {
ip64_addr_6to4:
        LDRB     R2,[R0, #+0]
        CMP      R2,#+0
        ITT      EQ 
        LDRBEQ   R2,[R0, #+1]
        CMPEQ    R2,#+0
        BNE.N    ??ip64_addr_6to4_0
        LDRB     R2,[R0, #+2]
        CMP      R2,#+0
        ITT      EQ 
        LDRBEQ   R2,[R0, #+3]
        CMPEQ    R2,#+0
        BNE.N    ??ip64_addr_6to4_0
        LDRB     R2,[R0, #+4]
        CMP      R2,#+0
        ITT      EQ 
        LDRBEQ   R2,[R0, #+5]
        CMPEQ    R2,#+0
        BNE.N    ??ip64_addr_6to4_0
        LDRB     R2,[R0, #+6]
        CMP      R2,#+0
        ITT      EQ 
        LDRBEQ   R2,[R0, #+7]
        CMPEQ    R2,#+0
        BNE.N    ??ip64_addr_6to4_0
        LDRB     R2,[R0, #+8]
        CMP      R2,#+0
        ITT      EQ 
        LDRBEQ   R2,[R0, #+9]
        CMPEQ    R2,#+0
        BNE.N    ??ip64_addr_6to4_0
        LDRB     R2,[R0, #+10]
        CMP      R2,#+255
        ITT      EQ 
        LDRBEQ   R2,[R0, #+11]
        CMPEQ    R2,#+255
        BNE.N    ??ip64_addr_6to4_0
//  114     ipv4addr->u8[0] = ipv6addr->u8[12];
        LDRB     R2,[R0, #+12]
        STRB     R2,[R1, #+0]
//  115     ipv4addr->u8[1] = ipv6addr->u8[13];
        LDRB     R2,[R0, #+13]
        STRB     R2,[R1, #+1]
//  116     ipv4addr->u8[2] = ipv6addr->u8[14];
        LDRB     R2,[R0, #+14]
        STRB     R2,[R1, #+2]
//  117     ipv4addr->u8[3] = ipv6addr->u8[15];
        LDRB     R0,[R0, #+15]
        STRB     R0,[R1, #+3]
//  118 
//  119     PRINTF("ip64_addr_6to4: IPv6-encoded IPv4 address %d.%d.%d.%d\n",
//  120 	   ipv4addr->u8[0], ipv4addr->u8[1],
//  121 	   ipv4addr->u8[2], ipv4addr->u8[3]);
//  122 
//  123     /* Conversion succeeded, we return non-zero. */
//  124     return 1;
        MOVS     R0,#+1
        BX       LR
//  125   }
//  126   /* We could not convert the IPv6 address, so we return 0. */
//  127   return 0;
??ip64_addr_6to4_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  128 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  129 /*---------------------------------------------------------------------------*/
// 
// 156 bytes in section .text
// 
// 156 bytes of CODE memory
//
//Errors: none
//Warnings: 1
