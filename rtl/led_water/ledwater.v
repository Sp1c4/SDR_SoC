module ledwater(
    input clk,
    input rstn,
    input full_flag1,
    input full_flag2,
    input empty_flag1,
    input empty_flag2,
    input afull_flag1,
    input afull_flag2,
    input wren,
    input led_en,
    output reg [7:0] LED_Out
);
parameter WaterLight_speed = 23'd3_125_000;      
reg [22:0] pwm_cnt;
reg [4:0] mode;
reg light_clk;
reg [7:0] LED;

always@(*)begin
    if(led_en)begin
        LED_Out[7] <= LED[7];
        LED_Out[6] <= LED[6];
        LED_Out[5] <= LED[5];
        LED_Out[4] <= LED[4];
        LED_Out[3] <= LED[3];
        LED_Out[2] <= LED[2];
        LED_Out[1] <= LED[1];
        LED_Out[0] <= LED[0];
    end else begin
        LED_Out[7] <= 1'b0;
        LED_Out[6] <= full_flag1;
        LED_Out[5] <= full_flag2;
        LED_Out[4] <= empty_flag1;
        LED_Out[3] <= empty_flag2;
        LED_Out[2] <= afull_flag1;
        LED_Out[1] <= afull_flag2;
        LED_Out[0] <= wren;
    end
end

always@(posedge clk or negedge rstn) begin
    if(~rstn) pwm_cnt <= 23'b0;
    else if(pwm_cnt == WaterLight_speed) pwm_cnt <= 23'b0;
    else pwm_cnt <= pwm_cnt + 1'b1;
end


always@(posedge clk or negedge rstn) begin
    if(~rstn) light_clk <= 1'b0;
    else if(pwm_cnt == WaterLight_speed) light_clk <= ~light_clk;
end

always@(posedge light_clk or negedge rstn) begin
    if(~rstn) mode <= 5'b0;
    else if(mode == 5'b10101) mode <= 5'b0;
    else mode <= mode + 1'b1;
end

always@(posedge light_clk or negedge rstn) begin
		if(~rstn) LED <= 8'h00;
    else begin
        case(mode)
        5'h00 : LED <= 8'h00;
        5'h01 : LED <= 8'h80;
        5'h02 : LED <= 8'hc0;
        5'h03 : LED <= 8'he0;
        5'h04 : LED <= 8'h70;
        5'h05 : LED <= 8'h38;
        5'h06 : LED <= 8'h1c;
		5'h07 : LED <= 8'h0e;
		5'h08 : LED <= 8'h07;
		5'h09 : LED <= 8'h03;
		5'h0a : LED <= 8'h01;
		5'h0b : LED <= 8'h00;
		5'h15 : LED <= 8'h80;
		5'h14 : LED <= 8'hc0;
		5'h13 : LED <= 8'he0;
		5'h12 : LED <= 8'h70;
		5'h11 : LED <= 8'h38;
		5'h10 : LED <= 8'h1c;
		5'h0f : LED <= 8'h0e;
		5'h0e : LED <= 8'h07;
		5'h0d : LED <= 8'h03;
		5'h0c : LED <= 8'h01;
        default : LED <= 8'hff;
        endcase
    end
end
    
endmodule