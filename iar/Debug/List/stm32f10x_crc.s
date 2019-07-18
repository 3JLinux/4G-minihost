///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:29
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_crc.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_crc.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_crc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC CRC_CalcBlockCRC
        PUBLIC CRC_CalcCRC
        PUBLIC CRC_GetCRC
        PUBLIC CRC_GetIDRegister
        PUBLIC CRC_ResetDR
        PUBLIC CRC_SetIDRegister
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_crc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_crc.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the CRC firmware functions.
//    8   ******************************************************************************
//    9   * @attention
//   10   *
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
//   14   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
//   19   ******************************************************************************
//   20   */
//   21 
//   22 /* Includes ------------------------------------------------------------------*/
//   23 #include "stm32f10x_crc.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup CRC 
//   30   * @brief CRC driver modules
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup CRC_Private_TypesDefinitions
//   35   * @{
//   36   */
//   37 
//   38 /**
//   39   * @}
//   40   */
//   41 
//   42 /** @defgroup CRC_Private_Defines
//   43   * @{
//   44   */
//   45 
//   46 /**
//   47   * @}
//   48   */
//   49 
//   50 /** @defgroup CRC_Private_Macros
//   51   * @{
//   52   */
//   53 
//   54 /**
//   55   * @}
//   56   */
//   57 
//   58 /** @defgroup CRC_Private_Variables
//   59   * @{
//   60   */
//   61 
//   62 /**
//   63   * @}
//   64   */
//   65 
//   66 /** @defgroup CRC_Private_FunctionPrototypes
//   67   * @{
//   68   */
//   69 
//   70 /**
//   71   * @}
//   72   */
//   73 
//   74 /** @defgroup CRC_Private_Functions
//   75   * @{
//   76   */
//   77 
//   78 /**
//   79   * @brief  Resets the CRC Data register (DR).
//   80   * @param  None
//   81   * @retval None
//   82   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function CRC_ResetDR
          CFI NoCalls
        THUMB
//   83 void CRC_ResetDR(void)
//   84 {
//   85   /* Reset CRC generator */
//   86   CRC->CR = CRC_CR_RESET;
CRC_ResetDR:
        LDR.N    R1,??DataTable5  ;; 0x40023008
        MOVS     R0,#+1
        STR      R0,[R1, #+0]
//   87 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   88 
//   89 /**
//   90   * @brief  Computes the 32-bit CRC of a given data word(32-bit).
//   91   * @param  Data: data word(32-bit) to compute its CRC
//   92   * @retval 32-bit CRC
//   93   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function CRC_CalcCRC
          CFI NoCalls
        THUMB
//   94 uint32_t CRC_CalcCRC(uint32_t Data)
//   95 {
//   96   CRC->DR = Data;
CRC_CalcCRC:
        LDR.N    R1,??DataTable5_1  ;; 0x40023000
        STR      R0,[R1, #+0]
//   97   
//   98   return (CRC->DR);
        LDR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   99 }
//  100 
//  101 /**
//  102   * @brief  Computes the 32-bit CRC of a given buffer of data word(32-bit).
//  103   * @param  pBuffer: pointer to the buffer containing the data to be computed
//  104   * @param  BufferLength: length of the buffer to be computed					
//  105   * @retval 32-bit CRC
//  106   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function CRC_CalcBlockCRC
          CFI NoCalls
        THUMB
//  107 uint32_t CRC_CalcBlockCRC(uint32_t pBuffer[], uint32_t BufferLength)
//  108 {
//  109   uint32_t index = 0;
//  110   
//  111   for(index = 0; index < BufferLength; index++)
CRC_CalcBlockCRC:
        LDR.N    R2,??DataTable5_1  ;; 0x40023000
        CBZ.N    R1,??CRC_CalcBlockCRC_0
//  112   {
//  113     CRC->DR = pBuffer[index];
??CRC_CalcBlockCRC_1:
        LDR      R3,[R0], #+4
        STR      R3,[R2, #+0]
//  114   }
        SUBS     R1,R1,#+1
        BNE.N    ??CRC_CalcBlockCRC_1
//  115   return (CRC->DR);
??CRC_CalcBlockCRC_0:
        LDR      R0,[R2, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  116 }
//  117 
//  118 /**
//  119   * @brief  Returns the current CRC value.
//  120   * @param  None
//  121   * @retval 32-bit CRC
//  122   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function CRC_GetCRC
          CFI NoCalls
        THUMB
//  123 uint32_t CRC_GetCRC(void)
//  124 {
//  125   return (CRC->DR);
CRC_GetCRC:
        LDR.N    R0,??DataTable5_1  ;; 0x40023000
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  126 }
//  127 
//  128 /**
//  129   * @brief  Stores a 8-bit data in the Independent Data(ID) register.
//  130   * @param  IDValue: 8-bit value to be stored in the ID register 					
//  131   * @retval None
//  132   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function CRC_SetIDRegister
          CFI NoCalls
        THUMB
//  133 void CRC_SetIDRegister(uint8_t IDValue)
//  134 {
//  135   CRC->IDR = IDValue;
CRC_SetIDRegister:
        LDR.N    R1,??DataTable5_2  ;; 0x40023004
        STRB     R0,[R1, #+0]
//  136 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  137 
//  138 /**
//  139   * @brief  Returns the 8-bit data stored in the Independent Data(ID) register
//  140   * @param  None
//  141   * @retval 8-bit value of the ID register 
//  142   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function CRC_GetIDRegister
          CFI NoCalls
        THUMB
//  143 uint8_t CRC_GetIDRegister(void)
//  144 {
//  145   return (CRC->IDR);
CRC_GetIDRegister:
        LDR.N    R0,??DataTable5_2  ;; 0x40023004
        LDRB     R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  146 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40023008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40023000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40023004

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  147 
//  148 /**
//  149   * @}
//  150   */
//  151 
//  152 /**
//  153   * @}
//  154   */
//  155 
//  156 /**
//  157   * @}
//  158   */
//  159 
//  160 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 64 bytes in section .text
// 
// 64 bytes of CODE memory
//
//Errors: none
//Warnings: none
