
void ref(void)
{

        XPRINTF((12, "SEND SMS AND PHONE\r\n"));
        XPRINTF((10,"si4432 device type 0x00 is %02x\r\n", ubStatus));
		//clear stphone
		memset(&stPhone, 0, sizeof(GPRS_WARN_PHONE));
        memcpy(stFireNode.nodeArray, pFireNodeInfo->nodeArray, stFireNode.node_num*4);
		stPhone = *(GPRS_WARN_PHONE*)data;
		MEM_DUMP(12, "PHON", &stPhone, sizeof(GPRS_WARN_PHONE));
		etimer_set(&et_send_delay, 5000);

        if (mem_cmp(pcMac, pfireNodeInfo->nodeArray[i].ubaNodeAddr, HWGG_NODE_MAC_LEN) == 0)
		{
			return true;
		}

        extgdbdevSetDeviceSettingInfoSt(LABLE_FIRE_NODE_INFO, 0, (const void *)&stFireNode, sizeof(FIRE_NODE_INFO));

}

    if (pGprs->ubCmd == GPRS_F_CMD_DATA_SYNC)
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

void gprsSmsPhoneHandler(process_event_t ev, process_data_t data)
{
	static struct etimer et_wait_close;
	static u_char ubCloseFlag = 0;
	static GPRS_WARN_PHONE stPhone;

	if (ev == sim900_event_send_sms_phone && data != NULL)
	{
		XPRINTF((12, "SEND SMS AND PHONE\r\n"));
		//clear stphone
		memset(&stPhone, 0, sizeof(GPRS_WARN_PHONE));
		stPhone = *(GPRS_WARN_PHONE*)data;
		MEM_DUMP(12, "PHON", &stPhone, sizeof(GPRS_WARN_PHONE));
		sim900a_send_cmd("AT+CIPCLOSE=1");
		sim900a_send_cmd("AT+CIPSHUT=1");
		etimer_set(&et_wait_close, 5000);
	}
	else if (ev == sim900_event_resp && data != NULL)
	{
		//make sure tcp udp closed
		if(sim900a_check_cmd((const char*)data,"CLOSE OK"))
		{
			ubCloseFlag = 1;
			XPRINTF((12, "gpr1 is close\r\n"));
			etimer_stop(&et_wait_close);
			process_post(&sim900a_send_process, sim900_event_send_sms, &stPhone);
		}
		else if (sim900a_check_cmd((const char*)data,">"))
		{
			process_post(&sim900a_send_process, sim900_event_send_sms_wait, data);
		}
		else if (sim900a_check_cmd((const char*)data,"+CMGS"))
		{
			XPRINTF((12, "SMSOK\n"));
			process_post(&sim900a_send_process, sim900_event_send_sms_wait, data);
		}
	}
	else if (ev == PROCESS_EVENT_TIMER && data == &et_wait_close)
	{
		if (ubCloseFlag == 0)
		{
			sim900a_send_cmd("AT+CIPCLOSE=1");
			sim900a_send_cmd("AT+CIPSHUT=1");
		}
		process_post(&sim900a_send_process, sim900_event_send_sms, &stPhone);
	}
}

PROCESS_THREAD(app_sound_light_process, ev, data)
{
	static char buf[128];
	static struct etimer et_rev_timeout;
	static int ptr = 0;
	int c;

	PROCESS_BEGIN();
	XPRINTF((10, "mp3_rev_process\r\n"));

	while(1)
	{
		c = ringbuf_get(&ringuartbuf);
		//XPRINTF((5, "%02x \n", (uint8_t)c));
		if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_rev_timeout)))
		{
			//memset(buf, 0 ,sizeof(buf));
			XPRINTF((5, "rev = %s\n", buf));
			ptr = 0;
		}

		if(c == -1)
		{
			/* Buffer empty, wait for poll */
			PROCESS_YIELD();
		}
		else
		{
			buf[ptr++] = (uint8_t)c;
			//XPRINTF((5, "%02x \n", (uint8_t)c));
			if (ptr < 128)
			{
				etimer_set(&et_rev_timeout, 500);
			}
			else
			{
				ptr = 0;
			}
		}
	}
	PROCESS_END();
}

