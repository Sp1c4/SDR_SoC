#include"SPI.h"

void SPI_Sent(unsigned data,unsigned len)
{
    SPI->REG_CLKDIV = 10;
    if(len>0 && len<=31)
    {
        SPI->REG_TXFIFO = data << (32-len);
        SPI->REG_SPILEN = (len+1) << 16;
        SPI->REG_STATUS = 258;
    }
}
void MSI001_Frequency_calc(uint32_t *FRF,MSI001_FrequencyStr* fstr)
{
    int FSYNTH10;
    int THRESH;
    //int AFC;
    int INT_c;
    int FRAC_c;
    FSYNTH10 = (*FRF + FIF * 10) * LO_div;//32544
    THRESH = 4 * FREF / (LO_div * Fstep);//3000
    //AFC = Fstep * 1000000 / FAFC;//4000
    INT_c = (FSYNTH10 / (4 * FREF * 10));//
    FRAC_c = (int)(((((float)FSYNTH10 / (4 * FREF)) - (INT_c * 10)) * THRESH * 0.1) + 0.5);
    fstr->INT = INT_c;
    fstr->FRAC = FRAC_c;
}
