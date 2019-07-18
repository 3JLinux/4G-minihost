///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:46
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-packetqueue.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-packetqueue.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uip-packetqueue.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ctimer_set
        EXTERN ctimer_stop
        EXTERN memb_alloc
        EXTERN memb_free

        PUBLIC uip_packetqueue_alloc
        PUBLIC uip_packetqueue_buf
        PUBLIC uip_packetqueue_buflen
        PUBLIC uip_packetqueue_free
        PUBLIC uip_packetqueue_new
        PUBLIC uip_packetqueue_set_buflen
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip\uip-packetqueue.c
//    1 #include <stdio.h>
//    2 
//    3 #include "net/ip/uip.h"
//    4 
//    5 #include "lib/memb.h"
//    6 
//    7 #include "net/ip/uip-packetqueue.h"
//    8 
//    9 #define MAX_NUM_QUEUED_PACKETS 2

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   10 MEMB(packets_memb, struct uip_packetqueue_packet, MAX_NUM_QUEUED_PACKETS);
packets_memb:
        DATA
        DC16 1556, 2
        DC32 packets_memb_memb_count, packets_memb_memb_mem

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// static __absolute char packets_memb_memb_count[2]
packets_memb_memb_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct uip_packetqueue_packet packets_memb_memb_mem[2]
packets_memb_memb_mem:
        DS8 3112
//   11 
//   12 #define DEBUG 0
//   13 #if DEBUG
//   14 #include <stdio.h>
//   15 #define PRINTF(...) printf(__VA_ARGS__)
//   16 #else
//   17 #define PRINTF(...)
//   18 #endif
//   19 
//   20 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function packet_timedout
        THUMB
//   21 static void
//   22 packet_timedout(void *ptr)
//   23 {
packet_timedout:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//   24   struct uip_packetqueue_handle *h = ptr;
//   25 
//   26   PRINTF("uip_packetqueue_free timed out %p\n", h);
//   27   memb_free(&packets_memb, h->packet);
        LDR.N    R0,??DataTable2
        LDR      R1,[R4, #+0]
          CFI FunCall memb_free
        BL       memb_free
//   28   h->packet = NULL;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//   29 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   30 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function uip_packetqueue_new
          CFI NoCalls
        THUMB
//   31 void
//   32 uip_packetqueue_new(struct uip_packetqueue_handle *handle)
//   33 {
//   34   PRINTF("uip_packetqueue_new %p\n", handle);
//   35   handle->packet = NULL;
uip_packetqueue_new:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   36 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   37 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function uip_packetqueue_alloc
        THUMB
//   38 struct uip_packetqueue_packet *
//   39 uip_packetqueue_alloc(struct uip_packetqueue_handle *handle, clock_time_t lifetime)
//   40 {
uip_packetqueue_alloc:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//   41   PRINTF("uip_packetqueue_alloc %p\n", handle);
//   42   if(handle->packet != NULL) {
        LDR      R0,[R4, #+0]
        CBZ.N    R0,??uip_packetqueue_alloc_0
//   43     PRINTF("alloced\n");
//   44     return NULL;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}
//   45   }
//   46   handle->packet = memb_alloc(&packets_memb);
??uip_packetqueue_alloc_0:
        LDR.N    R0,??DataTable2
          CFI FunCall memb_alloc
        BL       memb_alloc
        STR      R0,[R4, #+0]
//   47   if(handle->packet != NULL) {
        CBZ.N    R0,??uip_packetqueue_alloc_1
//   48     ctimer_set(&handle->packet->lifetimer, lifetime,
//   49                packet_timedout, handle);
        MOV      R3,R4
        LDR.N    R2,??DataTable2_1
        MOV      R1,R5
        ADD      R0,R0,#+1520
          CFI FunCall ctimer_set
        BL       ctimer_set
//   50   } else {
//   51     PRINTF("uip_packetqueue_alloc failed\n");
//   52   }
//   53   return handle->packet;
??uip_packetqueue_alloc_1:
        LDR      R0,[R4, #+0]
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//   54 }
//   55 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function uip_packetqueue_free
        THUMB
//   56 void
//   57 uip_packetqueue_free(struct uip_packetqueue_handle *handle)
//   58 {
uip_packetqueue_free:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//   59   PRINTF("uip_packetqueue_free %p\n", handle);
//   60   if(handle->packet != NULL) {
        LDR      R0,[R4, #+0]
        CBZ.N    R0,??uip_packetqueue_free_0
//   61     ctimer_stop(&handle->packet->lifetimer);
        ADD      R0,R0,#+1520
          CFI FunCall ctimer_stop
        BL       ctimer_stop
//   62     memb_free(&packets_memb, handle->packet);
        LDR      R1,[R4, #+0]
        LDR.N    R0,??DataTable2
          CFI FunCall memb_free
        BL       memb_free
//   63     handle->packet = NULL;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//   64   }
//   65 }
??uip_packetqueue_free_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     packets_memb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     packet_timedout
//   66 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function uip_packetqueue_buf
          CFI NoCalls
        THUMB
//   67 uint8_t *
//   68 uip_packetqueue_buf(struct uip_packetqueue_handle *h)
//   69 {
//   70   return h->packet != NULL? h->packet->queue_buf: NULL;
uip_packetqueue_buf:
        LDR      R0,[R0, #+0]
        CBZ.N    R0,??uip_packetqueue_buf_0
        ADDS     R0,R0,#+4
??uip_packetqueue_buf_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//   71 }
//   72 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function uip_packetqueue_buflen
          CFI NoCalls
        THUMB
//   73 uint16_t
//   74 uip_packetqueue_buflen(struct uip_packetqueue_handle *h)
//   75 {
//   76   return h->packet != NULL? h->packet->queue_buf_len: 0;
uip_packetqueue_buflen:
        LDR      R0,[R0, #+0]
        CBZ.N    R0,??uip_packetqueue_buflen_0
        LDRH     R0,[R0, #+1518]
??uip_packetqueue_buflen_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//   77 }
//   78 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function uip_packetqueue_set_buflen
          CFI NoCalls
        THUMB
//   79 void
//   80 uip_packetqueue_set_buflen(struct uip_packetqueue_handle *h, uint16_t len)
//   81 {
//   82   if(h->packet != NULL) {
uip_packetqueue_set_buflen:
        LDR      R0,[R0, #+0]
        CBZ.N    R0,??uip_packetqueue_set_buflen_0
//   83     h->packet->queue_buf_len = len;
        STRH     R1,[R0, #+1518]
//   84   }
//   85 }
??uip_packetqueue_set_buflen_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   86 /*---------------------------------------------------------------------------*/
// 
// 3 114 bytes in section .bss
//    12 bytes in section .data
//   132 bytes in section .text
// 
//   132 bytes of CODE memory
// 3 126 bytes of DATA memory
//
//Errors: none
//Warnings: 1
