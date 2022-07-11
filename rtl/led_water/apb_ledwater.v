module apb_ledwater(
    input             rstn,
    input             pclk,           
    input      [ 3:0] paddr,   // ls 2 bits are unused 
    input             pwrite,
    input             psel,
    input             penable,
    input      [31:0] pwdata,
    output reg [31:0] prdata,
    output reg        led_en
);
wire apb_write = psel & penable &pwrite;
wire apb_read  = psel & ~pwrite;

always @(posedge pclk or negedge rstn)
  begin
     if (!rstn)
     begin
        led_en    <= 1'b0;
        prdata    <= 32'h0;
     end
     else
     begin
        if (apb_write)
        begin
           case (paddr)
           4'h0 : led_en  <= |pwdata;
           endcase
        end
      end
  end
endmodule