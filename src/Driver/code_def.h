#ifndef _SysStatus_H_
#define _SysStatus_H_

#include<stdint.h>
#include<stdbool.h>

//INTERRUPT DEF
#define NVIC_CTRL_ADDR (*(volatile unsigned *)0xe000e100)


//Keyboard

#define Keyboard_BASE 0x40001000
#define KeyboardReg (*(uint32_t *)Keyboard_BASE)

//system status

typedef struct
{
    uint16_t  freqRx;
    uint16_t  ampRx;
    uint16_t  freqTx;
    uint16_t  staNum;
    uint32_t* stations;
    uint32_t  SNRnow;
}SysStatus;


void Delay(int interval);
void LCD_write(uint16_t data,uint32_t isData);

#endif
