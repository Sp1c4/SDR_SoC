#ifndef _ENET_H
#define _ENET_H_
#include<stdint.h>

//Ethernet DEF
typedef struct
{
    volatile uint32_t eth0;
}ENETStr;

#define ENET_BASE 0x40009000
#define ENET ((ENETStr *)ENET_BASE)

void ENET_TX_EN(uint32_t ENET_EN);
//uint32_t ENET_RX(void);

#endif
