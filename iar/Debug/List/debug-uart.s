///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:39
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\debug-uart.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\debug-uart.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\debug-uart.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_Init
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN USART_Cmd
        EXTERN USART_Init

        PUBLIC dbg_get_key
        PUBLIC dbg_send_char
        PUBLIC dbg_setup_uart_default
        PUBLIC dgg_uart_putc
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\debug-uart.c
//    1 #include "debug-uart.h"
//    2 #include "basictype.h"
//    3 
//    4 #include <string.h>
//    5 #include <stdio.h>
//    6 
//    7 #include "stm32f10x.h"
//    8 #include "stm32f10x_usart.h"
//    9 #include "stm32f10x_rcc.h"
//   10 #include "stm32f10x_gpio.h"
//   11 
//   12 
//   13 #define UART_BPS 	921600		/* Bit rate */
//   14 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function dbg_setup_uart_default
        THUMB
//   15 void dbg_setup_uart_default(void)
//   16 {
dbg_setup_uart_default:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
//   17 	USART_InitTypeDef USART_InitStructure;
//   18 	GPIO_InitTypeDef GPIO_InitStructure;
//   19 
//   20 	//使能GPIOA时钟
//   21 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_USART1|RCC_APB2ENR_AFIOEN ,ENABLE);	                
        MOVS     R1,#+1
        MOVW     R0,#+16389
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//   22 
//   23 	//PA9 TX1 复用推挽输出
//   24 	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
        MOV      R0,#+512
        STRH     R0,[SP, #+0]
//   25 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//   26 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
//   27 	GPIO_Init(GPIOA, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.N    R4,??DataTable3  ;; 0x40010800
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//   28 	//PA10 RX1 浮动输入
//   29 	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
        MOV      R0,#+1024
        STRH     R0,[SP, #+0]
//   30 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;    
//   31 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
//   32 	GPIO_Init(GPIOA, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//   33 
//   34 	USART_InitStructure.USART_BaudRate = UART_BPS;
        MOV      R0,#+921600
        STR      R0,[SP, #+4]
//   35 	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   36 	USART_InitStructure.USART_StopBits = USART_StopBits_1;
//   37 	USART_InitStructure.USART_Parity = USART_Parity_No;
        STRH     R0,[SP, #+12]
//   38 	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
        STRH     R0,[SP, #+16]
//   39 	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
        MOVS     R0,#+12
        STRH     R0,[SP, #+14]
//   40 	USART_Init(USART1, &USART_InitStructure);
        ADD      R1,SP,#+4
        LDR.N    R4,??DataTable3_1  ;; 0x40013800
        MOV      R0,R4
          CFI FunCall USART_Init
        BL       USART_Init
//   41 	
//   42 	//使能USART1
//   43 	USART_Cmd(USART1, ENABLE);	
        MOVS     R1,#+1
        MOV      R0,R4
          CFI FunCall USART_Cmd
        BL       USART_Cmd
//   44 }
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   45 
//   46 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function dbg_send_char
          CFI NoCalls
        THUMB
//   47 int dbg_send_char (int ch) 
//   48 {
dbg_send_char:
        LDR.N    R1,??DataTable3_1  ;; 0x40013800
//   49 	while (!(USART1->SR & USART_FLAG_TXE)); // USART1 可换成你程序中通信的串口
??dbg_send_char_0:
        LDRH     R2,[R1, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ??dbg_send_char_0
//   50 	USART1->DR = (ch & 0x1FF);
        LSLS     R2,R0,#+23
        LSRS     R2,R2,#+23
        STRH     R2,[R1, #+4]
//   51 
//   52 	return (ch);
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   53 }
//   54 
//   55 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function dbg_get_key
          CFI NoCalls
        THUMB
//   56 int dbg_get_key (void) 
//   57 {
dbg_get_key:
        LDR.N    R0,??DataTable3_1  ;; 0x40013800
//   58 	while (!(USART1->SR & USART_FLAG_RXNE));
??dbg_get_key_0:
        LDRH     R1,[R0, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??dbg_get_key_0
//   59 	return ((int)(USART1->DR & 0x1FF));
        LDRH     R0,[R0, #+4]
        LSLS     R0,R0,#+23
        LSRS     R0,R0,#+23
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   60 }
//   61 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function dgg_uart_putc
          CFI NoCalls
        THUMB
//   62 void dgg_uart_putc ( u_char ch)
//   63 {
dgg_uart_putc:
        LDR.N    R1,??DataTable3_1  ;; 0x40013800
//   64 	while (!(USART1->SR & USART_FLAG_TXE)); // USART1 可换成你程序中通信的串口
??dgg_uart_putc_0:
        LDRH     R2,[R1, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ??dgg_uart_putc_0
//   65 	USART1->DR = (ch & 0x1FF);
        STRH     R0,[R1, #+4]
//   66 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x40013800

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   67 
//   68 
//   69 
//   70 
//   71 
//   72 
//   73 
// 
// 170 bytes in section .text
// 
// 170 bytes of CODE memory
//
//Errors: none
//Warnings: none
