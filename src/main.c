#include"Driver/code_def.h"
#include"Driver/Buzzer.h"
#include"Driver/LCD.h"
#include"Driver/Timer.h"
#include"Driver/UART.h"
#include"Driver/SPI.h"
#include"Driver/Tube.h"
#include"Driver/DETECTOR.h"
#include"Driver/I2C.h"
#include"Driver/Ethernet.h"
#include"Driver/ledwater.h"

#include"GameSDK/Game.h"
#include"RealTank.h"
#include"data.h"

QN8027_FrequencyStr fst_8027;
SysStatus Sys;
uint32_t Fin_001,vol;
uint32_t Fin_8027;
uint32_t Pout_8027;
uint32_t Foffset_8027;
uint32_t SNR_all;
uint16_t cnt,mode,search_flag,search_finish;
uint32_t SNR_now,RSSI_now,station_now,search_number,search_result[50];


int main()
 {
    uint32_t report_counter;
    uint32_t SNR_all,SNR_max,SNR_c;
    NVIC_CTRL_ADDR = 1;
    MSI001_FrequencyStr fst_001;
    station_now = 0;

    Fin_001 = Fdefault; //input default frequency 980
    Fin_8027 = 981;
    Pout_8027 = 102;
    Foffset_8027 = 74;
    mode=0;
    vol=15;
    MSI001_Frequency_calc(&Fin_001,&fst_001);
    SPI_Sent(0x043420,24);
	Delay(300);
	SPI_Sent(0x28bb85,24);
	Delay(300);
    SPI_Sent(((fst_001.INT<<16)+(fst_001.FRAC<<4)+2),24);   //SPI_Sent(0x21A8B2,24);
	Delay(300);
	SPI_Sent(0x00c001+(vol<<4),24);
	Delay(300);
	SPI_Sent(0x200016,24);
	Delay(300);
	SPI_Sent(0x00FA03,24);
    TubeShow(Fin_001);
    
    UART_Init();
    LCD_init();

    SNR_all=0;
    cnt=0;
    SNR_now=0;
    SNR_max=0;
    SNR_c=0;
    draw_homepage();
    while(1)
    {
            
        if(mode==0)                                 //menu
        {
            TubeShow(Fin_001);
        }
        else if(mode==1)                            //change frenquency
        {
            TubeShow(Fin_001);
        }
        else if(mode==2)                            //view SNR 
        {
            while(cnt<10000)
            {
                cnt+=1;
                SNR_now=SNR;
                Delay(500);
                SNR_all=SNR_all+SNR_now;
            }
	        TubeShow(SNR_all);

            SNR_all=0;
            cnt=0;
            SNR_now=0;
        }
        else if(mode==3)                            //auto station search
        {
            
            uint32_t Fin_search,last_Fin;
            uint16_t SNR_cnt;
            if(search_flag==0)                      //�?搜索，进行搜�?
            {
                station_now = 1;
                for(uint16_t i=0;i<21;i++)
                {
                    search_result[i]=0;
                }
                
                search_number = 0;
                for(Fin_search=search_start;Fin_search<search_end;Fin_search++)
                {
                    MSI001_Frequency_calc(&Fin_search,&fst_001);
                    SPI_Sent(0x043420,24);
	                Delay(300);
	                SPI_Sent(0x28bb85,24);
	                Delay(300);
                    SPI_Sent(((fst_001.INT<<16)+(fst_001.FRAC<<4)+2),24);  
	                Delay(300);
	                SPI_Sent(0x00c001+(vol<<4),24);
	                Delay(300);
	                SPI_Sent(0x200016,24);
	                Delay(300);
	                SPI_Sent(0x00FA03,24);
                    TubeShow(Fin_search);
                    SNR_cnt = 0;
                    SNR_c = 0;
                    for(uint16_t i=0;i<9;i++)
                    {
                        while(cnt<1000)
                        {
                            cnt+=1;
                            SNR_now=SNR;
                            Delay(50);
                            SNR_all=SNR_all+SNR_now;
                        }
                        if((SNR_all>200)&(SNR_all<600)) SNR_cnt += 1;
                        SNR_c += SNR_all;
                        SNR_all=0;
                        cnt=0;
                        SNR_now=0;
                    }
                    if(SNR_cnt>=5)                                              //判定成功，进行查�?
                    {
                        if(last_Fin==(Fin_search-1))
                        {
                            if(SNR_c > SNR_max)
                            {
                                SNR_max = SNR_c;
                                search_result[search_number] = Fin_search;
                            }
                        }
                        else
                        {
                            SNR_max = SNR_c;
                            search_number += 1;
                            search_result[search_number] = Fin_search;
                        }
                        
                        last_Fin = Fin_search;
                    }
                    
                }
                search_flag = 1;
                search_finish = 1;                       //搜索完成，跳回原频道
                MSI001_Frequency_calc(&Fin_001,&fst_001);
                SPI_Sent(0x043420,24);
	            Delay(300);
	            SPI_Sent(0x28bb85,24);
	            Delay(300);
                SPI_Sent(((fst_001.INT<<16)+(fst_001.FRAC<<4)+2),24);   
	            Delay(300);
	            SPI_Sent(0x00c001+(vol<<4),24);
	            Delay(300);
	            SPI_Sent(0x200016,24);
	            Delay(300);
	            SPI_Sent(0x00FA03,24);
                TubeShow(Fin_001);
            }
            else if(search_finish==1)                  //搜索完成，展示搜索结�?
            {
                draw_page3_result(search_result,search_number);
                search_finish = 0;
            }
            else
                TubeShow(search_number);
        }
        else if(mode==4)                            //change frenquency
        {
            TubeShow(Fin_8027);
        }
        else if(mode==5)
        {  
        }
         else if(mode==6)
        {
        }
    report_counter += 1;
    if(report_counter == 100000)
    {
        for(uint16_t i=0;i<1000;i++)
        {
            SNR_now=SNR;
            Delay(50);
            SNR_all=SNR_all+SNR_now;
        }
        Sys.freqRx = Fin_001;
        Sys.ampRx = 30-vol;
        Sys.freqTx = Fin_8027;
        Sys.staNum = search_number;
        Sys.stations = search_result;
        Sys.SNRnow = SNR_all;
        UART_putStatus(Sys);
        SNR_all=0;
        SNR_now=0;
				report_counter = 0;
    }
    }
    return 0;
}
void KEY()
{
    uint32_t temp = KeyboardReg;
    MSI001_FrequencyStr fst_001;
    if(mode==0)                 //main menu
    {
        if(temp&(1)) 
        {
            
            draw_page1();
            mode=1;             //change RX frequency
        }
        else if(temp&(1<<1)) 
        {
            draw_page2();
            mode=2;             //SNR
        }
        else if(temp&(1<<2)) 
        {
            if(search_flag==0)
                draw_page3_search();
            else
                draw_page3_result(search_result,search_number);
            mode=3;             //search

        }
        else if(temp&(1<<3)) 
        {
            draw_page4();
            mode=4;             //change TX frequency
        }
        else if(temp&(1<<4)) 
        {
            draw_page5();
            mode=5;             //ethernet
        }
        else if(temp&(1<<5)) 
        {
            draw_page6();
            mode=6;             //ledwater
        }
    }
    else if(mode==1)
    {
        if(temp&(1<<15)) 
        {
            draw_homepage();
            mode=0;    
        }
        else if(temp&(1<<5))
        {   
            Fin_001 += 10;
        }
        else if(temp&(1<<4))
        {
            Fin_001 += 1;           
        }
        else if(temp&(1<<1))
        {
            Fin_001 -= 10;      
        }
        else if(temp&1)
        {
            Fin_001 -= 1;
        }
        else if(temp&(1<<2))
        {
            vol += 1;      
        }
        else if(temp&(1<<6))
        {
            vol -= 1;
        }
        
        MSI001_Frequency_calc(&Fin_001,&fst_001);
        SPI_Sent(0x043420,24);
	    Delay(300);
	    SPI_Sent(0x28bb85,24);
	    Delay(300);
        SPI_Sent(((fst_001.INT<<16)+(fst_001.FRAC<<4)+2),24);
	    Delay(300);
	    SPI_Sent(0x00c001+(vol<<4),24);
	    Delay(300);
	    SPI_Sent(0x200016,24);
	    Delay(300);
	    SPI_Sent(0x00FA03,24);

        TubeShow(Fin_001);
        }
    else if(mode==2)
    {
        if(temp&(1<<15)) 
        {
            draw_homepage();
            mode=0;    
        }
        else if(temp&(1<<2))
        {
            vol += 1;      
        }
        else if(temp&(1<<6))
        {
            vol -= 1;
        }
        MSI001_Frequency_calc(&Fin_001,&fst_001);
        SPI_Sent(0x043420,24);
	    Delay(300);
	    SPI_Sent(0x28bb85,24);
	    Delay(300);
        SPI_Sent(((fst_001.INT<<16)+(fst_001.FRAC<<4)+2),24);
	    Delay(300);
	    SPI_Sent(0x00c001+(vol<<4),24);
	    Delay(300);
	    SPI_Sent(0x200016,24);
	    Delay(300);
	    SPI_Sent(0x00FA03,24);
    }
    else if(mode==3)
    {
        

        if(temp&(1<<15))                                //����ʱ����flag
        {
            draw_homepage();
            mode = 0;                              
        }

        else if(temp&(1<<4))
        {
            if(station_now > 1)
            {
                
                station_now -= 1;
                Fin_001 = search_result[station_now];
                draw_page3_result(search_result,search_number);
                draw_page3_zero(station_now);
            }              
        }
        else if(temp&1)
        {
            if(station_now < search_number)
            {
                station_now += 1;
                Fin_001 = search_result[station_now];
                draw_page3_result(search_result,search_number);
                draw_page3_zero(station_now);
            }
        }
        else if(temp&(1<<5))
        {
            search_flag = 0;
        }
        
        else if(temp&(1<<2))
        {
            vol += 1;
        }
        else if(temp&(1<<6))
        {
            vol -= 1;
        }
        
        MSI001_Frequency_calc(&Fin_001,&fst_001);
        SPI_Sent(0x043420,24);
	    Delay(300);
	    SPI_Sent(0x28bb85,24);
	    Delay(300);
        SPI_Sent(((fst_001.INT<<16)+(fst_001.FRAC<<4)+2),24);
	    Delay(300);
	    SPI_Sent(0x00c001+(vol<<4),24);
	    Delay(300);
	    SPI_Sent(0x200016,24);
	    Delay(300);
	    SPI_Sent(0x00FA03,24);
    }
    else if(mode==4)
    {
        if(temp&(1<<15))                                //����ʱ����flag
        {
            draw_homepage();
            mode = 0;                              
        }
        else if(temp&(1<<5))
        {   
            Fin_8027 += 10;
        }
        else if(temp&(1<<4))
        {
            Fin_8027 += 1;           
        }
        else if(temp&(1<<1))
        {
            Fin_8027 -= 10;      
        }
        else if(temp&1)
        {
            Fin_8027 -= 1;
        }
            
        QN8027_Frequency_calc(&Fin_8027,&Pout_8027,&Foffset_8027,&fst_8027);
        I2C_Sent((0x5800<<8) + 0x30 + fst_8027.frequency/256);
	    Delay(100);
        I2C_Sent((0x5801<<8) + fst_8027.frequency%256);
	    Delay(100);
        I2C_Sent(0x5802B9);
	    Delay(100);
        I2C_Sent(0x580380);
	    Delay(100);
        I2C_Sent(0x5804B2);
	    Delay(100);
        I2C_Sent((0x5810<<8) + fst_8027.powerout);
	    Delay(100);
        I2C_Sent((0x5811<<8) + fst_8027.Foffset);
    }
    else if(mode==5)
    {
        if(temp&(1<<15))                                //����ʱ����flag
        {
            draw_homepage();
            mode = 0;                              
        }
        else if(temp&1)
        {
            ENET_TX_EN(1);
        }
        else if(temp&(1<<1))
        {
            ENET_TX_EN(0);
        }
    }
    else if(mode==6)
    {
        if(temp&(1<<15))                                //����ʱ����flag
        {
            draw_homepage();
            mode = 0;                              
        }
        else if(temp&1)
        {
            LEDWATER(1);
        }
        else if(temp&(1<<1))
        {
            LEDWATER(0);
        }
    }
}
void Timer_IRQ()
{}
void UARTRX_IRQ()
{}
