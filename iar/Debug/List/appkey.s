///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:28
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\keyled\appkey.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\keyled\appkey.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\appkey.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_WriteBit
        EXTERN __xstd_printf
        EXTERN blink_process
        EXTERN etimer_expired
        EXTERN etimer_set
        EXTERN memset
        EXTERN process_alloc_event
        EXTERN process_exit
        EXTERN process_post
        EXTERN process_start

        PUBLIC dev_check_self_process
        PUBLIC initAppKey
        PUBLIC keyMsgHandler
        PUBLIC key_msg_handler_process
        PUBLIC key_msg_read_process
        PUBLIC selfCheckHandler
        PUBLIC swDisable
        PUBLIC swEnable
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\keyled\appkey.c
//    1 #include "contiki.h"
//    2 #include "basictype.h"
//    3 #include "appkey.h"
//    4 #include "iodef.h"
//    5 #include "sysprintf.h"
//    6 #include "stm32f10x.h"
//    7 
//    8 
//    9 static process_event_t event_key_msg;
//   10 static process_event_t event_self_check;
//   11 
//   12 PROCESS(key_msg_read_process, "key_msg");
//   13 PROCESS(key_msg_handler_process, "key_msg_handler");
//   14 PROCESS(dev_check_self_process, "check_self");
//   15 
//   16 PROCESS_NAME(blink_process);
//   17 
//   18 
//   19 static u_short keyGetValue(void)
//   20 {
//   21 	return (KEY_PORT->IDR)&KEY_VALUE;
//   22 }
//   23 
//   24 
//   25 
//   26 static void alarmKeyProcess(void)
//   27 {
//   28 	//ALARM_LED(0);
//   29 	FAULT_LED(0);
//   30 	BUZZER(0);
//   31 }
//   32 
//   33 static void silenceKeyProcess(void)
//   34 {
//   35 	//ALARM_LED(1);
//   36 	FAULT_LED(1);
//   37 	BUZZER(1);
//   38 }
//   39 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function swEnable
        THUMB
//   40 void swEnable(void)
//   41 {
swEnable:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   42 	SWITCH_1(0);
        MOVS     R2,#+0
        MOV      R1,#+256
        LDR.N    R0,??DataTable12  ;; 0x40010800
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//   43 	SWITCH_2(0);
        LDR.N    R4,??DataTable12_1  ;; 0x40011000
        MOVS     R2,#+0
        MOV      R1,#+512
        MOV      R0,R4
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//   44 	SWITCH_3(0);
        MOV      R0,R4
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R2,#+0
        B.N      ??Subroutine3_0
          CFI EndBlock cfiBlock0
//   45 }
//   46 
//   47 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function swDisable
          CFI NoCalls
        THUMB
//   48 void swDisable(void)
//   49 {
swDisable:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   50 	SWITCH_1(1);
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock1
//   51 	SWITCH_2(1);
//   52 	SWITCH_3(1);
//   53 }
//   54 
//   55 
//   56 
//   57 static void keyMsgProcess(const KEY_MSG * pcMsg)
//   58 {
//   59 	if (!(pcMsg->ubKeyValue & ALARM_KEY_PIN))
//   60 	{
//   61 		XPRINTF((12, "ALARM_KEY\n"));
//   62 		alarmKeyProcess( );
//   63 		swEnable( );
//   64 		
//   65 	}
//   66 	
//   67 	if (!(pcMsg->ubKeyValue & SILENCER_KEY_PIN))
//   68 	{
//   69 		XPRINTF((12, "SILENCER_KEY_PIN\n"));
//   70 		silenceKeyProcess( );
//   71 		swDisable( );
//   72 	}
//   73 	
//   74 	if (!(pcMsg->ubKeyValue & SELF_TEST_KEY_PIN))
//   75 	{
//   76 		XPRINTF((12, "SELF_TEST_KEY_PIN\n"));
//   77 		process_post(&dev_check_self_process, event_self_check, (void *)pcMsg);
//   78 	}
//   79 }
//   80 
//   81 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function keyMsgHandler
        THUMB
//   82 void keyMsgHandler(process_event_t ev, process_data_t data)
//   83 {
keyMsgHandler:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   84 	static KEY_MSG keyMsg;
//   85 
//   86 	if (ev == event_key_msg && data != NULL)
        LDR.N    R4,??DataTable12_2
        LDRB     R2,[R4, #+4]
        CMP      R0,R2
        BNE.N    ??keyMsgHandler_0
        CMP      R1,#+0
        BEQ.N    ??keyMsgHandler_0
//   87 	{
//   88 		keyMsg = *(KEY_MSG *)data;
        LDRH     R0,[R1, #+0]
        STR      R0,[R4, #+0]
//   89 		keyMsgProcess((const KEY_MSG*)&keyMsg);
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??keyMsgHandler_1
        ADR.W    R1,?_3
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable12_3  ;; 0x40010c00
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        LDR.N    R5,??DataTable12_1  ;; 0x40011000
        MOVS     R2,#+0
        MOVS     R1,#+32
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        MOVS     R2,#+0
        MOV      R1,#+256
        LDR.N    R0,??DataTable12  ;; 0x40010800
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        MOVS     R2,#+0
        MOV      R1,#+512
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        MOVS     R2,#+0
        MOV      R1,#+256
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
??keyMsgHandler_1:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BMI.N    ??keyMsgHandler_2
        ADR.W    R1,?_4
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.N    R0,??DataTable12_3  ;; 0x40010c00
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        LDR.N    R5,??DataTable12_1  ;; 0x40011000
        MOVS     R2,#+1
        MOVS     R1,#+32
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        MOVS     R2,#+1
        MOV      R1,#+256
        LDR.N    R0,??DataTable12  ;; 0x40010800
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        MOVS     R2,#+1
        MOV      R1,#+512
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        MOVS     R2,#+1
        MOV      R1,#+256
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
??keyMsgHandler_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BMI.N    ??keyMsgHandler_0
        ADR.W    R1,?_5
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDRB     R1,[R4, #+5]
        MOV      R2,R4
        ADD      R0,R4,#+44
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall process_post
        B.W      process_post
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//   90 	}
//   91 }
??keyMsgHandler_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//   92 
//   93 
//   94 static void buzzOpt(u_char ubstate)
//   95 {
//   96 	BUZZER(ubstate);
//   97 }
//   98 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ledOpt
        THUMB
//   99 static void ledOpt(u_char ubstate)
//  100 {
ledOpt:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  101 	ALARM_LED(ubstate);
        SUBS     R4,R0,#+1
        SBCS     R4,R4,R4
        MVNS     R4,R4
        LDR.N    R5,??DataTable12_3  ;; 0x40010c00
        LSRS     R2,R4,#+31
        MOVS     R1,#+1
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  102 	FAULT_LED(ubstate);
        LSRS     R2,R4,#+31
        MOVS     R1,#+2
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  103 	NET_LED(ubstate);
        LSRS     R2,R4,#+31
        MOVS     R1,#+16
        LDR.N    R0,??DataTable12_1  ;; 0x40011000
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  104 	POWER_LED(ubstate);
        LDR.N    R0,??DataTable12  ;; 0x40010800
        LSRS     R2,R4,#+31
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+64
          CFI FunCall GPIO_WriteBit
        B.W      GPIO_WriteBit
          CFI EndBlock cfiBlock3
//  105 }
//  106 
//  107 
//  108 
//  109 typedef struct _check_msg
//  110 {
//  111 	struct etimer et_timer;
//  112 	u_char ubstate;
//  113 }CHECK_MSG;
//  114 
//  115 #define CHECK_BUZZ_TIME		1000
//  116 #define CHECK_LED_FIRST_TIME	5000
//  117 #define CHECK_LED_TIME			1000
//  118 
//  119 
//  120 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function selfCheckHandler
        THUMB
//  121 void selfCheckHandler(process_event_t ev, process_data_t data)
//  122 {
selfCheckHandler:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  123 	static struct etimer et_buzz;
//  124 	static u_char ubbzstate = 0;
//  125 	
//  126 	static struct etimer et_led;
//  127 	static u_char ubledstate = 0;
//  128 	
//  129 	static u_char checkfinish = 0;
//  130 	static u_char count = 0;
//  131 
//  132 
//  133 	if (ev == event_self_check && data != NULL)
        LDR.N    R4,??DataTable12_2
        LDRB     R2,[R4, #+5]
        CMP      R0,R2
        BNE.N    ??selfCheckHandler_0
        CBZ.N    R1,??selfCheckHandler_0
//  134 	{
//  135 		checkfinish = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+8]
//  136 		count = 0;
//  137 
//  138 		XPRINTF((6, "selfcheck\n"));
        MOVS     R0,#+6
        ADR.W    R1,?_6
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  139 		//buzz operation
//  140 		ubbzstate = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+6]
//  141 		etimer_set(&et_buzz, CHECK_BUZZ_TIME);
        MOV      R1,#+1000
        ADD      R0,R4,#+60
          CFI FunCall etimer_set
        BL       etimer_set
//  142 		buzzOpt(ubbzstate);
        LDRB     R2,[R4, #+6]
        LDR.N    R0,??DataTable12_1  ;; 0x40011000
        MOVS     R1,#+32
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  143 
//  144 		//led operation
//  145 		ubledstate = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+7]
//  146 		etimer_set(&et_led, CHECK_LED_FIRST_TIME);
        MOVW     R1,#+5000
        ADD      R0,R4,#+76
          CFI FunCall etimer_set
        BL       etimer_set
//  147 		ledOpt(ubledstate);
        LDRB     R0,[R4, #+7]
          CFI FunCall ledOpt
        BL       ledOpt
//  148 		process_exit(&blink_process);
        POP      {R1,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.N    R0,??DataTable12_4
          CFI FunCall process_exit
        B.W      process_exit
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  149 		
//  150 	}
//  151 
//  152 	else if (ev == PROCESS_EVENT_TIMER && data == &et_buzz)
??selfCheckHandler_0:
        CMP      R0,#+136
        BNE.N    ??selfCheckHandler_1
        ADD      R0,R4,#+60
        CMP      R1,R0
        BNE.N    ??selfCheckHandler_2
//  153 	{
//  154 		if (!checkfinish)
        LDRB     R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??selfCheckHandler_1
//  155 		{
//  156 			if (ubbzstate == 0)
//  157 				ubbzstate = 1;
        LDRB     R0,[R4, #+6]
        EOR      R2,R0,#0x1
        STRB     R2,[R4, #+6]
//  158 			else
//  159 				ubbzstate = 0;
//  160 			buzzOpt(ubbzstate);
        MOVS     R1,#+32
        LDR.N    R0,??DataTable12_1  ;; 0x40011000
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  161 			etimer_set(&et_buzz, CHECK_BUZZ_TIME);
        MOV      R1,#+1000
        ADD      R0,R4,#+60
        B.N      ??selfCheckHandler_3
//  162 		}
//  163 	}
??selfCheckHandler_2:
        ADD      R0,R4,#+76
        CMP      R1,R0
        BNE.N    ??selfCheckHandler_1
//  164 	else if (ev == PROCESS_EVENT_TIMER && data == &et_led)	
//  165 	{
//  166 		count ++;
        LDRB     R0,[R4, #+9]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+9]
//  167 		if (ubledstate == 0)
//  168 			ubledstate = 1;
        LDRB     R0,[R4, #+7]
        EOR      R0,R0,#0x1
        STRB     R0,[R4, #+7]
//  169 		else
//  170 			ubledstate = 0;
//  171 		ledOpt(ubledstate);
          CFI FunCall ledOpt
        BL       ledOpt
//  172 
//  173 		if (count >= 8)
        LDRB     R0,[R4, #+9]
        CMP      R0,#+8
        BLT.N    ??selfCheckHandler_4
//  174 		{
//  175 			checkfinish = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+8]
//  176 			BUZZER(1);
        MOVS     R2,#+1
        LDR.N    R4,??DataTable12_1  ;; 0x40011000
        MOVS     R1,#+32
        MOV      R0,R4
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  177 			ledOpt(1);
        LDR.N    R5,??DataTable12_3  ;; 0x40010c00
        MOVS     R2,#+1
        MOV      R1,R2
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        MOVS     R2,#+1
        MOVS     R1,#+16
        MOV      R0,R4
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        LDR.N    R5,??DataTable12  ;; 0x40010800
        MOVS     R2,#+1
        MOVS     R1,#+64
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  178 			NET_LED(0);
        MOVS     R2,#+0
        MOVS     R1,#+16
        MOV      R0,R4
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  179 			POWER_LED(0);
        MOVS     R2,#+0
        MOVS     R1,#+64
        MOV      R0,R5
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  180 			process_start(&blink_process, NULL);
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable12_4
          CFI FunCall process_start
        B.W      process_start
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  181 		}
//  182 		else
//  183 		{
//  184 			etimer_set(&et_led, CHECK_LED_TIME);
??selfCheckHandler_4:
        MOV      R1,#+1000
        ADD      R0,R4,#+76
??selfCheckHandler_3:
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall etimer_set
        B.W      etimer_set
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  185 		}
//  186 	}
//  187 }
??selfCheckHandler_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??keyMsg:
        DATA
        DC8 0, 0, 0, 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0, 0
key_msg_read_process:
        DC32 0H, ?_0, process_thread_key_msg_read_process
        DC8 0, 0, 0, 0
key_msg_handler_process:
        DC32 0H, ?_1, process_thread_key_msg_handler_process
        DC8 0, 0, 0, 0
dev_check_self_process:
        DC32 0H, ?_2, process_thread_dev_check_self_process
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//  188 
//  189 
//  190 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function process_thread_dev_check_self_process
        THUMB
//  191 PROCESS_THREAD(dev_check_self_process, ev, data)
//  192 {
process_thread_dev_check_self_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R1
        MOV      R1,R2
//  193 	
//  194 	PROCESS_BEGIN();
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_dev_check_self_process_0
        CMP      R2,#+197
        BEQ.N    ??process_thread_dev_check_self_process_1
        B.N      ??process_thread_dev_check_self_process_2
//  195 	while (1)
//  196 	{
//  197 		PROCESS_YIELD( );
??process_thread_dev_check_self_process_0:
        MOVS     R0,#+197
        B.N      ?Subroutine2
//  198 		selfCheckHandler(ev, data);
??process_thread_dev_check_self_process_1:
          CFI FunCall selfCheckHandler
        BL       selfCheckHandler
        B.N      ??process_thread_dev_check_self_process_0
//  199 	}
//  200 	PROCESS_END();
??process_thread_dev_check_self_process_2:
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock5
//  201 }
//  202 
//  203 
//  204 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function process_thread_key_msg_handler_process
        THUMB
//  205 PROCESS_THREAD(key_msg_handler_process, ev, data)
//  206 {
process_thread_key_msg_handler_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R1
        MOV      R1,R2
//  207 	PROCESS_BEGIN();
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_key_msg_handler_process_0
        CMP      R2,#+210
        BEQ.N    ??process_thread_key_msg_handler_process_1
        B.N      ??process_thread_key_msg_handler_process_2
//  208 	while (1)
//  209 	{
//  210 		PROCESS_YIELD();
??process_thread_key_msg_handler_process_0:
        MOVS     R0,#+210
        B.N      ?Subroutine2
//  211 		keyMsgHandler(ev, data);
??process_thread_key_msg_handler_process_1:
          CFI FunCall keyMsgHandler
        BL       keyMsgHandler
        B.N      ??process_thread_key_msg_handler_process_0
//  212 	}
//  213 	PROCESS_END();
??process_thread_key_msg_handler_process_2:
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock6
//  214 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls process_thread_dev_check_self_process
          CFI NoCalls process_thread_key_msg_handler_process
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine2:
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R4,PC}
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls process_thread_dev_check_self_process
          CFI NoCalls process_thread_key_msg_handler_process
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine1:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock8
//  215 
//  216 
//  217 
//  218 
//  219 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function process_thread_key_msg_read_process
        THUMB
//  220 PROCESS_THREAD(key_msg_read_process, ev, data)
//  221 {
process_thread_key_msg_read_process:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//  222 	static struct etimer etkey;
//  223 	static KEY_MSG keyMsgRead;
//  224 	static KEY_MSG keyMsg;
//  225 	static u_short ubKey = 0;
//  226 	static u_char ubKeyCount = 0;
//  227 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_key_msg_read_process_0
        CMP      R0,#+238
        BEQ.N    ??process_thread_key_msg_read_process_1
        B.N      ??process_thread_key_msg_read_process_2
//  228 	
//  229 	event_key_msg = process_alloc_event( );
??process_thread_key_msg_read_process_0:
        LDR.N    R6,??DataTable12_2
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R6, #+4]
//  230 	event_self_check = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R6, #+5]
//  231 	
//  232 	memset(&keyMsg, 0, sizeof(KEY_MSG));
        MOVS     R2,#+2
        LDR.N    R5,??DataTable12_5
        MOVS     R1,#+0
        ADDS     R0,R5,#+4
          CFI FunCall memset
        BL       memset
//  233 	memset(&keyMsgRead, 0, sizeof(KEY_MSG));
??process_thread_key_msg_read_process_3:
        MOVS     R2,#+2
        MOVS     R1,#+0
        MOV      R0,R5
          CFI FunCall memset
        BL       memset
//  234 
//  235 	while (1)
//  236 	{
//  237 		etimer_set(&etkey, 50);
??process_thread_key_msg_read_process_4:
        MOVS     R1,#+50
        LDR.N    R0,??DataTable12_6
          CFI FunCall etimer_set
        BL       etimer_set
//  238 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&etkey));
        MOVS     R0,#+238
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_key_msg_read_process_5
??process_thread_key_msg_read_process_1:
        LDR.N    R5,??DataTable12_5
        ADD      R0,R5,#+12
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_key_msg_read_process_6
??process_thread_key_msg_read_process_5:
        MOVS     R0,#+1
        POP      {R4-R6,PC}
//  239 		ubKey = keyGetValue();
??process_thread_key_msg_read_process_6:
        LDR.N    R0,??DataTable12_7  ;; 0x40010808
        LDR      R0,[R0, #+0]
//  240 
//  241 		if (ubKey != KEY_VALUE)//have key press
        LDRB     R1,[R5, #+8]
        AND      R0,R0,#0xB0
        MOV      R2,R0
        CMP      R2,#+176
        BEQ.N    ??process_thread_key_msg_read_process_7
//  242 		{
//  243 			ubKeyCount++;
//  244 			keyMsgRead.ubKeyValue = ubKey;
        STRB     R0,[R5, #+0]
        ADDS     R1,R1,#+1
//  245 			keyMsgRead.ubCountTime++;
        LDRB     R0,[R5, #+1]
        STRB     R1,[R5, #+8]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+1]
//  246 			XPRINTF((11, "KEY = %04x\n", ubKey));
        MOVS     R0,#+11
        ADR.W    R1,?_7
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  247 			ubKey = 0;
        MOVS     R0,#+0
        STRH     R0,[R5, #+10]
        B.N      ??process_thread_key_msg_read_process_4
//  248 		}
//  249 		else 
//  250 		{
//  251 			if (ubKeyCount != 0)
??process_thread_key_msg_read_process_7:
        CMP      R1,#+0
        BEQ.N    ??process_thread_key_msg_read_process_4
//  252 			{
//  253 				ubKeyCount = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+8]
//  254 				if (keyMsgRead.ubCountTime >= 2)
        LDRB     R0,[R5, #+1]
        CMP      R0,#+2
        BLT.N    ??process_thread_key_msg_read_process_3
//  255 				{
//  256 					keyMsg = keyMsgRead;
        LDR      R0,[R5, #+0]
        STR      R0,[R5, #+4]
//  257 					memset(&keyMsgRead, 0, sizeof(KEY_MSG));
        MOVS     R2,#+2
        MOVS     R1,#+0
        MOV      R0,R5
          CFI FunCall memset
        BL       memset
//  258 					XPRINTF((6, "KEY = %04x\n", keyMsg.ubKeyValue));
        LDRB     R2,[R5, #+4]
        ADR.W    R1,?_7
        MOVS     R0,#+6
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  259 					process_post(&key_msg_handler_process, event_key_msg, &keyMsg);
        LDR.N    R6,??DataTable12_2
        LDRB     R1,[R6, #+4]
        ADDS     R2,R5,#+4
        ADD      R0,R6,#+28
          CFI FunCall process_post
        BL       process_post
        B.N      ??process_thread_key_msg_read_process_4
//  260 				}
//  261 				else
//  262 				{
//  263 					memset(&keyMsgRead, 0, sizeof(KEY_MSG));
//  264 				}
//  265 			}
//  266 		}
//  267 	}
//  268 	PROCESS_END();
??process_thread_key_msg_read_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock9
//  269 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     ??keyMsg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     blink_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     ??keyMsgRead

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     ??keyMsgRead+0xC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x40010808

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??keyMsgRead:
        DS8 4
        DS8 4
        DS8 1
        DS8 1
        DS8 2
        DS8 16
//  270 
//  271 
//  272 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function initAppKey
        THUMB
//  273 void initAppKey(void)
//  274 {
initAppKey:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  275 	process_start(&key_msg_read_process, NULL);
        LDR.N    R4,??Subroutine0_0
        MOVS     R1,#+0
        ADD      R0,R4,#+12
          CFI FunCall process_start
        BL       process_start
//  276 	process_start(&key_msg_handler_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+28
          CFI FunCall process_start
        BL       process_start
//  277 	process_start(&dev_check_self_process, NULL);
        MOVS.W   R1,#+0
        ADD      R0,R4,#+44
          CFI FunCall process_start
        BL       process_start
          CFI EndBlock cfiBlock10
//  278 	swDisable();
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  279 }

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        MOVS     R2,#+1
        MOV      R1,#+256
        LDR.N    R0,??Subroutine0_0+0x4  ;; 0x40010800
          CFI FunCall swDisable GPIO_WriteBit
          CFI FunCall initAppKey GPIO_WriteBit
        BL       GPIO_WriteBit
        LDR.N    R4,??Subroutine0_0+0x8  ;; 0x40011000
        B.N      ??Subroutine0_1
        DATA
??Subroutine0_0:
        DC32     ??keyMsg
        DC32     0x40010800
        DC32     0x40011000
        THUMB
??Subroutine0_1:
        MOVS     R2,#+1
        MOV      R1,#+512
        MOV      R0,R4
          CFI FunCall swDisable GPIO_WriteBit
          CFI FunCall initAppKey GPIO_WriteBit
        BL       GPIO_WriteBit
        MOV      R0,R4
        POP      {R4,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R14 SameValue
        MOVS     R2,#+1
          CFI EndBlock cfiBlock11
        REQUIRE ??Subroutine3_0
        ;; // Fall through to label ??Subroutine3_0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI NoFunction
        THUMB
??Subroutine3_0:
        MOV      R1,#+256
          CFI FunCall swEnable GPIO_WriteBit
          CFI FunCall swDisable GPIO_WriteBit
          CFI FunCall initAppKey GPIO_WriteBit
        B.W      GPIO_WriteBit
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "ALARM_KEY\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "SILENCER_KEY_PIN\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 "SELF_TEST_KEY_PIN\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_6:
        DC8 "selfcheck\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_7:
        DC8 "KEY = %04x\012"

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "key_msg"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "key_msg_handler"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_2:
        DC8 "check_self"
        DC8 0

        END
//  280 
//  281 
//  282 
//  283 
// 
//    28 bytes in section .bss
//    92 bytes in section .data
//    36 bytes in section .rodata
// 1 028 bytes in section .text
// 
// 1 028 bytes of CODE  memory
//    36 bytes of CONST memory
//   120 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
