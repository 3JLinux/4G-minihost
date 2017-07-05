#ifndef ADC_H
#define ADC_H
//#include "sys.h"
#include "stm32f10x.h"
#include "stm32f10x_adc.h"
#include "basictype.h"

//#define ADC_CH1  		1  		//通道1		 
//#define ADC_CH_TEMP  	16 		//温度传感器通道

#define ADC_VCC         ADC_Channel_11
#define ADC_BAT         ADC_Channel_10

extern u_char power_check_val;

void Adc_Init(void);
u_short  Get_Adc(u_char ch); 
u_short Get_Adc_Average(u_char ch,u_char times); 
//int Get_Temp(void);					//获取温度值
void light_init(void);

#endif