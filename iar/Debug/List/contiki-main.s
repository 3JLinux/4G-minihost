///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\contiki-main.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\contiki-main.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\contiki-main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_WriteBit
        EXTERN OSInitSys
        EXTERN Uart_Init
        EXTERN Uart_StdSetInput
        EXTERN __aeabi_memcpy
        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN app485Init
        EXTERN app_enc28j60_init
        EXTERN clock_init
        EXTERN clock_seconds
        EXTERN crc16_data
        EXTERN ctimer_init
        EXTERN dbg_send_char
        EXTERN ds6_neighbors
        EXTERN etimer_expired
        EXTERN etimer_process
        EXTERN etimer_reset
        EXTERN etimer_set
        EXTERN extgdbdevGetDeviceSettingInfo
        EXTERN extgdbdevGetDeviceSettingInfoSt
        EXTERN fireAppInit
        EXTERN initAppKey
        EXTERN linkaddr_node_addr
        EXTERN linkaddr_set_node_addr
        EXTERN mp3init
        EXTERN nbr_table_head
        EXTERN nbr_table_next
        EXTERN netModeGet
        EXTERN netstack_init
        EXTERN process_exit
        EXTERN process_init
        EXTERN process_run
        EXTERN process_start
        EXTERN queuebuf_init
        EXTERN random_init
        EXTERN receiver_node_process
        EXTERN rtimer_init
        EXTERN serial_line_init
        EXTERN serial_line_input_byte
        EXTERN serial_shell_init
        EXTERN shell_init
        EXTERN sim900a_init
        EXTERN tcpip_process
        EXTERN uip_ds6_defrt_choose
        EXTERN uip_ds6_defrt_lookup
        EXTERN uip_ds6_if
        EXTERN uip_ds6_route_head
        EXTERN uip_ds6_route_next
        EXTERN uip_ds6_route_nexthop
        EXTERN uip_ds6_route_num_routes
        EXTERN uip_lladdr
        EXTERN unicast_receiver_root
        EXTERN watchdog_init
        EXTERN watchdog_periodic
        EXTERN xfunc_out
        EXTERN xprintf

        PUBLIC blink_process
        PUBLIC feeddog_process
        PUBLIC get_node_rf_param
        PUBLIC get_random_seed
        PUBLIC init_app
        PUBLIC main
        PUBLIC node_link_addr
        PUBLIC process_request_u
        PUBLIC procinit
        PUBLIC set_link_addr
        PUBLIC sysInit
        PUBLIC uip_log
        PUBLIC user_ip_start
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\contiki-main.c
//    1 #include "contiki.h"
//    2 #include "net/linkaddr.h"
//    3 
//    4 #include "stm32f10x.h"
//    5 #include "basictype.h"
//    6 #include <stdint.h>
//    7 
//    8 #include <debug-uart.h>
//    9 
//   10 #include "xprintf.h"
//   11 #include "sysprintf.h"
//   12 #include "rtimer-arch.h"
//   13 #include "sysinit.h"
//   14 #include "iodef.h"
//   15 
//   16 #include "arch_spi.h"
//   17 
//   18 #include "dev/serial-line.h"
//   19 
//   20 
//   21 #include "net/rime/rime.h"
//   22 #include "net/netstack.h"
//   23 #include "net/mac/frame802154.h"
//   24 
//   25 #include "contiki-lib.h"
//   26 #include "contiki-net.h"
//   27 #include "net/rpl/rpl.h"
//   28 #include "net/rpl/rpl-private.h"
//   29 
//   30 #include "userapp.h"
//   31 #include "dev_info.h"
//   32 
//   33 
//   34 #include "dev/watchdog.h"
//   35 #include "uart_dma.h"
//   36 #include "si446x_cmd.h"
//   37 #include "si446x.h"
//   38 
//   39 #include "apphwgg.h"
//   40 #include "sim900a.h"
//   41 
//   42 
//   43 uint8_t process_request_u(void);
//   44 
//   45 PROCESS(blink_process, "Blink");

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   46 PROCINIT(NULL);
procinit:
        DS8 8

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function process_thread_blink_process
        THUMB
//   47 PROCESS_THREAD(blink_process, ev, data)
//   48 {
process_thread_blink_process:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//   49 	//static u_char ubach[4] = {0x12, 0x23, 0x55, 0x66};
//   50 	static struct etimer et;
//   51 	static u_char ubacrctest[] = {0x1f,0x3a,0xab,0xcc};
//   52 	u_short crc = 0;
//   53 	NET_MODE *pnetMode;
//   54 	//const static u_char ubTdata[6] = {0x05,0x11, 0x12, 0x13, 0x14,0x15};
//   55 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_blink_process_0
        CMP      R0,#+61
        BEQ.N    ??process_thread_blink_process_1
        CMP      R0,#+81
        BEQ.N    ??process_thread_blink_process_2
        B.N      ??process_thread_blink_process_3
//   56 	XPRINTF((10, "LED\r\n"));
??process_thread_blink_process_0:
        ADR.W    R1,?_3
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//   57 	
//   58 	while(1) 
//   59 	{
//   60 		etimer_set(&et, 500);
??process_thread_blink_process_4:
        MOV      R1,#+500
        LDR.W    R0,??DataTable43_1
          CFI FunCall etimer_set
        BL       etimer_set
//   61 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
        MOVS     R0,#+61
        B.N      ??process_thread_blink_process_5
??process_thread_blink_process_1:
        LDR.W    R5,??DataTable43_1
        MOV      R0,R5
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??process_thread_blink_process_6
//   62 		LED_T(1);
        LDR.W    R6,??DataTable43_2  ;; 0x40010c00
        MOVS     R2,#+1
        MOVS     R1,#+64
        MOV      R0,R6
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//   63 		pnetMode = (NET_MODE *)netModeGet();
          CFI FunCall netModeGet
        BL       netModeGet
        MOV      R1,R0
//   64 		//if (getNetState( ))
//   65 		if (pnetMode->netMode != NET_CONNECT_NONE)
        LDR.W    R0,??DataTable43_3  ;; 0x40011000
        LDRB     R1,[R1, #+0]
        CBZ.N    R1,??process_thread_blink_process_7
//   66 		{
//   67 			NET_LED(0);
        MOVS     R2,#+0
        MOVS     R1,#+16
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//   68 			//FAULT_LED(1);
//   69 			ALARM_LED(1);
        MOVS     R2,#+1
        MOVS     R1,#+1
        B.N      ??process_thread_blink_process_8
//   70 		}
//   71 		else
//   72 		{
//   73 			NET_LED(1);
??process_thread_blink_process_7:
        MOVS     R2,#+1
        MOVS     R1,#+16
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//   74 			//FAULT_LED(0);
//   75 			ALARM_LED(0);
        MOVS     R2,#+0
        MOVS     R1,#+1
??process_thread_blink_process_8:
        MOV      R0,R6
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//   76 		}		//uart4_send_char('a');
//   77 		//sim900a_send_cmd("AT");
//   78 		etimer_set(&et, 500);
        MOV      R1,#+500
        MOV      R0,R5
          CFI FunCall etimer_set
        BL       etimer_set
//   79 		//crc = cyg_crc16((const unsigned char*)ubacrctest, sizeof(ubacrctest));
//   80 		//XPRINTF((8, "CRC = %04x\n", crc));
//   81 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
        MOVS     R0,#+81
??process_thread_blink_process_5:
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_blink_process_6
??process_thread_blink_process_2:
        LDR.W    R0,??DataTable43_1
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_blink_process_9
??process_thread_blink_process_6:
        MOVS     R0,#+1
        POP      {R4-R6,PC}
//   82 		LED_T(0);
??process_thread_blink_process_9:
        MOVS     R2,#+0
        MOVS     R1,#+64
        LDR.W    R0,??DataTable43_2  ;; 0x40010c00
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        B.N      ??process_thread_blink_process_4
//   83 		//uart2_send_char("a");
//   84 	}
//   85 	PROCESS_END();
??process_thread_blink_process_3:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//   86 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??et:
        DS8 16
//   87 
//   88 
//   89 //
//   90 PROCESS(feeddog_process, "feeddog");

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function process_thread_feeddog_process
        THUMB
//   91 PROCESS_THREAD(feeddog_process, ev, data)
//   92 {
process_thread_feeddog_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//   93 	static struct etimer et;
//   94 
//   95 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_feeddog_process_0
        CMP      R0,#+103
        BEQ.N    ??process_thread_feeddog_process_1
        B.N      ??process_thread_feeddog_process_2
//   96 	XPRINTF((10, "feeddog\r\n"));
??process_thread_feeddog_process_0:
        ADR.W    R1,?_4
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//   97 	XPRINTF((10, "clock s is %d\r\n", clock_seconds( )));
          CFI FunCall clock_seconds
        BL       clock_seconds
        MOV      R2,R0
        ADR.W    R1,?_5
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//   98 	watchdog_init( );
          CFI FunCall watchdog_init
        BL       watchdog_init
//   99 	etimer_set(&et, 10*CLOCK_SECOND);
        MOVW     R1,#+10000
        LDR.W    R0,??DataTable43_4
          CFI FunCall etimer_set
        BL       etimer_set
//  100 	
//  101 	while(1) 
//  102 	{		
//  103 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
??process_thread_feeddog_process_3:
        MOVS     R0,#+103
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_feeddog_process_4
??process_thread_feeddog_process_1:
        LDR.W    R5,??DataTable43_4
        MOV      R0,R5
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_feeddog_process_5
??process_thread_feeddog_process_4:
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
//  104 		watchdog_periodic( );
??process_thread_feeddog_process_5:
          CFI FunCall watchdog_periodic
        BL       watchdog_periodic
//  105 		etimer_reset(&et);
        MOV      R0,R5
          CFI FunCall etimer_reset
        BL       etimer_reset
        B.N      ??process_thread_feeddog_process_3
//  106 	}
//  107 	PROCESS_END();
??process_thread_feeddog_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//  108 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??et_1:
        DS8 16
//  109 
//  110 
//  111 
//  112 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function process_request_u
        THUMB
//  113 uint8_t process_request_u(void) 
//  114 {
process_request_u:
        PUSH     {R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+36
        SUB      SP,SP,#+108
          CFI CFA R13+144
//  115 	#if 1
//  116 	extern uip_ds6_netif_t uip_ds6_if;
//  117 	uip_ds6_route_t *rt = NULL;
//  118 	uip_ds6_defrt_t *defrt = NULL;
//  119 	uip_ipaddr_t *addr = NULL;
//  120 	uint8_t i;
//  121 	uint8_t entry_size;
//  122 	uip_ds6_nbr_t *nbr = NULL;
//  123 	u_long udwNeighbors = 0;
        MOVS     R4,#+0
//  124 
//  125 	const DEV_PARAM_STORAGE_INFO* pcDevParamInfo = (const DEV_PARAM_STORAGE_INFO*)extgdbdevGetDeviceSettingInfo( );
          CFI FunCall extgdbdevGetDeviceSettingInfo
        BL       extgdbdevGetDeviceSettingInfo
//  126 
//  127 	MEM_DUMP(0, "Nadd", &pcDevParamInfo->st2nodeAddrInfo.ubaNodeAddr, 8);
        ADD      R2,R0,#+14
        MOVS     R3,#+8
        ADR.W    R1,?_6
        MOVS     R0,#+0
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        ADR.N    R0,??process_request_u_0  ;; "\n"
//  128 	PRINTF("\n");
          CFI FunCall xprintf
        BL       xprintf
//  129 	/* Neighbors */
//  130 	PRINTF("Neighbors\n");
        ADR.W    R0,?_8
          CFI FunCall xprintf
        BL       xprintf
//  131 	for(nbr = nbr_table_head(ds6_neighbors);nbr != NULL;nbr = nbr_table_next(ds6_neighbors, nbr)) 
        LDR.W    R5,??DataTable43_5
        LDR      R0,[R5, #+0]
          CFI FunCall nbr_table_head
        BL       nbr_table_head
        ADR.W    R7,?_11
        MOVS     R6,R0
        ADR.W    R8,??process_request_u_0+0x4  ;; " - "
        B.N      ??process_request_u_1
//  132 	{
//  133 		entry_size = sizeof(i) + sizeof(uip_ipaddr_t) + sizeof(uip_lladdr_t) + sizeof(nbr->state);
//  134 		// PRINTF("%02u: ", i);
//  135 		PRINT6ADDR_U(&nbr->ipaddr);
??process_request_u_2:
        LDRB     R0,[R6, #+15]
        STR      R0,[SP, #+48]
        LDRB     R0,[R6, #+14]
        STR      R0,[SP, #+44]
        LDRB     R0,[R6, #+13]
        STR      R0,[SP, #+40]
        LDRB     R0,[R6, #+12]
        STR      R0,[SP, #+36]
        LDRB     R0,[R6, #+11]
        STR      R0,[SP, #+32]
        LDRB     R0,[R6, #+10]
        STR      R0,[SP, #+28]
        LDRB     R0,[R6, #+9]
        STR      R0,[SP, #+24]
        LDRB     R0,[R6, #+8]
        STR      R0,[SP, #+20]
        LDRB     R0,[R6, #+7]
        STR      R0,[SP, #+16]
        LDRB     R0,[R6, #+6]
        STR      R0,[SP, #+12]
        LDRB     R0,[R6, #+5]
        STR      R0,[SP, #+8]
        LDRB     R0,[R6, #+4]
        STR      R0,[SP, #+4]
        LDRB     R0,[R6, #+3]
        STR      R0,[SP, #+0]
        LDRB     R3,[R6, #+2]
        LDRB     R2,[R6, #+1]
        LDRB     R1,[R6, #+0]
        ADR.W    R0,?_9
          CFI FunCall xprintf
        BL       xprintf
//  136 		PRINTF(" - ");
        MOV      R0,R8
          CFI FunCall xprintf
        BL       xprintf
//  137 		//      PRINTLLADDR_U(&nbr->lladdr);
//  138 		PRINTF(" - %u\n", nbr->state);
        LDRB     R1,[R6, #+34]
        MOV      R0,R7
          CFI FunCall xprintf
        BL       xprintf
//  139 		udwNeighbors++;
//  140 	}
        LDR      R0,[R5, #+0]
        ADDS     R4,R4,#+1
        MOV      R1,R6
          CFI FunCall nbr_table_next
        BL       nbr_table_next
        MOVS     R6,R0
??process_request_u_1:
        BNE.N    ??process_request_u_2
//  141 	PRINTF("Neighbors is %d\n", udwNeighbors);
        MOV      R1,R4
        ADR.W    R0,?_12
          CFI FunCall xprintf
        BL       xprintf
//  142 
//  143 	PRINTF("\n");
        ADR.N    R0,??process_request_u_0  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
//  144 
//  145 	PRINTF("Routing table\n");
        ADR.W    R0,?_13
          CFI FunCall xprintf
        BL       xprintf
//  146 	rt = uip_ds6_route_head();
          CFI FunCall uip_ds6_route_head
        BL       uip_ds6_route_head
        MOV      R4,R0
//  147 	PRINTF("Routing num is %d\r\n",uip_ds6_route_num_routes());
          CFI FunCall uip_ds6_route_num_routes
        BL       uip_ds6_route_num_routes
        MOV      R1,R0
        ADR.W    R0,?_14
          CFI FunCall xprintf
        BL       xprintf
//  148 	for(i = 0; i < uip_ds6_route_num_routes(); i++) 
        MOVS     R0,#+0
        B.N      ??process_request_u_3
        DATA
??process_request_u_0:
        DC8      "\n",0x0,0x0
        DC8      " - "
        THUMB
//  149 	{
//  150 		u_char uaddr[16] = {0};
??process_request_u_4:
        ADD      R0,SP,#+56
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOV      R3,R1
        MOV      R5,R1
        STM      R0!,{R1-R3,R5}
//  151 		if(rt != NULL) 
        CMP      R4,#+0
        BEQ.W    ??process_request_u_5
//  152 		{
//  153 			entry_size = sizeof(i) + sizeof(rt->ipaddr)
//  154 			+ sizeof(rt->length)
//  155 			+ sizeof(rt->state.lifetime)
//  156 			+ sizeof(rt->state.learned_from);
//  157 
//  158 			PRINT6ADDR_U(&rt->ipaddr);
        LDRB     R0,[R4, #+23]
        STR      R0,[SP, #+48]
        LDRB     R0,[R4, #+22]
        STR      R0,[SP, #+44]
        LDRB     R0,[R4, #+21]
        STR      R0,[SP, #+40]
        LDRB     R0,[R4, #+20]
        STR      R0,[SP, #+36]
        LDRB     R0,[R4, #+19]
        STR      R0,[SP, #+32]
        LDRB     R0,[R4, #+18]
        STR      R0,[SP, #+28]
        LDRB     R0,[R4, #+17]
        STR      R0,[SP, #+24]
        LDRB     R0,[R4, #+16]
        STR      R0,[SP, #+20]
        LDRB     R0,[R4, #+15]
        STR      R0,[SP, #+16]
        LDRB     R0,[R4, #+14]
        STR      R0,[SP, #+12]
        LDRB     R0,[R4, #+13]
        STR      R0,[SP, #+8]
        LDRB     R0,[R4, #+12]
        STR      R0,[SP, #+4]
        LDRB     R0,[R4, #+11]
        STR      R0,[SP, #+0]
        LDRB     R3,[R4, #+10]
        LDRB     R2,[R4, #+9]
        LDRB     R1,[R4, #+8]
        ADR.W    R0,?_9
          CFI FunCall xprintf
        BL       xprintf
//  159 			memcpy(uaddr, &rt->ipaddr.u8[8], 8);
        ADD      R0,R4,#+16
        LDM      R0!,{R2,R3}
        ADD      R1,SP,#+56
        STM      R1!,{R2,R3}
//  160 			uaddr[0] ^= 0x02; 
        LDRB     R0,[SP, #+56]
        EOR      R0,R0,#0x2
        STRB     R0,[SP, #+56]
//  161 			PRINTF(" 1-%02x", rt->length);
        LDRB     R1,[R4, #+36]
        ADR.W    R0,?_16
          CFI FunCall xprintf
        BL       xprintf
//  162 			PRINTF(" 2-");
        ADR.N    R0,??DataTable38  ;; " 2-"
          CFI FunCall xprintf
        BL       xprintf
//  163 			PRINT6ADDR_U(uip_ds6_route_nexthop(rt));
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        STR      R0,[SP, #+100]
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        STR      R0,[SP, #+96]
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        STR      R0,[SP, #+92]
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        STR      R0,[SP, #+88]
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        STR      R0,[SP, #+84]
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        STR      R0,[SP, #+80]
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        STR      R0,[SP, #+76]
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        STR      R0,[SP, #+72]
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOV      R5,R0
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOV      R6,R0
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOV      R7,R0
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOV      R8,R0
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOV      R9,R0
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOV      R10,R0
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        MOV      R11,R0
        MOV      R0,R4
          CFI FunCall uip_ds6_route_nexthop
        BL       uip_ds6_route_nexthop
        LDR      R1,[SP, #+100]
        LDRB     R1,[R1, #+15]
        STR      R1,[SP, #+48]
        LDR      R1,[SP, #+96]
        LDRB     R1,[R1, #+14]
        STR      R1,[SP, #+44]
        LDR      R1,[SP, #+92]
        LDRB     R1,[R1, #+13]
        STR      R1,[SP, #+40]
        LDR      R1,[SP, #+88]
        LDRB     R1,[R1, #+12]
        STR      R1,[SP, #+36]
        LDR      R1,[SP, #+84]
        LDRB     R1,[R1, #+11]
        STR      R1,[SP, #+32]
        LDR      R1,[SP, #+80]
        LDRB     R1,[R1, #+10]
        STR      R1,[SP, #+28]
        LDR      R1,[SP, #+76]
        LDRB     R1,[R1, #+9]
        STR      R1,[SP, #+24]
        LDR      R1,[SP, #+72]
        LDRB     R1,[R1, #+8]
        STR      R1,[SP, #+20]
        LDRB     R1,[R5, #+7]
        STR      R1,[SP, #+16]
        LDRB     R1,[R6, #+6]
        STR      R1,[SP, #+12]
        LDRB     R1,[R7, #+5]
        STR      R1,[SP, #+8]
        LDRB     R1,[R8, #+4]
        STR      R1,[SP, #+4]
        LDRB     R1,[R9, #+3]
        STR      R1,[SP, #+0]
        LDRB     R1,[R0, #+0]
        LDRB     R3,[R10, #+2]
        LDRB     R2,[R11, #+1]
        ADR.W    R0,?_9
          CFI FunCall xprintf
        BL       xprintf
//  164 
//  165 			PRINTF(" 3-%08lx", rt->state.lifetime);
        LDR      R1,[R4, #+24]
        ADR.W    R0,?_18
          CFI FunCall xprintf
        BL       xprintf
//  166 
//  167 			PRINTF(" 4-%02x [%u]", rt->state.learned_from, entry_size);
        LDRB     R1,[R4, #+32]
        ADR.W    R0,?_19
        MOVS     R2,#+23
          CFI FunCall xprintf
        BL       xprintf
//  168 			PRINTF(" m %02x%02x%02x%02x%02x%02x%02x%02x\n", uaddr[7], uaddr[6], uaddr[5], uaddr[4], uaddr[3],uaddr[2],uaddr[1],uaddr[0]);
        LDRB     R0,[SP, #+56]
        LDRB     R3,[SP, #+61]
        LDRB     R2,[SP, #+62]
        LDRB     R1,[SP, #+63]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+57]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+58]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+59]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+60]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_20
          CFI FunCall xprintf
        BL       xprintf
//  169 			rt = uip_ds6_route_next(rt);
        MOV      R0,R4
          CFI FunCall uip_ds6_route_next
        BL       uip_ds6_route_next
        MOV      R4,R0
//  170 
//  171 		}
//  172 	}
??process_request_u_5:
        LDR      R0,[SP, #+52]
        ADDS     R0,R0,#+1
        UXTB     R0,R0
??process_request_u_3:
        STR      R0,[SP, #+52]
          CFI FunCall uip_ds6_route_num_routes
        BL       uip_ds6_route_num_routes
        LDR      R1,[SP, #+52]
        CMP      R1,R0
        BLT.W    ??process_request_u_4
//  173 	PRINTF("\n");
        ADR.N    R0,??DataTable41  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
//  174 
//  175 	i = 0;
//  176 	PRINTF("Default Route\n");
        ADR.W    R0,?_21
          CFI FunCall xprintf
        BL       xprintf
//  177 	addr = uip_ds6_defrt_choose();
          CFI FunCall uip_ds6_defrt_choose
        BL       uip_ds6_defrt_choose
//  178 	if(addr != NULL) 
        CBZ.N    R0,??process_request_u_6
//  179 	{
//  180 		defrt = uip_ds6_defrt_lookup(addr);
          CFI FunCall uip_ds6_defrt_lookup
        BL       uip_ds6_defrt_lookup
        MOVS     R4,R0
//  181 	}
//  182 
//  183 	//    i = buf[1];
//  184 
//  185 	if(defrt != NULL && i < 1) 
        BEQ.N    ??process_request_u_6
//  186 	{
//  187 		entry_size = sizeof(i) + sizeof(defrt->ipaddr)
//  188 		+ sizeof(defrt->isinfinite);
//  189 
//  190 		PRINT6ADDR_U(&defrt->ipaddr);
        LDRB     R0,[R4, #+19]
        STR      R0,[SP, #+48]
        LDRB     R0,[R4, #+18]
        STR      R0,[SP, #+44]
        LDRB     R0,[R4, #+17]
        STR      R0,[SP, #+40]
        LDRB     R0,[R4, #+16]
        STR      R0,[SP, #+36]
        LDRB     R0,[R4, #+15]
        STR      R0,[SP, #+32]
        LDRB     R0,[R4, #+14]
        STR      R0,[SP, #+28]
        LDRB     R0,[R4, #+13]
        STR      R0,[SP, #+24]
        LDRB     R0,[R4, #+12]
        STR      R0,[SP, #+20]
        LDRB     R0,[R4, #+11]
        STR      R0,[SP, #+16]
        LDRB     R0,[R4, #+10]
        STR      R0,[SP, #+12]
        LDRB     R0,[R4, #+9]
        STR      R0,[SP, #+8]
        LDRB     R0,[R4, #+8]
        STR      R0,[SP, #+4]
        LDRB     R0,[R4, #+7]
        STR      R0,[SP, #+0]
        LDRB     R3,[R4, #+6]
        LDRB     R2,[R4, #+5]
        LDRB     R1,[R4, #+4]
        ADR.W    R0,?_9
          CFI FunCall xprintf
        BL       xprintf
//  191 		PRINTF(" - %u\n", defrt->isinfinite);
        LDRB     R1,[R4, #+28]
        ADR.W    R0,?_11
          CFI FunCall xprintf
        BL       xprintf
//  192 	}
//  193 	PRINTF("\n");
??process_request_u_6:
        ADR.N    R0,??DataTable41  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
//  194 
//  195 	PRINTF("Unicast Addresses\n");
        ADR.W    R0,?_22
          CFI FunCall xprintf
        BL       xprintf
//  196 	for(i = 0; i < UIP_DS6_ADDR_NB; i++) 
        LDR.N    R4,??DataTable43_6
//  197 	{
//  198 		if(uip_ds6_if.addr_list[i].isused) 
        LDRB     R0,[R4, #+24]
        CBZ.N    R0,??process_request_u_7
//  199 		{
//  200 			entry_size = sizeof(i) + sizeof(uip_ds6_if.addr_list[i].ipaddr);
//  201 			PRINT6ADDR_U(&uip_ds6_if.addr_list[i].ipaddr);
        LDRB     R0,[R4, #+41]
        LDRB     R3,[R4, #+28]
        LDRB     R2,[R4, #+27]
        LDRB     R1,[R4, #+26]
        STR      R0,[SP, #+48]
        LDRB     R0,[R4, #+40]
        STR      R0,[SP, #+44]
        LDRB     R0,[R4, #+39]
        STR      R0,[SP, #+40]
        LDRB     R0,[R4, #+38]
        STR      R0,[SP, #+36]
        LDRB     R0,[R4, #+37]
        STR      R0,[SP, #+32]
        LDRB     R0,[R4, #+36]
        STR      R0,[SP, #+28]
        LDRB     R0,[R4, #+35]
        STR      R0,[SP, #+24]
        LDRB     R0,[R4, #+34]
        STR      R0,[SP, #+20]
        LDRB     R0,[R4, #+33]
        STR      R0,[SP, #+16]
        LDRB     R0,[R4, #+32]
        STR      R0,[SP, #+12]
        LDRB     R0,[R4, #+31]
        STR      R0,[SP, #+8]
        LDRB     R0,[R4, #+30]
        STR      R0,[SP, #+4]
        LDRB     R0,[R4, #+29]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_9
          CFI FunCall xprintf
        BL       xprintf
//  202 			PRINTF("\n");
        ADR.N    R0,??DataTable41  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
??process_request_u_7:
        LDRB     R0,[R4, #+56]
        CBZ.N    R0,??process_request_u_8
        LDRB     R0,[R4, #+73]
        LDRB     R3,[R4, #+60]
        LDRB     R2,[R4, #+59]
        LDRB     R1,[R4, #+58]
        STR      R0,[SP, #+48]
        LDRB     R0,[R4, #+72]
        STR      R0,[SP, #+44]
        LDRB     R0,[R4, #+71]
        STR      R0,[SP, #+40]
        LDRB     R0,[R4, #+70]
        STR      R0,[SP, #+36]
        LDRB     R0,[R4, #+69]
        STR      R0,[SP, #+32]
        LDRB     R0,[R4, #+68]
        STR      R0,[SP, #+28]
        LDRB     R0,[R4, #+67]
        STR      R0,[SP, #+24]
        LDRB     R0,[R4, #+66]
        STR      R0,[SP, #+20]
        LDRB     R0,[R4, #+65]
        STR      R0,[SP, #+16]
        LDRB     R0,[R4, #+64]
        STR      R0,[SP, #+12]
        LDRB     R0,[R4, #+63]
        STR      R0,[SP, #+8]
        LDRB     R0,[R4, #+62]
        STR      R0,[SP, #+4]
        LDRB     R0,[R4, #+61]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_9
          CFI FunCall xprintf
        BL       xprintf
        ADR.N    R0,??DataTable41  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
??process_request_u_8:
        LDRB     R0,[R4, #+88]
        CBZ.N    R0,??process_request_u_9
        LDRB     R0,[R4, #+105]
        LDRB     R3,[R4, #+92]
        LDRB     R2,[R4, #+91]
        LDRB     R1,[R4, #+90]
        STR      R0,[SP, #+48]
        LDRB     R0,[R4, #+104]
        STR      R0,[SP, #+44]
        LDRB     R0,[R4, #+103]
        STR      R0,[SP, #+40]
        LDRB     R0,[R4, #+102]
        STR      R0,[SP, #+36]
        LDRB     R0,[R4, #+101]
        STR      R0,[SP, #+32]
        LDRB     R0,[R4, #+100]
        STR      R0,[SP, #+28]
        LDRB     R0,[R4, #+99]
        STR      R0,[SP, #+24]
        LDRB     R0,[R4, #+98]
        STR      R0,[SP, #+20]
        LDRB     R0,[R4, #+97]
        STR      R0,[SP, #+16]
        LDRB     R0,[R4, #+96]
        STR      R0,[SP, #+12]
        LDRB     R0,[R4, #+95]
        STR      R0,[SP, #+8]
        LDRB     R0,[R4, #+94]
        STR      R0,[SP, #+4]
        LDRB     R0,[R4, #+93]
        STR      R0,[SP, #+0]
        ADR.W    R0,?_9
          CFI FunCall xprintf
        BL       xprintf
        ADR.N    R0,??DataTable41  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
//  203 		}
//  204 	}
//  205 	PRINTF("\n");
??process_request_u_9:
        ADR.N    R0,??DataTable41  ;; "\n"
          CFI FunCall xprintf
        BL       xprintf
//  206 
//  207 	return 0;
        MOVS     R0,#+0
        ADD      SP,SP,#+108
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock2
//  208 	#endif
//  209 }
//  210 
//  211 
//  212 
//  213 
//  214 
//  215 //Init sys
//  216 /*
//  217 1  ->  hardware  init
//  218 2  ->  clock init
//  219 3  ->  debug uart init, shell init
//  220 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function sysInit
        THUMB
//  221 void sysInit(void)
//  222 {
sysInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  223 	OSInitSys( );//Init system hardware io, uart, interrupt
          CFI FunCall OSInitSys
        BL       OSInitSys
//  224 	//OS clock ,when use some funtion of the clock, must after clocd_init
//  225 	clock_init(); 
          CFI FunCall clock_init
        BL       clock_init
//  226 	
//  227 	//System debug uart init
//  228 	//dbg_setup_uart();  							//
//  229 	Uart_Init(1);
        MOVS     R0,#+1
          CFI FunCall Uart_Init
        BL       Uart_Init
//  230 	#if 0
//  231 	dbguart_DMA_Configuration( );
//  232 	dbguart_DMA_NVIC_Config( );
//  233 	xdev_out(uart_dma_putchar);
//  234 	#else
//  235 	//Uart_Std_Init( );							//open std uart ->uart1
//  236 	xdev_out(dbg_send_char);//set std output
        LDR.N    R1,??DataTable43_7
        LDR.N    R0,??DataTable43_8
        STR      R0,[R1, #+0]
//  237 	#endif
//  238 	Uart_StdSetInput(serial_line_input_byte);	//For shell read data  
        LDR.N    R0,??DataTable43_9
          CFI FunCall Uart_StdSetInput
        BL       Uart_StdSetInput
//  239 #if 1
//  240 	//usart2 interface
//  241 	Uart_Init(2);
        MOVS     R0,#+2
          CFI FunCall Uart_Init
        BL       Uart_Init
//  242 	Uart_Init(4);
        MOVS     R0,#+4
          CFI FunCall Uart_Init
        BL       Uart_Init
//  243 	Uart_Init(3);
        MOVS     R0,#+3
          CFI FunCall Uart_Init
        BL       Uart_Init
//  244 	Uart_Init(5);
        MOVS     R0,#+5
          CFI FunCall Uart_Init
        BL       Uart_Init
//  245 	//Uart_Init(3);
//  246 	#if 1
//  247 	//dbguart_DMA_Configuration( );
//  248 	//dbguart_DMA_NVIC_Config( );
//  249 	#endif
//  250 #endif
//  251 	
//  252 	XPRINTF((0,"Initialising\r\n"));
        ADR.W    R1,?_23
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  253 
//  254 	rtimer_init( );
          CFI FunCall rtimer_init
        BL       rtimer_init
//  255 	
//  256 	process_init( );
          CFI FunCall process_init
        BL       process_init
//  257 	process_start(&etimer_process, NULL);
        MOVS     R1,#+0
        LDR.N    R0,??DataTable43_10
          CFI FunCall process_start
        BL       process_start
//  258 	ctimer_init( );
          CFI FunCall ctimer_init
        BL       ctimer_init
//  259 	
//  260 	serial_line_init( );//For shell
          CFI FunCall serial_line_init
        BL       serial_line_init
//  261 	serial_shell_init( );
          CFI FunCall serial_shell_init
        BL       serial_shell_init
//  262 	shell_init( );
        POP      {R0,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall shell_init
        B.W      shell_init
          CFI EndBlock cfiBlock3
//  263 
//  264 }
//  265 
//  266 const u_char  node_link_addr[8] = {0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0x00, 0x00};
//  267 //global save node rf param,when modify; when node before reboot, node rf param use this config
//  268 static  RF_NODE_PARAM_CONFIG stRfParamCfg ={
//  269 	NODE_TYPE_LEAF,
//  270 	RF_TX_POWER_20DBM,
//  271 	60,
//  272 	0,
//  273 	0xABCD
//  274 };
//  275 
//  276 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function get_node_rf_param
          CFI NoCalls
        THUMB
//  277 RF_NODE_PARAM_CONFIG * get_node_rf_param(void)
//  278 {
//  279 	return &stRfParamCfg;
get_node_rf_param:
        LDR.N    R0,??DataTable43_11
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  280 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38:
        DC8      " 2-"
//  281 
//  282 
//  283 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function set_link_addr
        THUMB
//  284 void set_link_addr(void)
//  285 {
set_link_addr:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  286 	#if 1
//  287 	const DEV_PARAM_STORAGE_INFO* pcDevParamInfo = (const DEV_PARAM_STORAGE_INFO*)extgdbdevGetDeviceSettingInfo( );
          CFI FunCall extgdbdevGetDeviceSettingInfo
        BL       extgdbdevGetDeviceSettingInfo
        MOVS     R4,R0
//  288 	if (NULL != pcDevParamInfo)
        BEQ.N    ??set_link_addr_0
//  289 	{
//  290 		if (pcDevParamInfo->udwProtectWord == 0x5aa5)
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+23205
        CMP      R0,R1
        BNE.N    ??set_link_addr_1
//  291 		{
//  292 			linkaddr_set_node_addr((linkaddr_t*)&pcDevParamInfo->st2nodeAddrInfo.ubaNodeAddr[0]);
        ADD      R0,R4,#+14
          CFI FunCall linkaddr_set_node_addr
        BL       linkaddr_set_node_addr
//  293 			//copy node rf config param
//  294 			memcpy(&stRfParamCfg, &pcDevParamInfo->st1NodeConfig, sizeof(RF_NODE_PARAM_CONFIG));
        MOVS     R2,#+12
        ADDS     R1,R4,#+2
        LDR.N    R0,??DataTable43_11
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  295 			
//  296 			XPRINTF((2, "set addr success\r\n"));
        ADR.W    R1,?_24
        MOVS     R0,#+2
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        B.N      ??set_link_addr_2
//  297 		}
//  298 		else
//  299 		{
//  300 			linkaddr_set_node_addr((linkaddr_t*)&node_link_addr[0]);
??set_link_addr_1:
        ADR.W    R0,node_link_addr
          CFI FunCall linkaddr_set_node_addr
        BL       linkaddr_set_node_addr
//  301 		}
//  302 		MEM_DUMP(2, "Nadd", &linkaddr_node_addr, 8);
??set_link_addr_2:
        LDR.N    R4,??DataTable43_12
        ADR.W    R1,?_6
        MOVS     R3,#+8
        MOV      R2,R4
        MOVS     R0,#+2
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  303 		memcpy(&uip_lladdr.addr, &linkaddr_node_addr, sizeof(uip_lladdr.addr));
        MOVS     R2,#+8
        MOV      R1,R4
        B.N      ??set_link_addr_3
//  304 	}
//  305 	else
//  306 	{
//  307 		linkaddr_set_node_addr((linkaddr_t*)&node_link_addr[0]);
??set_link_addr_0:
        ADR.W    R0,node_link_addr
          CFI FunCall linkaddr_set_node_addr
        BL       linkaddr_set_node_addr
//  308 		memcpy(&uip_lladdr.addr, &linkaddr_node_addr, sizeof(uip_lladdr.addr));
        MOVS     R2,#+8
        LDR.N    R1,??DataTable43_12
??set_link_addr_3:
        LDR.N    R0,??DataTable43_13
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI EndBlock cfiBlock5
//  309 	}
//  310 	#endif
//  311 }
//  312 
//  313 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function uip_log
        THUMB
//  314 void uip_log(char *m)
//  315 {
//  316   PRINTF("%s\n", m);
uip_log:
        MOV      R1,R0
        ADR.N    R0,??DataTable43  ;; "%s\n"
          CFI FunCall xprintf
        B.W      xprintf
          CFI EndBlock cfiBlock6
//  317 }
//  318 
//  319 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function get_random_seed
        THUMB
//  320 u_short get_random_seed(void)
//  321 {
get_random_seed:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  322 	const NODE_ADDR_INFO* pcNodeAddrInfo = (const NODE_ADDR_INFO*)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R4,R0
//  323 	u_short uwRandomSeed = 0;
        MOVS     R0,#+0
//  324 	int i = 0;
//  325 	if (NULL != pcNodeAddrInfo)
        CBZ.N    R4,??get_random_seed_0
//  326 	{
//  327 		for (i = 0; i < 8; i++)
//  328 		{
//  329 			uwRandomSeed = crc16_data((const unsigned char * )&pcNodeAddrInfo->ubaNodeAddr[0], 8, 0);
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOV      R0,R4
          CFI FunCall crc16_data
        BL       crc16_data
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOV      R0,R4
          CFI FunCall crc16_data
        BL       crc16_data
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOV      R0,R4
          CFI FunCall crc16_data
        BL       crc16_data
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOV      R0,R4
          CFI FunCall crc16_data
        BL       crc16_data
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOV      R0,R4
          CFI FunCall crc16_data
        BL       crc16_data
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOV      R0,R4
          CFI FunCall crc16_data
        BL       crc16_data
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOV      R0,R4
          CFI FunCall crc16_data
        BL       crc16_data
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOV      R0,R4
          CFI FunCall crc16_data
        BL       crc16_data
//  330 		}
//  331 	}
//  332 
//  333 	return uwRandomSeed;
??get_random_seed_0:
        UXTH     R0,R0
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7
//  334 }
//  335 
//  336 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function init_app
        THUMB
//  337 void init_app(void)
//  338 {
init_app:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  339 	const RF_NODE_PARAM_CONFIG* pcNodeRfParamCfg = (const RF_NODE_PARAM_CONFIG*)extgdbdevGetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM);
        MOVS     R0,#+1
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
//  340 	
//  341 	if (pcNodeRfParamCfg->ubNodeType == NODE_TYPE_CENTER)
        LDRB     R0,[R0, #+0]
        CBNZ.N   R0,??init_app_0
//  342 	{
//  343 		XPRINTF((0, "1 center node\r\n"));
        ADR.W    R1,?_26
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  344 		process_start(&unicast_receiver_root, NULL);
        MOVS     R1,#+0
        LDR.N    R0,??DataTable43_14
        B.N      ??init_app_1
//  345 		
//  346 	}
//  347 	else 
//  348 	{
//  349 		XPRINTF((0, "2 leaf node\r\n"));
??init_app_0:
        ADR.W    R1,?_27
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  350 		process_start(&receiver_node_process,NULL);	
        MOVS     R1,#+0
        LDR.N    R0,??DataTable43_15
??init_app_1:
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall process_start
        B.W      process_start
          CFI EndBlock cfiBlock8
//  351 	}
//  352 	//serial_uart_init( );
//  353 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable41:
        DC8      "\n",0x0,0x0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
blink_process:
        DATA
        DC32 0H, ?_0, process_thread_blink_process
        DC8 0, 0, 0, 0
feeddog_process:
        DC32 0H, ?_1, process_thread_feeddog_process
        DC8 0, 0, 0, 0
//  354 
//  355 
//  356 PROCESS(user_ip_start, "user_ip");
user_ip_start:
        DC32 0H, ?_2, process_thread_user_ip_start
        DC8 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
stRfParamCfg:
        DATA
        DC8 1, 7, 60, 0, 205, 0, 0, 0, 0, 0
        DC16 0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function process_thread_user_ip_start
        THUMB
//  357 PROCESS_THREAD(user_ip_start, ev, data)
//  358 {
process_thread_user_ip_start:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  359 	static struct etimer et;
//  360 	u_long udwWaitTime = 0;
//  361  	const DEV_PARAM_STORAGE_INFO* pcDevParamInfo = NULL;
//  362 	PROCESS_BEGIN( );	
        LDRH     R0,[R4, #+0]
        CBNZ.N   R0,??process_thread_user_ip_start_0
//  363 	XPRINTF((10, "user_ip\r\n"));
        ADR.W    R1,?_28
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  364 
//  365 	pcDevParamInfo = (const DEV_PARAM_STORAGE_INFO*)extgdbdevGetDeviceSettingInfo( );
          CFI FunCall extgdbdevGetDeviceSettingInfo
        BL       extgdbdevGetDeviceSettingInfo
//  366 	
//  367 	#if 0
//  368 	if (pcDevParamInfo->st1NodeConfig.ubNodeType == NODE_TYPE_LEAF)
//  369 	{
//  370 		udwWaitTime = get_random_seed( )%(30*1000);
//  371 		etimer_set(&et, udwWaitTime);
//  372 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et));
//  373 	}
//  374 	#endif
//  375 	XPRINTF((10, "start tcp\r\n"));
        ADR.W    R1,?_29
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  376 	set_link_addr( );	
          CFI FunCall set_link_addr
        BL       set_link_addr
//  377 	netstack_init( );
          CFI FunCall netstack_init
        BL       netstack_init
//  378 	XPRINTF((10, "net finish\r\n"));
        ADR.W    R1,?_30
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  379 	queuebuf_init( );
          CFI FunCall queuebuf_init
        BL       queuebuf_init
//  380 	process_start(&tcpip_process, NULL);
        MOVS     R1,#+0
        LDR.N    R0,??DataTable43_16
          CFI FunCall process_start
        BL       process_start
//  381 	//init_app( );
//  382 	process_exit(&user_ip_start);
        LDR.N    R0,??DataTable43_17
          CFI FunCall process_exit
        BL       process_exit
//  383 	PROCESS_END( );
??process_thread_user_ip_start_0:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock9
//  384 }
//  385 
//  386 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function main
        THUMB
//  387 int main(void)
//  388 {
main:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  389 	u_short uwRandrom = 0;;
//  390 	sysInit();
          CFI FunCall sysInit
        BL       sysInit
//  391 
//  392 	uwRandrom = get_random_seed( );
          CFI FunCall get_random_seed
        BL       get_random_seed
        MOV      R4,R0
//  393 	XPRINTF((0, "randdomseed = %d \r\n", uwRandrom));
        MOV      R2,R4
        ADR.W    R1,?_31
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  394 	random_init( uwRandrom );
        MOV      R0,R4
          CFI FunCall random_init
        BL       random_init
//  395 	//random_init( 100 );
//  396 	
//  397 	process_start(&blink_process,NULL);
        LDR.N    R4,??DataTable43_18
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall process_start
        BL       process_start
//  398 	process_start(&feeddog_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+16
          CFI FunCall process_start
        BL       process_start
//  399 
//  400 	process_start(&user_ip_start, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+32
          CFI FunCall process_start
        BL       process_start
//  401 
//  402 	//grps
//  403 	sim900a_init( );
          CFI FunCall sim900a_init
        BL       sim900a_init
//  404 	//rf
//  405 	fireAppInit( );
          CFI FunCall fireAppInit
        BL       fireAppInit
//  406 
//  407 	initAppKey( );
          CFI FunCall initAppKey
        BL       initAppKey
//  408 	//net
//  409 	app_enc28j60_init( );
          CFI FunCall app_enc28j60_init
        BL       app_enc28j60_init
//  410 	app485Init( );
          CFI FunCall app485Init
        BL       app485Init
//  411 	mp3init( );
          CFI FunCall mp3init
        BL       mp3init
//  412 	XPRINTF((0,"Processes running\r\n"));
        ADR.W    R1,?_32
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  413 	while(1) 
//  414 	{
//  415 		#if 1
//  416 		do 
//  417 		{
//  418 		}while(process_run() > 0);
??main_0:
          CFI FunCall process_run
        BL       process_run
        B.N      ??main_0
          CFI EndBlock cfiBlock10
//  419 		#else
//  420 		#endif
//  421 	}
//  422 	return 0;
//  423 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43:
        DC8      "%s\n"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_1:
        DC32     ??et

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_2:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_3:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_4:
        DC32     ??et_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_5:
        DC32     ds6_neighbors

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_6:
        DC32     uip_ds6_if

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_7:
        DC32     xfunc_out

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_8:
        DC32     dbg_send_char

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_9:
        DC32     serial_line_input_byte

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_10:
        DC32     etimer_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_11:
        DC32     stRfParamCfg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_12:
        DC32     linkaddr_node_addr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_13:
        DC32     uip_lladdr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_14:
        DC32     unicast_receiver_root

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_15:
        DC32     receiver_node_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_16:
        DC32     tcpip_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_17:
        DC32     blink_process+0x20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable43_18:
        DC32     blink_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "LED\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "feeddog\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 "clock s is %d\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_6:
        DC8 "Nadd"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_8:
        DC8 "Neighbors\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_9:
        DC8 20H, 25H, 30H, 32H, 78H, 25H, 30H, 32H
        DC8 78H, 3AH, 25H, 30H, 32H, 78H, 25H, 30H
        DC8 32H, 78H, 3AH, 25H, 30H, 32H, 78H, 25H
        DC8 30H, 32H, 78H, 3AH, 25H, 30H, 32H, 78H
        DC8 25H, 30H, 32H, 78H, 3AH, 25H, 30H, 32H
        DC8 78H, 25H, 30H, 32H, 78H, 3AH, 25H, 30H
        DC8 32H, 78H, 25H, 30H, 32H, 78H, 3AH, 25H
        DC8 30H, 32H, 78H, 25H, 30H, 32H, 78H, 3AH
        DC8 25H, 30H, 32H, 78H, 25H, 30H, 32H, 78H
        DC8 20H, 0
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_11:
        DC8 " - %u\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_12:
        DC8 "Neighbors is %d\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_13:
        DC8 "Routing table\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_14:
        DC8 "Routing num is %d\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_16:
        DC8 " 1-%02x"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_18:
        DC8 " 3-%08lx"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_19:
        DC8 " 4-%02x [%u]"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_20:
        DC8 " m %02x%02x%02x%02x%02x%02x%02x%02x\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_21:
        DC8 "Default Route\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_22:
        DC8 "Unicast Addresses\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_23:
        DC8 "Initialising\015\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_24:
        DC8 "set addr success\015\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_26:
        DC8 "1 center node\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_27:
        DC8 "2 leaf node\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_28:
        DC8 "user_ip\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_29:
        DC8 "start tcp\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_30:
        DC8 "net finish\015\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_31:
        DC8 "randdomseed = %d \015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_32:
        DC8 "Processes running\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
node_link_addr:
        DC8 170, 170, 170, 170, 170, 170, 0, 0

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
        DC8 "Blink"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "feeddog"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_2:
        DC8 "user_ip"

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_7:
        DC8 "\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_10:
        DC8 " - "

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_15:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_17:
        DC8 " 2-"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_25:
        DC8 "%s\012"

        END
//  424 
//  425 
//  426 
// 
//    40 bytes in section .bss
//    60 bytes in section .data
//    54 bytes in section .rodata
// 2 456 bytes in section .text
// 
// 2 456 bytes of CODE  memory
//    54 bytes of CONST memory
//   100 bytes of DATA  memory
//
//Errors: none
//Warnings: 21
