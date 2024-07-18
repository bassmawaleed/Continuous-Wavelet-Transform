module subtractor #(
    parameter BITS = 16
) (
    input rst , 
    input [BITS-1 : 0 ] in1 ,
    input [BITS-1 : 0 ] in2 ,
    output reg [BITS-1 : 0 ] sub_out
    //output overflow_flag

);


//assign overflow_flag = (( (in1[BITS-1] == 1'b0 ) && (in2[BITS-1] == 1'b1 ) && (sub_out[BITS-1] == 1'b1 ) )||( (in1[BITS-1] == 1'b1 ) && (in2[BITS-1] == 1'b0 ) && (sub_out[BITS-1] == 1'b0 ) ))?(1'b1):(1'b0);


always @(*) begin
        begin
            sub_out = in1 + (~in2 + 1'b1);
        end
end
    
endmodule

