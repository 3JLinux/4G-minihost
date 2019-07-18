///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:41
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\uart_dma.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\uart_dma.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\uart_dma.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN DMA_Cmd
        EXTERN DMA_ITConfig
        EXTERN NVIC_Init
        EXTERN RCC_AHBPeriphClockCmd
        EXTERN __aeabi_memcpy

        PUBLIC DMA1_Channel7_IRQHandler
        PUBLIC dbg_drain
        PUBLIC dbg_send_bytes
        PUBLIC dbguart_DMA_Configuration
        PUBLIC dbguart_DMA_NVIC_Config
        PUBLIC dma_running
        PUBLIC uart_dma_blocking_putchar
        PUBLIC uart_dma_putchar
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\uart_dma.c
//    1 #include "contiki.h"
//    2 #include "basictype.h"
//    3 #include <string.h>
//    4 #include <stdio.h>
//    5 //替换头文件
//    6 
//    7 #include "stm32f10x.h"
//    8 #include "uart_dma.h"
//    9 
//   10 #include "sysprintf.h"
//   11 
//   12 #if 0 
//   13 // the the dma uart  
//   14 #ifndef DBG_UART
//   15 #define DBG_UART USART1
//   16 #endif
//   17 
//   18 
//   19 #ifndef DBG_DMA_NO
//   20 #define DBG_DMA_NO 1
//   21 #endif
//   22 
//   23 #ifndef DBG_DMA_CHANNEL_NO
//   24 #define DBG_DMA_CHANNEL_NO 4
//   25 #endif
//   26 
//   27 #define _DBG_DMA_NAME(x) 			DMA##x
//   28 #define DBG_DMA_NAME(x) 			_DBG_DMA_NAME(x)
//   29 #define DBG_DMA 					DBG_DMA_NAME(DBG_DMA_NO)
//   30 
//   31 #define _DMA_CHANNEL_NAME(x,c) 		DMA ## x ## _Channel ## c
//   32 #define DMA_CHANNEL_NAME(x,c) 		_DMA_CHANNEL_NAME(x,c)
//   33 #define DBG_DMA_CHANNEL 			 DMA_CHANNEL_NAME(DBG_DMA_NO, DBG_DMA_CHANNEL_NO)
//   34 
//   35 #define _DBG_DMA_CHANNEL_IFCR_CGIF(c) 	DMA_IFCR_CGIF ## c
//   36 #define _XDBG_DMA_CHANNEL_IFCR_CGIF(c) 	_DBG_DMA_CHANNEL_IFCR_CGIF(c)
//   37 #define DBG_DMA_CHANNEL_IFCR_CGIF 		_XDBG_DMA_CHANNEL_IFCR_CGIF(DBG_DMA_CHANNEL_NO)
//   38 
//   39 #ifndef DBG_XMIT_BUFFER_LEN
//   40 #define DBG_XMIT_BUFFER_LEN 512
//   41 #endif
//   42 
//   43 static unsigned char xmit_buffer[DBG_XMIT_BUFFER_LEN];
//   44 #define XMIT_BUFFER_END &xmit_buffer[DBG_XMIT_BUFFER_LEN]
//   45 
//   46 
//   47 /* Valid data in head to tail-1 */
//   48 /* Read position */
//   49 static unsigned char * volatile xmit_buffer_head = xmit_buffer;
//   50 
//   51 /* Write position */
//   52 static unsigned char * volatile xmit_buffer_tail = xmit_buffer;
//   53 
//   54 /* xmit_buffer_head == xmit_buffer_tail means empty so we can only store
//   55    DBG_XMIT_BUFFER_LEN-1 characters */
//   56 volatile unsigned char dma_running = 0;
//   57 static unsigned char * volatile dma_end;
//   58 
//   59 void
//   60 dbg_setup_uart1_default(void)
//   61 {
//   62 	USART_InitTypeDef USART_InitStructure;
//   63 	GPIO_InitTypeDef GPIO_InitStructure;
//   64 
//   65 	//使能GPIOA时钟
//   66 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA \ 
//   67 	                | RCC_APB2Periph_USART1|RCC_APB2ENR_AFIOEN ,ENABLE);
//   68 
//   69 	                
//   70 
//   71 	//PA9 TX1 复用推挽输出
//   72 	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
//   73 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//   74 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
//   75 	GPIO_Init(GPIOA, &GPIO_InitStructure);
//   76 	//PA10 RX1 浮动输入
//   77 	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
//   78 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;    
//   79 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
//   80 	GPIO_Init(GPIOA, &GPIO_InitStructure);
//   81 
//   82 	USART_InitStructure.USART_BaudRate = 921600;
//   83 	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
//   84 	USART_InitStructure.USART_StopBits = USART_StopBits_1;
//   85 	USART_InitStructure.USART_Parity = USART_Parity_No;
//   86 	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
//   87 	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
//   88 	USART_Init(DBG_UART, &USART_InitStructure);
//   89 
//   90 #if 1
//   91     //采用DMA方式发送  
//   92     USART_DMACmd(DBG_UART,USART_DMAReq_Tx,ENABLE); 
//   93 #endif
//   94 	USART_ITConfig(DBG_UART, USART_IT_RXNE, ENABLE);
//   95 	//使能USART1
//   96 	USART_Cmd(DBG_UART, ENABLE);	
//   97 }
//   98 
//   99 
//  100 
//  101 /**
//  102   * @brief  Configures the DMA.
//  103   * @param  None
//  104   * @retval None
//  105   */
//  106 void dbguart_DMA_Configuration(void)
//  107 {
//  108 
//  109     RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);  
//  110 
//  111 #if 1
//  112   DBG_DMA_CHANNEL->CCR = (DMA_Priority_Low |
//  113 			  DMA_PeripheralDataSize_Byte |
//  114 			  DMA_MemoryDataSize_Byte |
//  115 			  DMA_PeripheralInc_Disable |
//  116 			  DMA_MemoryInc_Enable |
//  117 			  DMA_Mode_Normal |
//  118 			  DMA_DIR_PeripheralDST |
//  119 			  DMA_CCR4_TCIE
//  120 			  );
//  121   DBG_DMA_CHANNEL->CPAR = (u32)&DBG_UART->DR;
//  122   //DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer_head;
//  123   DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer;
//  124 #endif
//  125 
//  126  
//  127     DMA_ITConfig(DMA1_Channel4,DMA_IT_TC,ENABLE);  
//  128       
//  129     //使能通道4  
//  130     DMA_Cmd(DMA1_Channel4, ENABLE);  
//  131 }
//  132 
//  133 void dbguart_DMA_NVIC_Config(void)
//  134 {
//  135     //DMA发送中断设置  
//  136 	NVIC_InitTypeDef NVIC_InitStructure;
//  137     NVIC_InitStructure.NVIC_IRQChannel = DMA1_Channel4_IRQn;  
//  138     NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;  
//  139     NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;  
//  140     NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;  
//  141     NVIC_Init(&NVIC_InitStructure);  
//  142 }
//  143 
//  144 
//  145 
//  146 
//  147 
//  148 
//  149 static void
//  150 update_dma(void)
//  151 {
//  152 	if (xmit_buffer_tail == xmit_buffer_head) return;
//  153 #if  1
//  154 	DBG_DMA_CHANNEL->CCR = (DMA_Priority_Low |
//  155 						DMA_PeripheralDataSize_Byte |
//  156 						DMA_MemoryDataSize_Byte |
//  157 						DMA_PeripheralInc_Disable |
//  158 						DMA_MemoryInc_Enable |
//  159 						DMA_Mode_Normal |
//  160 						DMA_DIR_PeripheralDST |
//  161 						DMA_CCR4_TCIE
//  162 	);
//  163 	DBG_DMA_CHANNEL->CPAR = (u32)&DBG_UART->DR;
//  164 	DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer_head;
//  165 //	DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer;
//  166 #endif
//  167     //dbguart_DMA_Configuration( );
//  168 	//DBG_DMA_CHANNEL->CPAR = (u32)&DBG_UART->DR;
//  169 	//DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer_head;
//  170 	//dbguart_DMA_NVIC_Config( );
//  171 	if (xmit_buffer_head < xmit_buffer_tail) 
//  172 	{
//  173 		DBG_DMA_CHANNEL->CNDTR = xmit_buffer_tail - xmit_buffer_head;
//  174 		dma_end = xmit_buffer_tail;    
//  175 	} 
//  176 	else 
//  177 	{
//  178 		DBG_DMA_CHANNEL->CNDTR =  XMIT_BUFFER_END - xmit_buffer_head;
//  179 		dma_end = xmit_buffer;
//  180 		//dma_end = xmit_buffer_tail;    
//  181 	}
//  182 //	NVIC_ENABLE_INT(DMA1_Channel4_IRQn);
//  183 //	NVIC_SET_PRIORITY(DMA1_Channel4_IRQn, 2);
//  184     	DMA_ITConfig(DMA1_Channel4,DMA_IT_TC,ENABLE);  
//  185 
//  186 	DBG_DMA_CHANNEL->CCR |=DMA_CCR4_EN;
//  187 }
//  188 
//  189 
//  190 void
//  191 DMA1_Channel4_IRQHandler()
//  192 {
//  193 	DBG_DMA->IFCR = DBG_DMA_CHANNEL_IFCR_CGIF;
//  194 	xmit_buffer_head = dma_end;
//  195 	if (xmit_buffer_tail == xmit_buffer_head) 
//  196 	{
//  197 		dma_running = 0;
//  198 		return;
//  199 	}
//  200 	update_dma();
//  201 }
//  202 
//  203 
//  204 
//  205 unsigned int
//  206 dbg_send_bytes(const unsigned char *seq, unsigned int len)
//  207 {
//  208 	/* Since each of the pointers should be read atomically
//  209 	there's no need to disable interrupts */
//  210 	unsigned char *head = xmit_buffer_head;
//  211 	unsigned char *tail = xmit_buffer_tail;
//  212 	if (tail >= head) 
//  213 	{
//  214 		/* Free space wraps */
//  215 		unsigned int xfer_len = XMIT_BUFFER_END - tail; //free space at the tail
//  216 		unsigned int free = DBG_XMIT_BUFFER_LEN - (tail - head) - 1;//all free space 
//  217 		if (len > free) len = free;
//  218 		if (xfer_len < len) 
//  219 		{
//  220 			memcpy(tail, seq, xfer_len);
//  221 			seq += xfer_len;
//  222 			xfer_len = len - xfer_len;
//  223 			memcpy(xmit_buffer, seq, xfer_len);
//  224 			tail = xmit_buffer + xfer_len;
//  225 		} 
//  226 		else 
//  227 		{
//  228 			memcpy(tail, seq, len);
//  229 			tail += len;
//  230 			if (tail == XMIT_BUFFER_END) tail = xmit_buffer;
//  231 		}
//  232 	} 
//  233 	else 
//  234 	{
//  235 		/* Free space continuous */
//  236 		unsigned int free = (head - tail) - 1;
//  237 		if (len > free) len = free;
//  238 		memcpy(tail, seq, len);
//  239 		tail += len;
//  240 	}
//  241 	xmit_buffer_tail = tail;
//  242 	if (!dma_running) 
//  243 	{
//  244 		dma_running = 1;
//  245 		update_dma();
//  246 	}
//  247 	return len;
//  248 }
//  249 
//  250 static unsigned char uart_dma_write_overrun = 0;
//  251 
//  252 void uart_dma_putchar(u_char ch)
//  253 {
//  254 	#if 1
//  255 	if (uart_dma_write_overrun) 
//  256 	{
//  257 		//if (dbg_send_bytes((const unsigned char*)"^",1) != 1) return;
//  258 		if (dbg_send_bytes((const unsigned char*)"^",1) != 1) return;
//  259 	}
//  260 	#endif
//  261 	
//  262 	uart_dma_write_overrun = 0;
//  263 	
//  264 	if (dbg_send_bytes((const unsigned char*)&ch,1) != 1) 
//  265 	{ 
//  266 		uart_dma_write_overrun = 1;
//  267 	}
//  268 }
//  269 
//  270 void uart_dma_blocking_putchar(const char ch)
//  271 {
//  272 	if (uart_dma_write_overrun) 
//  273 	{
//  274 		while (dbg_send_bytes((const unsigned char*)"^",1) != 1);
//  275 	}
//  276 	uart_dma_write_overrun = 0;
//  277 	while (dbg_send_bytes((const unsigned char*)&ch,1) != 1);
//  278 }
//  279 
//  280 void dbg_drain()
//  281 {
//  282   while(xmit_buffer_tail != xmit_buffer_head);
//  283 }
//  284 
//  285 #else
//  286 // the the dma uart  
//  287 #ifndef DBG_UART
//  288 #define DBG_UART USART2
//  289 #endif
//  290 
//  291 
//  292 #ifndef DBG_DMA_NO
//  293 #define DBG_DMA_NO 1
//  294 #endif
//  295 
//  296 #ifndef DBG_DMA_CHANNEL_NO
//  297 #define DBG_DMA_CHANNEL_NO 7
//  298 #endif
//  299 
//  300 #define _DBG_DMA_NAME(x) 			DMA##x
//  301 #define DBG_DMA_NAME(x) 			_DBG_DMA_NAME(x)
//  302 #define DBG_DMA 					DBG_DMA_NAME(DBG_DMA_NO)
//  303 
//  304 //DMA1_Channel4
//  305 #define _DMA_CHANNEL_NAME(x,c) 		DMA ## x ## _Channel ## c
//  306 #define DMA_CHANNEL_NAME(x,c) 		_DMA_CHANNEL_NAME(x,c)
//  307 #define DBG_DMA_CHANNEL 			 DMA_CHANNEL_NAME(DBG_DMA_NO, DBG_DMA_CHANNEL_NO)
//  308 
//  309 #define _DBG_DMA_CHANNEL_IFCR_CGIF(c) 	DMA_IFCR_CGIF ## c
//  310 #define _XDBG_DMA_CHANNEL_IFCR_CGIF(c) 	_DBG_DMA_CHANNEL_IFCR_CGIF(c)
//  311 #define DBG_DMA_CHANNEL_IFCR_CGIF 		_XDBG_DMA_CHANNEL_IFCR_CGIF(DBG_DMA_CHANNEL_NO)
//  312 
//  313 #ifndef DBG_XMIT_BUFFER_LEN
//  314 #define DBG_XMIT_BUFFER_LEN 32
//  315 #endif
//  316 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  317 static unsigned char xmit_buffer[DBG_XMIT_BUFFER_LEN];
//  318 #define XMIT_BUFFER_END &xmit_buffer[DBG_XMIT_BUFFER_LEN]
//  319 
//  320 
//  321 /* Valid data in head to tail-1 */
//  322 /* Read position */
//  323 static unsigned char * volatile xmit_buffer_head = xmit_buffer;
//  324 
//  325 /* Write position */
//  326 static unsigned char * volatile xmit_buffer_tail = xmit_buffer;
//  327 
//  328 /* xmit_buffer_head == xmit_buffer_tail means empty so we can only store
//  329    DBG_XMIT_BUFFER_LEN-1 characters */
//  330 volatile unsigned char dma_running = 0;
dma_running:
        DATA
        DC8 0
        DC8 0, 0, 0
        DC32 xmit_buffer
        DC32 xmit_buffer
        DC8 0, 0, 0, 0
xmit_buffer:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//  331 static unsigned char * volatile dma_end;
//  332 
//  333 
//  334 
//  335 
//  336 
//  337 
//  338 /**
//  339   * @brief  Configures the DMA.
//  340   * @param  None
//  341   * @retval None
//  342   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function dbguart_DMA_Configuration
        THUMB
//  343 void dbguart_DMA_Configuration(void)
//  344 {
dbguart_DMA_Configuration:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  345 
//  346     RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);  
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall RCC_AHBPeriphClockCmd
        BL       RCC_AHBPeriphClockCmd
//  347 
//  348 #if 1
//  349   DBG_DMA_CHANNEL->CCR = (DMA_Priority_Low |
//  350 			  DMA_PeripheralDataSize_Byte |
//  351 			  DMA_MemoryDataSize_Byte |
//  352 			  DMA_PeripheralInc_Disable |
//  353 			  DMA_MemoryInc_Enable |
//  354 			  DMA_Mode_Normal |
//  355 			  DMA_DIR_PeripheralDST |
//  356 			  DMA_CCR4_TCIE
//  357 			  );
        LDR.N    R4,??DataTable7_1  ;; 0x40020080
        MOVS     R0,#+146
        STR      R0,[R4, #+0]
        MOVS     R2,#+1
//  358   DBG_DMA_CHANNEL->CPAR = (u32)&DBG_UART->DR;
        LDR.N    R0,??DataTable7_2  ;; 0x40004404
        STR      R0,[R4, #+8]
        MOVS     R1,#+2
//  359   //DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer_head;
//  360   DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer;
        LDR.N    R0,??DataTable7_3
        STR      R0,[R4, #+12]
//  361 #endif
//  362 
//  363     DMA_ITConfig(DBG_DMA_CHANNEL,DMA_IT_TC,ENABLE);       
        MOV      R0,R4
          CFI FunCall DMA_ITConfig
        BL       DMA_ITConfig
//  364     DMA_Cmd(DBG_DMA_CHANNEL, ENABLE);  
        MOV      R0,R4
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R1,#+1
          CFI FunCall DMA_Cmd
        B.W      DMA_Cmd
          CFI EndBlock cfiBlock0
//  365 }
//  366 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function dbguart_DMA_NVIC_Config
        THUMB
//  367 void dbguart_DMA_NVIC_Config(void)
//  368 {
dbguart_DMA_NVIC_Config:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  369     //DMA发送中断设置  
//  370 	NVIC_InitTypeDef NVIC_InitStructure;
//  371     NVIC_InitStructure.NVIC_IRQChannel = DMA1_Channel7_IRQn;  
        MOVS     R0,#+17
        STRB     R0,[SP, #+0]
//  372     NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;  
        MOVS     R0,#+3
        STRB     R0,[SP, #+1]
//  373     NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;  
        MOVS     R0,#+2
        STRB     R0,[SP, #+2]
//  374     NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;  
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
//  375     NVIC_Init(&NVIC_InitStructure);  
        ADD      R0,SP,#+0
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//  376 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//  377 
//  378 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function update_dma
        THUMB
//  379 static void
//  380 update_dma(void)
//  381 {
//  382 	if (xmit_buffer_tail == xmit_buffer_head) return;
update_dma:
        LDR.N    R0,??DataTable7_4
        LDR      R1,[R0, #+8]
        LDR      R2,[R0, #+4]
        CMP      R1,R2
        BNE.N    ??update_dma_0
        BX       LR
//  383 #if  1
//  384 	DBG_DMA_CHANNEL->CCR = (DMA_Priority_Low |
//  385 						DMA_PeripheralDataSize_Byte |
//  386 						DMA_MemoryDataSize_Byte |
//  387 						DMA_PeripheralInc_Disable |
//  388 						DMA_MemoryInc_Enable |
//  389 						DMA_Mode_Normal |
//  390 						DMA_DIR_PeripheralDST |
//  391 						DMA_CCR4_TCIE
//  392 	);
??update_dma_0:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        LDR.N    R4,??DataTable7_1  ;; 0x40020080
        MOVS     R1,#+146
        STR      R1,[R4, #+0]
//  393 	DBG_DMA_CHANNEL->CPAR = (u32)&DBG_UART->DR;
        LDR.N    R1,??DataTable7_2  ;; 0x40004404
        STR      R1,[R4, #+8]
//  394 	DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer_head;
        LDR      R1,[R0, #+4]
        STR      R1,[R4, #+12]
//  395 //	DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer;
//  396 #endif
//  397     //dbguart_DMA_Configuration( );
//  398 	//DBG_DMA_CHANNEL->CPAR = (u32)&DBG_UART->DR;
//  399 	//DBG_DMA_CHANNEL->CMAR = (u32)xmit_buffer_head;
//  400 	//dbguart_DMA_NVIC_Config( );
//  401 	if (xmit_buffer_head < xmit_buffer_tail) 
        LDR      R1,[R0, #+4]
        LDR      R2,[R0, #+8]
        CMP      R1,R2
        BCS.N    ??update_dma_1
//  402 	{
//  403 		DBG_DMA_CHANNEL->CNDTR = xmit_buffer_tail - xmit_buffer_head;
        LDR      R1,[R0, #+8]
        LDR      R2,[R0, #+4]
        SUBS     R1,R1,R2
        STR      R1,[R4, #+4]
//  404 		dma_end = xmit_buffer_tail;    
        LDR      R1,[R0, #+8]
        B.N      ??update_dma_2
//  405 	} 
//  406 	else 
//  407 	{
//  408 		DBG_DMA_CHANNEL->CNDTR =  XMIT_BUFFER_END - xmit_buffer_head;
??update_dma_1:
        LDR      R2,[R0, #+4]
        ADD      R1,R0,#+48
        SUBS     R1,R1,R2
        STR      R1,[R4, #+4]
//  409 		dma_end = xmit_buffer;
        ADD      R1,R0,#+16
??update_dma_2:
        STR      R1,[R0, #+12]
//  410 		//dma_end = xmit_buffer_tail;    
//  411 	}
//  412 //	NVIC_ENABLE_INT(DMA1_Channel4_IRQn);
//  413 //	NVIC_SET_PRIORITY(DMA1_Channel4_IRQn, 2);
//  414     DMA_ITConfig(DBG_DMA_CHANNEL,DMA_IT_TC,ENABLE);  
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOV      R0,R4
          CFI FunCall DMA_ITConfig
        BL       DMA_ITConfig
//  415 
//  416 	DBG_DMA_CHANNEL->CCR |=DMA_CCR4_EN;
        LDR      R0,[R4, #+0]
        ORR      R0,R0,#0x1
        STR      R0,[R4, #+0]
//  417 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//  418 
//  419 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function DMA1_Channel7_IRQHandler
        THUMB
//  420 void
//  421 DMA1_Channel7_IRQHandler()
//  422 {
DMA1_Channel7_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  423 	DBG_DMA->IFCR = DBG_DMA_CHANNEL_IFCR_CGIF;
        LDR.N    R1,??DataTable7_5  ;; 0x40020004
        MOV      R0,#+16777216
        STR      R0,[R1, #+0]
//  424 	xmit_buffer_head = dma_end;
        LDR.N    R0,??DataTable7_4
        LDR      R2,[R0, #+12]
        STR      R2,[R0, #+4]
//  425 	if (xmit_buffer_tail == xmit_buffer_head) 
        LDR      R2,[R0, #+8]
        LDR      R3,[R0, #+4]
        CMP      R2,R3
        BNE.N    ??DMA1_Channel7_IRQHandler_0
//  426 	{
//  427 		dma_running = 0;
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  428 		return;
        POP      {R4,PC}
//  429 	}
//  430 	update_dma();
??DMA1_Channel7_IRQHandler_0:
        LDR      R2,[R0, #+8]
        LDR      R3,[R0, #+4]
        CMP      R2,R3
        BEQ.N    ??DMA1_Channel7_IRQHandler_1
        MOVS     R2,#+146
        STR      R2,[R1, #+124]
        LDR.N    R4,??DataTable7_1  ;; 0x40020080
        LDR.N    R1,??DataTable7_2  ;; 0x40004404
        STR      R1,[R4, #+8]
        LDR      R1,[R0, #+4]
        STR      R1,[R4, #+12]
        LDR      R1,[R0, #+4]
        LDR      R2,[R0, #+8]
        CMP      R1,R2
        BCS.N    ??DMA1_Channel7_IRQHandler_2
        LDR      R1,[R0, #+8]
        LDR      R2,[R0, #+4]
        SUBS     R1,R1,R2
        STR      R1,[R4, #+4]
        LDR      R1,[R0, #+8]
        B.N      ??DMA1_Channel7_IRQHandler_3
??DMA1_Channel7_IRQHandler_2:
        LDR      R2,[R0, #+4]
        ADD      R1,R0,#+48
        SUBS     R1,R1,R2
        STR      R1,[R4, #+4]
        ADD      R1,R0,#+16
??DMA1_Channel7_IRQHandler_3:
        STR      R1,[R0, #+12]
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOV      R0,R4
          CFI FunCall DMA_ITConfig
        BL       DMA_ITConfig
        LDR      R0,[R4, #+0]
        ORR      R0,R0,#0x1
        STR      R0,[R4, #+0]
//  431 }
??DMA1_Channel7_IRQHandler_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  432 
//  433 
//  434 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function dbg_send_bytes
        THUMB
//  435 unsigned int
//  436 dbg_send_bytes(const unsigned char *seq, unsigned int len)
//  437 {
dbg_send_bytes:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  438 	/* Since each of the pointers should be read atomically
//  439 	there's no need to disable interrupts */
//  440 	unsigned char *head = xmit_buffer_head;
        LDR.N    R4,??DataTable7_4
        MOV      R5,R0
        LDR      R0,[R4, #+4]
//  441 	unsigned char *tail = xmit_buffer_tail;
        LDR      R6,[R4, #+8]
//  442 	if (tail >= head) 
        MOV      R2,R6
        CMP      R2,R0
        BCC.N    ??dbg_send_bytes_0
//  443 	{
//  444 		/* Free space wraps */
//  445 		unsigned int xfer_len = XMIT_BUFFER_END - tail; //free space at the tail
        ADD      R3,R4,#+48
        SUB      R8,R3,R2
//  446 		unsigned int free = DBG_XMIT_BUFFER_LEN - (tail - head) - 1;//all free space 
        RSB      R2,R2,#+31
        ADDS     R7,R0,R2
//  447 		if (len > free) len = free;
        CMP      R7,R1
        IT       HI 
        MOVHI    R7,R1
//  448 		if (xfer_len < len) 
        CMP      R8,R7
        BCS.N    ??dbg_send_bytes_1
//  449 		{
//  450 			memcpy(tail, seq, xfer_len);
        MOV      R2,R8
        MOV      R1,R5
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  451 			seq += xfer_len;
        ADD      R1,R8,R5
//  452 			xfer_len = len - xfer_len;
        SUB      R5,R7,R8
//  453 			memcpy(xmit_buffer, seq, xfer_len);
        MOV      R2,R5
        ADD      R0,R4,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  454 			tail = xmit_buffer + xfer_len;
        ADDS     R0,R5,R4
        ADDS     R0,R0,#+16
        B.N      ??dbg_send_bytes_2
//  455 		} 
//  456 		else 
//  457 		{
//  458 			memcpy(tail, seq, len);
??dbg_send_bytes_1:
        MOV      R2,R7
        MOV      R1,R5
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  459 			tail += len;
        ADDS     R0,R7,R6
//  460 			if (tail == XMIT_BUFFER_END) tail = xmit_buffer;
        ADD      R1,R4,#+48
        CMP      R0,R1
        BNE.N    ??dbg_send_bytes_2
        ADD      R0,R4,#+16
        B.N      ??dbg_send_bytes_2
//  461 		}
//  462 	} 
//  463 	else 
//  464 	{
//  465 		/* Free space continuous */
//  466 		unsigned int free = (head - tail) - 1;
??dbg_send_bytes_0:
        SUBS     R0,R0,R2
        SUBS     R7,R0,#+1
//  467 		if (len > free) len = free;
        CMP      R7,R1
        IT       HI 
        MOVHI    R7,R1
//  468 		memcpy(tail, seq, len);
        MOV      R2,R7
        MOV      R1,R5
        MOV      R0,R6
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  469 		tail += len;
        ADDS     R0,R7,R6
//  470 	}
//  471 	xmit_buffer_tail = tail;
??dbg_send_bytes_2:
        STR      R0,[R4, #+8]
//  472 	if (!dma_running) 
        LDRB     R0,[R4, #+0]
        CBNZ.N   R0,??dbg_send_bytes_3
//  473 	{
//  474 		dma_running = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//  475 		update_dma();
          CFI FunCall update_dma
        BL       update_dma
//  476 	}
//  477 	return len;
??dbg_send_bytes_3:
        MOV      R0,R7
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock4
//  478 }
//  479 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  480 static unsigned char uart_dma_write_overrun = 0;
uart_dma_write_overrun:
        DS8 1
//  481 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function uart_dma_putchar
        THUMB
//  482 void uart_dma_putchar(u_char ch)
//  483 {
uart_dma_putchar:
        PUSH     {R0,R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+12
//  484 	#if 1
//  485 	if (uart_dma_write_overrun) 
        LDR.N    R4,??DataTable7_6
        LDRB     R0,[R4, #+0]
        SUB      SP,SP,#+4
          CFI CFA R13+16
        CBZ.N    R0,??uart_dma_putchar_0
//  486 	{
//  487 		//if (dbg_send_bytes((const unsigned char*)"^",1) != 1) return;
//  488 		if (dbg_send_bytes((const unsigned char*)"^",1) != 1) return;
        MOVS     R1,#+1
        ADR.N    R0,??DataTable7  ;; "^"
          CFI FunCall dbg_send_bytes
        BL       dbg_send_bytes
        CMP      R0,#+1
        BNE.N    ??uart_dma_putchar_1
//  489 	}
//  490 	#endif
//  491 	
//  492 	uart_dma_write_overrun = 0;
??uart_dma_putchar_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  493 	
//  494 	if (dbg_send_bytes((const unsigned char*)&ch,1) != 1) 
        MOVS     R1,#+1
        ADD      R0,SP,#+4
          CFI FunCall dbg_send_bytes
        BL       dbg_send_bytes
        CMP      R0,#+1
        ITT      NE 
        MOVNE    R0,#+1
        STRBNE   R0,[R4, #+0]
//  495 	{ 
//  496 		uart_dma_write_overrun = 1;
//  497 	}
//  498 }
??uart_dma_putchar_1:
        POP      {R0,R1,R4,PC}    ;; return
          CFI EndBlock cfiBlock5
//  499 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function uart_dma_blocking_putchar
        THUMB
//  500 void uart_dma_blocking_putchar(const char ch)
//  501 {
uart_dma_blocking_putchar:
        PUSH     {R0,R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+12
//  502 	if (uart_dma_write_overrun) 
        LDR.N    R4,??DataTable7_6
        LDRB     R0,[R4, #+0]
        SUB      SP,SP,#+4
          CFI CFA R13+16
        CBZ.N    R0,??uart_dma_blocking_putchar_0
//  503 	{
//  504 		while (dbg_send_bytes((const unsigned char*)"^",1) != 1);
??uart_dma_blocking_putchar_1:
        MOVS     R1,#+1
        ADR.N    R0,??DataTable7  ;; "^"
          CFI FunCall dbg_send_bytes
        BL       dbg_send_bytes
        CMP      R0,#+1
        BNE.N    ??uart_dma_blocking_putchar_1
//  505 	}
//  506 	uart_dma_write_overrun = 0;
??uart_dma_blocking_putchar_0:
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  507 	while (dbg_send_bytes((const unsigned char*)&ch,1) != 1);
??uart_dma_blocking_putchar_2:
        MOVS     R1,#+1
        ADD      R0,SP,#+4
          CFI FunCall dbg_send_bytes
        BL       dbg_send_bytes
        CMP      R0,#+1
        BNE.N    ??uart_dma_blocking_putchar_2
//  508 }
        POP      {R0,R1,R4,PC}    ;; return
          CFI EndBlock cfiBlock6
//  509 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function dbg_drain
          CFI NoCalls
        THUMB
//  510 void dbg_drain()
//  511 {
//  512   while(xmit_buffer_tail != xmit_buffer_head);
dbg_drain:
??dbg_drain_0:
        LDR.N    R0,??DataTable7_4
        LDR      R1,[R0, #+8]
        LDR      R0,[R0, #+4]
        CMP      R1,R0
        BNE.N    ??dbg_drain_0
//  513 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC8      "^",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x40020080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x40004404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     dma_running+0x10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     dma_running

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     uart_dma_write_overrun

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_0:
        DC8 "^"

        END
//  514 
//  515 
//  516 #endif
//  517 
// 
//   1 byte  in section .bss
//  48 bytes in section .data
//   2 bytes in section .rodata
// 540 bytes in section .text
// 
// 540 bytes of CODE  memory
//   2 bytes of CONST memory
//  49 bytes of DATA  memory
//
//Errors: none
//Warnings: 6
