///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:28
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_can.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_can.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_can.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd

        PUBLIC CAN_CancelTransmit
        PUBLIC CAN_ClearFlag
        PUBLIC CAN_ClearITPendingBit
        PUBLIC CAN_DBGFreeze
        PUBLIC CAN_DeInit
        PUBLIC CAN_FIFORelease
        PUBLIC CAN_FilterInit
        PUBLIC CAN_GetFlagStatus
        PUBLIC CAN_GetITStatus
        PUBLIC CAN_GetLSBTransmitErrorCounter
        PUBLIC CAN_GetLastErrorCode
        PUBLIC CAN_GetReceiveErrorCounter
        PUBLIC CAN_ITConfig
        PUBLIC CAN_Init
        PUBLIC CAN_MessagePending
        PUBLIC CAN_OperatingModeRequest
        PUBLIC CAN_Receive
        PUBLIC CAN_SlaveStartBank
        PUBLIC CAN_Sleep
        PUBLIC CAN_StructInit
        PUBLIC CAN_TTComModeCmd
        PUBLIC CAN_Transmit
        PUBLIC CAN_TransmitStatus
        PUBLIC CAN_WakeUp
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_can.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_can.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the CAN firmware functions.
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
//   23 #include "stm32f10x_can.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup CAN 
//   31   * @brief CAN driver modules
//   32   * @{
//   33   */ 
//   34 
//   35 /** @defgroup CAN_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 
//   39 /**
//   40   * @}
//   41   */
//   42 
//   43 /** @defgroup CAN_Private_Defines
//   44   * @{
//   45   */
//   46 
//   47 /* CAN Master Control Register bits */
//   48 
//   49 #define MCR_DBF      ((uint32_t)0x00010000) /* software master reset */
//   50 
//   51 /* CAN Mailbox Transmit Request */
//   52 #define TMIDxR_TXRQ  ((uint32_t)0x00000001) /* Transmit mailbox request */
//   53 
//   54 /* CAN Filter Master Register bits */
//   55 #define FMR_FINIT    ((uint32_t)0x00000001) /* Filter init mode */
//   56 
//   57 /* Time out for INAK bit */
//   58 #define INAK_TIMEOUT        ((uint32_t)0x0000FFFF)
//   59 /* Time out for SLAK bit */
//   60 #define SLAK_TIMEOUT        ((uint32_t)0x0000FFFF)
//   61 
//   62 
//   63 
//   64 /* Flags in TSR register */
//   65 #define CAN_FLAGS_TSR              ((uint32_t)0x08000000) 
//   66 /* Flags in RF1R register */
//   67 #define CAN_FLAGS_RF1R             ((uint32_t)0x04000000) 
//   68 /* Flags in RF0R register */
//   69 #define CAN_FLAGS_RF0R             ((uint32_t)0x02000000) 
//   70 /* Flags in MSR register */
//   71 #define CAN_FLAGS_MSR              ((uint32_t)0x01000000) 
//   72 /* Flags in ESR register */
//   73 #define CAN_FLAGS_ESR              ((uint32_t)0x00F00000) 
//   74 
//   75 /* Mailboxes definition */
//   76 #define CAN_TXMAILBOX_0                   ((uint8_t)0x00)
//   77 #define CAN_TXMAILBOX_1                   ((uint8_t)0x01)
//   78 #define CAN_TXMAILBOX_2                   ((uint8_t)0x02) 
//   79 
//   80 
//   81 
//   82 #define CAN_MODE_MASK              ((uint32_t) 0x00000003)
//   83 /**
//   84   * @}
//   85   */
//   86 
//   87 /** @defgroup CAN_Private_Macros
//   88   * @{
//   89   */
//   90 
//   91 /**
//   92   * @}
//   93   */
//   94 
//   95 /** @defgroup CAN_Private_Variables
//   96   * @{
//   97   */
//   98 
//   99 /**
//  100   * @}
//  101   */
//  102 
//  103 /** @defgroup CAN_Private_FunctionPrototypes
//  104   * @{
//  105   */
//  106 
//  107 static ITStatus CheckITStatus(uint32_t CAN_Reg, uint32_t It_Bit);
//  108 
//  109 /**
//  110   * @}
//  111   */
//  112 
//  113 /** @defgroup CAN_Private_Functions
//  114   * @{
//  115   */
//  116 
//  117 /**
//  118   * @brief  Deinitializes the CAN peripheral registers to their default reset values.
//  119   * @param  CANx: where x can be 1 or 2 to select the CAN peripheral.
//  120   * @retval None.
//  121   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function CAN_DeInit
        THUMB
//  122 void CAN_DeInit(CAN_TypeDef* CANx)
//  123 {
CAN_DeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  124   /* Check the parameters */
//  125   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  126  
//  127   if (CANx == CAN1)
        LDR.W    R1,??DataTable6  ;; 0x40006400
        CMP      R0,R1
        BNE.N    ??CAN_DeInit_0
//  128   {
//  129     /* Enable CAN1 reset state */
//  130     RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN1, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+33554432
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  131     /* Release CAN1 from reset state */
//  132     RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN1, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+33554432
        B.N      ??CAN_DeInit_1
//  133   }
//  134   else
//  135   {  
//  136     /* Enable CAN2 reset state */
//  137     RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN2, ENABLE);
??CAN_DeInit_0:
        MOVS     R1,#+1
        MOV      R0,#+67108864
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  138     /* Release CAN2 from reset state */
//  139     RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN2, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+67108864
??CAN_DeInit_1:
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall RCC_APB1PeriphResetCmd
        B.W      RCC_APB1PeriphResetCmd
          CFI EndBlock cfiBlock0
//  140   }
//  141 }
//  142 
//  143 /**
//  144   * @brief  Initializes the CAN peripheral according to the specified
//  145   *         parameters in the CAN_InitStruct.
//  146   * @param  CANx:           where x can be 1 or 2 to to select the CAN 
//  147   *                         peripheral.
//  148   * @param  CAN_InitStruct: pointer to a CAN_InitTypeDef structure that
//  149   *                         contains the configuration information for the 
//  150   *                         CAN peripheral.
//  151   * @retval Constant indicates initialization succeed which will be 
//  152   *         CAN_InitStatus_Failed or CAN_InitStatus_Success.
//  153   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function CAN_Init
          CFI NoCalls
        THUMB
//  154 uint8_t CAN_Init(CAN_TypeDef* CANx, CAN_InitTypeDef* CAN_InitStruct)
//  155 {
CAN_Init:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  156   uint8_t InitStatus = CAN_InitStatus_Failed;
//  157   uint32_t wait_ack = 0x00000000;
//  158   /* Check the parameters */
//  159   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  160   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_TTCM));
//  161   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_ABOM));
//  162   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_AWUM));
//  163   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_NART));
//  164   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_RFLM));
//  165   assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_TXFP));
//  166   assert_param(IS_CAN_MODE(CAN_InitStruct->CAN_Mode));
//  167   assert_param(IS_CAN_SJW(CAN_InitStruct->CAN_SJW));
//  168   assert_param(IS_CAN_BS1(CAN_InitStruct->CAN_BS1));
//  169   assert_param(IS_CAN_BS2(CAN_InitStruct->CAN_BS2));
//  170   assert_param(IS_CAN_PRESCALER(CAN_InitStruct->CAN_Prescaler));
//  171 
//  172   /* Exit from sleep mode */
//  173   CANx->MCR &= (~(uint32_t)CAN_MCR_SLEEP);
        LDR      R3,[R0, #+0]
        BIC      R3,R3,#0x2
        STR      R3,[R0, #+0]
        MOVS     R2,#+0
//  174 
//  175   /* Request initialisation */
//  176   CANx->MCR |= CAN_MCR_INRQ ;
        LDR      R3,[R0, #+0]
        ORR      R3,R3,#0x1
        STR      R3,[R0, #+0]
        MOVW     R3,#+65535
        MOV      R4,R3
        B.N      ??CAN_Init_0
//  177 
//  178   /* Wait the acknowledge */
//  179   while (((CANx->MSR & CAN_MSR_INAK) != CAN_MSR_INAK) && (wait_ack != INAK_TIMEOUT))
//  180   {
//  181     wait_ack++;
??CAN_Init_1:
        SUBS     R4,R4,#+1
//  182   }
??CAN_Init_0:
        LDR      R5,[R0, #+4]
        LSLS     R5,R5,#+31
        BMI.N    ??CAN_Init_2
        CMP      R4,#+0
        BNE.N    ??CAN_Init_1
//  183 
//  184   /* Check acknowledge */
//  185   if ((CANx->MSR & CAN_MSR_INAK) != CAN_MSR_INAK)
??CAN_Init_2:
        LDR      R4,[R0, #+4]
        LSLS     R4,R4,#+31
        BPL.N    ??CAN_Init_3
//  186   {
//  187     InitStatus = CAN_InitStatus_Failed;
//  188   }
//  189   else 
//  190   {
//  191     /* Set the time triggered communication mode */
//  192     if (CAN_InitStruct->CAN_TTCM == ENABLE)
        LDRB     R2,[R1, #+6]
        CMP      R2,#+1
        LDR      R2,[R0, #+0]
        ITE      EQ 
        ORREQ    R2,R2,#0x80
        BICNE    R2,R2,#0x80
//  193     {
//  194       CANx->MCR |= CAN_MCR_TTCM;
//  195     }
//  196     else
//  197     {
//  198       CANx->MCR &= ~(uint32_t)CAN_MCR_TTCM;
        STR      R2,[R0, #+0]
//  199     }
//  200 
//  201     /* Set the automatic bus-off management */
//  202     if (CAN_InitStruct->CAN_ABOM == ENABLE)
        LDRB     R2,[R1, #+7]
        CMP      R2,#+1
        LDR      R2,[R0, #+0]
        ITE      EQ 
        ORREQ    R2,R2,#0x40
        BICNE    R2,R2,#0x40
//  203     {
//  204       CANx->MCR |= CAN_MCR_ABOM;
//  205     }
//  206     else
//  207     {
//  208       CANx->MCR &= ~(uint32_t)CAN_MCR_ABOM;
        STR      R2,[R0, #+0]
//  209     }
//  210 
//  211     /* Set the automatic wake-up mode */
//  212     if (CAN_InitStruct->CAN_AWUM == ENABLE)
        LDRB     R2,[R1, #+8]
        CMP      R2,#+1
        LDR      R2,[R0, #+0]
        ITE      EQ 
        ORREQ    R2,R2,#0x20
        BICNE    R2,R2,#0x20
//  213     {
//  214       CANx->MCR |= CAN_MCR_AWUM;
//  215     }
//  216     else
//  217     {
//  218       CANx->MCR &= ~(uint32_t)CAN_MCR_AWUM;
        STR      R2,[R0, #+0]
//  219     }
//  220 
//  221     /* Set the no automatic retransmission */
//  222     if (CAN_InitStruct->CAN_NART == ENABLE)
        LDRB     R2,[R1, #+9]
        CMP      R2,#+1
        LDR      R2,[R0, #+0]
        ITE      EQ 
        ORREQ    R2,R2,#0x10
        BICNE    R2,R2,#0x10
//  223     {
//  224       CANx->MCR |= CAN_MCR_NART;
//  225     }
//  226     else
//  227     {
//  228       CANx->MCR &= ~(uint32_t)CAN_MCR_NART;
        STR      R2,[R0, #+0]
//  229     }
//  230 
//  231     /* Set the receive FIFO locked mode */
//  232     if (CAN_InitStruct->CAN_RFLM == ENABLE)
        LDRB     R2,[R1, #+10]
        CMP      R2,#+1
        LDR      R2,[R0, #+0]
        ITE      EQ 
        ORREQ    R2,R2,#0x8
        BICNE    R2,R2,#0x8
//  233     {
//  234       CANx->MCR |= CAN_MCR_RFLM;
//  235     }
//  236     else
//  237     {
//  238       CANx->MCR &= ~(uint32_t)CAN_MCR_RFLM;
        STR      R2,[R0, #+0]
//  239     }
//  240 
//  241     /* Set the transmit FIFO priority */
//  242     if (CAN_InitStruct->CAN_TXFP == ENABLE)
        LDRB     R2,[R1, #+11]
        CMP      R2,#+1
        LDR      R2,[R0, #+0]
        ITE      EQ 
        ORREQ    R2,R2,#0x4
        BICNE    R2,R2,#0x4
//  243     {
//  244       CANx->MCR |= CAN_MCR_TXFP;
//  245     }
//  246     else
//  247     {
//  248       CANx->MCR &= ~(uint32_t)CAN_MCR_TXFP;
        STR      R2,[R0, #+0]
//  249     }
//  250 
//  251     /* Set the bit timing register */
//  252     CANx->BTR = (uint32_t)((uint32_t)CAN_InitStruct->CAN_Mode << 30) | \ 
//  253                 ((uint32_t)CAN_InitStruct->CAN_SJW << 24) | \ 
//  254                 ((uint32_t)CAN_InitStruct->CAN_BS1 << 16) | \ 
//  255                 ((uint32_t)CAN_InitStruct->CAN_BS2 << 20) | \ 
//  256                ((uint32_t)CAN_InitStruct->CAN_Prescaler - 1);
        LDRB     R4,[R1, #+3]
        LDRB     R2,[R1, #+2]
        LSLS     R4,R4,#+24
        ORR      R2,R4,R2, LSL #+30
        LDRB     R4,[R1, #+4]
        ORR      R2,R2,R4, LSL #+16
        LDRB     R4,[R1, #+5]
        LDRH     R1,[R1, #+0]
        ORR      R2,R2,R4, LSL #+20
        SUBS     R1,R1,#+1
        ORRS     R1,R1,R2
        STR      R1,[R0, #+28]
//  257 
//  258     /* Request leave initialisation */
//  259     CANx->MCR &= ~(uint32_t)CAN_MCR_INRQ;
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  260 
//  261    /* Wait the acknowledge */
//  262    wait_ack = 0;
        B.N      ??CAN_Init_4
//  263 
//  264    while (((CANx->MSR & CAN_MSR_INAK) == CAN_MSR_INAK) && (wait_ack != INAK_TIMEOUT))
//  265    {
//  266      wait_ack++;
??CAN_Init_5:
        SUBS     R3,R3,#+1
//  267    }
??CAN_Init_4:
        LDR      R1,[R0, #+4]
        LSLS     R1,R1,#+31
        BPL.N    ??CAN_Init_6
        CMP      R3,#+0
        BNE.N    ??CAN_Init_5
//  268 
//  269     /* ...and check acknowledged */
//  270     if ((CANx->MSR & CAN_MSR_INAK) == CAN_MSR_INAK)
//  271     {
//  272       InitStatus = CAN_InitStatus_Failed;
//  273     }
//  274     else
//  275     {
//  276       InitStatus = CAN_InitStatus_Success ;
??CAN_Init_6:
        LDR      R0,[R0, #+4]
        AND      R0,R0,#0x1
        EOR      R2,R0,#0x1
//  277     }
//  278   }
//  279 
//  280   /* At this step, return the status of initialization */
//  281   return InitStatus;
??CAN_Init_3:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  282 }
//  283 
//  284 /**
//  285   * @brief  Initializes the CAN peripheral according to the specified
//  286   *         parameters in the CAN_FilterInitStruct.
//  287   * @param  CAN_FilterInitStruct: pointer to a CAN_FilterInitTypeDef
//  288   *                               structure that contains the configuration 
//  289   *                               information.
//  290   * @retval None.
//  291   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function CAN_FilterInit
          CFI NoCalls
        THUMB
//  292 void CAN_FilterInit(CAN_FilterInitTypeDef* CAN_FilterInitStruct)
//  293 {
CAN_FilterInit:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  294   uint32_t filter_number_bit_pos = 0;
//  295   /* Check the parameters */
//  296   assert_param(IS_CAN_FILTER_NUMBER(CAN_FilterInitStruct->CAN_FilterNumber));
//  297   assert_param(IS_CAN_FILTER_MODE(CAN_FilterInitStruct->CAN_FilterMode));
//  298   assert_param(IS_CAN_FILTER_SCALE(CAN_FilterInitStruct->CAN_FilterScale));
//  299   assert_param(IS_CAN_FILTER_FIFO(CAN_FilterInitStruct->CAN_FilterFIFOAssignment));
//  300   assert_param(IS_FUNCTIONAL_STATE(CAN_FilterInitStruct->CAN_FilterActivation));
//  301 
//  302   filter_number_bit_pos = ((uint32_t)1) << CAN_FilterInitStruct->CAN_FilterNumber;
        LDRB     R2,[R0, #+10]
        MOVS     R1,#+1
        LSLS     R1,R1,R2
//  303 
//  304   /* Initialisation mode for the filter */
//  305   CAN1->FMR |= FMR_FINIT;
        LDR.W    R2,??DataTable6_1  ;; 0x40006600
        LDR      R3,[R2, #+0]
        ORR      R3,R3,#0x1
        STR      R3,[R2, #+0]
//  306 
//  307   /* Filter Deactivation */
//  308   CAN1->FA1R &= ~(uint32_t)filter_number_bit_pos;
        MVNS     R3,R1
        LDR      R4,[R2, #+28]
        ANDS     R4,R3,R4
        STR      R4,[R2, #+28]
//  309 
//  310   /* Filter Scale */
//  311   if (CAN_FilterInitStruct->CAN_FilterScale == CAN_FilterScale_16bit)
        LDRB     R4,[R0, #+12]
        CBNZ.N   R4,??CAN_FilterInit_0
//  312   {
//  313     /* 16-bit scale for the filter */
//  314     CAN1->FS1R &= ~(uint32_t)filter_number_bit_pos;
        LDR      R4,[R2, #+12]
        ANDS     R4,R3,R4
        STR      R4,[R2, #+12]
//  315 
//  316     /* First 16-bit identifier and First 16-bit mask */
//  317     /* Or First 16-bit identifier and Second 16-bit identifier */
//  318     CAN1->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR1 = 
//  319     ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdLow) << 16) |
//  320         (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdLow);
        LDRH     R5,[R0, #+6]
        LDRH     R6,[R0, #+2]
        LDR.W    R4,??DataTable6_2  ;; 0x40006640
        ORR      R5,R6,R5, LSL #+16
        LDRB     R6,[R0, #+10]
        STR      R5,[R4, R6, LSL #+3]
//  321 
//  322     /* Second 16-bit identifier and Second 16-bit mask */
//  323     /* Or Third 16-bit identifier and Fourth 16-bit identifier */
//  324     CAN1->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR2 = 
//  325     ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdHigh) << 16) |
//  326         (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdHigh);
        LDRB     R5,[R0, #+10]
        LDRH     R6,[R0, #+0]
        ADD      R4,R4,R5, LSL #+3
        LDRH     R5,[R0, #+4]
        ORR      R5,R6,R5, LSL #+16
        STR      R5,[R4, #+4]
//  327   }
//  328 
//  329   if (CAN_FilterInitStruct->CAN_FilterScale == CAN_FilterScale_32bit)
??CAN_FilterInit_0:
        LDRB     R4,[R0, #+12]
        CMP      R4,#+1
        BNE.N    ??CAN_FilterInit_1
//  330   {
//  331     /* 32-bit scale for the filter */
//  332     CAN1->FS1R |= filter_number_bit_pos;
        LDR      R4,[R2, #+12]
        ORRS     R4,R1,R4
        STR      R4,[R2, #+12]
//  333     /* 32-bit identifier or First 32-bit identifier */
//  334     CAN1->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR1 = 
//  335     ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdHigh) << 16) |
//  336         (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdLow);
        LDRH     R5,[R0, #+0]
        LDRH     R6,[R0, #+2]
        LDR.W    R4,??DataTable6_2  ;; 0x40006640
        ORR      R5,R6,R5, LSL #+16
        LDRB     R6,[R0, #+10]
        STR      R5,[R4, R6, LSL #+3]
//  337     /* 32-bit mask or Second 32-bit identifier */
//  338     CAN1->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR2 = 
//  339     ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdHigh) << 16) |
//  340         (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdLow);
        LDRB     R5,[R0, #+10]
        LDRH     R6,[R0, #+6]
        ADD      R4,R4,R5, LSL #+3
        LDRH     R5,[R0, #+4]
        ORR      R5,R6,R5, LSL #+16
        STR      R5,[R4, #+4]
//  341   }
//  342 
//  343   /* Filter Mode */
//  344   if (CAN_FilterInitStruct->CAN_FilterMode == CAN_FilterMode_IdMask)
??CAN_FilterInit_1:
        LDRB     R4,[R0, #+11]
        CMP      R4,#+0
        LDR      R4,[R2, #+4]
        ITE      EQ 
        ANDEQ    R4,R3,R4
        ORRNE    R4,R1,R4
//  345   {
//  346     /*Id/Mask mode for the filter*/
//  347     CAN1->FM1R &= ~(uint32_t)filter_number_bit_pos;
//  348   }
//  349   else /* CAN_FilterInitStruct->CAN_FilterMode == CAN_FilterMode_IdList */
//  350   {
//  351     /*Identifier list mode for the filter*/
//  352     CAN1->FM1R |= (uint32_t)filter_number_bit_pos;
        STR      R4,[R2, #+4]
//  353   }
//  354 
//  355   /* Filter FIFO assignment */
//  356   if (CAN_FilterInitStruct->CAN_FilterFIFOAssignment == CAN_Filter_FIFO0)
        LDRH     R4,[R0, #+8]
        CBNZ.N   R4,??CAN_FilterInit_2
//  357   {
//  358     /* FIFO 0 assignation for the filter */
//  359     CAN1->FFA1R &= ~(uint32_t)filter_number_bit_pos;
        LDR      R5,[R2, #+20]
        ANDS     R3,R3,R5
        STR      R3,[R2, #+20]
//  360   }
//  361 
//  362   if (CAN_FilterInitStruct->CAN_FilterFIFOAssignment == CAN_Filter_FIFO1)
??CAN_FilterInit_2:
        CMP      R4,#+1
        BNE.N    ??CAN_FilterInit_3
//  363   {
//  364     /* FIFO 1 assignation for the filter */
//  365     CAN1->FFA1R |= (uint32_t)filter_number_bit_pos;
        LDR      R3,[R2, #+20]
        ORRS     R3,R1,R3
        STR      R3,[R2, #+20]
//  366   }
//  367   
//  368   /* Filter activation */
//  369   if (CAN_FilterInitStruct->CAN_FilterActivation == ENABLE)
??CAN_FilterInit_3:
        LDRB     R0,[R0, #+13]
        CMP      R0,#+1
        BNE.N    ??CAN_FilterInit_4
//  370   {
//  371     CAN1->FA1R |= filter_number_bit_pos;
        LDR      R0,[R2, #+28]
        ORRS     R0,R1,R0
        STR      R0,[R2, #+28]
//  372   }
//  373 
//  374   /* Leave the initialisation mode for the filter */
//  375   CAN1->FMR &= ~FMR_FINIT;
??CAN_FilterInit_4:
        LDR      R0,[R2, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        STR      R0,[R2, #+0]
//  376 }
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  377 
//  378 /**
//  379   * @brief  Fills each CAN_InitStruct member with its default value.
//  380   * @param  CAN_InitStruct: pointer to a CAN_InitTypeDef structure which
//  381   *                         will be initialized.
//  382   * @retval None.
//  383   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function CAN_StructInit
          CFI NoCalls
        THUMB
//  384 void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct)
//  385 {
//  386   /* Reset CAN init structure parameters values */
//  387   
//  388   /* Initialize the time triggered communication mode */
//  389   CAN_InitStruct->CAN_TTCM = DISABLE;
CAN_StructInit:
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  390   
//  391   /* Initialize the automatic bus-off management */
//  392   CAN_InitStruct->CAN_ABOM = DISABLE;
        STRB     R1,[R0, #+7]
//  393   
//  394   /* Initialize the automatic wake-up mode */
//  395   CAN_InitStruct->CAN_AWUM = DISABLE;
        STRB     R1,[R0, #+8]
//  396   
//  397   /* Initialize the no automatic retransmission */
//  398   CAN_InitStruct->CAN_NART = DISABLE;
        STRB     R1,[R0, #+9]
//  399   
//  400   /* Initialize the receive FIFO locked mode */
//  401   CAN_InitStruct->CAN_RFLM = DISABLE;
        STRB     R1,[R0, #+10]
//  402   
//  403   /* Initialize the transmit FIFO priority */
//  404   CAN_InitStruct->CAN_TXFP = DISABLE;
        STRB     R1,[R0, #+11]
//  405   
//  406   /* Initialize the CAN_Mode member */
//  407   CAN_InitStruct->CAN_Mode = CAN_Mode_Normal;
        STRB     R1,[R0, #+2]
//  408   
//  409   /* Initialize the CAN_SJW member */
//  410   CAN_InitStruct->CAN_SJW = CAN_SJW_1tq;
        STRB     R1,[R0, #+3]
//  411   
//  412   /* Initialize the CAN_BS1 member */
//  413   CAN_InitStruct->CAN_BS1 = CAN_BS1_4tq;
        MOVS     R1,#+3
        STRB     R1,[R0, #+4]
//  414   
//  415   /* Initialize the CAN_BS2 member */
//  416   CAN_InitStruct->CAN_BS2 = CAN_BS2_3tq;
        MOVS     R1,#+2
        STRB     R1,[R0, #+5]
//  417   
//  418   /* Initialize the CAN_Prescaler member */
//  419   CAN_InitStruct->CAN_Prescaler = 1;
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//  420 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  421 
//  422 /**
//  423   * @brief  Select the start bank filter for slave CAN.
//  424   * @note   This function applies only to STM32 Connectivity line devices.
//  425   * @param  CAN_BankNumber: Select the start slave bank filter from 1..27.
//  426   * @retval None.
//  427   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function CAN_SlaveStartBank
          CFI NoCalls
        THUMB
//  428 void CAN_SlaveStartBank(uint8_t CAN_BankNumber) 
//  429 {
//  430   /* Check the parameters */
//  431   assert_param(IS_CAN_BANKNUMBER(CAN_BankNumber));
//  432   
//  433   /* Enter Initialisation mode for the filter */
//  434   CAN1->FMR |= FMR_FINIT;
CAN_SlaveStartBank:
        LDR.W    R1,??DataTable6_1  ;; 0x40006600
//  435   
//  436   /* Select the start slave bank */
//  437   CAN1->FMR &= (uint32_t)0xFFFFC0F1 ;
        LDR.W    R3,??DataTable6_3  ;; 0xffffc0f1
        LDR      R2,[R1, #+0]
        ORR      R2,R2,#0x1
        STR      R2,[R1, #+0]
        LDR      R2,[R1, #+0]
        ANDS     R2,R3,R2
        STR      R2,[R1, #+0]
//  438   CAN1->FMR |= (uint32_t)(CAN_BankNumber)<<8;
        LDR      R2,[R1, #+0]
        ORR      R0,R2,R0, LSL #+8
        STR      R0,[R1, #+0]
//  439   
//  440   /* Leave Initialisation mode for the filter */
//  441   CAN1->FMR &= ~FMR_FINIT;
        LDR      R0,[R1, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        STR      R0,[R1, #+0]
//  442 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  443 
//  444 /**
//  445   * @brief  Enables or disables the DBG Freeze for CAN.
//  446   * @param  CANx:     where x can be 1 or 2 to to select the CAN peripheral.
//  447   * @param  NewState: new state of the CAN peripheral. This parameter can 
//  448   *                   be: ENABLE or DISABLE.
//  449   * @retval None.
//  450   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function CAN_DBGFreeze
          CFI NoCalls
        THUMB
//  451 void CAN_DBGFreeze(CAN_TypeDef* CANx, FunctionalState NewState)
//  452 {
//  453   /* Check the parameters */
//  454   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  455   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  456   
//  457   if (NewState != DISABLE)
CAN_DBGFreeze:
        CMP      R1,#+0
        LDR      R1,[R0, #+0]
        ITE      NE 
        ORRNE    R1,R1,#0x10000
        BICEQ    R1,R1,#0x10000
//  458   {
//  459     /* Enable Debug Freeze  */
//  460     CANx->MCR |= MCR_DBF;
//  461   }
//  462   else
//  463   {
//  464     /* Disable Debug Freeze */
//  465     CANx->MCR &= ~MCR_DBF;
        STR      R1,[R0, #+0]
//  466   }
//  467 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  468 
//  469 
//  470 /**
//  471   * @brief  Enables or disabes the CAN Time TriggerOperation communication mode.
//  472   * @param  CANx:      where x can be 1 or 2 to to select the CAN peripheral.
//  473   * @param  NewState : Mode new state , can be one of @ref FunctionalState.
//  474   * @note   when enabled, Time stamp (TIME[15:0]) value is sent in the last 
//  475   *         two data bytes of the 8-byte message: TIME[7:0] in data byte 6 
//  476   *         and TIME[15:8] in data byte 7 
//  477   * @note   DLC must be programmed as 8 in order Time Stamp (2 bytes) to be 
//  478   *         sent over the CAN bus.  
//  479   * @retval None
//  480   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function CAN_TTComModeCmd
          CFI NoCalls
        THUMB
//  481 void CAN_TTComModeCmd(CAN_TypeDef* CANx, FunctionalState NewState)
//  482 {
//  483   /* Check the parameters */
//  484   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  485   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  486   if (NewState != DISABLE)
CAN_TTComModeCmd:
        CMP      R1,#+0
        LDR      R1,[R0, #+0]
        BEQ.N    ??CAN_TTComModeCmd_0
//  487   {
//  488     /* Enable the TTCM mode */
//  489     CANx->MCR |= CAN_MCR_TTCM;
        ORR      R1,R1,#0x80
        STR      R1,[R0, #+0]
//  490 
//  491     /* Set TGT bits */
//  492     CANx->sTxMailBox[0].TDTR |= ((uint32_t)CAN_TDT0R_TGT);
        LDR      R1,[R0, #+388]
        ORR      R1,R1,#0x100
        STR      R1,[R0, #+388]
//  493     CANx->sTxMailBox[1].TDTR |= ((uint32_t)CAN_TDT1R_TGT);
        LDR      R1,[R0, #+404]
        ORR      R1,R1,#0x100
        STR      R1,[R0, #+404]
//  494     CANx->sTxMailBox[2].TDTR |= ((uint32_t)CAN_TDT2R_TGT);
        LDR      R1,[R0, #+420]
        ORR      R1,R1,#0x100
        B.N      ??CAN_TTComModeCmd_1
//  495   }
//  496   else
//  497   {
//  498     /* Disable the TTCM mode */
//  499     CANx->MCR &= (uint32_t)(~(uint32_t)CAN_MCR_TTCM);
??CAN_TTComModeCmd_0:
        BIC      R1,R1,#0x80
        STR      R1,[R0, #+0]
//  500 
//  501     /* Reset TGT bits */
//  502     CANx->sTxMailBox[0].TDTR &= ((uint32_t)~CAN_TDT0R_TGT);
        LDR      R1,[R0, #+388]
        BIC      R1,R1,#0x100
        STR      R1,[R0, #+388]
//  503     CANx->sTxMailBox[1].TDTR &= ((uint32_t)~CAN_TDT1R_TGT);
        LDR      R1,[R0, #+404]
        BIC      R1,R1,#0x100
        STR      R1,[R0, #+404]
//  504     CANx->sTxMailBox[2].TDTR &= ((uint32_t)~CAN_TDT2R_TGT);
        LDR      R1,[R0, #+420]
        BIC      R1,R1,#0x100
??CAN_TTComModeCmd_1:
        STR      R1,[R0, #+420]
//  505   }
//  506 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  507 /**
//  508   * @brief  Initiates the transmission of a message.
//  509   * @param  CANx:      where x can be 1 or 2 to to select the CAN peripheral.
//  510   * @param  TxMessage: pointer to a structure which contains CAN Id, CAN
//  511   *                    DLC and CAN data.
//  512   * @retval The number of the mailbox that is used for transmission
//  513   *                    or CAN_TxStatus_NoMailBox if there is no empty mailbox.
//  514   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function CAN_Transmit
          CFI NoCalls
        THUMB
//  515 uint8_t CAN_Transmit(CAN_TypeDef* CANx, CanTxMsg* TxMessage)
//  516 {
CAN_Transmit:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  517   uint8_t transmit_mailbox = 0;
//  518   /* Check the parameters */
//  519   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  520   assert_param(IS_CAN_IDTYPE(TxMessage->IDE));
//  521   assert_param(IS_CAN_RTR(TxMessage->RTR));
//  522   assert_param(IS_CAN_DLC(TxMessage->DLC));
//  523 
//  524   /* Select one empty transmit mailbox */
//  525   if ((CANx->TSR&CAN_TSR_TME0) == CAN_TSR_TME0)
        LDR      R2,[R0, #+8]
        LSLS     R2,R2,#+5
        BPL.N    ??CAN_Transmit_0
//  526   {
//  527     transmit_mailbox = 0;
        MOVS     R2,#+0
//  528   }
//  529   else if ((CANx->TSR&CAN_TSR_TME1) == CAN_TSR_TME1)
//  530   {
//  531     transmit_mailbox = 1;
//  532   }
//  533   else if ((CANx->TSR&CAN_TSR_TME2) == CAN_TSR_TME2)
//  534   {
//  535     transmit_mailbox = 2;
//  536   }
//  537   else
//  538   {
//  539     transmit_mailbox = CAN_TxStatus_NoMailBox;
//  540   }
//  541 
//  542   if (transmit_mailbox != CAN_TxStatus_NoMailBox)
//  543   {
//  544     /* Set up the Id */
//  545     CANx->sTxMailBox[transmit_mailbox].TIR &= TMIDxR_TXRQ;
??CAN_Transmit_1:
        ADD      R0,R0,R2, LSL #+4
        LDR      R3,[R0, #+384]
        AND      R3,R3,#0x1
        STR      R3,[R0, #+384]
//  546     if (TxMessage->IDE == CAN_Id_Standard)
        LDRB     R4,[R1, #+8]
        LDRB     R3,[R1, #+9]
        CBNZ.N   R4,??CAN_Transmit_2
//  547     {
//  548       assert_param(IS_CAN_STDID(TxMessage->StdId));  
//  549       CANx->sTxMailBox[transmit_mailbox].TIR |= ((TxMessage->StdId << 21) | \ 
//  550                                                   TxMessage->RTR);
        LDR      R4,[R0, #+384]
        LDR      R5,[R1, #+0]
        ORR      R3,R3,R5, LSL #+21
        ORRS     R3,R3,R4
        B.N      ??CAN_Transmit_3
//  551     }
??CAN_Transmit_0:
        LDR      R2,[R0, #+8]
        LSLS     R2,R2,#+4
        IT       MI 
        MOVMI    R2,#+1
        BMI.N    ??CAN_Transmit_1
        LDR      R2,[R0, #+8]
        LSLS     R2,R2,#+3
        IT       MI 
        MOVMI    R2,#+2
        BMI.N    ??CAN_Transmit_1
        MOVS     R2,#+4
        B.N      ??CAN_Transmit_4
//  552     else
//  553     {
//  554       assert_param(IS_CAN_EXTID(TxMessage->ExtId));
//  555       CANx->sTxMailBox[transmit_mailbox].TIR |= ((TxMessage->ExtId << 3) | \ 
//  556                                                   TxMessage->IDE | \ 
//  557                                                   TxMessage->RTR);
??CAN_Transmit_2:
        LDR      R5,[R0, #+384]
        LDR      R6,[R1, #+4]
        ORR      R4,R4,R6, LSL #+3
        ORRS     R3,R3,R4
        ORRS     R3,R3,R5
??CAN_Transmit_3:
        STR      R3,[R0, #+384]
//  558     }
//  559     
//  560     /* Set up the DLC */
//  561     TxMessage->DLC &= (uint8_t)0x0000000F;
        LDRB     R3,[R1, #+10]
        AND      R3,R3,#0xF
        STRB     R3,[R1, #+10]
//  562     CANx->sTxMailBox[transmit_mailbox].TDTR &= (uint32_t)0xFFFFFFF0;
        ADD      R3,R0,#+384
        LDR      R4,[R3, #+4]
        LSRS     R4,R4,#+4
        LSLS     R4,R4,#+4
        STR      R4,[R3, #+4]
//  563     CANx->sTxMailBox[transmit_mailbox].TDTR |= TxMessage->DLC;
        LDR      R4,[R3, #+4]
        LDRB     R5,[R1, #+10]
        ORRS     R4,R5,R4
        STR      R4,[R3, #+4]
//  564 
//  565     /* Set up the data field */
//  566     CANx->sTxMailBox[transmit_mailbox].TDLR = (((uint32_t)TxMessage->Data[3] << 24) | 
//  567                                              ((uint32_t)TxMessage->Data[2] << 16) |
//  568                                              ((uint32_t)TxMessage->Data[1] << 8) | 
//  569                                              ((uint32_t)TxMessage->Data[0]));
        LDRB     R5,[R1, #+13]
        LDRB     R4,[R1, #+14]
        LSLS     R5,R5,#+16
        ORR      R4,R5,R4, LSL #+24
        LDRB     R5,[R1, #+12]
        ORR      R4,R4,R5, LSL #+8
        LDRB     R5,[R1, #+11]
        ORRS     R4,R5,R4
        STR      R4,[R3, #+8]
//  570     CANx->sTxMailBox[transmit_mailbox].TDHR = (((uint32_t)TxMessage->Data[7] << 24) | 
//  571                                              ((uint32_t)TxMessage->Data[6] << 16) |
//  572                                              ((uint32_t)TxMessage->Data[5] << 8) |
//  573                                              ((uint32_t)TxMessage->Data[4]));
        LDRB     R5,[R1, #+17]
        LDRB     R4,[R1, #+18]
        LSLS     R5,R5,#+16
        ORR      R4,R5,R4, LSL #+24
        LDRB     R5,[R1, #+16]
        LDRB     R1,[R1, #+15]
        ORR      R4,R4,R5, LSL #+8
        ORRS     R1,R1,R4
        STR      R1,[R3, #+12]
//  574     /* Request transmission */
//  575     CANx->sTxMailBox[transmit_mailbox].TIR |= TMIDxR_TXRQ;
        LDR      R1,[R0, #+384]
        ORR      R1,R1,#0x1
        STR      R1,[R0, #+384]
//  576   }
//  577   return transmit_mailbox;
??CAN_Transmit_4:
        MOV      R0,R2
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  578 }
//  579 
//  580 /**
//  581   * @brief  Checks the transmission of a message.
//  582   * @param  CANx:            where x can be 1 or 2 to to select the 
//  583   *                          CAN peripheral.
//  584   * @param  TransmitMailbox: the number of the mailbox that is used for 
//  585   *                          transmission.
//  586   * @retval CAN_TxStatus_Ok if the CAN driver transmits the message, CAN_TxStatus_Failed 
//  587   *         in an other case.
//  588   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function CAN_TransmitStatus
          CFI NoCalls
        THUMB
//  589 uint8_t CAN_TransmitStatus(CAN_TypeDef* CANx, uint8_t TransmitMailbox)
//  590 {
//  591   uint32_t state = 0;
CAN_TransmitStatus:
        MOVS     R2,#+0
//  592 
//  593   /* Check the parameters */
//  594   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  595   assert_param(IS_CAN_TRANSMITMAILBOX(TransmitMailbox));
//  596  
//  597   switch (TransmitMailbox)
        CBZ.N    R1,??CAN_TransmitStatus_0
        CMP      R1,#+2
        BEQ.N    ??CAN_TransmitStatus_1
        BCC.N    ??CAN_TransmitStatus_2
        B.N      ??CAN_TransmitStatus_3
//  598   {
//  599     case (CAN_TXMAILBOX_0): 
//  600       state =   CANx->TSR &  (CAN_TSR_RQCP0 | CAN_TSR_TXOK0 | CAN_TSR_TME0);
??CAN_TransmitStatus_0:
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable6_4  ;; 0x4000003
        B.N      ??CAN_TransmitStatus_4
//  601       break;
//  602     case (CAN_TXMAILBOX_1): 
//  603       state =   CANx->TSR &  (CAN_TSR_RQCP1 | CAN_TSR_TXOK1 | CAN_TSR_TME1);
??CAN_TransmitStatus_2:
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable6_5  ;; 0x8000300
        B.N      ??CAN_TransmitStatus_4
//  604       break;
//  605     case (CAN_TXMAILBOX_2): 
//  606       state =   CANx->TSR &  (CAN_TSR_RQCP2 | CAN_TSR_TXOK2 | CAN_TSR_TME2);
??CAN_TransmitStatus_1:
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable6_6  ;; 0x10030000
??CAN_TransmitStatus_4:
        AND      R2,R1,R0
//  607       break;
//  608     default:
//  609       state = CAN_TxStatus_Failed;
//  610       break;
//  611   }
//  612   switch (state)
??CAN_TransmitStatus_3:
        CBZ.N    R2,??CAN_TransmitStatus_5
        LDR.W    R0,??DataTable6_4  ;; 0x4000003
        CMP      R2,R0
        ITTTT    NE 
        LDRNE.W  R0,??DataTable6_5  ;; 0x8000300
        CMPNE    R2,R0
        LDRNE.W  R0,??DataTable6_6  ;; 0x10030000
        CMPNE    R2,R0
        BEQ.N    ??CAN_TransmitStatus_6
        B.N      ??CAN_TransmitStatus_7
//  613   {
//  614       /* transmit pending  */
//  615     case (0x0): state = CAN_TxStatus_Pending;
??CAN_TransmitStatus_5:
        MOVS     R0,#+2
//  616       break;
        BX       LR
//  617       /* transmit failed  */
//  618      case (CAN_TSR_RQCP0 | CAN_TSR_TME0): state = CAN_TxStatus_Failed;
//  619       break;
//  620      case (CAN_TSR_RQCP1 | CAN_TSR_TME1): state = CAN_TxStatus_Failed;
//  621       break;
//  622      case (CAN_TSR_RQCP2 | CAN_TSR_TME2): state = CAN_TxStatus_Failed;
//  623       break;
//  624       /* transmit succeeded  */
//  625     case (CAN_TSR_RQCP0 | CAN_TSR_TXOK0 | CAN_TSR_TME0):state = CAN_TxStatus_Ok;
//  626       break;
//  627     case (CAN_TSR_RQCP1 | CAN_TSR_TXOK1 | CAN_TSR_TME1):state = CAN_TxStatus_Ok;
//  628       break;
//  629     case (CAN_TSR_RQCP2 | CAN_TSR_TXOK2 | CAN_TSR_TME2):state = CAN_TxStatus_Ok;
??CAN_TransmitStatus_6:
        MOVS     R0,#+1
//  630       break;
        BX       LR
//  631     default: state = CAN_TxStatus_Failed;
??CAN_TransmitStatus_7:
        MOVS     R0,#+0
//  632       break;
//  633   }
//  634   return (uint8_t) state;
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  635 }
//  636 
//  637 /**
//  638   * @brief  Cancels a transmit request.
//  639   * @param  CANx:     where x can be 1 or 2 to to select the CAN peripheral. 
//  640   * @param  Mailbox:  Mailbox number.
//  641   * @retval None.
//  642   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function CAN_CancelTransmit
          CFI NoCalls
        THUMB
//  643 void CAN_CancelTransmit(CAN_TypeDef* CANx, uint8_t Mailbox)
//  644 {
//  645   /* Check the parameters */
//  646   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  647   assert_param(IS_CAN_TRANSMITMAILBOX(Mailbox));
//  648   /* abort transmission */
//  649   switch (Mailbox)
CAN_CancelTransmit:
        CBZ.N    R1,??CAN_CancelTransmit_0
        CMP      R1,#+2
        BEQ.N    ??CAN_CancelTransmit_1
        BCC.N    ??CAN_CancelTransmit_2
        BX       LR
//  650   {
//  651     case (CAN_TXMAILBOX_0): CANx->TSR |= CAN_TSR_ABRQ0;
??CAN_CancelTransmit_0:
        LDR      R1,[R0, #+8]
        ORR      R1,R1,#0x80
        B.N      ??CAN_CancelTransmit_3
//  652       break;
//  653     case (CAN_TXMAILBOX_1): CANx->TSR |= CAN_TSR_ABRQ1;
??CAN_CancelTransmit_2:
        LDR      R1,[R0, #+8]
        ORR      R1,R1,#0x8000
        B.N      ??CAN_CancelTransmit_3
//  654       break;
//  655     case (CAN_TXMAILBOX_2): CANx->TSR |= CAN_TSR_ABRQ2;
??CAN_CancelTransmit_1:
        LDR      R1,[R0, #+8]
        ORR      R1,R1,#0x800000
??CAN_CancelTransmit_3:
        STR      R1,[R0, #+8]
//  656       break;
//  657     default:
//  658       break;
//  659   }
//  660 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  661 
//  662 
//  663 /**
//  664   * @brief  Receives a message.
//  665   * @param  CANx:       where x can be 1 or 2 to to select the CAN peripheral.
//  666   * @param  FIFONumber: Receive FIFO number, CAN_FIFO0 or CAN_FIFO1.
//  667   * @param  RxMessage:  pointer to a structure receive message which contains 
//  668   *                     CAN Id, CAN DLC, CAN datas and FMI number.
//  669   * @retval None.
//  670   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function CAN_Receive
          CFI NoCalls
        THUMB
//  671 void CAN_Receive(CAN_TypeDef* CANx, uint8_t FIFONumber, CanRxMsg* RxMessage)
//  672 {
CAN_Receive:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  673   /* Check the parameters */
//  674   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  675   assert_param(IS_CAN_FIFO(FIFONumber));
//  676   /* Get the Id */
//  677   RxMessage->IDE = (uint8_t)0x04 & CANx->sFIFOMailBox[FIFONumber].RIR;
        ADD      R3,R0,R1, LSL #+4
        LDR      R4,[R3, #+432]
        ANDS     R4,R4,#0x4
        STRB     R4,[R2, #+8]
//  678   if (RxMessage->IDE == CAN_Id_Standard)
        LDR      R4,[R3, #+432]
        ITTEE    EQ 
        LSREQ    R4,R4,#+21
        STREQ    R4,[R2, #+0]
        LSRNE    R4,R4,#+3
        STRNE    R4,[R2, #+4]
//  679   {
//  680     RxMessage->StdId = (uint32_t)0x000007FF & (CANx->sFIFOMailBox[FIFONumber].RIR >> 21);
//  681   }
//  682   else
//  683   {
//  684     RxMessage->ExtId = (uint32_t)0x1FFFFFFF & (CANx->sFIFOMailBox[FIFONumber].RIR >> 3);
//  685   }
//  686   
//  687   RxMessage->RTR = (uint8_t)0x02 & CANx->sFIFOMailBox[FIFONumber].RIR;
        LDR      R4,[R3, #+432]
        AND      R4,R4,#0x2
        STRB     R4,[R2, #+9]
//  688   /* Get the DLC */
//  689   RxMessage->DLC = (uint8_t)0x0F & CANx->sFIFOMailBox[FIFONumber].RDTR;
        ADD      R3,R3,#+432
        LDR      R4,[R3, #+4]
        AND      R4,R4,#0xF
        STRB     R4,[R2, #+10]
//  690   /* Get the FMI */
//  691   RxMessage->FMI = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDTR >> 8);
        LDR      R4,[R3, #+4]
        LSRS     R4,R4,#+8
        STRB     R4,[R2, #+19]
//  692   /* Get the data field */
//  693   RxMessage->Data[0] = (uint8_t)0xFF & CANx->sFIFOMailBox[FIFONumber].RDLR;
        LDR      R4,[R3, #+8]
        STRB     R4,[R2, #+11]
//  694   RxMessage->Data[1] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDLR >> 8);
        LDR      R4,[R3, #+8]
        LSRS     R4,R4,#+8
        STRB     R4,[R2, #+12]
//  695   RxMessage->Data[2] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDLR >> 16);
        LDR      R4,[R3, #+8]
        LSRS     R4,R4,#+16
        STRB     R4,[R2, #+13]
//  696   RxMessage->Data[3] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDLR >> 24);
        LDR      R4,[R3, #+8]
        LSRS     R4,R4,#+24
        STRB     R4,[R2, #+14]
//  697   RxMessage->Data[4] = (uint8_t)0xFF & CANx->sFIFOMailBox[FIFONumber].RDHR;
        LDR      R4,[R3, #+12]
        STRB     R4,[R2, #+15]
//  698   RxMessage->Data[5] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDHR >> 8);
        LDR      R4,[R3, #+12]
        LSRS     R4,R4,#+8
        STRB     R4,[R2, #+16]
//  699   RxMessage->Data[6] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDHR >> 16);
        LDR      R4,[R3, #+12]
        LSRS     R4,R4,#+16
        STRB     R4,[R2, #+17]
//  700   RxMessage->Data[7] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDHR >> 24);
        LDR      R3,[R3, #+12]
        LSRS     R3,R3,#+24
        STRB     R3,[R2, #+18]
//  701   /* Release the FIFO */
//  702   /* Release FIFO0 */
//  703   if (FIFONumber == CAN_FIFO0)
        CBNZ.N   R1,??CAN_Receive_0
//  704   {
//  705     CANx->RF0R |= CAN_RF0R_RFOM0;
        LDR      R1,[R0, #+12]
        ORR      R1,R1,#0x20
        STR      R1,[R0, #+12]
//  706   }
//  707   /* Release FIFO1 */
//  708   else /* FIFONumber == CAN_FIFO1 */
//  709   {
//  710     CANx->RF1R |= CAN_RF1R_RFOM1;
//  711   }
//  712 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
??CAN_Receive_0:
        LDR      R1,[R0, #+16]
        ORR      R1,R1,#0x20
        STR      R1,[R0, #+16]
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  713 
//  714 /**
//  715   * @brief  Releases the specified FIFO.
//  716   * @param  CANx:       where x can be 1 or 2 to to select the CAN peripheral. 
//  717   * @param  FIFONumber: FIFO to release, CAN_FIFO0 or CAN_FIFO1.
//  718   * @retval None.
//  719   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function CAN_FIFORelease
          CFI NoCalls
        THUMB
//  720 void CAN_FIFORelease(CAN_TypeDef* CANx, uint8_t FIFONumber)
//  721 {
//  722   /* Check the parameters */
//  723   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  724   assert_param(IS_CAN_FIFO(FIFONumber));
//  725   /* Release FIFO0 */
//  726   if (FIFONumber == CAN_FIFO0)
CAN_FIFORelease:
        CBNZ.N   R1,??CAN_FIFORelease_0
//  727   {
//  728     CANx->RF0R |= CAN_RF0R_RFOM0;
        LDR      R1,[R0, #+12]
        ORR      R1,R1,#0x20
        STR      R1,[R0, #+12]
        BX       LR
//  729   }
//  730   /* Release FIFO1 */
//  731   else /* FIFONumber == CAN_FIFO1 */
//  732   {
//  733     CANx->RF1R |= CAN_RF1R_RFOM1;
??CAN_FIFORelease_0:
        LDR      R1,[R0, #+16]
        ORR      R1,R1,#0x20
        STR      R1,[R0, #+16]
//  734   }
//  735 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  736 
//  737 /**
//  738   * @brief  Returns the number of pending messages.
//  739   * @param  CANx:       where x can be 1 or 2 to to select the CAN peripheral.
//  740   * @param  FIFONumber: Receive FIFO number, CAN_FIFO0 or CAN_FIFO1.
//  741   * @retval NbMessage : which is the number of pending message.
//  742   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function CAN_MessagePending
          CFI NoCalls
        THUMB
//  743 uint8_t CAN_MessagePending(CAN_TypeDef* CANx, uint8_t FIFONumber)
//  744 {
//  745   uint8_t message_pending=0;
CAN_MessagePending:
        MOVS     R2,#+0
//  746   /* Check the parameters */
//  747   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  748   assert_param(IS_CAN_FIFO(FIFONumber));
//  749   if (FIFONumber == CAN_FIFO0)
        CBNZ.N   R1,??CAN_MessagePending_0
//  750   {
//  751     message_pending = (uint8_t)(CANx->RF0R&(uint32_t)0x03);
        LDR      R0,[R0, #+12]
        B.N      ??CAN_MessagePending_1
//  752   }
//  753   else if (FIFONumber == CAN_FIFO1)
??CAN_MessagePending_0:
        CMP      R1,#+1
        BNE.N    ??CAN_MessagePending_2
//  754   {
//  755     message_pending = (uint8_t)(CANx->RF1R&(uint32_t)0x03);
        LDR      R0,[R0, #+16]
??CAN_MessagePending_1:
        AND      R2,R0,#0x3
//  756   }
//  757   else
//  758   {
//  759     message_pending = 0;
//  760   }
//  761   return message_pending;
??CAN_MessagePending_2:
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  762 }
//  763 
//  764 
//  765 /**
//  766   * @brief   Select the CAN Operation mode.
//  767   * @param CAN_OperatingMode : CAN Operating Mode. This parameter can be one 
//  768   *                            of @ref CAN_OperatingMode_TypeDef enumeration.
//  769   * @retval status of the requested mode which can be 
//  770   *         - CAN_ModeStatus_Failed    CAN failed entering the specific mode 
//  771   *         - CAN_ModeStatus_Success   CAN Succeed entering the specific mode 
//  772 
//  773   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function CAN_OperatingModeRequest
          CFI NoCalls
        THUMB
//  774 uint8_t CAN_OperatingModeRequest(CAN_TypeDef* CANx, uint8_t CAN_OperatingMode)
//  775 {
CAN_OperatingModeRequest:
        MOV      R2,R1
//  776   uint8_t status = CAN_ModeStatus_Failed;
        MOVS     R1,#+0
//  777   
//  778   /* Timeout for INAK or also for SLAK bits*/
//  779   uint32_t timeout = INAK_TIMEOUT; 
//  780 
//  781   /* Check the parameters */
//  782   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  783   assert_param(IS_CAN_OPERATING_MODE(CAN_OperatingMode));
//  784 
//  785   if (CAN_OperatingMode == CAN_OperatingMode_Initialization)
        CBNZ.N   R2,??CAN_OperatingModeRequest_0
//  786   {
//  787     /* Request initialisation */
//  788     CANx->MCR = (uint32_t)((CANx->MCR & (uint32_t)(~(uint32_t)CAN_MCR_SLEEP)) | CAN_MCR_INRQ);
        LDR      R2,[R0, #+0]
        BIC      R2,R2,#0x2
        ORR      R2,R2,#0x1
        STR      R2,[R0, #+0]
        MOVW     R2,#+65535
        B.N      ??CAN_OperatingModeRequest_1
//  789 
//  790     /* Wait the acknowledge */
//  791     while (((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_INAK) && (timeout != 0))
//  792     {
//  793       timeout--;
??CAN_OperatingModeRequest_2:
        SUBS     R2,R2,#+1
//  794     }
??CAN_OperatingModeRequest_1:
        LDR      R3,[R0, #+4]
        AND      R3,R3,#0x3
        CMP      R3,#+1
        IT       NE 
        CMPNE    R2,#+0
        BNE.N    ??CAN_OperatingModeRequest_2
//  795     if ((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_INAK)
        LDR      R0,[R0, #+4]
        AND      R0,R0,#0x3
        CMP      R0,#+1
        B.N      ??CAN_OperatingModeRequest_3
//  796     {
//  797       status = CAN_ModeStatus_Failed;
//  798     }
//  799     else
//  800     {
//  801       status = CAN_ModeStatus_Success;
//  802     }
//  803   }
//  804   else  if (CAN_OperatingMode == CAN_OperatingMode_Normal)
??CAN_OperatingModeRequest_0:
        CMP      R2,#+1
        BNE.N    ??CAN_OperatingModeRequest_4
//  805   {
//  806     /* Request leave initialisation and sleep mode  and enter Normal mode */
//  807     CANx->MCR &= (uint32_t)(~(CAN_MCR_SLEEP|CAN_MCR_INRQ));
        LDR      R2,[R0, #+0]
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+2
        STR      R2,[R0, #+0]
        MOVW     R2,#+65535
        B.N      ??CAN_OperatingModeRequest_5
//  808 
//  809     /* Wait the acknowledge */
//  810     while (((CANx->MSR & CAN_MODE_MASK) != 0) && (timeout!=0))
//  811     {
//  812       timeout--;
??CAN_OperatingModeRequest_6:
        SUBS     R2,R2,#+1
//  813     }
??CAN_OperatingModeRequest_5:
        LDR      R3,[R0, #+4]
        TST      R3,#0x3
        IT       NE 
        CMPNE    R2,#+0
        BNE.N    ??CAN_OperatingModeRequest_6
//  814     if ((CANx->MSR & CAN_MODE_MASK) != 0)
        LDR      R0,[R0, #+4]
        TST      R0,#0x3
        B.N      ??CAN_OperatingModeRequest_3
//  815     {
//  816       status = CAN_ModeStatus_Failed;
//  817     }
//  818     else
//  819     {
//  820       status = CAN_ModeStatus_Success;
//  821     }
//  822   }
//  823   else  if (CAN_OperatingMode == CAN_OperatingMode_Sleep)
??CAN_OperatingModeRequest_4:
        CMP      R2,#+2
        BNE.N    ??CAN_OperatingModeRequest_7
//  824   {
//  825     /* Request Sleep mode */
//  826     CANx->MCR = (uint32_t)((CANx->MCR & (uint32_t)(~(uint32_t)CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
        LDR      R2,[R0, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        ORR      R2,R2,#0x2
        STR      R2,[R0, #+0]
        MOVW     R2,#+65535
        B.N      ??CAN_OperatingModeRequest_8
//  827 
//  828     /* Wait the acknowledge */
//  829     while (((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK) && (timeout!=0))
//  830     {
//  831       timeout--;
??CAN_OperatingModeRequest_9:
        SUBS     R2,R2,#+1
//  832     }
??CAN_OperatingModeRequest_8:
        LDR      R3,[R0, #+4]
        AND      R3,R3,#0x3
        CMP      R3,#+2
        IT       NE 
        CMPNE    R2,#+0
        BNE.N    ??CAN_OperatingModeRequest_9
//  833     if ((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK)
        LDR      R0,[R0, #+4]
        AND      R0,R0,#0x3
        CMP      R0,#+2
??CAN_OperatingModeRequest_3:
        IT       EQ 
        MOVEQ    R1,#+1
//  834     {
//  835       status = CAN_ModeStatus_Failed;
//  836     }
//  837     else
//  838     {
//  839       status = CAN_ModeStatus_Success;
//  840     }
//  841   }
//  842   else
//  843   {
//  844     status = CAN_ModeStatus_Failed;
//  845   }
//  846 
//  847   return  (uint8_t) status;
??CAN_OperatingModeRequest_7:
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  848 }
//  849 
//  850 /**
//  851   * @brief  Enters the low power mode.
//  852   * @param  CANx:   where x can be 1 or 2 to to select the CAN peripheral.
//  853   * @retval status: CAN_Sleep_Ok if sleep entered, CAN_Sleep_Failed in an 
//  854   *                 other case.
//  855   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function CAN_Sleep
          CFI NoCalls
        THUMB
//  856 uint8_t CAN_Sleep(CAN_TypeDef* CANx)
//  857 {
//  858   uint8_t sleepstatus = CAN_Sleep_Failed;
//  859   
//  860   /* Check the parameters */
//  861   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  862     
//  863   /* Request Sleep mode */
//  864    CANx->MCR = (((CANx->MCR) & (uint32_t)(~(uint32_t)CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
CAN_Sleep:
        LDR      R2,[R0, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        ORR      R2,R2,#0x2
        STR      R2,[R0, #+0]
        MOVS     R1,#+0
//  865    
//  866   /* Sleep mode status */
//  867   if ((CANx->MSR & (CAN_MSR_SLAK|CAN_MSR_INAK)) == CAN_MSR_SLAK)
        LDR      R0,[R0, #+4]
        AND      R0,R0,#0x3
        CMP      R0,#+2
        IT       EQ 
        MOVEQ    R1,#+1
//  868   {
//  869     /* Sleep mode not entered */
//  870     sleepstatus =  CAN_Sleep_Ok;
//  871   }
//  872   /* return sleep mode status */
//  873    return (uint8_t)sleepstatus;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  874 }
//  875 
//  876 /**
//  877   * @brief  Wakes the CAN up.
//  878   * @param  CANx:    where x can be 1 or 2 to to select the CAN peripheral.
//  879   * @retval status:  CAN_WakeUp_Ok if sleep mode left, CAN_WakeUp_Failed in an 
//  880   *                  other case.
//  881   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function CAN_WakeUp
          CFI NoCalls
        THUMB
//  882 uint8_t CAN_WakeUp(CAN_TypeDef* CANx)
//  883 {
//  884   uint32_t wait_slak = SLAK_TIMEOUT;
//  885   uint8_t wakeupstatus = CAN_WakeUp_Failed;
//  886   
//  887   /* Check the parameters */
//  888   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  889     
//  890   /* Wake up request */
//  891   CANx->MCR &= ~(uint32_t)CAN_MCR_SLEEP;
CAN_WakeUp:
        LDR      R2,[R0, #+0]
        BIC      R2,R2,#0x2
        STR      R2,[R0, #+0]
        MOVS     R1,#+0
        MOVW     R2,#+65535
        B.N      ??CAN_WakeUp_0
//  892     
//  893   /* Sleep mode status */
//  894   while(((CANx->MSR & CAN_MSR_SLAK) == CAN_MSR_SLAK)&&(wait_slak!=0x00))
//  895   {
//  896    wait_slak--;
??CAN_WakeUp_1:
        SUBS     R2,R2,#+1
//  897   }
??CAN_WakeUp_0:
        LDR      R3,[R0, #+4]
        LSLS     R3,R3,#+30
        BPL.N    ??CAN_WakeUp_2
        CMP      R2,#+0
        BNE.N    ??CAN_WakeUp_1
//  898   if((CANx->MSR & CAN_MSR_SLAK) != CAN_MSR_SLAK)
??CAN_WakeUp_2:
        LDR      R0,[R0, #+4]
        LSLS     R0,R0,#+30
        IT       PL 
        MOVPL    R1,#+1
//  899   {
//  900    /* wake up done : Sleep mode exited */
//  901     wakeupstatus = CAN_WakeUp_Ok;
//  902   }
//  903   /* return wakeup status */
//  904   return (uint8_t)wakeupstatus;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  905 }
//  906 
//  907 
//  908 /**
//  909   * @brief  Returns the CANx's last error code (LEC).
//  910   * @param  CANx:          where x can be 1 or 2 to to select the CAN peripheral.  
//  911   * @retval CAN_ErrorCode: specifies the Error code : 
//  912   *                        - CAN_ERRORCODE_NoErr            No Error  
//  913   *                        - CAN_ERRORCODE_StuffErr         Stuff Error
//  914   *                        - CAN_ERRORCODE_FormErr          Form Error
//  915   *                        - CAN_ERRORCODE_ACKErr           Acknowledgment Error
//  916   *                        - CAN_ERRORCODE_BitRecessiveErr  Bit Recessive Error
//  917   *                        - CAN_ERRORCODE_BitDominantErr   Bit Dominant Error
//  918   *                        - CAN_ERRORCODE_CRCErr           CRC Error
//  919   *                        - CAN_ERRORCODE_SoftwareSetErr   Software Set Error  
//  920   */
//  921  

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function CAN_GetLastErrorCode
          CFI NoCalls
        THUMB
//  922 uint8_t CAN_GetLastErrorCode(CAN_TypeDef* CANx)
//  923 {
//  924   uint8_t errorcode=0;
//  925   
//  926   /* Check the parameters */
//  927   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  928   
//  929   /* Get the error code*/
//  930   errorcode = (((uint8_t)CANx->ESR) & (uint8_t)CAN_ESR_LEC);
CAN_GetLastErrorCode:
        LDR      R0,[R0, #+24]
//  931   
//  932   /* Return the error code*/
//  933   return errorcode;
        AND      R0,R0,#0x70
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  934 }
//  935 /**
//  936   * @brief  Returns the CANx Receive Error Counter (REC).
//  937   * @note   In case of an error during reception, this counter is incremented 
//  938   *         by 1 or by 8 depending on the error condition as defined by the CAN 
//  939   *         standard. After every successful reception, the counter is 
//  940   *         decremented by 1 or reset to 120 if its value was higher than 128. 
//  941   *         When the counter value exceeds 127, the CAN controller enters the 
//  942   *         error passive state.  
//  943   * @param  CANx: where x can be 1 or 2 to to select the CAN peripheral.  
//  944   * @retval CAN Receive Error Counter. 
//  945   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function CAN_GetReceiveErrorCounter
          CFI NoCalls
        THUMB
//  946 uint8_t CAN_GetReceiveErrorCounter(CAN_TypeDef* CANx)
//  947 {
//  948   uint8_t counter=0;
//  949   
//  950   /* Check the parameters */
//  951   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  952   
//  953   /* Get the Receive Error Counter*/
//  954   counter = (uint8_t)((CANx->ESR & CAN_ESR_REC)>> 24);
CAN_GetReceiveErrorCounter:
        LDR      R0,[R0, #+24]
//  955   
//  956   /* Return the Receive Error Counter*/
//  957   return counter;
        LSRS     R0,R0,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  958 }
//  959 
//  960 
//  961 /**
//  962   * @brief  Returns the LSB of the 9-bit CANx Transmit Error Counter(TEC).
//  963   * @param  CANx:   where x can be 1 or 2 to to select the CAN peripheral.  
//  964   * @retval LSB of the 9-bit CAN Transmit Error Counter. 
//  965   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function CAN_GetLSBTransmitErrorCounter
          CFI NoCalls
        THUMB
//  966 uint8_t CAN_GetLSBTransmitErrorCounter(CAN_TypeDef* CANx)
//  967 {
//  968   uint8_t counter=0;
//  969   
//  970   /* Check the parameters */
//  971   assert_param(IS_CAN_ALL_PERIPH(CANx));
//  972   
//  973   /* Get the LSB of the 9-bit CANx Transmit Error Counter(TEC) */
//  974   counter = (uint8_t)((CANx->ESR & CAN_ESR_TEC)>> 16);
CAN_GetLSBTransmitErrorCounter:
        LDR      R0,[R0, #+24]
//  975   
//  976   /* Return the LSB of the 9-bit CANx Transmit Error Counter(TEC) */
//  977   return counter;
        LSLS     R0,R0,#+8
        LSRS     R0,R0,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  978 }
//  979 
//  980 
//  981 /**
//  982   * @brief  Enables or disables the specified CANx interrupts.
//  983   * @param  CANx:   where x can be 1 or 2 to to select the CAN peripheral.
//  984   * @param  CAN_IT: specifies the CAN interrupt sources to be enabled or disabled.
//  985   *                 This parameter can be: 
//  986   *                 - CAN_IT_TME, 
//  987   *                 - CAN_IT_FMP0, 
//  988   *                 - CAN_IT_FF0,
//  989   *                 - CAN_IT_FOV0, 
//  990   *                 - CAN_IT_FMP1, 
//  991   *                 - CAN_IT_FF1,
//  992   *                 - CAN_IT_FOV1, 
//  993   *                 - CAN_IT_EWG, 
//  994   *                 - CAN_IT_EPV,
//  995   *                 - CAN_IT_LEC, 
//  996   *                 - CAN_IT_ERR, 
//  997   *                 - CAN_IT_WKU or 
//  998   *                 - CAN_IT_SLK.
//  999   * @param  NewState: new state of the CAN interrupts.
// 1000   *                   This parameter can be: ENABLE or DISABLE.
// 1001   * @retval None.
// 1002   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function CAN_ITConfig
          CFI NoCalls
        THUMB
// 1003 void CAN_ITConfig(CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState)
// 1004 {
// 1005   /* Check the parameters */
// 1006   assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1007   assert_param(IS_CAN_IT(CAN_IT));
// 1008   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1009 
// 1010   if (NewState != DISABLE)
CAN_ITConfig:
        CMP      R2,#+0
        LDR      R2,[R0, #+20]
        ITE      NE 
        ORRNE    R1,R1,R2
        BICEQ    R1,R2,R1
// 1011   {
// 1012     /* Enable the selected CANx interrupt */
// 1013     CANx->IER |= CAN_IT;
// 1014   }
// 1015   else
// 1016   {
// 1017     /* Disable the selected CANx interrupt */
// 1018     CANx->IER &= ~CAN_IT;
        STR      R1,[R0, #+20]
// 1019   }
// 1020 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
// 1021 /**
// 1022   * @brief  Checks whether the specified CAN flag is set or not.
// 1023   * @param  CANx:     where x can be 1 or 2 to to select the CAN peripheral.
// 1024   * @param  CAN_FLAG: specifies the flag to check.
// 1025   *                   This parameter can be one of the following flags: 
// 1026   *                  - CAN_FLAG_EWG
// 1027   *                  - CAN_FLAG_EPV 
// 1028   *                  - CAN_FLAG_BOF
// 1029   *                  - CAN_FLAG_RQCP0
// 1030   *                  - CAN_FLAG_RQCP1
// 1031   *                  - CAN_FLAG_RQCP2
// 1032   *                  - CAN_FLAG_FMP1   
// 1033   *                  - CAN_FLAG_FF1       
// 1034   *                  - CAN_FLAG_FOV1   
// 1035   *                  - CAN_FLAG_FMP0   
// 1036   *                  - CAN_FLAG_FF0       
// 1037   *                  - CAN_FLAG_FOV0   
// 1038   *                  - CAN_FLAG_WKU 
// 1039   *                  - CAN_FLAG_SLAK  
// 1040   *                  - CAN_FLAG_LEC       
// 1041   * @retval The new state of CAN_FLAG (SET or RESET).
// 1042   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function CAN_GetFlagStatus
          CFI NoCalls
        THUMB
// 1043 FlagStatus CAN_GetFlagStatus(CAN_TypeDef* CANx, uint32_t CAN_FLAG)
// 1044 {
CAN_GetFlagStatus:
        MOV      R2,R0
// 1045   FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
// 1046   
// 1047   /* Check the parameters */
// 1048   assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1049   assert_param(IS_CAN_GET_FLAG(CAN_FLAG));
// 1050   
// 1051 
// 1052   if((CAN_FLAG & CAN_FLAGS_ESR) != (uint32_t)RESET)
        TST      R1,#0xF00000
        IT       NE 
        LDRNE    R2,[R2, #+24]
// 1053   { 
// 1054     /* Check the status of the specified CAN flag */
// 1055     if ((CANx->ESR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
        BNE.N    ??CAN_GetFlagStatus_0
// 1056     { 
// 1057       /* CAN_FLAG is set */
// 1058       bitstatus = SET;
// 1059     }
// 1060     else
// 1061     { 
// 1062       /* CAN_FLAG is reset */
// 1063       bitstatus = RESET;
// 1064     }
// 1065   }
// 1066   else if((CAN_FLAG & CAN_FLAGS_MSR) != (uint32_t)RESET)
        LSLS     R3,R1,#+7
        IT       MI 
        LDRMI    R2,[R2, #+4]
// 1067   { 
// 1068     /* Check the status of the specified CAN flag */
// 1069     if ((CANx->MSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
        BMI.N    ??CAN_GetFlagStatus_0
// 1070     { 
// 1071       /* CAN_FLAG is set */
// 1072       bitstatus = SET;
// 1073     }
// 1074     else
// 1075     { 
// 1076       /* CAN_FLAG is reset */
// 1077       bitstatus = RESET;
// 1078     }
// 1079   }
// 1080   else if((CAN_FLAG & CAN_FLAGS_TSR) != (uint32_t)RESET)
        LSLS     R3,R1,#+4
        IT       MI 
        LDRMI    R2,[R2, #+8]
// 1081   { 
// 1082     /* Check the status of the specified CAN flag */
// 1083     if ((CANx->TSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
        BMI.N    ??CAN_GetFlagStatus_0
// 1084     { 
// 1085       /* CAN_FLAG is set */
// 1086       bitstatus = SET;
// 1087     }
// 1088     else
// 1089     { 
// 1090       /* CAN_FLAG is reset */
// 1091       bitstatus = RESET;
// 1092     }
// 1093   }
// 1094   else if((CAN_FLAG & CAN_FLAGS_RF0R) != (uint32_t)RESET)
        LSLS     R3,R1,#+6
        ITE      MI 
        LDRMI    R2,[R2, #+12]
        LDRPL    R2,[R2, #+16]
// 1095   { 
// 1096     /* Check the status of the specified CAN flag */
// 1097     if ((CANx->RF0R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
// 1098     { 
// 1099       /* CAN_FLAG is set */
// 1100       bitstatus = SET;
// 1101     }
// 1102     else
// 1103     { 
// 1104       /* CAN_FLAG is reset */
// 1105       bitstatus = RESET;
// 1106     }
// 1107   }
// 1108   else /* If(CAN_FLAG & CAN_FLAGS_RF1R != (uint32_t)RESET) */
// 1109   { 
// 1110     /* Check the status of the specified CAN flag */
// 1111     if ((uint32_t)(CANx->RF1R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
??CAN_GetFlagStatus_0:
        ANDS     R1,R1,R2
        LSLS     R1,R1,#+12
        IT       NE 
        MOVNE    R0,#+1
// 1112     { 
// 1113       /* CAN_FLAG is set */
// 1114       bitstatus = SET;
// 1115     }
// 1116     else
// 1117     { 
// 1118       /* CAN_FLAG is reset */
// 1119       bitstatus = RESET;
// 1120     }
// 1121   }
// 1122   /* Return the CAN_FLAG status */
// 1123   return  bitstatus;
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
// 1124 }
// 1125 
// 1126 /**
// 1127   * @brief  Clears the CAN's pending flags.
// 1128   * @param  CANx:     where x can be 1 or 2 to to select the CAN peripheral.
// 1129   * @param  CAN_FLAG: specifies the flag to clear.
// 1130   *                   This parameter can be one of the following flags: 
// 1131   *                    - CAN_FLAG_RQCP0
// 1132   *                    - CAN_FLAG_RQCP1
// 1133   *                    - CAN_FLAG_RQCP2
// 1134   *                    - CAN_FLAG_FF1       
// 1135   *                    - CAN_FLAG_FOV1   
// 1136   *                    - CAN_FLAG_FF0       
// 1137   *                    - CAN_FLAG_FOV0   
// 1138   *                    - CAN_FLAG_WKU   
// 1139   *                    - CAN_FLAG_SLAK    
// 1140   *                    - CAN_FLAG_LEC       
// 1141   * @retval None.
// 1142   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function CAN_ClearFlag
          CFI NoCalls
        THUMB
// 1143 void CAN_ClearFlag(CAN_TypeDef* CANx, uint32_t CAN_FLAG)
// 1144 {
// 1145   uint32_t flagtmp=0;
// 1146   /* Check the parameters */
// 1147   assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1148   assert_param(IS_CAN_CLEAR_FLAG(CAN_FLAG));
// 1149   
// 1150   if (CAN_FLAG == CAN_FLAG_LEC) /* ESR register */
CAN_ClearFlag:
        LDR.N    R2,??DataTable6_7  ;; 0x30f00070
        CMP      R1,R2
        BNE.N    ??CAN_ClearFlag_0
// 1151   {
// 1152     /* Clear the selected CAN flags */
// 1153     CANx->ESR = (uint32_t)RESET;
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
        BX       LR
// 1154   }
// 1155   else /* MSR or TSR or RF0R or RF1R */
// 1156   {
// 1157     flagtmp = CAN_FLAG & 0x000FFFFF;
??CAN_ClearFlag_0:
        LSLS     R2,R1,#+12
        LSRS     R2,R2,#+12
// 1158 
// 1159     if ((CAN_FLAG & CAN_FLAGS_RF0R)!=(uint32_t)RESET)
        LSLS     R3,R1,#+6
        BPL.N    ??CAN_ClearFlag_1
// 1160     {
// 1161       /* Receive Flags */
// 1162       CANx->RF0R = (uint32_t)(flagtmp);
        STR      R2,[R0, #+12]
        BX       LR
// 1163     }
// 1164     else if ((CAN_FLAG & CAN_FLAGS_RF1R)!=(uint32_t)RESET)
??CAN_ClearFlag_1:
        LSLS     R3,R1,#+5
        BPL.N    ??CAN_ClearFlag_2
// 1165     {
// 1166       /* Receive Flags */
// 1167       CANx->RF1R = (uint32_t)(flagtmp);
        STR      R2,[R0, #+16]
        BX       LR
// 1168     }
// 1169     else if ((CAN_FLAG & CAN_FLAGS_TSR)!=(uint32_t)RESET)
??CAN_ClearFlag_2:
        LSLS     R1,R1,#+4
        BPL.N    ??CAN_ClearFlag_3
// 1170     {
// 1171       /* Transmit Flags */
// 1172       CANx->TSR = (uint32_t)(flagtmp);
        STR      R2,[R0, #+8]
        BX       LR
// 1173     }
// 1174     else /* If((CAN_FLAG & CAN_FLAGS_MSR)!=(uint32_t)RESET) */
// 1175     {
// 1176       /* Operating mode Flags */
// 1177       CANx->MSR = (uint32_t)(flagtmp);
??CAN_ClearFlag_3:
        STR      R2,[R0, #+4]
// 1178     }
// 1179   }
// 1180 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
// 1181 
// 1182 /**
// 1183   * @brief  Checks whether the specified CANx interrupt has occurred or not.
// 1184   * @param  CANx:    where x can be 1 or 2 to to select the CAN peripheral.
// 1185   * @param  CAN_IT:  specifies the CAN interrupt source to check.
// 1186   *                  This parameter can be one of the following flags: 
// 1187   *                 -  CAN_IT_TME               
// 1188   *                 -  CAN_IT_FMP0              
// 1189   *                 -  CAN_IT_FF0               
// 1190   *                 -  CAN_IT_FOV0              
// 1191   *                 -  CAN_IT_FMP1              
// 1192   *                 -  CAN_IT_FF1               
// 1193   *                 -  CAN_IT_FOV1              
// 1194   *                 -  CAN_IT_WKU  
// 1195   *                 -  CAN_IT_SLK  
// 1196   *                 -  CAN_IT_EWG    
// 1197   *                 -  CAN_IT_EPV    
// 1198   *                 -  CAN_IT_BOF    
// 1199   *                 -  CAN_IT_LEC    
// 1200   *                 -  CAN_IT_ERR 
// 1201   * @retval The current state of CAN_IT (SET or RESET).
// 1202   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function CAN_GetITStatus
          CFI NoCalls
        THUMB
// 1203 ITStatus CAN_GetITStatus(CAN_TypeDef* CANx, uint32_t CAN_IT)
// 1204 {
CAN_GetITStatus:
        MOV      R2,R0
// 1205   ITStatus itstatus = RESET;
        MOVS     R0,#+0
// 1206   /* Check the parameters */
// 1207   assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1208   assert_param(IS_CAN_IT(CAN_IT));
// 1209   
// 1210   /* check the enable interrupt bit */
// 1211  if((CANx->IER & CAN_IT) != RESET)
        LDR      R3,[R2, #+20]
        TST      R3,R1
        BEQ.N    ??CAN_GetITStatus_0
// 1212  {
// 1213    /* in case the Interrupt is enabled, .... */
// 1214     switch (CAN_IT)
        CMP      R1,#+1
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R1,#+2
        BEQ.N    ??CAN_GetITStatus_2
        CMP      R1,#+4
        BEQ.N    ??CAN_GetITStatus_3
        CMP      R1,#+8
        BEQ.N    ??CAN_GetITStatus_4
        CMP      R1,#+16
        BEQ.N    ??CAN_GetITStatus_5
        CMP      R1,#+32
        BEQ.N    ??CAN_GetITStatus_6
        CMP      R1,#+64
        BEQ.N    ??CAN_GetITStatus_7
        CMP      R1,#+256
        BEQ.N    ??CAN_GetITStatus_8
        CMP      R1,#+512
        BEQ.N    ??CAN_GetITStatus_9
        CMP      R1,#+1024
        BEQ.N    ??CAN_GetITStatus_10
        CMP      R1,#+2048
        BEQ.N    ??CAN_GetITStatus_11
        CMP      R1,#+32768
        BEQ.N    ??CAN_GetITStatus_12
        CMP      R1,#+65536
        BEQ.N    ??CAN_GetITStatus_13
        CMP      R1,#+131072
        BEQ.N    ??CAN_GetITStatus_14
        BX       LR
// 1215     {
// 1216       case CAN_IT_TME:
// 1217                /* Check CAN_TSR_RQCPx bits */
// 1218 	             itstatus = CheckITStatus(CANx->TSR, CAN_TSR_RQCP0|CAN_TSR_RQCP1|CAN_TSR_RQCP2);  
??CAN_GetITStatus_1:
        LDR      R1,[R2, #+8]
        LDR.N    R2,??DataTable6_8  ;; 0x10101
        TST      R1,R2
        BEQ.N    ??CAN_GetITStatus_0
        B.N      ??CAN_GetITStatus_15
// 1219 	      break;
// 1220       case CAN_IT_FMP0:
// 1221                /* Check CAN_RF0R_FMP0 bit */
// 1222 	             itstatus = CheckITStatus(CANx->RF0R, CAN_RF0R_FMP0);  
??CAN_GetITStatus_2:
        LDR      R1,[R2, #+12]
        TST      R1,#0x3
        BEQ.N    ??CAN_GetITStatus_0
        B.N      ??CAN_GetITStatus_15
// 1223 	      break;
// 1224       case CAN_IT_FF0:
// 1225                /* Check CAN_RF0R_FULL0 bit */
// 1226                itstatus = CheckITStatus(CANx->RF0R, CAN_RF0R_FULL0);  
??CAN_GetITStatus_3:
        LDR      R1,[R2, #+12]
        LSLS     R1,R1,#+28
        B.N      ??CAN_GetITStatus_16
// 1227 	      break;
// 1228       case CAN_IT_FOV0:
// 1229                /* Check CAN_RF0R_FOVR0 bit */
// 1230                itstatus = CheckITStatus(CANx->RF0R, CAN_RF0R_FOVR0);  
??CAN_GetITStatus_4:
        LDR      R1,[R2, #+12]
        LSLS     R1,R1,#+27
        B.N      ??CAN_GetITStatus_16
// 1231 	      break;
// 1232       case CAN_IT_FMP1:
// 1233                /* Check CAN_RF1R_FMP1 bit */
// 1234                itstatus = CheckITStatus(CANx->RF1R, CAN_RF1R_FMP1);  
??CAN_GetITStatus_5:
        LDR      R1,[R2, #+16]
        TST      R1,#0x3
        BEQ.N    ??CAN_GetITStatus_0
        B.N      ??CAN_GetITStatus_15
// 1235 	      break;
// 1236       case CAN_IT_FF1:
// 1237                /* Check CAN_RF1R_FULL1 bit */
// 1238 	             itstatus = CheckITStatus(CANx->RF1R, CAN_RF1R_FULL1);  
??CAN_GetITStatus_6:
        LDR      R1,[R2, #+16]
        LSLS     R1,R1,#+28
        B.N      ??CAN_GetITStatus_16
// 1239 	      break;
// 1240       case CAN_IT_FOV1:
// 1241                /* Check CAN_RF1R_FOVR1 bit */
// 1242 	             itstatus = CheckITStatus(CANx->RF1R, CAN_RF1R_FOVR1);  
??CAN_GetITStatus_7:
        LDR      R1,[R2, #+16]
        LSLS     R1,R1,#+27
        B.N      ??CAN_GetITStatus_16
// 1243 	      break;
// 1244       case CAN_IT_WKU:
// 1245                /* Check CAN_MSR_WKUI bit */
// 1246                itstatus = CheckITStatus(CANx->MSR, CAN_MSR_WKUI);  
??CAN_GetITStatus_13:
        LDR      R1,[R2, #+4]
        LSLS     R1,R1,#+28
        B.N      ??CAN_GetITStatus_16
// 1247 	      break;
// 1248       case CAN_IT_SLK:
// 1249                /* Check CAN_MSR_SLAKI bit */
// 1250 	             itstatus = CheckITStatus(CANx->MSR, CAN_MSR_SLAKI);  
??CAN_GetITStatus_14:
        LDR      R1,[R2, #+4]
        LSLS     R1,R1,#+27
        B.N      ??CAN_GetITStatus_16
// 1251 	      break;
// 1252       case CAN_IT_EWG:
// 1253                /* Check CAN_ESR_EWGF bit */
// 1254 	             itstatus = CheckITStatus(CANx->ESR, CAN_ESR_EWGF);  
??CAN_GetITStatus_8:
        LDR      R1,[R2, #+24]
        LSLS     R1,R1,#+31
        B.N      ??CAN_GetITStatus_16
// 1255 	      break;
// 1256       case CAN_IT_EPV:
// 1257                /* Check CAN_ESR_EPVF bit */
// 1258 	             itstatus = CheckITStatus(CANx->ESR, CAN_ESR_EPVF);  
??CAN_GetITStatus_9:
        LDR      R1,[R2, #+24]
        LSLS     R1,R1,#+30
        B.N      ??CAN_GetITStatus_16
// 1259 	      break;
// 1260       case CAN_IT_BOF:
// 1261                /* Check CAN_ESR_BOFF bit */
// 1262 	             itstatus = CheckITStatus(CANx->ESR, CAN_ESR_BOFF);  
??CAN_GetITStatus_10:
        LDR      R1,[R2, #+24]
        B.N      ??CAN_GetITStatus_17
// 1263 	      break;
// 1264       case CAN_IT_LEC:
// 1265                /* Check CAN_ESR_LEC bit */
// 1266 	             itstatus = CheckITStatus(CANx->ESR, CAN_ESR_LEC);  
??CAN_GetITStatus_11:
        LDR      R1,[R2, #+24]
        TST      R1,#0x70
        BEQ.N    ??CAN_GetITStatus_0
        B.N      ??CAN_GetITStatus_15
// 1267 	      break;
// 1268       case CAN_IT_ERR:
// 1269                /* Check CAN_MSR_ERRI bit */ 
// 1270                itstatus = CheckITStatus(CANx->MSR, CAN_MSR_ERRI); 
??CAN_GetITStatus_12:
        LDR      R1,[R2, #+4]
??CAN_GetITStatus_17:
        LSLS     R1,R1,#+29
??CAN_GetITStatus_16:
        BPL.N    ??CAN_GetITStatus_0
??CAN_GetITStatus_15:
        MOVS     R0,#+1
// 1271 	      break;
// 1272       default :
// 1273                /* in case of error, return RESET */
// 1274               itstatus = RESET;
// 1275               break;
// 1276     }
// 1277   }
// 1278   else
// 1279   {
// 1280    /* in case the Interrupt is not enabled, return RESET */
// 1281     itstatus  = RESET;
// 1282   }
// 1283   
// 1284   /* Return the CAN_IT status */
// 1285   return  itstatus;
??CAN_GetITStatus_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
// 1286 }
// 1287 
// 1288 /**
// 1289   * @brief  Clears the CANx's interrupt pending bits.
// 1290   * @param  CANx:    where x can be 1 or 2 to to select the CAN peripheral.
// 1291   * @param  CAN_IT: specifies the interrupt pending bit to clear.
// 1292   *                  -  CAN_IT_TME                     
// 1293   *                  -  CAN_IT_FF0               
// 1294   *                  -  CAN_IT_FOV0                     
// 1295   *                  -  CAN_IT_FF1               
// 1296   *                  -  CAN_IT_FOV1              
// 1297   *                  -  CAN_IT_WKU  
// 1298   *                  -  CAN_IT_SLK  
// 1299   *                  -  CAN_IT_EWG    
// 1300   *                  -  CAN_IT_EPV    
// 1301   *                  -  CAN_IT_BOF    
// 1302   *                  -  CAN_IT_LEC    
// 1303   *                  -  CAN_IT_ERR 
// 1304   * @retval None.
// 1305   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function CAN_ClearITPendingBit
          CFI NoCalls
        THUMB
// 1306 void CAN_ClearITPendingBit(CAN_TypeDef* CANx, uint32_t CAN_IT)
// 1307 {
// 1308   /* Check the parameters */
// 1309   assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1310   assert_param(IS_CAN_CLEAR_IT(CAN_IT));
// 1311 
// 1312   switch (CAN_IT)
CAN_ClearITPendingBit:
        CMP      R1,#+1
        BEQ.N    ??CAN_ClearITPendingBit_0
        CMP      R1,#+4
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R1,#+8
        BEQ.N    ??CAN_ClearITPendingBit_2
        CMP      R1,#+32
        BEQ.N    ??CAN_ClearITPendingBit_3
        CMP      R1,#+64
        BEQ.N    ??CAN_ClearITPendingBit_4
        CMP      R1,#+256
        ITT      NE 
        CMPNE    R1,#+512
        CMPNE    R1,#+1024
        BEQ.N    ??CAN_ClearITPendingBit_5
        CMP      R1,#+2048
        IT       NE 
        CMPNE    R1,#+32768
        BEQ.N    ??CAN_ClearITPendingBit_6
        CMP      R1,#+65536
        BEQ.N    ??CAN_ClearITPendingBit_7
        CMP      R1,#+131072
        BEQ.N    ??CAN_ClearITPendingBit_8
        BX       LR
// 1313   {
// 1314       case CAN_IT_TME:
// 1315               /* Clear CAN_TSR_RQCPx (rc_w1)*/
// 1316 	      CANx->TSR = CAN_TSR_RQCP0|CAN_TSR_RQCP1|CAN_TSR_RQCP2;  
??CAN_ClearITPendingBit_0:
        LDR.N    R1,??DataTable6_8  ;; 0x10101
        STR      R1,[R0, #+8]
// 1317 	      break;
        BX       LR
// 1318       case CAN_IT_FF0:
// 1319               /* Clear CAN_RF0R_FULL0 (rc_w1)*/
// 1320 	      CANx->RF0R = CAN_RF0R_FULL0; 
??CAN_ClearITPendingBit_1:
        MOVS     R1,#+8
        B.N      ??CAN_ClearITPendingBit_9
// 1321 	      break;
// 1322       case CAN_IT_FOV0:
// 1323               /* Clear CAN_RF0R_FOVR0 (rc_w1)*/
// 1324 	      CANx->RF0R = CAN_RF0R_FOVR0; 
??CAN_ClearITPendingBit_2:
        MOVS     R1,#+16
??CAN_ClearITPendingBit_9:
        STR      R1,[R0, #+12]
// 1325 	      break;
        BX       LR
// 1326       case CAN_IT_FF1:
// 1327               /* Clear CAN_RF1R_FULL1 (rc_w1)*/
// 1328 	      CANx->RF1R = CAN_RF1R_FULL1;  
??CAN_ClearITPendingBit_3:
        MOVS     R1,#+8
        B.N      ??CAN_ClearITPendingBit_10
// 1329 	      break;
// 1330       case CAN_IT_FOV1:
// 1331               /* Clear CAN_RF1R_FOVR1 (rc_w1)*/
// 1332 	      CANx->RF1R = CAN_RF1R_FOVR1; 
??CAN_ClearITPendingBit_4:
        MOVS     R1,#+16
??CAN_ClearITPendingBit_10:
        STR      R1,[R0, #+16]
// 1333 	      break;
        BX       LR
// 1334       case CAN_IT_WKU:
// 1335               /* Clear CAN_MSR_WKUI (rc_w1)*/
// 1336 	      CANx->MSR = CAN_MSR_WKUI;  
??CAN_ClearITPendingBit_7:
        MOVS     R1,#+8
        B.N      ??CAN_ClearITPendingBit_11
// 1337 	      break;
// 1338       case CAN_IT_SLK:
// 1339               /* Clear CAN_MSR_SLAKI (rc_w1)*/ 
// 1340 	      CANx->MSR = CAN_MSR_SLAKI;   
??CAN_ClearITPendingBit_8:
        MOVS     R1,#+16
        B.N      ??CAN_ClearITPendingBit_11
// 1341 	      break;
// 1342       case CAN_IT_EWG:
// 1343               /* Clear CAN_MSR_ERRI (rc_w1) */
// 1344 	      CANx->MSR = CAN_MSR_ERRI;
// 1345               /* Note : the corresponding Flag is cleared by hardware depending 
// 1346                         of the CAN Bus status*/ 
// 1347 	      break;
// 1348       case CAN_IT_EPV:
// 1349               /* Clear CAN_MSR_ERRI (rc_w1) */
// 1350 	      CANx->MSR = CAN_MSR_ERRI; 
// 1351               /* Note : the corresponding Flag is cleared by hardware depending 
// 1352                         of the CAN Bus status*/
// 1353 	      break;
// 1354       case CAN_IT_BOF:
// 1355               /* Clear CAN_MSR_ERRI (rc_w1) */ 
// 1356 	      CANx->MSR = CAN_MSR_ERRI; 
// 1357               /* Note : the corresponding Flag is cleared by hardware depending 
// 1358                         of the CAN Bus status*/
// 1359 	      break;
// 1360       case CAN_IT_LEC:
// 1361               /*  Clear LEC bits */
// 1362 	      CANx->ESR = RESET; 
// 1363               /* Clear CAN_MSR_ERRI (rc_w1) */
// 1364 	      CANx->MSR = CAN_MSR_ERRI; 
// 1365 	      break;
// 1366       case CAN_IT_ERR:
// 1367               /*Clear LEC bits */
// 1368 	      CANx->ESR = RESET; 
??CAN_ClearITPendingBit_6:
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
// 1369               /* Clear CAN_MSR_ERRI (rc_w1) */
// 1370 	      CANx->MSR = CAN_MSR_ERRI; 
??CAN_ClearITPendingBit_5:
        MOVS     R1,#+4
??CAN_ClearITPendingBit_11:
        STR      R1,[R0, #+4]
// 1371 	      /* Note : BOFF, EPVF and EWGF Flags are cleared by hardware depending 
// 1372                   of the CAN Bus status*/
// 1373 	      break;
// 1374       default :
// 1375 	      break;
// 1376    }
// 1377 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40006400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40006600

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40006640

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0xffffc0f1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x4000003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x8000300

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x10030000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x30f00070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x10101

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1378 
// 1379 /**
// 1380   * @brief  Checks whether the CAN interrupt has occurred or not.
// 1381   * @param  CAN_Reg: specifies the CAN interrupt register to check.
// 1382   * @param  It_Bit:  specifies the interrupt source bit to check.
// 1383   * @retval The new state of the CAN Interrupt (SET or RESET).
// 1384   */
// 1385 static ITStatus CheckITStatus(uint32_t CAN_Reg, uint32_t It_Bit)
// 1386 {
// 1387   ITStatus pendingbitstatus = RESET;
// 1388   
// 1389   if ((CAN_Reg & It_Bit) != (uint32_t)RESET)
// 1390   {
// 1391     /* CAN_IT is set */
// 1392     pendingbitstatus = SET;
// 1393   }
// 1394   else
// 1395   {
// 1396     /* CAN_IT is reset */
// 1397     pendingbitstatus = RESET;
// 1398   }
// 1399   return pendingbitstatus;
// 1400 }
// 1401 
// 1402 
// 1403 /**
// 1404   * @}
// 1405   */
// 1406 
// 1407 /**
// 1408   * @}
// 1409   */
// 1410 
// 1411 /**
// 1412   * @}
// 1413   */
// 1414 
// 1415 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 1 762 bytes in section .text
// 
// 1 762 bytes of CODE memory
//
//Errors: none
//Warnings: none
