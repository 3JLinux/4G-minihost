///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:59
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-slip-interface.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-slip-interface.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ip64-slip-interface.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN ip64_4to6
        EXTERN ip64_6to4
        EXTERN ip64_packet_buffer
        EXTERN memcmp
        EXTERN process_start
        EXTERN slip_process
        EXTERN slip_send
        EXTERN slip_set_input_callback
        EXTERN uip_aligned_buf
        EXTERN uip_len
        EXTERN uip_lladdr

        PUBLIC ip64_slip_interface
        PUBLIC ip64_slip_interface_input
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-slip-interface.c
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
//   31 #include "net/ip/uip.h"
//   32 #include "net/ipv6/uip-ds6.h"
//   33 #include "dev/slip.h"
//   34 
//   35 #include "ip64.h"
//   36 
//   37 #include <string.h>
//   38 #include <stdio.h>
//   39 
//   40 #define UIP_IP_BUF        ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
//   41 
//   42 #define DEBUG DEBUG_NONE
//   43 #include "net/ip/uip-debug.h"
//   44 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   45 static uip_ipaddr_t last_sender;
last_sender:
        DS8 16
//   46 
//   47 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ip64_slip_interface_input
          CFI NoCalls
        THUMB
//   48 void
//   49 ip64_slip_interface_input(uint8_t *packet, uint16_t len)
//   50 {
//   51   /* Dummy definition: this function is not actually called, but must
//   52      be here to conform to the ip65-interface.h structure. */
//   53 }
ip64_slip_interface_input:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   54 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function input_callback
        THUMB
//   55 static void
//   56 input_callback(void)
//   57 {
input_callback:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//   58   /*PRINTF("SIN: %u\n", uip_len);*/
//   59   if(uip_buf[0] == '!') {
        LDR.N    R4,??DataTable4
        LDRB     R0,[R4, #+0]
        CMP      R0,#+33
        BEQ.N    ??input_callback_0
//   60     PRINTF("Got configuration message of type %c\n", uip_buf[1]);
//   61     uip_len = 0;
//   62 #if 0
//   63     if(uip_buf[1] == 'P') {
//   64       uip_ipaddr_t prefix;
//   65       /* Here we set a prefix !!! */
//   66       memset(&prefix, 0, 16);
//   67       memcpy(&prefix, &uip_buf[2], 8);
//   68       PRINTF("Setting prefix ");
//   69       PRINT6ADDR(&prefix);
//   70       PRINTF("\n");
//   71       set_prefix_64(&prefix);
//   72     }
//   73 #endif
//   74   } else if(uip_buf[0] == '?') {
        CMP      R0,#+63
        BNE.N    ??input_callback_1
//   75     PRINTF("Got request message of type %c\n", uip_buf[1]);
//   76     if(uip_buf[1] == 'M') {
        LDRB     R0,[R4, #+1]
        CMP      R0,#+77
        BNE.N    ??input_callback_0
//   77       const char *hexchar = "0123456789abcdef";
//   78       int j;
//   79       /* this is just a test so far... just to see if it works */
//   80       uip_buf[0] = '!';
        MOVS     R0,#+33
        STRB     R0,[R4, #+0]
//   81       for(j = 0; j < 8; j++) {
        MOVS     R3,#+0
        ADDS     R0,R4,#+2
        LDR.N    R1,??DataTable4_1
        ADR.W    R2,?_0
//   82         uip_buf[2 + j * 2] = hexchar[uip_lladdr.addr[j] >> 4];
??input_callback_2:
        LDRB     R4,[R3, R1]
        LSRS     R5,R4,#+4
//   83         uip_buf[3 + j * 2] = hexchar[uip_lladdr.addr[j] & 15];
        AND      R4,R4,#0xF
        LDRB     R5,[R5, R2]
        STRB     R5,[R0], #+1
        ADDS     R3,R3,#+1
        LDRB     R4,[R4, R2]
        STRB     R4,[R0], #+1
        LDRB     R4,[R3, R1]
        LSRS     R5,R4,#+4
        AND      R4,R4,#0xF
        LDRB     R5,[R5, R2]
        STRB     R5,[R0], #+1
//   84       }
        ADDS     R3,R3,#+1
        LDRB     R4,[R4, R2]
        STRB     R4,[R0], #+1
        CMP      R3,#+8
        BLT.N    ??input_callback_2
//   85       uip_len = 18;
        LDR.N    R1,??DataTable4_2
        MOVS     R0,#+18
        STRH     R0,[R1, #+0]
//   86       slip_send();
          CFI FunCall slip_send
        BL       slip_send
//   87       
//   88     }
//   89     uip_len = 0;
??input_callback_0:
        MOVS     R5,#+0
        B.N      ??input_callback_3
//   90   } else {
//   91     
//   92     /* Save the last sender received over SLIP to avoid bouncing the
//   93        packet back if no route is found */
//   94     uip_ipaddr_copy(&last_sender, &UIP_IP_BUF->srcipaddr);
??input_callback_1:
        ADD      R1,R4,#+8
        LDM      R1!,{R2,R3,R5,R6}
        LDR.N    R0,??DataTable4_3
        STM      R0!,{R2,R3,R5,R6}
//   95     
//   96     uint16_t len = ip64_4to6(&uip_buf[UIP_LLH_LEN], uip_len, 
//   97 			     ip64_packet_buffer);
        LDR.N    R0,??DataTable4_2
        LDR.N    R6,??DataTable4_4
        LDRH     R1,[R0, #+0]
        LDR      R2,[R6, #+0]
        MOV      R0,R4
          CFI FunCall ip64_4to6
        BL       ip64_4to6
//   98     if(len > 0) {
        UXTH     R5,R0
        CBZ.N    R5,??input_callback_3
//   99       memcpy(&uip_buf[UIP_LLH_LEN], ip64_packet_buffer, len);
        LDR      R1,[R6, #+0]
        MOV      R2,R5
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  100       uip_len = len;
//  101       /*      PRINTF("send len %d\n", len); */
//  102     } else {
//  103       uip_len = 0;
??input_callback_3:
        LDR.N    R0,??DataTable4_2
        STRH     R5,[R0, #+0]
//  104     }
//  105   }
//  106 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1
//  107 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function init
        THUMB
//  108 static void
//  109 init(void)
//  110 {
init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  111   PRINTF("ip64-slip-interface: init\n");
//  112   //  slip_arch_init(BAUD2UBR(115200));
//  113   process_start(&slip_process, NULL);
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_5
          CFI FunCall process_start
        BL       process_start
//  114   slip_set_input_callback(input_callback);
        LDR.N    R0,??DataTable4_6
        POP      {R1,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall slip_set_input_callback
        B.W      slip_set_input_callback
          CFI EndBlock cfiBlock2
//  115 }
//  116 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function output
        THUMB
//  117 static void
//  118 output(void)
//  119 {
output:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//  120   int len;
//  121 
//  122   PRINTF("ip64-slip-interface: output source ");
//  123 
//  124   /*
//  125   PRINT6ADDR(&UIP_IP_BUF->srcipaddr);
//  126   PRINTF(" destination ");
//  127   PRINT6ADDR(&UIP_IP_BUF->destipaddr);
//  128   PRINTF("\n");
//  129   */
//  130   if(uip_ipaddr_cmp(&last_sender, &UIP_IP_BUF->srcipaddr)) {
        LDR.N    R4,??DataTable4
        LDR.N    R0,??DataTable4_3
        MOVS     R2,#+16
        ADD      R1,R4,#+8
          CFI FunCall memcmp
        BL       memcmp
        CBZ.N    R0,??output_0
//  131     PRINTF("ip64-interface: output, not sending bounced message\n");
//  132   } else {
//  133     len = ip64_6to4(&uip_buf[UIP_LLH_LEN], uip_len,
//  134 		    ip64_packet_buffer);
        LDR.N    R5,??DataTable4_2
        LDR.N    R6,??DataTable4_4
        LDRH     R1,[R5, #+0]
        LDR      R2,[R6, #+0]
        MOV      R0,R4
          CFI FunCall ip64_6to4
        BL       ip64_6to4
        MOV      R7,R0
//  135     PRINTF("ip64-interface: output len %d\n", len);
//  136     if(len > 0) {
        CMP      R7,#+1
        BLT.N    ??output_0
//  137       memcpy(&uip_buf[UIP_LLH_LEN], ip64_packet_buffer, len);
        LDR      R1,[R6, #+0]
        MOV      R2,R7
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  138       uip_len = len;
        STRH     R7,[R5, #+0]
//  139       slip_send();
        POP      {R0,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall slip_send
        B.W      slip_send
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  140     }
//  141   }
//  142 }
??output_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     uip_aligned_buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     uip_lladdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     uip_len

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     last_sender

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     ip64_packet_buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     slip_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     input_callback

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_0:
        DC8 "0123456789abcdef"
        DC8 0, 0, 0
//  143 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  144 const struct uip_fallback_interface ip64_slip_interface = {
ip64_slip_interface:
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
//  145   init, output
//  146 };
//  147 /*---------------------------------------------------------------------------*/
//  148 
//  149 
//  150 
// 
//  16 bytes in section .bss
//   8 bytes in section .rodata
// 270 bytes in section .text
// 
// 270 bytes of CODE  memory
//   8 bytes of CONST memory
//  16 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
