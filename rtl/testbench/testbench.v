`timescale 1ps/1ps

module testbench();
    reg        clk_in;
    reg        RSTn;
    wire       SWDIO;
    reg        SWCLK;
    reg[3:0]   col;
    reg        BGM_sw;
    wire[3:0]  row;
    wire       PWM_out;
    wire       LCD_CS;
    wire       LCD_RS;
    wire       LCD_WR;
    wire       LCD_RD;
    wire       LCD_RST;
    wire[15:0] LCD_DATA;
    wire       LCD_BL_CTR;
    reg        RXD;
    wire       TXD;
    wire       SPI_CLK;
    wire       MSI001_clk;
    wire       QN8027_clk;
    wire       SPI_CS_0;
    wire       SPI_SDO_0;
    wire       speaker_out;
    reg        pwm_start;
    wire[3:0]  DIG;
    wire       A;
    wire       B;
    wire       C;
    wire       D;
    wire       E;
    wire       F;
    wire       G;
    wire       DP;
    wire       SDA;
    wire       SCL;
    //wire       SDA_ENABLE;
    wire       Audio_Lo;

    SDR_Pad u_sdr_pad(
        .clk_in(clk_in),
        .RSTn(RSTn),
        .SWDIO(SWDIO),
        .SWCLK(SWCLK),
        .col(col),
        .BGM_sw(BGM_sw),
        .row(row),
        .PWM_out(PWM_out),
        .LCD_CS(LCD_CS),
        .LCD_RS(LCD_RS),
        .LCD_WR(LCD_WR),
        .LCD_RD(LCD_RD),
        .LCD_RST(LCD_RST),
        .LCD_DATA(LCD_DATA),
        .LCD_BL_CTR(LCD_BL_CTR),
        .RXD(RXD),
        .TXD(TXD),
        .SPI_CLK(SPI_CLK),
        .MSI001_clk(MSI001_clk),
        .QN8027_clk(QN8027_clk),
        .SPI_CS_0(SPI_CS_0),
        .SPI_SDO_0(SPI_SDO_0),
        .speaker_out(speaker_out),
        //.SPI_SDI(SPI_SDI),
        .pwm_start(pwm_start),
        .DIG(DIG),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .G(G),
        .DP(DP),
        .SDA(SDA),
        .SCL(SCL),
        //.SDA_ENABLE(SDA_ENABLE),
        .Audio_Lo(Audio_Lo)
    );

    always begin
        #5 clk_in = ~clk_in;
    end

    initial begin
        clk_in = 1'b0;
        //RXD = 1;
        RSTn = 1'b0;
        #150;
        RSTn = 1'b1;
    end
    
    //assign SDA = (SDA_ENABLE == 1'b0)? 1'b0 :1'bz;

endmodule