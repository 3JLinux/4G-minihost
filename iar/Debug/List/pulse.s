///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:10
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\pulse.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\pulse.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\pulse.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN BKP_ClearFlag
        EXTERN BKP_ReadBackupRegister
        EXTERN BKP_WriteBackupRegister
        EXTERN EXTI_ClearITPendingBit
        EXTERN EXTI_GetITStatus
        EXTERN EXTI_Init
        EXTERN GPIO_EXTILineConfig
        EXTERN NVIC_Init
        EXTERN NVIC_PriorityGroupConfig
        EXTERN PWR_BackupAccessCmd
        EXTERN RCC_APB1PeriphClockCmd
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN mem_cmp

        PUBLIC EXTI0_IRQHandler
        PUBLIC EXTI1_IRQHandler
        PUBLIC pulse_bkp_init
        PUBLIC pulse_connter_clear
        PUBLIC pulse_get_counter
        PUBLIC pulse_pin_init
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\pulse.c
//    1 #include "contiki.h"
//    2 #include <string.h>
//    3 #include "stm32f10x.h"
//    4 #include "basictype.h"
//    5 #include "stm32f10x_it.h"
//    6 #include "iodef.h"
//    7 #include "sysprintf.h"
//    8 
//    9 #include "stm32f10x_bkp.h"
//   10 #include "stm32f10x_pwr.h"
//   11 
//   12 #include "pulse.h"
//   13 
//   14 static const u_char ubMeterA[6]={0x91,0x99,0x99,0x99,0x99,0x99};
//   15 static const u_char ubMeterB[6]={0x92,0x99,0x99,0x99,0x99,0x99};
//   16 
//   17 void pulse_pin_init(void);
//   18 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function pulse_bkp_init
          CFI FunCall pulse_pin_init
        THUMB
//   19 void pulse_bkp_init(void)
//   20 {
pulse_bkp_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   21   /* Enable PWR and BKP clock */
//   22   RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+402653184
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//   23 
//   24   /* Enable write access to Backup domain */
//   25   PWR_BackupAccessCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall PWR_BackupAccessCmd
        BL       PWR_BackupAccessCmd
//   26 
//   27   /* Clear Tamper pin Event(TE) pending flag */
//   28   BKP_ClearFlag( );
          CFI FunCall BKP_ClearFlag
        BL       BKP_ClearFlag
//   29 
//   30   //init pulse input pin
//   31   pulse_pin_init( );
        POP      {R0,LR}
          CFI EndBlock cfiBlock0
        REQUIRE pulse_pin_init
        ;; // Fall through to label pulse_pin_init
//   32 }
//   33 
//   34 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function pulse_pin_init
        THUMB
//   35 void pulse_pin_init(void)
//   36 {
pulse_pin_init:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+12
          CFI CFA R13+16
//   37 	GPIO_InitTypeDef gpioStr;
//   38 	EXTI_InitTypeDef extiStr;
//   39 	NVIC_InitTypeDef nvicStr;
//   40 
//   41 	//clock Enable
//   42 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+9
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//   43 
//   44 	//nvic config for  exti interrupt	
//   45 	NVIC_PriorityGroupConfig( NVIC_PriorityGroup_1 );
        MOV      R0,#+1536
          CFI FunCall NVIC_PriorityGroupConfig
        BL       NVIC_PriorityGroupConfig
//   46 	//pulse 1  2
//   47 	nvicStr.NVIC_IRQChannel = EXTI0_IRQn;
        MOVS     R0,#+6
        STRB     R0,[SP, #+0]
//   48 	nvicStr.NVIC_IRQChannelPreemptionPriority =  0x03;
        MOVS     R0,#+3
        STRB     R0,[SP, #+1]
//   49 	nvicStr.NVIC_IRQChannelSubPriority = 0x03;
        STRB     R0,[SP, #+2]
//   50 	nvicStr.NVIC_IRQChannelCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
//   51 	NVIC_Init(&nvicStr);
        ADD      R0,SP,#+0
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//   52 	//pulse 2
//   53 	nvicStr.NVIC_IRQChannel = EXTI1_IRQn;
        MOVS     R0,#+7
        STRB     R0,[SP, #+0]
//   54 	nvicStr.NVIC_IRQChannelPreemptionPriority =  0x03;
        MOVS     R0,#+3
        STRB     R0,[SP, #+1]
//   55 	nvicStr.NVIC_IRQChannelSubPriority = 0x03;
        STRB     R0,[SP, #+2]
//   56 	nvicStr.NVIC_IRQChannelCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
//   57 	NVIC_Init(&nvicStr);
        ADD      R0,SP,#+0
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//   58 
//   59 
//   60 	//EXTI line mode config
//   61 	GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource0);
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall GPIO_EXTILineConfig
        BL       GPIO_EXTILineConfig
//   62 	extiStr.EXTI_Line = EXTI_Line0;
        MOVS     R0,#+1
        STR      R0,[SP, #+4]
//   63 	extiStr.EXTI_Mode = EXTI_Mode_Interrupt;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//   64 	extiStr.EXTI_Trigger = EXTI_Trigger_Falling;
        MOVS     R0,#+12
        STRB     R0,[SP, #+9]
//   65 	extiStr.EXTI_LineCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+10]
//   66 	EXTI_Init( &extiStr);
        ADD      R0,SP,#+4
          CFI FunCall EXTI_Init
        BL       EXTI_Init
//   67 
//   68 	//EXTI line mode config
//   69 	GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource1);
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall GPIO_EXTILineConfig
        BL       GPIO_EXTILineConfig
//   70 	extiStr.EXTI_Line = EXTI_Line1;
        MOVS     R0,#+2
        STR      R0,[SP, #+4]
//   71 	extiStr.EXTI_Mode = EXTI_Mode_Interrupt;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//   72 	extiStr.EXTI_Trigger = EXTI_Trigger_Falling;
        MOVS     R0,#+12
        STRB     R0,[SP, #+9]
//   73 	extiStr.EXTI_LineCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+10]
//   74 	EXTI_Init( &extiStr);
        ADD      R0,SP,#+4
          CFI FunCall EXTI_Init
        BL       EXTI_Init
//   75 }	
        ADD      SP,SP,#+12
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock1
//   76 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function pulse_get_counter
        THUMB
//   77 int pulse_get_counter(const u_char *pcMeterAddr)
//   78 {
pulse_get_counter:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//   79 	u_long nResult     = 0;
//   80 	u_long uwMeterLow  = 0;
        MOVS     R5,#+0
//   81 	u_long uwMeterHigh = 0;
        MOVS     R6,#+0
//   82 
//   83 	if (0 == mem_cmp(ubMeterA, pcMeterAddr,6))
        MOVS     R2,#+6
        MOV      R1,R4
        ADR.W    R0,ubMeterA
          CFI FunCall mem_cmp
        BL       mem_cmp
        CBNZ.N   R0,??pulse_get_counter_0
//   84 	{
//   85 		uwMeterLow  = BKP_ReadBackupRegister(BKP_PULS1_0);
        MOVS     R0,#+8
          CFI FunCall BKP_ReadBackupRegister
        BL       BKP_ReadBackupRegister
        MOV      R5,R0
//   86 		uwMeterHigh = BKP_ReadBackupRegister(BKP_PULS1_1);		
        MOVS     R0,#+12
        B.N      ??pulse_get_counter_1
//   87 	}
//   88 	else if (0 == mem_cmp(ubMeterB, pcMeterAddr,6))
??pulse_get_counter_0:
        MOVS     R2,#+6
        MOV      R1,R4
        ADR.W    R0,ubMeterB
          CFI FunCall mem_cmp
        BL       mem_cmp
        CBNZ.N   R0,??pulse_get_counter_2
//   89 	{
//   90 		uwMeterLow  = BKP_ReadBackupRegister(BKP_PULS2_0);
        MOVS     R0,#+16
          CFI FunCall BKP_ReadBackupRegister
        BL       BKP_ReadBackupRegister
        MOV      R5,R0
//   91 		uwMeterHigh = BKP_ReadBackupRegister(BKP_PULS2_1);		
        MOVS     R0,#+20
??pulse_get_counter_1:
          CFI FunCall BKP_ReadBackupRegister
        BL       BKP_ReadBackupRegister
        LSLS     R6,R0,#+16
//   92 	}
//   93 
//   94 	nResult = uwMeterLow | (uwMeterHigh<<16);
//   95 
//   96 	return nResult;
??pulse_get_counter_2:
        ORR      R0,R6,R5
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//   97 }
//   98 
//   99 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function pulse_connter_clear
        THUMB
//  100 void pulse_connter_clear(void)
//  101 {
pulse_connter_clear:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  102 	BKP_WriteBackupRegister(BKP_PULS1_0, 0);
        MOVS     R1,#+0
        MOVS     R0,#+8
          CFI FunCall BKP_WriteBackupRegister
        BL       BKP_WriteBackupRegister
//  103 	BKP_WriteBackupRegister(BKP_PULS1_1, 0);
        MOVS     R1,#+0
        MOVS     R0,#+12
          CFI FunCall BKP_WriteBackupRegister
        BL       BKP_WriteBackupRegister
//  104 	BKP_WriteBackupRegister(BKP_PULS2_0, 0);
        MOVS     R1,#+0
        MOVS     R0,#+16
          CFI FunCall BKP_WriteBackupRegister
        BL       BKP_WriteBackupRegister
//  105 	BKP_WriteBackupRegister(BKP_PULS2_1, 0);
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
          CFI EndBlock cfiBlock3
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  106 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine0:
        MOVS     R0,#+20
          CFI FunCall pulse_connter_clear BKP_WriteBackupRegister
          CFI FunCall EXTI1_IRQHandler BKP_WriteBackupRegister
        B.W      BKP_WriteBackupRegister
          CFI EndBlock cfiBlock4
//  107 
//  108 
//  109 //pulse 1  ->ubMeterA

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function EXTI0_IRQHandler
        THUMB
//  110 void EXTI0_IRQHandler(void)
//  111 {	
EXTI0_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  112 	u_long nResult = 0;
//  113 	if (EXTI_GetITStatus(EXTI_Line0) != RESET)
        MOVS     R0,#+1
          CFI FunCall EXTI_GetITStatus
        BL       EXTI_GetITStatus
        CBZ.N    R0,??EXTI0_IRQHandler_0
//  114 	{
//  115 		EXTI_ClearITPendingBit(EXTI_Line0);	
        MOVS     R0,#+1
          CFI FunCall EXTI_ClearITPendingBit
        BL       EXTI_ClearITPendingBit
//  116 		nResult = pulse_get_counter(ubMeterA);
//  117 		nResult++;
        ADR.W    R0,ubMeterA
          CFI FunCall pulse_get_counter
        BL       pulse_get_counter
        ADDS     R4,R0,#+1
//  118 		BKP_WriteBackupRegister(BKP_PULS1_0, (u_short)nResult);
        UXTH     R1,R4
        MOVS     R0,#+8
          CFI FunCall BKP_WriteBackupRegister
        BL       BKP_WriteBackupRegister
//  119 		BKP_WriteBackupRegister(BKP_PULS1_1, (u_short)(nResult >> 16));
        LSRS     R1,R4,#+16
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R0,#+12
          CFI FunCall BKP_WriteBackupRegister
        B.W      BKP_WriteBackupRegister
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  120 		//XPRINTF((0, "P = %d\r\n", nResult));
//  121 	}
//  122 }
??EXTI0_IRQHandler_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  123 
//  124 //pulse 2  -> ubMeterB

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function EXTI1_IRQHandler
        THUMB
//  125 void EXTI1_IRQHandler(void)
//  126 {	
EXTI1_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  127 	u_long nResult = 0;
//  128 	if (EXTI_GetITStatus(EXTI_Line1) != RESET)
        MOVS     R0,#+2
          CFI FunCall EXTI_GetITStatus
        BL       EXTI_GetITStatus
        CBZ.N    R0,??EXTI1_IRQHandler_0
//  129 	{
//  130 		EXTI_ClearITPendingBit(EXTI_Line1);	
        MOVS     R0,#+2
          CFI FunCall EXTI_ClearITPendingBit
        BL       EXTI_ClearITPendingBit
//  131 		nResult = pulse_get_counter(ubMeterB);
//  132 		nResult++;
        ADR.W    R0,ubMeterB
          CFI FunCall pulse_get_counter
        BL       pulse_get_counter
        ADDS     R4,R0,#+1
//  133 		BKP_WriteBackupRegister(BKP_PULS2_0, (u_short)nResult);
        UXTH     R1,R4
        MOVS     R0,#+16
          CFI FunCall BKP_WriteBackupRegister
        BL       BKP_WriteBackupRegister
//  134 		BKP_WriteBackupRegister(BKP_PULS2_1, (u_short)(nResult >> 16));		
        LSRS     R1,R4,#+16
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        B.N      ?Subroutine0
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  135 	}
//  136 }
??EXTI1_IRQHandler_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ubMeterA:
        DC8 145, 153, 153, 153, 153, 153, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
ubMeterB:
        DC8 146, 153, 153, 153, 153, 153, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  137 
//  138 
//  139 
//  140 #if 0
//  141 //For test BKP REG write and read.
//  142 PROCESS(bkp_test_process, "bkp_test");
//  143 
//  144 PROCESS_THREAD(bkp_test_process, ev, data)
//  145 {
//  146 	//static u_char ubach[4] = {0x12, 0x23, 0x55, 0x66};
//  147 	static struct etimer et;
//  148 	static u_char i = 0;
//  149 	//u_short ubData;
//  150 	PROCESS_BEGIN();
//  151 	XPRINTF((10, "bkp_test\r\n"));
//  152 	pulse_bkp_init( );
//  153 	
//  154 	while(1) 
//  155 	{
//  156 		etimer_set(&et, 1000);
//  157 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
//  158 		BKP_WriteBackupRegister(BKP_PULS1_0, (0x1234 + i));
//  159 		BKP_WriteBackupRegister(BKP_PULS1_1, (0x2233 + i));
//  160 		BKP_WriteBackupRegister(BKP_PULS2_0, (0xa5a5 + i));
//  161 		BKP_WriteBackupRegister(BKP_PULS2_1, (0x5a5a + i));			
//  162 
//  163 		etimer_set(&et, 1000);
//  164 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
//  165 		XPRINTF((6, "BKP_DR2 value is %02x\r\n", BKP_ReadBackupRegister(BKP_PULS1_0)));
//  166 		XPRINTF((6, "BKP_DR3 value is %02x\r\n", BKP_ReadBackupRegister(BKP_PULS1_1)));
//  167 
//  168 		XPRINTF((6, "BKP_DR4 value is %02x\r\n", BKP_ReadBackupRegister(BKP_PULS2_0)));
//  169 		XPRINTF((6, "BKP_DR5 value is %02x\r\n", BKP_ReadBackupRegister(BKP_PULS2_1)));
//  170 		i++;
//  171 		
//  172 	}
//  173 	PROCESS_END();
//  174 }
//  175 
//  176 
//  177 #endif
//  178 
//  179 
//  180 
//  181 
//  182 
//  183 
// 
// 394 bytes in section .text
// 
// 394 bytes of CODE memory
//
//Errors: none
//Warnings: 3
