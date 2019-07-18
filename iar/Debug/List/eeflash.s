///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:41
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\eeflash.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\eeflash.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\eeflash.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN FLASH_ErasePage
        EXTERN FLASH_Lock
        EXTERN FLASH_ProgramWord
        EXTERN FLASH_Unlock
        EXTERN __aeabi_memcpy
        EXTERN memcmp
        EXTERN watchdog_periodic
        EXTERN xprintf

        PUBLIC eeBlockGetBase
        PUBLIC eeBlockGetSize
        PUBLIC eeBlockRead
        PUBLIC eeBlockWrite
        PUBLIC eeWriteMultiWord
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\cpu\stm32F103\eeflash.c
//    1 #include "contiki.h"
//    2 #include "basictype.h"
//    3 #include "sysprintf.h"
//    4 #include <string.h>
//    5 
//    6 #include "stm32f10x.h"
//    7 #include "eeflash.h"
//    8 
//    9 #include "dev/watchdog.h"
//   10 
//   11  /*page size is 2048 byte*/
//   12 #define FLASH_PAGE_SIZE    				(0x0800UL)
//   13 #define FLASH_PAGE_OFFSET_MASK  		(FLASH_PAGE_SIZE-1)
//   14 #define FLASH_PAGE_MASK  				(0xffffFFFF-FLASH_PAGE_OFFSET_MASK)
//   15 
//   16 
//   17 #ifdef MCU_STM32F103RDT6
//   18 /*
//   19 * \stm32f106RD6 flash is 384k, addr is 0x0800_0000 to 0x0805_ffff
//   20 *  make the last page to save user data
//   21 */
//   22 
//   23 #define FLASH_ADDR_START 			(u_long)0x08000000
//   24 #define FLASH_ADDR_END_ADDR			(u_long)0x0805ffff
//   25 
//   26 #define FLASH_BLOCK_START 			(u_long)(380*1024)
//   27 #define FLASH_BLOCK_SIZE   			(u_long)(4*1024)
//   28 #endif
//   29 
//   30 #ifdef MCU_STM32F103RBT6
//   31 /*
//   32 * \stm32f106Rb6 flash is 128k, addr is 0x0800_0000 to 0x0802_0000
//   33 *  make the last page to save user data  0x0801_f000
//   34 */
//   35 
//   36 #define FLASH_ADDR_START 			(u_long)0x08000000
//   37 #define FLASH_ADDR_END_ADDR			(u_long)0x08020000
//   38 
//   39 #define FLASH_BLOCK_START 			(u_long)(124*1024)
//   40 #define FLASH_BLOCK_SIZE   			(u_long)(4*1024)
//   41 #endif
//   42 
//   43 
//   44 #define FLASH_ADDR_END    			(u_long)(FLASH_ADDR_START+FLASH_BLOCK_START+FLASH_BLOCK_SIZE)
//   45 #define BANK_WRITE_START_ADDR  		(u_long)(FLASH_ADDR_START + FLASH_BLOCK_START)
//   46 #define BANK_WRITE_END_ADDR    		FLASH_ADDR_END
//   47 
//   48 
//   49 /*
//   50 * \ brief  check a block flash is needed to erase.
//   51 *
//   52 * \ param dwiAddr The specify address in the flash between
//   53 *         BANK_WRITE_END_ADDR to BANK_WRITE_START_ADDR
//   54 * \ param wiSize
//   55 *
//   56 * \ return 
//   57 *          -2 the block flash need to erase,if we write data to the flash,
//   58 *           0 can write data to the block flash.
//   59 */
//   60 static int eeCheckBlockFlash(u_long dwiAddr, u_short wiSize)
//   61 {
//   62 //    u_int nResult;
//   63     u_short i = 0;
//   64 
//   65     for (i = 0; i < wiSize; i++)
//   66     {
//   67         if (((u_long*)dwiAddr)[i] != 0xffffffff)
//   68             return -2;/*Flag This block in the flash is needed to erase.*/
//   69     }
//   70 
//   71     return 0;
//   72 }
//   73 
//   74 
//   75 /*
//   76 * \ brief  write multi  word data to the flash block
//   77 *
//   78 * \ param dwiAddr save the data in the flash,The specify address in the flash between,
//   79 *         BANK_WRITE_END_ADDR to BANK_WRITE_START_ADDR.
//   80 *
//   81 * \ param pciSrc pointer to the data need to save.
//   82 * \ param wiDataLen read number of data.
//   83 *
//   84 * \ return -1 addr error, 
//   85 *          -2 addr num is odd.
//   86 *          0 write success.
//   87 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function eeWriteMultiWord
        THUMB
//   88  int eeWriteMultiWord(u_long dwiAddr, const u_long *pciSrc, u_short wiDataLen)
//   89 {
eeWriteMultiWord:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOV      R5,R2
//   90     u_short i = 0;
//   91     u_long *pDestAddr = (u_long*)dwiAddr;
//   92     int nResult;
//   93 
//   94     /*The addr is over the specify page.*/
//   95     if ((dwiAddr > BANK_WRITE_END_ADDR) || (dwiAddr< BANK_WRITE_START_ADDR))
        LDR.N    R2,??DataTable3  ;; 0xf7fe1000
        MOV      R4,R1
        MOVS     R6,#+0
        ADDS     R2,R2,R0
        MOV      R1,R0
        CMP      R2,#+4096
        MOV      R7,R1
        BLS.N    ??eeWriteMultiWord_0
//   96     {
//   97         PRINTF((0,"eeWriteMultiWord:Out of range\r\n"));
        ADR.W    R0,?_0
          CFI FunCall xprintf
        BL       xprintf
//   98         return -1;
        MOV      R0,#-1
        POP      {R4-R8,PC}
//   99     }
//  100     
//  101     /*The addr(dwiAddr) is a odd num, write data here will be made a fault.*/
//  102     if (dwiAddr % 2 != 0)
??eeWriteMultiWord_0:
        LSLS     R0,R0,#+31
        IT       MI 
        MVNMI    R0,#+1
//  103     {
//  104         return -2;   
        BMI.N    ??eeWriteMultiWord_1
//  105     }
//  106     
//  107     /*Check block Flash is needed to erase.*/
//  108     nResult = eeCheckBlockFlash(dwiAddr, wiDataLen);
        MOVS     R0,#+0
        B.N      ??eeWriteMultiWord_2
??eeWriteMultiWord_3:
        ADDS     R0,R0,#+1
??eeWriteMultiWord_2:
        UXTH     R0,R0
        CMP      R0,R5
        BCS.N    ??eeWriteMultiWord_4
        LDR      R2,[R1], #+4
        CMN      R2,#+1
        BEQ.N    ??eeWriteMultiWord_3
        MVN      R8,#+1
        B.N      ??eeWriteMultiWord_5
??eeWriteMultiWord_4:
        MOV      R8,R6
//  109     FLASH_Unlock( );
??eeWriteMultiWord_5:
          CFI FunCall FLASH_Unlock
        BL       FLASH_Unlock
//  110     if (nResult == -2)
        CMN      R8,#+2
        BNE.N    ??eeWriteMultiWord_6
//  111     {
//  112         FLASH_ErasePage((u_long)pDestAddr);
        MOV      R0,R7
          CFI FunCall FLASH_ErasePage
        BL       FLASH_ErasePage
        B.N      ??eeWriteMultiWord_6
//  113     }
//  114     
//  115     for (i = 0; i < wiDataLen; i++)
//  116     {
//  117         FLASH_ProgramWord((u_long)pDestAddr, *pciSrc);
??eeWriteMultiWord_7:
        LDR      R1,[R4], #+4
        MOV      R0,R7
          CFI FunCall FLASH_ProgramWord
        BL       FLASH_ProgramWord
//  118         pDestAddr++;
        ADDS     R7,R7,#+4
//  119         pciSrc++;
//  120     }
        ADDS     R6,R6,#+1
??eeWriteMultiWord_6:
        UXTH     R6,R6
        CMP      R6,R5
        BCC.N    ??eeWriteMultiWord_7
//  121     FLASH_Lock( );
          CFI FunCall FLASH_Lock
        BL       FLASH_Lock
//  122     return 0;
        MOVS     R0,#+0
??eeWriteMultiWord_1:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock0
//  123 }
//  124 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function eeBlockGetBase
          CFI NoCalls
        THUMB
//  125 u_long eeBlockGetBase(void)
//  126 {
//  127 	return BANK_WRITE_START_ADDR;
eeBlockGetBase:
        LDR.N    R0,??DataTable3_1  ;; 0x801f000
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  128 }
//  129 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function eeBlockGetSize
          CFI NoCalls
        THUMB
//  130 u_long eeBlockGetSize(void)
//  131 {
//  132 	return FLASH_BLOCK_SIZE;
eeBlockGetSize:
        MOV      R0,#+4096
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  133 }
//  134 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function eeBlockRead
        THUMB
//  135 u_long eeBlockRead(u_long dwAbsAddr,void*poBuf,u_long dwiSize)
//  136 {
eeBlockRead:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R3,R0
        MOV      R4,R1
        MOV      R5,R2
//  137 	u_long dwLength = 0;
        MOVS     R0,#+0
//  138 	if(poBuf)
        CBZ.N    R4,??eeBlockRead_0
//  139 	{
//  140 		memcpy(poBuf,(void*)dwAbsAddr,dwiSize);
        MOV      R1,R3
        MOV      R0,R4
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  141 		dwLength = dwiSize;
        MOV      R0,R5
//  142 	}
//  143 	return dwLength;
??eeBlockRead_0:
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//  144 }
//  145 
//  146 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  147 static u_char ubaFlashBuf[2048] = {0};
ubaFlashBuf:
        DS8 2048
//  148 //static u_char ubaFlashBuf[512] = {0};

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function eeBlockWrite
        THUMB
//  149 u_long eeBlockWrite(u_long dwAbsAddr,const void*pciBuf,u_long dwiSize)
//  150 {
eeBlockWrite:
        PUSH     {R0,R1,R4-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+44
        SUB      SP,SP,#+12
          CFI CFA R13+56
        MOV      R5,R2
//  151 	u_long dwPageStart;
//  152 	u_long dwPageEnd;
//  153 	u_long dwPageOffsetStart;
//  154 	u_long dwPageOffsetEnd;
//  155 	u_long dwWriteSize;
//  156 	u_char *pbkBuf = NULL;
//  157 	
//  158 	pbkBuf =(u_char *)(&ubaFlashBuf[0]);
//  159 //	if(pbkBuf == NULL)
//  160 //		return 0;
//  161 
//  162 //	NutFeedWatchdog();
//  163 	watchdog_periodic( );
          CFI FunCall watchdog_periodic
        BL       watchdog_periodic
//  164 	
//  165 	dwPageStart	= dwAbsAddr&FLASH_PAGE_MASK;
        LDR      R0,[SP, #+12]
//  166 	dwPageEnd	= (dwAbsAddr+dwiSize)&FLASH_PAGE_MASK;
//  167 	
//  168 	dwWriteSize = 0;
        LDR.W    R8,??DataTable3_2
        LSRS     R4,R0,#+11
        ADDS     R0,R5,R0
        LSRS     R1,R0,#+11
        LSLS     R0,R0,#+21
        LSRS     R0,R0,#+21
        STR      R0,[SP, #+8]
        LSLS     R1,R1,#+11
        LDR      R0,[SP, #+12]
        STR      R1,[SP, #+0]
        LSLS     R0,R0,#+21
        LSRS     R0,R0,#+21
        LSLS     R4,R4,#+11
        MOVS     R5,#+0
        STR      R0,[SP, #+4]
        B.N      ??eeBlockWrite_0
//  169 	
//  170 	for(;dwPageStart <= dwPageEnd; dwPageStart += FLASH_PAGE_SIZE)
//  171 	{
//  172 		u_long dwPageWriteSize;
//  173 		
//  174 		if(dwPageStart == dwPageEnd)
//  175 			dwPageOffsetEnd = (dwAbsAddr+dwiSize)&FLASH_PAGE_OFFSET_MASK;
//  176 		else
//  177 			dwPageOffsetEnd =  FLASH_PAGE_SIZE;
//  178 
//  179 		if(dwPageStart == (dwAbsAddr&FLASH_PAGE_MASK))
//  180 			dwPageOffsetStart = dwAbsAddr&FLASH_PAGE_OFFSET_MASK;
//  181 		else
//  182 			dwPageOffsetStart = 0;
//  183 
//  184 		eeBlockRead(dwPageStart,pbkBuf,FLASH_PAGE_SIZE);
//  185 		//eeBlockRead(dwPageStart,pbkBuf,512);
//  186 		
//  187 		dwPageWriteSize = dwPageOffsetEnd - dwPageOffsetStart;
//  188 		
//  189 		if(memcmp(&pbkBuf[dwPageOffsetStart],&((u_char*)pciBuf)[dwWriteSize],dwPageWriteSize) != 0)
//  190 		{
//  191 			memcpy(&pbkBuf[dwPageOffsetStart],&((u_char*)pciBuf)[dwWriteSize],dwPageWriteSize);
//  192 			if(eeWriteMultiWord(dwPageStart,(u_long *) pbkBuf, FLASH_PAGE_SIZE/sizeof(u_long)))
//  193 				break;
//  194 		}
//  195 
//  196 		dwWriteSize += dwPageOffsetEnd - dwPageOffsetStart;
??eeBlockWrite_1:
        ADDS     R0,R6,R5
        SUBS     R5,R0,R7
        ADD      R4,R4,#+2048
??eeBlockWrite_0:
        LDR      R0,[SP, #+0]
        CMP      R0,R4
        BCC.N    ??eeBlockWrite_2
        CMP      R4,R0
        LDR      R0,[SP, #+12]
        ITE      EQ 
        LDREQ    R6,[SP, #+8]
        MOVNE    R6,#+2048
        LSRS     R0,R0,#+11
        CMP      R4,R0, LSL #+11
        ITE      EQ 
        LDREQ    R7,[SP, #+4]
        MOVNE    R7,#+0
        MOV      R2,#+2048
        MOV      R1,R4
        MOV      R0,R8
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        LDR      R0,[SP, #+16]
        SUB      R9,R6,R7
        ADD      R10,R7,R8
        ADD      R11,R5,R0
        MOV      R2,R9
        MOV      R1,R11
        MOV      R0,R10
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BEQ.N    ??eeBlockWrite_1
        MOV      R2,R9
        MOV      R1,R11
        MOV      R0,R10
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOV      R2,#+512
        MOV      R1,R8
        MOV      R0,R4
          CFI FunCall eeWriteMultiWord
        BL       eeWriteMultiWord
        CMP      R0,#+0
        BEQ.N    ??eeBlockWrite_1
//  197 	}
//  198 	
//  199 	//free(pbkBuf);
//  200 	return dwWriteSize;
??eeBlockWrite_2:
        MOV      R0,R5
        ADD      SP,SP,#+20
          CFI CFA R13+36
        POP      {R4-R11,PC}      ;; return
          CFI EndBlock cfiBlock4
//  201 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0xf7fe1000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x801f000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     ubaFlashBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_0:
        DC8 "eeWriteMultiWord:Out of range\015\012"

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  202 
// 
// 2 048 bytes in section .bss
//   366 bytes in section .text
// 
//   366 bytes of CODE memory
// 2 048 bytes of DATA memory
//
//Errors: none
//Warnings: 2
