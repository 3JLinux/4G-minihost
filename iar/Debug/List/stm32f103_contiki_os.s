///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\stm32f103_contiki_os.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\stm32f103_contiki_os.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\stm32f103_contiki_os.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_Init
        EXTERN GPIO_WriteBit
        EXTERN NVIC_Init
        EXTERN NVIC_PriorityGroupConfig
        EXTERN RCC_APB1PeriphClockCmd
        EXTERN RCC_APB2PeriphClockCmd

        PUBLIC OSInitSys
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\stm32f103_contiki_os.c
//    1 #include "contiki-conf.h"
//    2 #include "stm32f10x.h"
//    3 #include "iodef.h"
//    4 #include "basictype.h"
//    5 #include "atom.h"
//    6 
//    7 #include "sysprintf.h"
//    8 
//    9 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function OSInitSys
        THUMB
//   10 void OSInitSys(void)
//   11 {
OSInitSys:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+12
          CFI CFA R13+32
//   12 	GPIO_InitTypeDef gpioInitSt;
//   13 	NVIC_InitTypeDef nvicInitSt;
//   14 
//   15 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO,ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//   16 	//然后调用GPIO重映射函数，根据需求实现重映射：
//   17 	
//   18 
//   19 	//Periph clock enable 
//   20 	RCC_APB1PeriphClockCmd(
//   21 		  RCC_APB1Periph_USART2
//   22 		|RCC_APB1Periph_USART3
//   23 //		|RCC_APB1Periph_WWDG
//   24 		|RCC_APB1Periph_UART4
//   25 		|RCC_APB1Periph_UART5
//   26 //		|RCC_APB1Periph_BKP
//   27 		,ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+1966080
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//   28 
//   29 	//------------------------------------------------------------
//   30 	//RCC_APB2Periph_AFIO
//   31 	RCC_APB2PeriphClockCmd(
//   32 					  RCC_APB2Periph_GPIOA
//   33 					|RCC_APB2Periph_GPIOB
//   34 					|RCC_APB2Periph_GPIOC
//   35 					|RCC_APB2Periph_GPIOD
//   36 					//|RCC_APB2Periph_GPIOE
//   37 					|RCC_APB2Periph_AFIO
//   38 					|RCC_APB2Periph_USART1
//   39 					|RCC_APB2ENR_AFIOEN
//   40 					, ENABLE);
        MOVS     R1,#+1
        MOVW     R0,#+16445
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//   41 
//   42 	//NVIC interrupt congig
//   43 	/*Common interrupt when use which interrupt,
//   44 	  come here config the interrupt source.
//   45 	*/
//   46 	//UART1 RX interrupt config
//   47 	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
        MOV      R0,#+1792
          CFI FunCall NVIC_PriorityGroupConfig
        BL       NVIC_PriorityGroupConfig
//   48 
//   49 	// Enable the USART1 gloabal Interrupt 
//   50 	nvicInitSt.NVIC_IRQChannel = USART1_IRQn;
        MOVS     R0,#+37
        STRB     R0,[SP, #+4]
//   51 	nvicInitSt.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   52 	nvicInitSt.NVIC_IRQChannelSubPriority = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+6]
//   53 	nvicInitSt.NVIC_IRQChannelCmd = ENABLE;//DISABLE;
        STRB     R0,[SP, #+7]
//   54 	NVIC_Init(&nvicInitSt);
        ADD      R0,SP,#+4
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//   55 
//   56 
//   57 	// Enable the USART2 gloabal Interrupt 
//   58 	nvicInitSt.NVIC_IRQChannel = USART2_IRQn;
        MOVS     R0,#+38
        STRB     R0,[SP, #+4]
//   59 	nvicInitSt.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   60 	nvicInitSt.NVIC_IRQChannelSubPriority = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+6]
//   61 	nvicInitSt.NVIC_IRQChannelCmd = ENABLE;//DISABLE;
        STRB     R0,[SP, #+7]
//   62 	NVIC_Init(&nvicInitSt);	
        ADD      R0,SP,#+4
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//   63 
//   64 	nvicInitSt.NVIC_IRQChannel = USART3_IRQn;
        MOVS     R0,#+39
        STRB     R0,[SP, #+4]
//   65 	nvicInitSt.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
//   66 	nvicInitSt.NVIC_IRQChannelSubPriority = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+6]
//   67 	nvicInitSt.NVIC_IRQChannelCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+7]
//   68 	NVIC_Init(&nvicInitSt);
        ADD      R0,SP,#+4
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//   69 
//   70 	nvicInitSt.NVIC_IRQChannel = UART4_IRQn;
        MOVS     R0,#+52
        STRB     R0,[SP, #+4]
//   71 	nvicInitSt.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   72 	nvicInitSt.NVIC_IRQChannelSubPriority = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+6]
//   73 	nvicInitSt.NVIC_IRQChannelCmd = ENABLE;
        STRB     R0,[SP, #+7]
//   74 	NVIC_Init(&nvicInitSt);
        ADD      R0,SP,#+4
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//   75 
//   76 	//uart5
//   77 	nvicInitSt.NVIC_IRQChannel = UART5_IRQn;
        MOVS     R0,#+53
        STRB     R0,[SP, #+4]
//   78 	nvicInitSt.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   79 	nvicInitSt.NVIC_IRQChannelSubPriority = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+6]
//   80 	nvicInitSt.NVIC_IRQChannelCmd = ENABLE;
        STRB     R0,[SP, #+7]
//   81 	NVIC_Init(&nvicInitSt);	
        ADD      R0,SP,#+4
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//   82 
//   83 	//cfg uart1 and uart2
//   84 	gpioInitSt.GPIO_Pin = GPIO_Pin_2 | GPIO_Pin_9;
        MOV      R0,#+516
        STRH     R0,[SP, #+0]
//   85 	gpioInitSt.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
//   86 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//   87 	GPIO_Init(GPIOA, &gpioInitSt);
        ADD      R1,SP,#+0
        LDR.N    R4,??OSInitSys_0  ;; 0x40010800
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//   88 
//   89 	gpioInitSt.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_10;
        MOV      R0,#+1032
        STRH     R0,[SP, #+0]
//   90 	gpioInitSt.GPIO_Mode = GPIO_Mode_IPU;
//   91 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
//   92 	GPIO_Init(GPIOA, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//   93 
//   94 	//cfg uart3
//   95 	gpioInitSt.GPIO_Pin = UART3_TX_PIN;
//   96 	gpioInitSt.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
        MOV      R6,#+1024
//   97 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        STRH     R6,[SP, #+0]
//   98 	GPIO_Init(UART3_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        LDR.N    R5,??OSInitSys_0+0x4  ;; 0x40010c00
        MOV      R0,R5
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//   99 
//  100 	gpioInitSt.GPIO_Pin = UART3_RX_PIN;
//  101 	gpioInitSt.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
        MOV      R7,#+2048
//  102 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        STRH     R7,[SP, #+0]
//  103 	GPIO_Init(UART3_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOV      R0,R5
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  104 
//  105 	//cfg uart4
//  106 	gpioInitSt.GPIO_Pin = UART4_TX_PIN;
//  107 	gpioInitSt.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
        STRH     R6,[SP, #+0]
//  108 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//  109 	GPIO_Init(UART4_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        LDR.N    R6,??OSInitSys_0+0x8  ;; 0x40011000
        MOV      R0,R6
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  110 
//  111 	gpioInitSt.GPIO_Pin = UART4_RX_PIN;
//  112 	gpioInitSt.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
        STRH     R7,[SP, #+0]
//  113 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//  114 	GPIO_Init(UART4_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOV      R0,R6
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  115 
//  116 	//cfg uart5
//  117 	gpioInitSt.GPIO_Pin = UART5_TX_PIN;
        MOV      R0,#+4096
        STRH     R0,[SP, #+0]
//  118 	gpioInitSt.GPIO_Mode = GPIO_Mode_AF_PP;
//  119 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
//  120 	GPIO_Init(UART5_TX_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOV      R0,R6
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  121 
//  122 	gpioInitSt.GPIO_Pin = UART5_RX_PIN;
        MOVS     R0,#+4
        STRH     R0,[SP, #+0]
//  123 	gpioInitSt.GPIO_Mode = GPIO_Mode_IPU;
//  124 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
//  125 	GPIO_Init(UART5_RX_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        LDR.N    R0,??OSInitSys_0+0xC  ;; 0x40011400
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  126 
//  127 	//led pin cfg
//  128 	gpioInitSt.GPIO_Pin = LED_P_PIN|LED_W_PIN|LED_S_PIN|LED_T_PIN;
        MOV      R0,#+960
        STRH     R0,[SP, #+0]
//  129 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  130 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
//  131 	GPIO_Init(LED_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOV      R0,R5
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  132 
//  133 	//grps pin config
//  134 	gpioInitSt.GPIO_Pin = GPRS_PWRKEY_PIN|GPRS_SRST_PIN|GPRS_STATUS_PIN;
        MOVS     R0,#+56
        STRH     R0,[SP, #+0]
//  135 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  136 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
//  137 	GPIO_Init(GPRS_CONTROL_PIN_PORT,&gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOV      R0,R5
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  138 
//  139 	gpioInitSt.GPIO_Pin = GPRS_POWER_EN_PIN;
        MOVS     R0,#+32
        STRH     R0,[SP, #+0]
//  140 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  141 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
//  142 	GPIO_Init(GPRS_POWER_EN_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOV      R0,R5
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  143 
//  144 	gpioInitSt.GPIO_Pin = GPRS_POWER_EN_PIN_O;
        MOV      R0,#+32768
        STRH     R0,[SP, #+0]
//  145 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  146 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
//  147 	GPIO_Init(GPRS_POWER_EN_PORT_O, &gpioInitSt);	
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  148 
//  149 	gpioInitSt.GPIO_Pin = GPRS_POWER_CON_PIN;
        MOVS     R0,#+2
        STRH     R0,[SP, #+0]
//  150 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  151 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
//  152 	GPIO_Init(GPRS_POWER_CON_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  153 	//GPRS_PWRKEY(0);
//  154 	//GPRS_SRST(0);
//  155 
//  156 
//  157 	//led key module
//  158 	//key
//  159 	gpioInitSt.GPIO_Pin = ALARM_KEY_PIN|SILENCER_KEY_PIN|SELF_TEST_KEY_PIN;
        MOVS     R0,#+176
        STRH     R0,[SP, #+0]
//  160 	gpioInitSt.GPIO_Mode = GPIO_Mode_IPU;
//  161 	gpioInitSt.GPIO_Speed = GPIO_Speed_10MHz;
//  162 	GPIO_Init(ALARM_KEY_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  163 	/*end key*/
//  164 	
//  165 	//led  key mode buzzer
//  166 	gpioInitSt.GPIO_Pin = POWER_LED_PIN;
        MOVS     R0,#+64
        STRH     R0,[SP, #+0]
//  167 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  168 	gpioInitSt.GPIO_Speed = GPIO_Speed_10MHz;
//  169 	GPIO_Init(POWER_LED_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  170 
//  171 	gpioInitSt.GPIO_Pin = NET_LED_PIN;
        MOVS     R0,#+16
        STRH     R0,[SP, #+0]
//  172 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
        STRB     R0,[SP, #+3]
//  173 	gpioInitSt.GPIO_Speed = GPIO_Speed_10MHz;
//  174 	GPIO_Init(NET_LED_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOV      R0,R6
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  175 
//  176 	gpioInitSt.GPIO_Pin = FAULT_LED_PIN;
        MOVS     R0,#+2
        STRH     R0,[SP, #+0]
//  177 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  178 	gpioInitSt.GPIO_Speed = GPIO_Speed_10MHz;
//  179 	GPIO_Init(FAULT_LED_PORT, &gpioInitSt);	
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOV      R0,R5
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  180 
//  181 	gpioInitSt.GPIO_Pin = ALARM_LED_PIN;
        MOVS     R0,#+1
        STRH     R0,[SP, #+0]
//  182 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  183 	gpioInitSt.GPIO_Speed = GPIO_Speed_10MHz;
//  184 	GPIO_Init(ALARM_LED_PORT, &gpioInitSt);	
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOV      R0,R5
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  185 	/*end led*/
//  186 
//  187 	//buzzer
//  188 	gpioInitSt.GPIO_Pin = BUZZER_PIN;
        MOVS     R0,#+32
        STRH     R0,[SP, #+0]
//  189 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  190 	gpioInitSt.GPIO_Speed = GPIO_Speed_50MHz;
//  191 	GPIO_Init(BUZZER_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        MOV      R0,R6
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  192 	BUZZER(1);
        MOVS     R2,#+1
        MOVS     R1,#+32
        MOV      R0,R6
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  193 	//ALARM_LED(1);
//  194 	FAULT_LED(1);
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  195 	/**/
//  196 	
//  197 
//  198 	//enc28j60
//  199 	gpioInitSt.GPIO_Pin = ENC28J60_RST_PIN;
        MOVS     R0,#+128
        STRH     R0,[SP, #+0]
//  200 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  201 	gpioInitSt.GPIO_Speed = GPIO_Speed_10MHz;
//  202 	GPIO_Init(ENC28J60_RST_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOV      R0,R6
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  203 
//  204 
//  205 	//swch
//  206 	gpioInitSt.GPIO_Pin = SWITCH_1_PIN;
        MOV      R0,#+256
        STRH     R0,[SP, #+0]
//  207 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  208 	gpioInitSt.GPIO_Speed = GPIO_Speed_10MHz;
//  209 	GPIO_Init(SWITCH_1_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  210 
//  211 	gpioInitSt.GPIO_Pin = SWITCH_2_PIN | SWITCH_3_PIN;
        MOV      R0,#+768
        STRH     R0,[SP, #+0]
//  212 	gpioInitSt.GPIO_Mode = GPIO_Mode_Out_PP;
//  213 	gpioInitSt.GPIO_Speed = GPIO_Speed_10MHz;
//  214 	GPIO_Init(SWITCH_2_PORT, &gpioInitSt);
        ADD      R1,SP,#+0
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOV      R0,R6
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  215 
//  216 }
        ADD      SP,SP,#+12
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
        DATA
??OSInitSys_0:
        DC32     0x40010800
        DC32     0x40010c00
        DC32     0x40011000
        DC32     0x40011400
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  217 
//  218 
//  219 
//  220 
// 
// 812 bytes in section .text
// 
// 812 bytes of CODE memory
//
//Errors: none
//Warnings: none
