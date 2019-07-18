///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:37
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\CMSIS\core_cm3.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\CMSIS\core_cm3.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\core_cm3.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC __LDREXB
        PUBLIC __LDREXH
        PUBLIC __LDREXW
        PUBLIC __RBIT
        PUBLIC __REV16
        PUBLIC __STREXB
        PUBLIC __STREXH
        PUBLIC __STREXW
        PUBLIC __get_MSP
        PUBLIC __get_PSP
        PUBLIC __set_MSP
        PUBLIC __set_PSP
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\CMSIS\core_cm3.c
//    1 /**************************************************************************//**
//    2  * @file     core_cm3.c
//    3  * @brief    CMSIS Cortex-M3 Core Peripheral Access Layer Source File
//    4  * @version  V1.30
//    5  * @date     30. October 2009
//    6  *
//    7  * @note
//    8  * Copyright (C) 2009 ARM Limited. All rights reserved.
//    9  *
//   10  * @par
//   11  * ARM Limited (ARM) is supplying this software for use with Cortex-M 
//   12  * processor based microcontrollers.  This file can be freely distributed 
//   13  * within development tools that are supporting such ARM based processors. 
//   14  *
//   15  * @par
//   16  * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
//   17  * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
//   18  * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
//   19  * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
//   20  * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
//   21  *
//   22  ******************************************************************************/
//   23 
//   24 #include <stdint.h>
//   25 
//   26 /* define compiler specific symbols */
//   27 #if defined ( __CC_ARM   )
//   28   #define __ASM            __asm                                      /*!< asm keyword for ARM Compiler          */
//   29   #define __INLINE         __inline                                   /*!< inline keyword for ARM Compiler       */
//   30 
//   31 #elif defined ( __ICCARM__ )
//   32   #define __ASM           __asm                                       /*!< asm keyword for IAR Compiler          */
//   33   #define __INLINE        inline                                      /*!< inline keyword for IAR Compiler. Only avaiable in High optimization mode! */
//   34 
//   35 #elif defined   (  __GNUC__  )
//   36   #define __ASM            __asm                                      /*!< asm keyword for GNU Compiler          */
//   37   #define __INLINE         inline                                     /*!< inline keyword for GNU Compiler       */
//   38 
//   39 #elif defined   (  __TASKING__  )
//   40   #define __ASM            __asm                                      /*!< asm keyword for TASKING Compiler      */
//   41   #define __INLINE         inline                                     /*!< inline keyword for TASKING Compiler   */
//   42 
//   43 #endif
//   44 
//   45 
//   46 /* ###################  Compiler specific Intrinsics  ########################### */
//   47 
//   48 #if defined ( __CC_ARM   ) /*------------------RealView Compiler -----------------*/
//   49 /* ARM armcc specific functions */
//   50 
//   51 /**
//   52  * @brief  Return the Process Stack Pointer
//   53  *
//   54  * @return ProcessStackPointer
//   55  *
//   56  * Return the actual process stack pointer
//   57  */
//   58 __ASM uint32_t __get_PSP(void)
//   59 {
//   60   mrs r0, psp
//   61   bx lr
//   62 }
//   63 
//   64 /**
//   65  * @brief  Set the Process Stack Pointer
//   66  *
//   67  * @param  topOfProcStack  Process Stack Pointer
//   68  *
//   69  * Assign the value ProcessStackPointer to the MSP 
//   70  * (process stack pointer) Cortex processor register
//   71  */
//   72 __ASM void __set_PSP(uint32_t topOfProcStack)
//   73 {
//   74   msr psp, r0
//   75   bx lr
//   76 }
//   77 
//   78 /**
//   79  * @brief  Return the Main Stack Pointer
//   80  *
//   81  * @return Main Stack Pointer
//   82  *
//   83  * Return the current value of the MSP (main stack pointer)
//   84  * Cortex processor register
//   85  */
//   86 __ASM uint32_t __get_MSP(void)
//   87 {
//   88   mrs r0, msp
//   89   bx lr
//   90 }
//   91 
//   92 /**
//   93  * @brief  Set the Main Stack Pointer
//   94  *
//   95  * @param  topOfMainStack  Main Stack Pointer
//   96  *
//   97  * Assign the value mainStackPointer to the MSP 
//   98  * (main stack pointer) Cortex processor register
//   99  */
//  100 __ASM void __set_MSP(uint32_t mainStackPointer)
//  101 {
//  102   msr msp, r0
//  103   bx lr
//  104 }
//  105 
//  106 /**
//  107  * @brief  Reverse byte order in unsigned short value
//  108  *
//  109  * @param   value  value to reverse
//  110  * @return         reversed value
//  111  *
//  112  * Reverse byte order in unsigned short value
//  113  */
//  114 __ASM uint32_t __REV16(uint16_t value)
//  115 {
//  116   rev16 r0, r0
//  117   bx lr
//  118 }
//  119 
//  120 /**
//  121  * @brief  Reverse byte order in signed short value with sign extension to integer
//  122  *
//  123  * @param   value  value to reverse
//  124  * @return         reversed value
//  125  *
//  126  * Reverse byte order in signed short value with sign extension to integer
//  127  */
//  128 __ASM int32_t __REVSH(int16_t value)
//  129 {
//  130   revsh r0, r0
//  131   bx lr
//  132 }
//  133 
//  134 
//  135 #if (__ARMCC_VERSION < 400000)
//  136 
//  137 /**
//  138  * @brief  Remove the exclusive lock created by ldrex
//  139  *
//  140  * Removes the exclusive lock which is created by ldrex.
//  141  */
//  142 __ASM void __CLREX(void)
//  143 {
//  144   clrex
//  145 }
//  146 
//  147 /**
//  148  * @brief  Return the Base Priority value
//  149  *
//  150  * @return BasePriority
//  151  *
//  152  * Return the content of the base priority register
//  153  */
//  154 __ASM uint32_t  __get_BASEPRI(void)
//  155 {
//  156   mrs r0, basepri
//  157   bx lr
//  158 }
//  159 
//  160 /**
//  161  * @brief  Set the Base Priority value
//  162  *
//  163  * @param  basePri  BasePriority
//  164  *
//  165  * Set the base priority register
//  166  */
//  167 __ASM void __set_BASEPRI(uint32_t basePri)
//  168 {
//  169   msr basepri, r0
//  170   bx lr
//  171 }
//  172 
//  173 /**
//  174  * @brief  Return the Priority Mask value
//  175  *
//  176  * @return PriMask
//  177  *
//  178  * Return state of the priority mask bit from the priority mask register
//  179  */
//  180 __ASM uint32_t __get_PRIMASK(void)
//  181 {
//  182   mrs r0, primask
//  183   bx lr
//  184 }
//  185 
//  186 /**
//  187  * @brief  Set the Priority Mask value
//  188  *
//  189  * @param  priMask  PriMask
//  190  *
//  191  * Set the priority mask bit in the priority mask register
//  192  */
//  193 __ASM void __set_PRIMASK(uint32_t priMask)
//  194 {
//  195   msr primask, r0
//  196   bx lr
//  197 }
//  198 
//  199 /**
//  200  * @brief  Return the Fault Mask value
//  201  *
//  202  * @return FaultMask
//  203  *
//  204  * Return the content of the fault mask register
//  205  */
//  206 __ASM uint32_t  __get_FAULTMASK(void)
//  207 {
//  208   mrs r0, faultmask
//  209   bx lr
//  210 }
//  211 
//  212 /**
//  213  * @brief  Set the Fault Mask value
//  214  *
//  215  * @param  faultMask  faultMask value
//  216  *
//  217  * Set the fault mask register
//  218  */
//  219 __ASM void __set_FAULTMASK(uint32_t faultMask)
//  220 {
//  221   msr faultmask, r0
//  222   bx lr
//  223 }
//  224 
//  225 /**
//  226  * @brief  Return the Control Register value
//  227  * 
//  228  * @return Control value
//  229  *
//  230  * Return the content of the control register
//  231  */
//  232 __ASM uint32_t __get_CONTROL(void)
//  233 {
//  234   mrs r0, control
//  235   bx lr
//  236 }
//  237 
//  238 /**
//  239  * @brief  Set the Control Register value
//  240  *
//  241  * @param  control  Control value
//  242  *
//  243  * Set the control register
//  244  */
//  245 __ASM void __set_CONTROL(uint32_t control)
//  246 {
//  247   msr control, r0
//  248   bx lr
//  249 }
//  250 
//  251 #endif /* __ARMCC_VERSION  */ 
//  252 
//  253 
//  254 
//  255 #elif (defined (__ICCARM__)) /*------------------ ICC Compiler -------------------*/
//  256 /* IAR iccarm specific functions */
//  257 #pragma diag_suppress=Pe940
//  258 
//  259 /**
//  260  * @brief  Return the Process Stack Pointer
//  261  *
//  262  * @return ProcessStackPointer
//  263  *
//  264  * Return the actual process stack pointer
//  265  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function __get_PSP
          CFI NoCalls
        THUMB
//  266 uint32_t __get_PSP(void)
//  267 {
//  268   __ASM("mrs r0, psp");
__get_PSP:
        mrs r0, psp
//  269   __ASM("bx lr");
        bx lr
//  270 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  271 
//  272 /**
//  273  * @brief  Set the Process Stack Pointer
//  274  *
//  275  * @param  topOfProcStack  Process Stack Pointer
//  276  *
//  277  * Assign the value ProcessStackPointer to the MSP 
//  278  * (process stack pointer) Cortex processor register
//  279  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function __set_PSP
          CFI NoCalls
        THUMB
//  280 void __set_PSP(uint32_t topOfProcStack)
//  281 {
//  282   __ASM("msr psp, r0");
__set_PSP:
        msr psp, r0
//  283   __ASM("bx lr");
        bx lr
//  284 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  285 
//  286 /**
//  287  * @brief  Return the Main Stack Pointer
//  288  *
//  289  * @return Main Stack Pointer
//  290  *
//  291  * Return the current value of the MSP (main stack pointer)
//  292  * Cortex processor register
//  293  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function __get_MSP
          CFI NoCalls
        THUMB
//  294 uint32_t __get_MSP(void)
//  295 {
//  296   __ASM("mrs r0, msp");
__get_MSP:
        mrs r0, msp
//  297   __ASM("bx lr");
        bx lr
//  298 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  299 
//  300 /**
//  301  * @brief  Set the Main Stack Pointer
//  302  *
//  303  * @param  topOfMainStack  Main Stack Pointer
//  304  *
//  305  * Assign the value mainStackPointer to the MSP 
//  306  * (main stack pointer) Cortex processor register
//  307  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function __set_MSP
          CFI NoCalls
        THUMB
//  308 void __set_MSP(uint32_t topOfMainStack)
//  309 {
//  310   __ASM("msr msp, r0");
__set_MSP:
        msr msp, r0
//  311   __ASM("bx lr");
        bx lr
//  312 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  313 
//  314 /**
//  315  * @brief  Reverse byte order in unsigned short value
//  316  *
//  317  * @param  value  value to reverse
//  318  * @return        reversed value
//  319  *
//  320  * Reverse byte order in unsigned short value
//  321  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function __REV16
          CFI NoCalls
        THUMB
//  322 uint32_t __REV16(uint16_t value)
//  323 {
//  324   __ASM("rev16 r0, r0");
__REV16:
        rev16 r0, r0
//  325   __ASM("bx lr");
        bx lr
//  326 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  327 
//  328 /**
//  329  * @brief  Reverse bit order of value
//  330  *
//  331  * @param  value  value to reverse
//  332  * @return        reversed value
//  333  *
//  334  * Reverse bit order of value
//  335  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function __RBIT
          CFI NoCalls
        THUMB
//  336 uint32_t __RBIT(uint32_t value)
//  337 {
//  338   __ASM("rbit r0, r0");
__RBIT:
        rbit r0, r0
//  339   __ASM("bx lr");
        bx lr
//  340 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  341 
//  342 /**
//  343  * @brief  LDR Exclusive (8 bit)
//  344  *
//  345  * @param  *addr  address pointer
//  346  * @return        value of (*address)
//  347  *
//  348  * Exclusive LDR command for 8 bit values)
//  349  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function __LDREXB
          CFI NoCalls
        THUMB
//  350 uint8_t __LDREXB(uint8_t *addr)
//  351 {
//  352   __ASM("ldrexb r0, [r0]");
__LDREXB:
        ldrexb r0, [r0]
//  353   __ASM("bx lr"); 
        bx lr
//  354 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  355 
//  356 /**
//  357  * @brief  LDR Exclusive (16 bit)
//  358  *
//  359  * @param  *addr  address pointer
//  360  * @return        value of (*address)
//  361  *
//  362  * Exclusive LDR command for 16 bit values
//  363  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function __LDREXH
          CFI NoCalls
        THUMB
//  364 uint16_t __LDREXH(uint16_t *addr)
//  365 {
//  366   __ASM("ldrexh r0, [r0]");
__LDREXH:
        ldrexh r0, [r0]
//  367   __ASM("bx lr");
        bx lr
//  368 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  369 
//  370 /**
//  371  * @brief  LDR Exclusive (32 bit)
//  372  *
//  373  * @param  *addr  address pointer
//  374  * @return        value of (*address)
//  375  *
//  376  * Exclusive LDR command for 32 bit values
//  377  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function __LDREXW
          CFI NoCalls
        THUMB
//  378 uint32_t __LDREXW(uint32_t *addr)
//  379 {
//  380   __ASM("ldrex r0, [r0]");
__LDREXW:
        ldrex r0, [r0]
//  381   __ASM("bx lr");
        bx lr
//  382 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  383 
//  384 /**
//  385  * @brief  STR Exclusive (8 bit)
//  386  *
//  387  * @param  value  value to store
//  388  * @param  *addr  address pointer
//  389  * @return        successful / failed
//  390  *
//  391  * Exclusive STR command for 8 bit values
//  392  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function __STREXB
          CFI NoCalls
        THUMB
//  393 uint32_t __STREXB(uint8_t value, uint8_t *addr)
//  394 {
//  395   __ASM("strexb r0, r0, [r1]");
__STREXB:
        strexb r0, r0, [r1]
//  396   __ASM("bx lr");
        bx lr
//  397 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  398 
//  399 /**
//  400  * @brief  STR Exclusive (16 bit)
//  401  *
//  402  * @param  value  value to store
//  403  * @param  *addr  address pointer
//  404  * @return        successful / failed
//  405  *
//  406  * Exclusive STR command for 16 bit values
//  407  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function __STREXH
          CFI NoCalls
        THUMB
//  408 uint32_t __STREXH(uint16_t value, uint16_t *addr)
//  409 {
//  410   __ASM("strexh r0, r0, [r1]");
__STREXH:
        strexh r0, r0, [r1]
//  411   __ASM("bx lr");
        bx lr
//  412 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  413 
//  414 /**
//  415  * @brief  STR Exclusive (32 bit)
//  416  *
//  417  * @param  value  value to store
//  418  * @param  *addr  address pointer
//  419  * @return        successful / failed
//  420  *
//  421  * Exclusive STR command for 32 bit values
//  422  */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function __STREXW
          CFI NoCalls
        THUMB
//  423 uint32_t __STREXW(uint32_t value, uint32_t *addr)
//  424 {
//  425   __ASM("strex r0, r0, [r1]");
__STREXW:
        strex r0, r0, [r1]
//  426   __ASM("bx lr");
        bx lr
//  427 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  428 
//  429 #pragma diag_default=Pe940
//  430 
//  431 
//  432 #elif (defined (__GNUC__)) /*------------------ GNU Compiler ---------------------*/
//  433 /* GNU gcc specific functions */
//  434 
//  435 /**
//  436  * @brief  Return the Process Stack Pointer
//  437  *
//  438  * @return ProcessStackPointer
//  439  *
//  440  * Return the actual process stack pointer
//  441  */
//  442 uint32_t __get_PSP(void) __attribute__( ( naked ) );
//  443 uint32_t __get_PSP(void)
//  444 {
//  445   uint32_t result=0;
//  446 
//  447   __ASM volatile ("MRS %0, psp\n\t" 
//  448                   "MOV r0, %0 \n\t"
//  449                   "BX  lr     \n\t"  : "=r" (result) );
//  450   return(result);
//  451 }
//  452 
//  453 /**
//  454  * @brief  Set the Process Stack Pointer
//  455  *
//  456  * @param  topOfProcStack  Process Stack Pointer
//  457  *
//  458  * Assign the value ProcessStackPointer to the MSP 
//  459  * (process stack pointer) Cortex processor register
//  460  */
//  461 void __set_PSP(uint32_t topOfProcStack) __attribute__( ( naked ) );
//  462 void __set_PSP(uint32_t topOfProcStack)
//  463 {
//  464   __ASM volatile ("MSR psp, %0\n\t"
//  465                   "BX  lr     \n\t" : : "r" (topOfProcStack) );
//  466 }
//  467 
//  468 /**
//  469  * @brief  Return the Main Stack Pointer
//  470  *
//  471  * @return Main Stack Pointer
//  472  *
//  473  * Return the current value of the MSP (main stack pointer)
//  474  * Cortex processor register
//  475  */
//  476 uint32_t __get_MSP(void) __attribute__( ( naked ) );
//  477 uint32_t __get_MSP(void)
//  478 {
//  479   uint32_t result=0;
//  480 
//  481   __ASM volatile ("MRS %0, msp\n\t" 
//  482                   "MOV r0, %0 \n\t"
//  483                   "BX  lr     \n\t"  : "=r" (result) );
//  484   return(result);
//  485 }
//  486 
//  487 /**
//  488  * @brief  Set the Main Stack Pointer
//  489  *
//  490  * @param  topOfMainStack  Main Stack Pointer
//  491  *
//  492  * Assign the value mainStackPointer to the MSP 
//  493  * (main stack pointer) Cortex processor register
//  494  */
//  495 void __set_MSP(uint32_t topOfMainStack) __attribute__( ( naked ) );
//  496 void __set_MSP(uint32_t topOfMainStack)
//  497 {
//  498   __ASM volatile ("MSR msp, %0\n\t"
//  499                   "BX  lr     \n\t" : : "r" (topOfMainStack) );
//  500 }
//  501 
//  502 /**
//  503  * @brief  Return the Base Priority value
//  504  *
//  505  * @return BasePriority
//  506  *
//  507  * Return the content of the base priority register
//  508  */
//  509 uint32_t __get_BASEPRI(void)
//  510 {
//  511   uint32_t result=0;
//  512   
//  513   __ASM volatile ("MRS %0, basepri_max" : "=r" (result) );
//  514   return(result);
//  515 }
//  516 
//  517 /**
//  518  * @brief  Set the Base Priority value
//  519  *
//  520  * @param  basePri  BasePriority
//  521  *
//  522  * Set the base priority register
//  523  */
//  524 void __set_BASEPRI(uint32_t value)
//  525 {
//  526   __ASM volatile ("MSR basepri, %0" : : "r" (value) );
//  527 }
//  528 
//  529 /**
//  530  * @brief  Return the Priority Mask value
//  531  *
//  532  * @return PriMask
//  533  *
//  534  * Return state of the priority mask bit from the priority mask register
//  535  */
//  536 uint32_t __get_PRIMASK(void)
//  537 {
//  538   uint32_t result=0;
//  539 
//  540   __ASM volatile ("MRS %0, primask" : "=r" (result) );
//  541   return(result);
//  542 }
//  543 
//  544 /**
//  545  * @brief  Set the Priority Mask value
//  546  *
//  547  * @param  priMask  PriMask
//  548  *
//  549  * Set the priority mask bit in the priority mask register
//  550  */
//  551 void __set_PRIMASK(uint32_t priMask)
//  552 {
//  553   __ASM volatile ("MSR primask, %0" : : "r" (priMask) );
//  554 }
//  555 
//  556 /**
//  557  * @brief  Return the Fault Mask value
//  558  *
//  559  * @return FaultMask
//  560  *
//  561  * Return the content of the fault mask register
//  562  */
//  563 uint32_t __get_FAULTMASK(void)
//  564 {
//  565   uint32_t result=0;
//  566   
//  567   __ASM volatile ("MRS %0, faultmask" : "=r" (result) );
//  568   return(result);
//  569 }
//  570 
//  571 /**
//  572  * @brief  Set the Fault Mask value
//  573  *
//  574  * @param  faultMask  faultMask value
//  575  *
//  576  * Set the fault mask register
//  577  */
//  578 void __set_FAULTMASK(uint32_t faultMask)
//  579 {
//  580   __ASM volatile ("MSR faultmask, %0" : : "r" (faultMask) );
//  581 }
//  582 
//  583 /**
//  584  * @brief  Return the Control Register value
//  585 * 
//  586 *  @return Control value
//  587  *
//  588  * Return the content of the control register
//  589  */
//  590 uint32_t __get_CONTROL(void)
//  591 {
//  592   uint32_t result=0;
//  593 
//  594   __ASM volatile ("MRS %0, control" : "=r" (result) );
//  595   return(result);
//  596 }
//  597 
//  598 /**
//  599  * @brief  Set the Control Register value
//  600  *
//  601  * @param  control  Control value
//  602  *
//  603  * Set the control register
//  604  */
//  605 void __set_CONTROL(uint32_t control)
//  606 {
//  607   __ASM volatile ("MSR control, %0" : : "r" (control) );
//  608 }
//  609 
//  610 
//  611 /**
//  612  * @brief  Reverse byte order in integer value
//  613  *
//  614  * @param  value  value to reverse
//  615  * @return        reversed value
//  616  *
//  617  * Reverse byte order in integer value
//  618  */
//  619 uint32_t __REV(uint32_t value)
//  620 {
//  621   uint32_t result=0;
//  622   
//  623   __ASM volatile ("rev %0, %1" : "=r" (result) : "r" (value) );
//  624   return(result);
//  625 }
//  626 
//  627 /**
//  628  * @brief  Reverse byte order in unsigned short value
//  629  *
//  630  * @param  value  value to reverse
//  631  * @return        reversed value
//  632  *
//  633  * Reverse byte order in unsigned short value
//  634  */
//  635 uint32_t __REV16(uint16_t value)
//  636 {
//  637   uint32_t result=0;
//  638   
//  639   __ASM volatile ("rev16 %0, %1" : "=r" (result) : "r" (value) );
//  640   return(result);
//  641 }
//  642 
//  643 /**
//  644  * @brief  Reverse byte order in signed short value with sign extension to integer
//  645  *
//  646  * @param  value  value to reverse
//  647  * @return        reversed value
//  648  *
//  649  * Reverse byte order in signed short value with sign extension to integer
//  650  */
//  651 int32_t __REVSH(int16_t value)
//  652 {
//  653   uint32_t result=0;
//  654   
//  655   __ASM volatile ("revsh %0, %1" : "=r" (result) : "r" (value) );
//  656   return(result);
//  657 }
//  658 
//  659 /**
//  660  * @brief  Reverse bit order of value
//  661  *
//  662  * @param  value  value to reverse
//  663  * @return        reversed value
//  664  *
//  665  * Reverse bit order of value
//  666  */
//  667 uint32_t __RBIT(uint32_t value)
//  668 {
//  669   uint32_t result=0;
//  670   
//  671    __ASM volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
//  672    return(result);
//  673 }
//  674 
//  675 /**
//  676  * @brief  LDR Exclusive (8 bit)
//  677  *
//  678  * @param  *addr  address pointer
//  679  * @return        value of (*address)
//  680  *
//  681  * Exclusive LDR command for 8 bit value
//  682  */
//  683 uint8_t __LDREXB(uint8_t *addr)
//  684 {
//  685     uint8_t result=0;
//  686   
//  687    __ASM volatile ("ldrexb %0, [%1]" : "=r" (result) : "r" (addr) );
//  688    return(result);
//  689 }
//  690 
//  691 /**
//  692  * @brief  LDR Exclusive (16 bit)
//  693  *
//  694  * @param  *addr  address pointer
//  695  * @return        value of (*address)
//  696  *
//  697  * Exclusive LDR command for 16 bit values
//  698  */
//  699 uint16_t __LDREXH(uint16_t *addr)
//  700 {
//  701     uint16_t result=0;
//  702   
//  703    __ASM volatile ("ldrexh %0, [%1]" : "=r" (result) : "r" (addr) );
//  704    return(result);
//  705 }
//  706 
//  707 /**
//  708  * @brief  LDR Exclusive (32 bit)
//  709  *
//  710  * @param  *addr  address pointer
//  711  * @return        value of (*address)
//  712  *
//  713  * Exclusive LDR command for 32 bit values
//  714  */
//  715 uint32_t __LDREXW(uint32_t *addr)
//  716 {
//  717     uint32_t result=0;
//  718   
//  719    __ASM volatile ("ldrex %0, [%1]" : "=r" (result) : "r" (addr) );
//  720    return(result);
//  721 }
//  722 
//  723 /**
//  724  * @brief  STR Exclusive (8 bit)
//  725  *
//  726  * @param  value  value to store
//  727  * @param  *addr  address pointer
//  728  * @return        successful / failed
//  729  *
//  730  * Exclusive STR command for 8 bit values
//  731  */
//  732 uint32_t __STREXB(uint8_t value, uint8_t *addr)
//  733 {
//  734    uint32_t result=0;
//  735   
//  736    __ASM volatile ("strexb %0, %2, [%1]" : "=r" (result) : "r" (addr), "r" (value) );
//  737    return(result);
//  738 }
//  739 
//  740 /**
//  741  * @brief  STR Exclusive (16 bit)
//  742  *
//  743  * @param  value  value to store
//  744  * @param  *addr  address pointer
//  745  * @return        successful / failed
//  746  *
//  747  * Exclusive STR command for 16 bit values
//  748  */
//  749 uint32_t __STREXH(uint16_t value, uint16_t *addr)
//  750 {
//  751    uint32_t result=0;
//  752   
//  753    __ASM volatile ("strexh %0, %2, [%1]" : "=r" (result) : "r" (addr), "r" (value) );
//  754    return(result);
//  755 }
//  756 
//  757 /**
//  758  * @brief  STR Exclusive (32 bit)
//  759  *
//  760  * @param  value  value to store
//  761  * @param  *addr  address pointer
//  762  * @return        successful / failed
//  763  *
//  764  * Exclusive STR command for 32 bit values
//  765  */
//  766 uint32_t __STREXW(uint32_t value, uint32_t *addr)
//  767 {
//  768    uint32_t result=0;
//  769   
//  770    __ASM volatile ("strex %0, %2, [%1]" : "=r" (result) : "r" (addr), "r" (value) );
//  771    return(result);
//  772 }
//  773 
//  774 
//  775 #elif (defined (__TASKING__)) /*------------------ TASKING Compiler ---------------------*/
//  776 /* TASKING carm specific functions */
//  777 
//  778 /*
//  779  * The CMSIS functions have been implemented as intrinsics in the compiler.
//  780  * Please use "carm -?i" to get an up to date list of all instrinsics,
//  781  * Including the CMSIS ones.
//  782  */
//  783 
//  784 #endif
// 
// 94 bytes in section .text
// 
// 94 bytes of CODE memory
//
//Errors: none
//Warnings: none
