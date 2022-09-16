#include"UART.h"
#include<stdint.h>
#include"code_def.h"

void UART_Init(void)
{
    uint32_t ctrl;
    ctrl = 1 | 2 | 8;

    UART->CTRL = 0;
    UART->BAUDDIV = 50000000 / 115200;
    UART->CTRL = ctrl;
}

void UART_putc(char txchar)
{
    while(UART->STATE & 1);
    UART->DATA = (uint32_t)txchar;
}

void UART_puth(uint16_t hword)
{
    char lo,hi;
    lo = hword & 0xff;
    hi = (hword & 0xff00) >> 8;
    UART_putc(lo);
    UART_putc(hi);
}

void UART_putw(uint32_t word)
{
    char byte[4];
    byte[0] = word & 0xff;
    byte[1] = (word & 0xff00) >> 8;
    byte[2] = (word & 0xff0000) >> 16;
    byte[3] = (word & 0xff000000) >> 24;
    UART_putc(byte[0]);
    UART_putc(byte[1]);
    UART_putc(byte[2]);
    UART_putc(byte[3]);
}

char UART_getc(void)
{
    while(!(UART->STATE & 2));
    return (char)UART->DATA;
}

void UART_putStatus(SysStatus systemStatus)
{
    UART_putc(-128);
    UART_putc(-128);
    UART_puth(systemStatus.freqRx);
    UART_puth(systemStatus.ampRx);
    UART_puth(systemStatus.freqTx);
    UART_puth(systemStatus.staNum);
    for(int i=1;i<=20;i++)
    {
        UART_putw(systemStatus.stations[i]);
    }
    UART_putw(systemStatus.SNRnow);
}