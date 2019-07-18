///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:05
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\nbr-table.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\nbr-table.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\nbr-table.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr
        EXTERN linkaddr_cmp
        EXTERN linkaddr_copy
        EXTERN linkaddr_null
        EXTERN list_add
        EXTERN list_head
        EXTERN list_item_next
        EXTERN list_remove
        EXTERN memb_alloc

        PUBLIC nbr_table_add_lladdr
        PUBLIC nbr_table_get_from_lladdr
        PUBLIC nbr_table_get_lladdr
        PUBLIC nbr_table_head
        PUBLIC nbr_table_lock
        PUBLIC nbr_table_next
        PUBLIC nbr_table_register
        PUBLIC nbr_table_remove
        PUBLIC nbr_table_unlock
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\nbr-table.c
//    1 /*
//    2  * Copyright (c) 2013, Swedish Institute of Computer Science
//    3  * Copyright (c) 2010, Vrije Universiteit Brussel
//    4  * All rights reserved.
//    5  *
//    6  * Redistribution and use in source and binary forms, with or without
//    7  * modification, are permitted provided that the following conditions
//    8  * are met:
//    9  * 1. Redistributions of source code must retain the above copyright
//   10  *    notice, this list of conditions and the following disclaimer.
//   11  * 2. Redistributions in binary form must reproduce the above copyright
//   12  *    notice, this list of conditions and the following disclaimer in the
//   13  *    documentation and/or other materials provided with the distribution.
//   14  * 3. Neither the name of the Institute nor the names of its contributors
//   15  *    may be used to endorse or promote products derived from this software
//   16  *    without specific prior written permission.
//   17  *
//   18  * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
//   19  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   20  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   21  * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
//   22  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   23  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   24  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   25  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   26  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   27  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   28  * SUCH DAMAGE.
//   29  *
//   30  *
//   31  * Authors: Simon Duquennoy <simonduq@sics.se>
//   32  *          Joris Borms <joris.borms@vub.ac.be>
//   33  */
//   34 
//   35 #include "contiki.h"
//   36 
//   37 #include <stddef.h>
//   38 #include <string.h>
//   39 #include "lib/memb.h"
//   40 #include "lib/list.h"
//   41 #include "net/nbr-table.h"
//   42 
//   43 /* List of link-layer addresses of the neighbors, used as key in the tables */
//   44 typedef struct nbr_table_key {
//   45   struct nbr_table_key *next;
//   46   linkaddr_t lladdr;
//   47 } nbr_table_key_t;
//   48 
//   49 /* For each neighbor, a map of the tables that use the neighbor.
//   50  * As we are using uint8_t, we have a maximum of 8 tables in the system */
//   51 static uint8_t used_map[NBR_TABLE_MAX_NEIGHBORS];
//   52 /* For each neighbor, a map of the tables that lock the neighbor */
//   53 static uint8_t locked_map[NBR_TABLE_MAX_NEIGHBORS];
//   54 /* The maximum number of tables */
//   55 #define MAX_NUM_TABLES 8
//   56 /* A list of pointers to tables in use */
//   57 static struct nbr_table *all_tables[MAX_NUM_TABLES];
//   58 /* The current number of tables */
//   59 static unsigned num_tables;
//   60 
//   61 /* The neighbor address table */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   62 MEMB(neighbor_addr_mem, nbr_table_key_t, NBR_TABLE_MAX_NEIGHBORS);
neighbor_addr_mem_memb_count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute nbr_table_key_t neighbor_addr_mem_memb_mem[1]
neighbor_addr_mem_memb_mem:
        DS8 12

        SECTION `.data`:DATA:REORDER:NOROOT(2)
used_map:
        DATA
        DC8 0
        DC8 0
        DC8 0, 0
        DC16 12, 1
        DC32 neighbor_addr_mem_memb_count, neighbor_addr_mem_memb_mem
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0
//   63 LIST(nbr_table_keys);
nbr_table_keys_list:
        DC32 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 nbr_table_keys_list
//   64 
//   65 /*---------------------------------------------------------------------------*/
//   66 /* Get a key from a neighbor index */
//   67 static nbr_table_key_t *
//   68 key_from_index(int index)
//   69 {
//   70   return index != -1 ? &((nbr_table_key_t *)neighbor_addr_mem.mem)[index] : NULL;
//   71 }
//   72 /*---------------------------------------------------------------------------*/
//   73 /* Get an item from its neighbor index */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function item_from_index
          CFI NoCalls
        THUMB
//   74 static nbr_table_item_t *
//   75 item_from_index(nbr_table_t *table, int index)
//   76 {
//   77   return table != NULL && index != -1 ? (char *)table->data + index * table->item_size : NULL;
item_from_index:
        CMP      R0,#+0
        IT       NE 
        CMNNE    R1,#+1
        BEQ.N    ??item_from_index_0
        LDR      R2,[R0, #+12]
        LDR      R0,[R0, #+4]
        MLA      R0,R0,R1,R2
        BX       LR
??item_from_index_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   78 }
//   79 /*---------------------------------------------------------------------------*/
//   80 /* Get the neighbor index of an item */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function index_from_key
          CFI NoCalls
        THUMB
//   81 static int
//   82 index_from_key(nbr_table_key_t *key)
//   83 {
//   84   return key != NULL ? key - (nbr_table_key_t *)neighbor_addr_mem.mem : -1;
index_from_key:
        CBZ.N    R0,??index_from_key_0
        LDR.N    R1,??DataTable9
        LDR      R1,[R1, #+12]
        SUBS     R0,R0,R1
        MOVS     R1,#+12
        SDIV     R0,R0,R1
        BX       LR
??index_from_key_0:
        MOV      R0,#-1
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   85 }
//   86 /*---------------------------------------------------------------------------*/
//   87 /* Get the neighbor index of an item */
//   88 static int
//   89 index_from_item(nbr_table_t *table, const nbr_table_item_t *item)
//   90 {
//   91   return table != NULL && item != NULL ? ((int)((char *)item - (char *)table->data)) / table->item_size : -1;
//   92 }
//   93 /*---------------------------------------------------------------------------*/
//   94 /* Get an item from its key */
//   95 static nbr_table_item_t *
//   96 item_from_key(nbr_table_t *table, nbr_table_key_t *key)
//   97 {
//   98   return item_from_index(table, index_from_key(key));
//   99 }
//  100 /*---------------------------------------------------------------------------*/
//  101 /* Get the key af an item */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function key_from_item
          CFI NoCalls
        THUMB
//  102 static nbr_table_key_t *
//  103 key_from_item(nbr_table_t *table, const nbr_table_item_t *item)
//  104 {
//  105   return key_from_index(index_from_item(table, item));
key_from_item:
        CMP      R0,#+0
        IT       NE 
        CMPNE    R1,#+0
        BEQ.N    ??key_from_item_0
        LDR      R2,[R0, #+12]
        LDR      R0,[R0, #+4]
        SUBS     R1,R1,R2
        SDIV     R0,R1,R0
        CMN      R0,#+1
        BEQ.N    ??key_from_item_0
        LDR.N    R1,??DataTable9
        LDR      R1,[R1, #+12]
        ADD      R2,R0,R0, LSL #+1
        ADD      R0,R1,R2, LSL #+2
        BX       LR
??key_from_item_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  106 }
//  107 /*---------------------------------------------------------------------------*/
//  108 /* Get the index of a neighbor from its link-layer address */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function index_from_lladdr
        THUMB
//  109 static int
//  110 index_from_lladdr(const linkaddr_t *lladdr)
//  111 {
index_from_lladdr:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  112   nbr_table_key_t *key;
//  113   /* Allow lladdr-free insertion, useful e.g. for IPv6 ND.
//  114    * Only one such entry is possible at a time, indexed by linkaddr_null. */
//  115   if(lladdr == NULL) {
//  116     lladdr = &linkaddr_null;
//  117   }
//  118   key = list_head(nbr_table_keys);
        LDR.N    R5,??DataTable9
        IT       EQ 
        LDREQ.N  R4,??DataTable9_1
        ADD      R0,R5,#+52
          CFI FunCall list_head
        BL       list_head
        B.N      ??index_from_lladdr_0
//  119   while(key != NULL) {
//  120     if(lladdr && linkaddr_cmp(lladdr, &key->lladdr)) {
//  121       return index_from_key(key);
//  122     }
//  123     key = list_item_next(key);
??index_from_lladdr_1:
        MOV      R0,R6
          CFI FunCall list_item_next
        BL       list_item_next
??index_from_lladdr_0:
        MOVS     R6,R0
        BEQ.N    ??index_from_lladdr_2
        CMP      R4,#+0
        BEQ.N    ??index_from_lladdr_1
        ADDS     R1,R6,#+4
        MOV      R0,R4
          CFI FunCall linkaddr_cmp
        BL       linkaddr_cmp
        CMP      R0,#+0
        BEQ.N    ??index_from_lladdr_1
        LDR      R0,[R5, #+12]
        SUBS     R0,R6,R0
        MOVS     R1,#+12
        SDIV     R0,R0,R1
        POP      {R4-R6,PC}
//  124   }
//  125   return -1;
??index_from_lladdr_2:
        MOV      R0,#-1
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock3
//  126 }
//  127 /*---------------------------------------------------------------------------*/
//  128 /* Get bit from "used" or "locked" bitmap */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function nbr_get_bit
          CFI NoCalls
        THUMB
//  129 static int
//  130 nbr_get_bit(uint8_t *bitmap, nbr_table_t *table, nbr_table_item_t *item)
//  131 {
//  132   int item_index = index_from_item(table, item);
nbr_get_bit:
        CMP      R1,#+0
        IT       NE 
        CMPNE    R2,#+0
        BEQ.N    ??nbr_get_bit_0
        LDR      R3,[R1, #+12]
        SUBS     R2,R2,R3
        LDR      R3,[R1, #+4]
        SDIV     R2,R2,R3
        CMN      R2,#+1
        BEQ.N    ??nbr_get_bit_0
//  133   if(table != NULL && item_index != -1) {
//  134     return (bitmap[item_index] & (1 << table->index)) != 0;
        LDRB     R0,[R2, R0]
        LDR      R1,[R1, #+0]
        MOVS     R2,#+1
        LSL      R1,R2,R1
        ANDS     R1,R1,R0
        SUBS     R0,R1,#+1
        SBCS     R0,R0,R0
        MVNS     R0,R0
        LSRS     R0,R0,#+31
        BX       LR
//  135   } else {
//  136     return 0;
??nbr_get_bit_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  137   }
//  138   return 0;
//  139 }
//  140 /*---------------------------------------------------------------------------*/
//  141 /* Set bit in "used" or "locked" bitmap */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function nbr_set_bit
          CFI NoCalls
        THUMB
//  142 static int
//  143 nbr_set_bit(uint8_t *bitmap, nbr_table_t *table, nbr_table_item_t *item, int value)
//  144 {
nbr_set_bit:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  145   int item_index = index_from_item(table, item);
        CBNZ.N   R1,??nbr_set_bit_0
//  146   if(table != NULL && item_index != -1) {
//  147     if(value) {
//  148       bitmap[item_index] |= 1 << table->index;
//  149     } else {
//  150       bitmap[item_index] &= ~(1 << table->index);
//  151     }
//  152     return 1;
//  153   } else {
//  154     return 0;
??nbr_set_bit_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  155   }
??nbr_set_bit_0:
        CMP      R2,#+0
        BEQ.N    ??nbr_set_bit_1
        LDR      R4,[R1, #+12]
        SUBS     R2,R2,R4
        LDR      R4,[R1, #+4]
        SDIV     R2,R2,R4
        CMN      R2,#+1
        BEQ.N    ??nbr_set_bit_1
        LDR      R1,[R1, #+0]
        MOVS     R4,#+1
        LSL      R1,R4,R1
        LDRB     R4,[R2, R0]
        CMP      R3,#+0
        ITE      NE 
        ORRNE    R1,R1,R4
        BICEQ    R1,R4,R1
        STRB     R1,[R2, R0]
        MOVS     R0,#+1
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR
          CFI EndBlock cfiBlock5
//  156   return 0;
//  157 }
//  158 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function nbr_table_allocate
        THUMB
//  159 static nbr_table_key_t *
//  160 nbr_table_allocate(void)
//  161 {
nbr_table_allocate:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
//  162   nbr_table_key_t *key;
//  163   int least_used_count = 0;
//  164   nbr_table_key_t *least_used_key = NULL;
//  165 
//  166   key = memb_alloc(&neighbor_addr_mem);
        LDR.N    R5,??DataTable9
        MOVS     R6,#+0
        MOVS     R4,#+0
        ADDS     R0,R5,#+4
          CFI FunCall memb_alloc
        BL       memb_alloc
//  167   if(key != NULL) {
        CMP      R0,#+0
        BNE.N    ??nbr_table_allocate_0
//  168     return key;
//  169   } else { /* No more space, try to free a neighbor.
//  170             * The replacement policy is the following: remove neighbor that is:
//  171             * (1) not locked
//  172             * (2) used by fewest tables
//  173             * (3) oldest (the list is ordered by insertion time)
//  174             * */
//  175     /* Get item from first key */
//  176     key = list_head(nbr_table_keys);
        ADD      R0,R5,#+52
          CFI FunCall list_head
        BL       list_head
        B.N      ??nbr_table_allocate_1
//  177     while(key != NULL) {
//  178       int item_index = index_from_key(key);
//  179       int locked = locked_map[item_index];
//  180       /* Never delete a locked item */
//  181       if(!locked) {
//  182         int used = used_map[item_index];
//  183         int used_count = 0;
//  184         /* Count how many tables are using this item */
//  185         while(used != 0) {
//  186           if((used & 1) == 1) {
??nbr_table_allocate_2:
        LSLS     R3,R1,#+31
        IT       MI 
        ADDMI    R2,R2,#+1
//  187             used_count++;
//  188           }
//  189           used >>= 1;
        ASRS     R1,R1,#+1
//  190         }
??nbr_table_allocate_3:
        BNE.N    ??nbr_table_allocate_2
//  191         /* Find least used item */
//  192         if(least_used_key == NULL || used_count < least_used_count) {
        CBZ.N    R4,??nbr_table_allocate_4
        CMP      R2,R6
        BGE.N    ??nbr_table_allocate_5
//  193           least_used_key = key;
//  194           least_used_count = used_count;
??nbr_table_allocate_4:
        MOVS     R6,R2
        MOV      R4,R0
//  195           if(used_count == 0) { /* We won't find any least used item */
        BEQ.N    ??nbr_table_allocate_6
//  196             break;
//  197           }
//  198         }
//  199       }
//  200       key = list_item_next(key);
??nbr_table_allocate_5:
          CFI FunCall list_item_next
        BL       list_item_next
??nbr_table_allocate_1:
        CBZ.N    R0,??nbr_table_allocate_7
        LDR      R1,[R5, #+12]
        SUBS     R1,R0,R1
        MOVS     R2,#+12
        SDIV     R1,R1,R2
        ADDS     R2,R1,R5
        LDRB     R2,[R2, #+1]
        CMP      R2,#+0
        BNE.N    ??nbr_table_allocate_5
        LDRB     R1,[R1, R5]
        CMP      R1,#+0
        B.N      ??nbr_table_allocate_3
//  201     }
//  202     if(least_used_key == NULL) {
??nbr_table_allocate_7:
        CBZ.N    R4,??nbr_table_allocate_0
//  203       /* We haven't found any unlocked item, allocation fails */
//  204       return NULL;
//  205     } else {
//  206       /* Reuse least used item */
//  207       int i;
//  208       for(i = 0; i<MAX_NUM_TABLES; i++) {
??nbr_table_allocate_6:
        ADD      R6,R5,#+16
        MOVS     R7,#+8
//  209         if(all_tables[i] != NULL && all_tables[i]->callback != NULL) {
??nbr_table_allocate_8:
        LDR      R0,[R6, #+0]
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R0,[R0, #+8]
        CMPNE    R0,#+0
        BEQ.N    ??nbr_table_allocate_9
//  210           /* Call table callback for each table that uses this item */
//  211           nbr_table_item_t *removed_item = item_from_key(all_tables[i], least_used_key);
        MOV      R0,R4
          CFI FunCall index_from_key
        BL       index_from_key
        MOV      R1,R0
        LDR      R0,[R6, #+0]
          CFI FunCall item_from_index
        BL       item_from_index
//  212           if(nbr_get_bit(used_map, all_tables[i], removed_item) == 1) {
        LDR      R1,[R6, #+0]
        MOV      R8,R0
        MOV      R2,R8
        MOV      R0,R5
          CFI FunCall nbr_get_bit
        BL       nbr_get_bit
        CMP      R0,#+1
        BNE.N    ??nbr_table_allocate_9
//  213             all_tables[i]->callback(removed_item);
        LDR      R1,[R6, #+0]
        LDR      R1,[R1, #+8]
        MOV      R0,R8
          CFI FunCall
        BLX      R1
//  214           }
//  215         }
//  216       }
??nbr_table_allocate_9:
        ADDS     R6,R6,#+4
        SUBS     R7,R7,#+1
        BNE.N    ??nbr_table_allocate_8
        LDR      R0,[R5, #+12]
        SUBS     R0,R4,R0
        MOVS     R1,#+12
        SDIV     R0,R0,R1
        MOVS     R1,#+0
        STRB     R1,[R0, R5]
//  217       /* Empty used map */
//  218       used_map[index_from_key(least_used_key)] = 0;
//  219       /* Remove neighbor from list */
//  220       list_remove(nbr_table_keys, least_used_key);
        ADD      R0,R5,#+52
        MOV      R1,R4
          CFI FunCall list_remove
        BL       list_remove
//  221       /* Return associated key */
//  222       return least_used_key;
        MOV      R0,R4
??nbr_table_allocate_0:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock6
//  223     }
//  224   }
//  225 }
//  226 /*---------------------------------------------------------------------------*/
//  227 /* Register a new neighbor table. To be used at initialization by modules
//  228  * using a neighbor table */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function nbr_table_register
          CFI NoCalls
        THUMB
//  229 int
//  230 nbr_table_register(nbr_table_t *table, nbr_table_callback *callback)
//  231 {
//  232   if(num_tables < MAX_NUM_TABLES) {
nbr_table_register:
        LDR.N    R2,??DataTable9
        LDR      R3,[R2, #+48]
        CMP      R3,#+8
        BCS.N    ??nbr_table_register_0
//  233     table->index = num_tables++;
        STR      R3,[R0, #+0]
        ADDS     R3,R3,#+1
        STR      R3,[R2, #+48]
//  234     table->callback = callback;
        STR      R1,[R0, #+8]
//  235     all_tables[table->index] = table;
        LDR      R1,[R0, #+0]
        ADD      R1,R2,R1, LSL #+2
        STR      R0,[R1, #+16]
//  236     return 1;
        MOVS     R0,#+1
        BX       LR
//  237   } else {
//  238     /* Maximum number of tables exceeded */
//  239     return 0;
??nbr_table_register_0:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  240   }
//  241 }
//  242 /*---------------------------------------------------------------------------*/
//  243 /* Returns the first item of the current table */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function nbr_table_head
          CFI FunCall nbr_table_next
        THUMB
//  244 nbr_table_item_t *
//  245 nbr_table_head(nbr_table_t *table)
//  246 {
nbr_table_head:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
//  247   /* Get item from first key */
//  248   nbr_table_item_t *item = item_from_key(table, list_head(nbr_table_keys));
        LDR.N    R5,??DataTable9
        ADD      R0,R5,#+52
          CFI FunCall list_head
        BL       list_head
          CFI FunCall index_from_key
        BL       index_from_key
        MOV      R1,R0
        MOV      R0,R4
          CFI FunCall item_from_index
        BL       item_from_index
        MOV      R6,R0
//  249   /* Item is the first neighbor, now check is it is in the current table */
//  250   if(nbr_get_bit(used_map, table, item)) {
        MOV      R2,R6
        MOV      R1,R4
        MOV      R0,R5
          CFI FunCall nbr_get_bit
        BL       nbr_get_bit
        CBZ.N    R0,??nbr_table_head_0
//  251     return item;
        MOV      R0,R6
        POP      {R4-R6,PC}
//  252   } else {
//  253     return nbr_table_next(table, item);
??nbr_table_head_0:
        MOV      R1,R6
        MOV      R0,R4
        POP      {R4-R6,LR}
          CFI EndBlock cfiBlock8
        REQUIRE nbr_table_next
        ;; // Fall through to label nbr_table_next
//  254   }
//  255 }
//  256 /*---------------------------------------------------------------------------*/
//  257 /* Iterates over the current table */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function nbr_table_next
        THUMB
//  258 nbr_table_item_t *
//  259 nbr_table_next(nbr_table_t *table, nbr_table_item_t *item)
//  260 {
nbr_table_next:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R7,R1
        LDR.N    R5,??DataTable9
        MOV      R6,#-1
//  261   do {
//  262     void *key = key_from_item(table, item);
??nbr_table_next_0:
        CMP      R4,#+0
        IT       NE 
        CMPNE    R7,#+0
        BEQ.N    ??nbr_table_next_1
        LDR      R0,[R4, #+12]
        LDR      R1,[R4, #+4]
        SUBS     R0,R7,R0
        SDIV     R0,R0,R1
        CMN      R0,#+1
        BEQ.N    ??nbr_table_next_1
        LDR      R1,[R5, #+12]
        ADD      R2,R0,R0, LSL #+1
        ADD      R0,R1,R2, LSL #+2
        B.N      ??nbr_table_next_2
??nbr_table_next_1:
        MOVS     R0,#+0
//  263     key = list_item_next(key);
??nbr_table_next_2:
          CFI FunCall list_item_next
        BL       list_item_next
//  264     /* Loop until the next item is in the current table */
//  265     item = item_from_key(table, key);
        CBZ.N    R0,??nbr_table_next_3
        LDR      R1,[R5, #+12]
        SUBS     R0,R0,R1
        MOVS     R1,#+12
        SDIV     R1,R0,R1
        B.N      ??nbr_table_next_4
??nbr_table_next_3:
        MOV      R1,R6
??nbr_table_next_4:
        MOV      R0,R4
          CFI FunCall item_from_index
        BL       item_from_index
        MOVS     R7,R0
//  266   } while(item && !nbr_get_bit(used_map, table, item));
        BEQ.N    ??nbr_table_next_5
        MOV      R2,R7
        MOV      R1,R4
        MOV      R0,R5
          CFI FunCall nbr_get_bit
        BL       nbr_get_bit
        CMP      R0,#+0
        BEQ.N    ??nbr_table_next_0
//  267   return item;
??nbr_table_next_5:
        MOV      R0,R7
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock9
//  268 }
//  269 /*---------------------------------------------------------------------------*/
//  270 /* Add a neighbor indexed with its link-layer address */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function nbr_table_add_lladdr
        THUMB
//  271 nbr_table_item_t *
//  272 nbr_table_add_lladdr(nbr_table_t *table, const linkaddr_t *lladdr)
//  273 {
nbr_table_add_lladdr:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R5,R1
        MOV      R4,R0
//  274   int index;
//  275   nbr_table_item_t *item;
//  276   nbr_table_key_t *key;
//  277 
//  278   /* Allow lladdr-free insertion, useful e.g. for IPv6 ND.
//  279    * Only one such entry is possible at a time, indexed by linkaddr_null. */
//  280   if(lladdr == NULL) {
        IT       EQ 
        LDREQ.N  R5,??DataTable9_1
//  281     lladdr = &linkaddr_null;
//  282   }
//  283 
//  284   if((index = index_from_lladdr(lladdr)) == -1) {
        MOV      R0,R5
          CFI FunCall index_from_lladdr
        BL       index_from_lladdr
        MOV      R6,R0
        CMN      R6,#+1
        BNE.N    ??nbr_table_add_lladdr_0
//  285      /* Neighbor not yet in table, let's try to allocate one */
//  286     key = nbr_table_allocate();
          CFI FunCall nbr_table_allocate
        BL       nbr_table_allocate
        MOVS     R7,R0
//  287 
//  288     /* No space available for new entry */
//  289     if(key == NULL) {
        BNE.N    ??nbr_table_add_lladdr_1
//  290       return NULL;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}
//  291     }
//  292 
//  293     /* Add neighbor to list */
//  294     list_add(nbr_table_keys, key);
??nbr_table_add_lladdr_1:
        LDR.N    R6,??DataTable9
        MOV      R1,R7
        ADD      R0,R6,#+52
          CFI FunCall list_add
        BL       list_add
//  295 
//  296     /* Get index from newly allocated neighbor */
//  297     index = index_from_key(key);
        LDR      R0,[R6, #+12]
        SUBS     R0,R7,R0
        MOVS     R1,#+12
        SDIV     R6,R0,R1
//  298 
//  299     /* Set link-layer address */
//  300     linkaddr_copy(&key->lladdr, lladdr);
        MOV      R1,R5
        ADDS     R0,R7,#+4
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  301   }
//  302 
//  303   /* Get item in the current table */
//  304   item = item_from_index(table, index);
??nbr_table_add_lladdr_0:
        MOV      R1,R6
        MOV      R0,R4
          CFI FunCall item_from_index
        BL       item_from_index
//  305 
//  306   /* Initialize item data and set "used" bit */
//  307   memset(item, 0, table->item_size);
        LDR      R1,[R4, #+4]
        MOV      R5,R0
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  308   nbr_set_bit(used_map, table, item, 1);
        MOVS     R3,#+1
        MOV      R2,R5
        MOV      R1,R4
        LDR.N    R0,??DataTable9
          CFI FunCall nbr_set_bit
        BL       nbr_set_bit
//  309 
//  310   return item;
        MOV      R0,R5
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock10
//  311 }
//  312 /*---------------------------------------------------------------------------*/
//  313 /* Get an item from its link-layer address */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function nbr_table_get_from_lladdr
        THUMB
//  314 void *
//  315 nbr_table_get_from_lladdr(nbr_table_t *table, const linkaddr_t *lladdr)
//  316 {
nbr_table_get_from_lladdr:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R0,R1
//  317   void *item = item_from_index(table, index_from_lladdr(lladdr));
          CFI FunCall index_from_lladdr
        BL       index_from_lladdr
        MOV      R1,R0
        MOV      R0,R4
          CFI FunCall item_from_index
        BL       item_from_index
        MOV      R5,R0
//  318   return nbr_get_bit(used_map, table, item) ? item : NULL;
        MOV      R2,R5
        MOV      R1,R4
        LDR.N    R0,??DataTable9
          CFI FunCall nbr_get_bit
        BL       nbr_get_bit
        CBNZ.N   R0,??nbr_table_get_from_lladdr_0
        MOVS     R5,#+0
??nbr_table_get_from_lladdr_0:
        MOV      R0,R5
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock11
//  319 }
//  320 /*---------------------------------------------------------------------------*/
//  321 /* Removes a neighbor from the current table (unset "used" bit) */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function nbr_table_remove
        THUMB
//  322 int
//  323 nbr_table_remove(nbr_table_t *table, void *item)
//  324 {
nbr_table_remove:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R5,R1
//  325   int ret = nbr_set_bit(used_map, table, item, 0);
        LDR.N    R6,??DataTable9
        MOVS     R3,#+0
        MOV      R2,R5
        MOV      R1,R4
        MOV      R0,R6
          CFI FunCall nbr_set_bit
        BL       nbr_set_bit
        MOV      R7,R0
//  326   nbr_set_bit(locked_map, table, item, 0);
        MOVS     R3,#+0
        MOV      R2,R5
        MOV      R1,R4
        ADDS     R0,R6,#+1
          CFI FunCall nbr_set_bit
        BL       nbr_set_bit
//  327   return ret;
        MOV      R0,R7
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock12
//  328 }
//  329 /*---------------------------------------------------------------------------*/
//  330 /* Lock a neighbor for the current table (set "locked" bit) */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function nbr_table_lock
          CFI NoCalls
        THUMB
//  331 int
//  332 nbr_table_lock(nbr_table_t *table, void *item)
//  333 {
//  334   return nbr_set_bit(locked_map, table, item, 1);
nbr_table_lock:
        MOV      R2,R1
        MOV      R1,R0
        MOVS     R3,#+1
        B.N      ?Subroutine0
          CFI EndBlock cfiBlock13
//  335 }
//  336 /*---------------------------------------------------------------------------*/
//  337 /* Release the lock on a neighbor for the current table (unset "locked" bit) */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function nbr_table_unlock
          CFI NoCalls
        THUMB
//  338 int
//  339 nbr_table_unlock(nbr_table_t *table, void *item)
//  340 {
//  341   return nbr_set_bit(locked_map, table, item, 0);
nbr_table_unlock:
        MOV      R2,R1
        MOV      R1,R0
        MOVS     R3,#+0
          CFI EndBlock cfiBlock14
        REQUIRE ?Subroutine0
        ;; // Fall through to label ?Subroutine0
//  342 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI NoFunction
        THUMB
?Subroutine0:
        LDR.N    R0,??DataTable9_2
          CFI FunCall nbr_table_lock nbr_set_bit
          CFI FunCall nbr_table_unlock nbr_set_bit
        B.N      nbr_set_bit
          CFI EndBlock cfiBlock15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     used_map

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     linkaddr_null

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     used_map+0x1
//  343 /*---------------------------------------------------------------------------*/
//  344 /* Get link-layer address of an item */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function nbr_table_get_lladdr
        THUMB
//  345 linkaddr_t *
//  346 nbr_table_get_lladdr(nbr_table_t *table, const void *item)
//  347 {
nbr_table_get_lladdr:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  348   nbr_table_key_t *key = key_from_item(table, item);
          CFI FunCall key_from_item
        BL       key_from_item
//  349   return key != NULL ? &key->lladdr : NULL;
        CBZ.N    R0,??nbr_table_get_lladdr_0
        ADDS     R0,R0,#+4
??nbr_table_get_lladdr_0:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock16
//  350 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  13 bytes in section .bss
//  60 bytes in section .data
// 834 bytes in section .text
// 
// 834 bytes of CODE memory
//  73 bytes of DATA memory
//
//Errors: none
//Warnings: 3
