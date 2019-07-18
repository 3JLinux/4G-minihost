///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:53
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-addrmap.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-addrmap.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\ip64-addrmap.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN list_add
        EXTERN list_head
        EXTERN list_init
        EXTERN list_item_next
        EXTERN list_remove
        EXTERN memb_alloc
        EXTERN memb_free
        EXTERN memb_init
        EXTERN memcmp
        EXTERN random_rand
        EXTERN timer_expired
        EXTERN timer_remaining
        EXTERN timer_set

        PUBLIC ip64_addrmap_create
        PUBLIC ip64_addrmap_init
        PUBLIC ip64_addrmap_list
        PUBLIC ip64_addrmap_lookup
        PUBLIC ip64_addrmap_lookup_port
        PUBLIC ip64_addrmap_set_lifetime
        PUBLIC ip64_addrmap_set_recycleble
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\ip64\ip64-addrmap.c
//    1 /*
//    2  * Copyright (c) 2012, Thingsquare, http://www.thingsquare.com/.
//    3  * All rights reserved.
//    4  *
//    5  * Redistribution and use in source and binary forms, with or without
//    6  * modification, are permitted provided that the following conditions
//    7  * are met:
//    8  * 1. Redistributions of source code must retain the above copyright
//    9  *    notice, this list of conditions and the following disclaimer.
//   10  * 2. Redistributions in binary form must reproduce the above copyright
//   11  *    notice, this list of conditions and the following disclaimer in the
//   12  *    documentation and/or other materials provided with the distribution.
//   13  * 3. Neither the name of the copyright holder nor the names of its
//   14  *    contributors may be used to endorse or promote products derived
//   15  *    from this software without specific prior written permission.
//   16  *
//   17  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//   18  * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//   19  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
//   20  * FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
//   21  * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
//   22  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//   23  * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//   24  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   25  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
//   26  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//   27  * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
//   28  * OF THE POSSIBILITY OF SUCH DAMAGE.
//   29  *
//   30  */
//   31 #include "ip64-addrmap.h"
//   32 
//   33 #include "lib/memb.h"
//   34 #include "lib/list.h"
//   35 
//   36 #include "ip64-conf.h"
//   37 
//   38 #include "lib/random.h"
//   39 
//   40 #include <string.h>
//   41 
//   42 #ifdef IP64_ADDRMAP_CONF_ENTRIES
//   43 #define NUM_ENTRIES IP64_ADDRMAP_CONF_ENTRIES
//   44 #else /* IP64_ADDRMAP_CONF_ENTRIES */
//   45 #define NUM_ENTRIES 32
//   46 #endif /* IP64_ADDRMAP_CONF_ENTRIES */
//   47 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   48 MEMB(entrymemb, struct ip64_addrmap_entry, NUM_ENTRIES);
entrymemb_memb_count:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct ip64_addrmap_entry entrymemb_memb_mem[32]
entrymemb_memb_mem:
        DS8 1280

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   49 LIST(entrylist);
//   50 
//   51 #define FIRST_MAPPED_PORT 10000
//   52 #define LAST_MAPPED_PORT  20000
//   53 static uint16_t mapped_port = FIRST_MAPPED_PORT;
mapped_port:
        DATA
        DC16 10000
        DC8 0, 0
        DC16 40, 32
        DC32 entrymemb_memb_count, entrymemb_memb_mem
entrylist_list:
        DC32 0H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 entrylist_list
//   54 
//   55 #define DEBUG 0
//   56 
//   57 #if DEBUG
//   58 #include "sysprintf.h"
//   59 #else
//   60 #define PRINTF(...)
//   61 #endif
//   62 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ip64_addrmap_list
        THUMB
//   63 struct ip64_addrmap_entry *
//   64 ip64_addrmap_list(void)
//   65 {
//   66   return list_head(entrylist);
ip64_addrmap_list:
        LDR.N    R0,??DataTable5
          CFI FunCall list_head
        B.W      list_head
          CFI EndBlock cfiBlock0
//   67 }
//   68 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ip64_addrmap_init
        THUMB
//   69 void
//   70 ip64_addrmap_init(void)
//   71 {
ip64_addrmap_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   72   memb_init(&entrymemb);
        LDR.N    R4,??DataTable5_1
        ADDS     R0,R4,#+4
          CFI FunCall memb_init
        BL       memb_init
//   73   list_init(entrylist);
        ADD      R0,R4,#+16
          CFI FunCall list_init
        BL       list_init
//   74   mapped_port = FIRST_MAPPED_PORT;
        MOVW     R0,#+10000
        STRH     R0,[R4, #+0]
//   75 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   76 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function check_age
        THUMB
//   77 static void
//   78 check_age(void)
//   79 {
check_age:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//   80   struct ip64_addrmap_entry *m;
//   81 
//   82   /* Walk through the list of address mappings, throw away the ones
//   83      that are too old. */
//   84   m = list_head(entrylist);
        LDR.N    R4,??DataTable5_1
        B.N      ??check_age_0
//   85   while(m != NULL) {
//   86     if(timer_expired(&m->timer)) {
//   87       list_remove(entrylist, m);
??check_age_1:
        MOV      R1,R5
        ADD      R0,R4,#+16
          CFI FunCall list_remove
        BL       list_remove
//   88       memb_free(&entrymemb, m);
        MOV      R1,R5
        ADDS     R0,R4,#+4
          CFI FunCall memb_free
        BL       memb_free
//   89       m = list_head(entrylist);
??check_age_0:
        ADD      R0,R4,#+16
          CFI FunCall list_head
        BL       list_head
??check_age_2:
        MOVS     R5,R0
//   90     } else {
        BEQ.N    ??check_age_3
        ADDS     R0,R5,#+4
          CFI FunCall timer_expired
        BL       timer_expired
        CMP      R0,#+0
        BNE.N    ??check_age_1
//   91       m = list_item_next(m);
        MOV      R0,R5
          CFI FunCall list_item_next
        BL       list_item_next
        B.N      ??check_age_2
//   92     }
//   93   }
//   94 }
??check_age_3:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//   95 /*---------------------------------------------------------------------------*/
//   96 static int
//   97 recycle(void)
//   98 {
//   99   /* Find the oldest recyclable mapping and remove it. */
//  100   struct ip64_addrmap_entry *m, *oldest;
//  101 
//  102   /* Walk through the list of address mappings, throw away the ones
//  103      that are too old. */
//  104 
//  105   oldest = NULL;
//  106   for(m = list_head(entrylist);
//  107       m != NULL;
//  108       m = list_item_next(m)) {
//  109     if(m->flags & FLAGS_RECYCLABLE) {
//  110       if(oldest == NULL) {
//  111         oldest = m;
//  112       } else {
//  113         if(timer_remaining(&m->timer) <
//  114            timer_remaining(&oldest->timer)) {
//  115           oldest = m;
//  116         }
//  117       }
//  118     }
//  119   }
//  120 
//  121   /* If we found an oldest recyclable entry, remove it and return
//  122      non-zero. */
//  123   if(oldest != NULL) {
//  124     list_remove(entrylist, oldest);
//  125     memb_free(&entrymemb, oldest);
//  126     return 1;
//  127   }
//  128 
//  129   return 0;
//  130 }
//  131 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ip64_addrmap_lookup
        THUMB
//  132 struct ip64_addrmap_entry *
//  133 ip64_addrmap_lookup(const uip_ip6addr_t *ip6addr,
//  134 		    uint16_t ip6port,
//  135 		    const uip_ip4addr_t *ip4addr,
//  136 		    uint16_t ip4port,
//  137 		    uint8_t protocol)
//  138 {
ip64_addrmap_lookup:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOV      R5,R0
        MOV      R9,R1
        MOV      R7,R2
        MOV      R8,R3
//  139   struct ip64_addrmap_entry *m;
//  140 
//  141   PRINTF("lookup ip4port %d ip6port %d\n", uip_htons(ip4port),
//  142 	 uip_htons(ip6port));
//  143   check_age();
          CFI FunCall check_age
        BL       check_age
//  144   for(m = list_head(entrylist); m != NULL; m = list_item_next(m)) {
        LDR.N    R0,??DataTable5
          CFI FunCall list_head
        BL       list_head
        LDR      R4,[SP, #+32]
        MOV      R6,R0
        B.N      ??ip64_addrmap_lookup_0
??ip64_addrmap_lookup_1:
        MOV      R0,R6
          CFI FunCall list_item_next
        BL       list_item_next
        MOV      R6,R0
??ip64_addrmap_lookup_0:
        CBZ.N    R6,??ip64_addrmap_lookup_2
//  145     PRINTF("protocol %d %d, ip4port %d %d, ip6port %d %d, ip4 %d ip6 %d\n",
//  146 	   m->protocol, protocol,
//  147 	   m->ip4port, ip4port,
//  148 	   m->ip6port, ip6port,
//  149 	   uip_ip4addr_cmp(&m->ip4addr, ip4addr),
//  150 	   uip_ip6addr_cmp(&m->ip6addr, ip6addr));
//  151     if(m->protocol == protocol &&
//  152        m->ip4port == ip4port &&
//  153        m->ip6port == ip6port &&
//  154        uip_ip4addr_cmp(&m->ip4addr, ip4addr) &&
//  155        uip_ip6addr_cmp(&m->ip6addr, ip6addr)) {
        ADD      R0,R6,#+28
        LDRB     R1,[R0, #+10]
        CMP      R1,R4
        ITT      EQ 
        LDRHEQ   R1,[R0, #+8]
        CMPEQ    R1,R8
        BNE.N    ??ip64_addrmap_lookup_1
        LDRH     R1,[R0, #+6]
        CMP      R1,R9
        ITTT     EQ 
        LDRHEQ   R1,[R6, #+28]
        LDRHEQ   R2,[R7, #+0]
        CMPEQ    R1,R2
        ITTT     EQ 
        LDRHEQ   R0,[R0, #+2]
        LDRHEQ   R1,[R7, #+2]
        CMPEQ    R0,R1
        BNE.N    ??ip64_addrmap_lookup_1
        MOVS     R2,#+16
        MOV      R1,R5
        ADD      R0,R6,#+12
          CFI FunCall memcmp
        BL       memcmp
        CMP      R0,#+0
        BNE.N    ??ip64_addrmap_lookup_1
//  156       return m;
        MOV      R0,R6
        POP      {R1,R4-R9,PC}
//  157     }
//  158   }
//  159   return NULL;
??ip64_addrmap_lookup_2:
        MOVS     R0,#+0
        POP      {R1,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock3
//  160 }
//  161 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ip64_addrmap_lookup_port
        THUMB
//  162 struct ip64_addrmap_entry *
//  163 ip64_addrmap_lookup_port(uint16_t mapped_port, uint8_t protocol)
//  164 {
ip64_addrmap_lookup_port:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  165   struct ip64_addrmap_entry *m;
//  166 
//  167   check_age();
          CFI FunCall check_age
        BL       check_age
//  168   for(m = list_head(entrylist); m != NULL; m = list_item_next(m)) {
        LDR.N    R0,??DataTable5
          CFI FunCall list_head
        BL       list_head
        B.N      ??ip64_addrmap_lookup_port_0
??ip64_addrmap_lookup_port_1:
          CFI FunCall list_item_next
        BL       list_item_next
??ip64_addrmap_lookup_port_0:
        CBZ.N    R0,??ip64_addrmap_lookup_port_2
//  169     PRINTF("mapped port %d %d, protocol %d %d\n",
//  170 	   m->mapped_port, mapped_port,
//  171 	   m->protocol, protocol);
//  172     if(m->mapped_port == mapped_port &&
//  173        m->protocol == protocol) {
        LDRH     R1,[R0, #+32]
        CMP      R1,R4
        ITT      EQ 
        LDRBEQ   R1,[R0, #+38]
        CMPEQ    R1,R5
        BNE.N    ??ip64_addrmap_lookup_port_1
//  174       return m;
//  175     }
//  176   }
//  177   return NULL;
??ip64_addrmap_lookup_port_2:
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock4
//  178 }
//  179 /*---------------------------------------------------------------------------*/
//  180 static void
//  181 increase_mapped_port(void)
//  182 {
//  183   mapped_port = (random_rand() % (LAST_MAPPED_PORT - FIRST_MAPPED_PORT)) +
//  184     FIRST_MAPPED_PORT;
//  185 }
//  186 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function ip64_addrmap_create
        THUMB
//  187 struct ip64_addrmap_entry *
//  188 ip64_addrmap_create(const uip_ip6addr_t *ip6addr,
//  189 		    uint16_t ip6port,
//  190 		    const uip_ip4addr_t *ip4addr,
//  191 		    uint16_t ip4port,
//  192 		    uint8_t protocol)
//  193 {
ip64_addrmap_create:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOV      R8,R0
        MOV      R10,R1
        MOV      R6,R2
        MOV      R9,R3
//  194   struct ip64_addrmap_entry *m;
//  195 
//  196   check_age();
          CFI FunCall check_age
        BL       check_age
//  197   m = memb_alloc(&entrymemb);
        LDR.N    R4,??DataTable5_1
        ADDS     R0,R4,#+4
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R5,R0
//  198   if(m == NULL) {
        BNE.N    ??ip64_addrmap_create_0
//  199     /* We could not allocate an entry, try to recycle one and try to
//  200        allocate again. */
//  201     if(recycle()) {
        MOVS     R5,#+0
        ADD      R0,R4,#+16
          CFI FunCall list_head
        BL       list_head
        B.N      ??ip64_addrmap_create_1
??ip64_addrmap_create_2:
        ADDS     R0,R7,#+4
          CFI FunCall timer_remaining
        BL       timer_remaining
        MOV      R11,R0
        ADDS     R0,R5,#+4
          CFI FunCall timer_remaining
        BL       timer_remaining
        CMP      R11,R0
        BCS.N    ??ip64_addrmap_create_3
??ip64_addrmap_create_4:
        MOV      R5,R7
??ip64_addrmap_create_3:
        MOV      R0,R7
          CFI FunCall list_item_next
        BL       list_item_next
??ip64_addrmap_create_1:
        MOVS     R7,R0
        BEQ.N    ??ip64_addrmap_create_5
        LDRB     R0,[R7, #+39]
        LSLS     R0,R0,#+31
        BPL.N    ??ip64_addrmap_create_3
        CMP      R5,#+0
        BNE.N    ??ip64_addrmap_create_2
        B.N      ??ip64_addrmap_create_4
??ip64_addrmap_create_5:
        CMP      R5,#+0
        BEQ.N    ??ip64_addrmap_create_6
        MOV      R1,R5
        ADD      R0,R4,#+16
          CFI FunCall list_remove
        BL       list_remove
        MOV      R1,R5
        ADDS     R0,R4,#+4
          CFI FunCall memb_free
        BL       memb_free
//  202       m = memb_alloc(&entrymemb);
        ADDS     R0,R4,#+4
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOV      R5,R0
//  203     }
//  204   }
//  205   if(m != NULL) {
??ip64_addrmap_create_0:
        CMP      R5,#+0
        BEQ.N    ??ip64_addrmap_create_6
//  206     uip_ip4addr_copy(&m->ip4addr, ip4addr);
        LDR      R0,[R6, #+0]
        STR      R0,[R5, #+28]
//  207     m->ip4port = ip4port;
        ADD      R6,R5,#+32
//  208     uip_ip6addr_copy(&m->ip6addr, ip6addr);
        ADD      R0,R5,#+12
        STRH     R9,[R6, #+4]
        MOV      R1,R8
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
//  209     m->ip6port = ip6port;
        STRH     R10,[R6, #+2]
//  210     m->protocol = protocol;
//  211     m->flags = FLAGS_NONE;
//  212     timer_set(&m->timer, 0);
        MOVS     R1,#+0
        LDR      R0,[SP, #+40]
        STRB     R0,[R6, #+6]
        MOVS     R0,#+0
        STRB     R0,[R6, #+7]
        ADDS     R0,R5,#+4
          CFI FunCall timer_set
        BL       timer_set
//  213 
//  214     /* Pick a new, unused local port. First make sure that the
//  215        mapped_port number does not belong to any active connection. If
//  216        so, we keep increasing the mapped_port until we're free. */
//  217     {
//  218       struct ip64_addrmap_entry *n;
//  219       n = list_head(entrylist);
        B.N      ??ip64_addrmap_create_7
//  220       while(n != NULL) {
//  221 	if(n->mapped_port == mapped_port) {
//  222 	  increase_mapped_port();
??ip64_addrmap_create_8:
          CFI FunCall random_rand
        BL       random_rand
        MOVW     R1,#+10000
        MOV      R2,R1
        SDIV     R2,R0,R2
        MLS      R0,R1,R2,R0
        ADDS     R0,R1,R0
        STRH     R0,[R4, #+0]
//  223 	  n = list_head(entrylist);
??ip64_addrmap_create_7:
        ADD      R0,R4,#+16
          CFI FunCall list_head
        BL       list_head
//  224 	} else {
??ip64_addrmap_create_9:
        LDRH     R1,[R4, #+0]
        CBZ.N    R0,??ip64_addrmap_create_10
        LDRH     R0,[R0, #+32]
        CMP      R0,R1
        BEQ.N    ??ip64_addrmap_create_8
//  225 	  n = list_item_next(m);
        MOV      R0,R5
          CFI FunCall list_item_next
        BL       list_item_next
        B.N      ??ip64_addrmap_create_9
//  226 	}
//  227       }
//  228     }
//  229     m->mapped_port = mapped_port;
??ip64_addrmap_create_10:
        STRH     R1,[R5, #+32]
//  230     increase_mapped_port();
          CFI FunCall random_rand
        BL       random_rand
        MOVW     R1,#+10000
        MOV      R2,R1
        SDIV     R2,R0,R2
        MLS      R0,R1,R2,R0
        ADDS     R0,R1,R0
        STRH     R0,[R4, #+0]
//  231 
//  232     list_add(entrylist, m);
        MOV      R1,R5
        ADD      R0,R4,#+16
          CFI FunCall list_add
        BL       list_add
//  233     return m;
        MOV      R0,R5
        POP      {R1,R4-R11,PC}
//  234   }
//  235   return NULL;
??ip64_addrmap_create_6:
        MOVS     R0,#+0
        POP      {R1,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock5
//  236 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     mapped_port+0x10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     mapped_port
//  237 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ip64_addrmap_set_lifetime
        THUMB
//  238 void
//  239 ip64_addrmap_set_lifetime(struct ip64_addrmap_entry *e,
//  240                           clock_time_t time)
//  241 {
//  242   if(e != NULL) {
ip64_addrmap_set_lifetime:
        CMP      R0,#+0
        ITT      NE 
//  243     timer_set(&e->timer, time);
        ADDNE    R0,R0,#+4
          CFI FunCall timer_set
        BNE.W    timer_set
//  244   }
//  245 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  246 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ip64_addrmap_set_recycleble
          CFI NoCalls
        THUMB
//  247 void
//  248 ip64_addrmap_set_recycleble(struct ip64_addrmap_entry *e)
//  249 {
//  250   if(e != NULL) {
ip64_addrmap_set_recycleble:
        CBZ.N    R0,??ip64_addrmap_set_recycleble_0
//  251     e->flags |= FLAGS_RECYCLABLE;
        LDRB     R1,[R0, #+39]
        ORR      R1,R1,#0x1
        STRB     R1,[R0, #+39]
//  252   }
//  253 }
??ip64_addrmap_set_recycleble_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  254 /*---------------------------------------------------------------------------*/
// 
// 1 312 bytes in section .bss
//    24 bytes in section .data
//   526 bytes in section .text
// 
//   526 bytes of CODE memory
// 1 336 bytes of DATA memory
//
//Errors: none
//Warnings: 1
