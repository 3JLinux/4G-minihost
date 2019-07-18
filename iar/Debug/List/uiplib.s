///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:49
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uiplib.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uiplib.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uiplib.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr
        EXTERN __aeabi_memmove

        PUBLIC uiplib_ip4addrconv
        PUBLIC uiplib_ip6addrconv
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uiplib.c
//    1 /*
//    2  * Copyright (c) 2004, Adam Dunkels and the Swedish Institute of
//    3  * Computer Science.
//    4  * All rights reserved.
//    5  *
//    6  * Redistribution and use in source and binary forms, with or without 
//    7  * modification, are permitted provided that the following conditions 
//    8  * are met: 
//    9  * 1. Redistributions of source code must retain the above copyright 
//   10  *    notice, this list of conditions and the following disclaimer. 
//   11  * 2. Redistributions in binary form must reproduce the above copyright 
//   12  *    notice, this list of conditions and the following disclaimer in the 
//   13  *    documentation and/or other materials provided with the distribution. 
//   14  * 3. The name of the author may not be used to endorse or promote
//   15  *    products derived from this software without specific prior
//   16  *    written permission.  
//   17  *
//   18  * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS
//   19  * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//   20  * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   21  * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
//   22  * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   23  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
//   24  * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//   25  * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
//   26  * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//   27  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//   28  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  
//   29  *
//   30  * This file is part of the uIP TCP/IP stack and the Contiki operating system.
//   31  *
//   32  *
//   33  */
//   34 
//   35 
//   36 #include "net/ip/uip.h"
//   37 #include "net/ip/uiplib.h"
//   38 #include <string.h>
//   39 
//   40 #define DEBUG DEBUG_NONE
//   41 #include "net/ip/uip-debug.h"
//   42 
//   43 /*-----------------------------------------------------------------------------------*/
//   44 #if NETSTACK_CONF_WITH_IPV6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function uiplib_ip6addrconv
        THUMB
//   45 int
//   46 uiplib_ip6addrconv(const char *addrstr, uip_ip6addr_t *ipaddr)
//   47 {
uiplib_ip6addrconv:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R1
//   48   uint16_t value;
//   49   int tmp, zero;
//   50   unsigned int len;
//   51   char c = 0;  //gcc warning if not initialized
//   52 
//   53   value = 0;
//   54   zero = -1;
//   55   if(*addrstr == '[') addrstr++;
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+0
        CMP      R2,#+91
        IT       EQ 
        ADDEQ    R0,R0,#+1
        MOV      R5,#-1
//   56 
//   57   for(len = 0; len < sizeof(uip_ip6addr_t) - 1; addrstr++) {
        MOVS     R6,#+0
        B.N      ??uiplib_ip6addrconv_0
//   58     c = *addrstr;
//   59     if(c == ':' || c == '\0' || c == ']' || c == '/') {
//   60       ipaddr->u8[len] = (value >> 8) & 0xff;
//   61       ipaddr->u8[len + 1] = value & 0xff;
//   62       len += 2;
//   63       value = 0;
//   64 
//   65       if(c == '\0' || c == ']' || c == '/') {
//   66         break;
//   67       }
//   68 
//   69       if(*(addrstr + 1) == ':') {
//   70         /* Zero compression */
//   71         if(zero < 0) {
//   72           zero = len;
//   73         }
//   74         addrstr++;
//   75       }
//   76     } else {
//   77       if(c >= '0' && c <= '9') {
//   78         tmp = c - '0';
//   79       } else if(c >= 'a' && c <= 'f') {
//   80         tmp = c - 'a' + 10;
//   81       } else if(c >= 'A' && c <= 'F') {
??uiplib_ip6addrconv_1:
        SUB      R3,R2,#+65
        CMP      R3,#+6
        BCS.N    ??uiplib_ip6addrconv_2
//   82         tmp = c - 'A' + 10;
        SUBS     R2,R2,#+55
//   83       } else {
//   84         PRINTF("uiplib: illegal char: '%c'\n", c);
//   85         return 0;
//   86       }
//   87       value = (value << 4) + (tmp & 0xf);
??uiplib_ip6addrconv_3:
        AND      R2,R2,#0xF
        ADD      R1,R2,R1, LSL #+4
        UXTH     R1,R1
        ADDS     R0,R0,#+1
??uiplib_ip6addrconv_0:
        LDRB     R2,[R0, #+0]
        CMP      R2,#+58
        IT       NE 
        CMPNE    R2,#+0
        BEQ.N    ??uiplib_ip6addrconv_4
        CMP      R2,#+93
        IT       NE 
        CMPNE    R2,#+47
        BNE.N    ??uiplib_ip6addrconv_5
??uiplib_ip6addrconv_4:
        LSRS     R3,R1,#+8
        STRB     R3,[R6, R4]
        ADDS     R3,R6,R4
        ADDS     R6,R6,#+2
        STRB     R1,[R3, #+1]
        MOVS     R1,#+0
        CBZ.N    R2,??uiplib_ip6addrconv_6
        CMP      R2,#+93
        IT       NE 
        CMPNE    R2,#+47
        BEQ.N    ??uiplib_ip6addrconv_6
        LDRB     R2,[R0, #+1]
        CMP      R2,#+58
        BNE.N    ??uiplib_ip6addrconv_7
        CMP      R5,#+0
        IT       MI 
        MOVMI    R5,R6
        ADDS     R0,R0,#+1
??uiplib_ip6addrconv_7:
        ADDS     R0,R0,#+1
        CMP      R6,#+15
        BCC.N    ??uiplib_ip6addrconv_0
        B.N      ??uiplib_ip6addrconv_2
??uiplib_ip6addrconv_5:
        SUB      R3,R2,#+48
        CMP      R3,#+10
        IT       CC 
        SUBCC    R2,R2,#+48
        BCC.N    ??uiplib_ip6addrconv_3
        SUB      R3,R2,#+97
        CMP      R3,#+6
        BCS.N    ??uiplib_ip6addrconv_1
        SUBS     R2,R2,#+87
        B.N      ??uiplib_ip6addrconv_3
//   88     }
//   89   }
//   90   if(c != '\0' && c != ']' && c != '/') {
//   91     PRINTF("uiplib: too large address\n");
//   92     return 0;
//   93   }
//   94   if(len < sizeof(uip_ip6addr_t)) {
??uiplib_ip6addrconv_6:
        CMP      R6,#+16
        BCS.N    ??uiplib_ip6addrconv_8
//   95     if(zero < 0) {
        CMP      R5,#+0
        BPL.N    ??uiplib_ip6addrconv_9
//   96       PRINTF("uiplib: too short address\n");
//   97       return 0;
??uiplib_ip6addrconv_2:
        MOVS     R0,#+0
        POP      {R4-R6,PC}
//   98     }
//   99     memmove(&ipaddr->u8[zero + sizeof(uip_ip6addr_t) - len],
//  100             &ipaddr->u8[zero], len - zero);
??uiplib_ip6addrconv_9:
        ADD      R0,R5,#+16
        SUBS     R0,R0,R6
        SUBS     R2,R6,R5
        ADDS     R1,R5,R4
        ADDS     R0,R0,R4
          CFI FunCall __aeabi_memmove
        BL       __aeabi_memmove
//  101     memset(&ipaddr->u8[zero], 0, sizeof(uip_ip6addr_t) - len);
        RSB      R1,R6,#+16
        ADDS     R0,R5,R4
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  102   }
//  103 
//  104   return 1;
??uiplib_ip6addrconv_8:
        MOVS     R0,#+1
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//  105 }
//  106 #endif /* NETSTACK_CONF_WITH_IPV6 */
//  107 /*-----------------------------------------------------------------------------------*/
//  108 /* Parse a IPv4-address from a string. Returns the number of characters read 
//  109  * for the address. */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function uiplib_ip4addrconv
          CFI NoCalls
        THUMB
//  110 int
//  111 uiplib_ip4addrconv(const char *addrstr, uip_ip4addr_t *ipaddr)
//  112 {
uiplib_ip4addrconv:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  113   unsigned char tmp;
//  114   char c;
//  115   unsigned char i, j;
//  116   uint8_t charsread = 0;
        MOVS     R2,#+0
//  117 
//  118   tmp = 0;
        MOVS     R3,#+0
//  119 
//  120   for(i = 0; i < 4; ++i) {
        MOV      R4,R2
//  121     j = 0;
??uiplib_ip4addrconv_0:
        MOVS     R5,#+5
//  122     do {
//  123       c = *addrstr;
??uiplib_ip4addrconv_1:
        LDRB     R6,[R0, #+0]
//  124       ++j;
//  125       if(j > 4) {
        SUBS     R5,R5,#+1
        BEQ.N    ??uiplib_ip4addrconv_2
//  126         return 0;
//  127       }
//  128       if(c == '.' || c == 0 || c == ' ') {
        CMP      R6,#+46
        ITT      NE 
        CMPNE    R6,#+0
        CMPNE    R6,#+32
        BNE.N    ??uiplib_ip4addrconv_3
//  129         ipaddr->u8[i] = tmp;
        STRB     R3,[R1, #+0]
//  130         tmp = 0;
        MOVS     R3,#+0
//  131       } else if(c >= '0' && c <= '9') {
//  132       	tmp = (tmp * 10) + (c - '0');
//  133       } else {
//  134         return 0;
//  135       }
//  136       ++addrstr;
??uiplib_ip4addrconv_4:
        ADDS     R0,R0,#+1
//  137       ++charsread;
        ADDS     R2,R2,#+1
//  138     } while(c != '.' && c != 0 && c != ' ');
        CMP      R6,#+46
        IT       NE 
        CMPNE    R6,#+0
        IT       NE 
        CMPNE    R6,#+32
        BNE.N    ??uiplib_ip4addrconv_1
        ADDS     R4,R4,#+1
        UXTB     R4,R4
        ADDS     R1,R1,#+1
        CMP      R4,#+4
        BLT.N    ??uiplib_ip4addrconv_0
//  139 
//  140   }
//  141   return charsread-1;
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        UXTB     R2,R2
        SUBS     R0,R2,#+1
        BX       LR               ;; return
          CFI R4 Frame(CFA, -16)
          CFI R5 Frame(CFA, -12)
          CFI R6 Frame(CFA, -8)
          CFI R7 Frame(CFA, -4)
          CFI CFA R13+16
??uiplib_ip4addrconv_3:
        SUB      R7,R6,#+48
        CMP      R7,#+10
        ITTT     CC 
        ADDCC    R7,R3,R3, LSL #+2
        ADDCC    R3,R6,R7, LSL #+1
        SUBCC    R3,R3,#+48
        BCC.N    ??uiplib_ip4addrconv_4
??uiplib_ip4addrconv_2:
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        MOVS     R0,#+0
        BX       LR
          CFI EndBlock cfiBlock1
//  142 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  143 /*-----------------------------------------------------------------------------------*/
// 
// 262 bytes in section .text
// 
// 262 bytes of CODE memory
//
//Errors: none
//Warnings: 1
