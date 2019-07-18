///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:25
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\grps\sim900a.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\grps\sim900a.c -D
//        USE_STDPERIPH_DRIVER -D STM32F10X_HD -D __ICCARM__ -lC
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\sim900a.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_PinRemapConfig
        EXTERN GPIO_WriteBit
        EXTERN Uart_GprsSetInput
        EXTERN __aeabi_memclr
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memcpy4
        EXTERN __iar_Strstr
        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN ctimer_set
        EXTERN endNodeListHead
        EXTERN endNodeListNext
        EXTERN etimer_expired
        EXTERN etimer_set
        EXTERN etimer_stop
        EXTERN extgdbdevGetDeviceSettingInfoSt
        EXTERN extgdbdevSetDeviceSettingInfoSt
        EXTERN gprsCodeGetOut0xla
        EXTERN gprsDecodeFrame
        EXTERN gprsProtocolCheck
        EXTERN gprsProtocolFindHead
        EXTERN gprsProtocolFrameFill
        EXTERN mem_cmp
        EXTERN mp3fillCmdNoParam
        EXTERN mp3fillCmdOneByteParam
        EXTERN netModeGet
        EXTERN netModeSet
        EXTERN process_alloc_event
        EXTERN process_exit
        EXTERN process_poll
        EXTERN process_post
        EXTERN process_start
        EXTERN ringbuf_get
        EXTERN ringbuf_init
        EXTERN ringbuf_put
        EXTERN strlen
        EXTERN swEnable
        EXTERN uart4_send_bytes
        EXTERN uart4_send_char
        EXTERN uart5_send_bytes
        EXTERN xprintf
        EXTERN xsprintf

        PUBLIC asiicToUTF8
        PUBLIC checkPhoneNum
        PUBLIC fillNotNetNodeInfo
        PUBLIC getNetState
        PUBLIC gfireClean
        PUBLIC gprsProtocolRxProcess
        PUBLIC gprsSendFireMacSync
        PUBLIC gprsSmsPhoneHandler
        PUBLIC gprs_cfg
        PUBLIC gprs_cfg_resp
        PUBLIC gprs_check
        PUBLIC gprs_check_resp
        PUBLIC gprs_process
        PUBLIC gprs_resp_process
        PUBLIC gprs_sms_phone_process
        PUBLIC gprs_uart_init
        PUBLIC gprs_uart_input_byte
        PUBLIC modetbl
        PUBLIC nodeSync
        PUBLIC routermac
        PUBLIC serverIp
        PUBLIC serverPort
        PUBLIC setNetState
        PUBLIC sim900_event_fire_tran
        PUBLIC sim900_event_fire_warn
        PUBLIC sim900_event_heart
        PUBLIC sim900_event_resp
        PUBLIC sim900_event_send_cmd
        PUBLIC sim900_event_send_data
        PUBLIC sim900_event_send_data_wait
        PUBLIC sim900_event_send_sms
        PUBLIC sim900_event_send_sms_phone
        PUBLIC sim900_event_send_sms_wait
        PUBLIC sim900_event_start_sms_phone
        PUBLIC sim900a_app_handler
        PUBLIC sim900a_app_process
        PUBLIC sim900a_cfggprs_process
        PUBLIC sim900a_check_cmd
        PUBLIC sim900a_check_process
        PUBLIC sim900a_chr2hex
        PUBLIC sim900a_clear_rx
        PUBLIC sim900a_handler
        PUBLIC sim900a_hard_init
        PUBLIC sim900a_hex2chr
        PUBLIC sim900a_init
        PUBLIC sim900a_reconnect
        PUBLIC sim900a_send_cmd
        PUBLIC sim900a_send_cmd_num
        PUBLIC sim900a_send_cmd_wait_ack
        PUBLIC sim900a_send_handler
        PUBLIC sim900a_send_process
        PUBLIC sim900a_tcpudp_con_process
        PUBLIC sim900a_tcpudp_connect
        PUBLIC sim900a_update_rx
        PUBLIC sim_at_response
        PUBLIC smsCenterPrex
        PUBLIC smsDestCodeLen
        PUBLIC smsDestPrex
        PUBLIC smsPnoneByteReverse
        PUBLIC testGprsAck
        PUBLIC testGprsSmsPhone
        PUBLIC testGprsSync
        PUBLIC testNodeInfo
        PUBLIC warnMsg
        
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
?_2:
        DC8 "sim900a_hard_init"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_3:
        DC8 "sim900a_check"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_4:
        DC8 "sim900a_cfggprs"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_5:
        DC8 "sim900a_tcpcon"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_6:
        DC8 "sim900a_app"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_7:
        DC8 "sim900a_send"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_8:
        DC8 "sim900a_resp"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_9:
        DC8 "sim900a_sms_phone"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "TCP"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "UDP"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_10:
        DC8 "AT"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_14:
        DC8 "OK"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_21:
        DC8 "AT+CLPORT=\"TCP\",\"2000\""
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_22:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_23:
        DC8 "%s\012"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_55:
        DC8 "OUT"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_64:
        DC8 "ATH"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_67:
        DC8 "\015\012>"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_69:
        DC8 "SRC"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_70:
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_79:
        DC8 ">"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_114:
        DC8 "+86"
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\grps\sim900a.c
//    1 #include "contiki.h"
//    2 #include "xprintf.h"
//    3 #include "basictype.h"
//    4 #include "sim900a.h"
//    5 #include "iodef.h"
//    6 #include "string.h"
//    7 #include "lib/ringbuf.h"
//    8 #include "sysprintf.h"
//    9 #include "gprsProtocol.h"
//   10 #include "hwgg.h"
//   11 #include "dev_info.h"
//   12 #include "app485.h"
//   13 
//   14 
//   15 
//   16 PROCESS(sim900a_hard_init, "sim900a_hard_init");
//   17 PROCESS(sim900a_check_process, "sim900a_check");
//   18 PROCESS(sim900a_cfggprs_process, "sim900a_cfggprs");
//   19 PROCESS(sim900a_tcpudp_con_process, "sim900a_tcpcon");
//   20 PROCESS(sim900a_app_process, "sim900a_app");
//   21 PROCESS(sim900a_send_process, "sim900a_send");
//   22 PROCESS(gprs_resp_process, "sim900a_resp");
//   23 
//   24 PROCESS(gprs_sms_phone_process, "sim900a_sms_phone");
//   25 
//   26 
//   27 
//   28 //receive data from sim900a
//   29 process_event_t sim900_event_resp;
//   30 process_event_t	sim900_event_send_data;
//   31 process_event_t sim900_event_send_data_wait;
//   32 process_event_t	sim900_event_send_cmd;
//   33 process_event_t	sim900_event_heart;
//   34 process_event_t sim900_event_fire_warn;
//   35 
//   36 process_event_t sim900_event_start_sms_phone;
//   37 process_event_t sim900_event_send_sms_phone;
//   38 process_event_t sim900_event_send_sms;
//   39 process_event_t sim900_event_send_sms_wait;
//   40 
//   41 process_event_t sim900_event_fire_tran;
//   42 
//   43 
//   44 #define TIME_CHECK_GPRS_AT		100
//   45 #define TIME_CLOSE_GPRS_ECHO	200
//   46 #define TIME_CHECK_GPRS_SIM		200
//   47 static struct etimer et_gprs;
//   48 //static struct etimer et_gprs_status;
//   49 //static struct etimer et_gprs_heart_periodic;
//   50 static u_short uwSeq = 0;
//   51 
//   52 static SIM900A_MSG sim900_rx;
//   53 static SIM900A_MSG sim900_tx;
//   54 static SIM900A_MSG sim900_tx_tran;
//   55 static SIM900A_MSG sim900_app;
//   56 //mark mark
//   57 const u_char serverIp[]="119.29.155.148";//正式
//   58 const u_char serverPort[]="4567";
//   59 //const u_char serverIp[]="119.29.224.28";//调试
//   60 //const u_char serverPort[]="4567";
//   61 
//   62 //const u_char serverPort[]="8960";
//   63 //const u_char serverPort[]="4570";
//   64 //static u_char dataSrcFlag = SIM900A_DATA_NONE;
//   65 static enum GPRS_STATE gprsState = SIM900A_ERROR;
//   66 static u_char ubNetState = 0;
//   67 

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
//   68 const u_char routermac[GPRS_F_MAC_LEN]={0x12,0x21,0x33,0x44};
routermac:
        DC8 18, 33, 51, 68
//   69 
//   70 static u_char ubCount = 0;
//   71 
//   72 struct process *gprs_process = NULL;
//   73 
//   74 ///////////////////////////////////////////////////////////////////////////////////////////////////////////
//   75 const u_char  *modetbl[2]={"TCP","UDP"};//连接模式
//   76 
//   77 
//   78 //发生火灾报警
//   79 //\u53d1\u751f\u706b\u707e\u62a5\u8b66
//   80 //const u_char warnMsg[] = {0x53,0xd1,0x75,0x1f,0x70,0x6b,0x70,0x7e,0x62,0xa5,0x8b,0x66};
//   81 const u_char warnMsg[] = "53d1751f706b707e62a58b66";
//   82 
//   83 
//   84 static u_char smsCenterPhone[32]={0x00};
//   85 const u_char smsCenterPrex[] = "089168";	//
//   86 const u_char smsDestPrex[] = "11000D9168";
//   87 const u_char smsDestCodeLen[] = "0008AA0C";  //data length fix 发生火灾报警 12 bytes
//   88 
//   89 
//   90 
//   91 
//   92 static volatile u_char ubWaitAckCount = 0;  //count no ack from sever, when this num > 6,reconnect server
//   93 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function getNetState
          CFI NoCalls
        THUMB
//   94 u_char getNetState(void)
//   95 {
//   96 	return ubNetState;
getNetState:
        LDR.W    R0,??DataTable137_1
        LDRB     R0,[R0, #+11]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   97 }
//   98 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function setNetState
          CFI NoCalls
        THUMB
//   99 void setNetState(u_char ubState)
//  100 {
//  101 	ubNetState = ubState;
setNetState:
        LDR.W    R1,??DataTable137_1
        STRB     R0,[R1, #+11]
//  102 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  103 
//  104 
//  105 
//  106 /**
//  107  *
//  108  * @param presp pointer response data from gprs
//  109  * @return none
//  110  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function sim_at_response
          CFI FunCall xprintf
        THUMB
//  111 void sim_at_response(const char * presp)
//  112 {
//  113 	xprintf(presp);
sim_at_response:
        B.W      xprintf
          CFI EndBlock cfiBlock2
//  114 }
//  115 
//  116 
//  117 /**
//  118  *
//  119  * @param pcTarget The pointer to target string
//  120  * @param pcFindStr The pointer to the find str
//  121  * @return if the  pcFindStr string  is a substring of the pcTarget string
//  122  * return the addr the pcFindStr first position,else return null
//  123  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function sim900a_check_cmd
          CFI FunCall __iar_Strstr
        THUMB
//  124 u_char* sim900a_check_cmd(const char *pcTarget, const char* pcFindStr)
//  125 {
//  126 	char *strx = NULL;
//  127 	strx = (char *)strstr(pcTarget,pcFindStr);
//  128 	return (u_char*)strx;
sim900a_check_cmd:
        B.W      __iar_Strstr
          CFI EndBlock cfiBlock3
//  129 }
//  130 
//  131 
//  132 
//  133 /**
//  134  *
//  135  * @param  cmd send num to gprs
//  136  * @return
//  137  * note this function need to check grps ack in app layer
//  138  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function sim900a_send_cmd_num
        THUMB
//  139 u_char sim900a_send_cmd_num(u_char cmd)
//  140 {
sim900a_send_cmd_num:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  141 	uart4_send_char(cmd);
          CFI FunCall uart4_send_char
        BL       uart4_send_char
//  142 	return 0;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock4
//  143 }
//  144 
//  145 /**
//  146  *
//  147  * @param  cmd cmd str to gprs, not add '\r\n'
//  148  * @return
//  149  * note this function need to check grps ack in app layer
//  150  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function sim900a_send_cmd
        THUMB
//  151 u_char sim900a_send_cmd(const u_char *cmd)
//  152 {
sim900a_send_cmd:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+64
          CFI CFA R13+72
        MOV      R4,R0
//  153 	 u_char ubaBuf[64] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+64
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  154 	xsprintf(ubaBuf, "%s\n", cmd);
        MOV      R2,R4
        ADR.N    R1,??DataTable133  ;; "%s\n"
        ADD      R0,SP,#+0
          CFI FunCall xsprintf
        BL       xsprintf
//  155 	MEM_DUMP(9, "->cm", ubaBuf, strlen(ubaBuf));
        ADD      R0,SP,#+0
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        ADD      R2,SP,#+0
        LDR.W    R1,??DataTable138
        MOVS     R0,#+9
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  156 	//xfprintf(uart4_send_char, "%s\n", cmd);
//  157 	uart4_send_bytes(ubaBuf, strlen(ubaBuf));
        ADD      R0,SP,#+0
          CFI FunCall strlen
        BL       strlen
        MOV      R1,R0
        ADD      R0,SP,#+0
          CFI FunCall uart4_send_bytes
        BL       uart4_send_bytes
//  158 	return 0;
        MOVS     R0,#+0
        ADD      SP,SP,#+64
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  159 }
//  160 
//  161 //136 -7888 -1212 {31 76 88 18 12}
//  162 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function smsPnoneByteReverse
        THUMB
//  163 void smsPnoneByteReverse(u_char *psmsNum, const u_char * pcsmsNum)
//  164 {
smsPnoneByteReverse:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  165 	int smsLen = strlen(pcsmsNum);
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
//  166 	int i = 0;
        MOVS     R1,#+0
//  167 
//  168 	if (smsLen < 10)
        CMP      R0,#+10
        BLT.N    ??smsPnoneByteReverse_0
//  169 	{
//  170 		return;
//  171 	}
//  172 
//  173 	for (i = 0; i < smsLen; i++)
//  174 	{
//  175 		if (i%2 == 0)
??smsPnoneByteReverse_1:
        ADD      R2,R1,R1, LSR #+31
        ASRS     R2,R2,#+1
        SUBS     R2,R1,R2, LSL #+1
        BNE.N    ??smsPnoneByteReverse_2
//  176 		{
//  177 			psmsNum[i] = pcsmsNum[i+1];
        ADDS     R2,R1,R5
//  178 			psmsNum[i+1] = pcsmsNum[i];
        ADDS     R3,R1,R4
        LDRB     R2,[R2, #+1]
        STRB     R2,[R1, R4]
        LDRB     R2,[R1, R5]
        STRB     R2,[R3, #+1]
//  179 		}
//  180 	}
??smsPnoneByteReverse_2:
        ADDS     R1,R1,#+1
        CMP      R1,R0
        BLT.N    ??smsPnoneByteReverse_1
//  181 	
//  182 	psmsNum[smsLen-1]= 'F';
        ADDS     R2,R0,R4
        MOVS     R1,#+70
        STRB     R1,[R2, #-1]
//  183 	psmsNum[smsLen]= pcsmsNum[smsLen-1];
//  184 
//  185 	XPRINTF((8, "SMS=%s\n", psmsNum));
        MOV      R2,R4
        ADDS     R1,R0,R5
        LDRB     R1,[R1, #-1]
        STRB     R1,[R0, R4]
        MOVS     R0,#+8
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R1,?_25
          CFI FunCall __xstd_printf
        B.W      __xstd_printf
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
??smsPnoneByteReverse_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6
//  186 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_25:
        DC8 "SMS=%s\012"
//  187 
//  188 /**
//  189  *
//  190  * @param  chr char
//  191  * @return hex value of the chr if vilad,else return 0
//  192  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function sim900a_chr2hex
          CFI NoCalls
        THUMB
//  193 u_char sim900a_chr2hex(u_char chr)
//  194 {
//  195 	if(chr>='0'&&chr<='9')
sim900a_chr2hex:
        SUB      R2,R0,#+48
        CMP      R2,#+10
        IT       CC 
        SUBCC    R0,R0,#+48
//  196 		return chr-'0';
        BCC.N    ??sim900a_chr2hex_0
//  197 	if(chr>='A'&&chr<='F')
        SUB      R2,R0,#+65
        CMP      R2,#+6
        IT       CC 
        SUBCC    R0,R0,#+55
//  198 		return (chr-'A'+10);
        BCC.N    ??sim900a_chr2hex_0
//  199 	if(chr>='a'&&chr<='f')
        SUB      R1,R0,#+97
        CMP      R1,#+6
        BCS.N    ??sim900a_chr2hex_1
//  200 		return (chr-'a'+10);
        SUBS     R0,R0,#+87
??sim900a_chr2hex_0:
        UXTB     R0,R0
        BX       LR
//  201 	return 0;
??sim900a_chr2hex_1:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  202 }
//  203 
//  204 
//  205 //将1个16进制数字转换为字符
//  206 //hex:16进制数字,0~15;
//  207 //返回值:字符

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function sim900a_hex2chr
          CFI NoCalls
        THUMB
//  208 u_char sim900a_hex2chr(u_char hex)
//  209 {
//  210 	if(hex<=9)
sim900a_hex2chr:
        CMP      R0,#+10
        IT       LT 
        ADDLT    R0,R0,#+48
//  211 		return hex+'0';
        BLT.N    ??sim900a_hex2chr_0
//  212 	if(hex>=10&&hex<=15)
        SUB      R1,R0,#+10
        CMP      R1,#+6
        BCS.N    ??sim900a_hex2chr_1
//  213 		return (hex-10+'A');
        ADDS     R0,R0,#+55
??sim900a_hex2chr_0:
        UXTB     R0,R0
        BX       LR
//  214 	return '0';
??sim900a_hex2chr_1:
        MOVS     R0,#+48
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  215 }
//  216 
//  217 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function sim900a_tcpudp_connect
        THUMB
//  218 void sim900a_tcpudp_connect(u_char *pbuf,u_char mode,u_char *ipaddr, u_char *port)
//  219 {
sim900a_tcpudp_connect:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+8
          CFI CFA R13+16
        MOV      R4,R0
//  220 	xsprintf((char*)pbuf,"AT+CIPSTART=\"%s\",\"%s\",\"%s\"",modetbl[mode],ipaddr,port);
        STR      R3,[SP, #+0]
        MOV      R3,R2
        LDR.W    R0,??DataTable137_1
        ADD      R0,R0,R1, LSL #+2
        LDR.W    R1,??DataTable139
        LDR      R2,[R0, #+24]
        MOV      R0,R4
          CFI FunCall xsprintf
        BL       xsprintf
//  221 	sim900a_send_cmd(pbuf);
        MOV      R0,R4
        POP      {R1,R2,R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall sim900a_send_cmd
        B.N      sim900a_send_cmd
          CFI EndBlock cfiBlock9
//  222 }
//  223 
//  224 
//  225 
//  226 
//  227 
//  228 
//  229 
//  230 //app layer
//  231 /******************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function process_thread_sim900a_hard_init
        THUMB
//  232 PROCESS_THREAD(sim900a_hard_init, ev, data)
//  233 {
process_thread_sim900a_hard_init:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//  234 	PROCESS_BEGIN( );
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_sim900a_hard_init_0
        CMP      R0,#+244
        BEQ.N    ??process_thread_sim900a_hard_init_1
        CMP      R0,#+249
        BEQ.N    ??process_thread_sim900a_hard_init_2
        B.N      ??process_thread_sim900a_hard_init_3
//  235 	//gprs init
//  236 	//RST
//  237 	GPIO_PinRemapConfig(GPIO_Remap_SWJ_Disable,ENABLE);
??process_thread_sim900a_hard_init_0:
        MOVS     R1,#+1
        LDR.W    R0,??DataTable139_1  ;; 0x300400
          CFI FunCall GPIO_PinRemapConfig
        BL       GPIO_PinRemapConfig
//  238 	XPRINTF((12, "sim900a_hard_init\r\n"));
        ADR.W    R1,?_27
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  239 //	GPRS_SRST(0);
//  240 //	GPRS_STATUS(0);
//  241 //	GPRS_PWRKEY(0);
//  242 	GPRS_CON(1);
        MOVS     R2,#+1
        MOVS     R1,#+2
        LDR.W    R0,??DataTable139_2  ;; 0x40010800
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  243 	etimer_set(&et_gprs, 5000);
        LDR.W    R0,??DataTable139_3
        MOVW     R1,#+5000
          CFI FunCall etimer_set
        BL       etimer_set
//  244 	PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_gprs));
        MOVS     R0,#+244
        B.N      ??process_thread_sim900a_hard_init_4
??process_thread_sim900a_hard_init_1:
        LDR.W    R5,??DataTable137_1
        ADDS     R5,R5,#+164
        MOV      R0,R5
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??process_thread_sim900a_hard_init_5
//  245 	GPRS_CON(0);
        LDR.W    R6,??DataTable139_2  ;; 0x40010800
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOV      R0,R6
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  246 	GPRS_EN(0);
        MOVS     R2,#+0
        MOVS     R1,#+32
        LDR.W    R0,??DataTable139_4  ;; 0x40010c00
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  247 	GPRS_ENOLD(0);
        MOVS     R2,#+0
        MOV      R1,#+32768
        MOV      R0,R6
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  248 	etimer_set(&et_gprs, 5000);
        MOVW     R1,#+5000
        MOV      R0,R5
          CFI FunCall etimer_set
        BL       etimer_set
//  249 	PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_gprs));
        MOVS     R0,#+249
??process_thread_sim900a_hard_init_4:
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_sim900a_hard_init_5
??process_thread_sim900a_hard_init_2:
        LDR.W    R5,??DataTable137_1
        ADD      R0,R5,#+164
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_hard_init_6
??process_thread_sim900a_hard_init_5:
        MOVS     R0,#+1
        POP      {R4-R6,PC}
//  250 
//  251 	XPRINTF((12, "sim900a_hard_init2\r\n"));
??process_thread_sim900a_hard_init_6:
        ADR.W    R6,?_28
        MOV      R1,R6
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  252 	process_start(&sim900a_check_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R5,#+52
          CFI FunCall process_start
        BL       process_start
//  253 
//  254 	
//  255 //	GPRS_STATUS(1);
//  256 //	GPRS_PWRKEY(1);
//  257 	GPRS_EN(1);
        MOVS     R2,#+1
        MOVS     R1,#+32
        LDR.W    R0,??DataTable139_4  ;; 0x40010c00
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  258 	GPRS_ENOLD(1);
        LDR.W    R0,??DataTable139_2  ;; 0x40010800
        MOVS     R2,#+1
        MOV      R1,#+32768
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//  259 	XPRINTF((12, "sim900a_hard_init2\r\n"));
        MOV      R1,R6
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  260 	GPIO_PinRemapConfig(GPIO_Remap_SWJ_Disable,DISABLE);
        MOVS     R1,#+0
        LDR.W    R0,??DataTable139_1  ;; 0x300400
          CFI FunCall GPIO_PinRemapConfig
        BL       GPIO_PinRemapConfig
//  261 	//process_start(&sim900a_check_process, NULL);
//  262 
//  263 	PROCESS_END( );
??process_thread_sim900a_hard_init_3:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock10
//  264 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_27:
        DC8 "sim900a_hard_init\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_28:
        DC8 "sim900a_hard_init2\015\012"
        DC8 0, 0, 0
//  265 
//  266 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function sim900a_send_cmd_wait_ack
        THUMB
//  267 void sim900a_send_cmd_wait_ack(const u_char *cmd, struct etimer *pet, clock_time_t waitTime)
//  268 {
sim900a_send_cmd_wait_ack:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R1
        MOV      R5,R2
//  269 	sim900a_send_cmd(cmd);
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  270 	if (waitTime > 0 && pet != NULL)
        CMP      R5,#+0
        IT       NE 
        CMPNE    R4,#+0
        BEQ.N    ??sim900a_send_cmd_wait_ack_0
//  271 	{
//  272 		etimer_set(pet, waitTime);
        MOV      R1,R5
        MOV      R0,R4
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
//  273 	}
//  274 }
??sim900a_send_cmd_wait_ack_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock11
//  275 
//  276 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function sim900a_handler
        THUMB
//  277 void sim900a_handler(process_event_t ev, process_data_t data)
//  278 {
sim900a_handler:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R6,R0
        MOV      R4,R1
//  279 	static u_char ubCheckCount = 0;
//  280 	static u_char ubSim900aState = SIM900A_CHECK_AT; //init sim900a state
//  281 
//  282 	if (ev == PROCESS_EVENT_TIMER && data == &et_gprs)
        LDR.W    R5,??DataTable137_1
        CMP      R6,#+136
        ITT      EQ 
        ADDEQ    R7,R5,#+164
        CMPEQ    R4,R7
        BNE.N    ??sim900a_handler_0
//  283 	{
//  284 		//
//  285 		if (ubSim900aState == SIM900A_CHECK_AT)
        LDRB     R0,[R5, #+15]
        CBNZ.N   R0,??sim900a_handler_1
//  286 		{
//  287 			sim900a_send_cmd_wait_ack("AT", &et_gprs,TIME_CHECK_GPRS_AT);
        ADR.N    R0,??DataTable134  ;; 0x41, 0x54, 0x00, 0x00
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVS     R1,#+100
        MOV      R0,R7
          CFI FunCall etimer_set
        BL       etimer_set
//  288 			ubCheckCount++;
        LDRB     R0,[R5, #+14]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+14]
//  289 			if (ubCheckCount == 10)//restart grps moduel
        B.N      ??sim900a_handler_0
//  290 			{
//  291 				//process_exit(&sim900a_rev_process);
//  292 				//process_start(sim900a_process, NULL);
//  293 			}
//  294 		}
//  295 		//
//  296 		else if (ubSim900aState == SIM900A_CLOSE_ECHO)
??sim900a_handler_1:
        CMP      R0,#+1
        BNE.N    ??sim900a_handler_0
//  297 		{
//  298 			sim900a_send_cmd_wait_ack("ATE0", &et_gprs,TIME_CLOSE_GPRS_ECHO);
        ADR.W    R0,?_11
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVS     R1,#+200
        MOV      R0,R7
          CFI FunCall etimer_set
        BL       etimer_set
//  299 		}
//  300 
//  301 		//
//  302 		else if (ubSim900aState == SIM900A_CHECK_SIM)
//  303 		{
//  304 
//  305 		}
//  306 
//  307 	}
//  308 
//  309 	//data
//  310 	if (ev == sim900_event_resp && data != NULL)
??sim900a_handler_0:
        LDRB     R0,[R5, #+0]
        CMP      R6,R0
        BNE.N    ??sim900a_handler_2
        CBZ.N    R4,??sim900a_handler_2
//  311 	{
//  312 		//开机启动后，发送AT指令同步波特率，同时检查模块
//  313 		if (ubSim900aState == SIM900A_CHECK_AT)
        LDRB     R0,[R5, #+15]
        CBNZ.N   R0,??sim900a_handler_3
//  314 		{
//  315 			u_char *presp = NULL;
//  316 			presp = sim900a_check_cmd((const char*)data,"OK");
//  317 
//  318 			if (presp == NULL)//continue
        ADD      R7,R5,#+164
        ADR.N    R1,??DataTable134_1  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R4
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBNZ.N   R0,??sim900a_handler_4
//  319 			{
//  320 				sim900a_send_cmd_wait_ack("AT", &et_gprs,TIME_CHECK_GPRS_AT);
        ADR.N    R0,??DataTable134  ;; 0x41, 0x54, 0x00, 0x00
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVS     R1,#+100
        B.N      ??sim900a_handler_5
//  321 			}
//  322 			else //gprs model normal
//  323 			{
//  324 				//关闭回显
//  325 				etimer_stop(&et_gprs);
??sim900a_handler_4:
        MOV      R0,R7
          CFI FunCall etimer_stop
        BL       etimer_stop
//  326 				ubCheckCount = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+14]
//  327 				ubSim900aState = SIM900A_CLOSE_ECHO;
        MOVS     R0,#+1
        STRB     R0,[R5, #+15]
//  328 				sim900a_send_cmd_wait_ack("ATE0", &et_gprs,TIME_CLOSE_GPRS_ECHO);
        ADR.W    R0,?_11
        B.N      ??sim900a_handler_6
//  329 			}
//  330 		}
//  331 
//  332 		//完成AT指令检查后，关闭回显
//  333 		else if (ubSim900aState == TIME_CLOSE_GPRS_ECHO)
??sim900a_handler_3:
        CMP      R0,#+200
        BNE.N    ??sim900a_handler_2
//  334 		{
//  335 			u_char *presp = NULL;
//  336 			presp = sim900a_check_cmd((const char*)data,"OK");
//  337 
//  338 			if (presp == NULL)//continue
        ADD      R7,R5,#+164
        ADR.N    R1,??DataTable134_1  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R4
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBNZ.N   R0,??sim900a_handler_7
//  339 			{
//  340 				sim900a_send_cmd_wait_ack("ATE0", &et_gprs,TIME_CLOSE_GPRS_ECHO);
        ADR.W    R0,?_11
        B.N      ??sim900a_handler_6
//  341 			}
//  342 			else //关闭成功
//  343 			{
//  344 				//检查SIM卡是否在
//  345 				etimer_stop(&et_gprs);
??sim900a_handler_7:
        MOV      R0,R7
          CFI FunCall etimer_stop
        BL       etimer_stop
//  346 				ubSim900aState = SIM900A_CHECK_SIM;
        MOVS     R0,#+2
        STRB     R0,[R5, #+15]
//  347 				sim900a_send_cmd_wait_ack("AT+CPIN?", &et_gprs,TIME_CHECK_GPRS_SIM);
        ADR.W    R0,?_12
??sim900a_handler_6:
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVS     R1,#+200
??sim900a_handler_5:
        MOV      R0,R7
        POP      {R2,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall etimer_set
        B.W      etimer_set
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  348 			}
//  349 		}
//  350 
//  351 		//检查SIM卡
//  352 		else if (ubSim900aState == TIME_CHECK_GPRS_SIM)
//  353 		{
//  354 			u_char *presp = NULL;
//  355 			presp = sim900a_check_cmd((const char*)data,"OK");
//  356 
//  357 			if (presp == NULL)//continue
//  358 			{
//  359 				sim900a_send_cmd_wait_ack("AT+CPIN?", &et_gprs,TIME_CHECK_GPRS_SIM);
//  360 			}
//  361 			else //
//  362 			{
//  363 				//检查SIM卡是否在
//  364 				etimer_stop(&et_gprs);
//  365 				ubSim900aState = SIM900A_TCPUDP;
//  366 				sim900a_send_cmd_wait_ack("AT+CPIN?", &et_gprs,TIME_CLOSE_GPRS_ECHO);
//  367 			}
//  368 		}
//  369 	}
//  370 }
??sim900a_handler_2:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock12
//  371 
//  372 
//  373 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function sim900a_clear_rx
        THUMB
//  374 void sim900a_clear_rx(void)
//  375 {
//  376 	memset(&sim900_rx, 0, sizeof(SIM900A_MSG));
sim900a_clear_rx:
        MOVW     R1,#+1364
        LDR.W    R0,??DataTable141
          CFI FunCall __aeabi_memclr4
        B.W      __aeabi_memclr4
          CFI EndBlock cfiBlock13
//  377 }
//  378 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function sim900a_update_rx
        THUMB
//  379 void sim900a_update_rx(const u_char *pcdata, u_short uwLen)
//  380 {
//  381 	sim900_rx.nLen = uwLen;
sim900a_update_rx:
        LDR.W    R3,??DataTable141
        STR      R1,[R3, #+0]
//  382 	memcpy(sim900_rx.ubamsg, pcdata, uwLen);
        MOV      R2,R1
        MOV      R1,R0
        ADDS     R0,R3,#+4
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI EndBlock cfiBlock14
//  383 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable133:
        DC8      "%s\n"
//  384 
//  385 
//  386 #define ATCMD_MAX_REPEAT_NUMS		5
//  387 
//  388 
//  389 static int check_gprs_moduel(u_char atcmdCount)
//  390 {
//  391 	if (atcmdCount == ATCMD_MAX_REPEAT_NUMS)
//  392 	{
//  393 		//process_exit(&sim900a_init_process);
//  394 		//process_start(&sim900a_rst_process, NULL);
//  395 		return 1;
//  396 	}
//  397 	return 0;
//  398 }
//  399 
//  400 
//  401 const char * gprs_check[]={
//  402 	"AT",
//  403 	"ATE0",
//  404 	"AT+CPIN?",
//  405 	"AT+COPS?"
//  406 };
//  407 
//  408 const char * gprs_check_resp[]={
//  409 	"OK",
//  410 	"OK",
//  411 	"OK",
//  412 	"OK"
//  413 };
//  414 
//  415 //common check grps and sim

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function process_thread_sim900a_check_process
        THUMB
//  416 PROCESS_THREAD(sim900a_check_process, ev, data)
//  417 {
process_thread_sim900a_check_process:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOV      R4,R0
        MOV      R7,R1
//  418 	static u_char i = 0;
//  419 	static struct etimer et_check;
//  420 	u_char *presp = NULL;
//  421 	u_char *pcmd = NULL;
//  422 
//  423 	PROCESS_BEGIN( );
        LDRH     R0,[R4, #+0]
        LDR.W    R5,??DataTable137_1
        MOV      R6,R2
        CBZ.N    R0,??process_thread_sim900a_check_process_0
        MOVW     R1,#+433
        SUBS     R0,R0,R1
        BEQ.N    ??process_thread_sim900a_check_process_1
        SUBS     R0,R0,#+19
        BEQ.N    ??process_thread_sim900a_check_process_2
        SUBS     R0,R0,#+16
        BEQ.W    ??process_thread_sim900a_check_process_3
        SUBS     R0,R0,#+20
        BEQ.W    ??process_thread_sim900a_check_process_4
        B.N      ??process_thread_sim900a_check_process_5
//  424 	gprs_process = &sim900a_check_process;
??process_thread_sim900a_check_process_0:
        ADD      R0,R5,#+52
        STR      R0,[R5, #+32]
//  425 	i = 0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+16]
//  426 	XPRINTF((0, "sim900a_check_process\r\n"));
        ADR.W    R1,?_29
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  427 
//  428 #if 1
//  429 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
        MOVS     R0,#+0
        STRB     R0,[R5, #+16]
//  430 	{
//  431 		sim900a_send_cmd("AT");
??process_thread_sim900a_check_process_6:
        ADR.N    R0,??DataTable134  ;; 0x41, 0x54, 0x00, 0x00
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  432 		etimer_set(&et_check, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R5,#+212
          CFI FunCall etimer_set
        BL       etimer_set
//  433 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_check) || ev == sim900_event_resp);
        MOVW     R0,#+433
        B.N      ??process_thread_sim900a_check_process_7
??process_thread_sim900a_check_process_1:
        ADD      R8,R5,#+212
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_check_process_8
        LDRB     R0,[R5, #+0]
        CMP      R7,R0
        BNE.W    ??process_thread_sim900a_check_process_9
//  434 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_check_process_8:
        LDRB     R0,[R5, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_check_process_10
        CBZ.N    R6,??process_thread_sim900a_check_process_10
//  435 		{
//  436 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable134_1  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R6
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  437 			etimer_stop(&et_check);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  438 			MEM_DUMP(10, "AT", data, strlen(data));
        MOV      R0,R6
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R6
        ADR.N    R1,??DataTable134  ;; 0x41, 0x54, 0x00, 0x00
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  439 			if (presp != NULL)
        CBZ.N    R7,??process_thread_sim900a_check_process_10
//  440 			{
//  441 				gprsState = SIM900A_AT_OK;
        MOVS     R0,#+0
        STRB     R0,[R5, #+10]
//  442 				break;
        B.N      ??process_thread_sim900a_check_process_11
//  443 			}
//  444 		}
//  445 	}
??process_thread_sim900a_check_process_10:
        LDRB     R0,[R5, #+16]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+16]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_check_process_6
//  446 
//  447 	//close grps echo function
//  448 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
??process_thread_sim900a_check_process_11:
        MOVS     R0,#+0
        STRB     R0,[R5, #+16]
//  449 	{
//  450 		sim900a_send_cmd("ATE0");
??process_thread_sim900a_check_process_12:
        ADR.W    R0,?_11
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  451 		etimer_set(&et_check, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R5,#+212
          CFI FunCall etimer_set
        BL       etimer_set
//  452 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_check) || ev == sim900_event_resp);
        MOV      R0,#+452
        B.N      ??process_thread_sim900a_check_process_7
??process_thread_sim900a_check_process_2:
        ADD      R8,R5,#+212
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_check_process_13
        LDRB     R0,[R5, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_check_process_9
//  453 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_check_process_13:
        LDRB     R0,[R5, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_check_process_14
        CBZ.N    R6,??process_thread_sim900a_check_process_14
//  454 		{
//  455 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable134_1  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R6
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  456 			etimer_stop(&et_check);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  457 			MEM_DUMP(10, "ATE0", data, strlen(data));
        MOV      R0,R6
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R6
        ADR.W    R1,?_11
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  458 			if (presp != NULL)
        CBNZ.N   R7,??process_thread_sim900a_check_process_15
//  459 				break;
//  460 		}
//  461 	}
??process_thread_sim900a_check_process_14:
        LDRB     R0,[R5, #+16]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+16]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_check_process_12
//  462 
//  463 	//查询SIM卡是否在位
//  464 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
??process_thread_sim900a_check_process_15:
        MOVS     R0,#+0
        STRB     R0,[R5, #+16]
//  465 	{
//  466 		sim900a_send_cmd("AT+CPIN?");
??process_thread_sim900a_check_process_16:
        ADR.W    R0,?_12
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  467 		etimer_set(&et_check, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R5,#+212
          CFI FunCall etimer_set
        BL       etimer_set
//  468 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_check) || ev == sim900_event_resp);
        MOV      R0,#+468
        B.N      ??process_thread_sim900a_check_process_7
??process_thread_sim900a_check_process_3:
        ADD      R8,R5,#+212
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_check_process_17
        LDRB     R0,[R5, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_check_process_9
//  469 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_check_process_17:
        LDRB     R0,[R5, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_check_process_18
        CBZ.N    R6,??process_thread_sim900a_check_process_18
//  470 		{
//  471 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable134_1  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R6
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  472 			pcmd = sim900a_check_cmd((const char*)data,"CPIN");
        ADR.W    R9,?_30
        MOV      R1,R9
        MOV      R0,R6
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R10,R0
//  473 			etimer_stop(&et_check);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  474 			MEM_DUMP(10, "CPIN", data, strlen(data));
        MOV      R0,R6
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R6
        MOV      R1,R9
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  475 			if (presp != NULL && pcmd != NULL)
        CMP      R7,#+0
        IT       NE 
        CMPNE    R10,#+0
        BEQ.N    ??process_thread_sim900a_check_process_18
//  476 			{
//  477 				gprsState = SIM900A_SIM_OK;
        MOVS     R0,#+1
        STRB     R0,[R5, #+10]
//  478 				break;
        B.N      ??process_thread_sim900a_check_process_19
//  479 			}
//  480 		}
//  481 	}
??process_thread_sim900a_check_process_18:
        LDRB     R0,[R5, #+16]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+16]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_check_process_16
//  482 
//  483 	//查询运营商名字
//  484 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
??process_thread_sim900a_check_process_19:
        MOVS     R0,#+0
        STRB     R0,[R5, #+16]
//  485 	{
//  486 		sim900a_send_cmd("AT+COPS?");
??process_thread_sim900a_check_process_20:
        ADR.W    R0,?_13
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  487 		etimer_set(&et_check, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R5,#+212
          CFI FunCall etimer_set
        BL       etimer_set
//  488 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_check) || ev == sim900_event_resp);
        MOV      R0,#+488
??process_thread_sim900a_check_process_7:
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_sim900a_check_process_9
??process_thread_sim900a_check_process_4:
        ADD      R8,R5,#+212
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_check_process_21
        LDRB     R0,[R5, #+0]
        CMP      R7,R0
        BEQ.N    ??process_thread_sim900a_check_process_21
??process_thread_sim900a_check_process_9:
        MOVS     R0,#+1
        POP      {R4-R10,PC}
//  489 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_check_process_21:
        LDRB     R0,[R5, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_check_process_22
        CBZ.N    R6,??process_thread_sim900a_check_process_22
//  490 		{
//  491 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable134_1  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R6
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  492 			pcmd = sim900a_check_cmd((const char*)data,"COPS");
        ADR.W    R9,?_31
        MOV      R1,R9
        MOV      R0,R6
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R10,R0
//  493 			etimer_stop(&et_check);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  494 			MEM_DUMP(10, "COPS", data, strlen(data));
        MOV      R0,R6
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R6
        MOV      R1,R9
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  495 			if (presp != NULL && pcmd != NULL)
        CMP      R7,#+0
        IT       NE 
        CMPNE    R10,#+0
        BNE.N    ??process_thread_sim900a_check_process_23
//  496 				break;
//  497 		}
//  498 	}
??process_thread_sim900a_check_process_22:
        LDRB     R0,[R5, #+16]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+16]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_check_process_20
//  499 	#else
//  500 	i = 0;
//  501 	etimer_set(&et_check, 5*1000); //5s
//  502 	sim900a_send_cmd(gprs_check[i]);
//  503 	while(1)
//  504 	{
//  505 		PROCESS_YIELD( );
//  506 		if (ev == PROCESS_EVENT_TIMER && data == &et_check)
//  507 		{
//  508 			etimer_set(&et_check, 5*1000); //5s
//  509 			sim900a_send_cmd(gprs_check[i]);
//  510 		}
//  511 		else if (ev == sim900_event_resp && data != NULL)
//  512 		{
//  513 			presp = sim900a_check_cmd((const char*)data,gprs_check_resp[i]);
//  514 			if (presp!=NULL) //next cmd
//  515 			{
//  516 				i++;
//  517 				if (i == sizeof(gprs_check)/sizeof(gprs_check[0]))
//  518 				{
//  519 					etimer_stop(&et_check);
//  520 					XPRINTF((12,"check out\n"));
//  521 					break;
//  522 				}
//  523 			}
//  524 			etimer_stop(&et_check);
//  525 			etimer_set(&et_check, 100);
//  526 		}
//  527 	}
//  528 	#endif
//  529 	gprsState = SIM900A_SIM_OK;
??process_thread_sim900a_check_process_23:
        MOVS     R0,#+1
        STRB     R0,[R5, #+10]
//  530 	process_start(&sim900a_cfggprs_process,NULL);
        MOVS     R1,#+0
        ADD      R0,R5,#+68
          CFI FunCall process_start
        BL       process_start
//  531 	process_exit(&sim900a_check_process );
        ADD      R0,R5,#+52
          CFI FunCall process_exit
        BL       process_exit
//  532 	PROCESS_END();
??process_thread_sim900a_check_process_5:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock15
//  533 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134:
        DC8      0x41, 0x54, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable134_1:
        DC8      0x4F, 0x4B, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_29:
        DC8 "sim900a_check_process\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_11:
        DC8 "ATE0"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_12:
        DC8 "AT+CPIN?"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_30:
        DC8 "CPIN"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_13:
        DC8 "AT+COPS?"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_31:
        DC8 "COPS"
        DC8 0, 0, 0
//  534 
//  535 //gprs model param cfg
//  536 /*
//  537 sim900a_send_cmd("AT+CIPCLOSE=1","CLOSE OK",100);	//关闭连接
//  538 sim900a_send_cmd("AT+CIPSHUT","SHUT OK",100);		//关闭移动场景
//  539 if(sim900a_send_cmd("AT+CGCLASS=\"B\"","OK",1000))return 1;				//设置GPRS移动台类别为B,支持包交换和数据交换
//  540 if(sim900a_send_cmd("AT+CGDCONT=1,\"IP\",\"CMNET\"","OK",1000))return 2;//设置PDP上下文,互联网接协议,接入点等信息
//  541 if(sim900a_send_cmd("AT+CGATT=1","OK",500))return 3;					//附着GPRS业务
//  542 if(sim900a_send_cmd("AT+CIPCSGP=1,\"CMNET\"","OK",500))return 4;	 	//设置为GPRS连接模式
//  543 if(sim900a_send_cmd("AT+CIPHEAD=1","OK",500))return 5;	 				//设置接收数据显示IP头(方便判断数据来源)
//  544 */
//  545 //sim900a_cfggprs_process
//  546 const char * gprs_cfg[]={
//  547 	"AT+CIPCLOSE=1",						//关闭连接
//  548 	"AT+CIPSHUT=1",							//关闭移动场景
//  549 	"AT+CGCLASS=\"B\"",						//设置GPRS移动台类别为B,支持包交换和数据交换
//  550 	"AT+CGDCONT=1,\"IP\",\"CMNET\"",		//设置PDP上下文,互联网接协议,接入点等信息
//  551 	"AT+CGATT=1",							//附着GPRS业务
//  552 	"AT+CIPCSGP=1,\"CMNET\"",				//设置为GPRS连接模式
//  553 	"AT+CLPORT=\"TCP\",\"2000\""			//
//  554 };
//  555 
//  556 const char * gprs_cfg_resp[]={
//  557 	"OK",
//  558 	"OK",
//  559 	"OK",
//  560 	"OK",
//  561 	"OK",
//  562 	"OK",
//  563 	"OK"
//  564 };
//  565 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function process_thread_sim900a_cfggprs_process
        THUMB
//  566 PROCESS_THREAD(sim900a_cfggprs_process, ev, data)
//  567 {
process_thread_sim900a_cfggprs_process:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R4,R0
        MOV      R7,R1
//  568 	static u_char i = 0;
//  569 	static struct etimer et_cfggprs;
//  570 	u_char *presp = NULL;
//  571 	PROCESS_BEGIN( );
        LDRH     R0,[R4, #+0]
        LDR.W    R6,??DataTable137_1
        MOV      R5,R2
        CBZ.N    R0,??process_thread_sim900a_cfggprs_process_0
        MOVW     R1,#+622
        SUBS     R0,R0,R1
        BEQ.N    ??process_thread_sim900a_cfggprs_process_1
        SUBS     R0,R0,#+18
        BEQ.N    ??process_thread_sim900a_cfggprs_process_2
        SUBS     R0,R0,#+18
        BEQ.W    ??process_thread_sim900a_cfggprs_process_3
        SUBS     R0,R0,#+19
        BEQ.W    ??process_thread_sim900a_cfggprs_process_4
        SUBS     R0,R0,#+19
        BEQ.W    ??process_thread_sim900a_cfggprs_process_5
        SUBS     R0,R0,#+19
        BEQ.W    ??process_thread_sim900a_cfggprs_process_6
        SUBS     R0,R0,#+58
        BEQ.W    ??process_thread_sim900a_cfggprs_process_7
        B.N      ??process_thread_sim900a_cfggprs_process_8
//  572 	i = 0;
??process_thread_sim900a_cfggprs_process_0:
        STRB     R0,[R6, #+17]
//  573 	gprs_process = &sim900a_cfggprs_process;
        ADD      R0,R6,#+68
        STR      R0,[R6, #+32]
//  574 
//  575 
//  576 	//if (gprsState == SIM900A_TCPUDP_OK)
//  577 	#if 1
//  578 	{
//  579 		#if 0
//  580 		//关闭连接
//  581 		for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
//  582 		{
//  583 			sim900a_send_cmd("AT+CIPCLOSE=1");//"CLOSE OK"
//  584 			etimer_set(&et_cfggprs, 5*1000); //5s
//  585 			PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
//  586 			if (ev == sim900_event_resp && data != NULL)
//  587 			{
//  588 				presp = sim900a_check_cmd((const char*)data,"OK");
//  589 				etimer_stop(&et_cfggprs);
//  590 				MEM_DUMP(10, "LOSE", data, strlen(data));
//  591 				if (presp != NULL)
//  592 					break;
//  593 			}
//  594 		}
//  595 
//  596 		//关闭移动场景
//  597 		for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
//  598 		{
//  599 			sim900a_send_cmd("AT+CIPSHUT=1");//"SHUT OK"
//  600 			etimer_set(&et_cfggprs, 5*1000); //5s
//  601 			PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
//  602 			if (ev == sim900_event_resp && data != NULL)
//  603 			{
//  604 				presp = sim900a_check_cmd((const char*)data,"OK");
//  605 				etimer_stop(&et_cfggprs);
//  606 				MEM_DUMP(10, "SHUT", data, strlen(data));
//  607 				if (presp != NULL)
//  608 				{
//  609 					gprsState = SIM900A_TCPUDP_CLOSE;
//  610 					break;
//  611 				}
//  612 			}
//  613 		}
//  614 		#endif
//  615 	}
//  616 
//  617 	//设置GPRS移动台类别为B,支持包交换和数据交换
//  618 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
//  619 	{
//  620 		sim900a_send_cmd("AT+CGCLASS=\"B\"");//"OK"
??process_thread_sim900a_cfggprs_process_9:
        ADR.W    R0,?_17
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  621 		etimer_set(&et_cfggprs, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R6,#+228
          CFI FunCall etimer_set
        BL       etimer_set
//  622 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
        MOVW     R0,#+622
        B.N      ??process_thread_sim900a_cfggprs_process_10
??process_thread_sim900a_cfggprs_process_1:
        ADD      R8,R6,#+228
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_cfggprs_process_11
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.W    ??process_thread_sim900a_cfggprs_process_12
//  623 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_cfggprs_process_11:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_cfggprs_process_13
        CBZ.N    R5,??process_thread_sim900a_cfggprs_process_13
//  624 		{
//  625 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable135  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  626 			etimer_stop(&et_cfggprs);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  627 			MEM_DUMP(12, "LASS", data, strlen(data));
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        ADR.W    R1,?_32
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  628 			if (presp != NULL)
        CBNZ.N   R7,??process_thread_sim900a_cfggprs_process_14
//  629 			{
//  630 				break;
//  631 			}
//  632 		}
//  633 	}
??process_thread_sim900a_cfggprs_process_13:
        LDRB     R0,[R6, #+17]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+17]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_cfggprs_process_9
//  634 
//  635 	//设置PDP上下文,互联网接协议,接入点等信息
//  636 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
??process_thread_sim900a_cfggprs_process_14:
        MOVS     R0,#+0
        STRB     R0,[R6, #+17]
//  637 	{
//  638 		sim900a_send_cmd("AT+CGDCONT=1,\"IP\",\"CMNET\"");//"OK"
??process_thread_sim900a_cfggprs_process_15:
        ADR.W    R0,?_18
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  639 		etimer_set(&et_cfggprs, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R6,#+228
          CFI FunCall etimer_set
        BL       etimer_set
//  640 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
        MOV      R0,#+640
        B.N      ??process_thread_sim900a_cfggprs_process_10
??process_thread_sim900a_cfggprs_process_2:
        ADD      R8,R6,#+228
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_cfggprs_process_16
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.W    ??process_thread_sim900a_cfggprs_process_12
//  641 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_cfggprs_process_16:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_cfggprs_process_17
        CBZ.N    R5,??process_thread_sim900a_cfggprs_process_17
//  642 		{
//  643 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable135  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  644 			etimer_stop(&et_cfggprs);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  645 			MEM_DUMP(12, "CGDC", data, strlen(data));
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        ADR.W    R1,?_33
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  646 			if (presp != NULL)
        CBNZ.N   R7,??process_thread_sim900a_cfggprs_process_18
//  647 			{
//  648 				break;
//  649 			}
//  650 		}
//  651 	}
??process_thread_sim900a_cfggprs_process_17:
        LDRB     R0,[R6, #+17]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+17]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_cfggprs_process_15
//  652 
//  653 	//附着GPRS业务
//  654 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
??process_thread_sim900a_cfggprs_process_18:
        MOVS     R0,#+0
        STRB     R0,[R6, #+17]
//  655 	{
//  656 		sim900a_send_cmd("AT+CGATT=1");//"OK"
??process_thread_sim900a_cfggprs_process_19:
        ADR.W    R0,?_19
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  657 		etimer_set(&et_cfggprs, 20*1000); //5s
        MOVW     R1,#+20000
        ADD      R0,R6,#+228
          CFI FunCall etimer_set
        BL       etimer_set
//  658 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
        MOVW     R0,#+658
        B.N      ??process_thread_sim900a_cfggprs_process_10
??process_thread_sim900a_cfggprs_process_3:
        ADD      R8,R6,#+228
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_cfggprs_process_20
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.W    ??process_thread_sim900a_cfggprs_process_12
//  659 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_cfggprs_process_20:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_cfggprs_process_21
        CBZ.N    R5,??process_thread_sim900a_cfggprs_process_21
//  660 		{
//  661 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable135  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  662 			etimer_stop(&et_cfggprs);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  663 			MEM_DUMP(12, "CGAT", data, strlen(data));
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        ADR.W    R1,?_34
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  664 			if (presp != NULL)
        CBNZ.N   R7,??process_thread_sim900a_cfggprs_process_22
//  665 			{
//  666 				break;
//  667 			}
//  668 		}
//  669 	}
??process_thread_sim900a_cfggprs_process_21:
        LDRB     R0,[R6, #+17]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+17]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_cfggprs_process_19
//  670 //13798983973
//  671 //5989
//  672 	//设置为GPRS连接模式
//  673 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
??process_thread_sim900a_cfggprs_process_22:
        MOVS     R0,#+0
        STRB     R0,[R6, #+17]
//  674 	{
//  675 		sim900a_send_cmd("AT+CIPCSGP=1,\"CMNET\"");//"OK"
??process_thread_sim900a_cfggprs_process_23:
        ADR.W    R0,?_20
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  676 		etimer_set(&et_cfggprs, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R6,#+228
          CFI FunCall etimer_set
        BL       etimer_set
//  677 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
        MOVW     R0,#+677
        B.N      ??process_thread_sim900a_cfggprs_process_10
??process_thread_sim900a_cfggprs_process_4:
        ADD      R8,R6,#+228
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_cfggprs_process_24
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.W    ??process_thread_sim900a_cfggprs_process_12
//  678 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_cfggprs_process_24:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_cfggprs_process_25
        CBZ.N    R5,??process_thread_sim900a_cfggprs_process_25
//  679 		{
//  680 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable135  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  681 			etimer_stop(&et_cfggprs);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  682 			MEM_DUMP(12, "CSGP", data, strlen(data));
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        ADR.W    R1,?_35
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  683 			if (presp != NULL)
        CBNZ.N   R7,??process_thread_sim900a_cfggprs_process_26
//  684 			{
//  685 				break;
//  686 			}
//  687 		}
//  688 	}
??process_thread_sim900a_cfggprs_process_25:
        LDRB     R0,[R6, #+17]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+17]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_cfggprs_process_23
//  689 
//  690 
//  691 	//设置接收数据显示IP头(方便判断数据来源)
//  692 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
??process_thread_sim900a_cfggprs_process_26:
        MOVS     R0,#+0
        STRB     R0,[R6, #+17]
//  693 	{
//  694 		sim900a_send_cmd("AT+CIPHEAD=1");//"OK"
??process_thread_sim900a_cfggprs_process_27:
        ADR.W    R0,?_36
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  695 		etimer_set(&et_cfggprs, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R6,#+228
          CFI FunCall etimer_set
        BL       etimer_set
//  696 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
        MOV      R0,#+696
        B.N      ??process_thread_sim900a_cfggprs_process_10
??process_thread_sim900a_cfggprs_process_5:
        ADD      R8,R6,#+228
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_cfggprs_process_28
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_cfggprs_process_12
//  697 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_cfggprs_process_28:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_cfggprs_process_29
        CBZ.N    R5,??process_thread_sim900a_cfggprs_process_29
//  698 		{
//  699 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable135  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  700 			etimer_stop(&et_cfggprs);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  701 			MEM_DUMP(12, "PHEAD", data, strlen(data));
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        ADR.W    R1,?_37
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  702 			if (presp != NULL)
        CBNZ.N   R7,??process_thread_sim900a_cfggprs_process_30
//  703 			{
//  704 				break;
//  705 			}
//  706 		}
//  707 	}
??process_thread_sim900a_cfggprs_process_29:
        LDRB     R0,[R6, #+17]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+17]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_cfggprs_process_27
//  708 
//  709 	//设置短信发送参数  中英文短信的发送
//  710 	
//  711 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
??process_thread_sim900a_cfggprs_process_30:
        MOVS     R0,#+0
        STRB     R0,[R6, #+17]
//  712 	{
//  713 		sim900a_send_cmd("AT+CMGF=0");//文本模式
??process_thread_sim900a_cfggprs_process_31:
        ADR.W    R0,?_38
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  714 		etimer_set(&et_cfggprs, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R6,#+228
          CFI FunCall etimer_set
        BL       etimer_set
//  715 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
        MOVW     R0,#+715
        B.N      ??process_thread_sim900a_cfggprs_process_10
??process_thread_sim900a_cfggprs_process_6:
        ADD      R8,R6,#+228
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_cfggprs_process_32
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_cfggprs_process_12
//  716 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_cfggprs_process_32:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_cfggprs_process_33
        CBZ.N    R5,??process_thread_sim900a_cfggprs_process_33
//  717 		{
//  718 			presp = sim900a_check_cmd((const char*)data,"OK");
        ADR.N    R1,??DataTable135  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
//  719 
//  720 			MEM_DUMP(12, "CMGF", data, strlen(data));
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        ADR.W    R1,?_39
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  721 			if (presp != NULL)
        CBZ.N    R7,??process_thread_sim900a_cfggprs_process_33
//  722 			{
//  723 				etimer_stop(&et_cfggprs);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  724 				break;
        B.N      ??process_thread_sim900a_cfggprs_process_34
//  725 			}
//  726 		}
//  727 	}
??process_thread_sim900a_cfggprs_process_33:
        LDRB     R0,[R6, #+17]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+17]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_cfggprs_process_31
//  728 	/*
//  729 	//AT+CSMP=17,167,2,25
//  730 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
//  731 	{
//  732 		sim900a_send_cmd("AT+CSMP=17,167,2,25");//文本模式参数
//  733 		etimer_set(&et_cfggprs, 5*1000); //5s
//  734 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
//  735 		if (ev == sim900_event_resp && data != NULL)
//  736 		{
//  737 			presp = sim900a_check_cmd((const char*)data,"OK");
//  738 			etimer_stop(&et_cfggprs);
//  739 			MEM_DUMP(12, "CSMP", data, strlen(data));
//  740 			if (presp != NULL)
//  741 			{
//  742 				break;
//  743 			}
//  744 		}
//  745 	}
//  746 	//AT+CSCS="UCS2"
//  747 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
//  748 	{
//  749 		sim900a_send_cmd("AT+CSCS=\"UCS2\"");//
//  750 		etimer_set(&et_cfggprs, 5*1000); //5s
//  751 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
//  752 		if (ev == sim900_event_resp && data != NULL)
//  753 		{
//  754 			presp = sim900a_check_cmd((const char*)data,"OK");
//  755 			etimer_stop(&et_cfggprs);
//  756 			MEM_DUMP(12, "CSMP", data, strlen(data));
//  757 			if (presp != NULL)
//  758 			{
//  759 				break;
//  760 			}
//  761 		}
//  762 	}
//  763 	*/
//  764 	//配置短信中心号
//  765 	//"AT+CPMS=\"SM\",\"SM\",\"SM\""
//  766 
//  767 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
??process_thread_sim900a_cfggprs_process_34:
        MOVS     R0,#+0
        STRB     R0,[R6, #+17]
//  768 	{
//  769 		u_char *pbuf = NULL;
//  770 
//  771 		sim900a_send_cmd("AT+CSCA?");
??process_thread_sim900a_cfggprs_process_35:
        LDR.W    R0,??DataTable142_1
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  772 		etimer_set(&et_cfggprs, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R6,#+228
          CFI FunCall etimer_set
        BL       etimer_set
//  773 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_cfggprs) || ev == sim900_event_resp);
        MOVW     R0,#+773
??process_thread_sim900a_cfggprs_process_10:
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_sim900a_cfggprs_process_12
??process_thread_sim900a_cfggprs_process_7:
        ADD      R8,R6,#+228
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_cfggprs_process_36
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BEQ.N    ??process_thread_sim900a_cfggprs_process_36
??process_thread_sim900a_cfggprs_process_12:
        B.N      ?Subroutine3
//  774 		//MEM_DUMP(10, "CSCA", data, strlen(data));
//  775 		if (ev == sim900_event_resp && data != NULL)
??process_thread_sim900a_cfggprs_process_36:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_cfggprs_process_37
        CBZ.N    R5,??process_thread_sim900a_cfggprs_process_37
//  776 		{
//  777 			presp = sim900a_check_cmd((const char*)data,"CSCA");
        LDR.W    R7,??DataTable143
        MOV      R1,R7
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R9,R0
//  778 
//  779 			MEM_DUMP(12, "CSCA", data, strlen(data));
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        MOV      R1,R7
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  780 			if (presp != NULL)
        CMP      R9,#+0
        BEQ.N    ??process_thread_sim900a_cfggprs_process_37
//  781 			{
//  782 				etimer_stop(&et_cfggprs);
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
//  783 				break;
        B.N      ??process_thread_sim900a_cfggprs_process_38
//  784 			}
//  785 		}
//  786 	}
??process_thread_sim900a_cfggprs_process_37:
        LDRB     R0,[R6, #+17]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+17]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_cfggprs_process_35
//  787 	#else
//  788 	etimer_set(&et_cfggprs, 5*1000); //5s
//  789 	sim900a_send_cmd(gprs_cfg[i]);
//  790 	while(1)
//  791 	{
//  792 		PROCESS_YIELD( );
//  793 		if (ev == PROCESS_EVENT_TIMER && data == &et_cfggprs)
//  794 		{
//  795 			etimer_set(&et_cfggprs, 5*1000); //5s
//  796 			sim900a_send_cmd(gprs_cfg[i]);
//  797 		}
//  798 		else if (ev == sim900_event_resp && data != NULL)
//  799 		{
//  800 			presp = sim900a_check_cmd((const char*)data,gprs_cfg_resp[i]);
//  801 			if (presp!=NULL) //next cmd
//  802 			{
//  803 				i++;
//  804 				if (i == sizeof(gprs_cfg)/sizeof(gprs_cfg[0]))
//  805 				{
//  806 					etimer_stop(&et_cfggprs);
//  807 					XPRINTF((10,"check out\n"));
//  808 					break;
//  809 				}
//  810 			}
//  811 			etimer_stop(&et_cfggprs);
//  812 			etimer_set(&et_cfggprs, 100);
//  813 		}
//  814 	}
//  815 	#endif
//  816 
//  817 	process_start(&sim900a_tcpudp_con_process,NULL);
??process_thread_sim900a_cfggprs_process_38:
        MOVS     R1,#+0
        ADD      R0,R6,#+84
          CFI FunCall process_start
        BL       process_start
//  818 	process_exit(&sim900a_cfggprs_process);
        ADD      R0,R6,#+68
          CFI FunCall process_exit
        BL       process_exit
//  819 
//  820 	PROCESS_END( );
??process_thread_sim900a_cfggprs_process_8:
        B.N      ?Subroutine2
          CFI EndBlock cfiBlock16
//  821 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable135:
        DC8      0x4F, 0x4B, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_17:
        DC8 "AT+CGCLASS=\"B\""
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_32:
        DC8 "LASS"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_18:
        DC8 "AT+CGDCONT=1,\"IP\",\"CMNET\""
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_33:
        DC8 "CGDC"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_19:
        DC8 "AT+CGATT=1"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_34:
        DC8 "CGAT"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_20:
        DC8 "AT+CIPCSGP=1,\"CMNET\""
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_35:
        DC8 "CSGP"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_36:
        DC8 "AT+CIPHEAD=1"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_37:
        DC8 "PHEAD"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_38:
        DC8 "AT+CMGF=0"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_39:
        DC8 "CMGF"
        DC8 0, 0, 0
//  822 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function process_thread_sim900a_tcpudp_con_process
        THUMB
//  823 PROCESS_THREAD(sim900a_tcpudp_con_process, ev, data)
//  824 {
process_thread_sim900a_tcpudp_con_process:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R4,R0
        MOV      R7,R1
//  825 	static u_char i = 0;
//  826 	static u_char ubcount = 0;
//  827 	static struct etimer et_tcpudp;
//  828 	static u_char baBuf[128] = {0x00};
//  829 	u_char *presp = NULL;
//  830     u_char *pcon_ok=NULL;
//  831 	u_char *pcon_true = NULL;
//  832 	NET_MODE *pnetMode;
//  833 	PROCESS_BEGIN( );
        LDRH     R0,[R4, #+0]
        LDR.W    R6,??DataTable137_1
        MOV      R5,R2
        CBZ.N    R0,??process_thread_sim900a_tcpudp_con_process_0
        MOVW     R1,#+843
        SUBS     R0,R0,R1
        BEQ.N    ??process_thread_sim900a_tcpudp_con_process_1
        SUBS     R0,R0,#+16
        BEQ.N    ??process_thread_sim900a_tcpudp_con_process_2
        SUBS     R0,R0,#+21
        BEQ.W    ??process_thread_sim900a_tcpudp_con_process_3
        SUBS     R0,R0,#+51
        BEQ.W    ??process_thread_sim900a_tcpudp_con_process_4
        B.N      ??process_thread_sim900a_tcpudp_con_process_5
//  834 	gprs_process = &sim900a_tcpudp_con_process;
??process_thread_sim900a_tcpudp_con_process_0:
        ADD      R0,R6,#+84
        STR      R0,[R6, #+32]
//  835 
//  836 //	if (gprsState == SIM900A_TCPUDP_OK)
//  837 	{
//  838 		//关闭连接
//  839 		for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
        MOVS     R0,#+0
        STRB     R0,[R6, #+18]
//  840 		{
//  841 			sim900a_send_cmd("AT+CIPCLOSE=1");//"CLOSE OK"
??process_thread_sim900a_tcpudp_con_process_6:
        LDR.W    R0,??DataTable143_1
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  842 			etimer_set(&et_tcpudp, 5*1000); //5s
        MOVW     R1,#+5000
        ADD      R0,R6,#+244
          CFI FunCall etimer_set
        BL       etimer_set
//  843 			PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_tcpudp) || ev == sim900_event_resp);
        MOVW     R0,#+843
??process_thread_sim900a_tcpudp_con_process_7:
        STRH     R0,[R4, #+0]
//  844 			if (ev == sim900_event_resp && data != NULL)
//  845 			{
//  846 				presp = sim900a_check_cmd((const char*)data,"OK");
//  847 				etimer_stop(&et_tcpudp);
//  848 				MEM_DUMP(12, "LOSE", data, strlen(data));
//  849 				if (presp != NULL)
//  850 					break;
//  851 			}
//  852 		}
//  853 
//  854 		//关闭移动场景
//  855 		for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
//  856 		{
//  857 			sim900a_send_cmd("AT+CIPSHUT=1");//"SHUT OK"
//  858 			etimer_set(&et_tcpudp, 5*1000); //5s
//  859 			PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_tcpudp) || ev == sim900_event_resp);
//  860 			if (ev == sim900_event_resp && data != NULL)
//  861 			{
//  862 				presp = sim900a_check_cmd((const char*)data,"OK");
//  863 				etimer_stop(&et_tcpudp);
//  864 				MEM_DUMP(12, "SHUT", data, strlen(data));
//  865 				if (presp != NULL)
//  866 				{
//  867 					gprsState = SIM900A_TCPUDP_CLOSE;
//  868 					break;
//  869 				}
//  870 			}
//  871 		}
//  872 
//  873 		//query sms center num and save
//  874 		for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
//  875 		{
//  876 			u_char *pbuf = NULL;
//  877 
//  878 			sim900a_send_cmd("AT+CSCA?");
//  879 			etimer_set(&et_tcpudp, 5*1000); //5s
//  880 			PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_tcpudp) || ev == sim900_event_resp);
//  881 			//MEM_DUMP(10, "CSCA", data, strlen(data));
//  882 			if (ev == sim900_event_resp && data != NULL)
//  883 			{
//  884 				presp = sim900a_check_cmd((const char*)data,"CSCA");
//  885 
//  886 				MEM_DUMP(12, "CSCA", data, strlen(data));
//  887 				if (presp != NULL)
//  888 				{
//  889 					etimer_stop(&et_tcpudp);
//  890 					break;
//  891 				}
//  892 			}
//  893 		}	
//  894 	}
//  895 	//	sprintf((char*)p,"AT+CIPSTART=\"%s\",\"%s\",\"%s\"",modetbl[mode],ipaddr,port);
//  896 	//	if(sim900a_send_cmd(p,"OK",500))return;		//发起连接
//  897 	//AT+CIPSTART="TCP","180.120.52.222","8086"
//  898 	//connect serverip
//  899 	xsprintf(baBuf, "AT+CIPSTART=\"%s\",\"%s\",\"%s\"", modetbl[1],serverIp, serverPort);
//  900 
//  901 	/*
//  902 	for (i = 0; i < ATCMD_MAX_REPEAT_NUMS; i++)
//  903 	{
//  904 		sim900a_send_cmd(baBuf);
//  905 		etimer_set(&et_tcpudp, 5*1000); //5s
//  906 		PROCESS_WAIT_EVENT_UNTIL(etimer_expired(&et_tcpudp) || ev == sim900_event_resp);
//  907 		presp = sim900a_check_cmd((const char*)data,"OK");
//  908 		pcon_true = sim900a_check_cmd((const char*)data,"ALREADY");
//  909 		pcon_ok = sim900a_check_cmd((const char*)data,"CONNECT OK");
//  910 		MEM_DUMP(10, "IPST", data, strlen(data));
//  911 		if (pcon_ok != NULL)
//  912 		{
//  913 			gprsState = SIM900A_TCPUDP_CONNECT;
//  914 			break;
//  915 		}
//  916 
//  917 		if (pcon_true != NULL)
//  918 		{
//  919 			gprsState = SIM900A_TCPUDP_CONNECT;
//  920 			break;
//  921 		}
//  922 
//  923 	}
//  924 	*/
//  925 
//  926 	sim900a_send_cmd(baBuf);
//  927 	ubcount = 0;
//  928 	etimer_set(&et_tcpudp, 10*1000); //5s
//  929 	while(1)
//  930 	{
//  931 		PROCESS_YIELD( );
??process_thread_sim900a_tcpudp_con_process_8:
        B.N      ?Subroutine3
??process_thread_sim900a_tcpudp_con_process_1:
        ADD      R8,R6,#+244
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_tcpudp_con_process_9
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_tcpudp_con_process_8
??process_thread_sim900a_tcpudp_con_process_9:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_tcpudp_con_process_10
        CBZ.N    R5,??process_thread_sim900a_tcpudp_con_process_10
        ADR.N    R1,??DataTable137  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        ADR.W    R1,?_42
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        CBNZ.N   R7,??process_thread_sim900a_tcpudp_con_process_11
??process_thread_sim900a_tcpudp_con_process_10:
        LDRB     R0,[R6, #+18]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+18]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_tcpudp_con_process_6
??process_thread_sim900a_tcpudp_con_process_11:
        MOVS     R0,#+0
        STRB     R0,[R6, #+18]
??process_thread_sim900a_tcpudp_con_process_12:
        LDR.W    R0,??DataTable143_2
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVW     R1,#+5000
        ADD      R0,R6,#+244
          CFI FunCall etimer_set
        BL       etimer_set
        MOVW     R0,#+859
        B.N      ??process_thread_sim900a_tcpudp_con_process_7
??process_thread_sim900a_tcpudp_con_process_2:
        ADD      R8,R6,#+244
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_tcpudp_con_process_13
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_tcpudp_con_process_8
??process_thread_sim900a_tcpudp_con_process_13:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_tcpudp_con_process_14
        CBZ.N    R5,??process_thread_sim900a_tcpudp_con_process_14
        ADR.N    R1,??DataTable137  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R7,R0
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        ADR.W    R1,?_43
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        CBZ.N    R7,??process_thread_sim900a_tcpudp_con_process_14
        MOVS     R0,#+3
        STRB     R0,[R6, #+10]
        B.N      ??process_thread_sim900a_tcpudp_con_process_15
??process_thread_sim900a_tcpudp_con_process_14:
        LDRB     R0,[R6, #+18]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+18]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_tcpudp_con_process_12
??process_thread_sim900a_tcpudp_con_process_15:
        MOVS     R0,#+0
        STRB     R0,[R6, #+18]
??process_thread_sim900a_tcpudp_con_process_16:
        LDR.W    R0,??DataTable142_1
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVW     R1,#+5000
        ADD      R0,R6,#+244
          CFI FunCall etimer_set
        BL       etimer_set
        MOV      R0,#+880
        B.N      ??process_thread_sim900a_tcpudp_con_process_7
??process_thread_sim900a_tcpudp_con_process_3:
        ADD      R8,R6,#+244
        MOV      R0,R8
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBNZ.N   R0,??process_thread_sim900a_tcpudp_con_process_17
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_tcpudp_con_process_8
??process_thread_sim900a_tcpudp_con_process_17:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_tcpudp_con_process_18
        CBZ.N    R5,??process_thread_sim900a_tcpudp_con_process_18
        LDR.W    R7,??DataTable143
        MOV      R1,R7
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        MOV      R9,R0
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        MOV      R1,R7
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        CMP      R9,#+0
        BEQ.N    ??process_thread_sim900a_tcpudp_con_process_18
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
        B.N      ??process_thread_sim900a_tcpudp_con_process_19
??process_thread_sim900a_tcpudp_con_process_18:
        LDRB     R0,[R6, #+18]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+18]
        UXTB     R0,R0
        CMP      R0,#+5
        BLT.N    ??process_thread_sim900a_tcpudp_con_process_16
??process_thread_sim900a_tcpudp_con_process_19:
        ADR.W    R0,serverPort
        ADR.W    R3,serverIp
        LDR      R2,[R6, #+28]
        ADR.W    R1,?_26
        STR      R0,[SP, #+0]
        ADD      R5,R6,#+260
        MOV      R0,R5
          CFI FunCall xsprintf
        BL       xsprintf
        MOV      R0,R5
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVS     R0,#+0
        STRB     R0,[R6, #+19]
        MOVW     R1,#+10000
        MOV      R0,R8
          CFI FunCall etimer_set
        BL       etimer_set
??process_thread_sim900a_tcpudp_con_process_20:
        MOVW     R0,#+931
        B.N      ??process_thread_sim900a_tcpudp_con_process_7
//  932 		if (ev == PROCESS_EVENT_TIMER && data == &et_tcpudp)
??process_thread_sim900a_tcpudp_con_process_4:
        CMP      R7,#+136
        ITT      EQ 
        ADDEQ    R8,R6,#+244
        CMPEQ    R5,R8
        BNE.N    ??process_thread_sim900a_tcpudp_con_process_21
//  933 		{
//  934 			sim900a_send_cmd(baBuf);
        ADD      R0,R6,#+260
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
//  935 			etimer_set(&et_tcpudp, 10*1000); //5s
        MOVW     R1,#+10000
        MOV      R0,R8
          CFI FunCall etimer_set
        BL       etimer_set
//  936 		}
//  937 		else if (ev == sim900_event_resp && data != NULL)
//  938 		{
//  939 			pcon_ok = sim900a_check_cmd((const char*)data,"CONNECT OK");
//  940 			//pcon_true = sim900a_check_cmd((const char*)data,"ALREADY CONNECT");
//  941 			if (pcon_ok != NULL)
//  942 			{
//  943 				gprsState = SIM900A_TCPUDP_CONNECT;
//  944 				pnetMode = (NET_MODE *)netModeGet( );
//  945 				if (pnetMode->netMode == NET_CONNECT_NONE)
//  946 				{
//  947 					netModeSet(NET_CONNECT_SIM900);
//  948 					XPRINTF((10, "-----------------------NETSETMODE\n"));
//  949 				}
//  950 				setNetState(NET_CONNECT_SIM900);
//  951 				gprs_process = &sim900a_app_process;
//  952 				etimer_stop(&et_tcpudp);
//  953 				process_post(&sim900a_app_process, sim900_event_heart, NULL);
//  954 				MEM_DUMP(12, "IPST", data, strlen(data));
//  955 				break;
//  956 			}
//  957 		}
//  958 		if (ubcount == 10)
??process_thread_sim900a_tcpudp_con_process_22:
        LDRB     R0,[R6, #+19]
        CMP      R0,#+10
        BNE.N    ??process_thread_sim900a_tcpudp_con_process_23
//  959 		{
//  960 			ubcount= 0;
        MOVS     R0,#+0
        STRB     R0,[R6, #+19]
//  961 			process_start(&sim900a_hard_init, NULL);
        MOVS     R1,#+0
        ADD      R0,R6,#+36
          CFI FunCall process_start
        BL       process_start
//  962 			gprs_process = &sim900a_hard_init;
        ADD      R0,R6,#+36
        STR      R0,[R6, #+32]
//  963 			process_exit(&sim900a_tcpudp_con_process);
        ADD      R0,R6,#+84
          CFI FunCall process_exit
        BL       process_exit
//  964 			XPRINTF((10, "connect failed\r\n"));
        ADR.W    R1,?_47
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  965 		}
//  966 		ubcount ++;
??process_thread_sim900a_tcpudp_con_process_23:
        LDRB     R0,[R6, #+19]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+19]
        B.N      ??process_thread_sim900a_tcpudp_con_process_20
??process_thread_sim900a_tcpudp_con_process_21:
        LDRB     R0,[R6, #+0]
        CMP      R7,R0
        BNE.N    ??process_thread_sim900a_tcpudp_con_process_22
        CMP      R5,#+0
        BEQ.N    ??process_thread_sim900a_tcpudp_con_process_22
        ADR.W    R1,?_44
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CMP      R0,#+0
        BEQ.N    ??process_thread_sim900a_tcpudp_con_process_22
        MOVS     R0,#+10
        STRB     R0,[R6, #+10]
          CFI FunCall netModeGet
        BL       netModeGet
        LDRB     R0,[R0, #+0]
        CBNZ.N   R0,??process_thread_sim900a_tcpudp_con_process_24
        MOVS     R0,#+1
          CFI FunCall netModeSet
        BL       netModeSet
        ADR.W    R1,?_45
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
??process_thread_sim900a_tcpudp_con_process_24:
        MOVS     R0,#+1
        STRB     R0,[R6, #+11]
        ADD      R0,R6,#+100
        STR      R0,[R6, #+32]
        ADD      R0,R6,#+244
          CFI FunCall etimer_stop
        BL       etimer_stop
        LDRB     R1,[R6, #+3]
        MOVS     R2,#+0
        ADD      R0,R6,#+100
          CFI FunCall process_post
        BL       process_post
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        MOV      R2,R5
        ADR.W    R1,?_46
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  967 	}
//  968 	//gprs_process = &sim900a_app_process;
//  969 	XPRINTF((12, "sim900a_tcpudp_con_process exit\r\n"));
        ADR.W    R1,?_48
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  970 	process_exit(&sim900a_tcpudp_con_process);
        ADD      R0,R6,#+84
          CFI FunCall process_exit
        BL       process_exit
//  971 	PROCESS_END( );
??process_thread_sim900a_tcpudp_con_process_5:
        B.N      ?Subroutine2
          CFI EndBlock cfiBlock17
//  972 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_42:
        DC8 "LOSE"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_43:
        DC8 "SHUT"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
serverPort:
        DC8 "4567"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
serverIp:
        DC8 "119.29.155.148"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_26:
        DC8 "AT+CIPSTART=\"%s\",\"%s\",\"%s\""
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_47:
        DC8 "connect failed\015\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_44:
        DC8 "CONNECT OK"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_45:
        DC8 "-----------------------NETSETMODE\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_46:
        DC8 "IPST"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_48:
        DC8 "sim900a_tcpudp_con_process exit\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls process_thread_sim900a_cfggprs_process
          CFI NoCalls process_thread_sim900a_tcpudp_con_process
          CFI CFA R13+32
          CFI R4 Frame(CFA, -28)
          CFI R5 Frame(CFA, -24)
          CFI R6 Frame(CFA, -20)
          CFI R7 Frame(CFA, -16)
          CFI R8 Frame(CFA, -12)
          CFI R9 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine3:
        MOVS     R0,#+1
        POP      {R1,R4-R9,PC}
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls process_thread_sim900a_cfggprs_process
          CFI NoCalls process_thread_sim900a_tcpudp_con_process
          CFI CFA R13+32
          CFI R4 Frame(CFA, -28)
          CFI R5 Frame(CFA, -24)
          CFI R6 Frame(CFA, -20)
          CFI R7 Frame(CFA, -16)
          CFI R8 Frame(CFA, -12)
          CFI R9 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock19
//  973 
//  974 
//  975 
//  976 
//  977 
//  978 
//  979 
//  980 
//  981 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function gprsSendFireMacSync
        THUMB
//  982 void gprsSendFireMacSync(u_char macSync, u_char uwSeq)
//  983 {
gprsSendFireMacSync:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOV      R4,R0
        SUB      SP,SP,#+12
          CFI CFA R13+24
        MOV      R5,R1
//  984 	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
//  985 	NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
//  986 	int nFramL = -1;
//  987 	SIM900A_MSG *ptxMsg = &sim900_tx;
//  988 
//  989 	int nFrameL = -1;
//  990 	
//  991 	if (macSync)
        CBNZ.N   R4,??gprsSendFireMacSync_0
//  992 	{
//  993 		return;
//  994 	}
//  995 	else
//  996 	{
//  997 		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_REQUST_SYNC, uwSeq, paddrInfo->ubaNodeAddr, NULL, 0);
        MOVS     R1,#+0
        STR      R1,[SP, #+4]
        STR      R1,[SP, #+0]
        MOV      R3,R0
        LDR.W    R4,??DataTable143_4
        MOV      R2,R5
        MOVS     R1,#+6
        ADDS     R0,R4,#+4
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
//  998 		
//  999 
// 1000 		if (nFramL > 0)
        CMP      R0,#+1
        MOV      R2,R0
        BLT.N    ??gprsSendFireMacSync_0
// 1001 		{
// 1002 			ptxMsg->nLen = nFramL;
        STR      R0,[R4, #+0]
// 1003 			
// 1004 			nFrameL = gprsCodeGetOut0xla(sim900_tx_tran.ubamsg, (const u_char*)ptxMsg->ubamsg,ptxMsg->nLen);
// 1005 			sim900_tx_tran.nLen = nFrameL;
        ADDS     R1,R4,#+4
        LDR.W    R5,??DataTable143_5
        ADDS     R0,R5,#+4
          CFI FunCall gprsCodeGetOut0xla
        BL       gprsCodeGetOut0xla
        STR      R0,[R5, #+0]
// 1006 			//process_post(&sim900a_send_process, sim900_event_send_data,ptxMsg);
// 1007 			process_post(&sim900a_send_process, sim900_event_send_data,&sim900_tx_tran);
        MOV      R2,R5
        LDR.W    R0,??DataTable143_6
        LDRB     R1,[R0, #+1]
        ADDS     R0,R0,#+116
          CFI FunCall process_post
        BL       process_post
// 1008 		
// 1009 			MEM_DUMP(7, "SYNC", ptxMsg->ubamsg, ptxMsg->nLen);
        LDR      R3,[R4, #+0]
        ADDS     R2,R4,#+4
        B.N      ?Subroutine4
// 1010 		}		
// 1011 	}
// 1012 }
??gprsSendFireMacSync_0:
        ADD      SP,SP,#+12
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137:
        DC8      0x4F, 0x4B, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable137_1:
        DC32     sim900_event_resp
// 1013 
// 1014 
// 1015 
// 1016 typedef struct {
// 1017  u_char macSync;
// 1018  u_short sendSeq;
// 1019 }SEQ;
// 1020 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function ctMacSyncCallback
        THUMB
// 1021 static void ctMacSyncCallback(void *ptr)
// 1022 {
ctMacSyncCallback:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+12
          CFI CFA R13+24
// 1023 	SEQ * pSeq = (SEQ *)ptr;
// 1024 	gprsSendFireMacSync(pSeq->macSync, pSeq->sendSeq);
        LDRH     R4,[R0, #+2]
        LDRB     R5,[R0, #+0]
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R3,R0
        CBNZ.N   R5,??ctMacSyncCallback_0
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+0]
        UXTB     R2,R4
        LDR.W    R5,??DataTable143_4
        MOVS     R1,#+6
        ADDS     R0,R5,#+4
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
        CMP      R0,#+1
        MOV      R2,R0
        BLT.N    ??ctMacSyncCallback_0
        STR      R0,[R5, #+0]
        ADDS     R1,R5,#+4
        LDR.W    R4,??DataTable143_5
        ADDS     R0,R4,#+4
          CFI FunCall gprsCodeGetOut0xla
        BL       gprsCodeGetOut0xla
        STR      R0,[R4, #+0]
        MOV      R2,R4
        LDR.W    R0,??DataTable143_6
        LDRB     R1,[R0, #+1]
        ADDS     R0,R0,#+116
          CFI FunCall process_post
        BL       process_post
        LDR      R3,[R5, #+0]
        ADDS     R2,R5,#+4
        B.N      ?Subroutine4
// 1025 }
??ctMacSyncCallback_0:
        ADD      SP,SP,#+12
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable138:
        DC32     ?_24

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+24
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine4:
        ADD      SP,SP,#+12
          CFI CFA R13+12
        POP      {R4,R5,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
        ADR.W    R1,?_49
        MOVS     R0,#+7
          CFI FunCall gprsSendFireMacSync __xstd_dump
          CFI FunCall ctMacSyncCallback __xstd_dump
        B.W      __xstd_dump
          CFI EndBlock cfiBlock22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_49:
        DC8 "SYNC"
        DC8 0, 0, 0
// 1026 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function ctSyncAckCallback
        THUMB
// 1027 static void ctSyncAckCallback(void *ptr)
// 1028 {
ctSyncAckCallback:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
// 1029 	u_short seq = *(u_short *)ptr;
        LDRH     R4,[R0, #+0]
// 1030 	SIM900A_MSG *ptxMsg = &sim900_tx;
// 1031 	NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R3,R0
// 1032 	int nFramL = -1;
// 1033 	int nFrameL = -1;
// 1034 	nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_ACK, seq, paddrInfo->ubaNodeAddr, NULL, 0);
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        STR      R0,[SP, #+0]
        MOV      R2,R4
        LDR.W    R5,??DataTable143_4
        MOVS     R1,#+153
        ADDS     R0,R5,#+4
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
// 1035 	if (nFramL > 0 && gprsState == SIM900A_TCPUDP_CONNECT)
        CMP      R0,#+1
        BLT.N    ??ctSyncAckCallback_0
        LDR.W    R4,??DataTable143_6
        LDRB     R1,[R4, #+10]
        CMP      R1,#+10
        BNE.N    ??ctSyncAckCallback_0
// 1036 	{
// 1037 		ptxMsg->nLen = nFramL;
        STR      R0,[R5, #+0]
// 1038 		XPRINTF((8, "S YNC ACK\r\n"));
        MOVS     R0,#+8
        ADR.W    R1,?_50
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1039 		
// 1040 		nFrameL = gprsCodeGetOut0xla(sim900_tx_tran.ubamsg, (const u_char*)ptxMsg->ubamsg,ptxMsg->nLen);
// 1041 		sim900_tx_tran.nLen = nFrameL;
        LDR.W    R6,??DataTable143_5
        LDR      R2,[R5, #+0]
        ADDS     R1,R5,#+4
        ADDS     R0,R6,#+4
          CFI FunCall gprsCodeGetOut0xla
        BL       gprsCodeGetOut0xla
        STR      R0,[R6, #+0]
// 1042 		process_post(&sim900a_send_process, sim900_event_send_data,&sim900_tx_tran);
        MOV      R2,R6
        LDRB     R1,[R4, #+1]
        ADD      R0,R4,#+116
        ADD      SP,SP,#+8
          CFI CFA R13+16
        B.W      ?Subroutine6
          CFI CFA R13+24
// 1043 		//process_post(&sim900a_send_process, sim900_event_send_data,ptxMsg);
// 1044 	}	
// 1045 }
??ctSyncAckCallback_0:
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139:
        DC32     ?_26

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_1:
        DC32     0x300400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_2:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_3:
        DC32     sim900_event_resp+0xA4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable139_4:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_50:
        DC8 "S YNC ACK\015\012"
// 1046 
// 1047 
// 1048 #define GPRS_ACK_WAIT_TIME	1*1000
// 1049 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function checkPhoneNum
          CFI NoCalls
        THUMB
// 1050 bool checkPhoneNum(const GPRS_WARN_PHONE *pcPhone)
// 1051 {
// 1052 	int i = 0;
checkPhoneNum:
        MOVS     R1,#+0
// 1053 	const u_char *pphone = (const u_char *)pcPhone;
// 1054 	for (i = 0; i < sizeof(*pcPhone); i++)
// 1055 	{
// 1056 		if (pphone[i] != 0x00)
??checkPhoneNum_0:
        LDRB     R2,[R0], #+1
        CBZ.N    R2,??checkPhoneNum_1
// 1057 		{
// 1058 			return true;
??checkPhoneNum_2:
        MOVS     R0,#+1
        BX       LR
// 1059 		}
??checkPhoneNum_1:
        LDRB     R2,[R0], #+1
        CMP      R2,#+0
        ITT      EQ 
        LDRBEQ   R2,[R0], #+1
        CMPEQ    R2,#+0
        ITT      EQ 
        LDRBEQ   R2,[R0], #+1
        CMPEQ    R2,#+0
        BNE.N    ??checkPhoneNum_2
// 1060 	}
        ADDS     R1,R1,#+4
        CMP      R1,#+40
        BCC.N    ??checkPhoneNum_0
// 1061 	return false;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
// 1062 }
// 1063 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function gprsProtocolRxProcess
        THUMB
// 1064 void gprsProtocolRxProcess(const u_char *pcFrame, u_short uwSendSeq , struct etimer *petwait)
// 1065 {
gprsProtocolRxProcess:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R4,R0
        MOV      R6,R1
        MOV      R9,R2
// 1066 	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
// 1067 	const GPRS_PROTOCOL * pGprs = (const GPRS_PROTOCOL *)pcFrame;
// 1068 	u_short uwSeq = pGprs->ubSeqL | (pGprs->ubSeqH << 8);
        LDRB     R0,[R4, #+3]
        LDRB     R1,[R4, #+4]
// 1069 	u_short uwLen = pGprs->ubDataLenL | (pGprs->ubDataLenH<<8);
// 1070 	static GPRS_WARN_PHONE stWarnPhone;
// 1071 	static u_char macSync = 0;
// 1072 	static struct ctimer ctimerMacSync;
// 1073 	static struct ctimer ctimerSyncAck;
// 1074 	static u_short uwSeqSyncAck = 0;
// 1075 	static SEQ stSeq;
// 1076 	
// 1077 	ubWaitAckCount = 0;
        LDR.W    R7,??DataTable143_6
        ORR      R5,R0,R1, LSL #+8
        LDRB     R0,[R4, #+5]
        LDRB     R1,[R4, #+6]
        ORR      R8,R0,R1, LSL #+8
        MOVS     R0,#+0
        STRB     R0,[R7, #+13]
// 1078 	
// 1079 	if (pGprs->ubCmd == GPRS_F_CMD_ACK)
        LDRB     R0,[R4, #+2]
        CMP      R0,#+153
        BNE.N    ??gprsProtocolRxProcess_0
// 1080 	{
// 1081 		XPRINTF((8 , "uwSendSeq = %04x  uwSeq = %04x\n", uwSendSeq, uwSeq ));
        MOV      R3,R5
        MOV      R2,R6
        ADR.W    R1,?_51
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1082 
// 1083 		if (uwSendSeq == uwSeq)
        CMP      R6,R5
        BNE.N    ??gprsProtocolRxProcess_1
// 1084 		{
// 1085 			etimer_stop(petwait);
        MOV      R0,R9
          CFI FunCall etimer_stop
        BL       etimer_stop
// 1086 			stSeq.macSync = macSync;
        LDR.W    R4,??DataTable143_7
// 1087 			stSeq.sendSeq = uwSeq;
// 1088 			//gprsSendFireMacSync(macSync, uwSeq);
// 1089 			ctimer_set(&ctimerMacSync, GPRS_ACK_WAIT_TIME, ctMacSyncCallback, &stSeq);
        LDR.W    R2,??DataTable143_8
        LDRB     R0,[R4, #+0]
        STRB     R0,[R4, #+44]
        STRH     R5,[R4, #+46]
        ADD      R3,R4,#+44
        MOV      R1,#+1000
        ADD      R0,R4,#+856
        B.N      ??gprsProtocolRxProcess_2
// 1090 		}
// 1091 	}
// 1092 	else if (pGprs->ubCmd == GPRS_F_CMD_DATA_SYNC)
??gprsProtocolRxProcess_0:
        CMP      R0,#+3
        BNE.N    ??gprsProtocolRxProcess_3
// 1093 	{
// 1094 		SIM900A_MSG *ptxMsg = &sim900_tx;
// 1095 		static FIRE_NODE_INFO stFireNode;
// 1096 		const FIRE_NODE_INFO *pFireNodeInfo;
// 1097 		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
// 1098 		int nFramL = -1;
// 1099 
// 1100 		//now we sync fire mac addr
// 1101 		if (macSync == 0)
        LDR.W    R6,??DataTable143_7
        LDRB     R0,[R6, #+0]
        CBNZ.N   R0,??gprsProtocolRxProcess_4
// 1102 		{
// 1103 			macSync = 1;
        MOVS     R0,#+1
        STRB     R0,[R6, #+0]
// 1104 		}
// 1105 		ubCount = 0;
??gprsProtocolRxProcess_4:
        MOVS     R0,#+0
        STRB     R0,[R7, #+12]
// 1106 		memset(&stFireNode, 0, sizeof(FIRE_NODE_INFO));
        MOVW     R7,#+802
        MOV      R1,R7
        ADD      R0,R6,#+52
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 1107 
// 1108 		if (uwLen > GPRS_F_MAC_LEN)
        CMP      R8,#+5
        BLT.N    ??gprsProtocolRxProcess_5
// 1109 		{
// 1110 			//memcpy()
// 1111 			pFireNodeInfo = (const FIRE_NODE_INFO *)pGprs->ubaData;
        ADD      R0,R4,#+11
// 1112 			if (pFireNodeInfo->node_num > 0)
        LDRH     R1,[R0, #+0]
        CBZ.N    R1,??gprsProtocolRxProcess_5
// 1113 			{
// 1114 				stFireNode.node_num = pFireNodeInfo->node_num;
        STRH     R1,[R6, #+52]
// 1115 				memcpy(stFireNode.nodeArray, pFireNodeInfo->nodeArray, stFireNode.node_num*4);
        LSLS     R2,R1,#+2
        ADDS     R1,R0,#+2
        ADD      R0,R6,#+54
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1116 				extgdbdevSetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO, 0, (const void *)&stFireNode, sizeof(FIRE_NODE_INFO));
        MOV      R3,R7
        ADD      R2,R6,#+52
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall extgdbdevSetDeviceSettingInfoSt
        BL       extgdbdevSetDeviceSettingInfoSt
// 1117 			}
// 1118 
// 1119 			/*
// 1120 			nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_ACK, uwSeq, paddrInfo->ubaNodeAddr, NULL, 0);
// 1121 			if (nFramL > 0 && gprsState == SIM900A_TCPUDP_CONNECT)
// 1122 			{
// 1123 				ptxMsg->nLen = nFramL;
// 1124 				process_post(&sim900a_send_process, sim900_event_send_data,ptxMsg);
// 1125 			}
// 1126 			*/
// 1127 			
// 1128 		}
// 1129 		uwSeqSyncAck  = uwSeq;
??gprsProtocolRxProcess_5:
        STRH     R5,[R6, #+48]
// 1130 		ctimer_set(&ctimerSyncAck, GPRS_ACK_WAIT_TIME, ctSyncAckCallback, &uwSeqSyncAck);
        ADD      R3,R6,#+48
        LDR.W    R2,??DataTable143_9
        MOV      R1,#+1000
        ADD      R0,R6,#+888
??gprsProtocolRxProcess_2:
        ADD      SP,SP,#+4
          CFI CFA R13+28
        POP      {R4-R9,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall ctimer_set
        B.W      ctimer_set
          CFI R4 Frame(CFA, -28)
          CFI R5 Frame(CFA, -24)
          CFI R6 Frame(CFA, -20)
          CFI R7 Frame(CFA, -16)
          CFI R8 Frame(CFA, -12)
          CFI R9 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+32
// 1131 	}
// 1132 	else if (pGprs->ubCmd == GPRS_F_CMD_WARN_ACK)
??gprsProtocolRxProcess_3:
        CMP      R0,#+5
        BNE.N    ??gprsProtocolRxProcess_1
// 1133 	{
// 1134 
// 1135 		if (uwSendSeq == uwSeq)
        CMP      R6,R5
        ITT      EQ 
        MOVEQ    R0,R9
        BLEQ     etimer_stop
// 1136 		{
// 1137 			etimer_stop(petwait);
// 1138 		}
// 1139 		//clean warn phohe data
// 1140 		memset(&stWarnPhone, 0, sizeof(GPRS_WARN_PHONE));
        LDR.W    R5,??DataTable143_7
        MOVS     R1,#+40
        ADDS     R0,R5,#+4
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 1141 		if (uwLen-GPRS_F_MAC_LEN == 40)
        SUB      R0,R8,#+4
        CMP      R0,#+40
        BNE.N    ??gprsProtocolRxProcess_1
// 1142 		{
// 1143 			memcpy(&stWarnPhone, pGprs->ubaData, 40);
        MOVS     R2,#+40
        ADD      R1,R4,#+11
        ADDS     R0,R5,#+4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1144 			if (checkPhoneNum((const GPRS_WARN_PHONE*) &stWarnPhone))
        MOVS     R0,#+0
        ADDS     R1,R5,#+4
??gprsProtocolRxProcess_6:
        LDRB     R2,[R1], #+1
        CBNZ.N   R2,??gprsProtocolRxProcess_7
        LDRB     R2,[R1], #+1
        CBNZ.N   R2,??gprsProtocolRxProcess_7
        LDRB     R2,[R1], #+1
        CBNZ.N   R2,??gprsProtocolRxProcess_7
        LDRB     R2,[R1], #+1
        CBNZ.N   R2,??gprsProtocolRxProcess_7
        ADDS     R0,R0,#+4
        CMP      R0,#+40
        BCC.N    ??gprsProtocolRxProcess_6
// 1145 			{
// 1146 				process_post(&sim900a_app_process, sim900_event_start_sms_phone, &stWarnPhone);
// 1147 			}
// 1148 		}
// 1149 	}
// 1150 }
        POP      {R0,R4-R9,PC}
??gprsProtocolRxProcess_7:
        LDRB     R1,[R7, #+5]
        ADDS     R2,R5,#+4
        ADD      R0,R7,#+100
        POP      {R3-R9,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall process_post
        B.W      process_post
          CFI R4 Frame(CFA, -28)
          CFI R5 Frame(CFA, -24)
          CFI R6 Frame(CFA, -20)
          CFI R7 Frame(CFA, -16)
          CFI R8 Frame(CFA, -12)
          CFI R9 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+32
??gprsProtocolRxProcess_1:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_51:
        DC8 "uwSendSeq = %04x  uwSeq = %04x\012"
// 1151 
// 1152 
// 1153 
// 1154 static bool nodeIsNotInList(const u_char * pcMac)
// 1155 {
// 1156 	NODE_INFO *pnode = NULL;
// 1157 	
// 1158 	for(pnode = (NODE_INFO *)endNodeListHead(); pnode != NULL; pnode = (NODE_INFO *)endNodeListNext(pnode))
// 1159 	{
// 1160 		if (mem_cmp(pnode->ubaHWGGMacAddr, pcMac, HWGG_NODE_MAC_LEN) == 0)
// 1161 		{
// 1162 			return false;
// 1163 		}
// 1164 	}
// 1165 
// 1166 	return true;
// 1167 }
// 1168 
// 1169 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function fillNotNetNodeInfo
        THUMB
// 1170 void fillNotNetNodeInfo(FIRE_NODE_INFO *pFireInfo)
// 1171 {
fillNotNetNodeInfo:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOV      R4,R0
// 1172 	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
// 1173 	//const FIRE_NODE_INFO *pFireNode = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);	
// 1174 	int i = 0;
        MOVS     R7,#+0
        MOV      R5,R0
// 1175 	NODE_INFO *pnode = NULL;
// 1176 	int j = 0; 
        MOV      R8,R7
// 1177 
// 1178 
// 1179 	//clear fire node info
// 1180 	if (pFireInfo != NULL)
        CBZ.N    R4,??fillNotNetNodeInfo_0
// 1181 	{
// 1182 		memset(pFireInfo, 0, sizeof(FIRE_NODE_INFO));
        MOVW     R1,#+802
        MOV      R0,R4
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
// 1183 	}
// 1184 
// 1185 	if (pfireNodeInfo->node_num == 0)
??fillNotNetNodeInfo_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??fillNotNetNodeInfo_1
// 1186 	{
// 1187 		return;
// 1188 	}
// 1189 
// 1190 	for(pnode = (NODE_INFO *)endNodeListHead(); pnode != NULL; pnode = (NODE_INFO *)endNodeListNext(pnode))
          CFI FunCall endNodeListHead
        BL       endNodeListHead
        MOV      R6,R0
        ADR.W    R9,?_53
        ADR.W    R10,?_52
        B.N      ??fillNotNetNodeInfo_2
// 1191 	{
// 1192 		if (pnode->nodeNetState == HWGG_NODE_OUT_NET)
??fillNotNetNodeInfo_3:
        LDRB     R0,[R6, #+4]
        CBNZ.N   R0,??fillNotNetNodeInfo_4
// 1193 		{
// 1194 			memcpy(pFireInfo->nodeArray[i++].ubaNodeAddr, pnode->ubaHWGGMacAddr, HWGG_NODE_MAC_LEN);
        ADD      R0,R4,R7, LSL #+2
        ADDS     R0,R0,#+2
        ADDS     R7,R7,#+1
        MOVS     R2,#+4
        ADDS     R1,R6,#+5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1195 			XPRINTF((10, "i1 = %d\n", i));
        MOV      R2,R7
        MOV      R1,R10
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1196 			MEM_DUMP(10, "OUT1", pnode->ubaHWGGMacAddr, HWGG_NODE_MAC_LEN);
        MOVS     R3,#+4
        ADDS     R2,R6,#+5
        MOV      R1,R9
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1197 		}
// 1198 	}
??fillNotNetNodeInfo_4:
        MOV      R0,R6
          CFI FunCall endNodeListNext
        BL       endNodeListNext
        MOV      R6,R0
??fillNotNetNodeInfo_2:
        CMP      R6,#+0
        BNE.N    ??fillNotNetNodeInfo_3
// 1199 
// 1200 	/*node is in flash but not in ram list, is not in net*/
// 1201 	for (j = 0; j < pfireNodeInfo->node_num; j++)
??fillNotNetNodeInfo_5:
        LDRH     R0,[R5, #+0]
        CMP      R8,R0
        BGE.N    ??fillNotNetNodeInfo_6
// 1202 	{
// 1203 		if ( nodeIsNotInList((const u_char*)pfireNodeInfo->nodeArray[j].ubaNodeAddr))
        ADD      R6,R5,R8, LSL #+2
        ADD      R9,R6,#+2
          CFI FunCall endNodeListHead
        BL       endNodeListHead
        B.N      ??fillNotNetNodeInfo_7
??fillNotNetNodeInfo_8:
        MOVS     R2,#+4
        MOV      R1,R9
        ADD      R0,R10,#+5
          CFI FunCall mem_cmp
        BL       mem_cmp
        CBZ.N    R0,??fillNotNetNodeInfo_9
        MOV      R0,R10
          CFI FunCall endNodeListNext
        BL       endNodeListNext
??fillNotNetNodeInfo_7:
        MOVS     R10,R0
        BNE.N    ??fillNotNetNodeInfo_8
// 1204 		{
// 1205 			memcpy(pFireInfo->nodeArray[i++].ubaNodeAddr, pfireNodeInfo->nodeArray[j].ubaNodeAddr, HWGG_NODE_MAC_LEN);
        ADD      R0,R4,R7, LSL #+2
        ADDS     R0,R0,#+2
        ADDS     R7,R7,#+1
        MOVS     R2,#+4
        ADDS     R1,R6,#+2
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1206 			XPRINTF((10, "i = %d\n", i));
        MOV      R2,R7
        ADR.W    R1,?_54
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1207 			MEM_DUMP(10, "OUT", pfireNodeInfo->nodeArray[j].ubaNodeAddr, HWGG_NODE_MAC_LEN);
        MOVS     R3,#+4
        ADDS     R2,R6,#+2
        ADR.N    R1,??DataTable142  ;; "OUT"
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1208 		}
// 1209 	}
??fillNotNetNodeInfo_9:
        ADD      R8,R8,#+1
        B.N      ??fillNotNetNodeInfo_5
// 1210 
// 1211 	pFireInfo->node_num = i;
??fillNotNetNodeInfo_6:
        STRH     R7,[R4, #+0]
// 1212 }
??fillNotNetNodeInfo_1:
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock26

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable141:
        DC32     sim900_rx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_53:
        DC8 "OUT1"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_52:
        DC8 "i1 = %d\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_54:
        DC8 "i = %d\012"
// 1213 
// 1214 
// 1215 
// 1216 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function sim900a_reconnect
        THUMB
// 1217 void sim900a_reconnect(struct etimer *petHeart)
// 1218 {
sim900a_reconnect:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
// 1219 	//gprs_process = &sim900a_check_process;
// 1220 	gprs_process = &sim900a_hard_init;
        LDR.W    R5,??DataTable143_6
        ADD      R0,R5,#+36
        STR      R0,[R5, #+32]
// 1221 	gprsState = SIM900A_TCPUDP_CLOSE_T;
        MOVS     R0,#+9
        STRB     R0,[R5, #+10]
// 1222 	setNetState(NET_CONNECT_NONE);
        MOVS     R0,#+0
        STRB     R0,[R5, #+11]
// 1223 	netModeSet(NET_CONNECT_NONE);
          CFI FunCall netModeSet
        BL       netModeSet
// 1224 	//sim900a_send_cmd("AT+CPOWD=1");
// 1225 	process_start(&sim900a_hard_init, NULL);
        MOVS     R1,#+0
        ADD      R0,R5,#+36
          CFI FunCall process_start
        BL       process_start
// 1226 	XPRINTF((8, "ERROR\n"));
        ADR.W    R1,?_56
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1227 	etimer_stop(petHeart);
        MOV      R0,R4
        POP      {R1,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall etimer_stop
        B.W      etimer_stop
          CFI EndBlock cfiBlock27
// 1228 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable142:
        DC8      "OUT"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable142_1:
        DC32     ?_40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_56:
        DC8 "ERROR\012"
        DC8 0
// 1229 
// 1230 
// 1231 
// 1232 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function sim900a_app_handler
        THUMB
// 1233 void sim900a_app_handler(process_event_t ev, process_data_t data)
// 1234 {
sim900a_app_handler:
        PUSH     {R4-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+28
// 1235 	static u_char ubGprsRespType = SIM900A_RESP_STATUS;
// 1236 	static u_char ubaFireWarnBuf[32] = {0x00};
// 1237 	static u_char ubSendCmd;
// 1238 	static u_char ubSendState = SIM900A_SEND_NONE;
// 1239 	static struct etimer et_heart;
// 1240 	static struct etimer et_wait_ack;
// 1241 	static FIRE_NODE_INFO stFireNodeInfo;
// 1242 	static u_short uwCurrentSeq = 0;
// 1243 	
// 1244 	
// 1245 	//XPRINTF((10, "grps app\r\n"));
// 1246 
// 1247 	//revceive data process
// 1248 	if (ev == sim900_event_resp && data != NULL)
        LDR.W    R4,??DataTable143_6
        MOV      R7,R1
        LDRB     R1,[R4, #+0]
        CMP      R0,R1
        SUB      SP,SP,#+20
          CFI CFA R13+48
        BNE.W    ??sim900a_app_handler_0
        CMP      R7,#+0
        BEQ.W    ??sim900a_app_handler_0
// 1249 	{
// 1250 		//tcp udp closed, connect again
// 1251 		if(sim900a_check_cmd((const char*)data,"CLOSED"))
        ADR.W    R1,?_57
        MOV      R0,R7
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??sim900a_app_handler_1
// 1252 		{
// 1253 			sim900a_reconnect(&et_heart);
        LDR.W    R0,??DataTable145
          CFI FunCall sim900a_reconnect
        BL       sim900a_reconnect
// 1254 			XPRINTF((10, "closed rec\n"));
        ADR.W    R1,?_58
        B.N      ??sim900a_app_handler_2
// 1255 		}
// 1256 		//send error, connect again
// 1257 		else if (sim900a_check_cmd((const char*)data,"ERROR"))
??sim900a_app_handler_1:
        ADR.W    R1,?_59
        MOV      R0,R7
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??sim900a_app_handler_3
// 1258 		{
// 1259 			sim900a_reconnect(&et_heart);
        LDR.W    R0,??DataTable145
          CFI FunCall sim900a_reconnect
        BL       sim900a_reconnect
// 1260 			XPRINTF((10, "error rec\n"));
        ADR.W    R1,?_60
        B.N      ??sim900a_app_handler_2
// 1261 		}
// 1262 		//send error, connect again
// 1263 		else if (sim900a_check_cmd(((const char*)data),"SEND FAIL"))
??sim900a_app_handler_3:
        ADR.W    R1,?_61
        MOV      R0,R7
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??sim900a_app_handler_4
// 1264 		{
// 1265 			sim900a_reconnect(&et_heart);
        LDR.W    R0,??DataTable145
          CFI FunCall sim900a_reconnect
        BL       sim900a_reconnect
// 1266 			XPRINTF((10, "send fail rec\n"));
        ADR.W    R1,?_62
        B.N      ??sim900a_app_handler_2
// 1267 		}
// 1268 		//have call. connect again
// 1269 		else if (sim900a_check_cmd(((const char*)data),"RING"))
??sim900a_app_handler_4:
        ADR.W    R1,?_63
        MOV      R0,R7
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??sim900a_app_handler_5
// 1270 		{
// 1271 			sim900a_send_cmd("ATH");
        ADR.N    R0,??sim900a_app_handler_6  ;; "ATH"
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
// 1272 			sim900a_reconnect(&et_heart);
        LDR.W    R0,??DataTable145
          CFI FunCall sim900a_reconnect
        BL       sim900a_reconnect
// 1273 			XPRINTF((10, "RING rec\n"));
        ADR.W    R1,?_65
??sim900a_app_handler_2:
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        B.N      ??sim900a_app_handler_7
// 1274 		}
// 1275 		//> send data start flag
// 1276 		else
// 1277 		{
// 1278 			
// 1279 			const u_char *pHead = NULL;
// 1280 			SIM900A_MSG *pMsg = (SIM900A_MSG *)((u_char *)data - 4);
// 1281 			pHead = (const u_char *)gprsProtocolFindHead((const u_char *)data, pMsg->nLen);
??sim900a_app_handler_5:
        LDR      R1,[R7, #-4]
        MOV      R0,R7
          CFI FunCall gprsProtocolFindHead
        BL       gprsProtocolFindHead
        MOVS     R6,R0
// 1282 			if (pHead != NULL)
        BEQ.N    ??sim900a_app_handler_7
// 1283 			{
// 1284 				if (gprsProtocolCheck(pHead))
          CFI FunCall gprsProtocolCheck
        BL       gprsProtocolCheck
        CBZ.N    R0,??sim900a_app_handler_7
// 1285 				{
// 1286 					const GPRS_PROTOCOL *pGprs = (const GPRS_PROTOCOL *)pHead;
// 1287 					u_short uwLen = (pGprs->ubDataLenL | (pGprs->ubDataLenH<<8)) + 10;
        LDRB     R0,[R6, #+5]
        LDRB     R1,[R6, #+6]
// 1288 					memset(&sim900_app, 0, sizeof(SIM900A_MSG));
        LDR.W    R5,??DataTable147
        ORR      R0,R0,R1, LSL #+8
        ADDS     R0,R0,#+10
        UXTH     R8,R0
        MOVW     R1,#+1364
        ADD      R0,R5,#+808
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 1289 					sim900_app.nLen = uwLen;
// 1290 					memcpy(sim900_app.ubamsg, pHead, uwLen);
        ADD      R9,R5,#+812
        STR      R8,[R5, #+808]
        MOV      R2,R8
        MOV      R1,R6
        MOV      R0,R9
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1291 					MEM_DUMP(7, "<-Rx", sim900_app.ubamsg, uwLen);
        MOV      R3,R8
        MOV      R2,R9
        ADR.W    R1,?_66
        MOVS     R0,#+7
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1292 					gprsProtocolRxProcess((const u_char *) sim900_app.ubamsg,uwCurrentSeq, &et_wait_ack);
        LDRH     R1,[R5, #+0]
        ADDW     R2,R5,#+2220
        MOV      R0,R9
          CFI FunCall gprsProtocolRxProcess
        BL       gprsProtocolRxProcess
// 1293 				}
// 1294 			}
// 1295 			
// 1296 		}	
// 1297 		
// 1298 		if (sim900a_check_cmd((const char*)data,"\r\n>"))
??sim900a_app_handler_7:
        ADR.N    R1,??sim900a_app_handler_6+0x4  ;; "\r\n>"
        MOV      R0,R7
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??sim900a_app_handler_8
// 1299 		{
// 1300 			const u_char sendFlag[] = "\r\n>";
        ADR.W    R1,?_68
        LDR      R2,[R1, #0]
// 1301 			process_post(&sim900a_send_process, sim900_event_send_data_wait, (void *)sendFlag);
        LDRB     R1,[R4, #+2]
        ADD      R0,SP,#+0
        STR      R2,[R0, #+0]
        ADD      R0,R4,#+116
        ADD      R2,SP,#+0
          CFI FunCall process_post
        BL       process_post
// 1302 		}
// 1303 
// 1304 		/*
// 1305 		if (sim900a_check_cmd((const char*)data,"+IPD"))
// 1306 		{
// 1307 			u_char *pDataStar = NULL;
// 1308 			u_short ubDataLen = 0;
// 1309 			u_char ubassicNum[8] = {0x00};
// 1310 			u_char *pdata = sim900a_check_cmd((const char*)data,"+IPD,");
// 1311 			u_char *pdataEnd = sim900a_check_cmd((const char*)data,":");
// 1312 			const u_char *pHead = NULL;
// 1313 
// 1314 			SIM900A_MSG *pMsg = (SIM900A_MSG *)((u_char *)data - 4);
// 1315 			MEM_DUMP(10, "RMSG", pMsg->ubamsg, pMsg->nLen);
// 1316 
// 1317 
// 1318 			#if 0
// 1319 			pDataStar = pdata + strlen("+IPD,");
// 1320 			memcpy(ubassicNum, pDataStar, pdataEnd-pDataStar);
// 1321 			//MEM_DUMP(10, "LEN", ubassicNum, pdataEnd-pDataStar);
// 1322 			ubDataLen = Asc2Int((const u_char *)ubassicNum);
// 1323 			XPRINTF((12, "len = %d\r\n", ubDataLen));
// 1324 			memset(&sim900_app, 0, sizeof(SIM900A_MSG));
// 1325 			sim900_app.nLen = ubDataLen;
// 1326 			memcpy(sim900_app.ubamsg, pdataEnd+1, ubDataLen);
// 1327 			//MEM_DUMP(7, "<-rx", sim900_app.ubamsg, ubDataLen);
// 1328 			if (gprsProtocolCheck((const u_char *) sim900_app.ubamsg))
// 1329 			{
// 1330 				MEM_DUMP(7, "<-rx", sim900_app.ubamsg, ubDataLen);
// 1331 				gprsProtocolRxProcess((const u_char *) sim900_app.ubamsg,uwCurrentSeq, &et_wait_ack);
// 1332 			}
// 1333 			#else
// 1334 			pHead = (const u_char *)gprsProtocolFindHead((const u_char *)data, pMsg->nLen);
// 1335 			if (pHead != NULL)
// 1336 			{
// 1337 				if (gprsProtocolCheck(pHead))
// 1338 				{
// 1339 					const GPRS_PROTOCOL *pGprs = (const GPRS_PROTOCOL *)pHead;
// 1340 					u_short uwLen = (pGprs->ubDataLenL | (pGprs->ubDataLenH<<8)) + 10;
// 1341 					memset(&sim900_app, 0, sizeof(SIM900A_MSG));
// 1342 					sim900_app.nLen = uwLen;
// 1343 					memcpy(sim900_app.ubamsg, pHead, uwLen);
// 1344 					MEM_DUMP(7, "<-Rx", sim900_app.ubamsg, uwLen);
// 1345 					gprsProtocolRxProcess((const u_char *) sim900_app.ubamsg,uwCurrentSeq, &et_wait_ack);
// 1346 				}
// 1347 			}			
// 1348 			#endif
// 1349 		}
// 1350 		*/
// 1351 
// 1352 		//finish send data
// 1353 		//if (sim900a_check_cmd((const char*)data,"SEND OK") || sim900a_check_cmd((const char*)data,"OK"))
// 1354 		if (sim900a_check_cmd((const char*)data,"OK"))
??sim900a_app_handler_8:
        ADR.N    R1,??sim900a_app_handler_6+0x8  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R7
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CMP      R0,#+0
        BEQ.W    ??sim900a_app_handler_9
// 1355 		{
// 1356 			process_post(&sim900a_send_process, sim900_event_send_data_wait, data);
        LDRB     R1,[R4, #+2]
        MOV      R2,R7
        ADD      R0,R4,#+116
        B.N      ??sim900a_app_handler_10
// 1357 			ubSendState = SIM900A_SEND_FINISH;
// 1358 		}
// 1359 	}
// 1360 
// 1361 	else if (ev == sim900_event_heart)
??sim900a_app_handler_0:
        LDRB     R1,[R4, #+3]
        CMP      R0,R1
        BNE.N    ??sim900a_app_handler_11
// 1362 	{
// 1363 		SIM900A_MSG *ptxMsg = &sim900_tx;
// 1364 		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R7,R0
// 1365 		int nFramL = -1;
// 1366 		//XPRINTF((10, "heart1"));
// 1367 		fillNotNetNodeInfo(&stFireNodeInfo);
        LDR.W    R5,??DataTable147
        ADDS     R0,R5,#+4
          CFI FunCall fillNotNetNodeInfo
        BL       fillNotNetNodeInfo
// 1368 		if (stFireNodeInfo.node_num > 0 )
        LDRH     R2,[R4, #+22]
        LDRH     R0,[R5, #+4]
        LDR.W    R6,??DataTable143_4
        CBZ.N    R0,??sim900a_app_handler_12
// 1369 		{
// 1370 
// 1371 			nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_HEART, uwSeq, paddrInfo->ubaNodeAddr, (const u_char *)&stFireNodeInfo, stFireNodeInfo.node_num*4+2);
        LSLS     R0,R0,#+2
        ADDS     R0,R0,#+2
        UXTH     R0,R0
        STR      R0,[SP, #+4]
        ADDS     R0,R5,#+4
        B.N      ??sim900a_app_handler_13
// 1372 		}
// 1373 		else
// 1374 		{
// 1375 			nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_HEART, uwSeq, paddrInfo->ubaNodeAddr, NULL, 0);
??sim900a_app_handler_12:
        STR      R0,[SP, #+4]
??sim900a_app_handler_13:
        STR      R0,[SP, #+0]
        MOV      R3,R7
        MOVS     R1,#+1
        ADDS     R0,R6,#+4
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
// 1376 		}
// 1377 		if (nFramL > 0 && gprsState == SIM900A_TCPUDP_CONNECT)
        CMP      R0,#+1
        BLT.N    ??sim900a_app_handler_14
        LDRB     R1,[R4, #+10]
        CMP      R1,#+10
        BNE.N    ??sim900a_app_handler_14
// 1378 		{
// 1379 			int nFrameL = -1;
// 1380 			ptxMsg->nLen = nFramL;
        STR      R0,[R6, #+0]
// 1381 			uwCurrentSeq = uwSeq;
// 1382 			ubSendCmd = GPRS_F_CMD_HEART;
// 1383 			//process_post(&sim900a_send_process, sim900_event_send_data,ptxMsg);
// 1384 			MEM_DUMP(6,"SRC",ptxMsg->ubamsg, ptxMsg->nLen);
        ADDS     R2,R6,#+4
        LDRH     R0,[R4, #+22]
        LDR      R3,[R6, #+0]
        STRH     R0,[R5, #+0]
        ADR.N    R1,??sim900a_app_handler_6+0xC  ;; "SRC"
        MOVS     R0,#+6
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1385 			nFrameL = gprsCodeGetOut0xla(sim900_tx_tran.ubamsg, (const u_char*)ptxMsg->ubamsg,ptxMsg->nLen);
// 1386 			sim900_tx_tran.nLen = nFrameL;
        LDR.W    R7,??DataTable143_5
        LDR      R2,[R6, #+0]
        ADDS     R1,R6,#+4
        ADDS     R0,R7,#+4
          CFI FunCall gprsCodeGetOut0xla
        BL       gprsCodeGetOut0xla
        STR      R0,[R7, #+0]
// 1387 			process_post(&sim900a_send_process, sim900_event_send_data,&sim900_tx_tran);
        MOV      R2,R7
        LDRB     R1,[R4, #+1]
        ADD      R0,R4,#+116
          CFI FunCall process_post
        BL       process_post
// 1388 			
// 1389 			etimer_set(&et_wait_ack, 10*1000);
        MOVW     R1,#+10000
        ADDW     R0,R5,#+2220
          CFI FunCall etimer_set
        BL       etimer_set
// 1390 			ubSendState = SIM900A_SEND_START;
// 1391 		}
// 1392 		//1 send heart frame
// 1393 		//2 reset etimer
// 1394 		ubCount++;
??sim900a_app_handler_14:
        LDRB     R0,[R4, #+12]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+12]
// 1395 		etimer_set(&et_heart, 30*1000);
        MOVW     R1,#+30000
        ADDW     R0,R5,#+2204
        B.N      ??sim900a_app_handler_15
// 1396 	}
// 1397 
// 1398 	//send fire warn data to pc
// 1399 	else if (ev == sim900_event_fire_warn && data != NULL)
??sim900a_app_handler_11:
        LDRB     R1,[R4, #+4]
        CMP      R0,R1
        BNE.N    ??sim900a_app_handler_16
        CMP      R7,#+0
        BEQ.W    ??sim900a_app_handler_17
// 1400 	{
// 1401 		SIM900A_MSG *ptxMsg = &sim900_tx;
// 1402 		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R8,R0
// 1403 		u_char ubaWarn[5] = 0;
        ADD      R0,SP,#+8
        MOVS     R1,#+0
        MOVS     R2,#+0
// 1404 		int nFramL = -1;
// 1405 		const FIRE_NODE * pFireNode = (const FIRE_NODE *)data;
// 1406 		if (((u_long)ubaFireWarnBuf)!=((u_long)data))
        LDR.W    R5,??DataTable147
        STM      R0!,{R1,R2}
        ADDW     R6,R5,#+2172
        CMP      R6,R7
        BEQ.N    ??sim900a_app_handler_18
// 1407 		{
// 1408 			MEM_DUMP(10, "warn", data, pFireNode->ubLen);
        LDRB     R3,[R7, #+0]
        ADR.W    R1,?_71
        MOV      R2,R7
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1409 			memcpy(ubaFireWarnBuf, data, pFireNode->ubLen);
        LDRB     R2,[R7, #+0]
        MOV      R1,R7
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1410 		}
// 1411 		memcpy(ubaWarn, pFireNode->ubaSrcMac, HWGG_HEAD_END_CRC_LEN);
??sim900a_app_handler_18:
        MOVS     R2,#+4
        ADDS     R1,R7,#+1
        ADD      R0,SP,#+8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1412 		ubaWarn[4] = pFireNode->ubCmd;
        LDRB     R0,[R7, #+9]
// 1413 		uwSeq++;
// 1414 		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_WARN, uwSeq, paddrInfo->ubaNodeAddr, ubaWarn, 5);
        LDR.N    R6,??DataTable143_4
        STRB     R0,[SP, #+12]
        MOV      R3,R8
        LDRH     R0,[R4, #+22]
        ADDS     R2,R0,#+1
        MOVS     R0,#+5
        STR      R0,[SP, #+4]
        STRH     R2,[R4, #+22]
        ADD      R0,SP,#+8
        STR      R0,[SP, #+0]
        UXTH     R2,R2
        MOVS     R1,#+2
        ADDS     R0,R6,#+4
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
// 1415 		if (nFramL > 0 && gprsState == SIM900A_TCPUDP_CONNECT)
        CMP      R0,#+1
        BLT.N    ??sim900a_app_handler_19
        LDRB     R2,[R4, #+10]
        CMP      R2,#+10
        BNE.N    ??sim900a_app_handler_19
// 1416 		{
// 1417 			int nFrameL = -1;
// 1418 			ptxMsg->nLen = nFramL;
// 1419 			uwCurrentSeq = uwSeq;
        LDRH     R1,[R4, #+22]
        STR      R0,[R6, #+0]
        STRH     R1,[R5, #+0]
// 1420 			ubSendCmd = GPRS_F_CMD_WARN;
// 1421 			
// 1422 			nFrameL = gprsCodeGetOut0xla(sim900_tx_tran.ubamsg, (const u_char*)ptxMsg->ubamsg,ptxMsg->nLen);
// 1423 			sim900_tx_tran.nLen = nFrameL;
        MOV      R2,R0
        LDR.N    R7,??DataTable143_5
        ADDS     R1,R6,#+4
        ADDS     R0,R7,#+4
          CFI FunCall gprsCodeGetOut0xla
        BL       gprsCodeGetOut0xla
        STR      R0,[R7, #+0]
// 1424 			process_post(&sim900a_send_process, sim900_event_send_data,&sim900_tx_tran);
        MOV      R2,R7
        LDRB     R1,[R4, #+1]
        ADD      R0,R4,#+116
          CFI FunCall process_post
        BL       process_post
// 1425 			
// 1426 			//process_post(&sim900a_send_process, sim900_event_send_data,ptxMsg);
// 1427 			etimer_set(&et_wait_ack, 10*1000);
        MOVW     R1,#+10000
        ADDW     R0,R5,#+2220
          CFI FunCall etimer_set
        BL       etimer_set
// 1428 			ubSendState = SIM900A_SEND_START;
// 1429 		}
// 1430 		//ALARM_LED(0);
// 1431 		FAULT_LED(0);
??sim900a_app_handler_19:
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.W    R0,??DataTable150  ;; 0x40010c00
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
// 1432 		BUZZER(0);
        LDR.W    R0,??DataTable150_1  ;; 0x40011000
        MOVS     R2,#+0
        MOVS     R1,#+32
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
// 1433 		swEnable( );
          CFI FunCall swEnable
        BL       swEnable
// 1434 	}
// 1435 
// 1436 	else if (ev == sim900_event_fire_tran && data != NULL)
// 1437 	{
// 1438 		SIM900A_MSG *ptxMsg = &sim900_tx;
// 1439 		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
// 1440 		int nFramL = -1;
// 1441 		const APP_485_DATA *p485 = (const APP_485_DATA *)data;
// 1442 		MEM_DUMP(7, "TRAN", p485->ubaData, p485->ubLen);
// 1443 		uwSeq++;
// 1444 		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_TRAN, uwSeq, paddrInfo->ubaNodeAddr, (const u_char *)p485->ubaData, p485->ubLen);
// 1445 		
// 1446 		if (nFramL > 0 && gprsState == SIM900A_TCPUDP_CONNECT)
// 1447 		{
// 1448 			int nFrameL = -1;
// 1449 			ptxMsg->nLen = nFramL;
// 1450 			uwCurrentSeq = uwSeq;
// 1451 			ubSendCmd = GPRS_F_CMD_TRAN;
// 1452 
// 1453 			nFrameL = gprsCodeGetOut0xla(sim900_tx_tran.ubamsg, (const u_char*)ptxMsg->ubamsg,ptxMsg->nLen);
// 1454 			sim900_tx_tran.nLen = nFrameL;
// 1455 			process_post(&sim900a_send_process, sim900_event_send_data,&sim900_tx_tran);
// 1456 			
// 1457 			//process_post(&sim900a_send_process, sim900_event_send_data,ptxMsg);
// 1458 			etimer_set(&et_wait_ack, 10*1000);
// 1459 			ubSendState = SIM900A_SEND_START;
// 1460 		}
// 1461 	}
// 1462 
// 1463 	else if (ev == sim900_event_start_sms_phone && data != NULL)
// 1464 	{
// 1465 		etimer_stop(&et_heart);
// 1466 		gprs_process = &gprs_sms_phone_process;
// 1467 		gprsState = SIM900A_TCPUDP_CLOSE_T;
// 1468 		netModeSet(NET_CONNECT_NONE);
// 1469 		if (getNetState() != NET_CONNECT_ETH)
// 1470 		{
// 1471 			setNetState(NET_CONNECT_NONE);
// 1472 		}
// 1473 		process_post(&gprs_sms_phone_process, sim900_event_send_sms_phone, data);
// 1474 	}
// 1475 
// 1476 	else if (ev == PROCESS_EVENT_TIMER && data == &et_heart)
// 1477 	{
// 1478 		NET_MODE *pnetMode = (NET_MODE *)netModeGet( );
// 1479 		process_post(&sim900a_app_process, sim900_event_heart, NULL);
// 1480 		uwSeq++;
// 1481 		if (pnetMode->netMode == NET_CONNECT_NONE)
// 1482 		{
// 1483 			
// 1484 			XPRINTF((10, "et_heart check\n"));
// 1485 			gprs_process = &sim900a_hard_init;
// 1486 			gprsState = SIM900A_TCPUDP_CLOSE_T;
// 1487 			setNetState(NET_CONNECT_NONE);
// 1488 			//sim900a_send_cmd("AT+CPOWD=1");
// 1489 			process_start(&sim900a_hard_init, NULL);
// 1490 		}
// 1491 	}
// 1492 
// 1493 	else if (ev == PROCESS_EVENT_TIMER && data == &et_wait_ack)
// 1494 	{
// 1495 		XPRINTF((12, "ack time out\n"));
// 1496 		//ubCount++;
// 1497 	}
// 1498 
// 1499 }
        B.N      ?Subroutine7
??sim900a_app_handler_16:
        LDRB     R1,[R4, #+9]
        CMP      R0,R1
        BNE.N    ??sim900a_app_handler_20
        CMP      R7,#+0
        BEQ.N    ??sim900a_app_handler_17
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R5,R0
        LDRB     R3,[R7, #+0]
        ADR.W    R1,?_72
        ADDS     R2,R7,#+1
        MOVS     R0,#+7
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        LDRH     R0,[R4, #+22]
        LDR.N    R6,??DataTable143_4
        ADDS     R2,R0,#+1
        STRH     R2,[R4, #+22]
        MOV      R3,R5
        LDRB     R0,[R7, #+0]
        STR      R0,[SP, #+4]
        UXTH     R2,R2
        ADDS     R0,R7,#+1
        STR      R0,[SP, #+0]
        MOVS     R1,#+4
        ADDS     R0,R6,#+4
          CFI FunCall gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
        CMP      R0,#+1
        BLT.N    ??sim900a_app_handler_9
        LDRB     R2,[R4, #+10]
        CMP      R2,#+10
        BNE.N    ??sim900a_app_handler_9
        LDR.W    R5,??DataTable147
        LDRH     R1,[R4, #+22]
        STR      R0,[R6, #+0]
        STRH     R1,[R5, #+0]
        MOV      R2,R0
        LDR.N    R7,??DataTable143_5
        ADDS     R1,R6,#+4
        ADDS     R0,R7,#+4
          CFI FunCall gprsCodeGetOut0xla
        BL       gprsCodeGetOut0xla
        STR      R0,[R7, #+0]
        MOV      R2,R7
        LDRB     R1,[R4, #+1]
        ADD      R0,R4,#+116
          CFI FunCall process_post
        BL       process_post
        MOVW     R1,#+10000
        ADDW     R0,R5,#+2220
??sim900a_app_handler_15:
          CFI FunCall etimer_set
        BL       etimer_set
        B.N      ?Subroutine7
??sim900a_app_handler_20:
        LDRB     R1,[R4, #+5]
        CMP      R0,R1
        BNE.N    ??sim900a_app_handler_17
        CBZ.N    R7,??sim900a_app_handler_17
        LDR.W    R0,??DataTable145
          CFI FunCall etimer_stop
        BL       etimer_stop
        MOVS     R0,#+9
        STRB     R0,[R4, #+10]
        ADD      R5,R4,#+148
        STR      R5,[R4, #+32]
        MOVS     R0,#+0
          CFI FunCall netModeSet
        BL       netModeSet
        LDRB     R0,[R4, #+11]
        CMP      R0,#+2
        ITT      NE 
        MOVNE    R0,#+0
        STRBNE   R0,[R4, #+11]
        LDRB     R1,[R4, #+6]
        MOV      R2,R7
        MOV      R0,R5
??sim900a_app_handler_10:
          CFI FunCall process_post
        BL       process_post
        B.N      ?Subroutine7
??sim900a_app_handler_17:
        CMP      R0,#+136
        BNE.N    ??sim900a_app_handler_9
        LDR.W    R5,??DataTable147
        ADDW     R0,R5,#+2204
        CMP      R7,R0
        BNE.N    ??sim900a_app_handler_21
          CFI FunCall netModeGet
        BL       netModeGet
        MOV      R5,R0
        LDRB     R1,[R4, #+3]
        MOVS     R2,#+0
        ADD      R0,R4,#+100
          CFI FunCall process_post
        BL       process_post
        LDRH     R0,[R4, #+22]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+22]
        LDRB     R0,[R5, #+0]
        CBNZ.N   R0,??sim900a_app_handler_9
        ADR.W    R1,?_73
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADD      R0,R4,#+36
        STR      R0,[R4, #+32]
        MOVS     R1,#+0
        MOVS     R0,#+9
        STRB     R0,[R4, #+10]
        MOVS     R0,#+0
        STRB     R0,[R4, #+11]
        ADD      R0,R4,#+36
          CFI FunCall process_start
        BL       process_start
        B.N      ?Subroutine7
        Nop      
        DATA
??sim900a_app_handler_6:
        DC8      "ATH"
        DC8      "\r\n>"
        DC8      0x4F, 0x4B, 0x00, 0x00
        DC8      "SRC"
        THUMB
??sim900a_app_handler_21:
        ADDW     R0,R5,#+2220
        CMP      R7,R0
        BNE.N    ??sim900a_app_handler_9
        ADR.W    R1,?_74
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
          CFI EndBlock cfiBlock28
??sim900a_app_handler_9:
        REQUIRE ?Subroutine7
        ;; // Fall through to label ?Subroutine7

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls sim900a_app_handler
          CFI CFA R13+48
          CFI R4 Frame(CFA, -28)
          CFI R5 Frame(CFA, -24)
          CFI R6 Frame(CFA, -20)
          CFI R7 Frame(CFA, -16)
          CFI R8 Frame(CFA, -12)
          CFI R9 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine7:
        ADD      SP,SP,#+20
          CFI CFA R13+28
        POP      {R4-R9,PC}       ;; return
          CFI EndBlock cfiBlock29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_57:
        DC8 "CLOSED"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_58:
        DC8 "closed rec\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_59:
        DC8 "ERROR"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_60:
        DC8 "error rec\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_61:
        DC8 "SEND FAIL"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_62:
        DC8 "send fail rec\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_63:
        DC8 "RING"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_65:
        DC8 "RING rec\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_66:
        DC8 "<-Rx"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_68:
        DC8 "\015\012>"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_71:
        DC8 "warn"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_72:
        DC8 "TRAN"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_73:
        DC8 "et_heart check\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_74:
        DC8 "ack time out\012"
        DC8 0, 0
// 1500 
// 1501 //sim900a_app_process

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function process_thread_sim900a_app_process
        THUMB
// 1502 PROCESS_THREAD(sim900a_app_process, ev, data)
// 1503 {
process_thread_sim900a_app_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R1
        MOV      R1,R2
// 1504 	PROCESS_BEGIN( );
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_sim900a_app_process_0
        MOVW     R3,#+1508
        CMP      R2,R3
        BEQ.N    ??process_thread_sim900a_app_process_1
        B.N      ??process_thread_sim900a_app_process_2
// 1505 	//sim900a_send_cmd_wait_ack("AT+CIPSTATUS",&et_gprs_status,500);
// 1506 	while(1)
// 1507 	{
// 1508 		PROCESS_YIELD( );
??process_thread_sim900a_app_process_0:
        MOVW     R0,#+1508
        B.N      ?Subroutine1
// 1509 		sim900a_app_handler(ev, data);
??process_thread_sim900a_app_process_1:
          CFI FunCall sim900a_app_handler
        BL       sim900a_app_handler
        B.N      ??process_thread_sim900a_app_process_0
// 1510 	}
// 1511 	PROCESS_END( );
??process_thread_sim900a_app_process_2:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock30
// 1512 }
// 1513 
// 1514 
// 1515 
// 1516 
// 1517 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function gprsSmsPhoneHandler
        THUMB
// 1518 void gprsSmsPhoneHandler(process_event_t ev, process_data_t data)
// 1519 {
gprsSmsPhoneHandler:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 1520 	static struct etimer et_wait_close;
// 1521 	static u_char ubCloseFlag = 0;
// 1522 	static GPRS_WARN_PHONE stPhone;
// 1523 
// 1524 	if (ev == sim900_event_send_sms_phone && data != NULL)
        LDR.N    R5,??DataTable143_6
        MOV      R4,R1
        LDRB     R1,[R5, #+6]
        CMP      R0,R1
        BNE.N    ??gprsSmsPhoneHandler_0
        CMP      R4,#+0
        BEQ.N    ??gprsSmsPhoneHandler_1
// 1525 	{
// 1526 		XPRINTF((12, "SEND SMS AND PHONE\r\n"));
        ADR.W    R1,?_75
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1527 		//clear stphone
// 1528 		memset(&stPhone, 0, sizeof(GPRS_WARN_PHONE));
        LDR.W    R6,??DataTable150_4
        MOVS     R1,#+40
        MOV      R0,R6
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 1529 		stPhone = *(GPRS_WARN_PHONE*)data;
        MOV      R0,R6
        MOV      R1,R4
        MOVS     R2,#+40
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 1530 		MEM_DUMP(12, "PHON", &stPhone, sizeof(GPRS_WARN_PHONE));
        MOVS     R3,#+40
        MOV      R2,R6
        ADR.W    R1,?_76
        MOVS     R0,#+12
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1531 		sim900a_send_cmd("AT+CIPCLOSE=1");
        ADR.W    R0,?_15
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
// 1532 		sim900a_send_cmd("AT+CIPSHUT=1");
        ADR.W    R0,?_16
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
// 1533 		etimer_set(&et_wait_close, 5000);
        ADD      R0,R6,#+44
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVW     R1,#+5000
          CFI FunCall etimer_set
        B.W      etimer_set
          CFI R4 Frame(CFA, -16)
          CFI R5 Frame(CFA, -12)
          CFI R6 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
// 1534 	}
// 1535 	else if (ev == sim900_event_resp && data != NULL)
??gprsSmsPhoneHandler_0:
        LDRB     R1,[R5, #+0]
        CMP      R0,R1
        BNE.N    ??gprsSmsPhoneHandler_1
        CBZ.N    R4,??gprsSmsPhoneHandler_1
// 1536 	{
// 1537 		//make sure tcp udp closed
// 1538 		if(sim900a_check_cmd((const char*)data,"CLOSE OK"))
        ADR.W    R1,?_77
        MOV      R0,R4
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??gprsSmsPhoneHandler_2
// 1539 		{
// 1540 			ubCloseFlag = 1;
        LDR.W    R6,??DataTable150_4
// 1541 			XPRINTF((12, "gpr1 is close\r\n"));
        ADR.W    R1,?_78
        MOVS     R0,#+1
        STRB     R0,[R6, #+40]
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1542 			etimer_stop(&et_wait_close);
        ADD      R0,R6,#+44
          CFI FunCall etimer_stop
        BL       etimer_stop
// 1543 			process_post(&sim900a_send_process, sim900_event_send_sms, &stPhone);
        B.N      ??gprsSmsPhoneHandler_3
// 1544 		}
// 1545 		else if (sim900a_check_cmd((const char*)data,">"))
??gprsSmsPhoneHandler_2:
        ADR.N    R1,??DataTable143_3  ;; ">"
        MOV      R0,R4
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??gprsSmsPhoneHandler_4
// 1546 		{
// 1547 			process_post(&sim900a_send_process, sim900_event_send_sms_wait, data);
        LDRB     R1,[R5, #+8]
        MOV      R2,R4
        B.N      ??gprsSmsPhoneHandler_5
// 1548 		}
// 1549 		else if (sim900a_check_cmd((const char*)data,"+CMGS"))
??gprsSmsPhoneHandler_4:
        ADR.W    R1,?_80
        MOV      R0,R4
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??gprsSmsPhoneHandler_6
// 1550 		{
// 1551 			XPRINTF((12, "SMSOK\n"));
        ADR.W    R1,?_81
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1552 			process_post(&sim900a_send_process, sim900_event_send_sms_wait, data);
        LDRB     R1,[R5, #+8]
        MOV      R2,R4
        B.N      ??gprsSmsPhoneHandler_5
// 1553 		}
// 1554 	}
// 1555 	else if (ev == PROCESS_EVENT_TIMER && data == &et_wait_close)
??gprsSmsPhoneHandler_1:
        CMP      R0,#+136
        ITTT     EQ 
        LDREQ.W  R6,??DataTable150_4
        ADDEQ    R0,R6,#+44
        CMPEQ    R4,R0
        BNE.N    ??gprsSmsPhoneHandler_6
// 1556 	{
// 1557 		if (ubCloseFlag == 0)
        LDRB     R0,[R6, #+40]
        CBNZ.N   R0,??gprsSmsPhoneHandler_3
// 1558 		{
// 1559 			sim900a_send_cmd("AT+CIPCLOSE=1");
        ADR.W    R0,?_15
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
// 1560 			sim900a_send_cmd("AT+CIPSHUT=1");
        ADR.W    R0,?_16
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
// 1561 		}
// 1562 		process_post(&sim900a_send_process, sim900_event_send_sms, &stPhone);
??gprsSmsPhoneHandler_3:
        LDRB     R1,[R5, #+7]
        MOV      R2,R6
??gprsSmsPhoneHandler_5:
        ADD      R0,R5,#+116
// 1563 	}
        B.N      ?Subroutine6
// 1564 }
??gprsSmsPhoneHandler_6:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock31

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143:
        DC32     ?_41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_1:
        DC32     ?_15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_2:
        DC32     ?_16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_3:
        DC8      ">",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_4:
        DC32     sim900_tx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_5:
        DC32     sim900_tx_tran

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_6:
        DC32     sim900_event_resp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_7:
        DC32     ??macSync

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_8:
        DC32     ctMacSyncCallback

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable143_9:
        DC32     ctSyncAckCallback

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_75:
        DC8 "SEND SMS AND PHONE\015\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_76:
        DC8 "PHON"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_77:
        DC8 "CLOSE OK"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_78:
        DC8 "gpr1 is close\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_81:
        DC8 "SMSOK\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+16
          CFI R4 Frame(CFA, -16)
          CFI R5 Frame(CFA, -12)
          CFI R6 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine6:
        POP      {R4-R6,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI FunCall ctSyncAckCallback process_post
          CFI FunCall gprsSmsPhoneHandler process_post
        B.W      process_post
          CFI EndBlock cfiBlock32
// 1565 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function process_thread_gprs_sms_phone_process
        THUMB
// 1566 PROCESS_THREAD(gprs_sms_phone_process, ev, data)
// 1567 {
process_thread_gprs_sms_phone_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R1
        MOV      R1,R2
// 1568 
// 1569 	PROCESS_BEGIN( );
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_gprs_sms_phone_process_0
        MOVW     R3,#+1573
        CMP      R2,R3
        BEQ.N    ??process_thread_gprs_sms_phone_process_1
        B.N      ??process_thread_gprs_sms_phone_process_2
// 1570 	//关闭连接
// 1571 	while (1)
// 1572 	{
// 1573 		PROCESS_YIELD( );
??process_thread_gprs_sms_phone_process_0:
        MOVW     R0,#+1573
        B.N      ?Subroutine1
// 1574 		gprsSmsPhoneHandler(ev, data);
??process_thread_gprs_sms_phone_process_1:
          CFI FunCall gprsSmsPhoneHandler
        BL       gprsSmsPhoneHandler
        B.N      ??process_thread_gprs_sms_phone_process_0
// 1575 	}
// 1576 	PROCESS_END( );
??process_thread_gprs_sms_phone_process_2:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock33
// 1577 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls process_thread_gprs_sms_phone_process
          CFI NoCalls process_thread_sim900a_app_process
          CFI NoCalls process_thread_sim900a_send_process
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine1:
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R4,PC}
          CFI EndBlock cfiBlock34

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls process_thread_gprs_sms_phone_process
          CFI NoCalls process_thread_sim900a_app_process
          CFI NoCalls process_thread_sim900a_send_process
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock35
// 1578 
// 1579 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function asiicToUTF8
        THUMB
// 1580 int asiicToUTF8(u_char *pUTF8, const u_char *pasiic)
// 1581 {
asiicToUTF8:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
// 1582 	u_char ubasiicLen = strlen(pasiic);
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        UXTB     R6,R0
// 1583 	u_char utf8Len = 0;
// 1584 	int i = 0;
// 1585 	XPRINTF((10, "asiic len = %d\n", ubasiicLen));
        MOV      R2,R6
        ADR.W    R1,?_82
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1586 	for (i = 0; i < ubasiicLen; i++)
        CMP      R6,#+1
        BLT.N    ??asiicToUTF8_0
        MOV      R0,R4
        MOV      R1,R6
// 1587 	{
// 1588 		pUTF8[2*i] = 0x00;
??asiicToUTF8_1:
        MOVS     R2,#+0
        STRB     R2,[R0], #+1
// 1589 		pUTF8[2*i+1] = pasiic[i];
// 1590 	}
        SUBS     R1,R1,#+1
        LDRB     R2,[R5], #+1
        STRB     R2,[R0], #+1
        BNE.N    ??asiicToUTF8_1
// 1591 	utf8Len = ubasiicLen<<1;
??asiicToUTF8_0:
        LSLS     R5,R6,#+1
        UXTB     R5,R5
// 1592 	MEM_DUMP(8, "UTF8", pUTF8, utf8Len);
        MOV      R3,R5
        MOV      R2,R4
        ADR.W    R1,?_83
        MOVS     R0,#+8
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1593 	return utf8Len;
        MOV      R0,R5
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock36
// 1594 }
// 1595 
// 1596 
// 1597 #define GPRS_TIME_WAIT_SMS		(20*1000)
// 1598 #define GPRS_TIME_WAIT_PHONE	(50*1000)
// 1599 #define GPRS_TIME_WAIT_SEND		(5*1000)
// 1600 #define GPRS_TIME_WAIT_BACK_TCP	(140*1000)
// 1601 
// 1602 #define GPRS_NO_ACK_MAX		100 //mark mark
// 1603 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function sim900a_send_handler
        THUMB
// 1604 void sim900a_send_handler(process_event_t ev, process_data_t data)
// 1605 {
sim900a_send_handler:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
// 1606 	static const SIM900A_MSG *psendMsg = NULL;
// 1607 	volatile static u_char ubPhoneIndex = 0;
// 1608 	static u_char ubPhone = 0;
// 1609 	static u_char ubUTF8Buf[32] = {0x00};
// 1610 	static u_char smsDestN[16] ={0x00};
// 1611 	static u_char ubasiicBuf[64] = {0x00};
// 1612 	static u_char ubcmdBuf[128] = {0x00};
// 1613 	static u_char sendState = SIM900A_SEND_NONE;
// 1614 	static struct etimer et_send;
// 1615 	static struct etimer et_wait_sms_ok;
// 1616 	static struct etimer et_phone;
// 1617 	static struct etimer et_back_udp;
// 1618 	
// 1619 	//static u_char sendLockFlag = 0;
// 1620 	
// 1621 	static u_char ubSendFailed = 0;
// 1622 	static GPRS_WARN_PHONE stPhone;
// 1623 	static u_char ubmp3buf[16] = {0x00};
// 1624 	int nmp3L = 0;
// 1625 
// 1626 	u_char ubLen;
// 1627 	int nLen = 0;
// 1628 
// 1629 	if (ev == sim900_event_send_data && data != NULL)
        LDR.W    R6,??DataTable150_5
        MOV      R5,R1
        LDRB     R1,[R6, #+1]
        CMP      R0,R1
        SUB      SP,SP,#+16
          CFI CFA R13+40
        BNE.N    ??sim900a_send_handler_0
        CMP      R5,#+0
        BEQ.W    ??sim900a_send_handler_1
// 1630 	{
// 1631 		
// 1632 		NET_MODE *pnetMode = (NET_MODE *)netModeGet( );
          CFI FunCall netModeGet
        BL       netModeGet
// 1633 		psendMsg = (const SIM900A_MSG *)data;
        LDR.W    R7,??DataTable150_6
// 1634 		
// 1635 		XPRINTF((8, "START SEND gprs\n"));
        ADR.W    R1,?_84
        ADD      R4,R7,#+40
        MOV      R6,R0
        STR      R5,[R4, #+4]
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1636 		MEM_DUMP(8, "TXDA", psendMsg->ubamsg, psendMsg->nLen);		
        LDR      R0,[R4, #+4]
        ADR.W    R1,?_85
        LDR      R3,[R0, #+0]
        ADDS     R2,R0,#+4
        MOVS     R0,#+8
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1637 		if (pnetMode->netMode == NET_CONNECT_SIM900)
        LDRB     R0,[R6, #+0]
        CMP      R0,#+1
        BNE.W    ??sim900a_send_handler_2
// 1638 		{
// 1639 			sim900a_send_cmd("AT+CIPSEND");
        ADR.W    R0,?_86
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
// 1640 			etimer_set(&et_send, GPRS_TIME_WAIT_SEND);
        MOVW     R1,#+5000
        ADD      R0,R7,#+288
        B.N      ??sim900a_send_handler_3
// 1641 		}
// 1642 	}
// 1643 	else if (ev == sim900_event_send_data_wait && data != NULL)
??sim900a_send_handler_0:
        LDRB     R1,[R6, #+2]
        CMP      R0,R1
        BNE.N    ??sim900a_send_handler_1
        CMP      R5,#+0
        BEQ.W    ??sim900a_send_handler_4
// 1644 	{
// 1645 		if (sim900a_check_cmd((const char*)data,">"))
        ADR.N    R1,??sim900a_send_handler_5  ;; ">"
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CMP      R0,#+0
        ITTTT    NE 
        LDRNE.W  R7,??DataTable150_6
        ADDNE    R4,R7,#+40
        LDRNE    R0,[R4, #+4]
        CMPNE    R0,#+0
// 1646 		{
// 1647 			if (psendMsg != NULL)
        BEQ.N    ??sim900a_send_handler_6
// 1648 			{
// 1649 				int nDeL = 0;
// 1650 				MEM_DUMP(6,"->gp", psendMsg->ubamsg, psendMsg->nLen);
        LDR      R3,[R0, #+0]
        ADR.W    R1,?_87
        ADDS     R2,R0,#+4
        MOVS     R0,#+6
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1651 				//while(sendLockFlag);
// 1652 				//sendLockFlag = 1;
// 1653 				//nFrameL = gprsCodeGetOut0xla(sim900_tx_tran.ubamsg, (const u_char*)psendMsg->ubamsg,psendMsg->nLen);
// 1654 				uart4_send_bytes(psendMsg->ubamsg, psendMsg->nLen);
        LDR      R0,[R4, #+4]
        LDR      R1,[R0], #+4
          CFI FunCall uart4_send_bytes
        BL       uart4_send_bytes
// 1655 				//uart4_send_bytes(sim900_tx_tran.ubamsg, nFrameL);
// 1656 				uart4_send_char(0x1a);
        MOVS     R0,#+26
          CFI FunCall uart4_send_char
        BL       uart4_send_char
// 1657 				//MEM_DUMP(6,"->EA", sim900_tx_tran.ubamsg, nFrameL);
// 1658 				nDeL = gprsDecodeFrame(sim900_tx.ubamsg, (const u_char*)psendMsg->ubamsg, psendMsg->nLen);
        LDR      R0,[R4, #+4]
        LDR.W    R4,??DataTable150_7
        LDR      R2,[R0, #+0]
        ADDS     R1,R0,#+4
        ADDS     R0,R4,#+4
          CFI FunCall gprsDecodeFrame
        BL       gprsDecodeFrame
        MOV      R3,R0
// 1659 				MEM_DUMP(6,"->1A", sim900_tx.ubamsg, nDeL);
        ADDS     R2,R4,#+4
        ADR.W    R1,?_88
        MOVS     R0,#+6
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 1660 				sendState = SIM900A_SEND_START;
// 1661 			}
// 1662 		}
// 1663 		//if (sim900a_check_cmd((const char*)data,"SEND OK"))
// 1664 		if (sim900a_check_cmd((const char*)data,"OK"))
??sim900a_send_handler_6:
        ADR.N    R1,??sim900a_send_handler_5+0x4  ;; 0x4F, 0x4B, 0x00, 0x00
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CMP      R0,#+0
        BEQ.W    ??sim900a_send_handler_2
// 1665 		{
// 1666 			XPRINTF((8, "SEND OK\n"));
        ADR.W    R1,?_89
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1667 			etimer_stop(&et_send);
        LDR.W    R7,??DataTable150_6
        ADD      R0,R7,#+288
          CFI FunCall etimer_stop
        BL       etimer_stop
// 1668 			psendMsg = NULL;
        ADD      R4,R7,#+40
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
// 1669 			sendState = SIM900A_SEND_FINISH;
// 1670 			ubSendFailed = 0;
        STRB     R0,[R4, #+2]
// 1671 
// 1672 			//sendLockFlag = 0;
// 1673 			//
// 1674 			if (ubWaitAckCount >= GPRS_NO_ACK_MAX)
        LDRB     R0,[R6, #+13]
        CMP      R0,#+100
        BLT.N    ??sim900a_send_handler_7
// 1675 			{
// 1676 				gprs_process = &sim900a_hard_init;
        ADD      R0,R6,#+36
        STR      R0,[R6, #+32]
// 1677 				gprsState = SIM900A_TCPUDP_CLOSE_T;
        MOVS     R0,#+9
        STRB     R0,[R6, #+10]
// 1678 				setNetState(NET_CONNECT_NONE);
        MOVS     R0,#+0
        STRB     R0,[R6, #+11]
// 1679 				netModeSet(NET_CONNECT_NONE);
          CFI FunCall netModeSet
        BL       netModeSet
// 1680 				//sim900a_send_cmd("AT+CPOWD=1");
// 1681 				process_start(&sim900a_hard_init, NULL);	
        MOVS     R1,#+0
        ADD      R0,R6,#+36
          CFI FunCall process_start
        BL       process_start
// 1682 				XPRINTF((8, "sim900a reconnect agian\n"));
        ADR.W    R1,?_90
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
// 1683 				ubWaitAckCount = 0;
        MOVS     R0,#+0
        STRB     R0,[R6, #+13]
// 1684 			}
// 1685 			ubWaitAckCount++;
??sim900a_send_handler_7:
        LDRB     R0,[R6, #+13]
        ADDS     R0,R0,#+1
        STRB     R0,[R6, #+13]
// 1686 		}
// 1687 	}
// 1688 	//send sms
// 1689 	else if (ev == sim900_event_send_sms && data != NULL)
// 1690 	{
// 1691 		if ((u_long)&stPhone != (u_long)data)
// 1692 		{
// 1693 			stPhone = *(GPRS_WARN_PHONE*)data;
// 1694 		}
// 1695 		ubPhoneIndex = 0;
// 1696 		ubPhone = 0;
// 1697 			
// 1698 		//MEM_DUMP(10, "SMSH", &stPhone, sizeof(GPRS_WARN_PHONE));
// 1699 		memset(ubUTF8Buf, 0, sizeof(ubUTF8Buf));
// 1700 		memset(ubasiicBuf, 0, sizeof(ubUTF8Buf));
// 1701 		memset(ubcmdBuf, 0, sizeof(ubcmdBuf));
// 1702 		memset(smsDestN, 0, sizeof(smsDestN));
// 1703 
// 1704 		#if 0
// 1705 		ubLen = asiicToUTF8(ubUTF8Buf, stPhone.ubaPhoneA);
// 1706 		nLen = hex2ascii((const uint8 *)ubUTF8Buf, ubasiicBuf, ubLen);
// 1707 		XPRINTF((10, "asic nlen =%d\n", strlen(ubasiicBuf)));
// 1708 		xsprintf(ubcmdBuf,"AT+CMGS=\"%s\"",ubasiicBuf);
// 1709 		sim900a_send_cmd(ubcmdBuf);
// 1710 		#else
// 1711 		smsPnoneByteReverse(ubUTF8Buf, (const u_char*)smsCenterPhone);
// 1712 		smsPnoneByteReverse(smsDestN, (const u_char *)stPhone.ubaPhoneA);
// 1713 		xsprintf(ubcmdBuf,"%s%s%s%s%s%s", smsCenterPrex,ubUTF8Buf, smsDestPrex, smsDestN, smsDestCodeLen,warnMsg);
// 1714 		XPRINTF((8, "warnsms=%s\n", ubcmdBuf));
// 1715 		sim900a_send_cmd("AT+CMGS=27");
// 1716 		#endif
// 1717 		
// 1718 		etimer_set(&et_wait_sms_ok, GPRS_TIME_WAIT_SMS);
// 1719 		etimer_set(&et_back_udp, GPRS_TIME_WAIT_BACK_TCP);//set time come back to udp or tcp mode
// 1720 		ubPhoneIndex++;
// 1721 
// 1722 		nmp3L = mp3fillCmdOneByteParam(ubmp3buf, 0x33, 0x02);
// 1723 		MEM_DUMP(10, "M0->",ubmp3buf, nmp3L);
// 1724 		uart5_send_bytes(ubmp3buf, nmp3L);
// 1725 	}
// 1726 	else if (ev == sim900_event_send_sms_wait && data != NULL)
// 1727 	{
// 1728 		//start send msg
// 1729 		if (sim900a_check_cmd((const char*)data,">"))
// 1730 		{
// 1731 			//uart4_send_bytes(warnMsg, strlen(warnMsg));
// 1732 			uart4_send_bytes(ubcmdBuf, strlen(ubcmdBuf));
// 1733 			uart4_send_char(0x1a);
// 1734 			sendState = SIM900A_SEND_START;
// 1735 		}
// 1736 		//send ok
// 1737 		else if (sim900a_check_cmd((const char*)data,"+CMGS"))
// 1738 		{
// 1739 			if (ubPhoneIndex == 1)
// 1740 			{
// 1741 				XPRINTF((10, "sms21-------------------------\n"));
// 1742 				ubPhoneIndex++;	
// 1743 				etimer_set(&et_wait_sms_ok, GPRS_TIME_WAIT_SMS);
// 1744 
// 1745 				memset(ubUTF8Buf, 0, sizeof(ubUTF8Buf));
// 1746 				memset(ubasiicBuf, 0, sizeof(ubUTF8Buf));
// 1747 				memset(ubcmdBuf, 0, sizeof(ubcmdBuf));
// 1748 				memset(smsDestN, 0, sizeof(smsDestN));
// 1749 				
// 1750 				#if 0
// 1751 				ubLen = asiicToUTF8(ubUTF8Buf, stPhone.ubaPhoneB);
// 1752 				nLen = hex2ascii((const uint8 *)ubUTF8Buf, ubasiicBuf, ubLen);
// 1753 				XPRINTF((10, "asic nlen =%d\n", strlen(ubasiicBuf)));
// 1754 				xsprintf(ubcmdBuf,"AT+CMGS=\"%s\"",ubasiicBuf);
// 1755 				sim900a_send_cmd(ubcmdBuf);
// 1756 				#else
// 1757 				smsPnoneByteReverse(ubUTF8Buf, (const u_char*)smsCenterPhone);
// 1758 				smsPnoneByteReverse(smsDestN, (const u_char *)stPhone.ubaPhoneB);
// 1759 				xsprintf(ubcmdBuf,"%s%s%s%s%s%s", smsCenterPrex,ubUTF8Buf, smsDestPrex, smsDestN, smsDestCodeLen,warnMsg);
// 1760 				XPRINTF((8, "warnsms=%s\n", ubcmdBuf));
// 1761 				sim900a_send_cmd("AT+CMGS=27");	
// 1762 				#endif
// 1763 			}
// 1764 			else
// 1765 			{
// 1766 				XPRINTF((10, "start1 phone\n"));
// 1767 				XPRINTF((10, "pono11111-------------------------\n"));
// 1768 				ubPhone++;
// 1769 				xsprintf(ubcmdBuf,"ATD%s;",stPhone.ubaPhoneA);
// 1770 				etimer_stop(&et_wait_sms_ok);
// 1771 				sim900a_send_cmd(ubcmdBuf);
// 1772 				etimer_set(&et_phone, GPRS_TIME_WAIT_PHONE);
// 1773 
// 1774 				nmp3L = mp3fillCmdNoParam(ubmp3buf, 0x11);
// 1775 				MEM_DUMP(10, "M1->",ubmp3buf, nmp3L);
// 1776 				uart5_send_bytes(ubmp3buf, nmp3L);
// 1777 			}
// 1778 			
// 1779 		}
// 1780 	}
// 1781 
// 1782 	else if (ev == PROCESS_EVENT_TIMER && data == &et_send)
// 1783 	{
// 1784 		XPRINTF((8, "UDP SEND TIME OUT\n"));
// 1785 		if (ubSendFailed >= 3)
// 1786 		{
// 1787 			gprs_process = &sim900a_hard_init;
// 1788 			gprsState = SIM900A_TCPUDP_CLOSE_T;
// 1789 			process_start(&sim900a_hard_init, NULL);
// 1790 			XPRINTF((10, "et_send out\n"));
// 1791 			ubSendFailed = 0;
// 1792 		}
// 1793 		ubSendFailed++;
// 1794 	}
// 1795 
// 1796 	else if (ev == PROCESS_EVENT_TIMER && data == &et_wait_sms_ok)
// 1797 	{
// 1798 		//send 1 failed
// 1799 		XPRINTF((10, "ubPhoneIndex = %d\n", ubPhoneIndex));
// 1800 		if (ubPhoneIndex == 1)
// 1801 		{
// 1802 			XPRINTF((10, "ubPhoneIndex = %d\n", ubPhoneIndex));
// 1803 			XPRINTF((10, "sms22-------------------------\n"));
// 1804 			ubPhoneIndex++;
// 1805 			
// 1806 			memset(ubUTF8Buf, 0, sizeof(ubUTF8Buf));
// 1807 			memset(ubasiicBuf, 0, sizeof(ubUTF8Buf));
// 1808 			memset(ubcmdBuf, 0, sizeof(ubcmdBuf));
// 1809 			memset(smsDestN, 0, sizeof(smsDestN));
// 1810 			
// 1811 			#if 0
// 1812 			ubLen = asiicToUTF8(ubUTF8Buf, stPhone.ubaPhoneB);
// 1813 			nLen = hex2ascii((const uint8 *)ubUTF8Buf, ubasiicBuf, ubLen);
// 1814 			XPRINTF((10, "asic nlen =%d\n", strlen(ubasiicBuf)));
// 1815 			xsprintf(ubcmdBuf,"AT+CMGS=\"%s\"",ubasiicBuf);
// 1816 			sim900a_send_cmd(ubcmdBuf);
// 1817 			#else
// 1818 			smsPnoneByteReverse(ubUTF8Buf, (const u_char*)smsCenterPhone);
// 1819 			smsPnoneByteReverse(smsDestN, (const u_char *)stPhone.ubaPhoneB);
// 1820 			xsprintf(ubcmdBuf,"%s%s%s%s%s%s", smsCenterPrex,ubUTF8Buf, smsDestPrex, smsDestN, smsDestCodeLen,warnMsg);
// 1821 			XPRINTF((8, "warnsms=%s\n", ubcmdBuf));
// 1822 			sim900a_send_cmd("AT+CMGS=27");				
// 1823 			#endif
// 1824 			
// 1825 			etimer_set(&et_wait_sms_ok, GPRS_TIME_WAIT_SMS);
// 1826 		}
// 1827 
// 1828 		//first phone failed
// 1829 		else
// 1830 		{
// 1831 			XPRINTF((10, "pono1-------------------------\n"));
// 1832 			sim900a_send_cmd("ATH");
// 1833 			xsprintf(ubcmdBuf,"ATD%s;",stPhone.ubaPhoneA);
// 1834 			sim900a_send_cmd(ubcmdBuf);
// 1835 			etimer_set(&et_phone, GPRS_TIME_WAIT_PHONE);
// 1836 			XPRINTF((10, "start2 phone\n"));
// 1837 			
// 1838 			nmp3L = mp3fillCmdNoParam(ubmp3buf, 0x11);
// 1839 			MEM_DUMP(10, "M2->",ubmp3buf, nmp3L);
// 1840 			uart5_send_bytes(ubmp3buf, nmp3L);
// 1841 
// 1842 		}
// 1843 	}
// 1844 	else if (ev == PROCESS_EVENT_TIMER && data == &et_back_udp)
// 1845 	{
// 1846 		//sim900a_tcpudp_con_process
// 1847 		//gprs_process = &sim900a_hard_init;
// 1848 		//gprsState = SIM900A_TCPUDP_CLOSE_T;
// 1849 		//process_start(&sim900a_hard_init, NULL);
// 1850 		
// 1851 		gprs_process = &sim900a_tcpudp_con_process;
// 1852 		gprsState = SIM900A_TCPUDP_CLOSE_T;
// 1853 		process_start(&sim900a_tcpudp_con_process, NULL);
// 1854 		
// 1855 		ubPhoneIndex = 0;
// 1856 		XPRINTF((10, "et_back_udp out\n"));
// 1857 
// 1858 		nmp3L = mp3fillCmdNoParam(ubmp3buf, 0x1e);
// 1859 		MEM_DUMP(10, "M3->",ubmp3buf, nmp3L);
// 1860 		uart5_send_bytes(ubmp3buf, nmp3L);
// 1861 		
// 1862 	}
// 1863 	else if (ev == PROCESS_EVENT_TIMER && data == &et_phone)
// 1864 	{
// 1865 		//
// 1866 		XPRINTF((10, "start phone 2\n"));
// 1867 		sim900a_send_cmd("ATH");
// 1868 		xsprintf(ubcmdBuf,"ATD%s;",stPhone.ubaPhoneB);
// 1869 		//etimer_stop(&et_wait_sms_ok);
// 1870 		sim900a_send_cmd(ubcmdBuf);
// 1871 		nmp3L = mp3fillCmdNoParam(ubmp3buf, 0x11);
// 1872 		MEM_DUMP(10, "M2->",ubmp3buf, nmp3L);
// 1873 		uart5_send_bytes(ubmp3buf, nmp3L);		
// 1874 	}
// 1875 }
        B.N      ?Subroutine8
??sim900a_send_handler_1:
        LDRB     R1,[R6, #+7]
        CMP      R0,R1
        BNE.N    ??sim900a_send_handler_8
        CMP      R5,#+0
        BEQ.W    ??sim900a_send_handler_4
        LDR.W    R7,??DataTable150_6
        CMP      R7,R5
        BEQ.N    ??sim900a_send_handler_9
        MOV      R0,R7
        MOV      R1,R5
        MOVS     R2,#+40
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
??sim900a_send_handler_9:
        MOVS     R0,#+0
        ADD      R1,R7,#+40
        STRB     R0,[R7, #+40]
        STRB     R0,[R1, #+1]
        MOVS     R1,#+32
        ADD      R0,R7,#+48
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        MOVS     R1,#+32
        ADD      R0,R7,#+96
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        ADD      R5,R7,#+160
        MOVS     R1,#+128
        MOV      R0,R5
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        ADD      R0,R7,#+80
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOV      R3,R1
        MOV      R4,R1
        STM      R0!,{R1-R4}
        ADD      R1,R6,#+180
        ADD      R0,R7,#+48
          CFI FunCall smsPnoneByteReverse
        BL       smsPnoneByteReverse
        MOV      R1,R7
        ADD      R0,R7,#+80
          CFI FunCall smsPnoneByteReverse
        BL       smsPnoneByteReverse
        ADR.W    R0,warnMsg
        ADR.W    R2,smsCenterPrex
        ADR.W    R1,?_91
        STR      R0,[SP, #+12]
        ADD      R3,R7,#+48
        ADR.W    R0,smsDestCodeLen
        STR      R0,[SP, #+8]
        ADD      R0,R7,#+80
        STR      R0,[SP, #+4]
        ADR.W    R0,smsDestPrex
        STR      R0,[SP, #+0]
        MOV      R0,R5
          CFI FunCall xsprintf
        BL       xsprintf
        MOV      R2,R5
        ADR.W    R1,?_92
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADR.W    R0,?_93
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVW     R1,#+20000
        ADD      R0,R7,#+304
          CFI FunCall etimer_set
        BL       etimer_set
        LDR.W    R1,??DataTable150_8  ;; 0x222e0
        ADD      R0,R7,#+336
          CFI FunCall etimer_set
        BL       etimer_set
        LDRB     R0,[R7, #+40]
        ADDS     R0,R0,#+1
        STRB     R0,[R7, #+40]
        ADD      R4,R7,#+352
        MOVS     R2,#+2
        MOVS     R1,#+51
        MOV      R0,R4
          CFI FunCall mp3fillCmdOneByteParam
        BL       mp3fillCmdOneByteParam
        MOV      R5,R0
        MOV      R3,R5
        MOV      R2,R4
        ADR.W    R1,?_94
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        MOV      R1,R5
        MOV      R0,R4
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uart5_send_bytes
        B.W      uart5_send_bytes
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
??sim900a_send_handler_8:
        LDRB     R1,[R6, #+8]
        CMP      R0,R1
        BNE.W    ??sim900a_send_handler_4
        CMP      R5,#+0
        BEQ.W    ??sim900a_send_handler_4
        ADR.N    R1,??sim900a_send_handler_5  ;; ">"
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??sim900a_send_handler_10
        LDR.W    R7,??DataTable150_6
        ADD      R5,R7,#+160
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R1,R0
        MOV      R0,R5
          CFI FunCall uart4_send_bytes
        BL       uart4_send_bytes
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R0,#+26
          CFI FunCall uart4_send_char
        B.W      uart4_send_char
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
??sim900a_send_handler_10:
        ADR.W    R1,?_80
        MOV      R0,R5
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CMP      R0,#+0
        BEQ.W    ??sim900a_send_handler_2
        LDR.W    R7,??DataTable150_6
        LDRB     R0,[R7, #+40]
        CMP      R0,#+1
        ADD      R8,R7,#+304
        ADD      R5,R7,#+160
        BNE.N    ??sim900a_send_handler_11
        ADR.W    R1,?_95
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDRB     R0,[R7, #+40]
        ADDS     R0,R0,#+1
        STRB     R0,[R7, #+40]
        MOVW     R1,#+20000
        MOV      R0,R8
          CFI FunCall etimer_set
        BL       etimer_set
        MOVS     R1,#+32
        ADD      R0,R7,#+48
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        MOVS     R1,#+32
        ADD      R0,R7,#+96
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        MOVS     R1,#+128
        MOV      R0,R5
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        ADD      R0,R7,#+80
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOV      R3,R1
        MOV      R4,R1
        STM      R0!,{R1-R4}
        ADD      R1,R6,#+180
        ADD      R0,R7,#+48
          CFI FunCall smsPnoneByteReverse
        BL       smsPnoneByteReverse
        ADD      R1,R7,#+20
        ADD      R0,R7,#+80
          CFI FunCall smsPnoneByteReverse
        BL       smsPnoneByteReverse
        ADR.W    R0,warnMsg
        ADR.W    R2,smsCenterPrex
        ADR.W    R1,?_91
        STR      R0,[SP, #+12]
        ADD      R3,R7,#+48
        ADR.W    R0,smsDestCodeLen
        STR      R0,[SP, #+8]
        ADD      R0,R7,#+80
        STR      R0,[SP, #+4]
        ADR.W    R0,smsDestPrex
        STR      R0,[SP, #+0]
        MOV      R0,R5
          CFI FunCall xsprintf
        BL       xsprintf
        MOV      R2,R5
        ADR.W    R1,?_92
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R0,?_93
          CFI FunCall sim900a_send_cmd
        B.W      sim900a_send_cmd
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
??sim900a_send_handler_11:
        ADR.W    R1,?_96
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADR.W    R1,?_97
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADD      R4,R7,#+40
        MOV      R2,R7
        LDRB     R0,[R4, #+1]
        ADR.W    R1,?_98
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+1]
        MOV      R0,R5
          CFI FunCall xsprintf
        BL       xsprintf
        MOV      R0,R8
          CFI FunCall etimer_stop
        BL       etimer_stop
        MOV      R0,R5
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVW     R1,#+50000
        ADD      R0,R7,#+320
          CFI FunCall etimer_set
        BL       etimer_set
        ADD      R4,R7,#+352
        MOVS     R1,#+17
        MOV      R0,R4
          CFI FunCall mp3fillCmdNoParam
        BL       mp3fillCmdNoParam
        MOV      R5,R0
        MOV      R3,R5
        MOV      R2,R4
        ADR.W    R1,?_99
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        MOV      R1,R5
        MOV      R0,R4
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uart5_send_bytes
        B.W      uart5_send_bytes
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
??sim900a_send_handler_4:
        CMP      R0,#+136
        BNE.W    ??sim900a_send_handler_2
        LDR.W    R7,??DataTable150_6
        ADD      R0,R7,#+288
        CMP      R5,R0
        BNE.N    ??sim900a_send_handler_12
        ADR.W    R1,?_100
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADD      R4,R7,#+40
        LDRB     R0,[R4, #+2]
        CMP      R0,#+3
        BLT.N    ??sim900a_send_handler_13
        ADD      R0,R6,#+36
        STR      R0,[R6, #+32]
        MOVS     R1,#+0
        MOVS     R0,#+9
        STRB     R0,[R6, #+10]
        ADD      R0,R6,#+36
          CFI FunCall process_start
        BL       process_start
        ADR.W    R1,?_101
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R0,#+0
        STRB     R0,[R4, #+2]
??sim900a_send_handler_13:
        ADD      SP,SP,#+16
          CFI CFA R13+24
        LDRB     R0,[R4, #+2]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+2]
        POP      {R4-R8,PC}
        DATA
??sim900a_send_handler_5:
        DC8      ">",0x0,0x0
        DC8      0x4F, 0x4B, 0x00, 0x00
          CFI CFA R13+40
        THUMB
??sim900a_send_handler_12:
        ADD      R8,R7,#+304
        CMP      R5,R8
        BNE.W    ??sim900a_send_handler_14
        ADR.W    R4,?_102
        LDRB     R2,[R7, #+40]
        MOV      R1,R4
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDRB     R0,[R7, #+40]
        CMP      R0,#+1
        ADD      R5,R7,#+160
        BNE.N    ??sim900a_send_handler_15
        LDRB     R2,[R7, #+40]
        MOV      R1,R4
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADR.W    R1,?_103
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDRB     R0,[R7, #+40]
        ADDS     R0,R0,#+1
        STRB     R0,[R7, #+40]
        MOVS     R1,#+32
        ADD      R0,R7,#+48
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        MOVS     R1,#+32
        ADD      R0,R7,#+96
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        MOVS     R1,#+128
        MOV      R0,R5
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        ADD      R0,R7,#+80
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOV      R3,R1
        MOV      R4,R1
        STM      R0!,{R1-R4}
        ADD      R1,R6,#+180
        ADD      R0,R7,#+48
          CFI FunCall smsPnoneByteReverse
        BL       smsPnoneByteReverse
        ADD      R1,R7,#+20
        ADD      R0,R7,#+80
          CFI FunCall smsPnoneByteReverse
        BL       smsPnoneByteReverse
        ADR.W    R0,warnMsg
        ADR.W    R2,smsCenterPrex
        ADR.W    R1,?_91
        STR      R0,[SP, #+12]
        ADD      R3,R7,#+48
        ADR.W    R0,smsDestCodeLen
        STR      R0,[SP, #+8]
        ADD      R0,R7,#+80
        STR      R0,[SP, #+4]
        ADR.W    R0,smsDestPrex
        STR      R0,[SP, #+0]
        MOV      R0,R5
          CFI FunCall xsprintf
        BL       xsprintf
        MOV      R2,R5
        ADR.W    R1,?_92
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADR.W    R0,?_93
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVW     R1,#+20000
        MOV      R0,R8
??sim900a_send_handler_3:
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall etimer_set
        B.W      etimer_set
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
??sim900a_send_handler_15:
        ADR.W    R1,?_104
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADR.N    R0,??DataTable146  ;; "ATH"
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOV      R2,R7
        ADR.W    R1,?_98
        MOV      R0,R5
          CFI FunCall xsprintf
        BL       xsprintf
        MOV      R0,R5
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        MOVW     R1,#+50000
        ADD      R0,R7,#+320
          CFI FunCall etimer_set
        BL       etimer_set
        ADR.W    R1,?_105
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADD      R4,R7,#+352
        MOVS     R1,#+17
        MOV      R0,R4
          CFI FunCall mp3fillCmdNoParam
        BL       mp3fillCmdNoParam
        MOV      R5,R0
        MOV      R3,R5
        MOV      R2,R4
        ADR.W    R1,?_106
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        MOV      R1,R5
        MOV      R0,R4
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uart5_send_bytes
        B.W      uart5_send_bytes
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
??sim900a_send_handler_14:
        ADD      R0,R7,#+336
        CMP      R5,R0
        BNE.N    ??sim900a_send_handler_16
        ADD      R0,R6,#+84
        STR      R0,[R6, #+32]
        MOVS     R1,#+0
        MOVS     R0,#+9
        STRB     R0,[R6, #+10]
        ADD      R0,R6,#+84
          CFI FunCall process_start
        BL       process_start
        MOVS     R0,#+0
        STRB     R0,[R7, #+40]
        MOVS     R0,#+10
        ADR.W    R1,?_107
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADD      R4,R7,#+352
        MOVS     R1,#+30
        MOV      R0,R4
          CFI FunCall mp3fillCmdNoParam
        BL       mp3fillCmdNoParam
        MOV      R5,R0
        MOV      R3,R5
        MOV      R2,R4
        ADR.W    R1,?_108
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        MOV      R1,R5
        MOV      R0,R4
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uart5_send_bytes
        B.W      uart5_send_bytes
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
??sim900a_send_handler_16:
        ADD      R0,R7,#+320
        CMP      R5,R0
        BNE.N    ??sim900a_send_handler_2
        ADR.W    R1,?_109
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        ADR.N    R0,??DataTable146  ;; "ATH"
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        ADD      R5,R7,#+160
        ADD      R2,R7,#+20
        ADR.W    R1,?_98
        MOV      R0,R5
          CFI FunCall xsprintf
        BL       xsprintf
        MOV      R0,R5
          CFI FunCall sim900a_send_cmd
        BL       sim900a_send_cmd
        ADD      R4,R7,#+352
        MOVS     R1,#+17
        MOV      R0,R4
          CFI FunCall mp3fillCmdNoParam
        BL       mp3fillCmdNoParam
        MOV      R5,R0
        MOV      R3,R5
        MOV      R2,R4
        ADR.W    R1,?_106
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        MOV      R1,R5
        MOV      R0,R4
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall uart5_send_bytes
        B.W      uart5_send_bytes
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+40
          CFI EndBlock cfiBlock37
??sim900a_send_handler_2:
        REQUIRE ?Subroutine8
        ;; // Fall through to label ?Subroutine8

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls sim900a_send_handler
          CFI CFA R13+40
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine8:
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock38

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_80:
        DC8 "+CMGS"
        DC8 0, 0
// 1876 //PROCESS(sim900a_send_process, "sim900a_send");

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function process_thread_sim900a_send_process
        THUMB
// 1877 PROCESS_THREAD(sim900a_send_process, ev, data)
// 1878 {
process_thread_sim900a_send_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R1
        MOV      R1,R2
// 1879 
// 1880 	PROCESS_BEGIN( );
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_sim900a_send_process_0
        MOVW     R3,#+1884
        CMP      R2,R3
        BEQ.N    ??process_thread_sim900a_send_process_1
        B.N      ??process_thread_sim900a_send_process_2
// 1881 
// 1882 	while(1)
// 1883 	{
// 1884 		PROCESS_YIELD( );
??process_thread_sim900a_send_process_0:
        MOVW     R0,#+1884
        B.N      ?Subroutine1
// 1885 		sim900a_send_handler(ev, data);
??process_thread_sim900a_send_process_1:
          CFI FunCall sim900a_send_handler
        BL       sim900a_send_handler
        B.N      ??process_thread_sim900a_send_process_0
// 1886 	}
// 1887 	PROCESS_END( );
??process_thread_sim900a_send_process_2:
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock39
// 1888 }
// 1889 
// 1890 
// 1891 static struct ringbuf ringuartbuf;
// 1892 static uint8_t uartbuf[128];
// 1893 
// 1894 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function gprs_uart_input_byte
        THUMB
// 1895 int gprs_uart_input_byte(unsigned char c)
// 1896 {
gprs_uart_input_byte:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 1897 	static uint8_t overflow = 0; /* Buffer overflow: ignore until END */
// 1898 	if(!overflow)
        LDR.N    R4,??DataTable150_5
        LDRB     R1,[R4, #+20]
        CMP      R1,#+0
        ADD      R2,R4,#+388
        MOV      R1,R0
        MOV      R0,R2
        BNE.N    ??gprs_uart_input_byte_0
// 1899 	{
// 1900 		/* Add character */
// 1901 		if(ringbuf_put(&ringuartbuf, c) == 0)
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBNZ.N   R0,??gprs_uart_input_byte_1
// 1902 		{
// 1903 			/* Buffer overflow: ignore the rest of the line */
// 1904 			overflow = 1;
        MOVS     R0,#+1
        B.N      ??gprs_uart_input_byte_2
// 1905 		}
// 1906 	}
// 1907 	else
// 1908 	{
// 1909 		/* Buffer overflowed:
// 1910 		* Only (try to) add terminator characters, otherwise skip */
// 1911 		if(ringbuf_put(&ringuartbuf, c) != 0)
??gprs_uart_input_byte_0:
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBZ.N    R0,??gprs_uart_input_byte_1
// 1912 		{
// 1913 			overflow = 0;
        MOVS     R0,#+0
??gprs_uart_input_byte_2:
        STRB     R0,[R4, #+20]
// 1914 		}
// 1915 	}
// 1916 	/* Wake up consumer process */
// 1917 	process_poll(&gprs_resp_process);
??gprs_uart_input_byte_1:
        ADD      R0,R4,#+132
          CFI FunCall process_poll
        BL       process_poll
// 1918 	//XPRINTF((10, "gprs\n"));
// 1919 	return 1;
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock40
// 1920 }
// 1921 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock41 Using cfiCommon0
          CFI Function gprs_uart_init
        THUMB
// 1922 void gprs_uart_init(void)
// 1923 {
gprs_uart_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1924 	ringbuf_init(&ringuartbuf, uartbuf, sizeof(uartbuf));
        LDR.N    R0,??DataTable150_5
        ADD      R1,R0,#+396
        MOVS     R2,#+128
        ADD      R0,R0,#+388
          CFI FunCall ringbuf_init
        BL       ringbuf_init
// 1925 	//process_start(&hwfs_uart_rev_process, NULL);
// 1926 	Uart_GprsSetInput(gprs_uart_input_byte);
        POP      {R1,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.N    R0,??DataTable150_9
          CFI FunCall Uart_GprsSetInput
        B.W      Uart_GprsSetInput
          CFI EndBlock cfiBlock41
// 1927 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable145:
        DC32     ??uwCurrentSeq+0x89C
// 1928 
// 1929 
// 1930 //sim900a_app_process

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock42 Using cfiCommon0
          CFI Function process_thread_gprs_resp_process
        THUMB
// 1931 PROCESS_THREAD(gprs_resp_process, ev, data)
// 1932 {
process_thread_gprs_resp_process:
        PUSH     {R4-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+28
        MOV      R4,R0
        SUB      SP,SP,#+68
          CFI CFA R13+96
// 1933 	static char buf[SIMG900A_MAX_TCPUDP_DATA_LEN];
// 1934 	static struct etimer et_rev_timeout;
// 1935 	static int ptr = 0;
// 1936 	char *pcsca;
// 1937 	int c;
// 1938 
// 1939 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        LDR.N    R6,??DataTable150_10
        MOV      R8,R1
        CBZ.N    R0,??process_thread_gprs_resp_process_0
        MOVW     R1,#+1983
        CMP      R0,R1
        BEQ.N    ??process_thread_gprs_resp_process_1
        B.N      ??process_thread_gprs_resp_process_2
// 1940 	sim900_event_resp = process_alloc_event( );
??process_thread_gprs_resp_process_0:
        LDR.N    R7,??DataTable150_5
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+0]
// 1941 	sim900_event_send_cmd = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R6, #+0]
// 1942 	sim900_event_send_data = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+1]
// 1943 	sim900_event_heart = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+3]
// 1944 	sim900_event_send_data_wait = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+2]
// 1945 	sim900_event_fire_warn = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+4]
// 1946 	sim900_event_start_sms_phone = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+5]
// 1947 	sim900_event_send_sms_phone = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+6]
// 1948 	sim900_event_send_sms = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+7]
// 1949 	sim900_event_send_sms_wait = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+8]
// 1950 	sim900_event_fire_tran = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STRB     R0,[R7, #+9]
// 1951 	XPRINTF((10, "sim900a_resp_process\r\n"));
        MOVS     R0,#+10
        ADR.W    R1,?_110
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        B.N      ??process_thread_gprs_resp_process_1
// 1952 
// 1953 	while(1)
// 1954 	{
// 1955 		c = ringbuf_get(&ringuartbuf);
// 1956 		if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_rev_timeout)))
// 1957 		{
// 1958 			XPRINTF((12, "receive finish prt= %d\r\n", ptr));
// 1959 			memset(&sim900_rx, 0, sizeof(SIM900A_MSG));
// 1960 			sim900_rx.nLen = ptr;
// 1961 			memcpy(sim900_rx.ubamsg, buf, ptr);
// 1962 			MEM_DUMP(10, "<-gp", buf, ptr);
// 1963 			process_post(gprs_process, sim900_event_resp, sim900_rx.ubamsg);
// 1964 			//process_post(gprs_process, sim900_event_resp, &sim900_rx);
// 1965 			//sim900a_send_cmd("AT+CSCA?");
// 1966 			if ((char *)strstr(buf,"SMS Ready") != NULL)
// 1967 			{
// 1968 				sim900a_send_cmd("AT+CSCA?");
// 1969 			}
// 1970 			if ((char*)strstr(buf, "CSCA") != NULL)
// 1971 			{
// 1972 				pcsca = (char *)strstr(buf,"+86");
// 1973 				memcpy(smsCenterPhone, pcsca+3, 11);
// 1974 				XPRINTF((8, "smsCenterPhone = %s\n", smsCenterPhone));
// 1975 			}
// 1976 			memset(buf, 0 ,sizeof(buf));
// 1977 			ptr = 0;
// 1978 		}
// 1979 
// 1980 		if(c == -1)
// 1981 		{
// 1982 			/* Buffer empty, wait for poll */
// 1983 			PROCESS_YIELD();
// 1984 		}
// 1985 		else
// 1986 		{
// 1987 			//XPRINTF((10 "c = %02x\n", c));
// 1988 			//XPRINTF((9, "%02x\r\n", c));
// 1989 			if (ptr == 0 && (uint8_t)c != 0x0d)
// 1990 			{
// 1991 				ptr = 0;
// 1992 			}
// 1993 			else
// 1994 			{
// 1995 				buf[ptr++] = (uint8_t)c;
// 1996 				if (ptr < SIMG900A_MAX_TCPUDP_DATA_LEN)
// 1997 				{
// 1998 					etimer_set(&et_rev_timeout, 200);
??process_thread_gprs_resp_process_3:
        MOVS     R1,#+200
        ADD      R0,R6,#+1360
          CFI FunCall etimer_set
        BL       etimer_set
// 1999 				}
??process_thread_gprs_resp_process_1:
        LDR.N    R5,??DataTable150_5
        ADD      R0,R5,#+388
          CFI FunCall ringbuf_get
        BL       ringbuf_get
        CMP      R8,#+136
        MOV      R7,R0
        BNE.N    ??process_thread_gprs_resp_process_4
        ADD      R0,R6,#+1360
          CFI FunCall etimer_expired
        BL       etimer_expired
        CMP      R0,#+0
        BEQ.N    ??process_thread_gprs_resp_process_4
        LDR      R2,[R6, #+1356]
        ADR.W    R1,?_111
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        LDR.W    R9,??DataTable150_11
        MOVW     R1,#+1364
        MOV      R0,R9
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        LDR      R2,[R6, #+1356]
        STR      R2,[R9, #+0]
        ADDS     R1,R6,#+4
        ADD      R0,R9,#+4
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        LDR      R3,[R6, #+1356]
        ADR.W    R1,?_112
        ADDS     R2,R6,#+4
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        LDRB     R1,[R5, #+0]
        LDR      R0,[R5, #+32]
        ADD      R2,R9,#+4
          CFI FunCall process_post
        BL       process_post
        ADR.W    R1,?_113
        ADDS     R0,R6,#+4
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??process_thread_gprs_resp_process_5
        ADD      R0,SP,#+0
        MOVS     R1,#+64
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        ADR.W    R2,?_40
        ADR.N    R1,??DataTable150_2  ;; "%s\n"
        ADD      R0,SP,#+0
          CFI FunCall xsprintf
        BL       xsprintf
        ADD      R0,SP,#+0
          CFI FunCall strlen
        BL       strlen
        MOV      R3,R0
        ADD      R2,SP,#+0
        ADR.W    R1,?_24
        MOVS     R0,#+9
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        ADD      R0,SP,#+0
          CFI FunCall strlen
        BL       strlen
        MOV      R1,R0
        ADD      R0,SP,#+0
          CFI FunCall uart4_send_bytes
        BL       uart4_send_bytes
??process_thread_gprs_resp_process_5:
        ADR.W    R1,?_41
        ADDS     R0,R6,#+4
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        CBZ.N    R0,??process_thread_gprs_resp_process_6
        ADR.N    R1,??DataTable150_3  ;; "+86"
        ADDS     R0,R6,#+4
          CFI FunCall __iar_Strstr
        BL       __iar_Strstr
        ADDS     R5,R5,#+180
        ADDS     R1,R0,#+3
        MOVS     R2,#+11
        MOV      R0,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOV      R2,R5
        ADR.W    R1,?_115
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
??process_thread_gprs_resp_process_6:
        MOV      R1,#+1352
        ADDS     R0,R6,#+4
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        MOVS     R0,#+0
        STR      R0,[R6, #+1356]
??process_thread_gprs_resp_process_4:
        CMN      R7,#+1
        BNE.N    ??process_thread_gprs_resp_process_7
        MOVW     R0,#+1983
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+68
          CFI CFA R13+28
        MOVS     R0,#+1
        POP      {R4-R9,PC}
          CFI CFA R13+96
??process_thread_gprs_resp_process_7:
        LDR      R0,[R6, #+1356]
        CBNZ.N   R0,??process_thread_gprs_resp_process_8
        UXTB     R1,R7
        CMP      R1,#+13
        BNE.W    ??process_thread_gprs_resp_process_1
??process_thread_gprs_resp_process_8:
        ADDS     R1,R0,R6
        ADDS     R0,R0,#+1
        STRB     R7,[R1, #+4]
        CMP      R0,#+1352
        STR      R0,[R6, #+1356]
        BLT.W    ??process_thread_gprs_resp_process_3
// 2000 				else
// 2001 				{
// 2002 					ptr = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+1356]
        B.N      ??process_thread_gprs_resp_process_1
// 2003 				}
// 2004 			}
// 2005 		}
// 2006 	}
// 2007 	PROCESS_END();
??process_thread_gprs_resp_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+68
          CFI CFA R13+28
        MOVS     R0,#+3
        POP      {R4-R9,PC}       ;; return
          CFI EndBlock cfiBlock42
// 2008 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable146:
        DC8      "ATH"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
sim900_event_send_cmd:
        DS8 1
        DS8 3
        DS8 1352
        DS8 4
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
sim900_rx:
        DS8 1364

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
sim900_tx:
        DS8 1364

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
sim900_tx_tran:
        DS8 1364

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??uwCurrentSeq:
        DS8 2
        DS8 2
        DS8 804
        DS8 1364
        DS8 32
        DS8 16
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??macSync:
        DS8 1
        DS8 3
        DS8 40
        DS8 4
        DS8 2
        DS8 2
        DS8 804
        DS8 32
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??stPhone_1:
        DS8 40
        DS8 1
        DS8 3
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??stPhone_2:
        DS8 40
        DS8 1
        DS8 1
        DS8 1
        DS8 1
        DS8 4
        DS8 32
        DS8 16
        DS8 64
        DS8 128
        DS8 16
        DS8 16
        DS8 16
        DS8 16
        DS8 16
// 2009 
// 2010 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock43 Using cfiCommon0
          CFI Function gfireClean
        THUMB
// 2011 void gfireClean(void)
// 2012 {
gfireClean:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
// 2013 	static FIRE_NODE_INFO stFireNode;
// 2014 	memset(&stFireNode, 0, sizeof(FIRE_NODE_INFO));
        LDR.N    R4,??DataTable150_12
        MOVW     R5,#+802
        MOV      R1,R5
        MOV      R0,R4
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
// 2015 	extgdbdevSetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO, 0, (const void *)&stFireNode, sizeof(FIRE_NODE_INFO));
        MOV      R3,R5
        MOV      R2,R4
        ADD      SP,SP,#+4
          CFI CFA R13+12
        POP      {R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall extgdbdevSetDeviceSettingInfoSt
        B.W      extgdbdevSetDeviceSettingInfoSt
          CFI EndBlock cfiBlock43
// 2016 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable147:
        DC32     ??uwCurrentSeq

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??stFireNode_1:
        DS8 804
// 2017 
// 2018 
// 2019 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock44 Using cfiCommon0
          CFI Function sim900a_init
        THUMB
// 2020 void sim900a_init(void)
// 2021 {
sim900a_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 2022 	gprs_uart_init( );
        LDR.N    R4,??DataTable150_5
        MOVS     R2,#+128
        ADD      R1,R4,#+396
        ADD      R0,R4,#+388
          CFI FunCall ringbuf_init
        BL       ringbuf_init
        LDR.N    R0,??DataTable150_9
          CFI FunCall Uart_GprsSetInput
        BL       Uart_GprsSetInput
// 2023 	process_start(&sim900a_hard_init, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+36
          CFI FunCall process_start
        BL       process_start
// 2024 	process_start(&gprs_resp_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+132
          CFI FunCall process_start
        BL       process_start
// 2025 	process_start(&sim900a_app_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+100
          CFI FunCall process_start
        BL       process_start
// 2026 	process_start(&sim900a_send_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+116
          CFI FunCall process_start
        BL       process_start
// 2027 	process_start(&gprs_sms_phone_process, NULL);
        ADD      R0,R4,#+148
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
          CFI FunCall process_start
        B.W      process_start
          CFI EndBlock cfiBlock44
// 2028 }
// 2029 
// 2030 
// 2031 /*This function is used to test*/
// 2032 /*
// 2033 test gprs ack
// 2034 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock45 Using cfiCommon0
          CFI Function testGprsAck
        THUMB
// 2035 void testGprsAck(void)
// 2036 {
testGprsAck:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+12
          CFI CFA R13+24
// 2037 	int nFrameL = -1;
// 2038 	NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
// 2039 	nFrameL = gprsProtocolFrameFill(sim900_tx.ubamsg, GPRS_F_CMD_ACK, uwSeq, paddrInfo->ubaNodeAddr, NULL, 0);
        LDR.N    R5,??DataTable150_5
        LDR.N    R4,??DataTable150_7
        LDRH     R2,[R5, #+22]
        MOVS     R1,#+0
        STR      R1,[SP, #+4]
        STR      R1,[SP, #+0]
        MOV      R3,R0
        MOVS     R1,#+153
        B.N      ?Subroutine5
          CFI EndBlock cfiBlock45
// 2040 	process_post(gprs_process, sim900_event_resp, sim900_tx.ubamsg);
// 2041 }
// 2042 
// 2043 
// 2044 
// 2045 
// 2046 /*
// 2047 test sync from pc
// 2048 */
// 2049 typedef struct node_sync{
// 2050 	u_short uwNums;
// 2051 	u_char ubaBuf[1000];
// 2052 }NODE_SYNC;
// 2053 
// 2054 NODE_SYNC nodeSync={
// 2055 	64,
// 2056 	{\ 
// 2057 	0x00,0x01,0x02,0x03,\ 
// 2058 	0x04,0x05,0x06,0x07,\ 
// 2059 	0x08,0x09,0x0a,0x0b,\ 
// 2060 	0x0c,0x0d,0x0e,0x0f,\ 
// 2061 	0x10,0x11,0x12,0x13,\ 
// 2062 	0x14,0x15,0x16,0x17,\ 
// 2063 	0x18,0x19,0x1a,0x1b,\ 
// 2064 	0x1c,0x1d,0x1e,0x1f,\ 
// 2065 	0x20,0x21,0x22,0x23,\ 
// 2066 	0x24,0x25,0x26,0x27,\ 
// 2067 	0x28,0x29,0x2a,0x2b,\ 
// 2068 	0x2c,0x2d,0x2e,0x2f,\ 
// 2069 	0x30,0x31,0x32,0x33,\ 
// 2070 	0x34,0x35,0x36,0x37,\ 
// 2071 	0x38,0x39,0x3a,0x3b,\ 
// 2072 	0x3c,0x3d,0x3e,0x3f,\ 
// 2073 	0x40,0x41,0x42,0x43,\ 
// 2074 	0x44,0x45,0x46,0x47,\ 
// 2075 	0x48,0x49,0x4a,0x4b,\ 
// 2076 	0x4c,0x4d,0x4e,0x4f,\ 
// 2077 	0x50,0x51,0x52,0x53,\ 
// 2078 	0x54,0x55,0x56,0x57,\ 
// 2079 	0x58,0x59,0x5a,0x5b,\ 
// 2080 	0x5c,0x5d,0x5e,0x5f,\ 
// 2081 	0x60,0x61,0x62,0x63,\ 
// 2082 	0x64,0x65,0x66,0x67,\ 
// 2083 	0x68,0x69,0x6a,0x6b,\ 
// 2084 	0x6c,0x6d,0x6e,0x6f,\ 
// 2085 	0x70,0x71,0x72,0x73,\ 
// 2086     0x74,0x75,0x76,0x77,\ 
// 2087 	0x78,0x79,0x7a,0x7b,\ 
// 2088 	0x7c,0x7d,0x7e,0x7f,\ 
// 2089 	0x80,0x81,0x82,0x83,\ 
// 2090 	0x84,0x85,0x86,0x87,\ 
// 2091 	0x88,0x89,0x8a,0x8b,\ 
// 2092 	0x8c,0x8d,0x8e,0x8f,\ 
// 2093 	0x90,0x91,0x92,0x93,\ 
// 2094 	0x94,0x95,0x96,0x97,\ 
// 2095 	0x98,0x99,0x9a,0x9b,\ 
// 2096 	0x9c,0x9d,0x9e,0x9f,\ 
// 2097 	0xa0,0xa1,0xa2,0xa3,\ 
// 2098 	0xa4,0xa5,0xa6,0xa7,\ 
// 2099 	0xa8,0xa9,0xaa,0xab,\ 
// 2100 	0xac,0xad,0xae,0xaf,\ 
// 2101 	0xb0,0xb1,0xb2,0xb3,\ 
// 2102 	0xb4,0xb5,0xb6,0xb7,\ 
// 2103 	0xb8,0xb9,0xba,0xbb,\ 
// 2104 	0xbc,0xbd,0xbe,0xbf,\ 
// 2105 	0xc0,0xc1,0xc2,0xc3,\ 
// 2106 	0xc4,0xc5,0xc6,0xc7,\ 
// 2107 	0xc8,0xc9,0xca,0xcb,\ 
// 2108 	0xcc,0xcd,0xce,0xcf,\ 
// 2109 	0xd0,0xd1,0xd2,0xd3,\ 
// 2110 	0xd4,0xd5,0xd6,0xd7,\ 
// 2111 	0xd8,0xd9,0xda,0xdb,\ 
// 2112 	0xdc,0xdd,0xde,0xdf,\ 
// 2113 	0xe0,0xe1,0xe2,0xe3,\ 
// 2114 	0xe4,0xe5,0xe6,0xe7,\ 
// 2115 	0xe8,0xe9,0xea,0xeb,\ 
// 2116 	0xec,0xed,0xee,0xef,\ 
// 2117 	0xf0,0xf1,0xf2,0xf3,\ 
// 2118 	0xf4,0xf5,0xf6,0xf7,\ 
// 2119 	0xf8,0xf9,0xfa,0xfb,\ 
// 2120 	0xfc,0xfd,0xfe,0xff,\ 
// 2121 	0x65,0x00,0x00,0x00,\ 
// 2122 	0x66,0x00,0x00,0x00,\ 
// 2123 	0x67,0x00,0x00,0x00,\ 
// 2124 	0x68,0x00,0x00,0x00,\ 
// 2125 	0x69,0x00,0x00,0x00,\ 
// 2126 	0x60,0x00,0x00,0x00,\ 
// 2127 	0x71,0x00,0x00,0x00,\ 
// 2128 	0x72,0x00,0x00,0x00,\ 
// 2129 	0x73,0x00,0x00,0x00,\ 
// 2130 	0x74,0x00,0x00,0x00,\ 
// 2131 	0x75,0x00,0x00,0x00,\ 
// 2132 	0x76,0x00,0x00,0x00,\ 
// 2133 	0x77,0x00,0x00,0x00,\ 
// 2134 	0x78,0x00,0x00,0x00,\ 
// 2135 	0x79,0x00,0x00,0x00,\ 
// 2136 	0x80,0x00,0x00,0x00,\ 
// 2137 	0x81,0x00,0x00,0x00,\ 
// 2138 	0x82,0x00,0x00,0x00,\ 
// 2139 	0x83,0x00,0x00,0x00,\ 
// 2140 	0x84,0x00,0x00,0x00,\ 
// 2141 	0x85,0x00,0x00,0x00,\ 
// 2142 	0x86,0x00,0x00,0x00,\ 
// 2143 	0x87,0x00,0x00,0x00,\ 
// 2144 	0x88,0x00,0x00,0x00,\ 
// 2145 	0x89,0x00,0x00,0x00,\ 
// 2146 	0x90,0x00,0x00,0x00,\ 
// 2147 	0x91,0x00,0x00,0x00,\ 
// 2148 	0x92,0x00,0x00,0x00,\ 
// 2149 	0x93,0x00,0x00,0x00,\ 
// 2150 	0x94,0x00,0x00,0x00,\ 
// 2151 	0x95,0x00,0x00,0x00,\ 
// 2152 	0x96,0x00,0x00,0x00,\ 
// 2153 	0x97,0x00,0x00,0x00,\ 
// 2154 	0x98,0x00,0x00,0x00,\ 
// 2155 	0x99,0x00,0x00,0x00,\ 
// 2156 	0xa0,0x00,0x00,0x00,\ 
// 2157 	0x00,0x01,0x00,0x00,\ 
// 2158 	0x00,0x02,0x00,0x00,\ 
// 2159 	0x00,0x03,0x00,0x00,\ 
// 2160 	0x00,0x04,0x00,0x00,\ 
// 2161 	0x00,0x05,0x00,0x00,\ 
// 2162 	0x00,0x06,0x00,0x00,\ 
// 2163 	0x00,0x07,0x00,0x00,\ 
// 2164 	0x00,0x08,0x00,0x00,\ 
// 2165 	0x00,0x09,0x00,0x00,\ 
// 2166 	0x00,0x10,0x00,0x00,\ 
// 2167 	0x00,0x11,0x00,0x00,\ 
// 2168 	0x00,0x12,0x00,0x00,\ 
// 2169 	0x00,0x13,0x00,0x00,\ 
// 2170 	0x00,0x14,0x00,0x00,\ 
// 2171 	0x00,0x15,0x00,0x00,\ 
// 2172 	0x00,0x16,0x00,0x00,\ 
// 2173 	0x00,0x17,0x00,0x00,\ 
// 2174 	0x00,0x18,0x00,0x00,\ 
// 2175 	0x00,0x19,0x00,0x00,\ 
// 2176 	0x00,0x20,0x00,0x00,\ 
// 2177 	0x00,0x21,0x00,0x00,\ 
// 2178 	0x00,0x22,0x00,0x00,\ 
// 2179 	0x00,0x23,0x00,0x00,\ 
// 2180 	0x00,0x24,0x00,0x00,\ 
// 2181 	0x00,0x25,0x00,0x00,\ 
// 2182 	0x00,0x26,0x00,0x00,\ 
// 2183 	0x00,0x27,0x00,0x00,\ 
// 2184 	0x00,0x28,0x00,0x00,\ 
// 2185 	0x00,0x29,0x00,0x00,\ 
// 2186     0x00,0x30,0x00,0x00,\ 
// 2187 	0x00,0x31,0x00,0x00,\ 
// 2188 	0x00,0x32,0x00,0x00,\ 
// 2189 	0x00,0x33,0x00,0x00,\ 
// 2190 	0x00,0x34,0x00,0x00,\ 
// 2191 	0x00,0x35,0x00,0x00,\ 
// 2192 	0x00,0x36,0x00,0x00,\ 
// 2193 	0x00,0x37,0x00,0x00,\ 
// 2194 	0x00,0x38,0x00,0x00,\ 
// 2195 	0x00,0x39,0x00,0x00,\ 
// 2196 	0x00,0x40,0x00,0x00,\ 
// 2197 	0x00,0x41,0x00,0x00,\ 
// 2198 	0x00,0x42,0x00,0x00,\ 
// 2199 	0x00,0x43,0x00,0x00,\ 
// 2200 	0x00,0x44,0x00,0x00,\ 
// 2201 	0x00,0x45,0x00,0x00,\ 
// 2202 	0x00,0x46,0x00,0x00,\ 
// 2203 	0x00,0x47,0x00,0x00,\ 
// 2204 	0x00,0x48,0x00,0x00,\ 
// 2205 	0x00,0x49,0x00,0x00,\ 
// 2206 	0x00,0x50,0x00,0x00,\ 
// 2207 	0x00,0x51,0x00,0x00,\ 
// 2208 	0x00,0x52,0x00,0x00,\ 
// 2209 	0x00,0x53,0x00,0x00,\ 
// 2210 	0x00,0x54,0x00,0x00,\ 
// 2211 	0x00,0x55,0x00,0x00,\ 
// 2212 	0x00,0x56,0x00,0x00,\ 
// 2213 	0x00,0x57,0x00,0x00,\ 
// 2214 	0x00,0x58,0x00,0x00,\ 
// 2215 	0x00,0x59,0x00,0x00,\ 
// 2216 	0x00,0x60,0x00,0x00,\ 
// 2217 	0x00,0x61,0x00,0x00,\ 
// 2218 	0x00,0x62,0x00,0x00,\ 
// 2219 	0x00,0x63,0x00,0x00,\ 
// 2220 	0x00,0x64,0x00,0x00,\ 
// 2221 	0x00,0x65,0x00,0x00,\ 
// 2222 	0x00,0x66,0x00,0x00,\ 
// 2223 	0x00,0x67,0x00,0x00,\ 
// 2224 	0x00,0x68,0x00,0x00,\ 
// 2225 	0x00,0x69,0x00,0x00,\ 
// 2226 	0x00,0x60,0x00,0x00,\ 
// 2227 	0x00,0x71,0x00,0x00,\ 
// 2228 	0x00,0x72,0x00,0x00,\ 
// 2229 	0x00,0x73,0x00,0x00,\ 
// 2230 	0x00,0x74,0x00,0x00,\ 
// 2231 	0x00,0x75,0x00,0x00,\ 
// 2232 	0x00,0x76,0x00,0x00,\ 
// 2233 	0x00,0x77,0x00,0x00,\ 
// 2234 	0x00,0x78,0x00,0x00,\ 
// 2235 	0x00,0x79,0x00,0x00,\ 
// 2236 	0x00,0x80,0x00,0x00,\ 
// 2237 	0x00,0x81,0x00,0x00,\ 
// 2238 	0x00,0x82,0x00,0x00,\ 
// 2239 	0x00,0x83,0x00,0x00,\ 
// 2240 	0x00,0x84,0x00,0x00,\ 
// 2241 	0x00,0x85,0x00,0x00,\ 
// 2242 	0x00,0x86,0x00,0x00,\ 
// 2243 	0x00,0x87,0x00,0x00,\ 
// 2244 	0x00,0x88,0x00,0x00,\ 
// 2245 	0x00,0x89,0x00,0x00,\ 
// 2246 	0x00,0x90,0x00,0x00,\ 
// 2247 	0x00,0x91,0x00,0x00,\ 
// 2248 	0x00,0x92,0x00,0x00,\ 
// 2249 	0x00,0x93,0x00,0x00,\ 
// 2250 	0x00,0x94,0x00,0x00,\ 
// 2251 	0x00,0x95,0x00,0x00,\ 
// 2252 	0x00,0x96,0x00,0x00,\ 
// 2253 	0x00,0x97,0x00,0x00,\ 
// 2254 	0x00,0x98,0x00,0x00,\ 
// 2255 	0x00,0x99,0x00,0x00,\ 
// 2256 	0x00,0xa0,0x00,0x00
// 2257 	}
// 2258 };
// 2259 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock46 Using cfiCommon0
          CFI Function testGprsSync
        THUMB
// 2260 void testGprsSync(void)
// 2261 {
testGprsSync:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+12
          CFI CFA R13+24
// 2262 	int nFrameL = -1;
// 2263 	NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
// 2264 	nFrameL = gprsProtocolFrameFill(sim900_tx.ubamsg, GPRS_F_CMD_DATA_SYNC, uwSeq, paddrInfo->ubaNodeAddr, (const u_char *)&nodeSync, nodeSync.uwNums*4+2);
        LDR.N    R1,??DataTable150_13
        LDR.N    R5,??DataTable150_5
        LDRH     R2,[R1, #+0]
        LDR.N    R4,??DataTable150_7
        STR      R1,[SP, #+0]
        LSLS     R2,R2,#+2
        ADDS     R2,R2,#+2
        UXTH     R2,R2
        STR      R2,[SP, #+4]
        MOV      R3,R0
        LDRH     R2,[R5, #+22]
        MOVS     R1,#+3
          CFI EndBlock cfiBlock46
        REQUIRE ?Subroutine5
        ;; // Fall through to label ?Subroutine5
// 2265 	process_post(gprs_process, sim900_event_resp, sim900_tx.ubamsg);
// 2266 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock47 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+24
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine5:
        ADDS     R0,R4,#+4
          CFI FunCall testGprsAck gprsProtocolFrameFill
          CFI FunCall testGprsSync gprsProtocolFrameFill
        BL       gprsProtocolFrameFill
        LDRB     R1,[R5, #+0]
        LDR      R0,[R5, #+32]
        ADDS     R2,R4,#+4
        ADD      SP,SP,#+12
          CFI CFA R13+12
        POP      {R4,R5,LR}
          CFI CFA R13+0
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI FunCall testGprsAck process_post
          CFI FunCall testGprsSync process_post
        B.W      process_post
          CFI EndBlock cfiBlock47
// 2267 
// 2268 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock48 Using cfiCommon0
          CFI Function testNodeInfo
        THUMB
// 2269 void testNodeInfo(void)
// 2270 {
testNodeInfo:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 2271 	const FIRE_NODE_INFO *pFireNode = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
// 2272 	MEM_DUMP(0, "fnod", pFireNode, sizeof(FIRE_NODE_INFO));
        POP      {R12,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOV      R2,R0
        MOVW     R3,#+802
        ADR.W    R1,?_116
        MOVS     R0,#+0
          CFI FunCall __xstd_dump
        B.W      __xstd_dump
          CFI EndBlock cfiBlock48
// 2273 }
// 2274 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock49 Using cfiCommon0
          CFI Function testGprsSmsPhone
        THUMB
// 2275 void testGprsSmsPhone(void)
// 2276 {
testGprsSmsPhone:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+12
          CFI CFA R13+24
// 2277 	const u_char phoneNum[]="18820109265";
        ADR.W    R1,?_117
        LDM      R1!,{R2-R4}
        ADD      R0,SP,#+0
// 2278 	static GPRS_WARN_PHONE stPhone = {0};
// 2279 	memcpy(stPhone.ubaPhoneA, phoneNum, sizeof(phoneNum));
        ADD      R1,SP,#+0
        STM      R0!,{R2-R4}
        LDR.N    R4,??DataTable150_5
        ADD      R5,R4,#+524
        MOVS     R2,#+12
        MOV      R0,R5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 2280 	memcpy(stPhone.ubaPhoneB, phoneNum, sizeof(phoneNum));
        MOVS     R2,#+12
        ADD      R1,SP,#+0
        ADD      R0,R4,#+544
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
// 2281 
// 2282 	MEM_DUMP(10, "phone", &stPhone, sizeof(GPRS_WARN_PHONE));
        MOVS     R3,#+40
        MOV      R2,R5
        ADR.W    R1,?_118
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
// 2283 
// 2284 	process_post(&sim900a_app_process, sim900_event_start_sms_phone, &stPhone);
        LDRB     R1,[R4, #+5]
        MOV      R2,R5
        ADD      R0,R4,#+100
          CFI FunCall process_post
        BL       process_post
// 2285 }
        ADD      SP,SP,#+12
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock49

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_1:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_2:
        DC8      "%s\n"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_3:
        DC8      "+86"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_4:
        DC32     ??stPhone_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_5:
        DC32     sim900_event_resp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_6:
        DC32     ??stPhone_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_7:
        DC32     sim900_tx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_8:
        DC32     0x222e0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_9:
        DC32     gprs_uart_input_byte

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_10:
        DC32     sim900_event_send_cmd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_11:
        DC32     sim900_rx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_12:
        DC32     ??stFireNode_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable150_13:
        DC32     nodeSync

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_15:
        DC8 "AT+CIPCLOSE=1"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_16:
        DC8 "AT+CIPSHUT=1"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_24:
        DC8 "->cm"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_40:
        DC8 "AT+CSCA?"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_41:
        DC8 "CSCA"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_82:
        DC8 "asiic len = %d\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_83:
        DC8 "UTF8"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_84:
        DC8 "START SEND gprs\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_85:
        DC8 "TXDA"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_86:
        DC8 "AT+CIPSEND"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_87:
        DC8 "->gp"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_88:
        DC8 "->1A"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_89:
        DC8 "SEND OK\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_90:
        DC8 "sim900a reconnect agian\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_91:
        DC8 "%s%s%s%s%s%s"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_92:
        DC8 "warnsms=%s\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_93:
        DC8 "AT+CMGS=27"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_94:
        DC8 "M0->"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_95:
        DC8 "sms21-------------------------\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_96:
        DC8 "start1 phone\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_97:
        DC8 "pono11111-------------------------\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_98:
        DC8 "ATD%s;"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_99:
        DC8 "M1->"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_100:
        DC8 "UDP SEND TIME OUT\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_101:
        DC8 "et_send out\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_102:
        DC8 "ubPhoneIndex = %d\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_103:
        DC8 "sms22-------------------------\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_104:
        DC8 "pono1-------------------------\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_105:
        DC8 "start2 phone\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_106:
        DC8 "M2->"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_107:
        DC8 "et_back_udp out\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_108:
        DC8 "M3->"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_109:
        DC8 "start phone 2\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_110:
        DC8 "sim900a_resp_process\015\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_111:
        DC8 "receive finish prt= %d\015\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_112:
        DC8 "<-gp"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_113:
        DC8 "SMS Ready"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_115:
        DC8 "smsCenterPhone = %s\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_116:
        DC8 "fnod"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_117:
        DC8 "18820109265"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_118:
        DC8 "phone"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
warnMsg:
        DC8 "53d1751f706b707e62a58b66"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
smsCenterPrex:
        DC8 "089168"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
smsDestPrex:
        DC8 "11000D9168"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
smsDestCodeLen:
        DC8 "0008AA0C"
        DC8 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sim900_event_resp:
        DATA
        DC8 0
sim900_event_send_data:
        DC8 0
sim900_event_send_data_wait:
        DC8 0
sim900_event_heart:
        DC8 0
sim900_event_fire_warn:
        DC8 0
sim900_event_start_sms_phone:
        DC8 0
sim900_event_send_sms_phone:
        DC8 0
sim900_event_send_sms:
        DC8 0
sim900_event_send_sms_wait:
        DC8 0
sim900_event_fire_tran:
        DC8 0
        DC8 4
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC8 0
        DC16 0
modetbl:
        DC32 ?_0, ?_1
gprs_process:
        DC32 0H
sim900a_hard_init:
        DC32 0H, ?_2, process_thread_sim900a_hard_init
        DC8 0, 0, 0, 0
sim900a_check_process:
        DC32 0H, ?_3, process_thread_sim900a_check_process
        DC8 0, 0, 0, 0
sim900a_cfggprs_process:
        DC32 0H, ?_4, process_thread_sim900a_cfggprs_process
        DC8 0, 0, 0, 0
sim900a_tcpudp_con_process:
        DC32 0H, ?_5, process_thread_sim900a_tcpudp_con_process
        DC8 0, 0, 0, 0
sim900a_app_process:
        DC32 0H, ?_6, process_thread_sim900a_app_process
        DC8 0, 0, 0, 0
sim900a_send_process:
        DC32 0H, ?_7, process_thread_sim900a_send_process
        DC8 0, 0, 0, 0
gprs_resp_process:
        DC32 0H, ?_8, process_thread_gprs_resp_process
        DC8 0, 0, 0, 0
gprs_sms_phone_process:
        DC32 0H, ?_9, process_thread_gprs_sms_phone_process
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
gprs_check:
        DATA
        DC32 ?_10, ?_11, ?_12, ?_13

        SECTION `.data`:DATA:REORDER:NOROOT(2)
gprs_check_resp:
        DATA
        DC32 ?_14, ?_14, ?_14, ?_14

        SECTION `.data`:DATA:REORDER:NOROOT(2)
gprs_cfg:
        DATA
        DC32 ?_15, ?_16, ?_17, ?_18, ?_19, ?_20, ?_21

        SECTION `.data`:DATA:REORDER:NOROOT(2)
gprs_cfg_resp:
        DATA
        DC32 ?_14, ?_14, ?_14, ?_14, ?_14, ?_14, ?_14

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
        DC8 3

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
        DC8 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
nodeSync:
        DATA
        DC16 64
        DC8 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18
        DC8 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35
        DC8 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52
        DC8 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69
        DC8 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86
        DC8 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102
        DC8 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115
        DC8 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128
        DC8 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141
        DC8 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154
        DC8 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167
        DC8 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180
        DC8 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193
        DC8 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206
        DC8 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219
        DC8 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232
        DC8 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245
        DC8 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 101, 0, 0, 0, 102
        DC8 0, 0, 0, 103, 0, 0, 0, 104, 0, 0, 0, 105, 0, 0, 0, 96, 0, 0, 0, 113
        DC8 0, 0, 0, 114, 0, 0, 0, 115, 0, 0, 0, 116, 0, 0, 0, 117, 0, 0, 0
        DC8 118, 0, 0, 0, 119, 0, 0, 0, 120, 0, 0, 0, 121, 0, 0, 0, 128, 0, 0
        DC8 0, 129, 0, 0, 0, 130, 0, 0, 0, 131, 0, 0, 0, 132, 0, 0, 0, 133, 0
        DC8 0, 0, 134, 0, 0, 0, 135, 0, 0, 0, 136, 0, 0, 0, 137, 0, 0, 0, 144
        DC8 0, 0, 0, 145, 0, 0, 0, 146, 0, 0, 0, 147, 0, 0, 0, 148, 0, 0, 0
        DC8 149, 0, 0, 0, 150, 0, 0, 0, 151, 0, 0, 0, 152, 0, 0, 0, 153, 0, 0
        DC8 0, 160, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 3, 0, 0, 0, 4, 0, 0, 0
        DC8 5, 0, 0, 0, 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0, 16, 0
        DC8 0, 0, 17, 0, 0, 0, 18, 0, 0, 0, 19, 0, 0, 0, 20, 0, 0, 0, 21, 0, 0
        DC8 0, 22, 0, 0, 0, 23, 0, 0, 0, 24, 0, 0, 0, 25, 0, 0, 0, 32, 0, 0, 0
        DC8 33, 0, 0, 0, 34, 0, 0, 0, 35, 0, 0, 0, 36, 0, 0, 0, 37, 0, 0, 0, 38
        DC8 0, 0, 0, 39, 0, 0, 0, 40, 0, 0, 0, 41, 0, 0, 0, 48, 0, 0, 0, 49, 0
        DC8 0, 0, 50, 0, 0, 0, 51, 0, 0, 0, 52, 0, 0, 0, 53, 0, 0, 0, 54, 0, 0
        DC8 0, 55, 0, 0, 0, 56, 0, 0, 0, 57, 0, 0, 0, 64, 0, 0, 0, 65, 0, 0, 0
        DC8 66, 0, 0, 0, 67, 0, 0, 0, 68, 0, 0, 0, 69, 0, 0, 0, 70, 0, 0, 0, 71
        DC8 0, 0, 0, 72, 0, 0, 0, 73, 0, 0, 0, 80, 0, 0, 0, 81, 0, 0, 0, 82, 0
        DC8 0, 0, 83, 0, 0, 0, 84, 0, 0, 0, 85, 0, 0, 0, 86, 0, 0, 0, 87, 0, 0
        DC8 0, 88, 0, 0, 0, 89, 0, 0, 0, 96, 0, 0, 0, 97, 0, 0, 0, 98, 0, 0, 0
        DC8 99, 0, 0, 0, 100, 0, 0, 0, 101, 0, 0, 0, 102, 0, 0, 0, 103, 0, 0, 0
        DC8 104, 0, 0, 0, 105, 0, 0, 0, 96, 0, 0, 0, 113, 0, 0, 0, 114, 0, 0, 0
        DC8 115, 0, 0, 0, 116, 0, 0, 0, 117, 0, 0, 0, 118, 0, 0, 0, 119, 0, 0
        DC8 0, 120, 0, 0, 0, 121, 0, 0, 0, 128, 0, 0, 0, 129, 0, 0, 0, 130, 0
        DC8 0, 0, 131, 0, 0, 0, 132, 0, 0, 0, 133, 0, 0, 0, 134, 0, 0, 0, 135
        DC8 0, 0, 0, 136, 0, 0, 0, 137, 0, 0, 0, 144, 0, 0, 0, 145, 0, 0, 0
        DC8 146, 0, 0, 0, 147, 0, 0, 0, 148, 0, 0, 0, 149, 0, 0, 0, 150, 0, 0
        DC8 0, 151, 0, 0, 0, 152, 0, 0, 0, 153, 0, 0, 0, 160, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 2286 
// 
// 9 857 bytes in section .bss
// 1 658 bytes in section .data
//   274 bytes in section .rodata
// 9 032 bytes in section .text
// 
//  9 032 bytes of CODE  memory
//    274 bytes of CONST memory
// 11 515 bytes of DATA  memory
//
//Errors: none
//Warnings: 73
