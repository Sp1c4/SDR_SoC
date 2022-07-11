#include<stdint.h>


#define RSSI_BASE 0x40006000
#define RSSI (*(uint32_t *)RSSI_BASE)
#define SNR_BASE 0x40007000
#define SNR (*(uint32_t *)SNR_BASE)
