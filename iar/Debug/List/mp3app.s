///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:04
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\mp3\mp3app.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\mp3\mp3app.c -D
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\mp3app.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Uart_Mp3SetInput
        EXTERN __xstd_printf
        EXTERN etimer_expired
        EXTERN etimer_set
        EXTERN process_poll
        EXTERN process_start
        EXTERN ringbuf_get
        EXTERN ringbuf_init
        EXTERN ringbuf_put

        PUBLIC mp3_msg_process
        PUBLIC mp3_rev_process
        PUBLIC mp3_uart_input_byte
        PUBLIC mp3fillCmdNoParam
        PUBLIC mp3fillCmdOneByteParam
        PUBLIC mp3fillCmdTwoByteParam
        PUBLIC mp3init
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\mp3\mp3app.c
//    1 #include "contiki.h"
//    2 #include "basictype.h"
//    3 #include "mp3app.h"
//    4 #include "string.h"
//    5 #include "lib/ringbuf.h"
//    6 #include "sysprintf.h"
//    7 
//    8 
//    9 PROCESS(mp3_rev_process, "mp3_rev");
//   10 PROCESS(mp3_msg_process, "mp3_msg");
//   11 
//   12 static u_char mp3xorcheck(const u_char *pcData, u_char len)
//   13 {
//   14 	int i = 0;
//   15 	u_char ubxorCheck = 0;
//   16 	for (i = 0; i < len; i++)
//   17 	{
//   18 		ubxorCheck ^= pcData[i];
//   19 	}
//   20 
//   21 	return ubxorCheck;
//   22 }
//   23 
//   24 /*
//   25 #define MP3_CMD_PLAY		0x11		//播放						无
//   26 #define MP3_CMD_PAUSE		0x12		//暂停						无
//   27 #define MP3_CMD_NEXT		0x13		//下一曲
//   28 #define MP3_CMD_PREV		0x14		//上一曲
//   29 #define MP3_CMD_V_ADD		0x15		//音量加
//   30 #define MP3_CMD_V_SUB		0x16		//音量减
//   31 #define MP3_CMD_RST			0x19		//复位
//   32 #define MP3_CMD_SPEED		0x1a		//快进
//   33 #define MP3_CMD_NSPEED		0x1b		//快退
//   34 #define MP3_CMD_PLAY_PAUSE	0x1c	//播放/暂停
//   35 #define MP3_CMD_STOP		0x1e		//停止
//   36 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function mp3fillCmdNoParam
          CFI NoCalls
        THUMB
//   37 int mp3fillCmdNoParam(u_char *pbuf, u_char ubcmd)
//   38 {
//   39 	MP3_CON_NO_PARAM *pFrame = NULL;
//   40 
//   41 	if (pbuf == NULL)
mp3fillCmdNoParam:
        CBNZ.N   R0,??mp3fillCmdNoParam_0
//   42 	{
//   43 		return -1;
        B.N      ?Subroutine0
//   44 	}
//   45 
//   46 	pFrame = (MP3_CON_NO_PARAM *)pbuf;
//   47 
//   48 	pFrame->comHead.ubHead = MP3_HEAD;
??mp3fillCmdNoParam_0:
        MOVS     R2,#+126
        STRB     R2,[R0, #+0]
//   49 	pFrame->comHead.ubLen = 3;
        MOVS     R2,#+3
        STRB     R2,[R0, #+1]
//   50 	pFrame->comHead.ubOPT = ubcmd;
        STRB     R1,[R0, #+2]
//   51 
//   52 	pFrame->ubXorCode = mp3xorcheck((u_char *)&pFrame->comHead.ubLen, 2);
        ADDS     R1,R0,#+1
        LDRB     R1,[R1, #+1]
        EORS     R1,R1,R2
        STRB     R1,[R0, #+3]
//   53 	pFrame->ubEnd = MP3_END;
        MOVS     R1,#+239
        STRB     R1,[R0, #+4]
//   54 
//   55 
//   56 	return 5;
        MOVS     R0,#+5
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   57 }
//   58 
//   59 
//   60 /*
//   61 //CMD详解							对应功能				参数(8位HEX)
//   62 #define MP3_CMD_SET_V			0x31		//设置音量				0-30级可调(音量掉电记忆)
//   63 #define MP3_CMD_SET_EQ			0x32		//设置EQ				0-5(NO\POP\ROCK\JAZZ\CLASSIC\BASS)
//   64 #define MP3_CMD_SET_LOOP_MODE	0x33	//设置循环模式		0-4(全盘/文件夹/单曲/随机/不循环
//   65 #define MP3_CMD_CHANGE_DIR		0x34	//文件夹切换		0（上一文件夹），1(下一文件夹) ，flash内没有此功能
//   66 #define MP3_CMD_CHANGE_DEV		0x35	//设备切换			0（U盘），1（SD）
//   67 #define MP3_CMD_ADKEY_UP		0x36	//ADKEY软件上拉		1开上拉（10K电阻），0关上拉，默认0
//   68 #define MP3_CMD_ADKEY_EN		0x37	//ADKEY使能			1开起，0关闭，默认1
//   69 #define MP3_CMD_BUSY_LEVL		0x38	//BUSY电平切换  1为播放输出高电平，0为播放输出低电平，默认1
//   70 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function mp3fillCmdOneByteParam
          CFI NoCalls
        THUMB
//   71 int mp3fillCmdOneByteParam(u_char *pbuf, u_char ubcmd, u_char param)
//   72 {
//   73 
//   74 	MP3_CON_B_PARAM *pFrame = NULL;
//   75 
//   76 	if (pbuf == NULL)
mp3fillCmdOneByteParam:
        CBNZ.N   R0,??mp3fillCmdOneByteParam_0
//   77 	{
//   78 		return -1;
        B.N      ?Subroutine0
//   79 	}	
//   80 
//   81 	pFrame = (MP3_CON_B_PARAM *)pbuf;
//   82 
//   83 	pFrame->comHead.ubHead = MP3_HEAD;
??mp3fillCmdOneByteParam_0:
        MOVS     R3,#+126
        STRB     R3,[R0, #+0]
//   84 	pFrame->comHead.ubLen = 4;
        MOVS     R3,#+4
        STRB     R3,[R0, #+1]
//   85 	pFrame->comHead.ubOPT = ubcmd;
        STRB     R1,[R0, #+2]
//   86 	pFrame->ubParam = param;
        STRB     R2,[R0, #+3]
//   87 	pFrame->ubXorCode = mp3xorcheck((u_char *)&pFrame->comHead.ubLen, 3);
        ADDS     R1,R0,#+1
        MOVS     R2,#+4
        LDRB     R3,[R1, #+1]
        LDRB     R1,[R1, #+2]
        EORS     R2,R3,R2
        EORS     R1,R1,R2
        STRB     R1,[R0, #+4]
//   88 
//   89 	pFrame->ubEnd = MP3_END;
        MOVS     R1,#+239
        STRB     R1,[R0, #+5]
//   90 
//   91 
//   92 	return 6;
        MOVS     R0,#+6
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   93 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls mp3fillCmdNoParam
          CFI NoCalls mp3fillCmdOneByteParam
          CFI NoCalls mp3fillCmdTwoByteParam
        THUMB
?Subroutine0:
        MOV      R0,#-1
        BX       LR
          CFI EndBlock cfiBlock2
//   94 
//   95 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function mp3fillCmdTwoByteParam
          CFI NoCalls
        THUMB
//   96 int mp3fillCmdTwoByteParam(u_char *pbuf, u_char ubcmd, u_short param)
//   97 {
//   98 
//   99 	MP3_CON_W_PARAM *pFrame = NULL;
//  100 
//  101 	if (pbuf == NULL)
mp3fillCmdTwoByteParam:
        CBNZ.N   R0,??mp3fillCmdTwoByteParam_0
//  102 	{
//  103 		return -1;
        B.N      ?Subroutine0
//  104 	}
//  105 	pFrame = (MP3_CON_W_PARAM*)pbuf;
//  106 	pFrame->comHead.ubHead = MP3_HEAD;
??mp3fillCmdTwoByteParam_0:
        MOVS     R3,#+126
        STRB     R3,[R0, #+0]
//  107 	pFrame->comHead.ubLen = 5;
        MOVS     R3,#+5
        STRB     R3,[R0, #+1]
//  108 	pFrame->comHead.ubOPT = ubcmd;
        STRB     R1,[R0, #+2]
//  109 	pFrame->ubParamH = (param>>8)&0xff;
        LSRS     R1,R2,#+8
        STRB     R1,[R0, #+3]
//  110 	pFrame->ubParamL = (param)&0xff;
        STRB     R2,[R0, #+4]
//  111 	pFrame->ubXorCode = mp3xorcheck((u_char *)&pFrame->comHead.ubLen, 3);
        ADDS     R1,R0,#+1
        MOVS     R2,#+5
        LDRB     R3,[R1, #+1]
        LDRB     R1,[R1, #+2]
        EORS     R2,R3,R2
        EORS     R1,R1,R2
        STRB     R1,[R0, #+5]
//  112 	pFrame->ubEnd = MP3_END;
        MOVS     R1,#+239
        STRB     R1,[R0, #+6]
//  113 
//  114 	return 7;
        MOVS     R0,#+7
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  115 }
//  116 
//  117 
//  118 
//  119 static struct ringbuf ringuartbuf;
//  120 static uint8_t uartbuf[128];
//  121 
//  122 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function mp3_uart_input_byte
        THUMB
//  123 int mp3_uart_input_byte(unsigned char c)
//  124 {
mp3_uart_input_byte:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  125 	static uint8_t overflow = 0; /* Buffer overflow: ignore until END */
//  126 	if(!overflow)
        LDR.N    R4,??DataTable7
        LDRB     R1,[R4, #+0]
        CMP      R1,#+0
        MOV      R1,R0
        ADD      R0,R4,#+36
        BNE.N    ??mp3_uart_input_byte_0
//  127 	{
//  128 		/* Add character */
//  129 		if(ringbuf_put(&ringuartbuf, c) == 0)
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBNZ.N   R0,??mp3_uart_input_byte_1
//  130 		{
//  131 			/* Buffer overflow: ignore the rest of the line */
//  132 			overflow = 1;
        MOVS     R0,#+1
        B.N      ??mp3_uart_input_byte_2
//  133 		}
//  134 	}
//  135 	else
//  136 	{
//  137 		/* Buffer overflowed:
//  138 		* Only (try to) add terminator characters, otherwise skip */
//  139 		if(ringbuf_put(&ringuartbuf, c) != 0)
??mp3_uart_input_byte_0:
          CFI FunCall ringbuf_put
        BL       ringbuf_put
        CBZ.N    R0,??mp3_uart_input_byte_1
//  140 		{
//  141 			overflow = 0;
        MOVS     R0,#+0
??mp3_uart_input_byte_2:
        STRB     R0,[R4, #+0]
//  142 		}
//  143 	}
//  144 	/* Wake up consumer process */
//  145 	process_poll(&mp3_rev_process);
??mp3_uart_input_byte_1:
        ADDS     R0,R4,#+4
          CFI FunCall process_poll
        BL       process_poll
//  146 	return 1;
        MOVS     R0,#+1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  147 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??overflow:
        DATA
        DC8 0
        DC8 0, 0, 0
mp3_rev_process:
        DC32 0H, ?_0, process_thread_mp3_rev_process
        DC8 0, 0, 0, 0
mp3_msg_process:
        DC32 0H, ?_1, process_thread_mp3_msg_process
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
//  148 
//  149 static void mp3_uart_init(void)
//  150 {
//  151 	ringbuf_init(&ringuartbuf, uartbuf, sizeof(uartbuf));
//  152 	Uart_Mp3SetInput(mp3_uart_input_byte);
//  153 }
//  154 
//  155 
//  156 
//  157 
//  158 static u_char ubamp3[32]={0x00};
//  159 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function process_thread_mp3_msg_process
        THUMB
//  160 PROCESS_THREAD(mp3_msg_process, ev, data)
//  161 {
process_thread_mp3_msg_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  162 	static struct etimer et_mp3;
//  163 	int nFrameL = 0;
//  164 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_mp3_msg_process_0
        CMP      R0,#+182
        BEQ.N    ??process_thread_mp3_msg_process_1
        B.N      ??process_thread_mp3_msg_process_2
//  165 	XPRINTF((10, "mp3_msg_process\r\n"));
??process_thread_mp3_msg_process_0:
        ADR.W    R1,?_2
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  166 	
//  167 	while(1)
//  168 	{
//  169 		/*
//  170 		etimer_set(&et_mp3, 10*1000);
//  171 		nFrameL = mp3fillCmdNoParam(ubamp3, MP3_CMD_PLAY);
//  172 		MEM_DUMP(5, "MP->",ubamp3, nFrameL);
//  173 		uart5_send_bytes(ubamp3, nFrameL);
//  174 		PROCESS_WAIT_UNTIL(etimer_expired(&et_mp3));
//  175 		
//  176 		etimer_set(&et_mp3, 10*1000);
//  177 		nFrameL = mp3fillCmdNoParam(ubamp3, MP3_CMD_STOP);
//  178 		MEM_DUMP(5, "MP->",ubamp3, nFrameL);
//  179 		uart5_send_bytes(ubamp3, nFrameL);
//  180 		PROCESS_WAIT_UNTIL(etimer_expired(&et_mp3));
//  181 		*/
//  182 		PROCESS_YIELD();
??process_thread_mp3_msg_process_1:
        MOVS     R0,#+182
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R4,PC}
//  183 		
//  184 	}
//  185 	PROCESS_END();
??process_thread_mp3_msg_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  186 }
//  187 
//  188 
//  189 
//  190 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function process_thread_mp3_rev_process
        THUMB
//  191 PROCESS_THREAD(mp3_rev_process, ev, data)
//  192 {
process_thread_mp3_rev_process:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R5,R1
//  193 	static char buf[128];
//  194 	static struct etimer et_rev_timeout;
//  195 	static int ptr = 0;
//  196 	int c;
//  197 
//  198 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBZ.N    R0,??process_thread_mp3_rev_process_0
        CMP      R0,#+215
        BEQ.N    ??process_thread_mp3_rev_process_1
        B.N      ??process_thread_mp3_rev_process_2
//  199 	XPRINTF((10, "mp3_rev_process\r\n"));
??process_thread_mp3_rev_process_0:
        ADR.W    R1,?_3
        MOVS     R0,#+10
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        B.N      ??process_thread_mp3_rev_process_1
//  200 
//  201 	while(1)
//  202 	{
//  203 		c = ringbuf_get(&ringuartbuf);
//  204 		//XPRINTF((5, "%02x \n", (uint8_t)c));
//  205 		if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_rev_timeout)))
//  206 		{
//  207 			//memset(buf, 0 ,sizeof(buf));
//  208 			XPRINTF((5, "rev = %s\n", buf));
//  209 			ptr = 0;
//  210 		}
//  211 
//  212 		if(c == -1)
//  213 		{
//  214 			/* Buffer empty, wait for poll */
//  215 			PROCESS_YIELD();
//  216 		}
//  217 		else
//  218 		{
//  219 			buf[ptr++] = (uint8_t)c;
//  220 			//XPRINTF((5, "%02x \n", (uint8_t)c));
//  221 			if (ptr < 128)
//  222 			{
//  223 				etimer_set(&et_rev_timeout, 500);
??process_thread_mp3_rev_process_3:
        MOV      R1,#+500
        ADD      R0,R6,#+132
          CFI FunCall etimer_set
        BL       etimer_set
//  224 			}
??process_thread_mp3_rev_process_1:
        LDR.N    R0,??DataTable7_1
          CFI FunCall ringbuf_get
        BL       ringbuf_get
        CMP      R5,#+136
        MOV      R7,R0
        BNE.N    ??process_thread_mp3_rev_process_4
        LDR.N    R6,??DataTable7_2
        ADD      R0,R6,#+132
          CFI FunCall etimer_expired
        BL       etimer_expired
        CBZ.N    R0,??process_thread_mp3_rev_process_4
        MOV      R2,R6
        ADR.W    R1,?_4
        MOVS     R0,#+5
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        MOVS     R0,#+0
        STR      R0,[R6, #+128]
??process_thread_mp3_rev_process_4:
        CMN      R7,#+1
        BNE.N    ??process_thread_mp3_rev_process_5
        MOVS     R0,#+215
        STRH     R0,[R4, #+0]
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}
??process_thread_mp3_rev_process_5:
        LDR.N    R6,??DataTable7_2
        LDR      R0,[R6, #+128]
        STRB     R7,[R0, R6]
        ADDS     R0,R0,#+1
        CMP      R0,#+128
        STR      R0,[R6, #+128]
        BLT.N    ??process_thread_mp3_rev_process_3
//  225 			else
//  226 			{
//  227 				ptr = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+128]
        B.N      ??process_thread_mp3_rev_process_1
//  228 			}
//  229 		}
//  230 	}
//  231 	PROCESS_END();
??process_thread_mp3_rev_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock6
//  232 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??buf:
        DS8 128
        DS8 4
        DS8 16
//  233 
//  234 
//  235 
//  236 
//  237 
//  238 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function mp3init
        THUMB
//  239 void mp3init(void)
//  240 {
mp3init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  241 	mp3_uart_init();	
        LDR.N    R4,??DataTable7
        MOVS     R2,#+128
        ADD      R1,R4,#+44
        ADD      R0,R4,#+36
          CFI FunCall ringbuf_init
        BL       ringbuf_init
        LDR.N    R0,??DataTable7_3
          CFI FunCall Uart_Mp3SetInput
        BL       Uart_Mp3SetInput
//  242 	process_start(&mp3_rev_process, NULL);
        MOVS     R1,#+0
        ADDS     R0,R4,#+4
          CFI FunCall process_start
        BL       process_start
//  243 	process_start(&mp3_msg_process, NULL);
        ADD      R0,R4,#+20
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+0
          CFI FunCall process_start
        B.W      process_start
          CFI EndBlock cfiBlock7
//  244 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     ??overflow

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     ??overflow+0x24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     ??buf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     mp3_uart_input_byte

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "mp3_msg_process\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "mp3_rev_process\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "rev = %s\012"
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
        DC8 "mp3_rev"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "mp3_msg"

        END
//  245 
//  246 
//  247 
//  248 
//  249 
// 
// 148 bytes in section .bss
// 172 bytes in section .data
//  16 bytes in section .rodata
// 446 bytes in section .text
// 
// 446 bytes of CODE  memory
//  16 bytes of CONST memory
// 320 bytes of DATA  memory
//
//Errors: none
//Warnings: 5
