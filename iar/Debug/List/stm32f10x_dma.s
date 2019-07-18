///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:30
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_dma.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_dma.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_dma.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC DMA_ClearFlag
        PUBLIC DMA_ClearITPendingBit
        PUBLIC DMA_Cmd
        PUBLIC DMA_DeInit
        PUBLIC DMA_GetCurrDataCounter
        PUBLIC DMA_GetFlagStatus
        PUBLIC DMA_GetITStatus
        PUBLIC DMA_ITConfig
        PUBLIC DMA_Init
        PUBLIC DMA_SetCurrDataCounter
        PUBLIC DMA_StructInit
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_dma.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_dma.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the DMA firmware functions.
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
//   23 #include "stm32f10x_dma.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup DMA 
//   31   * @brief DMA driver modules
//   32   * @{
//   33   */ 
//   34 
//   35 /** @defgroup DMA_Private_TypesDefinitions
//   36   * @{
//   37   */ 
//   38 /**
//   39   * @}
//   40   */
//   41 
//   42 /** @defgroup DMA_Private_Defines
//   43   * @{
//   44   */
//   45 
//   46 
//   47 /* DMA1 Channelx interrupt pending bit masks */
//   48 #define DMA1_Channel1_IT_Mask    ((uint32_t)(DMA_ISR_GIF1 | DMA_ISR_TCIF1 | DMA_ISR_HTIF1 | DMA_ISR_TEIF1))
//   49 #define DMA1_Channel2_IT_Mask    ((uint32_t)(DMA_ISR_GIF2 | DMA_ISR_TCIF2 | DMA_ISR_HTIF2 | DMA_ISR_TEIF2))
//   50 #define DMA1_Channel3_IT_Mask    ((uint32_t)(DMA_ISR_GIF3 | DMA_ISR_TCIF3 | DMA_ISR_HTIF3 | DMA_ISR_TEIF3))
//   51 #define DMA1_Channel4_IT_Mask    ((uint32_t)(DMA_ISR_GIF4 | DMA_ISR_TCIF4 | DMA_ISR_HTIF4 | DMA_ISR_TEIF4))
//   52 #define DMA1_Channel5_IT_Mask    ((uint32_t)(DMA_ISR_GIF5 | DMA_ISR_TCIF5 | DMA_ISR_HTIF5 | DMA_ISR_TEIF5))
//   53 #define DMA1_Channel6_IT_Mask    ((uint32_t)(DMA_ISR_GIF6 | DMA_ISR_TCIF6 | DMA_ISR_HTIF6 | DMA_ISR_TEIF6))
//   54 #define DMA1_Channel7_IT_Mask    ((uint32_t)(DMA_ISR_GIF7 | DMA_ISR_TCIF7 | DMA_ISR_HTIF7 | DMA_ISR_TEIF7))
//   55 
//   56 /* DMA2 Channelx interrupt pending bit masks */
//   57 #define DMA2_Channel1_IT_Mask    ((uint32_t)(DMA_ISR_GIF1 | DMA_ISR_TCIF1 | DMA_ISR_HTIF1 | DMA_ISR_TEIF1))
//   58 #define DMA2_Channel2_IT_Mask    ((uint32_t)(DMA_ISR_GIF2 | DMA_ISR_TCIF2 | DMA_ISR_HTIF2 | DMA_ISR_TEIF2))
//   59 #define DMA2_Channel3_IT_Mask    ((uint32_t)(DMA_ISR_GIF3 | DMA_ISR_TCIF3 | DMA_ISR_HTIF3 | DMA_ISR_TEIF3))
//   60 #define DMA2_Channel4_IT_Mask    ((uint32_t)(DMA_ISR_GIF4 | DMA_ISR_TCIF4 | DMA_ISR_HTIF4 | DMA_ISR_TEIF4))
//   61 #define DMA2_Channel5_IT_Mask    ((uint32_t)(DMA_ISR_GIF5 | DMA_ISR_TCIF5 | DMA_ISR_HTIF5 | DMA_ISR_TEIF5))
//   62 
//   63 /* DMA2 FLAG mask */
//   64 #define FLAG_Mask                ((uint32_t)0x10000000)
//   65 
//   66 /* DMA registers Masks */
//   67 #define CCR_CLEAR_Mask           ((uint32_t)0xFFFF800F)
//   68 
//   69 /**
//   70   * @}
//   71   */
//   72 
//   73 /** @defgroup DMA_Private_Macros
//   74   * @{
//   75   */
//   76 
//   77 /**
//   78   * @}
//   79   */
//   80 
//   81 /** @defgroup DMA_Private_Variables
//   82   * @{
//   83   */
//   84 
//   85 /**
//   86   * @}
//   87   */
//   88 
//   89 /** @defgroup DMA_Private_FunctionPrototypes
//   90   * @{
//   91   */
//   92 
//   93 /**
//   94   * @}
//   95   */
//   96 
//   97 /** @defgroup DMA_Private_Functions
//   98   * @{
//   99   */
//  100 
//  101 /**
//  102   * @brief  Deinitializes the DMAy Channelx registers to their default reset
//  103   *         values.
//  104   * @param  DMAy_Channelx: where y can be 1 or 2 to select the DMA and
//  105   *   x can be 1 to 7 for DMA1 and 1 to 5 for DMA2 to select the DMA Channel.
//  106   * @retval None
//  107   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function DMA_DeInit
          CFI NoCalls
        THUMB
//  108 void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx)
//  109 {
//  110   /* Check the parameters */
//  111   assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));
//  112   
//  113   /* Disable the selected DMAy Channelx */
//  114   DMAy_Channelx->CCR &= (uint16_t)(~DMA_CCR1_EN);
DMA_DeInit:
        LDR      R1,[R0, #+0]
        MOVW     R2,#+65534
        ANDS     R1,R2,R1
        STR      R1,[R0, #+0]
//  115   
//  116   /* Reset DMAy Channelx control register */
//  117   DMAy_Channelx->CCR  = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  118   
//  119   /* Reset DMAy Channelx remaining bytes register */
//  120   DMAy_Channelx->CNDTR = 0;
        STR      R1,[R0, #+4]
//  121   
//  122   /* Reset DMAy Channelx peripheral address register */
//  123   DMAy_Channelx->CPAR  = 0;
        STR      R1,[R0, #+8]
//  124   
//  125   /* Reset DMAy Channelx memory address register */
//  126   DMAy_Channelx->CMAR = 0;
        STR      R1,[R0, #+12]
//  127   
//  128   if (DMAy_Channelx == DMA1_Channel1)
        LDR.N    R1,??DataTable4  ;; 0x40020008
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_0
//  129   {
//  130     /* Reset interrupt pending bits for DMA1 Channel1 */
//  131     DMA1->IFCR |= DMA1_Channel1_IT_Mask;
        LDR.N    R0,??DataTable4_1  ;; 0x40020004
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF
        B.N      ??DMA_DeInit_1
//  132   }
//  133   else if (DMAy_Channelx == DMA1_Channel2)
??DMA_DeInit_0:
        LDR.N    R1,??DataTable4_2  ;; 0x4002001c
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_2
//  134   {
//  135     /* Reset interrupt pending bits for DMA1 Channel2 */
//  136     DMA1->IFCR |= DMA1_Channel2_IT_Mask;
        LDR.N    R0,??DataTable4_1  ;; 0x40020004
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF0
        B.N      ??DMA_DeInit_1
//  137   }
//  138   else if (DMAy_Channelx == DMA1_Channel3)
??DMA_DeInit_2:
        LDR.N    R1,??DataTable4_3  ;; 0x40020030
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_3
//  139   {
//  140     /* Reset interrupt pending bits for DMA1 Channel3 */
//  141     DMA1->IFCR |= DMA1_Channel3_IT_Mask;
        LDR.N    R0,??DataTable4_1  ;; 0x40020004
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF00
        B.N      ??DMA_DeInit_1
//  142   }
//  143   else if (DMAy_Channelx == DMA1_Channel4)
??DMA_DeInit_3:
        LDR.N    R1,??DataTable4_4  ;; 0x40020044
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_4
//  144   {
//  145     /* Reset interrupt pending bits for DMA1 Channel4 */
//  146     DMA1->IFCR |= DMA1_Channel4_IT_Mask;
        LDR.N    R0,??DataTable4_1  ;; 0x40020004
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF000
        B.N      ??DMA_DeInit_1
//  147   }
//  148   else if (DMAy_Channelx == DMA1_Channel5)
??DMA_DeInit_4:
        LDR.N    R1,??DataTable4_5  ;; 0x40020058
        CMP      R0,R1
        IT       EQ 
        LDREQ.N  R0,??DataTable4_1  ;; 0x40020004
//  149   {
//  150     /* Reset interrupt pending bits for DMA1 Channel5 */
//  151     DMA1->IFCR |= DMA1_Channel5_IT_Mask;
        BEQ.N    ??DMA_DeInit_5
//  152   }
//  153   else if (DMAy_Channelx == DMA1_Channel6)
        LDR.N    R1,??DataTable4_6  ;; 0x4002006c
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_6
//  154   {
//  155     /* Reset interrupt pending bits for DMA1 Channel6 */
//  156     DMA1->IFCR |= DMA1_Channel6_IT_Mask;
        LDR.N    R0,??DataTable4_1  ;; 0x40020004
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF00000
        B.N      ??DMA_DeInit_1
//  157   }
//  158   else if (DMAy_Channelx == DMA1_Channel7)
??DMA_DeInit_6:
        LDR.N    R1,??DataTable4_7  ;; 0x40020080
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_7
//  159   {
//  160     /* Reset interrupt pending bits for DMA1 Channel7 */
//  161     DMA1->IFCR |= DMA1_Channel7_IT_Mask;
        LDR.N    R0,??DataTable4_1  ;; 0x40020004
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF000000
        B.N      ??DMA_DeInit_1
//  162   }
//  163   else if (DMAy_Channelx == DMA2_Channel1)
??DMA_DeInit_7:
        LDR.N    R1,??DataTable4_8  ;; 0x40020408
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_8
//  164   {
//  165     /* Reset interrupt pending bits for DMA2 Channel1 */
//  166     DMA2->IFCR |= DMA2_Channel1_IT_Mask;
        LDR.N    R0,??DataTable4_9  ;; 0x40020404
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF
        B.N      ??DMA_DeInit_1
//  167   }
//  168   else if (DMAy_Channelx == DMA2_Channel2)
??DMA_DeInit_8:
        LDR.N    R1,??DataTable4_10  ;; 0x4002041c
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_9
//  169   {
//  170     /* Reset interrupt pending bits for DMA2 Channel2 */
//  171     DMA2->IFCR |= DMA2_Channel2_IT_Mask;
        LDR.N    R0,??DataTable4_9  ;; 0x40020404
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF0
        B.N      ??DMA_DeInit_1
//  172   }
//  173   else if (DMAy_Channelx == DMA2_Channel3)
??DMA_DeInit_9:
        LDR.N    R1,??DataTable4_11  ;; 0x40020430
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_10
//  174   {
//  175     /* Reset interrupt pending bits for DMA2 Channel3 */
//  176     DMA2->IFCR |= DMA2_Channel3_IT_Mask;
        LDR.N    R0,??DataTable4_9  ;; 0x40020404
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF00
        B.N      ??DMA_DeInit_1
//  177   }
//  178   else if (DMAy_Channelx == DMA2_Channel4)
??DMA_DeInit_10:
        LDR.N    R1,??DataTable4_12  ;; 0x40020444
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_11
//  179   {
//  180     /* Reset interrupt pending bits for DMA2 Channel4 */
//  181     DMA2->IFCR |= DMA2_Channel4_IT_Mask;
        LDR.N    R0,??DataTable4_9  ;; 0x40020404
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF000
        B.N      ??DMA_DeInit_1
//  182   }
//  183   else
//  184   { 
//  185     if (DMAy_Channelx == DMA2_Channel5)
??DMA_DeInit_11:
        LDR.N    R1,??DataTable4_13  ;; 0x40020458
        CMP      R0,R1
        BNE.N    ??DMA_DeInit_12
//  186     {
//  187       /* Reset interrupt pending bits for DMA2 Channel5 */
//  188       DMA2->IFCR |= DMA2_Channel5_IT_Mask;
        LDR.N    R0,??DataTable4_9  ;; 0x40020404
??DMA_DeInit_5:
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0xF0000
??DMA_DeInit_1:
        STR      R1,[R0, #+0]
//  189     }
//  190   }
//  191 }
??DMA_DeInit_12:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  192 
//  193 /**
//  194   * @brief  Initializes the DMAy Channelx according to the specified
//  195   *         parameters in the DMA_InitStruct.
//  196   * @param  DMAy_Channelx: where y can be 1 or 2 to select the DMA and 
//  197   *   x can be 1 to 7 for DMA1 and 1 to 5 for DMA2 to select the DMA Channel.
//  198   * @param  DMA_InitStruct: pointer to a DMA_InitTypeDef structure that
//  199   *         contains the configuration information for the specified DMA Channel.
//  200   * @retval None
//  201   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function DMA_Init
          CFI NoCalls
        THUMB
//  202 void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct)
//  203 {
//  204   uint32_t tmpreg = 0;
//  205 
//  206   /* Check the parameters */
//  207   assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));
//  208   assert_param(IS_DMA_DIR(DMA_InitStruct->DMA_DIR));
//  209   assert_param(IS_DMA_BUFFER_SIZE(DMA_InitStruct->DMA_BufferSize));
//  210   assert_param(IS_DMA_PERIPHERAL_INC_STATE(DMA_InitStruct->DMA_PeripheralInc));
//  211   assert_param(IS_DMA_MEMORY_INC_STATE(DMA_InitStruct->DMA_MemoryInc));   
//  212   assert_param(IS_DMA_PERIPHERAL_DATA_SIZE(DMA_InitStruct->DMA_PeripheralDataSize));
//  213   assert_param(IS_DMA_MEMORY_DATA_SIZE(DMA_InitStruct->DMA_MemoryDataSize));
//  214   assert_param(IS_DMA_MODE(DMA_InitStruct->DMA_Mode));
//  215   assert_param(IS_DMA_PRIORITY(DMA_InitStruct->DMA_Priority));
//  216   assert_param(IS_DMA_M2M_STATE(DMA_InitStruct->DMA_M2M));
//  217 
//  218 /*--------------------------- DMAy Channelx CCR Configuration -----------------*/
//  219   /* Get the DMAy_Channelx CCR value */
//  220   tmpreg = DMAy_Channelx->CCR;
//  221   /* Clear MEM2MEM, PL, MSIZE, PSIZE, MINC, PINC, CIRC and DIR bits */
//  222   tmpreg &= CCR_CLEAR_Mask;
//  223   /* Configure DMAy Channelx: data transfer, data size, priority level and mode */
//  224   /* Set DIR bit according to DMA_DIR value */
//  225   /* Set CIRC bit according to DMA_Mode value */
//  226   /* Set PINC bit according to DMA_PeripheralInc value */
//  227   /* Set MINC bit according to DMA_MemoryInc value */
//  228   /* Set PSIZE bits according to DMA_PeripheralDataSize value */
//  229   /* Set MSIZE bits according to DMA_MemoryDataSize value */
//  230   /* Set PL bits according to DMA_Priority value */
//  231   /* Set the MEM2MEM bit according to DMA_M2M value */
//  232   tmpreg |= DMA_InitStruct->DMA_DIR | DMA_InitStruct->DMA_Mode |
//  233             DMA_InitStruct->DMA_PeripheralInc | DMA_InitStruct->DMA_MemoryInc |
//  234             DMA_InitStruct->DMA_PeripheralDataSize | DMA_InitStruct->DMA_MemoryDataSize |
//  235             DMA_InitStruct->DMA_Priority | DMA_InitStruct->DMA_M2M;
//  236 
//  237   /* Write to DMAy Channelx CCR */
//  238   DMAy_Channelx->CCR = tmpreg;
DMA_Init:
        LDR      R2,[R0, #+0]
        LDR      R3,[R1, #+8]
        BFC      R2,#+4,#+11
        ORRS     R2,R3,R2
        LDR      R3,[R1, #+32]
        ORRS     R2,R3,R2
        LDR      R3,[R1, #+16]
        ORRS     R2,R3,R2
        LDR      R3,[R1, #+20]
        ORRS     R2,R3,R2
        LDR      R3,[R1, #+24]
        ORRS     R2,R3,R2
        LDR      R3,[R1, #+28]
        ORRS     R2,R3,R2
        LDR      R3,[R1, #+36]
        ORRS     R2,R3,R2
        LDR      R3,[R1, #+40]
        ORRS     R2,R3,R2
        STR      R2,[R0, #+0]
//  239 
//  240 /*--------------------------- DMAy Channelx CNDTR Configuration ---------------*/
//  241   /* Write to DMAy Channelx CNDTR */
//  242   DMAy_Channelx->CNDTR = DMA_InitStruct->DMA_BufferSize;
        LDR      R2,[R1, #+12]
        STR      R2,[R0, #+4]
//  243 
//  244 /*--------------------------- DMAy Channelx CPAR Configuration ----------------*/
//  245   /* Write to DMAy Channelx CPAR */
//  246   DMAy_Channelx->CPAR = DMA_InitStruct->DMA_PeripheralBaseAddr;
        LDR      R2,[R1, #+0]
        STR      R2,[R0, #+8]
//  247 
//  248 /*--------------------------- DMAy Channelx CMAR Configuration ----------------*/
//  249   /* Write to DMAy Channelx CMAR */
//  250   DMAy_Channelx->CMAR = DMA_InitStruct->DMA_MemoryBaseAddr;
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+12]
//  251 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  252 
//  253 /**
//  254   * @brief  Fills each DMA_InitStruct member with its default value.
//  255   * @param  DMA_InitStruct : pointer to a DMA_InitTypeDef structure which will
//  256   *         be initialized.
//  257   * @retval None
//  258   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function DMA_StructInit
          CFI NoCalls
        THUMB
//  259 void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct)
//  260 {
//  261 /*-------------- Reset DMA init structure parameters values ------------------*/
//  262   /* Initialize the DMA_PeripheralBaseAddr member */
//  263   DMA_InitStruct->DMA_PeripheralBaseAddr = 0;
DMA_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  264   /* Initialize the DMA_MemoryBaseAddr member */
//  265   DMA_InitStruct->DMA_MemoryBaseAddr = 0;
        STR      R1,[R0, #+4]
//  266   /* Initialize the DMA_DIR member */
//  267   DMA_InitStruct->DMA_DIR = DMA_DIR_PeripheralSRC;
        STR      R1,[R0, #+8]
//  268   /* Initialize the DMA_BufferSize member */
//  269   DMA_InitStruct->DMA_BufferSize = 0;
        STR      R1,[R0, #+12]
//  270   /* Initialize the DMA_PeripheralInc member */
//  271   DMA_InitStruct->DMA_PeripheralInc = DMA_PeripheralInc_Disable;
        STR      R1,[R0, #+16]
//  272   /* Initialize the DMA_MemoryInc member */
//  273   DMA_InitStruct->DMA_MemoryInc = DMA_MemoryInc_Disable;
        STR      R1,[R0, #+20]
//  274   /* Initialize the DMA_PeripheralDataSize member */
//  275   DMA_InitStruct->DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
        STR      R1,[R0, #+24]
//  276   /* Initialize the DMA_MemoryDataSize member */
//  277   DMA_InitStruct->DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
        STR      R1,[R0, #+28]
//  278   /* Initialize the DMA_Mode member */
//  279   DMA_InitStruct->DMA_Mode = DMA_Mode_Normal;
        STR      R1,[R0, #+32]
//  280   /* Initialize the DMA_Priority member */
//  281   DMA_InitStruct->DMA_Priority = DMA_Priority_Low;
        STR      R1,[R0, #+36]
//  282   /* Initialize the DMA_M2M member */
//  283   DMA_InitStruct->DMA_M2M = DMA_M2M_Disable;
        STR      R1,[R0, #+40]
//  284 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  285 
//  286 /**
//  287   * @brief  Enables or disables the specified DMAy Channelx.
//  288   * @param  DMAy_Channelx: where y can be 1 or 2 to select the DMA and 
//  289   *   x can be 1 to 7 for DMA1 and 1 to 5 for DMA2 to select the DMA Channel.
//  290   * @param  NewState: new state of the DMAy Channelx. 
//  291   *   This parameter can be: ENABLE or DISABLE.
//  292   * @retval None
//  293   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function DMA_Cmd
          CFI NoCalls
        THUMB
//  294 void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState)
//  295 {
//  296   /* Check the parameters */
//  297   assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));
//  298   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  299 
//  300   if (NewState != DISABLE)
DMA_Cmd:
        CMP      R1,#+0
        LDR      R1,[R0, #+0]
        ITEE     NE 
        ORRNE    R1,R1,#0x1
        MOVWEQ   R2,#+65534
        ANDEQ    R1,R2,R1
//  301   {
//  302     /* Enable the selected DMAy Channelx */
//  303     DMAy_Channelx->CCR |= DMA_CCR1_EN;
//  304   }
//  305   else
//  306   {
//  307     /* Disable the selected DMAy Channelx */
//  308     DMAy_Channelx->CCR &= (uint16_t)(~DMA_CCR1_EN);
        STR      R1,[R0, #+0]
//  309   }
//  310 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  311 
//  312 /**
//  313   * @brief  Enables or disables the specified DMAy Channelx interrupts.
//  314   * @param  DMAy_Channelx: where y can be 1 or 2 to select the DMA and 
//  315   *   x can be 1 to 7 for DMA1 and 1 to 5 for DMA2 to select the DMA Channel.
//  316   * @param  DMA_IT: specifies the DMA interrupts sources to be enabled
//  317   *   or disabled. 
//  318   *   This parameter can be any combination of the following values:
//  319   *     @arg DMA_IT_TC:  Transfer complete interrupt mask
//  320   *     @arg DMA_IT_HT:  Half transfer interrupt mask
//  321   *     @arg DMA_IT_TE:  Transfer error interrupt mask
//  322   * @param  NewState: new state of the specified DMA interrupts.
//  323   *   This parameter can be: ENABLE or DISABLE.
//  324   * @retval None
//  325   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function DMA_ITConfig
          CFI NoCalls
        THUMB
//  326 void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState)
//  327 {
//  328   /* Check the parameters */
//  329   assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));
//  330   assert_param(IS_DMA_CONFIG_IT(DMA_IT));
//  331   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  332   if (NewState != DISABLE)
DMA_ITConfig:
        CMP      R2,#+0
        LDR      R2,[R0, #+0]
        ITE      NE 
        ORRNE    R1,R1,R2
        BICEQ    R1,R2,R1
//  333   {
//  334     /* Enable the selected DMA interrupts */
//  335     DMAy_Channelx->CCR |= DMA_IT;
//  336   }
//  337   else
//  338   {
//  339     /* Disable the selected DMA interrupts */
//  340     DMAy_Channelx->CCR &= ~DMA_IT;
        STR      R1,[R0, #+0]
//  341   }
//  342 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  343 
//  344 /**
//  345   * @brief  Sets the number of data units in the current DMAy Channelx transfer.
//  346   * @param  DMAy_Channelx: where y can be 1 or 2 to select the DMA and 
//  347   *         x can be 1 to 7 for DMA1 and 1 to 5 for DMA2 to select the DMA Channel.
//  348   * @param  DataNumber: The number of data units in the current DMAy Channelx
//  349   *         transfer.   
//  350   * @note   This function can only be used when the DMAy_Channelx is disabled.                 
//  351   * @retval None.
//  352   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function DMA_SetCurrDataCounter
          CFI NoCalls
        THUMB
//  353 void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx, uint16_t DataNumber)
//  354 {
//  355   /* Check the parameters */
//  356   assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));
//  357   
//  358 /*--------------------------- DMAy Channelx CNDTR Configuration ---------------*/
//  359   /* Write to DMAy Channelx CNDTR */
//  360   DMAy_Channelx->CNDTR = DataNumber;  
DMA_SetCurrDataCounter:
        STR      R1,[R0, #+4]
//  361 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  362 
//  363 /**
//  364   * @brief  Returns the number of remaining data units in the current
//  365   *         DMAy Channelx transfer.
//  366   * @param  DMAy_Channelx: where y can be 1 or 2 to select the DMA and 
//  367   *   x can be 1 to 7 for DMA1 and 1 to 5 for DMA2 to select the DMA Channel.
//  368   * @retval The number of remaining data units in the current DMAy Channelx
//  369   *         transfer.
//  370   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function DMA_GetCurrDataCounter
          CFI NoCalls
        THUMB
//  371 uint16_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx)
//  372 {
//  373   /* Check the parameters */
//  374   assert_param(IS_DMA_ALL_PERIPH(DMAy_Channelx));
//  375   /* Return the number of remaining data units for DMAy Channelx */
//  376   return ((uint16_t)(DMAy_Channelx->CNDTR));
DMA_GetCurrDataCounter:
        LDR      R0,[R0, #+4]
        UXTH     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  377 }
//  378 
//  379 /**
//  380   * @brief  Checks whether the specified DMAy Channelx flag is set or not.
//  381   * @param  DMAy_FLAG: specifies the flag to check.
//  382   *   This parameter can be one of the following values:
//  383   *     @arg DMA1_FLAG_GL1: DMA1 Channel1 global flag.
//  384   *     @arg DMA1_FLAG_TC1: DMA1 Channel1 transfer complete flag.
//  385   *     @arg DMA1_FLAG_HT1: DMA1 Channel1 half transfer flag.
//  386   *     @arg DMA1_FLAG_TE1: DMA1 Channel1 transfer error flag.
//  387   *     @arg DMA1_FLAG_GL2: DMA1 Channel2 global flag.
//  388   *     @arg DMA1_FLAG_TC2: DMA1 Channel2 transfer complete flag.
//  389   *     @arg DMA1_FLAG_HT2: DMA1 Channel2 half transfer flag.
//  390   *     @arg DMA1_FLAG_TE2: DMA1 Channel2 transfer error flag.
//  391   *     @arg DMA1_FLAG_GL3: DMA1 Channel3 global flag.
//  392   *     @arg DMA1_FLAG_TC3: DMA1 Channel3 transfer complete flag.
//  393   *     @arg DMA1_FLAG_HT3: DMA1 Channel3 half transfer flag.
//  394   *     @arg DMA1_FLAG_TE3: DMA1 Channel3 transfer error flag.
//  395   *     @arg DMA1_FLAG_GL4: DMA1 Channel4 global flag.
//  396   *     @arg DMA1_FLAG_TC4: DMA1 Channel4 transfer complete flag.
//  397   *     @arg DMA1_FLAG_HT4: DMA1 Channel4 half transfer flag.
//  398   *     @arg DMA1_FLAG_TE4: DMA1 Channel4 transfer error flag.
//  399   *     @arg DMA1_FLAG_GL5: DMA1 Channel5 global flag.
//  400   *     @arg DMA1_FLAG_TC5: DMA1 Channel5 transfer complete flag.
//  401   *     @arg DMA1_FLAG_HT5: DMA1 Channel5 half transfer flag.
//  402   *     @arg DMA1_FLAG_TE5: DMA1 Channel5 transfer error flag.
//  403   *     @arg DMA1_FLAG_GL6: DMA1 Channel6 global flag.
//  404   *     @arg DMA1_FLAG_TC6: DMA1 Channel6 transfer complete flag.
//  405   *     @arg DMA1_FLAG_HT6: DMA1 Channel6 half transfer flag.
//  406   *     @arg DMA1_FLAG_TE6: DMA1 Channel6 transfer error flag.
//  407   *     @arg DMA1_FLAG_GL7: DMA1 Channel7 global flag.
//  408   *     @arg DMA1_FLAG_TC7: DMA1 Channel7 transfer complete flag.
//  409   *     @arg DMA1_FLAG_HT7: DMA1 Channel7 half transfer flag.
//  410   *     @arg DMA1_FLAG_TE7: DMA1 Channel7 transfer error flag.
//  411   *     @arg DMA2_FLAG_GL1: DMA2 Channel1 global flag.
//  412   *     @arg DMA2_FLAG_TC1: DMA2 Channel1 transfer complete flag.
//  413   *     @arg DMA2_FLAG_HT1: DMA2 Channel1 half transfer flag.
//  414   *     @arg DMA2_FLAG_TE1: DMA2 Channel1 transfer error flag.
//  415   *     @arg DMA2_FLAG_GL2: DMA2 Channel2 global flag.
//  416   *     @arg DMA2_FLAG_TC2: DMA2 Channel2 transfer complete flag.
//  417   *     @arg DMA2_FLAG_HT2: DMA2 Channel2 half transfer flag.
//  418   *     @arg DMA2_FLAG_TE2: DMA2 Channel2 transfer error flag.
//  419   *     @arg DMA2_FLAG_GL3: DMA2 Channel3 global flag.
//  420   *     @arg DMA2_FLAG_TC3: DMA2 Channel3 transfer complete flag.
//  421   *     @arg DMA2_FLAG_HT3: DMA2 Channel3 half transfer flag.
//  422   *     @arg DMA2_FLAG_TE3: DMA2 Channel3 transfer error flag.
//  423   *     @arg DMA2_FLAG_GL4: DMA2 Channel4 global flag.
//  424   *     @arg DMA2_FLAG_TC4: DMA2 Channel4 transfer complete flag.
//  425   *     @arg DMA2_FLAG_HT4: DMA2 Channel4 half transfer flag.
//  426   *     @arg DMA2_FLAG_TE4: DMA2 Channel4 transfer error flag.
//  427   *     @arg DMA2_FLAG_GL5: DMA2 Channel5 global flag.
//  428   *     @arg DMA2_FLAG_TC5: DMA2 Channel5 transfer complete flag.
//  429   *     @arg DMA2_FLAG_HT5: DMA2 Channel5 half transfer flag.
//  430   *     @arg DMA2_FLAG_TE5: DMA2 Channel5 transfer error flag.
//  431   * @retval The new state of DMAy_FLAG (SET or RESET).
//  432   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function DMA_GetFlagStatus
          CFI NoCalls
        THUMB
//  433 FlagStatus DMA_GetFlagStatus(uint32_t DMAy_FLAG)
//  434 {
//  435   FlagStatus bitstatus = RESET;
DMA_GetFlagStatus:
        MOVS     R1,#+0
//  436   uint32_t tmpreg = 0;
//  437   
//  438   /* Check the parameters */
//  439   assert_param(IS_DMA_GET_FLAG(DMAy_FLAG));
//  440 
//  441   /* Calculate the used DMAy */
//  442   if ((DMAy_FLAG & FLAG_Mask) != (uint32_t)RESET)
        LSLS     R2,R0,#+3
        ITE      MI 
        LDRMI.N  R2,??DataTable4_14  ;; 0x40020400
        LDRPL.N  R2,??DataTable4_15  ;; 0x40020000
//  443   {
//  444     /* Get DMA2 ISR register value */
//  445     tmpreg = DMA2->ISR ;
//  446   }
//  447   else
//  448   {
//  449     /* Get DMA1 ISR register value */
//  450     tmpreg = DMA1->ISR ;
        LDR      R2,[R2, #+0]
//  451   }
//  452 
//  453   /* Check the status of the specified DMAy flag */
//  454   if ((tmpreg & DMAy_FLAG) != (uint32_t)RESET)
        TST      R2,R0
        IT       NE 
        MOVNE    R1,#+1
//  455   {
//  456     /* DMAy_FLAG is set */
//  457     bitstatus = SET;
//  458   }
//  459   else
//  460   {
//  461     /* DMAy_FLAG is reset */
//  462     bitstatus = RESET;
//  463   }
//  464   
//  465   /* Return the DMAy_FLAG status */
//  466   return  bitstatus;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  467 }
//  468 
//  469 /**
//  470   * @brief  Clears the DMAy Channelx's pending flags.
//  471   * @param  DMAy_FLAG: specifies the flag to clear.
//  472   *   This parameter can be any combination (for the same DMA) of the following values:
//  473   *     @arg DMA1_FLAG_GL1: DMA1 Channel1 global flag.
//  474   *     @arg DMA1_FLAG_TC1: DMA1 Channel1 transfer complete flag.
//  475   *     @arg DMA1_FLAG_HT1: DMA1 Channel1 half transfer flag.
//  476   *     @arg DMA1_FLAG_TE1: DMA1 Channel1 transfer error flag.
//  477   *     @arg DMA1_FLAG_GL2: DMA1 Channel2 global flag.
//  478   *     @arg DMA1_FLAG_TC2: DMA1 Channel2 transfer complete flag.
//  479   *     @arg DMA1_FLAG_HT2: DMA1 Channel2 half transfer flag.
//  480   *     @arg DMA1_FLAG_TE2: DMA1 Channel2 transfer error flag.
//  481   *     @arg DMA1_FLAG_GL3: DMA1 Channel3 global flag.
//  482   *     @arg DMA1_FLAG_TC3: DMA1 Channel3 transfer complete flag.
//  483   *     @arg DMA1_FLAG_HT3: DMA1 Channel3 half transfer flag.
//  484   *     @arg DMA1_FLAG_TE3: DMA1 Channel3 transfer error flag.
//  485   *     @arg DMA1_FLAG_GL4: DMA1 Channel4 global flag.
//  486   *     @arg DMA1_FLAG_TC4: DMA1 Channel4 transfer complete flag.
//  487   *     @arg DMA1_FLAG_HT4: DMA1 Channel4 half transfer flag.
//  488   *     @arg DMA1_FLAG_TE4: DMA1 Channel4 transfer error flag.
//  489   *     @arg DMA1_FLAG_GL5: DMA1 Channel5 global flag.
//  490   *     @arg DMA1_FLAG_TC5: DMA1 Channel5 transfer complete flag.
//  491   *     @arg DMA1_FLAG_HT5: DMA1 Channel5 half transfer flag.
//  492   *     @arg DMA1_FLAG_TE5: DMA1 Channel5 transfer error flag.
//  493   *     @arg DMA1_FLAG_GL6: DMA1 Channel6 global flag.
//  494   *     @arg DMA1_FLAG_TC6: DMA1 Channel6 transfer complete flag.
//  495   *     @arg DMA1_FLAG_HT6: DMA1 Channel6 half transfer flag.
//  496   *     @arg DMA1_FLAG_TE6: DMA1 Channel6 transfer error flag.
//  497   *     @arg DMA1_FLAG_GL7: DMA1 Channel7 global flag.
//  498   *     @arg DMA1_FLAG_TC7: DMA1 Channel7 transfer complete flag.
//  499   *     @arg DMA1_FLAG_HT7: DMA1 Channel7 half transfer flag.
//  500   *     @arg DMA1_FLAG_TE7: DMA1 Channel7 transfer error flag.
//  501   *     @arg DMA2_FLAG_GL1: DMA2 Channel1 global flag.
//  502   *     @arg DMA2_FLAG_TC1: DMA2 Channel1 transfer complete flag.
//  503   *     @arg DMA2_FLAG_HT1: DMA2 Channel1 half transfer flag.
//  504   *     @arg DMA2_FLAG_TE1: DMA2 Channel1 transfer error flag.
//  505   *     @arg DMA2_FLAG_GL2: DMA2 Channel2 global flag.
//  506   *     @arg DMA2_FLAG_TC2: DMA2 Channel2 transfer complete flag.
//  507   *     @arg DMA2_FLAG_HT2: DMA2 Channel2 half transfer flag.
//  508   *     @arg DMA2_FLAG_TE2: DMA2 Channel2 transfer error flag.
//  509   *     @arg DMA2_FLAG_GL3: DMA2 Channel3 global flag.
//  510   *     @arg DMA2_FLAG_TC3: DMA2 Channel3 transfer complete flag.
//  511   *     @arg DMA2_FLAG_HT3: DMA2 Channel3 half transfer flag.
//  512   *     @arg DMA2_FLAG_TE3: DMA2 Channel3 transfer error flag.
//  513   *     @arg DMA2_FLAG_GL4: DMA2 Channel4 global flag.
//  514   *     @arg DMA2_FLAG_TC4: DMA2 Channel4 transfer complete flag.
//  515   *     @arg DMA2_FLAG_HT4: DMA2 Channel4 half transfer flag.
//  516   *     @arg DMA2_FLAG_TE4: DMA2 Channel4 transfer error flag.
//  517   *     @arg DMA2_FLAG_GL5: DMA2 Channel5 global flag.
//  518   *     @arg DMA2_FLAG_TC5: DMA2 Channel5 transfer complete flag.
//  519   *     @arg DMA2_FLAG_HT5: DMA2 Channel5 half transfer flag.
//  520   *     @arg DMA2_FLAG_TE5: DMA2 Channel5 transfer error flag.
//  521   * @retval None
//  522   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function DMA_ClearFlag
          CFI NoCalls
        THUMB
//  523 void DMA_ClearFlag(uint32_t DMAy_FLAG)
//  524 {
//  525   /* Check the parameters */
//  526   assert_param(IS_DMA_CLEAR_FLAG(DMAy_FLAG));
//  527 
//  528   /* Calculate the used DMAy */
//  529   if ((DMAy_FLAG & FLAG_Mask) != (uint32_t)RESET)
DMA_ClearFlag:
        LSLS     R1,R0,#+3
        ITE      MI 
        LDRMI.N  R1,??DataTable4_9  ;; 0x40020404
        LDRPL.N  R1,??DataTable4_1  ;; 0x40020004
//  530   {
//  531     /* Clear the selected DMAy flags */
//  532     DMA2->IFCR = DMAy_FLAG;
//  533   }
//  534   else
//  535   {
//  536     /* Clear the selected DMAy flags */
//  537     DMA1->IFCR = DMAy_FLAG;
        STR      R0,[R1, #+0]
//  538   }
//  539 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  540 
//  541 /**
//  542   * @brief  Checks whether the specified DMAy Channelx interrupt has occurred or not.
//  543   * @param  DMAy_IT: specifies the DMAy interrupt source to check. 
//  544   *   This parameter can be one of the following values:
//  545   *     @arg DMA1_IT_GL1: DMA1 Channel1 global interrupt.
//  546   *     @arg DMA1_IT_TC1: DMA1 Channel1 transfer complete interrupt.
//  547   *     @arg DMA1_IT_HT1: DMA1 Channel1 half transfer interrupt.
//  548   *     @arg DMA1_IT_TE1: DMA1 Channel1 transfer error interrupt.
//  549   *     @arg DMA1_IT_GL2: DMA1 Channel2 global interrupt.
//  550   *     @arg DMA1_IT_TC2: DMA1 Channel2 transfer complete interrupt.
//  551   *     @arg DMA1_IT_HT2: DMA1 Channel2 half transfer interrupt.
//  552   *     @arg DMA1_IT_TE2: DMA1 Channel2 transfer error interrupt.
//  553   *     @arg DMA1_IT_GL3: DMA1 Channel3 global interrupt.
//  554   *     @arg DMA1_IT_TC3: DMA1 Channel3 transfer complete interrupt.
//  555   *     @arg DMA1_IT_HT3: DMA1 Channel3 half transfer interrupt.
//  556   *     @arg DMA1_IT_TE3: DMA1 Channel3 transfer error interrupt.
//  557   *     @arg DMA1_IT_GL4: DMA1 Channel4 global interrupt.
//  558   *     @arg DMA1_IT_TC4: DMA1 Channel4 transfer complete interrupt.
//  559   *     @arg DMA1_IT_HT4: DMA1 Channel4 half transfer interrupt.
//  560   *     @arg DMA1_IT_TE4: DMA1 Channel4 transfer error interrupt.
//  561   *     @arg DMA1_IT_GL5: DMA1 Channel5 global interrupt.
//  562   *     @arg DMA1_IT_TC5: DMA1 Channel5 transfer complete interrupt.
//  563   *     @arg DMA1_IT_HT5: DMA1 Channel5 half transfer interrupt.
//  564   *     @arg DMA1_IT_TE5: DMA1 Channel5 transfer error interrupt.
//  565   *     @arg DMA1_IT_GL6: DMA1 Channel6 global interrupt.
//  566   *     @arg DMA1_IT_TC6: DMA1 Channel6 transfer complete interrupt.
//  567   *     @arg DMA1_IT_HT6: DMA1 Channel6 half transfer interrupt.
//  568   *     @arg DMA1_IT_TE6: DMA1 Channel6 transfer error interrupt.
//  569   *     @arg DMA1_IT_GL7: DMA1 Channel7 global interrupt.
//  570   *     @arg DMA1_IT_TC7: DMA1 Channel7 transfer complete interrupt.
//  571   *     @arg DMA1_IT_HT7: DMA1 Channel7 half transfer interrupt.
//  572   *     @arg DMA1_IT_TE7: DMA1 Channel7 transfer error interrupt.
//  573   *     @arg DMA2_IT_GL1: DMA2 Channel1 global interrupt.
//  574   *     @arg DMA2_IT_TC1: DMA2 Channel1 transfer complete interrupt.
//  575   *     @arg DMA2_IT_HT1: DMA2 Channel1 half transfer interrupt.
//  576   *     @arg DMA2_IT_TE1: DMA2 Channel1 transfer error interrupt.
//  577   *     @arg DMA2_IT_GL2: DMA2 Channel2 global interrupt.
//  578   *     @arg DMA2_IT_TC2: DMA2 Channel2 transfer complete interrupt.
//  579   *     @arg DMA2_IT_HT2: DMA2 Channel2 half transfer interrupt.
//  580   *     @arg DMA2_IT_TE2: DMA2 Channel2 transfer error interrupt.
//  581   *     @arg DMA2_IT_GL3: DMA2 Channel3 global interrupt.
//  582   *     @arg DMA2_IT_TC3: DMA2 Channel3 transfer complete interrupt.
//  583   *     @arg DMA2_IT_HT3: DMA2 Channel3 half transfer interrupt.
//  584   *     @arg DMA2_IT_TE3: DMA2 Channel3 transfer error interrupt.
//  585   *     @arg DMA2_IT_GL4: DMA2 Channel4 global interrupt.
//  586   *     @arg DMA2_IT_TC4: DMA2 Channel4 transfer complete interrupt.
//  587   *     @arg DMA2_IT_HT4: DMA2 Channel4 half transfer interrupt.
//  588   *     @arg DMA2_IT_TE4: DMA2 Channel4 transfer error interrupt.
//  589   *     @arg DMA2_IT_GL5: DMA2 Channel5 global interrupt.
//  590   *     @arg DMA2_IT_TC5: DMA2 Channel5 transfer complete interrupt.
//  591   *     @arg DMA2_IT_HT5: DMA2 Channel5 half transfer interrupt.
//  592   *     @arg DMA2_IT_TE5: DMA2 Channel5 transfer error interrupt.
//  593   * @retval The new state of DMAy_IT (SET or RESET).
//  594   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function DMA_GetITStatus
          CFI NoCalls
        THUMB
//  595 ITStatus DMA_GetITStatus(uint32_t DMAy_IT)
//  596 {
//  597   ITStatus bitstatus = RESET;
DMA_GetITStatus:
        MOVS     R1,#+0
//  598   uint32_t tmpreg = 0;
//  599 
//  600   /* Check the parameters */
//  601   assert_param(IS_DMA_GET_IT(DMAy_IT));
//  602 
//  603   /* Calculate the used DMA */
//  604   if ((DMAy_IT & FLAG_Mask) != (uint32_t)RESET)
        LSLS     R2,R0,#+3
        ITE      MI 
        LDRMI.N  R2,??DataTable4_14  ;; 0x40020400
        LDRPL.N  R2,??DataTable4_15  ;; 0x40020000
//  605   {
//  606     /* Get DMA2 ISR register value */
//  607     tmpreg = DMA2->ISR;
//  608   }
//  609   else
//  610   {
//  611     /* Get DMA1 ISR register value */
//  612     tmpreg = DMA1->ISR;
        LDR      R2,[R2, #+0]
//  613   }
//  614 
//  615   /* Check the status of the specified DMAy interrupt */
//  616   if ((tmpreg & DMAy_IT) != (uint32_t)RESET)
        TST      R2,R0
        IT       NE 
        MOVNE    R1,#+1
//  617   {
//  618     /* DMAy_IT is set */
//  619     bitstatus = SET;
//  620   }
//  621   else
//  622   {
//  623     /* DMAy_IT is reset */
//  624     bitstatus = RESET;
//  625   }
//  626   /* Return the DMA_IT status */
//  627   return  bitstatus;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  628 }
//  629 
//  630 /**
//  631   * @brief  Clears the DMAy Channelx's interrupt pending bits.
//  632   * @param  DMAy_IT: specifies the DMAy interrupt pending bit to clear.
//  633   *   This parameter can be any combination (for the same DMA) of the following values:
//  634   *     @arg DMA1_IT_GL1: DMA1 Channel1 global interrupt.
//  635   *     @arg DMA1_IT_TC1: DMA1 Channel1 transfer complete interrupt.
//  636   *     @arg DMA1_IT_HT1: DMA1 Channel1 half transfer interrupt.
//  637   *     @arg DMA1_IT_TE1: DMA1 Channel1 transfer error interrupt.
//  638   *     @arg DMA1_IT_GL2: DMA1 Channel2 global interrupt.
//  639   *     @arg DMA1_IT_TC2: DMA1 Channel2 transfer complete interrupt.
//  640   *     @arg DMA1_IT_HT2: DMA1 Channel2 half transfer interrupt.
//  641   *     @arg DMA1_IT_TE2: DMA1 Channel2 transfer error interrupt.
//  642   *     @arg DMA1_IT_GL3: DMA1 Channel3 global interrupt.
//  643   *     @arg DMA1_IT_TC3: DMA1 Channel3 transfer complete interrupt.
//  644   *     @arg DMA1_IT_HT3: DMA1 Channel3 half transfer interrupt.
//  645   *     @arg DMA1_IT_TE3: DMA1 Channel3 transfer error interrupt.
//  646   *     @arg DMA1_IT_GL4: DMA1 Channel4 global interrupt.
//  647   *     @arg DMA1_IT_TC4: DMA1 Channel4 transfer complete interrupt.
//  648   *     @arg DMA1_IT_HT4: DMA1 Channel4 half transfer interrupt.
//  649   *     @arg DMA1_IT_TE4: DMA1 Channel4 transfer error interrupt.
//  650   *     @arg DMA1_IT_GL5: DMA1 Channel5 global interrupt.
//  651   *     @arg DMA1_IT_TC5: DMA1 Channel5 transfer complete interrupt.
//  652   *     @arg DMA1_IT_HT5: DMA1 Channel5 half transfer interrupt.
//  653   *     @arg DMA1_IT_TE5: DMA1 Channel5 transfer error interrupt.
//  654   *     @arg DMA1_IT_GL6: DMA1 Channel6 global interrupt.
//  655   *     @arg DMA1_IT_TC6: DMA1 Channel6 transfer complete interrupt.
//  656   *     @arg DMA1_IT_HT6: DMA1 Channel6 half transfer interrupt.
//  657   *     @arg DMA1_IT_TE6: DMA1 Channel6 transfer error interrupt.
//  658   *     @arg DMA1_IT_GL7: DMA1 Channel7 global interrupt.
//  659   *     @arg DMA1_IT_TC7: DMA1 Channel7 transfer complete interrupt.
//  660   *     @arg DMA1_IT_HT7: DMA1 Channel7 half transfer interrupt.
//  661   *     @arg DMA1_IT_TE7: DMA1 Channel7 transfer error interrupt.
//  662   *     @arg DMA2_IT_GL1: DMA2 Channel1 global interrupt.
//  663   *     @arg DMA2_IT_TC1: DMA2 Channel1 transfer complete interrupt.
//  664   *     @arg DMA2_IT_HT1: DMA2 Channel1 half transfer interrupt.
//  665   *     @arg DMA2_IT_TE1: DMA2 Channel1 transfer error interrupt.
//  666   *     @arg DMA2_IT_GL2: DMA2 Channel2 global interrupt.
//  667   *     @arg DMA2_IT_TC2: DMA2 Channel2 transfer complete interrupt.
//  668   *     @arg DMA2_IT_HT2: DMA2 Channel2 half transfer interrupt.
//  669   *     @arg DMA2_IT_TE2: DMA2 Channel2 transfer error interrupt.
//  670   *     @arg DMA2_IT_GL3: DMA2 Channel3 global interrupt.
//  671   *     @arg DMA2_IT_TC3: DMA2 Channel3 transfer complete interrupt.
//  672   *     @arg DMA2_IT_HT3: DMA2 Channel3 half transfer interrupt.
//  673   *     @arg DMA2_IT_TE3: DMA2 Channel3 transfer error interrupt.
//  674   *     @arg DMA2_IT_GL4: DMA2 Channel4 global interrupt.
//  675   *     @arg DMA2_IT_TC4: DMA2 Channel4 transfer complete interrupt.
//  676   *     @arg DMA2_IT_HT4: DMA2 Channel4 half transfer interrupt.
//  677   *     @arg DMA2_IT_TE4: DMA2 Channel4 transfer error interrupt.
//  678   *     @arg DMA2_IT_GL5: DMA2 Channel5 global interrupt.
//  679   *     @arg DMA2_IT_TC5: DMA2 Channel5 transfer complete interrupt.
//  680   *     @arg DMA2_IT_HT5: DMA2 Channel5 half transfer interrupt.
//  681   *     @arg DMA2_IT_TE5: DMA2 Channel5 transfer error interrupt.
//  682   * @retval None
//  683   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function DMA_ClearITPendingBit
          CFI NoCalls
        THUMB
//  684 void DMA_ClearITPendingBit(uint32_t DMAy_IT)
//  685 {
//  686   /* Check the parameters */
//  687   assert_param(IS_DMA_CLEAR_IT(DMAy_IT));
//  688 
//  689   /* Calculate the used DMAy */
//  690   if ((DMAy_IT & FLAG_Mask) != (uint32_t)RESET)
DMA_ClearITPendingBit:
        LSLS     R1,R0,#+3
        ITE      MI 
        LDRMI.N  R1,??DataTable4_9  ;; 0x40020404
        LDRPL.N  R1,??DataTable4_1  ;; 0x40020004
//  691   {
//  692     /* Clear the selected DMAy interrupt pending bits */
//  693     DMA2->IFCR = DMAy_IT;
//  694   }
//  695   else
//  696   {
//  697     /* Clear the selected DMAy interrupt pending bits */
//  698     DMA1->IFCR = DMAy_IT;
        STR      R0,[R1, #+0]
//  699   }
//  700 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x4002001c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40020030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40020044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40020058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x4002006c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x40020080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x40020408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x40020404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x4002041c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x40020430

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x40020444

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x40020458

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x40020400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x40020000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  701 
//  702 /**
//  703   * @}
//  704   */
//  705 
//  706 /**
//  707   * @}
//  708   */
//  709 
//  710 /**
//  711   * @}
//  712   */
//  713 
//  714 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 466 bytes in section .text
// 
// 466 bytes of CODE memory
//
//Errors: none
//Warnings: none
