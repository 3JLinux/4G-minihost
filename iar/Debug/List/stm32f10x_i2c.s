///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:32
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_i2c.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_i2c.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_i2c.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_GetClocksFreq

        PUBLIC I2C_ARPCmd
        PUBLIC I2C_AcknowledgeConfig
        PUBLIC I2C_CalculatePEC
        PUBLIC I2C_CheckEvent
        PUBLIC I2C_ClearFlag
        PUBLIC I2C_ClearITPendingBit
        PUBLIC I2C_Cmd
        PUBLIC I2C_DMACmd
        PUBLIC I2C_DMALastTransferCmd
        PUBLIC I2C_DeInit
        PUBLIC I2C_DualAddressCmd
        PUBLIC I2C_FastModeDutyCycleConfig
        PUBLIC I2C_GeneralCallCmd
        PUBLIC I2C_GenerateSTART
        PUBLIC I2C_GenerateSTOP
        PUBLIC I2C_GetFlagStatus
        PUBLIC I2C_GetITStatus
        PUBLIC I2C_GetLastEvent
        PUBLIC I2C_GetPEC
        PUBLIC I2C_ITConfig
        PUBLIC I2C_Init
        PUBLIC I2C_NACKPositionConfig
        PUBLIC I2C_OwnAddress2Config
        PUBLIC I2C_PECPositionConfig
        PUBLIC I2C_ReadRegister
        PUBLIC I2C_ReceiveData
        PUBLIC I2C_SMBusAlertConfig
        PUBLIC I2C_Send7bitAddress
        PUBLIC I2C_SendData
        PUBLIC I2C_SoftwareResetCmd
        PUBLIC I2C_StretchClockCmd
        PUBLIC I2C_StructInit
        PUBLIC I2C_TransmitPEC
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_i2c.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_i2c.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the I2C firmware functions.
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
//   23 #include "stm32f10x_i2c.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 
//   27 /** @addtogroup STM32F10x_StdPeriph_Driver
//   28   * @{
//   29   */
//   30 
//   31 /** @defgroup I2C 
//   32   * @brief I2C driver modules
//   33   * @{
//   34   */ 
//   35 
//   36 /** @defgroup I2C_Private_TypesDefinitions
//   37   * @{
//   38   */
//   39 
//   40 /**
//   41   * @}
//   42   */
//   43 
//   44 /** @defgroup I2C_Private_Defines
//   45   * @{
//   46   */
//   47 
//   48 /* I2C SPE mask */
//   49 #define CR1_PE_Set              ((uint16_t)0x0001)
//   50 #define CR1_PE_Reset            ((uint16_t)0xFFFE)
//   51 
//   52 /* I2C START mask */
//   53 #define CR1_START_Set           ((uint16_t)0x0100)
//   54 #define CR1_START_Reset         ((uint16_t)0xFEFF)
//   55 
//   56 /* I2C STOP mask */
//   57 #define CR1_STOP_Set            ((uint16_t)0x0200)
//   58 #define CR1_STOP_Reset          ((uint16_t)0xFDFF)
//   59 
//   60 /* I2C ACK mask */
//   61 #define CR1_ACK_Set             ((uint16_t)0x0400)
//   62 #define CR1_ACK_Reset           ((uint16_t)0xFBFF)
//   63 
//   64 /* I2C ENGC mask */
//   65 #define CR1_ENGC_Set            ((uint16_t)0x0040)
//   66 #define CR1_ENGC_Reset          ((uint16_t)0xFFBF)
//   67 
//   68 /* I2C SWRST mask */
//   69 #define CR1_SWRST_Set           ((uint16_t)0x8000)
//   70 #define CR1_SWRST_Reset         ((uint16_t)0x7FFF)
//   71 
//   72 /* I2C PEC mask */
//   73 #define CR1_PEC_Set             ((uint16_t)0x1000)
//   74 #define CR1_PEC_Reset           ((uint16_t)0xEFFF)
//   75 
//   76 /* I2C ENPEC mask */
//   77 #define CR1_ENPEC_Set           ((uint16_t)0x0020)
//   78 #define CR1_ENPEC_Reset         ((uint16_t)0xFFDF)
//   79 
//   80 /* I2C ENARP mask */
//   81 #define CR1_ENARP_Set           ((uint16_t)0x0010)
//   82 #define CR1_ENARP_Reset         ((uint16_t)0xFFEF)
//   83 
//   84 /* I2C NOSTRETCH mask */
//   85 #define CR1_NOSTRETCH_Set       ((uint16_t)0x0080)
//   86 #define CR1_NOSTRETCH_Reset     ((uint16_t)0xFF7F)
//   87 
//   88 /* I2C registers Masks */
//   89 #define CR1_CLEAR_Mask          ((uint16_t)0xFBF5)
//   90 
//   91 /* I2C DMAEN mask */
//   92 #define CR2_DMAEN_Set           ((uint16_t)0x0800)
//   93 #define CR2_DMAEN_Reset         ((uint16_t)0xF7FF)
//   94 
//   95 /* I2C LAST mask */
//   96 #define CR2_LAST_Set            ((uint16_t)0x1000)
//   97 #define CR2_LAST_Reset          ((uint16_t)0xEFFF)
//   98 
//   99 /* I2C FREQ mask */
//  100 #define CR2_FREQ_Reset          ((uint16_t)0xFFC0)
//  101 
//  102 /* I2C ADD0 mask */
//  103 #define OAR1_ADD0_Set           ((uint16_t)0x0001)
//  104 #define OAR1_ADD0_Reset         ((uint16_t)0xFFFE)
//  105 
//  106 /* I2C ENDUAL mask */
//  107 #define OAR2_ENDUAL_Set         ((uint16_t)0x0001)
//  108 #define OAR2_ENDUAL_Reset       ((uint16_t)0xFFFE)
//  109 
//  110 /* I2C ADD2 mask */
//  111 #define OAR2_ADD2_Reset         ((uint16_t)0xFF01)
//  112 
//  113 /* I2C F/S mask */
//  114 #define CCR_FS_Set              ((uint16_t)0x8000)
//  115 
//  116 /* I2C CCR mask */
//  117 #define CCR_CCR_Set             ((uint16_t)0x0FFF)
//  118 
//  119 /* I2C FLAG mask */
//  120 #define FLAG_Mask               ((uint32_t)0x00FFFFFF)
//  121 
//  122 /* I2C Interrupt Enable mask */
//  123 #define ITEN_Mask               ((uint32_t)0x07000000)
//  124 
//  125 /**
//  126   * @}
//  127   */
//  128 
//  129 /** @defgroup I2C_Private_Macros
//  130   * @{
//  131   */
//  132 
//  133 /**
//  134   * @}
//  135   */
//  136 
//  137 /** @defgroup I2C_Private_Variables
//  138   * @{
//  139   */
//  140 
//  141 /**
//  142   * @}
//  143   */
//  144 
//  145 /** @defgroup I2C_Private_FunctionPrototypes
//  146   * @{
//  147   */
//  148 
//  149 /**
//  150   * @}
//  151   */
//  152 
//  153 /** @defgroup I2C_Private_Functions
//  154   * @{
//  155   */
//  156 
//  157 /**
//  158   * @brief  Deinitializes the I2Cx peripheral registers to their default reset values.
//  159   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  160   * @retval None
//  161   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function I2C_DeInit
        THUMB
//  162 void I2C_DeInit(I2C_TypeDef* I2Cx)
//  163 {
I2C_DeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  164   /* Check the parameters */
//  165   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  166 
//  167   if (I2Cx == I2C1)
        LDR.N    R1,??DataTable1  ;; 0x40005400
        CMP      R0,R1
        BNE.N    ??I2C_DeInit_0
//  168   {
//  169     /* Enable I2C1 reset state */
//  170     RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C1, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+2097152
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  171     /* Release I2C1 from reset state */
//  172     RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C1, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+2097152
        B.N      ??I2C_DeInit_1
//  173   }
//  174   else
//  175   {
//  176     /* Enable I2C2 reset state */
//  177     RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C2, ENABLE);
??I2C_DeInit_0:
        MOVS     R1,#+1
        MOV      R0,#+4194304
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  178     /* Release I2C2 from reset state */
//  179     RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C2, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+4194304
??I2C_DeInit_1:
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall RCC_APB1PeriphResetCmd
        B.W      RCC_APB1PeriphResetCmd
          CFI EndBlock cfiBlock0
//  180   }
//  181 }
//  182 
//  183 /**
//  184   * @brief  Initializes the I2Cx peripheral according to the specified 
//  185   *   parameters in the I2C_InitStruct.
//  186   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  187   * @param  I2C_InitStruct: pointer to a I2C_InitTypeDef structure that
//  188   *   contains the configuration information for the specified I2C peripheral.
//  189   * @retval None
//  190   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function I2C_Init
        THUMB
//  191 void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct)
//  192 {
I2C_Init:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        SUB      SP,SP,#+24
          CFI CFA R13+40
//  193   uint16_t tmpreg = 0, freqrange = 0;
//  194   uint16_t result = 0x04;
//  195   uint32_t pclk1 = 8000000;
//  196   RCC_ClocksTypeDef  rcc_clocks;
//  197   /* Check the parameters */
//  198   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  199   assert_param(IS_I2C_CLOCK_SPEED(I2C_InitStruct->I2C_ClockSpeed));
//  200   assert_param(IS_I2C_MODE(I2C_InitStruct->I2C_Mode));
//  201   assert_param(IS_I2C_DUTY_CYCLE(I2C_InitStruct->I2C_DutyCycle));
//  202   assert_param(IS_I2C_OWN_ADDRESS1(I2C_InitStruct->I2C_OwnAddress1));
//  203   assert_param(IS_I2C_ACK_STATE(I2C_InitStruct->I2C_Ack));
//  204   assert_param(IS_I2C_ACKNOWLEDGE_ADDRESS(I2C_InitStruct->I2C_AcknowledgedAddress));
//  205 
//  206 /*---------------------------- I2Cx CR2 Configuration ------------------------*/
//  207   /* Get the I2Cx CR2 value */
//  208   tmpreg = I2Cx->CR2;
        LDRH     R6,[R4, #+4]
        MOV      R5,R1
//  209   /* Clear frequency FREQ[5:0] bits */
//  210   tmpreg &= CR2_FREQ_Reset;
//  211   /* Get pclk1 frequency value */
//  212   RCC_GetClocksFreq(&rcc_clocks);
        ADD      R0,SP,#+0
          CFI FunCall RCC_GetClocksFreq
        BL       RCC_GetClocksFreq
//  213   pclk1 = rcc_clocks.PCLK1_Frequency;
        LDR      R1,[SP, #+8]
//  214   /* Set frequency bits depending on pclk1 value */
//  215   freqrange = (uint16_t)(pclk1 / 1000000);
        LDR.N    R0,??DataTable1_1  ;; 0xf4240
//  216   tmpreg |= freqrange;
//  217   /* Write to I2Cx CR2 */
//  218   I2Cx->CR2 = tmpreg;
        MOVW     R2,#+65472
        UDIV     R0,R1,R0
        ANDS     R2,R2,R6
        ORRS     R2,R0,R2
        STRH     R2,[R4, #+4]
//  219 
//  220 /*---------------------------- I2Cx CCR Configuration ------------------------*/
//  221   /* Disable the selected I2C peripheral to configure TRISE */
//  222   I2Cx->CR1 &= CR1_PE_Reset;
        MOVW     R3,#+65534
        LDRH     R2,[R4, #+0]
        ANDS     R2,R3,R2
        STRH     R2,[R4, #+0]
//  223   /* Reset tmpreg value */
//  224   /* Clear F/S, DUTY and CCR[11:0] bits */
//  225   tmpreg = 0;
//  226 
//  227   /* Configure speed in standard mode */
//  228   if (I2C_InitStruct->I2C_ClockSpeed <= 100000)
        LDR.N    R3,??DataTable1_2  ;; 0x186a1
        LDR      R2,[R5, #+0]
        CMP      R2,R3
        BCS.N    ??I2C_Init_0
//  229   {
//  230     /* Standard mode speed calculate */
//  231     result = (uint16_t)(pclk1 / (I2C_InitStruct->I2C_ClockSpeed << 1));
        LSLS     R2,R2,#+1
        UDIV     R1,R1,R2
//  232     /* Test if CCR value is under 0x4*/
//  233     if (result < 0x04)
        UXTH     R2,R1
        CMP      R2,#+4
        IT       LT 
        MOVLT    R1,#+4
//  234     {
//  235       /* Set minimum allowed value */
//  236       result = 0x04;  
//  237     }
//  238     /* Set speed value for standard mode */
//  239     tmpreg |= result;	  
        UXTH     R1,R1
//  240     /* Set Maximum Rise Time for standard mode */
//  241     I2Cx->TRISE = freqrange + 1; 
        B.N      ??I2C_Init_1
//  242   }
//  243   /* Configure speed in fast mode */
//  244   else /*(I2C_InitStruct->I2C_ClockSpeed <= 400000)*/
//  245   {
//  246     if (I2C_InitStruct->I2C_DutyCycle == I2C_DutyCycle_2)
??I2C_Init_0:
        LDRH     R3,[R5, #+6]
        MOVW     R6,#+49151
        CMP      R3,R6
        BNE.N    ??I2C_Init_2
//  247     {
//  248       /* Fast mode speed calculate: Tlow/Thigh = 2 */
//  249       result = (uint16_t)(pclk1 / (I2C_InitStruct->I2C_ClockSpeed * 3));
        ADD      R2,R2,R2, LSL #+1
        UDIV     R1,R1,R2
        B.N      ??I2C_Init_3
//  250     }
//  251     else /*I2C_InitStruct->I2C_DutyCycle == I2C_DutyCycle_16_9*/
//  252     {
//  253       /* Fast mode speed calculate: Tlow/Thigh = 16/9 */
//  254       result = (uint16_t)(pclk1 / (I2C_InitStruct->I2C_ClockSpeed * 25));
//  255       /* Set DUTY bit */
//  256       result |= I2C_DutyCycle_16_9;
??I2C_Init_2:
        MOVS     R3,#+25
        MULS     R2,R3,R2
        UDIV     R1,R1,R2
        ORR      R1,R1,#0x4000
        UXTH     R1,R1
//  257     }
//  258 
//  259     /* Test if CCR value is under 0x1*/
//  260     if ((result & CCR_CCR_Set) == 0)
??I2C_Init_3:
        LSLS     R2,R1,#+20
        ITT      EQ 
        ORREQ    R1,R1,#0x1
        UXTHEQ   R1,R1
//  261     {
//  262       /* Set minimum allowed value */
//  263       result |= (uint16_t)0x0001;  
//  264     }
//  265     /* Set speed value and set F/S bit for fast mode */
//  266     tmpreg |= (uint16_t)(result | CCR_FS_Set);
//  267     /* Set Maximum Rise Time for fast mode */
//  268     I2Cx->TRISE = (uint16_t)(((freqrange * (uint16_t)300) / (uint16_t)1000) + (uint16_t)1);  
        UXTH     R0,R0
        MOV      R2,#+300
        MULS     R0,R2,R0
        ORR      R1,R1,#0x8000
        MOV      R2,#+1000
        UXTH     R1,R1
        SDIV     R0,R0,R2
??I2C_Init_1:
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+32]
//  269   }
//  270 
//  271   /* Write to I2Cx CCR */
//  272   I2Cx->CCR = tmpreg;
        STRH     R1,[R4, #+28]
        MOVW     R1,#+64501
//  273   /* Enable the selected I2C peripheral */
//  274   I2Cx->CR1 |= CR1_PE_Set;
        LDRH     R0,[R4, #+0]
        ORR      R0,R0,#0x1
        STRH     R0,[R4, #+0]
//  275 
//  276 /*---------------------------- I2Cx CR1 Configuration ------------------------*/
//  277   /* Get the I2Cx CR1 value */
//  278   tmpreg = I2Cx->CR1;
//  279   /* Clear ACK, SMBTYPE and  SMBUS bits */
//  280   tmpreg &= CR1_CLEAR_Mask;
//  281   /* Configure I2Cx: mode and acknowledgement */
//  282   /* Set SMBTYPE and SMBUS bits according to I2C_Mode value */
//  283   /* Set ACK bit according to I2C_Ack value */
//  284   tmpreg |= (uint16_t)((uint32_t)I2C_InitStruct->I2C_Mode | I2C_InitStruct->I2C_Ack);
//  285   /* Write to I2Cx CR1 */
//  286   I2Cx->CR1 = tmpreg;
        LDRH     R0,[R4, #+0]
        ANDS     R0,R1,R0
        LDRH     R1,[R5, #+4]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+0]
//  287 
//  288 /*---------------------------- I2Cx OAR1 Configuration -----------------------*/
//  289   /* Set I2Cx Own Address1 and acknowledged address */
//  290   I2Cx->OAR1 = (I2C_InitStruct->I2C_AcknowledgedAddress | I2C_InitStruct->I2C_OwnAddress1);
        LDRH     R1,[R5, #+8]
        LDRH     R0,[R5, #+12]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+8]
//  291 }
        ADD      SP,SP,#+24
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x186a1
//  292 
//  293 /**
//  294   * @brief  Fills each I2C_InitStruct member with its default value.
//  295   * @param  I2C_InitStruct: pointer to an I2C_InitTypeDef structure which will be initialized.
//  296   * @retval None
//  297   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function I2C_StructInit
          CFI NoCalls
        THUMB
//  298 void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct)
//  299 {
//  300 /*---------------- Reset I2C init structure parameters values ----------------*/
//  301   /* initialize the I2C_ClockSpeed member */
//  302   I2C_InitStruct->I2C_ClockSpeed = 5000;
I2C_StructInit:
        MOVW     R1,#+5000
        STR      R1,[R0, #+0]
//  303   /* Initialize the I2C_Mode member */
//  304   I2C_InitStruct->I2C_Mode = I2C_Mode_I2C;
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  305   /* Initialize the I2C_DutyCycle member */
//  306   I2C_InitStruct->I2C_DutyCycle = I2C_DutyCycle_2;
        MOVW     R1,#+49151
        STRH     R1,[R0, #+6]
//  307   /* Initialize the I2C_OwnAddress1 member */
//  308   I2C_InitStruct->I2C_OwnAddress1 = 0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
//  309   /* Initialize the I2C_Ack member */
//  310   I2C_InitStruct->I2C_Ack = I2C_Ack_Disable;
        STRH     R1,[R0, #+10]
//  311   /* Initialize the I2C_AcknowledgedAddress member */
//  312   I2C_InitStruct->I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
        MOV      R1,#+16384
        STRH     R1,[R0, #+12]
//  313 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  314 
//  315 /**
//  316   * @brief  Enables or disables the specified I2C peripheral.
//  317   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  318   * @param  NewState: new state of the I2Cx peripheral. 
//  319   *   This parameter can be: ENABLE or DISABLE.
//  320   * @retval None
//  321   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function I2C_Cmd
          CFI NoCalls
        THUMB
//  322 void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  323 {
//  324   /* Check the parameters */
//  325   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  326   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  327   if (NewState != DISABLE)
I2C_Cmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x1
        MOVWEQ   R2,#+65534
        ANDEQ    R1,R2,R1
//  328   {
//  329     /* Enable the selected I2C peripheral */
//  330     I2Cx->CR1 |= CR1_PE_Set;
//  331   }
//  332   else
//  333   {
//  334     /* Disable the selected I2C peripheral */
//  335     I2Cx->CR1 &= CR1_PE_Reset;
        STRH     R1,[R0, #+0]
//  336   }
//  337 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  338 
//  339 /**
//  340   * @brief  Enables or disables the specified I2C DMA requests.
//  341   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  342   * @param  NewState: new state of the I2C DMA transfer.
//  343   *   This parameter can be: ENABLE or DISABLE.
//  344   * @retval None
//  345   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function I2C_DMACmd
          CFI NoCalls
        THUMB
//  346 void I2C_DMACmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  347 {
//  348   /* Check the parameters */
//  349   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  350   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  351   if (NewState != DISABLE)
I2C_DMACmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+4]
        ITEE     NE 
        ORRNE    R1,R1,#0x800
        MOVWEQ   R2,#+63487
        ANDEQ    R1,R2,R1
//  352   {
//  353     /* Enable the selected I2C DMA requests */
//  354     I2Cx->CR2 |= CR2_DMAEN_Set;
//  355   }
//  356   else
//  357   {
//  358     /* Disable the selected I2C DMA requests */
//  359     I2Cx->CR2 &= CR2_DMAEN_Reset;
        STRH     R1,[R0, #+4]
//  360   }
//  361 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  362 
//  363 /**
//  364   * @brief  Specifies if the next DMA transfer will be the last one.
//  365   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  366   * @param  NewState: new state of the I2C DMA last transfer.
//  367   *   This parameter can be: ENABLE or DISABLE.
//  368   * @retval None
//  369   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function I2C_DMALastTransferCmd
          CFI NoCalls
        THUMB
//  370 void I2C_DMALastTransferCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  371 {
//  372   /* Check the parameters */
//  373   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  374   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  375   if (NewState != DISABLE)
I2C_DMALastTransferCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+4]
        ITEE     NE 
        ORRNE    R1,R1,#0x1000
        MOVWEQ   R2,#+61439
        ANDEQ    R1,R2,R1
//  376   {
//  377     /* Next DMA transfer is the last transfer */
//  378     I2Cx->CR2 |= CR2_LAST_Set;
//  379   }
//  380   else
//  381   {
//  382     /* Next DMA transfer is not the last transfer */
//  383     I2Cx->CR2 &= CR2_LAST_Reset;
        STRH     R1,[R0, #+4]
//  384   }
//  385 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  386 
//  387 /**
//  388   * @brief  Generates I2Cx communication START condition.
//  389   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  390   * @param  NewState: new state of the I2C START condition generation.
//  391   *   This parameter can be: ENABLE or DISABLE.
//  392   * @retval None.
//  393   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function I2C_GenerateSTART
          CFI NoCalls
        THUMB
//  394 void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  395 {
//  396   /* Check the parameters */
//  397   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  398   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  399   if (NewState != DISABLE)
I2C_GenerateSTART:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x100
        MOVWEQ   R2,#+65279
        ANDEQ    R1,R2,R1
//  400   {
//  401     /* Generate a START condition */
//  402     I2Cx->CR1 |= CR1_START_Set;
//  403   }
//  404   else
//  405   {
//  406     /* Disable the START condition generation */
//  407     I2Cx->CR1 &= CR1_START_Reset;
        STRH     R1,[R0, #+0]
//  408   }
//  409 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  410 
//  411 /**
//  412   * @brief  Generates I2Cx communication STOP condition.
//  413   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  414   * @param  NewState: new state of the I2C STOP condition generation.
//  415   *   This parameter can be: ENABLE or DISABLE.
//  416   * @retval None.
//  417   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function I2C_GenerateSTOP
          CFI NoCalls
        THUMB
//  418 void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  419 {
//  420   /* Check the parameters */
//  421   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  422   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  423   if (NewState != DISABLE)
I2C_GenerateSTOP:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x200
        MOVWEQ   R2,#+65023
        ANDEQ    R1,R2,R1
//  424   {
//  425     /* Generate a STOP condition */
//  426     I2Cx->CR1 |= CR1_STOP_Set;
//  427   }
//  428   else
//  429   {
//  430     /* Disable the STOP condition generation */
//  431     I2Cx->CR1 &= CR1_STOP_Reset;
        STRH     R1,[R0, #+0]
//  432   }
//  433 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  434 
//  435 /**
//  436   * @brief  Enables or disables the specified I2C acknowledge feature.
//  437   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  438   * @param  NewState: new state of the I2C Acknowledgement.
//  439   *   This parameter can be: ENABLE or DISABLE.
//  440   * @retval None.
//  441   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function I2C_AcknowledgeConfig
          CFI NoCalls
        THUMB
//  442 void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  443 {
//  444   /* Check the parameters */
//  445   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  446   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  447   if (NewState != DISABLE)
I2C_AcknowledgeConfig:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x400
        MOVWEQ   R2,#+64511
        ANDEQ    R1,R2,R1
//  448   {
//  449     /* Enable the acknowledgement */
//  450     I2Cx->CR1 |= CR1_ACK_Set;
//  451   }
//  452   else
//  453   {
//  454     /* Disable the acknowledgement */
//  455     I2Cx->CR1 &= CR1_ACK_Reset;
        STRH     R1,[R0, #+0]
//  456   }
//  457 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  458 
//  459 /**
//  460   * @brief  Configures the specified I2C own address2.
//  461   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  462   * @param  Address: specifies the 7bit I2C own address2.
//  463   * @retval None.
//  464   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function I2C_OwnAddress2Config
          CFI NoCalls
        THUMB
//  465 void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint8_t Address)
//  466 {
//  467   uint16_t tmpreg = 0;
//  468 
//  469   /* Check the parameters */
//  470   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  471 
//  472   /* Get the old register value */
//  473   tmpreg = I2Cx->OAR2;
//  474 
//  475   /* Reset I2Cx Own address2 bit [7:1] */
//  476   tmpreg &= OAR2_ADD2_Reset;
//  477 
//  478   /* Set I2Cx Own address2 */
//  479   tmpreg |= (uint16_t)((uint16_t)Address & (uint16_t)0x00FE);
//  480 
//  481   /* Store the new register value */
//  482   I2Cx->OAR2 = tmpreg;
I2C_OwnAddress2Config:
        LDRH     R2,[R0, #+12]
        MOVW     R3,#+65281
        ANDS     R2,R3,R2
        AND      R1,R1,#0xFE
        ORRS     R1,R1,R2
        STRH     R1,[R0, #+12]
//  483 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  484 
//  485 /**
//  486   * @brief  Enables or disables the specified I2C dual addressing mode.
//  487   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  488   * @param  NewState: new state of the I2C dual addressing mode.
//  489   *   This parameter can be: ENABLE or DISABLE.
//  490   * @retval None
//  491   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function I2C_DualAddressCmd
          CFI NoCalls
        THUMB
//  492 void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  493 {
//  494   /* Check the parameters */
//  495   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  496   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  497   if (NewState != DISABLE)
I2C_DualAddressCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+12]
        ITEE     NE 
        ORRNE    R1,R1,#0x1
        MOVWEQ   R2,#+65534
        ANDEQ    R1,R2,R1
//  498   {
//  499     /* Enable dual addressing mode */
//  500     I2Cx->OAR2 |= OAR2_ENDUAL_Set;
//  501   }
//  502   else
//  503   {
//  504     /* Disable dual addressing mode */
//  505     I2Cx->OAR2 &= OAR2_ENDUAL_Reset;
        STRH     R1,[R0, #+12]
//  506   }
//  507 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  508 
//  509 /**
//  510   * @brief  Enables or disables the specified I2C general call feature.
//  511   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  512   * @param  NewState: new state of the I2C General call.
//  513   *   This parameter can be: ENABLE or DISABLE.
//  514   * @retval None
//  515   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function I2C_GeneralCallCmd
          CFI NoCalls
        THUMB
//  516 void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  517 {
//  518   /* Check the parameters */
//  519   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  520   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  521   if (NewState != DISABLE)
I2C_GeneralCallCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x40
        MOVWEQ   R2,#+65471
        ANDEQ    R1,R2,R1
//  522   {
//  523     /* Enable generall call */
//  524     I2Cx->CR1 |= CR1_ENGC_Set;
//  525   }
//  526   else
//  527   {
//  528     /* Disable generall call */
//  529     I2Cx->CR1 &= CR1_ENGC_Reset;
        STRH     R1,[R0, #+0]
//  530   }
//  531 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  532 
//  533 /**
//  534   * @brief  Enables or disables the specified I2C interrupts.
//  535   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  536   * @param  I2C_IT: specifies the I2C interrupts sources to be enabled or disabled. 
//  537   *   This parameter can be any combination of the following values:
//  538   *     @arg I2C_IT_BUF: Buffer interrupt mask
//  539   *     @arg I2C_IT_EVT: Event interrupt mask
//  540   *     @arg I2C_IT_ERR: Error interrupt mask
//  541   * @param  NewState: new state of the specified I2C interrupts.
//  542   *   This parameter can be: ENABLE or DISABLE.
//  543   * @retval None
//  544   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function I2C_ITConfig
          CFI NoCalls
        THUMB
//  545 void I2C_ITConfig(I2C_TypeDef* I2Cx, uint16_t I2C_IT, FunctionalState NewState)
//  546 {
//  547   /* Check the parameters */
//  548   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  549   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  550   assert_param(IS_I2C_CONFIG_IT(I2C_IT));
//  551   
//  552   if (NewState != DISABLE)
I2C_ITConfig:
        CMP      R2,#+0
        LDRH     R2,[R0, #+4]
        ITE      NE 
        ORRNE    R1,R1,R2
        BICEQ    R1,R2,R1
//  553   {
//  554     /* Enable the selected I2C interrupts */
//  555     I2Cx->CR2 |= I2C_IT;
//  556   }
//  557   else
//  558   {
//  559     /* Disable the selected I2C interrupts */
//  560     I2Cx->CR2 &= (uint16_t)~I2C_IT;
        STRH     R1,[R0, #+4]
//  561   }
//  562 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  563 
//  564 /**
//  565   * @brief  Sends a data byte through the I2Cx peripheral.
//  566   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  567   * @param  Data: Byte to be transmitted..
//  568   * @retval None
//  569   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function I2C_SendData
          CFI NoCalls
        THUMB
//  570 void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data)
//  571 {
//  572   /* Check the parameters */
//  573   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  574   /* Write in the DR register the data to be sent */
//  575   I2Cx->DR = Data;
I2C_SendData:
        STRH     R1,[R0, #+16]
//  576 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  577 
//  578 /**
//  579   * @brief  Returns the most recent received data by the I2Cx peripheral.
//  580   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  581   * @retval The value of the received data.
//  582   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function I2C_ReceiveData
          CFI NoCalls
        THUMB
//  583 uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx)
//  584 {
//  585   /* Check the parameters */
//  586   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  587   /* Return the data in the DR register */
//  588   return (uint8_t)I2Cx->DR;
I2C_ReceiveData:
        LDRH     R0,[R0, #+16]
        UXTB     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  589 }
//  590 
//  591 /**
//  592   * @brief  Transmits the address byte to select the slave device.
//  593   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  594   * @param  Address: specifies the slave address which will be transmitted
//  595   * @param  I2C_Direction: specifies whether the I2C device will be a
//  596   *   Transmitter or a Receiver. This parameter can be one of the following values
//  597   *     @arg I2C_Direction_Transmitter: Transmitter mode
//  598   *     @arg I2C_Direction_Receiver: Receiver mode
//  599   * @retval None.
//  600   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function I2C_Send7bitAddress
          CFI NoCalls
        THUMB
//  601 void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, uint8_t I2C_Direction)
//  602 {
//  603   /* Check the parameters */
//  604   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  605   assert_param(IS_I2C_DIRECTION(I2C_Direction));
//  606   /* Test on the direction to set/reset the read/write bit */
//  607   if (I2C_Direction != I2C_Direction_Transmitter)
I2C_Send7bitAddress:
        CMP      R2,#+0
        ITE      NE 
        ORRNE    R1,R1,#0x1
        ANDEQ    R1,R1,#0xFE
//  608   {
//  609     /* Set the address bit0 for read */
//  610     Address |= OAR1_ADD0_Set;
//  611   }
//  612   else
//  613   {
//  614     /* Reset the address bit0 for write */
//  615     Address &= OAR1_ADD0_Reset;
//  616   }
//  617   /* Send the address */
//  618   I2Cx->DR = Address;
        STRH     R1,[R0, #+16]
//  619 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  620 
//  621 /**
//  622   * @brief  Reads the specified I2C register and returns its value.
//  623   * @param  I2C_Register: specifies the register to read.
//  624   *   This parameter can be one of the following values:
//  625   *     @arg I2C_Register_CR1:  CR1 register.
//  626   *     @arg I2C_Register_CR2:   CR2 register.
//  627   *     @arg I2C_Register_OAR1:  OAR1 register.
//  628   *     @arg I2C_Register_OAR2:  OAR2 register.
//  629   *     @arg I2C_Register_DR:    DR register.
//  630   *     @arg I2C_Register_SR1:   SR1 register.
//  631   *     @arg I2C_Register_SR2:   SR2 register.
//  632   *     @arg I2C_Register_CCR:   CCR register.
//  633   *     @arg I2C_Register_TRISE: TRISE register.
//  634   * @retval The value of the read register.
//  635   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function I2C_ReadRegister
          CFI NoCalls
        THUMB
//  636 uint16_t I2C_ReadRegister(I2C_TypeDef* I2Cx, uint8_t I2C_Register)
//  637 {
I2C_ReadRegister:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  638   __IO uint32_t tmp = 0;
        MOVS     R2,#+0
        STR      R2,[SP, #+0]
//  639 
//  640   /* Check the parameters */
//  641   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  642   assert_param(IS_I2C_REGISTER(I2C_Register));
//  643 
//  644   tmp = (uint32_t) I2Cx;
        STR      R0,[SP, #+0]
//  645   tmp += I2C_Register;
        LDR      R0,[SP, #+0]
        ADDS     R0,R1,R0
        STR      R0,[SP, #+0]
//  646 
//  647   /* Return the selected register value */
//  648   return (*(__IO uint16_t *) tmp);
        LDR      R0,[SP, #+0]
        LDRH     R0,[R0, #+0]
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  649 }
//  650 
//  651 /**
//  652   * @brief  Enables or disables the specified I2C software reset.
//  653   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  654   * @param  NewState: new state of the I2C software reset.
//  655   *   This parameter can be: ENABLE or DISABLE.
//  656   * @retval None
//  657   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function I2C_SoftwareResetCmd
          CFI NoCalls
        THUMB
//  658 void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  659 {
//  660   /* Check the parameters */
//  661   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  662   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  663   if (NewState != DISABLE)
I2C_SoftwareResetCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x8000
        LSLEQ    R1,R1,#+17
        LSREQ    R1,R1,#+17
//  664   {
//  665     /* Peripheral under reset */
//  666     I2Cx->CR1 |= CR1_SWRST_Set;
//  667   }
//  668   else
//  669   {
//  670     /* Peripheral not under reset */
//  671     I2Cx->CR1 &= CR1_SWRST_Reset;
        STRH     R1,[R0, #+0]
//  672   }
//  673 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  674 
//  675 /**
//  676   * @brief  Selects the specified I2C NACK position in master receiver mode.
//  677   *         This function is useful in I2C Master Receiver mode when the number
//  678   *         of data to be received is equal to 2. In this case, this function 
//  679   *         should be called (with parameter I2C_NACKPosition_Next) before data 
//  680   *         reception starts,as described in the 2-byte reception procedure 
//  681   *         recommended in Reference Manual in Section: Master receiver.                
//  682   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  683   * @param  I2C_NACKPosition: specifies the NACK position. 
//  684   *   This parameter can be one of the following values:
//  685   *     @arg I2C_NACKPosition_Next: indicates that the next byte will be the last
//  686   *          received byte.  
//  687   *     @arg I2C_NACKPosition_Current: indicates that current byte is the last 
//  688   *          received byte.
//  689   *            
//  690   * @note    This function configures the same bit (POS) as I2C_PECPositionConfig() 
//  691   *          but is intended to be used in I2C mode while I2C_PECPositionConfig() 
//  692   *          is intended to used in SMBUS mode. 
//  693   *            
//  694   * @retval None
//  695   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function I2C_NACKPositionConfig
          CFI NoCalls
        THUMB
//  696 void I2C_NACKPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_NACKPosition)
//  697 {
//  698   /* Check the parameters */
//  699   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  700   assert_param(IS_I2C_NACK_POSITION(I2C_NACKPosition));
//  701   
//  702   /* Check the input parameter */
//  703   if (I2C_NACKPosition == I2C_NACKPosition_Next)
I2C_NACKPositionConfig:
        CMP      R1,#+2048
        LDRH     R1,[R0, #+0]
        ITEE     EQ 
        ORREQ    R1,R1,#0x800
        MOVWNE   R2,#+63487
        ANDNE    R1,R2,R1
//  704   {
//  705     /* Next byte in shift register is the last received byte */
//  706     I2Cx->CR1 |= I2C_NACKPosition_Next;
//  707   }
//  708   else
//  709   {
//  710     /* Current byte in shift register is the last received byte */
//  711     I2Cx->CR1 &= I2C_NACKPosition_Current;
        STRH     R1,[R0, #+0]
//  712   }
//  713 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  714 
//  715 /**
//  716   * @brief  Drives the SMBusAlert pin high or low for the specified I2C.
//  717   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  718   * @param  I2C_SMBusAlert: specifies SMBAlert pin level. 
//  719   *   This parameter can be one of the following values:
//  720   *     @arg I2C_SMBusAlert_Low: SMBAlert pin driven low
//  721   *     @arg I2C_SMBusAlert_High: SMBAlert pin driven high
//  722   * @retval None
//  723   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function I2C_SMBusAlertConfig
          CFI NoCalls
        THUMB
//  724 void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, uint16_t I2C_SMBusAlert)
//  725 {
//  726   /* Check the parameters */
//  727   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  728   assert_param(IS_I2C_SMBUS_ALERT(I2C_SMBusAlert));
//  729   if (I2C_SMBusAlert == I2C_SMBusAlert_Low)
I2C_SMBusAlertConfig:
        CMP      R1,#+8192
        LDRH     R1,[R0, #+0]
        ITEE     EQ 
        ORREQ    R1,R1,#0x2000
        MOVWNE   R2,#+57343
        ANDNE    R1,R2,R1
//  730   {
//  731     /* Drive the SMBusAlert pin Low */
//  732     I2Cx->CR1 |= I2C_SMBusAlert_Low;
//  733   }
//  734   else
//  735   {
//  736     /* Drive the SMBusAlert pin High  */
//  737     I2Cx->CR1 &= I2C_SMBusAlert_High;
        STRH     R1,[R0, #+0]
//  738   }
//  739 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
//  740 
//  741 /**
//  742   * @brief  Enables or disables the specified I2C PEC transfer.
//  743   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  744   * @param  NewState: new state of the I2C PEC transmission.
//  745   *   This parameter can be: ENABLE or DISABLE.
//  746   * @retval None
//  747   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function I2C_TransmitPEC
          CFI NoCalls
        THUMB
//  748 void I2C_TransmitPEC(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  749 {
//  750   /* Check the parameters */
//  751   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  752   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  753   if (NewState != DISABLE)
I2C_TransmitPEC:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x1000
        MOVWEQ   R2,#+61439
        ANDEQ    R1,R2,R1
//  754   {
//  755     /* Enable the selected I2C PEC transmission */
//  756     I2Cx->CR1 |= CR1_PEC_Set;
//  757   }
//  758   else
//  759   {
//  760     /* Disable the selected I2C PEC transmission */
//  761     I2Cx->CR1 &= CR1_PEC_Reset;
        STRH     R1,[R0, #+0]
//  762   }
//  763 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  764 
//  765 /**
//  766   * @brief  Selects the specified I2C PEC position.
//  767   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  768   * @param  I2C_PECPosition: specifies the PEC position. 
//  769   *   This parameter can be one of the following values:
//  770   *     @arg I2C_PECPosition_Next: indicates that the next byte is PEC
//  771   *     @arg I2C_PECPosition_Current: indicates that current byte is PEC
//  772   *       
//  773   * @note    This function configures the same bit (POS) as I2C_NACKPositionConfig()
//  774   *          but is intended to be used in SMBUS mode while I2C_NACKPositionConfig() 
//  775   *          is intended to used in I2C mode.
//  776   *               
//  777   * @retval None
//  778   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function I2C_PECPositionConfig
          CFI NoCalls
        THUMB
//  779 void I2C_PECPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_PECPosition)
//  780 {
//  781   /* Check the parameters */
//  782   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  783   assert_param(IS_I2C_PEC_POSITION(I2C_PECPosition));
//  784   if (I2C_PECPosition == I2C_PECPosition_Next)
I2C_PECPositionConfig:
        CMP      R1,#+2048
        LDRH     R1,[R0, #+0]
        ITEE     EQ 
        ORREQ    R1,R1,#0x800
        MOVWNE   R2,#+63487
        ANDNE    R1,R2,R1
//  785   {
//  786     /* Next byte in shift register is PEC */
//  787     I2Cx->CR1 |= I2C_PECPosition_Next;
//  788   }
//  789   else
//  790   {
//  791     /* Current byte in shift register is PEC */
//  792     I2Cx->CR1 &= I2C_PECPosition_Current;
        STRH     R1,[R0, #+0]
//  793   }
//  794 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  795 
//  796 /**
//  797   * @brief  Enables or disables the PEC value calculation of the transferred bytes.
//  798   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  799   * @param  NewState: new state of the I2Cx PEC value calculation.
//  800   *   This parameter can be: ENABLE or DISABLE.
//  801   * @retval None
//  802   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function I2C_CalculatePEC
          CFI NoCalls
        THUMB
//  803 void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  804 {
//  805   /* Check the parameters */
//  806   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  807   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  808   if (NewState != DISABLE)
I2C_CalculatePEC:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x20
        MOVWEQ   R2,#+65503
        ANDEQ    R1,R2,R1
//  809   {
//  810     /* Enable the selected I2C PEC calculation */
//  811     I2Cx->CR1 |= CR1_ENPEC_Set;
//  812   }
//  813   else
//  814   {
//  815     /* Disable the selected I2C PEC calculation */
//  816     I2Cx->CR1 &= CR1_ENPEC_Reset;
        STRH     R1,[R0, #+0]
//  817   }
//  818 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
//  819 
//  820 /**
//  821   * @brief  Returns the PEC value for the specified I2C.
//  822   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  823   * @retval The PEC value.
//  824   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function I2C_GetPEC
          CFI NoCalls
        THUMB
//  825 uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx)
//  826 {
//  827   /* Check the parameters */
//  828   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  829   /* Return the selected I2C PEC value */
//  830   return ((I2Cx->SR2) >> 8);
I2C_GetPEC:
        LDRH     R0,[R0, #+24]
        LSRS     R0,R0,#+8
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  831 }
//  832 
//  833 /**
//  834   * @brief  Enables or disables the specified I2C ARP.
//  835   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  836   * @param  NewState: new state of the I2Cx ARP. 
//  837   *   This parameter can be: ENABLE or DISABLE.
//  838   * @retval None
//  839   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function I2C_ARPCmd
          CFI NoCalls
        THUMB
//  840 void I2C_ARPCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  841 {
//  842   /* Check the parameters */
//  843   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  844   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  845   if (NewState != DISABLE)
I2C_ARPCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x10
        MOVWEQ   R2,#+65519
        ANDEQ    R1,R2,R1
//  846   {
//  847     /* Enable the selected I2C ARP */
//  848     I2Cx->CR1 |= CR1_ENARP_Set;
//  849   }
//  850   else
//  851   {
//  852     /* Disable the selected I2C ARP */
//  853     I2Cx->CR1 &= CR1_ENARP_Reset;
        STRH     R1,[R0, #+0]
//  854   }
//  855 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
//  856 
//  857 /**
//  858   * @brief  Enables or disables the specified I2C Clock stretching.
//  859   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  860   * @param  NewState: new state of the I2Cx Clock stretching.
//  861   *   This parameter can be: ENABLE or DISABLE.
//  862   * @retval None
//  863   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function I2C_StretchClockCmd
          CFI NoCalls
        THUMB
//  864 void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState)
//  865 {
//  866   /* Check the parameters */
//  867   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  868   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  869   if (NewState == DISABLE)
I2C_StretchClockCmd:
        CMP      R1,#+0
        LDRH     R1,[R0, #+0]
        ITEE     EQ 
        ORREQ    R1,R1,#0x80
        MOVWNE   R2,#+65407
        ANDNE    R1,R2,R1
//  870   {
//  871     /* Enable the selected I2C Clock stretching */
//  872     I2Cx->CR1 |= CR1_NOSTRETCH_Set;
//  873   }
//  874   else
//  875   {
//  876     /* Disable the selected I2C Clock stretching */
//  877     I2Cx->CR1 &= CR1_NOSTRETCH_Reset;
        STRH     R1,[R0, #+0]
//  878   }
//  879 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
//  880 
//  881 /**
//  882   * @brief  Selects the specified I2C fast mode duty cycle.
//  883   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  884   * @param  I2C_DutyCycle: specifies the fast mode duty cycle.
//  885   *   This parameter can be one of the following values:
//  886   *     @arg I2C_DutyCycle_2: I2C fast mode Tlow/Thigh = 2
//  887   *     @arg I2C_DutyCycle_16_9: I2C fast mode Tlow/Thigh = 16/9
//  888   * @retval None
//  889   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function I2C_FastModeDutyCycleConfig
          CFI NoCalls
        THUMB
//  890 void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, uint16_t I2C_DutyCycle)
//  891 {
//  892   /* Check the parameters */
//  893   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  894   assert_param(IS_I2C_DUTY_CYCLE(I2C_DutyCycle));
//  895   if (I2C_DutyCycle != I2C_DutyCycle_16_9)
I2C_FastModeDutyCycleConfig:
        CMP      R1,#+16384
        LDRH     R1,[R0, #+28]
        ITTE     NE 
        MOVWNE   R2,#+49151
        ANDNE    R1,R2,R1
        ORREQ    R1,R1,#0x4000
//  896   {
//  897     /* I2C fast mode Tlow/Thigh=2 */
//  898     I2Cx->CCR &= I2C_DutyCycle_2;
//  899   }
//  900   else
//  901   {
//  902     /* I2C fast mode Tlow/Thigh=16/9 */
//  903     I2Cx->CCR |= I2C_DutyCycle_16_9;
        STRH     R1,[R0, #+28]
//  904   }
//  905 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
//  906 
//  907 
//  908 
//  909 /**
//  910  * @brief
//  911  ****************************************************************************************
//  912  *
//  913  *                         I2C State Monitoring Functions
//  914  *                       
//  915  ****************************************************************************************   
//  916  * This I2C driver provides three different ways for I2C state monitoring
//  917  *  depending on the application requirements and constraints:
//  918  *        
//  919  *  
//  920  * 1) Basic state monitoring:
//  921  *    Using I2C_CheckEvent() function:
//  922  *    It compares the status registers (SR1 and SR2) content to a given event
//  923  *    (can be the combination of one or more flags).
//  924  *    It returns SUCCESS if the current status includes the given flags 
//  925  *    and returns ERROR if one or more flags are missing in the current status.
//  926  *    - When to use:
//  927  *      - This function is suitable for most applications as well as for startup 
//  928  *      activity since the events are fully described in the product reference manual 
//  929  *      (RM0008).
//  930  *      - It is also suitable for users who need to define their own events.
//  931  *    - Limitations:
//  932  *      - If an error occurs (ie. error flags are set besides to the monitored flags),
//  933  *        the I2C_CheckEvent() function may return SUCCESS despite the communication
//  934  *        hold or corrupted real state. 
//  935  *        In this case, it is advised to use error interrupts to monitor the error
//  936  *        events and handle them in the interrupt IRQ handler.
//  937  *        
//  938  *        @note 
//  939  *        For error management, it is advised to use the following functions:
//  940  *          - I2C_ITConfig() to configure and enable the error interrupts (I2C_IT_ERR).
//  941  *          - I2Cx_ER_IRQHandler() which is called when the error interrupt occurs.
//  942  *            Where x is the peripheral instance (I2C1, I2C2 ...)
//  943  *          - I2C_GetFlagStatus() or I2C_GetITStatus() to be called into I2Cx_ER_IRQHandler() 
//  944  *            in order to determine which error occured.
//  945  *          - I2C_ClearFlag() or I2C_ClearITPendingBit() and/or I2C_SoftwareResetCmd()
//  946  *            and/or I2C_GenerateStop() in order to clear the error flag and source,
//  947  *            and return to correct communication status.
//  948  *            
//  949  *
//  950  *  2) Advanced state monitoring:
//  951  *     Using the function I2C_GetLastEvent() which returns the image of both status 
//  952  *     registers in a single word (uint32_t) (Status Register 2 value is shifted left 
//  953  *     by 16 bits and concatenated to Status Register 1).
//  954  *     - When to use:
//  955  *       - This function is suitable for the same applications above but it allows to
//  956  *         overcome the mentioned limitation of I2C_GetFlagStatus() function.
//  957  *         The returned value could be compared to events already defined in the 
//  958  *         library (stm32f10x_i2c.h) or to custom values defined by user.
//  959  *       - This function is suitable when multiple flags are monitored at the same time.
//  960  *       - At the opposite of I2C_CheckEvent() function, this function allows user to
//  961  *         choose when an event is accepted (when all events flags are set and no 
//  962  *         other flags are set or just when the needed flags are set like 
//  963  *         I2C_CheckEvent() function).
//  964  *     - Limitations:
//  965  *       - User may need to define his own events.
//  966  *       - Same remark concerning the error management is applicable for this 
//  967  *         function if user decides to check only regular communication flags (and 
//  968  *         ignores error flags).
//  969  *     
//  970  *
//  971  *  3) Flag-based state monitoring:
//  972  *     Using the function I2C_GetFlagStatus() which simply returns the status of 
//  973  *     one single flag (ie. I2C_FLAG_RXNE ...). 
//  974  *     - When to use:
//  975  *        - This function could be used for specific applications or in debug phase.
//  976  *        - It is suitable when only one flag checking is needed (most I2C events 
//  977  *          are monitored through multiple flags).
//  978  *     - Limitations: 
//  979  *        - When calling this function, the Status register is accessed. Some flags are
//  980  *          cleared when the status register is accessed. So checking the status
//  981  *          of one Flag, may clear other ones.
//  982  *        - Function may need to be called twice or more in order to monitor one 
//  983  *          single event.
//  984  *
//  985  *  For detailed description of Events, please refer to section I2C_Events in 
//  986  *  stm32f10x_i2c.h file.
//  987  *  
//  988  */
//  989 
//  990 /**
//  991  * 
//  992  *  1) Basic state monitoring
//  993  *******************************************************************************
//  994  */
//  995 
//  996 /**
//  997   * @brief  Checks whether the last I2Cx Event is equal to the one passed
//  998   *   as parameter.
//  999   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1000   * @param  I2C_EVENT: specifies the event to be checked. 
// 1001   *   This parameter can be one of the following values:
// 1002   *     @arg I2C_EVENT_SLAVE_TRANSMITTER_ADDRESS_MATCHED           : EV1
// 1003   *     @arg I2C_EVENT_SLAVE_RECEIVER_ADDRESS_MATCHED              : EV1
// 1004   *     @arg I2C_EVENT_SLAVE_TRANSMITTER_SECONDADDRESS_MATCHED     : EV1
// 1005   *     @arg I2C_EVENT_SLAVE_RECEIVER_SECONDADDRESS_MATCHED        : EV1
// 1006   *     @arg I2C_EVENT_SLAVE_GENERALCALLADDRESS_MATCHED            : EV1
// 1007   *     @arg I2C_EVENT_SLAVE_BYTE_RECEIVED                         : EV2
// 1008   *     @arg (I2C_EVENT_SLAVE_BYTE_RECEIVED | I2C_FLAG_DUALF)      : EV2
// 1009   *     @arg (I2C_EVENT_SLAVE_BYTE_RECEIVED | I2C_FLAG_GENCALL)    : EV2
// 1010   *     @arg I2C_EVENT_SLAVE_BYTE_TRANSMITTED                      : EV3
// 1011   *     @arg (I2C_EVENT_SLAVE_BYTE_TRANSMITTED | I2C_FLAG_DUALF)   : EV3
// 1012   *     @arg (I2C_EVENT_SLAVE_BYTE_TRANSMITTED | I2C_FLAG_GENCALL) : EV3
// 1013   *     @arg I2C_EVENT_SLAVE_ACK_FAILURE                           : EV3_2
// 1014   *     @arg I2C_EVENT_SLAVE_STOP_DETECTED                         : EV4
// 1015   *     @arg I2C_EVENT_MASTER_MODE_SELECT                          : EV5
// 1016   *     @arg I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED            : EV6     
// 1017   *     @arg I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED               : EV6
// 1018   *     @arg I2C_EVENT_MASTER_BYTE_RECEIVED                        : EV7
// 1019   *     @arg I2C_EVENT_MASTER_BYTE_TRANSMITTING                    : EV8
// 1020   *     @arg I2C_EVENT_MASTER_BYTE_TRANSMITTED                     : EV8_2
// 1021   *     @arg I2C_EVENT_MASTER_MODE_ADDRESS10                       : EV9
// 1022   *     
// 1023   * @note: For detailed description of Events, please refer to section 
// 1024   *    I2C_Events in stm32f10x_i2c.h file.
// 1025   *    
// 1026   * @retval An ErrorStatus enumeration value:
// 1027   * - SUCCESS: Last event is equal to the I2C_EVENT
// 1028   * - ERROR: Last event is different from the I2C_EVENT
// 1029   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function I2C_CheckEvent
          CFI NoCalls
        THUMB
// 1030 ErrorStatus I2C_CheckEvent(I2C_TypeDef* I2Cx, uint32_t I2C_EVENT)
// 1031 {
// 1032   uint32_t lastevent = 0;
// 1033   uint32_t flag1 = 0, flag2 = 0;
// 1034   ErrorStatus status = ERROR;
// 1035 
// 1036   /* Check the parameters */
// 1037   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1038   assert_param(IS_I2C_EVENT(I2C_EVENT));
// 1039 
// 1040   /* Read the I2Cx status register */
// 1041   flag1 = I2Cx->SR1;
I2C_CheckEvent:
        LDRH     R3,[R0, #+20]
// 1042   flag2 = I2Cx->SR2;
        LDRH     R0,[R0, #+24]
// 1043   flag2 = flag2 << 16;
// 1044 
// 1045   /* Get the last event value from I2C status register */
// 1046   lastevent = (flag1 | flag2) & FLAG_Mask;
// 1047 
// 1048   /* Check whether the last event contains the I2C_EVENT */
// 1049   if ((lastevent & I2C_EVENT) == I2C_EVENT)
        ORR      R0,R3,R0, LSL #+16
        ANDS     R0,R1,R0
        LSLS     R0,R0,#+8
        MOVS     R2,#+0
        LSRS     R0,R0,#+8
        CMP      R0,R1
        IT       EQ 
        MOVEQ    R2,#+1
// 1050   {
// 1051     /* SUCCESS: last event is equal to I2C_EVENT */
// 1052     status = SUCCESS;
// 1053   }
// 1054   else
// 1055   {
// 1056     /* ERROR: last event is different from I2C_EVENT */
// 1057     status = ERROR;
// 1058   }
// 1059   /* Return status */
// 1060   return status;
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
// 1061 }
// 1062 
// 1063 /**
// 1064  * 
// 1065  *  2) Advanced state monitoring
// 1066  *******************************************************************************
// 1067  */
// 1068 
// 1069 /**
// 1070   * @brief  Returns the last I2Cx Event.
// 1071   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1072   *     
// 1073   * @note: For detailed description of Events, please refer to section 
// 1074   *    I2C_Events in stm32f10x_i2c.h file.
// 1075   *    
// 1076   * @retval The last event
// 1077   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function I2C_GetLastEvent
          CFI NoCalls
        THUMB
// 1078 uint32_t I2C_GetLastEvent(I2C_TypeDef* I2Cx)
// 1079 {
// 1080   uint32_t lastevent = 0;
// 1081   uint32_t flag1 = 0, flag2 = 0;
// 1082 
// 1083   /* Check the parameters */
// 1084   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1085 
// 1086   /* Read the I2Cx status register */
// 1087   flag1 = I2Cx->SR1;
I2C_GetLastEvent:
        LDRH     R1,[R0, #+20]
// 1088   flag2 = I2Cx->SR2;
        LDRH     R0,[R0, #+24]
// 1089   flag2 = flag2 << 16;
// 1090 
// 1091   /* Get the last event value from I2C status register */
// 1092   lastevent = (flag1 | flag2) & FLAG_Mask;
// 1093 
// 1094   /* Return status */
// 1095   return lastevent;
        ORR      R0,R1,R0, LSL #+16
        LSLS     R0,R0,#+8
        LSRS     R0,R0,#+8
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
// 1096 }
// 1097 
// 1098 /**
// 1099  * 
// 1100  *  3) Flag-based state monitoring
// 1101  *******************************************************************************
// 1102  */
// 1103 
// 1104 /**
// 1105   * @brief  Checks whether the specified I2C flag is set or not.
// 1106   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1107   * @param  I2C_FLAG: specifies the flag to check. 
// 1108   *   This parameter can be one of the following values:
// 1109   *     @arg I2C_FLAG_DUALF: Dual flag (Slave mode)
// 1110   *     @arg I2C_FLAG_SMBHOST: SMBus host header (Slave mode)
// 1111   *     @arg I2C_FLAG_SMBDEFAULT: SMBus default header (Slave mode)
// 1112   *     @arg I2C_FLAG_GENCALL: General call header flag (Slave mode)
// 1113   *     @arg I2C_FLAG_TRA: Transmitter/Receiver flag
// 1114   *     @arg I2C_FLAG_BUSY: Bus busy flag
// 1115   *     @arg I2C_FLAG_MSL: Master/Slave flag
// 1116   *     @arg I2C_FLAG_SMBALERT: SMBus Alert flag
// 1117   *     @arg I2C_FLAG_TIMEOUT: Timeout or Tlow error flag
// 1118   *     @arg I2C_FLAG_PECERR: PEC error in reception flag
// 1119   *     @arg I2C_FLAG_OVR: Overrun/Underrun flag (Slave mode)
// 1120   *     @arg I2C_FLAG_AF: Acknowledge failure flag
// 1121   *     @arg I2C_FLAG_ARLO: Arbitration lost flag (Master mode)
// 1122   *     @arg I2C_FLAG_BERR: Bus error flag
// 1123   *     @arg I2C_FLAG_TXE: Data register empty flag (Transmitter)
// 1124   *     @arg I2C_FLAG_RXNE: Data register not empty (Receiver) flag
// 1125   *     @arg I2C_FLAG_STOPF: Stop detection flag (Slave mode)
// 1126   *     @arg I2C_FLAG_ADD10: 10-bit header sent flag (Master mode)
// 1127   *     @arg I2C_FLAG_BTF: Byte transfer finished flag
// 1128   *     @arg I2C_FLAG_ADDR: Address sent flag (Master mode) "ADSL"
// 1129   *   Address matched flag (Slave mode)"ENDA"
// 1130   *     @arg I2C_FLAG_SB: Start bit flag (Master mode)
// 1131   * @retval The new state of I2C_FLAG (SET or RESET).
// 1132   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function I2C_GetFlagStatus
          CFI NoCalls
        THUMB
// 1133 FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG)
// 1134 {
I2C_GetFlagStatus:
        SUB      SP,SP,#+8
          CFI CFA R13+8
        MOV      R2,R0
// 1135   FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
// 1136   __IO uint32_t i2creg = 0, i2cxbase = 0;
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+0]
// 1137 
// 1138   /* Check the parameters */
// 1139   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1140   assert_param(IS_I2C_GET_FLAG(I2C_FLAG));
// 1141 
// 1142   /* Get the I2Cx peripheral base address */
// 1143   i2cxbase = (uint32_t)I2Cx;
        STR      R2,[SP, #+0]
// 1144   
// 1145   /* Read flag register index */
// 1146   i2creg = I2C_FLAG >> 28;
        LSRS     R2,R1,#+28
        STR      R2,[SP, #+4]
// 1147   
// 1148   /* Get bit[23:0] of the flag */
// 1149   I2C_FLAG &= FLAG_Mask;
        LSLS     R1,R1,#+8
// 1150   
// 1151   if(i2creg != 0)
        LDR      R2,[SP, #+4]
        LSRS     R1,R1,#+8
        CBZ.N    R2,??I2C_GetFlagStatus_0
// 1152   {
// 1153     /* Get the I2Cx SR1 register address */
// 1154     i2cxbase += 0x14;
        LDR      R2,[SP, #+0]
        ADDS     R2,R2,#+20
        B.N      ??I2C_GetFlagStatus_1
// 1155   }
// 1156   else
// 1157   {
// 1158     /* Flag in I2Cx SR2 Register */
// 1159     I2C_FLAG = (uint32_t)(I2C_FLAG >> 16);
// 1160     /* Get the I2Cx SR2 register address */
// 1161     i2cxbase += 0x18;
??I2C_GetFlagStatus_0:
        LDR      R2,[SP, #+0]
        LSRS     R1,R1,#+16
        ADDS     R2,R2,#+24
??I2C_GetFlagStatus_1:
        STR      R2,[SP, #+0]
// 1162   }
// 1163   
// 1164   if(((*(__IO uint32_t *)i2cxbase) & I2C_FLAG) != (uint32_t)RESET)
        LDR      R2,[SP, #+0]
        LDR      R2,[R2, #+0]
        TST      R2,R1
        IT       NE 
        MOVNE    R0,#+1
// 1165   {
// 1166     /* I2C_FLAG is set */
// 1167     bitstatus = SET;
// 1168   }
// 1169   else
// 1170   {
// 1171     /* I2C_FLAG is reset */
// 1172     bitstatus = RESET;
// 1173   }
// 1174   
// 1175   /* Return the I2C_FLAG status */
// 1176   return  bitstatus;
        ADD      SP,SP,#+8
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock29
// 1177 }
// 1178 
// 1179 
// 1180 
// 1181 /**
// 1182   * @brief  Clears the I2Cx's pending flags.
// 1183   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1184   * @param  I2C_FLAG: specifies the flag to clear. 
// 1185   *   This parameter can be any combination of the following values:
// 1186   *     @arg I2C_FLAG_SMBALERT: SMBus Alert flag
// 1187   *     @arg I2C_FLAG_TIMEOUT: Timeout or Tlow error flag
// 1188   *     @arg I2C_FLAG_PECERR: PEC error in reception flag
// 1189   *     @arg I2C_FLAG_OVR: Overrun/Underrun flag (Slave mode)
// 1190   *     @arg I2C_FLAG_AF: Acknowledge failure flag
// 1191   *     @arg I2C_FLAG_ARLO: Arbitration lost flag (Master mode)
// 1192   *     @arg I2C_FLAG_BERR: Bus error flag
// 1193   *   
// 1194   * @note
// 1195   *   - STOPF (STOP detection) is cleared by software sequence: a read operation 
// 1196   *     to I2C_SR1 register (I2C_GetFlagStatus()) followed by a write operation 
// 1197   *     to I2C_CR1 register (I2C_Cmd() to re-enable the I2C peripheral).
// 1198   *   - ADD10 (10-bit header sent) is cleared by software sequence: a read 
// 1199   *     operation to I2C_SR1 (I2C_GetFlagStatus()) followed by writing the 
// 1200   *     second byte of the address in DR register.
// 1201   *   - BTF (Byte Transfer Finished) is cleared by software sequence: a read 
// 1202   *     operation to I2C_SR1 register (I2C_GetFlagStatus()) followed by a 
// 1203   *     read/write to I2C_DR register (I2C_SendData()).
// 1204   *   - ADDR (Address sent) is cleared by software sequence: a read operation to 
// 1205   *     I2C_SR1 register (I2C_GetFlagStatus()) followed by a read operation to 
// 1206   *     I2C_SR2 register ((void)(I2Cx->SR2)).
// 1207   *   - SB (Start Bit) is cleared software sequence: a read operation to I2C_SR1
// 1208   *     register (I2C_GetFlagStatus()) followed by a write operation to I2C_DR
// 1209   *     register  (I2C_SendData()).
// 1210   * @retval None
// 1211   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function I2C_ClearFlag
          CFI NoCalls
        THUMB
// 1212 void I2C_ClearFlag(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG)
// 1213 {
// 1214   uint32_t flagpos = 0;
// 1215   /* Check the parameters */
// 1216   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1217   assert_param(IS_I2C_CLEAR_FLAG(I2C_FLAG));
// 1218   /* Get the I2C flag position */
// 1219   flagpos = I2C_FLAG & FLAG_Mask;
// 1220   /* Clear the selected I2C flag */
// 1221   I2Cx->SR1 = (uint16_t)~flagpos;
I2C_ClearFlag:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock30
// 1222 }
// 1223 
// 1224 /**
// 1225   * @brief  Checks whether the specified I2C interrupt has occurred or not.
// 1226   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1227   * @param  I2C_IT: specifies the interrupt source to check. 
// 1228   *   This parameter can be one of the following values:
// 1229   *     @arg I2C_IT_SMBALERT: SMBus Alert flag
// 1230   *     @arg I2C_IT_TIMEOUT: Timeout or Tlow error flag
// 1231   *     @arg I2C_IT_PECERR: PEC error in reception flag
// 1232   *     @arg I2C_IT_OVR: Overrun/Underrun flag (Slave mode)
// 1233   *     @arg I2C_IT_AF: Acknowledge failure flag
// 1234   *     @arg I2C_IT_ARLO: Arbitration lost flag (Master mode)
// 1235   *     @arg I2C_IT_BERR: Bus error flag
// 1236   *     @arg I2C_IT_TXE: Data register empty flag (Transmitter)
// 1237   *     @arg I2C_IT_RXNE: Data register not empty (Receiver) flag
// 1238   *     @arg I2C_IT_STOPF: Stop detection flag (Slave mode)
// 1239   *     @arg I2C_IT_ADD10: 10-bit header sent flag (Master mode)
// 1240   *     @arg I2C_IT_BTF: Byte transfer finished flag
// 1241   *     @arg I2C_IT_ADDR: Address sent flag (Master mode) "ADSL"
// 1242   *                       Address matched flag (Slave mode)"ENDAD"
// 1243   *     @arg I2C_IT_SB: Start bit flag (Master mode)
// 1244   * @retval The new state of I2C_IT (SET or RESET).
// 1245   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function I2C_GetITStatus
          CFI NoCalls
        THUMB
// 1246 ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, uint32_t I2C_IT)
// 1247 {
// 1248   ITStatus bitstatus = RESET;
// 1249   uint32_t enablestatus = 0;
// 1250 
// 1251   /* Check the parameters */
// 1252   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1253   assert_param(IS_I2C_GET_IT(I2C_IT));
// 1254 
// 1255   /* Check if the interrupt source is enabled or not */
// 1256   enablestatus = (uint32_t)(((I2C_IT & ITEN_Mask) >> 16) & (I2Cx->CR2)) ;
I2C_GetITStatus:
        LDRH     R3,[R0, #+4]
// 1257   
// 1258   /* Get bit[23:0] of the flag */
// 1259   I2C_IT &= FLAG_Mask;
// 1260 
// 1261   /* Check the status of the specified I2C flag */
// 1262   if (((I2Cx->SR1 & I2C_IT) != (uint32_t)RESET) && enablestatus)
        LDRH     R0,[R0, #+20]
        MOVS     R2,#+0
        AND      R3,R3,R1, LSR #+16
        TST      R0,R1
        ITT      NE 
        TSTNE    R3,#0x700
        MOVNE    R2,#+1
// 1263   {
// 1264     /* I2C_IT is set */
// 1265     bitstatus = SET;
// 1266   }
// 1267   else
// 1268   {
// 1269     /* I2C_IT is reset */
// 1270     bitstatus = RESET;
// 1271   }
// 1272   /* Return the I2C_IT status */
// 1273   return  bitstatus;
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock31
// 1274 }
// 1275 
// 1276 /**
// 1277   * @brief  Clears the I2Cx抯 interrupt pending bits.
// 1278   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1279   * @param  I2C_IT: specifies the interrupt pending bit to clear. 
// 1280   *   This parameter can be any combination of the following values:
// 1281   *     @arg I2C_IT_SMBALERT: SMBus Alert interrupt
// 1282   *     @arg I2C_IT_TIMEOUT: Timeout or Tlow error interrupt
// 1283   *     @arg I2C_IT_PECERR: PEC error in reception  interrupt
// 1284   *     @arg I2C_IT_OVR: Overrun/Underrun interrupt (Slave mode)
// 1285   *     @arg I2C_IT_AF: Acknowledge failure interrupt
// 1286   *     @arg I2C_IT_ARLO: Arbitration lost interrupt (Master mode)
// 1287   *     @arg I2C_IT_BERR: Bus error interrupt
// 1288   *   
// 1289   * @note
// 1290   *   - STOPF (STOP detection) is cleared by software sequence: a read operation 
// 1291   *     to I2C_SR1 register (I2C_GetITStatus()) followed by a write operation to 
// 1292   *     I2C_CR1 register (I2C_Cmd() to re-enable the I2C peripheral).
// 1293   *   - ADD10 (10-bit header sent) is cleared by software sequence: a read 
// 1294   *     operation to I2C_SR1 (I2C_GetITStatus()) followed by writing the second 
// 1295   *     byte of the address in I2C_DR register.
// 1296   *   - BTF (Byte Transfer Finished) is cleared by software sequence: a read 
// 1297   *     operation to I2C_SR1 register (I2C_GetITStatus()) followed by a 
// 1298   *     read/write to I2C_DR register (I2C_SendData()).
// 1299   *   - ADDR (Address sent) is cleared by software sequence: a read operation to 
// 1300   *     I2C_SR1 register (I2C_GetITStatus()) followed by a read operation to 
// 1301   *     I2C_SR2 register ((void)(I2Cx->SR2)).
// 1302   *   - SB (Start Bit) is cleared by software sequence: a read operation to 
// 1303   *     I2C_SR1 register (I2C_GetITStatus()) followed by a write operation to 
// 1304   *     I2C_DR register (I2C_SendData()).
// 1305   * @retval None
// 1306   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function I2C_ClearITPendingBit
          CFI NoCalls
        THUMB
// 1307 void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, uint32_t I2C_IT)
I2C_ClearITPendingBit:
        Nop      
          CFI EndBlock cfiBlock32
// 1308 {
// 1309   uint32_t flagpos = 0;
// 1310   /* Check the parameters */
// 1311   assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1312   assert_param(IS_I2C_CLEAR_IT(I2C_IT));
// 1313   /* Get the I2C flag position */
// 1314   flagpos = I2C_IT & FLAG_Mask;
// 1315   /* Clear the selected I2C flag */
// 1316   I2Cx->SR1 = (uint16_t)~flagpos;
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls I2C_ClearITPendingBit
          CFI NoCalls I2C_ClearFlag
        THUMB
?Subroutine0:
        MVNS     R1,R1
        STRH     R1,[R0, #+20]
// 1317 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock33

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1318 
// 1319 /**
// 1320   * @}
// 1321   */ 
// 1322 
// 1323 /**
// 1324   * @}
// 1325   */ 
// 1326 
// 1327 /**
// 1328   * @}
// 1329   */ 
// 1330 
// 1331 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 832 bytes in section .text
// 
// 832 bytes of CODE memory
//
//Errors: none
//Warnings: none
