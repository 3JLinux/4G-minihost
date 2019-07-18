///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:37
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\stm32f10x_usart1.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\stm32f10x_usart1.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_usart1.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN USART_Cmd
        EXTERN USART_DeInit
        EXTERN USART_ITConfig
        EXTERN USART_Init
        EXTERN __xstd_printf

        PUBLIC UART4_IRQHandler
        PUBLIC UART5_IRQHandler
        PUBLIC USART1_IRQHandler
        PUBLIC USART2_IRQHandler
        PUBLIC USART3_IRQHandler
        PUBLIC UartGetBaseAddr
        PUBLIC Uart_485SetInput
        PUBLIC Uart_GprsSetInput
        PUBLIC Uart_Init
        PUBLIC Uart_Mp3SetInput
        PUBLIC Uart_RfSetInput
        PUBLIC Uart_StdSetInput
        PUBLIC uart2_cfg
        PUBLIC uart2_send_bytes
        PUBLIC uart2_send_char
        PUBLIC uart4_send_bytes
        PUBLIC uart4_send_char
        PUBLIC uart5_send_bytes
        PUBLIC uart5_send_char
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\stm32f10x_usart1.c
//    1 /****************************************************************************
//    2 *  This file is part of the Ethernut port for the LPC2XXX
//    3 *
//    4 *  Copyright (c) 2005 by Michael Fischer. All rights reserved.
//    5 *
//    6 *  Redistribution and use in source and binary forms, with or without 
//    7 *  modification, are permitted provided that the following conditions 
//    8 *  are met:
//    9 *  
//   10 *  1. Redistributions of source code must retain the above copyright 
//   11 *     notice, this list of conditions and the following disclaimer.
//   12 *  2. Redistributions in binary form must reproduce the above copyright
//   13 *     notice, this list of conditions and the following disclaimer in the 
//   14 *     documentation and/or other materials provided with the distribution.
//   15 *  3. Neither the name of the author nor the names of its contributors may 
//   16 *     be used to endorse or promote products derived from this software 
//   17 *     without specific prior written permission.
//   18 *
//   19 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
//   20 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
//   21 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS 
//   22 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL 
//   23 *  THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
//   24 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, 
//   25 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS 
//   26 *  OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
//   27 *  AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
//   28 *  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF 
//   29 *  THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF 
//   30 *  SUCH DAMAGE.
//   31 *
//   32 ****************************************************************************
//   33 *
//   34 *  History:
//   35 *
//   36 *  24.09.05  mifi   First Version
//   37 *                   The CrossWorks for ARM toolchain will be used.
//   38 *  05.11.12  William Guo for STM32F10X application
//   39 *
//   40 ****************************************************************************/
//   41 #include "contiki.h"
//   42 #include <string.h>
//   43 #include "stm32f10x_usart.h"
//   44 #include "basictype.h"
//   45 #include "stm32f10x_it.h"
//   46 
//   47 #include "lib/ringbuf.h"
//   48 //#include "stm32f10x_usart1.h"
//   49 #include "list.h"
//   50 
//   51 //#include "vfile.h"
//   52 //#include "device.h"
//   53 #include "userdev.h"
//   54 #include "uart.h"
//   55 
//   56 #include "stm32f10x_it.h"
//   57 #include "sysprintf.h"
//   58 
//   59 
//   60 
//   61 
//   62 
//   63 
//   64 
//   65 #define MAX_USART_PORT 5
//   66 
//   67 
//   68 //nPort: 0~4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   69 static USART_TypeDef *uart_base[]={USART1,USART2,USART3,UART4,UART5};
uart_base:
        DATA
        DC32 40013800H, 40004400H, 40004800H, 40004C00H, 40005000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   70 static uart_handler_t uart_stdhandler = NULL;
uart_stdhandler:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   71 static uart_handler_t uart_485handler = NULL;
uart_485handler:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   72 static uart_handler_t uart_gprshandler = NULL;
uart_gprshandler:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   73 static uart_handler_t uart_mp3handler = NULL;
uart_mp3handler:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   74 static uart_handler_t uart_rfhandler = NULL;
uart_rfhandler:
        DS8 4
//   75 
//   76 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function UartGetBaseAddr
          CFI NoCalls
        THUMB
//   77 const USART_TypeDef * UartGetBaseAddr(int nPort)
//   78 {
//   79 	if (nPort < 1 || nPort > 5)
UartGetBaseAddr:
        SUBS     R1,R0,#+1
        CMP      R1,#+5
        BCC.N    ??UartGetBaseAddr_0
//   80 		return NULL;
        MOVS     R0,#+0
        BX       LR
//   81 	return uart_base[(nPort-1)];
??UartGetBaseAddr_0:
        LDR.N    R1,??DataTable18
        ADD      R0,R1,R0, LSL #+2
        LDR      R0,[R0, #-4]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   82 }
//   83 
//   84 
//   85 
//   86 
//   87 /*!
//   88  * \brief Send a single character to debug device 0.
//   89  *
//   90  * A carriage return character will be automatically appended 
//   91  * to any linefeed.
//   92  */
//   93 static int UartOutput(int nPort,char ch)
//   94 {
//   95 	USART_TypeDef*USARTx = NULL;
//   96 
//   97 	if(nPort < 1 || nPort >5)		
//   98 		return -1;
//   99 	USARTx = uart_base[nPort-1];
//  100 	
//  101 	while (!(USARTx->SR & USART_FLAG_TXE)); 
//  102 	USARTx->DR = (ch & 0x1FF);
//  103 
//  104 	return 1;
//  105 }
//  106 
//  107 static void uart_copy_rxdata(u_char *pBuf, const u_char *piBuf, u_char ubDataL)
//  108 {
//  109 	if ((NULL!= pBuf)&&(NULL != piBuf))
//  110 	{
//  111 		memcpy(pBuf, piBuf, ubDataL);
//  112 	}
//  113 }
//  114 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function USART1_IRQHandler
          CFI NoCalls
        THUMB
//  115 void USART1_IRQHandler(void)
//  116 {
//  117  	uart_handler_t handler = uart_stdhandler;
USART1_IRQHandler:
        LDR.N    R0,??DataTable18_1
        LDR      R1,[R0, #+0]
//  118 	USART_TypeDef *USARTx = (USART_TypeDef *)uart_base[0];
//  119 	u_long  csr = USARTx->SR;
        LDR.N    R0,??DataTable18_2  ;; 0x40013800
        LDRH     R2,[R0, #+0]
//  120 	u_short  wRxDat;
//  121 //	u_char d;
//  122 
//  123 	if (csr & USART_SR_RXNE) 
        LSLS     R3,R2,#+26
        BPL.N    ??USART1_IRQHandler_0
//  124 	{
//  125 		if (handler)
        MOVS     R2,R1
        BEQ.N    ??USART1_IRQHandler_1
//  126 		{
//  127 			handler(USARTx->DR);
        B.N      ?Subroutine1
//  128 			//XPRINTF((0, "%02x", USARTx->DR));
//  129 		}
//  130 	}
//  131 	else if(csr&USART_FLAG_ORE)
??USART1_IRQHandler_0:
        LSLS     R1,R2,#+28
        BPL.N    ??USART1_IRQHandler_1
//  132 	{ 	
//  133 		//溢出处理-如果发生溢出需要先清除ORE,再读DR寄存器 则可清除不断入中断的问题
//  134 		USARTx->SR = (u_short)~USART_FLAG_ORE;
        MOVW     R1,#+65527
        STRH     R1,[R0, #+0]
//  135 		wRxDat = USARTx->DR;                                //读DR
        LDRH     R0,[R0, #+4]
//  136 		//if(USARTx != USART1)
//  137 		//	PRINTF((0,"uart%c USART_FLAG_ORE\r\n",dev->dev_name[4]));
//  138 	}	
//  139 }
??USART1_IRQHandler_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  140 
//  141 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function USART2_IRQHandler
          CFI NoCalls
        THUMB
//  142 void USART2_IRQHandler(void)
//  143 {
//  144  	uart_handler_t handler = uart_485handler;
USART2_IRQHandler:
        LDR.N    R0,??DataTable18_3
        LDR      R1,[R0, #+0]
//  145 	USART_TypeDef *USARTx = (USART_TypeDef *)uart_base[1];
//  146 	u_long  csr = USARTx->SR;
        LDR.N    R0,??DataTable18_4  ;; 0x40004400
        LDRH     R2,[R0, #+0]
//  147 	u_short  wRxDat;
//  148 	static u_char buf[128];
//  149 	static int ptr = 0;
//  150 	static u_char frameEnd = 0;
//  151 	
//  152 	if (csr & USART_SR_RXNE) 
        LSLS     R3,R2,#+26
        BPL.N    ??USART2_IRQHandler_0
//  153 	{
//  154 		u_char ubCH = (u_char)(USARTx->DR);		
        LDRH     R2,[R0, #+4]
//  155 		
//  156 		if (handler)
        MOVS     R2,R1
        BEQ.N    ??USART2_IRQHandler_1
//  157 		{
//  158 			u_char ubCH = (u_char)(USARTx->DR);
        B.N      ?Subroutine1
//  159 			if (handler != NULL)
//  160 			{
//  161 				handler(ubCH);
//  162 			}
//  163 		}
//  164 	
//  165 	}
//  166 	else if(csr&USART_FLAG_ORE)
??USART2_IRQHandler_0:
        LSLS     R1,R2,#+28
        BPL.N    ??USART2_IRQHandler_1
//  167 	{ 	
//  168 		//溢出处理-如果发生溢出需要先清除ORE,再读DR寄存器 则可清除不断入中断的问题
//  169 		USARTx->SR = (u_short)~USART_FLAG_ORE;
        MOVW     R1,#+65527
        STRH     R1,[R0, #+0]
//  170 		wRxDat = USARTx->DR;                                //读DR
        LDRH     R0,[R0, #+4]
//  171 		//if(USARTx != USART1)
//  172 		//	PRINTF((0,"uart%c USART_FLAG_ORE\r\n",dev->dev_name[4]));
//  173 		//XPRINTF((10, "error "));
//  174 	}		
//  175 }
??USART2_IRQHandler_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine1:
        LDRH     R0,[R0, #+4]
        UXTB     R0,R0
          CFI FunCall USART1_IRQHandler
          CFI FunCall USART2_IRQHandler
          CFI FunCall USART3_IRQHandler
          CFI FunCall UART4_IRQHandler
          CFI FunCall UART5_IRQHandler
        ANOTE "tailcall"
        BX       R1
          CFI EndBlock cfiBlock3
//  176 
//  177 //for 485

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Uart_485SetInput
          CFI NoCalls
        THUMB
//  178 void Uart_485SetInput(uart_handler_t handler)
//  179 {
//  180 	/* store the setting */
//  181 	uart_485handler = handler;
Uart_485SetInput:
        LDR.N    R1,??DataTable18_3
        STR      R0,[R1, #+0]
//  182 	if(handler == NULL) 
//  183 	{
//  184 	} 
//  185 	else 
//  186 	{
//  187 	}
//  188 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  189 
//  190 
//  191 //gprs

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Uart_GprsSetInput
          CFI NoCalls
        THUMB
//  192 void Uart_GprsSetInput(uart_handler_t handler)
//  193 {
//  194 	/* store the setting */
//  195 	uart_gprshandler = handler;
Uart_GprsSetInput:
        LDR.N    R1,??DataTable18_5
        STR      R0,[R1, #+0]
//  196 	if(handler == NULL) 
//  197 	{
//  198 	} 
//  199 	else 
//  200 	{
//  201 	}
//  202 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  203 
//  204 
//  205 //mp3

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function Uart_Mp3SetInput
          CFI NoCalls
        THUMB
//  206 void Uart_Mp3SetInput(uart_handler_t handler)
//  207 {
//  208 	/* store the setting */
//  209 	uart_mp3handler = handler;
Uart_Mp3SetInput:
        LDR.N    R1,??DataTable18_6
        STR      R0,[R1, #+0]
//  210 	if(handler == NULL) 
//  211 	{
//  212 	} 
//  213 	else 
//  214 	{
//  215 	}
//  216 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  217 
//  218 
//  219 
//  220 //rf

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function Uart_RfSetInput
          CFI NoCalls
        THUMB
//  221 void Uart_RfSetInput(uart_handler_t handler)
//  222 {
//  223 	/* store the setting */
//  224 	uart_rfhandler = handler;
Uart_RfSetInput:
        LDR.N    R1,??DataTable18_7
        STR      R0,[R1, #+0]
//  225 	if(handler == NULL) 
//  226 	{
//  227 	} 
//  228 	else 
//  229 	{
//  230 	}
//  231 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  232 
//  233 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function USART3_IRQHandler
          CFI NoCalls
        THUMB
//  234 void USART3_IRQHandler(void)
//  235 {
//  236  	uart_handler_t handler = uart_rfhandler;
USART3_IRQHandler:
        LDR.N    R0,??DataTable18_7
        LDR      R1,[R0, #+0]
//  237 	USART_TypeDef *USARTx = (USART_TypeDef *)uart_base[2];
//  238 	u_long  csr = USARTx->SR;
        LDR.N    R0,??DataTable18_8  ;; 0x40004800
        LDRH     R2,[R0, #+0]
//  239 	u_short  wRxDat;
//  240 	
//  241 	if (csr & USART_SR_RXNE) 
        LSLS     R3,R2,#+26
        BPL.N    ??USART3_IRQHandler_0
//  242 	{
//  243 		//XPRINTF((0, "%02x\r\n", (u_char)(USARTx->DR)));
//  244 		if (handler)
        MOVS     R2,R1
        BEQ.N    ??USART3_IRQHandler_1
//  245 		{
//  246 			u_char ubCH = (u_char)(USARTx->DR);
        B.N      ?Subroutine1
//  247 			if (handler != NULL)
//  248 			{
//  249 				handler(ubCH);
//  250 			}
//  251 		}
//  252 	}
//  253 	else if(csr&USART_FLAG_ORE)
??USART3_IRQHandler_0:
        LSLS     R1,R2,#+28
        BPL.N    ??USART3_IRQHandler_1
//  254 	{ 	
//  255 		//溢出处理-如果发生溢出需要先清除ORE,再读DR寄存器 则可清除不断入中断的问题
//  256 		USARTx->SR = (u_short)~USART_FLAG_ORE;
        MOVW     R1,#+65527
        STRH     R1,[R0, #+0]
//  257 		wRxDat = USARTx->DR;                                //读DR
        LDRH     R0,[R0, #+4]
//  258 		//if(USARTx != USART1)
//  259 		//	PRINTF((0,"uart%c USART_FLAG_ORE\r\n",dev->dev_name[4]));
//  260 		//XPRINTF((10, "error "));
//  261 	}	
//  262 }
??USART3_IRQHandler_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  263 
//  264 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function UART4_IRQHandler
          CFI NoCalls
        THUMB
//  265 void UART4_IRQHandler(void)
//  266 {
//  267  	uart_handler_t handler = uart_gprshandler;
UART4_IRQHandler:
        LDR.N    R0,??DataTable18_5
        LDR      R1,[R0, #+0]
//  268 	USART_TypeDef *USARTx = UART4;
//  269 	u_long  csr = USARTx->SR;
        LDR.N    R0,??DataTable18_9  ;; 0x40004c00
        LDRH     R2,[R0, #+0]
//  270 	u_short  wRxDat;
//  271 
//  272 	if (csr & USART_SR_RXNE) 
        LSLS     R3,R2,#+26
        BPL.N    ??UART4_IRQHandler_0
//  273 	{
//  274 		//XPRINTF((0, "%02x\r\n", (u_char)(USARTx->DR)));
//  275 		if (handler)
        MOVS     R2,R1
        BEQ.N    ??UART4_IRQHandler_1
//  276 		{
//  277 			u_char ubCH = (u_char)(USARTx->DR);
        B.N      ?Subroutine1
//  278 			if (handler != NULL)
//  279 			{
//  280 				handler(ubCH);
//  281 			}
//  282 		}
//  283 	}
//  284 	else if(csr&USART_FLAG_ORE)
??UART4_IRQHandler_0:
        LSLS     R1,R2,#+28
        BPL.N    ??UART4_IRQHandler_1
//  285 	{ 	
//  286 		//溢出处理-如果发生溢出需要先清除ORE,再读DR寄存器 则可清除不断入中断的问题
//  287 		USARTx->SR = (u_short)~USART_FLAG_ORE;
        MOVW     R1,#+65527
        STRH     R1,[R0, #+0]
//  288 		wRxDat = USARTx->DR;                                //读DR
        LDRH     R0,[R0, #+4]
//  289 		//if(USARTx != USART1)
//  290 		//	PRINTF((0,"uart%c USART_FLAG_ORE\r\n",dev->dev_name[4]));
//  291 		//XPRINTF((10, "error "));
//  292 	}		
//  293 }
??UART4_IRQHandler_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  294 
//  295 
//  296 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function UART5_IRQHandler
          CFI NoCalls
        THUMB
//  297 void UART5_IRQHandler(void)
//  298 {
//  299  	uart_handler_t handler = uart_mp3handler;
UART5_IRQHandler:
        LDR.N    R0,??DataTable18_6
        LDR      R1,[R0, #+0]
//  300 	USART_TypeDef *USARTx = UART5;
//  301 	u_long  csr = USARTx->SR;
        LDR.N    R0,??DataTable18_10  ;; 0x40005000
        LDRH     R2,[R0, #+0]
//  302 	u_short  wRxDat;
//  303 
//  304 	if (csr & USART_SR_RXNE) 
        LSLS     R3,R2,#+26
        BPL.N    ??UART5_IRQHandler_0
//  305 	{
//  306 		//XPRINTF((0, "%c\r\n", (u_char)(USARTx->DR)));
//  307 		if (handler)
        MOVS     R2,R1
        BEQ.N    ??UART5_IRQHandler_1
//  308 		{
//  309 			u_char ubCH = (u_char)(USARTx->DR);
        B.N      ?Subroutine1
//  310 			if (handler != NULL)
//  311 			{
//  312 				handler(ubCH);
//  313 				//XPRINTF((0, "%c\r\n", (u_char)(USARTx->DR)));
//  314 			}
//  315 		}
//  316 	}
//  317 	else if(csr&USART_FLAG_ORE)
??UART5_IRQHandler_0:
        LSLS     R1,R2,#+28
        BPL.N    ??UART5_IRQHandler_1
//  318 	{ 	
//  319 		//溢出处理-如果发生溢出需要先清除ORE,再读DR寄存器 则可清除不断入中断的问题
//  320 		USARTx->SR = (u_short)~USART_FLAG_ORE;
        MOVW     R1,#+65527
        STRH     R1,[R0, #+0]
//  321 		wRxDat = USARTx->DR;                                //读DR
        LDRH     R0,[R0, #+4]
//  322 		//if(USARTx != USART1)
//  323 		//	PRINTF((0,"uart%c USART_FLAG_ORE\r\n",dev->dev_name[4]));
//  324 		//XPRINTF((10, "error "));
//  325 	}	
//  326 }
??UART5_IRQHandler_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  327 
//  328 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function Uart_Init
        THUMB
//  329 void Uart_Init(int nPort)
//  330 {
//  331 	//USART_InitTypeDef InitStru;
//  332 	USART_InitTypeDef stInitStru;
//  333 	USART_TypeDef *USARTx = NULL;
//  334 
//  335 	if ( (nPort < 1)|| (nPort > 5))
Uart_Init:
        SUBS     R1,R0,#+1
        CMP      R1,#+5
        BCC.N    ??Uart_Init_0
        BX       LR
//  336 		return;
//  337 	
//  338 	USARTx = uart_base[nPort-1];
??Uart_Init_0:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        LDR.N    R1,??DataTable18
        ADD      R1,R1,R0, LSL #+2
        SUB      SP,SP,#+16
          CFI CFA R13+24
        LDR      R4,[R1, #-4]
//  339 	//default param for USART1
//  340 	if (1 == nPort)
        CMP      R0,#+1
        BNE.N    ??Uart_Init_1
//  341 	{
//  342 		//pInitStru = &InitStru;
//  343 		//USART_StructInit(pInitStru);
//  344 		stInitStru.USART_BaudRate = 921600;
        MOV      R0,#+921600
        STR      R0,[SP, #+0]
//  345 		stInitStru.USART_WordLength = USART_WordLength_8b;
        B.N      ??Uart_Init_2
//  346 		stInitStru.USART_StopBits = USART_StopBits_1;
//  347 		stInitStru.USART_Parity = USART_Parity_No;
//  348 		stInitStru.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
//  349 		stInitStru.USART_Mode = USART_Mode_Rx|USART_Mode_Tx;
//  350 	}
//  351 	else if (4 == nPort) //for gprs sim900a 115200
??Uart_Init_1:
        CMP      R0,#+4
        BNE.N    ??Uart_Init_3
//  352 	{
//  353 		//pInitStru = &InitStru;
//  354 		//USART_StructInit(pInitStru);
//  355 		stInitStru.USART_BaudRate = 115200;
        MOV      R0,#+115200
        STR      R0,[SP, #+0]
//  356 		stInitStru.USART_WordLength = USART_WordLength_8b;
        B.N      ??Uart_Init_2
//  357 		stInitStru.USART_StopBits = USART_StopBits_1;
//  358 		stInitStru.USART_Parity = USART_Parity_No;
//  359 		stInitStru.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
//  360 		stInitStru.USART_Mode = USART_Mode_Rx|USART_Mode_Tx;		
//  361 	}
//  362 	else if (2 == nPort)
??Uart_Init_3:
        MOV      R1,#+9600
        CMP      R0,#+2
        STR      R1,[SP, #+0]
        BNE.N    ??Uart_Init_2
//  363 	{
//  364 		stInitStru.USART_BaudRate = 9600;
//  365 		stInitStru.USART_WordLength = USART_WordLength_9b;
        MOV      R0,#+4096
        STRH     R0,[SP, #+4]
//  366 		stInitStru.USART_StopBits = USART_StopBits_1;
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
//  367 		stInitStru.USART_Parity = USART_Parity_Even;
        MOV      R0,#+1024
        STRH     R0,[SP, #+8]
//  368 		stInitStru.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
        MOVS     R0,#+0
        STRH     R0,[SP, #+12]
//  369 		stInitStru.USART_Mode = USART_Mode_Rx|USART_Mode_Tx;	
        MOVS     R0,#+12
        STRH     R0,[SP, #+10]
//  370 		XPRINTF((0, "UART2 init\n"));
        MOVS     R0,#+0
        ADR.W    R1,?_0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        B.N      ??Uart_Init_4
//  371 	}
//  372 	else
//  373 	{	
//  374 		//default param for meter usart
//  375 		/*
//  376 		stInitStru.USART_BaudRate = 9600;
//  377 		stInitStru.USART_WordLength = USART_WordLength_9b;
//  378 		stInitStru.USART_StopBits = USART_StopBits_1;
//  379 		stInitStru.USART_Parity = USART_Parity_Even;
//  380 		stInitStru.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
//  381 		stInitStru.USART_Mode = USART_Mode_Rx|USART_Mode_Tx;
//  382 		*/
//  383 		stInitStru.USART_BaudRate = 9600;
//  384 		stInitStru.USART_WordLength = USART_WordLength_8b;
??Uart_Init_2:
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  385 		stInitStru.USART_StopBits = USART_StopBits_1;
//  386 		stInitStru.USART_Parity = USART_Parity_No;
        STRH     R0,[SP, #+8]
//  387 		stInitStru.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
        STRH     R0,[SP, #+12]
//  388 		stInitStru.USART_Mode = USART_Mode_Rx|USART_Mode_Tx;		
        MOVS     R0,#+12
        STRH     R0,[SP, #+10]
//  389 	}
//  390 
//  391 	//Init USARTX
//  392 	USART_DeInit(USARTx);
??Uart_Init_4:
        MOV      R0,R4
          CFI FunCall USART_DeInit
        BL       USART_DeInit
//  393 	USART_Init(USARTx,&stInitStru);	
        ADD      R1,SP,#+0
        MOV      R0,R4
          CFI FunCall USART_Init
        BL       USART_Init
//  394 
//  395 	//Open interrupt rx  add  st lib funtion
//  396 	/* Enable USARTy Receive and Transmit interrupts */
//  397 	USART_ITConfig(USARTx, USART_IT_RXNE, ENABLE);	
        MOVS     R2,#+1
        MOVW     R1,#+1317
        MOV      R0,R4
          CFI FunCall USART_ITConfig
        BL       USART_ITConfig
//  398 
//  399 	#if 1
//  400 	if (2 == nPort )
//  401 	{
//  402 		#if 0
//  403 		//采用DMA方式发送  
//  404 		XPRINTF((10, "uart2 dma enable\r\n"));
//  405 		USART_DMACmd(USARTx,USART_DMAReq_Tx,ENABLE); 
//  406 		#endif
//  407 	}
//  408 	#endif
//  409 	USART_Cmd(USARTx,ENABLE);
        MOVS     R1,#+1
        MOV      R0,R4
          CFI FunCall USART_Cmd
        BL       USART_Cmd
//  410 }
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock11
//  411 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function Uart_StdSetInput
          CFI NoCalls
        THUMB
//  412 void Uart_StdSetInput(uart_handler_t handler)
//  413 {
//  414 	/* store the setting */
//  415 	uart_stdhandler = handler;
Uart_StdSetInput:
        LDR.N    R1,??DataTable18_1
        STR      R0,[R1, #+0]
//  416 	if(handler == NULL) 
//  417 	{
//  418 	} else 
//  419 	{
//  420 	}
//  421 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  422 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function uart2_cfg
        THUMB
//  423 void uart2_cfg(u_char ubIndex)
//  424 {
uart2_cfg:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+20
          CFI CFA R13+24
//  425 	//USART_InitTypeDef InitStru;
//  426 	USART_InitTypeDef stInitStru;
//  427 	if (ubIndex == 0x00)//9600
        CBNZ.N   R0,??uart2_cfg_0
//  428 	{
//  429 		stInitStru.USART_BaudRate = 9600;
        MOV      R0,#+9600
        B.N      ??uart2_cfg_1
//  430 	}
//  431 	else if (ubIndex == 0x01)
??uart2_cfg_0:
        CMP      R0,#+1
        IT       EQ 
        MOVEQ    R0,#+19200
//  432 	{
//  433 		stInitStru.USART_BaudRate = 19200;
        BEQ.N    ??uart2_cfg_1
//  434 	}
//  435 	else if (ubIndex == 0x02)
        CMP      R0,#+2
        IT       EQ 
        MOVEQ    R0,#+38400
//  436 	{
//  437 		stInitStru.USART_BaudRate = 38400;
        BEQ.N    ??uart2_cfg_1
//  438 	}
//  439 	else if (ubIndex == 0x03)
        CMP      R0,#+3
        IT       EQ 
        MOVEQ    R0,#+57600
//  440 	{
//  441 		stInitStru.USART_BaudRate = 57600;
        BEQ.N    ??uart2_cfg_1
//  442 	}
//  443 	else if (ubIndex == 0x04)
        CMP      R0,#+4
        BNE.N    ??uart2_cfg_2
//  444 	{
//  445 		stInitStru.USART_BaudRate = 115200;
        MOV      R0,#+115200
??uart2_cfg_1:
        STR      R0,[SP, #+0]
//  446 	}
//  447 
//  448 	stInitStru.USART_WordLength = USART_WordLength_8b;
??uart2_cfg_2:
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  449 	stInitStru.USART_StopBits = USART_StopBits_1;
//  450 	stInitStru.USART_Parity = USART_Parity_No;
        STRH     R0,[SP, #+8]
//  451 	stInitStru.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
        STRH     R0,[SP, #+12]
//  452 	stInitStru.USART_Mode = USART_Mode_Rx|USART_Mode_Tx;
//  453 	USART_Init(USART2,&stInitStru);	
        ADD      R1,SP,#+0
        MOVS     R0,#+12
        STRH     R0,[SP, #+10]
        LDR.N    R0,??DataTable18_4  ;; 0x40004400
          CFI FunCall USART_Init
        BL       USART_Init
//  454 }
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock13
//  455 
//  456 
//  457 
//  458 
//  459 
//  460 
//  461 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function uart2_send_char
          CFI NoCalls
        THUMB
//  462 int uart2_send_char (int ch) 
//  463 {
uart2_send_char:
        LDR.N    R1,??DataTable18_4  ;; 0x40004400
//  464 	while (!(USART2->SR & USART_FLAG_TXE)); // USART1 可换成你程序中通信的串口
??uart2_send_char_0:
        LDRH     R2,[R1, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ??uart2_send_char_0
//  465 	USART2->DR = (ch & 0x1FF);
        LSLS     R2,R0,#+23
        LSRS     R2,R2,#+23
        STRH     R2,[R1, #+4]
//  466 
//  467 	return (ch);
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  468 }
//  469 
//  470 
//  471 
//  472 
//  473 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function uart2_send_bytes
          CFI NoCalls
        THUMB
//  474 int uart2_send_bytes(u_char *pBuf, u_char ubLength)
//  475 {
//  476 	int i = 0;
//  477 	
//  478 	for (i = 0; i < ubLength; i++)
uart2_send_bytes:
        CBZ.N    R1,??uart2_send_bytes_0
        LDR.N    R2,??DataTable18_4  ;; 0x40004400
//  479 	{
//  480 		uart2_send_char(pBuf[i]);
??uart2_send_bytes_1:
        LDRB     R3,[R0, #+0]
??uart2_send_bytes_2:
        LDRH     R12,[R2, #+0]
        LSLS     R12,R12,#+24
        BPL.N    ??uart2_send_bytes_2
        ADDS     R0,R0,#+1
        SUBS     R1,R1,#+1
        STRH     R3,[R2, #+4]
//  481 	}
        BNE.N    ??uart2_send_bytes_1
//  482 
//  483 	return 0;
??uart2_send_bytes_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  484 }
//  485 
//  486 
//  487 
//  488 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function uart4_send_char
          CFI NoCalls
        THUMB
//  489 void uart4_send_char(u_char ch)
uart4_send_char:
        LDR.N    R1,??DataTable18_9  ;; 0x40004c00
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock16
//  490 {
//  491 	while (!(UART4->SR & USART_FLAG_TXE)); // 
//  492 	UART4->DR = (ch & 0x1FF);
//  493 	//XPRINTF((0, "u4 %02x\n", ch));
//  494 }
//  495 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function uart4_send_bytes
          CFI NoCalls
        THUMB
//  496 int uart4_send_bytes(u_char *pBuf, u_char ubLength)
//  497 {
//  498 	int i = 0;
//  499 	
//  500 	for (i = 0; i < ubLength; i++)
uart4_send_bytes:
        CBZ.N    R1,??uart4_send_bytes_0
        LDR.N    R2,??DataTable18_9  ;; 0x40004c00
//  501 	{
//  502 		uart4_send_char(pBuf[i]);
??uart4_send_bytes_1:
        LDRB     R3,[R0, #+0]
??uart4_send_bytes_2:
        LDRH     R12,[R2, #+0]
        LSLS     R12,R12,#+24
        BPL.N    ??uart4_send_bytes_2
        ADDS     R0,R0,#+1
        SUBS     R1,R1,#+1
        STRH     R3,[R2, #+4]
//  503 	}
        BNE.N    ??uart4_send_bytes_1
//  504 	
//  505 	return 0;
??uart4_send_bytes_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  506 }
//  507 
//  508 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function uart5_send_char
          CFI NoCalls
        THUMB
//  509 void uart5_send_char(u_char ch)
uart5_send_char:
        LDR.N    R1,??DataTable18_10  ;; 0x40005000
          CFI EndBlock cfiBlock18
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls uart4_send_char
          CFI NoCalls uart5_send_char
        THUMB
//  510 {
//  511 	while (!(UART5->SR & USART_FLAG_TXE)); // 
?Subroutine0:
        LDRH     R2,[R1, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ?Subroutine0
//  512 	UART5->DR = (ch & 0x1FF);
        STRH     R0,[R1, #+4]
//  513 	//XPRINTF((0, "u4 %02x\n", ch));
//  514 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
//  515 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function uart5_send_bytes
          CFI NoCalls
        THUMB
//  516 int uart5_send_bytes(u_char *pBuf, u_char ubLength)
//  517 {
//  518 	int i = 0;
//  519 	
//  520 	for (i = 0; i < ubLength; i++)
uart5_send_bytes:
        CBZ.N    R1,??uart5_send_bytes_0
        LDR.N    R2,??DataTable18_10  ;; 0x40005000
//  521 	{
//  522 		uart5_send_char(pBuf[i]);
??uart5_send_bytes_1:
        LDRB     R3,[R0, #+0]
??uart5_send_bytes_2:
        LDRH     R12,[R2, #+0]
        LSLS     R12,R12,#+24
        BPL.N    ??uart5_send_bytes_2
        ADDS     R0,R0,#+1
        SUBS     R1,R1,#+1
        STRH     R3,[R2, #+4]
//  523 	}
        BNE.N    ??uart5_send_bytes_1
//  524 	
//  525 	return 0;
??uart5_send_bytes_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  526 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     uart_base

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     uart_stdhandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     uart_485handler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     uart_gprshandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     uart_mp3handler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     uart_rfhandler

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_9:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_10:
        DC32     0x40005000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_0:
        DC8 "UART2 init\012"

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  527 
//  528 
//  529 
// 
//  20 bytes in section .bss
//  20 bytes in section .data
// 632 bytes in section .text
// 
// 632 bytes of CODE memory
//  40 bytes of DATA memory
//
//Errors: none
//Warnings: 11
