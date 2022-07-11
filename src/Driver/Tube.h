#ifndef _TUBE_H_
#define _TUBE_H_

#include<stdint.h>

#define HighBias 15
#define PointBias 4
#define BitInt 5

typedef struct
{
    uint32_t Value;
    uint32_t Enb;
}TUBEStr;

#define TUBE_BASE 0x40005000
#define TUBE ((TUBEStr *)TUBE_BASE)

void TubeClear(void);
void TubeShowHigh(uint8_t num, uint8_t point);
void TubeShowLow(uint8_t num, uint8_t point);
void TubeShow(unsigned num);

#endif
