/* Module Name : Multiplier */
/* Inputs: clk , rst , mul_in1 , mul_in2 */
/* Outputs: mul_out */
/* Fucntioncality : mul_out = mul_in1*mul_in2 */

module multiplier #
(
    parameter TRANC = 8,
    parameter BITS = 16,
    parameter INT_BITS = BITS - TRANC - 1
)
(
    input                   rst,
    input       [BITS-1:0]  mul_in1,
    input       [BITS-1:0]  mul_in2,
    output reg  [BITS-1:0]  mul_out
    //output reg overflow_flag
);

    reg [2*BITS-1:0]  product32;
    reg [BITS-1:0]    temp_mul1;
    reg [BITS-1:0]    temp_mul2;
    reg [BITS-1:0]    temp_mul3;

    //parameter INT_BITS = BITS - TRANC - 1;

    

    always @ (*) begin
    if(!rst) begin
        // Reset all variables
        mul_out    = 0;
        product32  = 0;
        temp_mul1  = 0;
        temp_mul2  = 0;
        temp_mul3  = 0;
        //overflow_flag = 0;
    end
    else begin
        if(mul_in1[BITS-1] == 0 && mul_in2[BITS-1] == 0) begin
            // Case of positive numbers
            temp_mul1  = 0;
            temp_mul2  = 0;
            temp_mul3  = 0;
            product32  = mul_in1 * mul_in2;
            mul_out    = product32[BITS - 1 + TRANC:TRANC];
        end
        else if(mul_in1[BITS-1] == 0 && mul_in2[BITS-1] == 1) begin
            // Case of positive multiplied by negative
            temp_mul1  = 0;
            temp_mul2  = ~mul_in2 + 1'b1;
            product32  = mul_in1 * temp_mul2;
            temp_mul3  = product32[BITS - 1 + TRANC:TRANC];
            mul_out    = ~temp_mul3 + 1'b1;
        end
        else if(mul_in1[BITS-1] == 1 && mul_in2[BITS-1] == 0) begin
            // Case of negative multiplied by positive
            temp_mul2  = 0;
            temp_mul1  = ~mul_in1 + 1'b1;
            product32  = mul_in2 * temp_mul1;
            temp_mul3  = product32[BITS - 1 + TRANC:TRANC];
            mul_out    = ~temp_mul3 + 1'b1;
        end
        else begin
            // Case of negative multiplied by negative
            temp_mul1  = ~mul_in1 + 1'b1;
            temp_mul2  = ~mul_in2 + 1'b1;
            temp_mul3  = 0;
            product32  = temp_mul2 * temp_mul1;
            mul_out    = product32[BITS - 1 + TRANC:TRANC];
        end
    end
    end
/*
always @(*) begin

    // Check for overflow
if (mul_out[BITS - 1] == 0) begin
    // Positive numbers
    if (product32 > {1'b0, {INT_BITS{1'b1}}, {TRANC{1'b1}}}) begin
        overflow_flag = 1'b1;
    end
    else begin
        overflow_flag = 1'b0;
      
    end
end
else begin
    // Negative numbers
    if (mul_out < {1'b1, {INT_BITS{1'b0}}, {TRANC{1'b0}}}) begin
        overflow_flag = 1'b1;
    end
        else begin
        overflow_flag = 1'b0;
      
    end

end

    
end
*/

endmodule

