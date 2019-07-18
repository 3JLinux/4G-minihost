///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:10
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\queuebuf.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\queuebuf.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\queuebuf.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy
        EXTERN memb_alloc
        EXTERN memb_free
        EXTERN memb_init
        EXTERN memb_inmemb
        EXTERN memb_numfree
        EXTERN packetbuf_attr_copyfrom
        EXTERN packetbuf_attr_copyto
        EXTERN packetbuf_clear
        EXTERN packetbuf_copyfrom
        EXTERN packetbuf_copyto
        EXTERN packetbuf_copyto_hdr
        EXTERN packetbuf_datalen
        EXTERN packetbuf_hdralloc
        EXTERN packetbuf_hdrptr
        EXTERN packetbuf_is_reference
        EXTERN packetbuf_reference_ptr

        PUBLIC queuebuf_addr
        PUBLIC queuebuf_attr
        PUBLIC queuebuf_datalen
        PUBLIC queuebuf_dataptr
        PUBLIC queuebuf_debug_print
        PUBLIC queuebuf_free
        PUBLIC queuebuf_init
        PUBLIC queuebuf_new_from_packetbuf
        PUBLIC queuebuf_numfree
        PUBLIC queuebuf_to_packetbuf
        PUBLIC queuebuf_update_attr_from_packetbuf
        PUBLIC queuebuf_update_from_packetbuf
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\queuebuf.c
//    1 /*
//    2  * Copyright (c) 2006, Swedish Institute of Computer Science.
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
//   31  */
//   32 
//   33 /**
//   34  * \file
//   35  *         Implementation of the Rime queue buffers
//   36  * \author
//   37  *         Adam Dunkels <adam@sics.se>
//   38  */
//   39 
//   40 /**
//   41  * \addtogroup rimequeuebuf
//   42  * @{
//   43  */
//   44 
//   45 #include "contiki-net.h"
//   46 #if WITH_SWAP
//   47 #include "cfs/cfs.h"
//   48 #endif
//   49 
//   50 #include <string.h> /* for memcpy() */
//   51 
//   52 #ifdef QUEUEBUF_CONF_REF_NUM
//   53 #define QUEUEBUF_REF_NUM QUEUEBUF_CONF_REF_NUM
//   54 #else
//   55 #define QUEUEBUF_REF_NUM 2
//   56 #endif
//   57 
//   58 /* Structure pointing to a buffer either stored
//   59    in RAM or swapped in CFS */
//   60 struct queuebuf {
//   61 #if QUEUEBUF_DEBUG
//   62   struct queuebuf *next;
//   63   const char *file;
//   64   int line;
//   65   clock_time_t time;
//   66 #endif /* QUEUEBUF_DEBUG */
//   67 #if WITH_SWAP
//   68   enum {IN_RAM, IN_CFS} location;
//   69   union {
//   70 #endif
//   71     struct queuebuf_data *ram_ptr;
//   72 #if WITH_SWAP
//   73     int swap_id;
//   74   };
//   75 #endif
//   76 };
//   77 
//   78 /* The actual queuebuf data */
//   79 struct queuebuf_data {
//   80   uint8_t data[PACKETBUF_SIZE];
//   81   uint16_t len;
//   82   struct packetbuf_attr attrs[PACKETBUF_NUM_ATTRS];
//   83   struct packetbuf_addr addrs[PACKETBUF_NUM_ADDRS];
//   84 };
//   85 
//   86 struct queuebuf_ref {
//   87   uint16_t len;
//   88   uint8_t *ref;
//   89   uint8_t hdr[PACKETBUF_HDR_SIZE];
//   90   uint8_t hdrlen;
//   91 };
//   92 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   93 MEMB(bufmem, struct queuebuf, QUEUEBUF_NUM);
bufmem_memb_count:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct queuebuf bufmem_memb_mem[6]
bufmem_memb_mem:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   94 MEMB(refbufmem, struct queuebuf_ref, QUEUEBUF_REF_NUM);
refbufmem_memb_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct queuebuf_ref refbufmem_memb_mem[2]
refbufmem_memb_mem:
        DS8 120

        SECTION `.data`:DATA:REORDER:NOROOT(2)
bufmem:
        DATA
        DC16 4, 6
        DC32 bufmem_memb_count, bufmem_memb_mem
        DC16 60, 2
        DC32 refbufmem_memb_count, refbufmem_memb_mem
        DC16 182, 6
        DC32 buframmem_memb_count, buframmem_memb_mem

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   95 MEMB(buframmem, struct queuebuf_data, QUEUEBUFRAM_NUM);
buframmem_memb_count:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct queuebuf_data buframmem_memb_mem[6]
buframmem_memb_mem:
        DS8 1092
//   96 
//   97 #if WITH_SWAP
//   98 
//   99 /* Swapping allows to store up to QUEUEBUF_NUM - QUEUEBUFRAM_NUM
//  100    queuebufs in CFS. The swap is made of several large CFS files.
//  101    Every buffer stored in CFS has a swap id, referring to a specific
//  102    offset in one of these files. */
//  103 #define NQBUF_FILES 4
//  104 #define NQBUF_PER_FILE 256
//  105 #define QBUF_FILE_SIZE (NQBUF_PER_FILE*sizeof(struct queuebuf_data))
//  106 #define NQBUF_ID (NQBUF_PER_FILE * NQBUF_FILES)
//  107 
//  108 struct qbuf_file {
//  109   int fd;
//  110   int usage;
//  111   int renewable;
//  112 };
//  113 
//  114 /* A statically allocated queuebuf used as a cache for swapped qbufs */
//  115 static struct queuebuf_data tmpdata;
//  116 /* A pointer to the qbuf associated to the data in tmpdata */
//  117 static struct queuebuf *tmpdata_qbuf = NULL;
//  118 /* The swap id counter */
//  119 static int next_swap_id = 0;
//  120 /* The swap files */
//  121 static struct qbuf_file qbuf_files[NQBUF_FILES];
//  122 /* The timer used to renew files during inactivity periods */
//  123 static struct ctimer renew_timer;
//  124 
//  125 #endif
//  126 
//  127 #if QUEUEBUF_DEBUG
//  128 #include "lib/list.h"
//  129 LIST(queuebuf_list);
//  130 #endif /* QUEUEBUF_DEBUG */
//  131 
//  132 #define DEBUG 0
//  133 #if DEBUG
//  134 #include <stdio.h>
//  135 #define PRINTF(...) printf(__VA_ARGS__)
//  136 #else
//  137 #define PRINTF(...)
//  138 #endif
//  139 
//  140 #ifdef QUEUEBUF_CONF_STATS
//  141 #define QUEUEBUF_STATS QUEUEBUF_CONF_STATS
//  142 #else
//  143 #define QUEUEBUF_STATS 0
//  144 #endif /* QUEUEBUF_CONF_STATS */
//  145 
//  146 #if QUEUEBUF_STATS
//  147 uint8_t queuebuf_len, queuebuf_ref_len, queuebuf_max_len;
//  148 #endif /* QUEUEBUF_STATS */
//  149 
//  150 #if WITH_SWAP
//  151 /*---------------------------------------------------------------------------*/
//  152 static void
//  153 qbuf_renew_file(int file)
//  154 {
//  155   int ret;
//  156   char name[2];
//  157   name[0] = 'a' + file;
//  158   name[1] = '\0';
//  159   if(qbuf_files[file].renewable == 1) {
//  160     PRINTF("qbuf_renew_file: removing file %d\n", file);
//  161     cfs_remove(name);
//  162   }
//  163   ret = cfs_open(name, CFS_READ | CFS_WRITE);
//  164   if(ret == -1) {
//  165     PRINTF("qbuf_renew_file: cfs open error\n");
//  166   }
//  167   qbuf_files[file].fd = ret;
//  168   qbuf_files[file].usage = 0;
//  169   qbuf_files[file].renewable = 0;
//  170 }
//  171 /*---------------------------------------------------------------------------*/
//  172 /* Renews every file with renewable flag set */
//  173 static void
//  174 qbuf_renew_all(void *unused)
//  175 {
//  176   int i;
//  177   for(i=0; i<NQBUF_FILES; i++) {
//  178     if(qbuf_files[i].renewable == 1) {
//  179       qbuf_renew_file(i);
//  180     }
//  181   }
//  182 }
//  183 /*---------------------------------------------------------------------------*/
//  184 /* Removes a queuebuf from its swap file */
//  185 static void
//  186 queuebuf_remove_from_file(int swap_id)
//  187 {
//  188   int fileid;
//  189   if(swap_id != -1) {
//  190     fileid = swap_id / NQBUF_PER_FILE;
//  191     qbuf_files[fileid].usage--;
//  192 
//  193     /* The file is full but doesn't contain any more queuebuf, mark it as renewable */
//  194     if(qbuf_files[fileid].usage == 0 && fileid != next_swap_id / NQBUF_PER_FILE) {
//  195       qbuf_files[fileid].renewable = 1;
//  196       /* This file is renewable, set a timer to renew files */
//  197       ctimer_set(&renew_timer, 0, qbuf_renew_all, NULL);
//  198     }
//  199 
//  200     if(tmpdata_qbuf->swap_id == swap_id) {
//  201       tmpdata_qbuf->swap_id = -1;
//  202     }
//  203   }
//  204 }
//  205 /*---------------------------------------------------------------------------*/
//  206 static int
//  207 get_new_swap_id(void)
//  208 {
//  209   int fileid;
//  210   int swap_id = next_swap_id;
//  211   fileid = swap_id / NQBUF_PER_FILE;
//  212   if(swap_id % NQBUF_PER_FILE == 0) { /* This is the first id in the file */
//  213     if(qbuf_files[fileid].renewable) {
//  214       qbuf_renew_file(fileid);
//  215     }
//  216     if(qbuf_files[fileid].usage>0) {
//  217       return -1;
//  218     }
//  219   }
//  220   qbuf_files[fileid].usage++;
//  221   next_swap_id = (next_swap_id+1) % NQBUF_ID;
//  222   return swap_id;
//  223 }
//  224 /*---------------------------------------------------------------------------*/
//  225 /* Flush tmpdata to CFS */
//  226 static int
//  227 queuebuf_flush_tmpdata(void)
//  228 {
//  229   int fileid, fd, ret;
//  230   cfs_offset_t offset;
//  231   if(tmpdata_qbuf) {
//  232     queuebuf_remove_from_file(tmpdata_qbuf->swap_id);
//  233     tmpdata_qbuf->swap_id = get_new_swap_id();
//  234     if(tmpdata_qbuf->swap_id == -1) {
//  235       return -1;
//  236     }
//  237     fileid = tmpdata_qbuf->swap_id / NQBUF_PER_FILE;
//  238     offset = (tmpdata_qbuf->swap_id % NQBUF_PER_FILE) * sizeof(struct queuebuf_data);
//  239     fd = qbuf_files[fileid].fd;
//  240     ret = cfs_seek(fd, offset, CFS_SEEK_SET);
//  241     if(ret == -1) {
//  242       PRINTF("queuebuf_flush_tmpdata: cfs seek error\n");
//  243       return -1;
//  244     }
//  245     ret = cfs_write(fd, &tmpdata, sizeof(struct queuebuf_data));
//  246     if(ret == -1) {
//  247       PRINTF("queuebuf_flush_tmpdata: cfs write error\n");
//  248       return -1;
//  249     }
//  250   }
//  251   return 0;
//  252 }
//  253 /*---------------------------------------------------------------------------*/
//  254 /* If the queuebuf is in CFS, load it to tmpdata */
//  255 static struct queuebuf_data *
//  256 queuebuf_load_to_ram(struct queuebuf *b)
//  257 {
//  258   int fileid, fd, ret;
//  259   cfs_offset_t offset;
//  260   if(b->location == IN_RAM) { /* the qbuf is loacted in RAM */
//  261     return b->ram_ptr;
//  262   } else { /* the qbuf is located in CFS */
//  263     if(tmpdata_qbuf && tmpdata_qbuf->swap_id == b->swap_id) { /* the qbuf is already in tmpdata */
//  264       return &tmpdata;
//  265     } else { /* the qbuf needs to be loaded from CFS */
//  266       tmpdata_qbuf = b;
//  267       /* read the qbuf from CFS */
//  268       fileid = b->swap_id / NQBUF_PER_FILE;
//  269       offset = (b->swap_id % NQBUF_PER_FILE) * sizeof(struct queuebuf_data);
//  270       fd = qbuf_files[fileid].fd;
//  271       ret = cfs_seek(fd, offset, CFS_SEEK_SET);
//  272       if(ret == -1) {
//  273         PRINTF("queuebuf_load_to_ram: cfs seek error\n");
//  274       }
//  275       ret = cfs_read(fd, &tmpdata, sizeof(struct queuebuf_data));
//  276       if(ret == -1) {
//  277         PRINTF("queuebuf_load_to_ram: cfs read error\n");
//  278       }
//  279       return &tmpdata;
//  280     }
//  281   }
//  282 }
//  283 #else /* WITH_SWAP */
//  284 /*---------------------------------------------------------------------------*/
//  285 static struct queuebuf_data *
//  286 queuebuf_load_to_ram(struct queuebuf *b)
//  287 {
//  288   return b->ram_ptr;
//  289 }
//  290 #endif /* WITH_SWAP */
//  291 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function queuebuf_init
        THUMB
//  292 void
//  293 queuebuf_init(void)
//  294 {
queuebuf_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  295 #if WITH_SWAP
//  296   int i;
//  297   for(i=0; i<NQBUF_FILES; i++) {
//  298     qbuf_files[i].renewable = 1;
//  299     qbuf_renew_file(i);
//  300   }
//  301 #endif
//  302   memb_init(&buframmem);
        LDR.N    R4,??DataTable5
        ADD      R0,R4,#+24
          CFI FunCall memb_init
        BL       memb_init
//  303   memb_init(&bufmem);
        MOV      R0,R4
          CFI FunCall memb_init
        BL       memb_init
//  304   memb_init(&refbufmem);
        ADD      R0,R4,#+12
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall memb_init
        B.W      memb_init
          CFI EndBlock cfiBlock0
//  305 #if QUEUEBUF_STATS
//  306   queuebuf_max_len = QUEUEBUF_NUM;
//  307 #endif /* QUEUEBUF_STATS */
//  308 }
//  309 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function queuebuf_numfree
        THUMB
//  310 int
//  311 queuebuf_numfree(void)
//  312 {
queuebuf_numfree:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  313   if(packetbuf_is_reference()) {
        LDR.N    R4,??DataTable5
          CFI FunCall packetbuf_is_reference
        BL       packetbuf_is_reference
        CMP      R0,#+0
        ITE      NE 
        ADDNE    R0,R4,#+12
        MOVEQ    R0,R4
//  314     return memb_numfree(&refbufmem);
//  315   } else {
//  316     return memb_numfree(&bufmem);
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall memb_numfree
        B.W      memb_numfree
          CFI EndBlock cfiBlock1
//  317   }
//  318 }
//  319 /*---------------------------------------------------------------------------*/
//  320 #if QUEUEBUF_DEBUG
//  321 struct queuebuf *
//  322 queuebuf_new_from_packetbuf_debug(const char *file, int line)
//  323 #else /* QUEUEBUF_DEBUG */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function queuebuf_new_from_packetbuf
        THUMB
//  324 struct queuebuf *
//  325 queuebuf_new_from_packetbuf(void)
//  326 #endif /* QUEUEBUF_DEBUG */
//  327 {
queuebuf_new_from_packetbuf:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  328   struct queuebuf *buf;
//  329   struct queuebuf_ref *rbuf;
//  330 
//  331   if(packetbuf_is_reference()) {
        LDR.N    R4,??DataTable5
          CFI FunCall packetbuf_is_reference
        BL       packetbuf_is_reference
        CBZ.N    R0,??queuebuf_new_from_packetbuf_0
//  332     rbuf = memb_alloc(&refbufmem);
        ADD      R0,R4,#+12
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R4,R0
//  333     if(rbuf != NULL) {
        BEQ.N    ??queuebuf_new_from_packetbuf_1
//  334 #if QUEUEBUF_STATS
//  335       ++queuebuf_ref_len;
//  336 #endif /* QUEUEBUF_STATS */
//  337       rbuf->len = packetbuf_datalen();
          CFI FunCall packetbuf_datalen
        BL       packetbuf_datalen
        STRH     R0,[R4, #+0]
//  338       rbuf->ref = packetbuf_reference_ptr();
          CFI FunCall packetbuf_reference_ptr
        BL       packetbuf_reference_ptr
        STR      R0,[R4, #+4]
//  339       rbuf->hdrlen = packetbuf_copyto_hdr(rbuf->hdr);
        ADD      R0,R4,#+8
          CFI FunCall packetbuf_copyto_hdr
        BL       packetbuf_copyto_hdr
        STRB     R0,[R4, #+56]
//  340     } else {
//  341       PRINTF("queuebuf_new_from_packetbuf: could not allocate a reference queuebuf\n");
//  342     }
//  343     return (struct queuebuf *)rbuf;
??queuebuf_new_from_packetbuf_1:
        MOV      R0,R4
        POP      {R4-R6,PC}
//  344   } else {
//  345     struct queuebuf_data *buframptr;
//  346     buf = memb_alloc(&bufmem);
??queuebuf_new_from_packetbuf_0:
        MOV      R0,R4
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R5,R0
//  347     if(buf != NULL) {
        BEQ.N    ??queuebuf_new_from_packetbuf_2
//  348 #if QUEUEBUF_DEBUG
//  349       list_add(queuebuf_list, buf);
//  350       buf->file = file;
//  351       buf->line = line;
//  352       buf->time = clock_time();
//  353 #endif /* QUEUEBUF_DEBUG */
//  354       buf->ram_ptr = memb_alloc(&buframmem);
        ADD      R0,R4,#+24
          CFI FunCall memb_alloc
        BL       memb_alloc
        MOVS     R6,R0
        STR      R6,[R5, #+0]
//  355 #if WITH_SWAP
//  356       /* If the allocation failed, store the qbuf in swap files */
//  357       if(buf->ram_ptr != NULL) {
//  358         buf->location = IN_RAM;
//  359         buframptr = buf->ram_ptr;
//  360       } else {
//  361         buf->location = IN_CFS;
//  362         buf->swap_id = -1;
//  363         tmpdata_qbuf = buf;
//  364         buframptr = &tmpdata;
//  365       }
//  366 #else
//  367       if(buf->ram_ptr == NULL) {
        BNE.N    ??queuebuf_new_from_packetbuf_3
//  368         PRINTF("queuebuf_new_from_packetbuf: could not queuebuf data\n");
//  369         memb_free(&bufmem, buf);
        MOV      R1,R5
        MOV      R0,R4
          CFI FunCall memb_free
        BL       memb_free
//  370         return NULL;
        MOVS     R0,#+0
        POP      {R4-R6,PC}
//  371       }
//  372       buframptr = buf->ram_ptr;
//  373 #endif
//  374 
//  375       buframptr->len = packetbuf_copyto(buframptr->data);
??queuebuf_new_from_packetbuf_3:
          CFI FunCall packetbuf_copyto
        BL       packetbuf_copyto
        STRH     R0,[R6, #+128]
//  376       packetbuf_attr_copyto(buframptr->attrs, buframptr->addrs);
        ADD      R1,R6,#+166
        ADD      R0,R6,#+130
          CFI FunCall packetbuf_attr_copyto
        BL       packetbuf_attr_copyto
//  377 
//  378 #if WITH_SWAP
//  379       if(buf->location == IN_CFS) {
//  380         if(queuebuf_flush_tmpdata() == -1) {
//  381           /* We were unable to write the data in the swap */
//  382           memb_free(&bufmem, buf);
//  383           return NULL;
//  384         }
//  385       }
//  386 #endif
//  387 
//  388 #if QUEUEBUF_STATS
//  389       ++queuebuf_len;
//  390       PRINTF("queuebuf len %d\n", queuebuf_len);
//  391       PRINTF("#A q=%d\n", queuebuf_len);
//  392       if(queuebuf_len == queuebuf_max_len + 1) {
//  393         queuebuf_free(buf);
//  394         queuebuf_len--;
//  395         return NULL;
//  396       }
//  397 #endif /* QUEUEBUF_STATS */
//  398 
//  399     } else {
//  400       PRINTF("queuebuf_new_from_packetbuf: could not allocate a queuebuf\n");
//  401     }
//  402     return buf;
??queuebuf_new_from_packetbuf_2:
        MOV      R0,R5
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//  403   }
//  404 }
//  405 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function queuebuf_update_attr_from_packetbuf
        THUMB
//  406 void
//  407 queuebuf_update_attr_from_packetbuf(struct queuebuf *buf)
//  408 {
//  409   struct queuebuf_data *buframptr = queuebuf_load_to_ram(buf);
queuebuf_update_attr_from_packetbuf:
        LDR      R0,[R0, #+0]
//  410   packetbuf_attr_copyto(buframptr->attrs, buframptr->addrs);
        ADD      R1,R0,#+166
        ADDS     R0,R0,#+130
          CFI FunCall packetbuf_attr_copyto
        B.W      packetbuf_attr_copyto
          CFI EndBlock cfiBlock3
//  411 #if WITH_SWAP
//  412   if(buf->location == IN_CFS) {
//  413     queuebuf_flush_tmpdata();
//  414   }
//  415 #endif
//  416 }
//  417 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function queuebuf_update_from_packetbuf
        THUMB
//  418 void
//  419 queuebuf_update_from_packetbuf(struct queuebuf *buf)
//  420 {
queuebuf_update_from_packetbuf:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  421   struct queuebuf_data *buframptr = queuebuf_load_to_ram(buf);
        LDR      R4,[R0, #+0]
//  422   packetbuf_attr_copyto(buframptr->attrs, buframptr->addrs);
        ADD      R1,R4,#+166
        ADD      R0,R4,#+130
          CFI FunCall packetbuf_attr_copyto
        BL       packetbuf_attr_copyto
//  423   buframptr->len = packetbuf_copyto(buframptr->data);
        MOV      R0,R4
          CFI FunCall packetbuf_copyto
        BL       packetbuf_copyto
        STRH     R0,[R4, #+128]
//  424 #if WITH_SWAP
//  425   if(buf->location == IN_CFS) {
//  426     queuebuf_flush_tmpdata();
//  427   }
//  428 #endif
//  429 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  430 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function queuebuf_free
        THUMB
//  431 void
//  432 queuebuf_free(struct queuebuf *buf)
//  433 {
queuebuf_free:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  434   if(memb_inmemb(&bufmem, buf)) {
        LDR.N    R5,??DataTable5
        MOV      R1,R4
        MOV      R0,R5
          CFI FunCall memb_inmemb
        BL       memb_inmemb
        CBZ.N    R0,??queuebuf_free_0
//  435 #if WITH_SWAP
//  436     if(buf->location == IN_RAM) {
//  437       memb_free(&buframmem, buf->ram_ptr);
//  438     } else {
//  439       queuebuf_remove_from_file(buf->swap_id);
//  440     }
//  441 #else
//  442     memb_free(&buframmem, buf->ram_ptr);
        LDR      R1,[R4, #+0]
        ADD      R0,R5,#+24
          CFI FunCall memb_free
        BL       memb_free
//  443 #endif
//  444     memb_free(&bufmem, buf);
        MOV      R1,R4
        MOV      R0,R5
        B.N      ??queuebuf_free_1
//  445 #if QUEUEBUF_STATS
//  446     --queuebuf_len;
//  447     PRINTF("#A q=%d\n", queuebuf_len);
//  448 #endif /* QUEUEBUF_STATS */
//  449 #if QUEUEBUF_DEBUG
//  450     list_remove(queuebuf_list, buf);
//  451 #endif /* QUEUEBUF_DEBUG */
//  452   } else if(memb_inmemb(&refbufmem, buf)) {
??queuebuf_free_0:
        MOV      R1,R4
        ADD      R0,R5,#+12
          CFI FunCall memb_inmemb
        BL       memb_inmemb
        CBZ.N    R0,??queuebuf_free_2
//  453     memb_free(&refbufmem, buf);
        MOV      R1,R4
        ADD      R0,R5,#+12
??queuebuf_free_1:
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall memb_free
        B.W      memb_free
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  454 #if QUEUEBUF_STATS
//  455     --queuebuf_ref_len;
//  456 #endif /* QUEUEBUF_STATS */
//  457   }
//  458 }
??queuebuf_free_2:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5
//  459 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function queuebuf_to_packetbuf
        THUMB
//  460 void
//  461 queuebuf_to_packetbuf(struct queuebuf *b)
//  462 {
queuebuf_to_packetbuf:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  463   struct queuebuf_ref *r;
//  464   if(memb_inmemb(&bufmem, b)) {
        LDR.N    R5,??DataTable5
        MOV      R1,R4
        MOV      R0,R5
          CFI FunCall memb_inmemb
        BL       memb_inmemb
        CBZ.N    R0,??queuebuf_to_packetbuf_0
//  465     struct queuebuf_data *buframptr = queuebuf_load_to_ram(b);
        LDR      R4,[R4, #+0]
//  466     packetbuf_copyfrom(buframptr->data, buframptr->len);
        LDRH     R1,[R4, #+128]
        MOV      R0,R4
          CFI FunCall packetbuf_copyfrom
        BL       packetbuf_copyfrom
//  467     packetbuf_attr_copyfrom(buframptr->attrs, buframptr->addrs);
        ADD      R1,R4,#+166
        ADD      R0,R4,#+130
        POP      {R2,R4,R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall packetbuf_attr_copyfrom
        B.W      packetbuf_attr_copyfrom
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  468   } else if(memb_inmemb(&refbufmem, b)) {
??queuebuf_to_packetbuf_0:
        MOV      R1,R4
        ADD      R0,R5,#+12
          CFI FunCall memb_inmemb
        BL       memb_inmemb
        CBZ.N    R0,??queuebuf_to_packetbuf_1
//  469     r = (struct queuebuf_ref *)b;
//  470     packetbuf_clear();
          CFI FunCall packetbuf_clear
        BL       packetbuf_clear
//  471     packetbuf_copyfrom(r->ref, r->len);
        LDRH     R1,[R4, #+0]
        LDR      R0,[R4, #+4]
          CFI FunCall packetbuf_copyfrom
        BL       packetbuf_copyfrom
//  472     packetbuf_hdralloc(r->hdrlen);
        LDRB     R0,[R4, #+56]
          CFI FunCall packetbuf_hdralloc
        BL       packetbuf_hdralloc
//  473     memcpy(packetbuf_hdrptr(), r->hdr, r->hdrlen);
          CFI FunCall packetbuf_hdrptr
        BL       packetbuf_hdrptr
        LDRB     R2,[R4, #+56]
        ADD      R1,R4,#+8
        POP      {R3-R5,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall __aeabi_memcpy
        B.W      __aeabi_memcpy
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  474   }
//  475 }
??queuebuf_to_packetbuf_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6
//  476 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function queuebuf_dataptr
        THUMB
//  477 void *
//  478 queuebuf_dataptr(struct queuebuf *b)
//  479 {
queuebuf_dataptr:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
//  480   struct queuebuf_ref *r;
//  481 
//  482   if(memb_inmemb(&bufmem, b)) {
        LDR.N    R5,??DataTable5
        MOV      R1,R4
        MOV      R0,R5
          CFI FunCall memb_inmemb
        BL       memb_inmemb
        CBZ.N    R0,??queuebuf_dataptr_0
//  483     struct queuebuf_data *buframptr = queuebuf_load_to_ram(b);
//  484     return buframptr->data;
        LDR      R0,[R4, #+0]
        POP      {R1,R4,R5,PC}
//  485   } else if(memb_inmemb(&refbufmem, b)) {
??queuebuf_dataptr_0:
        MOV      R1,R4
        ADD      R0,R5,#+12
          CFI FunCall memb_inmemb
        BL       memb_inmemb
        CBZ.N    R0,??queuebuf_dataptr_1
//  486     r = (struct queuebuf_ref *)b;
//  487     return r->ref;
        LDR      R0,[R4, #+4]
//  488   }
//  489   return NULL;
??queuebuf_dataptr_1:
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock7
//  490 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     bufmem
//  491 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function queuebuf_datalen
          CFI NoCalls
        THUMB
//  492 int
//  493 queuebuf_datalen(struct queuebuf *b)
//  494 {
//  495   struct queuebuf_data *buframptr = queuebuf_load_to_ram(b);
//  496   return buframptr->len;
queuebuf_datalen:
        LDR      R0,[R0, #+0]
        LDRH     R0,[R0, #+128]
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  497 }
//  498 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function queuebuf_addr
          CFI NoCalls
        THUMB
//  499 linkaddr_t *
//  500 queuebuf_addr(struct queuebuf *b, uint8_t type)
//  501 {
//  502   struct queuebuf_data *buframptr = queuebuf_load_to_ram(b);
//  503   return &buframptr->addrs[type - PACKETBUF_ADDR_FIRST].addr;
queuebuf_addr:
        LDR      R0,[R0, #+0]
        ADD      R0,R0,R1, LSL #+3
        ADDS     R0,R0,#+22
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  504 }
//  505 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function queuebuf_attr
          CFI NoCalls
        THUMB
//  506 packetbuf_attr_t
//  507 queuebuf_attr(struct queuebuf *b, uint8_t type)
//  508 {
//  509   struct queuebuf_data *buframptr = queuebuf_load_to_ram(b);
//  510   return buframptr->attrs[type].val;
queuebuf_attr:
        LDR      R0,[R0, #+0]
        ADD      R0,R0,R1, LSL #+1
        LDRH     R0,[R0, #+130]
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  511 }
//  512 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function queuebuf_debug_print
          CFI NoCalls
        THUMB
//  513 void
//  514 queuebuf_debug_print(void)
//  515 {
//  516 #if QUEUEBUF_DEBUG
//  517   struct queuebuf *q;
//  518   PRINTF("queuebuf_list: ");
//  519   for(q = list_head(queuebuf_list); q != NULL;
//  520       q = list_item_next(q)) {
//  521     PRINTF("%s,%d,%lu ", q->file, q->line, q->time);
//  522   }
//  523   PRINTF("\n");
//  524 #endif /* QUEUEBUF_DEBUG */
//  525 }
queuebuf_debug_print:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  526 /*---------------------------------------------------------------------------*/
//  527 /** @} */
// 
// 1 254 bytes in section .bss
//    36 bytes in section .data
//   436 bytes in section .text
// 
//   436 bytes of CODE memory
// 1 290 bytes of DATA memory
//
//Errors: none
//Warnings: 1
