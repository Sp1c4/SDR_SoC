#include"Ethernet.h"
#include<stdint.h>
void ENET_TX_EN(uint32_t ENET_EN)
{
    ENET->eth0 = ENET_EN;
}

/*uint32_t ENET_RX(void)
{
    return ENET->eth0;
}*/
