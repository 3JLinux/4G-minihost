///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:30
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\arg.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\arg.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\arg.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC arg_alloc
        PUBLIC arg_free
        PUBLIC arg_init
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\sys\arg.c
//    1 /*
//    2 
//    3  * Copyright (c) 2003, Adam Dunkels.
//    4  * All rights reserved.
//    5  *
//    6  * Redistribution and use in source and binary forms, with or without
//    7  * modification, are permitted provided that the following conditions
//    8  * are met:
//    9  * 1. Redistributions of source code must retain the above copyright
//   10  *    notice, this list of conditions and the following disclaimer.
//   11  * 2. Redistributions in binary form must reproduce the above
//   12  *    copyright notice, this list of conditions and the following
//   13  *    disclaimer in the documentation and/or other materials provided
//   14  *    with the distribution.
//   15  * 3. The name of the author may not be used to endorse or promote
//   16  *    products derived from this software without specific prior
//   17  *    written permission.
//   18  *
//   19  * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS
//   20  * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//   21  * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   22  * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
//   23  * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   24  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
//   25  * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//   26  * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
//   27  * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//   28  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//   29  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   30  *
//   31  * This file is part of the Contiki desktop OS
//   32  *
//   33  *
//   34  */
//   35 
//   36 /**
//   37  * \file
//   38  * Argument buffer for passing arguments when starting processes
//   39  * \author Adam Dunkels <adam@dunkels.com>
//   40  */
//   41 
//   42 /**
//   43  * \addtogroup sys
//   44  * @{
//   45  */
//   46 
//   47 /**
//   48  * \defgroup arg Argument buffer
//   49  * @{
//   50  *
//   51  * The argument buffer can be used when passing an argument from an
//   52  * exiting process to a process that has not been created yet. Since
//   53  * the exiting process will have exited when the new process is
//   54  * started, the argument cannot be passed in any of the processes'
//   55  * addres spaces. In such situations, the argument buffer can be used.
//   56  *
//   57  * The argument buffer is statically allocated in memory and is
//   58  * globally accessible to all processes.
//   59  *
//   60  * An argument buffer is allocated with the arg_alloc() function and
//   61  * deallocated with the arg_free() function. The arg_free() function
//   62  * is designed so that it can take any pointer, not just an argument
//   63  * buffer pointer. If the pointer to arg_free() is not an argument
//   64  * buffer, the function does nothing.
//   65  */
//   66 
//   67 #include "contiki.h"
//   68 #include "sys/arg.h"
//   69 
//   70 /**
//   71  * \internal Structure used for holding an argument buffer.
//   72  */
//   73 struct argbuf {
//   74   char buf[128];
//   75   char used;
//   76 };
//   77 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   78 static struct argbuf bufs[1];
bufs:
        DS8 132
//   79 
//   80 /*-----------------------------------------------------------------------------------*/
//   81 /**
//   82  * \internal Initalizer, called by the dispatcher module.
//   83  */
//   84 /*-----------------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function arg_init
          CFI NoCalls
        THUMB
//   85 void
//   86 arg_init(void)
//   87 {
//   88   bufs[0].used = 0;
arg_init:
        LDR.N    R1,??DataTable2
        MOVS     R0,#+0
        STRB     R0,[R1, #+128]
//   89 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   90 /*-----------------------------------------------------------------------------------*/
//   91 /**
//   92  * Allocates an argument buffer.
//   93  *
//   94  * \param size The requested size of the buffer, in bytes.
//   95  *
//   96  * \return Pointer to allocated buffer, or NULL if no buffer could be
//   97  * allocated.
//   98  *
//   99  * \note It currently is not possible to allocate argument buffers of
//  100  * any other size than 128 bytes.
//  101  *
//  102  */
//  103 /*-----------------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function arg_alloc
          CFI NoCalls
        THUMB
//  104 char *
//  105 arg_alloc(char size)
//  106 {
//  107   if(bufs[0].used == 0) {
arg_alloc:
        LDR.N    R0,??DataTable2
        LDRB     R1,[R0, #+128]
        CBNZ.N   R1,??arg_alloc_0
//  108     bufs[0].used = 1;
        MOVS     R1,#+1
        STRB     R1,[R0, #+128]
//  109     return bufs[0].buf;
        BX       LR
//  110   }
//  111   return 0;
??arg_alloc_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  112 }
//  113 /*-----------------------------------------------------------------------------------*/
//  114 /**
//  115  * Deallocates an argument buffer.
//  116  *
//  117  * This function deallocates the argument buffer pointed to by the
//  118  * parameter, but only if the buffer actually is an argument buffer
//  119  * and is allocated. It is perfectly safe to call this function with
//  120  * any pointer.
//  121  *
//  122  * \param arg A pointer.
//  123  */
//  124 /*-----------------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function arg_free
          CFI NoCalls
        THUMB
//  125 void
//  126 arg_free(char *arg)
//  127 {
//  128   if(arg == bufs[0].buf) {
arg_free:
        LDR.N    R1,??DataTable2
        CMP      R0,R1
        ITT      EQ 
        MOVEQ    R0,#+0
        STRBEQ   R0,[R1, #+128]
//  129     bufs[0].used = 0;
//  130   }
//  131 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     bufs

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  132 /*-----------------------------------------------------------------------------------*/
//  133 /** @} */
//  134 /** @} */
// 
// 132 bytes in section .bss
//  48 bytes in section .text
// 
//  48 bytes of CODE memory
// 132 bytes of DATA memory
//
//Errors: none
//Warnings: 1
