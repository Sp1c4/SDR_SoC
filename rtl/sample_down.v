module sample_down(
    input wire clk,
    input wire rstn,
    input wire [9:0] data_origin,
    output reg new_sample_clk,
    output reg [9:0] data_down
);
reg [3:0] count;
always@(posedge clk or negedge rstn) begin
    if(~rstn) begin 
        count <= 0;
        new_sample_clk <= 0;
        data_down <= 0;
    end
    else begin
        if(count < 3'd10) begin
            count <= count + 1'b1;
            new_sample_clk <= 0;
            data_down <= data_down;
        end
        else begin
            count <= 0;
            new_sample_clk <= 1;
            data_down <= data_origin;
        end
    end
end


endmodule