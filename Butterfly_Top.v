module Butterfly_Top #(
    parameter BITS = 16
)
(
    input  rst ,
    input [BITS-1 : 0 ] in1_r ,
    input [BITS-1 : 0 ] in1_i ,
    input [BITS-1 : 0 ] in2_r ,
    input [BITS-1 : 0 ] in2_i ,
    input [BITS-1 : 0 ] twiddle_r ,
    input [BITS-1 : 0 ] twiddle_i ,
    output [BITS-1 : 0 ] out1_r ,
    output [BITS-1 : 0 ] out1_i ,
    output [BITS-1 : 0 ] out2_r ,
    output [BITS-1 : 0 ] out2_i 

);

wire [BITS-1 : 0] comp_mul_out_r,comp_mul_out_i;

Complex_Multiplier_Top #(.BITS(BITS)) mul
(
.rst(rst),
.A_r(in2_r) ,
.A_i(in2_i) ,
.B_r(twiddle_r) ,
.B_i(twiddle_i) ,
.out_r(comp_mul_out_r),
.out_i(comp_mul_out_i)
);

adder #(.BITS(BITS)) add1
(
.rst(rst) ,
.add_in1(comp_mul_out_r),
.add_in2(in1_r),
.sum(out1_r)
);

adder #(.BITS(BITS)) add2
(
.rst(rst) ,
.add_in1(comp_mul_out_i),
.add_in2(in1_i),
.sum(out1_i)
);

subtractor #(.BITS(BITS)) sub1
( 
.rst(rst) , 
.in1(in1_r) ,
.in2(comp_mul_out_r) ,
.sub_out(out2_r)
);

subtractor #(.BITS(BITS)) sub2
(
.rst(rst) , 
.in1(in1_i) ,
.in2(comp_mul_out_i) ,
.sub_out(out2_i)
);



endmodule

