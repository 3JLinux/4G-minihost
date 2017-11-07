#include "contiki.h"
#include "basictype.h"
#include "app_sound_light_alarm.h"
#include <string.h>
#include "sysprintf.h"
#include "lib/ringbuf.h"
#include "dev_info.h"
#include "hwgg.h"
#include "common.h"
#include "sysprintf.h"

static process_event_t event_sound_light_msg;
const static u_char SOUND_LIGHT_MAC_NULL[4] = {0,0,0,0} ;
static uint8 sound_light_on_num;
static uint8 sound_light_on_mac[30][4];

PROCESS(sound_light_msg_handler_process, "sound_light_msg_handler");

static int rfUartProtocolFrameFill(u_char *pioBuf, u_char ubCmd, const u_char *pcDstMAC)
{
    int nFrameL = -1;
    u_short uwCrc = 0;
    u_short dataEndPos = 0;
	HWGG_FRAME *pFrame = NULL;
	FIRE_NODE *pFireNode = NULL;

	pFrame = (HWGG_FRAME *)pioBuf;
	pFireNode = (FIRE_NODE *)pFrame->ubaData;

	if (NULL == pioBuf)
		return -1;
	pFrame->ubHwggHead = HWGG_HEAD;
	pFrame->ubLen = 12 + 10;
	pFrame->ubPanId = 0xff;
	pFrame->ubaDstAddr[0] = 0xff;
	pFrame->ubaDstAddr[1] = 0xff;
	pFrame->ubaSrcAddr[0] = 0xff;
	pFrame->ubaSrcAddr[1] = 0xff;
    pFrame->ubaEndAddr[0] = 0xff;
	pFrame->ubaEndAddr[1] = 0xff;
    pFrame->ubSrcLayer = 0xff;
    pFrame->ubEndLayer = 0xBB;
    pFrame->ubSeq = 0xff;
    pFrame->ubCmd = ubCmd;
    
    pFireNode->ubLen = 10;
    memset(pFireNode->ubaSrcMac, 0xff, HWGG_NODE_MAC_LEN);
    memcpy(pFireNode->ubaDstMac, pcDstMAC, HWGG_NODE_MAC_LEN);
    pFireNode->ubCmd = ubCmd;

	uwCrc = cyg_crc16((const u_char *)&pFrame->ubLen, pFrame->ubLen);//sub head
	//pFireNode->ubaData[dataEndPos++] = uwCrc&0xff;		//crc L
	//pFireNode->ubaData[dataEndPos++] = (uwCrc>>8)&0xff;//crc H
	pFireNode->ubaData[dataEndPos++] = (uwCrc>>8)&0xff;//crc H
	pFireNode->ubaData[dataEndPos++] = uwCrc&0xff;	//crc L	
	pFireNode->ubaData[dataEndPos++] = HWGG_END;		//end

	nFrameL = pFrame->ubLen + HWGG_HEAD_END_CRC_LEN;
    MEM_DUMP(9, "rf->", pioBuf, nFrameL);	
	return nFrameL;
}

static void rfUartSendProcess(u_char ubCmd) /*Modify_jjj*/
{
    const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
    int length;
    static u_char txBuf[64];     
	static u_char ubIndex = 0;  
    if(ubCmd == SOUND_LIGHT_CMD_OFF || ubCmd == SOUND_LIGHT_CMD_MANUAL_ALARM )
    {
	if (pfireNodeInfo->soundl_node_num == 0 || pfireNodeInfo->soundl_node_num > FIRE_SOUND_LIGHT_NODE_MAX_NUM)
	  	return ;    
      if(ubIndex >= pfireNodeInfo->soundl_node_num){        
        ubIndex = 0;
      }
      if(ubIndex < FIRE_SOUND_LIGHT_NODE_MAX_NUM){
        if(ubCmd != SOUND_LIGHT_CMD_MANUAL_ALARM)
        {
          length = rfUartProtocolFrameFill(txBuf,ubCmd,pfireNodeInfo->soundlNodeArray[ubIndex].ubaNodeAddr);
        }
        else 
        {
          length = rfUartProtocolFrameFill(txBuf,SOUND_LIGHT_CMD_ON,pfireNodeInfo->soundlNodeArray[ubIndex].ubaNodeAddr);
        }
        if (length > 0)
           Send_RF_Data_by_Uart(txBuf, length);
      }
    }
    else if(ubCmd == SOUND_LIGHT_CMD_ON)
    {
      if (sound_light_on_num == 0 || sound_light_on_num > FIRE_SOUND_LIGHT_NODE_MAX_NUM)
	  	return ;    
      if(ubIndex >= sound_light_on_num){        
        ubIndex = 0;
      }
      if(ubIndex < FIRE_SOUND_LIGHT_NODE_MAX_NUM){
        length = rfUartProtocolFrameFill(txBuf,ubCmd,&(sound_light_on_mac[ubIndex][0]));
        if (length > 0)
           Send_RF_Data_by_Uart(txBuf, length);
      }
    }
    ubIndex++;
}

extern void addSoundLightNodeTable(const u_char *pcAddMAC)
{
    u_char i;
    const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
    static FIRE_NODE_INFO stFireNodeInfo;
    
    if(pfireNodeInfo->soundl_node_num < FIRE_SOUND_LIGHT_NODE_MAX_NUM && pfireNodeInfo->node_num > 0){
        for (i = 0; i < pfireNodeInfo->soundl_node_num; i++)
    	{
    		if (mem_cmp(pcAddMAC, pfireNodeInfo->soundlNodeArray[i].ubaNodeAddr, HWGG_NODE_MAC_LEN) == 0)
    		{
    			return;//sound node exist
    		}
    	}
        stFireNodeInfo = *pfireNodeInfo;
        memcpy(stFireNodeInfo.soundlNodeArray[stFireNodeInfo.soundl_node_num].ubaNodeAddr, pcAddMAC, HWGG_NODE_MAC_LEN);
        stFireNodeInfo.soundl_node_num++;
        MEM_DUMP(8, "AddSoundLightTable", stFireNodeInfo.soundlNodeArray, stFireNodeInfo.soundl_node_num*HWGG_NODE_MAC_LEN);
        extgdbdevSetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO, 0, (const void *)&stFireNodeInfo, sizeof(FIRE_NODE_INFO));
    } 
}

extern void sound_light_address_table(u_char *sound_light_mac,uint8 sound_light_num) /*Modify_jjj*/
{
  u_char i;
  sound_light_on_num = sound_light_num;
  if(sound_light_num > 0 && sound_light_num < FIRE_SOUND_LIGHT_NODE_MAX_NUM)
  {
    for(i = 0;i < sound_light_num;i++)
    {
      memcpy(&(sound_light_on_mac[i][0]), &(sound_light_mac[4*i]), HWGG_NODE_MAC_LEN);
      XPRINTF((12, "sound_light_mac:%X %X %X %X\n",(sound_light_mac[4*i]),(sound_light_mac[4*i+1]),(sound_light_mac[4*i+2]),(sound_light_mac[4*i+3])));
      //MEM_DUMP(8, "AddSoundLightTable", stFireNodeInfo.soundlNodeArray, stFireNodeInfo.soundl_node_num*HWGG_NODE_MAC_LEN);
      //extgdbdevSetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO, 0, (const void *)&stFireNodeInfo, sizeof(FIRE_NODE_INFO));
    }
    for(i = sound_light_num;i < FIRE_SOUND_LIGHT_NODE_MAX_NUM;i++)
    {
      memcpy(&(sound_light_on_mac[i][0]),SOUND_LIGHT_MAC_NULL, HWGG_NODE_MAC_LEN);
    }
  }
  else 
  {
    for(i = 0;i < FIRE_SOUND_LIGHT_NODE_MAX_NUM;i++)
    {
      memcpy(&(sound_light_on_mac[i][0]),SOUND_LIGHT_MAC_NULL, HWGG_NODE_MAC_LEN);
    }
  }
}



extern void setSoundLightState(const u_char cmd)
{
    static SOUND_LIGHT_MSG soundLightMsg;
    soundLightMsg.ubCmd = cmd;
    process_post(&sound_light_msg_handler_process, event_sound_light_msg, &soundLightMsg);
}

static void soundLightMsgHandler(process_event_t ev, process_data_t data)
{
	static SOUND_LIGHT_MSG soundLightMsg;
    static struct etimer et_send_delay;
    static struct etimer et_emergency_timeout;
    static clock_time_t send_delay_time = SOUND_LIGHT_SEND_PKG_NOMAL_TIME;
    
	if (ev == event_sound_light_msg && data != NULL)
	{
		soundLightMsg = *(SOUND_LIGHT_MSG *)data;
        XPRINTF((8,"sound light state change to %02X\r\n", soundLightMsg.ubCmd));
        if(soundLightMsg.ubCmd == SOUND_LIGHT_CMD_ON){
           XPRINTF((8, "SOUND_LIGHT_STATE_ON\r\n"));
           send_delay_time = SOUND_LIGHT_SEND_PKG_EMERGENCY_TIME;
           etimer_set(&et_emergency_timeout, SOUND_LIGHT_EMERGENCY_TIME);
        }
        else if(soundLightMsg.ubCmd == SOUND_LIGHT_CMD_OFF){
           XPRINTF((8, "SOUND_LIGHT_STATE_OFF\r\n"));
           send_delay_time = SOUND_LIGHT_SEND_PKG_EMERGENCY_TIME;
           etimer_set(&et_emergency_timeout, SOUND_LIGHT_EMERGENCY_TIME);
        }
        else{
           XPRINTF((8, "SOUND_LIGHT_STATE_ERR\r\n"));
        }         
	}
	else if (ev == PROCESS_EVENT_TIMER && data == &et_send_delay)
	{
        
	}
    else if (ev == PROCESS_EVENT_TIMER && data == &et_emergency_timeout)
	{
	    XPRINTF((8, "SOUND_LIGHT_STATE_NOMAL\r\n"));
        send_delay_time = SOUND_LIGHT_SEND_PKG_NOMAL_TIME;
	}
    etimer_set(&et_send_delay, send_delay_time);
    if(soundLightMsg.ubCmd == SOUND_LIGHT_CMD_ON || soundLightMsg.ubCmd == SOUND_LIGHT_CMD_OFF){
        rfUartSendProcess(soundLightMsg.ubCmd);  
    }   
}

PROCESS_THREAD(sound_light_msg_handler_process, ev, data)
{
	PROCESS_BEGIN();
    event_sound_light_msg = process_alloc_event( );
    XPRINTF((12, "sound_light_msg_handler_process\n"));
	while (1)
	{
		PROCESS_YIELD();
		soundLightMsgHandler(ev, data);
	}
	PROCESS_END();
}

void appSoundLightInit(void)
{
    process_start(&sound_light_msg_handler_process, NULL);
}

