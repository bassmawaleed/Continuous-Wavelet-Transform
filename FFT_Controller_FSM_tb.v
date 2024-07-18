/* Description : This file aims to test the functionaity of the FFT Controller */
/* Author : Basma Walid - Preprocessing Team */

`timescale 1ns/1ps

module FFT_Controller_FSM_tb();


/* Parameters */
parameter BITS = 16 ;
parameter NUMBER_OF_ENABLE_BITS = 128 ;
parameter NUMBER_OF_MEM = 32 ;
parameter MUX_SEL_BITS = 7 ;
parameter ADDRESS_BITS = 2 ;

parameter Clock_Period = 5 ;

/* First : Define Testbench Signals */
	reg ready_inputs_tb ;
	reg clk_tb ;
	reg rst_tb ;
	wire [1:0] sel_output_4x1_tb ; 
	wire [4:0] ROM_addr_tb ;
	wire [63:0] twiddle_reg_en_tb ;
	wire [NUMBER_OF_ENABLE_BITS-1:0] reg_en_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_0_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_1_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_2_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_3_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_4_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_5_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_6_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_7_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_8_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_9_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_10_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_11_tb;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_12_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_13_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_14_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_15_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_16_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_17_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_18_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_19_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_20_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_21_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_22_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_23_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_24_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_25_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_26_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_27_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_28_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_29_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_30_tb ;
	wire [MUX_SEL_BITS-1:0]  sel_output_mux_31_tb ;
	wire [ADDRESS_BITS-1:0] read_address_tb ;
	wire [ADDRESS_BITS-1:0] write_address_tb ;
	wire [NUMBER_OF_MEM-1:0] mem_write_enable_tb ;
	wire correct_tb ;
	wire sel_mux_2_1_tb ;

/* Second : Module Inistantiation */
Controller_FSM #(.BITS(BITS),.NUMBER_OF_ENABLE_BITS(NUMBER_OF_ENABLE_BITS),.NUMBER_OF_MEM(NUMBER_OF_MEM),.MUX_SEL_BITS(MUX_SEL_BITS),.ADDRESS_BITS(ADDRESS_BITS)) DUT 
(
	.ready_inputs(ready_inputs_tb) ,
	.clk(clk_tb) ,
	.rst(rst_tb) ,
	.reg_en(reg_en_tb) ,
	.ROM_addr(ROM_addr_tb),
	.twiddle_reg_en(twiddle_reg_en_tb),
	.sel_output_4x1(sel_output_4x1_tb) ,
	.sel_output_mux_0(sel_output_mux_0_tb) ,
	.sel_output_mux_1(sel_output_mux_1_tb) ,
	.sel_output_mux_2(sel_output_mux_2_tb) ,
	.sel_output_mux_3(sel_output_mux_3_tb) ,
	.sel_output_mux_4(sel_output_mux_4_tb) ,
	.sel_output_mux_5(sel_output_mux_5_tb) ,
	.sel_output_mux_6(sel_output_mux_6_tb) ,
	.sel_output_mux_7(sel_output_mux_7_tb) ,
	.sel_output_mux_8(sel_output_mux_8_tb) ,
	.sel_output_mux_9(sel_output_mux_9_tb) ,
	.sel_output_mux_10(sel_output_mux_10_tb) ,
	.sel_output_mux_11(sel_output_mux_11_tb),
	.sel_output_mux_12(sel_output_mux_12_tb) ,
	.sel_output_mux_13(sel_output_mux_13_tb) ,
	.sel_output_mux_14(sel_output_mux_14_tb) ,
	.sel_output_mux_15(sel_output_mux_15_tb) ,
	.sel_output_mux_16(sel_output_mux_16_tb) ,
	.sel_output_mux_17(sel_output_mux_17_tb) ,
	.sel_output_mux_18(sel_output_mux_18_tb) ,
	.sel_output_mux_19(sel_output_mux_19_tb) ,
	.sel_output_mux_20(sel_output_mux_20_tb) ,
	.sel_output_mux_21(sel_output_mux_21_tb) ,
	.sel_output_mux_22(sel_output_mux_22_tb) ,
	.sel_output_mux_23(sel_output_mux_23_tb) ,
	.sel_output_mux_24(sel_output_mux_24_tb) ,
	.sel_output_mux_25(sel_output_mux_25_tb) ,
	.sel_output_mux_26(sel_output_mux_26_tb) ,
	.sel_output_mux_27(sel_output_mux_27_tb) ,
	.sel_output_mux_28(sel_output_mux_28_tb) ,
	.sel_output_mux_29(sel_output_mux_29_tb) ,
	.sel_output_mux_30(sel_output_mux_30_tb) ,
	.sel_output_mux_31(sel_output_mux_31_tb) ,
	.read_address(read_address_tb) ,
	.write_address(write_address_tb) ,
	.mem_write_enable(mem_write_enable_tb) ,
	.correct(correct_tb),
	.sel_mux_2_1(sel_mux_2_1_tb)
);

/* Third : Clock Signal Generation */
always #(Clock_Period / 2) clk_tb = ~clk_tb ;


/* Initial Block */
	initial begin
	$dumpfile("FFT_Controller_FSM.vcd");
	$dumpvars;
	clk_tb = 1'b0 ;
	initialize();
	
	reset();
	
	#(Clock_Period) 
	operation();
	
	#(50 * Clock_Period)
	$stop ;
	end 



task initialize ;
	begin
		ready_inputs_tb = 1'b0;
		rst_tb=1'b1 ;
	end
endtask

task reset ;
	begin
		/* Reset */
		#(Clock_Period)
		rst_tb = 1'b0 ;
		#(Clock_Period) 
		rst_tb = 1'b1 ;
	end
endtask

task operation ;
	begin
		ready_inputs_tb = 1'b1;
		#(Clock_Period*4) 
		ready_inputs_tb = 1'b0;
	end
endtask

endmodule	



