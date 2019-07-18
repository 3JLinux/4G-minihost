#ifndef _GPRSPROTOCOL_H
#define _GPRSPROTOCOL_H

#include "iap.h"

#define GPRS_F_HEAD			0x7e
#define GPRS_F_END			0x7f

#define GPRS_F_SYN_CMD		0x0e
#define GPRS_F_MAC_LEN		0x04
#define GPRS_F_CRC_END_LEN	0x03

#define GPRS_F_CMD_HEART	0x01			//heart packet  dev cmd
#define GPRS_F_CMD_WARN		0x02			//warn packet   dev cmd
#define GPRS_F_CMD_ACK		0x99            //ack packet the same between server and dev
#define GPRS_F_CMD_DATA_SYNC	0x03        //fire mac sync server cmd
#define GPRS_F_CMD_WARN_ACK	0x05            //fire warn server cmd
#define GPRS_F_CMD_TRAN		0x04			//dev cmd
#define GPRS_F_CMD_REQUST_SYNC  0x06         //dev request fire mac sync dev cmd

#define GPRS_F_CMD_ONLINE_LIST                  0x30
#define GPRS_F_CMD_ONLINE_LIST_ACK              0x60

#define GPRS_F_CMD_ELECTRICAL_CONTROL	        0x0a 
#define GPRS_F_CMD_ELECTRICAL_CONTROL_ACK	0x0b 
#define GPRS_F_CMD_ELECTRICAL_STATE	        0x0c 
#define GPRS_F_CMD_ASK_TIME                     0x0d
#define GPRS_F_CMD_ASK_TIME_ACK                 0x0e
#define GPRS_F_CMD_SOUND_RESET                  0x0f
#define GPRS_F_CMD_HOST_RESET                   0x10
#define GPRS_F_CMD_SOUNDLIGHT_RESET             0x11
#define GPRS_F_CMD_ELE_METER_CONTROL            0xd0
#define GPRS_F_CMD_ELE_METER_CONTROL_ACK        0xd1
#define GPRS_F_CMD_ELE_SET_THRESHOLD_VAL        0x12
#define GPRS_F_CMD_ELE_SET_THRESHOLD_ACK        0x13
#define GPRS_F_CMD_WATER_SET_VAL                0x14
#define GPRS_F_CMD_WATER_SET_ACK                0x15
#define GPRS_F_CMD_WATER_CACHE                  0x18
#define GPRS_F_CMD_RSSI_VAL                     0xa0
#define GPRS_F_CMD_UPDATE_STAR                  0xdd

#define GPRS_F_CMD_DIANQI_CONTROL               0x24
#define GPRS_F_CMD_DIANQI_CONTROL_ACK           0x25
#define GPRS_F_CMD_DIANQI_SET                   0x26
#define GPRS_F_CMD_DIANQI_SET_ACK               0x27


#define GPRS_TRAN	0xef
#define GPRS_DSC	0xea
#define GPRS_SRC	0x1a
#define GPRS_EB		0xeb
#define GPRS_DSC1B	0x1b
#define GPRS_ETX        0xe3
#define GPRS_DSC03      0x03
#define GPRS_TAIL       0xe7
#define GPRS_DSC7F      0x7f



#define DEVICE_ALARM    1
#define DEVICE_OFFLINE  2
/*
	GPRS_F_COMMON_L
	---------------
	u_char ubHead;							1byte
	u_char ubSyn;							1byte
	u_char ubCmd;							1byte
	u_char ubSeqL;							1byte
	u_char ubSeqH;							1byte
	u_char ubDataLenL;						1byte
	u_char ubDataLenH;						1byte
	u_char ubaRouterMac[GRRS_MAC_LEN];		4bytes
	------------------
*/
#define GPRS_F_COMMON_L		11	
/*
	u_char ubHead;							1byte
	u_char ubSyn;							1byte
	u_char ubCmd;							1byte
	u_char ubSeqL;							1byte
	u_char ubSeqH;							1byte
	u_char ubDataLenL;						1byte
	u_char ubDataLenH;						1byte
*/


#define GPRS_F_FIX_LEN		10		//CRC 2 + 7 bytes + 1 end

/*
	crc scope, include data, not include frame crc and frame end
	u_char ubSyn;
	u_char ubCmd;
	u_char ubSeqL;
	u_char ubSeqH;
	u_char ubDataLenL;
	u_char ubDataLenH;
	u_char ubaMac[GPRS_F_MAC_LEN];
	u_char ubaData[]; 
	
*/
typedef struct _gprs_protocol
{
	u_char ubHead;
	u_char ubSyn;
	u_char ubCmd;
	u_char ubSeqL;
	u_char ubSeqH;
	u_char ubDataLenL;
	u_char ubDataLenH;
	/*--mac is in data scope--*/
	u_char ubaMac[GPRS_F_MAC_LEN];
	u_char ubaData[]; /*data + 2 byte crc + frame end*/
}GPRS_PROTOCOL;


typedef struct _gprs_warn_phone
{
	u_char ubaPhoneA[20];
	u_char ubaPhoneB[20];
}GPRS_WARN_PHONE;

#define SMOKE_ADDRESS_INFO_MAX_LEN   200
typedef struct _gprs_warn_info
{
	u_char ubaPhone[40];
    u_char ubInfoLen;
    u_char ubDevType[1];
    u_char ubSmokeMac[GPRS_F_MAC_LEN];
    u_char ubDate[7];
    u_char ubAddress[SMOKE_ADDRESS_INFO_MAX_LEN+2];
}GPRS_WARN_INFO;

extern int gprsProtocolFrameFill(u_char *pioBuf, u_char ubCmd, u_short uwSeq, const u_char *pcMAC, const u_char *pcData, u_short uwdataL);
#endif

