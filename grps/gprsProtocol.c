#include "basictype.h"
#include "gprsProtocol.h"
#include "string.h"
#include "common.h"
#include "sysprintf.h"
#include "adc.h"


int gprsProtocolFrameFill(u_char *pioBuf, u_char ubCmd, u_short uwSeq, const u_char *pcMAC, const u_char *pcData, u_short uwdataL)
{
	int nFrameL = -1;
	u_short uwCrc = 0;
	u_short dataEndPos = 0;
	GPRS_PROTOCOL *pFrame = NULL;

	if (NULL == pioBuf)
		return -1;
	pFrame = (GPRS_PROTOCOL *)pioBuf;

	pFrame->ubHead = GPRS_F_HEAD;
	pFrame->ubSyn = GPRS_F_SYN_CMD;
	pFrame->ubCmd = ubCmd;
	pFrame->ubSeqL = uwSeq&0xff;
	pFrame->ubSeqH = (uwSeq>>8)&0xff;
	pFrame->ubDataLenL = 0;
	pFrame->ubDataLenH = 0;
	memcpy(pFrame->ubaMac, pcMAC, GPRS_F_MAC_LEN);
	nFrameL = GPRS_F_COMMON_L;

	if (pcData == NULL || uwdataL == 0)
	{
		pFrame->ubDataLenL = GPRS_F_MAC_LEN + 1;
		pFrame->ubDataLenH = 0x00;
                //pFrame->ubDataLenH = power_check_val;
	}
	else
	{
		pFrame->ubDataLenL = (GPRS_F_MAC_LEN + 1 + uwdataL)&0xff;
		pFrame->ubDataLenH = ((GPRS_F_MAC_LEN + uwdataL)>>8)&0xff;
                if(ubCmd == GPRS_F_CMD_ELECTRICAL_CONTROL_ACK || ubCmd == GPRS_F_CMD_ELECTRICAL_STATE || ubCmd == GPRS_F_CMD_DIANQI_CONTROL_ACK || ubCmd == GPRS_F_CMD_DIANQI_SET_ACK)
                {
                  pFrame->ubDataLenL -= 1;
                }
                //pFrame->ubDataLenH = power_check_val;
		dataEndPos = uwdataL;
		memcpy(pFrame->ubaData, pcData, uwdataL);
	}
	nFrameL += dataEndPos;
        if(ubCmd == GPRS_F_CMD_HEART)
        {
        pFrame->ubaData[dataEndPos++] = power_check_val;
        nFrameL += 1;
        } 
	uwCrc = cyg_crc16((const u_char *)&pFrame->ubSyn, nFrameL-1);//sub head
	//pFrame->ubaData[dataEndPos++] = uwCrc&0xff;		//crc L
	//pFrame->ubaData[dataEndPos++] = (uwCrc>>8)&0xff;//crc H
	pFrame->ubaData[dataEndPos++] = (uwCrc>>8)&0xff;//crc H
	pFrame->ubaData[dataEndPos++] = uwCrc&0xff;		//crc L

	
	pFrame->ubaData[dataEndPos++] = GPRS_F_END;		//end

	nFrameL += GPRS_F_CRC_END_LEN;

	//MEM_DUMP(10, "fram", pioBuf, nFrameL);

	return nFrameL;
}

//#define GPRS_TRAN	0xef
//#define GPRS_DSC	0xea
//#define GPRS_SRC	0x1a
//#define GPRS_EB	0xeb//
//#define GPRS_DSC1B	0x1b
//#define GPRS_ETX      0xe3
//#define GPRS_DSC03    0x03
int gprsCodeGetOut0xla(u_char *pbuf, const u_char *pdata, u_short len)
{
	int i = 0;
	int j = 0;

	for (i = 0; i < len; i++)
	{
		if (pdata[i] == GPRS_SRC)
		{
			pbuf[j++] = GPRS_TRAN;
			pbuf[j++] = GPRS_DSC;
		}
		else if (pdata[i] == GPRS_TRAN)
		{
			pbuf[j++] = GPRS_TRAN;
			pbuf[j++] = GPRS_TRAN;			
		}
		
		else if (pdata[i] == GPRS_DSC1B)
		{
			pbuf[j++] = GPRS_TRAN;
			pbuf[j++] = GPRS_EB;				
		}
                else if (pdata[i] == GPRS_DSC03)
                {
                        pbuf[j++] = GPRS_TRAN;
			pbuf[j++] = GPRS_ETX;
                }

		else
		{
			pbuf[j++] = pdata[i];
		}
	}

	XPRINTF((6, "CODE 0X1A\n"));
	return j;
}


//#define GPRS_TRAN	0xef
//#define GPRS_DSC	0xea
//#define GPRS_SRC	0x1a
int gprsDecodeFrame(u_char *pbuf, const u_char *pdata, u_short len)
{
	int i = 0;
	int j = 0;	

	for (i = 0; i < len-1; i++)
	{
		if (pdata[i]==GPRS_TRAN && (pdata[i+1]==GPRS_DSC || pdata[i+1] == GPRS_TRAN || pdata[i+1] == GPRS_EB||pdata[i+1] == GPRS_ETX || pdata[i+1] == GPRS_TAIL))
		{
			if (pdata[i+1] == GPRS_DSC)
			{
				pbuf[j++] = GPRS_SRC;
			}
			else if (pdata[i+1] == GPRS_TRAN)
			{
				pbuf[j++] = GPRS_TRAN;
			}
			else if (pdata[i+1] == GPRS_EB)
			{
				pbuf[j++] = GPRS_DSC1B;	
			}
                        else if (pdata[i+1] == GPRS_ETX)
                        {
                                pbuf[j++] = GPRS_DSC03;
                        }
                        else if(pdata[i+1] == GPRS_TAIL)
                        {
                                pbuf[j++] = GPRS_DSC7F;
                        }
			i = i+1;
		}
		else
		{
			pbuf[j++] = pdata[i];
		}
	}
	pbuf[j++] = pdata[len-1];
	return j;
}

#define PBUFFER_SIZE  1000
bool gprsProtocolCheck(const u_char *pcFrame)
{
	const GPRS_PROTOCOL *pFrame = NULL;
	const u_char *pcheck = NULL;
	u_short uwCrcF = 0;
	u_short uwCrc = 0;
	unsigned int uwLen = 0;
        unsigned int pbuffer_len = 0;
        static u_char pbuffer[PBUFFER_SIZE] = {0};
        unsigned int i;

	if (pcFrame == NULL)
		return false;

	pFrame = (const GPRS_PROTOCOL *)pcFrame;

	//head error
	if (pFrame->ubHead != GPRS_F_HEAD && pFrame->ubSyn != GPRS_F_SYN_CMD)
		return false;

	//crc error
	//total length
	//uwLen = (pFrame->ubDataLenL | (pFrame->ubDataLenH << 8)) + GPRS_F_FIX_LEN;
	//XPRINTF((12, "UWLEN = %04x\n", uwLen));
        
        for(i=0;i<PBUFFER_SIZE;i++)
        {
          if(pcFrame[i] == GPRS_F_END)
          {
            uwLen = i;
            XPRINTF((12, "UWLEN = %04x\n", uwLen));
            break;
          }
        }
        if(i==PBUFFER_SIZE)
        {
          return false;
        }
        for(i=0;i<PBUFFER_SIZE;i++)
        {
          pbuffer[i] = 0;
        }
        pbuffer_len = gprsDecodeFrame(pbuffer,pcFrame,uwLen+1);
        MEM_DUMP(10, "<-gp", pbuffer, pbuffer_len);
        XPRINTF((12, "pbuffer_len = %04x\n", pbuffer_len));
        //pcheck = (pbuffer+pbuffer_len-GPRS_F_CRC_END_LEN);
        //uwCrcF = (pcheck[0]<<8) | (pcheck[1]);
        uwCrcF = ((pbuffer[pbuffer_len-GPRS_F_CRC_END_LEN])<<8) | pbuffer[pbuffer_len-GPRS_F_CRC_END_LEN + 1];
        uwCrc = cyg_crc16((pbuffer+1), pbuffer_len-4);//sub head
        XPRINTF((12, "uwCRCF = %04x uwCRC = %04x\n", uwCrcF, uwCrc));
	if ( uwCrcF != uwCrc)
	{
		return false;
	}
        
        /*
	pcheck = (pcFrame+uwLen-GPRS_F_CRC_END_LEN);
	uwCrcF = (pcheck[0]<<8) | (pcheck[1]);
	//uwCrcF = (pcheck[1]<<8) | pcheck[0];
	uwCrc = cyg_crc16((const u_char *)&pFrame->ubSyn, uwLen-4);//sub head

	XPRINTF((12, "uwCRCF = %04x uwCRC = %04x\n", uwCrcF, uwCrc));
	if ( uwCrcF != uwCrc)
	{
		return false;
	}

	//check frame end
	pcheck = (pcFrame+uwLen-1);
	XPRINTF((12, "endf = %02x\n", pcheck[0]));
	if (pcheck[0] != GPRS_F_END)
	{
		return false;
	}*/

	return true;
}

const u_char *gprsProtocolFindHead(const u_char *pcFrame, u_short dataLen)
{
	//const GPRS_PROTOCOL *pFrame = NULL;
	const u_char *pHead = pcFrame;
	const u_char *pFrameHead = NULL;
	int i = 0;

	if (pcFrame == NULL)
	{
		return NULL;
	}

	for (i = 0 ; i < dataLen ; i++)
	{
		if (pHead[i] == GPRS_F_HEAD && pHead[i+1] == GPRS_F_SYN_CMD)
		{
			pFrameHead = &pHead[i];
 			break;
		}
	}

	return pFrameHead;
}

