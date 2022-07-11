module apb_ethernet (
    input             rstn,
    input             pclk,           
    input      [ 3:0] paddr,   // ls 2 bits are unused 
    input             pwrite,
    input             psel,
    input             penable,
    input      [31:0] pwdata,
    output reg [31:0] prdata,
    //output            pready,
    //output            pslverr,

    //input   [7:0]   voice_cmd,
    output   reg       wren
);

wire apb_write = psel & penable &pwrite;
wire apb_read  = psel & ~pwrite;
//assign pready = 1'b1;
//assign pslverr = 1'b0;
always @(posedge pclk or negedge rstn)
  begin
     if (!rstn)
     begin
        wren      <= 1'b0;
        prdata    <= 32'h0;
     end // reset
     else
     begin
        
        if (apb_write)
        begin
           case (paddr)
           4'h0 : wren   <= |pwdata;
           endcase
        end
      //   if (apb_read)
      //   begin
      //      case (paddr)
      //      4'h0 : prdata[7:0] <= voice_cmd;
      //      endcase
      //   end
   //      else
   //         prdata <= 32'h0; // so we can OR all busses
      end
  end

endmodule