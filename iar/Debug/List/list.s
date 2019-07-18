///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:02
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\list.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\list.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\list.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC list_add
        PUBLIC list_chop
        PUBLIC list_copy
        PUBLIC list_head
        PUBLIC list_init
        PUBLIC list_insert
        PUBLIC list_item_next
        PUBLIC list_length
        PUBLIC list_pop
        PUBLIC list_push
        PUBLIC list_remove
        PUBLIC list_tail
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\lib\list.c
//    1 /*
//    2  * Copyright (c) 2004, Swedish Institute of Computer Science.
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
//   13  * 3. Neither the name of the Institute nor the names of its contributors
//   14  *    may be used to endorse or promote products derived from this software
//   15  *    without specific prior written permission.
//   16  *
//   17  * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
//   18  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   19  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   20  * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
//   21  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   22  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   23  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   24  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   25  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   26  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   27  * SUCH DAMAGE.
//   28  *
//   29  * This file is part of the Contiki operating system.
//   30  *
//   31  * Author: Adam Dunkels <adam@sics.se>
//   32  *
//   33  */
//   34 
//   35 /**
//   36  * \file
//   37  * Linked list library implementation.
//   38  *
//   39  * \author Adam Dunkels <adam@sics.se>
//   40  *
//   41  */
//   42 
//   43 /**
//   44  * \addtogroup list
//   45  * @{
//   46  */
//   47 
//   48 #include "lib/list.h"
//   49 
//   50 #define NULL 0
//   51 
//   52 struct list {
//   53   struct list *next;
//   54 };
//   55 
//   56 /*---------------------------------------------------------------------------*/
//   57 /**
//   58  * Initialize a list.
//   59  *
//   60  * This function initalizes a list. The list will be empty after this
//   61  * function has been called.
//   62  *
//   63  * \param list The list to be initialized.
//   64  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function list_init
          CFI NoCalls
        THUMB
//   65 void
//   66 list_init(list_t list)
//   67 {
//   68   *list = NULL;
list_init:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   69 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   70 /*---------------------------------------------------------------------------*/
//   71 /**
//   72  * Get a pointer to the first element of a list.
//   73  *
//   74  * This function returns a pointer to the first element of the
//   75  * list. The element will \b not be removed from the list.
//   76  *
//   77  * \param list The list.
//   78  * \return A pointer to the first element on the list.
//   79  *
//   80  * \sa list_tail()
//   81  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function list_head
          CFI NoCalls
        THUMB
//   82 void *
//   83 list_head(list_t list)
//   84 {
//   85   return *list;
list_head:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   86 }
//   87 /*---------------------------------------------------------------------------*/
//   88 /**
//   89  * Duplicate a list.
//   90  *
//   91  * This function duplicates a list by copying the list reference, but
//   92  * not the elements.
//   93  *
//   94  * \note This function does \b not copy the elements of the list, but
//   95  * merely duplicates the pointer to the first element of the list.
//   96  *
//   97  * \param dest The destination list.
//   98  * \param src The source list.
//   99  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function list_copy
          CFI NoCalls
        THUMB
//  100 void
//  101 list_copy(list_t dest, list_t src)
//  102 {
//  103   *dest = *src;
list_copy:
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  104 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  105 /*---------------------------------------------------------------------------*/
//  106 /**
//  107  * Get the tail of a list.
//  108  *
//  109  * This function returns a pointer to the elements following the first
//  110  * element of a list. No elements are removed by this function.
//  111  *
//  112  * \param list The list
//  113  * \return A pointer to the element after the first element on the list.
//  114  *
//  115  * \sa list_head()
//  116  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function list_tail
          CFI NoCalls
        THUMB
//  117 void *
//  118 list_tail(list_t list)
//  119 {
//  120   struct list *l;
//  121   
//  122   if(*list == NULL) {
list_tail:
        LDR      R0,[R0, #+0]
        CBNZ.N   R0,??list_tail_0
//  123     return NULL;
        BX       LR
//  124   }
//  125   
//  126   for(l = *list; l->next != NULL; l = l->next);
??list_tail_1:
        MOV      R0,R1
??list_tail_0:
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BNE.N    ??list_tail_1
//  127   
//  128   return l;
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  129 }
//  130 /*---------------------------------------------------------------------------*/
//  131 /**
//  132  * Add an item at the end of a list.
//  133  *
//  134  * This function adds an item to the end of the list.
//  135  *
//  136  * \param list The list.
//  137  * \param item A pointer to the item to be added.
//  138  *
//  139  * \sa list_push()
//  140  *
//  141  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function list_add
        THUMB
//  142 void
//  143 list_add(list_t list, void *item)
//  144 {
list_add:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R1
//  145   struct list *l;
//  146 
//  147   /* Make sure not to add the same element twice */
//  148   list_remove(list, item);
          CFI FunCall list_remove
        BL       list_remove
//  149 
//  150   ((struct list *)item)->next = NULL;
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//  151   
//  152   l = list_tail(list);
        LDR      R0,[R4, #+0]
        CBZ.N    R0,??list_add_0
        B.N      ??list_add_1
??list_add_2:
        MOV      R0,R1
??list_add_1:
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BNE.N    ??list_add_2
//  153 
//  154   if(l == NULL) {
        CBNZ.N   R0,??list_add_3
//  155     *list = item;
??list_add_0:
        STR      R5,[R4, #+0]
        POP      {R0,R4,R5,PC}
//  156   } else {
//  157     l->next = item;
??list_add_3:
        STR      R5,[R0, #+0]
//  158   }
//  159 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock4
//  160 /*---------------------------------------------------------------------------*/
//  161 /**
//  162  * Add an item to the start of the list.
//  163  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function list_push
          CFI NoCalls
        THUMB
//  164 void
//  165 list_push(list_t list, void *item)
//  166 {
//  167   /*  struct list *l;*/
//  168 
//  169   /* Make sure not to add the same element twice */
//  170   list_remove(list, item);
list_push:
        LDR      R2,[R0, #+0]
        CBZ.N    R2,??list_push_0
        MOVS     R3,#+0
??list_push_1:
        CMP      R2,R1
        BEQ.N    ??list_push_2
        MOV      R3,R2
        LDR      R2,[R2, #+0]
        CMP      R2,#+0
        BNE.N    ??list_push_1
        B.N      ??list_push_0
??list_push_2:
        LDR      R12,[R2, #+0]
        CMP      R3,#+0
        ITE      EQ 
        STREQ    R12,[R0, #+0]
        STRNE    R12,[R3, #+0]
        MOVS     R3,#+0
        STR      R3,[R2, #+0]
//  171 
//  172   ((struct list *)item)->next = *list;
??list_push_0:
        LDR      R2,[R0, #+0]
        STR      R2,[R1, #+0]
//  173   *list = item;
        STR      R1,[R0, #+0]
//  174 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  175 /*---------------------------------------------------------------------------*/
//  176 /**
//  177  * Remove the last object on the list.
//  178  *
//  179  * This function removes the last object on the list and returns it.
//  180  *
//  181  * \param list The list
//  182  * \return The removed object
//  183  *
//  184  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function list_chop
          CFI NoCalls
        THUMB
//  185 void *
//  186 list_chop(list_t list)
//  187 {
//  188   struct list *l, *r;
//  189   
//  190   if(*list == NULL) {
list_chop:
        LDR      R1,[R0, #+0]
        CBNZ.N   R1,??list_chop_0
//  191     return NULL;
        MOVS     R0,#+0
        BX       LR
//  192   }
//  193   if(((struct list *)*list)->next == NULL) {
??list_chop_0:
        LDR      R2,[R1, #+0]
        CBNZ.N   R2,??list_chop_1
//  194     l = *list;
//  195     *list = NULL;
        STR      R2,[R0, #+0]
//  196     return l;
        MOV      R0,R1
        BX       LR
//  197   }
//  198   
//  199   for(l = *list; l->next->next != NULL; l = l->next);
??list_chop_2:
        MOV      R1,R0
??list_chop_1:
        LDR      R0,[R1, #+0]
        LDR      R2,[R0, #+0]
        CMP      R2,#+0
        BNE.N    ??list_chop_2
//  200 
//  201   r = l->next;
//  202   l->next = NULL;
        STR      R2,[R1, #+0]
//  203   
//  204   return r;
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  205 }
//  206 /*---------------------------------------------------------------------------*/
//  207 /**
//  208  * Remove the first object on a list.
//  209  *
//  210  * This function removes the first object on the list and returns a
//  211  * pointer to it.
//  212  *
//  213  * \param list The list.
//  214  * \return Pointer to the removed element of list.
//  215  */
//  216 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function list_pop
          CFI NoCalls
        THUMB
//  217 void *
//  218 list_pop(list_t list)
//  219 {
//  220   struct list *l;
//  221   l = *list;
list_pop:
        LDR      R2,[R0, #+0]
        MOVS     R1,R2
//  222   if(*list != NULL) {
        ITT      NE 
        LDRNE    R2,[R2, #+0]
        STRNE    R2,[R0, #+0]
//  223     *list = ((struct list *)*list)->next;
//  224   }
//  225 
//  226   return l;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  227 }
//  228 /*---------------------------------------------------------------------------*/
//  229 /**
//  230  * Remove a specific element from a list.
//  231  *
//  232  * This function removes a specified element from the list.
//  233  *
//  234  * \param list The list.
//  235  * \param item The item that is to be removed from the list.
//  236  *
//  237  */
//  238 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function list_remove
          CFI NoCalls
        THUMB
//  239 void
//  240 list_remove(list_t list, void *item)
//  241 {
//  242   struct list *l, *r;
//  243   
//  244   if(*list == NULL) {
list_remove:
        LDR      R2,[R0, #+0]
        CBZ.N    R2,??list_remove_0
//  245     return;
//  246   }
//  247   
//  248   r = NULL;
        MOVS     R3,#+0
//  249   for(l = *list; l != NULL; l = l->next) {
//  250     if(l == item) {
??list_remove_1:
        CMP      R2,R1
        BNE.N    ??list_remove_2
//  251       if(r == NULL) {
        LDR      R1,[R2, #+0]
        CMP      R3,#+0
        ITE      EQ 
        STREQ    R1,[R0, #+0]
        STRNE    R1,[R3, #+0]
//  252 	/* First on list */
//  253 	*list = l->next;
//  254       } else {
//  255 	/* Not first on list */
//  256 	r->next = l->next;
//  257       }
//  258       l->next = NULL;
        MOVS     R0,#+0
        STR      R0,[R2, #+0]
//  259       return;
        BX       LR
//  260     }
//  261     r = l;
??list_remove_2:
        MOV      R3,R2
//  262   }
        LDR      R2,[R2, #+0]
        CMP      R2,#+0
        BNE.N    ??list_remove_1
//  263 }
??list_remove_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  264 /*---------------------------------------------------------------------------*/
//  265 /**
//  266  * Get the length of a list.
//  267  *
//  268  * This function counts the number of elements on a specified list.
//  269  *
//  270  * \param list The list.
//  271  * \return The length of the list.
//  272  */
//  273 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function list_length
          CFI NoCalls
        THUMB
//  274 int
//  275 list_length(list_t list)
//  276 {
//  277   struct list *l;
//  278   int n = 0;
list_length:
        MOVS     R1,#+0
//  279 
//  280   for(l = *list; l != NULL; l = l->next) {
        B.N      ??list_length_0
//  281     ++n;
??list_length_1:
        ADDS     R1,R1,#+1
//  282   }
??list_length_0:
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??list_length_1
//  283 
//  284   return n;
        MOV      R0,R1
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  285 }
//  286 /*---------------------------------------------------------------------------*/
//  287 /**
//  288  * \brief      Insert an item after a specified item on the list
//  289  * \param list The list
//  290  * \param previtem The item after which the new item should be inserted
//  291  * \param newitem  The new item that is to be inserted
//  292  * \author     Adam Dunkels
//  293  *
//  294  *             This function inserts an item right after a specified
//  295  *             item on the list. This function is useful when using
//  296  *             the list module to ordered lists.
//  297  *
//  298  *             If previtem is NULL, the new item is placed at the
//  299  *             start of the list.
//  300  *
//  301  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function list_insert
        THUMB
//  302 void
//  303 list_insert(list_t list, void *previtem, void *newitem)
//  304 {
list_insert:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R5,R2
//  305   if(previtem == NULL) {
        CBNZ.N   R1,??list_insert_0
//  306     list_push(list, newitem);
        MOV      R1,R5
          CFI FunCall list_remove
        BL       list_remove
        LDR      R0,[R4, #+0]
        STR      R0,[R5, #+0]
        STR      R5,[R4, #+0]
//  307   } else {
        POP      {R0,R4,R5,PC}
//  308   
//  309     ((struct list *)newitem)->next = ((struct list *)previtem)->next;
??list_insert_0:
        LDR      R0,[R1, #+0]
        STR      R0,[R5, #+0]
//  310     ((struct list *)previtem)->next = newitem;
        STR      R5,[R1, #+0]
//  311   }
//  312 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock10
//  313 /*---------------------------------------------------------------------------*/
//  314 /**
//  315  * \brief      Get the next item following this item
//  316  * \param item A list item
//  317  * \returns    A next item on the list
//  318  *
//  319  *             This function takes a list item and returns the next
//  320  *             item on the list, or NULL if there are no more items on
//  321  *             the list. This function is used when iterating through
//  322  *             lists.
//  323  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function list_item_next
          CFI NoCalls
        THUMB
//  324 void *
//  325 list_item_next(void *item)
//  326 {
//  327   return item == NULL? NULL: ((struct list *)item)->next;
list_item_next:
        CBZ.N    R0,??list_item_next_0
        LDR      R0,[R0, #+0]
??list_item_next_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  328 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  329 /*---------------------------------------------------------------------------*/
//  330 /** @} */
// 
// 252 bytes in section .text
// 
// 252 bytes of CODE memory
//
//Errors: none
//Warnings: 1
