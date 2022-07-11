#include"ledwater.h"
#include<stdint.h>
void LEDWATER(uint32_t led_en)
{
    LED->led0 = led_en;
}