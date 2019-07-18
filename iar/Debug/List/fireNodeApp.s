///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:47
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\hwgg\fireNodeApp.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\hwgg\fireNodeApp.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\fireNodeApp.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Uart_RfSetInput
        EXTERN __aeabi_memclr
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN clock_seconds
        EXTERN ctimer_set
        EXTERN endNodeListHead
        EXTERN endNodeListNext
        EXTERN endNodeListPeriodicCheck
        EXTERN endNodeListRemove
        EXTERN endNodeListadd
        EXTERN etimer_expired
        EXTERN etimer_set
        EXTERN etimer_stop
        EXTERN event_ip_tran
        EXTERN event_ip_warn
        EXTERN extgdbdevGetDeviceSettingInfoSt
        EXTERN ip_data_process
        EXTERN mem_cmp
        EXTERN process_alloc_event
        EXTERN process_poll
        EXTERN process_post
        EXTERN process_start
        EXTERN ringbuf_get
        EXTERN ringbuf_init
        EXTERN ringbuf_put
        EXTERN sim900_event_fire_tran
        EXTERN sim900_event_fire_warn
        EXTERN sim900a_app_process

        PUBLIC fireAppInit
        PUBLIC fire_app_process
        PUBLIC fire_node_uart
        PUBLIC fire_read_process
        PUBLIC frieAppHandler
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\hwgg\fireNodeApp.c
//    1 #include "contiki.h"
//    2 #include "basictype.h"
//    3 #include "dev_info.h"
//    4 #include "hwgg.h"
//    5 #include "lib/ringbuf.h"
//    6 #include "sysprintf.h"
//    7 #include <string.h>
//    8 #include "end_node_list.h"
//    9 
//   10 static struct ctimer period_nodeaddr_timer;
//   11 PROCESS(fire_node_uart, "fire_uart");
//   12 PROCESS(fire_app_process, "fire_app");
//   13 PROCESS(fire_read_process,"frie_read");
//   14 
//   15 
//   16 PROCESS_NAME(sim900a_app_process);
//   17 
//   18 extern process_event_t sim900_event_fire_warn;
//   19 extern process_event_t sim900_event_fire_tran;
//   20 
//   21 PROCESS_NAME(ip_data_process);
//   22 extern process_event_t event_ip_warn;
//   23 extern process_event_t event_ip_tran;
//   24 
//   25 static process_event_t fire_event_rev;
//   26 
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 static FIRE_NODE_DATA stFireData;
stFireData:
        DS8 128
//   29 
//   30 static bool nodeBelognToMeByMac(const u_char *pcMac)
//   31 {
//   32 	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
//   33 	int i = 0;
//   34 
//   35 	//if node information docment is save in flash, all node need to save to list
//   36 	if (pfireNodeInfo->node_num == 0)
//   37 		return true;
//   38 
//   39 	for (i = 0; i < pfireNodeInfo->node_num; i++)
//   40 	{
//   41 		if (mem_cmp(pcMac, pfireNodeInfo->nodeArray[i].ubaNodeAddr, HWGG_NODE_MAC_LEN) == 0)
//   42 		{
//   43 			return true;
//   44 		}
//   45 	}
//   46 
//   47 	return false;
//   48 }
//   49 
//   50 static bool checkWsFrameCrc(const u_char *pcdata, u_char len)
//   51 {
//   52 	u_short uwCrc = 0;
//   53 	return true;
//   54 }
//   55 
//   56 
//   57 static bool fireAppCheckFrameLength(const HWGG_FRAME *pFrame, const FIRE_NODE *pFireNode)
//   58 {
//   59 	//MEM_DUMP(10, "nodf", pFrame, pFrame->ubLen + 4);
//   60 	if ((pFrame->ubLen - 12) != pFireNode->ubLen)
//   61 	{
//   62 		//XPRINTF((10, "pFireNode->ubLen = %d pFrame->ubLen = %d\n",pFireNode->ubLen ,pFrame->ubLen));
//   63 		return false;
//   64 	}
//   65 	return true;
//   66 }
//   67 
//   68 
//   69 static bool fireAppFilterNodeAddr(const u_char *pcFrame)
//   70 {
//   71 	const HWGG_FRAME *pFrame = NULL;
//   72 	const FIRE_NODE *pFireNode = NULL;
//   73 	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
//   74 	NODE_INFO *pnode = NULL;
//   75 	
//   76 	if (pcFrame == NULL)
//   77 		return false;
//   78 
//   79 	pFrame = (const HWGG_FRAME *)pcFrame;
//   80 	pFireNode = (const FIRE_NODE *)pFrame->ubaData;
//   81 
//   82 	if (!fireAppCheckFrameLength(pFrame, pFireNode))
//   83 		return false;
//   84 
//   85 	if (pfireNodeInfo->node_num == 0)
//   86 		return true;
//   87 
//   88 	MEM_DUMP(10, "find", pFrame, pFrame->ubLen+4);
//   89 	MEM_DUMP(10, "addr", pFireNode->ubaSrcMac, 4);
//   90 	//pnode = (NODE_INFO *)endNodeInListByMac(pFireNode->ubaSrcMac);
//   91 	if (nodeBelognToMeByMac((const u_char*) pFireNode->ubaSrcMac))
//   92 	{
//   93 		MEM_DUMP(10, "eddr", pnode->ubaHWGGMacAddr, 4);
//   94 		return true;
//   95 	}
//   96 	return false;
//   97 }
//   98 
//   99 
//  100 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function addFireNodeToList
        THUMB
//  101 static void addFireNodeToList(const u_char *pcFrame)
//  102 {
addFireNodeToList:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        SUB      SP,SP,#+16
          CFI CFA R13+24
//  103 	NODE_INFO stnodeInfo;
//  104 	const HWGG_FRAME *pFrame = NULL;
//  105 	const FIRE_NODE *pFireNode = NULL;	
//  106 
//  107 	if (pcFrame == NULL)
        BEQ.N    ??addFireNodeToList_0
//  108 		return;
//  109 
//  110 	pFrame = (const HWGG_FRAME *)pcFrame;
//  111 	pFireNode = (const FIRE_NODE *)pFrame->ubaData;
//  112 
//  113 	stnodeInfo.lastRevPacketTime = clock_seconds( );
          CFI FunCall clock_seconds
        BL       clock_seconds
        STR      R0,[SP, #+12]
//  114 	stnodeInfo.next = NULL;
//  115 	stnodeInfo.nodeNetState = HWGG_NODE_IN_NET;
//  116 	memcpy(stnodeInfo.ubaHWGGMacAddr, pFireNode->ubaSrcMac, HWGG_NODE_MAC_LEN);
        MOVS     R2,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        ADD      R1,R4,#+14
        MOVS     R0,#+1
        STRB     R0,[SP, #+4]
        ADD      R0,SP,#+5
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  117 	
//  118 	endNodeListadd((const NODE_INFO *)&stnodeInfo);
        ADD      R0,SP,#+0
          CFI FunCall endNodeListadd
        BL       endNodeListadd
//  119 }
??addFireNodeToList_0:
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//  120 
//  121 static bool nodeBelognToMe(const NODE_INFO *pcNode)
//  122 {
//  123 	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
//  124 	int i = 0;
//  125 
//  126 	//if node information docment is save in flash, all node need to save to list
//  127 	if (pfireNodeInfo->node_num == 0)
//  128 		return true;
//  129 
//  130 	for (i = 0; i < pfireNodeInfo->node_num; i++)
//  131 	{
//  132 		if (mem_cmp(pcNode->ubaHWGGMacAddr, pfireNodeInfo->nodeArray[i].ubaNodeAddr, HWGG_NODE_MAC_LEN) == 0)
//  133 		{
//  134 			return true;
//  135 		}
//  136 	}
//  137 
//  138 	return false;
//  139 }
//  140 
//  141 static void removeNodeNotBelongToMe(void)
//  142 {
//  143 	NODE_INFO *pnode = NULL;
//  144 	bool isTrue = false;
//  145 
//  146 	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
//  147 
//  148 	//not have node info docment
//  149 	if (pfireNodeInfo->node_num == 0)
//  150 		return;
//  151 
//  152 	for(pnode = (NODE_INFO *)endNodeListHead(); pnode != NULL; pnode = (NODE_INFO *)endNodeListNext(pnode)) 
//  153 	{
//  154 		isTrue = nodeBelognToMe((const NODE_INFO *)pnode);
//  155 		if (!isTrue)
//  156 		{
//  157 			endNodeListRemove(pnode);
//  158 		}
//  159 	}
//  160 }
//  161 
//  162 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function nodeAddrCheckTimer
        THUMB
//  163 static void nodeAddrCheckTimer(void *ptr)
//  164 {
nodeAddrCheckTimer:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  165 	removeNodeNotBelongToMe( );
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        LDRH     R0,[R0, #+0]
        CBZ.N    R0,??nodeAddrCheckTimer_0
          CFI FunCall endNodeListHead
        BL       endNodeListHead
        B.N      ??nodeAddrCheckTimer_1
??nodeAddrCheckTimer_2:
        ADD      R0,R5,R6, LSL #+2
        ADDS     R1,R0,#+2
        MOVS     R2,#+4
        ADDS     R0,R4,#+5
          CFI FunCall mem_cmp
        BL       mem_cmp
        CBZ.N    R0,??nodeAddrCheckTimer_3
        ADDS     R6,R6,#+1
??nodeAddrCheckTimer_4:
        LDRH     R0,[R5, #+0]
        CMP      R6,R0
        BLT.N    ??nodeAddrCheckTimer_2
        MOV      R0,R4
          CFI FunCall endNodeListRemove
        BL       endNodeListRemove
??nodeAddrCheckTimer_3:
        MOV      R0,R4
          CFI FunCall endNodeListNext
        BL       endNodeListNext
??nodeAddrCheckTimer_1:
        MOVS     R4,R0
        BEQ.N    ??nodeAddrCheckTimer_0
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R5,R0
        MOVS     R6,#+0
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??nodeAddrCheckTimer_4
        B.N      ??nodeAddrCheckTimer_3
//  166 	endNodeListPeriodicCheck( );
??nodeAddrCheckTimer_0:
          CFI FunCall endNodeListPeriodicCheck
        BL       endNodeListPeriodicCheck
//  167 	XPRINTF((10, "node check!\n"));
        ADR.W    R1,?_6
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  168 	ctimer_set(&period_nodeaddr_timer, 10*1000, nodeAddrCheckTimer, NULL);
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R3,#+0
        LDR.W    R2,??DataTable21
        LDR.W    R0,??DataTable21_1
        MOVW     R1,#+10000
          CFI FunCall ctimer_set
        B.W      ctimer_set
          CFI EndBlock cfiBlock1
//  169 }
//  170 
//  171 static void setNodeAddrChecktimer(void)
//  172 {
//  173 	ctimer_set(&period_nodeaddr_timer, 30*1000, nodeAddrCheckTimer, NULL);
//  174 }
//  175 
//  176 
//  177 
//  178 
//  179 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function fireProtocolProcess
        THUMB
//  180 static void fireProtocolProcess(process_data_t data)
//  181 {
fireProtocolProcess:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R5,R0
//  182 	const HWGG_FRAME *pFrame = NULL;
//  183 	const FIRE_NODE *pFireNode = NULL;
//  184 	//const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
//  185 	//NODE_INFO *pnode = NULL;
//  186 
//  187 	pFrame = (const HWGG_FRAME *)data;
//  188 	pFireNode = (const FIRE_NODE *)pFrame->ubaData;
        ADD      R4,R5,#+13
//  189 
//  190 
//  191 	MEM_DUMP(9, "rf<-", data, pFrame->ubLen + HWGG_HEAD_END_CRC_LEN);
        LDRB     R0,[R5, #+1]
        ADR.W    R1,?_7
        ADDS     R3,R0,#+4
        MOV      R2,R5
        MOVS     R0,#+9
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  192 	if (pFireNode->ubCmd == HWGG_CMD_HEART)
        LDRB     R0,[R4, #+9]
        CMP      R0,#+203
        BNE.N    ??fireProtocolProcess_0
//  193 	{
//  194 		XPRINTF((12, "hwgg_cmd_heart\n"));
        ADR.W    R1,?_8
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  195 		addFireNodeToList(data);
        MOV      R0,R5
        POP      {R1,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall addFireNodeToList
        B.N      addFireNodeToList
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  196 	}
//  197 	else if (pFireNode->ubCmd == HWGG_CMD_LOW_VOLTAGE || pFireNode->ubCmd == HWGG_CMD_WARN)
??fireProtocolProcess_0:
        CMP      R0,#+193
        IT       NE 
        CMPNE    R0,#+202
        BNE.N    ??fireProtocolProcess_1
//  198 	{
//  199 		XPRINTF((12, "hwgg_warn\n"));
        ADR.W    R1,?_9
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  200 		addFireNodeToList(data);
        MOV      R0,R5
          CFI FunCall addFireNodeToList
        BL       addFireNodeToList
//  201 		process_post(&sim900a_app_process, sim900_event_fire_warn, (void*)pFireNode);
        LDR.W    R0,??DataTable21_2
        LDRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable21_3
        MOV      R2,R4
          CFI FunCall process_post
        BL       process_post
//  202 		process_post(&ip_data_process, event_ip_warn, (void*)pFireNode);
        MOV      R2,R4
        LDR.W    R0,??DataTable21_4
        B.N      ??fireProtocolProcess_2
//  203 	}
//  204 	else if (pFireNode->ubCmd == HWGG_CMD_TRAN && pFireNode->ubLen > FIRE_FIX_LEN)
??fireProtocolProcess_1:
        CMP      R0,#+204
        BNE.N    ??fireProtocolProcess_3
        LDRB     R0,[R4, #+0]
        CMP      R0,#+11
        BLT.N    ??fireProtocolProcess_3
//  205 	{
//  206 		/*post data to */
//  207 		stFireData.ublen = pFireNode->ubLen - FIRE_FIX_LEN;
        LDR.W    R5,??DataTable21_5
        SUBS     R0,R0,#+10
        STRB     R0,[R5, #+0]
//  208 		stFireData.ubadata[0] = stFireData.ublen+5;
//  209 		stFireData.ubadata[1] = HWGG_CMD_TRAN;
//  210 		stFireData.ubadata[2] = pFireNode->ubaSrcMac[0];
//  211 		stFireData.ubadata[3] = pFireNode->ubaSrcMac[1];
//  212 		stFireData.ubadata[4] = pFireNode->ubaSrcMac[2];
//  213 		stFireData.ubadata[5] = pFireNode->ubaSrcMac[3];
//  214 		stFireData.ublen += 6;
//  215 		memcpy(&stFireData.ubadata[6], pFireNode->ubaData, stFireData.ublen);
        ADD      R1,R4,#+10
        ADDS     R0,R0,#+5
        STRB     R0,[R5, #+1]
        MOVS     R0,#+204
        STRB     R0,[R5, #+2]
        LDRB     R0,[R4, #+1]
        STRB     R0,[R5, #+3]
        LDRB     R0,[R4, #+2]
        STRB     R0,[R5, #+4]
        LDRB     R0,[R4, #+3]
        STRB     R0,[R5, #+5]
        LDRB     R0,[R4, #+4]
        STRB     R0,[R5, #+6]
        LDRB     R0,[R5, #+0]
        ADDS     R2,R0,#+6
        STRB     R2,[R5, #+0]
        ADDS     R0,R5,#+7
        UXTB     R2,R2
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  216 		process_post(&sim900a_app_process, sim900_event_fire_tran, &stFireData);
        LDR.N    R0,??DataTable21_6
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable21_3
        MOV      R2,R5
          CFI FunCall process_post
        BL       process_post
//  217 		process_post(&ip_data_process, event_ip_tran, &stFireData);
        MOV      R2,R5
        LDR.N    R0,??DataTable21_7
??fireProtocolProcess_2:
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable21_8
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
//  218 	}
//  219 }
??fireProtocolProcess_3:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//  220 
//  221 
//  222 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function frieAppHandler
        THUMB
//  223 void frieAppHandler(process_event_t ev, process_data_t data)
//  224 {
//  225 	if (ev == fire_event_rev && data != NULL)
frieAppHandler:
        LDR.N    R2,??DataTable21_9
        LDRB     R2,[R2, #+0]
        CMP      R0,R2
        BNE.N    ??frieAppHandler_0
        CMP      R1,#+0
        ITT      NE 
//  226 	{
//  227 		fireProtocolProcess(data);
        MOVNE    R0,R1
          CFI FunCall fireProtocolProcess
        BNE.W    fireProtocolProcess
//  228 	}
//  229 }
??frieAppHandler_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  230 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function process_thread_fire_app_process
        THUMB
//  231 PROCESS_THREAD(fire_app_process, ev, data)
//  232 {
process_thread_fire_app_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
        MOV      R0,R2
//  233 	PROCESS_BEGIN( );
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_fire_app_process_0
        CMP      R2,#+237
        BEQ.N    ??process_thread_fire_app_process_1
        B.N      ??process_thread_fire_app_process_2
//  234 
//  235 	while(1)
//  236 	{
//  237 		PROCESS_YIELD( );
??process_thread_fire_app_process_0:
        MOVS     R0,#+237
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R4,PC}
//  238 		frieAppHandler(ev, data);
??process_thread_fire_app_process_1:
        LDR.N    R2,??DataTable21_9
        LDRB     R2,[R2, #+0]
        CMP      R1,R2
        BNE.N    ??process_thread_fire_app_process_0
        CMP      R0,#+0
        BEQ.N    ??process_thread_fire_app_process_0
          CFI FunCall fireProtocolProcess
        BL       fireProtocolProcess
        B.N      ??process_thread_fire_app_process_0
//  239 	}
//  240 	PROCESS_END( );
??process_thread_fire_app_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  241 }
//  242 
//  243 
//  244 static struct ringbuf ringuartbuf;
//  245 static uint8_t uartbuf[128];
//  246 /*----------------------------------------------------------------------*/
//  247 #define FIRE_RXBUFS	 	8
//  248 #define FIRE_BUF_LEN	128
//  249 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  250 static uint8_t fire_rxbufs[FIRE_RXBUFS][FIRE_BUF_LEN];
fire_rxbufs:
        DS8 1024
//  251 
//  252 #if FIRE_RXBUFS > 1
//  253 static volatile int8_t fire_first = -1, fire_last = 0;
//  254 #else   
//  255 static const int8_t fire_first = 0, fire_last = 0;
//  256 #endif  
//  257 
//  258 #if FIRE_RXBUFS > 1
//  259 #define CLEAN_FIRE_RXBUFS() do{fire_first = -1; fire_last = 0;}while(0)
//  260 #define FIRE_RXBUFS_EMPTY() (fire_first == -1)
//  261 static int FIRE_RXBUFS_FULL( )
//  262 {
//  263 	int8_t first_tmp = fire_first;
//  264 	return first_tmp == fire_last;
//  265 }
//  266 #else 
//  267 #define CLEAN_FIRE_RXBUFS( ) (fire_rxbufs[0][0] = 0)
//  268 #define FIRE_RXBUFS_EMPTY( ) (fire_rxbufs[0][0] == 0)
//  269 #define FIRE_RXBUFS_FULL( )  (fire_rxbufs[0][0] != 0)
//  270 #endif 
//  271 
//  272 /*---------------------------------------------------------------------------*/
//  273 static int add_to_fire_rxbuf(uint8_t *src)
//  274 {
//  275 	HWGG_FRAME *pHwgg = NULL;
//  276 	u_char ubLen = 0;
//  277 	if(FIRE_RXBUFS_FULL()) 
//  278 	{
//  279 		return 0;
//  280 	}
//  281 
//  282 	//TODO:need to know frame length
//  283 	pHwgg = (HWGG_FRAME *)src;
//  284 	ubLen = pHwgg->ubLen + HWGG_HEAD_END_CRC_LEN;
//  285 	memcpy(fire_rxbufs[fire_last], src, ubLen);
//  286 
//  287 	#if FIRE_RXBUFS > 1
//  288 	fire_last = (fire_last + 1) % FIRE_RXBUFS;
//  289 	if(fire_first == -1) 
//  290 	{
//  291 		fire_first = 0;
//  292 	}
//  293 	#endif
//  294 
//  295 	//TODO:need to know frame length
//  296 	memset(src, 0, ubLen);//clear buf
//  297 	return 1;
//  298 }
//  299 
//  300 /*---------------------------------------------------------------------------*/
//  301 static int read_from_fire_rxbuf(void *dest, unsigned short len)
//  302 {
//  303 	HWGG_FRAME *pHwgg = NULL;
//  304 	u_char ubLen = 0;
//  305 
//  306 	if(FIRE_RXBUFS_EMPTY()) 
//  307 	{          
//  308 		return 0;
//  309 	}
//  310 
//  311 	pHwgg = (HWGG_FRAME *)fire_rxbufs[fire_first];
//  312 	ubLen = pHwgg->ubLen + HWGG_HEAD_END_CRC_LEN;
//  313 	if (ubLen > len)
//  314 	{   
//  315 		len = 0;
//  316 	} 
//  317 	else 
//  318 	{
//  319 		len = ubLen;  //frame length
//  320 		memcpy(dest, (uint8_t*)&fire_rxbufs[fire_first][0], len);
//  321 		memset((uint8_t*)&fire_rxbufs[fire_first][0], 0, len);
//  322 	}
//  323 
//  324 	#if FIRE_RXBUFS > 1
//  325 	{
//  326 		int first_tmp;
//  327 		fire_first = (fire_first + 1) % FIRE_RXBUFS;
//  328 		first_tmp = fire_first;
//  329 		if(first_tmp == fire_last) 
//  330 		{
//  331 			CLEAN_FIRE_RXBUFS();
//  332 		}
//  333 	}
//  334 	#else
//  335 	CLEAN_FIRE_RXBUFS();
//  336 	#endif
//  337 	return len;
//  338 }
//  339 
//  340 
//  341 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function process_thread_fire_node_uart
        THUMB
//  342 PROCESS_THREAD(fire_node_uart, ev, data)
//  343 {
process_thread_fire_node_uart:
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
        MOV      R8,R1
//  344 	static u_char buf[128];
//  345 	static struct etimer et_rev_timeout;
//  346 	static int ptr;
//  347 	HWGG_FRAME *pHwgg;
//  348 	int c;
//  349 	
//  350 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_fire_node_uart_0
        CMP      R0,#+366
        BEQ.N    ??process_thread_fire_node_uart_1
        B.N      ??process_thread_fire_node_uart_2
//  351 	XPRINTF((12, "fire_node_uart\r\n"));
??process_thread_fire_node_uart_0:
        ADR.W    R1,?_10
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  352 	fire_event_rev = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        LDR.N    R1,??DataTable21_9
        STRB     R0,[R1, #+0]
        B.N      ??process_thread_fire_node_uart_1
//  353 	
//  354 	while(1) 
//  355 	{
//  356 		c = ringbuf_get(&ringuartbuf);
//  357 		if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_rev_timeout)))
//  358 		{
//  359 			XPRINTF((8, "T_O\r\n"));
//  360 			ptr = 0;
//  361 			buf[0] = 0;
//  362 		}
//  363 
//  364 		if(c == -1) 
//  365 		{
//  366 			PROCESS_YIELD();
//  367 		} 
//  368 		else 
//  369 		{
//  370 			if (ptr <= 128)
//  371 			{
//  372 				buf[ptr++] = (uint8_t)c;
//  373 				if (ptr==1 && buf[0] == HWGG_HEAD)
//  374 				{
//  375 					//set timeout 
//  376 					//Frame start
//  377 					XPRINTF((12, "start\r\n"));
//  378 					etimer_set(&et_rev_timeout, 500);					
//  379 				}
//  380 
//  381 				//head error
//  382 				if (buf[0] != HWGG_HEAD)
//  383 				{
//  384 					ptr = 0;
//  385 					buf[0] = 0;
//  386 				}
//  387 				else
//  388 				{
//  389 					if (ptr >= HWGG_FRAME_FIX_LEN)
//  390 					{
//  391 						pHwgg = (HWGG_FRAME *)buf;
//  392 						if ((c == HWGG_END)&& (pHwgg->ubLen + HWGG_HEAD_END_CRC_LEN) == ptr)
//  393 						{
//  394 							//MEM_DUMP(10,"ra<-", buf, ptr);
//  395 							if (fireAppFilterNodeAddr((const u_char *)buf))
//  396 							{
//  397 								//MEM_DUMP(10,"filt", buf, ptr);
//  398 								add_to_fire_rxbuf(buf);
//  399 								process_poll(&fire_read_process);
//  400 							}
//  401 							etimer_stop(&et_rev_timeout);
//  402 							ptr = 0;
//  403 							buf[0] = 0;
//  404 						}
//  405 					}
//  406 				}
//  407 			}
//  408 			else
//  409 			{
//  410 				ptr = 0;
??process_thread_fire_node_uart_3:
        MOVS     R0,#+0
        STR      R0,[R6, #+128]
//  411 				buf[0] = 0;
        STRB     R0,[R6, #+0]
//  412 			}
??process_thread_fire_node_uart_1:
        LDR.N    R7,??DataTable21_9
        ADD      R0,R7,#+84
          CFI FunCall ringbuf_get
        BL       ringbuf_get
        CMP      R8,#+136
        MOV      R5,R0
        LDR.N    R6,??DataTable21_10
        BNE.N    ??process_thread_fire_node_uart_4
        ADD      R0,R6,#+132
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??process_thread_fire_node_uart_4
        ADR.W    R1,?_11
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R0,#+0
        STR      R0,[R6, #+128]
        STRB     R0,[R6, #+0]
??process_thread_fire_node_uart_4:
        CMN      R5,#+1
        BNE.N    ??process_thread_fire_node_uart_5
        MOV      R0,#+366
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R1,R4-R9,PC}
??process_thread_fire_node_uart_5:
        LDR      R0,[R6, #+128]
        CMP      R0,#+129
        BGE.N    ??process_thread_fire_node_uart_3
        STRB     R5,[R0, R6]
        ADDS     R0,R0,#+1
        STR      R0,[R6, #+128]
        CMP      R0,#+1
        ITT      EQ 
        LDRBEQ   R0,[R6, #+0]
        CMPEQ    R0,#+126
        BNE.N    ??process_thread_fire_node_uart_6
        ADR.W    R1,?_12
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOV      R1,#+500
        ADD      R0,R6,#+132
          CFI FunCall etimer_set
        BL       etimer_set
??process_thread_fire_node_uart_6:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+126
        BNE.N    ??process_thread_fire_node_uart_3
        LDR      R0,[R6, #+128]
        CMP      R0,#+16
        BLT.N    ??process_thread_fire_node_uart_1
        CMP      R5,#+13
        ITTT     EQ 
        LDRBEQ   R1,[R6, #+1]
        ADDEQ    R1,R1,#+4
        CMPEQ    R1,R0
        BNE.N    ??process_thread_fire_node_uart_1
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        LDRB     R1,[R6, #+1]
        LDRB     R3,[R6, #+13]
        SUB      R2,R1,#+12
        CMP      R2,R3
        BNE.N    ??process_thread_fire_node_uart_7
        LDRH     R0,[R0, #+0]
        CBZ.N    R0,??process_thread_fire_node_uart_8
        ADDS     R3,R1,#+4
        MOV      R2,R6
        ADR.W    R1,?_3
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        MOVS     R3,#+4
        ADD      R2,R6,#+14
        ADR.W    R1,?_4
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        MOVS     R0,#+4
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R5,R0
        MOV      R9,#+0
        LDRH     R0,[R5, #+0]
        CBNZ.N   R0,??process_thread_fire_node_uart_9
        B.N      ??process_thread_fire_node_uart_10
??process_thread_fire_node_uart_11:
        ADD      R9,R9,#+1
??process_thread_fire_node_uart_9:
        LDRH     R0,[R5, #+0]
        CMP      R9,R0
        BGE.N    ??process_thread_fire_node_uart_7
        ADD      R0,R5,R9, LSL #+2
        ADDS     R1,R0,#+2
        MOVS     R2,#+4
        ADD      R0,R6,#+14
          CFI FunCall mem_cmp
        BL       mem_cmp
        CMP      R0,#+0
        BNE.N    ??process_thread_fire_node_uart_11
??process_thread_fire_node_uart_10:
        MOVS     R3,#+4
        MOVS     R2,#+5
        ADR.W    R1,?_5
        MOVS     R0,#+10
          CFI FunCall __xstd_dump
        BL       __xstd_dump
??process_thread_fire_node_uart_8:
        LDRSB    R0,[R7, #+1]
        LDRSB    R1,[R7, #+2]
        CMP      R0,R1
        BEQ.N    ??process_thread_fire_node_uart_12
        LDRB     R0,[R6, #+1]
        LDR.N    R3,??DataTable21_11
        ADDS     R0,R0,#+4
        UXTB     R5,R0
        LDRSB    R0,[R7, #+2]
        MOV      R2,R5
        MOV      R1,R6
        ADD      R0,R3,R0, LSL #+7
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRSB    R0,[R7, #+2]
        ADDS     R0,R0,#+1
        ASRS     R1,R0,#+2
        ADD      R1,R0,R1, LSR #+29
        ASRS     R1,R1,#+3
        SUB      R0,R0,R1, LSL #+3
        STRB     R0,[R7, #+2]
        MOV      R1,R5
        LDRSB    R0,[R7, #+1]
        CMN      R0,#+1
        ITT      EQ 
        MOVEQ    R0,#+0
        STRBEQ   R0,[R7, #+1]
        MOV      R0,R6
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
??process_thread_fire_node_uart_12:
        ADD      R0,R7,#+68
          CFI FunCall process_poll
        BL       process_poll
??process_thread_fire_node_uart_7:
        ADD      R0,R6,#+132
          CFI FunCall etimer_stop
        BL       etimer_stop
        B.N      ??process_thread_fire_node_uart_3
//  413 		}
//  414 	}
//  415 	PROCESS_END();
??process_thread_fire_node_uart_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock5
//  416 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??buf:
        DS8 128
        DS8 4
        DS8 16
//  417 
//  418 
//  419 
//  420 
//  421 /******************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function process_thread_fire_read_process
        THUMB
//  422 PROCESS_THREAD(fire_read_process, ev, data)
//  423 {
process_thread_fire_read_process:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  424 	int len;
//  425 	static u_char ubBuf[128];
//  426 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_fire_read_process_0
        CMP      R0,#+432
        BEQ.N    ??process_thread_fire_read_process_1
        B.N      ??process_thread_fire_read_process_2
//  427 	XPRINTF((12,"rf_radio_process: started\r\n"));
??process_thread_fire_read_process_0:
        ADR.W    R1,?_13
        MOVS     R0,#+12
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  428 
//  429 	
//  430 	while(1) 
//  431 	{
//  432 		PROCESS_YIELD_UNTIL(ev == PROCESS_EVENT_POLL);
??process_thread_fire_read_process_3:
        MOV      R0,#+432
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_fire_read_process_4
??process_thread_fire_read_process_1:
        CMP      R1,#+130
        BEQ.N    ??process_thread_fire_read_process_5
??process_thread_fire_read_process_4:
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
//  433 
//  434 		len = read_from_fire_rxbuf(ubBuf, FIRE_BUF_LEN);
??process_thread_fire_read_process_5:
        LDR.N    R5,??DataTable21_9
        LDRSB    R0,[R5, #+1]
        CMN      R0,#+1
        BEQ.N    ??process_thread_fire_read_process_6
        LDRSB    R0,[R5, #+1]
        LDR.N    R7,??DataTable21_11
        ADD      R0,R7,R0, LSL #+7
        LDRB     R0,[R0, #+1]
        ADDS     R6,R0,#+4
        UXTB     R6,R6
        CMP      R6,#+129
        IT       GE 
        MOVGE    R6,#+0
        BGE.N    ??process_thread_fire_read_process_7
        LDRSB    R0,[R5, #+1]
        ADD      R1,R7,R0, LSL #+7
        MOV      R2,R6
        ADD      R0,R5,#+220
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDRSB    R0,[R5, #+1]
        MOV      R1,R6
        ADD      R0,R7,R0, LSL #+7
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
??process_thread_fire_read_process_7:
        LDRSB    R0,[R5, #+1]
        ADDS     R0,R0,#+1
        ASRS     R1,R0,#+2
        ADD      R1,R0,R1, LSR #+29
        ASRS     R1,R1,#+3
        SUB      R0,R0,R1, LSL #+3
        STRB     R0,[R5, #+1]
        LDRSB    R0,[R5, #+1]
        LDRSB    R1,[R5, #+2]
        CMP      R0,R1
        BNE.N    ??process_thread_fire_read_process_8
        MOV      R0,#-1
        STRB     R0,[R5, #+1]
        MOVS     R0,#+0
        STRB     R0,[R5, #+2]
//  435 		if(len > 0) 
??process_thread_fire_read_process_8:
        CBZ.N    R6,??process_thread_fire_read_process_6
//  436 		{
//  437 			//MEM_DUMP(10, "READ", ubBuf, len);
//  438 			process_post(&fire_app_process, fire_event_rev, ubBuf);
        ADD      R2,R5,#+220
        LDRB     R1,[R5, #+0]
        ADD      R0,R5,#+52
          CFI FunCall process_post
        BL       process_post
//  439 		}
//  440 		if(!FIRE_RXBUFS_EMPTY()) 
??process_thread_fire_read_process_6:
        LDRSB    R0,[R5, #+1]
        CMN      R0,#+1
        BEQ.N    ??process_thread_fire_read_process_3
//  441 		{
//  442 			/*
//  443 			* Some data packet still in rx buffer (this happens because process_poll
//  444 			* doesn't queue requests), so stm32w_radio_process needs to be called
//  445 			* again.
//  446 			*/
//  447 			process_poll(&fire_read_process);
        ADD      R0,R5,#+68
          CFI FunCall process_poll
        BL       process_poll
        B.N      ??process_thread_fire_read_process_3
//  448 		}
//  449 	}
//  450 	PROCESS_END();
??process_thread_fire_read_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock6
//  451 }
//  452 
//  453 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function fire_uart_input_byte
        THUMB
//  454 static int fire_uart_input_byte(unsigned char c)
//  455 {
fire_uart_input_byte:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  456 	static uint8_t overflow = 0; /* Buffer overflow: ignore until END */
//  457 	if(!overflow) 
        LDR.N    R4,??DataTable21_9
        LDRB     R1,[R4, #+3]
        CMP      R1,#+0
        MOV      R1,R0
        ADD      R0,R4,#+84
        BNE.N    ??fire_uart_input_byte_0
//  458 	{
//  459 		/* Add character */
//  460 		if(ringbuf_put(&ringuartbuf, c) == 0) 
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBNZ.N   R0,??fire_uart_input_byte_1
//  461 		{
//  462 			/* Buffer overflow: ignore the rest of the line */
//  463 			overflow = 1;
        MOVS     R0,#+1
        B.N      ??fire_uart_input_byte_2
//  464 		}
//  465 	} 
//  466 	else 
//  467 	{
//  468 		/* Buffer overflowed:
//  469 		* Only (try to) add terminator characters, otherwise skip */
//  470 		if(ringbuf_put(&ringuartbuf, c) != 0) 
??fire_uart_input_byte_0:
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBZ.N    R0,??fire_uart_input_byte_1
//  471 		{
//  472 			overflow = 0;
        MOVS     R0,#+0
??fire_uart_input_byte_2:
        STRB     R0,[R4, #+3]
//  473 		}
//  474 	}
//  475 	/* Wake up consumer process */
//  476 	process_poll(&fire_node_uart);	
??fire_uart_input_byte_1:
        ADD      R0,R4,#+36
          CFI FunCall process_poll
        BL       process_poll
//  477 	return 1;
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7
//  478 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
fire_event_rev:
        DATA
        DC8 0
        DC8 -1
        DC8 0
        DC8 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
fire_node_uart:
        DC32 0H, ?_0, process_thread_fire_node_uart
        DC8 0, 0, 0, 0
fire_app_process:
        DC32 0H, ?_1, process_thread_fire_app_process
        DC8 0, 0, 0, 0
fire_read_process:
        DC32 0H, ?_2, process_thread_fire_read_process
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0
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
//  479 
//  480 static void fire_uart_init(void)
//  481 {
//  482 	ringbuf_init(&ringuartbuf, uartbuf, sizeof(uartbuf));
//  483 	process_start(&fire_node_uart, NULL);
//  484 	Uart_RfSetInput(fire_uart_input_byte);
//  485 }
//  486 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function fireAppInit
        THUMB
//  487 void fireAppInit(void)
//  488 {
fireAppInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  489 	fire_uart_init( );
        LDR.N    R4,??DataTable21_9
        MOVS     R2,#+128
        ADD      R1,R4,#+92
        ADD      R0,R4,#+84
          CFI FunCall ringbuf_init
        BL       ringbuf_init
        MOVS     R1,#+0
        ADD      R0,R4,#+36
          CFI FunCall process_start
        BL       process_start
        LDR.N    R0,??DataTable21_12
          CFI FunCall Uart_RfSetInput
        BL       Uart_RfSetInput
//  490 	setNodeAddrChecktimer( );
        MOVS     R3,#+0
        LDR.N    R2,??DataTable21
        MOVW     R1,#+30000
        ADDS     R0,R4,#+4
          CFI FunCall ctimer_set
        BL       ctimer_set
//  491 	process_start(&fire_app_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+52
          CFI FunCall process_start
        BL       process_start
//  492 	process_start(&fire_read_process, NULL);
        ADD      R0,R4,#+68
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
          CFI FunCall process_start
        B.W      process_start
          CFI EndBlock cfiBlock8
//  493 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     nodeAddrCheckTimer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC32     fire_event_rev+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DC32     sim900_event_fire_warn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_3:
        DC32     sim900a_app_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_4:
        DC32     event_ip_warn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_5:
        DC32     stFireData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_6:
        DC32     sim900_event_fire_tran

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_7:
        DC32     event_ip_tran

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_8:
        DC32     ip_data_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_9:
        DC32     fire_event_rev

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_10:
        DC32     ??buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_11:
        DC32     fire_rxbufs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_12:
        DC32     fire_uart_input_byte

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "find"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "addr"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 "eddr"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_6:
        DC8 "node check!\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_7:
        DC8 "rf<-"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_8:
        DC8 "hwgg_cmd_heart\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_9:
        DC8 "hwgg_warn\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_10:
        DC8 "fire_node_uart\015\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_11:
        DC8 "T_O\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_12:
        DC8 "start\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_13:
        DC8 "rf_radio_process: started\015\012"

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
        DC8 "fire_uart"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "fire_app"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_2:
        DC8 "frie_read"
        DC8 0, 0

        END
//  494 
//  495 
//  496 
// 
// 1 300 bytes in section .bss
//   348 bytes in section .data
//    36 bytes in section .rodata
// 1 332 bytes in section .text
// 
// 1 332 bytes of CODE  memory
//    36 bytes of CONST memory
// 1 648 bytes of DATA  memory
//
//Errors: none
//Warnings: 6
