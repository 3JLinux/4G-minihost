///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_rcc.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_rcc.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_rcc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC RCC_ADCCLKConfig
        PUBLIC RCC_AHBPeriphClockCmd
        PUBLIC RCC_APB1PeriphClockCmd
        PUBLIC RCC_APB1PeriphResetCmd
        PUBLIC RCC_APB2PeriphClockCmd
        PUBLIC RCC_APB2PeriphResetCmd
        PUBLIC RCC_AdjustHSICalibrationValue
        PUBLIC RCC_BackupResetCmd
        PUBLIC RCC_ClearFlag
        PUBLIC RCC_ClearITPendingBit
        PUBLIC RCC_ClockSecuritySystemCmd
        PUBLIC RCC_DeInit
        PUBLIC RCC_GetClocksFreq
        PUBLIC RCC_GetFlagStatus
        PUBLIC RCC_GetITStatus
        PUBLIC RCC_GetSYSCLKSource
        PUBLIC RCC_HCLKConfig
        PUBLIC RCC_HSEConfig
        PUBLIC RCC_HSICmd
        PUBLIC RCC_ITConfig
        PUBLIC RCC_LSEConfig
        PUBLIC RCC_LSICmd
        PUBLIC RCC_MCOConfig
        PUBLIC RCC_PCLK1Config
        PUBLIC RCC_PCLK2Config
        PUBLIC RCC_PLLCmd
        PUBLIC RCC_PLLConfig
        PUBLIC RCC_RTCCLKCmd
        PUBLIC RCC_RTCCLKConfig
        PUBLIC RCC_SYSCLKConfig
        PUBLIC RCC_USBCLKConfig
        PUBLIC RCC_WaitForHSEStartUp
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_rcc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_rcc.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the RCC firmware functions.
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
//   23 #include "stm32f10x_rcc.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup RCC 
//   30   * @brief RCC driver modules
//   31   * @{
//   32   */ 
//   33 
//   34 /** @defgroup RCC_Private_TypesDefinitions
//   35   * @{
//   36   */
//   37 
//   38 /**
//   39   * @}
//   40   */
//   41 
//   42 /** @defgroup RCC_Private_Defines
//   43   * @{
//   44   */
//   45 
//   46 /* ------------ RCC registers bit address in the alias region ----------- */
//   47 #define RCC_OFFSET                (RCC_BASE - PERIPH_BASE)
//   48 
//   49 /* --- CR Register ---*/
//   50 
//   51 /* Alias word address of HSION bit */
//   52 #define CR_OFFSET                 (RCC_OFFSET + 0x00)
//   53 #define HSION_BitNumber           0x00
//   54 #define CR_HSION_BB               (PERIPH_BB_BASE + (CR_OFFSET * 32) + (HSION_BitNumber * 4))
//   55 
//   56 /* Alias word address of PLLON bit */
//   57 #define PLLON_BitNumber           0x18
//   58 #define CR_PLLON_BB               (PERIPH_BB_BASE + (CR_OFFSET * 32) + (PLLON_BitNumber * 4))
//   59 
//   60 #ifdef STM32F10X_CL
//   61  /* Alias word address of PLL2ON bit */
//   62  #define PLL2ON_BitNumber          0x1A
//   63  #define CR_PLL2ON_BB              (PERIPH_BB_BASE + (CR_OFFSET * 32) + (PLL2ON_BitNumber * 4))
//   64 
//   65  /* Alias word address of PLL3ON bit */
//   66  #define PLL3ON_BitNumber          0x1C
//   67  #define CR_PLL3ON_BB              (PERIPH_BB_BASE + (CR_OFFSET * 32) + (PLL3ON_BitNumber * 4))
//   68 #endif /* STM32F10X_CL */ 
//   69 
//   70 /* Alias word address of CSSON bit */
//   71 #define CSSON_BitNumber           0x13
//   72 #define CR_CSSON_BB               (PERIPH_BB_BASE + (CR_OFFSET * 32) + (CSSON_BitNumber * 4))
//   73 
//   74 /* --- CFGR Register ---*/
//   75 
//   76 /* Alias word address of USBPRE bit */
//   77 #define CFGR_OFFSET               (RCC_OFFSET + 0x04)
//   78 
//   79 #ifndef STM32F10X_CL
//   80  #define USBPRE_BitNumber          0x16
//   81  #define CFGR_USBPRE_BB            (PERIPH_BB_BASE + (CFGR_OFFSET * 32) + (USBPRE_BitNumber * 4))
//   82 #else
//   83  #define OTGFSPRE_BitNumber        0x16
//   84  #define CFGR_OTGFSPRE_BB          (PERIPH_BB_BASE + (CFGR_OFFSET * 32) + (OTGFSPRE_BitNumber * 4))
//   85 #endif /* STM32F10X_CL */ 
//   86 
//   87 /* --- BDCR Register ---*/
//   88 
//   89 /* Alias word address of RTCEN bit */
//   90 #define BDCR_OFFSET               (RCC_OFFSET + 0x20)
//   91 #define RTCEN_BitNumber           0x0F
//   92 #define BDCR_RTCEN_BB             (PERIPH_BB_BASE + (BDCR_OFFSET * 32) + (RTCEN_BitNumber * 4))
//   93 
//   94 /* Alias word address of BDRST bit */
//   95 #define BDRST_BitNumber           0x10
//   96 #define BDCR_BDRST_BB             (PERIPH_BB_BASE + (BDCR_OFFSET * 32) + (BDRST_BitNumber * 4))
//   97 
//   98 /* --- CSR Register ---*/
//   99 
//  100 /* Alias word address of LSION bit */
//  101 #define CSR_OFFSET                (RCC_OFFSET + 0x24)
//  102 #define LSION_BitNumber           0x00
//  103 #define CSR_LSION_BB              (PERIPH_BB_BASE + (CSR_OFFSET * 32) + (LSION_BitNumber * 4))
//  104 
//  105 #ifdef STM32F10X_CL
//  106 /* --- CFGR2 Register ---*/
//  107 
//  108  /* Alias word address of I2S2SRC bit */
//  109  #define CFGR2_OFFSET              (RCC_OFFSET + 0x2C)
//  110  #define I2S2SRC_BitNumber         0x11
//  111  #define CFGR2_I2S2SRC_BB          (PERIPH_BB_BASE + (CFGR2_OFFSET * 32) + (I2S2SRC_BitNumber * 4))
//  112 
//  113  /* Alias word address of I2S3SRC bit */
//  114  #define I2S3SRC_BitNumber         0x12
//  115  #define CFGR2_I2S3SRC_BB          (PERIPH_BB_BASE + (CFGR2_OFFSET * 32) + (I2S3SRC_BitNumber * 4))
//  116 #endif /* STM32F10X_CL */
//  117 
//  118 /* ---------------------- RCC registers bit mask ------------------------ */
//  119 
//  120 /* CR register bit mask */
//  121 #define CR_HSEBYP_Reset           ((uint32_t)0xFFFBFFFF)
//  122 #define CR_HSEBYP_Set             ((uint32_t)0x00040000)
//  123 #define CR_HSEON_Reset            ((uint32_t)0xFFFEFFFF)
//  124 #define CR_HSEON_Set              ((uint32_t)0x00010000)
//  125 #define CR_HSITRIM_Mask           ((uint32_t)0xFFFFFF07)
//  126 
//  127 /* CFGR register bit mask */
//  128 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL) || defined (STM32F10X_CL) 
//  129  #define CFGR_PLL_Mask            ((uint32_t)0xFFC2FFFF)
//  130 #else
//  131  #define CFGR_PLL_Mask            ((uint32_t)0xFFC0FFFF)
//  132 #endif /* STM32F10X_CL */ 
//  133 
//  134 #define CFGR_PLLMull_Mask         ((uint32_t)0x003C0000)
//  135 #define CFGR_PLLSRC_Mask          ((uint32_t)0x00010000)
//  136 #define CFGR_PLLXTPRE_Mask        ((uint32_t)0x00020000)
//  137 #define CFGR_SWS_Mask             ((uint32_t)0x0000000C)
//  138 #define CFGR_SW_Mask              ((uint32_t)0xFFFFFFFC)
//  139 #define CFGR_HPRE_Reset_Mask      ((uint32_t)0xFFFFFF0F)
//  140 #define CFGR_HPRE_Set_Mask        ((uint32_t)0x000000F0)
//  141 #define CFGR_PPRE1_Reset_Mask     ((uint32_t)0xFFFFF8FF)
//  142 #define CFGR_PPRE1_Set_Mask       ((uint32_t)0x00000700)
//  143 #define CFGR_PPRE2_Reset_Mask     ((uint32_t)0xFFFFC7FF)
//  144 #define CFGR_PPRE2_Set_Mask       ((uint32_t)0x00003800)
//  145 #define CFGR_ADCPRE_Reset_Mask    ((uint32_t)0xFFFF3FFF)
//  146 #define CFGR_ADCPRE_Set_Mask      ((uint32_t)0x0000C000)
//  147 
//  148 /* CSR register bit mask */
//  149 #define CSR_RMVF_Set              ((uint32_t)0x01000000)
//  150 
//  151 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL) || defined (STM32F10X_CL) 
//  152 /* CFGR2 register bit mask */
//  153  #define CFGR2_PREDIV1SRC         ((uint32_t)0x00010000)
//  154  #define CFGR2_PREDIV1            ((uint32_t)0x0000000F)
//  155 #endif
//  156 #ifdef STM32F10X_CL
//  157  #define CFGR2_PREDIV2            ((uint32_t)0x000000F0)
//  158  #define CFGR2_PLL2MUL            ((uint32_t)0x00000F00)
//  159  #define CFGR2_PLL3MUL            ((uint32_t)0x0000F000)
//  160 #endif /* STM32F10X_CL */ 
//  161 
//  162 /* RCC Flag Mask */
//  163 #define FLAG_Mask                 ((uint8_t)0x1F)
//  164 
//  165 /* CIR register byte 2 (Bits[15:8]) base address */
//  166 #define CIR_BYTE2_ADDRESS         ((uint32_t)0x40021009)
//  167 
//  168 /* CIR register byte 3 (Bits[23:16]) base address */
//  169 #define CIR_BYTE3_ADDRESS         ((uint32_t)0x4002100A)
//  170 
//  171 /* CFGR register byte 4 (Bits[31:24]) base address */
//  172 #define CFGR_BYTE4_ADDRESS        ((uint32_t)0x40021007)
//  173 
//  174 /* BDCR register base address */
//  175 #define BDCR_ADDRESS              (PERIPH_BASE + BDCR_OFFSET)
//  176 
//  177 /**
//  178   * @}
//  179   */ 
//  180 
//  181 /** @defgroup RCC_Private_Macros
//  182   * @{
//  183   */ 
//  184 
//  185 /**
//  186   * @}
//  187   */ 
//  188 
//  189 /** @defgroup RCC_Private_Variables
//  190   * @{
//  191   */ 
//  192 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  193 static __I uint8_t APBAHBPrescTable[16] = {0, 0, 0, 0, 1, 2, 3, 4, 1, 2, 3, 4, 6, 7, 8, 9};
APBAHBPrescTable:
        DATA
        DC8 0, 0, 0, 0, 1, 2, 3, 4, 1, 2, 3, 4, 6, 7, 8, 9
        DC8 2, 4, 6, 8
//  194 static __I uint8_t ADCPrescTable[4] = {2, 4, 6, 8};
//  195 
//  196 /**
//  197   * @}
//  198   */
//  199 
//  200 /** @defgroup RCC_Private_FunctionPrototypes
//  201   * @{
//  202   */
//  203 
//  204 /**
//  205   * @}
//  206   */
//  207 
//  208 /** @defgroup RCC_Private_Functions
//  209   * @{
//  210   */
//  211 
//  212 /**
//  213   * @brief  Resets the RCC clock configuration to the default reset state.
//  214   * @param  None
//  215   * @retval None
//  216   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function RCC_DeInit
          CFI NoCalls
        THUMB
//  217 void RCC_DeInit(void)
//  218 {
//  219   /* Set HSION bit */
//  220   RCC->CR |= (uint32_t)0x00000001;
RCC_DeInit:
        LDR.N    R0,??DataTable29  ;; 0x40021000
//  221 
//  222   /* Reset SW, HPRE, PPRE1, PPRE2, ADCPRE and MCO bits */
//  223 #ifndef STM32F10X_CL
//  224   RCC->CFGR &= (uint32_t)0xF8FF0000;
        LDR.N    R2,??DataTable29_1  ;; 0xf8ff0000
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x1
        STR      R1,[R0, #+0]
        LDR      R1,[R0, #+4]
        ANDS     R1,R2,R1
        STR      R1,[R0, #+4]
//  225 #else
//  226   RCC->CFGR &= (uint32_t)0xF0FF0000;
//  227 #endif /* STM32F10X_CL */   
//  228   
//  229   /* Reset HSEON, CSSON and PLLON bits */
//  230   RCC->CR &= (uint32_t)0xFEF6FFFF;
        LDR.N    R2,??DataTable29_2  ;; 0xfef6ffff
        LDR      R1,[R0, #+0]
        ANDS     R1,R2,R1
        STR      R1,[R0, #+0]
//  231 
//  232   /* Reset HSEBYP bit */
//  233   RCC->CR &= (uint32_t)0xFFFBFFFF;
        LDR      R1,[R0, #+0]
        BIC      R1,R1,#0x40000
        STR      R1,[R0, #+0]
//  234 
//  235   /* Reset PLLSRC, PLLXTPRE, PLLMUL and USBPRE/OTGFSPRE bits */
//  236   RCC->CFGR &= (uint32_t)0xFF80FFFF;
        LDR      R1,[R0, #+4]
        BIC      R1,R1,#0x7F0000
        STR      R1,[R0, #+4]
//  237 
//  238 #ifdef STM32F10X_CL
//  239   /* Reset PLL2ON and PLL3ON bits */
//  240   RCC->CR &= (uint32_t)0xEBFFFFFF;
//  241 
//  242   /* Disable all interrupts and clear pending bits  */
//  243   RCC->CIR = 0x00FF0000;
//  244 
//  245   /* Reset CFGR2 register */
//  246   RCC->CFGR2 = 0x00000000;
//  247 #elif defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)
//  248   /* Disable all interrupts and clear pending bits  */
//  249   RCC->CIR = 0x009F0000;
//  250 
//  251   /* Reset CFGR2 register */
//  252   RCC->CFGR2 = 0x00000000;      
//  253 #else
//  254   /* Disable all interrupts and clear pending bits  */
//  255   RCC->CIR = 0x009F0000;
        MOV      R1,#+10420224
        STR      R1,[R0, #+8]
//  256 #endif /* STM32F10X_CL */
//  257 
//  258 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  259 
//  260 /**
//  261   * @brief  Configures the External High Speed oscillator (HSE).
//  262   * @note   HSE can not be stopped if it is used directly or through the PLL as system clock.
//  263   * @param  RCC_HSE: specifies the new state of the HSE.
//  264   *   This parameter can be one of the following values:
//  265   *     @arg RCC_HSE_OFF: HSE oscillator OFF
//  266   *     @arg RCC_HSE_ON: HSE oscillator ON
//  267   *     @arg RCC_HSE_Bypass: HSE oscillator bypassed with external clock
//  268   * @retval None
//  269   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function RCC_HSEConfig
          CFI NoCalls
        THUMB
//  270 void RCC_HSEConfig(uint32_t RCC_HSE)
//  271 {
//  272   /* Check the parameters */
//  273   assert_param(IS_RCC_HSE(RCC_HSE));
//  274   /* Reset HSEON and HSEBYP bits before configuring the HSE ------------------*/
//  275   /* Reset HSEON bit */
//  276   RCC->CR &= CR_HSEON_Reset;
RCC_HSEConfig:
        LDR.N    R1,??DataTable29  ;; 0x40021000
        LDR      R2,[R1, #+0]
        BIC      R2,R2,#0x10000
        STR      R2,[R1, #+0]
        CMP      R0,#+65536
//  277   /* Reset HSEBYP bit */
//  278   RCC->CR &= CR_HSEBYP_Reset;
        LDR      R2,[R1, #+0]
        BIC      R2,R2,#0x40000
        STR      R2,[R1, #+0]
//  279   /* Configure HSE (RCC_HSE_OFF is already covered by the code section above) */
//  280   switch(RCC_HSE)
        BEQ.N    ??RCC_HSEConfig_0
        CMP      R0,#+262144
        BEQ.N    ??RCC_HSEConfig_1
        BX       LR
//  281   {
//  282     case RCC_HSE_ON:
//  283       /* Set HSEON bit */
//  284       RCC->CR |= CR_HSEON_Set;
??RCC_HSEConfig_0:
        LDR      R0,[R1, #+0]
        ORR      R0,R0,#0x10000
        B.N      ??RCC_HSEConfig_2
//  285       break;
//  286       
//  287     case RCC_HSE_Bypass:
//  288       /* Set HSEBYP and HSEON bits */
//  289       RCC->CR |= CR_HSEBYP_Set | CR_HSEON_Set;
??RCC_HSEConfig_1:
        LDR      R0,[R1, #+0]
        ORR      R0,R0,#0x50000
??RCC_HSEConfig_2:
        STR      R0,[R1, #+0]
//  290       break;
//  291       
//  292     default:
//  293       break;
//  294   }
//  295 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  296 
//  297 /**
//  298   * @brief  Waits for HSE start-up.
//  299   * @param  None
//  300   * @retval An ErrorStatus enumuration value:
//  301   * - SUCCESS: HSE oscillator is stable and ready to use
//  302   * - ERROR: HSE oscillator not yet ready
//  303   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function RCC_WaitForHSEStartUp
          CFI NoCalls
        THUMB
//  304 ErrorStatus RCC_WaitForHSEStartUp(void)
//  305 {
RCC_WaitForHSEStartUp:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  306   __IO uint32_t StartUpCounter = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  307   ErrorStatus status = ERROR;
//  308   FlagStatus HSEStatus = RESET;
        LDR.N    R1,??DataTable29  ;; 0x40021000
//  309   
//  310   /* Wait till HSE is ready and if Time out is reached exit */
//  311   do
//  312   {
//  313     HSEStatus = RCC_GetFlagStatus(RCC_FLAG_HSERDY);
??RCC_WaitForHSEStartUp_0:
        LDR      R2,[R1, #+0]
//  314     StartUpCounter++;  
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[SP, #+0]
//  315   } while((StartUpCounter != HSE_STARTUP_TIMEOUT) && (HSEStatus == RESET));
        LDR      R3,[SP, #+0]
        CMP      R3,#+1280
        BEQ.N    ??RCC_WaitForHSEStartUp_1
        LSLS     R2,R2,#+14
        BPL.N    ??RCC_WaitForHSEStartUp_0
//  316   
//  317   if (RCC_GetFlagStatus(RCC_FLAG_HSERDY) != RESET)
??RCC_WaitForHSEStartUp_1:
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+14
        IT       MI 
        MOVMI    R0,#+1
//  318   {
//  319     status = SUCCESS;
//  320   }
//  321   else
//  322   {
//  323     status = ERROR;
//  324   }  
//  325   return (status);
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  326 }
//  327 
//  328 /**
//  329   * @brief  Adjusts the Internal High Speed oscillator (HSI) calibration value.
//  330   * @param  HSICalibrationValue: specifies the calibration trimming value.
//  331   *   This parameter must be a number between 0 and 0x1F.
//  332   * @retval None
//  333   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function RCC_AdjustHSICalibrationValue
          CFI NoCalls
        THUMB
//  334 void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue)
//  335 {
//  336   uint32_t tmpreg = 0;
//  337   /* Check the parameters */
//  338   assert_param(IS_RCC_CALIBRATION_VALUE(HSICalibrationValue));
//  339   tmpreg = RCC->CR;
RCC_AdjustHSICalibrationValue:
        LDR.N    R1,??DataTable29  ;; 0x40021000
        LDR      R2,[R1, #+0]
//  340   /* Clear HSITRIM[4:0] bits */
//  341   tmpreg &= CR_HSITRIM_Mask;
//  342   /* Set the HSITRIM[4:0] bits according to HSICalibrationValue value */
//  343   tmpreg |= (uint32_t)HSICalibrationValue << 3;
//  344   /* Store the new value */
//  345   RCC->CR = tmpreg;
        BIC      R2,R2,#0xF8
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock3
//  346 }
//  347 
//  348 /**
//  349   * @brief  Enables or disables the Internal High Speed oscillator (HSI).
//  350   * @note   HSI can not be stopped if it is used directly or through the PLL as system clock.
//  351   * @param  NewState: new state of the HSI. This parameter can be: ENABLE or DISABLE.
//  352   * @retval None
//  353   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function RCC_HSICmd
          CFI NoCalls
        THUMB
//  354 void RCC_HSICmd(FunctionalState NewState)
//  355 {
//  356   /* Check the parameters */
//  357   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  358   *(__IO uint32_t *) CR_HSION_BB = (uint32_t)NewState;
RCC_HSICmd:
        LDR.N    R1,??DataTable29_3  ;; 0x42420000
        STR      R0,[R1, #+0]
//  359 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  360 
//  361 /**
//  362   * @brief  Configures the PLL clock source and multiplication factor.
//  363   * @note   This function must be used only when the PLL is disabled.
//  364   * @param  RCC_PLLSource: specifies the PLL entry clock source.
//  365   *   For @b STM32_Connectivity_line_devices or @b STM32_Value_line_devices, 
//  366   *   this parameter can be one of the following values:
//  367   *     @arg RCC_PLLSource_HSI_Div2: HSI oscillator clock divided by 2 selected as PLL clock entry
//  368   *     @arg RCC_PLLSource_PREDIV1: PREDIV1 clock selected as PLL clock entry
//  369   *   For @b other_STM32_devices, this parameter can be one of the following values:
//  370   *     @arg RCC_PLLSource_HSI_Div2: HSI oscillator clock divided by 2 selected as PLL clock entry
//  371   *     @arg RCC_PLLSource_HSE_Div1: HSE oscillator clock selected as PLL clock entry
//  372   *     @arg RCC_PLLSource_HSE_Div2: HSE oscillator clock divided by 2 selected as PLL clock entry 
//  373   * @param  RCC_PLLMul: specifies the PLL multiplication factor.
//  374   *   For @b STM32_Connectivity_line_devices, this parameter can be RCC_PLLMul_x where x:{[4,9], 6_5}
//  375   *   For @b other_STM32_devices, this parameter can be RCC_PLLMul_x where x:[2,16]  
//  376   * @retval None
//  377   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function RCC_PLLConfig
          CFI NoCalls
        THUMB
//  378 void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul)
//  379 {
//  380   uint32_t tmpreg = 0;
//  381 
//  382   /* Check the parameters */
//  383   assert_param(IS_RCC_PLL_SOURCE(RCC_PLLSource));
//  384   assert_param(IS_RCC_PLL_MUL(RCC_PLLMul));
//  385 
//  386   tmpreg = RCC->CFGR;
RCC_PLLConfig:
        LDR.N    R2,??DataTable29_4  ;; 0x40021004
        LDR      R3,[R2, #+0]
//  387   /* Clear PLLSRC, PLLXTPRE and PLLMUL[3:0] bits */
//  388   tmpreg &= CFGR_PLL_Mask;
//  389   /* Set the PLL configuration bits */
//  390   tmpreg |= RCC_PLLSource | RCC_PLLMul;
//  391   /* Store the new value */
//  392   RCC->CFGR = tmpreg;
        BIC      R3,R3,#0x3F0000
        ORRS     R0,R0,R3
        ORRS     R0,R1,R0
        STR      R0,[R2, #+0]
//  393 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  394 
//  395 /**
//  396   * @brief  Enables or disables the PLL.
//  397   * @note   The PLL can not be disabled if it is used as system clock.
//  398   * @param  NewState: new state of the PLL. This parameter can be: ENABLE or DISABLE.
//  399   * @retval None
//  400   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function RCC_PLLCmd
          CFI NoCalls
        THUMB
//  401 void RCC_PLLCmd(FunctionalState NewState)
//  402 {
//  403   /* Check the parameters */
//  404   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  405 
//  406   *(__IO uint32_t *) CR_PLLON_BB = (uint32_t)NewState;
RCC_PLLCmd:
        LDR.N    R1,??DataTable29_5  ;; 0x42420060
        STR      R0,[R1, #+0]
//  407 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  408 
//  409 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL) || defined (STM32F10X_CL)
//  410 /**
//  411   * @brief  Configures the PREDIV1 division factor.
//  412   * @note 
//  413   *   - This function must be used only when the PLL is disabled.
//  414   *   - This function applies only to STM32 Connectivity line and Value line 
//  415   *     devices.
//  416   * @param  RCC_PREDIV1_Source: specifies the PREDIV1 clock source.
//  417   *   This parameter can be one of the following values:
//  418   *     @arg RCC_PREDIV1_Source_HSE: HSE selected as PREDIV1 clock
//  419   *     @arg RCC_PREDIV1_Source_PLL2: PLL2 selected as PREDIV1 clock
//  420   * @note 
//  421   *   For @b STM32_Value_line_devices this parameter is always RCC_PREDIV1_Source_HSE  
//  422   * @param  RCC_PREDIV1_Div: specifies the PREDIV1 clock division factor.
//  423   *   This parameter can be RCC_PREDIV1_Divx where x:[1,16]
//  424   * @retval None
//  425   */
//  426 void RCC_PREDIV1Config(uint32_t RCC_PREDIV1_Source, uint32_t RCC_PREDIV1_Div)
//  427 {
//  428   uint32_t tmpreg = 0;
//  429   
//  430   /* Check the parameters */
//  431   assert_param(IS_RCC_PREDIV1_SOURCE(RCC_PREDIV1_Source));
//  432   assert_param(IS_RCC_PREDIV1(RCC_PREDIV1_Div));
//  433 
//  434   tmpreg = RCC->CFGR2;
//  435   /* Clear PREDIV1[3:0] and PREDIV1SRC bits */
//  436   tmpreg &= ~(CFGR2_PREDIV1 | CFGR2_PREDIV1SRC);
//  437   /* Set the PREDIV1 clock source and division factor */
//  438   tmpreg |= RCC_PREDIV1_Source | RCC_PREDIV1_Div ;
//  439   /* Store the new value */
//  440   RCC->CFGR2 = tmpreg;
//  441 }
//  442 #endif
//  443 
//  444 #ifdef STM32F10X_CL
//  445 /**
//  446   * @brief  Configures the PREDIV2 division factor.
//  447   * @note 
//  448   *   - This function must be used only when both PLL2 and PLL3 are disabled.
//  449   *   - This function applies only to STM32 Connectivity line devices.
//  450   * @param  RCC_PREDIV2_Div: specifies the PREDIV2 clock division factor.
//  451   *   This parameter can be RCC_PREDIV2_Divx where x:[1,16]
//  452   * @retval None
//  453   */
//  454 void RCC_PREDIV2Config(uint32_t RCC_PREDIV2_Div)
//  455 {
//  456   uint32_t tmpreg = 0;
//  457 
//  458   /* Check the parameters */
//  459   assert_param(IS_RCC_PREDIV2(RCC_PREDIV2_Div));
//  460 
//  461   tmpreg = RCC->CFGR2;
//  462   /* Clear PREDIV2[3:0] bits */
//  463   tmpreg &= ~CFGR2_PREDIV2;
//  464   /* Set the PREDIV2 division factor */
//  465   tmpreg |= RCC_PREDIV2_Div;
//  466   /* Store the new value */
//  467   RCC->CFGR2 = tmpreg;
//  468 }
//  469 
//  470 /**
//  471   * @brief  Configures the PLL2 multiplication factor.
//  472   * @note
//  473   *   - This function must be used only when the PLL2 is disabled.
//  474   *   - This function applies only to STM32 Connectivity line devices.
//  475   * @param  RCC_PLL2Mul: specifies the PLL2 multiplication factor.
//  476   *   This parameter can be RCC_PLL2Mul_x where x:{[8,14], 16, 20}
//  477   * @retval None
//  478   */
//  479 void RCC_PLL2Config(uint32_t RCC_PLL2Mul)
//  480 {
//  481   uint32_t tmpreg = 0;
//  482 
//  483   /* Check the parameters */
//  484   assert_param(IS_RCC_PLL2_MUL(RCC_PLL2Mul));
//  485 
//  486   tmpreg = RCC->CFGR2;
//  487   /* Clear PLL2Mul[3:0] bits */
//  488   tmpreg &= ~CFGR2_PLL2MUL;
//  489   /* Set the PLL2 configuration bits */
//  490   tmpreg |= RCC_PLL2Mul;
//  491   /* Store the new value */
//  492   RCC->CFGR2 = tmpreg;
//  493 }
//  494 
//  495 
//  496 /**
//  497   * @brief  Enables or disables the PLL2.
//  498   * @note 
//  499   *   - The PLL2 can not be disabled if it is used indirectly as system clock
//  500   *     (i.e. it is used as PLL clock entry that is used as System clock).
//  501   *   - This function applies only to STM32 Connectivity line devices.
//  502   * @param  NewState: new state of the PLL2. This parameter can be: ENABLE or DISABLE.
//  503   * @retval None
//  504   */
//  505 void RCC_PLL2Cmd(FunctionalState NewState)
//  506 {
//  507   /* Check the parameters */
//  508   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  509 
//  510   *(__IO uint32_t *) CR_PLL2ON_BB = (uint32_t)NewState;
//  511 }
//  512 
//  513 
//  514 /**
//  515   * @brief  Configures the PLL3 multiplication factor.
//  516   * @note 
//  517   *   - This function must be used only when the PLL3 is disabled.
//  518   *   - This function applies only to STM32 Connectivity line devices.
//  519   * @param  RCC_PLL3Mul: specifies the PLL3 multiplication factor.
//  520   *   This parameter can be RCC_PLL3Mul_x where x:{[8,14], 16, 20}
//  521   * @retval None
//  522   */
//  523 void RCC_PLL3Config(uint32_t RCC_PLL3Mul)
//  524 {
//  525   uint32_t tmpreg = 0;
//  526 
//  527   /* Check the parameters */
//  528   assert_param(IS_RCC_PLL3_MUL(RCC_PLL3Mul));
//  529 
//  530   tmpreg = RCC->CFGR2;
//  531   /* Clear PLL3Mul[3:0] bits */
//  532   tmpreg &= ~CFGR2_PLL3MUL;
//  533   /* Set the PLL3 configuration bits */
//  534   tmpreg |= RCC_PLL3Mul;
//  535   /* Store the new value */
//  536   RCC->CFGR2 = tmpreg;
//  537 }
//  538 
//  539 
//  540 /**
//  541   * @brief  Enables or disables the PLL3.
//  542   * @note   This function applies only to STM32 Connectivity line devices.
//  543   * @param  NewState: new state of the PLL3. This parameter can be: ENABLE or DISABLE.
//  544   * @retval None
//  545   */
//  546 void RCC_PLL3Cmd(FunctionalState NewState)
//  547 {
//  548   /* Check the parameters */
//  549 
//  550   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  551   *(__IO uint32_t *) CR_PLL3ON_BB = (uint32_t)NewState;
//  552 }
//  553 #endif /* STM32F10X_CL */
//  554 
//  555 /**
//  556   * @brief  Configures the system clock (SYSCLK).
//  557   * @param  RCC_SYSCLKSource: specifies the clock source used as system clock.
//  558   *   This parameter can be one of the following values:
//  559   *     @arg RCC_SYSCLKSource_HSI: HSI selected as system clock
//  560   *     @arg RCC_SYSCLKSource_HSE: HSE selected as system clock
//  561   *     @arg RCC_SYSCLKSource_PLLCLK: PLL selected as system clock
//  562   * @retval None
//  563   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function RCC_SYSCLKConfig
          CFI NoCalls
        THUMB
//  564 void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource)
//  565 {
//  566   uint32_t tmpreg = 0;
//  567   /* Check the parameters */
//  568   assert_param(IS_RCC_SYSCLK_SOURCE(RCC_SYSCLKSource));
//  569   tmpreg = RCC->CFGR;
RCC_SYSCLKConfig:
        LDR.N    R1,??DataTable29_4  ;; 0x40021004
        LDR      R2,[R1, #+0]
//  570   /* Clear SW[1:0] bits */
//  571   tmpreg &= CFGR_SW_Mask;
//  572   /* Set SW[1:0] bits according to RCC_SYSCLKSource value */
//  573   tmpreg |= RCC_SYSCLKSource;
//  574   /* Store the new value */
//  575   RCC->CFGR = tmpreg;
        LSRS     R2,R2,#+2
        ORR      R0,R0,R2, LSL #+2
        STR      R0,[R1, #+0]
//  576 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  577 
//  578 /**
//  579   * @brief  Returns the clock source used as system clock.
//  580   * @param  None
//  581   * @retval The clock source used as system clock. The returned value can
//  582   *   be one of the following:
//  583   *     - 0x00: HSI used as system clock
//  584   *     - 0x04: HSE used as system clock
//  585   *     - 0x08: PLL used as system clock
//  586   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function RCC_GetSYSCLKSource
          CFI NoCalls
        THUMB
//  587 uint8_t RCC_GetSYSCLKSource(void)
//  588 {
//  589   return ((uint8_t)(RCC->CFGR & CFGR_SWS_Mask));
RCC_GetSYSCLKSource:
        LDR.N    R0,??DataTable29_4  ;; 0x40021004
        LDR      R0,[R0, #+0]
        AND      R0,R0,#0xC
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  590 }
//  591 
//  592 /**
//  593   * @brief  Configures the AHB clock (HCLK).
//  594   * @param  RCC_SYSCLK: defines the AHB clock divider. This clock is derived from 
//  595   *   the system clock (SYSCLK).
//  596   *   This parameter can be one of the following values:
//  597   *     @arg RCC_SYSCLK_Div1: AHB clock = SYSCLK
//  598   *     @arg RCC_SYSCLK_Div2: AHB clock = SYSCLK/2
//  599   *     @arg RCC_SYSCLK_Div4: AHB clock = SYSCLK/4
//  600   *     @arg RCC_SYSCLK_Div8: AHB clock = SYSCLK/8
//  601   *     @arg RCC_SYSCLK_Div16: AHB clock = SYSCLK/16
//  602   *     @arg RCC_SYSCLK_Div64: AHB clock = SYSCLK/64
//  603   *     @arg RCC_SYSCLK_Div128: AHB clock = SYSCLK/128
//  604   *     @arg RCC_SYSCLK_Div256: AHB clock = SYSCLK/256
//  605   *     @arg RCC_SYSCLK_Div512: AHB clock = SYSCLK/512
//  606   * @retval None
//  607   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function RCC_HCLKConfig
          CFI NoCalls
        THUMB
//  608 void RCC_HCLKConfig(uint32_t RCC_SYSCLK)
//  609 {
//  610   uint32_t tmpreg = 0;
//  611   /* Check the parameters */
//  612   assert_param(IS_RCC_HCLK(RCC_SYSCLK));
//  613   tmpreg = RCC->CFGR;
RCC_HCLKConfig:
        LDR.N    R1,??DataTable29_4  ;; 0x40021004
        LDR      R2,[R1, #+0]
//  614   /* Clear HPRE[3:0] bits */
//  615   tmpreg &= CFGR_HPRE_Reset_Mask;
//  616   /* Set HPRE[3:0] bits according to RCC_SYSCLK value */
//  617   tmpreg |= RCC_SYSCLK;
//  618   /* Store the new value */
//  619   RCC->CFGR = tmpreg;
        BIC      R2,R2,#0xF0
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock9
//  620 }
//  621 
//  622 /**
//  623   * @brief  Configures the Low Speed APB clock (PCLK1).
//  624   * @param  RCC_HCLK: defines the APB1 clock divider. This clock is derived from 
//  625   *   the AHB clock (HCLK).
//  626   *   This parameter can be one of the following values:
//  627   *     @arg RCC_HCLK_Div1: APB1 clock = HCLK
//  628   *     @arg RCC_HCLK_Div2: APB1 clock = HCLK/2
//  629   *     @arg RCC_HCLK_Div4: APB1 clock = HCLK/4
//  630   *     @arg RCC_HCLK_Div8: APB1 clock = HCLK/8
//  631   *     @arg RCC_HCLK_Div16: APB1 clock = HCLK/16
//  632   * @retval None
//  633   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function RCC_PCLK1Config
          CFI NoCalls
        THUMB
//  634 void RCC_PCLK1Config(uint32_t RCC_HCLK)
//  635 {
//  636   uint32_t tmpreg = 0;
//  637   /* Check the parameters */
//  638   assert_param(IS_RCC_PCLK(RCC_HCLK));
//  639   tmpreg = RCC->CFGR;
RCC_PCLK1Config:
        LDR.N    R1,??DataTable29_4  ;; 0x40021004
        LDR      R2,[R1, #+0]
//  640   /* Clear PPRE1[2:0] bits */
//  641   tmpreg &= CFGR_PPRE1_Reset_Mask;
//  642   /* Set PPRE1[2:0] bits according to RCC_HCLK value */
//  643   tmpreg |= RCC_HCLK;
//  644   /* Store the new value */
//  645   RCC->CFGR = tmpreg;
        BIC      R2,R2,#0x700
          CFI EndBlock cfiBlock10
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  646 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls RCC_HCLKConfig
          CFI NoCalls RCC_PCLK1Config
          CFI NoCalls RCC_ADCCLKConfig
          CFI NoCalls RCC_RTCCLKConfig
        THUMB
?Subroutine1:
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  647 
//  648 /**
//  649   * @brief  Configures the High Speed APB clock (PCLK2).
//  650   * @param  RCC_HCLK: defines the APB2 clock divider. This clock is derived from 
//  651   *   the AHB clock (HCLK).
//  652   *   This parameter can be one of the following values:
//  653   *     @arg RCC_HCLK_Div1: APB2 clock = HCLK
//  654   *     @arg RCC_HCLK_Div2: APB2 clock = HCLK/2
//  655   *     @arg RCC_HCLK_Div4: APB2 clock = HCLK/4
//  656   *     @arg RCC_HCLK_Div8: APB2 clock = HCLK/8
//  657   *     @arg RCC_HCLK_Div16: APB2 clock = HCLK/16
//  658   * @retval None
//  659   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function RCC_PCLK2Config
          CFI NoCalls
        THUMB
//  660 void RCC_PCLK2Config(uint32_t RCC_HCLK)
//  661 {
//  662   uint32_t tmpreg = 0;
//  663   /* Check the parameters */
//  664   assert_param(IS_RCC_PCLK(RCC_HCLK));
//  665   tmpreg = RCC->CFGR;
RCC_PCLK2Config:
        LDR.N    R1,??DataTable29_4  ;; 0x40021004
        LDR      R2,[R1, #+0]
//  666   /* Clear PPRE2[2:0] bits */
//  667   tmpreg &= CFGR_PPRE2_Reset_Mask;
//  668   /* Set PPRE2[2:0] bits according to RCC_HCLK value */
//  669   tmpreg |= RCC_HCLK << 3;
//  670   /* Store the new value */
//  671   RCC->CFGR = tmpreg;
        BIC      R2,R2,#0x3800
          CFI EndBlock cfiBlock12
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  672 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls RCC_AdjustHSICalibrationValue
          CFI NoCalls RCC_PCLK2Config
        THUMB
?Subroutine0:
        ORR      R0,R2,R0, LSL #+3
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  673 
//  674 /**
//  675   * @brief  Enables or disables the specified RCC interrupts.
//  676   * @param  RCC_IT: specifies the RCC interrupt sources to be enabled or disabled.
//  677   * 
//  678   *   For @b STM32_Connectivity_line_devices, this parameter can be any combination
//  679   *   of the following values        
//  680   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
//  681   *     @arg RCC_IT_LSERDY: LSE ready interrupt
//  682   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
//  683   *     @arg RCC_IT_HSERDY: HSE ready interrupt
//  684   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
//  685   *     @arg RCC_IT_PLL2RDY: PLL2 ready interrupt
//  686   *     @arg RCC_IT_PLL3RDY: PLL3 ready interrupt
//  687   * 
//  688   *   For @b other_STM32_devices, this parameter can be any combination of the 
//  689   *   following values        
//  690   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
//  691   *     @arg RCC_IT_LSERDY: LSE ready interrupt
//  692   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
//  693   *     @arg RCC_IT_HSERDY: HSE ready interrupt
//  694   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
//  695   *       
//  696   * @param  NewState: new state of the specified RCC interrupts.
//  697   *   This parameter can be: ENABLE or DISABLE.
//  698   * @retval None
//  699   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function RCC_ITConfig
          CFI NoCalls
        THUMB
//  700 void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState)
//  701 {
//  702   /* Check the parameters */
//  703   assert_param(IS_RCC_IT(RCC_IT));
//  704   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  705   if (NewState != DISABLE)
RCC_ITConfig:
        LDR.N    R2,??DataTable29_6  ;; 0x40021009
        CMP      R1,#+0
        LDRB     R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
//  706   {
//  707     /* Perform Byte access to RCC_CIR bits to enable the selected interrupts */
//  708     *(__IO uint8_t *) CIR_BYTE2_ADDRESS |= RCC_IT;
//  709   }
//  710   else
//  711   {
//  712     /* Perform Byte access to RCC_CIR bits to disable the selected interrupts */
//  713     *(__IO uint8_t *) CIR_BYTE2_ADDRESS &= (uint8_t)~RCC_IT;
        STRB     R0,[R2, #+0]
//  714   }
//  715 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  716 
//  717 #ifndef STM32F10X_CL
//  718 /**
//  719   * @brief  Configures the USB clock (USBCLK).
//  720   * @param  RCC_USBCLKSource: specifies the USB clock source. This clock is 
//  721   *   derived from the PLL output.
//  722   *   This parameter can be one of the following values:
//  723   *     @arg RCC_USBCLKSource_PLLCLK_1Div5: PLL clock divided by 1,5 selected as USB 
//  724   *                                     clock source
//  725   *     @arg RCC_USBCLKSource_PLLCLK_Div1: PLL clock selected as USB clock source
//  726   * @retval None
//  727   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function RCC_USBCLKConfig
          CFI NoCalls
        THUMB
//  728 void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource)
//  729 {
//  730   /* Check the parameters */
//  731   assert_param(IS_RCC_USBCLK_SOURCE(RCC_USBCLKSource));
//  732 
//  733   *(__IO uint32_t *) CFGR_USBPRE_BB = RCC_USBCLKSource;
RCC_USBCLKConfig:
        LDR.N    R1,??DataTable29_7  ;; 0x424200d8
        STR      R0,[R1, #+0]
//  734 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  735 #else
//  736 /**
//  737   * @brief  Configures the USB OTG FS clock (OTGFSCLK).
//  738   *   This function applies only to STM32 Connectivity line devices.
//  739   * @param  RCC_OTGFSCLKSource: specifies the USB OTG FS clock source.
//  740   *   This clock is derived from the PLL output.
//  741   *   This parameter can be one of the following values:
//  742   *     @arg  RCC_OTGFSCLKSource_PLLVCO_Div3: PLL VCO clock divided by 2 selected as USB OTG FS clock source
//  743   *     @arg  RCC_OTGFSCLKSource_PLLVCO_Div2: PLL VCO clock divided by 2 selected as USB OTG FS clock source
//  744   * @retval None
//  745   */
//  746 void RCC_OTGFSCLKConfig(uint32_t RCC_OTGFSCLKSource)
//  747 {
//  748   /* Check the parameters */
//  749   assert_param(IS_RCC_OTGFSCLK_SOURCE(RCC_OTGFSCLKSource));
//  750 
//  751   *(__IO uint32_t *) CFGR_OTGFSPRE_BB = RCC_OTGFSCLKSource;
//  752 }
//  753 #endif /* STM32F10X_CL */ 
//  754 
//  755 /**
//  756   * @brief  Configures the ADC clock (ADCCLK).
//  757   * @param  RCC_PCLK2: defines the ADC clock divider. This clock is derived from 
//  758   *   the APB2 clock (PCLK2).
//  759   *   This parameter can be one of the following values:
//  760   *     @arg RCC_PCLK2_Div2: ADC clock = PCLK2/2
//  761   *     @arg RCC_PCLK2_Div4: ADC clock = PCLK2/4
//  762   *     @arg RCC_PCLK2_Div6: ADC clock = PCLK2/6
//  763   *     @arg RCC_PCLK2_Div8: ADC clock = PCLK2/8
//  764   * @retval None
//  765   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function RCC_ADCCLKConfig
          CFI NoCalls
        THUMB
//  766 void RCC_ADCCLKConfig(uint32_t RCC_PCLK2)
//  767 {
//  768   uint32_t tmpreg = 0;
//  769   /* Check the parameters */
//  770   assert_param(IS_RCC_ADCCLK(RCC_PCLK2));
//  771   tmpreg = RCC->CFGR;
RCC_ADCCLKConfig:
        LDR.N    R1,??DataTable29_4  ;; 0x40021004
        LDR      R2,[R1, #+0]
//  772   /* Clear ADCPRE[1:0] bits */
//  773   tmpreg &= CFGR_ADCPRE_Reset_Mask;
//  774   /* Set ADCPRE[1:0] bits according to RCC_PCLK2 value */
//  775   tmpreg |= RCC_PCLK2;
//  776   /* Store the new value */
//  777   RCC->CFGR = tmpreg;
        BIC      R2,R2,#0xC000
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock16
//  778 }
//  779 
//  780 #ifdef STM32F10X_CL
//  781 /**
//  782   * @brief  Configures the I2S2 clock source(I2S2CLK).
//  783   * @note
//  784   *   - This function must be called before enabling I2S2 APB clock.
//  785   *   - This function applies only to STM32 Connectivity line devices.
//  786   * @param  RCC_I2S2CLKSource: specifies the I2S2 clock source.
//  787   *   This parameter can be one of the following values:
//  788   *     @arg RCC_I2S2CLKSource_SYSCLK: system clock selected as I2S2 clock entry
//  789   *     @arg RCC_I2S2CLKSource_PLL3_VCO: PLL3 VCO clock selected as I2S2 clock entry
//  790   * @retval None
//  791   */
//  792 void RCC_I2S2CLKConfig(uint32_t RCC_I2S2CLKSource)
//  793 {
//  794   /* Check the parameters */
//  795   assert_param(IS_RCC_I2S2CLK_SOURCE(RCC_I2S2CLKSource));
//  796 
//  797   *(__IO uint32_t *) CFGR2_I2S2SRC_BB = RCC_I2S2CLKSource;
//  798 }
//  799 
//  800 /**
//  801   * @brief  Configures the I2S3 clock source(I2S2CLK).
//  802   * @note
//  803   *   - This function must be called before enabling I2S3 APB clock.
//  804   *   - This function applies only to STM32 Connectivity line devices.
//  805   * @param  RCC_I2S3CLKSource: specifies the I2S3 clock source.
//  806   *   This parameter can be one of the following values:
//  807   *     @arg RCC_I2S3CLKSource_SYSCLK: system clock selected as I2S3 clock entry
//  808   *     @arg RCC_I2S3CLKSource_PLL3_VCO: PLL3 VCO clock selected as I2S3 clock entry
//  809   * @retval None
//  810   */
//  811 void RCC_I2S3CLKConfig(uint32_t RCC_I2S3CLKSource)
//  812 {
//  813   /* Check the parameters */
//  814   assert_param(IS_RCC_I2S3CLK_SOURCE(RCC_I2S3CLKSource));
//  815 
//  816   *(__IO uint32_t *) CFGR2_I2S3SRC_BB = RCC_I2S3CLKSource;
//  817 }
//  818 #endif /* STM32F10X_CL */
//  819 
//  820 /**
//  821   * @brief  Configures the External Low Speed oscillator (LSE).
//  822   * @param  RCC_LSE: specifies the new state of the LSE.
//  823   *   This parameter can be one of the following values:
//  824   *     @arg RCC_LSE_OFF: LSE oscillator OFF
//  825   *     @arg RCC_LSE_ON: LSE oscillator ON
//  826   *     @arg RCC_LSE_Bypass: LSE oscillator bypassed with external clock
//  827   * @retval None
//  828   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function RCC_LSEConfig
          CFI NoCalls
        THUMB
//  829 void RCC_LSEConfig(uint8_t RCC_LSE)
//  830 {
//  831   /* Check the parameters */
//  832   assert_param(IS_RCC_LSE(RCC_LSE));
//  833   /* Reset LSEON and LSEBYP bits before configuring the LSE ------------------*/
//  834   /* Reset LSEON bit */
//  835   *(__IO uint8_t *) BDCR_ADDRESS = RCC_LSE_OFF;
RCC_LSEConfig:
        LDR.N    R1,??DataTable29_8  ;; 0x40021020
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
        CMP      R0,#+1
//  836   /* Reset LSEBYP bit */
//  837   *(__IO uint8_t *) BDCR_ADDRESS = RCC_LSE_OFF;
        STRB     R2,[R1, #+0]
//  838   /* Configure LSE (RCC_LSE_OFF is already covered by the code section above) */
//  839   switch(RCC_LSE)
        BEQ.N    ??RCC_LSEConfig_0
        CMP      R0,#+4
        BNE.N    ??RCC_LSEConfig_1
//  840   {
//  841     case RCC_LSE_ON:
//  842       /* Set LSEON bit */
//  843       *(__IO uint8_t *) BDCR_ADDRESS = RCC_LSE_ON;
//  844       break;
//  845       
//  846     case RCC_LSE_Bypass:
//  847       /* Set LSEBYP and LSEON bits */
//  848       *(__IO uint8_t *) BDCR_ADDRESS = RCC_LSE_Bypass | RCC_LSE_ON;
        MOVS     R0,#+5
??RCC_LSEConfig_0:
        STRB     R0,[R1, #+0]
//  849       break;            
//  850       
//  851     default:
//  852       break;      
//  853   }
//  854 }
??RCC_LSEConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  855 
//  856 /**
//  857   * @brief  Enables or disables the Internal Low Speed oscillator (LSI).
//  858   * @note   LSI can not be disabled if the IWDG is running.
//  859   * @param  NewState: new state of the LSI. This parameter can be: ENABLE or DISABLE.
//  860   * @retval None
//  861   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function RCC_LSICmd
          CFI NoCalls
        THUMB
//  862 void RCC_LSICmd(FunctionalState NewState)
//  863 {
//  864   /* Check the parameters */
//  865   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  866   *(__IO uint32_t *) CSR_LSION_BB = (uint32_t)NewState;
RCC_LSICmd:
        LDR.N    R1,??DataTable29_9  ;; 0x42420480
        STR      R0,[R1, #+0]
//  867 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  868 
//  869 /**
//  870   * @brief  Configures the RTC clock (RTCCLK).
//  871   * @note   Once the RTC clock is selected it can't be changed unless the Backup domain is reset.
//  872   * @param  RCC_RTCCLKSource: specifies the RTC clock source.
//  873   *   This parameter can be one of the following values:
//  874   *     @arg RCC_RTCCLKSource_LSE: LSE selected as RTC clock
//  875   *     @arg RCC_RTCCLKSource_LSI: LSI selected as RTC clock
//  876   *     @arg RCC_RTCCLKSource_HSE_Div128: HSE clock divided by 128 selected as RTC clock
//  877   * @retval None
//  878   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function RCC_RTCCLKConfig
          CFI NoCalls
        THUMB
//  879 void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource)
//  880 {
//  881   /* Check the parameters */
//  882   assert_param(IS_RCC_RTCCLK_SOURCE(RCC_RTCCLKSource));
//  883   /* Select the RTC clock source */
//  884   RCC->BDCR |= RCC_RTCCLKSource;
RCC_RTCCLKConfig:
        LDR.N    R1,??DataTable29_8  ;; 0x40021020
        LDR      R2,[R1, #+0]
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock19
//  885 }
//  886 
//  887 /**
//  888   * @brief  Enables or disables the RTC clock.
//  889   * @note   This function must be used only after the RTC clock was selected using the RCC_RTCCLKConfig function.
//  890   * @param  NewState: new state of the RTC clock. This parameter can be: ENABLE or DISABLE.
//  891   * @retval None
//  892   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function RCC_RTCCLKCmd
          CFI NoCalls
        THUMB
//  893 void RCC_RTCCLKCmd(FunctionalState NewState)
//  894 {
//  895   /* Check the parameters */
//  896   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  897   *(__IO uint32_t *) BDCR_RTCEN_BB = (uint32_t)NewState;
RCC_RTCCLKCmd:
        LDR.N    R1,??DataTable29_10  ;; 0x4242043c
        STR      R0,[R1, #+0]
//  898 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  899 
//  900 /**
//  901   * @brief  Returns the frequencies of different on chip clocks.
//  902   * @param  RCC_Clocks: pointer to a RCC_ClocksTypeDef structure which will hold
//  903   *         the clocks frequencies.
//  904   * @note   The result of this function could be not correct when using 
//  905   *         fractional value for HSE crystal.  
//  906   * @retval None
//  907   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function RCC_GetClocksFreq
          CFI NoCalls
        THUMB
//  908 void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks)
//  909 {
RCC_GetClocksFreq:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  910   uint32_t tmp = 0, pllmull = 0, pllsource = 0, presc = 0;
//  911 
//  912 #ifdef  STM32F10X_CL
//  913   uint32_t prediv1source = 0, prediv1factor = 0, prediv2factor = 0, pll2mull = 0;
//  914 #endif /* STM32F10X_CL */
//  915 
//  916 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)
//  917   uint32_t prediv1factor = 0;
//  918 #endif
//  919     
//  920   /* Get SYSCLK source -------------------------------------------------------*/
//  921   tmp = RCC->CFGR & CFGR_SWS_Mask;
        LDR.N    R1,??DataTable29_4  ;; 0x40021004
        LDR      R2,[R1, #+0]
//  922   
//  923   switch (tmp)
        AND      R2,R2,#0xC
        CMP      R2,#+8
        BNE.N    ??RCC_GetClocksFreq_0
//  924   {
//  925     case 0x00:  /* HSI used as system clock */
//  926       RCC_Clocks->SYSCLK_Frequency = HSI_VALUE;
//  927       break;
//  928     case 0x04:  /* HSE used as system clock */
//  929       RCC_Clocks->SYSCLK_Frequency = HSE_VALUE;
//  930       break;
//  931     case 0x08:  /* PLL used as system clock */
//  932 
//  933       /* Get PLL clock source and multiplication factor ----------------------*/
//  934       pllmull = RCC->CFGR & CFGR_PLLMull_Mask;
        LDR      R2,[R1, #+0]
//  935       pllsource = RCC->CFGR & CFGR_PLLSRC_Mask;
        LDR      R3,[R1, #+0]
//  936       
//  937 #ifndef STM32F10X_CL      
//  938       pllmull = ( pllmull >> 18) + 2;
        UBFX     R2,R2,#+18,#+4
        ADDS     R2,R2,#+2
//  939       
//  940       if (pllsource == 0x00)
        LSLS     R3,R3,#+15
        IT       PL 
        LDRPL.N  R3,??DataTable29_11  ;; 0x3d0900
//  941       {/* HSI oscillator clock divided by 2 selected as PLL clock entry */
//  942         RCC_Clocks->SYSCLK_Frequency = (HSI_VALUE >> 1) * pllmull;
        BPL.N    ??RCC_GetClocksFreq_1
//  943       }
//  944       else
//  945       {
//  946  #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)
//  947        prediv1factor = (RCC->CFGR2 & CFGR2_PREDIV1) + 1;
//  948        /* HSE oscillator clock selected as PREDIV1 clock entry */
//  949        RCC_Clocks->SYSCLK_Frequency = (HSE_VALUE / prediv1factor) * pllmull; 
//  950  #else
//  951         /* HSE selected as PLL clock entry */
//  952         if ((RCC->CFGR & CFGR_PLLXTPRE_Mask) != (uint32_t)RESET)
        LDR      R3,[R1, #+0]
        LSLS     R3,R3,#+14
        ITE      MI 
        LDRMI.N  R3,??DataTable29_11  ;; 0x3d0900
        LDRPL.N  R3,??DataTable29_12  ;; 0x7a1200
//  953         {/* HSE oscillator clock divided by 2 */
//  954           RCC_Clocks->SYSCLK_Frequency = (HSE_VALUE >> 1) * pllmull;
//  955         }
//  956         else
//  957         {
//  958           RCC_Clocks->SYSCLK_Frequency = HSE_VALUE * pllmull;
??RCC_GetClocksFreq_1:
        MULS     R2,R3,R2
        B.N      ??RCC_GetClocksFreq_2
//  959         }
//  960  #endif
//  961       }
//  962 #else
//  963       pllmull = pllmull >> 18;
//  964       
//  965       if (pllmull != 0x0D)
//  966       {
//  967          pllmull += 2;
//  968       }
//  969       else
//  970       { /* PLL multiplication factor = PLL input clock * 6.5 */
//  971         pllmull = 13 / 2; 
//  972       }
//  973             
//  974       if (pllsource == 0x00)
//  975       {/* HSI oscillator clock divided by 2 selected as PLL clock entry */
//  976         RCC_Clocks->SYSCLK_Frequency = (HSI_VALUE >> 1) * pllmull;
//  977       }
//  978       else
//  979       {/* PREDIV1 selected as PLL clock entry */
//  980         
//  981         /* Get PREDIV1 clock source and division factor */
//  982         prediv1source = RCC->CFGR2 & CFGR2_PREDIV1SRC;
//  983         prediv1factor = (RCC->CFGR2 & CFGR2_PREDIV1) + 1;
//  984         
//  985         if (prediv1source == 0)
//  986         { /* HSE oscillator clock selected as PREDIV1 clock entry */
//  987           RCC_Clocks->SYSCLK_Frequency = (HSE_VALUE / prediv1factor) * pllmull;          
//  988         }
//  989         else
//  990         {/* PLL2 clock selected as PREDIV1 clock entry */
//  991           
//  992           /* Get PREDIV2 division factor and PLL2 multiplication factor */
//  993           prediv2factor = ((RCC->CFGR2 & CFGR2_PREDIV2) >> 4) + 1;
//  994           pll2mull = ((RCC->CFGR2 & CFGR2_PLL2MUL) >> 8 ) + 2; 
//  995           RCC_Clocks->SYSCLK_Frequency = (((HSE_VALUE / prediv2factor) * pll2mull) / prediv1factor) * pllmull;                         
//  996         }
//  997       }
//  998 #endif /* STM32F10X_CL */ 
//  999       break;
// 1000 
// 1001     default:
// 1002       RCC_Clocks->SYSCLK_Frequency = HSI_VALUE;
??RCC_GetClocksFreq_0:
        LDR.N    R2,??DataTable29_12  ;; 0x7a1200
// 1003       break;
??RCC_GetClocksFreq_2:
        STR      R2,[R0, #+0]
// 1004   }
// 1005 
// 1006   /* Compute HCLK, PCLK1, PCLK2 and ADCCLK clocks frequencies ----------------*/
// 1007   /* Get HCLK prescaler */
// 1008   tmp = RCC->CFGR & CFGR_HPRE_Set_Mask;
        LDR      R3,[R1, #+0]
// 1009   tmp = tmp >> 4;
// 1010   presc = APBAHBPrescTable[tmp];
// 1011   /* HCLK clock frequency */
// 1012   RCC_Clocks->HCLK_Frequency = RCC_Clocks->SYSCLK_Frequency >> presc;
        LDR.N    R2,??DataTable29_13
        LDR      R4,[R0, #+0]
        UBFX     R3,R3,#+4,#+4
        LDRB     R3,[R3, R2]
        LSR      R5,R4,R3
        STR      R5,[R0, #+4]
// 1013   /* Get PCLK1 prescaler */
// 1014   tmp = RCC->CFGR & CFGR_PPRE1_Set_Mask;
        LDR      R3,[R1, #+0]
// 1015   tmp = tmp >> 8;
// 1016   presc = APBAHBPrescTable[tmp];
// 1017   /* PCLK1 clock frequency */
// 1018   RCC_Clocks->PCLK1_Frequency = RCC_Clocks->HCLK_Frequency >> presc;
        LDR      R4,[R0, #+4]
        UBFX     R3,R3,#+8,#+3
        LDRB     R3,[R3, R2]
        LSR      R5,R4,R3
        STR      R5,[R0, #+8]
// 1019   /* Get PCLK2 prescaler */
// 1020   tmp = RCC->CFGR & CFGR_PPRE2_Set_Mask;
        LDR      R3,[R1, #+0]
// 1021   tmp = tmp >> 11;
// 1022   presc = APBAHBPrescTable[tmp];
// 1023   /* PCLK2 clock frequency */
// 1024   RCC_Clocks->PCLK2_Frequency = RCC_Clocks->HCLK_Frequency >> presc;
        LDR      R4,[R0, #+4]
        UBFX     R3,R3,#+11,#+3
        LDRB     R3,[R3, R2]
        LSR      R5,R4,R3
        STR      R5,[R0, #+12]
// 1025   /* Get ADCCLK prescaler */
// 1026   tmp = RCC->CFGR & CFGR_ADCPRE_Set_Mask;
        LDR      R1,[R1, #+0]
// 1027   tmp = tmp >> 14;
// 1028   presc = ADCPrescTable[tmp];
// 1029   /* ADCCLK clock frequency */
// 1030   RCC_Clocks->ADCCLK_Frequency = RCC_Clocks->PCLK2_Frequency / presc;
        LDR      R3,[R0, #+12]
        UBFX     R1,R1,#+14,#+2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+16]
        UDIV     R1,R3,R1
        STR      R1,[R0, #+16]
// 1031 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
// 1032 
// 1033 /**
// 1034   * @brief  Enables or disables the AHB peripheral clock.
// 1035   * @param  RCC_AHBPeriph: specifies the AHB peripheral to gates its clock.
// 1036   *   
// 1037   *   For @b STM32_Connectivity_line_devices, this parameter can be any combination
// 1038   *   of the following values:        
// 1039   *     @arg RCC_AHBPeriph_DMA1
// 1040   *     @arg RCC_AHBPeriph_DMA2
// 1041   *     @arg RCC_AHBPeriph_SRAM
// 1042   *     @arg RCC_AHBPeriph_FLITF
// 1043   *     @arg RCC_AHBPeriph_CRC
// 1044   *     @arg RCC_AHBPeriph_OTG_FS    
// 1045   *     @arg RCC_AHBPeriph_ETH_MAC   
// 1046   *     @arg RCC_AHBPeriph_ETH_MAC_Tx
// 1047   *     @arg RCC_AHBPeriph_ETH_MAC_Rx
// 1048   * 
// 1049   *   For @b other_STM32_devices, this parameter can be any combination of the 
// 1050   *   following values:        
// 1051   *     @arg RCC_AHBPeriph_DMA1
// 1052   *     @arg RCC_AHBPeriph_DMA2
// 1053   *     @arg RCC_AHBPeriph_SRAM
// 1054   *     @arg RCC_AHBPeriph_FLITF
// 1055   *     @arg RCC_AHBPeriph_CRC
// 1056   *     @arg RCC_AHBPeriph_FSMC
// 1057   *     @arg RCC_AHBPeriph_SDIO
// 1058   *   
// 1059   * @note SRAM and FLITF clock can be disabled only during sleep mode.
// 1060   * @param  NewState: new state of the specified peripheral clock.
// 1061   *   This parameter can be: ENABLE or DISABLE.
// 1062   * @retval None
// 1063   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function RCC_AHBPeriphClockCmd
          CFI NoCalls
        THUMB
// 1064 void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState)
// 1065 {
// 1066   /* Check the parameters */
// 1067   assert_param(IS_RCC_AHB_PERIPH(RCC_AHBPeriph));
// 1068   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1069 
// 1070   if (NewState != DISABLE)
RCC_AHBPeriphClockCmd:
        LDR.N    R2,??DataTable29_14  ;; 0x40021014
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
// 1071   {
// 1072     RCC->AHBENR |= RCC_AHBPeriph;
// 1073   }
// 1074   else
// 1075   {
// 1076     RCC->AHBENR &= ~RCC_AHBPeriph;
        STR      R0,[R2, #+0]
// 1077   }
// 1078 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
// 1079 
// 1080 /**
// 1081   * @brief  Enables or disables the High Speed APB (APB2) peripheral clock.
// 1082   * @param  RCC_APB2Periph: specifies the APB2 peripheral to gates its clock.
// 1083   *   This parameter can be any combination of the following values:
// 1084   *     @arg RCC_APB2Periph_AFIO, RCC_APB2Periph_GPIOA, RCC_APB2Periph_GPIOB,
// 1085   *          RCC_APB2Periph_GPIOC, RCC_APB2Periph_GPIOD, RCC_APB2Periph_GPIOE,
// 1086   *          RCC_APB2Periph_GPIOF, RCC_APB2Periph_GPIOG, RCC_APB2Periph_ADC1,
// 1087   *          RCC_APB2Periph_ADC2, RCC_APB2Periph_TIM1, RCC_APB2Periph_SPI1,
// 1088   *          RCC_APB2Periph_TIM8, RCC_APB2Periph_USART1, RCC_APB2Periph_ADC3,
// 1089   *          RCC_APB2Periph_TIM15, RCC_APB2Periph_TIM16, RCC_APB2Periph_TIM17,
// 1090   *          RCC_APB2Periph_TIM9, RCC_APB2Periph_TIM10, RCC_APB2Periph_TIM11     
// 1091   * @param  NewState: new state of the specified peripheral clock.
// 1092   *   This parameter can be: ENABLE or DISABLE.
// 1093   * @retval None
// 1094   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function RCC_APB2PeriphClockCmd
          CFI NoCalls
        THUMB
// 1095 void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
// 1096 {
// 1097   /* Check the parameters */
// 1098   assert_param(IS_RCC_APB2_PERIPH(RCC_APB2Periph));
// 1099   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1100   if (NewState != DISABLE)
RCC_APB2PeriphClockCmd:
        LDR.N    R2,??DataTable29_15  ;; 0x40021018
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
// 1101   {
// 1102     RCC->APB2ENR |= RCC_APB2Periph;
// 1103   }
// 1104   else
// 1105   {
// 1106     RCC->APB2ENR &= ~RCC_APB2Periph;
        STR      R0,[R2, #+0]
// 1107   }
// 1108 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
// 1109 
// 1110 /**
// 1111   * @brief  Enables or disables the Low Speed APB (APB1) peripheral clock.
// 1112   * @param  RCC_APB1Periph: specifies the APB1 peripheral to gates its clock.
// 1113   *   This parameter can be any combination of the following values:
// 1114   *     @arg RCC_APB1Periph_TIM2, RCC_APB1Periph_TIM3, RCC_APB1Periph_TIM4,
// 1115   *          RCC_APB1Periph_TIM5, RCC_APB1Periph_TIM6, RCC_APB1Periph_TIM7,
// 1116   *          RCC_APB1Periph_WWDG, RCC_APB1Periph_SPI2, RCC_APB1Periph_SPI3,
// 1117   *          RCC_APB1Periph_USART2, RCC_APB1Periph_USART3, RCC_APB1Periph_USART4, 
// 1118   *          RCC_APB1Periph_USART5, RCC_APB1Periph_I2C1, RCC_APB1Periph_I2C2,
// 1119   *          RCC_APB1Periph_USB, RCC_APB1Periph_CAN1, RCC_APB1Periph_BKP,
// 1120   *          RCC_APB1Periph_PWR, RCC_APB1Periph_DAC, RCC_APB1Periph_CEC,
// 1121   *          RCC_APB1Periph_TIM12, RCC_APB1Periph_TIM13, RCC_APB1Periph_TIM14
// 1122   * @param  NewState: new state of the specified peripheral clock.
// 1123   *   This parameter can be: ENABLE or DISABLE.
// 1124   * @retval None
// 1125   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function RCC_APB1PeriphClockCmd
          CFI NoCalls
        THUMB
// 1126 void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState)
// 1127 {
// 1128   /* Check the parameters */
// 1129   assert_param(IS_RCC_APB1_PERIPH(RCC_APB1Periph));
// 1130   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1131   if (NewState != DISABLE)
RCC_APB1PeriphClockCmd:
        LDR.N    R2,??DataTable29_16  ;; 0x4002101c
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
// 1132   {
// 1133     RCC->APB1ENR |= RCC_APB1Periph;
// 1134   }
// 1135   else
// 1136   {
// 1137     RCC->APB1ENR &= ~RCC_APB1Periph;
        STR      R0,[R2, #+0]
// 1138   }
// 1139 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
// 1140 
// 1141 #ifdef STM32F10X_CL
// 1142 /**
// 1143   * @brief  Forces or releases AHB peripheral reset.
// 1144   * @note   This function applies only to STM32 Connectivity line devices.
// 1145   * @param  RCC_AHBPeriph: specifies the AHB peripheral to reset.
// 1146   *   This parameter can be any combination of the following values:
// 1147   *     @arg RCC_AHBPeriph_OTG_FS 
// 1148   *     @arg RCC_AHBPeriph_ETH_MAC
// 1149   * @param  NewState: new state of the specified peripheral reset.
// 1150   *   This parameter can be: ENABLE or DISABLE.
// 1151   * @retval None
// 1152   */
// 1153 void RCC_AHBPeriphResetCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState)
// 1154 {
// 1155   /* Check the parameters */
// 1156   assert_param(IS_RCC_AHB_PERIPH_RESET(RCC_AHBPeriph));
// 1157   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1158 
// 1159   if (NewState != DISABLE)
// 1160   {
// 1161     RCC->AHBRSTR |= RCC_AHBPeriph;
// 1162   }
// 1163   else
// 1164   {
// 1165     RCC->AHBRSTR &= ~RCC_AHBPeriph;
// 1166   }
// 1167 }
// 1168 #endif /* STM32F10X_CL */ 
// 1169 
// 1170 /**
// 1171   * @brief  Forces or releases High Speed APB (APB2) peripheral reset.
// 1172   * @param  RCC_APB2Periph: specifies the APB2 peripheral to reset.
// 1173   *   This parameter can be any combination of the following values:
// 1174   *     @arg RCC_APB2Periph_AFIO, RCC_APB2Periph_GPIOA, RCC_APB2Periph_GPIOB,
// 1175   *          RCC_APB2Periph_GPIOC, RCC_APB2Periph_GPIOD, RCC_APB2Periph_GPIOE,
// 1176   *          RCC_APB2Periph_GPIOF, RCC_APB2Periph_GPIOG, RCC_APB2Periph_ADC1,
// 1177   *          RCC_APB2Periph_ADC2, RCC_APB2Periph_TIM1, RCC_APB2Periph_SPI1,
// 1178   *          RCC_APB2Periph_TIM8, RCC_APB2Periph_USART1, RCC_APB2Periph_ADC3,
// 1179   *          RCC_APB2Periph_TIM15, RCC_APB2Periph_TIM16, RCC_APB2Periph_TIM17,
// 1180   *          RCC_APB2Periph_TIM9, RCC_APB2Periph_TIM10, RCC_APB2Periph_TIM11  
// 1181   * @param  NewState: new state of the specified peripheral reset.
// 1182   *   This parameter can be: ENABLE or DISABLE.
// 1183   * @retval None
// 1184   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function RCC_APB2PeriphResetCmd
          CFI NoCalls
        THUMB
// 1185 void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
// 1186 {
// 1187   /* Check the parameters */
// 1188   assert_param(IS_RCC_APB2_PERIPH(RCC_APB2Periph));
// 1189   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1190   if (NewState != DISABLE)
RCC_APB2PeriphResetCmd:
        LDR.N    R2,??DataTable29_17  ;; 0x4002100c
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
// 1191   {
// 1192     RCC->APB2RSTR |= RCC_APB2Periph;
// 1193   }
// 1194   else
// 1195   {
// 1196     RCC->APB2RSTR &= ~RCC_APB2Periph;
        STR      R0,[R2, #+0]
// 1197   }
// 1198 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
// 1199 
// 1200 /**
// 1201   * @brief  Forces or releases Low Speed APB (APB1) peripheral reset.
// 1202   * @param  RCC_APB1Periph: specifies the APB1 peripheral to reset.
// 1203   *   This parameter can be any combination of the following values:
// 1204   *     @arg RCC_APB1Periph_TIM2, RCC_APB1Periph_TIM3, RCC_APB1Periph_TIM4,
// 1205   *          RCC_APB1Periph_TIM5, RCC_APB1Periph_TIM6, RCC_APB1Periph_TIM7,
// 1206   *          RCC_APB1Periph_WWDG, RCC_APB1Periph_SPI2, RCC_APB1Periph_SPI3,
// 1207   *          RCC_APB1Periph_USART2, RCC_APB1Periph_USART3, RCC_APB1Periph_USART4, 
// 1208   *          RCC_APB1Periph_USART5, RCC_APB1Periph_I2C1, RCC_APB1Periph_I2C2,
// 1209   *          RCC_APB1Periph_USB, RCC_APB1Periph_CAN1, RCC_APB1Periph_BKP,
// 1210   *          RCC_APB1Periph_PWR, RCC_APB1Periph_DAC, RCC_APB1Periph_CEC,
// 1211   *          RCC_APB1Periph_TIM12, RCC_APB1Periph_TIM13, RCC_APB1Periph_TIM14  
// 1212   * @param  NewState: new state of the specified peripheral clock.
// 1213   *   This parameter can be: ENABLE or DISABLE.
// 1214   * @retval None
// 1215   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function RCC_APB1PeriphResetCmd
          CFI NoCalls
        THUMB
// 1216 void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState)
// 1217 {
// 1218   /* Check the parameters */
// 1219   assert_param(IS_RCC_APB1_PERIPH(RCC_APB1Periph));
// 1220   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1221   if (NewState != DISABLE)
RCC_APB1PeriphResetCmd:
        LDR.N    R2,??DataTable29_18  ;; 0x40021010
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
// 1222   {
// 1223     RCC->APB1RSTR |= RCC_APB1Periph;
// 1224   }
// 1225   else
// 1226   {
// 1227     RCC->APB1RSTR &= ~RCC_APB1Periph;
        STR      R0,[R2, #+0]
// 1228   }
// 1229 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
// 1230 
// 1231 /**
// 1232   * @brief  Forces or releases the Backup domain reset.
// 1233   * @param  NewState: new state of the Backup domain reset.
// 1234   *   This parameter can be: ENABLE or DISABLE.
// 1235   * @retval None
// 1236   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function RCC_BackupResetCmd
          CFI NoCalls
        THUMB
// 1237 void RCC_BackupResetCmd(FunctionalState NewState)
// 1238 {
// 1239   /* Check the parameters */
// 1240   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1241   *(__IO uint32_t *) BDCR_BDRST_BB = (uint32_t)NewState;
RCC_BackupResetCmd:
        LDR.N    R1,??DataTable29_19  ;; 0x42420440
        STR      R0,[R1, #+0]
// 1242 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
// 1243 
// 1244 /**
// 1245   * @brief  Enables or disables the Clock Security System.
// 1246   * @param  NewState: new state of the Clock Security System..
// 1247   *   This parameter can be: ENABLE or DISABLE.
// 1248   * @retval None
// 1249   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function RCC_ClockSecuritySystemCmd
          CFI NoCalls
        THUMB
// 1250 void RCC_ClockSecuritySystemCmd(FunctionalState NewState)
// 1251 {
// 1252   /* Check the parameters */
// 1253   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1254   *(__IO uint32_t *) CR_CSSON_BB = (uint32_t)NewState;
RCC_ClockSecuritySystemCmd:
        LDR.N    R1,??DataTable29_20  ;; 0x4242004c
        STR      R0,[R1, #+0]
// 1255 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
// 1256 
// 1257 /**
// 1258   * @brief  Selects the clock source to output on MCO pin.
// 1259   * @param  RCC_MCO: specifies the clock source to output.
// 1260   *   
// 1261   *   For @b STM32_Connectivity_line_devices, this parameter can be one of the
// 1262   *   following values:       
// 1263   *     @arg RCC_MCO_NoClock: No clock selected
// 1264   *     @arg RCC_MCO_SYSCLK: System clock selected
// 1265   *     @arg RCC_MCO_HSI: HSI oscillator clock selected
// 1266   *     @arg RCC_MCO_HSE: HSE oscillator clock selected
// 1267   *     @arg RCC_MCO_PLLCLK_Div2: PLL clock divided by 2 selected
// 1268   *     @arg RCC_MCO_PLL2CLK: PLL2 clock selected                     
// 1269   *     @arg RCC_MCO_PLL3CLK_Div2: PLL3 clock divided by 2 selected   
// 1270   *     @arg RCC_MCO_XT1: External 3-25 MHz oscillator clock selected  
// 1271   *     @arg RCC_MCO_PLL3CLK: PLL3 clock selected 
// 1272   * 
// 1273   *   For  @b other_STM32_devices, this parameter can be one of the following values:        
// 1274   *     @arg RCC_MCO_NoClock: No clock selected
// 1275   *     @arg RCC_MCO_SYSCLK: System clock selected
// 1276   *     @arg RCC_MCO_HSI: HSI oscillator clock selected
// 1277   *     @arg RCC_MCO_HSE: HSE oscillator clock selected
// 1278   *     @arg RCC_MCO_PLLCLK_Div2: PLL clock divided by 2 selected
// 1279   *   
// 1280   * @retval None
// 1281   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function RCC_MCOConfig
          CFI NoCalls
        THUMB
// 1282 void RCC_MCOConfig(uint8_t RCC_MCO)
// 1283 {
// 1284   /* Check the parameters */
// 1285   assert_param(IS_RCC_MCO(RCC_MCO));
// 1286 
// 1287   /* Perform Byte access to MCO bits to select the MCO source */
// 1288   *(__IO uint8_t *) CFGR_BYTE4_ADDRESS = RCC_MCO;
RCC_MCOConfig:
        LDR.N    R1,??DataTable29_21  ;; 0x40021007
        STRB     R0,[R1, #+0]
// 1289 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock29
// 1290 
// 1291 /**
// 1292   * @brief  Checks whether the specified RCC flag is set or not.
// 1293   * @param  RCC_FLAG: specifies the flag to check.
// 1294   *   
// 1295   *   For @b STM32_Connectivity_line_devices, this parameter can be one of the
// 1296   *   following values:
// 1297   *     @arg RCC_FLAG_HSIRDY: HSI oscillator clock ready
// 1298   *     @arg RCC_FLAG_HSERDY: HSE oscillator clock ready
// 1299   *     @arg RCC_FLAG_PLLRDY: PLL clock ready
// 1300   *     @arg RCC_FLAG_PLL2RDY: PLL2 clock ready      
// 1301   *     @arg RCC_FLAG_PLL3RDY: PLL3 clock ready                           
// 1302   *     @arg RCC_FLAG_LSERDY: LSE oscillator clock ready
// 1303   *     @arg RCC_FLAG_LSIRDY: LSI oscillator clock ready
// 1304   *     @arg RCC_FLAG_PINRST: Pin reset
// 1305   *     @arg RCC_FLAG_PORRST: POR/PDR reset
// 1306   *     @arg RCC_FLAG_SFTRST: Software reset
// 1307   *     @arg RCC_FLAG_IWDGRST: Independent Watchdog reset
// 1308   *     @arg RCC_FLAG_WWDGRST: Window Watchdog reset
// 1309   *     @arg RCC_FLAG_LPWRRST: Low Power reset
// 1310   * 
// 1311   *   For @b other_STM32_devices, this parameter can be one of the following values:        
// 1312   *     @arg RCC_FLAG_HSIRDY: HSI oscillator clock ready
// 1313   *     @arg RCC_FLAG_HSERDY: HSE oscillator clock ready
// 1314   *     @arg RCC_FLAG_PLLRDY: PLL clock ready
// 1315   *     @arg RCC_FLAG_LSERDY: LSE oscillator clock ready
// 1316   *     @arg RCC_FLAG_LSIRDY: LSI oscillator clock ready
// 1317   *     @arg RCC_FLAG_PINRST: Pin reset
// 1318   *     @arg RCC_FLAG_PORRST: POR/PDR reset
// 1319   *     @arg RCC_FLAG_SFTRST: Software reset
// 1320   *     @arg RCC_FLAG_IWDGRST: Independent Watchdog reset
// 1321   *     @arg RCC_FLAG_WWDGRST: Window Watchdog reset
// 1322   *     @arg RCC_FLAG_LPWRRST: Low Power reset
// 1323   *   
// 1324   * @retval The new state of RCC_FLAG (SET or RESET).
// 1325   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function RCC_GetFlagStatus
          CFI NoCalls
        THUMB
// 1326 FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG)
// 1327 {
// 1328   uint32_t tmp = 0;
// 1329   uint32_t statusreg = 0;
// 1330   FlagStatus bitstatus = RESET;
// 1331   /* Check the parameters */
// 1332   assert_param(IS_RCC_FLAG(RCC_FLAG));
// 1333 
// 1334   /* Get the RCC register index */
// 1335   tmp = RCC_FLAG >> 5;
RCC_GetFlagStatus:
        LSRS     R1,R0,#+5
// 1336   if (tmp == 1)               /* The flag to check is in CR register */
        LDR.N    R2,??DataTable29  ;; 0x40021000
        CMP      R1,#+1
        IT       EQ 
        LDREQ    R1,[R2, #+0]
// 1337   {
// 1338     statusreg = RCC->CR;
        BEQ.N    ??RCC_GetFlagStatus_0
// 1339   }
// 1340   else if (tmp == 2)          /* The flag to check is in BDCR register */
        CMP      R1,#+2
        ITE      EQ 
        LDREQ    R1,[R2, #+32]
        LDRNE    R1,[R2, #+36]
// 1341   {
// 1342     statusreg = RCC->BDCR;
// 1343   }
// 1344   else                       /* The flag to check is in CSR register */
// 1345   {
// 1346     statusreg = RCC->CSR;
// 1347   }
// 1348 
// 1349   /* Get the flag position */
// 1350   tmp = RCC_FLAG & FLAG_Mask;
// 1351   if ((statusreg & ((uint32_t)1 << tmp)) != (uint32_t)RESET)
// 1352   {
// 1353     bitstatus = SET;
// 1354   }
// 1355   else
// 1356   {
// 1357     bitstatus = RESET;
// 1358   }
// 1359 
// 1360   /* Return the flag status */
// 1361   return bitstatus;
??RCC_GetFlagStatus_0:
        AND      R0,R0,#0x1F
        LSR      R2,R1,R0
        AND      R0,R2,#0x1
        BX       LR               ;; return
          CFI EndBlock cfiBlock30
// 1362 }
// 1363 
// 1364 /**
// 1365   * @brief  Clears the RCC reset flags.
// 1366   * @note   The reset flags are: RCC_FLAG_PINRST, RCC_FLAG_PORRST, RCC_FLAG_SFTRST,
// 1367   *   RCC_FLAG_IWDGRST, RCC_FLAG_WWDGRST, RCC_FLAG_LPWRRST
// 1368   * @param  None
// 1369   * @retval None
// 1370   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function RCC_ClearFlag
          CFI NoCalls
        THUMB
// 1371 void RCC_ClearFlag(void)
// 1372 {
// 1373   /* Set RMVF bit to clear the reset flags */
// 1374   RCC->CSR |= CSR_RMVF_Set;
RCC_ClearFlag:
        LDR.N    R0,??DataTable29_22  ;; 0x40021024
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x1000000
        STR      R1,[R0, #+0]
// 1375 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock31
// 1376 
// 1377 /**
// 1378   * @brief  Checks whether the specified RCC interrupt has occurred or not.
// 1379   * @param  RCC_IT: specifies the RCC interrupt source to check.
// 1380   *   
// 1381   *   For @b STM32_Connectivity_line_devices, this parameter can be one of the
// 1382   *   following values:
// 1383   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
// 1384   *     @arg RCC_IT_LSERDY: LSE ready interrupt
// 1385   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
// 1386   *     @arg RCC_IT_HSERDY: HSE ready interrupt
// 1387   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
// 1388   *     @arg RCC_IT_PLL2RDY: PLL2 ready interrupt 
// 1389   *     @arg RCC_IT_PLL3RDY: PLL3 ready interrupt                      
// 1390   *     @arg RCC_IT_CSS: Clock Security System interrupt
// 1391   * 
// 1392   *   For @b other_STM32_devices, this parameter can be one of the following values:        
// 1393   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
// 1394   *     @arg RCC_IT_LSERDY: LSE ready interrupt
// 1395   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
// 1396   *     @arg RCC_IT_HSERDY: HSE ready interrupt
// 1397   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
// 1398   *     @arg RCC_IT_CSS: Clock Security System interrupt
// 1399   *   
// 1400   * @retval The new state of RCC_IT (SET or RESET).
// 1401   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function RCC_GetITStatus
          CFI NoCalls
        THUMB
// 1402 ITStatus RCC_GetITStatus(uint8_t RCC_IT)
// 1403 {
// 1404   ITStatus bitstatus = RESET;
// 1405   /* Check the parameters */
// 1406   assert_param(IS_RCC_GET_IT(RCC_IT));
// 1407 
// 1408   /* Check the status of the specified RCC interrupt */
// 1409   if ((RCC->CIR & RCC_IT) != (uint32_t)RESET)
RCC_GetITStatus:
        LDR.N    R2,??DataTable29_23  ;; 0x40021008
        LDR      R2,[R2, #+0]
        MOVS     R1,#+0
        TST      R2,R0
        IT       NE 
        MOVNE    R1,#+1
// 1410   {
// 1411     bitstatus = SET;
// 1412   }
// 1413   else
// 1414   {
// 1415     bitstatus = RESET;
// 1416   }
// 1417 
// 1418   /* Return the RCC_IT status */
// 1419   return  bitstatus;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock32
// 1420 }
// 1421 
// 1422 /**
// 1423   * @brief  Clears the RCC's interrupt pending bits.
// 1424   * @param  RCC_IT: specifies the interrupt pending bit to clear.
// 1425   *   
// 1426   *   For @b STM32_Connectivity_line_devices, this parameter can be any combination
// 1427   *   of the following values:
// 1428   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
// 1429   *     @arg RCC_IT_LSERDY: LSE ready interrupt
// 1430   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
// 1431   *     @arg RCC_IT_HSERDY: HSE ready interrupt
// 1432   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
// 1433   *     @arg RCC_IT_PLL2RDY: PLL2 ready interrupt 
// 1434   *     @arg RCC_IT_PLL3RDY: PLL3 ready interrupt                      
// 1435   *     @arg RCC_IT_CSS: Clock Security System interrupt
// 1436   * 
// 1437   *   For @b other_STM32_devices, this parameter can be any combination of the
// 1438   *   following values:        
// 1439   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
// 1440   *     @arg RCC_IT_LSERDY: LSE ready interrupt
// 1441   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
// 1442   *     @arg RCC_IT_HSERDY: HSE ready interrupt
// 1443   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
// 1444   *   
// 1445   *     @arg RCC_IT_CSS: Clock Security System interrupt
// 1446   * @retval None
// 1447   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function RCC_ClearITPendingBit
          CFI NoCalls
        THUMB
// 1448 void RCC_ClearITPendingBit(uint8_t RCC_IT)
// 1449 {
// 1450   /* Check the parameters */
// 1451   assert_param(IS_RCC_CLEAR_IT(RCC_IT));
// 1452 
// 1453   /* Perform Byte access to RCC_CIR[23:16] bits to clear the selected interrupt
// 1454      pending bits */
// 1455   *(__IO uint8_t *) CIR_BYTE3_ADDRESS = RCC_IT;
RCC_ClearITPendingBit:
        LDR.N    R1,??DataTable29_24  ;; 0x4002100a
        STRB     R0,[R1, #+0]
// 1456 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock33

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_1:
        DC32     0xf8ff0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_2:
        DC32     0xfef6ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_3:
        DC32     0x42420000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_4:
        DC32     0x40021004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_5:
        DC32     0x42420060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_6:
        DC32     0x40021009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_7:
        DC32     0x424200d8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_8:
        DC32     0x40021020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_9:
        DC32     0x42420480

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_10:
        DC32     0x4242043c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_11:
        DC32     0x3d0900

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_12:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_13:
        DC32     APBAHBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_14:
        DC32     0x40021014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_15:
        DC32     0x40021018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_16:
        DC32     0x4002101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_17:
        DC32     0x4002100c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_18:
        DC32     0x40021010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_19:
        DC32     0x42420440

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_20:
        DC32     0x4242004c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_21:
        DC32     0x40021007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_22:
        DC32     0x40021024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_23:
        DC32     0x40021008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_24:
        DC32     0x4002100a

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1457 
// 1458 /**
// 1459   * @}
// 1460   */
// 1461 
// 1462 /**
// 1463   * @}
// 1464   */
// 1465 
// 1466 /**
// 1467   * @}
// 1468   */
// 1469 
// 1470 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
//  20 bytes in section .data
// 714 bytes in section .text
// 
// 714 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
