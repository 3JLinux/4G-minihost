///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:43
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\dev\enc28j60\enc28j60.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\dev\enc28j60\enc28j60.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\enc28j60.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_WriteBit
        EXTERN __aeabi_memcpy
        EXTERN clock_wait
        EXTERN enc28j60_arch_spi_deselect
        EXTERN enc28j60_arch_spi_init
        EXTERN enc28j60_arch_spi_read
        EXTERN enc28j60_arch_spi_select
        EXTERN enc28j60_arch_spi_write
        EXTERN etimer_expired
        EXTERN etimer_set
        EXTERN process_start

        PUBLIC enc28j60_init
        PUBLIC enc28j60_read
        PUBLIC enc28j60_send
        PUBLIC enc_watchdog_process
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\dev\enc28j60\enc28j60.c
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
//   34 #include <stdio.h>
//   35 #include <string.h>
//   36 //#include "sysprintf.h"
//   37 #include "iodef.h"
//   38 
//   39 #define DEBUG 0
//   40 #if DEBUG
//   41 #define PRINTF(...) printf(__VA_ARGS__)
//   42 #else
//   43 #define PRINTF(...)
//   44 #endif
//   45 
//   46 #define EIE   0x1b
//   47 #define EIR   0x1c
//   48 #define ESTAT 0x1d
//   49 #define ECON2 0x1e
//   50 #define ECON1 0x1f
//   51 
//   52 #define ESTAT_CLKRDY 0x01
//   53 #define ESTAT_TXABRT 0x02
//   54 
//   55 #define ECON1_RXEN   0x04
//   56 #define ECON1_TXRTS  0x08
//   57 
//   58 #define ECON2_AUTOINC 0x80
//   59 #define ECON2_PKTDEC  0x40
//   60 
//   61 #define EIR_TXIF      0x08
//   62 
//   63 #define ERXTX_BANK 0x00
//   64 
//   65 #define ERDPTL 0x00
//   66 #define ERDPTH 0x01
//   67 #define EWRPTL 0x02
//   68 #define EWRPTH 0x03
//   69 #define ETXSTL 0x04
//   70 #define ETXSTH 0x05
//   71 #define ETXNDL 0x06
//   72 #define ETXNDH 0x07
//   73 #define ERXSTL 0x08
//   74 #define ERXSTH 0x09
//   75 #define ERXNDL 0x0a
//   76 #define ERXNDH 0x0b
//   77 #define ERXRDPTL 0x0c
//   78 #define ERXRDPTH 0x0d
//   79 
//   80 #define RX_BUF_START 0x0000
//   81 #define RX_BUF_END   0x0fff
//   82 
//   83 #define TX_BUF_START 0x1200
//   84 
//   85 /* MACONx registers are in bank 2 */
//   86 #define MACONX_BANK 0x02
//   87 
//   88 #define MACON1  0x00
//   89 #define MACON3  0x02
//   90 #define MACON4  0x03
//   91 #define MABBIPG 0x04
//   92 #define MAIPGL  0x06
//   93 #define MAIPGH  0x07
//   94 #define MAMXFLL 0x0a
//   95 #define MAMXFLH 0x0b
//   96 
//   97 #define MACON1_TXPAUS 0x08
//   98 #define MACON1_RXPAUS 0x04
//   99 #define MACON1_MARXEN 0x01
//  100 
//  101 #define MACON3_PADCFG_FULL 0xe0
//  102 #define MACON3_TXCRCEN     0x10
//  103 #define MACON3_FRMLNEN     0x02
//  104 #define MACON3_FULDPX      0x01
//  105 
//  106 #define MAX_MAC_LENGTH 1518
//  107 
//  108 #define MAADRX_BANK 0x03
//  109 #define MAADR1 0x04 /* MAADR<47:40> */
//  110 #define MAADR2 0x05 /* MAADR<39:32> */
//  111 #define MAADR3 0x02 /* MAADR<31:24> */
//  112 #define MAADR4 0x03 /* MAADR<23:16> */
//  113 #define MAADR5 0x00 /* MAADR<15:8> */
//  114 #define MAADR6 0x01 /* MAADR<7:0> */
//  115 #define MISTAT 0x0a
//  116 #define EREVID 0x12
//  117 
//  118 #define EPKTCNT_BANK 0x01
//  119 #define ERXFCON 0x18
//  120 #define EPKTCNT 0x19
//  121 
//  122 #define ERXFCON_UCEN  0x80
//  123 #define ERXFCON_ANDOR 0x40
//  124 #define ERXFCON_CRCEN 0x20
//  125 #define ERXFCON_MCEN  0x02
//  126 #define ERXFCON_BCEN  0x01
//  127 
//  128 
//  129 PROCESS(enc_watchdog_process, "Enc28j60 watchdog");
//  130 
//  131 static uint8_t initialized = 0;
//  132 static uint8_t bank = ERXTX_BANK;
//  133 static uint8_t enc_mac_addr[6];
//  134 static int received_packets = 0;
//  135 static int sent_packets = 0;
//  136 
//  137 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function is_mac_mii_reg
          CFI NoCalls
        THUMB
//  138 static uint8_t
//  139 is_mac_mii_reg(uint8_t reg)
//  140 {
//  141   /* MAC or MII register (otherwise, ETH register)? */
//  142   switch(bank) {
is_mac_mii_reg:
        LDR.W    R1,??DataTable7
        LDRB     R1,[R1, #+9]
        CMP      R1,#+2
        BEQ.N    ??is_mac_mii_reg_0
        CMP      R1,#+3
        BEQ.N    ??is_mac_mii_reg_1
        B.N      ??is_mac_mii_reg_2
//  143   case MACONX_BANK:
//  144     return reg < EIE;
??is_mac_mii_reg_0:
        CMP      R0,#+27
        BGE.N    ??is_mac_mii_reg_2
        B.N      ??is_mac_mii_reg_3
//  145   case MAADRX_BANK:
//  146     return reg <= MAADR2 || reg == MISTAT;
??is_mac_mii_reg_1:
        CMP      R0,#+6
        BLT.N    ??is_mac_mii_reg_3
        CMP      R0,#+10
        BNE.N    ??is_mac_mii_reg_2
??is_mac_mii_reg_3:
        MOVS     R0,#+1
        BX       LR
//  147   case ERXTX_BANK:
//  148   case EPKTCNT_BANK:
//  149   default:
//  150     return 0;
??is_mac_mii_reg_2:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  151   }
//  152 }
//  153 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function readreg
        THUMB
//  154 static uint8_t
//  155 readreg(uint8_t reg)
//  156 {
readreg:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  157   uint8_t r;
//  158   enc28j60_arch_spi_select();
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
//  159   enc28j60_arch_spi_write(0x00 | (reg & 0x1f));
        AND      R0,R4,#0x1F
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
//  160   if(is_mac_mii_reg(reg)) {
        MOV      R0,R4
          CFI FunCall is_mac_mii_reg
        BL       is_mac_mii_reg
        CBZ.N    R0,??readreg_0
//  161     /* MAC and MII registers require that a dummy byte be read first. */
//  162     enc28j60_arch_spi_read();
          CFI FunCall enc28j60_arch_spi_read
        BL       enc28j60_arch_spi_read
//  163   }
//  164   r = enc28j60_arch_spi_read();
??readreg_0:
          CFI FunCall enc28j60_arch_spi_read
        BL       enc28j60_arch_spi_read
        MOV      R4,R0
//  165   enc28j60_arch_spi_deselect();
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  166   return r;
        MOV      R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//  167 }
//  168 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function writereg
        THUMB
//  169 static void
//  170 writereg(uint8_t reg, uint8_t data)
//  171 {
writereg:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  172   enc28j60_arch_spi_select();
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
//  173   enc28j60_arch_spi_write(0x40 | (reg & 0x1f));
        AND      R0,R4,#0x1F
        ORR      R0,R0,#0x40
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock2
//  174   enc28j60_arch_spi_write(data);
//  175   enc28j60_arch_spi_deselect();
//  176 }
//  177 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function setregbitfield
        THUMB
//  178 static void
//  179 setregbitfield(uint8_t reg, uint8_t mask)
//  180 {
setregbitfield:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  181   if(is_mac_mii_reg(reg)) {
          CFI FunCall is_mac_mii_reg
        BL       is_mac_mii_reg
        CBZ.N    R0,??setregbitfield_0
//  182     writereg(reg, readreg(reg) | mask);
        MOV      R0,R4
          CFI FunCall readreg
        BL       readreg
        ORR      R1,R5,R0
        MOV      R0,R4
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall writereg
        B.N      writereg
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  183   } else {
//  184     enc28j60_arch_spi_select();
??setregbitfield_0:
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
//  185     enc28j60_arch_spi_write(0x80 | (reg & 0x1f));
        AND      R0,R4,#0x1F
        ORR      R0,R0,#0x80
          CFI EndBlock cfiBlock3
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  186     enc28j60_arch_spi_write(mask);
//  187     enc28j60_arch_spi_deselect();
//  188   }
//  189 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+16
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI FunCall writereg enc28j60_arch_spi_write
          CFI FunCall setregbitfield enc28j60_arch_spi_write
        THUMB
?Subroutine0:
        BL       enc28j60_arch_spi_write
        MOV      R0,R5
          CFI FunCall writereg enc28j60_arch_spi_write
          CFI FunCall setregbitfield enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI EndBlock cfiBlock4
        REQUIRE ??Subroutine1_0
        ;; // Fall through to label ??Subroutine1_0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+16
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
??Subroutine1_0:
        POP      {R0,R4,R5,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI FunCall writedata enc28j60_arch_spi_deselect
          CFI FunCall writereg enc28j60_arch_spi_deselect
          CFI FunCall setregbitfield enc28j60_arch_spi_deselect
        B.W      enc28j60_arch_spi_deselect
          CFI EndBlock cfiBlock5
//  190 /*---------------------------------------------------------------------------*/
//  191 static void
//  192 clearregbitfield(uint8_t reg, uint8_t mask)
//  193 {
//  194   if(is_mac_mii_reg(reg)) {
//  195     writereg(reg, readreg(reg) & ~mask);
//  196   } else {
//  197     enc28j60_arch_spi_select();
//  198     enc28j60_arch_spi_write(0xa0 | (reg & 0x1f));
//  199     enc28j60_arch_spi_write(mask);
//  200     enc28j60_arch_spi_deselect();
//  201   }
//  202 }
//  203 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function setregbank
        THUMB
//  204 static void
//  205 setregbank(uint8_t new_bank)
//  206 {
setregbank:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  207   writereg(ECON1, (readreg(ECON1) & 0xfc) | (new_bank & 0x03));
        MOVS     R0,#+31
          CFI FunCall readreg
        BL       readreg
        AND      R0,R0,#0xFC
        AND      R1,R4,#0x3
        ORRS     R1,R1,R0
        MOVS     R0,#+31
          CFI FunCall writereg
        BL       writereg
//  208   bank = new_bank;
        LDR.W    R0,??DataTable7
        STRB     R4,[R0, #+9]
//  209 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  210 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function writedata
        THUMB
//  211 static void
//  212 writedata(const uint8_t *data, int datalen)
//  213 {
writedata:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  214   int i;
//  215   enc28j60_arch_spi_select();
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
//  216   /* The Write Buffer Memory (WBM) command is 0 1 1 1 1 0 1 0  */
//  217   enc28j60_arch_spi_write(0x7a);
        MOVS     R0,#+122
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
//  218   for(i = 0; i < datalen; i++) {
        CMP      R5,#+1
        BLT.N    ??writedata_0
//  219     enc28j60_arch_spi_write(data[i]);
??writedata_1:
        LDRB     R0,[R4], #+1
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
//  220   }
        SUBS     R5,R5,#+1
        BNE.N    ??writedata_1
//  221   enc28j60_arch_spi_deselect();
??writedata_0:
        B.N      ??Subroutine1_0
          CFI EndBlock cfiBlock7
//  222 }
//  223 /*---------------------------------------------------------------------------*/
//  224 static void
//  225 writedatabyte(uint8_t byte)
//  226 {
//  227   writedata(&byte, 1);
//  228 }
//  229 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function readdata
        THUMB
//  230 static int
//  231 readdata(uint8_t *buf, int len)
//  232 {
readdata:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  233   int i;
//  234   enc28j60_arch_spi_select();
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
//  235   /* THe Read Buffer Memory (RBM) command is 0 0 1 1 1 0 1 0 */
//  236   enc28j60_arch_spi_write(0x3a);
        MOVS     R0,#+58
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
//  237   for(i = 0; i < len; i++) {
        MOVS     R6,#+0
        CMP      R5,#+1
        BLT.N    ??readdata_0
//  238     buf[i] = enc28j60_arch_spi_read();
??readdata_1:
          CFI FunCall enc28j60_arch_spi_read
        BL       enc28j60_arch_spi_read
//  239   }
        ADDS     R6,R6,#+1
        CMP      R6,R5
        STRB     R0,[R4], #+1
        BLT.N    ??readdata_1
//  240   enc28j60_arch_spi_deselect();
??readdata_0:
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  241   return i;
        MOV      R0,R6
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock8
//  242 }
//  243 /*---------------------------------------------------------------------------*/
//  244 static uint8_t
//  245 readdatabyte(void)
//  246 {
//  247   uint8_t r;
//  248   readdata(&r, 1);
//  249   return r;
//  250 }
//  251 /*---------------------------------------------------------------------------*/
//  252 static void
//  253 softreset(void)
//  254 {
//  255   enc28j60_arch_spi_select();
//  256   /* The System Command (soft reset) is 1 1 1 1 1 1 1 1 */
//  257   enc28j60_arch_spi_write(0xff);
//  258   enc28j60_arch_spi_deselect();
//  259   bank = ERXTX_BANK;
//  260 }
//  261 /*---------------------------------------------------------------------------*/
//  262 //#if DEBUG
//  263 static uint8_t
//  264 readrev(void)
//  265 {
//  266   uint8_t rev;
//  267   setregbank(MAADRX_BANK);
//  268   rev = readreg(EREVID);
//  269   switch(rev) {
//  270   case 2:
//  271     return 1;
//  272   case 6:
//  273     return 7;
//  274   default:
//  275     return rev;
//  276   }
//  277 }
//  278 //#endif
//  279 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function reset
        THUMB
//  280 static void
//  281 reset(void)
//  282 {
reset:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  283   PRINTF("enc28j60: resetting chip\n");
//  284 
//  285   enc28j60_arch_spi_init();
          CFI FunCall enc28j60_arch_spi_init
        BL       enc28j60_arch_spi_init
//  286 
//  287 /*
//  288 	ENC28J60_SPI2_Init();//SPI2初始化
//  289 	SPI2_SetSpeed(SPI_BaudRatePrescaler_4);	//SPI2 SCK频率为36M/4=9Mhz
//  290  	TIM6_Int_Init(1000,719);//100Khz计数频率，计数到1000为10ms
//  291 	ENC28J60_RST=0;			//复位ENC28J60
//  292 	delay_ms(10);	 
//  293 	ENC28J60_RST=1;			//复位结束				    
//  294 	delay_ms(10);
//  295 */  
//  296 	ENC28J60_RST(0);			//复位ENC28J60
        LDR.N    R4,??DataTable7_1  ;; 0x40011000
        MOVS     R2,#+0
        MOVS     R1,#+128
        MOV      R0,R4
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  297 	clock_wait(10);	 
        MOVS     R0,#+10
          CFI FunCall clock_wait
        BL       clock_wait
//  298 	ENC28J60_RST(1);			//复位结束				    
        MOVS     R2,#+1
        MOVS     R1,#+128
        MOV      R0,R4
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  299 	clock_wait(10);
        MOVS     R0,#+10
          CFI FunCall clock_wait
        BL       clock_wait
//  300   /*
//  301     6.0 INITIALIZATION
//  302 
//  303     Before the ENC28J60 can be used to transmit and receive packets,
//  304     certain device settings must be initialized. Depending on the
//  305     application, some configuration options may need to be
//  306     changed. Normally, these tasks may be accomplished once after
//  307     Reset and do not need to be changed thereafter.
//  308 
//  309     6.1 Receive Buffer
//  310 
//  311     Before receiving any packets, the receive buffer must be
//  312     initialized by programming the ERXST and ERXND pointers. All
//  313     memory between and including the ERXST and ERXND addresses will be
//  314     dedicated to the receive hardware. It is recommended that the
//  315     ERXST pointer be programmed with an even address.
//  316 
//  317     Applications expecting large amounts of data and frequent packet
//  318     delivery may wish to allocate most of the memory as the receive
//  319     buffer. Applications that may need to save older packets or have
//  320     several packets ready for transmission should allocate less
//  321     memory.
//  322 
//  323     When programming the ERXST pointer, the ERXWRPT registers will
//  324     automatically be updated with the same values. The address in
//  325     ERXWRPT will be used as the starting location when the receive
//  326     hardware begins writing received data. For tracking purposes, the
//  327     ERXRDPT registers should additionally be programmed with the same
//  328     value. To program ERXRDPT, the host controller must write to
//  329     ERXRDPTL first, followed by ERXRDPTH.  See Section 7.2.4 鈥淔reeing
//  330     Receive Buffer Space for more information
//  331 
//  332     6.2 Transmission Buffer
//  333 
//  334     All memory which is not used by the receive buffer is considered
//  335     the transmission buffer. Data which is to be transmitted should be
//  336     written into any unused space.  After a packet is transmitted,
//  337     however, the hardware will write a seven-byte status vector into
//  338     memory after the last byte in the packet. Therefore, the host
//  339     controller should leave at least seven bytes between each packet
//  340     and the beginning of the receive buffer. No explicit action is
//  341     required to initialize the transmission buffer.
//  342 
//  343     6.3 Receive Filters
//  344 
//  345     The appropriate receive filters should be enabled or disabled by
//  346     writing to the ERXFCON register. See Section 8.0 鈥淩eceive Filters
//  347     for information on how to configure it.
//  348 
//  349     6.4 Waiting For OST
//  350 
//  351     If the initialization procedure is being executed immediately
//  352     following a Power-on Reset, the ESTAT.CLKRDY bit should be polled
//  353     to make certain that enough time has elapsed before proceeding to
//  354     modify the MAC and PHY registers. For more information on the OST,
//  355     see Section 2.2 鈥淥scillator Start-up Timer.
//  356   */
//  357 
//  358   softreset();
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+255
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
        LDR.N    R4,??DataTable7
        MOVS     R0,#+0
        STRB     R0,[R4, #+9]
//  359 
//  360   /* Workaround for erratum #2. */
//  361   //clock_delay_usec(1000);
//  362   clock_wait(1);
        MOVS     R0,#+1
          CFI FunCall clock_wait
        BL       clock_wait
//  363 
//  364   /* Wait for OST */
//  365   while((readreg(ESTAT) & ESTAT_CLKRDY) == 0)
??reset_0:
        MOVS     R0,#+29
          CFI FunCall readreg
        BL       readreg
        LSLS     R0,R0,#+31
        BPL.N    ??reset_0
//  366   {
//  367   	PRINTF("READreg\n");
//  368   }
//  369 
//  370   setregbank(ERXTX_BANK);
        MOVS     R0,#+0
          CFI FunCall setregbank
        BL       setregbank
//  371   /* Set up receive buffer */
//  372   writereg(ERXSTL, RX_BUF_START & 0xff);
        MOVS     R1,#+0
        MOVS     R0,#+8
          CFI FunCall writereg
        BL       writereg
//  373   writereg(ERXSTH, RX_BUF_START >> 8);
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall writereg
        BL       writereg
//  374   writereg(ERXNDL, RX_BUF_END & 0xff);
        MOVS     R1,#+255
        MOVS     R0,#+10
          CFI FunCall writereg
        BL       writereg
//  375   writereg(ERXNDH, RX_BUF_END >> 8);
        MOVS     R1,#+15
        MOVS     R0,#+11
          CFI FunCall writereg
        BL       writereg
//  376   writereg(ERDPTL, RX_BUF_START & 0xff);
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall writereg
        BL       writereg
//  377   writereg(ERDPTH, RX_BUF_START >> 8);
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall writereg
        BL       writereg
//  378   writereg(ERXRDPTL, RX_BUF_END & 0xff);
        MOVS     R1,#+255
        MOVS     R0,#+12
          CFI FunCall writereg
        BL       writereg
//  379   writereg(ERXRDPTH, RX_BUF_END >> 8);
        MOVS     R1,#+15
        MOVS     R0,#+13
          CFI FunCall writereg
        BL       writereg
//  380 
//  381   /* Receive filters */
//  382   setregbank(EPKTCNT_BANK);
        MOVS     R0,#+1
          CFI FunCall setregbank
        BL       setregbank
//  383   writereg(ERXFCON, ERXFCON_UCEN | ERXFCON_CRCEN | ERXFCON_BCEN);
        MOVS     R1,#+161
        MOVS     R0,#+24
          CFI FunCall writereg
        BL       writereg
//  384 
//  385   /*
//  386     6.5 MAC Initialization Settings
//  387 
//  388     Several of the MAC registers require configuration during
//  389     initialization. This only needs to be done once; the order of
//  390     programming is unimportant.
//  391 
//  392     1. Set the MARXEN bit in MACON1 to enable the MAC to receive
//  393     frames. If using full duplex, most applications should also set
//  394     TXPAUS and RXPAUS to allow IEEE defined flow control to function.
//  395 
//  396     2. Configure the PADCFG, TXCRCEN and FULDPX bits of MACON3. Most
//  397     applications should enable automatic padding to at least 60 bytes
//  398     and always append a valid CRC. For convenience, many applications
//  399     may wish to set the FRMLNEN bit as well to enable frame length
//  400     status reporting. The FULDPX bit should be set if the application
//  401     will be connected to a full-duplex configured remote node;
//  402     otherwise, it should be left clear.
//  403 
//  404     3. Configure the bits in MACON4. For conformance to the IEEE 802.3
//  405     standard, set the DEFER bit.
//  406 
//  407     4. Program the MAMXFL registers with the maximum frame length to
//  408     be permitted to be received or transmitted. Normal network nodes
//  409     are designed to handle packets that are 1518 bytes or less.
//  410 
//  411     5. Configure the Back-to-Back Inter-Packet Gap register,
//  412     MABBIPG. Most applications will program this register with 15h
//  413     when Full-Duplex mode is used and 12h when Half-Duplex mode is
//  414     used.
//  415 
//  416     6. Configure the Non-Back-to-Back Inter-Packet Gap register low
//  417     byte, MAIPGL. Most applications will program this register with
//  418     12h.
//  419 
//  420     7. If half duplex is used, the Non-Back-to-Back Inter-Packet Gap
//  421     register high byte, MAIPGH, should be programmed. Most
//  422     applications will program this register to 0Ch.
//  423 
//  424     8. If Half-Duplex mode is used, program the Retransmission and
//  425     Collision Window registers, MACLCON1 and MACLCON2. Most
//  426     applications will not need to change the default Reset values.  If
//  427     the network is spread over exceptionally long cables, the default
//  428     value of MACLCON2 may need to be increased.
//  429 
//  430     9. Program the local MAC address into the MAADR1:MAADR6 registers.
//  431   */
//  432 
//  433   setregbank(MACONX_BANK);
        MOVS     R0,#+2
          CFI FunCall setregbank
        BL       setregbank
//  434 
//  435   /* Turn on reception and IEEE-defined flow control */
//  436   setregbitfield(MACON1, MACON1_MARXEN | MACON1_TXPAUS | MACON1_RXPAUS);
        MOVS     R1,#+13
        MOVS     R0,#+0
          CFI FunCall setregbitfield
        BL       setregbitfield
//  437 
//  438   /* Set padding, crc, full duplex */
//  439   setregbitfield(MACON3, MACON3_PADCFG_FULL | MACON3_TXCRCEN | MACON3_FULDPX |
//  440                          MACON3_FRMLNEN);
        MOVS     R1,#+243
        MOVS     R0,#+2
          CFI FunCall setregbitfield
        BL       setregbitfield
//  441 
//  442   /* Don't modify MACON4 */
//  443 
//  444   /* Set maximum frame length in MAMXFL */
//  445   writereg(MAMXFLL, MAX_MAC_LENGTH & 0xff);
        MOVS     R1,#+238
        MOVS     R0,#+10
          CFI FunCall writereg
        BL       writereg
//  446   writereg(MAMXFLH, MAX_MAC_LENGTH >> 8);
        MOVS     R1,#+5
        MOVS     R0,#+11
          CFI FunCall writereg
        BL       writereg
//  447 
//  448   /* Set back-to-back inter packet gap */
//  449   writereg(MABBIPG, 0x15);
        MOVS     R1,#+21
        MOVS     R0,#+4
          CFI FunCall writereg
        BL       writereg
//  450 
//  451   /* Set non-back-to-back packet gap */
//  452   writereg(MAIPGL, 0x12);
        MOVS     R1,#+18
        MOVS     R0,#+6
          CFI FunCall writereg
        BL       writereg
//  453 
//  454   /* Set MAC address */
//  455   setregbank(MAADRX_BANK);
        MOVS     R0,#+3
          CFI FunCall setregbank
        BL       setregbank
//  456   writereg(MAADR6, enc_mac_addr[5]);
        LDRB     R1,[R4, #+5]
        MOVS     R0,#+1
          CFI FunCall writereg
        BL       writereg
//  457   writereg(MAADR5, enc_mac_addr[4]);
        LDRB     R1,[R4, #+4]
        MOVS     R0,#+0
          CFI FunCall writereg
        BL       writereg
//  458   writereg(MAADR4, enc_mac_addr[3]);
        LDRB     R1,[R4, #+3]
        MOVS     R0,#+3
          CFI FunCall writereg
        BL       writereg
//  459   writereg(MAADR3, enc_mac_addr[2]);
        LDRB     R1,[R4, #+2]
        MOVS     R0,#+2
          CFI FunCall writereg
        BL       writereg
//  460   writereg(MAADR2, enc_mac_addr[1]);
        LDRB     R1,[R4, #+1]
        MOVS     R0,#+5
          CFI FunCall writereg
        BL       writereg
//  461   writereg(MAADR1, enc_mac_addr[0]);
        LDRB     R4,[R4, #+0]
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+68
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        MOV      R0,R4
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  462 
//  463   /*
//  464     6.6 PHY Initialization Settings
//  465 
//  466     Depending on the application, bits in three of the PHY module鈥檚
//  467     registers may also require configuration.  The PHCON1.PDPXMD bit
//  468     partially controls the device鈥檚 half/full-duplex
//  469     configuration. Normally, this bit is initialized correctly by the
//  470     external circuitry (see Section 2.6 鈥淟ED Configuration). If the
//  471     external circuitry is not present or incorrect, however, the host
//  472     controller must program the bit properly. Alternatively, for an
//  473     externally configurable system, the PDPXMD bit may be read and the
//  474     FULDPX bit be programmed to match.
//  475 
//  476     For proper duplex operation, the PHCON1.PDPXMD bit must also match
//  477     the value of the MACON3.FULDPX bit.
//  478 
//  479     If using half duplex, the host controller may wish to set the
//  480     PHCON2.HDLDIS bit to prevent automatic loopback of the data which
//  481     is transmitted.  The PHY register, PHLCON, controls the outputs of
//  482     LEDA and LEDB. If an application requires a LED configuration
//  483     other than the default, PHLCON must be altered to match the new
//  484     requirements. The settings for LED operation are discussed in
//  485     Section 2.6 鈥淟ED Configuration. The PHLCON register is shown in
//  486     Register 2-2 (page 9).
//  487   */
//  488 
//  489   /* Don't worry about PHY configuration for now */
//  490 
//  491   /* Turn on autoincrement for buffer access */
//  492   setregbitfield(ECON2, ECON2_AUTOINC);
        MOVS     R1,#+128
        MOVS     R0,#+30
          CFI FunCall setregbitfield
        BL       setregbitfield
//  493 
//  494   /* Turn on reception */
//  495   writereg(ECON1, ECON1_RXEN);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+95
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        MOVS     R0,#+4
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall enc28j60_arch_spi_deselect
        B.W      enc28j60_arch_spi_deselect
          CFI EndBlock cfiBlock9
//  496 }
//  497 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function enc28j60_init
        THUMB
//  498 void
//  499 enc28j60_init(const uint8_t *mac_addr)
//  500 {
enc28j60_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  501   if(initialized) {
        LDR.N    R4,??DataTable7
        LDRB     R1,[R4, #+8]
        CBNZ.N   R1,??enc28j60_init_0
//  502     return;
//  503   }
//  504 
//  505   memcpy(enc_mac_addr, mac_addr, 6);
        MOV      R1,R0
        MOVS     R2,#+6
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  506 
//  507   /* Start watchdog process */
//  508   process_start(&enc_watchdog_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+20
          CFI FunCall process_start
        BL       process_start
//  509 
//  510   reset();
          CFI FunCall reset
        BL       reset
//  511 
//  512   PRINTF("ENC28J60 rev. B%d\n", readrev());
//  513 
//  514   initialized = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+8]
//  515 
//  516   //tcpip_set_outputfunc(uint8_t(* f)(void))
//  517 }
??enc28j60_init_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock10
//  518 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function enc28j60_send
        THUMB
//  519 int
//  520 enc28j60_send(const uint8_t *data, uint16_t datalen)
//  521 {
enc28j60_send:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  522   uint16_t dataend;
//  523 
//  524   if(!initialized) {
        LDR.N    R4,??DataTable7
        MOV      R6,R0
        LDRB     R0,[R4, #+8]
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOV      R5,R1
        CBNZ.N   R0,??enc28j60_send_0
//  525     return -1;
        MOV      R0,#-1
        POP      {R1,R2,R4-R6,PC}
//  526   }
//  527  // MEM_DUMP(10, "NET", data, datalen);
//  528   /*
//  529     1. Appropriately program the ETXST pointer to point to an unused
//  530        location in memory. It will point to the per packet control
//  531        byte. In the example, it would be programmed to 0120h. It is
//  532        recommended that an even address be used for ETXST.
//  533 
//  534     2. Use the WBM SPI command to write the per packet control byte,
//  535        the destination address, the source MAC address, the
//  536        type/length and the data payload.
//  537 
//  538     3. Appropriately program the ETXND pointer. It should point to the
//  539        last byte in the data payload.  In the example, it would be
//  540        programmed to 0156h.
//  541 
//  542     4. Clear EIR.TXIF, set EIE.TXIE and set EIE.INTIE to enable an
//  543        interrupt when done (if desired).
//  544 
//  545     5. Start the transmission process by setting
//  546        ECON1.TXRTS.
//  547   */
//  548 
//  549   setregbank(ERXTX_BANK);
??enc28j60_send_0:
        MOVS     R0,#+0
          CFI FunCall setregbank
        BL       setregbank
//  550   /* Set up the transmit buffer pointer */
//  551   writereg(ETXSTL, TX_BUF_START & 0xff);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+68
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        MOVS     R0,#+0
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  552   writereg(ETXSTH, TX_BUF_START >> 8);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+69
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        MOVS     R0,#+18
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  553   writereg(EWRPTL, TX_BUF_START & 0xff);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+66
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        MOVS     R0,#+0
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  554   writereg(EWRPTH, TX_BUF_START >> 8);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+67
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        MOVS     R0,#+18
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  555 
//  556   /* Write the transmission control register as the first byte of the
//  557      output packet. We write 0x00 to indicate that the default
//  558      configuration (the values in MACON3) will be used.  */
//  559   writedatabyte(0x00); /* MACON3 */
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        MOVS     R1,#+1
        ADD      R0,SP,#+0
          CFI FunCall writedata
        BL       writedata
//  560 
//  561   writedata(data, datalen);
        MOV      R1,R5
        MOV      R0,R6
          CFI FunCall writedata
        BL       writedata
//  562 
//  563   /* Write a pointer to the last data byte. */
//  564   dataend = TX_BUF_START + datalen;
        ADD      R6,R5,#+4608
        UXTH     R6,R6
//  565   writereg(ETXNDL, dataend & 0xff);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+70
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        UXTB     R0,R6
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  566   writereg(ETXNDH, dataend >> 8);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+71
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        LSRS     R0,R6,#+8
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  567 
//  568   /* Clear EIR.TXIF */
//  569   clearregbitfield(EIR, EIR_TXIF);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+188
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        MOVS     R0,#+8
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  570 
//  571   /* Don't care about interrupts for now */
//  572 
//  573   /* Send the packet */
//  574   setregbitfield(ECON1, ECON1_TXRTS);
        MOVS     R1,#+8
        MOVS     R0,#+31
          CFI FunCall setregbitfield
        BL       setregbitfield
//  575   while((readreg(ECON1) & ECON1_TXRTS) > 0);
??enc28j60_send_1:
        MOVS     R0,#+31
          CFI FunCall readreg
        BL       readreg
        AND      R0,R0,#0x8
        CMP      R0,#+1
        BGE.N    ??enc28j60_send_1
//  576 
//  577 #if DEBUG
//  578   if((readreg(ESTAT) & ESTAT_TXABRT) != 0) {
//  579     uint16_t erdpt;
//  580     uint8_t tsv[7];
//  581     erdpt = (readreg(ERDPTH) << 8) | readreg(ERDPTL);
//  582     writereg(ERDPTL, (dataend + 1) & 0xff);
//  583     writereg(ERDPTH, (dataend + 1) >> 8);
//  584     readdata(tsv, sizeof(tsv));
//  585     writereg(ERDPTL, erdpt & 0xff);
//  586     writereg(ERDPTH, erdpt >> 8);
//  587     PRINTF("enc28j60: tx err: %d: %02x:%02x:%02x:%02x:%02x:%02x\n"
//  588            "                  tsv: %02x%02x%02x%02x%02x%02x%02x\n", datalen,
//  589            0xff & data[0], 0xff & data[1], 0xff & data[2],
//  590            0xff & data[3], 0xff & data[4], 0xff & data[5],
//  591            tsv[6], tsv[5], tsv[4], tsv[3], tsv[2], tsv[1], tsv[0]);
//  592   } else {
//  593     PRINTF("enc28j60: tx: %d: %02x:%02x:%02x:%02x:%02x:%02x\n", datalen,
//  594            0xff & data[0], 0xff & data[1], 0xff & data[2],
//  595            0xff & data[3], 0xff & data[4], 0xff & data[5]);
//  596   }
//  597 #endif
//  598 
//  599   sent_packets++;
        LDR      R0,[R4, #+16]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+16]
//  600   PRINTF("enc28j60: sent_packets %d\n", sent_packets);
//  601   return datalen;
        MOV      R0,R5
        POP      {R1,R2,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock11
//  602 }
//  603 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function enc28j60_read
        THUMB
//  604 int
//  605 enc28j60_read(uint8_t *buffer, uint16_t bufsize)
//  606 {
enc28j60_read:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
//  607   int n, len, next, err;
//  608 
//  609   uint8_t nxtpkt[2];
//  610   uint8_t status[2];
//  611   uint8_t length[2];
//  612 
//  613   if(!initialized) {
        LDR.N    R4,??DataTable7
        MOV      R7,R0
        LDRB     R0,[R4, #+8]
        SUB      SP,SP,#+8
          CFI CFA R13+40
        MOV      R8,R1
        CBNZ.N   R0,??enc28j60_read_0
//  614     return -1;
        MOV      R0,#-1
        POP      {R1,R2,R4-R10,PC}
//  615   }
//  616 
//  617   err = 0;
??enc28j60_read_0:
        MOVS     R6,#+0
//  618 
//  619   setregbank(EPKTCNT_BANK);
        MOVS     R0,#+1
          CFI FunCall setregbank
        BL       setregbank
//  620   n = readreg(EPKTCNT);
//  621 
//  622   if(n == 0) {
        MOVS     R0,#+25
          CFI FunCall readreg
        BL       readreg
        CMP      R0,#+0
        BEQ.N    ??enc28j60_read_1
//  623     return 0;
//  624   }
//  625 
//  626   PRINTF("enc28j60: EPKTCNT 0x%02x\n", n);
//  627 
//  628   setregbank(ERXTX_BANK);
        MOVS     R0,#+0
          CFI FunCall setregbank
        BL       setregbank
//  629   /* Read the next packet pointer */
//  630   nxtpkt[0] = readdatabyte();
        MOVS     R1,#+1
        ADD      R0,SP,#+0
          CFI FunCall readdata
        BL       readdata
        LDRB     R9,[SP, #+0]
//  631   nxtpkt[1] = readdatabyte();
        MOVS     R1,#+1
        ADD      R0,SP,#+0
          CFI FunCall readdata
        BL       readdata
        LDRB     R10,[SP, #+0]
//  632 
//  633   PRINTF("enc28j60: nxtpkt 0x%02x%02x\n", nxtpkt[1], nxtpkt[0]);
//  634 
//  635   length[0] = readdatabyte();
        MOVS     R1,#+1
        ADD      R0,SP,#+0
          CFI FunCall readdata
        BL       readdata
//  636   length[1] = readdatabyte();
        MOVS     R1,#+1
        ADD      R0,SP,#+1
          CFI FunCall readdata
        BL       readdata
//  637 
//  638   PRINTF("enc28j60: length 0x%02x%02x\n", length[1], length[0]);
//  639 
//  640   status[0] = readdatabyte();
        MOVS     R1,#+1
        ADD      R0,SP,#+3
          CFI FunCall readdata
        BL       readdata
//  641   status[1] = readdatabyte();
        MOVS     R1,#+1
        ADD      R0,SP,#+2
          CFI FunCall readdata
        BL       readdata
//  642 
//  643   /* This statement is just to avoid a compiler warning: */
//  644   status[0] = status[0];
//  645   PRINTF("enc28j60: status 0x%02x%02x\n", status[1], status[0]);
//  646 
//  647   len = (length[1] << 8) + length[0];
        LDRB     R0,[SP, #+1]
        LDRB     R1,[SP, #+0]
        ADD      R5,R1,R0, LSL #+8
//  648   if(bufsize >= len) {
        CMP      R8,R5
        BLT.N    ??enc28j60_read_2
//  649     readdata(buffer, len);
        MOV      R1,R5
        MOV      R0,R7
          CFI FunCall readdata
        BL       readdata
        B.N      ??enc28j60_read_3
//  650   } else {
//  651     uint16_t i;
//  652 
//  653     err = 1;
??enc28j60_read_2:
        MOVS     R6,#+1
//  654 
//  655     /* flush rx fifo */
//  656     for(i = 0; i < len; i++) {
        CMP      R5,#+1
        BLT.N    ??enc28j60_read_3
        MOV      R7,R5
//  657       readdatabyte();
??enc28j60_read_4:
        MOVS     R1,#+1
        ADD      R0,SP,#+0
          CFI FunCall readdata
        BL       readdata
//  658     }
        SUBS     R7,R7,#+1
        BNE.N    ??enc28j60_read_4
//  659   }
//  660 
//  661   /* Read an additional byte at odd lengths, to avoid FIFO corruption */
//  662   if((len % 2) != 0) {
??enc28j60_read_3:
        ADD      R0,R5,R5, LSR #+31
        ASRS     R0,R0,#+1
        SUBS     R0,R5,R0, LSL #+1
        BEQ.N    ??enc28j60_read_5
//  663     readdatabyte();
        MOVS     R1,#+1
        ADD      R0,SP,#+0
          CFI FunCall readdata
        BL       readdata
//  664   }
//  665 
//  666   /* Errata #14 */
//  667   next = (nxtpkt[1] << 8) + nxtpkt[0];
??enc28j60_read_5:
        ADDS     R0,R9,R10, LSL #+8
//  668   if(next == RX_BUF_START) {
        ITE      EQ 
        MOVWEQ   R7,#+4095
        SUBNE    R7,R0,#+1
//  669     next = RX_BUF_END;
//  670   } else {
//  671     next = next - 1;
//  672   }
//  673   writereg(ERXRDPTL, next & 0xff);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+76
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        UXTB     R0,R7
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  674   writereg(ERXRDPTH, next >> 8);
          CFI FunCall enc28j60_arch_spi_select
        BL       enc28j60_arch_spi_select
        MOVS     R0,#+77
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
        LSLS     R0,R7,#+16
        LSRS     R0,R0,#+24
          CFI FunCall enc28j60_arch_spi_write
        BL       enc28j60_arch_spi_write
          CFI FunCall enc28j60_arch_spi_deselect
        BL       enc28j60_arch_spi_deselect
//  675 
//  676   setregbitfield(ECON2, ECON2_PKTDEC);
        MOVS     R1,#+64
        MOVS     R0,#+30
          CFI FunCall setregbitfield
        BL       setregbitfield
//  677 
//  678   if(err) {
        CBZ.N    R6,??enc28j60_read_6
//  679     PRINTF("enc28j60: rx err: flushed %d\n", len);
//  680     return 0;
        MOVS     R0,#+0
        POP      {R1,R2,R4-R10,PC}
//  681   }
//  682   PRINTF("enc28j60: rx: %d: %02x:%02x:%02x:%02x:%02x:%02x\n", len,
//  683          0xff & buffer[0], 0xff & buffer[1], 0xff & buffer[2],
//  684          0xff & buffer[3], 0xff & buffer[4], 0xff & buffer[5]);
//  685 
//  686   received_packets++;
??enc28j60_read_6:
        LDR      R0,[R4, #+12]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+12]
//  687   PRINTF("enc28j60: received_packets %d\n", received_packets);
//  688   return len;
        MOV      R0,R5
??enc28j60_read_1:
        POP      {R1,R2,R4-R10,PC}  ;; return
          CFI EndBlock cfiBlock12
//  689 }
//  690 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function process_thread_enc_watchdog_process
        THUMB
//  691 PROCESS_THREAD(enc_watchdog_process, ev, data)
//  692 {
process_thread_enc_watchdog_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  693   static struct etimer et;
//  694 
//  695   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_enc_watchdog_process_0
        CMP      R0,#+700
        BEQ.N    ??process_thread_enc_watchdog_process_1
        B.N      ??process_thread_enc_watchdog_process_2
//  696 
//  697   while(1) {
//  698 #define RESET_PERIOD (30 * CLOCK_SECOND)
//  699     etimer_set(&et, RESET_PERIOD);
??process_thread_enc_watchdog_process_0:
        MOVW     R1,#+30000
        LDR.N    R0,??DataTable7_2
          CFI FunCall etimer_set
        BL       etimer_set
//  700     PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
        MOV      R0,#+700
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_enc_watchdog_process_3
??process_thread_enc_watchdog_process_1:
        LDR.N    R5,??DataTable7
        ADD      R0,R5,#+36
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_enc_watchdog_process_4
??process_thread_enc_watchdog_process_3:
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
//  701 
//  702     PRINTF("enc28j60: test received_packet %d > sent_packets %d\n", received_packets, sent_packets);
//  703     if(received_packets <= sent_packets) {
??process_thread_enc_watchdog_process_4:
        LDR      R0,[R5, #+16]
        LDR      R1,[R5, #+12]
        CMP      R0,R1
        IT       GE 
        BLGE     reset
//  704       PRINTF("enc28j60: resetting chip\n");
//  705       reset();
//  706     }
//  707     received_packets = 0;
        MOVS     R0,#+0
        STR      R0,[R5, #+12]
//  708     sent_packets = 0;
        STR      R0,[R5, #+16]
        B.N      ??process_thread_enc_watchdog_process_0
//  709   }
//  710 
//  711   PROCESS_END();
??process_thread_enc_watchdog_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock13
//  712 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     enc_mac_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     enc_mac_addr+0x24

        SECTION `.data`:DATA:REORDER:NOROOT(2)
enc_mac_addr:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0
        DC8 0
        DC8 0, 0
        DC32 0
        DC32 0
enc_watchdog_process:
        DC32 0H, ?_0, process_thread_enc_watchdog_process
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

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
        DC8 "Enc28j60 watchdog"
        DC8 0, 0

        END
//  713 /*---------------------------------------------------------------------------*/
// 
//    52 bytes in section .data
//    20 bytes in section .rodata
// 1 198 bytes in section .text
// 
// 1 198 bytes of CODE  memory
//    20 bytes of CONST memory
//    52 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
