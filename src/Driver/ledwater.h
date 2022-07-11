#ifndef _LED_H
#define _LED_H_
#include<stdint.h>

//Ethernet DEF
typedef struct
{
    volatile uint32_t led0;
}LEDStr;

#define LED_BASE 0x4000a000
#define LED ((LEDStr *)LED_BASE)

void LEDWATER(uint32_t led_en);

#endif
