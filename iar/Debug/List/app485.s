///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:25
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\app485\app485.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\app485\app485.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\app485.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Uart_485SetInput
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memset
        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN etimer_expired
        EXTERN etimer_set
        EXTERN etimer_stop
        EXTERN event_ip_tran
        EXTERN ip_data_process
        EXTERN process_alloc_event
        EXTERN process_poll
        EXTERN process_post
        EXTERN process_start
        EXTERN ringbuf_get
        EXTERN ringbuf_init
        EXTERN ringbuf_put
        EXTERN sim900_event_fire_tran
        EXTERN sim900a_app_process
        EXTERN uart2_send_bytes

        PUBLIC app485Init
        PUBLIC app485_frame_process
        PUBLIC app_485_rev_process
        PUBLIC app_bus_frame_process
        PUBLIC event_485_msg
        PUBLIC event_485_rev_msg
        PUBLIC isFrameEnd
        PUBLIC uart485_init
        PUBLIC uart485_input_byte
        PUBLIC xorCHeckFrame
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\app485\app485.c
//    1 #include "contiki.h"
//    2 #include "basictype.h"
//    3 #include "app485.h"
//    4 #include <string.h>
//    5 #include "sysprintf.h"
//    6 #include "lib/ringbuf.h"
//    7 
//    8 
//    9 process_event_t event_485_msg;

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   10 process_event_t event_485_rev_msg;
event_485_rev_msg:
        DS8 1
//   11 
//   12 static APP_485_DATA app_485_tx;				//used to send frame to 485 bus
//   13 static APP_485_DATA app_485_rx;				//used to receive data from 485

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 static APP_485_DATA app_485_warn_msg;		//used to save msg to server that receive from 485 bus
app_485_warn_msg:
        DS8 128
//   15 
//   16 
//   17 
//   18 static const u_char app485addr = 0x01;
//   19 
//   20 PROCESS(app_485_rev_process, "app_485_rev_process");
//   21 PROCESS(app_bus_frame_process, "app_bus_frame_process");
//   22 
//   23 
//   24 
//   25 
//   26 /*
//   27 extern funtion and var
//   28 */
//   29 PROCESS_NAME(sim900a_app_process);
//   30 PROCESS_NAME(ip_data_process);
//   31 
//   32 extern process_event_t sim900_event_fire_tran;
//   33 extern process_event_t event_ip_tran;
//   34 
//   35 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function xorCHeckFrame
          CFI NoCalls
        THUMB
//   36 u_char xorCHeckFrame(const u_char *ptb, u_char ubLen)
//   37 {
//   38 	int i = 0;
//   39 	u_char ubxorCheck = 0;
xorCHeckFrame:
        MOVS     R2,#+0
//   40 	for (i = 0; i < ubLen; i++)
        CBZ.N    R1,??xorCHeckFrame_0
//   41 	{
//   42 		ubxorCheck ^= ptb[i];
??xorCHeckFrame_1:
        LDRB     R3,[R0], #+1
        EORS     R2,R3,R2
//   43 	}
        SUBS     R1,R1,#+1
        BNE.N    ??xorCHeckFrame_1
//   44 
//   45 	return ubxorCheck;
??xorCHeckFrame_0:
        UXTB     R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   46 }
//   47 
//   48 
//   49 
//   50 static int fill_485_header(u_char *pFrame,u_char cmd,u_char ubSrcAddr,u_char ubDestAddr)
//   51 {
//   52 	//fill frame header syn TB_FRAME_HEADER_LEN bytes
//   53 	u_char *pBuf = pFrame;
//   54 	int i = 0;
//   55 	TB_FRAME_COMMON *pTbComm = NULL;
//   56 	int nFrameL = 0;
//   57 	
//   58 	for (i = 0; i < TB_FRAME_HEADER_LEN; i++)
//   59 	{
//   60 		pBuf[i] = TB_SYN;
//   61 	}
//   62 	nFrameL += TB_FRAME_HEADER_LEN;
//   63 
//   64 	pTbComm = (TB_FRAME_COMMON *)(pFrame+TB_FRAME_HEADER_LEN);
//   65 	pTbComm->ubCmd = cmd;
//   66 	pTbComm->ubSrcAddr = ubSrcAddr;
//   67 	pTbComm->ubDestAddr = ubDestAddr;
//   68 	return TB_COMMON_FIX_LEN+TB_FRAME_HEADER_LEN;
//   69 }
//   70 
//   71 static int flll_485_soh_frame(u_char *pFrame, 
//   72                               u_char cmd, 
//   73                               u_char ubSrcAddr, 
//   74                               u_char ubDestAddr, 
//   75                               u_char pkg_no,
//   76                               u_char type,
//   77 							  const u_char *pcData, 
//   78 							  u_char ubLen)
//   79 {
//   80 	TB_FRAME_SOH_DATA *pTb = NULL;
//   81 	u_char ubxorCheck = 0;
//   82 	int i = 0;
//   83 	int nFrameL = -1;
//   84 	
//   85 	if (pFrame == NULL)
//   86 		return -1;
//   87 	nFrameL = 0;
//   88 	
//   89 	//fill frame header 
//   90 	nFrameL += fill_485_header(pFrame, cmd, ubSrcAddr, ubDestAddr);
//   91 	
//   92 	pTb = (TB_FRAME_SOH_DATA *)(pFrame+TB_FRAME_HEADER_LEN);
//   93 
//   94 	pTb->ubPkgNO = pkg_no;
//   95 	pTb->ubType = type;
//   96 	pTb->ubLen = 0;//first set len zero.
//   97 	nFrameL += 3;
//   98 
//   99 	//fill frame data field
//  100 	if (pcData == NULL || ubLen == 0)
//  101 	{
//  102 		pTb->ubLen = 0;
//  103 	}
//  104 	else
//  105 	{	
//  106 		memcpy(pTb->ubaData, pcData, ubLen);
//  107 		nFrameL += ubLen;
//  108 		i = ubLen;						//buf position
//  109 	}
//  110 	
//  111 	//frame end and xor check field 
//  112 	ubxorCheck = xorCHeckFrame((const u_char *)pTb, nFrameL-TB_FRAME_HEADER_LEN);
//  113 	pTb->ubaData[i++] = TB_EOT;
//  114 	pTb->ubaData[i++] = ubxorCheck;
//  115 	nFrameL += 2;
//  116 	
//  117 	return nFrameL;
//  118 }
//  119 
//  120 
//  121 
//  122 
//  123 static int flll_485_bscsoh_frame(u_char *pFrame, 
//  124                                  u_char cmd, 
//  125                                  u_char ubSrcAddr, 
//  126                                  u_char ubDestAddr, 
//  127                                  u_char ubCmdno,
//  128                                  const u_char *pcData, 
//  129    							     u_char ubLen)
//  130 {
//  131 	TB_FRAME_BSC_DATA *pTb = NULL;
//  132 	u_char ubxorCheck = 0;
//  133 	int i = 0;
//  134 	int nFrameL = -1;
//  135 	
//  136 	if (pFrame == NULL)
//  137 		return -1;
//  138 	nFrameL = 0;
//  139 
//  140 	//fill frame header 
//  141 	nFrameL += fill_485_header(pFrame, cmd, ubSrcAddr, ubDestAddr);	
//  142 	pTb = (TB_FRAME_BSC_DATA *)(pFrame+TB_FRAME_HEADER_LEN);
//  143 
//  144 	pTb->ubCmdNo = ubCmdno;
//  145 	nFrameL += 1;
//  146 
//  147 	//fill frame data field
//  148 	if (pcData == NULL || ubLen == 0)
//  149 	{
//  150 
//  151 	}
//  152 	else
//  153 	{	
//  154 		memcpy(pTb->ubaData, pcData, ubLen);
//  155 		nFrameL += ubLen;
//  156 		i = ubLen;						//buf position
//  157 	}
//  158 	
//  159 	//frame end and xor check field 
//  160 	ubxorCheck = xorCHeckFrame((const u_char *)pTb, nFrameL-TB_FRAME_HEADER_LEN);
//  161 	pTb->ubaData[i++] = TB_EOT;
//  162 	pTb->ubaData[i++] = ubxorCheck;
//  163 	nFrameL += 2;
//  164 	
//  165 	return nFrameL;
//  166 }
//  167 
//  168 static int fill_485_ack_frame(u_char *pFrame, u_char cmd, u_char ubSrcAddr, u_char ubDestAddr, u_char pkg_no)
//  169 {
//  170 	int nFrameL = -1;
//  171 	u_char ubxorCheck = 0;
//  172 	TB_FRAME_ACK *pTb = NULL;
//  173 
//  174 	if (pFrame == NULL)
//  175 		return -1;
//  176 		
//  177 	nFrameL = 0;
//  178 	nFrameL += fill_485_header(pFrame, cmd, ubSrcAddr, ubDestAddr);
//  179 
//  180 	pTb = (TB_FRAME_ACK *)(pFrame+TB_FRAME_HEADER_LEN);
//  181 	pTb->ubPkgNo = pkg_no;
//  182 	nFrameL += 1;
//  183 	ubxorCheck = xorCHeckFrame((const u_char *)pTb, nFrameL-TB_FRAME_HEADER_LEN);
//  184 	pTb->ubEot = TB_EOT;
//  185 	pTb->ubXor = ubxorCheck;
//  186 	nFrameL += 2;
//  187 
//  188 	return nFrameL;
//  189 }
//  190 
//  191 
//  192 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function fill_485_sake_frame
        THUMB
//  193 static int fill_485_sake_frame(u_char *pFrame, u_char cmd, u_char ubSrcAddr, u_char ubDestAddr, u_char type)
//  194 {
fill_485_sake_frame:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOV      R5,R1
        MOV      R6,R2
        MOV      R7,R3
//  195 	int nFrameL = -1;
//  196 	u_char ubxorCheck = 0;
//  197 	TB_FRAME_SAKED *pTb = NULL;
//  198 
//  199 	if (pFrame == NULL)
        BNE.N    ??fill_485_sake_frame_0
//  200 		return -1;
        MOV      R0,#-1
        POP      {R1,R4-R7,PC}
//  201 		
//  202 	nFrameL = 0;
//  203 	nFrameL += fill_485_header(pFrame, cmd, ubSrcAddr, ubDestAddr);
??fill_485_sake_frame_0:
        MOVS     R2,#+170
        MOVS     R1,#+4
          CFI FunCall __aeabi_memset
        BL       __aeabi_memset
        ADDS     R0,R4,#+4
//  204 
//  205 	pTb = (TB_FRAME_SAKED *)(pFrame+TB_FRAME_HEADER_LEN);
        ADDS     R1,R4,#+4
        STRB     R5,[R0, #+0]
        STRB     R6,[R0, #+1]
        STRB     R7,[R0, #+2]
//  206 	pTb->ubType = type;
        LDR      R0,[SP, #+24]
        STRB     R0,[R1, #+3]
//  207 	nFrameL += 1;
//  208 	ubxorCheck = xorCHeckFrame((const u_char *)pTb, nFrameL-TB_FRAME_HEADER_LEN);
        LDRB     R2,[R1, #+1]
        LDRB     R0,[R1, #+0]
        EORS     R0,R2,R0
        LDRB     R2,[R1, #+2]
        EORS     R0,R2,R0
        LDRB     R2,[R1, #+3]
        EORS     R0,R2,R0
//  209 	pTb->ubEot = TB_EOT;
        MOVS     R2,#+175
        STRB     R2,[R1, #+4]
//  210 	pTb->ubXor = ubxorCheck;
        STRB     R0,[R1, #+5]
//  211 	nFrameL += 2;
//  212 
//  213 	return nFrameL;
        MOVS     R0,#+10
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock1
//  214 }
//  215 
//  216 
//  217 static int fill_485_common_frame(u_char *pFrame, u_char cmd, u_char ubSrcAddr, u_char ubDestAddr)
//  218 {
//  219 	int nFrameL = -1;
//  220 	u_char ubxorCheck = 0;
//  221 	TB_FRAME_COMMON_FRAME *pTb = NULL;
//  222 
//  223 	if (pFrame == NULL)
//  224 		return -1;
//  225 		
//  226 	nFrameL = 0;
//  227 	nFrameL += fill_485_header(pFrame, cmd, ubSrcAddr, ubDestAddr);
//  228 
//  229 	pTb = (TB_FRAME_COMMON_FRAME *)(pFrame+TB_FRAME_HEADER_LEN);
//  230 	ubxorCheck = xorCHeckFrame((const u_char *)pTb, nFrameL-TB_FRAME_HEADER_LEN);
//  231 	pTb->ubEot = TB_EOT;
//  232 	pTb->ubXor = ubxorCheck;
//  233 	nFrameL += 2;
//  234 
//  235 	return nFrameL;
//  236 }
//  237 
//  238 
//  239 static bool isApp485Frame(const u_char *pcFrame)
//  240 {
//  241 	const APP_485_DATA *pApp485 = (const APP_485_DATA *)pcFrame;
//  242 	//frame headder check
//  243 	if (pApp485->ubaData[0] != TB_SYN || pApp485->ubaData[1] != TB_SYN)
//  244 		return false;
//  245 		
//  246 	//frame end check
//  247 	if (pApp485->ubaData[pApp485->ubLen-2] != TB_EOT)
//  248 		return false;
//  249 	return true;
//  250 } 
//  251 
//  252 
//  253 
//  254 
//  255 static const u_char *find_485_frame_cmd(const u_char *pcFrame)
//  256 {
//  257 	int i = 0; 
//  258 	const APP_485_DATA *pApp485 = (const APP_485_DATA *)pcFrame;
//  259 	if (pcFrame == NULL)
//  260 		return NULL;
//  261 	for (i = 0; i < pApp485->ubLen-1; i++)
//  262 	{
//  263 		if (pApp485->ubaData[i] == TB_SYN && pApp485->ubaData[i+1] != TB_SYN)
//  264 		{
//  265 			return (const u_char *)&pApp485->ubaData[i+1];
//  266 		}
//  267 	}
//  268 
//  269 	return NULL;
//  270 }
//  271 
//  272 static bool isMy485Frame(const u_char *pcFrame)
//  273 {
//  274 	const TB_FRAME_COMMON *pTCom = NULL;
//  275 	if (isApp485Frame(pcFrame))
//  276 	{
//  277 		pTCom = (const TB_FRAME_COMMON *)find_485_frame_cmd(pcFrame);
//  278 		if (pTCom != NULL)
//  279 		{
//  280 			if (pTCom->ubDestAddr == app485addr)
//  281 			{
//  282 				return true;
//  283 			}
//  284 		}
//  285 	}
//  286 
//  287 	return false;
//  288 }
//  289 
//  290 
//  291 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function soh_frame_process
        THUMB
//  292 static int soh_frame_process(APP_485_DATA *pApp485Tx, const u_char *pcTbFrame)
//  293 {
soh_frame_process:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R5,R1
        MOV      R4,R0
//  294 	int nFrameL = -1;
//  295 	const TB_FRAME_SOH_DATA *pSOH = (const TB_FRAME_SOH_DATA *)pcTbFrame;
//  296 	APP_485_DATA *pwarnMsg = &app_485_warn_msg;
//  297 	TB_WARN_MSG *pTbWarnMsg = (TB_WARN_MSG *)pwarnMsg->ubaData;
//  298 
//  299 	//process first msg
//  300 	if (pSOH->ubPkgNO == TB_WARN_FIRST_SEQ)
        LDRB     R0,[R5, #+3]
        LDR.W    R7,??DataTable16
        CMP      R0,#+1
        MOV      R6,#-1
        BNE.N    ??soh_frame_process_0
//  301 	{
//  302 		memset(pwarnMsg, 0, sizeof(*pwarnMsg));
        MOVS     R1,#+128
        MOV      R0,R7
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  303 		
//  304 		pTbWarnMsg->ubLen = pSOH->ubLen;
        LDRB     R0,[R5, #+4]
        STRB     R0,[R7, #+1]
//  305 		pTbWarnMsg->ubType = pSOH->ubType;
//  306 		memcpy(pTbWarnMsg->ubaData, pSOH->ubaData, pSOH->ubLen);
        ADDS     R1,R5,#+6
        LDRB     R0,[R5, #+5]
        STRB     R0,[R7, #+2]
        ADDS     R0,R7,#+3
        LDRB     R2,[R5, #+4]
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  307 		
//  308 		pwarnMsg->ubLen = pSOH->ubLen+2;
        LDRB     R0,[R5, #+4]
//  309 		
//  310 		MEM_DUMP(6,"TB01", pTbWarnMsg, pTbWarnMsg->ubLen+2);
        ADR.W    R1,?_2
        ADDS     R0,R0,#+2
        STRB     R0,[R7, #+0]
        ADDS     R2,R7,#+1
        LDRB     R0,[R7, #+1]
        ADDS     R3,R0,#+2
        B.N      ??soh_frame_process_1
//  311 	}
//  312 	//process msg is not first
//  313 	else
//  314 	{
//  315 		memcpy(&pTbWarnMsg->ubaData[pTbWarnMsg->ubLen], pSOH->ubaData, pSOH->ubLen);
??soh_frame_process_0:
        LDRB     R0,[R7, #+1]
        LDRB     R2,[R5, #+4]
        ADDS     R0,R0,R7
        ADDS     R1,R5,#+6
        ADDS     R0,R0,#+3
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  316 		pwarnMsg->ubLen += pSOH->ubLen;
        LDRB     R0,[R7, #+0]
        LDRB     R1,[R5, #+4]
        ADDS     R0,R1,R0
        STRB     R0,[R7, #+0]
//  317 		pTbWarnMsg->ubLen += pSOH->ubLen;
//  318 
//  319 		MEM_DUMP(6, "TB02",pSOH->ubaData, pSOH->ubLen);
        ADDS     R2,R5,#+6
        LDRB     R0,[R7, #+1]
        LDRB     R1,[R5, #+4]
        ADDS     R0,R1,R0
        STRB     R0,[R7, #+1]
        MOVS     R0,#+6
        LDRB     R3,[R5, #+4]
        ADR.W    R1,?_3
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  320 		MEM_DUMP(6, "TB12",pwarnMsg->ubaData, pwarnMsg->ubLen);
        LDRB     R3,[R7, #+0]
        ADR.W    R1,?_4
        ADDS     R2,R7,#+1
??soh_frame_process_1:
        MOVS     R0,#+6
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  321 	}
//  322 	nFrameL = fill_485_ack_frame(pApp485Tx->ubaData, TB_ACK, app485addr, pSOH->tbCommon.ubSrcAddr, pSOH->ubPkgNO);
        LDRB     R7,[R5, #+3]
        ADDS     R8,R4,#+1
        BEQ.N    ??soh_frame_process_2
        LDRB     R5,[R5, #+1]
        MOVS     R2,#+170
        MOVS     R1,#+4
        MOV      R0,R8
          CFI FunCall __aeabi_memset
        BL       __aeabi_memset
        ADD      R6,R8,#+4
        MOVS     R0,#+226
        STRB     R0,[R6, #+0]
        MOVS     R1,#+4
        MOVS     R0,#+1
        STRB     R0,[R6, #+1]
        STRB     R5,[R6, #+2]
        STRB     R7,[R6, #+3]
        MOV      R0,R6
          CFI FunCall xorCHeckFrame
        BL       xorCHeckFrame
        MOVS     R1,#+175
        STRB     R1,[R6, #+4]
        STRB     R0,[R6, #+5]
        MOVS     R6,#+10
//  323 	if (nFrameL > 0)
//  324 	{
//  325 		pApp485Tx->ubLen = nFrameL;
        STRB     R6,[R4, #+0]
//  326 	}
//  327 	return nFrameL;
??soh_frame_process_2:
        MOV      R0,R6
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock2
//  328 }
//  329 
//  330 static int tbsack_frame_process(APP_485_DATA *pApp485Tx, const u_char *pcTbFrame)
//  331 {
//  332 	int nFrameL = -1;
//  333 	const TB_FRAME_SOH_DATA *pSOH = (const TB_FRAME_SOH_DATA *)pcTbFrame;
//  334 	nFrameL = fill_485_sake_frame(pApp485Tx->ubaData, TB_SAKED, app485addr, pSOH->tbCommon.ubSrcAddr, 0x00);
//  335 	if (nFrameL > 0)
//  336 	{
//  337 		pApp485Tx->ubLen = nFrameL;
//  338 	}
//  339 	return nFrameL;
//  340 }
//  341 
//  342 static int tblink_frame_process(APP_485_DATA *pApp485Tx, const u_char *pcTbFrame)
//  343 {
//  344 	int nFrameL = -1;
//  345 	const TB_FRAME_SOH_DATA *pSOH = (const TB_FRAME_SOH_DATA *)pcTbFrame;
//  346 	nFrameL = fill_485_sake_frame(pApp485Tx->ubaData, TB_LINKED, app485addr, pSOH->tbCommon.ubSrcAddr, 0x00);
//  347 	if (nFrameL > 0)
//  348 	{
//  349 		pApp485Tx->ubLen = nFrameL;
//  350 	}
//  351 	return nFrameL;	
//  352 }
//  353 
//  354 static int tbenq_frame_process(APP_485_DATA *pApp485Tx, const u_char *pcTbFrame)
//  355 {
//  356 	int nFrameL = -1;
//  357 	const TB_FRAME_SOH_DATA *pSOH = (const TB_FRAME_SOH_DATA *)pcTbFrame;
//  358 	nFrameL = fill_485_sake_frame(pApp485Tx->ubaData, TB_ACK, app485addr, pSOH->tbCommon.ubSrcAddr, 0x00);
//  359 	if (nFrameL > 0)
//  360 	{
//  361 		pApp485Tx->ubLen = nFrameL;
//  362 	}
//  363 	return nFrameL;		
//  364 }
//  365 
//  366 static int tbnul_frame_process(APP_485_DATA *pApp485Tx, const u_char *pcTbFrame)
//  367 {
//  368 	int nFrameL = -1;
//  369 	const TB_FRAME_SOH_DATA *pSOH = (const TB_FRAME_SOH_DATA *)pcTbFrame;
//  370 
//  371 	nFrameL = fill_485_sake_frame(pApp485Tx->ubaData, TB_NULACK, app485addr, pSOH->tbCommon.ubSrcAddr, 0x00);
//  372 
//  373 	if (nFrameL > 0)
//  374 	{
//  375 		pApp485Tx->ubLen = nFrameL;
//  376 	}
//  377 	return nFrameL;		
//  378 }
//  379 
//  380 
//  381 static int tack_frame_process(APP_485_DATA *pApp485Tx, const u_char *pcTbFrame)
//  382 {
//  383 	int nFrameL = -1;
//  384 	const TB_FRAME_SOH_DATA *pSOH = (const TB_FRAME_SOH_DATA *)pcTbFrame;
//  385 
//  386 	nFrameL = fill_485_sake_frame(pApp485Tx->ubaData, TB_EXT, app485addr, pSOH->tbCommon.ubSrcAddr, 0x00);
//  387 
//  388 	if (nFrameL > 0)
//  389 	{
//  390 		pApp485Tx->ubLen = nFrameL;
//  391 	}
//  392 	return nFrameL;			
//  393 }
//  394 
//  395 
//  396 static int tbunlink_frame_process(APP_485_DATA *pApp485Tx, const u_char *pcTbFrame)
//  397 {
//  398 	int nFrameL = -1;
//  399 	const TB_FRAME_SOH_DATA *pSOH = (const TB_FRAME_SOH_DATA *)pcTbFrame;
//  400 
//  401 	nFrameL = fill_485_sake_frame(pApp485Tx->ubaData, TB_UNLINKED, app485addr, pSOH->tbCommon.ubSrcAddr, 0x00);
//  402 
//  403 	if (nFrameL > 0)
//  404 	{
//  405 		pApp485Tx->ubLen = nFrameL;
//  406 	}
//  407 	return nFrameL;		
//  408 }
//  409 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function app485_frame_process
        THUMB
//  410 void app485_frame_process(u_char *pioBuf, const u_char *pcData)
//  411 {
app485_frame_process:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  412 	const TB_FRAME_COMMON *pcTbCommon = NULL;
//  413 	int nFrameL = -1;
//  414 	bool is485 = false;
//  415 	const u_char *pFrame = NULL;
//  416 	
//  417 	const APP_485_DATA *pApp485 = (const APP_485_DATA *)pcData;
//  418 	APP_485_DATA *pApp485Tx = (APP_485_DATA *)pioBuf;
//  419 
//  420 	if (pioBuf == NULL || pcData == NULL)
        IT       NE 
        CMPNE    R1,#+0
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOV      R5,#-1
        BEQ.W    ??app485_frame_process_0
//  421 		return;
//  422 
//  423 	is485 = isApp485Frame(pcData);
        LDRB     R0,[R1, #+1]
        CMP      R0,#+170
        ITT      EQ 
        LDRBEQ   R0,[R1, #+2]
        CMPEQ    R0,#+170
        ITTTT    EQ 
        LDRBEQ   R0,[R1, #+0]
        ADDEQ    R0,R0,R1
        LDRBEQ   R0,[R0, #-1]
        CMPEQ    R0,#+175
        BNE.W    ??app485_frame_process_0
//  424 	if (!is485)
//  425 		return;
//  426 
//  427 	pFrame = (const u_char *)find_485_frame_cmd(pcData);
        MOVS     R0,#+0
        B.N      ??app485_frame_process_1
??app485_frame_process_2:
        ADDS     R0,R0,#+1
??app485_frame_process_1:
        LDRB     R3,[R1, #+0]
        SUBS     R2,R3,#+1
        CMP      R0,R2
        BGE.W    ??app485_frame_process_0
        ADDS     R2,R0,R1
        LDRB     R2,[R2, #+1]
        CMP      R2,#+170
        BNE.N    ??app485_frame_process_2
        ADDS     R2,R0,R1
        LDRB     R2,[R2, #+2]
        CMP      R2,#+170
        BEQ.N    ??app485_frame_process_2
        ADDS     R0,R0,R1
        ADDS     R6,R0,#+2
//  428 
//  429 	if (pFrame != NULL)
        BEQ.W    ??app485_frame_process_0
//  430 	{
//  431 		MEM_DUMP(9, "<-48",pApp485->ubaData, pApp485->ubLen);
        ADDS     R2,R1,#+1
        ADR.W    R1,?_5
        MOVS     R0,#+9
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  432 		pcTbCommon = (const TB_FRAME_COMMON *)pFrame;
//  433 		switch(pcTbCommon->ubCmd)
        LDRB     R0,[R6, #+0]
        CMP      R0,#+208
        BEQ.N    ??app485_frame_process_3
        CMP      R0,#+224
        BEQ.N    ??app485_frame_process_4
        CMP      R0,#+226
        BEQ.N    ??app485_frame_process_5
        CMP      R0,#+231
        BEQ.N    ??app485_frame_process_6
        CMP      R0,#+232
        BEQ.N    ??app485_frame_process_7
        CMP      R0,#+241
        BEQ.N    ??app485_frame_process_8
        CMP      R0,#+242
        BEQ.N    ??app485_frame_process_9
        B.N      ??app485_frame_process_10
//  434 		{
//  435 			case TB_SOH:		//数据
//  436 				nFrameL = soh_frame_process(pApp485Tx, pFrame);
??app485_frame_process_4:
        MOV      R1,R6
        MOV      R0,R4
          CFI FunCall soh_frame_process
        BL       soh_frame_process
        MOV      R5,R0
//  437 				break;
        B.N      ??app485_frame_process_10
//  438 			case TB_BCSOH:
//  439 				break;
//  440 			case TB_EXT:
//  441 				break;
//  442 			case TB_ACK:	//接收确认
//  443 				nFrameL = tack_frame_process(pApp485Tx, pFrame);
??app485_frame_process_5:
        LDRB     R5,[R6, #+1]
        ADDS     R6,R4,#+1
        BEQ.N    ??app485_frame_process_0
        MOVS     R2,#+170
        MOVS     R1,#+4
        MOV      R0,R6
          CFI FunCall __aeabi_memset
        BL       __aeabi_memset
        ADDS     R0,R6,#+4
        MOVS     R1,#+225
        B.N      ??app485_frame_process_11
//  444 				break;
//  445 			case TB_NAK:
//  446 				break;
//  447 			case TB_NUL:	//结束
//  448 				nFrameL = tbnul_frame_process(pApp485Tx, pFrame);
??app485_frame_process_7:
        LDRB     R5,[R6, #+1]
        ADDS     R6,R4,#+1
        BEQ.N    ??app485_frame_process_0
        MOVS     R2,#+170
        MOVS     R1,#+4
        MOV      R0,R6
          CFI FunCall __aeabi_memset
        BL       __aeabi_memset
        ADDS     R0,R6,#+4
        MOVS     R1,#+233
        B.N      ??app485_frame_process_11
//  449 				break;
//  450 			case TB_NULACK:
//  451 				break;
//  452 			case TB_ENQ:	//查询
//  453 				nFrameL = tbenq_frame_process(pApp485Tx, pFrame);
??app485_frame_process_6:
        LDRB     R5,[R6, #+1]
        ADDS     R6,R4,#+1
        BEQ.N    ??app485_frame_process_0
        MOVS     R2,#+170
        MOVS     R1,#+4
        MOV      R0,R6
          CFI FunCall __aeabi_memset
        BL       __aeabi_memset
        ADDS     R0,R6,#+4
        MOVS     R1,#+226
??app485_frame_process_11:
        STRB     R1,[R0, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        STRB     R5,[R0, #+2]
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
        LDRB     R2,[R0, #+1]
        LDRB     R1,[R0, #+0]
        EORS     R1,R2,R1
        LDRB     R2,[R0, #+2]
        EORS     R1,R2,R1
        MOVS     R2,#+175
        STRB     R2,[R0, #+4]
        STRB     R1,[R0, #+5]
        MOVS     R0,#+10
        STRB     R0,[R4, #+0]
        B.N      ??app485_frame_process_12
//  454 				break;
//  455 			case TB_SAK:	//握手
//  456 				nFrameL = tbsack_frame_process(pApp485Tx, pFrame);
??app485_frame_process_3:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R2,#+1
        LDRB     R3,[R6, #+1]
        MOVS     R1,#+223
        B.N      ??app485_frame_process_13
//  457 				break;
//  458 			case TB_SAKED:
//  459 				break;
//  460 			case TB_LINK:	//连接
//  461 				nFrameL = tblink_frame_process(pApp485Tx, pFrame);
??app485_frame_process_8:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R2,#+1
        LDRB     R3,[R6, #+1]
        MOVS     R1,#+244
??app485_frame_process_13:
        ADDS     R0,R4,#+1
          CFI FunCall fill_485_sake_frame
        BL       fill_485_sake_frame
        MOV      R5,R0
        CMP      R5,#+1
        BLT.N    ??app485_frame_process_10
        STRB     R5,[R4, #+0]
//  462 				break;
        B.N      ??app485_frame_process_10
//  463 			case TB_LINKED:
//  464 				break;
//  465 			case TB_UNLINK:	//终止连接
//  466 				nFrameL = tbunlink_frame_process(pApp485Tx, pFrame);
??app485_frame_process_9:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R2,#+1
        LDRB     R3,[R6, #+1]
        MOVS     R1,#+248
        ADDS     R0,R4,#+1
          CFI FunCall fill_485_sake_frame
        BL       fill_485_sake_frame
        MOV      R5,R0
        CMP      R5,#+1
//  467 				/*post data to */
//  468 				process_post(&sim900a_app_process, sim900_event_fire_tran, &app_485_warn_msg);
        LDR.N    R0,??DataTable16_1
        LDR.N    R6,??DataTable16
        IT       GE 
        STRBGE   R5,[R4, #+0]
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable16_2
        MOV      R2,R6
          CFI FunCall process_post
        BL       process_post
//  469 				process_post(&ip_data_process, event_ip_tran, &app_485_warn_msg);
        LDR.N    R0,??DataTable16_3
        LDRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable16_4
        MOV      R2,R6
          CFI FunCall process_post
        BL       process_post
//  470 				break;
//  471 			case TB_UNLINKED:
//  472 				break;
//  473 			default:
//  474 				break;
//  475 		}
//  476 	}
//  477 
//  478 	//send event msg to 
//  479 	if (nFrameL > 0)
??app485_frame_process_10:
        CMP      R5,#+1
        BLT.N    ??app485_frame_process_0
//  480 	{
//  481 		uart2_send_bytes(pApp485Tx->ubaData, pApp485Tx->ubLen);
??app485_frame_process_12:
        LDRB     R1,[R4, #+0]
        ADDS     R0,R4,#+1
          CFI FunCall uart2_send_bytes
        BL       uart2_send_bytes
//  482 		MEM_DUMP(9, "->48", pApp485Tx->ubaData, pApp485Tx->ubLen);
        LDRB     R3,[R4, #+0]
        ADDS     R2,R4,#+1
        ADD      SP,SP,#+8
          CFI CFA R13+16
        POP      {R4-R6,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R1,?_6
        MOVS     R0,#+9
          CFI FunCall __xstd_dump
        B.W      __xstd_dump
          CFI R4 Frame(CFA, -16)
          CFI R5 Frame(CFA, -12)
          CFI R6 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  483 	}
//  484 }
??app485_frame_process_0:
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock3
//  485 
//  486 
//  487 static void app485frameHandler(process_event_t ev, process_data_t data)
//  488 {
//  489 	if (ev == event_485_msg && data != NULL)
//  490 	{
//  491 		app485_frame_process((u_char *)&app_485_tx, (const u_char *)data);
//  492 	}
//  493 }
//  494 
//  495 
//  496 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function process_thread_app_bus_frame_process
        THUMB
//  497 PROCESS_THREAD(app_bus_frame_process, ev, data)
//  498 {
process_thread_app_bus_frame_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  499 
//  500 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_app_bus_frame_process_0
        MOVW     R3,#+505
        CMP      R0,R3
        BEQ.N    ??process_thread_app_bus_frame_process_1
        B.N      ??process_thread_app_bus_frame_process_2
//  501 	XPRINTF((2, "app_bus_frame_process\r\n"));
??process_thread_app_bus_frame_process_0:
        ADR.W    R1,?_7
        MOVS     R0,#+2
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  502 
//  503 	while(1)
//  504 	{
//  505 		PROCESS_YIELD();
??process_thread_app_bus_frame_process_3:
        MOVW     R0,#+505
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R4,PC}
//  506 		app485frameHandler(ev, data);
??process_thread_app_bus_frame_process_1:
        LDR.N    R0,??DataTable16_5
        LDRB     R3,[R0, #+0]
        CMP      R1,R3
        BNE.N    ??process_thread_app_bus_frame_process_3
        CMP      R2,#+0
        BEQ.N    ??process_thread_app_bus_frame_process_3
        MOV      R1,R2
        ADDS     R0,R0,#+4
          CFI FunCall app485_frame_process
        BL       app485_frame_process
        B.N      ??process_thread_app_bus_frame_process_3
//  507 	}
//  508 	PROCESS_END();
??process_thread_app_bus_frame_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  509 }
//  510 
//  511 
//  512 
//  513 
//  514 
//  515 static struct ringbuf ringuartbuf;
//  516 static uint8_t uartbuf[128];
//  517 
//  518 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function uart485_input_byte
        THUMB
//  519 int uart485_input_byte(unsigned char c)
//  520 {
uart485_input_byte:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  521 	static uint8_t overflow = 0; /* Buffer overflow: ignore until END */
//  522 	if(!overflow)
        LDR.N    R4,??DataTable16_5
        LDRB     R1,[R4, #+1]
        CMP      R1,#+0
        ADD      R2,R4,#+164
        MOV      R1,R0
        MOV      R0,R2
        BNE.N    ??uart485_input_byte_0
//  523 	{
//  524 		/* Add character */
//  525 		if(ringbuf_put(&ringuartbuf, c) == 0)
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBNZ.N   R0,??uart485_input_byte_1
//  526 		{
//  527 			/* Buffer overflow: ignore the rest of the line */
//  528 			overflow = 1;
        MOVS     R0,#+1
        B.N      ??uart485_input_byte_2
//  529 		}
//  530 	}
//  531 	else
//  532 	{
//  533 		/* Buffer overflowed:
//  534 		* Only (try to) add terminator characters, otherwise skip */
//  535 		if(ringbuf_put(&ringuartbuf, c) != 0)
??uart485_input_byte_0:
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBZ.N    R0,??uart485_input_byte_1
//  536 		{
//  537 			overflow = 0;
        MOVS     R0,#+0
??uart485_input_byte_2:
        STRB     R0,[R4, #+1]
//  538 		}
//  539 	}
//  540 	/* Wake up consumer process */
//  541 	process_poll(&app_485_rev_process);
??uart485_input_byte_1:
        ADD      R0,R4,#+132
          CFI FunCall process_poll
        BL       process_poll
//  542 	
//  543 	return 1;
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  544 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
event_485_msg:
        DATA
        DC8 0
        DC8 0
        DC8 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
app_485_rev_process:
        DC32 0H, ?_0, process_thread_app_485_rev_process
        DC8 0, 0, 0, 0
app_bus_frame_process:
        DC32 0H, ?_1, process_thread_app_bus_frame_process
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
//  545 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function uart485_init
        THUMB
//  546 void uart485_init(void)
//  547 {
uart485_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  548 	
//  549 	ringbuf_init(&ringuartbuf, uartbuf, sizeof(uartbuf));
        LDR.N    R4,??DataTable16_5
        MOVS     R2,#+128
        ADD      R1,R4,#+172
        ADD      R0,R4,#+164
          CFI FunCall ringbuf_init
        BL       ringbuf_init
//  550 	process_start(&app_485_rev_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+132
          CFI FunCall process_start
        BL       process_start
//  551 	Uart_485SetInput(uart485_input_byte);
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        LDR.N    R0,??DataTable16_6
          CFI FunCall Uart_485SetInput
        B.W      Uart_485SetInput
          CFI EndBlock cfiBlock6
//  552 }
//  553 
//  554 
//  555 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function isFrameEnd
          CFI NoCalls
        THUMB
//  556 bool isFrameEnd(const u_char *pFrame, u_char lastIndex)
//  557 {
//  558 	if ((pFrame[lastIndex] == TB_EOT && pFrame[lastIndex-1] != TB_DLE) 
//  559 	    || (pFrame[lastIndex] == TB_EOT && pFrame[lastIndex-1] == TB_DLE && pFrame[lastIndex-2] == TB_DLE))
isFrameEnd:
        LDRB     R2,[R1, R0]
        CMP      R2,#+175
        BNE.N    ??isFrameEnd_0
        ADDS     R3,R1,R0
        SUBS     R3,R3,#+2
        LDRB     R3,[R3, #+1]
        CMP      R3,#+160
        BNE.N    ??isFrameEnd_1
??isFrameEnd_0:
        CMP      R2,#+175
        ITTTT    EQ 
        ADDEQ    R0,R1,R0
        SUBEQ    R1,R0,#+2
        LDRBEQ   R1,[R1, #+1]
        CMPEQ    R1,#+160
        BNE.N    ??isFrameEnd_2
        LDRB     R0,[R0, #-2]
        CMP      R0,#+160
        BNE.N    ??isFrameEnd_2
//  560 	{
//  561 		return true;
??isFrameEnd_1:
        MOVS     R0,#+1
        BX       LR
//  562 	}
//  563 
//  564 	return false;
??isFrameEnd_2:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  565 }
//  566 
//  567 
//  568 static void delDleFromFrame(APP_485_DATA *p485, const u_char *pcFrame, u_char oldLen)
//  569 {
//  570 	
//  571 }
//  572 
//  573 
//  574 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function process_thread_app_485_rev_process
        THUMB
//  575 PROCESS_THREAD(app_485_rev_process, ev, data)
//  576 {
process_thread_app_485_rev_process:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R5,R1
//  577 	static char buf[128];
//  578 	static APP_485_DATA stApp485;
//  579 	static struct etimer et_rev_timeout;
//  580 	static int ptr = 0;
//  581 	static u_char frameEnd = 0;
//  582 	int c;
//  583 
//  584 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_app_485_rev_process_0
        MOVW     R1,#+603
        CMP      R0,R1
        BEQ.N    ??process_thread_app_485_rev_process_1
        B.N      ??process_thread_app_485_rev_process_2
//  585 	XPRINTF((2, "app_485_rev_process\r\n"));
??process_thread_app_485_rev_process_0:
        ADR.W    R1,?_8
        MOVS     R0,#+2
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  586 	event_485_msg = process_alloc_event( );
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        LDR.N    R1,??DataTable16_5
        STRB     R0,[R1, #+0]
        B.N      ??process_thread_app_485_rev_process_1
//  587 	//event_485_rev_msg = process_alloc_event( );
//  588 
//  589 	while(1)
//  590 	{
//  591 		c = ringbuf_get(&ringuartbuf);
//  592 		if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_rev_timeout)))
//  593 		{
//  594 			XPRINTF((6, "time out\n"));
//  595 			memset(buf, 0 ,sizeof(buf));
//  596 			//MEM_DUMP(6, "DATA", buf, ptr);
//  597 			ptr = 0;
//  598 		}
//  599 
//  600 		if(c == -1)
//  601 		{
//  602 			/* Buffer empty, wait for poll */
//  603 			PROCESS_YIELD();
//  604 		}
//  605 		else
//  606 		{
//  607 			//XPRINTF((9, "%02x\r\n", c));
//  608 			if (ptr == 0 && (uint8_t)c != TB_SYN)
??process_thread_app_485_rev_process_3:
        LDR      R0,[R6, #+260]
        CBNZ.N   R0,??process_thread_app_485_rev_process_4
        UXTB     R1,R7
        CMP      R1,#+170
        BNE.N    ??process_thread_app_485_rev_process_1
//  609 			{
//  610 				ptr = 0;
//  611 			}
//  612 			else
//  613 			{
//  614 				buf[ptr++] = (uint8_t)c;
??process_thread_app_485_rev_process_4:
        ADDS     R1,R0,R6
        ADDS     R0,R0,#+1
        STRB     R7,[R1, #+4]
//  615 				//XPRINTF((6, "c = %02x\n", (u_char)c));
//  616 				//set timer for receie time out
//  617 				if (ptr == 1 && buf[0] == TB_SYN)
        CMP      R0,#+1
        STR      R0,[R6, #+260]
        BNE.N    ??process_thread_app_485_rev_process_5
        LDRB     R0,[R6, #+4]
        CMP      R0,#+170
        BNE.N    ??process_thread_app_485_rev_process_6
//  618 				{
//  619 					etimer_set(&et_rev_timeout, 100);
        MOVS     R1,#+100
        ADD      R0,R6,#+264
          CFI FunCall etimer_set
        BL       etimer_set
//  620 					frameEnd = 0;
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
//  621 				}
//  622 				//frame to long, error
//  623 				if (ptr >= 127)
??process_thread_app_485_rev_process_5:
        LDR      R0,[R6, #+260]
        CMP      R0,#+127
        ITT      GE 
        MOVGE    R0,#+0
        STRGE    R0,[R6, #+260]
//  624 				{
//  625 					ptr = 0;
//  626 				}
//  627 
//  628 				#if 1
//  629 				//frame end
//  630 				if (isFrameEnd((const u_char*)buf, ptr-1))
??process_thread_app_485_rev_process_6:
        LDR      R0,[R6, #+260]
        SUBS     R1,R0,#+1
        UXTB     R1,R1
        ADDS     R1,R1,R6
        LDRB     R2,[R1, #+4]
        CMP      R2,#+175
        BNE.N    ??process_thread_app_485_rev_process_7
        LDRB     R2,[R1, #+3]
        CMP      R2,#+160
        BNE.N    ??process_thread_app_485_rev_process_8
??process_thread_app_485_rev_process_7:
        LDRB     R2,[R1, #+4]
        CMP      R2,#+175
        ITTTT    EQ 
        LDRBEQ   R2,[R1, #+3]
        CMPEQ    R2,#+160
        LDRBEQ   R1,[R1, #+2]
        CMPEQ    R1,#+160
        BNE.N    ??process_thread_app_485_rev_process_9
//  631 				{
//  632 					frameEnd = ptr;
??process_thread_app_485_rev_process_8:
        STRB     R0,[R6, #+0]
??process_thread_app_485_rev_process_9:
        LDRB     R1,[R6, #+0]
        ADDS     R2,R1,#+1
        CMP      R2,R0
        BNE.N    ??process_thread_app_485_rev_process_1
        CMP      R1,#+8
        BLT.N    ??process_thread_app_485_rev_process_1
//  633 				}
//  634 				//receive frame xorcheck
//  635 				if ((frameEnd+1) == ptr && frameEnd > 7 )
//  636 				{
//  637 					//MEM_DUMP(6, "BUS4", buf, ptr);
//  638 					etimer_stop(&et_rev_timeout);
        ADD      R0,R6,#+264
          CFI FunCall etimer_stop
        BL       etimer_stop
//  639 					memcpy(stApp485.ubaData, buf, ptr);
        LDR      R2,[R6, #+260]
        ADDS     R1,R6,#+4
        ADD      R0,R6,#+133
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  640 					stApp485.ubLen = ptr;
        LDR      R0,[R6, #+260]
//  641 					process_post(&app_bus_frame_process, event_485_msg, &stApp485);
        LDRB     R1,[R8, #+0]
        STRB     R0,[R6, #+132]
        ADD      R2,R6,#+132
        ADD      R0,R8,#+148
          CFI FunCall process_post
        BL       process_post
//  642 					//app485_frame_process((u_char *)&app_485_tx, (const u_char *)&stApp485);
//  643 					memset(buf, 0 ,sizeof(buf));
        MOVS     R1,#+128
        ADDS     R0,R6,#+4
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  644 					
//  645 					ptr = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+260]
//  646 				}
//  647 				#endif
//  648 			}
//  649 		}
??process_thread_app_485_rev_process_1:
        LDR.W    R8,??DataTable16_5
        ADD      R0,R8,#+164
          CFI FunCall ringbuf_get
        BL       ringbuf_get
        CMP      R5,#+136
        MOV      R7,R0
        LDR.N    R6,??DataTable16_7
        BNE.N    ??process_thread_app_485_rev_process_10
        ADD      R0,R6,#+264
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??process_thread_app_485_rev_process_10
        ADR.W    R1,?_9
        MOVS     R0,#+6
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R1,#+128
        ADDS     R0,R6,#+4
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
        MOVS     R0,#+0
        STR      R0,[R6, #+260]
??process_thread_app_485_rev_process_10:
        CMN      R7,#+1
        BNE.N    ??process_thread_app_485_rev_process_3
        MOVW     R0,#+603
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R4-R8,PC}
//  650 	}
//  651 	PROCESS_END();
??process_thread_app_485_rev_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock8
//  652 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??frameEnd:
        DS8 1
        DS8 3
        DS8 128
        DS8 128
        DS8 4
        DS8 16
//  653 
//  654 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function app485Init
        THUMB
//  655 void app485Init(void)
//  656 {
app485Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  657 	uart485_init( );
          CFI FunCall uart485_init
        BL       uart485_init
//  658 	process_start(&app_bus_frame_process, NULL);
        POP      {R2,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable16_8
          CFI FunCall process_start
        B.W      process_start
          CFI EndBlock cfiBlock9
//  659 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     app_485_warn_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     sim900_event_fire_tran

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DC32     sim900a_app_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_3:
        DC32     event_ip_tran

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_4:
        DC32     ip_data_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_5:
        DC32     event_485_msg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_6:
        DC32     uart485_input_byte

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_7:
        DC32     ??frameEnd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_8:
        DC32     event_485_msg+0x94

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "TB01"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "TB02"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "TB12"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 "<-48"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_6:
        DC8 "->48"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_7:
        DC8 "app_bus_frame_process\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_8:
        DC8 "app_485_rev_process\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_9:
        DC8 "time out\012"
        DC8 0, 0

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
        DC8 "app_485_rev_process"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "app_bus_frame_process"
        DC8 0, 0

        END
//  660 
// 
//   409 bytes in section .bss
//   300 bytes in section .data
//    44 bytes in section .rodata
// 1 278 bytes in section .text
// 
// 1 278 bytes of CODE  memory
//    44 bytes of CONST memory
//   709 bytes of DATA  memory
//
//Errors: none
//Warnings: 9
