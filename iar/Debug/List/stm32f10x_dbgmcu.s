///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:29
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_dbgmcu.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_dbgmcu.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_dbgmcu.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC DBGMCU_Config
        PUBLIC DBGMCU_GetDEVID
        PUBLIC DBGMCU_GetREVID
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_dbgmcu.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_dbgmcu.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the DBGMCU firmware functions.
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
//   23 #include "stm32f10x_dbgmcu.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup DBGMCU 
//   30   * @brief DBGMCU driver modules
//   31   * @{
//   32   */ 
//   33 
//   34 /** @defgroup DBGMCU_Private_TypesDefinitions
//   35   * @{
//   36   */
//   37 
//   38 /**
//   39   * @}
//   40   */
//   41 
//   42 /** @defgroup DBGMCU_Private_Defines
//   43   * @{
//   44   */
//   45 
//   46 #define IDCODE_DEVID_MASK    ((uint32_t)0x00000FFF)
//   47 /**
//   48   * @}
//   49   */
//   50 
//   51 /** @defgroup DBGMCU_Private_Macros
//   52   * @{
//   53   */
//   54 
//   55 /**
//   56   * @}
//   57   */
//   58 
//   59 /** @defgroup DBGMCU_Private_Variables
//   60   * @{
//   61   */
//   62 
//   63 /**
//   64   * @}
//   65   */
//   66 
//   67 /** @defgroup DBGMCU_Private_FunctionPrototypes
//   68   * @{
//   69   */
//   70 
//   71 /**
//   72   * @}
//   73   */
//   74 
//   75 /** @defgroup DBGMCU_Private_Functions
//   76   * @{
//   77   */
//   78 
//   79 /**
//   80   * @brief  Returns the device revision identifier.
//   81   * @param  None
//   82   * @retval Device revision identifier
//   83   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function DBGMCU_GetREVID
          CFI NoCalls
        THUMB
//   84 uint32_t DBGMCU_GetREVID(void)
//   85 {
//   86    return(DBGMCU->IDCODE >> 16);
DBGMCU_GetREVID:
        LDR.N    R0,??DataTable2  ;; 0xe0042000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   87 }
//   88 
//   89 /**
//   90   * @brief  Returns the device identifier.
//   91   * @param  None
//   92   * @retval Device identifier
//   93   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function DBGMCU_GetDEVID
          CFI NoCalls
        THUMB
//   94 uint32_t DBGMCU_GetDEVID(void)
//   95 {
//   96    return(DBGMCU->IDCODE & IDCODE_DEVID_MASK);
DBGMCU_GetDEVID:
        LDR.N    R0,??DataTable2  ;; 0xe0042000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        LSRS     R0,R0,#+20
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   97 }
//   98 
//   99 /**
//  100   * @brief  Configures the specified peripheral and low power mode behavior
//  101   *   when the MCU under Debug mode.
//  102   * @param  DBGMCU_Periph: specifies the peripheral and low power mode.
//  103   *   This parameter can be any combination of the following values:
//  104   *     @arg DBGMCU_SLEEP: Keep debugger connection during SLEEP mode              
//  105   *     @arg DBGMCU_STOP: Keep debugger connection during STOP mode               
//  106   *     @arg DBGMCU_STANDBY: Keep debugger connection during STANDBY mode            
//  107   *     @arg DBGMCU_IWDG_STOP: Debug IWDG stopped when Core is halted          
//  108   *     @arg DBGMCU_WWDG_STOP: Debug WWDG stopped when Core is halted          
//  109   *     @arg DBGMCU_TIM1_STOP: TIM1 counter stopped when Core is halted          
//  110   *     @arg DBGMCU_TIM2_STOP: TIM2 counter stopped when Core is halted          
//  111   *     @arg DBGMCU_TIM3_STOP: TIM3 counter stopped when Core is halted          
//  112   *     @arg DBGMCU_TIM4_STOP: TIM4 counter stopped when Core is halted          
//  113   *     @arg DBGMCU_CAN1_STOP: Debug CAN2 stopped when Core is halted           
//  114   *     @arg DBGMCU_I2C1_SMBUS_TIMEOUT: I2C1 SMBUS timeout mode stopped when Core is halted
//  115   *     @arg DBGMCU_I2C2_SMBUS_TIMEOUT: I2C2 SMBUS timeout mode stopped when Core is halted
//  116   *     @arg DBGMCU_TIM5_STOP: TIM5 counter stopped when Core is halted          
//  117   *     @arg DBGMCU_TIM6_STOP: TIM6 counter stopped when Core is halted          
//  118   *     @arg DBGMCU_TIM7_STOP: TIM7 counter stopped when Core is halted          
//  119   *     @arg DBGMCU_TIM8_STOP: TIM8 counter stopped when Core is halted
//  120   *     @arg DBGMCU_CAN2_STOP: Debug CAN2 stopped when Core is halted 
//  121   *     @arg DBGMCU_TIM15_STOP: TIM15 counter stopped when Core is halted
//  122   *     @arg DBGMCU_TIM16_STOP: TIM16 counter stopped when Core is halted
//  123   *     @arg DBGMCU_TIM17_STOP: TIM17 counter stopped when Core is halted                
//  124   *     @arg DBGMCU_TIM9_STOP: TIM9 counter stopped when Core is halted
//  125   *     @arg DBGMCU_TIM10_STOP: TIM10 counter stopped when Core is halted
//  126   *     @arg DBGMCU_TIM11_STOP: TIM11 counter stopped when Core is halted
//  127   *     @arg DBGMCU_TIM12_STOP: TIM12 counter stopped when Core is halted
//  128   *     @arg DBGMCU_TIM13_STOP: TIM13 counter stopped when Core is halted
//  129   *     @arg DBGMCU_TIM14_STOP: TIM14 counter stopped when Core is halted
//  130   * @param  NewState: new state of the specified peripheral in Debug mode.
//  131   *   This parameter can be: ENABLE or DISABLE.
//  132   * @retval None
//  133   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function DBGMCU_Config
          CFI NoCalls
        THUMB
//  134 void DBGMCU_Config(uint32_t DBGMCU_Periph, FunctionalState NewState)
//  135 {
//  136   /* Check the parameters */
//  137   assert_param(IS_DBGMCU_PERIPH(DBGMCU_Periph));
//  138   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  139 
//  140   if (NewState != DISABLE)
DBGMCU_Config:
        LDR.N    R2,??DataTable2_1  ;; 0xe0042004
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
//  141   {
//  142     DBGMCU->CR |= DBGMCU_Periph;
//  143   }
//  144   else
//  145   {
//  146     DBGMCU->CR &= ~DBGMCU_Periph;
        STR      R0,[R2, #+0]
//  147   }
//  148 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0xe0042000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0xe0042004

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  149 
//  150 /**
//  151   * @}
//  152   */
//  153 
//  154 /**
//  155   * @}
//  156   */
//  157 
//  158 /**
//  159   * @}
//  160   */
//  161 
//  162 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 44 bytes in section .text
// 
// 44 bytes of CODE memory
//
//Errors: none
//Warnings: none
