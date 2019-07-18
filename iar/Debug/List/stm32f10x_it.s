///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\stm32f10x_it.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\stm32f10x_it.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_it.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN sysPrintExp

        PUBLIC BusFault_Handler
        PUBLIC DebugMon_Handler
        PUBLIC HardFault_Handler
        PUBLIC MemManage_Handler
        PUBLIC NMI_Handler
        PUBLIC PendSV_Handler
        PUBLIC SVC_Handler
        PUBLIC UsageFault_Handler
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\stm32f10x_it.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Project/STM32F10x_StdPeriph_Template/stm32f10x_it.c 
//    4   * @author  MCD Application Team
//    5   * @version V3.4.0
//    6   * @date    10/15/2010
//    7   * @brief   Main Interrupt Service Routines.
//    8   *          This file provides template for all exceptions handler and 
//    9   *          peripherals interrupt service routine.
//   10   ******************************************************************************
//   11   * @copy
//   12   *
//   13   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   14   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   15   * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
//   16   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   17   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   18   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   19   *
//   20   * <h2><center>&copy; COPYRIGHT 2010 STMicroelectronics</center></h2>
//   21   */ 
//   22 
//   23 /* Includes ------------------------------------------------------------------*/
//   24 #include "stm32f10x_it.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Template
//   27   * @{
//   28   */
//   29 
//   30 /* Private typedef -----------------------------------------------------------*/
//   31 /* Private define ------------------------------------------------------------*/
//   32 /* Private macro -------------------------------------------------------------*/
//   33 /* Private variables ---------------------------------------------------------*/
//   34 /* Private function prototypes -----------------------------------------------*/
//   35 /* Private functions ---------------------------------------------------------*/
//   36 
//   37 /******************************************************************************/
//   38 /*            Cortex-M3 Processor Exceptions Handlers                         */
//   39 /******************************************************************************/
//   40 extern   void sysPrintExp(unsigned int dwPos);
//   41 /**
//   42   * @brief   This function handles NMI exception.
//   43   * @param  None
//   44   * @retval None
//   45   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NMI_Handler
        THUMB
//   46 void NMI_Handler(void)
//   47 {
NMI_Handler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   48   sysPrintExp(1);
        MOVS     R0,#+1
          CFI FunCall sysPrintExp
        BL       sysPrintExp
//   49   while (1)
??NMI_Handler_0:
        B.N      ??NMI_Handler_0
          CFI EndBlock cfiBlock0
//   50   {
//   51   }
//   52 }
//   53 
//   54 /**
//   55   * @brief  This function handles Hard Fault exception.
//   56   * @param  None
//   57   * @retval None
//   58   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HardFault_Handler
        THUMB
//   59 void HardFault_Handler(void)
//   60 {
HardFault_Handler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   61   /* Go to infinite loop when Hard Fault exception occurs */
//   62   sysPrintExp(2);
        MOVS     R0,#+2
          CFI FunCall sysPrintExp
        BL       sysPrintExp
//   63   while (1)
??HardFault_Handler_0:
        B.N      ??HardFault_Handler_0
          CFI EndBlock cfiBlock1
//   64   {
//   65   }
//   66 }
//   67 
//   68 /**
//   69   * @brief  This function handles Memory Manage exception.
//   70   * @param  None
//   71   * @retval None
//   72   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function MemManage_Handler
        THUMB
//   73 void MemManage_Handler(void)
//   74 {
MemManage_Handler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   75   /* Go to infinite loop when Memory Manage exception occurs */
//   76   sysPrintExp(3);
        MOVS     R0,#+3
          CFI FunCall sysPrintExp
        BL       sysPrintExp
//   77   while (1)
??MemManage_Handler_0:
        B.N      ??MemManage_Handler_0
          CFI EndBlock cfiBlock2
//   78   {
//   79   }
//   80 }
//   81 
//   82 /**
//   83   * @brief  This function handles Bus Fault exception.
//   84   * @param  None
//   85   * @retval None
//   86   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function BusFault_Handler
        THUMB
//   87 void BusFault_Handler(void)
//   88 {
BusFault_Handler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   89   /* Go to infinite loop when Bus Fault exception occurs */
//   90   sysPrintExp(4);
        MOVS     R0,#+4
          CFI FunCall sysPrintExp
        BL       sysPrintExp
//   91   while (1)
??BusFault_Handler_0:
        B.N      ??BusFault_Handler_0
          CFI EndBlock cfiBlock3
//   92   {
//   93   }
//   94 }
//   95 
//   96 /**
//   97   * @brief  This function handles Usage Fault exception.
//   98   * @param  None
//   99   * @retval None
//  100   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function UsageFault_Handler
        THUMB
//  101 void UsageFault_Handler(void)
//  102 {
UsageFault_Handler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  103   /* Go to infinite loop when Usage Fault exception occurs */
//  104   sysPrintExp(5);
        MOVS     R0,#+5
          CFI FunCall sysPrintExp
        BL       sysPrintExp
//  105   while (1)
??UsageFault_Handler_0:
        B.N      ??UsageFault_Handler_0
          CFI EndBlock cfiBlock4
//  106   {
//  107   }
//  108 }
//  109 
//  110 /**
//  111   * @brief  This function handles SVCall exception.
//  112   * @param  None
//  113   * @retval None
//  114   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SVC_Handler
        THUMB
//  115 void SVC_Handler(void)
//  116 {
//  117 	sysPrintExp(6);
SVC_Handler:
        MOVS     R0,#+6
          CFI FunCall sysPrintExp
        B.W      sysPrintExp
          CFI EndBlock cfiBlock5
//  118 }
//  119 
//  120 /**
//  121   * @brief  This function handles Debug Monitor exception.
//  122   * @param  None
//  123   * @retval None
//  124   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function DebugMon_Handler
        THUMB
//  125 void DebugMon_Handler(void)
//  126 {
//  127 	sysPrintExp(7);
DebugMon_Handler:
        MOVS     R0,#+7
          CFI FunCall sysPrintExp
        B.W      sysPrintExp
          CFI EndBlock cfiBlock6
//  128 }
//  129 
//  130 /**
//  131   * @brief  This function handles PendSVC exception.
//  132   * @param  None
//  133   * @retval None
//  134   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function PendSV_Handler
        THUMB
//  135 void PendSV_Handler(void)
//  136 {
//  137 	sysPrintExp(8);
PendSV_Handler:
        MOVS     R0,#+8
          CFI FunCall sysPrintExp
        B.W      sysPrintExp
          CFI EndBlock cfiBlock7
//  138 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  139 
//  140 /**
//  141   * @brief  This function handles SysTick Handler.
//  142   * @param  None
//  143   * @retval None
//  144   */
//  145 /*
//  146 void SysTick_Handler(void)
//  147 {
//  148 }
//  149 */
//  150 
//  151 /******************************************************************************/
//  152 /*                 STM32F10x Peripherals Interrupt Handlers                   */
//  153 /*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
//  154 /*  available peripheral interrupt handler's name please refer to the startup */
//  155 /*  file (startup_stm32f10x_xx.s).                                            */
//  156 /******************************************************************************/
//  157 
//  158 /**
//  159   * @brief  This function handles PPP interrupt request.
//  160   * @param  None
//  161   * @retval None
//  162   */
//  163 /*void PPP_IRQHandler(void)
//  164 {
//  165 }*/
//  166 
//  167 /**
//  168   * @}
//  169   */ 
//  170 
//  171 
//  172 /******************* (C) COPYRIGHT 2010 STMicroelectronics *****END OF FILE****/
// 
// 68 bytes in section .text
// 
// 68 bytes of CODE memory
//
//Errors: none
//Warnings: none
