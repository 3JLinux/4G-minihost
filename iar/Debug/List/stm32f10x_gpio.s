///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:32
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_gpio.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_gpio.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_gpio.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB2PeriphResetCmd

        PUBLIC GPIO_AFIODeInit
        PUBLIC GPIO_DeInit
        PUBLIC GPIO_ETH_MediaInterfaceConfig
        PUBLIC GPIO_EXTILineConfig
        PUBLIC GPIO_EventOutputCmd
        PUBLIC GPIO_EventOutputConfig
        PUBLIC GPIO_Init
        PUBLIC GPIO_PinLockConfig
        PUBLIC GPIO_PinRemapConfig
        PUBLIC GPIO_ReadInputData
        PUBLIC GPIO_ReadInputDataBit
        PUBLIC GPIO_ReadOutputData
        PUBLIC GPIO_ReadOutputDataBit
        PUBLIC GPIO_ResetBits
        PUBLIC GPIO_SetBits
        PUBLIC GPIO_StructInit
        PUBLIC GPIO_Write
        PUBLIC GPIO_WriteBit
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_gpio.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_gpio.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the GPIO firmware functions.
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
//   23 #include "stm32f10x_gpio.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup GPIO 
//   31   * @brief GPIO driver modules
//   32   * @{
//   33   */ 
//   34 
//   35 /** @defgroup GPIO_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 
//   39 /**
//   40   * @}
//   41   */
//   42 
//   43 /** @defgroup GPIO_Private_Defines
//   44   * @{
//   45   */
//   46 
//   47 /* ------------ RCC registers bit address in the alias region ----------------*/
//   48 #define AFIO_OFFSET                 (AFIO_BASE - PERIPH_BASE)
//   49 
//   50 /* --- EVENTCR Register -----*/
//   51 
//   52 /* Alias word address of EVOE bit */
//   53 #define EVCR_OFFSET                 (AFIO_OFFSET + 0x00)
//   54 #define EVOE_BitNumber              ((uint8_t)0x07)
//   55 #define EVCR_EVOE_BB                (PERIPH_BB_BASE + (EVCR_OFFSET * 32) + (EVOE_BitNumber * 4))
//   56 
//   57 
//   58 /* ---  MAPR Register ---*/ 
//   59 /* Alias word address of MII_RMII_SEL bit */ 
//   60 #define MAPR_OFFSET                 (AFIO_OFFSET + 0x04) 
//   61 #define MII_RMII_SEL_BitNumber      ((u8)0x17) 
//   62 #define MAPR_MII_RMII_SEL_BB        (PERIPH_BB_BASE + (MAPR_OFFSET * 32) + (MII_RMII_SEL_BitNumber * 4))
//   63 
//   64 
//   65 #define EVCR_PORTPINCONFIG_MASK     ((uint16_t)0xFF80)
//   66 #define LSB_MASK                    ((uint16_t)0xFFFF)
//   67 #define DBGAFR_POSITION_MASK        ((uint32_t)0x000F0000)
//   68 #define DBGAFR_SWJCFG_MASK          ((uint32_t)0xF0FFFFFF)
//   69 #define DBGAFR_LOCATION_MASK        ((uint32_t)0x00200000)
//   70 #define DBGAFR_NUMBITS_MASK         ((uint32_t)0x00100000)
//   71 /**
//   72   * @}
//   73   */
//   74 
//   75 /** @defgroup GPIO_Private_Macros
//   76   * @{
//   77   */
//   78 
//   79 /**
//   80   * @}
//   81   */
//   82 
//   83 /** @defgroup GPIO_Private_Variables
//   84   * @{
//   85   */
//   86 
//   87 /**
//   88   * @}
//   89   */
//   90 
//   91 /** @defgroup GPIO_Private_FunctionPrototypes
//   92   * @{
//   93   */
//   94 
//   95 /**
//   96   * @}
//   97   */
//   98 
//   99 /** @defgroup GPIO_Private_Functions
//  100   * @{
//  101   */
//  102 
//  103 /**
//  104   * @brief  Deinitializes the GPIOx peripheral registers to their default reset values.
//  105   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  106   * @retval None
//  107   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function GPIO_DeInit
        THUMB
//  108 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
//  109 {
GPIO_DeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  110   /* Check the parameters */
//  111   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  112   
//  113   if (GPIOx == GPIOA)
        LDR.N    R1,??DataTable5  ;; 0x40010800
        CMP      R0,R1
        BNE.N    ??GPIO_DeInit_0
//  114   {
//  115     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOA, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  116     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOA, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+4
        B.N      ??GPIO_DeInit_1
//  117   }
//  118   else if (GPIOx == GPIOB)
??GPIO_DeInit_0:
        LDR.N    R1,??DataTable5_1  ;; 0x40010c00
        CMP      R0,R1
        BNE.N    ??GPIO_DeInit_2
//  119   {
//  120     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOB, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+8
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  121     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOB, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+8
        B.N      ??GPIO_DeInit_1
//  122   }
//  123   else if (GPIOx == GPIOC)
??GPIO_DeInit_2:
        LDR.N    R1,??DataTable5_2  ;; 0x40011000
        CMP      R0,R1
        BNE.N    ??GPIO_DeInit_3
//  124   {
//  125     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOC, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+16
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  126     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOC, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+16
        B.N      ??GPIO_DeInit_1
//  127   }
//  128   else if (GPIOx == GPIOD)
??GPIO_DeInit_3:
        LDR.N    R1,??DataTable5_3  ;; 0x40011400
        CMP      R0,R1
        BNE.N    ??GPIO_DeInit_4
//  129   {
//  130     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOD, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+32
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  131     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOD, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+32
        B.N      ??GPIO_DeInit_1
//  132   }    
//  133   else if (GPIOx == GPIOE)
??GPIO_DeInit_4:
        LDR.N    R1,??DataTable5_4  ;; 0x40011800
        CMP      R0,R1
        BNE.N    ??GPIO_DeInit_5
//  134   {
//  135     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOE, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+64
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  136     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOE, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+64
        B.N      ??GPIO_DeInit_1
//  137   } 
//  138   else if (GPIOx == GPIOF)
??GPIO_DeInit_5:
        LDR.N    R1,??DataTable5_5  ;; 0x40011c00
        CMP      R0,R1
        BNE.N    ??GPIO_DeInit_6
//  139   {
//  140     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOF, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+128
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  141     RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOF, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+128
        B.N      ??GPIO_DeInit_1
//  142   }
//  143   else
//  144   {
//  145     if (GPIOx == GPIOG)
??GPIO_DeInit_6:
        LDR.N    R1,??DataTable5_6  ;; 0x40012000
        CMP      R0,R1
        BNE.N    ??GPIO_DeInit_7
//  146     {
//  147       RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOG, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+256
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  148       RCC_APB2PeriphResetCmd(RCC_APB2Periph_GPIOG, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+256
??GPIO_DeInit_1:
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall RCC_APB2PeriphResetCmd
        B.W      RCC_APB2PeriphResetCmd
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  149     }
//  150   }
//  151 }
??GPIO_DeInit_7:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//  152 
//  153 /**
//  154   * @brief  Deinitializes the Alternate Functions (remap, event control
//  155   *   and EXTI configuration) registers to their default reset values.
//  156   * @param  None
//  157   * @retval None
//  158   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function GPIO_AFIODeInit
        THUMB
//  159 void GPIO_AFIODeInit(void)
//  160 {
GPIO_AFIODeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  161   RCC_APB2PeriphResetCmd(RCC_APB2Periph_AFIO, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  162   RCC_APB2PeriphResetCmd(RCC_APB2Periph_AFIO, DISABLE);
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall RCC_APB2PeriphResetCmd
        B.W      RCC_APB2PeriphResetCmd
          CFI EndBlock cfiBlock1
//  163 }
//  164 
//  165 /**
//  166   * @brief  Initializes the GPIOx peripheral according to the specified
//  167   *         parameters in the GPIO_InitStruct.
//  168   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  169   * @param  GPIO_InitStruct: pointer to a GPIO_InitTypeDef structure that
//  170   *         contains the configuration information for the specified GPIO peripheral.
//  171   * @retval None
//  172   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function GPIO_Init
          CFI NoCalls
        THUMB
//  173 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct)
//  174 {
GPIO_Init:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  175   uint32_t currentmode = 0x00, currentpin = 0x00, pinpos = 0x00, pos = 0x00;
//  176   uint32_t tmpreg = 0x00, pinmask = 0x00;
//  177   /* Check the parameters */
//  178   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  179   assert_param(IS_GPIO_MODE(GPIO_InitStruct->GPIO_Mode));
//  180   assert_param(IS_GPIO_PIN(GPIO_InitStruct->GPIO_Pin));  
//  181   
//  182 /*---------------------------- GPIO Mode Configuration -----------------------*/
//  183   currentmode = ((uint32_t)GPIO_InitStruct->GPIO_Mode) & ((uint32_t)0x0F);
        LDRB     R4,[R1, #+3]
        MOVS     R2,#+0
        AND      R3,R4,#0xF
//  184   if ((((uint32_t)GPIO_InitStruct->GPIO_Mode) & ((uint32_t)0x10)) != 0x00)
        LSLS     R4,R4,#+27
        ITT      MI 
        LDRBMI   R4,[R1, #+2]
        ORRMI    R3,R4,R3
//  185   { 
//  186     /* Check the parameters */
//  187     assert_param(IS_GPIO_SPEED(GPIO_InitStruct->GPIO_Speed));
//  188     /* Output mode */
//  189     currentmode |= (uint32_t)GPIO_InitStruct->GPIO_Speed;
//  190   }
//  191 /*---------------------------- GPIO CRL Configuration ------------------------*/
//  192   /* Configure the eight low port pins */
//  193   if (((uint32_t)GPIO_InitStruct->GPIO_Pin & ((uint32_t)0x00FF)) != 0x00)
        LDRH     R4,[R1, #+0]
        UXTB     R5,R4
        CBZ.N    R5,??GPIO_Init_0
//  194   {
//  195     tmpreg = GPIOx->CRL;
        LDR      R12,[R0, #+0]
//  196     for (pinpos = 0x00; pinpos < 0x08; pinpos++)
        MOVS     R5,#+1
        MOVS     R6,#+15
//  197     {
//  198       pos = ((uint32_t)0x01) << pinpos;
??GPIO_Init_1:
        LSL      R7,R5,R2
//  199       /* Get the port pins position */
//  200       currentpin = (GPIO_InitStruct->GPIO_Pin) & pos;
//  201       if (currentpin == pos)
        AND      R8,R7,R4
        CMP      R8,R7
        BNE.N    ??GPIO_Init_2
//  202       {
//  203         pos = pinpos << 2;
        LSL      LR,R2,#+2
//  204         /* Clear the corresponding low control register bits */
//  205         pinmask = ((uint32_t)0x0F) << pos;
//  206         tmpreg &= ~pinmask;
//  207         /* Write the mode configuration in the corresponding bits */
//  208         tmpreg |= (currentmode << pos);
        LSL      R8,R6,LR
        BIC      R12,R12,R8
        LSL      LR,R3,LR
        ORR      R12,LR,R12
//  209         /* Reset the corresponding ODR bit */
//  210         if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPD)
        LDRB     LR,[R1, #+3]
        CMP      LR,#+40
        IT       EQ 
        STREQ    R7,[R0, #+20]
//  211         {
//  212           GPIOx->BRR = (((uint32_t)0x01) << pinpos);
        BEQ.N    ??GPIO_Init_2
//  213         }
//  214         else
//  215         {
//  216           /* Set the corresponding ODR bit */
//  217           if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPU)
        CMP      LR,#+72
        IT       EQ 
        STREQ    R7,[R0, #+16]
//  218           {
//  219             GPIOx->BSRR = (((uint32_t)0x01) << pinpos);
//  220           }
//  221         }
//  222       }
//  223     }
??GPIO_Init_2:
        ADDS     R2,R2,#+1
        CMP      R2,#+8
        BCC.N    ??GPIO_Init_1
//  224     GPIOx->CRL = tmpreg;
        STR      R12,[R0, #+0]
//  225   }
//  226 /*---------------------------- GPIO CRH Configuration ------------------------*/
//  227   /* Configure the eight high port pins */
//  228   if (GPIO_InitStruct->GPIO_Pin > 0x00FF)
??GPIO_Init_0:
        CMP      R4,#+255
        BLE.N    ??GPIO_Init_3
//  229   {
//  230     tmpreg = GPIOx->CRH;
        LDR      R12,[R0, #+4]
//  231     for (pinpos = 0x00; pinpos < 0x08; pinpos++)
        MOVS     R2,#+0
        MOVS     R5,#+1
        MOVS     R6,#+15
//  232     {
//  233       pos = (((uint32_t)0x01) << (pinpos + 0x08));
??GPIO_Init_4:
        ADD      R7,R2,#+8
        LSL      R7,R5,R7
//  234       /* Get the port pins position */
//  235       currentpin = ((GPIO_InitStruct->GPIO_Pin) & pos);
//  236       if (currentpin == pos)
        AND      R8,R7,R4
        CMP      R8,R7
        BNE.N    ??GPIO_Init_5
//  237       {
//  238         pos = pinpos << 2;
        LSL      LR,R2,#+2
//  239         /* Clear the corresponding high control register bits */
//  240         pinmask = ((uint32_t)0x0F) << pos;
//  241         tmpreg &= ~pinmask;
//  242         /* Write the mode configuration in the corresponding bits */
//  243         tmpreg |= (currentmode << pos);
        LSL      R8,R6,LR
        BIC      R12,R12,R8
        LSL      LR,R3,LR
        ORR      R12,LR,R12
//  244         /* Reset the corresponding ODR bit */
//  245         if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPD)
        LDRB     LR,[R1, #+3]
        CMP      LR,#+40
        IT       EQ 
        STREQ    R7,[R0, #+20]
//  246         {
//  247           GPIOx->BRR = (((uint32_t)0x01) << (pinpos + 0x08));
//  248         }
//  249         /* Set the corresponding ODR bit */
//  250         if (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_IPU)
        LDRB     LR,[R1, #+3]
        CMP      LR,#+72
        IT       EQ 
        STREQ    R7,[R0, #+16]
//  251         {
//  252           GPIOx->BSRR = (((uint32_t)0x01) << (pinpos + 0x08));
//  253         }
//  254       }
//  255     }
??GPIO_Init_5:
        ADDS     R2,R2,#+1
        CMP      R2,#+8
        BCC.N    ??GPIO_Init_4
//  256     GPIOx->CRH = tmpreg;
        STR      R12,[R0, #+4]
//  257   }
//  258 }
??GPIO_Init_3:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock2
//  259 
//  260 /**
//  261   * @brief  Fills each GPIO_InitStruct member with its default value.
//  262   * @param  GPIO_InitStruct : pointer to a GPIO_InitTypeDef structure which will
//  263   *         be initialized.
//  264   * @retval None
//  265   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function GPIO_StructInit
          CFI NoCalls
        THUMB
//  266 void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct)
//  267 {
//  268   /* Reset GPIO init structure parameters values */
//  269   GPIO_InitStruct->GPIO_Pin  = GPIO_Pin_All;
GPIO_StructInit:
        MOVW     R1,#+65535
        STRH     R1,[R0, #+0]
//  270   GPIO_InitStruct->GPIO_Speed = GPIO_Speed_2MHz;
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
//  271   GPIO_InitStruct->GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R1,#+4
        STRB     R1,[R0, #+3]
//  272 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  273 
//  274 /**
//  275   * @brief  Reads the specified input port pin.
//  276   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  277   * @param  GPIO_Pin:  specifies the port bit to read.
//  278   *   This parameter can be GPIO_Pin_x where x can be (0..15).
//  279   * @retval The input port pin value.
//  280   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function GPIO_ReadInputDataBit
          CFI NoCalls
        THUMB
//  281 uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  282 {
//  283   uint8_t bitstatus = 0x00;
//  284   
//  285   /* Check the parameters */
//  286   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  287   assert_param(IS_GET_GPIO_PIN(GPIO_Pin)); 
//  288   
//  289   if ((GPIOx->IDR & GPIO_Pin) != (uint32_t)Bit_RESET)
GPIO_ReadInputDataBit:
        LDR      R0,[R0, #+8]
        MOVS     R2,#+0
        TST      R0,R1
        IT       NE 
        MOVNE    R2,#+1
//  290   {
//  291     bitstatus = (uint8_t)Bit_SET;
//  292   }
//  293   else
//  294   {
//  295     bitstatus = (uint8_t)Bit_RESET;
//  296   }
//  297   return bitstatus;
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  298 }
//  299 
//  300 /**
//  301   * @brief  Reads the specified GPIO input data port.
//  302   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  303   * @retval GPIO input data port value.
//  304   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function GPIO_ReadInputData
          CFI NoCalls
        THUMB
//  305 uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
//  306 {
//  307   /* Check the parameters */
//  308   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  309   
//  310   return ((uint16_t)GPIOx->IDR);
GPIO_ReadInputData:
        LDR      R0,[R0, #+8]
        UXTH     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  311 }
//  312 
//  313 /**
//  314   * @brief  Reads the specified output data port bit.
//  315   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  316   * @param  GPIO_Pin:  specifies the port bit to read.
//  317   *   This parameter can be GPIO_Pin_x where x can be (0..15).
//  318   * @retval The output port pin value.
//  319   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function GPIO_ReadOutputDataBit
          CFI NoCalls
        THUMB
//  320 uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  321 {
//  322   uint8_t bitstatus = 0x00;
//  323   /* Check the parameters */
//  324   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  325   assert_param(IS_GET_GPIO_PIN(GPIO_Pin)); 
//  326   
//  327   if ((GPIOx->ODR & GPIO_Pin) != (uint32_t)Bit_RESET)
GPIO_ReadOutputDataBit:
        LDR      R0,[R0, #+12]
        MOVS     R2,#+0
        TST      R0,R1
        IT       NE 
        MOVNE    R2,#+1
//  328   {
//  329     bitstatus = (uint8_t)Bit_SET;
//  330   }
//  331   else
//  332   {
//  333     bitstatus = (uint8_t)Bit_RESET;
//  334   }
//  335   return bitstatus;
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  336 }
//  337 
//  338 /**
//  339   * @brief  Reads the specified GPIO output data port.
//  340   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  341   * @retval GPIO output data port value.
//  342   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function GPIO_ReadOutputData
          CFI NoCalls
        THUMB
//  343 uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
//  344 {
//  345   /* Check the parameters */
//  346   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  347     
//  348   return ((uint16_t)GPIOx->ODR);
GPIO_ReadOutputData:
        LDR      R0,[R0, #+12]
        UXTH     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  349 }
//  350 
//  351 /**
//  352   * @brief  Sets the selected data port bits.
//  353   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  354   * @param  GPIO_Pin: specifies the port bits to be written.
//  355   *   This parameter can be any combination of GPIO_Pin_x where x can be (0..15).
//  356   * @retval None
//  357   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function GPIO_SetBits
          CFI NoCalls
        THUMB
//  358 void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  359 {
//  360   /* Check the parameters */
//  361   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  362   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  363   
//  364   GPIOx->BSRR = GPIO_Pin;
GPIO_SetBits:
        STR      R1,[R0, #+16]
//  365 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  366 
//  367 /**
//  368   * @brief  Clears the selected data port bits.
//  369   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  370   * @param  GPIO_Pin: specifies the port bits to be written.
//  371   *   This parameter can be any combination of GPIO_Pin_x where x can be (0..15).
//  372   * @retval None
//  373   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function GPIO_ResetBits
          CFI NoCalls
        THUMB
//  374 void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  375 {
//  376   /* Check the parameters */
//  377   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  378   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  379   
//  380   GPIOx->BRR = GPIO_Pin;
GPIO_ResetBits:
        STR      R1,[R0, #+20]
//  381 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  382 
//  383 /**
//  384   * @brief  Sets or clears the selected data port bit.
//  385   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  386   * @param  GPIO_Pin: specifies the port bit to be written.
//  387   *   This parameter can be one of GPIO_Pin_x where x can be (0..15).
//  388   * @param  BitVal: specifies the value to be written to the selected bit.
//  389   *   This parameter can be one of the BitAction enum values:
//  390   *     @arg Bit_RESET: to clear the port pin
//  391   *     @arg Bit_SET: to set the port pin
//  392   * @retval None
//  393   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function GPIO_WriteBit
          CFI NoCalls
        THUMB
//  394 void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal)
//  395 {
//  396   /* Check the parameters */
//  397   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  398   assert_param(IS_GET_GPIO_PIN(GPIO_Pin));
//  399   assert_param(IS_GPIO_BIT_ACTION(BitVal)); 
//  400   
//  401   if (BitVal != Bit_RESET)
GPIO_WriteBit:
        CBZ.N    R2,??GPIO_WriteBit_0
//  402   {
//  403     GPIOx->BSRR = GPIO_Pin;
        STR      R1,[R0, #+16]
        BX       LR
//  404   }
//  405   else
//  406   {
//  407     GPIOx->BRR = GPIO_Pin;
??GPIO_WriteBit_0:
        STR      R1,[R0, #+20]
//  408   }
//  409 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  410 
//  411 /**
//  412   * @brief  Writes data to the specified GPIO data port.
//  413   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  414   * @param  PortVal: specifies the value to be written to the port output data register.
//  415   * @retval None
//  416   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function GPIO_Write
          CFI NoCalls
        THUMB
//  417 void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal)
//  418 {
//  419   /* Check the parameters */
//  420   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  421   
//  422   GPIOx->ODR = PortVal;
GPIO_Write:
        STR      R1,[R0, #+12]
//  423 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  424 
//  425 /**
//  426   * @brief  Locks GPIO Pins configuration registers.
//  427   * @param  GPIOx: where x can be (A..G) to select the GPIO peripheral.
//  428   * @param  GPIO_Pin: specifies the port bit to be written.
//  429   *   This parameter can be any combination of GPIO_Pin_x where x can be (0..15).
//  430   * @retval None
//  431   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function GPIO_PinLockConfig
          CFI NoCalls
        THUMB
//  432 void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  433 {
//  434   uint32_t tmp = 0x00010000;
//  435   
//  436   /* Check the parameters */
//  437   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
//  438   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  439   
//  440   tmp |= GPIO_Pin;
GPIO_PinLockConfig:
        ORR      R2,R1,#0x10000
//  441   /* Set LCKK bit */
//  442   GPIOx->LCKR = tmp;
        STR      R2,[R0, #+24]
//  443   /* Reset LCKK bit */
//  444   GPIOx->LCKR =  GPIO_Pin;
        STR      R1,[R0, #+24]
//  445   /* Set LCKK bit */
//  446   GPIOx->LCKR = tmp;
        STR      R2,[R0, #+24]
//  447   /* Read LCKK bit*/
//  448   tmp = GPIOx->LCKR;
        LDR      R1,[R0, #+24]
//  449   /* Read LCKK bit*/
//  450   tmp = GPIOx->LCKR;
        LDR      R0,[R0, #+24]
//  451 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  452 
//  453 /**
//  454   * @brief  Selects the GPIO pin used as Event output.
//  455   * @param  GPIO_PortSource: selects the GPIO port to be used as source
//  456   *   for Event output.
//  457   *   This parameter can be GPIO_PortSourceGPIOx where x can be (A..E).
//  458   * @param  GPIO_PinSource: specifies the pin for the Event output.
//  459   *   This parameter can be GPIO_PinSourcex where x can be (0..15).
//  460   * @retval None
//  461   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function GPIO_EventOutputConfig
          CFI NoCalls
        THUMB
//  462 void GPIO_EventOutputConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource)
//  463 {
//  464   uint32_t tmpreg = 0x00;
//  465   /* Check the parameters */
//  466   assert_param(IS_GPIO_EVENTOUT_PORT_SOURCE(GPIO_PortSource));
//  467   assert_param(IS_GPIO_PIN_SOURCE(GPIO_PinSource));
//  468     
//  469   tmpreg = AFIO->EVCR;
GPIO_EventOutputConfig:
        LDR.N    R2,??DataTable5_7  ;; 0x40010000
        LDR      R3,[R2, #+0]
//  470   /* Clear the PORT[6:4] and PIN[3:0] bits */
//  471   tmpreg &= EVCR_PORTPINCONFIG_MASK;
//  472   tmpreg |= (uint32_t)GPIO_PortSource << 0x04;
//  473   tmpreg |= GPIO_PinSource;
//  474   AFIO->EVCR = tmpreg;
        MOVW     R12,#+65408
        AND      R3,R12,R3
        ORR      R0,R3,R0, LSL #+4
        ORRS     R0,R1,R0
        STR      R0,[R2, #+0]
//  475 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  476 
//  477 /**
//  478   * @brief  Enables or disables the Event Output.
//  479   * @param  NewState: new state of the Event output.
//  480   *   This parameter can be: ENABLE or DISABLE.
//  481   * @retval None
//  482   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function GPIO_EventOutputCmd
          CFI NoCalls
        THUMB
//  483 void GPIO_EventOutputCmd(FunctionalState NewState)
//  484 {
//  485   /* Check the parameters */
//  486   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  487   
//  488   *(__IO uint32_t *) EVCR_EVOE_BB = (uint32_t)NewState;
GPIO_EventOutputCmd:
        LDR.N    R1,??DataTable5_8  ;; 0x4220001c
        STR      R0,[R1, #+0]
//  489 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  490 
//  491 /**
//  492   * @brief  Changes the mapping of the specified pin.
//  493   * @param  GPIO_Remap: selects the pin to remap.
//  494   *   This parameter can be one of the following values:
//  495   *     @arg GPIO_Remap_SPI1             : SPI1 Alternate Function mapping
//  496   *     @arg GPIO_Remap_I2C1             : I2C1 Alternate Function mapping
//  497   *     @arg GPIO_Remap_USART1           : USART1 Alternate Function mapping
//  498   *     @arg GPIO_Remap_USART2           : USART2 Alternate Function mapping
//  499   *     @arg GPIO_PartialRemap_USART3    : USART3 Partial Alternate Function mapping
//  500   *     @arg GPIO_FullRemap_USART3       : USART3 Full Alternate Function mapping
//  501   *     @arg GPIO_PartialRemap_TIM1      : TIM1 Partial Alternate Function mapping
//  502   *     @arg GPIO_FullRemap_TIM1         : TIM1 Full Alternate Function mapping
//  503   *     @arg GPIO_PartialRemap1_TIM2     : TIM2 Partial1 Alternate Function mapping
//  504   *     @arg GPIO_PartialRemap2_TIM2     : TIM2 Partial2 Alternate Function mapping
//  505   *     @arg GPIO_FullRemap_TIM2         : TIM2 Full Alternate Function mapping
//  506   *     @arg GPIO_PartialRemap_TIM3      : TIM3 Partial Alternate Function mapping
//  507   *     @arg GPIO_FullRemap_TIM3         : TIM3 Full Alternate Function mapping
//  508   *     @arg GPIO_Remap_TIM4             : TIM4 Alternate Function mapping
//  509   *     @arg GPIO_Remap1_CAN1            : CAN1 Alternate Function mapping
//  510   *     @arg GPIO_Remap2_CAN1            : CAN1 Alternate Function mapping
//  511   *     @arg GPIO_Remap_PD01             : PD01 Alternate Function mapping
//  512   *     @arg GPIO_Remap_TIM5CH4_LSI      : LSI connected to TIM5 Channel4 input capture for calibration
//  513   *     @arg GPIO_Remap_ADC1_ETRGINJ     : ADC1 External Trigger Injected Conversion remapping
//  514   *     @arg GPIO_Remap_ADC1_ETRGREG     : ADC1 External Trigger Regular Conversion remapping
//  515   *     @arg GPIO_Remap_ADC2_ETRGINJ     : ADC2 External Trigger Injected Conversion remapping
//  516   *     @arg GPIO_Remap_ADC2_ETRGREG     : ADC2 External Trigger Regular Conversion remapping
//  517   *     @arg GPIO_Remap_ETH              : Ethernet remapping (only for Connectivity line devices)
//  518   *     @arg GPIO_Remap_CAN2             : CAN2 remapping (only for Connectivity line devices)
//  519   *     @arg GPIO_Remap_SWJ_NoJTRST      : Full SWJ Enabled (JTAG-DP + SW-DP) but without JTRST
//  520   *     @arg GPIO_Remap_SWJ_JTAGDisable  : JTAG-DP Disabled and SW-DP Enabled
//  521   *     @arg GPIO_Remap_SWJ_Disable      : Full SWJ Disabled (JTAG-DP + SW-DP)
//  522   *     @arg GPIO_Remap_SPI3             : SPI3/I2S3 Alternate Function mapping (only for Connectivity line devices)
//  523   *                                        When the SPI3/I2S3 is remapped using this function, the SWJ is configured
//  524   *                                        to Full SWJ Enabled (JTAG-DP + SW-DP) but without JTRST.   
//  525   *     @arg GPIO_Remap_TIM2ITR1_PTP_SOF : Ethernet PTP output or USB OTG SOF (Start of Frame) connected
//  526   *                                        to TIM2 Internal Trigger 1 for calibration (only for Connectivity line devices)
//  527   *                                        If the GPIO_Remap_TIM2ITR1_PTP_SOF is enabled the TIM2 ITR1 is connected to 
//  528   *                                        Ethernet PTP output. When Reset TIM2 ITR1 is connected to USB OTG SOF output.    
//  529   *     @arg GPIO_Remap_PTP_PPS          : Ethernet MAC PPS_PTS output on PB05 (only for Connectivity line devices)
//  530   *     @arg GPIO_Remap_TIM15            : TIM15 Alternate Function mapping (only for Value line devices)
//  531   *     @arg GPIO_Remap_TIM16            : TIM16 Alternate Function mapping (only for Value line devices)
//  532   *     @arg GPIO_Remap_TIM17            : TIM17 Alternate Function mapping (only for Value line devices)
//  533   *     @arg GPIO_Remap_CEC              : CEC Alternate Function mapping (only for Value line devices)
//  534   *     @arg GPIO_Remap_TIM1_DMA         : TIM1 DMA requests mapping (only for Value line devices)
//  535   *     @arg GPIO_Remap_TIM9             : TIM9 Alternate Function mapping (only for XL-density devices)
//  536   *     @arg GPIO_Remap_TIM10            : TIM10 Alternate Function mapping (only for XL-density devices)
//  537   *     @arg GPIO_Remap_TIM11            : TIM11 Alternate Function mapping (only for XL-density devices)
//  538   *     @arg GPIO_Remap_TIM13            : TIM13 Alternate Function mapping (only for High density Value line and XL-density devices)
//  539   *     @arg GPIO_Remap_TIM14            : TIM14 Alternate Function mapping (only for High density Value line and XL-density devices)
//  540   *     @arg GPIO_Remap_FSMC_NADV        : FSMC_NADV Alternate Function mapping (only for High density Value line and XL-density devices)
//  541   *     @arg GPIO_Remap_TIM67_DAC_DMA    : TIM6/TIM7 and DAC DMA requests remapping (only for High density Value line devices)
//  542   *     @arg GPIO_Remap_TIM12            : TIM12 Alternate Function mapping (only for High density Value line devices)
//  543   *     @arg GPIO_Remap_MISC             : Miscellaneous Remap (DMA2 Channel5 Position and DAC Trigger remapping, 
//  544   *                                        only for High density Value line devices)     
//  545   * @param  NewState: new state of the port pin remapping.
//  546   *   This parameter can be: ENABLE or DISABLE.
//  547   * @retval None
//  548   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function GPIO_PinRemapConfig
          CFI NoCalls
        THUMB
//  549 void GPIO_PinRemapConfig(uint32_t GPIO_Remap, FunctionalState NewState)
//  550 {
GPIO_PinRemapConfig:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  551   uint32_t tmp = 0x00, tmp1 = 0x00, tmpreg = 0x00, tmpmask = 0x00;
//  552 
//  553   /* Check the parameters */
//  554   assert_param(IS_GPIO_REMAP(GPIO_Remap));
//  555   assert_param(IS_FUNCTIONAL_STATE(NewState));  
//  556   
//  557   if((GPIO_Remap & 0x80000000) == 0x80000000)
        LDR.N    R2,??DataTable5_9  ;; 0x40010004
        CMP      R0,#+0
        ITE      MI 
        LDRMI    R4,[R2, #+24]
        LDRPL    R4,[R2, #+0]
//  558   {
//  559     tmpreg = AFIO->MAPR2;
//  560   }
//  561   else
//  562   {
//  563     tmpreg = AFIO->MAPR;
//  564   }
//  565 
//  566   tmpmask = (GPIO_Remap & DBGAFR_POSITION_MASK) >> 0x10;
//  567   tmp = GPIO_Remap & LSB_MASK;
//  568 
//  569   if ((GPIO_Remap & (DBGAFR_LOCATION_MASK | DBGAFR_NUMBITS_MASK)) == (DBGAFR_LOCATION_MASK | DBGAFR_NUMBITS_MASK))
        AND      R6,R0,#0x300000
        CMP      R6,#+3145728
        UBFX     R5,R0,#+16,#+4
        UXTH     R3,R0
        BNE.N    ??GPIO_PinRemapConfig_0
//  570   {
//  571     tmpreg &= DBGAFR_SWJCFG_MASK;
//  572     AFIO->MAPR &= DBGAFR_SWJCFG_MASK;
        LDR      R5,[R2, #+0]
        BIC      R5,R5,#0xF000000
        BIC      R4,R4,#0xF000000
        STR      R5,[R2, #+0]
        B.N      ??GPIO_PinRemapConfig_1
//  573   }
//  574   else if ((GPIO_Remap & DBGAFR_NUMBITS_MASK) == DBGAFR_NUMBITS_MASK)
??GPIO_PinRemapConfig_0:
        LSLS     R6,R0,#+11
        BPL.N    ??GPIO_PinRemapConfig_2
//  575   {
//  576     tmp1 = ((uint32_t)0x03) << tmpmask;
//  577     tmpreg &= ~tmp1;
//  578     tmpreg |= ~DBGAFR_SWJCFG_MASK;
        MOVS     R6,#+3
        LSL      R5,R6,R5
        B.N      ??GPIO_PinRemapConfig_3
//  579   }
//  580   else
//  581   {
//  582     tmpreg &= ~(tmp << ((GPIO_Remap >> 0x15)*0x10));
//  583     tmpreg |= ~DBGAFR_SWJCFG_MASK;
??GPIO_PinRemapConfig_2:
        LSRS     R5,R0,#+21
        LSLS     R5,R5,#+4
        LSL      R5,R3,R5
??GPIO_PinRemapConfig_3:
        BICS     R4,R4,R5
        ORR      R4,R4,#0xF000000
//  584   }
//  585 
//  586   if (NewState != DISABLE)
??GPIO_PinRemapConfig_1:
        CBZ.N    R1,??GPIO_PinRemapConfig_4
//  587   {
//  588     tmpreg |= (tmp << ((GPIO_Remap >> 0x15)*0x10));
        LSRS     R1,R0,#+21
        LSLS     R1,R1,#+4
        LSL      R1,R3,R1
        ORRS     R4,R1,R4
//  589   }
//  590 
//  591   if((GPIO_Remap & 0x80000000) == 0x80000000)
??GPIO_PinRemapConfig_4:
        CMP      R0,#+0
        ITE      MI 
        STRMI    R4,[R2, #+24]
        STRPL    R4,[R2, #+0]
//  592   {
//  593     AFIO->MAPR2 = tmpreg;
//  594   }
//  595   else
//  596   {
//  597     AFIO->MAPR = tmpreg;
//  598   }  
//  599 }
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  600 
//  601 /**
//  602   * @brief  Selects the GPIO pin used as EXTI Line.
//  603   * @param  GPIO_PortSource: selects the GPIO port to be used as source for EXTI lines.
//  604   *   This parameter can be GPIO_PortSourceGPIOx where x can be (A..G).
//  605   * @param  GPIO_PinSource: specifies the EXTI line to be configured.
//  606   *   This parameter can be GPIO_PinSourcex where x can be (0..15).
//  607   * @retval None
//  608   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function GPIO_EXTILineConfig
          CFI NoCalls
        THUMB
//  609 void GPIO_EXTILineConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource)
//  610 {
GPIO_EXTILineConfig:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  611   uint32_t tmp = 0x00;
//  612   /* Check the parameters */
//  613   assert_param(IS_GPIO_EXTI_PORT_SOURCE(GPIO_PortSource));
//  614   assert_param(IS_GPIO_PIN_SOURCE(GPIO_PinSource));
//  615   
//  616   tmp = ((uint32_t)0x0F) << (0x04 * (GPIO_PinSource & (uint8_t)0x03));
//  617   AFIO->EXTICR[GPIO_PinSource >> 0x02] &= ~tmp;
        AND      R2,R1,#0x3
        BIC      R1,R1,#0x3
        LDR.N    R3,??DataTable5_10  ;; 0x40010008
        LSLS     R2,R2,#+2
        LDR      R4,[R1, R3]
        MOVS     R5,#+15
        LSLS     R5,R5,R2
        BICS     R4,R4,R5
        STR      R4,[R1, R3]
//  618   AFIO->EXTICR[GPIO_PinSource >> 0x02] |= (((uint32_t)GPIO_PortSource) << (0x04 * (GPIO_PinSource & (uint8_t)0x03)));
        LSLS     R0,R0,R2
        LDR      R4,[R1, R3]
        ORRS     R0,R0,R4
        STR      R0,[R1, R3]
//  619 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  620 
//  621 /**
//  622   * @brief  Selects the Ethernet media interface.
//  623   * @note   This function applies only to STM32 Connectivity line devices.  
//  624   * @param  GPIO_ETH_MediaInterface: specifies the Media Interface mode.
//  625   *   This parameter can be one of the following values:
//  626   *     @arg GPIO_ETH_MediaInterface_MII: MII mode
//  627   *     @arg GPIO_ETH_MediaInterface_RMII: RMII mode    
//  628   * @retval None
//  629   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function GPIO_ETH_MediaInterfaceConfig
          CFI NoCalls
        THUMB
//  630 void GPIO_ETH_MediaInterfaceConfig(uint32_t GPIO_ETH_MediaInterface) 
//  631 { 
//  632   assert_param(IS_GPIO_ETH_MEDIA_INTERFACE(GPIO_ETH_MediaInterface)); 
//  633 
//  634   /* Configure MII_RMII selection bit */ 
//  635   *(__IO uint32_t *) MAPR_MII_RMII_SEL_BB = GPIO_ETH_MediaInterface; 
GPIO_ETH_MediaInterfaceConfig:
        LDR.N    R1,??DataTable5_11  ;; 0x422000dc
        STR      R0,[R1, #+0]
//  636 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x40011400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x40011800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x40011c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x40012000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x40010000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x4220001c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x40010004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x40010008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x422000dc

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  637   
//  638 /**
//  639   * @}
//  640   */
//  641 
//  642 /**
//  643   * @}
//  644   */
//  645 
//  646 /**
//  647   * @}
//  648   */
//  649 
//  650 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 666 bytes in section .text
// 
// 666 bytes of CODE memory
//
//Errors: none
//Warnings: none
