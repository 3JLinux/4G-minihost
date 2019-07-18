///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\clock.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\clock.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\clock.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN SystemCoreClock
        EXTERN etimer_next_expiration_time
        EXTERN etimer_pending
        EXTERN etimer_request_poll

        PUBLIC SysTick_Handler
        PUBLIC clock_delay
        PUBLIC clock_init
        PUBLIC clock_seconds
        PUBLIC clock_time
        PUBLIC clock_wait
        PUBLIC g_sysTime
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\clock.c
//    1 /*
//    2 #include <stm32f10x_map.h>
//    3 #include <nvic.h>
//    4 */
//    5 //替换头文件
//    6 //#include "sys/process.h"
//    7 #include "stm32f10x.h"
//    8 #include "stm32f10x_it.h"
//    9 
//   10 #include <sys/clock.h>
//   11 #include <sys/cc.h>
//   12 #include <sys/etimer.h>
//   13 #include <debug-uart.h>
//   14 
//   15 #include "sysprintf.h"
//   16 #include "basictype.h"
//   17 //#include "radio/si4432_rf.h"
//   18 //#include "radio/si4432.h"
//   19 #include "si446x.h"
//   20 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   21 static volatile clock_time_t current_clock = 0;
current_clock:
        DATA
        DC32 0
        DC32 0
        DC32 1000
//   22 static volatile unsigned long current_seconds = 0;
//   23 static unsigned int second_countdown = CLOCK_SECOND;
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 clock_time_t g_sysTime = 0;
g_sysTime:
        DS8 4
//   26 
//   27 
//   28 #if 0
//   29 static __INLINE uint32_t SysTick_Config(uint32_t ticks)
//   30 { 
//   31   if (ticks > SysTick_LOAD_RELOAD_Msk)  return (1);            /* Reload value impossible */
//   32                                                                
//   33   SysTick->LOAD  = (ticks & SysTick_LOAD_RELOAD_Msk) - 1;      /* set reload register */
//   34   NVIC_SetPriority (SysTick_IRQn, (1<<__NVIC_PRIO_BITS) - 1);  /* set Priority for Cortex-M0 System Interrupts */
//   35   SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
//   36   SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk | 
//   37                    SysTick_CTRL_TICKINT_Msk   | 
//   38                    SysTick_CTRL_ENABLE_Msk;                    /* Enable SysTick IRQ and SysTick Timer */
//   39   return (0);                                                  /* Function successful */
//   40 }
//   41 #endif
//   42 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SysTick_Handler
        THUMB
//   43 void SysTick_Handler(void)
//   44 {
SysTick_Handler:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   45 	//(void)SysTick->CTRL;
//   46 	//SCB->ICSR = SCB_ICSR_PENDSTCLR;
//   47 	current_clock++;
        LDR.N    R4,??DataTable4
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+0]
//   48 	if(etimer_pending() && etimer_next_expiration_time() <= current_clock) 
          CFI FunCall etimer_pending
        BL       etimer_pending
        CBZ.N    R0,??SysTick_Handler_0
        LDR      R5,[R4, #+0]
          CFI FunCall etimer_next_expiration_time
        BL       etimer_next_expiration_time
        CMP      R5,R0
        IT       CS 
        BLCS     etimer_request_poll
//   49 	{
//   50 		etimer_request_poll();
//   51 	}
//   52 	if (--second_countdown == 0) 
??SysTick_Handler_0:
        LDR      R0,[R4, #+8]
        SUBS     R0,R0,#+1
        BNE.N    ??SysTick_Handler_1
//   53 	{
//   54 		current_seconds++;
        LDR      R0,[R4, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+4]
//   55 		second_countdown = CLOCK_SECOND;
        MOV      R0,#+1000
??SysTick_Handler_1:
        STR      R0,[R4, #+8]
//   56 	}
//   57 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//   58 
//   59 #if 0
//   60 void
//   61 clock_init()
//   62 {
//   63   /*
//   64   NVIC_SET_SYSTICK_PRI(8);
//   65   SysTick->LOAD = MCK/8/CLOCK_SECOND;
//   66   SysTick->CTRL = SysTick_CTRL_ENABLE | SysTick_CTRL_TICKINT;
//   67   */
//   68   #if 0
//   69   current_clock = 0;
//   70   //Systick时钟每s触发一次CLOCK_SECOND次
//   71   if (SysTick_Config(SystemCoreClock / CLOCK_SECOND))
//   72   { 
//   73     //
//   74    	while (1);
//   75   }
//   76   #endif
//   77   /* SysTick initialization using the system clock.*/
//   78   SysTick->LOAD = SystemCoreClock / CLOCK_SECOND - 1;
//   79   SysTick->VAL = 0;
//   80   SysTick->CTRL = SysTick_CTRL_CLKSOURCE_Msk |
//   81                   SysTick_CTRL_ENABLE_Msk |
//   82                   SysTick_CTRL_TICKINT_Msk;}
//   83 #else
//   84 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function clock_init
          CFI NoCalls
        THUMB
//   85 void
//   86 clock_init()
//   87 {
//   88 	current_clock = 0;
clock_init:
        LDR.N    R1,??DataTable4
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
//   89 	SysTick_Config(SystemCoreClock / CLOCK_SECOND);   
        MOV      R1,#+1000
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        CMP      R0,#+16777216
        BCS.N    ??clock_init_0
        LDR.N    R1,??DataTable4_2  ;; 0xe000e010
        LDR.N    R2,??DataTable4_3  ;; 0xe000ed23
        STR      R0,[R1, #+4]
        MOVS     R0,#+240
        STRB     R0,[R2, #+0]
        MOVS     R0,#+0
        STR      R0,[R1, #+8]
        MOVS     R0,#+7
        STR      R0,[R1, #+0]
//   90 }
??clock_init_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   91 #endif
//   92 
//   93 
//   94 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function clock_time
          CFI NoCalls
        THUMB
//   95 clock_time_t
//   96 clock_time(void)
//   97 {
//   98 	return current_clock;
clock_time:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   99 }
//  100 
//  101 #if 0
//  102 /* The inner loop takes 4 cycles. The outer 5+SPIN_COUNT*4. */
//  103 
//  104 #define SPIN_TIME 2 /* us */
//  105 #define SPIN_COUNT (((MCK*SPIN_TIME/1000000)-5)/4)
//  106 
//  107 #ifndef __MAKING_DEPS__
//  108 
//  109 void
//  110 clock_delay(unsigned int t)
//  111 {
//  112 #ifdef __THUMBEL__ 
//  113   asm volatile("1: mov r1,%2\n2:\tsub r1,#1\n\tbne 2b\n\tsub %0,#1\n\tbne 1b\n":"=l"(t):"0"(t),"l"(SPIN_COUNT));
//  114 #else
//  115 #error Must be compiled in thumb mode
//  116 #endif
//  117 }
//  118 #endif
//  119 #endif /* __MAKING_DEPS__ */
//  120 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function clock_delay
          CFI NoCalls
        THUMB
//  121 void clock_delay(unsigned int t)
//  122 {
//  123 	unsigned int i;
//  124 	for(i = 0; i < t; i++)
//  125 	{
//  126 		
//  127 	}
//  128 }
clock_delay:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  129 
//  130 /*---------------------------------------------------------------------------*/
//  131 /**
//  132  * Wait for a multiple of 1 ms.
//  133  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function clock_wait
          CFI NoCalls
        THUMB
//  134 void
//  135 clock_wait(clock_time_t i)
//  136 {
//  137 	clock_time_t start;
//  138 
//  139 	start = clock_time();
clock_wait:
        LDR.N    R1,??DataTable4
        LDR      R2,[R1, #+0]
//  140 	//XPRINTF((0, "start t %d \r\n", start));
//  141 	while(clock_time( ) - start < (clock_time_t) i)
??clock_wait_0:
        LDR      R3,[R1, #+0]
        SUBS     R3,R3,R2
        CMP      R3,R0
        BCC.N    ??clock_wait_0
//  142 	{
//  143 		//XPRINTF((0, "sys t %d \r\n", clock_time( )));
//  144 	}
//  145 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  146 
//  147 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function clock_seconds
          CFI NoCalls
        THUMB
//  148 unsigned long
//  149 clock_seconds(void)
//  150 {
//  151 	return current_seconds;
clock_seconds:
        LDR.N    R0,??DataTable4
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  152 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     current_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0xe000ed23

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  153 
//  154 
//  155 
// 
//   4 bytes in section .bss
//  12 bytes in section .data
// 140 bytes in section .text
// 
// 140 bytes of CODE memory
//  16 bytes of DATA memory
//
//Errors: none
//Warnings: 1
