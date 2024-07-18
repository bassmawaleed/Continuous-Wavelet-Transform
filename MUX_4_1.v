/* Description : This Verilog file constructs a 4x1 MUX */

module MUX_4_1 #(parameter BITS = 16 )(
    input wire [BITS-1:0] in_0,
    input wire [BITS-1:0] in_1,
    input wire [BITS-1:0] in_2,
    input wire [BITS-1:0] in_3,
    input wire [1:0] selection_line,
    output reg [BITS-1:0] out
);

always @(*)
begin
    case(selection_line)
        2'b00: out = in_0;
        2'b01: out = in_1;
        2'b10: out = in_2;
        2'b11: out = in_3;
        default: out = 0;
    endcase
end

endmodule
