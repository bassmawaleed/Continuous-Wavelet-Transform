module Complex_Multiplier_Top 
#(
    parameter BITS = 16
) 

(
    input rst,
    input [BITS-1 : 0 ] A_r ,
    input [BITS-1 : 0 ] A_i ,
    input [BITS-1 : 0 ] B_r ,
    input [BITS-1 : 0 ] B_i ,
    output  [BITS-1 : 0 ] out_r,
    output  [BITS-1 : 0 ] out_i
    
);

wire [BITS-1 : 0] s2,s1,s0,M2,M1,M0;



adder #(.BITS(BITS)) add1
(
.rst(rst) ,
.add_in1(A_r),
.add_in2(A_i),
.sum(s2)
);


subtractor #(.BITS(BITS)) sub1
(
.rst(rst) , 
.in1(A_r) ,
.in2(A_i) ,
.sub_out(s1)
);

subtractor #(.BITS(BITS)) sub2
(
.rst(rst) , 
.in1(B_r) ,
.in2(B_i) ,
.sub_out(s0)
);



multiplier #(.BITS(BITS)) mul1
(
.rst(rst) ,
.mul_in1(B_i),
.mul_in2(s2),
.mul_out(M2)
);

multiplier #(.BITS(BITS)) mul2
(
.rst(rst) ,
.mul_in1(B_r),
.mul_in2(s1),
.mul_out(M1)
);

multiplier #(.BITS(BITS)) mul3
(
.rst(rst) ,
.mul_in1(A_i),
.mul_in2(s0),
.mul_out(M0)
);

adder #(.BITS(BITS)) add2
(
.rst(rst) ,
.add_in1(M0),
.add_in2(M1),
.sum(out_r)
);

adder #(.BITS(BITS)) add3
(
.rst(rst) ,
.add_in1(M0),
.add_in2(M2),
.sum(out_i)
);



        

endmodule
