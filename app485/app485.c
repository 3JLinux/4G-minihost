#include "contiki.h"
#include "basictype.h"
#include "app485.h"
#include <string.h>
#include "sysprintf.h"
#include "lib/ringbuf.h"

process_event_t event_485_msg;

PROCESS(app_485_rev_process, "app_485_rev_process");

/*
extern funtion and var
*/
PROCESS_NAME(sim900a_app_process);
PROCESS_NAME(ip_data_process);

extern process_event_t sim900_event_fire_tran;
extern process_event_t event_ip_tran;


static struct ringbuf ringuartbuf;
static uint8_t uartbuf[128];

/*---------------------------------------------------------------------------*/
int uart485_input_byte(unsigned char c)
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
	process_poll(&app_485_rev_process);
	
	return 1;
}

void uart485_init(void)
{	
	ringbuf_init(&ringuartbuf, uartbuf, sizeof(uartbuf));
	process_start(&app_485_rev_process, NULL);
	Uart_485SetInput(uart485_input_byte);
}

bool isFrameEnd(const u_char *pFrame, u_char lastIndex)
{
	if ( pFrame[lastIndex] == RS485_DATA_TAIL2 && pFrame[lastIndex-1] == RS485_DATA_TAIL1 )
	{
		return true;
	}
	return false;
}

PROCESS_THREAD(app_485_rev_process, ev, data)
{
	static char buf[200];
	static APP_485_DATA stApp485;
	static struct etimer et_rev_timeout;
    static struct etimer et_connect_timeout;
    static int rs485_connecting_cnt = 0;
	static int ptr = 0;
	int c;

	PROCESS_BEGIN();
	XPRINTF((2, "app_485_rev_process\r\n"));
	event_485_msg = process_alloc_event( );
    etimer_set(&et_connect_timeout, 100000);
	//event_485_rev_msg = process_alloc_event( );
	while(1)
	{
		c = ringbuf_get(&ringuartbuf);
		if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_rev_timeout)))
		{
			XPRINTF((6, "time out ptr=%d\n",ptr));	
            MEM_DUMP(6, "<485",buf, ptr);
			//MEM_DUMP(6, "DATA", buf, ptr);			                       
            memset(buf, 0 ,sizeof(buf));
            ptr = 0;
		}
        
        if ((ev == PROCESS_EVENT_TIMER)&&(etimer_expired(&et_connect_timeout)))
		{
			XPRINTF((6, "Connect time out\n"));	
            rs485_connecting_cnt = 0;
			//MEM_DUMP(6, "DATA", buf, ptr);			
            stApp485.ubLen = 9;
            stApp485.ubaData[0] = stApp485.ubLen;
            stApp485.ubaData[1] = RS485_DATA_TYPE; 
            stApp485.ubaData[2] = RS485_DATA_HEAD1;
            stApp485.ubaData[3] = RS485_DATA_HEAD2;
            stApp485.ubaData[4] = 'd';
            stApp485.ubaData[5] = 'c';
            stApp485.ubaData[6] = 'n';
            stApp485.ubaData[7] = RS485_DATA_TAIL1;
            stApp485.ubaData[8] = RS485_DATA_TAIL2;            
            MEM_DUMP(6, "<-48",stApp485.ubaData, stApp485.ubLen);
            /*post data to */
            process_post(&sim900a_app_process, sim900_event_fire_tran, &stApp485);
            process_post(&ip_data_process, event_ip_tran, &stApp485);	
            etimer_set(&et_connect_timeout, 60000);
		}
        
		if(c == -1)
		{
			/* Buffer empty, wait for poll */
			PROCESS_YIELD();
		}
		else
		{
				buf[ptr++] = (uint8_t)c;
				//XPRINTF((6, "c = %02x\n", (u_char)c));
				//set timer for receie time out
                if (ptr == 1)
                {
                   etimer_set(&et_rev_timeout, 500);
                   etimer_set(&et_connect_timeout, 20000);
                }          
				//frame to long, error
				if (ptr >= 200)
				{
					ptr = 0;
                    etimer_stop(&et_rev_timeout);
                    etimer_set(&et_connect_timeout, 20000);
				}
				#if 1
				//frame end
				if (ptr > 6  && buf[0] == RS485_DATA_HEAD1 && buf[1] == RS485_DATA_HEAD2 && isFrameEnd((const u_char*)buf, ptr-1))
				{
					//MEM_DUMP(6, "BUS4", buf, ptr);
					etimer_set(&et_connect_timeout, 20000);
					etimer_stop(&et_rev_timeout);
					memcpy(stApp485.ubaData + 2, buf, ptr);
					stApp485.ubLen = ptr + 2;
                    stApp485.ubaData[0] = stApp485.ubLen;
                    stApp485.ubaData[1] = RS485_DATA_TYPE;   
                    if( buf[2] == 'c' && buf[3] == 'n' && buf[4] == 't' ){
                        if( rs485_connecting_cnt-- < 0 ) {
                            rs485_connecting_cnt = 6;
                            MEM_DUMP(6, "<-48",stApp485.ubaData, stApp485.ubLen);
        					/*post data to */
            				process_post(&sim900a_app_process, sim900_event_fire_tran, &stApp485);
            				process_post(&ip_data_process, event_ip_tran, &stApp485); 
                        }
                    }
                    else{
                        MEM_DUMP(6, "<-48",stApp485.ubaData, stApp485.ubLen);
    					/*post data to */
        				process_post(&sim900a_app_process, sim900_event_fire_tran, &stApp485);
        				process_post(&ip_data_process, event_ip_tran, &stApp485); 
                    }
					memset(buf, 0 ,sizeof(buf));					
					ptr = 0;
				}				
				#endif	
		}
	}
	PROCESS_END();
}

void app485Init(void)
{
	uart485_init( );
}

