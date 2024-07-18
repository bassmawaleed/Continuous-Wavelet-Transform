/* Description : This file aims to test the functionaity of the CWT Controller */
`timescale 1ns/1ps

module Controller_FSM_CWT_tb();


parameter Clock_Period = 4 ;


/* First : Define Testbench Signals */
reg clk;
reg rst;
reg fft_correct;
reg ifft_correct;
reg fft_ready_inputs;
wire [127:0] reg_en_fft;                                            /* Enable of the register file that contains the outputs of the fft*/
wire [6:0] sel_mux_128x1;                                   /* selection line of the 128x1 mux connected to the reg file and multiplier*/
wire [7:0] wavlet_rom_addr;                                 /* Address bus of the real and imag Wavelet ROM */
wire [127:0] reg_en_ifft;                                   /* Enables of the register file that contains the inputs of the ifft*/
wire [1:0] ifft_sel_mux_4x1;                                /* selection line of the 4x1 mux connected to the IFFT and RAMs*/
wire ifft_ready_inputs;                                     /* Ready Inputs signal of the ifft */                           
wire ifft_scale_ram_write_enable_1;                         /* Write enable of the 32 RAMs of Scale 1 */
wire ifft_scale_ram_write_enable_2;                         /* Write enable of the 32 RAMs of Scale 2 */
wire ifft_scale_ram_write_enable_3;                         /* Write enable of the 32 RAMs of Scale 3 */
wire ifft_scale_ram_write_enable_4;                         /* Write enable of the 32 RAMs of Scale 4 */
wire ifft_scale_ram_write_enable_5;                         /* Write enable of the 32 RAMs of Scale 5 */
wire ifft_scale_ram_write_enable_6;                         /* Write enable of the 32 RAMs of Scale 6 */
wire ifft_scale_ram_write_enable_7;                         /* Write enable of the 32 RAMs of Scale 7 */
wire ifft_scale_ram_write_enable_8;                         /* Write enable of the 32 RAMs of Scale 8 */
wire ifft_scale_ram_write_enable_9;                         /* Write enable of the 32 RAMs of Scale 9 */
wire ifft_scale_ram_write_enable_10;                        /* Write enable of the 32 RAMs of Scale 10 */
wire ifft_scale_ram_write_enable_11;                        /* Write enable of the 32 RAMs of Scale 11 */
wire ifft_scale_ram_write_enable_12;                        /* Write enable of the 32 RAMs of Scale 12 */
wire ifft_scale_ram_write_enable_13;                        /* Write enable of the 32 RAMs of Scale 13 */
wire ifft_scale_ram_write_enable_14;                        /* Write enable of the 32 RAMs of Scale 14 */
wire ifft_scale_ram_write_enable_15;                        /* Write enable of the 32 RAMs of Scale 15 */
wire [1:0] ifft_scale_output_ram_addr;


/* Second : Module Inistantiation */
Controller_FSM_CWT DUT (
.clk(clk),
.rst(rst),
.fft_correct(fft_correct),
.ifft_correct(ifft_correct),
.fft_ready_inputs(fft_ready_inputs),

.reg_en_fft(reg_en_fft),
.sel_mux_128x1(sel_mux_128x1),
.wavlet_rom_addr(wavlet_rom_addr),
.reg_en_ifft(reg_en_ifft),
.ifft_sel_mux_4x1(ifft_sel_mux_4x1),
.ifft_ready_inputs(ifft_ready_inputs),
.ifft_scale_ram_write_enable_1(ifft_scale_ram_write_enable_1),
.ifft_scale_ram_write_enable_2(ifft_scale_ram_write_enable_2),
.ifft_scale_ram_write_enable_3(ifft_scale_ram_write_enable_3),
.ifft_scale_ram_write_enable_4(ifft_scale_ram_write_enable_4),
.ifft_scale_ram_write_enable_5(ifft_scale_ram_write_enable_5),
.ifft_scale_ram_write_enable_6(ifft_scale_ram_write_enable_6),
.ifft_scale_ram_write_enable_7(ifft_scale_ram_write_enable_7),
.ifft_scale_ram_write_enable_8(ifft_scale_ram_write_enable_8),
.ifft_scale_ram_write_enable_9(ifft_scale_ram_write_enable_9),
.ifft_scale_ram_write_enable_10(ifft_scale_ram_write_enable_10),
.ifft_scale_ram_write_enable_11(ifft_scale_ram_write_enable_11),
.ifft_scale_ram_write_enable_12(ifft_scale_ram_write_enable_12),
.ifft_scale_ram_write_enable_13(ifft_scale_ram_write_enable_13),
.ifft_scale_ram_write_enable_14(ifft_scale_ram_write_enable_14),
.ifft_scale_ram_write_enable_15(ifft_scale_ram_write_enable_15),
.ifft_scale_output_ram_addr(ifft_scale_output_ram_addr)
);

/* Third : Clock Signal Generation */
always #(Clock_Period / 2) clk = ~clk ;


/* Initial Block */
	initial begin
	$dumpfile("Controller_FSM_CWT.vcd");
	$dumpvars;
	clk = 1'b0 ;
	initialize();
	
	reset();
	
	#(Clock_Period) 
	operation();
	
	#(50 * Clock_Period)
	$stop ;
	end 


task initialize ;
	begin
		fft_ready_inputs = 1'b0;
		rst=1'b1 ;
        fft_correct = 1'b0;
        ifft_correct = 1'b0;
	end
endtask

task reset ;
	begin
		/* Reset */
		#(Clock_Period)
		rst = 1'b0 ;
		#(Clock_Period) 
		rst = 1'b1 ;
	end
endtask


task operation ;
	begin
		fft_ready_inputs = 1'b1;
		#(Clock_Period*4) 
		fft_ready_inputs = 1'b0;

        #(Clock_Period*4)
        fft_correct = 1'b1;
        #(Clock_Period)
        fft_correct = 1'b0;

        #(Clock_Period*24)
        ifft_correct = 1'b1;
        #(Clock_Period)
        ifft_correct = 1'b0;

		wait(DUT.current_state == 'b00110 )
		wait(DUT.state_counter == 'b1111)
		begin
			#(Clock_Period*4)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end

		wait(DUT.current_state == 'b00111 )
		wait(DUT.state_counter == 'b1111)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end

		wait(DUT.current_state == 'b01000 )
		wait(DUT.state_counter == 'b1101)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end

		wait(DUT.current_state == 'b01001 )
		wait(DUT.state_counter == 'b1101)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end

		wait(DUT.current_state == 'b01010 )
		wait(DUT.state_counter == 'b1101)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end

		wait(DUT.current_state == 'b01011 )
		wait(DUT.state_counter == 'b1101)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end

		wait(DUT.current_state == 'b01100 )
		wait(DUT.state_counter == 'b1101)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end
		
		wait(DUT.current_state == 'b01101 )
		wait(DUT.state_counter == 'b1101)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end 

		wait(DUT.current_state == 'b01110 )
		wait(DUT.state_counter == 'b1100)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end 

		wait(DUT.current_state == 'b01111 )
		wait(DUT.state_counter == 'b1100)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end 

		wait(DUT.current_state == 'b10000 )
		wait(DUT.state_counter == 'b1100)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end 

		wait(DUT.current_state == 'b10001 )
		wait(DUT.state_counter == 'b1100)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end 

		wait(DUT.current_state == 'b10010 )
		wait(DUT.state_counter == 'b1100)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end 

		wait(DUT.current_state == 'b10011 )
		wait(DUT.state_counter == 'b0100)
		begin
			#(Clock_Period*3.5)
			ifft_correct = 1'b1;
			#(Clock_Period)
        	ifft_correct = 1'b0;
		end 
	end
endtask


endmodule