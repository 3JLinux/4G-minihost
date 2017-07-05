#ifndef _APP_SOUND_LIGHT_ALARM_H
#define _APP_SOUND_LIGHT_ALARM_H

#include "dev_info.h"

#define SOUND_LIGHT_CMD_ON		0x88	
#define SOUND_LIGHT_CMD_OFF		0x87

#define SOUND_LIGHT_DEVICE_TYPE 0xBB

//#define SOUND_LIGHT_STATE_NOMAL		0	
//#define SOUND_LIGHT_STATE_ON		1
//#define SOUND_LIGHT_STATE_OFF		2

#define SOUND_LIGHT_SEND_PKG_NOMAL_TIME          (30*CLOCK_SECOND)  //mark mark
#define SOUND_LIGHT_SEND_PKG_EMERGENCY_TIME      (555) 

#define SOUND_LIGHT_EMERGENCY_TIME    (3*FIRE_SOUND_LIGHT_NODE_MAX_NUM*SOUND_LIGHT_SEND_PKG_EMERGENCY_TIME)

typedef struct sound_light_msg
{
	u_char ubCmd;
}SOUND_LIGHT_MSG;

extern void addSoundLightNodeTable(const u_char *pcAddMAC);
extern void setSoundLightState(const u_char cmd);

extern int uart3_send_bytes(u_char *pBuf, u_char ubLength);

#endif
