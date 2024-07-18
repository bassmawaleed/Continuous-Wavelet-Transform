
module adder 
#(
    parameter BITS = 16
)

(
    input rst,
    input [BITS-1 : 0 ] add_in1,
    input [BITS-1 : 0 ] add_in2,
    output  [BITS-1 : 0 ] sum
    //output overflow_flag

);

reg [BITS-1:0] result ; 

assign sum = result; 
//assign overflow_flag = (( (add_in1[BITS-1] == 1'b0 ) && (add_in2[BITS-1] == 1'b0 ) && (sum[BITS-1] == 1'b1 ) )||( (add_in1[BITS-1] == 1'b1 ) && (add_in2[BITS-1] == 1'b1 ) && (sum[BITS-1] == 1'b0 ) ))?(1'b1):(1'b0);


always @(*)
begin
        result = add_in1 + add_in2 ;
    
end


    
endmodule

