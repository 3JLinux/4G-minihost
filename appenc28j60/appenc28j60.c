#include "contiki.h"

#include "contiki.h"
#include "lib/random.h"
#include "sys/ctimer.h"
#include "sys/etimer.h"
#include "net/ip/uip.h"
#include "net/ipv6/uip-ds6.h"

#include "net/ip/simple-udp.h"

#include "net/rpl/rpl.h"

#include <stdio.h>
#include <string.h>

#include "sysprintf.h"


#include "basictype.h"
#include "iodef.h"
#include "ip/uip.h"
#include "sim900a.h"
#include "gprsProtocol.h"
#include "dev_info.h"
#include "hwgg.h"
#include "app485.h"
#include "app_sound_light_alarm.h"
//#include "mp3app.h"

#define UDP_PORT_C	4566
//#define UDP_PORT_C      51091
//#define UDP_PORT_C	4570


PROCESS_NAME(sim900a_app_process);
extern process_event_t sim900_event_start_sms_phone;


const uip_ip4addr_t stip4Addr={192,168,4,212};
const uip_ip4addr_t stip4MaskAddr={192,168,4,1};

//mark mark
//remote server ip addr
//const uip_ip4addr_t serverHostIp4Addr={139,159,226,232};//新正式
//const uip_ip4addr_t serverHostIp4Addr={119,29,155,148};//正式
//const uip_ip4addr_t serverHostIp4Addr={139,159,209,212};//新测试
//const uip_ip4addr_t serverHostIp4Addr={139,159,220,138};//新华为云测试
//const uip_ip4addr_t serverHostIp4Addr={192,168,4,120};//林工
//const uip_ip4addr_t serverHostIp4Addr={119,29,224,28};//调试
//const uip_ip4addr_t serverHostIp4Addr={192,168,0,203};//本地
//const uip_ip4addr_t serverHostIp4Addr={61,133,116,241};//山东
//const uip_ip4addr_t serverHostIp4Addr={47,97,164,8};//维科
//const uip_ip4addr_t serverHostIp4Addr={139,199,58,208};//新平台服务器
//const uip_ip4addr_t serverHostIp4Addr={119,29,223,106};//北秦
//const uip_ip4addr_t serverHostIp4Addr={139,199,58,208};//万科
//const uip_ip4addr_t serverHostIp4Addr={47,106,48,157};//万科
//const uip_ip4addr_t serverHostIp4Addr={192,168,0,191};
const uip_ip4addr_t serverHostIp4Addr={47,95,43,248};//北京
//const u_char serverIp[]="119.29.224.28";
//const uip_ip4addr_t serverHostIp4Addr={192,168,3,6};
//remote server ip port
static const u_short serverHostPort = UDP_PORT_C;

extern uip_lladdr_t uip_lladdr;

static struct simple_udp_connection udp_connection;


static SIM900A_MSG stEncRxMsg;
static SIM900A_MSG stEncTxMsg;
static SIM900A_MSG stEncTxMsgTran;
volatile static NET_MODE stnetMode={NET_CONNECT_NONE, 0};
process_event_t event_ip_msg;
process_event_t event_ip_heart;
process_event_t event_ip_send_data;
process_event_t event_ip_warn;
process_event_t event_ip_tran;
process_event_t event_ack_time;
process_event_t event_electrical_control_ack;
process_event_t event_electrical_state;
process_event_t event_electrical_set;
process_event_t event_send_rssi;
process_event_t event_water_set;

#define IP_NOT_NET_WAIT_TIME	120		//second

#define ERR_ADDRESS_SITE 13//17
#define USLESS_DATA_NUM 14//18


/*---------------------------------------------------------------------------*/
PROCESS(ip_receive_process, "ip_receive");
PROCESS(ip_data_process, "ip_data");


void netModeSet(u_char mode)
{
	//if (mode == NET_CONNECT_ETH || mode == NET_CONNECT_NONE || mode == NET_CONNECT_SIM900)
	stnetMode.netMode = mode;
}


NET_MODE *netModeGet(void)
{
        //if((getNetState() == NET_SIM900_CONNECT_NONE) && (stnetMode.netMode != NET_CONNECT_ETH))
        //{
          //stnetMode.netMode = NET_CONNECT_ETH;
        //}
	return (NET_MODE*)&stnetMode;
}


static void updateNetMode(u_char mode)
{
	netModeSet(mode);
	stnetMode.lastRxTime = clock_seconds( );
}

static void checkNetMode(void)
{
	//not update time
	if ((stnetMode.lastRxTime + IP_NOT_NET_WAIT_TIME) < clock_seconds( ))
	{
		updateNetMode(NET_CONNECT_NONE);
	}
}



static void appSaveIpData(u_char *pdataBuf, const uint8_t *data, u_short dataLen)
{
	if (pdataBuf != NULL)
	{
		SIM900A_MSG *pMSG = (SIM900A_MSG *)pdataBuf;
		pMSG->nLen = dataLen;
		memcpy(pMSG->ubamsg, data, dataLen);
		process_post(&ip_data_process, event_ip_msg, pdataBuf);
		updateNetMode(NET_CONNECT_ETH);
	}
}





/*---------------------------------------------------------------------------*/
static void receiver(struct simple_udp_connection *c,
         const uip_ipaddr_t *sender_addr,
         uint16_t sender_port,
         const uip_ipaddr_t *receiver_addr,
         uint16_t receiver_port,
         const uint8_t *data,
         uint16_t datalen)
{
	XPRINTF((10,"Data received from "));
	XPRINTF((10," on port %d from port %d with length %d: \n",receiver_port, sender_port, datalen));
	MEM_DUMP(10 , "<-w", data, datalen);
	appSaveIpData((u_char *)&stEncRxMsg, data, datalen);
}

/*---------------------------------------------------------------------------*/
static uint8_t should_blink = 1;
static void route_callback(int event, uip_ipaddr_t *route, uip_ipaddr_t *ipaddr, int num_routes)
{
  if(event == UIP_DS6_NOTIFICATION_DEFRT_ADD) {
    should_blink = 0;
  } else if(event == UIP_DS6_NOTIFICATION_DEFRT_RM) {
    should_blink = 1;
  }
}

const u_char udp_testdata[]={0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x55,0x33,0x89};
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(ip_receive_process, ev, data)
{
  static struct etimer et;
  static uip_ip6addr_t serverHostIp6Addr;
  static struct uip_ds6_notification n;


  PROCESS_BEGIN();
  ip64_addr_4to6(&serverHostIp4Addr, &serverHostIp6Addr);
  uip_ds6_notification_add(&n, route_callback);
  simple_udp_register(&udp_connection, 2000, &serverHostIp6Addr, UDP_PORT_C, receiver);

 // etimer_set(&et, CLOCK_SECOND*120);
  while(1) {
    PROCESS_YIELD( );
    //etimer_set(&et, 30*CLOCK_SECOND);
    //PROCESS_WAIT_UNTIL(etimer_expired(&et));
    //simple_udp_send(&udp_connection, udp_testdata, sizeof(udp_testdata));
    /*
    if (ev == tcpip_event)
    {
    	if(uip_newdata())
    	{
			MEM_DUMP(6 , "<-w", uip_appdata, uip_datalen());
		}
    }
    */
  }
  PROCESS_END();
}



void closeGprs(void)
{

}

void openGprs(void)
{
	
}


#define IP_HEART_TIME  (30*CLOCK_SECOND)
#define IP_ACK_WAIT_TIME (10*CLOCK_SECOND)


void ipSendFireMacSync(u_char macSync, u_char uwSeq)
{
	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
	NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
	int nFramL = -1;
	SIM900A_MSG *ptxMsg = &stEncTxMsg;
	
	if (macSync)
	{
		return;
	}
	else
	{
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_REQUST_SYNC, uwSeq, paddrInfo->ubaNodeAddr, NULL,0);//iccid, 10);

		if (nFramL > 0)
		{
			ptxMsg->nLen = nFramL;
			process_post(&ip_data_process, event_ip_send_data,ptxMsg);
		}		
	}
}

static struct etimer et_reboot;
static u_char electrical_send[27] = {0};
static u_char electrical_set_val_buf[18] = {0};
static u_char electrical_set_val_send[34] = {0};
static u_char water_set_val_buf[22] = {0};
static u_char water_set_val_send[38] = {0};
static u_char water_cache_buf[11] = {0};
static u_char water_cache_send[30] = {0};
void ipProtocolRxProcess(u_char *ptxBuf, const u_char *pcFrame, u_short uwSendSeq , struct etimer *petwait)
{
	const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
	const GPRS_PROTOCOL * pGprs = (const GPRS_PROTOCOL *)pcFrame;
	u_short uwSeq = pGprs->ubSeqL | (pGprs->ubSeqH << 8);
	u_short uwLen = pGprs->ubDataLenL | (pGprs->ubDataLenH<<8);
	static GPRS_WARN_PHONE stWarnPhone;
	static u_char macSync = 0;
	

	/*we have fire mac addr, not need to sync fire mac addr first time
    dev power up
	*/


	if (pGprs->ubCmd == GPRS_F_CMD_ACK)
	{
		if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
			ipSendFireMacSync(macSync, uwSeq);
		}
	}
	else if (pGprs->ubCmd == GPRS_F_CMD_DATA_SYNC)
	{
		SIM900A_MSG *ptxMsg = (SIM900A_MSG *)ptxBuf;
		static FIRE_NODE_INFO stFireNode;
		const FIRE_NODE_INFO *pFireNodeInfo; 
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		int nFramL = -1;

		//now we sync fire mac addr
		if (macSync == 0)
		{
			macSync = 1;
		}
		
		memset(&stFireNode, 0, sizeof(FIRE_NODE_INFO));
		if (uwLen > GPRS_F_MAC_LEN)
		{
			pFireNodeInfo = (const FIRE_NODE_INFO *)pGprs->ubaData;
			if (pFireNodeInfo->node_num > 0)
			{
				stFireNode.node_num = pFireNodeInfo->node_num;
				memcpy(stFireNode.nodeArray, pFireNodeInfo->nodeArray, stFireNode.node_num*4);
				extgdbdevSetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO, 0, (const void *)&stFireNode, sizeof(FIRE_NODE_INFO));
			}
		}
		
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_ACK, uwSeq, paddrInfo->ubaNodeAddr, NULL, 0);

		if (nFramL > 0)
		{
			ptxMsg->nLen = nFramL;
			process_post(&ip_data_process, event_ip_send_data,ptxMsg);
		}
	}
	else if (pGprs->ubCmd == GPRS_F_CMD_WARN_ACK)
	{
                const GPRS_WARN_INFO *pGprsWarnInfo = (const GPRS_WARN_INFO *)(pGprs->ubaData);
		if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
		//clean warn phohe data
		memset(&stWarnPhone, 0, sizeof(GPRS_WARN_PHONE));
		if (uwLen-GPRS_F_MAC_LEN >= 40)
		{
			NET_MODE *pnetMode = (NET_MODE*)netModeGet( );
			memcpy(&stWarnPhone, pGprs->ubaData, 40);
			if (pnetMode->netMode == NET_CONNECT_ETH)
			{
				if (checkPhoneNum((const GPRS_WARN_PHONE*) &stWarnPhone))
				{
					//process_post(&sim900a_app_process, sim900_event_start_sms_phone, &stWarnPhone);
				}
            if( pGprsWarnInfo->ubInfoLen > 0 && pGprsWarnInfo->ubInfoLen < (SMOKE_ADDRESS_INFO_MAX_LEN+13) )
            {
                uint8 i,sound_light_mac_num,err_address_num;
                static u_char ubaBuf[128];  
                memcpy( ubaBuf+1, pGprsWarnInfo->ubDevType, pGprsWarnInfo->ubInfoLen );
                    err_address_num = ubaBuf[ERR_ADDRESS_SITE];
                    sound_light_mac_num = ubaBuf[USLESS_DATA_NUM+err_address_num];
                    sound_light_address_table(&(ubaBuf[USLESS_DATA_NUM+err_address_num+1]),sound_light_mac_num);
                    XPRINTF((12, "sound_light_mac_num:0x%X\n",&sound_light_mac_num));	
            }
			}
		}
	}
        
        else if(pGprs->ubCmd == GPRS_F_CMD_ASK_TIME_ACK)
        {
                u_char src_mac[4],dst_mac[4];
                static u_char env_send[34];
                static u_char env_sned_buff[8] = {0};
                u_char i;
                if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
                XPRINTF((12, "GPRS_F_CMD_ASK_TIME_ACK"));
                memcpy(src_mac,pGprs->ubaMac,4);
                memcpy(dst_mac,pGprs->ubaData,4);
                for(i=0;i<8;i++)
                {
                  env_sned_buff[i] = (pGprs->ubaData)[i + 4] / 16 * 10;
                  switch((pGprs->ubaData)[i + 4] % 16)
                  {
                    case 10:env_sned_buff[i] += 0x0a;break;
                    case 11:env_sned_buff[i] += 0x0b;break;
                    case 12:env_sned_buff[i] += 0x0c;break;
                    case 13:env_sned_buff[i] += 0x0d;break;
                    case 14:env_sned_buff[i] += 0x0e;break;
                    case 15:env_sned_buff[i] += 0x0f;break;
                  default:env_sned_buff[i] += (pGprs->ubaData)[i + 4] % 16;break;
                  }
                }
                environment_detector_send_packet_deal(env_send,env_sned_buff);
                MEM_DUMP(9, "rf->",  env_send, 34);
                Send_RF_Data_by_Uart(env_send,34);
        }
        else if(pGprs->ubCmd == GPRS_F_CMD_SOUND_RESET)
        {
          u_char src_mac[4],dst_mac[4];//={0x76,0x30,0x00,0x7c};
            if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
            XPRINTF((12, "GPRS_F_CMD_ELECTRICAL_CONTROL\n"));
            memcpy(src_mac,pGprs->ubaMac,4);
            memcpy(dst_mac,pGprs->ubaData,4);
            electrical_packet_deal(electrical_send,src_mac,dst_mac,HWGG_CMD_SOUND_RESET,(pGprs->ubaData)[4]);
            //electrical_packet_deal(electrical_send,src_mac,dst_mac,HWGG_CMD_SOUND_RESET,null);
            MEM_DUMP(12, "rf->",electrical_send, 27);
        }
         else if(pGprs->ubCmd == GPRS_F_CMD_ELECTRICAL_CONTROL) //dianqi
     //if(pGprs->ubCmd == GPRS_F_CMD_ACK) 
     {
       u_char src_mac[4],dst_mac[4];//={0x76,0x30,0x00,0x7c};
            if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
            XPRINTF((12, "GPRS_F_CMD_ELECTRICAL_CONTROL\n"));
            memcpy(src_mac,pGprs->ubaMac,4);
            memcpy(dst_mac,pGprs->ubaData,4);
            electrical_packet_deal(electrical_send,src_mac,dst_mac,HWGG_CMD_ELECTRICAL_CONTROL,(pGprs->ubaData)[4]);
            Send_RF_Data_by_Uart(electrical_send,27);
            //uart2_send_bytes(electrical_send,27);
            //etimer_set(&et_electrical_control_wait, ELECTRIAL_CONTROL_TIME);
            //XPRINTF((12, "Send_RF_Data_by_Uart\n"));
            MEM_DUMP(12, "rf->",electrical_send, 27);
            MEM_DUMP(2, "rf->",electrical_send, 27);
            //electrical_control_wait_open = 1;
     }
     else if(pGprs->ubCmd == GPRS_F_CMD_ELE_SET_THRESHOLD_VAL)
     {
       //u_char src_mac[4],dst_mac[4];//={0x76,0x30,0x00,0x7c};
       u_char len = 0;
            if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
            XPRINTF((12, "GPRS_F_CMD_ELE_SET_THRESHOLD_VAL\n"));
            //memcpy(src_mac,pGprs->ubaMac,4);
            //memcpy(dst_mac,pGprs->ubaData,4);
            electrical_set_val_buf[0] = 0x12;
            memcpy(electrical_set_val_buf + 1,pGprs->ubaMac,4);
            memcpy(electrical_set_val_buf + 5,pGprs->ubaData,4);
            electrical_set_val_buf[9] = HWGG_CMD_ELE_SET_THRESHOLD_VAL;
            memcpy(electrical_set_val_buf + 10,(pGprs->ubaData)+4,8);
            len = hwggFillFrame(electrical_set_val_send,0xDD,HWGG_CMD_ELE_SET_THRESHOLD_VAL,electrical_set_val_buf,18);
            
            Send_RF_Data_by_Uart(electrical_set_val_send,len);
            //uart2_send_bytes(electrical_send,27);
            //etimer_set(&et_electrical_control_wait, ELECTRIAL_CONTROL_TIME);
            //XPRINTF((12, "Send_RF_Data_by_Uart\n"));
            MEM_DUMP(12, "rf->",electrical_set_val_send,len);
            //MEM_DUMP(2, "rf->",electrical_send, 27);
     }
     else if(pGprs->ubCmd == GPRS_F_CMD_WATER_SET_VAL)
     {
       //u_char src_mac[4],dst_mac[4];//={0x76,0x30,0x00,0x7c};
       u_char len = 0;
            if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
            XPRINTF((12, "GPRS_F_CMD_WATER_SET_VAL\n"));
            //memcpy(src_mac,pGprs->ubaMac,4);
            //memcpy(dst_mac,pGprs->ubaData,4);
            water_set_val_buf[0] = 0x0e;
            memcpy(water_set_val_buf + 1,pGprs->ubaMac,4);
            memcpy(water_set_val_buf + 5,pGprs->ubaData,4);
            water_set_val_buf[9] = HWGG_CMD_WATER_VAL_SET;
            memcpy(water_set_val_buf + 10,(pGprs->ubaData)+4,12);
            len = hwggFillFrame(water_set_val_send,0xFF,HWGG_CMD_WATER_VAL_SET,water_set_val_buf,22);
            
            Send_RF_Data_by_Uart(water_set_val_send,len);
            //uart2_send_bytes(electrical_send,27);
            //etimer_set(&et_electrical_control_wait, ELECTRIAL_CONTROL_TIME);
            //XPRINTF((12, "Send_RF_Data_by_Uart\n"));
            MEM_DUMP(12, "rf->",water_set_val_send,len);
            //MEM_DUMP(2, "rf->",electrical_send, 27);
     }
     /*
     else if(pGprs->ubCmd == GPRS_F_CMD_UPDATE_STAR)
     {
       u_char len = 0;
            if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
            XPRINTF((12, "GPRS_F_CMD_WATER_SET_VAL\n"));
            SCB->VTOR = FLASH_BASE;
            iap_load_app(FLASH_BASE);
     }*/
     else if(pGprs->ubCmd == GPRS_F_CMD_WATER_CACHE)
     {
       u_char len = 0;
            if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
            XPRINTF((12, "GPRS_F_CMD_WATER_CACHE\n"));
            //memcpy(src_mac,pGprs->ubaMac,4);
            //memcpy(dst_mac,pGprs->ubaData,4);
            water_cache_buf[0] = 0x0a;
            memcpy(water_cache_buf + 1,pGprs->ubaMac,4);
            memcpy(water_cache_buf + 5,pGprs->ubaData ,4);
            water_cache_buf[9] = HWGG_CMD_WATER_CACHE;
            memcpy(water_cache_buf + 10,(pGprs->ubaData)+4,1);
            len = hwggFillFrame(water_cache_send,0xFF,HWGG_CMD_WATER_CACHE,water_cache_buf,11);
            
            Send_RF_Data_by_Uart(water_cache_send,len);
            //uart2_send_bytes(electrical_send,27);
            //etimer_set(&et_electrical_control_wait, ELECTRIAL_CONTROL_TIME);
            //XPRINTF((12, "Send_RF_Data_by_Uart\n"));
            MEM_DUMP(12, "rf->",water_cache_send,len);
     }
     else if(pGprs->ubCmd == GPRS_F_CMD_HOST_RESET)
     {
       const FIRE_NODE_INFO *pfireNodeInfo = (const FIRE_NODE_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO);
       int length;
      static u_char txBuf[64];
      int i;
       if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
       XPRINTF((12, "GPRS_F_CMD_HOST_RESET\n"));
        setSoundLightState(SOUND_LIGHT_CMD_OFF);
        if(sound_light_off_num>0)
        {
          etimer_set(&et_reboot,2*sound_light_off_num*1000);//20*1000);
        }
        else 
        {
          etimer_set(&et_reboot,5*1000);//20*1000);
        }
        //etimer_set(&et_reboot,20*1000);
        LORA_RST(0);
     }
     else if(pGprs->ubCmd == GPRS_F_CMD_SOUNDLIGHT_RESET)
     {
       u_char i;
       if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
       XPRINTF((12, "GPRS_F_CMD_SOUNDLIGHT_RESET\n"));
       sound_light_part_off_num = pGprs->ubaData[0];
       for(i=0;i<sound_light_part_off_num;i++)
       {
        memcpy(&(sound_light_part_off_mac[i][0]),pGprs->ubaData + 1 + i * 4,4);
        //MEM_DUMP(12, "sound_light_part_off_mac",sound_light_part_off_mac[i], 4);
       }
       setSoundLightState(SOUND_LIGHT_CMD_PART_OFF);
     }
     else if(pGprs->ubCmd == GPRS_F_CMD_ELE_METER_CONTROL)
     {
       SIM900A_MSG *ptxMsg = &stEncTxMsg;
       static u_short uwipSeq = 0;
       int nFramL = -1;
       u_char i;
       u_char src_mac[4],dst_mac[4];
            if (uwSendSeq == uwSeq)
		{
			etimer_stop(petwait);
		}
            memcpy(src_mac,pGprs->ubaMac,4);
            memcpy(dst_mac,pGprs->ubaData,4);
            electrical_packet_deal(electrical_send,src_mac,dst_mac,HWGG_CMD_ELE_METER_CONTROL,(pGprs->ubaData)[4]);
              Send_RF_Data_by_Uart(electrical_send,27);
              MEM_DUMP(12, "rf->",electrical_send, 27);

		uwipSeq++;
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_ELE_METER_CONTROL_ACK, uwipSeq, src_mac,dst_mac, 4);
		if (nFramL > 0 )
		{
			ptxMsg->nLen = nFramL;
			//uwCurrentSeq = uwipSeq;
			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
			//etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
		}
     }
     else if(pGprs->ubCmd == GPRS_F_CMD_DIANQI_CONTROL)
     {
       //length = rfUartProtocolFrameFill(txBuf,ubCmd,&(sound_light_on_mac[ubIndex][0]));
       //electrical_packet_deal(electrical_send,src_mac,dst_mac,HWGG_CMD_DIANQI_SET_VAL,(pGprs->ubaData)[4]);
        //if (length > 0)
           //Send_RF_Data_by_Uart(txBuf, 41);
     }
}


#define ETH_NO_ACK_MAX		2

void ipDataHandler(process_event_t ev, process_data_t data)
{
	static struct etimer et_ip_heart;
	static struct etimer et_ip_ack_wait;
	static u_short uwipSeq = 0;
	static u_short uwCurrentSeq = 0;
	static FIRE_NODE_INFO stFireNodeInfo;
	static u_char ubaFireWarnBuf[32] = {0x00};
	static u_char ubNoAckCount = 0;


	//receive packet from server
	if (ev == event_ip_msg && data != NULL)
	{
		SIM900A_MSG * pMsg = (SIM900A_MSG *)data;
		ubNoAckCount = 0;
		if (gprsProtocolCheck((const u_char *) pMsg->ubamsg))
		{
			const GPRS_PROTOCOL * pGprs = (const GPRS_PROTOCOL *)pMsg->ubamsg;
			u_short uwSeq = pGprs->ubSeqL | (pGprs->ubSeqH << 8);
			u_short uwLen = pGprs->ubDataLenL | (pGprs->ubDataLenH<<8);

			MEM_DUMP(7, "<-ip", pMsg->ubamsg, pMsg->nLen);
			ipProtocolRxProcess((u_char *)&stEncTxMsg,(const u_char *) pMsg->ubamsg, uwCurrentSeq, &et_ip_ack_wait);
			if (stnetMode.netMode != NET_CONNECT_ETH)
			{
				netModeSet(NET_CONNECT_ETH);
			}
		}	


	}
	else if (ev == event_ip_send_data && data != NULL)
	{
		SIM900A_MSG * pMsg = (SIM900A_MSG *)data;
		if (pMsg->nLen > 0)
		{
			int nFrameL = 0;
			nFrameL = gprsCodeGetOut0xla(stEncTxMsgTran.ubamsg, (const u_char*)pMsg->ubamsg, pMsg->nLen);
			
			//simple_udp_send(&udp_connection, pMsg->ubamsg, pMsg->nLen);
			simple_udp_send(&udp_connection, stEncTxMsgTran.ubamsg, nFrameL);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
			MEM_DUMP(7, "IP->",  stEncTxMsgTran.ubamsg, nFrameL);
		}
	}
	//heart packet
	else if (ev == event_ip_heart && data == NULL)
	{
		etimer_set(&et_ip_heart, IP_HEART_TIME);
		XPRINTF((12, "IPHeart\n"));
	}
	//fire warn
	else if (ev == event_ip_warn && data != NULL)
	{
		SIM900A_MSG *ptxMsg = &stEncTxMsg;
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		u_char ubaWarn[5] = 0;
		int nFramL = -1;
		const FIRE_NODE * pFireNode = (const FIRE_NODE *)data;
		
		if (((u_long)ubaFireWarnBuf)!=((u_long)data))
		{
			//MEM_DUMP(7, "IPWA", data, pFireNode->ubLen);
			memcpy(ubaFireWarnBuf, data, pFireNode->ubLen);
		}
		memcpy(ubaWarn, pFireNode->ubaSrcMac, HWGG_NODE_MAC_LEN);
		ubaWarn[4] = pFireNode->ubCmd;
		uwipSeq++;
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_WARN, uwipSeq, paddrInfo->ubaNodeAddr, ubaWarn, 5);
		if (nFramL > 0 )
		{
			ptxMsg->nLen = nFramL;
			uwCurrentSeq = uwipSeq;
			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
		}
		//ALARM_LED(0);
		FAULT_LED(0);
		BUZZER(0);
	}
	else if (ev == event_ip_tran && data != NULL)
	{
		SIM900A_MSG *ptxMsg = &stEncTxMsg;
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		int nFramL = -1;
		const APP_485_DATA *p485 = (const APP_485_DATA *)data;
		MEM_DUMP(7, "TRAN", p485->ubaData, p485->ubLen);

		uwipSeq++;
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_TRAN, uwipSeq, paddrInfo->ubaNodeAddr,(const u_char *)p485->ubaData, p485->ubLen);
		if (nFramL > 0 )
		{
			ptxMsg->nLen = nFramL;
			uwCurrentSeq = uwipSeq;
			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
		}
		
	}
        else if(ev == event_send_rssi && data != NULL)
        {
                SIM900A_MSG *ptxMsg = &stEncTxMsg;
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		int nFramL = -1;
		//const APP_485_DATA *p485 = (const APP_485_DATA *)data;
		MEM_DUMP(7, "TRAN", terminal_rssi, 7);

		uwipSeq++;
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, terminal_rssi[0], uwipSeq, paddrInfo->ubaNodeAddr, (const u_char *)(terminal_rssi+1), 6);
		if (nFramL > 0 )
		{
			ptxMsg->nLen = nFramL;
			uwCurrentSeq = uwipSeq;
			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
		}
          
        }
        else if(ev == event_ack_time && data != NULL)
        {
                SIM900A_MSG *ptxMsg = &stEncTxMsg;
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		int nFramL = -1;
		const APP_485_DATA *ack_time_data = (const APP_485_DATA *)data;
		MEM_DUMP(7, "TRAN", ack_time_data->ubaData, ack_time_data->ubLen);

		uwipSeq++;
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_ASK_TIME, uwipSeq, paddrInfo->ubaNodeAddr,(const u_char *)ack_time_data->ubaData, ack_time_data->ubLen);
		if (nFramL > 0 )
		{
			ptxMsg->nLen = nFramL;
			uwCurrentSeq = uwipSeq;
			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
		}
        }
        else if(ev == event_electrical_state && data != NULL)
        {
                SIM900A_MSG *ptxMsg = &stEncTxMsg;
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		int nFramL = -1;
		const ELECTRICAL_DATA *electrical = (const ELECTRICAL_DATA *)data;
		MEM_DUMP(7, "TRAN", electrical->ubaData, electrical->ubLen);

		uwipSeq++;
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg,GPRS_F_CMD_ELECTRICAL_STATE, uwipSeq, paddrInfo->ubaNodeAddr,(const u_char *)electrical->ubaData, electrical->ubLen);
		if (nFramL > 0 )
		{
			ptxMsg->nLen = nFramL;
			uwCurrentSeq = uwipSeq;
			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
		}
        }
        else if(ev == event_electrical_control_ack && data != NULL)
        {
                SIM900A_MSG *ptxMsg = &stEncTxMsg;
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		int nFramL = -1;
		const ELECTRICAL_DATA *electrical = (const ELECTRICAL_DATA *)data;
		MEM_DUMP(7, "TRAN", electrical->ubaData, electrical->ubLen);

		uwipSeq++;
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_ELECTRICAL_CONTROL_ACK, uwipSeq, paddrInfo->ubaNodeAddr,(const u_char *)electrical->ubaData, electrical->ubLen);
		if (nFramL > 0 )
		{
			ptxMsg->nLen = nFramL;
			uwCurrentSeq = uwipSeq;
			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
		}
        }
        else if(ev == event_electrical_set && data != NULL)
        {
          SIM900A_MSG *ptxMsg = &stEncTxMsg;
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		int nFramL = -1;
		const ELECTRICAL_DATA *electrical = (const ELECTRICAL_DATA *)data;
		MEM_DUMP(7, "TRAN", electrical->ubaData, electrical->ubLen);

		uwipSeq++;
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_ELE_SET_THRESHOLD_ACK, uwipSeq, paddrInfo->ubaNodeAddr,(const u_char *)electrical->ubaData, electrical->ubLen);
		if (nFramL > 0 )
		{
			ptxMsg->nLen = nFramL;
			uwCurrentSeq = uwipSeq;
			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
		}
        }
        else if(ev == event_water_set && data != NULL)
        {
          SIM900A_MSG *ptxMsg = &stEncTxMsg;
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		int nFramL = -1;
		const ELECTRICAL_DATA *electrical = (const ELECTRICAL_DATA *)data;
		MEM_DUMP(7, "TRAN", electrical->ubaData, electrical->ubLen);

		uwipSeq++;
		nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_WATER_SET_ACK, uwipSeq, paddrInfo->ubaNodeAddr,(const u_char *)electrical->ubaData, electrical->ubLen);
		if (nFramL > 0 )
		{
			ptxMsg->nLen = nFramL;
			uwCurrentSeq = uwipSeq;
			process_post(&ip_data_process, event_ip_send_data, ptxMsg);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
		}
        }
	else if (ev == PROCESS_EVENT_TIMER && data == &et_ip_heart)
	{
		SIM900A_MSG *ptxMsg = &stEncTxMsg;
		NODE_ADDR_INFO *paddrInfo = (NODE_ADDR_INFO *)extgdbdevGetDeviceSettingInfoSt(LABLE_ADDR_INFO);
		int nFramL = -1;
		fillNotNetNodeInfo(&stFireNodeInfo);
		if (stFireNodeInfo.node_num > 0)
		{
			nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_HEART, uwipSeq, paddrInfo->ubaNodeAddr, (const u_char *)&stFireNodeInfo, stFireNodeInfo.node_num*4+2);
		}
		else
		{
			nFramL = gprsProtocolFrameFill(ptxMsg->ubamsg, GPRS_F_CMD_HEART, uwipSeq, paddrInfo->ubaNodeAddr, NULL, 0);
		}
		if (nFramL > 0)
		{
			ptxMsg->nLen = nFramL;
			uwCurrentSeq = uwipSeq;
                        //ptxMsg->ubamsg[nFramL] = ptxMsg->ubamsg[nFramL - 1];
                        //ptxMsg->ubamsg[nFramL - 1] = ptxMsg->ubamsg[nFramL - 2];
                        //ptxMsg->ubamsg[nFramL - 2] = ptxMsg->ubamsg[nFramL - 3];
                        //ptxMsg->ubamsg[nFramL - 3] = power_check_val;
                        //ptxMsg->ubamsg[nFramL] = power_check_val;
			process_post(&ip_data_process, event_ip_send_data,ptxMsg);
			etimer_set(&et_ip_ack_wait, IP_ACK_WAIT_TIME);
			uwipSeq++; // every send a ip frame, uwipSeq + 1;
		}
		
		etimer_set(&et_ip_heart, IP_HEART_TIME);

		//checkNetMode( );
	}
	else if (ev == PROCESS_EVENT_TIMER && data == &et_ip_ack_wait)
	{
		XPRINTF((12, "IP ACK TIME OUT\n"));
		if (ubNoAckCount >= ETH_NO_ACK_MAX)
		{
			if (stnetMode.netMode == NET_CONNECT_ETH)
			{
				XPRINTF((10, "-----------------------------set mode\n"));
				netModeSet(NET_CONNECT_NONE);
                                LORA_RST(0);
                                __set_FAULTMASK(1);  //关中断
                                NVIC_SystemReset();  //软件复位
			}
			ubNoAckCount = 0;
		}
		ubNoAckCount++;
	}
        else if(ev == PROCESS_EVENT_TIMER && etimer_expired(&et_reboot))
        {
          XPRINTF((10, "et_reboot\r\n"));
          LORA_RST(0);
          __set_FAULTMASK(1);  //关中断
            NVIC_SystemReset();  //软件复位
        }
}

/*---------------------------------------------------------------------------*/
PROCESS_THREAD(ip_data_process, ev, data)
{
  PROCESS_BEGIN();
  event_ip_msg = process_alloc_event( );
  event_ip_heart = process_alloc_event( );
  event_ip_send_data = process_alloc_event( );
  event_ip_warn = process_alloc_event( );
  event_ip_tran = process_alloc_event( );
  event_ack_time = process_alloc_event();
  event_electrical_control_ack = process_alloc_event();
  event_electrical_state = process_alloc_event();
  event_electrical_set = process_alloc_event();
  event_send_rssi = process_alloc_event();
  event_water_set = process_alloc_event();
  
  XPRINTF((12, "ip_data_process\n"));
  
  while(1) {
    PROCESS_YIELD( );
    ipDataHandler(ev, data);
  }
  PROCESS_END();
}



void  appUpdateNetMode(void)
{
	updateNetMode(NET_CONNECT_ETH);
	//process_post(&ip_data_process, event_ip_heart, NULL);
}


void app_enc28j60_init(void)
{
	SPI_Config( );
	rpl_dag_root_init_dag();
	//ip64_set_ipv4_address(&stip4Addr, &stip4MaskAddr);
	//dhcpc_init(uip_lladdr.addr, sizeof(uip_lladdr.addr));
  	/* Initialize the IP64 module so we'll start translating packets */
	ip64_init();

	process_start(&ip_receive_process, NULL);
	process_start(&ip_data_process, NULL);

	process_post(&ip_data_process, event_ip_heart, NULL);
}

