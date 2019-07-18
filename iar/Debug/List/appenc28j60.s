///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:27
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\appenc28j60\appenc28j60.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\appenc28j60\appenc28j60.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\appenc28j60.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_WriteBit
        EXTERN SPI_Config
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN checkPhoneNum
        EXTERN clock_seconds
        EXTERN etimer_set
        EXTERN etimer_stop
        EXTERN extgdbdevGetDeviceSettingInfoSt
        EXTERN extgdbdevSetDeviceSettingInfoSt
        EXTERN fillNotNetNodeInfo
        EXTERN gprsCodeGetOut0xla
        EXTERN gprsProtocolCheck
        EXTERN gprsProtocolFrameFill
        EXTERN ip64_addr_4to6
        EXTERN ip64_init
        EXTERN process_alloc_event
        EXTERN process_post
        EXTERN process_start
        EXTERN rpl_dag_root_init_dag
        EXTERN sim900_event_start_sms_phone
        EXTERN sim900a_app_process
        EXTERN simple_udp_register
        EXTERN simple_udp_send
        EXTERN uip_ds6_notification_add

        PUBLIC appUpdateNetMode
        PUBLIC app_enc28j60_init
        PUBLIC closeGprs
        PUBLIC event_ip_heart
        PUBLIC event_ip_msg
        PUBLIC event_ip_send_data
        PUBLIC event_ip_tran
        PUBLIC event_ip_warn
        PUBLIC ipDataHandler
        PUBLIC ipProtocolRxProcess
        PUBLIC ipSendFireMacSync
        PUBLIC ip_data_process
        PUBLIC ip_receive_process
        PUBLIC netModeGet
        PUBLIC netModeSet
        PUBLIC openGprs
        PUBLIC serverHostIp4Addr
        PUBLIC stip4Addr
        PUBLIC stip4MaskAddr
        PUBLIC udp_testdata
        
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
        

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "ip_receive"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "ip_data"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_4:
        DC8 "<-w"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_8:
        DC8 0, 0, 0, 0, 0, 0, 0, 0
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\appenc28j60\appenc28j60.c
//    1 #include "contiki.h"
//    2 
//    3 #include "contiki.h"
//    4 #include "lib/random.h"
//    5 #include "sys/ctimer.h"
//    6 #include "sys/etimer.h"
//    7 #include "net/ip/uip.h"
//    8 #include "net/ipv6/uip-ds6.h"
//    9 
//   10 #include "net/ip/simple-udp.h"
//   11 
//   12 #include "net/rpl/rpl.h"
//   13 
//   14 #include <stdio.h>
//   15 #include <string.h>
//   16 
//   17 #include "sysprintf.h"
//   18 
//   19 
//   20 #include "basictype.h"
//   21 #include "iodef.h"
//   22 #include "ip/uip.h"
//   23 #include "sim900a.h"
//   24 #include "gprsProtocol.h"
//   25 #include "dev_info.h"
//   26 #include "hwgg.h"
//   27 #include "app485.h"
//   28 
//   29 #define UDP_PORT_C	4567
//   30 //#define UDP_PORT_C	4570
//   31 
//   32 
//   33 PROCESS_NAME(sim900a_app_process);
//   34 extern process_event_t sim900_event_start_sms_phone;
//   35 
//   36 

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//   37 const uip_ip4addr_t stip4Addr={192,168,4,212};
stip4Addr:
        DC8 192, 168, 4, 212

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//   38 const uip_ip4addr_t stip4MaskAddr={192,168,4,1};
stip4MaskAddr:
        DC8 192, 168, 4, 1
//   39 
//   40 //mark mark
//   41 //remote server ip addr
//   42 const uip_ip4addr_t serverHostIp4Addr={119,29,155,148};//正式
//   43 //const uip_ip4addr_t serverHostIp4Addr={119,29,224,28};//调试
//   44 //const u_char serverIp[]="119.29.224.28";
//   45 //const uip_ip4addr_t serverHostIp4Addr={192,168,3,6};
//   46 //remote server ip port
//   47 static const u_short serverHostPort = UDP_PORT_C;
//   48 
//   49 extern uip_lladdr_t uip_lladdr;
//   50 
//   51 static struct simple_udp_connection udp_connection;
//   52 
//   53 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   54 static SIM900A_MSG stEncRxMsg;
stEncRxMsg:
        DS8 1364
//   55 static SIM900A_MSG stEncTxMsg;
//   56 static SIM900A_MSG stEncTxMsgTran;
//   57 volatile static NET_MODE stnetMode={NET_CONNECT_NONE, 0};
//   58 process_event_t event_ip_msg;
//   59 process_event_t event_ip_heart;
//   60 process_event_t event_ip_send_data;
//   61 process_event_t event_ip_warn;
//   62 process_event_t event_ip_tran;
//   63 
//   64 #define IP_NOT_NET_WAIT_TIME	120		//second
//   65 
//   66 
//   67 
//   68 
//   69 /*---------------------------------------------------------------------------*/
//   70 PROCESS(ip_receive_process, "ip_receive");
//   71 PROCESS(ip_data_process, "ip_data");
//   72 
//   73 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function netModeSet
          CFI NoCalls
        THUMB
//   74 void netModeSet(u_char mode)
//   75 {
//   76 	//if (mode == NET_CONNECT_ETH || mode == NET_CONNECT_NONE || mode == NET_CONNECT_SIM900)
//   77 	stnetMode.netMode = mode;
netModeSet:
        LDR.W    R1,??DataTable26
        STRB     R0,[R1, #+8]
//   78 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   79 
//   80 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function netModeGet
          CFI NoCalls
        THUMB
//   81 NET_MODE *netModeGet(void)
//   82 {
//   83 	return (NET_MODE*)&stnetMode;
netModeGet:
        LDR.W    R0,??DataTable26_1
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   84 }
//   85 
//   86 
//   87 static void updateNetMode(u_char mode)
//   88 {
//   89 	netModeSet(mode);
//   90 	stnetMode.lastRxTime = clock_seconds( );
//   91 }
//   92 
//   93 static void checkNetMode(void)
//   94 {
//   95 	//not update time
//   96 	if ((stnetMode.lastRxTime + IP_NOT_NET_WAIT_TIME) < clock_seconds( ))
//   97 	{
//   98 		updateNetMode(NET_CONNECT_NONE);
//   99 	}
//  100 }
//  101 
//  102 
//  103 
//  104 static void appSaveIpData(u_char *pdataBuf, const uint8_t *data, u_short dataLen)
//  105 {
//  106 	if (pdataBuf != NULL)
//  107 	{
//  108 		SIM900A_MSG *pMSG = (SIM900A_MSG *)pdataBuf;
//  109 		pMSG->nLen = dataLen;
//  110 		memcpy(pMSG->ubamsg, data, dataLen);
//  111 		process_post(&ip_data_process, event_ip_msg, pdataBuf);
//  112 		updateNetMode(NET_CONNECT_ETH);
//  113 	}
//  114 }
//  115 
//  116 
//  117 
//  118 
//  119 
//  120 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function receiver
        THUMB
//  121 static void receiver(struct simple_udp_connection *c,
//  122          const uip_ipaddr_t *sender_addr,
//  123          uint16_t sender_port,
//  124          const uip_ipaddr_t *receiver_addr,
//  125          uint16_t receiver_port,
//  126          const uint8_t *data,
//  127          uint16_t datalen)
//  128 {
receiver:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOV      R5,R2
//  129 	XPRINTF((10,"Data received from "));
        ADR.W    R1,?_2
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDR      R4,[SP, #+32]
//  130 	XPRINTF((10," on port %d from port %d with length %d: \n",receiver_port, sender_port, datalen));
        LDR      R2,[SP, #+24]
        ADR.W    R1,?_3
        STR      R4,[SP, #+0]
        MOV      R3,R5
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDR      R5,[SP, #+28]
//  131 	MEM_DUMP(10 , "<-w", data, datalen);
        MOV      R3,R4
        MOV      R2,R5
        ADR.N    R1,??DataTable22  ;; "<-w"
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  132 	appSaveIpData((u_char *)&stEncRxMsg, data, datalen);
        LDR.W    R6,??DataTable26_2
        MOV      R2,R4
        STR      R4,[R6, #+0]
        MOV      R1,R5
        ADDS     R0,R6,#+4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDR.W    R4,??DataTable26
        LDRB     R1,[R4, #+0]
        MOV      R2,R6
        ADD      R0,R4,#+1432
          CFI FunCall process_post
        BL       process_post
        MOVS     R0,#+2
        STRB     R0,[R4, #+8]
          CFI FunCall clock_seconds
        BL       clock_seconds
        STR      R0,[R4, #+12]
//  133 }
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock2
//  134 
//  135 /*---------------------------------------------------------------------------*/
//  136 static uint8_t should_blink = 1;

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function route_callback
          CFI NoCalls
        THUMB
//  137 static void route_callback(int event, uip_ipaddr_t *route, uip_ipaddr_t *ipaddr, int num_routes)
//  138 {
//  139   if(event == UIP_DS6_NOTIFICATION_DEFRT_ADD) {
//  140     should_blink = 0;
//  141   } else if(event == UIP_DS6_NOTIFICATION_DEFRT_RM) {
//  142     should_blink = 1;
//  143   }
//  144 }
route_callback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  145 

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//  146 const u_char udp_testdata[]={0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x55,0x33,0x89};
udp_testdata:
        DC8 17, 18, 19, 20, 21, 22, 23, 85, 51, 137, 0, 0
//  147 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function process_thread_ip_receive_process
        THUMB
//  148 PROCESS_THREAD(ip_receive_process, ev, data)
//  149 {
process_thread_ip_receive_process:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        SUB      SP,SP,#+8
          CFI CFA R13+24
//  150   static struct etimer et;
//  151   static uip_ip6addr_t serverHostIp6Addr;
//  152   static struct uip_ds6_notification n;
//  153 
//  154 
//  155   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_ip_receive_process_0
        CMP      R0,#+162
        BEQ.N    ??process_thread_ip_receive_process_1
        B.N      ??process_thread_ip_receive_process_2
//  156   ip64_addr_4to6(&serverHostIp4Addr, &serverHostIp6Addr);
??process_thread_ip_receive_process_0:
        LDR.W    R5,??DataTable26
        ADR.W    R0,serverHostIp4Addr
        ADD      R6,R5,#+1448
        MOV      R1,R6
          CFI FunCall ip64_addr_4to6
        BL       ip64_addr_4to6
//  157   uip_ds6_notification_add(&n, route_callback);
        LDR.W    R1,??DataTable26_3
        ADD      R0,R5,#+1464
          CFI FunCall uip_ds6_notification_add
        BL       uip_ds6_notification_add
//  158   simple_udp_register(&udp_connection, 2000, &serverHostIp6Addr, UDP_PORT_C, receiver);
        LDR.W    R0,??DataTable26_4
        STR      R0,[SP, #+0]
        MOVW     R3,#+4567
        MOV      R2,R6
        MOV      R1,#+2000
        ADDW     R0,R5,#+1380
          CFI FunCall simple_udp_register
        BL       simple_udp_register
//  159 
//  160  // etimer_set(&et, CLOCK_SECOND*120);
//  161   while(1) {
//  162     PROCESS_YIELD( );
??process_thread_ip_receive_process_1:
        MOVS     R0,#+162
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R1,R2,R4-R6,PC}
//  163     //etimer_set(&et, 30*CLOCK_SECOND);
//  164     //PROCESS_WAIT_UNTIL(etimer_expired(&et));
//  165     //simple_udp_send(&udp_connection, udp_testdata, sizeof(udp_testdata));
//  166     /*
//  167     if (ev == tcpip_event)
//  168     {
//  169     	if(uip_newdata())
//  170     	{
//  171 			MEM_DUMP(6 , "<-w", uip_appdata, uip_datalen());
//  172 		}
//  173     }
//  174     */
//  175   }
//  176   PROCESS_END();
??process_thread_ip_receive_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R2,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock4
//  177 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
event_ip_msg:
        DATA
        DC8 0
event_ip_heart:
        DC8 0
event_ip_send_data:
        DC8 0
event_ip_warn:
        DC8 0
event_ip_tran:
        DC8 0
        DC8 0, 0, 0
        DC8 0, 0, 0, 0
        DC32 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
ip_receive_process:
        DC32 0H, ?_0, process_thread_ip_receive_process
        DC8 0, 0, 0, 0
ip_data_process:
        DC32 0H, ?_1, process_thread_ip_data_process
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
        DC8 1
//  178 
//  179 
//  180 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function closeGprs
          CFI NoCalls
        THUMB
//  181 void closeGprs(void)
//  182 {
//  183 
//  184 }
closeGprs:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  185 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function openGprs
          CFI NoCalls
        THUMB
//  186 void openGprs(void)
//  187 {
//  188 	
//  189 }
openGprs:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  190 
//  191 
//  192 #define IP_HEART_TIME  (30*CLOCK_SECOND)
//  193 #define IP_ACK_WAIT_TIME (10*CLOCK_SECOND)
//  194 
//  195 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ipSendFireMacSync
        THUMB
//  196 void ipSendFireMacSync(u_char macSync, u_char uwSeq)
//  197 {
ipSendFireMacSync:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOV      R4,R0
        SUB      SP,SP,#+12
          CFI CFA R13+24
        MOV      R5,R1
//  198 	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
//  199 	NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
//  200 	int nFramL = -1;
//  201 	SIM900A_MSG *ptxMsg = &stEncTxMsg;
//  202 	
//  203 	if (macSync)
        CBNZ.N   R4,??ipSendFireMacSync_0
//  204 	{
//  205 		return;
//  206 	}
//  207 	else
//  208 	{
//  209 		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_REQUST_SYNC, uwSeq, paddrInfo->ubaNodeAddr, NULL, 0);
        MOVS     R1,#+0
        STR      R1,[SP, #+4]
        STR      R1,[SP, #+0]
        MOV      R3,R0
        LDR.W    R4,??DataTable26
        MOV      R2,R5
        MOVS     R1,#+6
        ADD      R0,R4,#+20
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
//  210 
//  211 		if (nFramL > 0)
        CMP      R0,#+1
        BLT.N    ??ipSendFireMacSync_0
//  212 		{
//  213 			ptxMsg->nLen = nFramL;
        STR      R0,[R4, #+16]
//  214 			process_post(&ip_data_process, event_ip_send_data,ptxMsg);
        ADD      R2,R4,#+16
        LDRB     R1,[R4, #+2]
        ADD      R0,R4,#+1432
        ADD      SP,SP,#+12
          CFI CFA R13+12
        POP      {R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall process_post
        B.W      process_post
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  215 		}		
//  216 	}
//  217 }
??ipSendFireMacSync_0:
        ADD      SP,SP,#+12
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock7
//  218 
//  219 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function ipProtocolRxProcess
        THUMB
//  220 void ipProtocolRxProcess(u_char *ptxBuf, const u_char *pcFrame, u_short uwSendSeq , struct etimer *petwait)
//  221 {
ipProtocolRxProcess:
        PUSH     {R2-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+40
        MOV      R4,R0
        MOV      R5,R1
        MOV      R8,R2
        MOV      R6,R3
//  222 	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
//  223 	const GPRS_PROTOCOL * pGprs = (const GPRS_PROTOCOL *)pcFrame;
//  224 	u_short uwSeq = pGprs->ubSeqL | (pGprs->ubSeqH << 8);
        LDRB     R0,[R5, #+3]
        LDRB     R1,[R5, #+4]
        ORR      R9,R0,R1, LSL #+8
//  225 	u_short uwLen = pGprs->ubDataLenL | (pGprs->ubDataLenH<<8);
        LDRB     R0,[R5, #+5]
        LDRB     R1,[R5, #+6]
        ORR      R7,R0,R1, LSL #+8
//  226 	static GPRS_WARN_PHONE stWarnPhone;
//  227 	static u_char macSync = 0;
//  228 	
//  229 
//  230 	/*we have fire mac addr, not need to sync fire mac addr first time
//  231     dev power up
//  232 	*/
//  233 
//  234 
//  235 	if (pGprs->ubCmd == GPRS_F_CMD_ACK)
        LDRB     R0,[R5, #+2]
        CMP      R0,#+153
        BNE.N    ??ipProtocolRxProcess_0
//  236 	{
//  237 		if (uwSendSeq == uwSeq)
        CMP      R8,R9
        BNE.N    ??ipProtocolRxProcess_1
//  238 		{
//  239 			etimer_stop(petwait);
        MOV      R0,R6
          CFI FunCall etimer_stop
        BL       etimer_stop
//  240 			ipSendFireMacSync(macSync, uwSeq);
        UXTB     R1,R9
        POP      {R2-R10,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.W    R0,??DataTable26_5
        LDRB     R0,[R0, #+0]
          CFI FunCall ipSendFireMacSync
        B.N      ipSendFireMacSync
          CFI R4 Frame(CFA, -32)
          CFI R5 Frame(CFA, -28)
          CFI R6 Frame(CFA, -24)
          CFI R7 Frame(CFA, -20)
          CFI R8 Frame(CFA, -16)
          CFI R9 Frame(CFA, -12)
          CFI R10 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
//  241 		}
//  242 	}
//  243 	else if (pGprs->ubCmd == GPRS_F_CMD_DATA_SYNC)
??ipProtocolRxProcess_0:
        CMP      R0,#+3
        BNE.N    ??ipProtocolRxProcess_2
//  244 	{
//  245 
//  246 		SIM900A_MSG *ptxMsg = (SIM900A_MSG *)ptxBuf;
//  247 		static FIRE_NODE_INFO stFireNode;
//  248 		const FIRE_NODE_INFO *pFireNodeInfo; 
//  249 		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
//  250 		int nFramL = -1;
//  251 
//  252 
//  253 		//now we sync fire mac addr
//  254 		if (macSync == 0)
        LDR.W    R6,??DataTable26_5
        MOV      R8,R0
        LDRB     R0,[R6, #+0]
        CBNZ.N   R0,??ipProtocolRxProcess_3
//  255 		{
//  256 			macSync = 1;
        MOVS     R0,#+1
        STRB     R0,[R6, #+0]
//  257 		}
//  258 		
//  259 		memset(&stFireNode, 0, sizeof(FIRE_NODE_INFO));
??ipProtocolRxProcess_3:
        MOVW     R10,#+802
        MOV      R1,R10
        ADDS     R0,R6,#+4
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  260 		if (uwLen > GPRS_F_MAC_LEN)
        CMP      R7,#+5
        BLT.N    ??ipProtocolRxProcess_4
//  261 		{
//  262 			pFireNodeInfo = (const FIRE_NODE_INFO *)pGprs->ubaData;
        ADD      R0,R5,#+11
//  263 			if (pFireNodeInfo->node_num > 0)
        LDRH     R1,[R0, #+0]
        CBZ.N    R1,??ipProtocolRxProcess_4
//  264 			{
//  265 				stFireNode.node_num = pFireNodeInfo->node_num;
        STRH     R1,[R6, #+4]
//  266 				memcpy(stFireNode.nodeArray, pFireNodeInfo->nodeArray, stFireNode.node_num*4);
        LSLS     R2,R1,#+2
        ADDS     R1,R0,#+2
        ADDS     R0,R6,#+6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  267 				extgdbdevSetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO, 0, (const void *)&stFireNode, sizeof(FIRE_NODE_INFO));
        MOV      R3,R10
        ADDS     R2,R6,#+4
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall extgdbdevSetDeviceSettingInfoSt
        BL       extgdbdevSetDeviceSettingInfoSt
//  268 			}
//  269 		}
//  270 		
//  271 		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_ACK, uwSeq, paddrInfo->ubaNodeAddr, NULL, 0);
??ipProtocolRxProcess_4:
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+0]
        MOV      R3,R8
        MOV      R2,R9
        MOVS     R1,#+153
        ADDS     R0,R4,#+4
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
//  272 
//  273 		if (nFramL > 0)
        CMP      R0,#+1
        BLT.N    ??ipProtocolRxProcess_1
//  274 		{
//  275 			ptxMsg->nLen = nFramL;
        STR      R0,[R4, #+0]
//  276 			process_post(&ip_data_process, event_ip_send_data,ptxMsg);
        MOV      R2,R4
        LDR.N    R0,??DataTable26
        LDRB     R1,[R0, #+2]
        ADD      R0,R0,#+1432
        B.N      ??ipProtocolRxProcess_5
//  277 		}
//  278 	}
//  279 	else if (pGprs->ubCmd == GPRS_F_CMD_WARN_ACK)
??ipProtocolRxProcess_2:
        CMP      R0,#+5
        BNE.N    ??ipProtocolRxProcess_1
//  280 	{
//  281 
//  282 		if (uwSendSeq == uwSeq)
        CMP      R8,R9
        ITT      EQ 
        MOVEQ    R0,R6
        BLEQ     etimer_stop
//  283 		{
//  284 			etimer_stop(petwait);
//  285 		}
//  286 		//clean warn phohe data
//  287 		memset(&stWarnPhone, 0, sizeof(GPRS_WARN_PHONE));
        LDR.N    R0,??DataTable26_5
        ADD      R4,R0,#+808
        MOVS     R1,#+40
        MOV      R0,R4
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  288 		if (uwLen-GPRS_F_MAC_LEN == 40)
        SUBS     R0,R7,#+4
        CMP      R0,#+40
        BNE.N    ??ipProtocolRxProcess_1
//  289 		{
//  290 			NET_MODE *pnetMode = (NET_MODE*)netModeGet( );
//  291 			memcpy(&stWarnPhone, pGprs->ubaData, 40);
        MOVS     R2,#+40
        ADD      R1,R5,#+11
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  292 			if (pnetMode->netMode == NET_CONNECT_ETH)
        LDR.N    R0,??DataTable26
        LDRB     R0,[R0, #+8]
        CMP      R0,#+2
        BNE.N    ??ipProtocolRxProcess_1
//  293 			{
//  294 				if (checkPhoneNum((const GPRS_WARN_PHONE*) &stWarnPhone))
        MOV      R0,R4
          CFI FunCall checkPhoneNum
        BL       checkPhoneNum
        CBZ.N    R0,??ipProtocolRxProcess_1
//  295 				{
//  296 					process_post(&sim900a_app_process, sim900_event_start_sms_phone, &stWarnPhone);
        LDR.N    R0,??DataTable26_6
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable26_7
        MOV      R2,R4
??ipProtocolRxProcess_5:
        ADD      SP,SP,#+8
          CFI CFA R13+32
        POP      {R4-R10,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall process_post
        B.W      process_post
          CFI R4 Frame(CFA, -32)
          CFI R5 Frame(CFA, -28)
          CFI R6 Frame(CFA, -24)
          CFI R7 Frame(CFA, -20)
          CFI R8 Frame(CFA, -16)
          CFI R9 Frame(CFA, -12)
          CFI R10 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
//  297 				}
//  298 			}
//  299 		}
//  300 	}
//  301 }
??ipProtocolRxProcess_1:
        POP      {R0,R1,R4-R10,PC}  ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC8      "<-w"
//  302 
//  303 
//  304 #define ETH_NO_ACK_MAX		2
//  305 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function ipDataHandler
        THUMB
//  306 void ipDataHandler(process_event_t ev, process_data_t data)
//  307 {
ipDataHandler:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
//  308 	static struct etimer et_ip_heart;
//  309 	static struct etimer et_ip_ack_wait;
//  310 	static u_short uwipSeq = 0;
//  311 	static u_short uwCurrentSeq = 0;
//  312 	static FIRE_NODE_INFO stFireNodeInfo;
//  313 	static u_char ubaFireWarnBuf[32] = {0x00};
//  314 	static u_char ubNoAckCount = 0;
//  315 
//  316 
//  317 	//receive packet from server
//  318 	if (ev == event_ip_msg && data != NULL)
        LDR.N    R4,??DataTable26
        MOV      R6,R1
        LDRB     R1,[R4, #+0]
        CMP      R0,R1
        SUB      SP,SP,#+20
          CFI CFA R13+40
        BNE.N    ??ipDataHandler_0
        CMP      R6,#+0
        BEQ.N    ??ipDataHandler_1
//  319 	{
//  320 		SIM900A_MSG * pMsg = (SIM900A_MSG *)data;
//  321 		ubNoAckCount = 0;
        LDR.N    R5,??DataTable26_8
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
//  322 		if (gprsProtocolCheck((const u_char *) pMsg->ubamsg))
        ADDS     R0,R6,#+4
          CFI FunCall gprsProtocolCheck
        BL       gprsProtocolCheck
        CMP      R0,#+0
        BEQ.W    ??ipDataHandler_2
//  323 		{
//  324 			const GPRS_PROTOCOL * pGprs = (const GPRS_PROTOCOL *)pMsg->ubamsg;
//  325 			u_short uwSeq = pGprs->ubSeqL | (pGprs->ubSeqH << 8);
//  326 			u_short uwLen = pGprs->ubDataLenL | (pGprs->ubDataLenH<<8);
//  327 
//  328 			MEM_DUMP(7, "<-ip", pMsg->ubamsg, pMsg->nLen);
        LDR      R3,[R6, #+0]
        ADR.W    R1,?_5
        ADDS     R2,R6,#+4
        MOVS     R0,#+7
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  329 			ipProtocolRxProcess((u_char *)&stEncTxMsg,(const u_char *) pMsg->ubamsg, uwCurrentSeq, &et_ip_ack_wait);
        LDRH     R2,[R5, #+4]
        ADD      R3,R5,#+2192
        ADDS     R1,R6,#+4
        ADD      R0,R4,#+16
          CFI FunCall ipProtocolRxProcess
        BL       ipProtocolRxProcess
//  330 			if (stnetMode.netMode != NET_CONNECT_ETH)
        LDRB     R0,[R4, #+8]
        CMP      R0,#+2
        BEQ.W    ??ipDataHandler_2
//  331 			{
//  332 				netModeSet(NET_CONNECT_ETH);
        MOVS     R0,#+2
        STRB     R0,[R4, #+8]
//  333 			}
//  334 		}	
//  335 
//  336 
//  337 	}
//  338 	else if (ev == event_ip_send_data && data != NULL)
//  339 	{
//  340 		SIM900A_MSG * pMsg = (SIM900A_MSG *)data;
//  341 		if (pMsg->nLen > 0)
//  342 		{
//  343 			int nFrameL = 0;
//  344 			nFrameL = gprsCodeGetOut0xla(stEncTxMsgTran.ubamsg, (const u_char*)pMsg->ubamsg, pMsg->nLen);
//  345 			
//  346 			//simple_udp_send(&udp_connection, pMsg->ubamsg, pMsg->nLen);
//  347 			simple_udp_send(&udp_connection, stEncTxMsgTran.ubamsg, nFrameL);
//  348 			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
//  349 			MEM_DUMP(7, "IP->",  stEncTxMsgTran.ubamsg, nFrameL);
//  350 		}
//  351 	}
//  352 	//heart packet
//  353 	else if (ev == event_ip_heart && data == NULL)
//  354 	{
//  355 		etimer_set(&et_ip_heart, IP_HEART_TIME);
//  356 		XPRINTF((12, "IPHeart\n"));
//  357 	}
//  358 	//fire warn
//  359 	else if (ev == event_ip_warn && data != NULL)
//  360 	{
//  361 		SIM900A_MSG *ptxMsg = &stEncTxMsg;
//  362 		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
//  363 		u_char ubaWarn[5] = 0;
//  364 		int nFramL = -1;
//  365 		const FIRE_NODE * pFireNode = (const FIRE_NODE *)data;
//  366 		
//  367 		if (((u_long)ubaFireWarnBuf)!=((u_long)data))
//  368 		{
//  369 			//MEM_DUMP(7, "IPWA", data, pFireNode->ubLen);
//  370 			memcpy(ubaFireWarnBuf, data, pFireNode->ubLen);
//  371 		}
//  372 		memcpy(ubaWarn, pFireNode->ubaSrcMac, HWGG_NODE_MAC_LEN);
//  373 		ubaWarn[4] = pFireNode->ubCmd;
//  374 		uwipSeq++;
//  375 		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_WARN, uwipSeq, paddrInfo->ubaNodeAddr, ubaWarn, 5);
//  376 		if (nFramL > 0 )
//  377 		{
//  378 			ptxMsg->nLen = nFramL;
//  379 			uwCurrentSeq = uwipSeq;
//  380 			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
//  381 			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
//  382 		}
//  383 		//ALARM_LED(0);
//  384 		FAULT_LED(0);
//  385 		BUZZER(0);
//  386 	}
//  387 	else if (ev == event_ip_tran && data != NULL)
//  388 	{
//  389 		SIM900A_MSG *ptxMsg = &stEncTxMsg;
//  390 		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
//  391 		int nFramL = -1;
//  392 		const APP_485_DATA *p485 = (const APP_485_DATA *)data;
//  393 		MEM_DUMP(7, "TRAN", p485->ubaData, p485->ubLen);
//  394 
//  395 		uwipSeq++;
//  396 		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_TRAN, uwipSeq, paddrInfo->ubaNodeAddr,(const u_char *)p485->ubaData, p485->ubLen);
//  397 		if (nFramL > 0 )
//  398 		{
//  399 			ptxMsg->nLen = nFramL;
//  400 			uwCurrentSeq = uwipSeq;
//  401 			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
//  402 			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
//  403 		}
//  404 		
//  405 	}
//  406 	else if (ev == PROCESS_EVENT_TIMER && data == &et_ip_heart)
//  407 	{
//  408 		SIM900A_MSG *ptxMsg = &stEncTxMsg;
//  409 		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
//  410 		int nFramL = -1;
//  411 		fillNotNetNodeInfo(&stFireNodeInfo);
//  412 		if (stFireNodeInfo.node_num > 0)
//  413 		{
//  414 			nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_HEART, uwipSeq, paddrInfo->ubaNodeAddr, (const u_char *)&stFireNodeInfo, stFireNodeInfo.node_num*4+2);
//  415 		}
//  416 		else
//  417 		{
//  418 			nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_HEART, uwipSeq, paddrInfo->ubaNodeAddr, NULL, 0);
//  419 		}
//  420 		if (nFramL > 0)
//  421 		{
//  422 			ptxMsg->nLen = nFramL;
//  423 			uwCurrentSeq = uwipSeq;
//  424 			process_post(&ip_data_process, event_ip_send_data,ptxMsg);
//  425 			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
//  426 			uwipSeq++; // every send a ip frame, uwipSeq + 1;
//  427 		}
//  428 		
//  429 		etimer_set(&et_ip_heart, IP_HEART_TIME);
//  430 
//  431 		//checkNetMode( );
//  432 	}
//  433 	else if (ev == PROCESS_EVENT_TIMER && data == &et_ip_ack_wait)
//  434 	{
//  435 		XPRINTF((12, "IP ACK TIME OUT\n"));
//  436 		if (ubNoAckCount >= ETH_NO_ACK_MAX)
//  437 		{
//  438 			if (stnetMode.netMode == NET_CONNECT_ETH)
//  439 			{
//  440 				XPRINTF((10, "-----------------------------set mode\n"));
//  441 				netModeSet(NET_CONNECT_NONE);
//  442 			}
//  443 			ubNoAckCount = 0;
//  444 		}
//  445 		ubNoAckCount++;
//  446 	}
//  447 }
        ADD      SP,SP,#+20
          CFI CFA R13+20
        POP      {R4-R7,PC}
          CFI CFA R13+40
??ipDataHandler_0:
        LDRB     R1,[R4, #+2]
        CMP      R0,R1
        BNE.N    ??ipDataHandler_1
        CBZ.N    R6,??ipDataHandler_1
        LDR      R2,[R6, #+0]
        CMP      R2,#+1
        BLT.W    ??ipDataHandler_2
        LDR.N    R5,??DataTable26_8
        ADD      R7,R5,#+816
        ADDS     R1,R6,#+4
        MOV      R0,R7
          CFI FunCall gprsCodeGetOut0xla
        BL       gprsCodeGetOut0xla
        MOV      R6,R0
        UXTH     R2,R6
        MOV      R1,R7
        ADDW     R0,R4,#+1380
          CFI FunCall simple_udp_send
        BL       simple_udp_send
        MOVW     R1,#+10000
        ADD      R0,R5,#+2192
          CFI FunCall etimer_set
        BL       etimer_set
        MOV      R3,R6
        MOV      R2,R7
        ADR.W    R1,?_6
        MOVS     R0,#+7
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        ADD      SP,SP,#+20
          CFI CFA R13+20
        POP      {R4-R7,PC}
          CFI CFA R13+40
??ipDataHandler_1:
        LDRB     R1,[R4, #+1]
        CMP      R0,R1
        IT       EQ 
        CMPEQ    R6,#+0
        BNE.N    ??ipDataHandler_3
        MOVW     R1,#+30000
        LDR.N    R0,??DataTable26_9
          CFI FunCall etimer_set
        BL       etimer_set
        ADR.W    R1,?_7
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADD      SP,SP,#+20
          CFI CFA R13+20
        POP      {R4-R7,PC}
          CFI CFA R13+40
??ipDataHandler_3:
        LDRB     R1,[R4, #+3]
        CMP      R0,R1
        BNE.N    ??ipDataHandler_4
        CMP      R6,#+0
        BEQ.N    ??ipDataHandler_5
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R7,R0
        ADD      R0,SP,#+8
        MOVS     R1,#+0
        MOVS     R2,#+0
        STM      R0!,{R1,R2}
        LDR.N    R5,??DataTable26_8
        ADD      R0,R5,#+2208
        CMP      R0,R6
        BEQ.N    ??ipDataHandler_6
        LDRB     R2,[R6, #+0]
        MOV      R1,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
??ipDataHandler_6:
        MOVS     R2,#+4
        ADDS     R1,R6,#+1
        ADD      R0,SP,#+8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRB     R0,[R6, #+9]
        STRB     R0,[SP, #+12]
        MOV      R3,R7
        LDRH     R0,[R5, #+2]
        ADDS     R2,R0,#+1
        MOVS     R0,#+5
        STR      R0,[SP, #+4]
        STRH     R2,[R5, #+2]
        ADD      R0,SP,#+8
        STR      R0,[SP, #+0]
        UXTH     R2,R2
        MOVS     R1,#+2
        ADD      R0,R4,#+20
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
        CMP      R0,#+1
        BLT.N    ??ipDataHandler_7
        STR      R0,[R4, #+16]
        ADD      R2,R4,#+16
        LDRH     R0,[R5, #+2]
        LDRB     R1,[R4, #+2]
        STRH     R0,[R5, #+4]
        ADD      R0,R4,#+1432
          CFI FunCall process_post
        BL       process_post
        MOVW     R1,#+10000
        ADD      R0,R5,#+2192
          CFI FunCall etimer_set
        BL       etimer_set
??ipDataHandler_7:
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable26_10  ;; 0x40010c00
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        LDR.N    R0,??DataTable26_11  ;; 0x40011000
        MOVS     R2,#+0
        MOVS     R1,#+32
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
        ADD      SP,SP,#+20
          CFI CFA R13+20
        POP      {R4-R7,PC}
          CFI CFA R13+40
??ipDataHandler_4:
        LDRB     R1,[R4, #+4]
        CMP      R0,R1
        BNE.N    ??ipDataHandler_5
        CBZ.N    R6,??ipDataHandler_5
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R7,R0
        LDRB     R3,[R6, #+0]
        ADR.W    R1,?_9
        ADDS     R2,R6,#+1
        MOVS     R0,#+7
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        LDR.N    R5,??DataTable26_8
        LDRH     R0,[R5, #+2]
        ADDS     R2,R0,#+1
        STRH     R2,[R5, #+2]
        MOV      R3,R7
        LDRB     R0,[R6, #+0]
        STR      R0,[SP, #+4]
        UXTH     R2,R2
        ADDS     R0,R6,#+1
        STR      R0,[SP, #+0]
        MOVS     R1,#+4
        ADD      R0,R4,#+20
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
        CMP      R0,#+1
        BLT.N    ??ipDataHandler_2
        STR      R0,[R4, #+16]
        ADD      R2,R4,#+16
        LDRH     R0,[R5, #+2]
        LDRB     R1,[R4, #+2]
        STRH     R0,[R5, #+4]
        ADD      R0,R4,#+1432
          CFI FunCall process_post
        BL       process_post
        MOVW     R1,#+10000
        ADD      R0,R5,#+2192
        B.N      ??ipDataHandler_8
??ipDataHandler_5:
        CMP      R0,#+136
        BNE.N    ??ipDataHandler_2
        LDR.N    R5,??DataTable26_8
        ADD      R7,R5,#+2176
        CMP      R6,R7
        BNE.N    ??ipDataHandler_9
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R6,R0
        ADD      R0,R5,#+8
          CFI FunCall fillNotNetNodeInfo
        BL       fillNotNetNodeInfo
        LDRH     R2,[R5, #+2]
        LDRH     R0,[R5, #+8]
        CBZ.N    R0,??ipDataHandler_10
        LSLS     R0,R0,#+2
        ADDS     R0,R0,#+2
        UXTH     R0,R0
        STR      R0,[SP, #+4]
        ADD      R0,R5,#+8
        B.N      ??ipDataHandler_11
??ipDataHandler_10:
        STR      R0,[SP, #+4]
??ipDataHandler_11:
        STR      R0,[SP, #+0]
        MOV      R3,R6
        MOVS     R1,#+1
        ADD      R0,R4,#+20
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
        CMP      R0,#+1
        BLT.N    ??ipDataHandler_12
        STR      R0,[R4, #+16]
        ADD      R2,R4,#+16
        LDRH     R0,[R5, #+2]
        LDRB     R1,[R4, #+2]
        STRH     R0,[R5, #+4]
        ADD      R0,R4,#+1432
          CFI FunCall process_post
        BL       process_post
        MOVW     R1,#+10000
        ADD      R0,R5,#+2192
          CFI FunCall etimer_set
        BL       etimer_set
        LDRH     R0,[R5, #+2]
        ADDS     R0,R0,#+1
        STRH     R0,[R5, #+2]
??ipDataHandler_12:
        MOVW     R1,#+30000
        MOV      R0,R7
??ipDataHandler_8:
          CFI FunCall etimer_set
        BL       etimer_set
        ADD      SP,SP,#+20
          CFI CFA R13+20
        POP      {R4-R7,PC}
          CFI CFA R13+40
??ipDataHandler_9:
        ADD      R0,R5,#+2192
        CMP      R6,R0
        BNE.N    ??ipDataHandler_2
        ADR.W    R1,?_10
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDRB     R0,[R5, #+0]
        CMP      R0,#+2
        BLT.N    ??ipDataHandler_13
        LDRB     R0,[R4, #+8]
        CMP      R0,#+2
        BNE.N    ??ipDataHandler_14
        ADR.W    R1,?_11
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R0,#+0
        STRB     R0,[R4, #+8]
??ipDataHandler_14:
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
??ipDataHandler_13:
        LDRB     R0,[R5, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+0]
??ipDataHandler_2:
        ADD      SP,SP,#+20
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock9

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??ubNoAckCount:
        DS8 1
        DS8 1
        DS8 2
        DS8 2
        DS8 2
        DS8 804
        DS8 1364
        DS8 16
        DS8 16
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??macSync:
        DS8 1
        DS8 3
        DS8 804
        DS8 40
//  448 
//  449 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function process_thread_ip_data_process
        THUMB
//  450 PROCESS_THREAD(ip_data_process, ev, data)
//  451 {
process_thread_ip_data_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R0,R1
        MOV      R1,R2
//  452   PROCESS_BEGIN();
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_ip_data_process_0
        MOVW     R3,#+461
        CMP      R2,R3
        BEQ.N    ??process_thread_ip_data_process_1
        B.N      ??process_thread_ip_data_process_2
//  453   event_ip_msg = process_alloc_event( );
??process_thread_ip_data_process_0:
        LDR.N    R5,??DataTable26
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R5, #+0]
//  454   event_ip_heart = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R5, #+1]
//  455   event_ip_send_data = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R5, #+2]
//  456   event_ip_warn = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R5, #+3]
//  457   event_ip_tran = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R5, #+4]
//  458   XPRINTF((12, "ip_data_process\n"));
        MOVS     R0,#+12
        ADR.W    R1,?_12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  459   
//  460   while(1) {
//  461     PROCESS_YIELD( );
??process_thread_ip_data_process_3:
        MOVW     R0,#+461
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
//  462     ipDataHandler(ev, data);
??process_thread_ip_data_process_1:
          CFI FunCall ipDataHandler
        BL       ipDataHandler
        B.N      ??process_thread_ip_data_process_3
//  463   }
//  464   PROCESS_END();
??process_thread_ip_data_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock10
//  465 }
//  466 
//  467 
//  468 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function appUpdateNetMode
        THUMB
//  469 void  appUpdateNetMode(void)
//  470 {
appUpdateNetMode:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  471 	updateNetMode(NET_CONNECT_ETH);
        LDR.N    R4,??DataTable26
        MOVS     R0,#+2
        STRB     R0,[R4, #+8]
          CFI FunCall clock_seconds
        BL       clock_seconds
        STR      R0,[R4, #+12]
//  472 	//process_post(&ip_data_process, event_ip_heart, NULL);
//  473 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock11
//  474 
//  475 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function app_enc28j60_init
        THUMB
//  476 void app_enc28j60_init(void)
//  477 {
app_enc28j60_init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  478 	SPI_Config( );
          CFI FunCall SPI_Config
        BL       SPI_Config
//  479 	rpl_dag_root_init_dag();
          CFI FunCall rpl_dag_root_init_dag
        BL       rpl_dag_root_init_dag
//  480 	//ip64_set_ipv4_address(&stip4Addr, &stip4MaskAddr);
//  481 	//dhcpc_init(uip_lladdr.addr, sizeof(uip_lladdr.addr));
//  482   	/* Initialize the IP64 module so we'll start translating packets */
//  483 	ip64_init();
          CFI FunCall ip64_init
        BL       ip64_init
//  484 
//  485 	process_start(&ip_receive_process, NULL);
        LDR.N    R4,??DataTable26
        MOVS     R1,#+0
        ADD      R0,R4,#+1416
          CFI FunCall process_start
        BL       process_start
//  486 	process_start(&ip_data_process, NULL);
        ADD      R5,R4,#+1432
        MOVS     R1,#+0
        MOV      R0,R5
          CFI FunCall process_start
        BL       process_start
//  487 
//  488 	process_post(&ip_data_process, event_ip_heart, NULL);
        LDRB     R1,[R4, #+1]
        MOV      R0,R5
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R2,#+0
          CFI FunCall process_post
        B.W      process_post
          CFI EndBlock cfiBlock12
//  489 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     event_ip_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     event_ip_msg+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_2:
        DC32     stEncRxMsg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_3:
        DC32     route_callback

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_4:
        DC32     receiver

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_5:
        DC32     ??macSync

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_6:
        DC32     sim900_event_start_sms_phone

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_7:
        DC32     sim900a_app_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_8:
        DC32     ??ubNoAckCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_9:
        DC32     ??ubNoAckCount+0x880

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_10:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_11:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "Data received from "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 " on port %d from port %d with length %d: \012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 "<-ip"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_6:
        DC8 "IP->"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_7:
        DC8 "IPHeart\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_9:
        DC8 "TRAN"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_10:
        DC8 "IP ACK TIME OUT\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_11:
        DC8 "-----------------------------set mode\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_12:
        DC8 "ip_data_process\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
serverHostIp4Addr:
        DC8 119, 29, 155, 148

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  490 
// 
// 4 452 bytes in section .bss
// 1 473 bytes in section .data
//    52 bytes in section .rodata
// 1 536 bytes in section .text
// 
// 1 536 bytes of CODE  memory
//    52 bytes of CONST memory
// 5 925 bytes of DATA  memory
//
//Errors: none
//Warnings: 16
