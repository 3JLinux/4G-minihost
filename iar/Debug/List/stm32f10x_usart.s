///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:36
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_usart.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_usart.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_usart.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_APB2PeriphResetCmd
        EXTERN RCC_GetClocksFreq

        PUBLIC USART_ClearFlag
        PUBLIC USART_ClearITPendingBit
        PUBLIC USART_ClockInit
        PUBLIC USART_ClockStructInit
        PUBLIC USART_Cmd
        PUBLIC USART_DMACmd
        PUBLIC USART_DeInit
        PUBLIC USART_GetFlagStatus
        PUBLIC USART_GetITStatus
        PUBLIC USART_HalfDuplexCmd
        PUBLIC USART_ITConfig
        PUBLIC USART_Init
        PUBLIC USART_IrDACmd
        PUBLIC USART_IrDAConfig
        PUBLIC USART_LINBreakDetectLengthConfig
        PUBLIC USART_LINCmd
        PUBLIC USART_OneBitMethodCmd
        PUBLIC USART_OverSampling8Cmd
        PUBLIC USART_ReceiveData
        PUBLIC USART_ReceiverWakeUpCmd
        PUBLIC USART_SendBreak
        PUBLIC USART_SendData
        PUBLIC USART_SetAddress
        PUBLIC USART_SetGuardTime
        PUBLIC USART_SetPrescaler
        PUBLIC USART_SmartCardCmd
        PUBLIC USART_SmartCardNACKCmd
        PUBLIC USART_StructInit
        PUBLIC USART_WakeUpConfig
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_usart.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_usart.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the USART firmware functions.
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
//   23 #include "stm32f10x_usart.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup USART 
//   31   * @brief USART driver modules
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup USART_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 
//   39 /**
//   40   * @}
//   41   */
//   42 
//   43 /** @defgroup USART_Private_Defines
//   44   * @{
//   45   */
//   46 
//   47 #define CR1_UE_Set                ((uint16_t)0x2000)  /*!< USART Enable Mask */
//   48 #define CR1_UE_Reset              ((uint16_t)0xDFFF)  /*!< USART Disable Mask */
//   49 
//   50 #define CR1_WAKE_Mask             ((uint16_t)0xF7FF)  /*!< USART WakeUp Method Mask */
//   51 
//   52 #define CR1_RWU_Set               ((uint16_t)0x0002)  /*!< USART mute mode Enable Mask */
//   53 #define CR1_RWU_Reset             ((uint16_t)0xFFFD)  /*!< USART mute mode Enable Mask */
//   54 #define CR1_SBK_Set               ((uint16_t)0x0001)  /*!< USART Break Character send Mask */
//   55 #define CR1_CLEAR_Mask            ((uint16_t)0xE9F3)  /*!< USART CR1 Mask */
//   56 #define CR2_Address_Mask          ((uint16_t)0xFFF0)  /*!< USART address Mask */
//   57 
//   58 #define CR2_LINEN_Set              ((uint16_t)0x4000)  /*!< USART LIN Enable Mask */
//   59 #define CR2_LINEN_Reset            ((uint16_t)0xBFFF)  /*!< USART LIN Disable Mask */
//   60 
//   61 #define CR2_LBDL_Mask             ((uint16_t)0xFFDF)  /*!< USART LIN Break detection Mask */
//   62 #define CR2_STOP_CLEAR_Mask       ((uint16_t)0xCFFF)  /*!< USART CR2 STOP Bits Mask */
//   63 #define CR2_CLOCK_CLEAR_Mask      ((uint16_t)0xF0FF)  /*!< USART CR2 Clock Mask */
//   64 
//   65 #define CR3_SCEN_Set              ((uint16_t)0x0020)  /*!< USART SC Enable Mask */
//   66 #define CR3_SCEN_Reset            ((uint16_t)0xFFDF)  /*!< USART SC Disable Mask */
//   67 
//   68 #define CR3_NACK_Set              ((uint16_t)0x0010)  /*!< USART SC NACK Enable Mask */
//   69 #define CR3_NACK_Reset            ((uint16_t)0xFFEF)  /*!< USART SC NACK Disable Mask */
//   70 
//   71 #define CR3_HDSEL_Set             ((uint16_t)0x0008)  /*!< USART Half-Duplex Enable Mask */
//   72 #define CR3_HDSEL_Reset           ((uint16_t)0xFFF7)  /*!< USART Half-Duplex Disable Mask */
//   73 
//   74 #define CR3_IRLP_Mask             ((uint16_t)0xFFFB)  /*!< USART IrDA LowPower mode Mask */
//   75 #define CR3_CLEAR_Mask            ((uint16_t)0xFCFF)  /*!< USART CR3 Mask */
//   76 
//   77 #define CR3_IREN_Set              ((uint16_t)0x0002)  /*!< USART IrDA Enable Mask */
//   78 #define CR3_IREN_Reset            ((uint16_t)0xFFFD)  /*!< USART IrDA Disable Mask */
//   79 #define GTPR_LSB_Mask             ((uint16_t)0x00FF)  /*!< Guard Time Register LSB Mask */
//   80 #define GTPR_MSB_Mask             ((uint16_t)0xFF00)  /*!< Guard Time Register MSB Mask */
//   81 #define IT_Mask                   ((uint16_t)0x001F)  /*!< USART Interrupt Mask */
//   82 
//   83 /* USART OverSampling-8 Mask */
//   84 #define CR1_OVER8_Set             ((u16)0x8000)  /* USART OVER8 mode Enable Mask */
//   85 #define CR1_OVER8_Reset           ((u16)0x7FFF)  /* USART OVER8 mode Disable Mask */
//   86 
//   87 /* USART One Bit Sampling Mask */
//   88 #define CR3_ONEBITE_Set           ((u16)0x0800)  /* USART ONEBITE mode Enable Mask */
//   89 #define CR3_ONEBITE_Reset         ((u16)0xF7FF)  /* USART ONEBITE mode Disable Mask */
//   90 
//   91 /**
//   92   * @}
//   93   */
//   94 
//   95 /** @defgroup USART_Private_Macros
//   96   * @{
//   97   */
//   98 
//   99 /**
//  100   * @}
//  101   */
//  102 
//  103 /** @defgroup USART_Private_Variables
//  104   * @{
//  105   */
//  106 
//  107 /**
//  108   * @}
//  109   */
//  110 
//  111 /** @defgroup USART_Private_FunctionPrototypes
//  112   * @{
//  113   */
//  114 
//  115 /**
//  116   * @}
//  117   */
//  118 
//  119 /** @defgroup USART_Private_Functions
//  120   * @{
//  121   */
//  122 
//  123 /**
//  124   * @brief  Deinitializes the USARTx peripheral registers to their default reset values.
//  125   * @param  USARTx: Select the USART or the UART peripheral. 
//  126   *   This parameter can be one of the following values: 
//  127   *      USART1, USART2, USART3, UART4 or UART5.
//  128   * @retval None
//  129   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function USART_DeInit
        THUMB
//  130 void USART_DeInit(USART_TypeDef* USARTx)
//  131 {
USART_DeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  132   /* Check the parameters */
//  133   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  134 
//  135   if (USARTx == USART1)
        LDR.N    R1,??DataTable1  ;; 0x40013800
        CMP      R0,R1
        BNE.N    ??USART_DeInit_0
//  136   {
//  137     RCC_APB2PeriphResetCmd(RCC_APB2Periph_USART1, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+16384
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  138     RCC_APB2PeriphResetCmd(RCC_APB2Periph_USART1, DISABLE);
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
        MOV      R0,#+16384
          CFI FunCall RCC_APB2PeriphResetCmd
        B.W      RCC_APB2PeriphResetCmd
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  139   }
//  140   else if (USARTx == USART2)
??USART_DeInit_0:
        LDR.N    R1,??DataTable1_1  ;; 0x40004400
        CMP      R0,R1
        BNE.N    ??USART_DeInit_1
//  141   {
//  142     RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART2, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+131072
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  143     RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART2, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+131072
        B.N      ??USART_DeInit_2
//  144   }
//  145   else if (USARTx == USART3)
??USART_DeInit_1:
        LDR.N    R1,??DataTable1_2  ;; 0x40004800
        CMP      R0,R1
        BNE.N    ??USART_DeInit_3
//  146   {
//  147     RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART3, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+262144
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  148     RCC_APB1PeriphResetCmd(RCC_APB1Periph_USART3, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+262144
        B.N      ??USART_DeInit_2
//  149   }    
//  150   else if (USARTx == UART4)
??USART_DeInit_3:
        LDR.N    R1,??DataTable1_3  ;; 0x40004c00
        CMP      R0,R1
        BNE.N    ??USART_DeInit_4
//  151   {
//  152     RCC_APB1PeriphResetCmd(RCC_APB1Periph_UART4, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+524288
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  153     RCC_APB1PeriphResetCmd(RCC_APB1Periph_UART4, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+524288
        B.N      ??USART_DeInit_2
//  154   }    
//  155   else
//  156   {
//  157     if (USARTx == UART5)
??USART_DeInit_4:
        LDR.N    R1,??DataTable1_4  ;; 0x40005000
        CMP      R0,R1
        BNE.N    ??USART_DeInit_5
//  158     { 
//  159       RCC_APB1PeriphResetCmd(RCC_APB1Periph_UART5, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+1048576
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  160       RCC_APB1PeriphResetCmd(RCC_APB1Periph_UART5, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+1048576
??USART_DeInit_2:
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall RCC_APB1PeriphResetCmd
        B.W      RCC_APB1PeriphResetCmd
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  161     }
//  162   }
//  163 }
??USART_DeInit_5:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//  164 
//  165 /**
//  166   * @brief  Initializes the USARTx peripheral according to the specified
//  167   *         parameters in the USART_InitStruct .
//  168   * @param  USARTx: Select the USART or the UART peripheral. 
//  169   *   This parameter can be one of the following values:
//  170   *   USART1, USART2, USART3, UART4 or UART5.
//  171   * @param  USART_InitStruct: pointer to a USART_InitTypeDef structure
//  172   *         that contains the configuration information for the specified USART 
//  173   *         peripheral.
//  174   * @retval None
//  175   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function USART_Init
        THUMB
//  176 void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct)
//  177 {
USART_Init:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOV      R4,R0
        SUB      SP,SP,#+20
          CFI CFA R13+32
        MOV      R5,R1
//  178   uint32_t tmpreg = 0x00, apbclock = 0x00;
//  179   uint32_t integerdivider = 0x00;
//  180   uint32_t fractionaldivider = 0x00;
//  181   uint32_t usartxbase = 0;
//  182   RCC_ClocksTypeDef RCC_ClocksStatus;
//  183   /* Check the parameters */
//  184   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  185   assert_param(IS_USART_BAUDRATE(USART_InitStruct->USART_BaudRate));  
//  186   assert_param(IS_USART_WORD_LENGTH(USART_InitStruct->USART_WordLength));
//  187   assert_param(IS_USART_STOPBITS(USART_InitStruct->USART_StopBits));
//  188   assert_param(IS_USART_PARITY(USART_InitStruct->USART_Parity));
//  189   assert_param(IS_USART_MODE(USART_InitStruct->USART_Mode));
//  190   assert_param(IS_USART_HARDWARE_FLOW_CONTROL(USART_InitStruct->USART_HardwareFlowControl));
//  191   /* The hardware flow control is available only for USART1, USART2 and USART3 */
//  192   if (USART_InitStruct->USART_HardwareFlowControl != USART_HardwareFlowControl_None)
//  193   {
//  194     assert_param(IS_USART_123_PERIPH(USARTx));
//  195   }
//  196 
//  197   usartxbase = (uint32_t)USARTx;
//  198 
//  199 /*---------------------------- USART CR2 Configuration -----------------------*/
//  200   tmpreg = USARTx->CR2;
//  201   /* Clear STOP[13:12] bits */
//  202   tmpreg &= CR2_STOP_CLEAR_Mask;
//  203   /* Configure the USART Stop Bits, Clock, CPOL, CPHA and LastBit ------------*/
//  204   /* Set STOP[13:12] bits according to USART_StopBits value */
//  205   tmpreg |= (uint32_t)USART_InitStruct->USART_StopBits;
//  206   
//  207   /* Write to USART CR2 */
//  208   USARTx->CR2 = (uint16_t)tmpreg;
        LDRH     R0,[R4, #+16]
        MOVW     R1,#+53247
        ANDS     R0,R1,R0
        LDRH     R1,[R5, #+6]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+16]
//  209 
//  210 /*---------------------------- USART CR1 Configuration -----------------------*/
//  211   tmpreg = USARTx->CR1;
//  212   /* Clear M, PCE, PS, TE and RE bits */
//  213   tmpreg &= CR1_CLEAR_Mask;
//  214   /* Configure the USART Word Length, Parity and mode ----------------------- */
//  215   /* Set the M bits according to USART_WordLength value */
//  216   /* Set PCE and PS bits according to USART_Parity value */
//  217   /* Set TE and RE bits according to USART_Mode value */
//  218   tmpreg |= (uint32_t)USART_InitStruct->USART_WordLength | USART_InitStruct->USART_Parity |
//  219             USART_InitStruct->USART_Mode;
//  220   /* Write to USART CR1 */
//  221   USARTx->CR1 = (uint16_t)tmpreg;
        MOVW     R1,#+59891
        LDRH     R0,[R4, #+12]
        ANDS     R0,R1,R0
        LDRH     R1,[R5, #+4]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+8]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+12]
//  222 
//  223 /*---------------------------- USART CR3 Configuration -----------------------*/  
//  224   tmpreg = USARTx->CR3;
//  225   /* Clear CTSE and RTSE bits */
//  226   tmpreg &= CR3_CLEAR_Mask;
//  227   /* Configure the USART HFC -------------------------------------------------*/
//  228   /* Set CTSE and RTSE bits according to USART_HardwareFlowControl value */
//  229   tmpreg |= USART_InitStruct->USART_HardwareFlowControl;
//  230   /* Write to USART CR3 */
//  231   USARTx->CR3 = (uint16_t)tmpreg;
        MOVW     R1,#+64767
        LDRH     R0,[R4, #+20]
        ANDS     R0,R1,R0
        LDRH     R1,[R5, #+12]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+20]
//  232 
//  233 /*---------------------------- USART BRR Configuration -----------------------*/
//  234   /* Configure the USART Baud Rate -------------------------------------------*/
//  235   RCC_GetClocksFreq(&RCC_ClocksStatus);
        ADD      R0,SP,#+0
          CFI FunCall RCC_GetClocksFreq
        BL       RCC_GetClocksFreq
//  236   if (usartxbase == USART1_BASE)
        LDR.N    R0,??DataTable1  ;; 0x40013800
//  237   {
//  238     apbclock = RCC_ClocksStatus.PCLK2_Frequency;
//  239   }
//  240   else
//  241   {
//  242     apbclock = RCC_ClocksStatus.PCLK1_Frequency;
//  243   }
//  244   
//  245   /* Determine the integer part */
//  246   if ((USARTx->CR1 & CR1_OVER8_Set) != 0)
        LDR      R1,[R5, #+0]
        CMP      R4,R0
        ITE      EQ 
        LDREQ    R0,[SP, #+12]
        LDRNE    R0,[SP, #+8]
        MOVS     R2,#+25
        MULS     R0,R2,R0
        LDRH     R2,[R4, #+12]
        LSLS     R2,R2,#+16
        ITE      MI 
        LSLMI    R1,R1,#+1
        LSLPL    R1,R1,#+2
//  247   {
//  248     /* Integer part computing in case Oversampling mode is 8 Samples */
//  249     integerdivider = ((25 * apbclock) / (2 * (USART_InitStruct->USART_BaudRate)));    
//  250   }
//  251   else /* if ((USARTx->CR1 & CR1_OVER8_Set) == 0) */
//  252   {
//  253     /* Integer part computing in case Oversampling mode is 16 Samples */
//  254     integerdivider = ((25 * apbclock) / (4 * (USART_InitStruct->USART_BaudRate)));    
        UDIV     R1,R0,R1
//  255   }
//  256   tmpreg = (integerdivider / 100) << 4;
        MOVS     R0,#+100
        UDIV     R0,R1,R0
        LSLS     R0,R0,#+4
//  257 
//  258   /* Determine the fractional part */
//  259   fractionaldivider = integerdivider - (100 * (tmpreg >> 4));
        LSRS     R2,R0,#+4
        MOVS     R3,#+100
        MLS      R1,R3,R2,R1
//  260 
//  261   /* Implement the fractional part in the register */
//  262   if ((USARTx->CR1 & CR1_OVER8_Set) != 0)
        LDRH     R2,[R4, #+12]
        LSLS     R2,R2,#+16
        BPL.N    ??USART_Init_0
//  263   {
//  264     tmpreg |= ((((fractionaldivider * 8) + 50) / 100)) & ((uint8_t)0x07);
        LSLS     R1,R1,#+3
        ADDS     R1,R1,#+50
        UDIV     R1,R1,R3
        AND      R1,R1,#0x7
        B.N      ??USART_Init_1
//  265   }
//  266   else /* if ((USARTx->CR1 & CR1_OVER8_Set) == 0) */
//  267   {
//  268     tmpreg |= ((((fractionaldivider * 16) + 50) / 100)) & ((uint8_t)0x0F);
??USART_Init_0:
        LSLS     R1,R1,#+4
        ADDS     R1,R1,#+50
        UDIV     R1,R1,R3
        AND      R1,R1,#0xF
??USART_Init_1:
        ORRS     R0,R1,R0
//  269   }
//  270   
//  271   /* Write to USART BRR */
//  272   USARTx->BRR = (uint16_t)tmpreg;
        STRH     R0,[R4, #+8]
//  273 }
        ADD      SP,SP,#+20
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40005000
//  274 
//  275 /**
//  276   * @brief  Fills each USART_InitStruct member with its default value.
//  277   * @param  USART_InitStruct: pointer to a USART_InitTypeDef structure
//  278   *         which will be initialized.
//  279   * @retval None
//  280   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function USART_StructInit
          CFI NoCalls
        THUMB
//  281 void USART_StructInit(USART_InitTypeDef* USART_InitStruct)
//  282 {
//  283   /* USART_InitStruct members default value */
//  284   USART_InitStruct->USART_BaudRate = 9600;
USART_StructInit:
        MOV      R1,#+9600
        STR      R1,[R0, #+0]
//  285   USART_InitStruct->USART_WordLength = USART_WordLength_8b;
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  286   USART_InitStruct->USART_StopBits = USART_StopBits_1;
        STRH     R1,[R0, #+6]
//  287   USART_InitStruct->USART_Parity = USART_Parity_No ;
        STRH     R1,[R0, #+8]
//  288   USART_InitStruct->USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
        MOVS     R1,#+12
        STRH     R1,[R0, #+10]
//  289   USART_InitStruct->USART_HardwareFlowControl = USART_HardwareFlowControl_None;  
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
//  290 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  291 
//  292 /**
//  293   * @brief  Initializes the USARTx peripheral Clock according to the 
//  294   *          specified parameters in the USART_ClockInitStruct .
//  295   * @param  USARTx: where x can be 1, 2, 3 to select the USART peripheral.
//  296   * @param  USART_ClockInitStruct: pointer to a USART_ClockInitTypeDef
//  297   *         structure that contains the configuration information for the specified 
//  298   *         USART peripheral.  
//  299   * @note The Smart Card and Synchronous modes are not available for UART4 and UART5.
//  300   * @retval None
//  301   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function USART_ClockInit
          CFI NoCalls
        THUMB
//  302 void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct)
//  303 {
//  304   uint32_t tmpreg = 0x00;
//  305   /* Check the parameters */
//  306   assert_param(IS_USART_123_PERIPH(USARTx));
//  307   assert_param(IS_USART_CLOCK(USART_ClockInitStruct->USART_Clock));
//  308   assert_param(IS_USART_CPOL(USART_ClockInitStruct->USART_CPOL));
//  309   assert_param(IS_USART_CPHA(USART_ClockInitStruct->USART_CPHA));
//  310   assert_param(IS_USART_LASTBIT(USART_ClockInitStruct->USART_LastBit));
//  311   
//  312 /*---------------------------- USART CR2 Configuration -----------------------*/
//  313   tmpreg = USARTx->CR2;
//  314   /* Clear CLKEN, CPOL, CPHA and LBCL bits */
//  315   tmpreg &= CR2_CLOCK_CLEAR_Mask;
//  316   /* Configure the USART Clock, CPOL, CPHA and LastBit ------------*/
//  317   /* Set CLKEN bit according to USART_Clock value */
//  318   /* Set CPOL bit according to USART_CPOL value */
//  319   /* Set CPHA bit according to USART_CPHA value */
//  320   /* Set LBCL bit according to USART_LastBit value */
//  321   tmpreg |= (uint32_t)USART_ClockInitStruct->USART_Clock | USART_ClockInitStruct->USART_CPOL | 
//  322                  USART_ClockInitStruct->USART_CPHA | USART_ClockInitStruct->USART_LastBit;
//  323   /* Write to USART CR2 */
//  324   USARTx->CR2 = (uint16_t)tmpreg;
USART_ClockInit:
        LDRH     R2,[R0, #+16]
        MOVW     R3,#+61695
        ANDS     R2,R3,R2
        LDRH     R3,[R1, #+0]
        ORRS     R2,R3,R2
        LDRH     R3,[R1, #+2]
        ORRS     R2,R3,R2
        LDRH     R3,[R1, #+4]
        LDRH     R1,[R1, #+6]
        ORRS     R2,R3,R2
        B.N      ??Subroutine0_0
          CFI EndBlock cfiBlock3
//  325 }
//  326 
//  327 /**
//  328   * @brief  Fills each USART_ClockInitStruct member with its default value.
//  329   * @param  USART_ClockInitStruct: pointer to a USART_ClockInitTypeDef
//  330   *         structure which will be initialized.
//  331   * @retval None
//  332   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function USART_ClockStructInit
          CFI NoCalls
        THUMB
//  333 void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct)
//  334 {
//  335   /* USART_ClockInitStruct members default value */
//  336   USART_ClockInitStruct->USART_Clock = USART_Clock_Disable;
USART_ClockStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  337   USART_ClockInitStruct->USART_CPOL = USART_CPOL_Low;
        STRH     R1,[R0, #+2]
//  338   USART_ClockInitStruct->USART_CPHA = USART_CPHA_1Edge;
        STRH     R1,[R0, #+4]
//  339   USART_ClockInitStruct->USART_LastBit = USART_LastBit_Disable;
        STRH     R1,[R0, #+6]
//  340 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  341 
//  342 /**
//  343   * @brief  Enables or disables the specified USART peripheral.
//  344   * @param  USARTx: Select the USART or the UART peripheral. 
//  345   *         This parameter can be one of the following values:
//  346   *           USART1, USART2, USART3, UART4 or UART5.
//  347   * @param  NewState: new state of the USARTx peripheral.
//  348   *         This parameter can be: ENABLE or DISABLE.
//  349   * @retval None
//  350   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function USART_Cmd
          CFI NoCalls
        THUMB
//  351 void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
//  352 {
//  353   /* Check the parameters */
//  354   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  355   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  356   
//  357   if (NewState != DISABLE)
USART_Cmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+12]
        ITEE     NE 
        ORRNE    R1,R1,#0x2000
        MOVWEQ   R2,#+57343
        ANDEQ    R1,R2,R1
//  358   {
//  359     /* Enable the selected USART by setting the UE bit in the CR1 register */
//  360     USARTx->CR1 |= CR1_UE_Set;
//  361   }
//  362   else
//  363   {
//  364     /* Disable the selected USART by clearing the UE bit in the CR1 register */
//  365     USARTx->CR1 &= CR1_UE_Reset;
        STRH     R1,[R0, #+12]
//  366   }
//  367 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  368 
//  369 /**
//  370   * @brief  Enables or disables the specified USART interrupts.
//  371   * @param  USARTx: Select the USART or the UART peripheral. 
//  372   *   This parameter can be one of the following values:
//  373   *   USART1, USART2, USART3, UART4 or UART5.
//  374   * @param  USART_IT: specifies the USART interrupt sources to be enabled or disabled.
//  375   *   This parameter can be one of the following values:
//  376   *     @arg USART_IT_CTS:  CTS change interrupt (not available for UART4 and UART5)
//  377   *     @arg USART_IT_LBD:  LIN Break detection interrupt
//  378   *     @arg USART_IT_TXE:  Transmit Data Register empty interrupt
//  379   *     @arg USART_IT_TC:   Transmission complete interrupt
//  380   *     @arg USART_IT_RXNE: Receive Data register not empty interrupt
//  381   *     @arg USART_IT_IDLE: Idle line detection interrupt
//  382   *     @arg USART_IT_PE:   Parity Error interrupt
//  383   *     @arg USART_IT_ERR:  Error interrupt(Frame error, noise error, overrun error)
//  384   * @param  NewState: new state of the specified USARTx interrupts.
//  385   *   This parameter can be: ENABLE or DISABLE.
//  386   * @retval None
//  387   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function USART_ITConfig
          CFI NoCalls
        THUMB
//  388 void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState)
//  389 {
//  390   uint32_t usartreg = 0x00, itpos = 0x00, itmask = 0x00;
//  391   uint32_t usartxbase = 0x00;
//  392   /* Check the parameters */
//  393   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  394   assert_param(IS_USART_CONFIG_IT(USART_IT));
//  395   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  396   /* The CTS interrupt is not available for UART4 and UART5 */
//  397   if (USART_IT == USART_IT_CTS)
//  398   {
//  399     assert_param(IS_USART_123_PERIPH(USARTx));
//  400   }   
//  401   
//  402   usartxbase = (uint32_t)USARTx;
//  403 
//  404   /* Get the USART register index */
//  405   usartreg = (((uint8_t)USART_IT) >> 0x05);
USART_ITConfig:
        LSLS     R3,R1,#+24
        LSRS     R3,R3,#+29
//  406 
//  407   /* Get the interrupt position */
//  408   itpos = USART_IT & IT_Mask;
//  409   itmask = (((uint32_t)0x01) << itpos);
        MOV      R12,#+1
        AND      R1,R1,#0x1F
//  410     
//  411   if (usartreg == 0x01) /* The IT is in CR1 register */
        CMP      R3,#+1
        LSL      R1,R12,R1
        IT       EQ 
        ADDEQ    R0,R0,#+12
//  412   {
//  413     usartxbase += 0x0C;
        BEQ.N    ??USART_ITConfig_0
//  414   }
//  415   else if (usartreg == 0x02) /* The IT is in CR2 register */
        CMP      R3,#+2
        ITE      EQ 
        ADDEQ    R0,R0,#+16
        ADDNE    R0,R0,#+20
//  416   {
//  417     usartxbase += 0x10;
//  418   }
//  419   else /* The IT is in CR3 register */
//  420   {
//  421     usartxbase += 0x14; 
//  422   }
//  423   if (NewState != DISABLE)
??USART_ITConfig_0:
        CMP      R2,#+0
        LDR      R2,[R0, #+0]
        ITE      NE 
        ORRNE    R1,R1,R2
        BICEQ    R1,R2,R1
//  424   {
//  425     *(__IO uint32_t*)usartxbase  |= itmask;
//  426   }
//  427   else
//  428   {
//  429     *(__IO uint32_t*)usartxbase &= ~itmask;
        STR      R1,[R0, #+0]
//  430   }
//  431 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  432 
//  433 /**
//  434   * @brief  Enables or disables the USART抯 DMA interface.
//  435   * @param  USARTx: Select the USART or the UART peripheral. 
//  436   *   This parameter can be one of the following values:
//  437   *   USART1, USART2, USART3, UART4 or UART5.
//  438   * @param  USART_DMAReq: specifies the DMA request.
//  439   *   This parameter can be any combination of the following values:
//  440   *     @arg USART_DMAReq_Tx: USART DMA transmit request
//  441   *     @arg USART_DMAReq_Rx: USART DMA receive request
//  442   * @param  NewState: new state of the DMA Request sources.
//  443   *   This parameter can be: ENABLE or DISABLE.
//  444   * @note The DMA mode is not available for UART5 except in the STM32
//  445   *       High density value line devices(STM32F10X_HD_VL).  
//  446   * @retval None
//  447   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function USART_DMACmd
          CFI NoCalls
        THUMB
//  448 void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState)
//  449 {
//  450   /* Check the parameters */
//  451   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  452   assert_param(IS_USART_DMAREQ(USART_DMAReq));  
//  453   assert_param(IS_FUNCTIONAL_STATE(NewState)); 
//  454   if (NewState != DISABLE)
USART_DMACmd:
        CMP      R2,#+0
        LDRH     R2,[R0, #+20]
        ITE      NE 
        ORRNE    R1,R1,R2
        BICEQ    R1,R2,R1
//  455   {
//  456     /* Enable the DMA transfer for selected requests by setting the DMAT and/or
//  457        DMAR bits in the USART CR3 register */
//  458     USARTx->CR3 |= USART_DMAReq;
//  459   }
//  460   else
//  461   {
//  462     /* Disable the DMA transfer for selected requests by clearing the DMAT and/or
//  463        DMAR bits in the USART CR3 register */
//  464     USARTx->CR3 &= (uint16_t)~USART_DMAReq;
        STRH     R1,[R0, #+20]
//  465   }
//  466 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  467 
//  468 /**
//  469   * @brief  Sets the address of the USART node.
//  470   * @param  USARTx: Select the USART or the UART peripheral. 
//  471   *   This parameter can be one of the following values:
//  472   *   USART1, USART2, USART3, UART4 or UART5.
//  473   * @param  USART_Address: Indicates the address of the USART node.
//  474   * @retval None
//  475   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function USART_SetAddress
          CFI NoCalls
        THUMB
//  476 void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address)
//  477 {
//  478   /* Check the parameters */
//  479   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  480   assert_param(IS_USART_ADDRESS(USART_Address)); 
//  481     
//  482   /* Clear the USART address */
//  483   USARTx->CR2 &= CR2_Address_Mask;
USART_SetAddress:
        LDRH     R2,[R0, #+16]
        MOVW     R3,#+65520
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock8
//  484   /* Set the USART address node */
//  485   USARTx->CR2 |= USART_Address;
//  486 }
//  487 
//  488 /**
//  489   * @brief  Selects the USART WakeUp method.
//  490   * @param  USARTx: Select the USART or the UART peripheral. 
//  491   *   This parameter can be one of the following values:
//  492   *   USART1, USART2, USART3, UART4 or UART5.
//  493   * @param  USART_WakeUp: specifies the USART wakeup method.
//  494   *   This parameter can be one of the following values:
//  495   *     @arg USART_WakeUp_IdleLine: WakeUp by an idle line detection
//  496   *     @arg USART_WakeUp_AddressMark: WakeUp by an address mark
//  497   * @retval None
//  498   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function USART_WakeUpConfig
          CFI NoCalls
        THUMB
//  499 void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp)
//  500 {
//  501   /* Check the parameters */
//  502   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  503   assert_param(IS_USART_WAKEUP(USART_WakeUp));
//  504   
//  505   USARTx->CR1 &= CR1_WAKE_Mask;
USART_WakeUpConfig:
        LDRH     R2,[R0, #+12]
        MOVW     R3,#+63487
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+12]
//  506   USARTx->CR1 |= USART_WakeUp;
        LDRH     R2,[R0, #+12]
        ORRS     R1,R1,R2
        STRH     R1,[R0, #+12]
//  507 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  508 
//  509 /**
//  510   * @brief  Determines if the USART is in mute mode or not.
//  511   * @param  USARTx: Select the USART or the UART peripheral. 
//  512   *   This parameter can be one of the following values:
//  513   *   USART1, USART2, USART3, UART4 or UART5.
//  514   * @param  NewState: new state of the USART mute mode.
//  515   *   This parameter can be: ENABLE or DISABLE.
//  516   * @retval None
//  517   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function USART_ReceiverWakeUpCmd
          CFI NoCalls
        THUMB
//  518 void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState)
//  519 {
//  520   /* Check the parameters */
//  521   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  522   assert_param(IS_FUNCTIONAL_STATE(NewState)); 
//  523   
//  524   if (NewState != DISABLE)
USART_ReceiverWakeUpCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+12]
        ITEE     NE 
        ORRNE    R1,R1,#0x2
        MOVWEQ   R2,#+65533
        ANDEQ    R1,R2,R1
//  525   {
//  526     /* Enable the USART mute mode  by setting the RWU bit in the CR1 register */
//  527     USARTx->CR1 |= CR1_RWU_Set;
//  528   }
//  529   else
//  530   {
//  531     /* Disable the USART mute mode by clearing the RWU bit in the CR1 register */
//  532     USARTx->CR1 &= CR1_RWU_Reset;
        STRH     R1,[R0, #+12]
//  533   }
//  534 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  535 
//  536 /**
//  537   * @brief  Sets the USART LIN Break detection length.
//  538   * @param  USARTx: Select the USART or the UART peripheral. 
//  539   *   This parameter can be one of the following values:
//  540   *   USART1, USART2, USART3, UART4 or UART5.
//  541   * @param  USART_LINBreakDetectLength: specifies the LIN break detection length.
//  542   *   This parameter can be one of the following values:
//  543   *     @arg USART_LINBreakDetectLength_10b: 10-bit break detection
//  544   *     @arg USART_LINBreakDetectLength_11b: 11-bit break detection
//  545   * @retval None
//  546   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function USART_LINBreakDetectLengthConfig
          CFI NoCalls
        THUMB
//  547 void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength)
//  548 {
//  549   /* Check the parameters */
//  550   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  551   assert_param(IS_USART_LIN_BREAK_DETECT_LENGTH(USART_LINBreakDetectLength));
//  552   
//  553   USARTx->CR2 &= CR2_LBDL_Mask;
USART_LINBreakDetectLengthConfig:
        LDRH     R2,[R0, #+16]
        MOVW     R3,#+65503
          CFI EndBlock cfiBlock11
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  554   USARTx->CR2 |= USART_LINBreakDetectLength;  
//  555 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls USART_ClockInit
          CFI NoCalls USART_SetAddress
          CFI NoCalls USART_LINBreakDetectLengthConfig
        THUMB
?Subroutine0:
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+16]
        LDRH     R2,[R0, #+16]
??Subroutine0_0:
        ORRS     R1,R1,R2
        STRH     R1,[R0, #+16]
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  556 
//  557 /**
//  558   * @brief  Enables or disables the USART抯 LIN mode.
//  559   * @param  USARTx: Select the USART or the UART peripheral. 
//  560   *   This parameter can be one of the following values:
//  561   *   USART1, USART2, USART3, UART4 or UART5.
//  562   * @param  NewState: new state of the USART LIN mode.
//  563   *   This parameter can be: ENABLE or DISABLE.
//  564   * @retval None
//  565   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function USART_LINCmd
          CFI NoCalls
        THUMB
//  566 void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState)
//  567 {
//  568   /* Check the parameters */
//  569   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  570   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  571   
//  572   if (NewState != DISABLE)
USART_LINCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+16]
        ITEE     NE 
        ORRNE    R1,R1,#0x4000
        MOVWEQ   R2,#+49151
        ANDEQ    R1,R2,R1
//  573   {
//  574     /* Enable the LIN mode by setting the LINEN bit in the CR2 register */
//  575     USARTx->CR2 |= CR2_LINEN_Set;
//  576   }
//  577   else
//  578   {
//  579     /* Disable the LIN mode by clearing the LINEN bit in the CR2 register */
//  580     USARTx->CR2 &= CR2_LINEN_Reset;
        STRH     R1,[R0, #+16]
//  581   }
//  582 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  583 
//  584 /**
//  585   * @brief  Transmits single data through the USARTx peripheral.
//  586   * @param  USARTx: Select the USART or the UART peripheral. 
//  587   *   This parameter can be one of the following values:
//  588   *   USART1, USART2, USART3, UART4 or UART5.
//  589   * @param  Data: the data to transmit.
//  590   * @retval None
//  591   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function USART_SendData
          CFI NoCalls
        THUMB
//  592 void USART_SendData(USART_TypeDef* USARTx, uint16_t Data)
//  593 {
//  594   /* Check the parameters */
//  595   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  596   assert_param(IS_USART_DATA(Data)); 
//  597     
//  598   /* Transmit Data */
//  599   USARTx->DR = (Data & (uint16_t)0x01FF);
USART_SendData:
        LSLS     R1,R1,#+23
        LSRS     R1,R1,#+23
        STRH     R1,[R0, #+4]
//  600 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  601 
//  602 /**
//  603   * @brief  Returns the most recent received data by the USARTx peripheral.
//  604   * @param  USARTx: Select the USART or the UART peripheral. 
//  605   *   This parameter can be one of the following values:
//  606   *   USART1, USART2, USART3, UART4 or UART5.
//  607   * @retval The received data.
//  608   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function USART_ReceiveData
          CFI NoCalls
        THUMB
//  609 uint16_t USART_ReceiveData(USART_TypeDef* USARTx)
//  610 {
//  611   /* Check the parameters */
//  612   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  613   
//  614   /* Receive Data */
//  615   return (uint16_t)(USARTx->DR & (uint16_t)0x01FF);
USART_ReceiveData:
        LDRH     R0,[R0, #+4]
        LSLS     R0,R0,#+23
        LSRS     R0,R0,#+23
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  616 }
//  617 
//  618 /**
//  619   * @brief  Transmits break characters.
//  620   * @param  USARTx: Select the USART or the UART peripheral. 
//  621   *   This parameter can be one of the following values:
//  622   *   USART1, USART2, USART3, UART4 or UART5.
//  623   * @retval None
//  624   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function USART_SendBreak
          CFI NoCalls
        THUMB
//  625 void USART_SendBreak(USART_TypeDef* USARTx)
//  626 {
//  627   /* Check the parameters */
//  628   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  629   
//  630   /* Send break characters */
//  631   USARTx->CR1 |= CR1_SBK_Set;
USART_SendBreak:
        LDRH     R1,[R0, #+12]
        ORR      R1,R1,#0x1
        STRH     R1,[R0, #+12]
//  632 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  633 
//  634 /**
//  635   * @brief  Sets the specified USART guard time.
//  636   * @param  USARTx: where x can be 1, 2 or 3 to select the USART peripheral.
//  637   * @param  USART_GuardTime: specifies the guard time.
//  638   * @note The guard time bits are not available for UART4 and UART5.   
//  639   * @retval None
//  640   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function USART_SetGuardTime
          CFI NoCalls
        THUMB
//  641 void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime)
//  642 {    
//  643   /* Check the parameters */
//  644   assert_param(IS_USART_123_PERIPH(USARTx));
//  645   
//  646   /* Clear the USART Guard time */
//  647   USARTx->GTPR &= GTPR_LSB_Mask;
USART_SetGuardTime:
        LDRH     R2,[R0, #+24]
        UXTB     R2,R2
        STRH     R2,[R0, #+24]
//  648   /* Set the USART guard time */
//  649   USARTx->GTPR |= (uint16_t)((uint16_t)USART_GuardTime << 0x08);
        LDRH     R2,[R0, #+24]
        ORR      R1,R2,R1, LSL #+8
        STRH     R1,[R0, #+24]
//  650 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  651 
//  652 /**
//  653   * @brief  Sets the system clock prescaler.
//  654   * @param  USARTx: Select the USART or the UART peripheral. 
//  655   *   This parameter can be one of the following values:
//  656   *   USART1, USART2, USART3, UART4 or UART5.
//  657   * @param  USART_Prescaler: specifies the prescaler clock.  
//  658   * @note   The function is used for IrDA mode with UART4 and UART5.
//  659   * @retval None
//  660   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function USART_SetPrescaler
          CFI NoCalls
        THUMB
//  661 void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler)
//  662 { 
//  663   /* Check the parameters */
//  664   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  665   
//  666   /* Clear the USART prescaler */
//  667   USARTx->GTPR &= GTPR_MSB_Mask;
USART_SetPrescaler:
        LDRH     R2,[R0, #+24]
        AND      R2,R2,#0xFF00
        STRH     R2,[R0, #+24]
//  668   /* Set the USART prescaler */
//  669   USARTx->GTPR |= USART_Prescaler;
        LDRH     R2,[R0, #+24]
        ORRS     R1,R1,R2
        STRH     R1,[R0, #+24]
//  670 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  671 
//  672 /**
//  673   * @brief  Enables or disables the USART抯 Smart Card mode.
//  674   * @param  USARTx: where x can be 1, 2 or 3 to select the USART peripheral.
//  675   * @param  NewState: new state of the Smart Card mode.
//  676   *   This parameter can be: ENABLE or DISABLE.     
//  677   * @note The Smart Card mode is not available for UART4 and UART5. 
//  678   * @retval None
//  679   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function USART_SmartCardCmd
          CFI NoCalls
        THUMB
//  680 void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState)
//  681 {
//  682   /* Check the parameters */
//  683   assert_param(IS_USART_123_PERIPH(USARTx));
//  684   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  685   if (NewState != DISABLE)
USART_SmartCardCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+20]
        ITEE     NE 
        ORRNE    R1,R1,#0x20
        MOVWEQ   R2,#+65503
        ANDEQ    R1,R2,R1
//  686   {
//  687     /* Enable the SC mode by setting the SCEN bit in the CR3 register */
//  688     USARTx->CR3 |= CR3_SCEN_Set;
//  689   }
//  690   else
//  691   {
//  692     /* Disable the SC mode by clearing the SCEN bit in the CR3 register */
//  693     USARTx->CR3 &= CR3_SCEN_Reset;
        STRH     R1,[R0, #+20]
//  694   }
//  695 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
//  696 
//  697 /**
//  698   * @brief  Enables or disables NACK transmission.
//  699   * @param  USARTx: where x can be 1, 2 or 3 to select the USART peripheral. 
//  700   * @param  NewState: new state of the NACK transmission.
//  701   *   This parameter can be: ENABLE or DISABLE.  
//  702   * @note The Smart Card mode is not available for UART4 and UART5.
//  703   * @retval None
//  704   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function USART_SmartCardNACKCmd
          CFI NoCalls
        THUMB
//  705 void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState)
//  706 {
//  707   /* Check the parameters */
//  708   assert_param(IS_USART_123_PERIPH(USARTx));  
//  709   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  710   if (NewState != DISABLE)
USART_SmartCardNACKCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+20]
        ITEE     NE 
        ORRNE    R1,R1,#0x10
        MOVWEQ   R2,#+65519
        ANDEQ    R1,R2,R1
//  711   {
//  712     /* Enable the NACK transmission by setting the NACK bit in the CR3 register */
//  713     USARTx->CR3 |= CR3_NACK_Set;
//  714   }
//  715   else
//  716   {
//  717     /* Disable the NACK transmission by clearing the NACK bit in the CR3 register */
//  718     USARTx->CR3 &= CR3_NACK_Reset;
        STRH     R1,[R0, #+20]
//  719   }
//  720 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  721 
//  722 /**
//  723   * @brief  Enables or disables the USART抯 Half Duplex communication.
//  724   * @param  USARTx: Select the USART or the UART peripheral. 
//  725   *   This parameter can be one of the following values:
//  726   *   USART1, USART2, USART3, UART4 or UART5.
//  727   * @param  NewState: new state of the USART Communication.
//  728   *   This parameter can be: ENABLE or DISABLE.
//  729   * @retval None
//  730   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function USART_HalfDuplexCmd
          CFI NoCalls
        THUMB
//  731 void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState)
//  732 {
//  733   /* Check the parameters */
//  734   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  735   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  736   
//  737   if (NewState != DISABLE)
USART_HalfDuplexCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+20]
        ITEE     NE 
        ORRNE    R1,R1,#0x8
        MOVWEQ   R2,#+65527
        ANDEQ    R1,R2,R1
//  738   {
//  739     /* Enable the Half-Duplex mode by setting the HDSEL bit in the CR3 register */
//  740     USARTx->CR3 |= CR3_HDSEL_Set;
//  741   }
//  742   else
//  743   {
//  744     /* Disable the Half-Duplex mode by clearing the HDSEL bit in the CR3 register */
//  745     USARTx->CR3 &= CR3_HDSEL_Reset;
        STRH     R1,[R0, #+20]
//  746   }
//  747 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  748 
//  749 
//  750 /**
//  751   * @brief  Enables or disables the USART's 8x oversampling mode.
//  752   * @param  USARTx: Select the USART or the UART peripheral.
//  753   *   This parameter can be one of the following values:
//  754   *   USART1, USART2, USART3, UART4 or UART5.
//  755   * @param  NewState: new state of the USART one bit sampling method.
//  756   *   This parameter can be: ENABLE or DISABLE.
//  757   * @note
//  758   *     This function has to be called before calling USART_Init()
//  759   *     function in order to have correct baudrate Divider value.   
//  760   * @retval None
//  761   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function USART_OverSampling8Cmd
          CFI NoCalls
        THUMB
//  762 void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
//  763 {
//  764   /* Check the parameters */
//  765   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  766   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  767   
//  768   if (NewState != DISABLE)
USART_OverSampling8Cmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+12]
        ITEE     NE 
        ORRNE    R1,R1,#0x8000
        LSLEQ    R1,R1,#+17
        LSREQ    R1,R1,#+17
//  769   {
//  770     /* Enable the 8x Oversampling mode by setting the OVER8 bit in the CR1 register */
//  771     USARTx->CR1 |= CR1_OVER8_Set;
//  772   }
//  773   else
//  774   {
//  775     /* Disable the 8x Oversampling mode by clearing the OVER8 bit in the CR1 register */
//  776     USARTx->CR1 &= CR1_OVER8_Reset;
        STRH     R1,[R0, #+12]
//  777   }
//  778 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
//  779 
//  780 /**
//  781   * @brief  Enables or disables the USART's one bit sampling method.
//  782   * @param  USARTx: Select the USART or the UART peripheral.
//  783   *   This parameter can be one of the following values:
//  784   *   USART1, USART2, USART3, UART4 or UART5.
//  785   * @param  NewState: new state of the USART one bit sampling method.
//  786   *   This parameter can be: ENABLE or DISABLE.
//  787   * @retval None
//  788   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function USART_OneBitMethodCmd
          CFI NoCalls
        THUMB
//  789 void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState)
//  790 {
//  791   /* Check the parameters */
//  792   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  793   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  794   
//  795   if (NewState != DISABLE)
USART_OneBitMethodCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+20]
        ITEE     NE 
        ORRNE    R1,R1,#0x800
        MOVWEQ   R2,#+63487
        ANDEQ    R1,R2,R1
//  796   {
//  797     /* Enable the one bit method by setting the ONEBITE bit in the CR3 register */
//  798     USARTx->CR3 |= CR3_ONEBITE_Set;
//  799   }
//  800   else
//  801   {
//  802     /* Disable tthe one bit method by clearing the ONEBITE bit in the CR3 register */
//  803     USARTx->CR3 &= CR3_ONEBITE_Reset;
        STRH     R1,[R0, #+20]
//  804   }
//  805 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  806 
//  807 /**
//  808   * @brief  Configures the USART's IrDA interface.
//  809   * @param  USARTx: Select the USART or the UART peripheral. 
//  810   *   This parameter can be one of the following values:
//  811   *   USART1, USART2, USART3, UART4 or UART5.
//  812   * @param  USART_IrDAMode: specifies the IrDA mode.
//  813   *   This parameter can be one of the following values:
//  814   *     @arg USART_IrDAMode_LowPower
//  815   *     @arg USART_IrDAMode_Normal
//  816   * @retval None
//  817   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function USART_IrDAConfig
          CFI NoCalls
        THUMB
//  818 void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode)
//  819 {
//  820   /* Check the parameters */
//  821   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  822   assert_param(IS_USART_IRDA_MODE(USART_IrDAMode));
//  823     
//  824   USARTx->CR3 &= CR3_IRLP_Mask;
USART_IrDAConfig:
        LDRH     R2,[R0, #+20]
        MOVW     R3,#+65531
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+20]
//  825   USARTx->CR3 |= USART_IrDAMode;
        LDRH     R2,[R0, #+20]
        ORRS     R1,R1,R2
        STRH     R1,[R0, #+20]
//  826 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
//  827 
//  828 /**
//  829   * @brief  Enables or disables the USART's IrDA interface.
//  830   * @param  USARTx: Select the USART or the UART peripheral. 
//  831   *   This parameter can be one of the following values:
//  832   *   USART1, USART2, USART3, UART4 or UART5.
//  833   * @param  NewState: new state of the IrDA mode.
//  834   *   This parameter can be: ENABLE or DISABLE.
//  835   * @retval None
//  836   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function USART_IrDACmd
          CFI NoCalls
        THUMB
//  837 void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState)
//  838 {
//  839   /* Check the parameters */
//  840   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  841   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  842     
//  843   if (NewState != DISABLE)
USART_IrDACmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+20]
        ITEE     NE 
        ORRNE    R1,R1,#0x2
        MOVWEQ   R2,#+65533
        ANDEQ    R1,R2,R1
//  844   {
//  845     /* Enable the IrDA mode by setting the IREN bit in the CR3 register */
//  846     USARTx->CR3 |= CR3_IREN_Set;
//  847   }
//  848   else
//  849   {
//  850     /* Disable the IrDA mode by clearing the IREN bit in the CR3 register */
//  851     USARTx->CR3 &= CR3_IREN_Reset;
        STRH     R1,[R0, #+20]
//  852   }
//  853 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
//  854 
//  855 /**
//  856   * @brief  Checks whether the specified USART flag is set or not.
//  857   * @param  USARTx: Select the USART or the UART peripheral. 
//  858   *   This parameter can be one of the following values:
//  859   *   USART1, USART2, USART3, UART4 or UART5.
//  860   * @param  USART_FLAG: specifies the flag to check.
//  861   *   This parameter can be one of the following values:
//  862   *     @arg USART_FLAG_CTS:  CTS Change flag (not available for UART4 and UART5)
//  863   *     @arg USART_FLAG_LBD:  LIN Break detection flag
//  864   *     @arg USART_FLAG_TXE:  Transmit data register empty flag
//  865   *     @arg USART_FLAG_TC:   Transmission Complete flag
//  866   *     @arg USART_FLAG_RXNE: Receive data register not empty flag
//  867   *     @arg USART_FLAG_IDLE: Idle Line detection flag
//  868   *     @arg USART_FLAG_ORE:  OverRun Error flag
//  869   *     @arg USART_FLAG_NE:   Noise Error flag
//  870   *     @arg USART_FLAG_FE:   Framing Error flag
//  871   *     @arg USART_FLAG_PE:   Parity Error flag
//  872   * @retval The new state of USART_FLAG (SET or RESET).
//  873   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function USART_GetFlagStatus
          CFI NoCalls
        THUMB
//  874 FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG)
//  875 {
//  876   FlagStatus bitstatus = RESET;
//  877   /* Check the parameters */
//  878   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  879   assert_param(IS_USART_FLAG(USART_FLAG));
//  880   /* The CTS flag is not available for UART4 and UART5 */
//  881   if (USART_FLAG == USART_FLAG_CTS)
//  882   {
//  883     assert_param(IS_USART_123_PERIPH(USARTx));
//  884   }  
//  885   
//  886   if ((USARTx->SR & USART_FLAG) != (uint16_t)RESET)
USART_GetFlagStatus:
        LDRH     R0,[R0, #+0]
        MOVS     R2,#+0
        TST      R0,R1
        IT       NE 
        MOVNE    R2,#+1
//  887   {
//  888     bitstatus = SET;
//  889   }
//  890   else
//  891   {
//  892     bitstatus = RESET;
//  893   }
//  894   return bitstatus;
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
//  895 }
//  896 
//  897 /**
//  898   * @brief  Clears the USARTx's pending flags.
//  899   * @param  USARTx: Select the USART or the UART peripheral. 
//  900   *   This parameter can be one of the following values:
//  901   *   USART1, USART2, USART3, UART4 or UART5.
//  902   * @param  USART_FLAG: specifies the flag to clear.
//  903   *   This parameter can be any combination of the following values:
//  904   *     @arg USART_FLAG_CTS:  CTS Change flag (not available for UART4 and UART5).
//  905   *     @arg USART_FLAG_LBD:  LIN Break detection flag.
//  906   *     @arg USART_FLAG_TC:   Transmission Complete flag.
//  907   *     @arg USART_FLAG_RXNE: Receive data register not empty flag.
//  908   *   
//  909   * @note
//  910   *   - PE (Parity error), FE (Framing error), NE (Noise error), ORE (OverRun 
//  911   *     error) and IDLE (Idle line detected) flags are cleared by software 
//  912   *     sequence: a read operation to USART_SR register (USART_GetFlagStatus()) 
//  913   *     followed by a read operation to USART_DR register (USART_ReceiveData()).
//  914   *   - RXNE flag can be also cleared by a read to the USART_DR register 
//  915   *     (USART_ReceiveData()).
//  916   *   - TC flag can be also cleared by software sequence: a read operation to 
//  917   *     USART_SR register (USART_GetFlagStatus()) followed by a write operation
//  918   *     to USART_DR register (USART_SendData()).
//  919   *   - TXE flag is cleared only by a write to the USART_DR register 
//  920   *     (USART_SendData()).
//  921   * @retval None
//  922   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function USART_ClearFlag
          CFI NoCalls
        THUMB
//  923 void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG)
//  924 {
//  925   /* Check the parameters */
//  926   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  927   assert_param(IS_USART_CLEAR_FLAG(USART_FLAG));
//  928   /* The CTS flag is not available for UART4 and UART5 */
//  929   if ((USART_FLAG & USART_FLAG_CTS) == USART_FLAG_CTS)
//  930   {
//  931     assert_param(IS_USART_123_PERIPH(USARTx));
//  932   } 
//  933    
//  934   USARTx->SR = (uint16_t)~USART_FLAG;
USART_ClearFlag:
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock27
//  935 }
//  936 
//  937 /**
//  938   * @brief  Checks whether the specified USART interrupt has occurred or not.
//  939   * @param  USARTx: Select the USART or the UART peripheral. 
//  940   *   This parameter can be one of the following values:
//  941   *   USART1, USART2, USART3, UART4 or UART5.
//  942   * @param  USART_IT: specifies the USART interrupt source to check.
//  943   *   This parameter can be one of the following values:
//  944   *     @arg USART_IT_CTS:  CTS change interrupt (not available for UART4 and UART5)
//  945   *     @arg USART_IT_LBD:  LIN Break detection interrupt
//  946   *     @arg USART_IT_TXE:  Tansmit Data Register empty interrupt
//  947   *     @arg USART_IT_TC:   Transmission complete interrupt
//  948   *     @arg USART_IT_RXNE: Receive Data register not empty interrupt
//  949   *     @arg USART_IT_IDLE: Idle line detection interrupt
//  950   *     @arg USART_IT_ORE:  OverRun Error interrupt
//  951   *     @arg USART_IT_NE:   Noise Error interrupt
//  952   *     @arg USART_IT_FE:   Framing Error interrupt
//  953   *     @arg USART_IT_PE:   Parity Error interrupt
//  954   * @retval The new state of USART_IT (SET or RESET).
//  955   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function USART_GetITStatus
          CFI NoCalls
        THUMB
//  956 ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT)
//  957 {
USART_GetITStatus:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R2,R1
//  958   uint32_t bitpos = 0x00, itmask = 0x00, usartreg = 0x00;
//  959   ITStatus bitstatus = RESET;
//  960   /* Check the parameters */
//  961   assert_param(IS_USART_ALL_PERIPH(USARTx));
//  962   assert_param(IS_USART_GET_IT(USART_IT));
//  963   /* The CTS interrupt is not available for UART4 and UART5 */ 
//  964   if (USART_IT == USART_IT_CTS)
//  965   {
//  966     assert_param(IS_USART_123_PERIPH(USARTx));
//  967   }   
//  968   
//  969   /* Get the USART register index */
//  970   usartreg = (((uint8_t)USART_IT) >> 0x05);
        LSLS     R3,R2,#+24
        MOVS     R1,#+0
        LSRS     R3,R3,#+29
//  971   /* Get the interrupt position */
//  972   itmask = USART_IT & IT_Mask;
//  973   itmask = (uint32_t)0x01 << itmask;
        MOVS     R4,#+1
        AND      R5,R2,#0x1F
//  974   
//  975   if (usartreg == 0x01) /* The IT  is in CR1 register */
        CMP      R3,#+1
        LSL      R5,R4,R5
        IT       EQ 
        LDRHEQ   R3,[R0, #+12]
//  976   {
//  977     itmask &= USARTx->CR1;
        BEQ.N    ??USART_GetITStatus_0
//  978   }
//  979   else if (usartreg == 0x02) /* The IT  is in CR2 register */
        CMP      R3,#+2
        ITE      EQ 
        LDRHEQ   R3,[R0, #+16]
        LDRHNE   R3,[R0, #+20]
//  980   {
//  981     itmask &= USARTx->CR2;
//  982   }
//  983   else /* The IT  is in CR3 register */
//  984   {
//  985     itmask &= USARTx->CR3;
//  986   }
//  987   
//  988   bitpos = USART_IT >> 0x08;
//  989   bitpos = (uint32_t)0x01 << bitpos;
//  990   bitpos &= USARTx->SR;
??USART_GetITStatus_0:
        LSRS     R2,R2,#+8
        LDRH     R0,[R0, #+0]
        LSL      R2,R4,R2
        ANDS     R3,R3,R5
        ANDS     R0,R0,R2
//  991   if ((itmask != (uint16_t)RESET)&&(bitpos != (uint16_t)RESET))
        CMP      R3,#+0
//  992   {
//  993     bitstatus = SET;
//  994   }
//  995   else
//  996   {
//  997     bitstatus = RESET;
//  998   }
//  999   
// 1000   return bitstatus;  
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        ITT      NE 
        CMPNE    R0,#+0
        MOVNE    R1,#+1
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
// 1001 }
// 1002 
// 1003 /**
// 1004   * @brief  Clears the USARTx's interrupt pending bits.
// 1005   * @param  USARTx: Select the USART or the UART peripheral. 
// 1006   *   This parameter can be one of the following values:
// 1007   *   USART1, USART2, USART3, UART4 or UART5.
// 1008   * @param  USART_IT: specifies the interrupt pending bit to clear.
// 1009   *   This parameter can be one of the following values:
// 1010   *     @arg USART_IT_CTS:  CTS change interrupt (not available for UART4 and UART5)
// 1011   *     @arg USART_IT_LBD:  LIN Break detection interrupt
// 1012   *     @arg USART_IT_TC:   Transmission complete interrupt. 
// 1013   *     @arg USART_IT_RXNE: Receive Data register not empty interrupt.
// 1014   *   
// 1015   * @note
// 1016   *   - PE (Parity error), FE (Framing error), NE (Noise error), ORE (OverRun 
// 1017   *     error) and IDLE (Idle line detected) pending bits are cleared by 
// 1018   *     software sequence: a read operation to USART_SR register 
// 1019   *     (USART_GetITStatus()) followed by a read operation to USART_DR register 
// 1020   *     (USART_ReceiveData()).
// 1021   *   - RXNE pending bit can be also cleared by a read to the USART_DR register 
// 1022   *     (USART_ReceiveData()).
// 1023   *   - TC pending bit can be also cleared by software sequence: a read 
// 1024   *     operation to USART_SR register (USART_GetITStatus()) followed by a write 
// 1025   *     operation to USART_DR register (USART_SendData()).
// 1026   *   - TXE pending bit is cleared only by a write to the USART_DR register 
// 1027   *     (USART_SendData()).
// 1028   * @retval None
// 1029   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function USART_ClearITPendingBit
          CFI NoCalls
        THUMB
// 1030 void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT)
// 1031 {
// 1032   uint16_t bitpos = 0x00, itmask = 0x00;
// 1033   /* Check the parameters */
// 1034   assert_param(IS_USART_ALL_PERIPH(USARTx));
// 1035   assert_param(IS_USART_CLEAR_IT(USART_IT));
// 1036   /* The CTS interrupt is not available for UART4 and UART5 */
// 1037   if (USART_IT == USART_IT_CTS)
// 1038   {
// 1039     assert_param(IS_USART_123_PERIPH(USARTx));
// 1040   }   
// 1041   
// 1042   bitpos = USART_IT >> 0x08;
// 1043   itmask = ((uint16_t)0x01 << (uint16_t)bitpos);
// 1044   USARTx->SR = (uint16_t)~itmask;
USART_ClearITPendingBit:
        MOVS     R2,#+1
        LSRS     R1,R1,#+8
        LSL      R1,R2,R1
        UXTH     R1,R1
          CFI EndBlock cfiBlock29
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
// 1045 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls USART_ClearFlag
          CFI NoCalls USART_ClearITPendingBit
        THUMB
?Subroutine1:
        MVNS     R1,R1
        STRH     R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock30

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1046 /**
// 1047   * @}
// 1048   */
// 1049 
// 1050 /**
// 1051   * @}
// 1052   */
// 1053 
// 1054 /**
// 1055   * @}
// 1056   */
// 1057 
// 1058 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 822 bytes in section .text
// 
// 822 bytes of CODE memory
//
//Errors: none
//Warnings: none
