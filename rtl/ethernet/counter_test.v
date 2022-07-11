module counter_fifo (
    input ADC_clk,
    input rstn,
    output reg [3:0] addr
);
    always @(posedge ADC_clk or negedge rstn) begin
        if(~rstn)begin
            addr <= 4'b0;
        end
        else addr <= addr + 1'b1;
    end
endmodule