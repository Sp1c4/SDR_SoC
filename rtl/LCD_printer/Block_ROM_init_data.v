module Block_ROM_init_data # (
    parameter ADDR_WIDTH = 7,
    parameter DATA_WIDTH = 16
)(
    input  [ADDR_WIDTH-1 : 0]     addr,
    output reg [DATA_WIDTH-1 : 0] data
);

(* ramstyle = "AUTO" *) reg [DATA_WIDTH-1 : 0] mem[(2**ADDR_WIDTH-1) : 0];

initial begin
    //$readmemh("C:/Users/Spica/Desktop/jichuang/SDRV3_3/rtl/LCD_printer/data.hex", mem);
    $readmemh("D:/jichuang/SDRV4_2_1/rtl/LCD_printer/data.hex", mem);
end

always @ (*) begin
    data <= mem[addr];
end

endmodule