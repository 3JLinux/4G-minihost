///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:31
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_flash.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_flash.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f10x_flash.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC FLASH_ClearFlag
        PUBLIC FLASH_EnableWriteProtection
        PUBLIC FLASH_EraseAllBank1Pages
        PUBLIC FLASH_EraseAllPages
        PUBLIC FLASH_EraseOptionBytes
        PUBLIC FLASH_ErasePage
        PUBLIC FLASH_GetBank1Status
        PUBLIC FLASH_GetFlagStatus
        PUBLIC FLASH_GetPrefetchBufferStatus
        PUBLIC FLASH_GetReadOutProtectionStatus
        PUBLIC FLASH_GetStatus
        PUBLIC FLASH_GetUserOptionByte
        PUBLIC FLASH_GetWriteProtectionOptionByte
        PUBLIC FLASH_HalfCycleAccessCmd
        PUBLIC FLASH_ITConfig
        PUBLIC FLASH_Lock
        PUBLIC FLASH_LockBank1
        PUBLIC FLASH_PrefetchBufferCmd
        PUBLIC FLASH_ProgramHalfWord
        PUBLIC FLASH_ProgramOptionByteData
        PUBLIC FLASH_ProgramWord
        PUBLIC FLASH_ReadOutProtection
        PUBLIC FLASH_SetLatency
        PUBLIC FLASH_Unlock
        PUBLIC FLASH_UnlockBank1
        PUBLIC FLASH_UserOptionByteConfig
        PUBLIC FLASH_WaitForLastBank1Operation
        PUBLIC FLASH_WaitForLastOperation
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\StdPeriph_Driver\src\stm32f10x_flash.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_flash.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the FLASH firmware functions.
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
//   23 #include "stm32f10x_flash.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup FLASH 
//   30   * @brief FLASH driver modules
//   31   * @{
//   32   */ 
//   33 
//   34 /** @defgroup FLASH_Private_TypesDefinitions
//   35   * @{
//   36   */
//   37 
//   38 /**
//   39   * @}
//   40   */ 
//   41 
//   42 /** @defgroup FLASH_Private_Defines
//   43   * @{
//   44   */ 
//   45 
//   46 /* Flash Access Control Register bits */
//   47 #define ACR_LATENCY_Mask         ((uint32_t)0x00000038)
//   48 #define ACR_HLFCYA_Mask          ((uint32_t)0xFFFFFFF7)
//   49 #define ACR_PRFTBE_Mask          ((uint32_t)0xFFFFFFEF)
//   50 
//   51 /* Flash Access Control Register bits */
//   52 #define ACR_PRFTBS_Mask          ((uint32_t)0x00000020) 
//   53 
//   54 /* Flash Control Register bits */
//   55 #define CR_PG_Set                ((uint32_t)0x00000001)
//   56 #define CR_PG_Reset              ((uint32_t)0x00001FFE) 
//   57 #define CR_PER_Set               ((uint32_t)0x00000002)
//   58 #define CR_PER_Reset             ((uint32_t)0x00001FFD)
//   59 #define CR_MER_Set               ((uint32_t)0x00000004)
//   60 #define CR_MER_Reset             ((uint32_t)0x00001FFB)
//   61 #define CR_OPTPG_Set             ((uint32_t)0x00000010)
//   62 #define CR_OPTPG_Reset           ((uint32_t)0x00001FEF)
//   63 #define CR_OPTER_Set             ((uint32_t)0x00000020)
//   64 #define CR_OPTER_Reset           ((uint32_t)0x00001FDF)
//   65 #define CR_STRT_Set              ((uint32_t)0x00000040)
//   66 #define CR_LOCK_Set              ((uint32_t)0x00000080)
//   67 
//   68 /* FLASH Mask */
//   69 #define RDPRT_Mask               ((uint32_t)0x00000002)
//   70 #define WRP0_Mask                ((uint32_t)0x000000FF)
//   71 #define WRP1_Mask                ((uint32_t)0x0000FF00)
//   72 #define WRP2_Mask                ((uint32_t)0x00FF0000)
//   73 #define WRP3_Mask                ((uint32_t)0xFF000000)
//   74 #define OB_USER_BFB2             ((uint16_t)0x0008)
//   75 
//   76 /* FLASH Keys */
//   77 #define RDP_Key                  ((uint16_t)0x00A5)
//   78 #define FLASH_KEY1               ((uint32_t)0x45670123)
//   79 #define FLASH_KEY2               ((uint32_t)0xCDEF89AB)
//   80 
//   81 /* FLASH BANK address */
//   82 #define FLASH_BANK1_END_ADDRESS   ((uint32_t)0x807FFFF)
//   83 
//   84 /* Delay definition */   
//   85 #define EraseTimeout          ((uint32_t)0x000B0000)
//   86 #define ProgramTimeout        ((uint32_t)0x00002000)
//   87 /**
//   88   * @}
//   89   */ 
//   90 
//   91 /** @defgroup FLASH_Private_Macros
//   92   * @{
//   93   */
//   94 
//   95 /**
//   96   * @}
//   97   */ 
//   98 
//   99 /** @defgroup FLASH_Private_Variables
//  100   * @{
//  101   */
//  102 
//  103 /**
//  104   * @}
//  105   */ 
//  106 
//  107 /** @defgroup FLASH_Private_FunctionPrototypes
//  108   * @{
//  109   */
//  110   
//  111 /**
//  112   * @}
//  113   */
//  114 
//  115 /** @defgroup FLASH_Private_Functions
//  116   * @{
//  117   */
//  118 
//  119 /**
//  120 @code  
//  121  
//  122  This driver provides functions to configure and program the Flash memory of all STM32F10x devices,
//  123  including the latest STM32F10x_XL density devices. 
//  124 
//  125  STM32F10x_XL devices feature up to 1 Mbyte with dual bank architecture for read-while-write (RWW) capability:
//  126     - bank1: fixed size of 512 Kbytes (256 pages of 2Kbytes each)
//  127     - bank2: up to 512 Kbytes (up to 256 pages of 2Kbytes each)
//  128  While other STM32F10x devices features only one bank with memory up to 512 Kbytes.
//  129 
//  130  In version V3.3.0, some functions were updated and new ones were added to support
//  131  STM32F10x_XL devices. Thus some functions manages all devices, while other are 
//  132  dedicated for XL devices only.
//  133  
//  134  The table below presents the list of available functions depending on the used STM32F10x devices.  
//  135       
//  136    ***************************************************
//  137    * Legacy functions used for all STM32F10x devices *
//  138    ***************************************************
//  139    +----------------------------------------------------------------------------------------------------------------------------------+
//  140    |       Functions prototypes         |STM32F10x_XL|Other STM32F10x|    Comments                                                    |
//  141    |                                    |   devices  |  devices      |                                                                |
//  142    |----------------------------------------------------------------------------------------------------------------------------------|
//  143    |FLASH_SetLatency                    |    Yes     |      Yes      | No change                                                      |
//  144    |----------------------------------------------------------------------------------------------------------------------------------|
//  145    |FLASH_HalfCycleAccessCmd            |    Yes     |      Yes      | No change                                                      |
//  146    |----------------------------------------------------------------------------------------------------------------------------------|
//  147    |FLASH_PrefetchBufferCmd             |    Yes     |      Yes      | No change                                                      |
//  148    |----------------------------------------------------------------------------------------------------------------------------------|
//  149    |FLASH_Unlock                        |    Yes     |      Yes      | - For STM32F10X_XL devices: unlock Bank1 and Bank2.            |
//  150    |                                    |            |               | - For other devices: unlock Bank1 and it is equivalent         |
//  151    |                                    |            |               |   to FLASH_UnlockBank1 function.                               |
//  152    |----------------------------------------------------------------------------------------------------------------------------------|
//  153    |FLASH_Lock                          |    Yes     |      Yes      | - For STM32F10X_XL devices: lock Bank1 and Bank2.              |
//  154    |                                    |            |               | - For other devices: lock Bank1 and it is equivalent           |
//  155    |                                    |            |               |   to FLASH_LockBank1 function.                                 |
//  156    |----------------------------------------------------------------------------------------------------------------------------------|
//  157    |FLASH_ErasePage                     |    Yes     |      Yes      | - For STM32F10x_XL devices: erase a page in Bank1 and Bank2    |
//  158    |                                    |            |               | - For other devices: erase a page in Bank1                     |
//  159    |----------------------------------------------------------------------------------------------------------------------------------|
//  160    |FLASH_EraseAllPages                 |    Yes     |      Yes      | - For STM32F10x_XL devices: erase all pages in Bank1 and Bank2 |
//  161    |                                    |            |               | - For other devices: erase all pages in Bank1                  |
//  162    |----------------------------------------------------------------------------------------------------------------------------------|
//  163    |FLASH_EraseOptionBytes              |    Yes     |      Yes      | No change                                                      |
//  164    |----------------------------------------------------------------------------------------------------------------------------------|
//  165    |FLASH_ProgramWord                   |    Yes     |      Yes      | Updated to program up to 1MByte (depending on the used device) |
//  166    |----------------------------------------------------------------------------------------------------------------------------------|
//  167    |FLASH_ProgramHalfWord               |    Yes     |      Yes      | Updated to program up to 1MByte (depending on the used device) |
//  168    |----------------------------------------------------------------------------------------------------------------------------------|
//  169    |FLASH_ProgramOptionByteData         |    Yes     |      Yes      | No change                                                      |
//  170    |----------------------------------------------------------------------------------------------------------------------------------|
//  171    |FLASH_EnableWriteProtection         |    Yes     |      Yes      | No change                                                      |
//  172    |----------------------------------------------------------------------------------------------------------------------------------|
//  173    |FLASH_ReadOutProtection             |    Yes     |      Yes      | No change                                                      |
//  174    |----------------------------------------------------------------------------------------------------------------------------------|
//  175    |FLASH_UserOptionByteConfig          |    Yes     |      Yes      | No change                                                      |
//  176    |----------------------------------------------------------------------------------------------------------------------------------|
//  177    |FLASH_GetUserOptionByte             |    Yes     |      Yes      | No change                                                      |
//  178    |----------------------------------------------------------------------------------------------------------------------------------|
//  179    |FLASH_GetWriteProtectionOptionByte  |    Yes     |      Yes      | No change                                                      |
//  180    |----------------------------------------------------------------------------------------------------------------------------------|
//  181    |FLASH_GetReadOutProtectionStatus    |    Yes     |      Yes      | No change                                                      |
//  182    |----------------------------------------------------------------------------------------------------------------------------------|
//  183    |FLASH_GetPrefetchBufferStatus       |    Yes     |      Yes      | No change                                                      |
//  184    |----------------------------------------------------------------------------------------------------------------------------------|
//  185    |FLASH_ITConfig                      |    Yes     |      Yes      | - For STM32F10x_XL devices: enable Bank1 and Bank2's interrupts|
//  186    |                                    |            |               | - For other devices: enable Bank1's interrupts                 |
//  187    |----------------------------------------------------------------------------------------------------------------------------------|
//  188    |FLASH_GetFlagStatus                 |    Yes     |      Yes      | - For STM32F10x_XL devices: return Bank1 and Bank2's flag status|
//  189    |                                    |            |               | - For other devices: return Bank1's flag status                |
//  190    |----------------------------------------------------------------------------------------------------------------------------------|
//  191    |FLASH_ClearFlag                     |    Yes     |      Yes      | - For STM32F10x_XL devices: clear Bank1 and Bank2's flag       |
//  192    |                                    |            |               | - For other devices: clear Bank1's flag                        |
//  193    |----------------------------------------------------------------------------------------------------------------------------------|
//  194    |FLASH_GetStatus                     |    Yes     |      Yes      | - Return the status of Bank1 (for all devices)                 |
//  195    |                                    |            |               |   equivalent to FLASH_GetBank1Status function                  |
//  196    |----------------------------------------------------------------------------------------------------------------------------------|
//  197    |FLASH_WaitForLastOperation          |    Yes     |      Yes      | - Wait for Bank1 last operation (for all devices)              |
//  198    |                                    |            |               |   equivalent to: FLASH_WaitForLastBank1Operation function      |
//  199    +----------------------------------------------------------------------------------------------------------------------------------+
//  200 
//  201    ************************************************************************************************************************
//  202    * New functions used for all STM32F10x devices to manage Bank1:                                                        *
//  203    *   - These functions are mainly useful for STM32F10x_XL density devices, to have separate control for Bank1 and bank2 *
//  204    *   - For other devices, these functions are optional (covered by functions listed above)                              *
//  205    ************************************************************************************************************************
//  206    +----------------------------------------------------------------------------------------------------------------------------------+
//  207    |       Functions prototypes         |STM32F10x_XL|Other STM32F10x|    Comments                                                    |
//  208    |                                    |   devices  |  devices      |                                                                |
//  209    |----------------------------------------------------------------------------------------------------------------------------------|
//  210    | FLASH_UnlockBank1                  |    Yes     |      Yes      | - Unlock Bank1                                                 |
//  211    |----------------------------------------------------------------------------------------------------------------------------------|
//  212    |FLASH_LockBank1                     |    Yes     |      Yes      | - Lock Bank1                                                   |
//  213    |----------------------------------------------------------------------------------------------------------------------------------|
//  214    | FLASH_EraseAllBank1Pages           |    Yes     |      Yes      | - Erase all pages in Bank1                                     |
//  215    |----------------------------------------------------------------------------------------------------------------------------------|
//  216    | FLASH_GetBank1Status               |    Yes     |      Yes      | - Return the status of Bank1                                   |
//  217    |----------------------------------------------------------------------------------------------------------------------------------|
//  218    | FLASH_WaitForLastBank1Operation    |    Yes     |      Yes      | - Wait for Bank1 last operation                                |
//  219    +----------------------------------------------------------------------------------------------------------------------------------+
//  220 
//  221    *****************************************************************************
//  222    * New Functions used only with STM32F10x_XL density devices to manage Bank2 *
//  223    *****************************************************************************
//  224    +----------------------------------------------------------------------------------------------------------------------------------+
//  225    |       Functions prototypes         |STM32F10x_XL|Other STM32F10x|    Comments                                                    |
//  226    |                                    |   devices  |  devices      |                                                                |
//  227    |----------------------------------------------------------------------------------------------------------------------------------|
//  228    | FLASH_UnlockBank2                  |    Yes     |      No       | - Unlock Bank2                                                 |
//  229    |----------------------------------------------------------------------------------------------------------------------------------|
//  230    |FLASH_LockBank2                     |    Yes     |      No       | - Lock Bank2                                                   |
//  231    |----------------------------------------------------------------------------------------------------------------------------------|
//  232    | FLASH_EraseAllBank2Pages           |    Yes     |      No       | - Erase all pages in Bank2                                     |
//  233    |----------------------------------------------------------------------------------------------------------------------------------|
//  234    | FLASH_GetBank2Status               |    Yes     |      No       | - Return the status of Bank2                                   |
//  235    |----------------------------------------------------------------------------------------------------------------------------------|
//  236    | FLASH_WaitForLastBank2Operation    |    Yes     |      No       | - Wait for Bank2 last operation                                |
//  237    |----------------------------------------------------------------------------------------------------------------------------------|
//  238    | FLASH_BootConfig                   |    Yes     |      No       | - Configure to boot from Bank1 or Bank2                        |
//  239    +----------------------------------------------------------------------------------------------------------------------------------+
//  240 @endcode
//  241 */
//  242 
//  243 
//  244 /**
//  245   * @brief  Sets the code latency value.
//  246   * @note   This function can be used for all STM32F10x devices.
//  247   * @param  FLASH_Latency: specifies the FLASH Latency value.
//  248   *   This parameter can be one of the following values:
//  249   *     @arg FLASH_Latency_0: FLASH Zero Latency cycle
//  250   *     @arg FLASH_Latency_1: FLASH One Latency cycle
//  251   *     @arg FLASH_Latency_2: FLASH Two Latency cycles
//  252   * @retval None
//  253   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function FLASH_SetLatency
          CFI NoCalls
        THUMB
//  254 void FLASH_SetLatency(uint32_t FLASH_Latency)
//  255 {
//  256   uint32_t tmpreg = 0;
//  257   
//  258   /* Check the parameters */
//  259   assert_param(IS_FLASH_LATENCY(FLASH_Latency));
//  260   
//  261   /* Read the ACR register */
//  262   tmpreg = FLASH->ACR;  
FLASH_SetLatency:
        LDR.W    R1,??DataTable23  ;; 0x40022000
        LDR      R2,[R1, #+0]
//  263   
//  264   /* Sets the Latency value */
//  265   tmpreg &= ACR_LATENCY_Mask;
//  266   tmpreg |= FLASH_Latency;
//  267   
//  268   /* Write the ACR register */
//  269   FLASH->ACR = tmpreg;
        AND      R2,R2,#0x38
        B.N      ??Subroutine2_0
          CFI EndBlock cfiBlock0
//  270 }
//  271 
//  272 /**
//  273   * @brief  Enables or disables the Half cycle flash access.
//  274   * @note   This function can be used for all STM32F10x devices.
//  275   * @param  FLASH_HalfCycleAccess: specifies the FLASH Half cycle Access mode.
//  276   *   This parameter can be one of the following values:
//  277   *     @arg FLASH_HalfCycleAccess_Enable: FLASH Half Cycle Enable
//  278   *     @arg FLASH_HalfCycleAccess_Disable: FLASH Half Cycle Disable
//  279   * @retval None
//  280   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function FLASH_HalfCycleAccessCmd
          CFI NoCalls
        THUMB
//  281 void FLASH_HalfCycleAccessCmd(uint32_t FLASH_HalfCycleAccess)
//  282 {
//  283   /* Check the parameters */
//  284   assert_param(IS_FLASH_HALFCYCLEACCESS_STATE(FLASH_HalfCycleAccess));
//  285   
//  286   /* Enable or disable the Half cycle access */
//  287   FLASH->ACR &= ACR_HLFCYA_Mask;
FLASH_HalfCycleAccessCmd:
        LDR.W    R1,??DataTable23  ;; 0x40022000
        LDR      R2,[R1, #+0]
        BIC      R2,R2,#0x8
        B.N      ?Subroutine2
          CFI EndBlock cfiBlock1
//  288   FLASH->ACR |= FLASH_HalfCycleAccess;
//  289 }
//  290 
//  291 /**
//  292   * @brief  Enables or disables the Prefetch Buffer.
//  293   * @note   This function can be used for all STM32F10x devices.
//  294   * @param  FLASH_PrefetchBuffer: specifies the Prefetch buffer status.
//  295   *   This parameter can be one of the following values:
//  296   *     @arg FLASH_PrefetchBuffer_Enable: FLASH Prefetch Buffer Enable
//  297   *     @arg FLASH_PrefetchBuffer_Disable: FLASH Prefetch Buffer Disable
//  298   * @retval None
//  299   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function FLASH_PrefetchBufferCmd
          CFI NoCalls
        THUMB
//  300 void FLASH_PrefetchBufferCmd(uint32_t FLASH_PrefetchBuffer)
//  301 {
//  302   /* Check the parameters */
//  303   assert_param(IS_FLASH_PREFETCHBUFFER_STATE(FLASH_PrefetchBuffer));
//  304   
//  305   /* Enable or disable the Prefetch Buffer */
//  306   FLASH->ACR &= ACR_PRFTBE_Mask;
FLASH_PrefetchBufferCmd:
        LDR.W    R1,??DataTable23  ;; 0x40022000
        LDR      R2,[R1, #+0]
        BIC      R2,R2,#0x10
          CFI EndBlock cfiBlock2
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  307   FLASH->ACR |= FLASH_PrefetchBuffer;
//  308 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls FLASH_PrefetchBufferCmd
          CFI NoCalls FLASH_SetLatency
          CFI NoCalls FLASH_HalfCycleAccessCmd
        THUMB
?Subroutine2:
        STR      R2,[R1, #+0]
        LDR      R2,[R1, #+0]
??Subroutine2_0:
        ORRS     R0,R0,R2
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  309 
//  310 /**
//  311   * @brief  Unlocks the FLASH Program Erase Controller.
//  312   * @note   This function can be used for all STM32F10x devices.
//  313   *         - For STM32F10X_XL devices this function unlocks Bank1 and Bank2.
//  314   *         - For all other devices it unlocks Bank1 and it is equivalent 
//  315   *           to FLASH_UnlockBank1 function.. 
//  316   * @param  None
//  317   * @retval None
//  318   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function FLASH_Unlock
          CFI NoCalls
        THUMB
//  319 void FLASH_Unlock(void)
//  320 {
//  321   /* Authorize the FPEC of Bank1 Access */
//  322   FLASH->KEYR = FLASH_KEY1;
FLASH_Unlock:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock4
//  323   FLASH->KEYR = FLASH_KEY2;
//  324 
//  325 #ifdef STM32F10X_XL
//  326   /* Authorize the FPEC of Bank2 Access */
//  327   FLASH->KEYR2 = FLASH_KEY1;
//  328   FLASH->KEYR2 = FLASH_KEY2;
//  329 #endif /* STM32F10X_XL */
//  330 }
//  331 /**
//  332   * @brief  Unlocks the FLASH Bank1 Program Erase Controller.
//  333   * @note   This function can be used for all STM32F10x devices.
//  334   *         - For STM32F10X_XL devices this function unlocks Bank1.
//  335   *         - For all other devices it unlocks Bank1 and it is 
//  336   *           equivalent to FLASH_Unlock function.
//  337   * @param  None
//  338   * @retval None
//  339   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function FLASH_UnlockBank1
          CFI NoCalls
        THUMB
//  340 void FLASH_UnlockBank1(void)
FLASH_UnlockBank1:
        Nop      
          CFI EndBlock cfiBlock5
//  341 {
//  342   /* Authorize the FPEC of Bank1 Access */
//  343   FLASH->KEYR = FLASH_KEY1;
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls FLASH_Unlock
          CFI NoCalls FLASH_UnlockBank1
        THUMB
?Subroutine0:
        LDR.W    R0,??DataTable23_1  ;; 0x40022004
        LDR.W    R1,??DataTable23_2  ;; 0x45670123
        STR      R1,[R0, #+0]
//  344   FLASH->KEYR = FLASH_KEY2;
        LDR.W    R1,??DataTable23_3  ;; 0xcdef89ab
        STR      R1,[R0, #+0]
//  345 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  346 
//  347 #ifdef STM32F10X_XL
//  348 /**
//  349   * @brief  Unlocks the FLASH Bank2 Program Erase Controller.
//  350   * @note   This function can be used only for STM32F10X_XL density devices.
//  351   * @param  None
//  352   * @retval None
//  353   */
//  354 void FLASH_UnlockBank2(void)
//  355 {
//  356   /* Authorize the FPEC of Bank2 Access */
//  357   FLASH->KEYR2 = FLASH_KEY1;
//  358   FLASH->KEYR2 = FLASH_KEY2;
//  359 
//  360 }
//  361 #endif /* STM32F10X_XL */
//  362 
//  363 /**
//  364   * @brief  Locks the FLASH Program Erase Controller.
//  365   * @note   This function can be used for all STM32F10x devices.
//  366   *         - For STM32F10X_XL devices this function Locks Bank1 and Bank2.
//  367   *         - For all other devices it Locks Bank1 and it is equivalent 
//  368   *           to FLASH_LockBank1 function.
//  369   * @param  None
//  370   * @retval None
//  371   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function FLASH_Lock
          CFI NoCalls
        THUMB
//  372 void FLASH_Lock(void)
//  373 {
//  374   /* Set the Lock Bit to lock the FPEC and the CR of  Bank1 */
//  375   FLASH->CR |= CR_LOCK_Set;
FLASH_Lock:
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock7
//  376 
//  377 #ifdef STM32F10X_XL
//  378   /* Set the Lock Bit to lock the FPEC and the CR of  Bank2 */
//  379   FLASH->CR2 |= CR_LOCK_Set;
//  380 #endif /* STM32F10X_XL */
//  381 }
//  382 
//  383 /**
//  384   * @brief  Locks the FLASH Bank1 Program Erase Controller.
//  385   * @note   this function can be used for all STM32F10x devices.
//  386   *         - For STM32F10X_XL devices this function Locks Bank1.
//  387   *         - For all other devices it Locks Bank1 and it is equivalent 
//  388   *           to FLASH_Lock function.
//  389   * @param  None
//  390   * @retval None
//  391   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function FLASH_LockBank1
          CFI NoCalls
        THUMB
//  392 void FLASH_LockBank1(void)
FLASH_LockBank1:
        Nop      
          CFI EndBlock cfiBlock8
//  393 {
//  394   /* Set the Lock Bit to lock the FPEC and the CR of  Bank1 */
//  395   FLASH->CR |= CR_LOCK_Set;
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls FLASH_Lock
          CFI NoCalls FLASH_LockBank1
        THUMB
?Subroutine1:
        LDR.W    R0,??DataTable23_4  ;; 0x40022010
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x80
        STR      R1,[R0, #+0]
//  396 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  397 
//  398 #ifdef STM32F10X_XL
//  399 /**
//  400   * @brief  Locks the FLASH Bank2 Program Erase Controller.
//  401   * @note   This function can be used only for STM32F10X_XL density devices.
//  402   * @param  None
//  403   * @retval None
//  404   */
//  405 void FLASH_LockBank2(void)
//  406 {
//  407   /* Set the Lock Bit to lock the FPEC and the CR of  Bank2 */
//  408   FLASH->CR2 |= CR_LOCK_Set;
//  409 }
//  410 #endif /* STM32F10X_XL */
//  411 
//  412 /**
//  413   * @brief  Erases a specified FLASH page.
//  414   * @note   This function can be used for all STM32F10x devices.
//  415   * @param  Page_Address: The page address to be erased.
//  416   * @retval FLASH Status: The returned value can be: FLASH_BUSY, FLASH_ERROR_PG,
//  417   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
//  418   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function FLASH_ErasePage
        THUMB
//  419 FLASH_Status FLASH_ErasePage(uint32_t Page_Address)
//  420 {
FLASH_ErasePage:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R5,R0
//  421   FLASH_Status status = FLASH_COMPLETE;
//  422   /* Check the parameters */
//  423   assert_param(IS_FLASH_ADDRESS(Page_Address));
//  424 
//  425 #ifdef STM32F10X_XL
//  426   if(Page_Address < FLASH_BANK1_END_ADDRESS)  
//  427   {
//  428     /* Wait for last operation to be completed */
//  429     status = FLASH_WaitForLastBank1Operation(EraseTimeout);
//  430     if(status == FLASH_COMPLETE)
//  431     { 
//  432       /* if the previous operation is completed, proceed to erase the page */
//  433       FLASH->CR|= CR_PER_Set;
//  434       FLASH->AR = Page_Address; 
//  435       FLASH->CR|= CR_STRT_Set;
//  436     
//  437       /* Wait for last operation to be completed */
//  438       status = FLASH_WaitForLastBank1Operation(EraseTimeout);
//  439 
//  440       /* Disable the PER Bit */
//  441       FLASH->CR &= CR_PER_Reset;
//  442     }
//  443   }
//  444   else
//  445   {
//  446     /* Wait for last operation to be completed */
//  447     status = FLASH_WaitForLastBank2Operation(EraseTimeout);
//  448     if(status == FLASH_COMPLETE)
//  449     { 
//  450       /* if the previous operation is completed, proceed to erase the page */
//  451       FLASH->CR2|= CR_PER_Set;
//  452       FLASH->AR2 = Page_Address; 
//  453       FLASH->CR2|= CR_STRT_Set;
//  454     
//  455       /* Wait for last operation to be completed */
//  456       status = FLASH_WaitForLastBank2Operation(EraseTimeout);
//  457       
//  458       /* Disable the PER Bit */
//  459       FLASH->CR2 &= CR_PER_Reset;
//  460     }
//  461   }
//  462 #else
//  463   /* Wait for last operation to be completed */
//  464   status = FLASH_WaitForLastOperation(EraseTimeout);
        MOV      R0,#+720896
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  465   
//  466   if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_ErasePage_0
//  467   { 
//  468     /* if the previous operation is completed, proceed to erase the page */
//  469     FLASH->CR|= CR_PER_Set;
        LDR.W    R4,??DataTable23_4  ;; 0x40022010
        LDR      R0,[R4, #+0]
        ORR      R0,R0,#0x2
        STR      R0,[R4, #+0]
//  470     FLASH->AR = Page_Address; 
        STR      R5,[R4, #+4]
//  471     FLASH->CR|= CR_STRT_Set;
        LDR      R0,[R4, #+0]
        ORR      R0,R0,#0x40
        STR      R0,[R4, #+0]
//  472     
//  473     /* Wait for last operation to be completed */
//  474     status = FLASH_WaitForLastOperation(EraseTimeout);
        MOV      R0,#+720896
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  475     
//  476     /* Disable the PER Bit */
//  477     FLASH->CR &= CR_PER_Reset;
        LDR      R1,[R4, #+0]
        MOVW     R2,#+8189
        ANDS     R1,R2,R1
        STR      R1,[R4, #+0]
//  478   }
//  479 #endif /* STM32F10X_XL */
//  480 
//  481   /* Return the Erase Status */
//  482   return status;
??FLASH_ErasePage_0:
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock10
//  483 }
//  484 
//  485 /**
//  486   * @brief  Erases all FLASH pages.
//  487   * @note   This function can be used for all STM32F10x devices.
//  488   * @param  None
//  489   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
//  490   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
//  491   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function FLASH_EraseAllPages
        THUMB
//  492 FLASH_Status FLASH_EraseAllPages(void)
//  493 {
FLASH_EraseAllPages:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  494   FLASH_Status status = FLASH_COMPLETE;
//  495 
//  496 #ifdef STM32F10X_XL
//  497   /* Wait for last operation to be completed */
//  498   status = FLASH_WaitForLastBank1Operation(EraseTimeout);
//  499   
//  500   if(status == FLASH_COMPLETE)
//  501   {
//  502     /* if the previous operation is completed, proceed to erase all pages */
//  503      FLASH->CR |= CR_MER_Set;
//  504      FLASH->CR |= CR_STRT_Set;
//  505     
//  506     /* Wait for last operation to be completed */
//  507     status = FLASH_WaitForLastBank1Operation(EraseTimeout);
//  508     
//  509     /* Disable the MER Bit */
//  510     FLASH->CR &= CR_MER_Reset;
//  511   }    
//  512   if(status == FLASH_COMPLETE)
//  513   {
//  514     /* if the previous operation is completed, proceed to erase all pages */
//  515      FLASH->CR2 |= CR_MER_Set;
//  516      FLASH->CR2 |= CR_STRT_Set;
//  517     
//  518     /* Wait for last operation to be completed */
//  519     status = FLASH_WaitForLastBank2Operation(EraseTimeout);
//  520     
//  521     /* Disable the MER Bit */
//  522     FLASH->CR2 &= CR_MER_Reset;
//  523   }
//  524 #else
//  525   /* Wait for last operation to be completed */
//  526   status = FLASH_WaitForLastOperation(EraseTimeout);
        MOV      R0,#+720896
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  527   if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_EraseAllPages_0
//  528   {
//  529     /* if the previous operation is completed, proceed to erase all pages */
//  530      FLASH->CR |= CR_MER_Set;
        LDR.W    R4,??DataTable23_4  ;; 0x40022010
        LDR      R0,[R4, #+0]
        ORR      R0,R0,#0x4
        STR      R0,[R4, #+0]
//  531      FLASH->CR |= CR_STRT_Set;
        LDR      R0,[R4, #+0]
        ORR      R0,R0,#0x40
        STR      R0,[R4, #+0]
//  532     
//  533     /* Wait for last operation to be completed */
//  534     status = FLASH_WaitForLastOperation(EraseTimeout);
        MOV      R0,#+720896
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  535 
//  536     /* Disable the MER Bit */
//  537     FLASH->CR &= CR_MER_Reset;
        LDR      R1,[R4, #+0]
        MOVW     R2,#+8187
        ANDS     R1,R2,R1
        STR      R1,[R4, #+0]
//  538   }
//  539 #endif /* STM32F10X_XL */
//  540 
//  541   /* Return the Erase Status */
//  542   return status;
??FLASH_EraseAllPages_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock11
//  543 }
//  544 
//  545 /**
//  546   * @brief  Erases all Bank1 FLASH pages.
//  547   * @note   This function can be used for all STM32F10x devices.
//  548   *         - For STM32F10X_XL devices this function erases all Bank1 pages.
//  549   *         - For all other devices it erases all Bank1 pages and it is equivalent 
//  550   *           to FLASH_EraseAllPages function.
//  551   * @param  None
//  552   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
//  553   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
//  554   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function FLASH_EraseAllBank1Pages
        THUMB
//  555 FLASH_Status FLASH_EraseAllBank1Pages(void)
//  556 {
FLASH_EraseAllBank1Pages:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  557   FLASH_Status status = FLASH_COMPLETE;
//  558   /* Wait for last operation to be completed */
//  559   status = FLASH_WaitForLastBank1Operation(EraseTimeout);
        MOV      R0,#+720896
          CFI FunCall FLASH_WaitForLastBank1Operation
        BL       FLASH_WaitForLastBank1Operation
//  560   
//  561   if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_EraseAllBank1Pages_0
//  562   {
//  563     /* if the previous operation is completed, proceed to erase all pages */
//  564      FLASH->CR |= CR_MER_Set;
        LDR.W    R4,??DataTable23_4  ;; 0x40022010
        LDR      R0,[R4, #+0]
        ORR      R0,R0,#0x4
        STR      R0,[R4, #+0]
//  565      FLASH->CR |= CR_STRT_Set;
        LDR      R0,[R4, #+0]
        ORR      R0,R0,#0x40
        STR      R0,[R4, #+0]
//  566     
//  567     /* Wait for last operation to be completed */
//  568     status = FLASH_WaitForLastBank1Operation(EraseTimeout);
        MOV      R0,#+720896
          CFI FunCall FLASH_WaitForLastBank1Operation
        BL       FLASH_WaitForLastBank1Operation
//  569     
//  570     /* Disable the MER Bit */
//  571     FLASH->CR &= CR_MER_Reset;
        LDR      R1,[R4, #+0]
        MOVW     R2,#+8187
        ANDS     R1,R2,R1
        STR      R1,[R4, #+0]
//  572   }    
//  573   /* Return the Erase Status */
//  574   return status;
??FLASH_EraseAllBank1Pages_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock12
//  575 }
//  576 
//  577 #ifdef STM32F10X_XL
//  578 /**
//  579   * @brief  Erases all Bank2 FLASH pages.
//  580   * @note   This function can be used only for STM32F10x_XL density devices.
//  581   * @param  None
//  582   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
//  583   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
//  584   */
//  585 FLASH_Status FLASH_EraseAllBank2Pages(void)
//  586 {
//  587   FLASH_Status status = FLASH_COMPLETE;
//  588   /* Wait for last operation to be completed */
//  589   status = FLASH_WaitForLastBank2Operation(EraseTimeout);
//  590   
//  591   if(status == FLASH_COMPLETE)
//  592   {
//  593     /* if the previous operation is completed, proceed to erase all pages */
//  594      FLASH->CR2 |= CR_MER_Set;
//  595      FLASH->CR2 |= CR_STRT_Set;
//  596     
//  597     /* Wait for last operation to be completed */
//  598     status = FLASH_WaitForLastBank2Operation(EraseTimeout);
//  599 
//  600     /* Disable the MER Bit */
//  601     FLASH->CR2 &= CR_MER_Reset;
//  602   }    
//  603   /* Return the Erase Status */
//  604   return status;
//  605 }
//  606 #endif /* STM32F10X_XL */
//  607 
//  608 /**
//  609   * @brief  Erases the FLASH option bytes.
//  610   * @note   This functions erases all option bytes except the Read protection (RDP). 
//  611   * @note   This function can be used for all STM32F10x devices.
//  612   * @param  None
//  613   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
//  614   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
//  615   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function FLASH_EraseOptionBytes
        THUMB
//  616 FLASH_Status FLASH_EraseOptionBytes(void)
//  617 {
FLASH_EraseOptionBytes:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  618   uint16_t rdptmp = RDP_Key;
//  619 
//  620   FLASH_Status status = FLASH_COMPLETE;
//  621 
//  622   /* Get the actual read protection Option Byte value */ 
//  623   if(FLASH_GetReadOutProtectionStatus() != RESET)
        LDR.W    R4,??DataTable23_5  ;; 0x40022008
        LDR      R0,[R4, #+20]
        MOVS     R5,#+165
        LSLS     R0,R0,#+30
        IT       MI 
        MOVMI    R5,#+0
//  624   {
//  625     rdptmp = 0x00;  
//  626   }
//  627 
//  628   /* Wait for last operation to be completed */
//  629   status = FLASH_WaitForLastOperation(EraseTimeout);
        MOV      R0,#+720896
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  630   if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_EraseOptionBytes_0
//  631   {
//  632     /* Authorize the small information block programming */
//  633     FLASH->OPTKEYR = FLASH_KEY1;
        LDR.W    R0,??DataTable23_2  ;; 0x45670123
        STR      R0,[R4, #+0]
//  634     FLASH->OPTKEYR = FLASH_KEY2;
        LDR.W    R0,??DataTable23_3  ;; 0xcdef89ab
        STR      R0,[R4, #+0]
//  635     
//  636     /* if the previous operation is completed, proceed to erase the option bytes */
//  637     FLASH->CR |= CR_OPTER_Set;
        LDR      R0,[R4, #+8]
        ORR      R0,R0,#0x20
        STR      R0,[R4, #+8]
//  638     FLASH->CR |= CR_STRT_Set;
        LDR      R0,[R4, #+8]
        ORR      R0,R0,#0x40
        STR      R0,[R4, #+8]
//  639     /* Wait for last operation to be completed */
//  640     status = FLASH_WaitForLastOperation(EraseTimeout);
        MOV      R0,#+720896
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  641     
//  642     if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_EraseOptionBytes_1
//  643     {
//  644       /* if the erase operation is completed, disable the OPTER Bit */
//  645       FLASH->CR &= CR_OPTER_Reset;
        LDR      R0,[R4, #+8]
        MOVW     R1,#+8159
        ANDS     R0,R1,R0
        STR      R0,[R4, #+8]
//  646        
//  647       /* Enable the Option Bytes Programming operation */
//  648       FLASH->CR |= CR_OPTPG_Set;
        LDR      R0,[R4, #+8]
        ORR      R0,R0,#0x10
        STR      R0,[R4, #+8]
//  649       /* Restore the last read protection Option Byte value */
//  650       OB->RDP = (uint16_t)rdptmp; 
        LDR.W    R0,??DataTable23_6  ;; 0x1ffff800
        STRH     R5,[R0, #+0]
//  651       /* Wait for last operation to be completed */
//  652       status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  653  
//  654       if(status != FLASH_TIMEOUT)
//  655       {
//  656         /* if the program operation is completed, disable the OPTPG Bit */
//  657         FLASH->CR &= CR_OPTPG_Reset;
//  658       }
//  659     }
//  660     else
//  661     {
//  662       if (status != FLASH_TIMEOUT)
??FLASH_EraseOptionBytes_1:
        CMP      R0,#+5
        BEQ.N    ??FLASH_EraseOptionBytes_0
//  663       {
//  664         /* Disable the OPTPG Bit */
//  665         FLASH->CR &= CR_OPTPG_Reset;
        LDR      R1,[R4, #+8]
        MOVW     R2,#+8175
        ANDS     R1,R2,R1
        STR      R1,[R4, #+8]
//  666       }
//  667     }  
//  668   }
//  669   /* Return the erase status */
//  670   return status;
??FLASH_EraseOptionBytes_0:
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock13
//  671 }
//  672 
//  673 /**
//  674   * @brief  Programs a word at a specified address.
//  675   * @note   This function can be used for all STM32F10x devices.
//  676   * @param  Address: specifies the address to be programmed.
//  677   * @param  Data: specifies the data to be programmed.
//  678   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
//  679   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT. 
//  680   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function FLASH_ProgramWord
        THUMB
//  681 FLASH_Status FLASH_ProgramWord(uint32_t Address, uint32_t Data)
//  682 {
FLASH_ProgramWord:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R7,R0
//  683   FLASH_Status status = FLASH_COMPLETE;
//  684   __IO uint32_t tmp = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOV      R4,R1
//  685 
//  686   /* Check the parameters */
//  687   assert_param(IS_FLASH_ADDRESS(Address));
//  688 
//  689 #ifdef STM32F10X_XL
//  690   if(Address < FLASH_BANK1_END_ADDRESS - 2)
//  691   { 
//  692     /* Wait for last operation to be completed */
//  693     status = FLASH_WaitForLastBank1Operation(ProgramTimeout); 
//  694     if(status == FLASH_COMPLETE)
//  695     {
//  696       /* if the previous operation is completed, proceed to program the new first 
//  697         half word */
//  698       FLASH->CR |= CR_PG_Set;
//  699   
//  700       *(__IO uint16_t*)Address = (uint16_t)Data;
//  701       /* Wait for last operation to be completed */
//  702       status = FLASH_WaitForLastOperation(ProgramTimeout);
//  703  
//  704       if(status == FLASH_COMPLETE)
//  705       {
//  706         /* if the previous operation is completed, proceed to program the new second 
//  707         half word */
//  708         tmp = Address + 2;
//  709 
//  710         *(__IO uint16_t*) tmp = Data >> 16;
//  711     
//  712         /* Wait for last operation to be completed */
//  713         status = FLASH_WaitForLastOperation(ProgramTimeout);
//  714         
//  715         /* Disable the PG Bit */
//  716         FLASH->CR &= CR_PG_Reset;
//  717       }
//  718       else
//  719       {
//  720         /* Disable the PG Bit */
//  721         FLASH->CR &= CR_PG_Reset;
//  722        }
//  723     }
//  724   }
//  725   else if(Address == (FLASH_BANK1_END_ADDRESS - 1))
//  726   {
//  727     /* Wait for last operation to be completed */
//  728     status = FLASH_WaitForLastBank1Operation(ProgramTimeout);
//  729 
//  730     if(status == FLASH_COMPLETE)
//  731     {
//  732       /* if the previous operation is completed, proceed to program the new first 
//  733         half word */
//  734       FLASH->CR |= CR_PG_Set;
//  735   
//  736       *(__IO uint16_t*)Address = (uint16_t)Data;
//  737 
//  738       /* Wait for last operation to be completed */
//  739       status = FLASH_WaitForLastBank1Operation(ProgramTimeout);
//  740       
//  741 	  /* Disable the PG Bit */
//  742       FLASH->CR &= CR_PG_Reset;
//  743     }
//  744     else
//  745     {
//  746       /* Disable the PG Bit */
//  747       FLASH->CR &= CR_PG_Reset;
//  748     }
//  749 
//  750     /* Wait for last operation to be completed */
//  751     status = FLASH_WaitForLastBank2Operation(ProgramTimeout);
//  752 
//  753     if(status == FLASH_COMPLETE)
//  754     {
//  755       /* if the previous operation is completed, proceed to program the new second 
//  756       half word */
//  757       FLASH->CR2 |= CR_PG_Set;
//  758       tmp = Address + 2;
//  759 
//  760       *(__IO uint16_t*) tmp = Data >> 16;
//  761     
//  762       /* Wait for last operation to be completed */
//  763       status = FLASH_WaitForLastBank2Operation(ProgramTimeout);
//  764         
//  765       /* Disable the PG Bit */
//  766       FLASH->CR2 &= CR_PG_Reset;
//  767     }
//  768     else
//  769     {
//  770       /* Disable the PG Bit */
//  771       FLASH->CR2 &= CR_PG_Reset;
//  772     }
//  773   }
//  774   else
//  775   {
//  776     /* Wait for last operation to be completed */
//  777     status = FLASH_WaitForLastBank2Operation(ProgramTimeout);
//  778 
//  779     if(status == FLASH_COMPLETE)
//  780     {
//  781       /* if the previous operation is completed, proceed to program the new first 
//  782         half word */
//  783       FLASH->CR2 |= CR_PG_Set;
//  784   
//  785       *(__IO uint16_t*)Address = (uint16_t)Data;
//  786       /* Wait for last operation to be completed */
//  787       status = FLASH_WaitForLastBank2Operation(ProgramTimeout);
//  788  
//  789       if(status == FLASH_COMPLETE)
//  790       {
//  791         /* if the previous operation is completed, proceed to program the new second 
//  792         half word */
//  793         tmp = Address + 2;
//  794 
//  795         *(__IO uint16_t*) tmp = Data >> 16;
//  796     
//  797         /* Wait for last operation to be completed */
//  798         status = FLASH_WaitForLastBank2Operation(ProgramTimeout);
//  799         
//  800         /* Disable the PG Bit */
//  801         FLASH->CR2 &= CR_PG_Reset;
//  802       }
//  803       else
//  804       {
//  805         /* Disable the PG Bit */
//  806         FLASH->CR2 &= CR_PG_Reset;
//  807       }
//  808     }
//  809   }
//  810 #else
//  811   /* Wait for last operation to be completed */
//  812   status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  813   
//  814   if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_ProgramWord_0
//  815   {
//  816     /* if the previous operation is completed, proceed to program the new first 
//  817     half word */
//  818     FLASH->CR |= CR_PG_Set;
        LDR.W    R5,??DataTable23_4  ;; 0x40022010
        LDR      R0,[R5, #+0]
        ORR      R0,R0,#0x1
        STR      R0,[R5, #+0]
//  819   
//  820     *(__IO uint16_t*)Address = (uint16_t)Data;
        STRH     R4,[R7, #+0]
//  821     /* Wait for last operation to be completed */
//  822     status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  823  
//  824     if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        MOVW     R6,#+8190
        BNE.N    ??FLASH_ProgramWord_1
//  825     {
//  826       /* if the previous operation is completed, proceed to program the new second 
//  827       half word */
//  828       tmp = Address + 2;
        ADDS     R0,R7,#+2
        STR      R0,[SP, #+0]
//  829 
//  830       *(__IO uint16_t*) tmp = Data >> 16;
        LSRS     R0,R4,#+16
        LDR      R1,[SP, #+0]
        STRH     R0,[R1, #+0]
//  831     
//  832       /* Wait for last operation to be completed */
//  833       status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  834         
//  835       /* Disable the PG Bit */
//  836       FLASH->CR &= CR_PG_Reset;
//  837     }
//  838     else
//  839     {
//  840       /* Disable the PG Bit */
//  841       FLASH->CR &= CR_PG_Reset;
??FLASH_ProgramWord_1:
        LDR      R1,[R5, #+0]
        ANDS     R1,R6,R1
        STR      R1,[R5, #+0]
//  842     }
//  843   }         
//  844 #endif /* STM32F10X_XL */
//  845    
//  846   /* Return the Program Status */
//  847   return status;
??FLASH_ProgramWord_0:
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock14
//  848 }
//  849 
//  850 /**
//  851   * @brief  Programs a half word at a specified address.
//  852   * @note   This function can be used for all STM32F10x devices.
//  853   * @param  Address: specifies the address to be programmed.
//  854   * @param  Data: specifies the data to be programmed.
//  855   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
//  856   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT. 
//  857   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function FLASH_ProgramHalfWord
        THUMB
//  858 FLASH_Status FLASH_ProgramHalfWord(uint32_t Address, uint16_t Data)
//  859 {
FLASH_ProgramHalfWord:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  860   FLASH_Status status = FLASH_COMPLETE;
//  861   /* Check the parameters */
//  862   assert_param(IS_FLASH_ADDRESS(Address));
//  863 
//  864 #ifdef STM32F10X_XL
//  865   /* Wait for last operation to be completed */
//  866   status = FLASH_WaitForLastOperation(ProgramTimeout);
//  867   
//  868   if(Address < FLASH_BANK1_END_ADDRESS)
//  869   {
//  870     if(status == FLASH_COMPLETE)
//  871     {
//  872       /* if the previous operation is completed, proceed to program the new data */
//  873       FLASH->CR |= CR_PG_Set;
//  874   
//  875       *(__IO uint16_t*)Address = Data;
//  876       /* Wait for last operation to be completed */
//  877       status = FLASH_WaitForLastBank1Operation(ProgramTimeout);
//  878 
//  879       /* Disable the PG Bit */
//  880       FLASH->CR &= CR_PG_Reset;
//  881     }
//  882   }
//  883   else
//  884   {
//  885     if(status == FLASH_COMPLETE)
//  886     {
//  887       /* if the previous operation is completed, proceed to program the new data */
//  888       FLASH->CR2 |= CR_PG_Set;
//  889   
//  890       *(__IO uint16_t*)Address = Data;
//  891       /* Wait for last operation to be completed */
//  892       status = FLASH_WaitForLastBank2Operation(ProgramTimeout);
//  893 
//  894       /* Disable the PG Bit */
//  895       FLASH->CR2 &= CR_PG_Reset;
//  896     }
//  897   }
//  898 #else
//  899   /* Wait for last operation to be completed */
//  900   status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  901   
//  902   if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_ProgramHalfWord_0
//  903   {
//  904     /* if the previous operation is completed, proceed to program the new data */
//  905     FLASH->CR |= CR_PG_Set;
        LDR.W    R6,??DataTable23_4  ;; 0x40022010
        LDR      R0,[R6, #+0]
        ORR      R0,R0,#0x1
        STR      R0,[R6, #+0]
//  906   
//  907     *(__IO uint16_t*)Address = Data;
        STRH     R5,[R4, #+0]
//  908     /* Wait for last operation to be completed */
//  909     status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  910     
//  911     /* Disable the PG Bit */
//  912     FLASH->CR &= CR_PG_Reset;
        LDR      R1,[R6, #+0]
        MOVW     R2,#+8190
        ANDS     R1,R2,R1
        STR      R1,[R6, #+0]
//  913   } 
//  914 #endif  /* STM32F10X_XL */
//  915   
//  916   /* Return the Program Status */
//  917   return status;
??FLASH_ProgramHalfWord_0:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock15
//  918 }
//  919 
//  920 /**
//  921   * @brief  Programs a half word at a specified Option Byte Data address.
//  922   * @note   This function can be used for all STM32F10x devices.
//  923   * @param  Address: specifies the address to be programmed.
//  924   *   This parameter can be 0x1FFFF804 or 0x1FFFF806. 
//  925   * @param  Data: specifies the data to be programmed.
//  926   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
//  927   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT. 
//  928   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function FLASH_ProgramOptionByteData
        THUMB
//  929 FLASH_Status FLASH_ProgramOptionByteData(uint32_t Address, uint8_t Data)
//  930 {
FLASH_ProgramOptionByteData:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R5,R0
        MOV      R6,R1
//  931   FLASH_Status status = FLASH_COMPLETE;
//  932   /* Check the parameters */
//  933   assert_param(IS_OB_DATA_ADDRESS(Address));
//  934   status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  935 
//  936   if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_ProgramOptionByteData_0
//  937   {
//  938     /* Authorize the small information block programming */
//  939     FLASH->OPTKEYR = FLASH_KEY1;
        LDR.W    R4,??DataTable23_5  ;; 0x40022008
        LDR.W    R0,??DataTable23_2  ;; 0x45670123
        STR      R0,[R4, #+0]
//  940     FLASH->OPTKEYR = FLASH_KEY2;
        LDR.W    R0,??DataTable23_3  ;; 0xcdef89ab
        STR      R0,[R4, #+0]
//  941     /* Enables the Option Bytes Programming operation */
//  942     FLASH->CR |= CR_OPTPG_Set; 
        LDR      R0,[R4, #+8]
        ORR      R0,R0,#0x10
        STR      R0,[R4, #+8]
//  943     *(__IO uint16_t*)Address = Data;
        STRH     R6,[R5, #+0]
//  944     
//  945     /* Wait for last operation to be completed */
//  946     status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  947     if(status != FLASH_TIMEOUT)
        CMP      R0,#+5
        BEQ.N    ??FLASH_ProgramOptionByteData_0
//  948     {
//  949       /* if the program operation is completed, disable the OPTPG Bit */
//  950       FLASH->CR &= CR_OPTPG_Reset;
        LDR      R1,[R4, #+8]
        MOVW     R2,#+8175
        ANDS     R1,R2,R1
        STR      R1,[R4, #+8]
//  951     }
//  952   }
//  953   /* Return the Option Byte Data Program Status */
//  954   return status;
??FLASH_ProgramOptionByteData_0:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock16
//  955 }
//  956 
//  957 /**
//  958   * @brief  Write protects the desired pages
//  959   * @note   This function can be used for all STM32F10x devices.
//  960   * @param  FLASH_Pages: specifies the address of the pages to be write protected.
//  961   *   This parameter can be:
//  962   *     @arg For @b STM32_Low-density_devices: value between FLASH_WRProt_Pages0to3 and FLASH_WRProt_Pages28to31  
//  963   *     @arg For @b STM32_Medium-density_devices: value between FLASH_WRProt_Pages0to3
//  964   *       and FLASH_WRProt_Pages124to127
//  965   *     @arg For @b STM32_High-density_devices: value between FLASH_WRProt_Pages0to1 and
//  966   *       FLASH_WRProt_Pages60to61 or FLASH_WRProt_Pages62to255
//  967   *     @arg For @b STM32_Connectivity_line_devices: value between FLASH_WRProt_Pages0to1 and
//  968   *       FLASH_WRProt_Pages60to61 or FLASH_WRProt_Pages62to127    
//  969   *     @arg For @b STM32_XL-density_devices: value between FLASH_WRProt_Pages0to1 and
//  970   *       FLASH_WRProt_Pages60to61 or FLASH_WRProt_Pages62to511
//  971   *     @arg FLASH_WRProt_AllPages
//  972   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
//  973   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
//  974   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function FLASH_EnableWriteProtection
        THUMB
//  975 FLASH_Status FLASH_EnableWriteProtection(uint32_t FLASH_Pages)
//  976 {
FLASH_EnableWriteProtection:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  977   uint16_t WRP0_Data = 0xFFFF, WRP1_Data = 0xFFFF, WRP2_Data = 0xFFFF, WRP3_Data = 0xFFFF;
//  978   
//  979   FLASH_Status status = FLASH_COMPLETE;
//  980   
//  981   /* Check the parameters */
//  982   assert_param(IS_FLASH_WRPROT_PAGE(FLASH_Pages));
//  983   
//  984   FLASH_Pages = (uint32_t)(~FLASH_Pages);
        MVNS     R0,R0
//  985   WRP0_Data = (uint16_t)(FLASH_Pages & WRP0_Mask);
        AND      R4,R0,#0xFF
//  986   WRP1_Data = (uint16_t)((FLASH_Pages & WRP1_Mask) >> 8);
        UBFX     R8,R0,#+8,#+8
//  987   WRP2_Data = (uint16_t)((FLASH_Pages & WRP2_Mask) >> 16);
        LSLS     R1,R0,#+8
//  988   WRP3_Data = (uint16_t)((FLASH_Pages & WRP3_Mask) >> 24);
        LSRS     R7,R0,#+24
        LSRS     R6,R1,#+24
//  989   
//  990   /* Wait for last operation to be completed */
//  991   status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
//  992   
//  993   if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_EnableWriteProtection_0
//  994   {
//  995     /* Authorizes the small information block programming */
//  996     FLASH->OPTKEYR = FLASH_KEY1;
        LDR.W    R5,??DataTable23_5  ;; 0x40022008
        LDR.W    R1,??DataTable23_2  ;; 0x45670123
        STR      R1,[R5, #+0]
        CMP      R4,#+255
//  997     FLASH->OPTKEYR = FLASH_KEY2;
        LDR.W    R1,??DataTable23_3  ;; 0xcdef89ab
        STR      R1,[R5, #+0]
//  998     FLASH->CR |= CR_OPTPG_Set;
        LDR      R1,[R5, #+8]
        ORR      R1,R1,#0x10
        STR      R1,[R5, #+8]
//  999     if(WRP0_Data != 0xFF)
        BEQ.N    ??FLASH_EnableWriteProtection_1
// 1000     {
// 1001       OB->WRP0 = WRP0_Data;
        LDR.W    R0,??DataTable23_7  ;; 0x1ffff808
        STRH     R4,[R0, #+0]
// 1002       
// 1003       /* Wait for last operation to be completed */
// 1004       status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1005     }
// 1006     if((status == FLASH_COMPLETE) && (WRP1_Data != 0xFF))
??FLASH_EnableWriteProtection_1:
        CMP      R0,#+4
        BNE.N    ??FLASH_EnableWriteProtection_2
        CMP      R8,#+255
        BEQ.N    ??FLASH_EnableWriteProtection_2
// 1007     {
// 1008       OB->WRP1 = WRP1_Data;
        LDR.W    R0,??DataTable23_7  ;; 0x1ffff808
        STRH     R8,[R0, #+2]
// 1009       
// 1010       /* Wait for last operation to be completed */
// 1011       status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1012     }
// 1013     if((status == FLASH_COMPLETE) && (WRP2_Data != 0xFF))
??FLASH_EnableWriteProtection_2:
        CMP      R0,#+4
        BNE.N    ??FLASH_EnableWriteProtection_3
        CMP      R6,#+255
        BEQ.N    ??FLASH_EnableWriteProtection_3
// 1014     {
// 1015       OB->WRP2 = WRP2_Data;
        LDR.W    R0,??DataTable23_7  ;; 0x1ffff808
        STRH     R6,[R0, #+4]
// 1016       
// 1017       /* Wait for last operation to be completed */
// 1018       status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1019     }
// 1020     
// 1021     if((status == FLASH_COMPLETE)&& (WRP3_Data != 0xFF))
??FLASH_EnableWriteProtection_3:
        CMP      R0,#+4
        BNE.N    ??FLASH_EnableWriteProtection_4
        CMP      R7,#+255
        BEQ.N    ??FLASH_EnableWriteProtection_4
// 1022     {
// 1023       OB->WRP3 = WRP3_Data;
        LDR.W    R0,??DataTable23_7  ;; 0x1ffff808
        STRH     R7,[R0, #+6]
// 1024      
// 1025       /* Wait for last operation to be completed */
// 1026       status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R0,#+8192
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1027     }
// 1028           
// 1029     if(status != FLASH_TIMEOUT)
??FLASH_EnableWriteProtection_4:
        CMP      R0,#+5
        BEQ.N    ??FLASH_EnableWriteProtection_0
// 1030     {
// 1031       /* if the program operation is completed, disable the OPTPG Bit */
// 1032       FLASH->CR &= CR_OPTPG_Reset;
        LDR      R1,[R5, #+8]
        MOVW     R2,#+8175
        ANDS     R1,R2,R1
        STR      R1,[R5, #+8]
// 1033     }
// 1034   } 
// 1035   /* Return the write protection operation Status */
// 1036   return status;       
??FLASH_EnableWriteProtection_0:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock17
// 1037 }
// 1038 
// 1039 /**
// 1040   * @brief  Enables or disables the read out protection.
// 1041   * @note   If the user has already programmed the other option bytes before calling 
// 1042   *   this function, he must re-program them since this function erases all option bytes.
// 1043   * @note   This function can be used for all STM32F10x devices.
// 1044   * @param  Newstate: new state of the ReadOut Protection.
// 1045   *   This parameter can be: ENABLE or DISABLE.
// 1046   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
// 1047   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
// 1048   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function FLASH_ReadOutProtection
        THUMB
// 1049 FLASH_Status FLASH_ReadOutProtection(FunctionalState NewState)
// 1050 {
FLASH_ReadOutProtection:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
// 1051   FLASH_Status status = FLASH_COMPLETE;
// 1052   /* Check the parameters */
// 1053   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1054   status = FLASH_WaitForLastOperation(EraseTimeout);
        MOV      R0,#+720896
          CFI FunCall FLASH_WaitForLastOperation
        BL       FLASH_WaitForLastOperation
// 1055   if(status == FLASH_COMPLETE)
        CMP      R0,#+4
        BNE.N    ??FLASH_ReadOutProtection_0
// 1056   {
// 1057     /* Authorizes the small information block programming */
// 1058     FLASH->OPTKEYR = FLASH_KEY1;
        LDR.W    R1,??DataTable23_5  ;; 0x40022008
        LDR.N    R0,??DataTable23_2  ;; 0x45670123
        STR      R0,[R1, #+0]
        MOV      R2,#+720896
// 1059     FLASH->OPTKEYR = FLASH_KEY2;
        LDR.N    R0,??DataTable23_3  ;; 0xcdef89ab
        STR      R0,[R1, #+0]
        MOV      R3,R2
// 1060     FLASH->CR |= CR_OPTER_Set;
        LDR      R0,[R1, #+8]
        ORR      R0,R0,#0x20
        STR      R0,[R1, #+8]
// 1061     FLASH->CR |= CR_STRT_Set;
        LDR      R0,[R1, #+8]
        ORR      R0,R0,#0x40
        STR      R0,[R1, #+8]
// 1062     /* Wait for last operation to be completed */
// 1063     status = FLASH_WaitForLastOperation(EraseTimeout);
        MOVS     R0,#+4
        LDR      R5,[R1, #+4]
        LSLS     R5,R5,#+31
        IT       MI 
        MOVMI    R0,#+1
        BMI.N    ??FLASH_ReadOutProtection_1
        LDR      R5,[R1, #+4]
        LSLS     R5,R5,#+29
        IT       MI 
        MOVMI    R0,#+2
        BMI.N    ??FLASH_ReadOutProtection_1
        LDR      R5,[R1, #+4]
        LSLS     R5,R5,#+27
        BPL.N    ??FLASH_ReadOutProtection_1
        MOVS     R0,#+3
        B.N      ??FLASH_ReadOutProtection_1
??FLASH_ReadOutProtection_2:
        LDR      R5,[R1, #+4]
        LSLS     R5,R5,#+27
        IT       MI 
        MOVMI    R0,#+3
??FLASH_ReadOutProtection_3:
        SUBS     R3,R3,#+1
??FLASH_ReadOutProtection_1:
        CMP      R0,#+1
        BNE.N    ??FLASH_ReadOutProtection_4
        CBZ.N    R3,??FLASH_ReadOutProtection_5
        LDR      R5,[R1, #+4]
        MOVS     R0,#+4
        LSLS     R5,R5,#+31
        IT       MI 
        MOVMI    R0,#+1
        BMI.N    ??FLASH_ReadOutProtection_3
        LDR      R5,[R1, #+4]
        LSLS     R5,R5,#+29
        BPL.N    ??FLASH_ReadOutProtection_2
        MOVS     R0,#+2
        B.N      ??FLASH_ReadOutProtection_3
??FLASH_ReadOutProtection_4:
        CBNZ.N   R3,??FLASH_ReadOutProtection_6
??FLASH_ReadOutProtection_5:
        MOVS     R0,#+5
// 1064     if(status == FLASH_COMPLETE)
??FLASH_ReadOutProtection_6:
        CMP      R0,#+4
        BNE.N    ??FLASH_ReadOutProtection_7
// 1065     {
// 1066       /* if the erase operation is completed, disable the OPTER Bit */
// 1067       FLASH->CR &= CR_OPTER_Reset;
        LDR      R0,[R1, #+8]
        MOVW     R3,#+8159
        ANDS     R0,R3,R0
        STR      R0,[R1, #+8]
        CMP      R4,#+0
// 1068       /* Enable the Option Bytes Programming operation */
// 1069       FLASH->CR |= CR_OPTPG_Set; 
        LDR      R0,[R1, #+8]
        ORR      R0,R0,#0x10
        STR      R0,[R1, #+8]
// 1070       if(NewState != DISABLE)
        ITE      NE 
        MOVNE    R3,#+0
        MOVEQ    R3,#+165
        LDR.N    R0,??DataTable23_6  ;; 0x1ffff800
// 1071       {
// 1072         OB->RDP = 0x00;
// 1073       }
// 1074       else
// 1075       {
// 1076         OB->RDP = RDP_Key;  
        STRH     R3,[R0, #+0]
// 1077       }
// 1078       /* Wait for last operation to be completed */
// 1079       status = FLASH_WaitForLastOperation(EraseTimeout); 
        MOVS     R0,#+4
        LDR      R3,[R1, #+4]
        LSLS     R3,R3,#+31
        IT       MI 
        MOVMI    R0,#+1
        BMI.N    ??FLASH_ReadOutProtection_8
        LDR      R3,[R1, #+4]
        LSLS     R3,R3,#+29
        IT       MI 
        MOVMI    R0,#+2
        BMI.N    ??FLASH_ReadOutProtection_8
        LDR      R3,[R1, #+4]
        LSLS     R3,R3,#+27
        BPL.N    ??FLASH_ReadOutProtection_8
        MOVS     R0,#+3
        B.N      ??FLASH_ReadOutProtection_8
??FLASH_ReadOutProtection_9:
        LDR      R3,[R1, #+4]
        LSLS     R3,R3,#+27
        IT       MI 
        MOVMI    R0,#+3
??FLASH_ReadOutProtection_10:
        SUBS     R2,R2,#+1
??FLASH_ReadOutProtection_8:
        CMP      R0,#+1
        BNE.N    ??FLASH_ReadOutProtection_11
        CBZ.N    R2,??FLASH_ReadOutProtection_12
        LDR      R3,[R1, #+4]
        MOVS     R0,#+4
        LSLS     R3,R3,#+31
        IT       MI 
        MOVMI    R0,#+1
        BMI.N    ??FLASH_ReadOutProtection_10
        LDR      R3,[R1, #+4]
        LSLS     R3,R3,#+29
        BPL.N    ??FLASH_ReadOutProtection_9
        MOVS     R0,#+2
        B.N      ??FLASH_ReadOutProtection_10
??FLASH_ReadOutProtection_11:
        CBNZ.N   R2,??FLASH_ReadOutProtection_13
??FLASH_ReadOutProtection_12:
        MOVS     R0,#+5
// 1080     
// 1081       if(status != FLASH_TIMEOUT)
??FLASH_ReadOutProtection_13:
        CMP      R0,#+5
        BEQ.N    ??FLASH_ReadOutProtection_0
// 1082       {
// 1083         /* if the program operation is completed, disable the OPTPG Bit */
// 1084         FLASH->CR &= CR_OPTPG_Reset;
        LDR      R2,[R1, #+8]
        MOVW     R3,#+8175
        B.N      ??FLASH_ReadOutProtection_14
// 1085       }
// 1086     }
// 1087     else 
// 1088     {
// 1089       if(status != FLASH_TIMEOUT)
??FLASH_ReadOutProtection_7:
        CMP      R0,#+5
        BEQ.N    ??FLASH_ReadOutProtection_0
// 1090       {
// 1091         /* Disable the OPTER Bit */
// 1092         FLASH->CR &= CR_OPTER_Reset;
        LDR      R2,[R1, #+8]
        MOVW     R3,#+8159
??FLASH_ReadOutProtection_14:
        ANDS     R2,R3,R2
        STR      R2,[R1, #+8]
// 1093       }
// 1094     }
// 1095   }
// 1096   /* Return the protection operation Status */
// 1097   return status;       
??FLASH_ReadOutProtection_0:
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock18
// 1098 }
// 1099 
// 1100 /**
// 1101   * @brief  Programs the FLASH User Option Byte: IWDG_SW / RST_STOP / RST_STDBY.
// 1102   * @note   This function can be used for all STM32F10x devices.
// 1103   * @param  OB_IWDG: Selects the IWDG mode
// 1104   *   This parameter can be one of the following values:
// 1105   *     @arg OB_IWDG_SW: Software IWDG selected
// 1106   *     @arg OB_IWDG_HW: Hardware IWDG selected
// 1107   * @param  OB_STOP: Reset event when entering STOP mode.
// 1108   *   This parameter can be one of the following values:
// 1109   *     @arg OB_STOP_NoRST: No reset generated when entering in STOP
// 1110   *     @arg OB_STOP_RST: Reset generated when entering in STOP
// 1111   * @param  OB_STDBY: Reset event when entering Standby mode.
// 1112   *   This parameter can be one of the following values:
// 1113   *     @arg OB_STDBY_NoRST: No reset generated when entering in STANDBY
// 1114   *     @arg OB_STDBY_RST: Reset generated when entering in STANDBY
// 1115   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG, 
// 1116   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
// 1117   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function FLASH_UserOptionByteConfig
          CFI NoCalls
        THUMB
// 1118 FLASH_Status FLASH_UserOptionByteConfig(uint16_t OB_IWDG, uint16_t OB_STOP, uint16_t OB_STDBY)
// 1119 {
FLASH_UserOptionByteConfig:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 1120   FLASH_Status status = FLASH_COMPLETE; 
// 1121 
// 1122   /* Check the parameters */
// 1123   assert_param(IS_OB_IWDG_SOURCE(OB_IWDG));
// 1124   assert_param(IS_OB_STOP_SOURCE(OB_STOP));
// 1125   assert_param(IS_OB_STDBY_SOURCE(OB_STDBY));
// 1126 
// 1127   /* Authorize the small information block programming */
// 1128   FLASH->OPTKEYR = FLASH_KEY1;
        LDR.N    R4,??DataTable23_5  ;; 0x40022008
        LDR.N    R3,??DataTable23_2  ;; 0x45670123
        STR      R3,[R4, #+0]
        MOV      R5,#+8192
// 1129   FLASH->OPTKEYR = FLASH_KEY2;
        LDR.N    R3,??DataTable23_3  ;; 0xcdef89ab
        STR      R3,[R4, #+0]
// 1130   
// 1131   /* Wait for last operation to be completed */
// 1132   status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOV      R6,R5
        LDR      R7,[R4, #+4]
        MOVS     R3,#+4
        LSLS     R7,R7,#+31
        IT       MI 
        MOVMI    R3,#+1
        BMI.N    ??FLASH_UserOptionByteConfig_0
        LDR      R7,[R4, #+4]
        LSLS     R7,R7,#+29
        IT       MI 
        MOVMI    R3,#+2
        BMI.N    ??FLASH_UserOptionByteConfig_0
        LDR      R7,[R4, #+4]
        LSLS     R7,R7,#+27
        BPL.N    ??FLASH_UserOptionByteConfig_0
        MOVS     R3,#+3
        B.N      ??FLASH_UserOptionByteConfig_0
??FLASH_UserOptionByteConfig_1:
        LDR      R7,[R4, #+4]
        LSLS     R7,R7,#+27
        IT       MI 
        MOVMI    R3,#+3
??FLASH_UserOptionByteConfig_2:
        SUBS     R6,R6,#+1
??FLASH_UserOptionByteConfig_0:
        CMP      R3,#+1
        BNE.N    ??FLASH_UserOptionByteConfig_3
        CBZ.N    R6,??FLASH_UserOptionByteConfig_4
        LDR      R7,[R4, #+4]
        MOVS     R3,#+4
        LSLS     R7,R7,#+31
        IT       MI 
        MOVMI    R3,#+1
        BMI.N    ??FLASH_UserOptionByteConfig_2
        LDR      R7,[R4, #+4]
        LSLS     R7,R7,#+29
        BPL.N    ??FLASH_UserOptionByteConfig_1
        MOVS     R3,#+2
        B.N      ??FLASH_UserOptionByteConfig_2
??FLASH_UserOptionByteConfig_3:
        CBNZ.N   R6,??FLASH_UserOptionByteConfig_5
??FLASH_UserOptionByteConfig_4:
        MOVS     R3,#+5
// 1133   
// 1134   if(status == FLASH_COMPLETE)
??FLASH_UserOptionByteConfig_5:
        CMP      R3,#+4
        BNE.N    ??FLASH_UserOptionByteConfig_6
// 1135   {  
// 1136     /* Enable the Option Bytes Programming operation */
// 1137     FLASH->CR |= CR_OPTPG_Set; 
        LDR      R3,[R4, #+8]
// 1138            
// 1139     OB->USER = OB_IWDG | (uint16_t)(OB_STOP | (uint16_t)(OB_STDBY | ((uint16_t)0xF8))); 
        ORRS     R0,R1,R0
        ORR      R3,R3,#0x10
        ORRS     R0,R2,R0
        LDR.N    R1,??DataTable23_8  ;; 0x1ffff802
        STR      R3,[R4, #+8]
        ORR      R0,R0,#0xF8
        STRH     R0,[R1, #+0]
// 1140   
// 1141     /* Wait for last operation to be completed */
// 1142     status = FLASH_WaitForLastOperation(ProgramTimeout);
        MOVS     R3,#+4
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+31
        IT       MI 
        MOVMI    R3,#+1
        BMI.N    ??FLASH_UserOptionByteConfig_7
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+29
        IT       MI 
        MOVMI    R3,#+2
        BMI.N    ??FLASH_UserOptionByteConfig_7
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+27
        BPL.N    ??FLASH_UserOptionByteConfig_7
        MOVS     R3,#+3
        B.N      ??FLASH_UserOptionByteConfig_7
??FLASH_UserOptionByteConfig_8:
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+27
        IT       MI 
        MOVMI    R3,#+3
??FLASH_UserOptionByteConfig_9:
        SUBS     R5,R5,#+1
??FLASH_UserOptionByteConfig_7:
        CMP      R3,#+1
        BNE.N    ??FLASH_UserOptionByteConfig_10
        CBZ.N    R5,??FLASH_UserOptionByteConfig_11
        LDR      R0,[R4, #+4]
        MOVS     R3,#+4
        LSLS     R0,R0,#+31
        IT       MI 
        MOVMI    R3,#+1
        BMI.N    ??FLASH_UserOptionByteConfig_9
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+29
        BPL.N    ??FLASH_UserOptionByteConfig_8
        MOVS     R3,#+2
        B.N      ??FLASH_UserOptionByteConfig_9
??FLASH_UserOptionByteConfig_10:
        CBNZ.N   R5,??FLASH_UserOptionByteConfig_12
??FLASH_UserOptionByteConfig_11:
        MOVS     R3,#+5
// 1143     if(status != FLASH_TIMEOUT)
??FLASH_UserOptionByteConfig_12:
        CMP      R3,#+5
        BEQ.N    ??FLASH_UserOptionByteConfig_6
// 1144     {
// 1145       /* if the program operation is completed, disable the OPTPG Bit */
// 1146       FLASH->CR &= CR_OPTPG_Reset;
        LDR      R0,[R4, #+8]
        MOVW     R1,#+8175
        ANDS     R0,R1,R0
        STR      R0,[R4, #+8]
// 1147     }
// 1148   }    
// 1149   /* Return the Option Byte program Status */
// 1150   return status;
??FLASH_UserOptionByteConfig_6:
        MOV      R0,R3
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
// 1151 }
// 1152 
// 1153 #ifdef STM32F10X_XL
// 1154 /**
// 1155   * @brief  Configures to boot from Bank1 or Bank2.  
// 1156   * @note   This function can be used only for STM32F10x_XL density devices.
// 1157   * @param  FLASH_BOOT: select the FLASH Bank to boot from.
// 1158   *   This parameter can be one of the following values:
// 1159   *     @arg FLASH_BOOT_Bank1: At startup, if boot pins are set in boot from user Flash
// 1160   *        position and this parameter is selected the device will boot from Bank1(Default).
// 1161   *     @arg FLASH_BOOT_Bank2: At startup, if boot pins are set in boot from user Flash
// 1162   *        position and this parameter is selected the device will boot from Bank2 or Bank1,
// 1163   *        depending on the activation of the bank. The active banks are checked in
// 1164   *        the following order: Bank2, followed by Bank1.
// 1165   *        The active bank is recognized by the value programmed at the base address
// 1166   *        of the respective bank (corresponding to the initial stack pointer value
// 1167   *        in the interrupt vector table).
// 1168   *        For more information, please refer to AN2606 from www.st.com.    
// 1169   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG, 
// 1170   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
// 1171   */
// 1172 FLASH_Status FLASH_BootConfig(uint16_t FLASH_BOOT)
// 1173 { 
// 1174   FLASH_Status status = FLASH_COMPLETE; 
// 1175   assert_param(IS_FLASH_BOOT(FLASH_BOOT));
// 1176   /* Authorize the small information block programming */
// 1177   FLASH->OPTKEYR = FLASH_KEY1;
// 1178   FLASH->OPTKEYR = FLASH_KEY2;
// 1179   
// 1180   /* Wait for last operation to be completed */
// 1181   status = FLASH_WaitForLastOperation(ProgramTimeout);
// 1182   
// 1183   if(status == FLASH_COMPLETE)
// 1184   {  
// 1185     /* Enable the Option Bytes Programming operation */
// 1186     FLASH->CR |= CR_OPTPG_Set; 
// 1187 
// 1188     if(FLASH_BOOT == FLASH_BOOT_Bank1)
// 1189     {
// 1190       OB->USER |= OB_USER_BFB2;
// 1191     }
// 1192     else
// 1193     {
// 1194       OB->USER &= (uint16_t)(~(uint16_t)(OB_USER_BFB2));
// 1195     }
// 1196     /* Wait for last operation to be completed */
// 1197     status = FLASH_WaitForLastOperation(ProgramTimeout);
// 1198     if(status != FLASH_TIMEOUT)
// 1199     {
// 1200       /* if the program operation is completed, disable the OPTPG Bit */
// 1201       FLASH->CR &= CR_OPTPG_Reset;
// 1202     }
// 1203   }    
// 1204   /* Return the Option Byte program Status */
// 1205   return status;
// 1206 }
// 1207 #endif /* STM32F10X_XL */
// 1208 
// 1209 /**
// 1210   * @brief  Returns the FLASH User Option Bytes values.
// 1211   * @note   This function can be used for all STM32F10x devices.
// 1212   * @param  None
// 1213   * @retval The FLASH User Option Bytes values:IWDG_SW(Bit0), RST_STOP(Bit1)
// 1214   *         and RST_STDBY(Bit2).
// 1215   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function FLASH_GetUserOptionByte
          CFI NoCalls
        THUMB
// 1216 uint32_t FLASH_GetUserOptionByte(void)
// 1217 {
// 1218   /* Return the User Option Byte */
// 1219   return (uint32_t)(FLASH->OBR >> 2);
FLASH_GetUserOptionByte:
        LDR.N    R0,??DataTable23_9  ;; 0x4002201c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
// 1220 }
// 1221 
// 1222 /**
// 1223   * @brief  Returns the FLASH Write Protection Option Bytes Register value.
// 1224   * @note   This function can be used for all STM32F10x devices.
// 1225   * @param  None
// 1226   * @retval The FLASH Write Protection  Option Bytes Register value
// 1227   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function FLASH_GetWriteProtectionOptionByte
          CFI NoCalls
        THUMB
// 1228 uint32_t FLASH_GetWriteProtectionOptionByte(void)
// 1229 {
// 1230   /* Return the Flash write protection Register value */
// 1231   return (uint32_t)(FLASH->WRPR);
FLASH_GetWriteProtectionOptionByte:
        LDR.N    R0,??DataTable23_10  ;; 0x40022020
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
// 1232 }
// 1233 
// 1234 /**
// 1235   * @brief  Checks whether the FLASH Read Out Protection Status is set or not.
// 1236   * @note   This function can be used for all STM32F10x devices.
// 1237   * @param  None
// 1238   * @retval FLASH ReadOut Protection Status(SET or RESET)
// 1239   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function FLASH_GetReadOutProtectionStatus
          CFI NoCalls
        THUMB
// 1240 FlagStatus FLASH_GetReadOutProtectionStatus(void)
// 1241 {
// 1242   FlagStatus readoutstatus = RESET;
// 1243   if ((FLASH->OBR & RDPRT_Mask) != (uint32_t)RESET)
FLASH_GetReadOutProtectionStatus:
        LDR.N    R0,??DataTable23_9  ;; 0x4002201c
        LDR      R0,[R0, #+0]
// 1244   {
// 1245     readoutstatus = SET;
// 1246   }
// 1247   else
// 1248   {
// 1249     readoutstatus = RESET;
// 1250   }
// 1251   return readoutstatus;
        LSRS     R0,R0,#+1
        B.N      ?Subroutine3
          CFI EndBlock cfiBlock22
// 1252 }
// 1253 
// 1254 /**
// 1255   * @brief  Checks whether the FLASH Prefetch Buffer status is set or not.
// 1256   * @note   This function can be used for all STM32F10x devices.
// 1257   * @param  None
// 1258   * @retval FLASH Prefetch Buffer Status (SET or RESET).
// 1259   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function FLASH_GetPrefetchBufferStatus
          CFI NoCalls
        THUMB
// 1260 FlagStatus FLASH_GetPrefetchBufferStatus(void)
// 1261 {
// 1262   FlagStatus bitstatus = RESET;
// 1263   
// 1264   if ((FLASH->ACR & ACR_PRFTBS_Mask) != (uint32_t)RESET)
FLASH_GetPrefetchBufferStatus:
        LDR.N    R0,??DataTable23  ;; 0x40022000
        LDR      R0,[R0, #+0]
// 1265   {
// 1266     bitstatus = SET;
// 1267   }
// 1268   else
// 1269   {
// 1270     bitstatus = RESET;
// 1271   }
// 1272   /* Return the new state of FLASH Prefetch Buffer Status (SET or RESET) */
// 1273   return bitstatus; 
        LSRS     R0,R0,#+5
          CFI EndBlock cfiBlock23
        REQUIRE ?Subroutine3
        ;; // Fall through to label ?Subroutine3
// 1274 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls FLASH_GetReadOutProtectionStatus
          CFI NoCalls FLASH_GetPrefetchBufferStatus
        THUMB
?Subroutine3:
        AND      R0,R0,#0x1
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
// 1275 
// 1276 /**
// 1277   * @brief  Enables or disables the specified FLASH interrupts.
// 1278   * @note   This function can be used for all STM32F10x devices.
// 1279   *         - For STM32F10X_XL devices, enables or disables the specified FLASH interrupts
// 1280               for Bank1 and Bank2.
// 1281   *         - For other devices it enables or disables the specified FLASH interrupts for Bank1.
// 1282   * @param  FLASH_IT: specifies the FLASH interrupt sources to be enabled or disabled.
// 1283   *   This parameter can be any combination of the following values:
// 1284   *     @arg FLASH_IT_ERROR: FLASH Error Interrupt
// 1285   *     @arg FLASH_IT_EOP: FLASH end of operation Interrupt
// 1286   * @param  NewState: new state of the specified Flash interrupts.
// 1287   *   This parameter can be: ENABLE or DISABLE.      
// 1288   * @retval None 
// 1289   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function FLASH_ITConfig
          CFI NoCalls
        THUMB
// 1290 void FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState)
// 1291 {
// 1292 #ifdef STM32F10X_XL
// 1293   /* Check the parameters */
// 1294   assert_param(IS_FLASH_IT(FLASH_IT)); 
// 1295   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1296 
// 1297   if((FLASH_IT & 0x80000000) != 0x0)
// 1298   {
// 1299     if(NewState != DISABLE)
// 1300     {
// 1301       /* Enable the interrupt sources */
// 1302       FLASH->CR2 |= (FLASH_IT & 0x7FFFFFFF);
// 1303     }
// 1304     else
// 1305     {
// 1306       /* Disable the interrupt sources */
// 1307       FLASH->CR2 &= ~(uint32_t)(FLASH_IT & 0x7FFFFFFF);
// 1308     }
// 1309   }
// 1310   else
// 1311   {
// 1312     if(NewState != DISABLE)
// 1313     {
// 1314       /* Enable the interrupt sources */
// 1315       FLASH->CR |= FLASH_IT;
// 1316     }
// 1317     else
// 1318     {
// 1319       /* Disable the interrupt sources */
// 1320       FLASH->CR &= ~(uint32_t)FLASH_IT;
// 1321     }
// 1322   }
// 1323 #else
// 1324   /* Check the parameters */
// 1325   assert_param(IS_FLASH_IT(FLASH_IT)); 
// 1326   assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1327 
// 1328   if(NewState != DISABLE)
FLASH_ITConfig:
        LDR.N    R2,??DataTable23_4  ;; 0x40022010
        CMP      R1,#+0
        LDR      R1,[R2, #+0]
        ITE      NE 
        ORRNE    R0,R0,R1
        BICEQ    R0,R1,R0
// 1329   {
// 1330     /* Enable the interrupt sources */
// 1331     FLASH->CR |= FLASH_IT;
// 1332   }
// 1333   else
// 1334   {
// 1335     /* Disable the interrupt sources */
// 1336     FLASH->CR &= ~(uint32_t)FLASH_IT;
        STR      R0,[R2, #+0]
// 1337   }
// 1338 #endif /* STM32F10X_XL */
// 1339 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
// 1340 
// 1341 /**
// 1342   * @brief  Checks whether the specified FLASH flag is set or not.
// 1343   * @note   This function can be used for all STM32F10x devices.
// 1344   *         - For STM32F10X_XL devices, this function checks whether the specified 
// 1345   *           Bank1 or Bank2 flag is set or not.
// 1346   *         - For other devices, it checks whether the specified Bank1 flag is 
// 1347   *           set or not.
// 1348   * @param  FLASH_FLAG: specifies the FLASH flag to check.
// 1349   *   This parameter can be one of the following values:
// 1350   *     @arg FLASH_FLAG_BSY: FLASH Busy flag           
// 1351   *     @arg FLASH_FLAG_PGERR: FLASH Program error flag       
// 1352   *     @arg FLASH_FLAG_WRPRTERR: FLASH Write protected error flag      
// 1353   *     @arg FLASH_FLAG_EOP: FLASH End of Operation flag           
// 1354   *     @arg FLASH_FLAG_OPTERR:  FLASH Option Byte error flag     
// 1355   * @retval The new state of FLASH_FLAG (SET or RESET).
// 1356   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function FLASH_GetFlagStatus
          CFI NoCalls
        THUMB
// 1357 FlagStatus FLASH_GetFlagStatus(uint32_t FLASH_FLAG)
// 1358 {
// 1359   FlagStatus bitstatus = RESET;
FLASH_GetFlagStatus:
        MOVS     R1,#+0
// 1360 
// 1361 #ifdef STM32F10X_XL
// 1362   /* Check the parameters */
// 1363   assert_param(IS_FLASH_GET_FLAG(FLASH_FLAG)) ;
// 1364   if(FLASH_FLAG == FLASH_FLAG_OPTERR) 
// 1365   {
// 1366     if((FLASH->OBR & FLASH_FLAG_OPTERR) != (uint32_t)RESET)
// 1367     {
// 1368       bitstatus = SET;
// 1369     }
// 1370     else
// 1371     {
// 1372       bitstatus = RESET;
// 1373     }
// 1374   }
// 1375   else
// 1376   {
// 1377     if((FLASH_FLAG & 0x80000000) != 0x0)
// 1378     {
// 1379       if((FLASH->SR2 & FLASH_FLAG) != (uint32_t)RESET)
// 1380       {
// 1381         bitstatus = SET;
// 1382       }
// 1383       else
// 1384       {
// 1385         bitstatus = RESET;
// 1386       }
// 1387     }
// 1388     else
// 1389     {
// 1390       if((FLASH->SR & FLASH_FLAG) != (uint32_t)RESET)
// 1391       {
// 1392         bitstatus = SET;
// 1393       }
// 1394       else
// 1395       {
// 1396         bitstatus = RESET;
// 1397       }
// 1398     }
// 1399   }
// 1400 #else
// 1401   /* Check the parameters */
// 1402   assert_param(IS_FLASH_GET_FLAG(FLASH_FLAG)) ;
// 1403   if(FLASH_FLAG == FLASH_FLAG_OPTERR) 
        CMP      R0,#+1
        LDR.N    R2,??DataTable23_11  ;; 0x4002200c
        BNE.N    ??FLASH_GetFlagStatus_0
// 1404   {
// 1405     if((FLASH->OBR & FLASH_FLAG_OPTERR) != (uint32_t)RESET)
        LDR      R0,[R2, #+16]
// 1406     {
// 1407       bitstatus = SET;
// 1408     }
// 1409     else
// 1410     {
// 1411       bitstatus = RESET;
        AND      R1,R0,#0x1
        B.N      ??FLASH_GetFlagStatus_1
// 1412     }
// 1413   }
// 1414   else
// 1415   {
// 1416    if((FLASH->SR & FLASH_FLAG) != (uint32_t)RESET)
??FLASH_GetFlagStatus_0:
        LDR      R2,[R2, #+0]
        TST      R2,R0
        IT       NE 
        MOVNE    R1,#+1
// 1417     {
// 1418       bitstatus = SET;
// 1419     }
// 1420     else
// 1421     {
// 1422       bitstatus = RESET;
// 1423     }
// 1424   }
// 1425 #endif /* STM32F10X_XL */
// 1426 
// 1427   /* Return the new state of FLASH_FLAG (SET or RESET) */
// 1428   return bitstatus;
??FLASH_GetFlagStatus_1:
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
// 1429 }
// 1430 
// 1431 /**
// 1432   * @brief  Clears the FLASH's pending flags.
// 1433   * @note   This function can be used for all STM32F10x devices.
// 1434   *         - For STM32F10X_XL devices, this function clears Bank1 or Bank2抯 pending flags
// 1435   *         - For other devices, it clears Bank1抯 pending flags.
// 1436   * @param  FLASH_FLAG: specifies the FLASH flags to clear.
// 1437   *   This parameter can be any combination of the following values:         
// 1438   *     @arg FLASH_FLAG_PGERR: FLASH Program error flag       
// 1439   *     @arg FLASH_FLAG_WRPRTERR: FLASH Write protected error flag      
// 1440   *     @arg FLASH_FLAG_EOP: FLASH End of Operation flag           
// 1441   * @retval None
// 1442   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function FLASH_ClearFlag
          CFI NoCalls
        THUMB
// 1443 void FLASH_ClearFlag(uint32_t FLASH_FLAG)
// 1444 {
// 1445 #ifdef STM32F10X_XL
// 1446   /* Check the parameters */
// 1447   assert_param(IS_FLASH_CLEAR_FLAG(FLASH_FLAG)) ;
// 1448 
// 1449   if((FLASH_FLAG & 0x80000000) != 0x0)
// 1450   {
// 1451     /* Clear the flags */
// 1452     FLASH->SR2 = FLASH_FLAG;
// 1453   }
// 1454   else
// 1455   {
// 1456     /* Clear the flags */
// 1457     FLASH->SR = FLASH_FLAG;
// 1458   }  
// 1459 
// 1460 #else
// 1461   /* Check the parameters */
// 1462   assert_param(IS_FLASH_CLEAR_FLAG(FLASH_FLAG)) ;
// 1463   
// 1464   /* Clear the flags */
// 1465   FLASH->SR = FLASH_FLAG;
FLASH_ClearFlag:
        LDR.N    R1,??DataTable23_11  ;; 0x4002200c
        STR      R0,[R1, #+0]
// 1466 #endif /* STM32F10X_XL */
// 1467 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
// 1468 
// 1469 /**
// 1470   * @brief  Returns the FLASH Status.
// 1471   * @note   This function can be used for all STM32F10x devices, it is equivalent
// 1472   *         to FLASH_GetBank1Status function.
// 1473   * @param  None
// 1474   * @retval FLASH Status: The returned value can be: FLASH_BUSY, FLASH_ERROR_PG,
// 1475   *         FLASH_ERROR_WRP or FLASH_COMPLETE
// 1476   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function FLASH_GetStatus
          CFI NoCalls
        THUMB
// 1477 FLASH_Status FLASH_GetStatus(void)
// 1478 {
// 1479   FLASH_Status flashstatus = FLASH_COMPLETE;
// 1480   
// 1481   if((FLASH->SR & FLASH_FLAG_BSY) == FLASH_FLAG_BSY) 
FLASH_GetStatus:
        LDR.N    R1,??DataTable23_11  ;; 0x4002200c
        LDR      R2,[R1, #+0]
        MOVS     R0,#+4
        LSLS     R2,R2,#+31
        BPL.N    ??FLASH_GetStatus_0
// 1482   {
// 1483     flashstatus = FLASH_BUSY;
        MOVS     R0,#+1
        BX       LR
// 1484   }
// 1485   else 
// 1486   {  
// 1487     if((FLASH->SR & FLASH_FLAG_PGERR) != 0)
??FLASH_GetStatus_0:
        LDR      R2,[R1, #+0]
        LSLS     R2,R2,#+29
        BPL.N    ??FLASH_GetStatus_1
// 1488     { 
// 1489       flashstatus = FLASH_ERROR_PG;
        MOVS     R0,#+2
        BX       LR
// 1490     }
// 1491     else 
// 1492     {
// 1493       if((FLASH->SR & FLASH_FLAG_WRPRTERR) != 0 )
??FLASH_GetStatus_1:
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+27
        IT       MI 
        MOVMI    R0,#+3
// 1494       {
// 1495         flashstatus = FLASH_ERROR_WRP;
// 1496       }
// 1497       else
// 1498       {
// 1499         flashstatus = FLASH_COMPLETE;
// 1500       }
// 1501     }
// 1502   }
// 1503   /* Return the Flash Status */
// 1504   return flashstatus;
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
// 1505 }
// 1506 
// 1507 /**
// 1508   * @brief  Returns the FLASH Bank1 Status.
// 1509   * @note   This function can be used for all STM32F10x devices, it is equivalent
// 1510   *         to FLASH_GetStatus function.
// 1511   * @param  None
// 1512   * @retval FLASH Status: The returned value can be: FLASH_BUSY, FLASH_ERROR_PG,
// 1513   *         FLASH_ERROR_WRP or FLASH_COMPLETE
// 1514   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function FLASH_GetBank1Status
          CFI NoCalls
        THUMB
// 1515 FLASH_Status FLASH_GetBank1Status(void)
// 1516 {
// 1517   FLASH_Status flashstatus = FLASH_COMPLETE;
// 1518   
// 1519   if((FLASH->SR & FLASH_FLAG_BANK1_BSY) == FLASH_FLAG_BSY) 
FLASH_GetBank1Status:
        LDR.N    R1,??DataTable23_11  ;; 0x4002200c
        LDR      R2,[R1, #+0]
        MOVS     R0,#+4
        LSLS     R2,R2,#+31
        BPL.N    ??FLASH_GetBank1Status_0
// 1520   {
// 1521     flashstatus = FLASH_BUSY;
        MOVS     R0,#+1
        BX       LR
// 1522   }
// 1523   else 
// 1524   {  
// 1525     if((FLASH->SR & FLASH_FLAG_BANK1_PGERR) != 0)
??FLASH_GetBank1Status_0:
        LDR      R2,[R1, #+0]
        LSLS     R2,R2,#+29
        BPL.N    ??FLASH_GetBank1Status_1
// 1526     { 
// 1527       flashstatus = FLASH_ERROR_PG;
        MOVS     R0,#+2
        BX       LR
// 1528     }
// 1529     else 
// 1530     {
// 1531       if((FLASH->SR & FLASH_FLAG_BANK1_WRPRTERR) != 0 )
??FLASH_GetBank1Status_1:
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+27
        IT       MI 
        MOVMI    R0,#+3
// 1532       {
// 1533         flashstatus = FLASH_ERROR_WRP;
// 1534       }
// 1535       else
// 1536       {
// 1537         flashstatus = FLASH_COMPLETE;
// 1538       }
// 1539     }
// 1540   }
// 1541   /* Return the Flash Status */
// 1542   return flashstatus;
        BX       LR               ;; return
          CFI EndBlock cfiBlock29
// 1543 }
// 1544 
// 1545 #ifdef STM32F10X_XL
// 1546 /**
// 1547   * @brief  Returns the FLASH Bank2 Status.
// 1548   * @note   This function can be used for STM32F10x_XL density devices.
// 1549   * @param  None
// 1550   * @retval FLASH Status: The returned value can be: FLASH_BUSY, FLASH_ERROR_PG,
// 1551   *        FLASH_ERROR_WRP or FLASH_COMPLETE
// 1552   */
// 1553 FLASH_Status FLASH_GetBank2Status(void)
// 1554 {
// 1555   FLASH_Status flashstatus = FLASH_COMPLETE;
// 1556   
// 1557   if((FLASH->SR2 & (FLASH_FLAG_BANK2_BSY & 0x7FFFFFFF)) == (FLASH_FLAG_BANK2_BSY & 0x7FFFFFFF)) 
// 1558   {
// 1559     flashstatus = FLASH_BUSY;
// 1560   }
// 1561   else 
// 1562   {  
// 1563     if((FLASH->SR2 & (FLASH_FLAG_BANK2_PGERR & 0x7FFFFFFF)) != 0)
// 1564     { 
// 1565       flashstatus = FLASH_ERROR_PG;
// 1566     }
// 1567     else 
// 1568     {
// 1569       if((FLASH->SR2 & (FLASH_FLAG_BANK2_WRPRTERR & 0x7FFFFFFF)) != 0 )
// 1570       {
// 1571         flashstatus = FLASH_ERROR_WRP;
// 1572       }
// 1573       else
// 1574       {
// 1575         flashstatus = FLASH_COMPLETE;
// 1576       }
// 1577     }
// 1578   }
// 1579   /* Return the Flash Status */
// 1580   return flashstatus;
// 1581 }
// 1582 #endif /* STM32F10X_XL */
// 1583 /**
// 1584   * @brief  Waits for a Flash operation to complete or a TIMEOUT to occur.
// 1585   * @note   This function can be used for all STM32F10x devices, 
// 1586   *         it is equivalent to FLASH_WaitForLastBank1Operation.
// 1587   *         - For STM32F10X_XL devices this function waits for a Bank1 Flash operation
// 1588   *           to complete or a TIMEOUT to occur.
// 1589   *         - For all other devices it waits for a Flash operation to complete 
// 1590   *           or a TIMEOUT to occur.
// 1591   * @param  Timeout: FLASH programming Timeout
// 1592   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
// 1593   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
// 1594   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function FLASH_WaitForLastOperation
          CFI NoCalls
        THUMB
// 1595 FLASH_Status FLASH_WaitForLastOperation(uint32_t Timeout)
// 1596 { 
// 1597   FLASH_Status status = FLASH_COMPLETE;
// 1598    
// 1599   /* Check for the Flash Status */
// 1600   status = FLASH_GetBank1Status();
FLASH_WaitForLastOperation:
        LDR.N    R2,??DataTable23_11  ;; 0x4002200c
        LDR      R3,[R2, #+0]
        MOVS     R1,#+4
        LSLS     R3,R3,#+31
        IT       MI 
        MOVMI    R1,#+1
        BMI.N    ??FLASH_WaitForLastOperation_0
        LDR      R3,[R2, #+0]
        LSLS     R3,R3,#+29
        IT       MI 
        MOVMI    R1,#+2
        BMI.N    ??FLASH_WaitForLastOperation_0
        LDR      R3,[R2, #+0]
        LSLS     R3,R3,#+27
        BPL.N    ??FLASH_WaitForLastOperation_0
        MOVS     R1,#+3
        B.N      ??FLASH_WaitForLastOperation_0
// 1601   /* Wait for a Flash operation to complete or a TIMEOUT to occur */
// 1602   while((status == FLASH_BUSY) && (Timeout != 0x00))
// 1603   {
??FLASH_WaitForLastOperation_1:
        LDR      R3,[R2, #+0]
        LSLS     R3,R3,#+27
        IT       MI 
        MOVMI    R1,#+3
// 1604     status = FLASH_GetBank1Status();
// 1605     Timeout--;
??FLASH_WaitForLastOperation_2:
        SUBS     R0,R0,#+1
??FLASH_WaitForLastOperation_0:
        CMP      R1,#+1
        BNE.N    ??FLASH_WaitForLastOperation_3
        CBZ.N    R0,??FLASH_WaitForLastOperation_4
        LDR      R3,[R2, #+0]
        MOVS     R1,#+4
        LSLS     R3,R3,#+31
        IT       MI 
        MOVMI    R1,#+1
        BMI.N    ??FLASH_WaitForLastOperation_2
        LDR      R3,[R2, #+0]
        LSLS     R3,R3,#+29
        BPL.N    ??FLASH_WaitForLastOperation_1
        MOVS     R1,#+2
        B.N      ??FLASH_WaitForLastOperation_2
// 1606   }
// 1607   if(Timeout == 0x00 )
??FLASH_WaitForLastOperation_3:
        CBNZ.N   R0,??FLASH_WaitForLastOperation_5
// 1608   {
// 1609     status = FLASH_TIMEOUT;
??FLASH_WaitForLastOperation_4:
        MOVS     R1,#+5
// 1610   }
// 1611   /* Return the operation status */
// 1612   return status;
??FLASH_WaitForLastOperation_5:
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock30
// 1613 }
// 1614 
// 1615 /**
// 1616   * @brief  Waits for a Flash operation on Bank1 to complete or a TIMEOUT to occur.
// 1617   * @note   This function can be used for all STM32F10x devices, 
// 1618   *         it is equivalent to FLASH_WaitForLastOperation.
// 1619   * @param  Timeout: FLASH programming Timeout
// 1620   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
// 1621   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
// 1622   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function FLASH_WaitForLastBank1Operation
          CFI NoCalls
        THUMB
// 1623 FLASH_Status FLASH_WaitForLastBank1Operation(uint32_t Timeout)
// 1624 { 
// 1625   FLASH_Status status = FLASH_COMPLETE;
// 1626    
// 1627   /* Check for the Flash Status */
// 1628   status = FLASH_GetBank1Status();
FLASH_WaitForLastBank1Operation:
        LDR.N    R2,??DataTable23_11  ;; 0x4002200c
        LDR      R3,[R2, #+0]
        MOVS     R1,#+4
        LSLS     R3,R3,#+31
        IT       MI 
        MOVMI    R1,#+1
        BMI.N    ??FLASH_WaitForLastBank1Operation_0
        LDR      R3,[R2, #+0]
        LSLS     R3,R3,#+29
        IT       MI 
        MOVMI    R1,#+2
        BMI.N    ??FLASH_WaitForLastBank1Operation_0
        LDR      R3,[R2, #+0]
        LSLS     R3,R3,#+27
        BPL.N    ??FLASH_WaitForLastBank1Operation_0
        MOVS     R1,#+3
        B.N      ??FLASH_WaitForLastBank1Operation_0
// 1629   /* Wait for a Flash operation to complete or a TIMEOUT to occur */
// 1630   while((status == FLASH_FLAG_BANK1_BSY) && (Timeout != 0x00))
// 1631   {
??FLASH_WaitForLastBank1Operation_1:
        LDR      R3,[R2, #+0]
        LSLS     R3,R3,#+27
        IT       MI 
        MOVMI    R1,#+3
// 1632     status = FLASH_GetBank1Status();
// 1633     Timeout--;
??FLASH_WaitForLastBank1Operation_2:
        SUBS     R0,R0,#+1
??FLASH_WaitForLastBank1Operation_0:
        CMP      R1,#+1
        BNE.N    ??FLASH_WaitForLastBank1Operation_3
        CBZ.N    R0,??FLASH_WaitForLastBank1Operation_4
        LDR      R3,[R2, #+0]
        MOVS     R1,#+4
        LSLS     R3,R3,#+31
        IT       MI 
        MOVMI    R1,#+1
        BMI.N    ??FLASH_WaitForLastBank1Operation_2
        LDR      R3,[R2, #+0]
        LSLS     R3,R3,#+29
        BPL.N    ??FLASH_WaitForLastBank1Operation_1
        MOVS     R1,#+2
        B.N      ??FLASH_WaitForLastBank1Operation_2
// 1634   }
// 1635   if(Timeout == 0x00 )
??FLASH_WaitForLastBank1Operation_3:
        CBNZ.N   R0,??FLASH_WaitForLastBank1Operation_5
// 1636   {
// 1637     status = FLASH_TIMEOUT;
??FLASH_WaitForLastBank1Operation_4:
        MOVS     R1,#+5
// 1638   }
// 1639   /* Return the operation status */
// 1640   return status;
??FLASH_WaitForLastBank1Operation_5:
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock31
// 1641 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     0x40022000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_1:
        DC32     0x40022004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_2:
        DC32     0x45670123

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_3:
        DC32     0xcdef89ab

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_4:
        DC32     0x40022010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_5:
        DC32     0x40022008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_6:
        DC32     0x1ffff800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_7:
        DC32     0x1ffff808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_8:
        DC32     0x1ffff802

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_9:
        DC32     0x4002201c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_10:
        DC32     0x40022020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_11:
        DC32     0x4002200c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1642 
// 1643 #ifdef STM32F10X_XL
// 1644 /**
// 1645   * @brief  Waits for a Flash operation on Bank2 to complete or a TIMEOUT to occur.
// 1646   * @note   This function can be used only for STM32F10x_XL density devices.
// 1647   * @param  Timeout: FLASH programming Timeout
// 1648   * @retval FLASH Status: The returned value can be: FLASH_ERROR_PG,
// 1649   *         FLASH_ERROR_WRP, FLASH_COMPLETE or FLASH_TIMEOUT.
// 1650   */
// 1651 FLASH_Status FLASH_WaitForLastBank2Operation(uint32_t Timeout)
// 1652 { 
// 1653   FLASH_Status status = FLASH_COMPLETE;
// 1654    
// 1655   /* Check for the Flash Status */
// 1656   status = FLASH_GetBank2Status();
// 1657   /* Wait for a Flash operation to complete or a TIMEOUT to occur */
// 1658   while((status == (FLASH_FLAG_BANK2_BSY & 0x7FFFFFFF)) && (Timeout != 0x00))
// 1659   {
// 1660     status = FLASH_GetBank2Status();
// 1661     Timeout--;
// 1662   }
// 1663   if(Timeout == 0x00 )
// 1664   {
// 1665     status = FLASH_TIMEOUT;
// 1666   }
// 1667   /* Return the operation status */
// 1668   return status;
// 1669 }
// 1670 #endif /* STM32F10X_XL */
// 1671 
// 1672 /**
// 1673   * @}
// 1674   */
// 1675 
// 1676 /**
// 1677   * @}
// 1678   */
// 1679 
// 1680 /**
// 1681   * @}
// 1682   */
// 1683 
// 1684 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 1 558 bytes in section .text
// 
// 1 558 bytes of CODE memory
//
//Errors: none
//Warnings: none
