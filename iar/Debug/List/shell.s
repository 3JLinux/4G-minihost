///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.4.8167/W32 for ARM       20/Dec/2016  09:52:21
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\apps\shell\shell.c
//    Command line =  
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\apps\shell\shell.c
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
//        E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\iar\Debug\List\shell.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Asc2Int
        EXTERN AscBcd2BcdHex
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy
        EXTERN __iar_Strchr
        EXTERN __xstd_dump
        EXTERN __xstd_printf
        EXTERN clock_seconds
        EXTERN endNodeListPrint
        EXTERN etimer_reset
        EXTERN etimer_set
        EXTERN extgdbdevGetDeviceSettingInfoSt
        EXTERN extgdbdevSetDeviceSettingInfoSt
        EXTERN get_gdbLevel
        EXTERN gfireClean
        EXTERN ip64_print_dhcpc_info
        EXTERN linkaddr_set_node_addr
        EXTERN list_add
        EXTERN list_head
        EXTERN list_init
        EXTERN list_insert
        EXTERN list_push
        EXTERN list_remove
        EXTERN process_alloc_event
        EXTERN process_current
        EXTERN process_exit
        EXTERN process_is_running
        EXTERN process_post
        EXTERN process_post_synch
        EXTERN process_request_u
        EXTERN process_start
        EXTERN shell_default_output
        EXTERN shell_exit
        EXTERN shell_prompt
        EXTERN strcmp
        EXTERN strcmp_ex
        EXTERN strlen
        EXTERN strncmp
        EXTERN sysReset
        EXTERN testGprsAck
        EXTERN testGprsSmsPhone
        EXTERN testGprsSync
        EXTERN testNodeInfo

        PUBLIC help_command_process
        PUBLIC rimeaddr_dst
        PUBLIC shell_cmdlinepro
        PUBLIC shell_event_input
        PUBLIC shell_exit_process
        PUBLIC shell_init
        PUBLIC shell_input
        PUBLIC shell_kill_process
        PUBLIC shell_killall_process
        PUBLIC shell_null_process
        PUBLIC shell_output
        PUBLIC shell_output_str
        PUBLIC shell_process
        PUBLIC shell_quit
        PUBLIC shell_register_command
        PUBLIC shell_server_process
        PUBLIC shell_set_process
        PUBLIC shell_set_time
        PUBLIC shell_setparam
        PUBLIC shell_start
        PUBLIC shell_start_command
        PUBLIC shell_stop
        PUBLIC shell_strtolong
        PUBLIC shell_time
        PUBLIC shell_unregister_command
        
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
        
// E:\Work\区域管理终端\net_gprs_485_20161220_smsch_ws\contiki\apps\shell\shell.c
//    1 /**
//    2  * \addtogroup shell
//    3  * @{
//    4  */
//    5 
//    6 /*
//    7  * Copyright (c) 2008, Swedish Institute of Computer Science.
//    8  * All rights reserved.
//    9  *
//   10  * Redistribution and use in source and binary forms, with or without
//   11  * modification, are permitted provided that the following conditions
//   12  * are met:
//   13  * 1. Redistributions of source code must retain the above copyright
//   14  *    notice, this list of conditions and the following disclaimer.
//   15  * 2. Redistributions in binary form must reproduce the above copyright
//   16  *    notice, this list of conditions and the following disclaimer in the
//   17  *    documentation and/or other materials provided with the distribution.
//   18  * 3. Neither the name of the Institute nor the names of its contributors
//   19  *    may be used to endorse or promote products derived from this software
//   20  *    without specific prior written permission.
//   21  *
//   22  * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
//   23  * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//   24  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//   25  * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
//   26  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//   27  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
//   28  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//   29  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
//   30  * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
//   31  * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
//   32  * SUCH DAMAGE.
//   33  *
//   34  * This file is part of the Contiki operating system.
//   35  *
//   36  */
//   37 
//   38 /**
//   39  * \file
//   40  *         The shell application
//   41  * \author
//   42  *         Adam Dunkels <adam@sics.se>
//   43  */
//   44 
//   45 #include "contiki.h"
//   46 
//   47 #include "contiki-lib.h"
//   48 //#include "net/uip.h"
//   49 #include "net/ip/uip.h"
//   50 //#include "net/rime.h"
//   51 #include "net/linkaddr.h"
//   52 #include "net/rpl/rpl.h"
//   53 #include "contiki-net.h"
//   54 
//   55 #include "shell.h"
//   56 
//   57 #include <ctype.h>
//   58 #include <string.h>
//   59 #include <stdio.h>
//   60 
//   61 #include "basictype.h"
//   62 #include "sysprintf.h"
//   63 #include "utility.h"
//   64 #include "dev_info.h"
//   65 
//   66 
//   67 
//   68 //#include "rf_param.h"
//   69 
//   70 #if 1
//   71 //user define, used user define
//   72 #define SHELL_CONF_PROMPT
//   73 #define SHELL_CONF_BANNER
//   74 const static char shell_prompt_text[] = "os> ";
//   75 const static char shell_banner_text[] = "os command shell";
//   76 #else
//   77 #ifdef SHELL_CONF_PROMPT
//   78 extern char shell_prompt_text[];
//   79 #else
//   80 static char shell_prompt_text[] = "Contiki> ";
//   81 #endif
//   82 
//   83 #ifdef SHELL_CONF_BANNER
//   84 extern char shell_banner_text[];
//   85 #else
//   86 static char shell_banner_text[] = "Contiki command shell";
//   87 #endif
//   88 
//   89 #endif
//   90 
//   91 LIST(commands);
//   92 
//   93 int shell_event_input;
//   94 
//   95 static struct process *front_process;
//   96 
//   97 static unsigned long time_offset;
//   98 
//   99 
//  100 static const char hexconv[] = "0123456789abcdef";
//  101 static const char binconv[] = "01";
//  102 
//  103 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  104 linkaddr_t rimeaddr_dst;
rimeaddr_dst:
        DS8 8
//  105 
//  106 int shell_cmdlinepro(char *szCmdLine,char*argv[]);
//  107 
//  108 
//  109 PROCESS(shell_process, "Shell");
//  110 PROCESS(shell_server_process, "Shell server");
//  111 /*---------------------------------------------------------------------------*/
//  112 PROCESS(help_command_process, "help");
//  113 SHELL_COMMAND(help_command, "help", "help: shows this help",
//  114 	      &help_command_process);
//  115 SHELL_COMMAND(question_command, "?", "?: shows this help",
//  116 	      &help_command_process);
//  117 PROCESS(shell_killall_process, "killall");
//  118 SHELL_COMMAND(killall_command, "killall", "killall: stop all running commands",
//  119 	      &shell_killall_process);
//  120 PROCESS(shell_kill_process, "kill");
//  121 SHELL_COMMAND(kill_command, "kill", "kill <command>: stop a specific command",
//  122 	      &shell_kill_process);
//  123 PROCESS(shell_null_process, "null");
//  124 SHELL_COMMAND(null_command, "null", "null: discard input",
//  125 	      &shell_null_process);
//  126 PROCESS(shell_exit_process, "exit");
//  127 SHELL_COMMAND(exit_command, "exit", "exit: exit shell",
//  128 	      &shell_exit_process);
//  129 SHELL_COMMAND(quit_command, "quit", "quit: exit shell",
//  130 	      &shell_exit_process);
//  131 
//  132 
//  133 //This process is used to set node param
//  134 PROCESS(shell_set_process, "set param");
//  135 SHELL_COMMAND(set_command, "s", "ser: set node param",
//  136 	      &shell_set_process);
//  137 
//  138 
//  139 #define MAX_SHELL_ARGV  32
//  140 
//  141 /*---------------------------------------------------------------------------*/
//  142 
//  143 #define UIP_IP_BUF     ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])
//  144 #define UIP_ICMP_BUF   ((struct uip_icmp_hdr *)&uip_buf[UIP_LLH_LEN + UIP_IPH_LEN])
//  145 #define PING_DATALEN 16
//  146 
//  147 #define ICMP_ECHO_REPLY 0
//  148 #define ICMP_ECHO       8
//  149 
//  150 #define ICMP6_ECHO_REPLY             129
//  151 #define ICMP6_ECHO                   128
//  152 
//  153 #if 0
//  154 static void node_ping(uip_ipaddr_t *dest_addr)
//  155 {
//  156   uint16_t count;
//  157   UIP_IP_BUF->vtc = 0x60;
//  158   UIP_IP_BUF->tcflow = 1;
//  159   UIP_IP_BUF->flow = 0;
//  160   UIP_IP_BUF->proto = UIP_PROTO_ICMP6;
//  161   UIP_IP_BUF->ttl = uip_ds6_if.cur_hop_limit;
//  162   uip_ipaddr_copy(&UIP_IP_BUF->destipaddr, dest_addr);
//  163   uip_ds6_select_src(&UIP_IP_BUF->srcipaddr, &UIP_IP_BUF->destipaddr);
//  164   
//  165   UIP_ICMP_BUF->type = ICMP6_ECHO_REQUEST;
//  166   UIP_ICMP_BUF->icode = 0;
//  167   /* set identifier and sequence number to 0 */
//  168   memset((uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN, 0, 4);
//  169   /* put one byte of data */
//  170   memset((uint8_t *)UIP_ICMP_BUF + UIP_ICMPH_LEN + UIP_ICMP6_ECHO_REQUEST_LEN,
//  171 	 count, PING_DATALEN);
//  172   count++;
//  173   
//  174   uip_len = UIP_ICMPH_LEN + UIP_ICMP6_ECHO_REQUEST_LEN +
//  175     UIP_IPH_LEN + PING_DATALEN;
//  176   UIP_IP_BUF->len[0] = (uint8_t)((uip_len - 40) >> 8);
//  177   UIP_IP_BUF->len[1] = (uint8_t)((uip_len - 40) & 0x00ff);
//  178   
//  179   UIP_ICMP_BUF->icmpchksum = 0;
//  180   UIP_ICMP_BUF->icmpchksum = ~ uip_icmp6chksum();
//  181   
//  182   tcpip_ipv6_output();
//  183 }
//  184 #endif
//  185 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function print_rfparam_info
        THUMB
//  186 static void print_rfparam_info(const RF_NODE_PARAM_CONFIG *pRFCfg, u_char old_new)
//  187 {
print_rfparam_info:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  188 	if (old_new == 0)
        LDRB     R2,[R4, #+0]
        CBNZ.N   R1,??print_rfparam_info_0
//  189 	{
//  190 		XPRINTF((0, "nodetype is %02x \r\n", pRFCfg->ubNodeType));
        ADR.W    R1,?_13
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  191 		XPRINTF((0, "TXPOWER is %d \r\n", pRFCfg->ubTxPower));
        LDRB     R2,[R4, #+1]
        ADR.W    R1,?_14
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  192 		XPRINTF((0, "rssilimit is %d \r\n", pRFCfg->ubRSSI_Limit));
        LDRB     R2,[R4, #+2]
        ADR.W    R1,?_15
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  193 		XPRINTF((0, "rfchannel is %d \r\n", pRFCfg->ubRFChannel));
        LDRB     R2,[R4, #+3]
        ADR.W    R1,?_16
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  194 		XPRINTF((0, "rfchannel is %04x \r\n", pRFCfg->uwPanID));
        LDRH     R2,[R4, #+10]
        ADR.W    R1,?_17
        B.N      ??print_rfparam_info_1
//  195 	}
//  196 	else
//  197 	{
//  198 		XPRINTF((0, "ee nodetype is %02x \r\n", pRFCfg->ubNodeType));
??print_rfparam_info_0:
        ADR.W    R1,?_18
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  199 		XPRINTF((0, "ee TXPOWER is %d \r\n", pRFCfg->ubTxPower));
        LDRB     R2,[R4, #+1]
        ADR.W    R1,?_19
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  200 		XPRINTF((0, "ee rssilimit is %d \r\n", pRFCfg->ubRSSI_Limit));
        LDRB     R2,[R4, #+2]
        ADR.W    R1,?_20
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  201 		XPRINTF((0, "ee rfchannel is %d \r\n", pRFCfg->ubRFChannel));
        LDRB     R2,[R4, #+3]
        ADR.W    R1,?_21
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  202 		XPRINTF((0, "ee rfchannel is %04x \r\n", pRFCfg->uwPanID));	
        LDRH     R2,[R4, #+10]
        ADR.W    R1,?_22
??print_rfparam_info_1:
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        B.W      __xstd_printf
          CFI EndBlock cfiBlock0
//  203 	}
//  204 }
//  205 
//  206 static void set_rf_power(const char* szAscNum)
//  207 {
//  208 	RF_NODE_PARAM_CONFIG stRFCfg;
//  209 	const RF_NODE_PARAM_CONFIG *pRFCfg = NULL;
//  210 	int nResult = -1;
//  211 	u_char ubTxPower = 0;
//  212 	
//  213 	ubTxPower = Asc2Int(szAscNum);
//  214 	pRFCfg = (const RF_NODE_PARAM_CONFIG *)extgdbdevGetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM);
//  215 	stRFCfg = *pRFCfg;
//  216 	print_rfparam_info(pRFCfg, 0);
//  217 	if (ubTxPower <= 0x07)
//  218 	{
//  219 		stRFCfg.ubTxPower = ubTxPower;
//  220 		nResult = extgdbdevSetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM, 0, &stRFCfg, sizeof(RF_NODE_PARAM_CONFIG));
//  221 		print_rfparam_info(pRFCfg, 1);
//  222 	}
//  223 }
//  224 
//  225 static void set_rf_channel(const char* szAscNum)
//  226 {
//  227 	RF_NODE_PARAM_CONFIG stRFCfg;
//  228 	const RF_NODE_PARAM_CONFIG *pRFCfg = NULL;
//  229 	int nResult = -1;
//  230 	u_char ubchannel = 0;
//  231 	
//  232 	//ubchannel = Asc2Int(argv[i+1]);
//  233 	ubchannel = Asc2Int(szAscNum);
//  234 	pRFCfg = (const RF_NODE_PARAM_CONFIG *)extgdbdevGetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM);
//  235 	stRFCfg = *pRFCfg;
//  236 	print_rfparam_info(pRFCfg, 0);	
//  237 	if (ubchannel <= 33)
//  238 	{
//  239 		stRFCfg.ubRFChannel = ubchannel;
//  240 		nResult = extgdbdevSetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM, 0, &stRFCfg, sizeof(RF_NODE_PARAM_CONFIG));
//  241 		print_rfparam_info(pRFCfg, 1);
//  242 	}
//  243 }
//  244 
//  245 static void set_rf_nodetype(const char* szAscNum)
//  246 {
//  247 	RF_NODE_PARAM_CONFIG stRFCfg;
//  248 	const RF_NODE_PARAM_CONFIG *pRFCfg = NULL;
//  249 	int nResult = -1;
//  250 	u_char ubnodet = 0;
//  251 	
//  252 	//ubnodet = Asc2Int(argv[i+1]);
//  253 	ubnodet = Asc2Int(szAscNum);
//  254 	pRFCfg = (const RF_NODE_PARAM_CONFIG *)extgdbdevGetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM);
//  255 	stRFCfg = *pRFCfg;
//  256 	print_rfparam_info(pRFCfg, 0);
//  257 	if (ubnodet <= 1)
//  258 	{
//  259 		stRFCfg.ubNodeType = ubnodet;
//  260 		nResult = extgdbdevSetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM, 0, &stRFCfg, sizeof(RF_NODE_PARAM_CONFIG));
//  261 		print_rfparam_info(pRFCfg, 1);
//  262 	}
//  263 }
//  264 
//  265 static void set_rf_rssi_limit(const char* szAscNum)
//  266 {
//  267 	RF_NODE_PARAM_CONFIG stRFCfg;
//  268 	const RF_NODE_PARAM_CONFIG *pRFCfg = NULL;
//  269 	int nResult = -1;
//  270 	u_char ubrssi = 0;
//  271 	
//  272 	//ubrssi = Asc2Int(argv[i+1]);
//  273 	ubrssi = Asc2Int(szAscNum);
//  274 	pRFCfg = (const RF_NODE_PARAM_CONFIG *)extgdbdevGetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM);
//  275 	stRFCfg = *pRFCfg;
//  276 	print_rfparam_info(pRFCfg, 0);
//  277 	if (ubrssi <= 200)
//  278 	{
//  279 		stRFCfg.ubRSSI_Limit = ubrssi;
//  280 		nResult = extgdbdevSetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM, 0, &stRFCfg, sizeof(RF_NODE_PARAM_CONFIG));
//  281 		print_rfparam_info(pRFCfg, 1);
//  282 	}
//  283 }
//  284 static void set_rf_panid(const char* szAscNum)
//  285 {
//  286 	RF_NODE_PARAM_CONFIG stRFCfg;
//  287 	const RF_NODE_PARAM_CONFIG *pRFCfg = NULL;
//  288 	int nResult = -1;
//  289 	u_short uwPanID = 0;
//  290 	int nDataLen = 0;
//  291 	
//  292 	//nDataLen = AscBcd2BcdHex(argv[i+1], (u_char*)&uwPanID, 0);
//  293 	nDataLen = AscBcd2BcdHex(szAscNum, (u_char*)&uwPanID, 0);
//  294 	
//  295 	pRFCfg = (const RF_NODE_PARAM_CONFIG *)extgdbdevGetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM);
//  296 	stRFCfg = *pRFCfg;
//  297 	print_rfparam_info(pRFCfg, 0);
//  298 	if ((nDataLen == 1) ||(nDataLen == 2))
//  299 	{
//  300 		stRFCfg.uwPanID = uwPanID;
//  301 		nResult = extgdbdevSetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM, 0, &stRFCfg, sizeof(RF_NODE_PARAM_CONFIG));
//  302 		print_rfparam_info(pRFCfg, 1);
//  303 	}
//  304 }
//  305 
//  306 
//  307 static void printMAC(void)
//  308 {
//  309 	NODE_ADDR_INFO *paddrInfo = NULL;
//  310 	paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
//  311 	MEM_DUMP(0, "mac", paddrInfo, 8);	
//  312 }
//  313 
//  314 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function process_thread_shell_set_process
        THUMB
//  315 PROCESS_THREAD(shell_set_process, ev, data)
//  316 {
process_thread_shell_set_process:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+168
          CFI CFA R13+192
        MOV      R5,R0
        MOV      R7,R2
//  317 //	char *name;
//  318 	int argc,nDataLen = 0;
//  319 	int i = 0;
        MOVS     R6,#+0
//  320 	char *argv[MAX_SHELL_ARGV]={NULL};
        ADD      R0,SP,#+36
        MOVS     R1,#+128
          CFI FunCall __aeabi_memclr4
        BL       __aeabi_memclr4
//  321 	char *szCmdLine;
//  322 	unsigned char ubAnodeId[17]={0x00};
        ADD      R0,SP,#+16
        MOVS     R1,#+0
        MOV      R2,R1
        MOV      R3,R1
        STM      R0!,{R1-R3}
        STM      R0!,{R1,R2}
//  323 	static u_char ubaTidFrame[48] = {0};
//  324 
//  325 	PROCESS_BEGIN();
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.W    ??process_thread_shell_set_process_0
//  326 
//  327 	szCmdLine = data;
//  328 	argc = shell_cmdlinepro(szCmdLine, argv);
        ADD      R1,SP,#+36
        MOV      R0,R7
          CFI FunCall shell_cmdlinepro
        BL       shell_cmdlinepro
        MOV      R8,R0
//  329 
//  330 	if (argc > 0)
        CMP      R8,#+1
        BLT.W    ??process_thread_shell_set_process_0
//  331 	{
//  332 		for (i = 0; i < argc ; i++)
//  333 		{
//  334 			//set node addr
//  335 			if (strcmp_ex(argv[i], "id") == 0)//set id
??process_thread_shell_set_process_1:
        ADD      R7,SP,#+36
        ADR.N    R1,??process_thread_shell_set_process_2  ;; 0x69, 0x64, 0x00, 0x00
        LDR      R0,[R7, R6, LSL #+2]
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_3
//  336 			{
//  337 				if ((i + 1) < argc)
        ADDS     R0,R6,#+1
        CMP      R0,R8
        BGE.W    ??process_thread_shell_set_process_4
//  338 				{
//  339 					nDataLen = AscBcd2BcdHex(argv[i+1], (u_char*)&ubAnodeId[0], 0);
        ADD      R0,SP,#+36
        ADD      R0,R0,R6, LSL #+2
        MOVS     R2,#+0
        LDR      R0,[R0, #+4]
        ADD      R1,SP,#+16
          CFI FunCall AscBcd2BcdHex
        BL       AscBcd2BcdHex
        MOV      R7,R0
//  340 					XPRINTF((0, "nDataLen is %d\r\n", nDataLen));
        MOV      R2,R7
        ADR.W    R1,?_26
        MOVS     R0,#+0
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  341 					if (nDataLen)
        CMP      R7,#+0
        BEQ.W    ??process_thread_shell_set_process_4
//  342 					{
//  343 						NODE_ADDR_INFO *paddrInfo = NULL;
//  344 						linkaddr_set_node_addr((linkaddr_t *)&ubAnodeId[0]);
        ADD      R0,SP,#+16
          CFI FunCall linkaddr_set_node_addr
        BL       linkaddr_set_node_addr
//  345 						extgdbdevSetDeviceSettingInfoSt(LABLE_ADDR_INFO, 0, ubAnodeId, 8);
        MOVS     R3,#+8
        ADD      R2,SP,#+16
        MOVS     R1,#+0
        MOVS     R0,#+2
          CFI FunCall extgdbdevSetDeviceSettingInfoSt
        BL       extgdbdevSetDeviceSettingInfoSt
//  346 						MEM_DUMP(0, "inid", &ubAnodeId[0], 8);
        MOVS     R3,#+8
        ADD      R2,SP,#+16
        ADR.W    R1,?_27
        MOVS     R0,#+0
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  347 						paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R2,R0
//  348 						MEM_DUMP(0, "eeid", paddrInfo, 8);
        MOVS     R3,#+8
        ADR.W    R1,?_28
        MOVS     R0,#+0
          CFI FunCall __xstd_dump
        BL       __xstd_dump
        B.N      ??process_thread_shell_set_process_4
//  349 					}
//  350 				}
//  351 			}
//  352 
//  353 			//set node rf param power
//  354 			else if (strcmp_ex(argv[i], "rfp") == 0)
??process_thread_shell_set_process_3:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.N    R1,??DataTable60  ;; "rfp"
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_5
//  355 			{
//  356 				if ((i + 1) < argc)
        ADDS     R0,R6,#+1
        CMP      R0,R8
        BGE.W    ??process_thread_shell_set_process_4
//  357 				{
//  358 					set_rf_power(argv[i+1]);
        ADD      R0,SP,#+36
        ADD      R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
          CFI FunCall Asc2Int
        BL       Asc2Int
        MOV      R7,R0
        MOVS     R0,#+1
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R4,R0
        ADD      R0,SP,#+0
        MOV      R1,R4
        MOVS     R2,#+12
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall print_rfparam_info
        BL       print_rfparam_info
        UXTB     R7,R7
        CMP      R7,#+8
        BGE.W    ??process_thread_shell_set_process_4
        STRB     R7,[SP, #+1]
        MOVS     R3,#+12
        ADD      R2,SP,#+0
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall extgdbdevSetDeviceSettingInfoSt
        BL       extgdbdevSetDeviceSettingInfoSt
        MOVS     R1,#+1
        MOV      R0,R4
        B.N      ??process_thread_shell_set_process_6
//  359 				}
//  360 			}
//  361 			//set node rf param  channel
//  362 			else if (strcmp_ex(argv[i], "rfch") == 0)
??process_thread_shell_set_process_5:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_30
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_7
//  363 			{
//  364 				if ((i + 1) < argc)
        ADDS     R0,R6,#+1
        CMP      R0,R8
        BGE.W    ??process_thread_shell_set_process_4
//  365 				{
//  366 					set_rf_channel(argv[i+1]);
        ADD      R0,SP,#+36
        ADD      R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
          CFI FunCall Asc2Int
        BL       Asc2Int
        MOV      R7,R0
        MOVS     R0,#+1
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R4,R0
        ADD      R0,SP,#+0
        MOV      R1,R4
        MOVS     R2,#+12
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall print_rfparam_info
        BL       print_rfparam_info
        UXTB     R7,R7
        CMP      R7,#+34
        BGE.W    ??process_thread_shell_set_process_4
        STRB     R7,[SP, #+3]
        MOVS     R3,#+12
        ADD      R2,SP,#+0
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall extgdbdevSetDeviceSettingInfoSt
        BL       extgdbdevSetDeviceSettingInfoSt
        MOVS     R1,#+1
        MOV      R0,R4
        B.N      ??process_thread_shell_set_process_6
//  367 				}
//  368 			}
//  369 			//set node rf param ubnodetype
//  370 			else if (strcmp_ex(argv[i], "rfnodet") == 0)
??process_thread_shell_set_process_7:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_31
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_8
//  371 			{
//  372 				if ((i + 1) < argc)
        ADDS     R0,R6,#+1
        CMP      R0,R8
        BGE.W    ??process_thread_shell_set_process_4
//  373 				{
//  374 					set_rf_nodetype(argv[i+1]);
        ADD      R0,SP,#+36
        ADD      R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
          CFI FunCall Asc2Int
        BL       Asc2Int
        MOV      R7,R0
        MOVS     R0,#+1
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R4,R0
        ADD      R0,SP,#+0
        MOV      R1,R4
        MOVS     R2,#+12
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall print_rfparam_info
        BL       print_rfparam_info
        UXTB     R7,R7
        CMP      R7,#+2
        BGE.W    ??process_thread_shell_set_process_4
        STRB     R7,[SP, #+0]
        MOVS     R3,#+12
        ADD      R2,SP,#+0
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall extgdbdevSetDeviceSettingInfoSt
        BL       extgdbdevSetDeviceSettingInfoSt
        MOVS     R1,#+1
        MOV      R0,R4
        B.N      ??process_thread_shell_set_process_6
//  375 				}
//  376 			}
//  377 			//set node rf param rssi
//  378 			else if (strcmp_ex(argv[i], "rfrssi") == 0)
??process_thread_shell_set_process_8:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_32
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_9
//  379 			{
//  380 				if ((i + 1) < argc)
        ADDS     R0,R6,#+1
        CMP      R0,R8
        BGE.W    ??process_thread_shell_set_process_4
//  381 				{
//  382 					set_rf_rssi_limit(argv[i+1]);
        ADD      R0,SP,#+36
        ADD      R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
          CFI FunCall Asc2Int
        BL       Asc2Int
        MOV      R7,R0
        MOVS     R0,#+1
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R4,R0
        ADD      R0,SP,#+0
        MOV      R1,R4
        MOVS     R2,#+12
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall print_rfparam_info
        BL       print_rfparam_info
        UXTB     R7,R7
        CMP      R7,#+201
        BGE.W    ??process_thread_shell_set_process_4
        STRB     R7,[SP, #+2]
        MOVS     R3,#+12
        ADD      R2,SP,#+0
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall extgdbdevSetDeviceSettingInfoSt
        BL       extgdbdevSetDeviceSettingInfoSt
        MOVS     R1,#+1
        MOV      R0,R4
        B.N      ??process_thread_shell_set_process_6
//  383 				}
//  384 			}	
//  385 			else if (strcmp_ex(argv[i], "rfpid") == 0)
??process_thread_shell_set_process_9:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_33
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_10
//  386 			{
//  387 				if ((i + 1) < argc)
        ADDS     R0,R6,#+1
        CMP      R0,R8
        BGE.W    ??process_thread_shell_set_process_4
//  388 				{
//  389 					set_rf_panid(argv[i+1]);
        ADD      R0,SP,#+36
        ADD      R0,R0,R6, LSL #+2
        MOVS     R1,#+0
        LDR      R0,[R0, #+4]
        STRH     R1,[SP, #+12]
        MOVS     R2,#+0
        ADD      R1,SP,#+12
          CFI FunCall AscBcd2BcdHex
        BL       AscBcd2BcdHex
        MOV      R7,R0
        MOVS     R0,#+1
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R4,R0
        ADD      R0,SP,#+0
        MOV      R1,R4
        MOVS     R2,#+12
          CFI FunCall __aeabi_memcpy
        BL       __aeabi_memcpy
        MOVS     R1,#+0
        MOV      R0,R4
          CFI FunCall print_rfparam_info
        BL       print_rfparam_info
        CMP      R7,#+1
        IT       NE 
        CMPNE    R7,#+2
        BNE.W    ??process_thread_shell_set_process_4
        LDRH     R0,[SP, #+12]
        STRH     R0,[SP, #+10]
        MOVS     R3,#+12
        ADD      R2,SP,#+0
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall extgdbdevSetDeviceSettingInfoSt
        BL       extgdbdevSetDeviceSettingInfoSt
        MOVS     R1,#+1
        MOV      R0,R4
        B.N      ??process_thread_shell_set_process_6
//  390 				}
//  391 			}
//  392 
//  393 			//reset system
//  394 			else if (strcmp_ex(argv[i], "reboot") == 0)
??process_thread_shell_set_process_10:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_34
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_11
//  395 			{
//  396 				sysReset( );
          CFI FunCall sysReset
        BL       sysReset
        B.N      ??process_thread_shell_set_process_4
//  397 			}
//  398 
//  399 			else if (strcmp_ex(argv[i], "rfcfg") == 0)
??process_thread_shell_set_process_11:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_35
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_12
//  400 			{
//  401 				//RF_NODE_PARAM_CONFIG stRFCfg;
//  402 				const RF_NODE_PARAM_CONFIG *pRFCfg = NULL;
//  403 				pRFCfg = (const RF_NODE_PARAM_CONFIG *)extgdbdevGetDeviceSettingInfoSt(LABLE_RF_NODE_PARAM);
        MOVS     R0,#+1
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
//  404 				print_rfparam_info(pRFCfg, 0);
        MOVS     R1,#+0
??process_thread_shell_set_process_6:
          CFI FunCall print_rfparam_info
        BL       print_rfparam_info
        B.N      ??process_thread_shell_set_process_4
//  405 			}
//  406 			
//  407 			else if (strcmp_ex(argv[i], "gdb") == 0)
??process_thread_shell_set_process_12:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.N    R1,??DataTable63  ;; "gdb"
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_13
//  408 			{
//  409 				char gdbLevel;
//  410 				char *pgdb;
//  411 				extern char *get_gdbLevel( );
//  412 				gdbLevel = Asc2Int(argv[i+1]);	
        ADD      R0,SP,#+36
        ADD      R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+4]
          CFI FunCall Asc2Int
        BL       Asc2Int
        MOV      R7,R0
//  413 				pgdb = get_gdbLevel( );
          CFI FunCall get_gdbLevel
        BL       get_gdbLevel
//  414 				XPRINTF((0, "old gdb level is %d\r\n", *pgdb));
        ADR.W    R1,?_37
        MOV      R4,R0
        MOVS     R0,#+0
        LDRB     R2,[R4, #+0]
          CFI FunCall __xstd_printf
        BL       __xstd_printf
//  415 				*pgdb = gdbLevel;
//  416 				XPRINTF((0, "new gdb level is %d\r\n", *pgdb));
        ADR.W    R1,?_38
        STRB     R7,[R4, #+0]
        MOVS     R0,#+0
        LDRB     R2,[R4, #+0]
          CFI FunCall __xstd_printf
        BL       __xstd_printf
        B.N      ??process_thread_shell_set_process_4
//  417 			}
//  418 			else if (strcmp_ex(argv[i], "rfrst") == 0)//rf reset
??process_thread_shell_set_process_13:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_39
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CMP      R0,#+0
        BEQ.N    ??process_thread_shell_set_process_4
//  419 			{
//  420 				//si446x_recfg( );
//  421 			}
//  422 
//  423 			else if (strcmp_ex(argv[i], "rfrx") == 0)//rf reset
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_40
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CMP      R0,#+0
        BEQ.N    ??process_thread_shell_set_process_4
//  424 			{
//  425 				//si446xStartRX( );
//  426 			}
//  427 						
//  428 			else if (strcmp_ex(argv[i], "pa") == 0)
        LDR      R0,[R7, R6, LSL #+2]
        ADR.N    R1,??DataTable63_1  ;; 0x70, 0x61, 0x00, 0x00
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_14
//  429 			{	
//  430 				printMAC( );
        MOVS     R0,#+2
          CFI FunCall extgdbdevGetDeviceSettingInfoSt
        BL       extgdbdevGetDeviceSettingInfoSt
        MOV      R2,R0
        MOVS     R3,#+8
        ADR.N    R1,??DataTable63_2  ;; "mac"
        MOVS     R0,#+0
          CFI FunCall __xstd_dump
        BL       __xstd_dump
//  431 				process_request_u( );
          CFI FunCall process_request_u
        BL       process_request_u
        B.N      ??process_thread_shell_set_process_4
        DATA
??process_thread_shell_set_process_2:
        DC8      0x69, 0x64, 0x00, 0x00
        THUMB
//  432 			}
//  433 			else if (strcmp_ex(argv[i], "nmac") == 0)
??process_thread_shell_set_process_14:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_42
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_15
//  434 			{
//  435 				endNodeListPrint( ); 
          CFI FunCall endNodeListPrint
        BL       endNodeListPrint
        B.N      ??process_thread_shell_set_process_4
//  436 			}
//  437 			else if (strcmp_ex(argv[i], "gack") == 0)
??process_thread_shell_set_process_15:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_43
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_16
//  438 			{
//  439 				testGprsAck( );
          CFI FunCall testGprsAck
        BL       testGprsAck
        B.N      ??process_thread_shell_set_process_4
//  440 			}
//  441 			else if (strcmp_ex(argv[i], "gsync") == 0)
??process_thread_shell_set_process_16:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_44
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_17
//  442 			{
//  443 				testGprsSync( );
          CFI FunCall testGprsSync
        BL       testGprsSync
        B.N      ??process_thread_shell_set_process_4
//  444 			}
//  445 			else if (strcmp_ex(argv[i], "gfire") == 0)
??process_thread_shell_set_process_17:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_45
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_18
//  446 			{
//  447 				testNodeInfo( );
          CFI FunCall testNodeInfo
        BL       testNodeInfo
        B.N      ??process_thread_shell_set_process_4
//  448 			}
//  449 			else if (strcmp_ex(argv[i], "sms") == 0)
??process_thread_shell_set_process_18:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.N    R1,??DataTable64  ;; "sms"
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_19
//  450 			{
//  451 				testGprsSmsPhone( );
          CFI FunCall testGprsSmsPhone
        BL       testGprsSmsPhone
        B.N      ??process_thread_shell_set_process_4
//  452 			}
//  453 			else if (strcmp_ex(argv[i], "hcpc")==0)
??process_thread_shell_set_process_19:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_47
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_20
//  454 			{
//  455 				ip64_print_dhcpc_info( );
          CFI FunCall ip64_print_dhcpc_info
        BL       ip64_print_dhcpc_info
        B.N      ??process_thread_shell_set_process_4
//  456 			}
//  457 			else if (strcmp_ex(argv[i], "fclean") == 0)
??process_thread_shell_set_process_20:
        LDR      R0,[R7, R6, LSL #+2]
        ADR.W    R1,?_48
          CFI FunCall strcmp_ex
        BL       strcmp_ex
        CBNZ.N   R0,??process_thread_shell_set_process_4
//  458 			{
//  459 				gfireClean( );
          CFI FunCall gfireClean
        BL       gfireClean
//  460 			}			
//  461 		}
??process_thread_shell_set_process_4:
        ADDS     R6,R6,#+1
        CMP      R6,R8
        BLT.W    ??process_thread_shell_set_process_1
//  462 	}
//  463 	
//  464 	PROCESS_END();
??process_thread_shell_set_process_0:
        MOVS     R0,#+0
        STRH     R0,[R5, #+0]
        ADD      SP,SP,#+168
          CFI CFA R13+24
        MOVS     R0,#+3
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock1
//  465 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable60:
        DC8      "rfp"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_0:
        DC8 "Shell"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_1:
        DC8 "Shell server"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_2:
        DC8 "help"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_3:
        DC8 "help: shows this help"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_4:
        DC8 "killall"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_5:
        DC8 "killall: stop all running commands"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_6:
        DC8 "kill"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_7:
        DC8 "kill <command>: stop a specific command"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_10:
        DC8 "null"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_11:
        DC8 "exit"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_12:
        DC8 "set param"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(1)
        DATA
?_8:
        DC8 "s"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_9:
        DC8 "ser: set node param"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_23:
        DC8 "mac"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_24:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_25:
        DC8 "id"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_29:
        DC8 "rfp"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_36:
        DC8 "gdb"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_41:
        DC8 "pa"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_46:
        DC8 "sms"

        SECTION `.rodata`:CONST:NOROOT(0)
        DATA
?_51:
        DC8 ""

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
?_57:
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//  466 
//  467 
//  468 	      
//  469 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function process_thread_shell_null_process
          CFI NoCalls
        THUMB
//  470 PROCESS_THREAD(shell_null_process, ev, data)
//  471 {
//  472   struct shell_input *input;
//  473   PROCESS_BEGIN();
process_thread_shell_null_process:
        LDRH     R3,[R0, #+0]
        CBZ.N    R3,??process_thread_shell_null_process_0
        MOVW     R12,#+475
        CMP      R3,R12
        BEQ.N    ??process_thread_shell_null_process_1
        B.N      ??process_thread_shell_null_process_2
//  474   while(1) {
//  475     PROCESS_WAIT_EVENT_UNTIL(ev == shell_event_input);
??process_thread_shell_null_process_0:
        MOVW     R1,#+475
        STRH     R1,[R0, #+0]
        B.N      ??process_thread_shell_null_process_3
??process_thread_shell_null_process_1:
        LDR.W    R3,??DataTable77_2
        LDR      R3,[R3, #+0]
        CMP      R1,R3
        BEQ.N    ??process_thread_shell_null_process_4
??process_thread_shell_null_process_3:
        MOVS     R0,#+1
        BX       LR
//  476     input = data;
//  477 
//  478     if(input->len1 + input->len2 == 0) {
??process_thread_shell_null_process_4:
        LDR      R1,[R2, #+8]
        LDR      R2,[R2, #+12]
        ADDS     R1,R2,R1
        BNE.N    ??process_thread_shell_null_process_0
//  479       PROCESS_EXIT();
        STRH     R1,[R0, #+0]
        MOVS     R0,#+2
        BX       LR
//  480     }
//  481   }
//  482   PROCESS_END();
??process_thread_shell_null_process_2:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R0,#+3
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  483 }
//  484 /*---------------------------------------------------------------------------*/
//  485 static void
//  486 command_kill(struct shell_command *c)
//  487 {
//  488   if(c != NULL) {
//  489     shell_output_str(&killall_command, "Stopping command ", c->command);
//  490     process_exit(c->process);
//  491   }
//  492 }
//  493 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function killall
        THUMB
//  494 static void
//  495 killall(void)
//  496 {
killall:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  497   struct shell_command *c;
//  498   for(c = list_head(commands);
        LDR.W    R4,??DataTable77_2
        ADD      R0,R4,#+16
          CFI FunCall list_head
        BL       list_head
        MOV      R5,R0
        ADR.W    R6,?_49
        B.N      ??killall_0
//  499       c != NULL;
//  500       c = c->next) {
//  501     if(c != &killall_command && process_is_running(c->process)) {
??killall_1:
        ADD      R0,R4,#+72
        CMP      R5,R0
        BEQ.N    ??killall_2
        LDR      R0,[R5, #+12]
          CFI FunCall process_is_running
        BL       process_is_running
        CBZ.N    R0,??killall_2
        LDR      R2,[R5, #+4]
        MOV      R1,R6
        ADD      R0,R4,#+72
          CFI FunCall shell_output_str
        BL       shell_output_str
        LDR      R0,[R5, #+12]
          CFI FunCall process_exit
        BL       process_exit
//  502       command_kill(c);
//  503     }
//  504   }
??killall_2:
        LDR      R5,[R5, #+0]
??killall_0:
        CMP      R5,#+0
        BNE.N    ??killall_1
//  505 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock3
//  506 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function process_thread_shell_killall_process
        THUMB
//  507 PROCESS_THREAD(shell_killall_process, ev, data)
//  508 {
process_thread_shell_killall_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  509 
//  510   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBNZ.N   R0,??process_thread_shell_killall_process_0
//  511 
//  512   killall();
          CFI FunCall killall
        BL       killall
//  513   
//  514   PROCESS_END();
??process_thread_shell_killall_process_0:
        B.N      ?Subroutine1
          CFI EndBlock cfiBlock4
//  515 }
//  516 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function process_thread_shell_kill_process
        THUMB
//  517 PROCESS_THREAD(shell_kill_process, ev, data)
//  518 {
process_thread_shell_kill_process:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
        MOV      R5,R2
//  519   struct shell_command *c;
//  520   char *name;
//  521   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??process_thread_shell_kill_process_0
//  522 
//  523   name = data;
//  524   if(name == NULL || strlen(name) == 0) {
        LDR.W    R6,??DataTable77_2
        CBZ.N    R5,??process_thread_shell_kill_process_1
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        CBNZ.N   R0,??process_thread_shell_kill_process_2
//  525     shell_output_str(&kill_command,
//  526 		     "kill <command>: command name must be given", "");
??process_thread_shell_kill_process_1:
        ADR.N    R2,??DataTable66  ;; ""
        ADR.W    R1,?_50
        ADD      R0,R6,#+92
          CFI FunCall shell_output_str
        BL       shell_output_str
//  527   }
//  528 
//  529   for(c = list_head(commands);
??process_thread_shell_kill_process_2:
        ADD      R0,R6,#+16
          CFI FunCall list_head
        BL       list_head
        MOV      R7,R0
        B.N      ??process_thread_shell_kill_process_3
//  530       c != NULL;
//  531       c = c->next) {
??process_thread_shell_kill_process_4:
        LDR      R7,[R7, #+0]
??process_thread_shell_kill_process_3:
        CBZ.N    R7,??process_thread_shell_kill_process_5
//  532     if(strcmp(name, c->command) == 0 &&
//  533        c != &kill_command &&
//  534        process_is_running(c->process)) {
        LDR      R1,[R7, #+4]
        MOV      R0,R5
          CFI FunCall strcmp
        BL       strcmp
        CMP      R0,#+0
        BNE.N    ??process_thread_shell_kill_process_4
        ADD      R0,R6,#+92
        CMP      R7,R0
        BEQ.N    ??process_thread_shell_kill_process_4
        LDR      R0,[R7, #+12]
          CFI FunCall process_is_running
        BL       process_is_running
        CMP      R0,#+0
        BEQ.N    ??process_thread_shell_kill_process_4
        LDR      R2,[R7, #+4]
        ADR.W    R1,?_49
        ADD      R0,R6,#+72
          CFI FunCall shell_output_str
        BL       shell_output_str
        LDR      R0,[R7, #+12]
          CFI FunCall process_exit
        BL       process_exit
//  535       command_kill(c);
//  536       PROCESS_EXIT();
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        POP      {R1,R4-R7,PC}
//  537     }
//  538   }
//  539 
//  540   shell_output_str(&kill_command, "Command not found: ", name);
??process_thread_shell_kill_process_5:
        MOV      R2,R5
        ADR.W    R1,?_52
        ADD      R0,R6,#+92
          CFI FunCall shell_output_str
        BL       shell_output_str
//  541   
//  542   PROCESS_END();
??process_thread_shell_kill_process_0:
        B.N      ?Subroutine2
          CFI EndBlock cfiBlock5
//  543 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable63:
        DC8      "gdb"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable63_1:
        DC8      0x70, 0x61, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable63_2:
        DC8      "mac"
//  544 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function process_thread_help_command_process
        THUMB
//  545 PROCESS_THREAD(help_command_process, ev, data)
//  546 {
process_thread_help_command_process:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  547   struct shell_command *c;
//  548   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBNZ.N   R0,??process_thread_help_command_process_0
//  549 
//  550   shell_output_str(&help_command, "Available commands:", "");
        LDR.W    R5,??DataTable77_2
        ADR.W    R1,?_53
        ADR.N    R6,??DataTable66  ;; ""
        MOV      R2,R6
        ADD      R0,R5,#+52
          CFI FunCall shell_output_str
        BL       shell_output_str
//  551   for(c = list_head(commands);
        ADD      R0,R5,#+16
          CFI FunCall list_head
        BL       list_head
        MOV      R7,R0
        B.N      ??process_thread_help_command_process_1
//  552       c != NULL;
//  553       c = c->next) {
//  554     shell_output_str(&help_command, c->description, "");
??process_thread_help_command_process_2:
        LDR      R1,[R7, #+8]
        MOV      R2,R6
        ADD      R0,R5,#+52
          CFI FunCall shell_output_str
        BL       shell_output_str
//  555   }
        LDR      R7,[R7, #+0]
??process_thread_help_command_process_1:
        CMP      R7,#+0
        BNE.N    ??process_thread_help_command_process_2
          CFI EndBlock cfiBlock6
//  556 
//  557   PROCESS_END();
??process_thread_help_command_process_0:
        REQUIRE ?Subroutine2
        ;; // Fall through to label ?Subroutine2
//  558 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls process_thread_shell_kill_process
          CFI NoCalls process_thread_help_command_process
          CFI CFA R13+24
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock7
//  559 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function process_thread_shell_exit_process
        THUMB
//  560 PROCESS_THREAD(shell_exit_process, ev, data)
//  561 {
process_thread_shell_exit_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  562   PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        CBNZ.N   R0,??process_thread_shell_exit_process_0
//  563 
//  564   shell_exit();
          CFI FunCall shell_exit
        BL       shell_exit
          CFI EndBlock cfiBlock8
//  565 
//  566   PROCESS_END();
??process_thread_shell_exit_process_0:
        REQUIRE ?Subroutine1
        ;; // Fall through to label ?Subroutine1
//  567 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls process_thread_shell_killall_process
          CFI NoCalls process_thread_shell_exit_process
          CFI CFA R13+8
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine1:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock9
//  568 /*---------------------------------------------------------------------------*/
//  569 static void
//  570 replace_braces(char *commandline)
//  571 {
//  572 	char *ptr;
//  573 	int level = 0;
//  574 
//  575 	for(ptr = commandline; *ptr != 0; ++ptr) 
//  576 	{
//  577 		if(*ptr == '{') 
//  578 		{
//  579 			if(level == 0) 
//  580 			{
//  581 				*ptr = ' ';
//  582 			}
//  583 			++level;
//  584 		} 
//  585 		else if(*ptr == '}') 
//  586 		{
//  587 			--level;
//  588 			if(level == 0) 
//  589 			{
//  590 				*ptr = ' ';
//  591 			}
//  592 		}
//  593 	}
//  594 }
//  595 /*---------------------------------------------------------------------------*/
//  596 static char *
//  597 find_pipe(char *commandline)
//  598 {
//  599 	char *ptr;
//  600 	int level = 0;
//  601 
//  602 	for(ptr = commandline; *ptr != 0; ++ptr) 
//  603 	{
//  604 		if(*ptr == '{') 
//  605 		{
//  606 			++level;
//  607 		} 
//  608 		else if(*ptr == '}') 
//  609 		{
//  610 			--level;
//  611 		}
//  612 		else if(*ptr == '|') 
//  613 		{
//  614 			if(level == 0)
//  615 			{
//  616 				return ptr;
//  617 			}
//  618 		}
//  619 	}
//  620 	return NULL;
//  621 }
//  622 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function start_command
        THUMB
//  623 static struct shell_command *
//  624 start_command(char *commandline, struct shell_command *child)
//  625 {
start_command:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOV      R5,R0
        MOV      R4,R1
        B.N      ??start_command_0
//  626   char *next, *args;
//  627   int command_len;
//  628   struct shell_command *c;
//  629 
//  630   /* Shave off any leading spaces. */
//  631   while(*commandline == ' ') {
//  632     commandline++;
??start_command_1:
        ADDS     R5,R5,#+1
//  633   }
??start_command_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+32
        BEQ.N    ??start_command_1
//  634 
//  635   /* Find the next command in a pipeline and start it. */
//  636   next = find_pipe(commandline);
        MOVS     R0,#+0
        MOV      R2,R5
        B.N      ??start_command_2
??start_command_3:
        ADDS     R0,R0,#+1
??start_command_4:
        ADDS     R2,R2,#+1
??start_command_2:
        LDRB     R1,[R2, #+0]
        CBZ.N    R1,??start_command_5
        CMP      R1,#+123
        BEQ.N    ??start_command_3
        CMP      R1,#+125
        IT       EQ 
        SUBEQ    R0,R0,#+1
        BEQ.N    ??start_command_4
        CMP      R1,#+124
        IT       EQ 
        CMPEQ    R0,#+0
        BNE.N    ??start_command_4
//  637   if(next != NULL) {
        CBZ.N    R2,??start_command_5
//  638     *next = 0;
        STRB     R0,[R2, #+0]
//  639     child = start_command(next + 1, child);
        MOV      R1,R4
        ADDS     R0,R2,#+1
          CFI FunCall start_command
        BL       start_command
        MOV      R4,R0
//  640   }
//  641 
//  642   /* Separate the command arguments, and remove braces. */
//  643   replace_braces(commandline);
??start_command_5:
        MOVS     R0,#+0
        MOV      R1,R5
        B.N      ??start_command_6
??start_command_7:
        CMP      R2,#+125
        BNE.N    ??start_command_8
        SUBS     R0,R0,#+1
        ITT      EQ 
        MOVEQ    R2,#+32
        STRBEQ   R2,[R1, #+0]
??start_command_8:
        ADDS     R1,R1,#+1
??start_command_6:
        LDRB     R2,[R1, #+0]
        CBZ.N    R2,??start_command_9
        CMP      R2,#+123
        BNE.N    ??start_command_7
        CBNZ.N   R0,??start_command_10
        MOVS     R2,#+32
        STRB     R2,[R1, #+0]
??start_command_10:
        ADDS     R0,R0,#+1
        B.N      ??start_command_8
//  644   args = strchr(commandline, ' ');
??start_command_9:
        MOVS     R1,#+32
        MOV      R0,R5
          CFI FunCall __iar_Strchr
        BL       __iar_Strchr
        MOVS     R6,R0
//  645   if(args != NULL) {
        IT       NE 
        ADDNE    R6,R6,#+1
//  646     args++;
//  647   }
//  648 
//  649   /* Shave off any trailing spaces. */
//  650   command_len = (int)strlen(commandline);
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        ADDS     R1,R0,R5
        SUBS     R1,R1,#+1
        B.N      ??start_command_11
//  651   while(command_len > 0 && commandline[command_len - 1] == ' ') {
//  652     commandline[command_len - 1] = 0;
??start_command_12:
        MOVS     R2,#+0
        STRB     R2,[R1], #-1
//  653     command_len--;
        SUBS     R0,R0,#+1
//  654   }
??start_command_11:
        CMP      R0,#+1
        BLT.N    ??start_command_13
        LDRB     R2,[R1, #+0]
        CMP      R2,#+32
        BEQ.N    ??start_command_12
//  655   
//  656   if(args == NULL) {
??start_command_13:
        CBNZ.N   R6,??start_command_14
//  657     command_len = (int)strlen(commandline);
        MOV      R0,R5
          CFI FunCall strlen
        BL       strlen
        MOV      R8,R0
//  658     args = &commandline[command_len];
        ADD      R6,R8,R5
        B.N      ??start_command_15
//  659   } else {
//  660     command_len = (int)(args - commandline - 1);
??start_command_14:
        SUBS     R0,R6,R5
        SUB      R8,R0,#+1
//  661   }
//  662   
//  663 
//  664   
//  665   /* Go through list of commands to find a match for the first word in
//  666      the command line. */
//  667   for(c = list_head(commands);
??start_command_15:
        LDR.W    R9,??DataTable77_2
        ADD      R0,R9,#+16
          CFI FunCall list_head
        BL       list_head
        MOV      R7,R0
        B.N      ??start_command_16
//  668       c != NULL &&
//  669 	!(strncmp(c->command, commandline, command_len) == 0 &&
//  670 	  c->command[command_len] == 0);
??start_command_17:
        LDR      R10,[R7, #+4]
        MOV      R2,R8
        MOV      R1,R5
        MOV      R0,R10
          CFI FunCall strncmp
        BL       strncmp
        CMP      R0,#+0
        ITT      EQ 
        LDRBEQ   R0,[R8, R10]
        CMPEQ    R0,#+0
        BEQ.N    ??start_command_18
//  671       c = c->next);
        LDR      R7,[R7, #+0]
??start_command_16:
        CMP      R7,#+0
        BNE.N    ??start_command_17
//  672   
//  673   if(c == NULL) {
//  674     shell_output_str(NULL, commandline, ": command not found (try 'help')");
        ADR.W    R2,?_54
        MOV      R1,R5
        MOVS     R0,#+0
          CFI FunCall shell_output_str
        BL       shell_output_str
//  675     command_kill(child);
        CBZ.N    R4,??start_command_19
        LDR      R2,[R4, #+4]
        ADR.W    R1,?_49
        ADD      R0,R9,#+72
          CFI FunCall shell_output_str
        BL       shell_output_str
        LDR      R0,[R4, #+12]
          CFI FunCall process_exit
        BL       process_exit
        B.N      ??start_command_19
//  676     c = NULL;
//  677   } else if(process_is_running(c->process) || child == c) {
??start_command_18:
        LDR      R0,[R7, #+12]
          CFI FunCall process_is_running
        BL       process_is_running
        CBNZ.N   R0,??start_command_20
        CMP      R4,R7
        BNE.N    ??start_command_21
//  678     shell_output_str(NULL, commandline, ": command already running");
??start_command_20:
        ADR.W    R2,?_55
        MOV      R1,R5
        MOVS     R0,#+0
          CFI FunCall shell_output_str
        BL       shell_output_str
//  679     c->child = NULL;
        MOVS     R0,#+0
        STR      R0,[R7, #+16]
//  680     c = NULL;
        MOVS     R7,#+0
        B.N      ??start_command_19
//  681   } else {
//  682     c->child = child;
??start_command_21:
        STR      R4,[R7, #+16]
//  683     /*    printf("shell: start_command starting '%s'\n", c->process->name);*/
//  684     /* Start a new process for the command. */
//  685     process_start(c->process, args);
        MOV      R1,R6
        LDR      R0,[R7, #+12]
          CFI FunCall process_start
        BL       process_start
//  686   }
//  687   
//  688   return c;
??start_command_19:
        MOV      R0,R7
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock10
//  689 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable64:
        DC8      "sms"
//  690 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function shell_start_command
        THUMB
//  691 int
//  692 shell_start_command(char *commandline, int commandline_len,
//  693 		    struct shell_command *child,
//  694 		    struct process **started_process)
//  695 {
shell_start_command:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R3
//  696   struct shell_command *c;
//  697   int background = 0;
        MOVS     R5,#+0
//  698 
//  699   if(commandline_len == 0) {
        CBNZ.N   R1,??shell_start_command_0
//  700     if(started_process != NULL) {
        CBZ.N    R4,??shell_start_command_1
//  701       *started_process = NULL;
        STR      R5,[R4, #+0]
//  702     }
//  703     return SHELL_NOTHING;
//  704   }
//  705 
//  706   if(commandline[commandline_len - 1] == '&') {
//  707     commandline[commandline_len - 1] = 0;
//  708     background = 1;
//  709     commandline_len--;
//  710   }
//  711 
//  712   c = start_command(commandline, child);
//  713 
//  714   /* Return a pointer to the started process, so that the caller can
//  715      wait for the process to complete. */
//  716   if(c != NULL && started_process != NULL) {
//  717     *started_process = c->process;
//  718     if(background) {
//  719       return SHELL_BACKGROUND;
//  720     } else {
//  721       return SHELL_FOREGROUND;
//  722     }
//  723   }
//  724   return SHELL_NOTHING;
??shell_start_command_1:
        MOVS     R0,#+2
        POP      {R1,R4,R5,PC}    ;; return
??shell_start_command_0:
        ADDS     R3,R1,R0
        LDRB     R3,[R3, #-1]
        CMP      R3,#+38
        BNE.N    ??shell_start_command_2
        ADDS     R5,R1,R0
        MOVS     R3,#+0
        STRB     R3,[R5, #-1]
        MOVS     R5,#+1
??shell_start_command_2:
        MOV      R1,R2
          CFI FunCall start_command
        BL       start_command
        CMP      R0,#+0
        IT       NE 
        CMPNE    R4,#+0
        BEQ.N    ??shell_start_command_1
        LDR      R0,[R0, #+12]
        STR      R0,[R4, #+0]
        CBZ.N    R5,??shell_start_command_3
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
??shell_start_command_3:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}
          CFI EndBlock cfiBlock11
//  725 }
//  726 /*---------------------------------------------------------------------------*/
//  727 static void
//  728 input_to_child_command(struct shell_command *c,
//  729 		       char *data1, int len1,
//  730 		       const char *data2, int len2)
//  731 {
//  732   struct shell_input input;
//  733   if(process_is_running(c->process)) {
//  734     input.data1 = data1;
//  735     input.len1 = len1;
//  736     input.data2 = data2;
//  737     input.len2 = len2;
//  738     process_post_synch(c->process, shell_event_input, &input);
//  739   }
//  740 }
//  741 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function shell_input
        THUMB
//  742 void
//  743 shell_input(char *commandline, int commandline_len)
//  744 {
shell_input:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R5,R0
        SUB      SP,SP,#+16
          CFI CFA R13+32
//  745   struct shell_input input;
//  746 
//  747   /*  printf("shell_input front_process '%s'\n", front_process->name);*/
//  748 
//  749   if(commandline[0] == '~' &&
//  750      commandline[1] == 'K') {
        LDRB     R0,[R5, #+0]
        CMP      R0,#+126
        ITT      EQ 
        LDRBEQ   R0,[R5, #+1]
        CMPEQ    R0,#+75
        MOV      R6,R1
        BNE.N    ??shell_input_0
//  751     /*    process_start(&shell_killall_process, commandline);*/
//  752     if(front_process != &shell_process) {
        LDR.W    R4,??DataTable77_2
        LDR      R0,[R4, #+4]
        ADD      R1,R4,#+20
        CMP      R0,R1
        BEQ.N    ??shell_input_1
//  753       process_exit(front_process);
          CFI FunCall process_exit
        BL       process_exit
//  754     }
//  755   } else {
//  756     if(process_is_running(front_process)) {
//  757       input.data1 = commandline;
//  758       input.len1 = commandline_len;
//  759       input.data2 = "";
//  760       input.len2 = 0;
//  761       process_post_synch(front_process, shell_event_input, &input);
//  762     }
//  763   }
//  764 }
        ADD      SP,SP,#+16
          CFI CFA R13+16
        POP      {R4-R6,PC}
          CFI CFA R13+32
??shell_input_0:
        LDR.W    R4,??DataTable77_2
        LDR      R0,[R4, #+4]
          CFI FunCall process_is_running
        BL       process_is_running
        CBZ.N    R0,??shell_input_1
        LDR      R1,[R4, #+0]
        STR      R5,[SP, #+0]
        ADR.N    R0,??DataTable68  ;; ""
        STR      R0,[SP, #+4]
        STR      R6,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        ADD      R2,SP,#+0
        LDR      R0,[R4, #+4]
        UXTB     R1,R1
          CFI FunCall process_post_synch
        BL       process_post_synch
??shell_input_1:
        ADD      SP,SP,#+16
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock12
//  765 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function shell_output_str
        THUMB
//  766 void
//  767 shell_output_str(struct shell_command *c, char *text1, const char *text2)
//  768 {
shell_output_str:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+16
          CFI CFA R13+40
//  769   if(c != NULL && c->child != NULL) {
        CMP      R0,#+0
        ITT      NE 
        LDRNE    R4,[R0, #+16]
        CMPNE    R4,#+0
        MOV      R7,R1
        MOV      R6,R2
        BEQ.N    ??shell_output_str_0
//  770     input_to_child_command(c->child, text1, (int)strlen(text1),
//  771 			   text2, (int)strlen(text2));
        MOV      R0,R6
          CFI FunCall strlen
        BL       strlen
        MOV      R5,R0
        MOV      R0,R7
          CFI FunCall strlen
        BL       strlen
        MOV      R8,R0
        LDR      R0,[R4, #+12]
          CFI FunCall process_is_running
        BL       process_is_running
        CBZ.N    R0,??shell_output_str_1
        LDR.W    R0,??DataTable77_2
        LDR      R1,[R0, #+0]
        STR      R7,[SP, #+0]
        STR      R8,[SP, #+8]
        STR      R6,[SP, #+4]
        STR      R5,[SP, #+12]
        ADD      R2,SP,#+0
        LDR      R0,[R4, #+12]
        B.N      ?Subroutine0
//  772   } else {
//  773     shell_default_output(text1, (int)strlen(text1),
//  774 			 text2, (int)strlen(text2));
??shell_output_str_0:
        MOV      R0,R6
          CFI FunCall strlen
        BL       strlen
        MOV      R4,R0
        MOV      R0,R7
          CFI FunCall strlen
        BL       strlen
        MOV      R1,R0
        MOV      R3,R4
        MOV      R2,R6
        MOV      R0,R7
          CFI FunCall shell_default_output
        BL       shell_default_output
//  775   }
//  776 }
??shell_output_str_1:
        B.N      ??Subroutine3_0
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable66:
        DC8      "",0x0,0x0,0x0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI NoFunction
          CFI CFA R13+40
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
?Subroutine0:
        UXTB     R1,R1
          CFI FunCall shell_output_str process_post_synch
          CFI FunCall shell_output process_post_synch
        BL       process_post_synch
          CFI EndBlock cfiBlock14
        REQUIRE ??Subroutine3_0
        ;; // Fall through to label ??Subroutine3_0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI NoFunction
          CFI NoCalls shell_output
          CFI NoCalls shell_output_str
          CFI CFA R13+40
          CFI R4 Frame(CFA, -24)
          CFI R5 Frame(CFA, -20)
          CFI R6 Frame(CFA, -16)
          CFI R7 Frame(CFA, -12)
          CFI R8 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
        THUMB
??Subroutine3_0:
        ADD      SP,SP,#+16
          CFI CFA R13+24
        POP      {R4-R8,PC}
          CFI EndBlock cfiBlock15
//  777 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function shell_output
        THUMB
//  778 void
//  779 shell_output(struct shell_command *c,
//  780 	     void *data1, int len1,
//  781 	     const void *data2, int len2)
//  782 {
shell_output:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+16
          CFI CFA R13+40
//  783   if(c != NULL && c->child != NULL) {
        CMP      R0,#+0
        LDR      R4,[SP, #+40]
        ITT      NE 
        LDRNE    R5,[R0, #+16]
        CMPNE    R5,#+0
        MOV      R6,R1
        MOV      R7,R2
        MOV      R8,R3
        BEQ.N    ??shell_output_0
//  784     input_to_child_command(c->child, data1, len1, data2, len2);
        LDR      R0,[R5, #+12]
          CFI FunCall process_is_running
        BL       process_is_running
        CBZ.N    R0,??shell_output_1
        LDR.N    R0,??DataTable77_2
        LDR      R1,[R0, #+0]
        STR      R6,[SP, #+0]
        STR      R7,[SP, #+8]
        STR      R8,[SP, #+4]
        STR      R4,[SP, #+12]
        ADD      R2,SP,#+0
        LDR      R0,[R5, #+12]
        B.N      ?Subroutine0
//  785   } else {
//  786     shell_default_output(data1, len1, data2, len2);
??shell_output_0:
        MOV      R3,R4
        MOV      R2,R8
        MOV      R1,R7
        MOV      R0,R6
          CFI FunCall shell_default_output
        BL       shell_default_output
//  787   }
//  788 }
??shell_output_1:
        B.N      ??Subroutine3_0
          CFI EndBlock cfiBlock16
//  789 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function shell_unregister_command
        THUMB
//  790 void
//  791 shell_unregister_command(struct shell_command *c)
//  792 {
//  793   list_remove(commands, c);
shell_unregister_command:
        MOV      R1,R0
        LDR.N    R0,??DataTable77_3
          CFI FunCall list_remove
        B.W      list_remove
          CFI EndBlock cfiBlock17
//  794 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable68:
        DC8      "",0x0,0x0,0x0
//  795 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function shell_register_command
        THUMB
//  796 void
//  797 shell_register_command(struct shell_command *c)
//  798 {
shell_register_command:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOV      R4,R0
//  799   struct shell_command *i, *p;
//  800 
//  801   p = NULL;
//  802   for(i = list_head(commands);
        LDR.N    R6,??DataTable77_2
        MOVS     R5,#+0
        ADD      R0,R6,#+16
          CFI FunCall list_head
        BL       list_head
        MOV      R7,R0
        B.N      ??shell_register_command_0
//  803       i != NULL &&
//  804 	strcmp(i->command, c->command) < 0;
//  805       i = i->next) {
//  806     p = i;
??shell_register_command_1:
        MOV      R5,R7
//  807   }
        LDR      R7,[R7, #+0]
??shell_register_command_0:
        CBZ.N    R7,??shell_register_command_2
        LDR      R1,[R4, #+4]
        LDR      R0,[R7, #+4]
          CFI FunCall strcmp
        BL       strcmp
        CMP      R0,#+0
        BMI.N    ??shell_register_command_1
//  808   if(p == NULL) {
??shell_register_command_2:
        CBNZ.N   R5,??shell_register_command_3
//  809     list_push(commands, c);
        MOV      R1,R4
        ADD      R0,R6,#+16
        POP      {R2,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall list_push
        B.W      list_push
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  810   } else if(i == NULL) {
??shell_register_command_3:
        CBNZ.N   R7,??shell_register_command_4
//  811     list_add(commands, c);
        MOV      R1,R4
        ADD      R0,R6,#+16
        POP      {R2,R4-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall list_add
        B.W      list_add
          CFI R4 Frame(CFA, -20)
          CFI R5 Frame(CFA, -16)
          CFI R6 Frame(CFA, -12)
          CFI R7 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+24
//  812   } else {
//  813     list_insert(commands, p, c);
??shell_register_command_4:
        MOV      R2,R4
        MOV      R1,R5
        ADD      R0,R6,#+16
        POP      {R3-R7,LR}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall list_insert
        B.W      list_insert
          CFI EndBlock cfiBlock18
//  814   }
//  815 }
//  816 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function process_thread_shell_process
        THUMB
//  817 PROCESS_THREAD(shell_process, ev, data)
//  818 {
process_thread_shell_process:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOV      R4,R0
        MOV      R0,R2
//  819 	static struct process *started_process;
//  820 	struct shell_input *input;
//  821 	int ret;
//  822 	PROCESS_BEGIN();
        LDRH     R2,[R4, #+0]
        CBZ.N    R2,??process_thread_shell_process_0
        MOVW     R3,#+825
        SUBS     R2,R2,R3
        BEQ.N    ??process_thread_shell_process_1
        SUBS     R2,R2,#+6
        BEQ.N    ??process_thread_shell_process_2
        SUBS     R2,R2,#+10
        BEQ.N    ??process_thread_shell_process_3
        B.N      ??process_thread_shell_process_4
//  823 
//  824 	/* Let the system start up before showing the prompt. */
//  825 	PROCESS_PAUSE();
??process_thread_shell_process_0:
        LDR.N    R0,??DataTable77_4
        LDR      R0,[R0, #+0]
        MOVS     R1,#+133
          CFI FunCall process_post
        BL       process_post
        MOVW     R0,#+825
        B.N      ??process_thread_shell_process_5
??process_thread_shell_process_1:
        CMP      R1,#+133
        BNE.N    ??process_thread_shell_process_6
//  826 
//  827 	while(1) 
//  828 	{
//  829 		shell_prompt((char *)shell_prompt_text);
??process_thread_shell_process_7:
        ADR.W    R0,shell_prompt_text
          CFI FunCall shell_prompt
        BL       shell_prompt
//  830 
//  831 		PROCESS_WAIT_EVENT_UNTIL(ev == shell_event_input);
        MOVW     R0,#+831
        B.N      ??process_thread_shell_process_5
??process_thread_shell_process_2:
        LDR.N    R5,??DataTable77_2
        LDR      R2,[R5, #+0]
        CMP      R1,R2
        BNE.N    ??process_thread_shell_process_6
//  832 		//XPRINTF((0, "INPUT\r\n"));
//  833 		//shell_prompt("input");
//  834 		{
//  835 		input = data;
//  836 		ret = shell_start_command(input->data1, input->len1, NULL, &started_process);
        LDR      R1,[R0, #+8]
        LDR      R0,[R0, #+0]
        ADD      R3,R5,#+12
        MOVS     R2,#+0
          CFI FunCall shell_start_command
        BL       shell_start_command
//  837 
//  838 		if(started_process != NULL && ret == SHELL_FOREGROUND &&process_is_running(started_process)) 
        LDR      R1,[R5, #+12]
        CBZ.N    R1,??process_thread_shell_process_8
        CBNZ.N   R0,??process_thread_shell_process_8
        MOV      R0,R1
          CFI FunCall process_is_running
        BL       process_is_running
        CBZ.N    R0,??process_thread_shell_process_8
//  839 		{
//  840 			front_process = started_process;
        LDR      R0,[R5, #+12]
        STR      R0,[R5, #+4]
//  841 			PROCESS_WAIT_EVENT_UNTIL(ev == PROCESS_EVENT_EXITED && data == started_process);
        MOVW     R0,#+841
??process_thread_shell_process_5:
        STRH     R0,[R4, #+0]
        B.N      ??process_thread_shell_process_6
??process_thread_shell_process_3:
        CMP      R1,#+135
        ITTT     EQ 
        LDREQ.N  R1,??DataTable77_2
        LDREQ    R1,[R1, #+12]
        CMPEQ    R0,R1
        BEQ.N    ??process_thread_shell_process_8
??process_thread_shell_process_6:
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}
//  842 		}
//  843 		front_process = &shell_process;
??process_thread_shell_process_8:
        LDR.N    R5,??DataTable77_2
        ADD      R0,R5,#+20
        STR      R0,[R5, #+4]
        B.N      ??process_thread_shell_process_7
//  844 		}
//  845 	}
//  846 
//  847 	PROCESS_END();
??process_thread_shell_process_4:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock19
//  848 }
//  849 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function process_thread_shell_server_process
        THUMB
//  850 PROCESS_THREAD(shell_server_process, ev, data)
//  851 {
process_thread_shell_server_process:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        MOV      R4,R0
        SUB      SP,SP,#+20
          CFI CFA R13+40
//  852 	struct process *p;
//  853 	struct shell_command *c;
//  854 	static struct etimer etimer;
//  855 	PROCESS_BEGIN();
        LDRH     R0,[R4, #+0]
        MOV      R7,R2
        CBZ.N    R0,??process_thread_shell_server_process_0
        CMP      R0,#+860
        BEQ.N    ??process_thread_shell_server_process_1
        B.N      ??process_thread_shell_server_process_2
//  856 
//  857 	etimer_set(&etimer, CLOCK_SECOND * 10);
??process_thread_shell_server_process_0:
        MOVW     R1,#+10000
        LDR.N    R0,??DataTable77_5
          CFI FunCall etimer_set
        BL       etimer_set
//  858 	while(1) 
//  859 	{
//  860 		PROCESS_WAIT_EVENT();
??process_thread_shell_server_process_3:
        MOV      R0,#+860
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+20
          CFI CFA R13+20
        MOVS     R0,#+1
        POP      {R4-R7,PC}
          CFI CFA R13+40
//  861 		if(ev == PROCESS_EVENT_EXITED) 
??process_thread_shell_server_process_1:
        CMP      R1,#+135
        BNE.N    ??process_thread_shell_server_process_4
//  862 		{
//  863 			p = data;
//  864 			/*printf("process exited '%s' (front '%s')\n", p->name,
//  865 			front_process->name);*/
//  866 			for(c = list_head(commands); c != NULL && c->process != p; c = c->next);
        LDR.N    R5,??DataTable77_2
        ADD      R0,R5,#+16
          CFI FunCall list_head
        BL       list_head
        MOV      R6,R0
        B.N      ??process_thread_shell_server_process_5
??process_thread_shell_server_process_6:
        LDR      R6,[R6, #+0]
??process_thread_shell_server_process_5:
        CMP      R6,#+0
        BEQ.N    ??process_thread_shell_server_process_3
        LDR      R0,[R6, #+12]
        CMP      R0,R7
        BNE.N    ??process_thread_shell_server_process_6
//  867 			while(c != NULL) 
//  868 			{
//  869 				if(c->child != NULL && c->child->process != NULL) 
??process_thread_shell_server_process_7:
        LDR      R7,[R6, #+16]
        CMP      R7,#+0
        ITT      NE 
        LDRNE    R0,[R7, #+12]
        CMPNE    R0,#+0
        BEQ.N    ??process_thread_shell_server_process_8
//  870 				{
//  871 					/*	  printf("Killing '%s'\n", c->process->name);*/
//  872 					input_to_child_command(c->child, "", 0, "", 0);
          CFI FunCall process_is_running
        BL       process_is_running
        CBZ.N    R0,??process_thread_shell_server_process_8
        MOVS     R1,#+0
        ADR.N    R0,??DataTable77  ;; ""
        STR      R1,[SP, #+8]
        STR      R1,[SP, #+12]
        STR      R0,[SP, #+0]
        STR      R0,[SP, #+4]
        ADD      R2,SP,#+0
        LDR      R1,[R5, #+0]
        LDR      R0,[R7, #+12]
        UXTB     R1,R1
          CFI FunCall process_post_synch
        BL       process_post_synch
//  873 					/*	  process_exit(c->process);*/
//  874 				}
//  875 				c = c->child;
??process_thread_shell_server_process_8:
        LDR      R6,[R6, #+16]
//  876 			}
        CMP      R6,#+0
        BNE.N    ??process_thread_shell_server_process_7
        B.N      ??process_thread_shell_server_process_3
//  877 		} 
//  878 		else if(ev == PROCESS_EVENT_TIMER) 
??process_thread_shell_server_process_4:
        CMP      R1,#+136
        BNE.N    ??process_thread_shell_server_process_3
//  879 		{
//  880 			etimer_reset(&etimer);
        LDR.N    R5,??DataTable77_2
        ADD      R0,R5,#+132
          CFI FunCall etimer_reset
        BL       etimer_reset
//  881 			shell_set_time(shell_time());
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR      R1,[R5, #+8]
        ADDS     R6,R1,R0
          CFI FunCall clock_seconds
        BL       clock_seconds
        SUBS     R0,R6,R0
        STR      R0,[R5, #+8]
//  882 		}
//  883 	}
//  884 
//  885 	PROCESS_END();
        B.N      ??process_thread_shell_server_process_3
??process_thread_shell_server_process_2:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        ADD      SP,SP,#+20
          CFI CFA R13+20
        MOVS     R0,#+3
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock20
//  886 }

        SECTION `.data`:DATA:REORDER:NOROOT(2)
shell_event_input:
        DATA
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0
commands_list:
        DC32 0H
shell_process:
        DC32 0H, ?_0, process_thread_shell_process
        DC8 0, 0, 0, 0
shell_server_process:
        DC32 0H, ?_1, process_thread_shell_server_process
        DC8 0, 0, 0, 0
        DC32 0H, ?_2, ?_3, help_command_process
        DC8 0, 0, 0, 0
        DC32 0H, ?_4, ?_5, shell_killall_process
        DC8 0, 0, 0, 0
        DC32 0H, ?_6, ?_7, shell_kill_process
        DC8 0, 0, 0, 0
        DC32 0H, ?_8, ?_9, shell_set_process
        DC8 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
        DC32 commands_list

        SECTION `.data`:DATA:REORDER:NOROOT(2)
help_command_process:
        DATA
        DC32 0H, ?_2, process_thread_help_command_process
        DC8 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
shell_killall_process:
        DATA
        DC32 0H, ?_4, process_thread_shell_killall_process
        DC8 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
shell_kill_process:
        DATA
        DC32 0H, ?_6, process_thread_shell_kill_process
        DC8 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
shell_null_process:
        DATA
        DC32 0H, ?_10, process_thread_shell_null_process
        DC8 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
shell_exit_process:
        DATA
        DC32 0H, ?_11, process_thread_shell_exit_process
        DC8 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
shell_set_process:
        DATA
        DC32 0H, ?_12, process_thread_shell_set_process
        DC8 0, 0, 0, 0
//  887 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function shell_init
        THUMB
//  888 void
//  889 shell_init(void)
//  890 {
shell_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  891   list_init(commands);
        LDR.N    R4,??DataTable77_2
        ADD      R0,R4,#+16
          CFI FunCall list_init
        BL       list_init
//  892   shell_register_command(&help_command);
        ADD      R0,R4,#+52
          CFI FunCall shell_register_command
        BL       shell_register_command
//  893   //shell_register_command(&question_command);
//  894   //shell_register_command(&killall_command);
//  895   //shell_register_command(&kill_command);
//  896   //shell_register_command(&null_command);
//  897   //shell_register_command(&exit_command);
//  898   //shell_register_command(&quit_command);
//  899 
//  900   shell_register_command(&set_command);
        ADD      R0,R4,#+112
          CFI FunCall shell_register_command
        BL       shell_register_command
//  901 
//  902   
//  903   shell_event_input = process_alloc_event();
          CFI FunCall process_alloc_event
        BL       process_alloc_event
        STR      R0,[R4, #+0]
//  904   
//  905   process_start(&shell_process, NULL);
        MOVS     R1,#+0
        ADD      R0,R4,#+20
          CFI FunCall process_start
        BL       process_start
//  906  // process_start(&shell_server_process, NULL);
//  907 
//  908   front_process = &shell_process;
        ADD      R0,R4,#+20
        STR      R0,[R4, #+4]
//  909 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock21
//  910 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function shell_strtolong
          CFI NoCalls
        THUMB
//  911 unsigned long
//  912 shell_strtolong(const char *str, const char **retstr)
//  913 {
shell_strtolong:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  914   int i;
//  915   unsigned long num = 0;
        MOVS     R2,#+0
//  916   const char *strptr = str;
        MOVS     R3,R0
//  917 
//  918   if(str == NULL) {
        BNE.N    ??shell_strtolong_0
//  919     return 0;
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        MOVS     R0,#+0
        BX       LR
          CFI R4 Frame(CFA, -12)
          CFI R5 Frame(CFA, -8)
          CFI R6 Frame(CFA, -4)
          CFI CFA R13+12
//  920   }
//  921   
//  922   while(*strptr == ' ') {
//  923     ++strptr;
??shell_strtolong_1:
        ADDS     R3,R3,#+1
//  924   }
??shell_strtolong_0:
        LDRB     R4,[R3, #+0]
        CMP      R4,#+32
        BEQ.N    ??shell_strtolong_1
//  925   
//  926   for(i = 0; i < 10 && isdigit(strptr[i]); ++i) {
        MOVS     R4,#+0
        MOV      R5,R3
??shell_strtolong_2:
        LDRB     R6,[R5, #+0]
        SUBS     R6,R6,#+48
        CMP      R6,#+10
        BCS.N    ??shell_strtolong_3
//  927     num = num * 10 + strptr[i] - '0';
        ADD      R6,R2,R2, LSL #+2
        LDRB     R2,[R5], #+1
        ADD      R2,R2,R6, LSL #+1
        SUBS     R2,R2,#+48
//  928   }
        ADDS     R4,R4,#+1
        CMP      R4,#+10
        BLT.N    ??shell_strtolong_2
//  929   if(retstr != NULL) {
??shell_strtolong_3:
        CBZ.N    R1,??shell_strtolong_4
//  930     if(i == 0) {
        CBZ.N    R4,??shell_strtolong_5
//  931       *retstr = str;
//  932     } else {
//  933       *retstr = strptr + i;
        ADDS     R0,R4,R3
??shell_strtolong_5:
        STR      R0,[R1, #+0]
//  934     }
//  935   }
//  936   
//  937   return num;
??shell_strtolong_4:
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
//  938 }
//  939 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function shell_time
        THUMB
//  940 unsigned long
//  941 shell_time(void)
//  942 {
shell_time:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  943   return clock_seconds() + time_offset;
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR.N    R1,??DataTable77_2
        LDR      R1,[R1, #+8]
        ADDS     R0,R1,R0
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock23
//  944 }
//  945 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function shell_set_time
        THUMB
//  946 void
//  947 shell_set_time(unsigned long seconds)
//  948 {
shell_set_time:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOV      R4,R0
//  949   time_offset = seconds - clock_seconds();
          CFI FunCall clock_seconds
        BL       clock_seconds
        LDR.N    R1,??DataTable77_2
        SUBS     R0,R4,R0
        STR      R0,[R1, #+8]
//  950 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock24
//  951 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function shell_start
        THUMB
//  952 void
//  953 shell_start(void)
//  954 {
shell_start:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  955   shell_output_str(NULL, (char *)shell_banner_text, "");
        ADR.N    R4,??DataTable77  ;; ""
        MOV      R2,R4
        ADR.W    R1,shell_banner_text
        MOVS     R0,#+0
          CFI FunCall shell_output_str
        BL       shell_output_str
//  956   shell_output_str(NULL, "Type '?' and return for help", "");
        MOV      R2,R4
        ADR.W    R1,?_56
        MOVS     R0,#+0
          CFI FunCall shell_output_str
        BL       shell_output_str
//  957   shell_prompt((char *)shell_prompt_text);
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
        ADR.W    R0,shell_prompt_text
          CFI FunCall shell_prompt
        B.W      shell_prompt
          CFI EndBlock cfiBlock25
//  958 }
//  959 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function shell_stop
          CFI FunCall killall
        THUMB
//  960 void
//  961 shell_stop(void)
//  962 {
//  963   killall();
shell_stop:
        B.N      killall
          CFI EndBlock cfiBlock26
//  964 }
//  965 /*---------------------------------------------------------------------------*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function shell_quit
        THUMB
//  966 void
//  967 shell_quit(void)
//  968 {
shell_quit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  969   shell_stop();
          CFI FunCall killall
        BL       killall
//  970   process_exit(&shell_process);
        LDR.N    R4,??DataTable77_2
        ADD      R0,R4,#+20
          CFI FunCall process_exit
        BL       process_exit
//  971   process_exit(&shell_server_process);
        ADD      R0,R4,#+36
        POP      {R4,LR}
          CFI R4 SameValue
          CFI R14 SameValue
          CFI CFA R13+0
          CFI FunCall process_exit
        B.W      process_exit
          CFI EndBlock cfiBlock27
//  972 }
//  973 /*---------------------------------------------------------------------------*/
//  974 
//  975 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function shell_cmdlinepro
          CFI NoCalls
        THUMB
//  976 int shell_cmdlinepro(char *szCmdLine,char*argv[])
//  977 {
//  978 	int nIndex = 0;
shell_cmdlinepro:
        MOVS     R2,#+0
        B.N      ??shell_cmdlinepro_0
//  979 
//  980 	while(1)
//  981 	{
//  982 		while(*szCmdLine == ' ' && *szCmdLine) 
//  983 			szCmdLine++;
??shell_cmdlinepro_1:
        ADDS     R0,R0,#+1
??shell_cmdlinepro_0:
        LDRB     R3,[R0, #+0]
        CMP      R3,#+32
        BEQ.N    ??shell_cmdlinepro_1
//  984 		
//  985 		if(*szCmdLine == '\0')
        CBZ.N    R3,??shell_cmdlinepro_2
//  986 		{
//  987 			//ShellPrint(0,"break 1\r\n");
//  988 			break;
//  989 		}
//  990 			
//  991 		argv[nIndex++] = szCmdLine;
        STR      R0,[R1, R2, LSL #+2]
        ADDS     R2,R2,#+1
        B.N      ??shell_cmdlinepro_3
//  992 
//  993 		//ShellPrint(0,"nIndex is %d\r\n",nIndex);
//  994 
//  995 		while(*szCmdLine != ' ' && *szCmdLine) 
//  996 			szCmdLine++;
??shell_cmdlinepro_4:
        ADDS     R0,R0,#+1
??shell_cmdlinepro_3:
        LDRB     R3,[R0, #+0]
        CMP      R3,#+32
        IT       NE 
        CMPNE    R3,#+0
        BNE.N    ??shell_cmdlinepro_4
//  997 		
//  998 		if(*szCmdLine == '\0')
        CBZ.N    R3,??shell_cmdlinepro_2
//  999 		{
// 1000 			//ShellPrint(0,"break 2\r\n");
// 1001 			break;
// 1002 		}
// 1003 			
// 1004 		*szCmdLine = '\0';
        MOVS     R3,#+0
        STRB     R3,[R0], #+1
// 1005 		szCmdLine++;
        B.N      ??shell_cmdlinepro_0
// 1006 	}
// 1007 	
// 1008 	return nIndex;
??shell_cmdlinepro_2:
        MOV      R0,R2
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
// 1009 }
// 1010 
// 1011 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function shell_setparam
        THUMB
// 1012 void shell_setparam(int argc,char*argv[])
// 1013 {
shell_setparam:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOV      R4,R0
// 1014   	int i = 0;
        MOVS     R6,#+0
// 1015 	if (argc > 0 )
        CMP      R4,#+1
        MOV      R5,R1
        BLT.N    ??shell_setparam_0
// 1016 	{
// 1017 		for(i = 0; i<argc; i++) 
// 1018 		{
// 1019 			if( 0 == strcmp_ex(argv[i],"id") )
??shell_setparam_1:
        LDR      R0,[R5, R6, LSL #+2]
        ADR.N    R1,??DataTable77_1  ;; 0x69, 0x64, 0x00, 0x00
          CFI FunCall strcmp_ex
        BL       strcmp_ex
// 1020 			{
// 1021 				if ((i+1) < argc)
// 1022 				{
// 1023 					
// 1024 				}
// 1025 			}
// 1026 		}
        ADDS     R6,R6,#+1
        CMP      R6,R4
        BLT.N    ??shell_setparam_1
// 1027 	}
// 1028 }
??shell_setparam_0:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable77:
        DC8      "",0x0,0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable77_1:
        DC8      0x69, 0x64, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable77_2:
        DC32     shell_event_input

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable77_3:
        DC32     shell_event_input+0x10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable77_4:
        DC32     process_current

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable77_5:
        DC32     shell_event_input+0x84

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_13:
        DC8 "nodetype is %02x \015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_14:
        DC8 "TXPOWER is %d \015\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_15:
        DC8 "rssilimit is %d \015\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_16:
        DC8 "rfchannel is %d \015\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_17:
        DC8 "rfchannel is %04x \015\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_18:
        DC8 "ee nodetype is %02x \015\012"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_19:
        DC8 "ee TXPOWER is %d \015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_20:
        DC8 "ee rssilimit is %d \015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_21:
        DC8 "ee rfchannel is %d \015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_22:
        DC8 "ee rfchannel is %04x \015\012"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_26:
        DC8 "nDataLen is %d\015\012"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_27:
        DC8 "inid"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_28:
        DC8 "eeid"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_30:
        DC8 "rfch"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_31:
        DC8 "rfnodet"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_32:
        DC8 "rfrssi"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_33:
        DC8 "rfpid"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_34:
        DC8 "reboot"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_35:
        DC8 "rfcfg"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_37:
        DC8 "old gdb level is %d\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_38:
        DC8 "new gdb level is %d\015\012"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_39:
        DC8 "rfrst"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_40:
        DC8 "rfrx"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_42:
        DC8 "nmac"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_43:
        DC8 "gack"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_44:
        DC8 "gsync"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_45:
        DC8 "gfire"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_47:
        DC8 "hcpc"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_48:
        DC8 "fclean"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_49:
        DC8 "Stopping command "
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_50:
        DC8 "kill <command>: command name must be given"
        DC8 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_52:
        DC8 "Command not found: "

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_53:
        DC8 "Available commands:"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_54:
        DC8 ": command not found (try 'help')"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_55:
        DC8 ": command already running"
        DC8 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
?_56:
        DC8 "Type '?' and return for help"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
shell_prompt_text:
        DC8 "os> "
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
shell_banner_text:
        DC8 "os command shell"
        DC8 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1029 
// 1030 
// 1031 
// 1032 /** @} */
// 
//     8 bytes in section .bss
//   248 bytes in section .data
//   371 bytes in section .rodata
// 3 472 bytes in section .text
// 
// 3 472 bytes of CODE  memory
//   371 bytes of CONST memory
//   256 bytes of DATA  memory
//
//Errors: none
//Warnings: 22
