module RSSI_reader(
    input clk,
    input rstn,
    //input [2:0] channel,
    input [9:0] X,
    input en,
    output wire [26:0] sum_out
);
reg [6:0] counter;
reg [26:0] sum_reg;
reg [26:0] sum;
assign sum_out = sum_reg;
always@(posedge clk or negedge rstn) begin
    if(~rstn)begin
        counter <= 7'b0;
    end
    else if(en) begin
        if(counter==7'd104) begin
            counter <= 7'b0;
            sum_reg <= sum;
            sum <= 27'b0;
        end
        else begin
            counter <= counter+1'b1;
            sum <= sum+(X*X); 
        end
    end
end
endmodule