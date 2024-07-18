/* Description : This file aims to test the proper operation and functionality of a memory */
/* Author : Basma Walid - Preprocessing Team */

`timescale 1ns/1ps

module Memory_tb ();

	/* Parameters */
	parameter Clock_Period = 2 ;
	parameter BITS = 16 ; 
	parameter ADDRESS_BITS = 2; 
	parameter NUMBER_OF_LOCATIONS = 4;
	
	/* FIRST : Define testbench signals */
	reg clk_tb ;
	reg rst_tb ;
	reg [ADDRESS_BITS-1:0] read_address_tb ;
	reg [ADDRESS_BITS-1:0] write_address_tb ;
	reg [BITS-1:0]    write_data_tb ;
	reg write_enable_tb ;
	wire [BITS-1:0]    read_data_tb ;

	/* SECOND : Instantiate the target module */
	Memory #(BITS,ADDRESS_BITS,NUMBER_OF_LOCATIONS) DUT (
	.clk(clk_tb),
	.rst(rst_tb),
	.read_address(read_address_tb),
	.write_address(write_address_tb),
	.write_data(write_data_tb),
	.write_enable(write_enable_tb),
	.read_data(read_data_tb)
	);
	
	/* THIRD : Clock Signal Generation */
	always #(Clock_Period / 2) clk_tb = ~clk_tb ;

	/* FOURTH : Initial Block */
	initial begin
	$dumpfile("Memory.vcd");
	$dumpvars;
    clk_tb = 1'b0 ;
	
	initialize();
	
	reset();
	
	TEST_CASE_A();
	
	TEST_CASE_B();
	
	TEST_CASE_C();
	
	#(10 * Clock_Period)
	$stop ;
	end
	


task initialize ;
	begin
		rst_tb = 1'b1 ;
		read_address_tb = 'b0;
		write_address_tb = 'b0;
		write_data_tb = 'b0;
		write_enable_tb = 'b0;
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

/* Write Operation and Write enable is high */
task TEST_CASE_A ;
	begin
		/* Reset */
		#(Clock_Period)
		read_address_tb = 'b0;
		write_address_tb = 'b10;
		write_data_tb = 32 ;
		write_enable_tb = 'b1 ;
		#(Clock_Period)
		if (DUT.locations[write_address_tb] == write_data_tb)
			$display("TEST CASE A Succedded");
	end
endtask

/* Write Operation and Write enable is low */
task TEST_CASE_B ;
	begin
		/* Reset */
		#(Clock_Period)
		read_address_tb = 'b10;
		write_address_tb = 'b11;
		write_data_tb = 100 ;
		write_enable_tb = 'b0 ;
		#(Clock_Period)
		if (DUT.locations[write_address_tb] != write_data_tb)
			$display("TEST CASE B Succedded");
	end
endtask

/* Read Operation and Write enable is low */
task TEST_CASE_C ;
	begin
		/* Reset */
		#(Clock_Period)
		read_address_tb = 'b11;
		write_address_tb = 'b11;
		write_data_tb = 100 ;
		write_enable_tb = 'b0 ;
		#(Clock_Period)
		if (read_data_tb == DUT.locations[read_address_tb])
			$display("TEST CASE C Succedded");
	end
endtask

endmodule

