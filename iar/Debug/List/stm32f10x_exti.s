///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:30
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_exti.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_exti.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_exti.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC EXTI_ClearFlag
        PUBLIC EXTI_ClearITPendingBit
        PUBLIC EXTI_DeInit
        PUBLIC EXTI_GenerateSWInterrupt
        PUBLIC EXTI_GetFlagStatus
        PUBLIC EXTI_GetITStatus
        PUBLIC EXTI_Init
        PUBLIC EXTI_StructInit
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_exti.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_exti.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the EXTI firmware functions.
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
//   23 #include "stm32f10x_exti.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup EXTI 
//   30   * @brief EXTI driver modules
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup EXTI_Private_TypesDefinitions
//   35   * @{
//   36   */
//   37 
//   38 /**
//   39   * @}
//   40   */
//   41 
//   42 /** @defgroup EXTI_Private_Defines
//   43   * @{
//   44   */
//   45 
//   46 #define EXTI_LINENONE    ((uint32_t)0x00000)  /* No interrupt selected */
//   47 
//   48 /**
//   49   * @}
//   50   */
//   51 
//   52 /** @defgroup EXTI_Private_Macros
//   53   * @{
//   54   */
//   55 
//   56 /**
//   57   * @}
//   58   */
//   59 
//   60 /** @defgroup EXTI_Private_Variables
//   61   * @{
//   62   */
//   63 
//   64 /**
//   65   * @}
//   66   */
//   67 
//   68 /** @defgroup EXTI_Private_FunctionPrototypes
//   69   * @{
//   70   */
//   71 
//   72 /**
//   73   * @}
//   74   */
//   75 
//   76 /** @defgroup EXTI_Private_Functions
//   77   * @{
//   78   */
//   79 
//   80 /**
//   81   * @brief  Deinitializes the EXTI peripheral registers to their default reset values.
//   82   * @param  None
//   83   * @retval None
//   84   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function EXTI_DeInit
          CFI NoCalls
        THUMB
//   85 void EXTI_DeInit(void)
//   86 {
//   87   EXTI->IMR = 0x00000000;
EXTI_DeInit:
        LDR.N    R0,??DataTable5  ;; 0x40010400
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   88   EXTI->EMR = 0x00000000;
        STR      R1,[R0, #+4]
//   89   EXTI->RTSR = 0x00000000; 
        STR      R1,[R0, #+8]
//   90   EXTI->FTSR = 0x00000000; 
        STR      R1,[R0, #+12]
//   91   EXTI->PR = 0x000FFFFF;
        LDR.N    R1,??DataTable5_1  ;; 0xfffff
        STR      R1,[R0, #+20]
//   92 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   93 
//   94 /**
//   95   * @brief  Initializes the EXTI peripheral according to the specified
//   96   *         parameters in the EXTI_InitStruct.
//   97   * @param  EXTI_InitStruct: pointer to a EXTI_InitTypeDef structure
//   98   *         that contains the configuration information for the EXTI peripheral.
//   99   * @retval None
//  100   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function EXTI_Init
          CFI NoCalls
        THUMB
//  101 void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct)
//  102 {
EXTI_Init:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  103   uint32_t tmp = 0;
//  104 
//  105   /* Check the parameters */
//  106   assert_param(IS_EXTI_MODE(EXTI_InitStruct->EXTI_Mode));
//  107   assert_param(IS_EXTI_TRIGGER(EXTI_InitStruct->EXTI_Trigger));
//  108   assert_param(IS_EXTI_LINE(EXTI_InitStruct->EXTI_Line));  
//  109   assert_param(IS_FUNCTIONAL_STATE(EXTI_InitStruct->EXTI_LineCmd));
//  110 
//  111   tmp = (uint32_t)EXTI_BASE;
//  112      
//  113   if (EXTI_InitStruct->EXTI_LineCmd != DISABLE)
        LDR      R1,[R0, #+0]
        LDRB     R2,[R0, #+6]
        MVNS     R3,R1
        LDR.N    R1,??DataTable5  ;; 0x40010400
        CBZ.N    R2,??EXTI_Init_0
//  114   {
//  115     /* Clear EXTI line configuration */
//  116     EXTI->IMR &= ~EXTI_InitStruct->EXTI_Line;
        MOV      R2,R1
        LDR      R4,[R2, #+0]
        ANDS     R3,R3,R4
        STR      R3,[R2, #+0]
//  117     EXTI->EMR &= ~EXTI_InitStruct->EXTI_Line;
        LDR      R3,[R2, #+4]
        LDR      R4,[R0, #+0]
        BICS     R3,R3,R4
        STR      R3,[R2, #+4]
//  118     
//  119     tmp += EXTI_InitStruct->EXTI_Mode;
        LDRB     R3,[R0, #+4]
        ADDS     R4,R1,R3
//  120 
//  121     *(__IO uint32_t *) tmp |= EXTI_InitStruct->EXTI_Line;
        LDR      R3,[R4, #+0]
        LDR      R5,[R0, #+0]
        ORRS     R3,R5,R3
        STR      R3,[R4, #+0]
//  122 
//  123     /* Clear Rising Falling edge configuration */
//  124     EXTI->RTSR &= ~EXTI_InitStruct->EXTI_Line;
        LDR      R3,[R2, #+8]
        LDR      R4,[R0, #+0]
        BICS     R3,R3,R4
        STR      R3,[R2, #+8]
//  125     EXTI->FTSR &= ~EXTI_InitStruct->EXTI_Line;
        LDR      R3,[R2, #+12]
        LDR      R4,[R0, #+0]
        BICS     R3,R3,R4
        STR      R3,[R2, #+12]
//  126     
//  127     /* Select the trigger for the selected external interrupts */
//  128     if (EXTI_InitStruct->EXTI_Trigger == EXTI_Trigger_Rising_Falling)
        LDRB     R3,[R0, #+5]
        LDR      R5,[R0, #+0]
        CMP      R3,#+16
        BNE.N    ??EXTI_Init_1
//  129     {
//  130       /* Rising Falling edge */
//  131       EXTI->RTSR |= EXTI_InitStruct->EXTI_Line;
        LDR      R1,[R2, #+8]
        ORRS     R1,R5,R1
        STR      R1,[R2, #+8]
//  132       EXTI->FTSR |= EXTI_InitStruct->EXTI_Line;
        LDR      R1,[R2, #+12]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,R1
        STR      R0,[R2, #+12]
//  133     }
//  134     else
//  135     {
//  136       tmp = (uint32_t)EXTI_BASE;
//  137       tmp += EXTI_InitStruct->EXTI_Trigger;
//  138 
//  139       *(__IO uint32_t *) tmp |= EXTI_InitStruct->EXTI_Line;
//  140     }
//  141   }
//  142   else
//  143   {
//  144     tmp += EXTI_InitStruct->EXTI_Mode;
//  145 
//  146     /* Disable the selected external lines */
//  147     *(__IO uint32_t *) tmp &= ~EXTI_InitStruct->EXTI_Line;
//  148   }
//  149 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR
          CFI R4 Frame(CFA, -8)
          CFI R5 Frame(CFA, -4)
          CFI CFA R13+8
??EXTI_Init_1:
        ADDS     R4,R1,R3
        LDR      R0,[R4, #+0]
        ORRS     R0,R5,R0
        B.N      ??EXTI_Init_2
??EXTI_Init_0:
        LDRB     R0,[R0, #+4]
        ADDS     R4,R1,R0
        LDR      R0,[R4, #+0]
        ANDS     R0,R3,R0
??EXTI_Init_2:
        STR      R0,[R4, #+0]
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  150 
//  151 /**
//  152   * @brief  Fills each EXTI_InitStruct member with its reset value.
//  153   * @param  EXTI_InitStruct: pointer to a EXTI_InitTypeDef structure which will
//  154   *         be initialized.
//  155   * @retval None
//  156   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function EXTI_StructInit
          CFI NoCalls
        THUMB
//  157 void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct)
//  158 {
//  159   EXTI_InitStruct->EXTI_Line = EXTI_LINENONE;
EXTI_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  160   EXTI_InitStruct->EXTI_Mode = EXTI_Mode_Interrupt;
        STRB     R1,[R0, #+4]
//  161   EXTI_InitStruct->EXTI_Trigger = EXTI_Trigger_Falling;
        MOVS     R1,#+12
        STRB     R1,[R0, #+5]
//  162   EXTI_InitStruct->EXTI_LineCmd = DISABLE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  163 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  164 
//  165 /**
//  166   * @brief  Generates a Software interrupt.
//  167   * @param  EXTI_Line: specifies the EXTI lines to be enabled or disabled.
//  168   *   This parameter can be any combination of EXTI_Linex where x can be (0..19).
//  169   * @retval None
//  170   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function EXTI_GenerateSWInterrupt
          CFI NoCalls
        THUMB
//  171 void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line)
//  172 {
//  173   /* Check the parameters */
//  174   assert_param(IS_EXTI_LINE(EXTI_Line));
//  175   
//  176   EXTI->SWIER |= EXTI_Line;
EXTI_GenerateSWInterrupt:
        LDR.N    R1,??DataTable5_2  ;; 0x40010410
        LDR      R2,[R1, #+0]
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
//  177 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  178 
//  179 /**
//  180   * @brief  Checks whether the specified EXTI line flag is set or not.
//  181   * @param  EXTI_Line: specifies the EXTI line flag to check.
//  182   *   This parameter can be:
//  183   *     @arg EXTI_Linex: External interrupt line x where x(0..19)
//  184   * @retval The new state of EXTI_Line (SET or RESET).
//  185   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function EXTI_GetFlagStatus
          CFI NoCalls
        THUMB
//  186 FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line)
//  187 {
//  188   FlagStatus bitstatus = RESET;
//  189   /* Check the parameters */
//  190   assert_param(IS_GET_EXTI_LINE(EXTI_Line));
//  191   
//  192   if ((EXTI->PR & EXTI_Line) != (uint32_t)RESET)
EXTI_GetFlagStatus:
        LDR.N    R2,??DataTable5_3  ;; 0x40010414
        LDR      R2,[R2, #+0]
        MOVS     R1,#+0
        TST      R2,R0
        IT       NE 
        MOVNE    R1,#+1
//  193   {
//  194     bitstatus = SET;
//  195   }
//  196   else
//  197   {
//  198     bitstatus = RESET;
//  199   }
//  200   return bitstatus;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  201 }
//  202 
//  203 /**
//  204   * @brief  Clears the EXTI's line pending flags.
//  205   * @param  EXTI_Line: specifies the EXTI lines flags to clear.
//  206   *   This parameter can be any combination of EXTI_Linex where x can be (0..19).
//  207   * @retval None
//  208   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function EXTI_ClearFlag
          CFI NoCalls
        THUMB
//  209 void EXTI_ClearFlag(uint32_t EXTI_Line)
//  210 {
//  211   /* Check the parameters */
//  212   assert_param(IS_EXTI_LINE(EXTI_Line));
//  213   
//  214   EXTI->PR = EXTI_Line;
EXTI_ClearFlag:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock5
//  215 }
//  216 
//  217 /**
//  218   * @brief  Checks whether the specified EXTI line is asserted or not.
//  219   * @param  EXTI_Line: specifies the EXTI line to check.
//  220   *   This parameter can be:
//  221   *     @arg EXTI_Linex: External interrupt line x where x(0..19)
//  222   * @retval The new state of EXTI_Line (SET or RESET).
//  223   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function EXTI_GetITStatus
          CFI NoCalls
        THUMB
//  224 ITStatus EXTI_GetITStatus(uint32_t EXTI_Line)
//  225 {
//  226   ITStatus bitstatus = RESET;
//  227   uint32_t enablestatus = 0;
//  228   /* Check the parameters */
//  229   assert_param(IS_GET_EXTI_LINE(EXTI_Line));
//  230   
//  231   enablestatus =  EXTI->IMR & EXTI_Line;
EXTI_GetITStatus:
        LDR.N    R2,??DataTable5  ;; 0x40010400
        LDR      R3,[R2, #+0]
//  232   if (((EXTI->PR & EXTI_Line) != (uint32_t)RESET) && (enablestatus != (uint32_t)RESET))
        LDR      R2,[R2, #+20]
        MOVS     R1,#+0
        ANDS     R3,R0,R3
        TST      R2,R0
        ITT      NE 
        CMPNE    R3,#+0
        MOVNE    R1,#+1
//  233   {
//  234     bitstatus = SET;
//  235   }
//  236   else
//  237   {
//  238     bitstatus = RESET;
//  239   }
//  240   return bitstatus;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  241 }
//  242 
//  243 /**
//  244   * @brief  Clears the EXTI's line pending bits.
//  245   * @param  EXTI_Line: specifies the EXTI lines to clear.
//  246   *   This parameter can be any combination of EXTI_Linex where x can be (0..19).
//  247   * @retval None
//  248   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function EXTI_ClearITPendingBit
          CFI NoCalls
        THUMB
//  249 void EXTI_ClearITPendingBit(uint32_t EXTI_Line)
EXTI_ClearITPendingBit:
        Nop      
          CFI EndBlock cfiBlock7
//  250 {
//  251   /* Check the parameters */
//  252   assert_param(IS_EXTI_LINE(EXTI_Line));
//  253   
//  254   EXTI->PR = EXTI_Line;
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls EXTI_ClearITPendingBit
          CFI NoCalls EXTI_ClearFlag
        THUMB
?Subroutine0:
        LDR.N    R1,??DataTable5_3  ;; 0x40010414
        STR      R0,[R1, #+0]
//  255 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0xfffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40010410

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x40010414

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  256 
//  257 /**
//  258   * @}
//  259   */
//  260 
//  261 /**
//  262   * @}
//  263   */
//  264 
//  265 /**
//  266   * @}
//  267   */
//  268 
//  269 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 212 bytes in section .text
// 
// 212 bytes of CODE memory
//
//Errors: none
//Warnings: none
