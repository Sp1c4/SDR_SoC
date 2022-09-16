#ifndef _UART_H_
#define _UART_H_

#include<stdint.h>
#include"code_def.h"

typedef struct
{
    uint32_t DATA;
    uint32_t STATE;
    uint32_t CTRL;
    uint32_t INTSTATUSnCLEAR;
    uint32_t BAUDDIV;
}UARTStr;

#define UART_BASE 0x40002000
#define UART ((UARTStr *)UART_BASE)

void UART_Init(void);
void UART_putc(char txchar);
void UART_puth(uint16_t hword);
void UART_putw(uint32_t word);
char UART_getc(void);
void UART_putStatus(SysStatus systemStatus);

#endif
