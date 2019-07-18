///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:05
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\dev\nullradio.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\dev\nullradio.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\nullradio.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC nullradio_driver
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\dev\nullradio.c
//    1 
//    2 
//    3 #include "dev/nullradio.h"
//    4 
//    5 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function init
          CFI NoCalls
        THUMB
//    6 static int
//    7 init(void)
//    8 {
//    9   return 0;
init:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   10 }
//   11 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function prepare
          CFI NoCalls
        THUMB
//   12 static int
//   13 prepare(const void *payload, unsigned short payload_len)
//   14 {
//   15   return 1;
prepare:
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   16 }
//   17 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function transmit
          CFI NoCalls
        THUMB
//   18 static int
//   19 transmit(unsigned short transmit_len)
//   20 {
//   21   return RADIO_TX_OK;
transmit:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   22 }
//   23 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function send
          CFI NoCalls
        THUMB
//   24 static int
//   25 send(const void *payload, unsigned short payload_len)
//   26 {
//   27   prepare(payload, payload_len);
//   28   return transmit(payload_len);
send:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   29 }
//   30 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function radio_read
          CFI NoCalls
        THUMB
//   31 static int
//   32 radio_read(void *buf, unsigned short buf_len)
//   33 {
//   34   return 0;
radio_read:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//   35 }
//   36 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function channel_clear
          CFI NoCalls
        THUMB
//   37 static int
//   38 channel_clear(void)
//   39 {
//   40   return 1;
channel_clear:
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//   41 }
//   42 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function receiving_packet
          CFI NoCalls
        THUMB
//   43 static int
//   44 receiving_packet(void)
//   45 {
//   46   return 0;
receiving_packet:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//   47 }
//   48 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function pending_packet
          CFI NoCalls
        THUMB
//   49 static int
//   50 pending_packet(void)
//   51 {
//   52   return 0;
pending_packet:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//   53 }
//   54 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function on
          CFI NoCalls
        THUMB
//   55 static int
//   56 on(void)
//   57 {
//   58   return 0;
on:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//   59 }
//   60 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function off
          CFI NoCalls
        THUMB
//   61 static int
//   62 off(void)
//   63 {
//   64   return 0;
off:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//   65 }
//   66 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function get_value
          CFI NoCalls
        THUMB
//   67 static radio_result_t
//   68 get_value(radio_param_t param, radio_value_t *value)
//   69 {
//   70   return RADIO_RESULT_NOT_SUPPORTED;
get_value:
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//   71 }
//   72 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function set_value
          CFI NoCalls
        THUMB
//   73 static radio_result_t
//   74 set_value(radio_param_t param, radio_value_t value)
//   75 {
//   76   return RADIO_RESULT_NOT_SUPPORTED;
set_value:
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//   77 }
//   78 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function get_object
          CFI NoCalls
        THUMB
//   79 static radio_result_t
//   80 get_object(radio_param_t param, void *dest, size_t size)
//   81 {
//   82   return RADIO_RESULT_NOT_SUPPORTED;
get_object:
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//   83 }
//   84 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function set_object
          CFI NoCalls
        THUMB
//   85 static radio_result_t
//   86 set_object(radio_param_t param, const void *src, size_t size)
//   87 {
//   88   return RADIO_RESULT_NOT_SUPPORTED;
set_object:
        MOVS     R0,#+1
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//   89 }
//   90 /*---------------------------------------------------------------------------*/

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//   91 const struct radio_driver nullradio_driver =
nullradio_driver:
        DC32 init, prepare, transmit, send, radio_read, channel_clear
        DC32 receiving_packet, pending_packet, on, off, get_value, set_value
        DC32 get_object, set_object

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   92   {
//   93     init,
//   94     prepare,
//   95     transmit,
//   96     send,
//   97     radio_read,
//   98     channel_clear,
//   99     receiving_packet,
//  100     pending_packet,
//  101     on,
//  102     off,
//  103     get_value,
//  104     set_value,
//  105     get_object,
//  106     set_object
//  107   };
//  108 /*---------------------------------------------------------------------------*/
// 
// 56 bytes in section .rodata
// 56 bytes in section .text
// 
// 56 bytes of CODE  memory
// 56 bytes of CONST memory
//
//Errors: none
//Warnings: 1
