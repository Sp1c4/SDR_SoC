module differentiator(
    input en,
    input clk,
    input rstn,
    input [2:0]channel,
    input [9:0] X,
    output wire [9:0] out,
    //output wire [9:0] filtered_out,
    output wire filter_clk,
    output wire [9:0] un_filtered_out
);
reg filter_clk_r;
assign filter_clk=filter_clk_r;

reg signed [9:0] XI0,XI1,XQ0,XQ1;
wire signed [19:0] temp1,temp2,temp3;
wire signed [9:0] temp4;
wire signed [19:0] filtered;
always @(posedge clk or negedge rstn) begin
    if(!rstn)begin
        XI0 <= 10'b0;
        XQ0 <= 10'b0;
        XI1 <= 10'b0;
        XQ1 <= 10'b0;
        filter_clk_r = 1'b0;
    end 
    else if(en) begin
        filter_clk_r <= ~filter_clk_r;
        if(channel==3'b110)
        begin
            XI1 <= XI0;
            XI0 <= X - 10'd512 ;

        end
        else if(channel==3'b100)
        begin
            XQ1 <= XQ0;
            XQ0 <= X - 10'd512;
        end

    end
end



assign temp1 = XI0*XQ1;
assign temp2 = XQ0*XI1;
assign temp3 = temp2 - temp1;
assign temp4 = temp3[19:10] + 10'd512;
assign out = filtered[19:10];
assign un_filtered_out=temp4;
filter filter(
    .CLK(filter_clk_r),
    .RSTn(rstn),
    .FIR_IN(temp4),
    .FIR_OUT(filtered)
);

endmodule