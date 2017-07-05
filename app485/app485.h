#ifndef _APP_485_H
#define _APP_485_H


#define RS485_DATA_HEAD1  0x1B
#define RS485_DATA_HEAD2  0x40
#define RS485_DATA_TAIL1  0x0D
#define RS485_DATA_TAIL2  0x0A

#define RS485_DATA_TYPE   0xDD

typedef struct _app_485_data
{
	u_char ubLen;
	u_char ubaData[127];
}APP_485_DATA;



#endif
