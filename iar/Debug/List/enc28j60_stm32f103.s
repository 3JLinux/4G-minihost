///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:44
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\enc28j60_stm32f103.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\enc28j60_stm32f103.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\enc28j60_stm32f103.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_WriteBit
        EXTERN SPI_Config
        EXTERN SPI_SendByteData
        EXTERN clock_wait

        PUBLIC enc28j60_arch_spi_deselect
        PUBLIC enc28j60_arch_spi_init
        PUBLIC enc28j60_arch_spi_read
        PUBLIC enc28j60_arch_spi_select
        PUBLIC enc28j60_arch_spi_write
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\platform\stm32f103\enc28j60_stm32f103.c
//    1 #include "contiki.h"
//    2 #include "basictype.h"
//    3 #include "arch_spi.h"
//    4 #include "stm32f10x.h"
//    5 #include "iodef.h"
//    6 #include "enc28j60_stm32f103.h"
//    7 
//    8 /*
//    9 void enc28j60_arch_spi_init(void);
//   10 uint8_t enc28j60_arch_spi_write(uint8_t data);
//   11 uint8_t enc28j60_arch_spi_read(void);
//   12 void enc28j60_arch_spi_select(void);
//   13 void enc28j60_arch_spi_deselect(void);
//   14 */
//   15 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function enc28j60_arch_spi_init
          CFI FunCall SPI_Config
        THUMB
//   16 void enc28j60_arch_spi_init(void)
//   17 {
//   18 	//GPIO_InitTypeDef strGPIO;
//   19 	SPI_Config( );
enc28j60_arch_spi_init:
        B.W      SPI_Config
          CFI EndBlock cfiBlock0
//   20 }
//   21 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function enc28j60_arch_spi_write
          CFI FunCall SPI_SendByteData
        THUMB
//   22 uint8_t enc28j60_arch_spi_write(uint8_t data)
//   23 {
//   24 	#if 0
//   25 	SPDR = data;
//   26 	while(!(SPSR & (1 << SPIF))) ;
//   27 	return SPDR;
//   28 	#else
//   29 	return SPI_SendByteData(data);
enc28j60_arch_spi_write:
        B.W      SPI_SendByteData
          CFI EndBlock cfiBlock1
//   30 	#endif
//   31 }
//   32 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function enc28j60_arch_spi_read
        THUMB
//   33 uint8_t enc28j60_arch_spi_read(void)
//   34 {
//   35 	#if 0
//   36 	SPDR = 0xAA; /* dummy */
//   37 	while(!(SPSR & (1 << SPIF))) ;
//   38 	return SPDR;
//   39 	#else
//   40 	return SPI_SendByteData(0xAA);
enc28j60_arch_spi_read:
        MOVS     R0,#+170
          CFI FunCall SPI_SendByteData
        B.W      SPI_SendByteData
          CFI EndBlock cfiBlock2
//   41 	#endif
//   42 }
//   43 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function enc28j60_arch_spi_select
        THUMB
//   44 void enc28j60_arch_spi_select(void)
//   45 {
enc28j60_arch_spi_select:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   46 	#if 0
//   47 	CS_SPI_PORT &= ~(1 << SPI_CS);
//   48 	delay_us(1000);
//   49 	#else
//   50 	SPI2_NSS(0);
        MOVS     R2,#+0
        MOV      R1,#+4096
        LDR.N    R0,??DataTable1  ;; 0x40010c00
          CFI FunCall GPIO_WriteBit
        BL       GPIO_WriteBit
//   51 	clock_wait(1); //wait 1 ms
        POP      {R1,LR}
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R0,#+1
          CFI FunCall clock_wait
        B.W      clock_wait
          CFI EndBlock cfiBlock3
//   52 	#endif
//   53 }
//   54 
//   55 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function enc28j60_arch_spi_deselect
        THUMB
//   56 void enc28j60_arch_spi_deselect(void)
//   57 {
//   58 	#if 0
//   59 	CS_SPI_PORT |= (1 << SPI_CS);
//   60 	#else
//   61 	SPI2_NSS(1);
enc28j60_arch_spi_deselect:
        MOVS     R2,#+1
        MOV      R1,#+4096
        LDR.N    R0,??DataTable1  ;; 0x40010c00
          CFI FunCall GPIO_WriteBit
        B.W      GPIO_WriteBit
          CFI EndBlock cfiBlock4
//   62 	#endif
//   63 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40010c00

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   64 
//   65 
// 
// 54 bytes in section .text
// 
// 54 bytes of CODE memory
//
//Errors: none
//Warnings: 1
