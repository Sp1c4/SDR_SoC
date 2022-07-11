#ifndef _I2C_H
#define _I2C_H_
#include<stdint.h>

//I2C DEF
typedef struct
{
    volatile uint32_t WRITE_DATA_ON_TX;
    //volatile uint32_t READ_DATA_ON_RX;
    volatile uint32_t DATA_CONFIG_REG;
    volatile uint32_t TIMEOUT_TX;
}I2CStr;

#define I2C_BASE 0x40008000
#define I2C ((I2CStr *)I2C_BASE)

void I2C_Init(void);
void I2C_Sent(uint32_t data);

//Frequency for QN8027
typedef struct
{
    uint32_t frequency;
    uint32_t powerout;
    uint32_t Foffset;
}QN8027_FrequencyStr;

void QN8027_Frequency_calc(uint32_t *F_rf,uint32_t *P_out,uint32_t *F_offset,QN8027_FrequencyStr* f_str);

#endif
