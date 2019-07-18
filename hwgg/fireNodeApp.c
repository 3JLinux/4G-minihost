#include "contiki.h"
#include "basictype.h"
#include "dev_info.h"
#include "hwgg.h"
#include "lib/ringbuf.h"
#include "sysprintf.h"
#include <string.h>
#include "end_node_list.h"
#include "app_sound_light_alarm.h"
#include "iodef.h"

static struct ctimer period_nodeaddr_timer;
PROCESS(fire_node_uart, "fire_uart");
PROCESS(fire_app_process, "fire_app");
PROCESS(fire_read_process,"frie_read");


PROCESS_NAME(sim900a_app_process);

extern process_event_t sim900_event_fire_warn;
extern process_event_t sim900_event_fire_tran;
extern process_event_t sim900_event_ack_time;
extern process_event_t sim900_event_electrical_control_ack;
extern process_event_t sim900_event_electrical_state;
extern process_event_t sim900_event_electrical_set;
extern process_event_t sim900_event_send_rssi;
extern process_event_t sim900_event_water_set;
extern process_event_t sim900_event_dianqi_set;
extern process_event_t sim900_event_dianqi_control;

PROCESS_NAME(ip_data_process);
extern process_event_t event_ip_warn;
extern process_event_t event_ip_tran;
extern process_event_t event_ack_time;
extern process_event_t event_electrical_control_ack;
extern process_event_t event_electrical_state;
extern process_event_t event_electrical_set;
extern process_event_t event_send_rssi;
extern process_event_t event_water_set;

static process_event_t fire_event_rev;


static FIRE_NODE_DATA stFireData;

static bool nodeBelognToMeByMac(const u_char *pcMac)
{
	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
	int i = 0;

	//if node information docment is save in flash, all node need to save to list
	if (pfireNodeInfo->node_num == 0)
		return true;

	for (i = 0; i < pfireNodeInfo->node_num; i++)
	{
		if (mem_cmp(pcMac, pfireNodeInfo->nodeArray[i].ubaNodeAddr, HWGG_NODE_MAC_LEN) == 0)
		{
			return true;
		}
	}

	return false;
}

static bool checkWsFrameCrc(const u_char *pcdata, u_char len)
{
	u_short uwCrc = 0;
	return true;
}


static bool fireAppCheckFrameLength(const HWGG_FRAME *pFrame, const FIRE_NODE *pFireNode)
{
	//MEM_DUMP(10, "nodf", pFrame, pFrame->ubLen + 4);
	if ((pFrame->ubLen - 12) != pFireNode->ubLen)
	{
		//XPRINTF((10, "pFireNode->ubLen = %d pFrame->ubLen = %d\n",pFireNode->ubLen ,pFrame->ubLen));
		return false;
	}
	return true;
}


static bool fireAppFilterNodeAddr(const u_char *pcFrame)
{
	const HWGG_FRAME *pFrame = NULL;
	const FIRE_NODE *pFireNode = NULL;
	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
	NODE_INFO *pnode = NULL;
	
	if (pcFrame == NULL)
		return false;

	pFrame = (const HWGG_FRAME *)pcFrame;
	pFireNode = (const FIRE_NODE *)pFrame->ubaData;

	if (!fireAppCheckFrameLength(pFrame, pFireNode))
		return false;

	if (pfireNodeInfo->node_num == 0)
		return true;

	MEM_DUMP(10, "find", pFrame, pFrame->ubLen+4);
	MEM_DUMP(10, "addr", pFireNode->ubaSrcMac, 4);
	//pnode = (NODE_INFO *)endNodeInListByMac(pFireNode->ubaSrcMac);
	if (nodeBelognToMeByMac((const u_char*) pFireNode->ubaSrcMac))
	{
		MEM_DUMP(10, "eddr", pnode->ubaHWGGMacAddr, 4);
		return true;
	}
	return false;
}



static void addFireNodeToList(const u_char *pcFrame)
{
	NODE_INFO stnodeInfo;
	const HWGG_FRAME *pFrame = NULL;
	const FIRE_NODE *pFireNode = NULL;	

	if (pcFrame == NULL)
		return;

	pFrame = (const HWGG_FRAME *)pcFrame;
	pFireNode = (const FIRE_NODE *)pFrame->ubaData;

	stnodeInfo.lastRevPacketTime = clock_seconds( );
	stnodeInfo.next = NULL;
	stnodeInfo.nodeNetState = HWGG_NODE_IN_NET;
	memcpy(stnodeInfo.ubaHWGGMacAddr, pFireNode->ubaSrcMac, HWGG_NODE_MAC_LEN);
	
	endNodeListadd((const NODE_INFO *)&stnodeInfo);
}

static bool nodeBelognToMe(const NODE_INFO *pcNode)
{
	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
	int i = 0;

	//if node information docment is save in flash, all node need to save to list
	if (pfireNodeInfo->node_num == 0)
		return true;

	for (i = 0; i < pfireNodeInfo->node_num; i++)
	{
		if (mem_cmp(pcNode->ubaHWGGMacAddr, pfireNodeInfo->nodeArray[i].ubaNodeAddr, HWGG_NODE_MAC_LEN) == 0)
		{
			return true;
		}
	}

	return false;
}

static void removeNodeNotBelongToMe(void)
{
	NODE_INFO *pnode = NULL;
	bool isTrue = false;

	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);

	//not have node info docment
	if (pfireNodeInfo->node_num == 0)
		return;

	for(pnode = (NODE_INFO *)endNodeListHead(); pnode != NULL; pnode = (NODE_INFO *)endNodeListNext(pnode)) 
	{
		isTrue = nodeBelognToMe((const NODE_INFO *)pnode);
		if (!isTrue)
		{
			endNodeListRemove(pnode);
		}
	}
}


static void nodeAddrCheckTimer(void *ptr)
{
	removeNodeNotBelongToMe( );
	endNodeListPeriodicCheck( );
	XPRINTF((10, "node check!\n"));
	ctimer_set(&period_nodeaddr_timer, 10*1000, nodeAddrCheckTimer, NULL);
}

static void setNodeAddrChecktimer(void)
{
	ctimer_set(&period_nodeaddr_timer, 30*1000, nodeAddrCheckTimer, NULL);
}

static u_char mac_save[4] = {0};
static struct etimer etimer_transparent;
static struct etimer etimer_rssi;
static void fireProtocolProcess(process_data_t data)//mark mark
{
	const HWGG_FRAME *pFrame = NULL;
	const FIRE_NODE *pFireNode = NULL;
	//const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
	//NODE_INFO *pnode = NULL;

	pFrame = (const HWGG_FRAME *)data;
	pFireNode = (const FIRE_NODE *)pFrame->ubaData;
        //jjj_crc
        //crc_num = cyg_crc16();

	MEM_DUMP(9, "rf<-", data, pFrame->ubLen + HWGG_HEAD_END_CRC_LEN);
	if (pFireNode->ubCmd == HWGG_CMD_HEART)
	{
		XPRINTF((12, "hwgg_cmd_heart\n"));
		addFireNodeToList(data);
            if(pFrame->ubEndLayer == SOUND_LIGHT_DEVICE_TYPE)
            {
              addSoundLightNodeTable(pFireNode->ubaSrcMac);
            }
          if(rssi_send_flag == 2)
          {
            process_post(&sim900a_app_process, sim900_event_send_rssi, (void*)terminal_rssi);
            process_post(&ip_data_process, event_send_rssi, (void*)terminal_rssi);
            rssi_send_flag = 0;
          }
	}
	else if (pFireNode->ubCmd == HWGG_CMD_LOW_VOLTAGE || pFireNode->ubCmd == HWGG_CMD_WARN)
	{
		XPRINTF((12, "hwgg_warn\n"));
		addFireNodeToList(data);
        if(pFireNode->ubCmd == HWGG_CMD_WARN){
            setSoundLightState(SOUND_LIGHT_CMD_ON);
        }
		process_post(&sim900a_app_process, sim900_event_fire_warn, (void*)pFireNode);
		process_post(&ip_data_process, event_ip_warn, (void*)pFireNode);
	}
        else if(pFireNode->ubCmd == HWGG_CMD_TIMER) /*Modify_jjj*/
        {
          if(pFireNode->ubaSrcMac[2] != ENV_SRC_ADDR && pFireNode->ubaSrcMac[3] != ENV_SRC_ADDR)
          {
           XPRINTF((12, "HWGG_CMD_TIMER"));
           static u_char time_packet[5];
           time_packet[0] = pFireNode->ubLen - 6;
           time_packet[1] = pFireNode->ubaSrcMac[0];
           time_packet[2] = pFireNode->ubaSrcMac[1];
           time_packet[3] = pFireNode->ubaSrcMac[2];
           time_packet[4] = pFireNode->ubaSrcMac[3];
           XPRINTF((12, "pFireNode->ubLen: %d\n",time_packet[0]));
           process_post(&sim900a_app_process, sim900_event_ack_time, (void*)(time_packet));
           process_post(&ip_data_process, event_ack_time, (void*)(time_packet));
          }
        }
        else if(pFireNode->ubCmd == HWGG_CMD_ELECTRICAL_CONTROL_REPLY)
        {
            
           u_char electrical_control_buff;
           static u_char electrical_control_packet[6];
           electrical_control_packet[0] = pFireNode->ubLen - 6;
           electrical_control_packet[1] = pFireNode->ubaSrcMac[0];
           electrical_control_packet[2] = pFireNode->ubaSrcMac[1];
           electrical_control_packet[3] = pFireNode->ubaSrcMac[2];
           electrical_control_packet[4] = pFireNode->ubaSrcMac[3];
           electrical_control_packet[5] = pFireNode->ubaData[0];
           //XPRINTF((12, "pFireNode->ubLen: %d\n",electrical_control_packet[0]));
           process_post(&sim900a_app_process, sim900_event_electrical_control_ack, (void*)(electrical_control_packet));
           process_post(&ip_data_process, event_electrical_control_ack, (void*)(electrical_control_packet));
           //reply_flag_set();
        }
        
        else if(pFireNode->ubCmd == HWGG_CMD_ELECTRICAL_STATE)
        {
          u_char electrical_state_buff;
           static u_char electrical_state_packet[6];
           electrical_state_packet[0] = pFireNode->ubLen - 6;
           electrical_state_packet[1] = pFireNode->ubaSrcMac[0];
           electrical_state_packet[2] = pFireNode->ubaSrcMac[1];
           electrical_state_packet[3] = pFireNode->ubaSrcMac[2];
           electrical_state_packet[4] = pFireNode->ubaSrcMac[3];
           electrical_state_packet[5] = pFireNode->ubaData[0];
           //XPRINTF((12, "pFireNode->ubLen: %d\n",electrical_state_packet[0]));
           process_post(&sim900a_app_process, sim900_event_electrical_state, (void*)(electrical_state_packet));
           process_post(&ip_data_process, event_electrical_state, (void*)(electrical_state_packet));
        }
        else if(pFireNode->ubCmd == HWGG_CMD_ELE_SET_THRESHOLD_ACK)
        {
          static u_char electrical_set_packet[6];
           electrical_set_packet[0] = pFireNode->ubLen - 6;
           electrical_set_packet[1] = pFireNode->ubaSrcMac[0];
           electrical_set_packet[2] = pFireNode->ubaSrcMac[1];
           electrical_set_packet[3] = pFireNode->ubaSrcMac[2];
           electrical_set_packet[4] = pFireNode->ubaSrcMac[3];
           electrical_set_packet[5] = pFireNode->ubaData[0];
          process_post(&sim900a_app_process,sim900_event_electrical_set, (void*)(electrical_set_packet));
          process_post(&ip_data_process,event_electrical_set, (void*)(electrical_set_packet));
        }
        else if(pFireNode->ubCmd == HWGG_CMD_WATER_VAL_ACK)
        {
          static u_char water_set_packet[6];
           water_set_packet[0] = pFireNode->ubLen - 6;
           water_set_packet[1] = pFireNode->ubaSrcMac[0];
           water_set_packet[2] = pFireNode->ubaSrcMac[1];
           water_set_packet[3] = pFireNode->ubaSrcMac[2];
           water_set_packet[4] = pFireNode->ubaSrcMac[3];
           water_set_packet[5] = pFireNode->ubaData[0];
          process_post(&sim900a_app_process,sim900_event_water_set, (void*)(water_set_packet));
          process_post(&ip_data_process,event_water_set, (void*)(water_set_packet));
        }
	else if (pFireNode->ubCmd == HWGG_CMD_TRAN && pFireNode->ubLen > FIRE_FIX_LEN)
	{
		/*post data to */
          static u_char mac_change_flag = 0;
          addFireNodeToList(data);
		stFireData.ublen = pFireNode->ubLen - FIRE_FIX_LEN;
		stFireData.ubadata[0] = stFireData.ublen+5;
		stFireData.ubadata[1] = HWGG_CMD_TRAN;
		stFireData.ubadata[2] = pFireNode->ubaSrcMac[0];
		stFireData.ubadata[3] = pFireNode->ubaSrcMac[1];
		stFireData.ubadata[4] = pFireNode->ubaSrcMac[2];
		stFireData.ubadata[5] = pFireNode->ubaSrcMac[3];
		stFireData.ublen += 6;
		memcpy(&stFireData.ubadata[6], pFireNode->ubaData, stFireData.ublen);
                
                
		if(memcmp(mac_save,pFireNode->ubaSrcMac,4) != 0)
                {
                  memcpy(mac_save,pFireNode->ubaSrcMac,4);
                  mac_change_flag = 1;
                }
                
                if(mac_change_flag)
                {
                  process_post(&sim900a_app_process, sim900_event_fire_tran, &stFireData);
                  process_post(&ip_data_process, event_ip_tran, &stFireData);
                  mac_change_flag = 0;
                }
                else
                {
                  if((pFireNode->ubaData[8] != 0x06) && (pFireNode->ubaData[16] != 0x07) && (pFireNode->ubaData[8] != 0x08))
                  {
                    process_post(&sim900a_app_process, sim900_event_fire_tran, &stFireData);
                    process_post(&ip_data_process, event_ip_tran, &stFireData);
                    if(rssi_send_flag == 2)
                    {
                      etimer_set(&etimer_rssi,500);
                    }
                  }
                  else 
                  {
                    etimer_set(&etimer_transparent,5000);
                  }
                }
	}
        else if(pFireNode->ubCmd == HWGG_CMD_DIANQI_SET_VAL)
        {
           static u_char electrical_set_packet[6];
           electrical_set_packet[0] = pFireNode->ubLen - 6;
           electrical_set_packet[1] = pFireNode->ubaSrcMac[0];
           electrical_set_packet[2] = pFireNode->ubaSrcMac[1];
           electrical_set_packet[3] = pFireNode->ubaSrcMac[2];
           electrical_set_packet[4] = pFireNode->ubaSrcMac[3];
           electrical_set_packet[5] = pFireNode->ubaData[0];
          process_post(&sim900a_app_process, sim900_event_dianqi_set, (void*)(electrical_set_packet));
          process_post(&ip_data_process,event_electrical_set , (void*)(electrical_set_packet));
        }
        else if(pFireNode->ubCmd == HWGG_CMD_DIANQI_CONTROL)
        {
          static u_char electrical_set_packet[6];
           electrical_set_packet[0] = pFireNode->ubLen - 6;
           electrical_set_packet[1] = pFireNode->ubaSrcMac[0];
           electrical_set_packet[2] = pFireNode->ubaSrcMac[1];
           electrical_set_packet[3] = pFireNode->ubaSrcMac[2];
           electrical_set_packet[4] = pFireNode->ubaSrcMac[3];
           electrical_set_packet[5] = pFireNode->ubaData[0];
          process_post(&sim900a_app_process,sim900_event_dianqi_control , (void*)(electrical_set_packet));
          process_post(&ip_data_process,event_electrical_set , (void*)(electrical_set_packet));
        }
}


void frieAppHandler(process_event_t ev, process_data_t data)
{
	if (ev == fire_event_rev && data != NULL)
	{
		fireProtocolProcess(data);
	}
}

PROCESS_THREAD(fire_app_process, ev, data)
{
	PROCESS_BEGIN( );

	while(1)
	{
		PROCESS_YIELD( );
		frieAppHandler(ev, data);
	}
	PROCESS_END( );
}


static struct ringbuf ringuartbuf;
static uint8_t uartbuf[128];
/*----------------------------------------------------------------------*/
#define FIRE_RXBUFS	 	8
#define FIRE_BUF_LEN	128

static uint8_t fire_rxbufs[FIRE_RXBUFS][FIRE_BUF_LEN];

#if FIRE_RXBUFS > 1
static volatile int8_t fire_first = -1, fire_last = 0;
#else   
static const int8_t fire_first = 0, fire_last = 0;
#endif  

#if FIRE_RXBUFS > 1
#define CLEAN_FIRE_RXBUFS() do{fire_first = -1; fire_last = 0;}while(0)
#define FIRE_RXBUFS_EMPTY() (fire_first == -1)
static int FIRE_RXBUFS_FULL( )
{
	int8_t first_tmp = fire_first;
	return first_tmp == fire_last;
}
#else 
#define CLEAN_FIRE_RXBUFS( ) (fire_rxbufs[0][0] = 0)
#define FIRE_RXBUFS_EMPTY( ) (fire_rxbufs[0][0] == 0)
#define FIRE_RXBUFS_FULL( )  (fire_rxbufs[0][0] != 0)
#endif 

/*---------------------------------------------------------------------------*/
static int add_to_fire_rxbuf(uint8_t *src)
{
	HWGG_FRAME *pHwgg = NULL;
	u_char ubLen = 0;
	if(FIRE_RXBUFS_FULL()) 
	{
		return 0;
	}

	//TODO:need to know frame length
	pHwgg = (HWGG_FRAME *)src;
	ubLen = pHwgg->ubLen + HWGG_HEAD_END_CRC_LEN;
	memcpy(fire_rxbufs[fire_last], src, ubLen);

	#if FIRE_RXBUFS > 1
	fire_last = (fire_last + 1) % FIRE_RXBUFS;
	if(fire_first == -1) 
	{
		fire_first = 0;
	}
	#endif

	//TODO:need to know frame length
	memset(src, 0, ubLen);//clear buf
	return 1;
}

/*---------------------------------------------------------------------------*/
static int read_from_fire_rxbuf(void *dest, unsigned short len)
{
	HWGG_FRAME *pHwgg = NULL;
	u_char ubLen = 0;
        int crc_num = 0;

	if(FIRE_RXBUFS_EMPTY()) 
	{          
		return 0;
	}

	pHwgg = (HWGG_FRAME *)fire_rxbufs[fire_first];
	ubLen = pHwgg->ubLen + HWGG_HEAD_END_CRC_LEN;
        //crc_num = cyg_crc16(pHwgg+1,ubLen);
        
	if (ubLen > len)
	{   
		len = 0;
	} 
	else 
	{
		len = ubLen;  //frame length
		memcpy(dest, (uint8_t*)&fire_rxbufs[fire_first][0], len);
		memset((uint8_t*)&fire_rxbufs[fire_first][0], 0, len);
	}

	#if FIRE_RXBUFS > 1
	{
		int first_tmp;
		fire_first = (fire_first + 1) % FIRE_RXBUFS;
		first_tmp = fire_first;
		if(first_tmp == fire_last) 
		{
			CLEAN_FIRE_RXBUFS();
		}
	}
	#else
	CLEAN_FIRE_RXBUFS();
	#endif
	return len;
}


#define HWGG_SAVE_CLARR_TIME (10*1000)
#define MAC_OFFSET 1
u_char terminal_rssi[7] = 0;
u_char rssi_send_flag = 0;
PROCESS_THREAD(fire_node_uart, ev, data)
{
	static u_char buf[128];
        static u_char hwgg_terminal_save_clear_flag = 0;
        static u_char hwgg_terminal_save_mac[4] = {0};
        //static u_char hwgg_terminal_save_alarm;
        static u_char hwgg_terminal_alarm;
        u_char hwgg_terminal_mac[4];
	static struct etimer et_rev_timeout;
        static struct etimer et_hwgg_terminal_save_clear;
        static struct etimer et_hwgg_led_timeout;
        static struct etimer et_rev_reset;
	static int ptr;
        static u_char rev_reset_flag=0;
	HWGG_FRAME *pHwgg;
        u_char i;
	int c;
        int hwgg_data_len = 0;
        int crc_num = 0;
	
	PROCESS_BEGIN();
	XPRINTF((12, "fire_node_uart\r\n"));
	fire_event_rev = process_alloc_event( );
	
	while(1) 
	{
		c = ringbuf_get(&ringuartbuf);
		if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_rev_timeout)))
		{
			XPRINTF((8, "T_O\r\n"));
			ptr = 0;
			buf[0] = 0;
		}
                if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_rev_reset)))
                {
                        LORA_RST(0);
                        XPRINTF((12, "rf restart\r\n"));
                        etimer_reset(&et_rev_reset);
                }
		if(c == -1) 
		{
			if(!rev_reset_flag)
                        {
                          etimer_set(&et_rev_reset, 3*60*1000);
                          rev_reset_flag = 1;
                        }
                        LORA_RST(1);
			PROCESS_YIELD();
		} 
		else 
		{
			if (ptr <= 128)
			{
				buf[ptr++] = (uint8_t)c;
				if (ptr==1 && buf[0] == HWGG_HEAD)
				{
					//set timeout 
					//Frame start
                                        //HWGG_LED(0);
                                        rev_reset_flag = 0;
					XPRINTF((12, "start\r\n"));
					etimer_set(&et_rev_timeout, 500);
                                        etimer_reset(&et_rev_reset);
                                        //etimer_set(&et_hwgg_led_timeout, 1000);
				}

				//head error
				if (buf[0] != HWGG_HEAD)
				{
					ptr = 0;
					buf[0] = 0;
				}
				else
				{
					if (ptr >= HWGG_FRAME_FIX_LEN)
					{
						pHwgg = (HWGG_FRAME *)buf;
                                                hwgg_data_len = pHwgg->ubaData[0];
                                                
                                                if((buf[3] != 0xff) || buf[4] != 0xff)
                                                {
                                                  terminal_rssi[0] = 0xA0;
                                                  //memcpy((terminal_rssi+1),(pHwgg->ubaData + 1),4); 
                                                  terminal_rssi[5] = buf[3];
                                                  terminal_rssi[6] = buf[4];
                                                  buf[3] = 0xff;
                                                  buf[4] = 0xff;
                                                  rssi_send_flag = 1;
                                                  XPRINTF((12, "rssi_send_flag = 1\r\n"));
                                                  //XPRINTF((12, "terminal_rssi2:%x\r\n",terminal_rssi[4]));
                                                }
                                                
                                                crc_num = cyg_crc16((buf+1),pHwgg->ubLen);
                                                //XPRINTF((12, "pHwgg_crc_num:%x\r\n",crc_num));
                                                if(pHwgg->ubaData[hwgg_data_len+1] == (crc_num>>8) && pHwgg->ubaData[hwgg_data_len] == (crc_num&0x00ff))
                                                {
                                                  //if(rssi_send_flag)
                                                        //{
                                                          //memcpy((terminal_rssi+1),(buf + 14),4); 
                                                          //rssi_send_flag = 0;
                                                        //}
						if ((c == HWGG_END)&& (pHwgg->ubLen + HWGG_HEAD_END_CRC_LEN) == ptr)
						{
							//MEM_DUMP(10,"ra<-", buf, ptr);
							if (fireAppFilterNodeAddr((const u_char *)buf))
							{
                                                          //XPRINTF((12, "pHwgg[1]:%x\r\n",pHwgg[1]));
                                                          //XPRINTF((12, "pHwgg->ubLen:%x\r\n",pHwgg->ubLen));
                                                          //XPRINTF((12, "pHwgg_crc_num:%x\r\n",crc_num));
                                                          HWGG_LED(0);
                                                          etimer_set(&et_hwgg_led_timeout, 1000);
                                                          if(rssi_send_flag)
                                                          {
                                                            memcpy((terminal_rssi+1),(buf + 14),4); 
                                                            rssi_send_flag = 2;
                                                            XPRINTF((12, "rssi_send_flag = 2\r\n"));
                                                          }
                                                          /*
								//MEM_DUMP(10,"filt", buf, ptr);
                                                                memcpy(hwgg_terminal_mac,(pHwgg->ubaData + MAC_OFFSET),4);
                                                                MEM_DUMP(10,"mac", hwgg_terminal_mac, 4);
                                                                hwgg_terminal_alarm = pHwgg->ubCmd;
                                                                MEM_DUMP(10,"alarm", &hwgg_terminal_alarm, 1);
                                                                if((memcmp(hwgg_terminal_save_mac,hwgg_terminal_mac,4) == 0) && (hwgg_terminal_alarm == HWGG_CMD_WARN))
                                                                {
                                                                  if((hwgg_terminal_save_clear_flag == 0))
                                                                  {
                                                                    etimer_set(&et_hwgg_terminal_save_clear,HWGG_SAVE_CLARR_TIME);
                                                                    hwgg_terminal_save_clear_flag = 1;
                                                                  }
                                                                }
                                                                else 
                                                                {
                                                          */
                                                                  //hwgg_terminal_save_alarm = hwgg_terminal_alarm;
                                                                  //memcpy(hwgg_terminal_save_mac,hwgg_terminal_mac,4);
                                                                  //MEM_DUMP(10,"mac save", hwgg_terminal_save_mac, 4);
                                                                  //hwgg_terminal_save_clear_flag = 0;
                                                                  add_to_fire_rxbuf(buf);
                                                                  process_poll(&fire_read_process);
                                                                  //}
                                                                
							}
							etimer_stop(&et_rev_timeout);
							ptr = 0;
							buf[0] = 0;
						}
                                                //if(rssi_send_flag<2)
                                                //{
                                                  //rssi_send_flag = 0;
                                                //}
                                                }
                                                //else
                                                //{
                                                  //XPRINTF((12, "pHwgg_crc_err\r\n"));
                                                //}
					}
				}
			}
			else
			{
				ptr = 0;
				buf[0] = 0;
			}
		}
                if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_hwgg_led_timeout)))
                {
                  HWGG_LED(1);
                }
                if(ev == PROCESS_EVENT_TIMER && etimer_expired(&etimer_transparent))
                {
                  etimer_stop(&etimer_transparent);
                  for(i=0;i<4;i++)
                  {
                    mac_save[i] = 0;
                  }
                }
                
                if(ev == PROCESS_EVENT_TIMER && etimer_expired(&etimer_rssi) )//&& rssi_send_flag == 2)
                {
                  etimer_stop(&etimer_rssi);
                  if(rssi_send_flag == 2)
                  {
                    process_post(&sim900a_app_process, sim900_event_send_rssi, (void*)terminal_rssi);
                    process_post(&ip_data_process, event_send_rssi, (void*)terminal_rssi);
                    rssi_send_flag = 0;
                  }
                }
	}
	PROCESS_END();
}




/******************************************************************/
PROCESS_THREAD(fire_read_process, ev, data)
{
	int len;
	static u_char ubBuf[128];
	PROCESS_BEGIN();
	XPRINTF((12,"rf_radio_process: started\r\n"));

	
	while(1) 
	{
		PROCESS_YIELD_UNTIL(ev == PROCESS_EVENT_POLL);

		len = read_from_fire_rxbuf(ubBuf, FIRE_BUF_LEN);
		if(len > 0) 
		{
			//MEM_DUMP(10, "READ", ubBuf, len);
			process_post(&fire_app_process, fire_event_rev, ubBuf);
		}
		if(!FIRE_RXBUFS_EMPTY()) 
		{
			/*
			* Some data packet still in rx buffer (this happens because process_poll
			* doesn't queue requests), so stm32w_radio_process needs to be called
			* again.
			*/
			process_poll(&fire_read_process);
		}
	}
	PROCESS_END();
}

/*---------------------------------------------------------------------------*/
static int fire_uart_input_byte(unsigned char c)
{
	static uint8_t overflow = 0; /* Buffer overflow: ignore until END */
	if(!overflow) 
	{
		/* Add character */
		if(ringbuf_put(&ringuartbuf, c) == 0) 
		{
			/* Buffer overflow: ignore the rest of the line */
			overflow = 1;
		}
	} 
	else 
	{
		/* Buffer overflowed:
		* Only (try to) add terminator characters, otherwise skip */
		if(ringbuf_put(&ringuartbuf, c) != 0) 
		{
			overflow = 0;
		}
	}
	/* Wake up consumer process */
	process_poll(&fire_node_uart);	
	return 1;
}

static void fire_uart_init(void)
{
	ringbuf_init(&ringuartbuf, uartbuf, sizeof(uartbuf));
	process_start(&fire_node_uart, NULL);
	Uart_RfSetInput(fire_uart_input_byte);
}

void fireAppInit(void)
{
	fire_uart_init( );
	setNodeAddrChecktimer( );
	process_start(&fire_app_process, NULL);
	process_start(&fire_read_process, NULL);
}

/*********************************************************************************/
#define ENV_TIME_MSG_LEN 30/*Modify_jjj*/
#define ENV_MODE_DATA_LEN 8
#define ENV_NODE_LEN 18
#define ENV_ADDR_COPY_LEN 4
#define ENV_UBA_ADDR_LEN 2
#define ENV_NODE_MAC_LEN 4
#define ENV_SEND_SRC_ADDR_H 0xDD
#define ENV_SEND_SRC_ADDR_L 0xDD
#define ENV_SEND_PANID 0xDD
#define ENV_SEND_SRC_LAYER 0xFF
#define ENV_SEND_END_LAYER 0xFF
#define ENV_SEND_SEQ 0xFF
uint8 ENV_SEND_SRCMAC_ADDR[4] = {0xFF,0xFF,0xFF,0xFF};
uint8 ENV_UBA_DST_ADDR[2] ={0xFF,0xFF};
uint8 ENV_UBA_SRC_ADDR[2] ={0xDD,0xDD};
uint8 ENV_UBA_END_ADDR[2] ={0xFF,0xFF};
uint8 ENV_NODE_SRCMAC_ADDR[4] = {0xFF,0xFF,0xFF,0xFF};
uint8 BROADCAST_ADDR[4] = {0xFF,0xFF,0xFF,0xFF};
typedef struct environment_detector_time
{
  uint8 center;
  uint8 year;
  uint8 month;
  uint8 week;
  uint8 day;
  uint8 hour;
  uint8 minute;
  uint8 second;
}ENVIRONMENT_DETECTOR_TIME;

static ENVIRONMENT_DETECTOR_TIME *env_time_msg;
//static HWGG_FRAME *env_data_packet;
/*

*/
void environment_detector_date_deal(u_char *pcData)
{
  //uint8 env_data_len;
  //u_char* env_data = pcData+4;
  //env_time_msg->center = *env_data++;
  //env_time_msg->year = *env_data++;
  //env_time_msg->month = *env_data++;
  //env_time_msg->day = *env_data++;
  //env_time_msg->hour = *env_data++;
  //env_time_msg->minute = *env_data++;
  //env_time_msg->second = *env_data;
  //env_time_msg->week = date2week(env_time_msg->center,env_time_msg->year,env_time_msg->month,env_time_msg->day);
  
  //env_send_data[env_data_len++] = env_time_msg.center;
  //env_send_data[env_data_len++] = env_time_msg.year;
  //env_send_data[env_data_len++] = env_time_msg.month; 
  //env_send_data[env_data_len++] = env_time_msg.day;
  //env_send_data[env_data_len++] = env_time_msg.week;
  //env_send_data[env_data_len++] = env_time_msg.hour;
  //env_send_data[env_data_len++] = env_time_msg.minute;
  //env_send_data[env_data_len] = env_time_msg.second;
  //return env_data_len
  
  
}

void environment_detector_send_packet_deal(u_char *env_send,const u_char *env_rec_data)
{
  u_short crc_num;
  u_char time_data[8];
  u_short year;
  static HWGG_FRAME *env_send_data; 
  memcpy(time_data,env_rec_data,ENV_MODE_DATA_LEN);
  year = time_data[0]*100 + time_data[1];
  time_data[0] = (year>>8) & 0xff;
  time_data[1] = year & 0xff;
  FIRE_NODE *env_send_data_node = NULL;
  env_send_data = (HWGG_FRAME*)env_send;
  env_send_data_node = (FIRE_NODE *)(env_send_data->ubaData);
  env_send_data->ubHwggHead = HWGG_HEAD;
  env_send_data->ubLen = ENV_TIME_MSG_LEN;
  env_send_data->ubPanId = ENV_SEND_PANID;
  memcpy(env_send_data->ubaDstAddr,ENV_UBA_DST_ADDR,ENV_UBA_ADDR_LEN);
  memcpy(env_send_data->ubaSrcAddr,ENV_UBA_SRC_ADDR,ENV_UBA_ADDR_LEN);
  memcpy(env_send_data->ubaEndAddr,ENV_UBA_END_ADDR,ENV_UBA_ADDR_LEN);
  env_send_data->ubSrcLayer = ENV_SEND_SRC_LAYER;
  env_send_data->ubEndLayer = ENV_SEND_END_LAYER;
  env_send_data->ubSeq = ENV_SEND_SEQ;
  env_send_data->ubCmd = HWGG_CMD_TIMER;
  env_send_data_node->ubLen = ENV_NODE_LEN;
  memcpy(env_send_data_node->ubaSrcMac,ENV_NODE_SRCMAC_ADDR,ENV_NODE_MAC_LEN);
  memcpy(env_send_data_node->ubaDstMac,BROADCAST_ADDR,ENV_NODE_MAC_LEN);
  env_send_data_node->ubCmd = HWGG_CMD_TIMER;
  memcpy(env_send_data_node->ubaData,time_data,ENV_MODE_DATA_LEN);
  //crc
  crc_num = cyg_crc16((uint8*)(&(env_send_data->ubLen)),ENV_TIME_MSG_LEN);
  env_send_data_node->ubaData[ENV_MODE_DATA_LEN] = (crc_num>>8) & 0xff;
  env_send_data_node->ubaData[ENV_MODE_DATA_LEN+1] = crc_num & 0xff;
  
  env_send_data_node->ubaData[ENV_MODE_DATA_LEN+2] = HWGG_END;
}


#define ELECTRICAL_MSG_LEN              23
#define ELECTRICAL_SEND_PANID           0xFF
#define ELECTRICAL_UBA_ADDR_LEN         2
#define ELECTRICAL_SRC_LAYER            0xFF
#define ELECTRICAL_END_LAYER            0xFF
#define ELECTRICAL_SEQ                  0xFF
#define ELECTRICAL_NODE_LEN             11
#define ELECTRICAL_NODE_MAC_LEN         4
#define ELECTRICAL_MODE_DATA_LEN        1

const u_char ELECTRICAL_UBA_DST_ADDR[2] = {0xFF,0xFF};
const u_char ELECTRICAL_UBA_SRC_ADDR[2] = {0xFF,0xFF};
const u_char ELECTRICAL_UBA_END_ADDR[2] = {0xFF,0xFF};

void electrical_packet_deal(u_char* electrical_send,u_char* electricalSrcMac,u_char* electricalDstMac,const u_char electrical_cmd,const u_char electrical_data)
{
  u_short crc_num;
  static HWGG_FRAME *electrical_send_data;
  FIRE_NODE *electrical_send_data_node = NULL;
  electrical_send_data = (HWGG_FRAME*)electrical_send;
  electrical_send_data_node = (FIRE_NODE *)(electrical_send_data->ubaData);
  electrical_send_data->ubHwggHead = HWGG_HEAD;
  electrical_send_data->ubLen = ELECTRICAL_MSG_LEN;
  electrical_send_data->ubPanId = ELECTRICAL_SEND_PANID;
  memcpy(electrical_send_data->ubaDstAddr,ELECTRICAL_UBA_DST_ADDR,ELECTRICAL_UBA_ADDR_LEN);
  memcpy(electrical_send_data->ubaSrcAddr,ELECTRICAL_UBA_SRC_ADDR,ELECTRICAL_UBA_ADDR_LEN);
  memcpy(electrical_send_data->ubaEndAddr,ELECTRICAL_UBA_END_ADDR,ELECTRICAL_UBA_ADDR_LEN);
  electrical_send_data->ubSrcLayer = ELECTRICAL_SRC_LAYER;
  electrical_send_data->ubEndLayer = ELECTRICAL_END_LAYER;
  electrical_send_data->ubSeq = ELECTRICAL_SEQ;
  electrical_send_data->ubCmd = electrical_cmd;
  electrical_send_data_node->ubLen = ELECTRICAL_NODE_LEN;
  memcpy(electrical_send_data_node->ubaSrcMac,electricalSrcMac,ELECTRICAL_NODE_MAC_LEN);
  memcpy(electrical_send_data_node->ubaDstMac,electricalDstMac,ELECTRICAL_NODE_MAC_LEN);
  electrical_send_data_node->ubCmd = electrical_cmd;
  memcpy(electrical_send_data_node->ubaData,&electrical_data,ELECTRICAL_MODE_DATA_LEN);
  //crc
  crc_num = cyg_crc16((uint8*)(&(electrical_send_data->ubLen)),ELECTRICAL_MSG_LEN);
  //electrical_send_data_node->ubaData[ELECTRICAL_MODE_DATA_LEN+1] = (crc_num>>8) & 0xff;
  //electrical_send_data_node->ubaData[ELECTRICAL_MODE_DATA_LEN] = crc_num & 0xff;
  electrical_send_data_node->ubaData[ELECTRICAL_MODE_DATA_LEN] = (crc_num>>8) & 0xff;
  electrical_send_data_node->ubaData[ELECTRICAL_MODE_DATA_LEN+1] = crc_num & 0xff;
  
  electrical_send_data_node->ubaData[ELECTRICAL_MODE_DATA_LEN+2] = HWGG_END;
}


void dianqi_packet_deal(u_char* electrical_send,u_char* electricalSrcMac,u_char* electricalDstMac,const u_char electrical_cmd,const u_char* electrical_data,u_char dianqi_len)
{
  u_short crc_num;
  static HWGG_FRAME *electrical_send_data;
  FIRE_NODE *electrical_send_data_node = NULL;
  electrical_send_data = (HWGG_FRAME*)electrical_send;
  electrical_send_data_node = (FIRE_NODE *)(electrical_send_data->ubaData);
  electrical_send_data->ubHwggHead = HWGG_HEAD;
  electrical_send_data->ubLen = 22 + dianqi_len;
  electrical_send_data->ubPanId = ELECTRICAL_SEND_PANID;
  memcpy(electrical_send_data->ubaDstAddr,ELECTRICAL_UBA_DST_ADDR,ELECTRICAL_UBA_ADDR_LEN);
  memcpy(electrical_send_data->ubaSrcAddr,ELECTRICAL_UBA_SRC_ADDR,ELECTRICAL_UBA_ADDR_LEN);
  memcpy(electrical_send_data->ubaEndAddr,ELECTRICAL_UBA_END_ADDR,ELECTRICAL_UBA_ADDR_LEN);
  electrical_send_data->ubSrcLayer = ELECTRICAL_SRC_LAYER;
  electrical_send_data->ubEndLayer = ELECTRICAL_END_LAYER;
  electrical_send_data->ubSeq = ELECTRICAL_SEQ;
  electrical_send_data->ubCmd = electrical_cmd;
  electrical_send_data_node->ubLen = 10 + dianqi_len;
  memcpy(electrical_send_data_node->ubaSrcMac,electricalSrcMac,ELECTRICAL_NODE_MAC_LEN);
  memcpy(electrical_send_data_node->ubaDstMac,electricalDstMac,ELECTRICAL_NODE_MAC_LEN);
  electrical_send_data_node->ubCmd = electrical_cmd;
  memcpy(electrical_send_data_node->ubaData,electrical_data,dianqi_len);
  //crc
  crc_num = cyg_crc16((uint8*)(&(electrical_send_data->ubLen)),22 + dianqi_len);
  //electrical_send_data_node->ubaData[ELECTRICAL_MODE_DATA_LEN+1] = (crc_num>>8) & 0xff;
  //electrical_send_data_node->ubaData[ELECTRICAL_MODE_DATA_LEN] = crc_num & 0xff;
  electrical_send_data_node->ubaData[dianqi_len] = (crc_num>>8) & 0xff;
  electrical_send_data_node->ubaData[dianqi_len+1] = crc_num & 0xff;
  
  electrical_send_data_node->ubaData[dianqi_len+2] = HWGG_END;
}

