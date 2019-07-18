///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_rtc.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_rtc.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_rtc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC RTC_ClearFlag
        PUBLIC RTC_ClearITPendingBit
        PUBLIC RTC_EnterConfigMode
        PUBLIC RTC_ExitConfigMode
        PUBLIC RTC_GetCounter
        PUBLIC RTC_GetDivider
        PUBLIC RTC_GetFlagStatus
        PUBLIC RTC_GetITStatus
        PUBLIC RTC_ITConfig
        PUBLIC RTC_SetAlarm
        PUBLIC RTC_SetCounter
        PUBLIC RTC_SetPrescaler
        PUBLIC RTC_WaitForLastTask
        PUBLIC RTC_WaitForSynchro
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_rtc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_rtc.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the RTC firmware functions.
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
//   23 #include "stm32f10x_rtc.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup RTC 
//   30   * @brief RTC driver modules
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup RTC_Private_TypesDefinitions
//   35   * @{
//   36   */ 
//   37 /**
//   38   * @}
//   39   */
//   40 
//   41 /** @defgroup RTC_Private_Defines
//   42   * @{
//   43   */
//   44 #define RTC_LSB_MASK     ((uint32_t)0x0000FFFF)  /*!< RTC LSB Mask */
//   45 #define PRLH_MSB_MASK    ((uint32_t)0x000F0000)  /*!< RTC Prescaler MSB Mask */
//   46 
//   47 /**
//   48   * @}
//   49   */
//   50 
//   51 /** @defgroup RTC_Private_Macros
//   52   * @{
//   53   */
//   54 
//   55 /**
//   56   * @}
//   57   */
//   58 
//   59 /** @defgroup RTC_Private_Variables
//   60   * @{
//   61   */
//   62 
//   63 /**
//   64   * @}
//   65   */
//   66 
//   67 /** @defgroup RTC_Private_FunctionPrototypes
//   68   * @{
//   69   */
//   70 
//   71 /**
//   72   * @}
//   73   */
//   74 
//   75 /** @defgroup RTC_Private_Functions
//   76   * @{
//   77   */
//   78 
//   79 /**
//   80   * @brief  Enables or disables the specified RTC interrupts.
//   81   * @param  RTC_IT: specifies the RTC interrupts sources to be enabled or disabled.
//   82   *   This parameter can be any combination of the following values:
//   83   *     @arg RTC_IT_OW: Overflow interrupt
//   84   *     @arg RTC_IT_ALR: Alarm interrupt
//   85   *     @arg RTC_IT_SEC: Second interrupt
//   86   * @param  NewState: new state of the specified RTC interrupts.
//   87   *   This parameter can be: ENABLE or DISABLE.
//   88   * @retval None
//   89   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function RTC_ITConfig
          CFI NoCalls
        THUMB
//   90 void RTC_ITConfig(uint16_t RTC_IT, FunctionalState NewState)
//   91 {
//   92   /* Check the parameters */
//   93   assert_param(IS_RTC_IT(RTC_IT));  
//   94   assert_param(IS_FUNCTIONAL_STATE(NewState));
//   95   
//   96   if (NewState != DISABLE)
RTC_ITConfig:
        LDR.N    R2,??DataTable11  ;; 0x40002800
        CMP      R1,#+0
        LDRH     R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
//   97   {
//   98     RTC->CRH |= RTC_IT;
//   99   }
//  100   else
//  101   {
//  102     RTC->CRH &= (uint16_t)~RTC_IT;
        STRH     R0,[R2, #+0]
//  103   }
//  104 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  105 
//  106 /**
//  107   * @brief  Enters the RTC configuration mode.
//  108   * @param  None
//  109   * @retval None
//  110   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function RTC_EnterConfigMode
          CFI NoCalls
        THUMB
//  111 void RTC_EnterConfigMode(void)
//  112 {
//  113   /* Set the CNF flag to enter in the Configuration Mode */
//  114   RTC->CRL |= RTC_CRL_CNF;
RTC_EnterConfigMode:
        LDR.N    R0,??DataTable11_1  ;; 0x40002804
        LDRH     R1,[R0, #+0]
        ORR      R1,R1,#0x10
        STRH     R1,[R0, #+0]
//  115 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  116 
//  117 /**
//  118   * @brief  Exits from the RTC configuration mode.
//  119   * @param  None
//  120   * @retval None
//  121   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function RTC_ExitConfigMode
          CFI NoCalls
        THUMB
//  122 void RTC_ExitConfigMode(void)
//  123 {
//  124   /* Reset the CNF flag to exit from the Configuration Mode */
//  125   RTC->CRL &= (uint16_t)~((uint16_t)RTC_CRL_CNF); 
RTC_ExitConfigMode:
        LDR.N    R0,??DataTable11_1  ;; 0x40002804
        LDRH     R1,[R0, #+0]
        MOVW     R2,#+65519
        ANDS     R1,R2,R1
        STRH     R1,[R0, #+0]
//  126 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  127 
//  128 /**
//  129   * @brief  Gets the RTC counter value.
//  130   * @param  None
//  131   * @retval RTC counter value.
//  132   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function RTC_GetCounter
          CFI NoCalls
        THUMB
//  133 uint32_t RTC_GetCounter(void)
//  134 {
//  135   uint16_t tmp = 0;
//  136   tmp = RTC->CNTL;
RTC_GetCounter:
        LDR.N    R0,??DataTable11_2  ;; 0x40002818
        LDRH     R1,[R0, #+4]
//  137   return (((uint32_t)RTC->CNTH << 16 ) | tmp) ;
        LDRH     R0,[R0, #+0]
        ORR      R0,R1,R0, LSL #+16
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  138 }
//  139 
//  140 /**
//  141   * @brief  Sets the RTC counter value.
//  142   * @param  CounterValue: RTC counter new value.
//  143   * @retval None
//  144   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function RTC_SetCounter
          CFI NoCalls
        THUMB
//  145 void RTC_SetCounter(uint32_t CounterValue)
//  146 { 
//  147   RTC_EnterConfigMode();
RTC_SetCounter:
        LDR.N    R1,??DataTable11_1  ;; 0x40002804
        LDRH     R2,[R1, #+0]
        ORR      R2,R2,#0x10
        STRH     R2,[R1, #+0]
//  148   /* Set RTC COUNTER MSB word */
//  149   RTC->CNTH = CounterValue >> 16;
        LSRS     R2,R0,#+16
        STRH     R2,[R1, #+20]
//  150   /* Set RTC COUNTER LSB word */
//  151   RTC->CNTL = (CounterValue & RTC_LSB_MASK);
        STRH     R0,[R1, #+24]
//  152   RTC_ExitConfigMode();
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock4
//  153 }
//  154 
//  155 /**
//  156   * @brief  Sets the RTC prescaler value.
//  157   * @param  PrescalerValue: RTC prescaler new value.
//  158   * @retval None
//  159   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function RTC_SetPrescaler
          CFI NoCalls
        THUMB
//  160 void RTC_SetPrescaler(uint32_t PrescalerValue)
//  161 {
//  162   /* Check the parameters */
//  163   assert_param(IS_RTC_PRESCALER(PrescalerValue));
//  164   
//  165   RTC_EnterConfigMode();
RTC_SetPrescaler:
        LDR.N    R1,??DataTable11_1  ;; 0x40002804
        LDRH     R2,[R1, #+0]
        ORR      R2,R2,#0x10
        STRH     R2,[R1, #+0]
//  166   /* Set RTC PRESCALER MSB word */
//  167   RTC->PRLH = (PrescalerValue & PRLH_MSB_MASK) >> 16;
        LSRS     R2,R0,#+16
        AND      R2,R2,#0xF
        STRH     R2,[R1, #+4]
//  168   /* Set RTC PRESCALER LSB word */
//  169   RTC->PRLL = (PrescalerValue & RTC_LSB_MASK);
        STRH     R0,[R1, #+8]
          CFI EndBlock cfiBlock5
//  170   RTC_ExitConfigMode();
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  171 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls RTC_SetCounter
          CFI NoCalls RTC_SetPrescaler
          CFI NoCalls RTC_SetAlarm
        THUMB
?Subroutine1:
        MOVW     R2,#+65519
        LDRH     R0,[R1, #+0]
        ANDS     R0,R2,R0
        STRH     R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  172 
//  173 /**
//  174   * @brief  Sets the RTC alarm value.
//  175   * @param  AlarmValue: RTC alarm new value.
//  176   * @retval None
//  177   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function RTC_SetAlarm
          CFI NoCalls
        THUMB
//  178 void RTC_SetAlarm(uint32_t AlarmValue)
//  179 {  
//  180   RTC_EnterConfigMode();
RTC_SetAlarm:
        LDR.N    R1,??DataTable11_1  ;; 0x40002804
        LDRH     R2,[R1, #+0]
        ORR      R2,R2,#0x10
        STRH     R2,[R1, #+0]
//  181   /* Set the ALARM MSB word */
//  182   RTC->ALRH = AlarmValue >> 16;
        LSRS     R2,R0,#+16
        STRH     R2,[R1, #+28]
//  183   /* Set the ALARM LSB word */
//  184   RTC->ALRL = (AlarmValue & RTC_LSB_MASK);
        STRH     R0,[R1, #+32]
//  185   RTC_ExitConfigMode();
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock7
//  186 }
//  187 
//  188 /**
//  189   * @brief  Gets the RTC divider value.
//  190   * @param  None
//  191   * @retval RTC Divider value.
//  192   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function RTC_GetDivider
          CFI NoCalls
        THUMB
//  193 uint32_t RTC_GetDivider(void)
//  194 {
//  195   uint32_t tmp = 0x00;
//  196   tmp = ((uint32_t)RTC->DIVH & (uint32_t)0x000F) << 16;
RTC_GetDivider:
        LDR.N    R0,??DataTable11_3  ;; 0x40002810
        LDRH     R1,[R0, #+0]
//  197   tmp |= RTC->DIVL;
        LDRH     R0,[R0, #+4]
//  198   return tmp;
        AND      R1,R1,#0xF
        ORR      R0,R0,R1, LSL #+16
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  199 }
//  200 
//  201 /**
//  202   * @brief  Waits until last write operation on RTC registers has finished.
//  203   * @note   This function must be called before any write to RTC registers.
//  204   * @param  None
//  205   * @retval None
//  206   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function RTC_WaitForLastTask
          CFI NoCalls
        THUMB
//  207 void RTC_WaitForLastTask(void)
//  208 {
RTC_WaitForLastTask:
        LDR.N    R0,??DataTable11_1  ;; 0x40002804
//  209   /* Loop until RTOFF flag is set */
//  210   while ((RTC->CRL & RTC_FLAG_RTOFF) == (uint16_t)RESET)
??RTC_WaitForLastTask_0:
        LDRH     R1,[R0, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??RTC_WaitForLastTask_0
//  211   {
//  212   }
//  213 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  214 
//  215 /**
//  216   * @brief  Waits until the RTC registers (RTC_CNT, RTC_ALR and RTC_PRL)
//  217   *   are synchronized with RTC APB clock.
//  218   * @note   This function must be called before any read operation after an APB reset
//  219   *   or an APB clock stop.
//  220   * @param  None
//  221   * @retval None
//  222   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function RTC_WaitForSynchro
          CFI NoCalls
        THUMB
//  223 void RTC_WaitForSynchro(void)
//  224 {
//  225   /* Clear RSF flag */
//  226   RTC->CRL &= (uint16_t)~RTC_FLAG_RSF;
RTC_WaitForSynchro:
        LDR.N    R0,??DataTable11_1  ;; 0x40002804
        LDRH     R1,[R0, #+0]
        MOVW     R2,#+65527
        ANDS     R1,R2,R1
        STRH     R1,[R0, #+0]
//  227   /* Loop until RSF flag is set */
//  228   while ((RTC->CRL & RTC_FLAG_RSF) == (uint16_t)RESET)
??RTC_WaitForSynchro_0:
        LDRH     R1,[R0, #+0]
        LSLS     R1,R1,#+28
        BPL.N    ??RTC_WaitForSynchro_0
//  229   {
//  230   }
//  231 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  232 
//  233 /**
//  234   * @brief  Checks whether the specified RTC flag is set or not.
//  235   * @param  RTC_FLAG: specifies the flag to check.
//  236   *   This parameter can be one the following values:
//  237   *     @arg RTC_FLAG_RTOFF: RTC Operation OFF flag
//  238   *     @arg RTC_FLAG_RSF: Registers Synchronized flag
//  239   *     @arg RTC_FLAG_OW: Overflow flag
//  240   *     @arg RTC_FLAG_ALR: Alarm flag
//  241   *     @arg RTC_FLAG_SEC: Second flag
//  242   * @retval The new state of RTC_FLAG (SET or RESET).
//  243   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function RTC_GetFlagStatus
          CFI NoCalls
        THUMB
//  244 FlagStatus RTC_GetFlagStatus(uint16_t RTC_FLAG)
//  245 {
//  246   FlagStatus bitstatus = RESET;
//  247   
//  248   /* Check the parameters */
//  249   assert_param(IS_RTC_GET_FLAG(RTC_FLAG)); 
//  250   
//  251   if ((RTC->CRL & RTC_FLAG) != (uint16_t)RESET)
RTC_GetFlagStatus:
        LDR.N    R2,??DataTable11_1  ;; 0x40002804
        LDRH     R2,[R2, #+0]
        MOVS     R1,#+0
        TST      R2,R0
        IT       NE 
        MOVNE    R1,#+1
//  252   {
//  253     bitstatus = SET;
//  254   }
//  255   else
//  256   {
//  257     bitstatus = RESET;
//  258   }
//  259   return bitstatus;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  260 }
//  261 
//  262 /**
//  263   * @brief  Clears the RTC's pending flags.
//  264   * @param  RTC_FLAG: specifies the flag to clear.
//  265   *   This parameter can be any combination of the following values:
//  266   *     @arg RTC_FLAG_RSF: Registers Synchronized flag. This flag is cleared only after
//  267   *                        an APB reset or an APB Clock stop.
//  268   *     @arg RTC_FLAG_OW: Overflow flag
//  269   *     @arg RTC_FLAG_ALR: Alarm flag
//  270   *     @arg RTC_FLAG_SEC: Second flag
//  271   * @retval None
//  272   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function RTC_ClearFlag
          CFI NoCalls
        THUMB
//  273 void RTC_ClearFlag(uint16_t RTC_FLAG)
//  274 {
//  275   /* Check the parameters */
//  276   assert_param(IS_RTC_CLEAR_FLAG(RTC_FLAG)); 
//  277     
//  278   /* Clear the corresponding RTC flag */
//  279   RTC->CRL &= (uint16_t)~RTC_FLAG;
RTC_ClearFlag:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock12
//  280 }
//  281 
//  282 /**
//  283   * @brief  Checks whether the specified RTC interrupt has occurred or not.
//  284   * @param  RTC_IT: specifies the RTC interrupts sources to check.
//  285   *   This parameter can be one of the following values:
//  286   *     @arg RTC_IT_OW: Overflow interrupt
//  287   *     @arg RTC_IT_ALR: Alarm interrupt
//  288   *     @arg RTC_IT_SEC: Second interrupt
//  289   * @retval The new state of the RTC_IT (SET or RESET).
//  290   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function RTC_GetITStatus
          CFI NoCalls
        THUMB
//  291 ITStatus RTC_GetITStatus(uint16_t RTC_IT)
//  292 {
//  293   ITStatus bitstatus = RESET;
//  294   /* Check the parameters */
//  295   assert_param(IS_RTC_GET_IT(RTC_IT)); 
//  296   
//  297   bitstatus = (ITStatus)(RTC->CRL & RTC_IT);
RTC_GetITStatus:
        LDR.N    R1,??DataTable11  ;; 0x40002800
        LDRH     R2,[R1, #+4]
//  298   if (((RTC->CRH & RTC_IT) != (uint16_t)RESET) && (bitstatus != (uint16_t)RESET))
        LDRH     R1,[R1, #+0]
        ANDS     R2,R0,R2
        TST      R1,R0
        BEQ.N    ??RTC_GetITStatus_0
        UXTB     R0,R2
        SUBS     R0,R0,#+1
        SBCS     R0,R0,R0
        MVNS     R0,R0
        LSRS     R0,R0,#+31
        BX       LR
//  299   {
//  300     bitstatus = SET;
//  301   }
//  302   else
//  303   {
//  304     bitstatus = RESET;
??RTC_GetITStatus_0:
        MOVS     R0,#+0
//  305   }
//  306   return bitstatus;
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  307 }
//  308 
//  309 /**
//  310   * @brief  Clears the RTC's interrupt pending bits.
//  311   * @param  RTC_IT: specifies the interrupt pending bit to clear.
//  312   *   This parameter can be any combination of the following values:
//  313   *     @arg RTC_IT_OW: Overflow interrupt
//  314   *     @arg RTC_IT_ALR: Alarm interrupt
//  315   *     @arg RTC_IT_SEC: Second interrupt
//  316   * @retval None
//  317   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function RTC_ClearITPendingBit
          CFI NoCalls
        THUMB
//  318 void RTC_ClearITPendingBit(uint16_t RTC_IT)
RTC_ClearITPendingBit:
        Nop      
          CFI EndBlock cfiBlock14
//  319 {
//  320   /* Check the parameters */
//  321   assert_param(IS_RTC_IT(RTC_IT));  
//  322   
//  323   /* Clear the corresponding RTC pending bit */
//  324   RTC->CRL &= (uint16_t)~RTC_IT;
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls RTC_ClearFlag
          CFI NoCalls RTC_ClearITPendingBit
        THUMB
?Subroutine0:
        LDR.N    R1,??DataTable11_1  ;; 0x40002804
        LDRH     R2,[R1, #+0]
        BIC      R0,R2,R0
        STRH     R0,[R1, #+0]
//  325 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x40002800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x40002804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x40002818

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x40002810

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  326 
//  327 /**
//  328   * @}
//  329   */
//  330 
//  331 /**
//  332   * @}
//  333   */
//  334 
//  335 /**
//  336   * @}
//  337   */
//  338 
//  339 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 246 bytes in section .text
// 
// 246 bytes of CODE memory
//
//Errors: none
//Warnings: none
