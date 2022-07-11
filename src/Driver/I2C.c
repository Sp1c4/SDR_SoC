#include"I2C.h"

void I2C_Sent(uint32_t data)
{
    I2C->WRITE_DATA_ON_TX = data;
    I2C->DATA_CONFIG_REG = 41;
    I2C->TIMEOUT_TX = 10000;
}
void QN8027_Frequency_calc(uint32_t *F_rf,uint32_t *P_out,uint32_t *F_offset,QN8027_FrequencyStr* f_str)
{
    uint32_t frequency_c;
    uint32_t powerout_c;
    uint32_t Foffset_c;
    uint32_t f;
    frequency_c = (*F_rf - 760 ) * 2;
    if(*P_out > 117 || *P_out < 84){
        while(1);
    }
    powerout_c = (int)(((float)(*P_out - 71) / 0.62) + 0.5);
    Foffset_c = (int)(((float)*F_offset / 0.58) + 0.5);
    f_str->frequency = frequency_c;
    f_str->powerout = powerout_c;
    f_str->Foffset = Foffset_c;
}
