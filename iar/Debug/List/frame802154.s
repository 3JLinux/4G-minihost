///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:51:48
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\frame802154.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\frame802154.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\frame802154.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memclr
        EXTERN linkaddr_copy
        EXTERN linkaddr_null

        PUBLIC frame802154_create
        PUBLIC frame802154_hdrlen
        PUBLIC frame802154_parse
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\core\net\mac\frame802154.c
//    1 /*
//    2  *
//    3  *  Copyright (c) 2008, Swedish Institute of Computer Science
//    4  *  All rights reserved.
//    5  *
//    6  *  Additional fixes for AVR contributed by:
//    7  *
//    8  *      Colin O'Flynn coflynn@newae.com
//    9  *      Eric Gnoske egnoske@gmail.com
//   10  *      Blake Leverett bleverett@gmail.com
//   11  *      Mike Vidales mavida404@gmail.com
//   12  *      Kevin Brown kbrown3@uccs.edu
//   13  *      Nate Bohlmann nate@elfwerks.com
//   14  *
//   15  *  Additional fixes for MSP430 contributed by:
//   16  *        Joakim Eriksson
//   17  *        Niclas Finne
//   18  *        Nicolas Tsiftes
//   19  *
//   20  *   All rights reserved.
//   21  *
//   22  *   Redistribution and use in source and binary forms, with or without
//   23  *   modification, are permitted provided that the following conditions are met:
//   24  *
//   25  *   * Redistributions of source code must retain the above copyright
//   26  *     notice, this list of conditions and the following disclaimer.
//   27  *   * Redistributions in binary form must reproduce the above copyright
//   28  *     notice, this list of conditions and the following disclaimer in
//   29  *     the documentation and/or other materials provided with the
//   30  *     distribution.
//   31  *   * Neither the name of the copyright holders nor the names of
//   32  *     contributors may be used to endorse or promote products derived
//   33  *     from this software without specific prior written permission.
//   34  *
//   35  *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//   36  *  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   37  *  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   38  *  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
//   39  *  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//   40  *  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
//   41  *  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//   42  *  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//   43  *  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//   44  *  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
//   45  *  POSSIBILITY OF SUCH DAMAGE.
//   46  *
//   47 */
//   48 /*
//   49  *  \brief This file is where the main functions that relate to frame
//   50  *  manipulation will reside.
//   51 */
//   52 
//   53 /**
//   54  *  \file
//   55  *  \brief 802.15.4 frame creation and parsing functions
//   56  *
//   57  *  This file converts to and from a structure to a packed 802.15.4
//   58  *  frame.
//   59  */
//   60 
//   61 /**
//   62  *   \addtogroup frame802154
//   63  *   @{
//   64 */
//   65 
//   66 #include "sys/cc.h"
//   67 #include "net/mac/frame802154.h"
//   68 #include "net/llsec/llsec802154.h"
//   69 #include "net/linkaddr.h"
//   70 #include <string.h>
//   71 
//   72 /**
//   73  *  \brief Structure that contains the lengths of the various addressing and security fields
//   74  *  in the 802.15.4 header.  This structure is used in \ref frame802154_create()
//   75  */
//   76 typedef struct {
//   77   uint8_t dest_pid_len;    /**<  Length (in bytes) of destination PAN ID field */
//   78   uint8_t dest_addr_len;   /**<  Length (in bytes) of destination address field */
//   79   uint8_t src_pid_len;     /**<  Length (in bytes) of source PAN ID field */
//   80   uint8_t src_addr_len;    /**<  Length (in bytes) of source address field */
//   81   uint8_t aux_sec_len;     /**<  Length (in bytes) of aux security header field */
//   82 } field_length_t;
//   83 
//   84 /*----------------------------------------------------------------------------*/
//   85 CC_INLINE static uint8_t
//   86 addr_len(uint8_t mode)
//   87 {
//   88   switch(mode) {
//   89   case FRAME802154_SHORTADDRMODE:  /* 16-bit address */
//   90     return 2;
//   91   case FRAME802154_LONGADDRMODE:   /* 64-bit address */
//   92     return 8;
//   93   default:
//   94     return 0;
//   95   }
//   96 }
//   97 /*----------------------------------------------------------------------------*/
//   98 #if LLSEC802154_USES_EXPLICIT_KEYS
//   99 static uint8_t
//  100 get_key_id_len(uint8_t key_id_mode)
//  101 {
//  102   switch(key_id_mode) {
//  103   case FRAME802154_1_BYTE_KEY_ID_MODE:
//  104     return 1;
//  105   case FRAME802154_5_BYTE_KEY_ID_MODE:
//  106     return 5;
//  107   case FRAME802154_9_BYTE_KEY_ID_MODE:
//  108     return 9;
//  109   default:
//  110     return 0;
//  111   }
//  112 }
//  113 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  114 /*----------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function field_len
        THUMB
//  115 static void
//  116 field_len(frame802154_t *p, field_length_t *flen)
//  117 {
field_len:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R5,R0
        MOV      R4,R1
//  118   /* init flen to zeros */
//  119   memset(flen, 0, sizeof(field_length_t));
        MOVS     R1,#+5
        MOV      R0,R4
          CFI FunCall __aeabi_memclr
        BL       __aeabi_memclr
//  120 
//  121   /* Determine lengths of each field based on fcf and other args */
//  122   if(p->fcf.dest_addr_mode & 3) {
        LDRB     R0,[R5, #+21]
        MOVS     R1,#+3
        TST      R0,R1
        ITT      NE 
        MOVNE    R0,#+2
        STRBNE   R0,[R4, #+0]
//  123     flen->dest_pid_len = 2;
//  124   }
//  125   if(p->fcf.src_addr_mode & 3) {
        LDRB     R0,[R5, #+23]
        TST      R0,R1
        ITTTT    NE 
        MOVNE    R0,#+2
        STRBNE   R0,[R4, #+2]
        LDRBNE   R0,[R5, #+21]
        TSTNE    R0,R1
//  126     flen->src_pid_len = 2;
//  127   }
//  128 
//  129   /* Set PAN ID compression bit if src pan id matches dest pan id. */
//  130   if(p->fcf.dest_addr_mode & 3 && p->fcf.src_addr_mode & 3 &&
//  131      p->src_pid == p->dest_pid) {
        BEQ.N    ??field_len_0
        LDRB     R0,[R5, #+23]
        TST      R0,R1
        BEQ.N    ??field_len_0
        LDRH     R0,[R5, #+28]
        LDRH     R1,[R5, #+26]
        CMP      R0,R1
        BNE.N    ??field_len_0
//  132     p->fcf.panid_compression = 1;
        MOVS     R0,#+1
        STRB     R0,[R5, #+20]
//  133 
//  134     /* compressed header, only do dest pid */
//  135     flen->src_pid_len = 0;
        MOVS     R0,#+0
        STRB     R0,[R4, #+2]
        B.N      ??field_len_1
//  136   } else {
//  137     p->fcf.panid_compression = 0;
??field_len_0:
        MOVS     R0,#+0
        STRB     R0,[R5, #+20]
//  138   }
//  139 
//  140   /* determine address lengths */
//  141   flen->dest_addr_len = addr_len(p->fcf.dest_addr_mode & 3);
??field_len_1:
        LDRB     R0,[R5, #+21]
        AND      R0,R0,#0x3
        CMP      R0,#+2
        BEQ.N    ??field_len_2
        CMP      R0,#+3
        ITE      EQ 
        MOVEQ    R0,#+8
        MOVNE    R0,#+0
??field_len_2:
        STRB     R0,[R4, #+1]
//  142   flen->src_addr_len = addr_len(p->fcf.src_addr_mode & 3);
        LDRB     R0,[R5, #+23]
        AND      R0,R0,#0x3
        CMP      R0,#+2
        BEQ.N    ??field_len_3
        CMP      R0,#+3
        ITE      EQ 
        MOVEQ    R0,#+8
        MOVNE    R0,#+0
??field_len_3:
        STRB     R0,[R4, #+3]
//  143 
//  144 #if LLSEC802154_SECURITY_LEVEL
//  145   /* Aux security header */
//  146   if(p->fcf.security_enabled & 1) {
//  147     flen->aux_sec_len = 5
//  148 #if LLSEC802154_USES_EXPLICIT_KEYS
//  149         + get_key_id_len(p->aux_hdr.security_control.key_id_mode);
//  150 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  151     ;
//  152   }
//  153 #endif /* LLSEC802154_SECURITY_LEVEL */
//  154 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//  155 /*----------------------------------------------------------------------------*/
//  156 /**
//  157  *   \brief Calculates the length of the frame header.  This function is
//  158  *   meant to be called by a higher level function, that interfaces to a MAC.
//  159  *
//  160  *   \param p Pointer to frame802154_t_t struct, which specifies the
//  161  *   frame to send.
//  162  *
//  163  *   \return The length of the frame header.
//  164 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function frame802154_hdrlen
        THUMB
//  165 int
//  166 frame802154_hdrlen(frame802154_t *p)
//  167 {
frame802154_hdrlen:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+12
          CFI CFA R13+16
//  168   field_length_t flen;
//  169   field_len(p, &flen);
        ADD      R1,SP,#+0
          CFI FunCall field_len
        BL       field_len
//  170   return 3 + flen.dest_pid_len + flen.dest_addr_len +
//  171     flen.src_pid_len + flen.src_addr_len + flen.aux_sec_len;
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ADDS     R0,R1,R0
        LDRB     R1,[SP, #+2]
        ADDS     R0,R1,R0
        LDRB     R1,[SP, #+3]
        ADDS     R0,R1,R0
        LDRB     R1,[SP, #+4]
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+3
        ADD      SP,SP,#+12
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock1
//  172 }
//  173 /*----------------------------------------------------------------------------*/
//  174 /**
//  175  *   \brief Creates a frame for transmission over the air.  This function is
//  176  *   meant to be called by a higher level function, that interfaces to a MAC.
//  177  *
//  178  *   \param p Pointer to frame802154_t struct, which specifies the
//  179  *   frame to send.
//  180  *
//  181  *   \param buf Pointer to the buffer to use for the frame.
//  182  *
//  183  *   \return The length of the frame header
//  184 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function frame802154_create
        THUMB
//  185 int
//  186 frame802154_create(frame802154_t *p, uint8_t *buf)
//  187 {
frame802154_create:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+12
          CFI CFA R13+24
        MOV      R4,R1
        MOV      R5,R0
//  188   int c;
//  189   field_length_t flen;
//  190   uint8_t pos;
//  191 #if LLSEC802154_USES_EXPLICIT_KEYS
//  192   uint8_t key_id_mode;
//  193 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  194 
//  195   field_len(p, &flen);
        ADD      R1,SP,#+0
          CFI FunCall field_len
        BL       field_len
//  196   
//  197   /* OK, now we have field lengths.  Time to actually construct */
//  198   /* the outgoing frame, and store it in buf */
//  199   buf[0] = (p->fcf.frame_type & 7) |
//  200     ((p->fcf.security_enabled & 1) << 3) |
//  201     ((p->fcf.frame_pending & 1) << 4) |
//  202     ((p->fcf.ack_required & 1) << 5) |
//  203     ((p->fcf.panid_compression & 1) << 6);
        LDRB     R0,[R5, #+16]
        LDRB     R1,[R5, #+17]
        AND      R0,R0,#0x7
        AND      R1,R1,#0x1
        ORR      R0,R0,R1, LSL #+3
        LDRB     R1,[R5, #+18]
        AND      R1,R1,#0x1
        ORR      R0,R0,R1, LSL #+4
        LDRB     R1,[R5, #+19]
        AND      R1,R1,#0x1
        ORR      R0,R0,R1, LSL #+5
        LDRB     R1,[R5, #+20]
        AND      R1,R1,#0x1
        ORR      R0,R0,R1, LSL #+6
        STRB     R0,[R4, #+0]
//  204   buf[1] = ((p->fcf.dest_addr_mode & 3) << 2) |
//  205     ((p->fcf.frame_version & 3) << 4) |
//  206     ((p->fcf.src_addr_mode & 3) << 6);
        LDRB     R1,[R5, #+22]
        LDRB     R0,[R5, #+21]
        AND      R1,R1,#0x3
        AND      R0,R0,#0x3
        LSLS     R1,R1,#+4
        ORR      R0,R1,R0, LSL #+2
        LDRB     R1,[R5, #+23]
        ORR      R0,R0,R1, LSL #+6
        STRB     R0,[R4, #+1]
//  207 
//  208   /* sequence number */
//  209   buf[2] = p->seq;
        LDRB     R0,[R5, #+24]
        STRB     R0,[R4, #+2]
//  210   pos = 3;
        MOVS     R0,#+3
//  211 
//  212   /* Destination PAN ID */
//  213   if(flen.dest_pid_len == 2) {
        LDRB     R1,[SP, #+0]
        CMP      R1,#+2
        BNE.N    ??frame802154_create_0
//  214     buf[pos++] = p->dest_pid & 0xff;
        LDRH     R0,[R5, #+26]
        STRB     R0,[R4, #+3]
//  215     buf[pos++] = (p->dest_pid >> 8) & 0xff;
        LDRH     R0,[R5, #+26]
        LSRS     R0,R0,#+8
        STRB     R0,[R4, #+4]
        MOVS     R0,#+5
//  216   }
//  217 
//  218   /* Destination address */
//  219   for(c = flen.dest_addr_len; c > 0; c--) {
??frame802154_create_0:
        LDRB     R1,[SP, #+1]
        CMP      R1,#+1
        BLT.N    ??frame802154_create_1
        ADDS     R2,R1,R5
        SUBS     R2,R2,#+1
//  220     buf[pos++] = p->dest_addr[c - 1];
??frame802154_create_2:
        LDRB     R3,[R2], #-1
        UXTB     R0,R0
        STRB     R3,[R0, R4]
        ADDS     R0,R0,#+1
//  221   }
        SUBS     R1,R1,#+1
        BNE.N    ??frame802154_create_2
//  222 
//  223   /* Source PAN ID */
//  224   if(flen.src_pid_len == 2) {
??frame802154_create_1:
        LDRB     R1,[SP, #+2]
        CMP      R1,#+2
        BNE.N    ??frame802154_create_3
//  225     buf[pos++] = p->src_pid & 0xff;
        LDRH     R1,[R5, #+28]
        UXTB     R0,R0
        STRB     R1,[R0, R4]
        ADDS     R0,R0,#+1
//  226     buf[pos++] = (p->src_pid >> 8) & 0xff;
        LDRH     R1,[R5, #+28]
        UXTB     R0,R0
        LSRS     R1,R1,#+8
        STRB     R1,[R0, R4]
        ADDS     R0,R0,#+1
//  227   }
//  228 
//  229   /* Source address */
//  230   for(c = flen.src_addr_len; c > 0; c--) {
??frame802154_create_3:
        LDRB     R1,[SP, #+3]
        CMP      R1,#+1
        BLT.N    ??frame802154_create_4
        ADDS     R2,R1,R5
        ADDS     R2,R2,#+7
//  231     buf[pos++] = p->src_addr[c - 1];
??frame802154_create_5:
        LDRB     R3,[R2], #-1
        UXTB     R0,R0
        STRB     R3,[R0, R4]
        ADDS     R0,R0,#+1
//  232   }
        SUBS     R1,R1,#+1
        BNE.N    ??frame802154_create_5
//  233 
//  234 #if LLSEC802154_SECURITY_LEVEL
//  235   /* Aux header */
//  236   if(flen.aux_sec_len) {
//  237     buf[pos++] = p->aux_hdr.security_control.security_level
//  238 #if LLSEC802154_USES_EXPLICIT_KEYS
//  239         | (p->aux_hdr.security_control.key_id_mode << 3)
//  240 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  241     ;
//  242     memcpy(buf + pos, p->aux_hdr.frame_counter.u8, 4);
//  243     pos += 4;
//  244 
//  245 #if LLSEC802154_USES_EXPLICIT_KEYS
//  246     key_id_mode = p->aux_hdr.security_control.key_id_mode;
//  247     if(key_id_mode) {
//  248       c = (key_id_mode - 1) * 4;
//  249       memcpy(buf + pos, p->aux_hdr.key_source.u8, c);
//  250       pos += c;
//  251       buf[pos++] = p->aux_hdr.key_index;
//  252     }
//  253 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  254   }
//  255 #endif /* LLSEC802154_SECURITY_LEVEL */
//  256 
//  257   return (int)pos;
??frame802154_create_4:
        UXTB     R0,R0
        ADD      SP,SP,#+12
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock2
//  258 }
//  259 /*----------------------------------------------------------------------------*/
//  260 /**
//  261  *   \brief Parses an input frame.  Scans the input frame to find each
//  262  *   section, and stores the information of each section in a
//  263  *   frame802154_t structure.
//  264  *
//  265  *   \param data The input data from the radio chip.
//  266  *   \param len The size of the input data
//  267  *   \param pf The frame802154_t struct to store the parsed frame information.
//  268  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function frame802154_parse
        THUMB
//  269 int
//  270 frame802154_parse(uint8_t *data, int len, frame802154_t *pf)
//  271 {
frame802154_parse:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        MOV      R5,R1
//  272   uint8_t *p;
//  273   frame802154_fcf_t fcf;
//  274   int c;
//  275 #if LLSEC802154_USES_EXPLICIT_KEYS
//  276   uint8_t key_id_mode;
//  277 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  278 
//  279   if(len < 3) {
        CMP      R5,#+3
        SUB      SP,SP,#+12
          CFI CFA R13+32
        MOV      R4,R0
        MOV      R6,R2
        BLT.W    ??frame802154_parse_0
//  280     return 0;
//  281   }
//  282 
//  283   p = data;
//  284 
//  285   /* decode the FCF */
//  286   fcf.frame_type = p[0] & 7;
        LDRB     R0,[R4, #+0]
        AND      R1,R0,#0x7
        STRB     R1,[SP, #+0]
//  287   fcf.security_enabled = (p[0] >> 3) & 1;
//  288   fcf.frame_pending = (p[0] >> 4) & 1;
//  289   fcf.ack_required = (p[0] >> 5) & 1;
//  290   fcf.panid_compression = (p[0] >> 6) & 1;
//  291 
//  292   fcf.dest_addr_mode = (p[1] >> 2) & 3;
//  293   fcf.frame_version = (p[1] >> 4) & 3;
//  294   fcf.src_addr_mode = (p[1] >> 6) & 3;
//  295 
//  296   /* copy fcf and seqNum */
//  297   memcpy(&pf->fcf, &fcf, sizeof(frame802154_fcf_t));
//  298   pf->seq = p[2];
//  299   p += 3;                             /* Skip first three bytes */
        ADDS     R7,R4,#+3
        UBFX     R1,R0,#+3,#+1
        STRB     R1,[SP, #+1]
        UBFX     R1,R0,#+4,#+1
        STRB     R1,[SP, #+2]
        UBFX     R1,R0,#+5,#+1
        UBFX     R0,R0,#+6,#+1
        STRB     R0,[SP, #+4]
        STRB     R1,[SP, #+3]
        LDRB     R0,[R4, #+1]
        UBFX     R1,R0,#+2,#+2
        STRB     R1,[SP, #+5]
        UBFX     R1,R0,#+4,#+2
        LSRS     R0,R0,#+6
        STRB     R0,[SP, #+7]
        STRB     R1,[SP, #+6]
        ADD      R0,SP,#+0
        LDM      R0!,{R2,R3}
        ADD      R1,R6,#+16
        STM      R1!,{R2,R3}
        LDRB     R0,[R4, #+2]
        STRB     R0,[R6, #+24]
//  300 
//  301   /* Destination address, if any */
//  302   if(fcf.dest_addr_mode) {
        LDRB     R0,[SP, #+5]
        CBZ.N    R0,??frame802154_parse_1
//  303     /* Destination PAN */
//  304     pf->dest_pid = p[0] + (p[1] << 8);
        LDRB     R1,[R7, #+0]
        LDRB     R2,[R7, #+1]
//  305     p += 2;
        ADDS     R7,R7,#+2
        ADD      R1,R1,R2, LSL #+8
//  306 
//  307     /* Destination address */
//  308 /*     l = addr_len(fcf.dest_addr_mode); */
//  309 /*     for(c = 0; c < l; c++) { */
//  310 /*       pf->dest_addr.u8[c] = p[l - c - 1]; */
//  311 /*     } */
//  312 /*     p += l; */
//  313     if(fcf.dest_addr_mode == FRAME802154_SHORTADDRMODE) {
        CMP      R0,#+2
        STRH     R1,[R6, #+26]
        BNE.N    ??frame802154_parse_2
//  314       linkaddr_copy((linkaddr_t *)&(pf->dest_addr), &linkaddr_null);
        LDR.N    R1,??DataTable0
        MOV      R0,R6
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  315       pf->dest_addr[0] = p[1];
        LDRB     R0,[R7, #+1]
        STRB     R0,[R6, #+0]
//  316       pf->dest_addr[1] = p[0];
        LDRB     R0,[R7], #+2
        STRB     R0,[R6, #+1]
//  317       p += 2;
        B.N      ??frame802154_parse_3
//  318     } else if(fcf.dest_addr_mode == FRAME802154_LONGADDRMODE) {
??frame802154_parse_2:
        CMP      R0,#+3
        BNE.N    ??frame802154_parse_3
//  319       for(c = 0; c < 8; c++) {
//  320         pf->dest_addr[c] = p[7 - c];
        LDRB     R0,[R7, #+7]
        STRB     R0,[R6, #+0]
        LDRB     R0,[R7, #+6]
        STRB     R0,[R6, #+1]
        LDRB     R0,[R7, #+5]
        STRB     R0,[R6, #+2]
        LDRB     R0,[R7, #+4]
        STRB     R0,[R6, #+3]
        LDRB     R0,[R7, #+3]
        STRB     R0,[R6, #+4]
        LDRB     R0,[R7, #+2]
        STRB     R0,[R6, #+5]
        LDRB     R0,[R7, #+1]
        STRB     R0,[R6, #+6]
        LDRB     R0,[R7], #+8
        STRB     R0,[R6, #+7]
//  321       }
//  322       p += 8;
        B.N      ??frame802154_parse_3
//  323     }
//  324   } else {
//  325     linkaddr_copy((linkaddr_t *)&(pf->dest_addr), &linkaddr_null);
??frame802154_parse_1:
        LDR.N    R1,??DataTable0
        MOV      R0,R6
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  326     pf->dest_pid = 0;
        MOVS     R0,#+0
        STRH     R0,[R6, #+26]
//  327   }
//  328 
//  329   /* Source address, if any */
//  330   if(fcf.src_addr_mode) {
??frame802154_parse_3:
        LDRB     R0,[SP, #+7]
        CBZ.N    R0,??frame802154_parse_4
//  331     /* Source PAN */
//  332     if(!fcf.panid_compression) {
        LDRB     R1,[SP, #+4]
        CBNZ.N   R1,??frame802154_parse_5
//  333       pf->src_pid = p[0] + (p[1] << 8);
        LDRB     R1,[R7, #+0]
        LDRB     R2,[R7, #+1]
        ADD      R1,R1,R2, LSL #+8
//  334       p += 2;
        ADDS     R7,R7,#+2
        B.N      ??frame802154_parse_6
//  335     } else {
//  336       pf->src_pid = pf->dest_pid;
??frame802154_parse_5:
        LDRH     R1,[R6, #+26]
//  337     }
//  338 
//  339     /* Source address */
//  340 /*     l = addr_len(fcf.src_addr_mode); */
//  341 /*     for(c = 0; c < l; c++) { */
//  342 /*       pf->src_addr.u8[c] = p[l - c - 1]; */
//  343 /*     } */
//  344 /*     p += l; */
//  345     if(fcf.src_addr_mode == FRAME802154_SHORTADDRMODE) {
??frame802154_parse_6:
        CMP      R0,#+2
        STRH     R1,[R6, #+28]
        BNE.N    ??frame802154_parse_7
//  346       linkaddr_copy((linkaddr_t *)&(pf->src_addr), &linkaddr_null);
        LDR.N    R1,??DataTable0
        ADD      R0,R6,#+8
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  347       pf->src_addr[0] = p[1];
        LDRB     R0,[R7, #+1]
        STRB     R0,[R6, #+8]
//  348       pf->src_addr[1] = p[0];
        LDRB     R0,[R7], #+2
        STRB     R0,[R6, #+9]
//  349       p += 2;
        B.N      ??frame802154_parse_8
//  350     } else if(fcf.src_addr_mode == FRAME802154_LONGADDRMODE) {
??frame802154_parse_7:
        CMP      R0,#+3
        BNE.N    ??frame802154_parse_8
//  351       for(c = 0; c < 8; c++) {
//  352         pf->src_addr[c] = p[7 - c];
        LDRB     R0,[R7, #+7]
        STRB     R0,[R6, #+8]
        LDRB     R0,[R7, #+6]
        STRB     R0,[R6, #+9]
        LDRB     R0,[R7, #+5]
        STRB     R0,[R6, #+10]
        LDRB     R0,[R7, #+4]
        STRB     R0,[R6, #+11]
        LDRB     R0,[R7, #+3]
        STRB     R0,[R6, #+12]
        LDRB     R0,[R7, #+2]
        STRB     R0,[R6, #+13]
        LDRB     R0,[R7, #+1]
        STRB     R0,[R6, #+14]
        LDRB     R0,[R7], #+8
        STRB     R0,[R6, #+15]
//  353       }
//  354       p += 8;
        B.N      ??frame802154_parse_8
//  355     }
//  356   } else {
//  357     linkaddr_copy((linkaddr_t *)&(pf->src_addr), &linkaddr_null);
??frame802154_parse_4:
        LDR.N    R1,??DataTable0
        ADD      R0,R6,#+8
          CFI FunCall linkaddr_copy
        BL       linkaddr_copy
//  358     pf->src_pid = 0;
        MOVS     R0,#+0
        STRH     R0,[R6, #+28]
//  359   }
//  360   
//  361 #if LLSEC802154_SECURITY_LEVEL
//  362   if(fcf.security_enabled) {
//  363     pf->aux_hdr.security_control.security_level = p[0] & 7;
//  364 #if LLSEC802154_USES_EXPLICIT_KEYS
//  365     pf->aux_hdr.security_control.key_id_mode = (p[0] >> 3) & 3;
//  366 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  367     p += 1;
//  368     
//  369     memcpy(pf->aux_hdr.frame_counter.u8, p, 4);
//  370     p += 4;
//  371     
//  372 #if LLSEC802154_USES_EXPLICIT_KEYS
//  373     key_id_mode = pf->aux_hdr.security_control.key_id_mode;
//  374     if(key_id_mode) {
//  375       c = (key_id_mode - 1) * 4;
//  376       memcpy(pf->aux_hdr.key_source.u8, p, c);
//  377       p += c;
//  378       pf->aux_hdr.key_index = p[0];
//  379       p += 1;
//  380     }
//  381 #endif /* LLSEC802154_USES_EXPLICIT_KEYS */
//  382   }
//  383 #endif /* LLSEC802154_SECURITY_LEVEL */
//  384 
//  385   /* header length */
//  386   c = p - data;
??frame802154_parse_8:
        SUBS     R0,R7,R4
//  387   /* payload length */
//  388   pf->payload_len = (len - c);
        SUBS     R1,R5,R0
        STR      R1,[R6, #+56]
//  389   /* payload */
//  390   pf->payload = p;
//  391 
//  392   /* return header length if successful */
//  393   return c > len ? 0 : c;
        CMP      R5,R0
        STR      R7,[R6, #+52]
        BGE.N    ??frame802154_parse_9
??frame802154_parse_0:
        MOVS     R0,#+0
??frame802154_parse_9:
        ADD      SP,SP,#+12
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock3
//  394 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     linkaddr_null

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  395 /** \}   */
// 
// 676 bytes in section .text
// 
// 676 bytes of CODE memory
//
//Errors: none
//Warnings: 1
