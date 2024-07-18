module twiddle_ROM_real_10(
    input wire clk,
    input wire [4:0] addr,
    output reg [15:0] data_out
);

always @(posedge clk) begin
    case(addr)

5'b00000: data_out <= 16'h0100 ;
5'b00001: data_out <= 16'h0100 ;
5'b00010: data_out <= 16'h0100 ;
5'b00011: data_out <= 16'h0100 ;
5'b00100: data_out <= 16'h0100 ;
5'b00101: data_out <= 16'h0000 ;
5'b00110: data_out <= 16'h0100 ;
5'b00111: data_out <= 16'h0000 ;
5'b01000: data_out <= 16'h0100 ;
5'b01001: data_out <= 16'h00B5 ;
5'b01010: data_out <= 16'h0000 ;
5'b01011: data_out <= 16'hFF4A ;
5'b01100: data_out <= 16'h0100 ;
5'b01101: data_out <= 16'h00EC ;
5'b01110: data_out <= 16'h00B5 ;
5'b01111: data_out <= 16'h0061 ;
5'b10000: data_out <= 16'h0000 ;
5'b10001: data_out <= 16'hFFCE ;
5'b10010: data_out <= 16'hFF9E ;
5'b10011: data_out <= 16'hFF71 ;
5'b10100: data_out <= 16'h00B5 ;
5'b10101: data_out <= 16'h00A2 ;
5'b10110: data_out <= 16'h008E ;
5'b10111: data_out <= 16'h0078 ;
5'b11000: data_out <= 16'hFF9E ;
5'b11001: data_out <= 16'hFF92 ;
5'b11010: data_out <= 16'hFF87 ;
5'b11011: data_out <= 16'hFF7C ;


        default: data_out <= 16'h00000;
    endcase
end

endmodule
