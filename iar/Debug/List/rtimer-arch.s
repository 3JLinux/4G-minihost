///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:19
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\rtimer-arch.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\rtimer-arch.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\rtimer-arch.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN NVIC_Init
        EXTERN NVIC_PriorityGroupConfig
        EXTERN rtimer_run_next

        PUBLIC TIM2_IRQHandler
        PUBLIC TIM2_Init
        PUBLIC rtimer_arch_disable_irq
        PUBLIC rtimer_arch_enable_irq
        PUBLIC rtimer_arch_init
        PUBLIC rtimer_arch_now
        PUBLIC rtimer_arch_schedule
        PUBLIC rtimer_arch_set
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\rtimer-arch.c
//    1 /**
//    2  * \addtogroup mbxxx-platform
//    3  *
//    4  * @{
//    5  */
//    6 
//    7 /*
//    8  * Copyright (c) 2010, STMicroelectronics.
//    9  * All rights reserved.
//   10  *
//   11  * Redistribution and use in source and binary forms, with or without
//   12  * modification, are permitted provided that the following conditions
//   13  * are met:
//   14  * 1. Redistributions of source code must retain the above copyright
//   15  *    notice, this list of conditions and the following disclaimer.
//   16  * 2. Redistributions in binary form must reproduce the above
//   17  *    copyright notice, this list of conditions and the following
//   18  *    disclaimer in the documentation and/or other materials provided
//   19  *    with the distribution.
//   20  * 3. The name of the author may not be used to endorse or promote
//   21  *    products derived from this software without specific prior
//   22  *    written permission.
//   23  *
//   24  * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS
//   25  * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//   26  * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   27  * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
//   28  * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   29  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
//   30  * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//   31  * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
//   32  * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//   33  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//   34  * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//   35  *
//   36  */
//   37 
//   38 /**
//   39 * \file
//   40 *			Real-timer specific implementation for STM32W.
//   41 * \author
//   42 *			Salvatore Pitrulli <salvopitru@users.sourceforge.net>
//   43 */
//   44 
//   45 #include "sys/energest.h"
//   46 #include "sys/rtimer.h"
//   47 #include "contiki-conf.h"
//   48 
//   49 #include "stm32f10x.h"
//   50 //#include "xprintf.h"
//   51 #include "rtimer-arch.h"
//   52 #include "arch_s.h"
//   53 #include "atom.h"
//   54 #include "sysprintf.h"
//   55 #include "iodef.h"
//   56 
//   57 
//   58 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   59 static uint16_t saved_TIMCFG;
saved_TIMCFG:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   60 static uint32_t time_msb = 0;   /* Most significant bits of the current time. */
time_msb:
        DS8 4
        DS8 4
//   61 
//   62 /* time of the next rtimer event. Initially is set to the max
//   63     value. */
//   64 static rtimer_clock_t next_rtimer_time = 0;
//   65 
//   66 
//   67 
//   68 #define TIM_UG                                       (0x00000001u)
//   69 #define INT_TIMUIF                                   (0x00000001u)
//   70 #define TIM_CEN                                      (0x00000001u)
//   71 #define INT_TIMCC1IF                                 (0x00000002u)
//   72 #define TIM_CURRENT									TIM2
//   73 
//   74 //unsigned char static ledstate = 0;
//   75   
//   76 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function TIM2_IRQHandler
        THUMB
//   77 void TIM2_IRQHandler(void)
//   78 {
TIM2_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   79 	if(TIM2->SR &INT_TIMUIF)
        LDR.N    R4,??DataTable5  ;; 0x4000000c
        LDRH     R0,[R4, #+4]
        LSLS     R0,R0,#+31
        BPL.N    ??TIM2_IRQHandler_0
//   80 	{
//   81 		rtimer_clock_t now, clock_to_wait;
//   82 
//   83 		//rtimer_clock_t clock_sys;
//   84 		/* Overflow event. */
//   85 		/* PRINTF("O %4x.\r\n", TIM1_CNT); */
//   86 		/* printf("OV "); */
//   87 		time_msb++;
        LDR.N    R0,??DataTable5_1
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+0]
//   88 		now = ((rtimer_clock_t) time_msb << 16) | TIM2->CNT;
        LDRH     R2,[R4, #+24]
//   89 		clock_to_wait = next_rtimer_time - now;
        LDR      R0,[R0, #+4]
        ORR      R1,R2,R1, LSL #+16
        SUBS     R0,R0,R1
//   90 
//   91 		//clock_sys = clock_time( );
//   92 
//   93 		if(clock_to_wait <= 0x10000 && clock_to_wait > 0) 
        CMP      R0,#+65537
        BCS.N    ??TIM2_IRQHandler_1
        CBZ.N    R0,??TIM2_IRQHandler_1
//   94 		{ 
//   95 			/* We must now set the Timer Compare Register. */
//   96 			#if 0
//   97 			TIM1_CCR1 = (uint16_t) clock_to_wait;
//   98 			INT_TIM1FLAG = INT_TIMCC1IF;
//   99 			INT_TIM1CFG |= INT_TIMCC1IF;      /* Compare 1 interrupt enable. */
//  100 			#endif
//  101 			TIM2->CCR1 = (uint16_t) clock_to_wait;
        STRH     R0,[R4, #+40]
//  102 			TIM2->SR = INT_TIMCC1IF;
        MOVS     R0,#+2
        STRH     R0,[R4, #+4]
//  103 			TIM2->DIER |= INT_TIMCC1IF;
        LDRH     R0,[R4, #+0]
        ORR      R0,R0,#0x2
        STRH     R0,[R4, #+0]
//  104 			//XPRINTF((0,"to wait\r\n"));
//  105 		}
//  106 		TIM2->SR = INT_TIMUIF;
??TIM2_IRQHandler_1:
        MOVS     R0,#+1
        STRH     R0,[R4, #+4]
//  107 		TIM2->SR &= ~(1<<0);
        MOVW     R1,#+65534
        LDRH     R0,[R4, #+4]
        ANDS     R0,R1,R0
        B.N      ??TIM2_IRQHandler_2
//  108 		//XPRINTF((0,"clock is %d\r\n", clock_time( )));
//  109 	}
//  110 	else 
//  111 	{
//  112 		if(TIM2->SR & INT_TIMCC1IF) 
??TIM2_IRQHandler_0:
        LDRH     R0,[R4, #+4]
        LSLS     R0,R0,#+30
        BPL.N    ??TIM2_IRQHandler_3
//  113 		{
//  114 			TIM2->DIER &= ~INT_TIMCC1IF;       /* Disable the next compare interrupt */
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65533
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
//  115 			ENERGEST_ON(ENERGEST_TYPE_IRQ);
//  116 			rtimer_run_next();
          CFI FunCall rtimer_run_next
        BL       rtimer_run_next
//  117 			ENERGEST_OFF(ENERGEST_TYPE_IRQ);
//  118 			
//  119 			//INT_TIM1FLAG = INT_TIMCC1IF;
//  120 			TIM2->SR = INT_TIMCC1IF;
        MOVS     R0,#+2
??TIM2_IRQHandler_2:
        STRH     R0,[R4, #+4]
//  121 			//TIM2->DIER = INT_TIMCC1IF;
//  122 			//XPRINTF((0,"schedule\r\n"));
//  123 		}
//  124 	}
//  125 	//TIM2->SR &= ~(1<<0);
//  126 }
??TIM2_IRQHandler_3:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//  127 
//  128 /*---------------------------------------------------------------------------*/
//  129 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function rtimer_arch_init
          CFI NoCalls
        THUMB
//  130 void
//  131 rtimer_arch_init(void)
//  132 {
rtimer_arch_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  133 #if 0
//  134 	TIM1_CR1 = 0;
//  135 	TIM1_PSC = RTIMER_ARCH_PRESCALER;
//  136 
//  137 	/* Counting from 0 to the maximum value. */
//  138 	TIM1_ARR = 0xffff;
//  139 
//  140 
//  141 	/* Bits of TIMx_CCMR1 as default. */
//  142 	/* Update Generation. */
//  143 	TIM1_EGR = TIM_UG;
//  144 	INT_TIM1FLAG = 0xffff;
//  145 
//  146 	/* Update interrupt enable (interrupt on overflow).*/
//  147 	INT_TIM1CFG = INT_TIMUIF;
//  148 
//  149 	/* Counter enable. */
//  150 	TIM1_CR1 = TIM_CEN;
//  151 
//  152 	/* Enable top level interrupt. */
//  153 	INT_CFGSET = INT_TIM1;
//  154 #endif
//  155 #if 1
//  156 
//  157 	RCC->APB1ENR |= 1<<0; //TIM2 CLK enable  72MHz
        LDR.N    R0,??DataTable5_2  ;; 0x4002101c
        LDR      R1,[R0, #+0]
        ORR      R1,R1,#0x1
        STR      R1,[R0, #+0]
//  158 	//RCC_PCLK1Config(RCC_HCLK_Div8);//TIM2 CLK (72/8)*2=18MHz
//  159 
//  160 	TIM2->CR1 = 0;
        MOV      R0,#+1073741824
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  161 
//  162 	TIM2->PSC = 7199;//TIM COUNT CLK IS (TIM2 CLK /PSC)18000000/1800= 10kHz  clk  RTIMER_ARCH_SECOND   10000
        MOVW     R1,#+7199
        STRH     R1,[R0, #+40]
//  163 	/* Counting from 0 to the maximum value. */
//  164 	//TIM2->ARR = 0xffff;
//  165 	TIM2->ARR = 0xffff;
        MOVW     R1,#+65535
        STRH     R1,[R0, #+44]
//  166 
//  167 	/* Bits of TIMx_CCMR1 as default. */
//  168 	/* Update Generation. */
//  169 	TIM2->EGR = TIM_UG;
        MOVS     R1,#+1
        STRH     R1,[R0, #+20]
//  170 	//TIM2->SR  = 0xffff;
//  171 
//  172 	/* Update interrupt enable (interrupt on overflow).*/
//  173 	TIM2->DIER = INT_TIMUIF;
        STRH     R1,[R0, #+12]
//  174 
//  175 	/* Counter enable. */
//  176 	TIM2->CR1 = TIM_CEN;
        STRH     R1,[R0, #+0]
//  177 
//  178 	{
//  179 		//TIM interrupt NVIC CONFIG
//  180 		NVIC_InitTypeDef strNVIC;
//  181 		/* Enable the TIM2 global Interrupt */
//  182 		NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);		
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock1
//  183 		strNVIC.NVIC_IRQChannel = TIM2_IRQn;
//  184 		strNVIC.NVIC_IRQChannelPreemptionPriority = 1;
//  185 		strNVIC.NVIC_IRQChannelSubPriority = 3;
//  186 		strNVIC.NVIC_IRQChannelCmd = ENABLE;
//  187 		NVIC_Init(&strNVIC);	
//  188 	}
//  189 #endif
//  190 #if 0
//  191 	//TIM2,3,4 clk is 72MHz after system reset
//  192 	//PCLK1 is 36MHz after system reset
//  193 	TIM_TypeDef strTIM;
//  194 	NVIC_InitTypeDef strNVIC;
//  195 	TIM_TimeBaseInitTypeDef strTIMTB;
//  196 
//  197 	//RCC config for TIM
//  198 	/* PCLK1 = HCLK/4 */
//  199 	//RCC_PCLK1Config(RCC_HCLK_Div4);
//  200 	/* TIM2 clock enable */
//  201 	//TIM2 clk is 72MHz
//  202 	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
//  203 
//  204 	/* Enable the TIM2 global Interrupt */
//  205 	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);		
//  206 	strNVIC.NVIC_IRQChannel = TIM2_IRQn;
//  207 	strNVIC.NVIC_IRQChannelPreemptionPriority = 1;
//  208 	strNVIC.NVIC_IRQChannelSubPriority = 3;
//  209 	strNVIC.NVIC_IRQChannelCmd = ENABLE;
//  210 	NVIC_Init(&strNVIC);
//  211 
//  212 	/* Time base configuration */
//  213 	TIM_DeInit(TIM2);
//  214 	//strTIMTB.TIM_Period = 65535; 			//设置计数溢出大小，每计满数就产生一个更新事件
//  215 	strTIMTB.TIM_Period = 5000; 			//设置计数溢出大小，每计满数就产生一个更新事件
//  216 	strTIMTB.TIM_Prescaler = (7200-1);		//预分频系数为，这样计数器时钟为72MHz/7200 = 10kHz       
//  217 	strTIMTB.TIM_ClockDivision = TIM_CKD_DIV1;
//  218 	strTIMTB.TIM_CounterMode = TIM_CounterMode_Up;
//  219 	TIM_TimeBaseInit(TIM2, &strTIMTB);
//  220 	TIM_ClearFlag(TIM2, TIM_FLAG_Update);	 //清除溢出中断标志 
//  221 	TIM_ITConfig(TIM2,TIM_IT_Update,ENABLE); //开启TIM2的中断
//  222 #endif
//  223 }
//  224 
//  225 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function rtimer_arch_disable_irq
          CFI NoCalls
        THUMB
//  226 void rtimer_arch_disable_irq(void)
//  227 {
//  228 	//ATOMIC(saved_TIMCFG = TIM2->DIER; TIM2->DIER = 0;)	
//  229 	//saved_TIMCFG = TIM2->DIER; TIM2->DIER = 0;
//  230 	//OSCRITICAL cr;
//  231 	//OSInitCritical(&cr);
//  232 	//OSEnterCritical(&cr);
//  233 	saved_TIMCFG = TIM2->DIER;
rtimer_arch_disable_irq:
        LDR.N    R0,??DataTable5  ;; 0x4000000c
        LDR.N    R2,??DataTable5_3
        LDRH     R1,[R0, #+0]
        STRH     R1,[R2, #+0]
//  234 	TIM2->DIER = 0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  235 	//OSExitCritical(&cr);
//  236 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  237 
//  238 
//  239 
//  240 
//  241 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function rtimer_arch_enable_irq
          CFI NoCalls
        THUMB
//  242 void rtimer_arch_enable_irq(void)
//  243 {
//  244 	TIM2->DIER = saved_TIMCFG;
rtimer_arch_enable_irq:
        LDR.N    R0,??DataTable5_3
        LDR.N    R1,??DataTable5  ;; 0x4000000c
        LDRH     R0,[R0, #+0]
        STRH     R0,[R1, #+0]
//  245 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  246 
//  247 
//  248 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function rtimer_arch_now
          CFI NoCalls
        THUMB
//  249 rtimer_clock_t rtimer_arch_now(void)
//  250 {
//  251 #if 0
//  252   	rtimer_clock_t t;
//  253 
//  254  	 //ATOMIC(t = ((rtimer_clock_t) time_msb << 16) | TIM1_CNT;)
//  255 	t = ((rtimer_clock_t) time_msb << 16) | TIM1->CNT;
//  256 	
//  257 	return t;
//  258   
//  259 #endif
//  260 #if 1
//  261 	rtimer_clock_t t;
//  262 	//OSCRITICAL cr;
//  263 	//PRINTF("rtimer now\r\n");
//  264 	//ATOMIC(t = ((rtimer_clock_t) time_msb << 16) | TIM2->CNT;)
//  265 	//OSInitCritical(&cr);
//  266 	//OSEnterCritical(&cr);
//  267 	t = ((rtimer_clock_t) time_msb << 16) | TIM2->CNT;
rtimer_arch_now:
        LDR.N    R0,??DataTable5_4  ;; 0x40000024
//  268 	//OSExitCritical(&cr);
//  269 	//PRINTF("rtimer now\r\n");
//  270 	return t;
        LDR.N    R1,??DataTable5_1
        LDRH     R0,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORR      R0,R0,R1, LSL #+16
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  271 #endif
//  272 }
//  273 
//  274 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function rtimer_arch_set
          CFI NoCalls
        THUMB
//  275 void
//  276 rtimer_arch_set(rtimer_clock_t t)
//  277 {
//  278 //offset = t -  RTIMER_ARCH_TIMER_BASE->TC_CV;
//  279 	
//  280 }
rtimer_arch_set:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  281 
//  282 
//  283 
//  284 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function rtimer_arch_schedule
          CFI NoCalls
        THUMB
//  285 void rtimer_arch_schedule(rtimer_clock_t t)
//  286 {
//  287 #if 0
//  288 	rtimer_clock_t now, clock_to_wait;
//  289 	XPRINTF((0,"rtimer_arch_schedule time %4x\r\n", /*((uint32_t*)&t)+1, */ (uint32_t)t));
//  290 	next_rtimer_time = t;
//  291 	now = rtimer_arch_now();
//  292 	clock_to_wait = t - now;
//  293 
//  294 	XPRINTF((0,"now %2x\r\n", TIM1_CNT));
//  295 	XPRINTF((0,"clock_to_wait %4x\r\n", clock_to_wait));
//  296 
//  297 	if(clock_to_wait <= 0x10000) {
//  298 	/* We must now set the Timer Compare Register. */
//  299 	TIM1_CCR1 = (uint16_t)now + (uint16_t)clock_to_wait;
//  300 	INT_TIM1FLAG = INT_TIMCC1IF;
//  301 	INT_TIM1CFG |= INT_TIMCC1IF;        /* Compare 1 interrupt enable. */
//  302 	XPRINTF((0,"2-INT_TIM1FLAG %2x\r\n", INT_TIM1FLAG));
//  303 	}
//  304 	/* else compare register will be set at overflow interrupt closer to
//  305 	the rtimer event. */
//  306 #endif
//  307 	rtimer_clock_t now, clock_to_wait;
//  308 	//XPRINTF((0,"rtimer_arch_schedule time %4x\r\n", /*((uint32_t*)&t)+1, */ (uint32_t)t));
//  309 	next_rtimer_time = t;
rtimer_arch_schedule:
        LDR.N    R1,??DataTable5_1
//  310 	now = rtimer_arch_now();
        LDR.N    R2,??DataTable5  ;; 0x4000000c
        STR      R0,[R1, #+4]
        LDRH     R3,[R2, #+24]
        LDR      R1,[R1, #+0]
        ORR      R1,R3,R1, LSL #+16
//  311 	clock_to_wait = t - now;
        SUBS     R0,R0,R1
//  312 
//  313 	//XPRINTF((0,"now %2x\r\n", TIM2->CNT));
//  314 	//XPRINTF((0,"clock_to_wait %4x\r\n", clock_to_wait));
//  315 
//  316 	if(clock_to_wait <= 0x10000) 
        CMP      R0,#+65537
        BCS.N    ??rtimer_arch_schedule_0
//  317 	{
//  318 		/* We must now set the Timer Compare Register. */
//  319 		TIM2->CCR1= (uint16_t)now + (uint16_t)clock_to_wait;
        ADDS     R0,R0,R1
        STRH     R0,[R2, #+40]
//  320 		TIM2->SR = INT_TIMCC1IF;
        MOVS     R0,#+2
        STRH     R0,[R2, #+4]
//  321 		TIM2->DIER |= INT_TIMCC1IF;        /* Compare 1 interrupt enable. */
        LDRH     R0,[R2, #+0]
        ORR      R0,R0,#0x2
        STRH     R0,[R2, #+0]
//  322 		//XPRINTF((0,"2-INT_TIM1FLAG %2x\r\n", TIM2->SR));
//  323 	}
//  324 	/* else compare register will be set at overflow interrupt closer to
//  325 	the rtimer event. */
//  326 
//  327 }
??rtimer_arch_schedule_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x4000000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     time_msb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x4002101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     saved_TIMCFG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x40000024
//  328 /*---------------------------------------------------------------------------*/
//  329 
//  330 
//  331 
//  332 
//  333 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function TIM2_Init
          CFI NoCalls
        THUMB
//  334 void TIM2_Init(u16 uwARR, u16 uwPSC)
//  335 {
TIM2_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  336 	#if 1
//  337 	RCC->APB1ENR |= 1<<0; //TIM2 CLK enable  72MHz
        LDR.N    R2,??TIM2_Init_0  ;; 0x4002101c
        B.N      ??TIM2_Init_1
        Nop      
        DATA
??TIM2_Init_0:
        DC32     0x4002101c
        THUMB
??TIM2_Init_1:
        LDR      R3,[R2, #+0]
        ORR      R3,R3,#0x1
        STR      R3,[R2, #+0]
//  338 	TIM2->ARR = uwARR; //auto number 
        MOV      R2,#+1073741824
        STRH     R0,[R2, #+44]
//  339 	TIM2->PSC = uwPSC; //
        STRH     R1,[R2, #+40]
//  340 
//  341 	TIM2->DIER |= 1 << 0; //Allow update interrupt
        LDRH     R0,[R2, #+12]
        ORR      R0,R0,#0x1
        STRH     R0,[R2, #+12]
//  342 	//TIM2->DIER |= 1 << 6; //Allow trige interrupt
//  343 
//  344 	TIM2->CR1 |= 0x01; //enable TIM2
        LDRH     R0,[R2, #+0]
        ORR      R0,R0,#0x1
        STRH     R0,[R2, #+0]
          CFI EndBlock cfiBlock7
//  345 
//  346 	{
//  347 		NVIC_InitTypeDef strNVIC;
//  348 		/* Enable the TIM2 global Interrupt */
//  349 		NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);		
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  350 		strNVIC.NVIC_IRQChannel = TIM2_IRQn;
//  351 		strNVIC.NVIC_IRQChannelPreemptionPriority = 1;
//  352 		strNVIC.NVIC_IRQChannelSubPriority = 3;
//  353 		strNVIC.NVIC_IRQChannelCmd = ENABLE;
//  354 		NVIC_Init(&strNVIC);	
//  355 	}
//  356 #endif
//  357 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+8
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        MOV      R0,#+1280
          CFI FunCall rtimer_arch_init NVIC_PriorityGroupConfig
          CFI FunCall TIM2_Init NVIC_PriorityGroupConfig
        BL       NVIC_PriorityGroupConfig
        MOVS     R0,#+28
        STRB     R0,[SP, #+0]
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
        ADD      R0,SP,#+0
          CFI FunCall rtimer_arch_init NVIC_Init
          CFI FunCall TIM2_Init NVIC_Init
        BL       NVIC_Init
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  358 
//  359 
//  360 
//  361 
//  362 
//  363 
//  364 
//  365 /** @} */
// 
//  10 bytes in section .bss
// 316 bytes in section .text
// 
// 316 bytes of CODE memory
//  10 bytes of DATA memory
//
//Errors: none
//Warnings: 1
