/* Description : This verilog file tends to construct a 2x1 MUX */
/* Author : Basma Walid - Preprocessing Team */

module MUX_2_1 #(parameter BITS = 16 )(
	input wire [BITS-1:0] in_1 ,
	input wire [BITS-1:0] in_2 ,
	input wire 			  selection_line ,
	output reg [BITS-1:0] out 
);

always@(*)
begin
	case(selection_line)
	1'b0 : out = in_1 ;
	1'b1 : out = in_2 ;
	default : out = 0 ;
	endcase
	
end
endmodule
