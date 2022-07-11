module RSSI_APB_interface(
  input  wire        PCLK,     // Clock
  //input  wire        PCLKG,    // Gated Clock
  input  wire        PRESETn,  // Reset

  input  wire        PSEL,     // Device select
  input  wire [11:2] PADDR,    // Address
  input  wire        PENABLE,  // Transfer control
  input  wire        PWRITE,   // Write control
  input  wire [31:0] PWDATA,   // Write data

  input  wire [3:0]  ECOREVNUM,// Engineering-change-order revision bits

  output wire [31:0] PRDATA,   // Read data
  output wire        PREADY,   // Device ready
  output wire        PSLVERR,  // Device error response

  input  wire [26:0] RSSI_sum 
);
wire apb_write,apb_read;
reg PRDATA_REG;
assign apb_write = PSEL & PENABLE & PWRITE;
assign apb_read = PSEL & (~PENABLE) & (~PWRITE);
assign PRDATA = PRDATA_REG;
always@(posedge PCLK or negedge PRESETn) begin
    if(~PRESETn) begin
        PRDATA_REG <= 32'b0;
    end
    else if(apb_read) PRDATA_REG <= {5'b0,RSSI_sum};
end

endmodule