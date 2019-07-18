///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:45
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\hwgg\end_node_list.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\hwgg\end_node_list.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\end_node_list.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN clock_seconds
        EXTERN list_add
        EXTERN list_head
        EXTERN list_init
        EXTERN list_item_next
        EXTERN list_remove
        EXTERN mem_cmp
        EXTERN memb_alloc
        EXTERN memb_free
        EXTERN memb_init
        EXTERN xprintf

        PUBLIC endNodeInListByMac
        PUBLIC endNodeListHead
        PUBLIC endNodeListInit
        PUBLIC endNodeListNext
        PUBLIC endNodeListPeriodicCheck
        PUBLIC endNodeListPrint
        PUBLIC endNodeListRemove
        PUBLIC endNodeListUpdate
        PUBLIC endNodeListadd
        PUBLIC endNodeNums
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\hwgg\end_node_list.c
//    1 #include "contiki.h"
//    2 #include <string.h>
//    3 #include "lib/memb.h"
//    4 #include "lib/list.h"
//    5 #include "basictype.h"
//    6 #include "hwgg.h"
//    7 #include "sysprintf.h"
//    8 
//    9 
//   10 
//   11 /* The neighbor address table */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   12 MEMB(endnodemem, NODE_INFO, HWGG_MAX_END_NODES);
endnodemem_memb_count:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute NODE_INFO endnodemem_memb_mem[200]
endnodemem_memb_mem:
        DS8 3200

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 LIST(endnodelist);
//   14 
//   15 static int nodes = 0;
nodes:
        DATA
        DC32 0
        DC16 16, 200
        DC32 endnodemem_memb_count, endnodemem_memb_mem
endnodelist_list:
        DC32 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 endnodelist_list
//   16 
//   17 
//   18 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function endNodeListInit
        THUMB
//   19 void endNodeListInit(void)
//   20 {
endNodeListInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   21 	memb_init(&endnodemem);
        LDR.N    R4,??DataTable15_1
        ADDS     R0,R4,#+4
          CFI FunCall memb_init
        BL       memb_init
//   22 	list_init(endnodelist);
        ADD      R0,R4,#+16
          CFI FunCall list_init
        BL       list_init
//   23 	nodes = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//   24 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   25 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function endNodeListHead
        THUMB
//   26 NODE_INFO *endNodeListHead(void)
//   27 {
//   28 	return list_head(endnodelist);
endNodeListHead:
        LDR.N    R0,??DataTable15_2
          CFI FunCall list_head
        B.W      list_head
          CFI EndBlock cfiBlock1
//   29 }
//   30 
//   31 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function endNodeListNext
        THUMB
//   32 NODE_INFO * endNodeListNext(NODE_INFO *pnode)
//   33 {
//   34 	if(pnode != NULL) 
endNodeListNext:
        CMP      R0,#+0
        IT       NE 
//   35 	{
//   36 		NODE_INFO *n = list_item_next(pnode);
//   37 		return n;
          CFI FunCall list_item_next
        BNE.W    list_item_next
//   38 	}
//   39 	return NULL;
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   40 }
//   41 
//   42 
//   43 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function endNodeNums
          CFI NoCalls
        THUMB
//   44 int endNodeNums(void)
//   45 {
//   46 	return nodes;
endNodeNums:
        LDR.N    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   47 }
//   48 
//   49 
//   50 /*
//   51 * \note this function is used to check node is in list or not
//   52 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function endNodeInListByMac
        THUMB
//   53 NODE_INFO * endNodeInListByMac(const u_char *pcMac)
//   54 {
endNodeInListByMac:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//   55 	NODE_INFO *pnode = NULL;
//   56 
//   57 	for(pnode = endNodeListHead(); pnode != NULL; pnode = endNodeListNext(pnode)) 
        LDR.N    R0,??DataTable15_2
          CFI FunCall list_head
        BL       list_head
        B.N      ??endNodeInListByMac_0
//   58 	{
//   59 		//mac addr and netid is same,the node was in list
//   60 		if (mem_cmp(pcMac, pnode->ubaHWGGMacAddr, HWGG_NODE_MAC_LEN) == 0)
??endNodeInListByMac_1:
          CFI FunCall list_item_next
        BL       list_item_next
??endNodeInListByMac_0:
        MOVS     R5,R0
        BEQ.N    ??endNodeInListByMac_2
        MOVS     R2,#+4
        ADDS     R1,R5,#+5
        MOV      R0,R4
          CFI FunCall mem_cmp
        BL       mem_cmp
        CMP      R0,#+0
        MOV      R0,R5
        BNE.N    ??endNodeInListByMac_1
//   61 		{
//   62 			return pnode;
        POP      {R1,R4,R5,PC}
//   63 		}
//   64 	}
//   65 
//   66 	return NULL;
??endNodeInListByMac_2:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock4
//   67 }
//   68 
//   69 
//   70 
//   71 
//   72 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function endNodeListadd
        THUMB
//   73 NODE_INFO * endNodeListadd(const NODE_INFO *pcnode)
//   74 {
endNodeListadd:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R6,R0
//   75 	NODE_INFO *pnode;
//   76 
//   77 	pnode = endNodeInListByMac(pcnode->ubaHWGGMacAddr);
        ADDS     R0,R6,#+5
          CFI FunCall endNodeInListByMac
        BL       endNodeInListByMac
        MOVS     R4,R0
//   78 	if (pnode != NULL)
        BEQ.N    ??endNodeListadd_0
//   79 	{
//   80 		MEM_DUMP(8, "mac", pcnode->ubaHWGGMacAddr, HWGG_NODE_MAC_LEN);
        MOVS     R3,#+4
        ADDS     R2,R6,#+5
        ADR.N    R1,??DataTable15  ;; "mac"
        MOVS     R0,#+8
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//   81 		XPRINTF((8, "the node is in list\r\n"));
        ADR.W    R1,?_1
        MOVS     R0,#+8
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//   82 		//update receive packet time and node net sate
//   83 		pnode->lastRevPacketTime = clock_seconds( );
          CFI FunCall clock_seconds
        BL       clock_seconds
        STR      R0,[R4, #+12]
//   84 		pnode->nodeNetState = HWGG_NODE_IN_NET;
        MOVS     R0,#+1
        STRB     R0,[R4, #+4]
//   85 		return pnode;
        MOV      R0,R4
        POP      {R4-R6,PC}
//   86 	}
//   87     /* Allocate a routing entry and populate it. */
//   88 	pnode = memb_alloc(&endnodemem);
??endNodeListadd_0:
        LDR.N    R4,??DataTable15_1
        ADDS     R0,R4,#+4
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R5,R0
//   89 	if (pnode == NULL)
        BNE.N    ??endNodeListadd_1
//   90 	{
//   91 		XPRINTF((6, "no space for node\r\n"));	
        ADR.W    R1,?_2
        MOVS     R0,#+6
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//   92 		return NULL;
        MOVS     R0,#+0
        POP      {R4-R6,PC}
//   93 	}
//   94 	
//   95 	//copy node info to pnode
//   96 	*pnode = *pcnode;
??endNodeListadd_1:
        LDM      R6!,{R0-R3}
        STM      R5!,{R0-R3}
        SUBS     R5,R5,#+16
//   97 	pnode->lastRevPacketTime = clock_seconds( );
          CFI FunCall clock_seconds
        BL       clock_seconds
        STR      R0,[R5, #+12]
//   98 	pnode->nodeNetState = HWGG_NODE_IN_NET;	
//   99 	/* add new routes first - assuming that there is a reason to add this
//  100        and that there is a packet coming soon. */
//  101     list_add(endnodelist, pnode);
        MOV      R1,R5
        MOVS     R0,#+1
        STRB     R0,[R5, #+4]
        ADD      R0,R4,#+16
          CFI FunCall list_add
        BL       list_add
//  102     nodes++;
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+0]
//  103 	return pnode;
        MOV      R0,R5
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock5
//  104 }
//  105 
//  106 
//  107 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function endNodeListRemove
        THUMB
//  108 void endNodeListRemove(NODE_INFO *pnode)
//  109 {
endNodeListRemove:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  110 	list_remove(endnodelist, pnode);
        LDR.N    R5,??DataTable15_1
        MOV      R1,R4
        ADD      R0,R5,#+16
          CFI FunCall list_remove
        BL       list_remove
//  111 	memb_free(&endnodemem, pnode);
        MOV      R1,R4
        ADDS     R0,R5,#+4
          CFI FunCall memb_free
        BL       memb_free
//  112 	nodes--;
        LDR      R0,[R5, #+0]
        SUBS     R0,R0,#+1
        STR      R0,[R5, #+0]
//  113 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6
//  114 
//  115 
//  116 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function endNodeListUpdate
        THUMB
//  117 void endNodeListUpdate(const FIRE_NODE *pcNode)
//  118 {
endNodeListUpdate:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  119 	NODE_INFO *pnode = NULL;
//  120 
//  121 	for(pnode = endNodeListHead(); pnode != NULL; pnode = endNodeListNext(pnode)) 
        LDR.N    R0,??DataTable15_2
          CFI FunCall list_head
        BL       list_head
        B.N      ??endNodeListUpdate_0
//  122 	{
//  123 		if (mem_cmp(pnode->ubaHWGGMacAddr, pcNode->ubaSrcMac, HWGG_NODE_MAC_LEN) == 0)
??endNodeListUpdate_1:
        MOVS     R2,#+4
        ADDS     R1,R4,#+1
        ADDS     R0,R5,#+5
          CFI FunCall mem_cmp
        BL       mem_cmp
        CBNZ.N   R0,??endNodeListUpdate_2
//  124 		{
//  125 			pnode->lastRevPacketTime = clock_seconds( );
          CFI FunCall clock_seconds
        BL       clock_seconds
        STR      R0,[R5, #+12]
//  126 			pnode->nodeNetState = HWGG_NODE_IN_NET;
        MOVS     R0,#+1
        STRB     R0,[R5, #+4]
??endNodeListUpdate_2:
        MOV      R0,R5
          CFI FunCall list_item_next
        BL       list_item_next
??endNodeListUpdate_0:
        MOVS     R5,R0
//  127 		}
//  128 	}
        BNE.N    ??endNodeListUpdate_1
//  129 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock7
//  130 
//  131 
//  132 //_periodic

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function endNodeListPeriodicCheck
        THUMB
//  133 void endNodeListPeriodicCheck(void)
//  134 {
endNodeListPeriodicCheck:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  135 	NODE_INFO *pnode = NULL;
//  136 
//  137 	for(pnode = endNodeListHead(); pnode != NULL; pnode = endNodeListNext(pnode)) 
        LDR.N    R0,??DataTable15_2
          CFI FunCall list_head
        BL       list_head
        B.N      ??endNodeListPeriodicCheck_0
//  138 	{
//  139 		if ((pnode->lastRevPacketTime + HWGG_NODE_CHECK_TIMS_S) > clock_seconds())
??endNodeListPeriodicCheck_1:
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR      R1,[R4, #+12]
        ADD      R1,R1,#+7200
        CMP      R0,R1
        SBCS     R0,R0,R0
        LSRS     R0,R0,#+31
        STRB     R0,[R4, #+4]
//  140 		{
//  141 			pnode->nodeNetState = HWGG_NODE_IN_NET;
//  142 		}
//  143 		else
//  144 		{
//  145 			pnode->nodeNetState = HWGG_NODE_OUT_NET;
//  146 		}
//  147 	}	
        MOV      R0,R4
          CFI FunCall list_item_next
        BL       list_item_next
??endNodeListPeriodicCheck_0:
        MOVS     R4,R0
        BNE.N    ??endNodeListPeriodicCheck_1
//  148 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock8
//  149 
//  150 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function endNodeListPrint
        THUMB
//  151 void endNodeListPrint(void)
//  152 {
endNodeListPrint:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  153 	NODE_INFO *pnode = NULL;
//  154 
//  155 	for(pnode = endNodeListHead(); pnode != NULL; pnode = endNodeListNext(pnode)) 
        LDR.N    R0,??DataTable15_2
          CFI FunCall list_head
        BL       list_head
        ADR.W    R5,?_6
        ADR.W    R6,?_5
        ADR.W    R7,?_4
        ADR.W    R8,?_3
        MOVS     R4,R0
        B.N      ??endNodeListPrint_0
//  156 	{
//  157 		PRINTF("nodesta = %d\n", pnode->nodeNetState);
??endNodeListPrint_1:
        LDRB     R1,[R4, #+4]
        MOV      R0,R8
          CFI FunCall xprintf
        BL       xprintf
//  158 		PRINTF("rev time = %d\n", pnode->lastRevPacketTime);
        LDR      R1,[R4, #+12]
        MOV      R0,R7
          CFI FunCall xprintf
        BL       xprintf
//  159 		MEM_DUMP(0, "NMAC", pnode->ubaHWGGMacAddr, HWGG_NODE_MAC_LEN);
        MOVS     R3,#+4
        ADDS     R2,R4,#+5
        MOV      R1,R6
        MOVS     R0,#+0
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  160 		PRINTF("----------------------\n");
        MOV      R0,R5
          CFI FunCall xprintf
        BL       xprintf
//  161 	}	
        MOV      R0,R4
          CFI FunCall list_item_next
        BL       list_item_next
        MOVS     R4,R0
??endNodeListPrint_0:
        BNE.N    ??endNodeListPrint_1
//  162 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC8      "mac"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     nodes

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     nodes+0x10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_1:
        DC8 "the node is in list\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_2:
        DC8 "no space for node\015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_3:
        DC8 "nodesta = %d\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_4:
        DC8 "rev time = %d\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_5:
        DC8 "NMAC"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_6:
        DC8 "----------------------\012"

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
        DC8 "mac"

        END
//  163 
//  164 
//  165 
//  166 
//  167 
//  168 
//  169 
//  170 
//  171 
// 
// 3 400 bytes in section .bss
//    24 bytes in section .data
//     4 bytes in section .rodata
//   516 bytes in section .text
// 
//   516 bytes of CODE  memory
//     4 bytes of CONST memory
// 3 424 bytes of DATA  memory
//
//Errors: none
//Warnings: 3
