///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:29
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\arch_spi.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\arch_spi.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\arch_spi.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_Init
        EXTERN RCC_APB1PeriphClockCmd
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN SPI_Cmd
        EXTERN SPI_I2S_GetFlagStatus
        EXTERN SPI_I2S_ReceiveData
        EXTERN SPI_I2S_SendData
        EXTERN SPI_Init

        PUBLIC SPI_Config
        PUBLIC SPI_ReadByte
        PUBLIC SPI_SendByte
        PUBLIC SPI_SendByteData
        PUBLIC SpiReadDataBurst
        PUBLIC SpiWriteDataBurst
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\arch_spi.c
//    1 #include "contiki-conf.h"
//    2 #include "stm32f10x.h"
//    3 #include "iodef.h"
//    4 #include "basictype.h"
//    5 #include "atom.h"
//    6 
//    7 #include "sysprintf.h"
//    8 
//    9 #include "arch_spi.h"
//   10 
//   11 
//   12 extern void SI4432_NIRQ_Config(void);
//   13 #define			HARDSPI
//   14 //#define			SOFTSPI
//   15 //#define 		SOFTSPI_DEMO
//   16 
//   17 #ifdef	HARDSPI
//   18 //hardware spi
//   19 //config interface between MCU and si4432
//   20 #define SPI_WAIT_TIME 	100

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SPI_Config
        THUMB
//   21 void SPI_Config(void)
//   22 {
SPI_Config:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
//   23 	GPIO_InitTypeDef strGPIO;
//   24 	SPI_InitTypeDef	strSPI;
//   25 	
//   26 	//clk config
//   27 	//because in the arch-rtimer ,the APB1 clk is config to 18M
//   28 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB|RCC_APB2Periph_GPIOC, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+24
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//   29 	
//   30 	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+16384
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//   31 
//   32 	//spi af pin cfg
//   33 	strGPIO.GPIO_Pin = SPI2_MISO_PIN|SPI2_MOSI_PIN|SPI2_SCK_PIN;
        MOV      R0,#+57344
        STRH     R0,[SP, #+0]
//   34 	strGPIO.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//   35 	strGPIO.GPIO_Mode = GPIO_Mode_AF_PP; //复用功能
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
//   36 	GPIO_Init(SPI2_PORT, &strGPIO); 
        ADD      R1,SP,#+0
        LDR.N    R4,??DataTable4  ;; 0x40010c00
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//   37 
//   38 	//SPI nss pin cfg
//   39 	strGPIO.GPIO_Pin = SPI2_NSS_PIN;
        MOV      R0,#+4096
        STRH     R0,[SP, #+0]
//   40 	strGPIO.GPIO_Speed = GPIO_Speed_10MHz;
//   41 	strGPIO.GPIO_Mode = GPIO_Mode_Out_PP; //
//   42 	GPIO_Init(SPI2_PORT, &strGPIO); 
        ADD      R1,SP,#+0
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
        MOV      R0,R4
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//   43 
//   44 #if 0	
//   45 
//   46 	//si4432
//   47 	strSPI.SPI_Direction = SPI_Direction_2Lines_FullDuplex; //双线全双工
//   48 	strSPI.SPI_Mode = SPI_Mode_Master;   			 		//设置为主SPI                                             //主模式
//   49 	strSPI.SPI_DataSize = SPI_DataSize_8b;     				//SPI发送接收8位帧结构                                    //数据大小8位
//   50 	strSPI.SPI_CPOL = SPI_CPOL_High; 				//串行同步时钟的空闲状态为 低电平                                                //时钟极性，空闲时为低
//   51 	strSPI.SPI_CPHA = SPI_CPHA_2Edge; 					//串行同步时钟的第1个跳变沿（上升或下降）数据被采样						                                               //第1个边沿有效，上升沿为采样时刻
//   52 	strSPI.SPI_NSS = SPI_NSS_Soft; 							//NSS信号由硬件（NSS管脚）还是软件（使用SSI位）管理:内部NSS信号有SSI位控制                                                          //NSS信号由软件产生
//   53 	strSPI.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_16;  //18M 4 分频，4.5M
//   54 	
//   55 	strSPI.SPI_FirstBit = SPI_FirstBit_MSB;                  //高位在前
//   56 	strSPI.SPI_CRCPolynomial = 7;	//CRC值计算的多项式
//   57 
//   58 
//   59 	//enc28j60
//   60 	SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;  //设置SPI单向或者双向的数据模式:SPI设置为双线双向全双工
//   61 	SPI_InitStructure.SPI_Mode = SPI_Mode_Master;						//设置SPI工作模式:设置为主SPI
//   62 	SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;					//设置SPI的数据大小:SPI发送接收8位帧结构
//   63 	SPI_InitStructure.SPI_CPOL = SPI_CPOL_Low;							//串行同步时钟的空闲状态为低电平
//   64 	SPI_InitStructure.SPI_CPHA = SPI_CPHA_1Edge;						//串行同步时钟的第一个跳变沿（上升或下降）数据被采样
//   65 	SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;							//NSS信号由硬件（NSS管脚）还是软件（使用SSI位）管理:内部NSS信号有SSI位控制
//   66 	SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_256;		//定义波特率预分频的值:波特率预分频值为256
//   67 	SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;					//指定数据传输从MSB位还是LSB位开始:数据传输从MSB位开始
//   68 	SPI_InitStructure.SPI_CRCPolynomial = 7;							//CRC值计算的多项式
//   69 	SPI_Init(SPI2, &SPI_InitStructure);  								//根据SPI_InitStruct中指定的参数初始化外设SPIx寄存器
//   70 	
//   71 #else
//   72 	//si4438 spi interface config
//   73 	strSPI.SPI_Direction = SPI_Direction_2Lines_FullDuplex; //双线全双工
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
//   74 	strSPI.SPI_Mode = SPI_Mode_Master;   			 		//设置为主SPI                                             //主模式
        MOV      R0,#+260
        STRH     R0,[SP, #+6]
//   75 	strSPI.SPI_DataSize = SPI_DataSize_8b;     				//SPI发送接收8位帧结构                                    //数据大小8位
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   76 	strSPI.SPI_CPOL = SPI_CPOL_Low; 				//串行同步时钟的空闲状态为 低电平                                                //时钟极性，空闲时为低
//   77 	strSPI.SPI_CPHA = SPI_CPHA_1Edge; 					//串行同步时钟的第1个跳变沿（上升或下降）数据被采样						                                               //第1个边沿有效，上升沿为采样时刻
        STRH     R0,[SP, #+12]
//   78 	strSPI.SPI_NSS = SPI_NSS_Soft; 							//NSS信号由硬件（NSS管脚）还是软件（使用SSI位）管理:内部NSS信号有SSI位控制                                                          //NSS信号由软件产生
        MOV      R0,#+512
        STRH     R0,[SP, #+14]
//   79 	strSPI.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_16;  //72M 8 分频，4.5M
        MOVS     R0,#+24
        STRH     R0,[SP, #+16]
//   80 	strSPI.SPI_FirstBit = SPI_FirstBit_MSB;                  //高位在前
        MOVS     R0,#+0
        STRH     R0,[SP, #+18]
//   81 	strSPI.SPI_CRCPolynomial = 7;							//CRC值计算的多项式
        MOVS     R0,#+7
        STRH     R0,[SP, #+20]
//   82 #endif
//   83 	SPI_Init(SPI2, &strSPI);
        ADD      R1,SP,#+4
        LDR.N    R4,??DataTable4_1  ;; 0x40003800
        MOV      R0,R4
          CFI FunCall SPI_Init
        BL       SPI_Init
//   84 	SPI_Cmd(SPI2, ENABLE);
        MOVS     R1,#+1
        MOV      R0,R4
          CFI FunCall SPI_Cmd
        BL       SPI_Cmd
//   85 	//SPI_SendByteData(0xff);
//   86 
//   87 }
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   88 
//   89 
//   90 
//   91 //send a byte data

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SPI_SendByteData
        THUMB
//   92 u_char SPI_SendByteData(u_char ubData)
//   93 {
SPI_SendByteData:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        LDR.N    R5,??DataTable4_1  ;; 0x40003800
//   94 	/* Wait for SPI2 Tx buffer empty */
//   95 
//   96 	while ((SPI_I2S_GetFlagStatus(SPI2, SPI_I2S_FLAG_TXE) == RESET));
??SPI_SendByteData_0:
        MOVS     R1,#+2
        MOV      R0,R5
          CFI FunCall SPI_I2S_GetFlagStatus
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??SPI_SendByteData_0
//   97 	/*
//   98 	while ((SPI_I2S_GetFlagStatus(SPI2, SPI_I2S_FLAG_TXE) == RESET))
//   99 	{	
//  100 		udwWaitTime++;
//  101 		if (udwWaitTime > SPI_WAIT_TIME)
//  102 		{
//  103 			break;
//  104 		}
//  105 	}
//  106 	*/
//  107 	/* Send SPI2 data */
//  108 	SPI_I2S_SendData(SPI2, ubData);
        MOV      R1,R4
        MOV      R0,R5
          CFI FunCall SPI_I2S_SendData
        BL       SPI_I2S_SendData
//  109 
//  110 
//  111 	/* Wait for SPI2 data reception */
//  112 	while ((SPI_I2S_GetFlagStatus(SPI2, SPI_I2S_FLAG_RXNE) == RESET));
??SPI_SendByteData_1:
        MOVS     R1,#+1
        MOV      R0,R5
          CFI FunCall SPI_I2S_GetFlagStatus
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??SPI_SendByteData_1
//  113 	/*
//  114 	while ((SPI_I2S_GetFlagStatus(SPI2, SPI_I2S_FLAG_RXNE) == RESET))
//  115 	{
//  116 		udwWaitTime++;
//  117 		if (udwWaitTime > SPI_WAIT_TIME)
//  118 		{
//  119 			break;
//  120 		}
//  121 	}
//  122 	*/
//  123 	/* Read SPI2 received data */
//  124 	return SPI_I2S_ReceiveData(SPI2);
        MOV      R0,R5
          CFI FunCall SPI_I2S_ReceiveData
        BL       SPI_I2S_ReceiveData
        UXTB     R0,R0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//  125 }
//  126 
//  127 
//  128 
//  129 //send a byte data

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function SPI_SendByte
        THUMB
//  130 u_char SPI_SendByte(u_char ubData)
//  131 {
SPI_SendByte:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//  132 	/* Wait for SPI2 Tx buffer empty */
//  133 	unsigned int udwWaitTime = 0;
        MOVS     R5,#+0
        LDR.N    R6,??DataTable4_1  ;; 0x40003800
//  134 	while ((SPI_I2S_GetFlagStatus(SPI2, SPI_I2S_FLAG_TXE) == RESET) && (udwWaitTime ++ < SPI_WAIT_TIME));
??SPI_SendByte_0:
        MOVS     R1,#+2
        MOV      R0,R6
          CFI FunCall SPI_I2S_GetFlagStatus
        BL       SPI_I2S_GetFlagStatus
        CBNZ.N   R0,??SPI_SendByte_1
        MOV      R0,R5
        ADDS     R5,R0,#+1
        CMP      R0,#+100
        BCC.N    ??SPI_SendByte_0
//  135 	/* Send SPI2 data */
//  136 	SPI_I2S_SendData(SPI2, ubData);
??SPI_SendByte_1:
        MOV      R1,R4
        MOV      R0,R6
          CFI FunCall SPI_I2S_SendData
        BL       SPI_I2S_SendData
//  137 
//  138 	udwWaitTime = 0;
        MOVS     R4,#+0
//  139 	/* Wait for SPI2 data reception */
//  140 	while ((SPI_I2S_GetFlagStatus(SPI2, SPI_I2S_FLAG_RXNE) == RESET) && (udwWaitTime++ < SPI_WAIT_TIME));
??SPI_SendByte_2:
        MOVS     R1,#+1
        MOV      R0,R6
          CFI FunCall SPI_I2S_GetFlagStatus
        BL       SPI_I2S_GetFlagStatus
        CBNZ.N   R0,??SPI_SendByte_3
        MOV      R0,R4
        ADDS     R4,R0,#+1
        CMP      R0,#+100
        BCC.N    ??SPI_SendByte_2
//  141 	/* Read SPI2 received data */
//  142 	return SPI_I2S_ReceiveData(SPI2);
??SPI_SendByte_3:
        MOV      R0,R6
          CFI FunCall SPI_I2S_ReceiveData
        BL       SPI_I2S_ReceiveData
        UXTB     R0,R0
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//  143 }
//  144 
//  145 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function SPI_ReadByte
          CFI FunCall SPI_SendByte
        THUMB
//  146 u_char SPI_ReadByte(u_char ubdata)
//  147 {
//  148 	return SPI_SendByte(ubdata);
SPI_ReadByte:
        B.N      SPI_SendByte
          CFI EndBlock cfiBlock3
//  149 }
//  150 
//  151 #endif
//  152 
//  153 
//  154 
//  155 #ifdef SOFTSPI
//  156 void SPI_Config(void)
//  157 {
//  158 	GPIO_InitTypeDef strGPIO;
//  159 	
//  160 	//clk config
//  161 	//because in the arch-rtimer ,the APB1 clk is config to 18M
//  162 	//RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, ENABLE);
//  163 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB|RCC_APB2Periph_GPIOC, ENABLE);
//  164 	
//  165 	// SPI pin GPIO Config Out put
//  166 	strGPIO.GPIO_Pin = SPI2_SCK_PIN|SPI2_MOSI_PIN;
//  167 	strGPIO.GPIO_Speed = GPIO_Speed_10MHz;
//  168 	strGPIO.GPIO_Mode = GPIO_Mode_Out_PP; 
//  169 	GPIO_Init(SPI2_PORT, &strGPIO); 
//  170 
//  171 	// interface SPI pin GPIO Config input
//  172 	strGPIO.GPIO_Pin = SPI2_MISO_PIN;
//  173 	strGPIO.GPIO_Speed = GPIO_Speed_10MHz;
//  174 	strGPIO.GPIO_Mode = GPIO_Mode_IPU; //上拉输入
//  175 	GPIO_Init(SPI2_PORT, &strGPIO); 
//  176 
//  177 	//interface spi nss Config
//  178 	strGPIO.GPIO_Pin = SPI2_NSS_PIN;
//  179 	strGPIO.GPIO_Speed = GPIO_Speed_10MHz;
//  180 	strGPIO.GPIO_Mode = GPIO_Mode_Out_PP; //
//  181 	GPIO_Init(SPI2_PORT, &strGPIO); 
//  182 	
//  183 	SPI2_NSS(1);
//  184 }
//  185 
//  186 
//  187 /************************************************************************** 
//  188  * 函数名：SPI_SendByte 
//  189  * 描述  ：SPI模块发送函数 
//  190  * 输入  ：发送数据 
//  191  * 返回  ：返回数据 
//  192  *************************************************************************/  
//  193 u8 SPI_SendByteData(u8 byte)  
//  194 {       
//  195 	u8 i = 0;  
//  196 	u8 bit_r = 0; 
//  197 	for(i=0;i<8;i++)   // output 8-bit  
//  198 	{   
//  199 		//MOSI_PIN=byte & 0x80;     //output 'byte' MSB to MOSI_PIN  
//  200 		if(byte & 0x80)
//  201 			SI4432SDI(1);  
//  202 		else
//  203 			SI4432SDI(0); 
//  204 
//  205 		byte <<= 1;                 // shift next bit into MSB..  
//  206 
//  207 		bit_r<<=1;  
//  208 		if(SI4432SDO) bit_r++;  
//  209 
//  210 		SI4432SCLK(1); 
//  211 		SI4432SCLK(1); 
//  212 		SI4432SCLK(1); 
//  213 
//  214 		SI4432SCLK(0);
//  215 		SI4432SCLK(0);
//  216 		SI4432SCLK(0);
//  217 	}  
//  218 	return(bit_r);                        // return read byte  
//  219 }  
//  220 
//  221 #endif
//  222 
//  223 
//  224 
//  225 #ifdef SOFTSPI_DEMO
//  226 void SPI_Config(void)
//  227 {
//  228 	GPIO_InitTypeDef strGPIO;
//  229 	
//  230 	//clk config
//  231 	//because in the arch-rtimer ,the APB1 clk is config to 18M
//  232 	//RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, ENABLE);
//  233 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA|RCC_APB2Periph_GPIOB, ENABLE);
//  234 	
//  235 	//interface SPI pin GPIO Config Out put
//  236 	/*RF SDI*/
//  237 	strGPIO.GPIO_Pin = RF_SDI_PIN;
//  238 	strGPIO.GPIO_Speed = GPIO_Speed_50MHz;
//  239 	strGPIO.GPIO_Mode = GPIO_Mode_Out_PP; 
//  240 	GPIO_Init(RF_SDI_PORT, &strGPIO); 
//  241 
//  242 	/*RF SCLK*/
//  243 	strGPIO.GPIO_Pin = RF_SCLK_PIN;
//  244 	strGPIO.GPIO_Speed = GPIO_Speed_50MHz;
//  245 	strGPIO.GPIO_Mode = GPIO_Mode_Out_PP; 
//  246 	GPIO_Init(RF_SCLK_PORT, &strGPIO); 	
//  247 
//  248 	// interface SPI pin GPIO Config input
//  249 	/*RF SDO*/
//  250 	strGPIO.GPIO_Pin = RF_SDO_PIN;
//  251 	strGPIO.GPIO_Speed = GPIO_Speed_50MHz;
//  252 	strGPIO.GPIO_Mode = GPIO_Mode_IPU; //上拉输入
//  253 	GPIO_Init(RF_SDO_PORT, &strGPIO); 
//  254 
//  255 	// interface nSEL Config
//  256 	strGPIO.GPIO_Pin = RF_NSEL_PIN;
//  257 	strGPIO.GPIO_Speed = GPIO_Speed_50MHz;
//  258 	strGPIO.GPIO_Mode = GPIO_Mode_Out_PP; //
//  259 	GPIO_Init(RF_NSEL_PORT, &strGPIO); 
//  260 	
//  261 	// interface nIRQ Pin config
//  262 	strGPIO.GPIO_Pin = RF_NIRQ_PIN;
//  263 	strGPIO.GPIO_Speed = GPIO_Speed_50MHz;
//  264 	strGPIO.GPIO_Mode = GPIO_Mode_IPU; //
//  265 	GPIO_Init(RF_NIRQ_PORT, &strGPIO); 
//  266 
//  267 	//interface SDN Config
//  268 	strGPIO.GPIO_Pin = RF_SDN_PIN;
//  269 	strGPIO.GPIO_Speed = GPIO_Speed_50MHz;
//  270 	strGPIO.GPIO_Mode = GPIO_Mode_Out_PP; //
//  271 	GPIO_Init(RF_SDN_PORT, &strGPIO); 
//  272 
//  273 //	RF_SDN(0);
//  274 //	RF_SCLK(0); 
//  275 }
//  276 
//  277 
//  278 /************************************************************************** 
//  279  * 函数名：SPI_SendByte 
//  280  * 描述  ：SPI模块发送函数 
//  281  * 输入  ：发送数据 
//  282  * 返回  ：返回数据 
//  283  *************************************************************************/  
//  284 u8 SPI_SendByteData(u8 byte)  
//  285 {       
//  286 	u8 i = 0;  
//  287 	u8 bit_r = 0; 
//  288 	u8 j = 0;
//  289 	for(i=0;i<8;i++)   // output 8-bit  
//  290 	{   
//  291 		//MOSI_PIN=byte & 0x80;     //output 'byte' MSB to MOSI_PIN  
//  292 		if(byte & 0x80)
//  293 			RF_SDI(1);  
//  294 		else
//  295 			RF_SDI(0); 
//  296 
//  297 		byte <<= 1;                 // shift next bit into MSB..  
//  298 		bit_r<<=1;  
//  299 		if(RF_SDO()) 
//  300 			bit_r++;  
//  301 
//  302 		RF_SCLK(1); 
//  303 		
//  304 		RF_SCLK(0);
//  305 	}  
//  306 	return(bit_r);                        // return read byte  
//  307 }  
//  308 
//  309 #endif
//  310 
//  311 
//  312 
//  313 
//  314 
//  315 /*!
//  316  * This function is used to send data over SPI port (target: EzRadioPRO).no response expected.
//  317  *
//  318  *  @param[in] biDataInLength  The length of the data.
//  319  *  @param[in] *pabiDataIn     Pointer to the first element of the data.
//  320  *
//  321  *  @return None
//  322  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function SpiWriteDataBurst
        THUMB
//  323 void SpiWriteDataBurst(uint8_t biDataInLength, uint8_t *pabiDataIn)
//  324 {
SpiWriteDataBurst:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOV      R5,R1
        BEQ.N    ??SpiWriteDataBurst_0
        LDR.N    R6,??DataTable4_1  ;; 0x40003800
//  325   while (biDataInLength--) 
//  326   {
//  327     SPI_SendByteData(*pabiDataIn++);
??SpiWriteDataBurst_1:
        LDRB     R7,[R5, #+0]
        SUBS     R4,R4,#+1
??SpiWriteDataBurst_2:
        MOVS     R1,#+2
        MOV      R0,R6
          CFI FunCall SPI_I2S_GetFlagStatus
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??SpiWriteDataBurst_2
        MOV      R1,R7
        MOV      R0,R6
          CFI FunCall SPI_I2S_SendData
        BL       SPI_I2S_SendData
??SpiWriteDataBurst_3:
        MOVS     R1,#+1
        MOV      R0,R6
          CFI FunCall SPI_I2S_GetFlagStatus
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??SpiWriteDataBurst_3
        MOV      R0,R6
          CFI FunCall SPI_I2S_ReceiveData
        BL       SPI_I2S_ReceiveData
//  328   }
        ADDS     R5,R5,#+1
        CMP      R4,#+0
        BNE.N    ??SpiWriteDataBurst_1
//  329 }
??SpiWriteDataBurst_0:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock4
//  330 
//  331 
//  332 
//  333 /*!
//  334  * This function is used to read data from SPI port.(target: EzRadioPRO).
//  335  *
//  336  *  \param[in] biDataOutLength  The length of the data.
//  337  *  \param[out] *paboDataOut    Pointer to the first element of the response.
//  338  *
//  339  *  \return None
//  340  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SpiReadDataBurst
        THUMB
//  341 void SpiReadDataBurst(uint8_t biDataOutLength, uint8_t *paboDataOut)
//  342 {
SpiReadDataBurst:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOV      R5,R1
        BEQ.N    ??SpiReadDataBurst_0
        LDR.N    R6,??DataTable4_1  ;; 0x40003800
//  343   // send command and get response from the radio IC
//  344   while (biDataOutLength--) {
//  345     *paboDataOut++ = SPI_SendByteData(0xff);
??SpiReadDataBurst_1:
        SUBS     R4,R4,#+1
??SpiReadDataBurst_2:
        MOVS     R1,#+2
        MOV      R0,R6
          CFI FunCall SPI_I2S_GetFlagStatus
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??SpiReadDataBurst_2
        MOVS     R1,#+255
        MOV      R0,R6
          CFI FunCall SPI_I2S_SendData
        BL       SPI_I2S_SendData
??SpiReadDataBurst_3:
        MOVS     R1,#+1
        MOV      R0,R6
          CFI FunCall SPI_I2S_GetFlagStatus
        BL       SPI_I2S_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??SpiReadDataBurst_3
        MOV      R0,R6
          CFI FunCall SPI_I2S_ReceiveData
        BL       SPI_I2S_ReceiveData
//  346   }
        CMP      R4,#+0
        STRB     R0,[R5], #+1
        BNE.N    ??SpiReadDataBurst_1
//  347 }
??SpiReadDataBurst_0:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x40003800

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  348 
//  349 
//  350 
//  351 
// 
// 392 bytes in section .text
// 
// 392 bytes of CODE memory
//
//Errors: none
//Warnings: none
