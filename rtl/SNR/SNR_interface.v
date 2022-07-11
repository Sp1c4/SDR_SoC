module SNR_APB_interface(
  input  wire        PCLK,     
  //input  wire        PCLKG,    
  input  wire        PRESETn,  

  input  wire        PSEL,     
  input  wire [11:2] PADDR,    
  input  wire        PENABLE,  
  input  wire        PWRITE,   
  input  wire [31:0] PWDATA,   

  input  wire [3:0]  ECOREVNUM,

  output wire [31:0] PRDATA,   
  output wire        PREADY,   
  output wire        PSLVERR,  

  input  wire [16:0] SNR 
);

reg PRDATA_REG;

assign apb_read = PSEL & (~PENABLE) & (~PWRITE);
assign PRDATA = PRDATA_REG;
always@(posedge PCLK or negedge PRESETn) begin
    if(~PRESETn) begin
        PRDATA_REG <= 32'b0;
    end
    else if(apb_read) PRDATA_REG <= {15'b0,SNR};
    else PRDATA_REG <= PRDATA_REG;
end

endmodule