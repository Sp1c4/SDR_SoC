module SNR_reader (
    input wire clk,
    input wire rstn,
    input wire [9:0] filtered,
    input wire [9:0] un_filtered,
    output wire [16:0] SNR
);
reg [7:0] counter;
reg [16:0] SNR_reg,un_filtered_sum,filtered_sum;
assign SNR = SNR_reg;

always @(posedge clk or negedge rstn) begin
    if(~rstn) begin
        counter <= 8'b0;
        SNR_reg <= 17'b0;
        un_filtered_sum <= 17'b0;
        filtered_sum <= 17'b0;
    end
    else begin
        if(counter==8'd255) begin
            counter <= 8'b0;
            SNR_reg <= filtered_sum/(un_filtered_sum-filtered_sum);
            un_filtered_sum <= 17'b0;
            filtered_sum <= 17'b0;
        end
        else begin
            counter <= counter+1'b1;
            un_filtered_sum <= un_filtered_sum + un_filtered;
            filtered_sum <= filtered_sum + filtered;
        end

    end        
end
endmodule