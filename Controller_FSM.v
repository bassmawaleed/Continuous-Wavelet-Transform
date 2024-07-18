/* Description : This is the controller that controls the FFT Time share process */
/* Author : Basma Walid and Mohammed Abd el Nasser - Preprocessing Team */

module Controller_FSM #(
parameter BITS = 16 ,
parameter NUMBER_OF_ENABLE_BITS = 128 ,
parameter NUMBER_OF_MEM = 32 ,
parameter MUX_SEL_BITS = 7 ,
parameter ADDRESS_BITS = 2
)
(
	input wire ready_inputs ,
	input wire clk ,
	input wire rst ,
	output reg [NUMBER_OF_ENABLE_BITS-1:0] reg_en ,
	output wire [63:0] twiddle_reg_en ,
	output reg [4:0] ROM_addr ,
	output reg [1:0]  sel_output_4x1 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_0 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_1 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_2 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_3 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_4 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_5 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_6 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_7 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_8 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_9 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_10 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_11,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_12 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_13 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_14 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_15 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_16 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_17 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_18 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_19 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_20 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_21 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_22 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_23 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_24 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_25 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_26 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_27 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_28 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_29 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_30 ,
	output reg [MUX_SEL_BITS-1:0]  sel_output_mux_31 ,
	output reg [ADDRESS_BITS-1:0] read_address ,
	output reg [ADDRESS_BITS-1:0] write_address ,
	output reg [NUMBER_OF_MEM-1:0] mem_write_enable ,
	output reg correct ,
	output reg sel_mux_2_1 
);

/* States definition */
localparam RESET = 4'b0000; 	/* Resets all the outputs of the controller */
localparam WAIT = 4'b0001; 	    /* Waits for the start signal */
localparam PASS1 = 4'b0010;		/* Copies the memory data to the PU's */
localparam PASS1W = 4'b0011;	/* Write the outputs of the PU in the memory banks */
localparam PASS2 = 4'b0100;		/* Copies the memory data to the PU's */
localparam PASS2W = 4'b0101;	/* Write the outputs of the PU in the memory banks */
localparam PASS3 = 4'b0110;		/* Copies the memory data to the PU's */
localparam PASS3W = 4'b0111;	/* Write the outputs of the PU in the memory banks */
localparam PASS4 = 4'b1000;		/* Copies the memory data to the PU's */
localparam PASS4W = 4'b1001;	/* Write the outputs of the PU in the memory banks */
localparam PASS5 = 4'b1010;		/* Copies the memory data to the PU's */
localparam PASS5W = 4'b1011;	/* Write the outputs of the PU in the memory banks */
localparam PASS6 = 4'b1100;		/* Copies the memory data to the PU's */
localparam PASS6W = 4'b1101;	/* Write the outputs of the PU in the memory banks */
localparam PASS7 = 4'b1110;		/* Copies the memory data to the PU's */
localparam PASS7W = 4'b1111;	/* Write the outputs of the PU in the memory banks */

reg [3:0] current_state , next_state ;
reg [1:0] state_count ;
reg 	  state_count_reset ;

/* Present State Flipflop logic */
always @ (posedge clk or negedge rst)
begin
  if( !rst )
    begin
      current_state <= RESET ; 
    end 
  else
    begin
      current_state <= next_state ;
    end
end


/* Next state logic */
always@(*)
begin
  case(current_state)
    RESET: begin
            next_state = WAIT ; 
          end
    WAIT: begin
           if(state_count == 3)
				next_state = PASS1 ;
		   else
				next_state = WAIT ;
          end
     PASS1: begin
           if(state_count == 3)
				next_state = PASS1W ;
			else
				next_state = PASS1 ;
          end
	 PASS1W:begin
           if(state_count == 3)
				next_state = PASS2 ;
			else
				next_state = PASS1W ;
          end
	PASS2:begin
           if(state_count == 3)
				next_state = PASS2W ;
			else
				next_state = PASS2 ;
          end
	PASS2W:begin
           if(state_count == 3)
				next_state = PASS3 ;
			else
				next_state = PASS2W ;
          end 
	PASS3:begin
           if(state_count == 3)
				next_state = PASS3W ;
			else
				next_state = PASS3 ;
          end
	PASS3W:begin
           if(state_count == 3)
				next_state = PASS4 ;
			else
				next_state = PASS3W ;
          end
	PASS4:begin
           if(state_count == 3)
				next_state = PASS4W ;
			else
				next_state = PASS4;
          end
	PASS4W:begin
           if(state_count == 3)
				next_state = PASS5 ;
			else
				next_state = PASS4W ;
          end
	PASS5:begin
           if(state_count == 3)
				next_state = PASS5W ;
			else
				next_state = PASS5 ;
          end
	PASS5W:begin
           if(state_count == 3)
				next_state = PASS6 ;
			else
				next_state = PASS5W ;
          end
	PASS6:begin
           if(state_count == 3)
				next_state = PASS6W ;
			else
				next_state = PASS6 ;
          end
	PASS6W:begin
           if(state_count == 3)
				next_state = PASS7 ;
			else
				next_state = PASS6W ;
          end
	PASS7:begin
           if(state_count == 3)
				next_state = PASS7W ;
			else
				next_state = PASS7 ;
          end
	PASS7W:begin
           if(state_count == 3)
				next_state = WAIT ;
			else
				next_state = PASS7W ;
          end 
  endcase
end


/* Output Logic */
/* Since we are designing Moore state machine , The output is a function in the current state only */
always @ (*)
begin
  case(current_state)
    RESET: begin
			  sel_mux_2_1 = 0;
			  sel_output_4x1 = 0;
              reg_en = 'b0 ;
			  ROM_addr = 5'b00000 ;
			  correct = 'b0 ;
			  sel_output_mux_0 = 7'b0000000 ; 
			  sel_output_mux_1 = 7'b0000000 ; 
			  sel_output_mux_2 = 7'b0000000 ; 
			  sel_output_mux_3 = 7'b0000000 ; 
			  sel_output_mux_4 = 7'b0000000 ; 
			  sel_output_mux_5 = 7'b0000000 ; 
			  sel_output_mux_6 = 7'b0000000 ; 
			  sel_output_mux_7 = 7'b0000000 ; 
			  sel_output_mux_8 = 7'b0000000 ; 
			  sel_output_mux_9 = 7'b0000000 ; 
			  sel_output_mux_10 = 7'b0000000 ; 
			  sel_output_mux_11 = 7'b0000000 ; 
			  sel_output_mux_12 = 7'b0000000 ; 
			  sel_output_mux_13 = 7'b0000000 ; 
			  sel_output_mux_14 = 7'b0000000 ; 
			  sel_output_mux_15 = 7'b0000000 ; 
			  sel_output_mux_16 = 7'b0000000 ; 
			  sel_output_mux_17 = 7'b0000000 ; 
			  sel_output_mux_18 = 7'b0000000 ; 
			  sel_output_mux_19 = 7'b0000000 ; 
			  sel_output_mux_20 = 7'b0000000 ; 
			  sel_output_mux_21 = 7'b0000000 ; 
			  sel_output_mux_22 = 7'b0000000 ; 
			  sel_output_mux_23 = 7'b0000000 ; 
			  sel_output_mux_24 = 7'b0000000 ; 
			  sel_output_mux_25 = 7'b0000000 ; 
			  sel_output_mux_26 = 7'b0000000 ; 
			  sel_output_mux_27 = 7'b0000000 ; 
			  sel_output_mux_28 = 7'b0000000 ; 
			  sel_output_mux_29 = 7'b0000000 ; 
			  sel_output_mux_30 = 7'b0000000 ; 
			  sel_output_mux_31 = 7'b0000000 ;
			  read_address = 2'b00 ;
			  write_address = 2'b00 ;
			  mem_write_enable = 32'b00000000000000000000000000000000 ;
			  state_count_reset = 1'b0;
          end
    WAIT: begin
			  if(ready_inputs == 1 )
			  begin
				/* Enable writing the values of the time domain signal */
			    mem_write_enable = 32'b1111_1111_1111_1111_1111_1111_1111_1111 ;
				
				/* The following case statement manages the writing operation of the inputs */
				case(state_count)
				2'b00 : begin
						sel_output_4x1 = 2'b00 ;
						write_address = 2'b00 ;
						sel_mux_2_1 = 1'b0;
						state_count_reset = 1'b1; 
						ROM_addr = 5'b00000;
					end
				2'b01 : begin
						sel_output_4x1 = 2'b01 ;
						write_address = 2'b01 ;
						sel_mux_2_1 = 1'b0;
						state_count_reset = 1'b1;
						ROM_addr = 5'b00000;
 
					end
				2'b10 : begin
						sel_output_4x1 = 2'b10 ;
						write_address = 2'b10 ;
						sel_mux_2_1 = 1'b0;
						state_count_reset = 1'b1;
						ROM_addr = 5'b00000;
						
					end
				2'b11 : begin
						sel_output_4x1 = 2'b11 ;
						write_address = 2'b11 ;
						sel_mux_2_1 = 1'b0;
						state_count_reset = 1'b0;
						ROM_addr = 5'b00001;    
						
					end
				default : begin
						sel_output_4x1 = 2'b00 ;
						write_address = 2'b00 ;
						sel_mux_2_1 = 1'b0;
						ROM_addr = 5'b00000;							

				end
				endcase
			  end
			  else
			  begin
						mem_write_enable = 32'b00000000000000000000000000000000 ;
						sel_output_4x1 = 2'b00 ;
						write_address = 2'b00 ;
						sel_mux_2_1 = 1'b0;
						state_count_reset = 1'b0 ; 
			  end
			  correct = 'b0;
			  sel_output_mux_0 = 7'b0000000 ; 
			  sel_output_mux_1 = 7'b0000000 ; 
			  sel_output_mux_2 = 7'b0000000 ; 
			  sel_output_mux_3 = 7'b0000000 ; 
			  sel_output_mux_4 = 7'b0000000 ; 
			  sel_output_mux_5 = 7'b0000000 ; 
			  sel_output_mux_6 = 7'b0000000 ; 
			  sel_output_mux_7 = 7'b0000000 ; 
			  sel_output_mux_8 = 7'b0000000 ; 
			  sel_output_mux_9 = 7'b0000000 ; 
			  sel_output_mux_10 = 7'b0000000 ; 
			  sel_output_mux_11 = 7'b0000000 ; 
			  sel_output_mux_12 = 7'b0000000 ; 
			  sel_output_mux_13 = 7'b0000000 ; 
			  sel_output_mux_14 = 7'b0000000 ; 
			  sel_output_mux_15 = 7'b0000000 ; 
			  sel_output_mux_16 = 7'b0000000 ; 
			  sel_output_mux_17 = 7'b0000000 ; 
			  sel_output_mux_18 = 7'b0000000 ; 
			  sel_output_mux_19 = 7'b0000000 ; 
			  sel_output_mux_20 = 7'b0000000 ; 
			  sel_output_mux_21 = 7'b0000000 ; 
			  sel_output_mux_22 = 7'b0000000 ; 
			  sel_output_mux_23 = 7'b0000000 ; 
			  sel_output_mux_24 = 7'b0000000 ; 
			  sel_output_mux_25 = 7'b0000000 ; 
			  sel_output_mux_26 = 7'b0000000 ; 
			  sel_output_mux_27 = 7'b0000000 ; 
			  sel_output_mux_28 = 7'b0000000 ; 
			  sel_output_mux_29 = 7'b0000000 ; 
			  sel_output_mux_30 = 7'b0000000 ; 
			  sel_output_mux_31 = 7'b0000000 ;
			  
			  /* Enable the reading operation early (one clock cycle)*/
			  if (next_state == PASS1)
			  begin
				reg_en = 'h1111_1111_1111_1111_1111_1111_1111_1111 ;
				read_address = 2'b01 ;
			  end 
			  else
			  begin
				reg_en = 0 ;
				read_address = 0 ;
			  end
          end
    PASS1: begin
			  case(state_count)
			    2'b00: begin 
							reg_en = 'h2222_2222_2222_2222_2222_2222_2222_2222 ;
							state_count_reset = 1'b1;
							read_address = 2'b10 ;
							ROM_addr = 5'b00010;
						end
				2'b01: begin
							reg_en = 'h4444_4444_4444_4444_4444_4444_4444_4444 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b00011;
														
						end
				2'b10: begin
							reg_en = 'h8888_8888_8888_8888_8888_8888_8888_8888 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b00011;
							
						end
				2'b11: begin
							reg_en = 0;
							state_count_reset = 1'b0;
							read_address = 2'b11 ;
							ROM_addr = 5'b00011;
					  end
			    default: begin 
							reg_en = 'b0 ; 
							state_count_reset = 1'b0;
							read_address = 'b0 ;
							ROM_addr = 5'b00000;
						end
			  endcase
			  correct = 'b0;
			  sel_mux_2_1 = 1'b1 ;
			  sel_output_4x1 = 0 ;
			  sel_output_mux_0 = 7'b0000000 ; 
			  sel_output_mux_1 = 7'b0000000 ; 
			  sel_output_mux_2 = 7'b0000000 ; 
			  sel_output_mux_3 = 7'b0000000 ; 
			  sel_output_mux_4 = 7'b0000000 ; 
			  sel_output_mux_5 = 7'b0000000 ; 
			  sel_output_mux_6 = 7'b0000000 ; 
			  sel_output_mux_7 = 7'b0000000 ; 
			  sel_output_mux_8 = 7'b0000000 ; 
			  sel_output_mux_9 = 7'b0000000 ; 
			  sel_output_mux_10 = 7'b0000000 ; 
			  sel_output_mux_11 = 7'b0000000 ; 
			  sel_output_mux_12 = 7'b0000000 ; 
			  sel_output_mux_13 = 7'b0000000 ; 
			  sel_output_mux_14 = 7'b0000000 ; 
			  sel_output_mux_15 = 7'b0000000 ; 
			  sel_output_mux_16 = 7'b0000000 ; 
			  sel_output_mux_17 = 7'b0000000 ; 
			  sel_output_mux_18 = 7'b0000000 ; 
			  sel_output_mux_19 = 7'b0000000 ; 
			  sel_output_mux_20 = 7'b0000000 ; 
			  sel_output_mux_21 = 7'b0000000 ; 
			  sel_output_mux_22 = 7'b0000000 ; 
			  sel_output_mux_23 = 7'b0000000 ; 
			  sel_output_mux_24 = 7'b0000000 ; 
			  sel_output_mux_25 = 7'b0000000 ; 
			  sel_output_mux_26 = 7'b0000000 ; 
			  sel_output_mux_27 = 7'b0000000 ; 
			  sel_output_mux_28 = 7'b0000000 ; 
			  sel_output_mux_29 = 7'b0000000 ; 
			  sel_output_mux_30 = 7'b0000000 ; 
			  sel_output_mux_31 = 7'b0000000 ;
			  write_address = 2'b00 ;
			  // Disable the writing operation //
			  mem_write_enable = 32'b0000_0000_0000_0000_0000_0000_0000_0000 ;
          end
	PASS1W:begin
				correct = 'b0 ;
				sel_mux_2_1 = 1'b1 ;
				sel_output_4x1 = 0 ;
				//ROM_addr = 5'b00000;
			case(state_count)
			    2'b00: begin 
							state_count_reset = 1'b1;
							write_address = 2'b00 ;
							sel_output_mux_0 = 0 ; 
							sel_output_mux_1 = 4 ; 
							sel_output_mux_2 = 8 ; 
							sel_output_mux_3 = 12 ; 
							sel_output_mux_4 = 16 ; 
							sel_output_mux_5 = 20 ; 
							sel_output_mux_6 = 24 ; 
							sel_output_mux_7 = 28 ; 
							sel_output_mux_8 = 32 ; 
							sel_output_mux_9 = 36 ; 
							sel_output_mux_10 = 40 ; 
							sel_output_mux_11 = 44 ; 
							sel_output_mux_12 = 48 ; 
							sel_output_mux_13 = 52 ; 
							sel_output_mux_14 = 56 ; 
							sel_output_mux_15 = 60 ; 
							sel_output_mux_16 = 64 ; 
							sel_output_mux_17 = 68 ; 
							sel_output_mux_18 = 72 ; 
							sel_output_mux_19 = 76 ; 
							sel_output_mux_20 = 80 ; 
							sel_output_mux_21 = 84 ; 
							sel_output_mux_22 = 88 ; 
							sel_output_mux_23 = 92 ; 
							sel_output_mux_24 = 96 ; 
							sel_output_mux_25 = 100 ; 
							sel_output_mux_26 = 104 ; 
							sel_output_mux_27 = 108 ; 
							sel_output_mux_28 = 112 ; 
							sel_output_mux_29 = 116 ; 
							sel_output_mux_30 = 120 ; 
							sel_output_mux_31 = 124 ;
							ROM_addr = 5'b00000;
						end
				2'b01: begin
							state_count_reset = 1'b1;
							write_address = 2'b01 ;
							sel_output_mux_0 = 2 ; 
							sel_output_mux_1 = 6 ; 
							sel_output_mux_2 = 10 ; 
							sel_output_mux_3 = 14 ; 
							sel_output_mux_4 = 18 ; 
							sel_output_mux_5 = 22 ; 
							sel_output_mux_6 = 26 ; 
							sel_output_mux_7 = 30 ; 
							sel_output_mux_8 = 34 ; 
							sel_output_mux_9 = 38 ; 
							sel_output_mux_10 = 42 ; 
							sel_output_mux_11 = 46 ; 
							sel_output_mux_12 = 50 ; 
							sel_output_mux_13 = 54 ; 
							sel_output_mux_14 = 58 ; 
							sel_output_mux_15 = 62 ; 
							sel_output_mux_16 = 66 ; 
							sel_output_mux_17 = 70 ; 
							sel_output_mux_18 = 74 ; 
							sel_output_mux_19 = 78 ; 
							sel_output_mux_20 = 82 ; 
							sel_output_mux_21 = 86 ; 
							sel_output_mux_22 = 90 ; 
							sel_output_mux_23 = 94 ; 
							sel_output_mux_24 = 98 ; 
							sel_output_mux_25 = 102 ; 
							sel_output_mux_26 = 106 ; 
							sel_output_mux_27 = 110 ; 
							sel_output_mux_28 = 114 ; 
							sel_output_mux_29 = 118 ; 
							sel_output_mux_30 = 122 ; 
							sel_output_mux_31 = 126 ;
							ROM_addr = 5'b00000;							
						end
				2'b10: begin
							state_count_reset = 1'b1;
							write_address = 2'b10 ;
							sel_output_mux_0 = 1 ; 
							sel_output_mux_1 = 5 ; 
							sel_output_mux_2 = 9 ; 
							sel_output_mux_3 = 13 ; 
							sel_output_mux_4 = 17 ; 
							sel_output_mux_5 = 21 ; 
							sel_output_mux_6 = 25 ; 
							sel_output_mux_7 = 29 ; 
							sel_output_mux_8 = 33 ; 
							sel_output_mux_9 = 37 ; 
							sel_output_mux_10 = 41 ; 
							sel_output_mux_11 = 45 ; 
							sel_output_mux_12 = 49 ; 
							sel_output_mux_13 = 53 ; 
							sel_output_mux_14 = 57 ; 
							sel_output_mux_15 = 61 ; 
							sel_output_mux_16 = 65 ; 
							sel_output_mux_17 = 69 ; 
							sel_output_mux_18 = 73 ; 
							sel_output_mux_19 = 77 ; 
							sel_output_mux_20 = 81 ; 
							sel_output_mux_21 = 85 ; 
							sel_output_mux_22 = 89 ; 
							sel_output_mux_23 = 93 ; 
							sel_output_mux_24 = 97 ; 
							sel_output_mux_25 = 101 ; 
							sel_output_mux_26 = 105 ; 
							sel_output_mux_27 = 109 ; 
							sel_output_mux_28 = 113 ; 
							sel_output_mux_29 = 117 ; 
							sel_output_mux_30 = 121 ; 
							sel_output_mux_31 = 125 ; 
							ROM_addr = 5'b00100;
							
						end
				2'b11: begin
							state_count_reset = 1'b0;
							write_address = 2'b11 ;
							sel_output_mux_0 = 3 ; 
							sel_output_mux_1 = 7 ; 
							sel_output_mux_2 = 11 ; 
							sel_output_mux_3 = 15 ; 
							sel_output_mux_4 = 19 ; 
							sel_output_mux_5 = 23 ; 
							sel_output_mux_6 = 27 ; 
							sel_output_mux_7 = 31 ; 
							sel_output_mux_8 = 35 ; 
							sel_output_mux_9 = 39 ; 
							sel_output_mux_10 = 43 ; 
							sel_output_mux_11 = 47 ; 
							sel_output_mux_12 = 51 ; 
							sel_output_mux_13 = 55 ; 
							sel_output_mux_14 = 59 ; 
							sel_output_mux_15 = 63 ; 
							sel_output_mux_16 = 67 ; 
							sel_output_mux_17 = 71 ; 
							sel_output_mux_18 = 75 ; 
							sel_output_mux_19 = 79 ; 
							sel_output_mux_20 = 83 ; 
							sel_output_mux_21 = 87 ; 
							sel_output_mux_22 = 91 ; 
							sel_output_mux_23 = 95 ; 
							sel_output_mux_24 = 99 ; 
							sel_output_mux_25 = 103 ; 
							sel_output_mux_26 = 107 ; 
							sel_output_mux_27 = 111 ; 
							sel_output_mux_28 = 115 ; 
							sel_output_mux_29 = 119 ; 
							sel_output_mux_30 = 123 ; 
							sel_output_mux_31 = 127 ;

							ROM_addr = 5'b00101;

					  end
			    default: begin 
							ROM_addr = 5'b00000;

							state_count_reset = 1'b0;
							write_address = 2'b00 ;
							sel_output_mux_0 = 7'b0000000 ; 
							sel_output_mux_1 = 7'b0000000 ; 
							sel_output_mux_2 = 7'b0000000 ; 
			 				sel_output_mux_3 = 7'b0000000 ; 
							sel_output_mux_4 = 7'b0000000 ; 
			  				sel_output_mux_5 = 7'b0000000 ; 
			  				sel_output_mux_6 = 7'b0000000 ; 
			  				sel_output_mux_7 = 7'b0000000 ; 
			  				sel_output_mux_8 = 7'b0000000 ; 
			  				sel_output_mux_9 = 7'b0000000 ; 
			  				sel_output_mux_10 = 7'b0000000 ; 
			  				sel_output_mux_11 = 7'b0000000 ; 
			  				sel_output_mux_12 = 7'b0000000 ; 
			  				sel_output_mux_13 = 7'b0000000 ; 
			  				sel_output_mux_14 = 7'b0000000 ; 
			  				sel_output_mux_15 = 7'b0000000 ; 
			  				sel_output_mux_16 = 7'b0000000 ; 
			  				sel_output_mux_17 = 7'b0000000 ; 
			  				sel_output_mux_18 = 7'b0000000 ; 
			  				sel_output_mux_19 = 7'b0000000 ; 
			  				sel_output_mux_20 = 7'b0000000 ; 
			  				sel_output_mux_21 = 7'b0000000 ; 
			  				sel_output_mux_22 = 7'b0000000 ; 
			  				sel_output_mux_23 = 7'b0000000 ; 
			  				sel_output_mux_24 = 7'b0000000 ; 
			  				sel_output_mux_25 = 7'b0000000 ; 
			  				sel_output_mux_26 = 7'b0000000 ; 
			  				sel_output_mux_27 = 7'b0000000 ; 
			  				sel_output_mux_28 = 7'b0000000 ; 
			  				sel_output_mux_29 = 7'b0000000 ; 
			  				sel_output_mux_30 = 7'b0000000 ; 
			  				sel_output_mux_31 = 7'b0000000 ;
						end
			  endcase
			  // Enable the writing operation //
			  mem_write_enable = 32'b1111_1111_1111_1111_1111_1111_1111_1111 ;
			  
			  /* Enable the reading operation early (one clock cycle)*/
			  if (next_state == PASS2)
			  begin
				reg_en = 'h1111_1111_1111_1111_1111_1111_1111_1111 ;
				read_address = 2'b01 ;
				
			  end 
			  else
			  begin
				reg_en = 0 ;
				read_address = 0 ;
			  end
			  
          end
	PASS2:begin
			  case(state_count)
			    2'b00: begin 					
							reg_en = 'h2222_2222_2222_2222_2222_2222_2222_2222 ;
							state_count_reset = 1'b1;
							read_address = 2'b10 ;
							ROM_addr = 5'b00110;
						end
				2'b01: begin
							reg_en = 'h4444_4444_4444_4444_4444_4444_4444_4444 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b00111;
						end
				2'b10: begin
							reg_en = 'h8888_8888_8888_8888_8888_8888_8888_8888 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b00111;
						end
				2'b11: begin
							reg_en = 0 ;
							state_count_reset = 1'b0;
							read_address = 2'b11 ;
							ROM_addr = 5'b00111;
					  end
			    default: begin 
							reg_en = 'b0 ; 
							state_count_reset = 1'b0;
							read_address = 'b0 ;
							ROM_addr = 5'b00000;
						end
			  endcase
			  correct = 'b0 ;
			  sel_mux_2_1 = 1'b1 ;
			  sel_output_4x1 = 0 ;
			  sel_output_mux_0 = 7'b0000000 ; 
			  sel_output_mux_1 = 7'b0000000 ; 
			  sel_output_mux_2 = 7'b0000000 ; 
			  sel_output_mux_3 = 7'b0000000 ; 
			  sel_output_mux_4 = 7'b0000000 ; 
			  sel_output_mux_5 = 7'b0000000 ; 
			  sel_output_mux_6 = 7'b0000000 ; 
			  sel_output_mux_7 = 7'b0000000 ; 
			  sel_output_mux_8 = 7'b0000000 ; 
			  sel_output_mux_9 = 7'b0000000 ; 
			  sel_output_mux_10 = 7'b0000000 ; 
			  sel_output_mux_11 = 7'b0000000 ; 
			  sel_output_mux_12 = 7'b0000000 ; 
			  sel_output_mux_13 = 7'b0000000 ; 
			  sel_output_mux_14 = 7'b0000000 ; 
			  sel_output_mux_15 = 7'b0000000 ; 
			  sel_output_mux_16 = 7'b0000000 ; 
			  sel_output_mux_17 = 7'b0000000 ; 
			  sel_output_mux_18 = 7'b0000000 ; 
			  sel_output_mux_19 = 7'b0000000 ; 
			  sel_output_mux_20 = 7'b0000000 ; 
			  sel_output_mux_21 = 7'b0000000 ; 
			  sel_output_mux_22 = 7'b0000000 ; 
			  sel_output_mux_23 = 7'b0000000 ; 
			  sel_output_mux_24 = 7'b0000000 ; 
			  sel_output_mux_25 = 7'b0000000 ; 
			  sel_output_mux_26 = 7'b0000000 ; 
			  sel_output_mux_27 = 7'b0000000 ; 
			  sel_output_mux_28 = 7'b0000000 ; 
			  sel_output_mux_29 = 7'b0000000 ; 
			  sel_output_mux_30 = 7'b0000000 ; 
			  sel_output_mux_31 = 7'b0000000 ;
			  write_address = 2'b00 ;
			  // Disable the writing operation //
			  mem_write_enable = 32'b0000_0000_0000_0000_0000_0000_0000_0000 ;
          end
	PASS2W:begin
			correct = 'b0 ;
			sel_mux_2_1 = 1'b1 ;
			sel_output_4x1 = 0 ;
			case(state_count)
			    2'b00: begin 
							state_count_reset = 1'b1;
							write_address = 2'b00 ;
							sel_output_mux_0 = 0 ; 
							sel_output_mux_1 = 1 ;
							sel_output_mux_2 = 8 ; 
							sel_output_mux_3 = 9 ;
							sel_output_mux_4 = 16 ; 
							sel_output_mux_5 = 17 ;
							sel_output_mux_6 = 24 ; 
							sel_output_mux_7 = 25 ;
							sel_output_mux_8 = 32 ; 
							sel_output_mux_9 = 33 ;
							sel_output_mux_10 = 40 ; 
							sel_output_mux_11 = 41 ;
							sel_output_mux_12 = 48 ; 
							sel_output_mux_13 = 49 ;
							sel_output_mux_14 = 56 ; 
							sel_output_mux_15 = 57 ;
							sel_output_mux_16 = 64 ; 
							sel_output_mux_17 = 65 ;
							sel_output_mux_18 = 72 ; 
							sel_output_mux_19 = 73 ;
							sel_output_mux_20 = 80 ; 
							sel_output_mux_21 = 81 ;
							sel_output_mux_22 = 88 ; 
							sel_output_mux_23 = 89 ;
							sel_output_mux_24 = 96 ; 
							sel_output_mux_25 = 97 ;
							sel_output_mux_26 = 104 ; 
							sel_output_mux_27 = 105 ;
							sel_output_mux_28 = 112 ; 
							sel_output_mux_29 = 113 ;
							sel_output_mux_30 = 120 ; 
							sel_output_mux_31 = 121 ;
							ROM_addr = 5'b00000;
						end
				2'b01: begin
							state_count_reset = 1'b1;
							write_address = 2'b01 ;
							sel_output_mux_0 = 4 ; 
							sel_output_mux_1 = 5 ;
							sel_output_mux_2 = 12 ; 
							sel_output_mux_3 = 13 ;
							sel_output_mux_4 = 20 ; 
							sel_output_mux_5 = 21 ;
							sel_output_mux_6 = 28 ; 
							sel_output_mux_7 = 29 ;
							sel_output_mux_8 = 36 ; 
							sel_output_mux_9 = 37 ;
							sel_output_mux_10 = 44 ; 
							sel_output_mux_11 = 45 ;
							sel_output_mux_12 = 52 ; 
							sel_output_mux_13 = 53 ;
							sel_output_mux_14 = 60 ; 
							sel_output_mux_15 = 61 ;
							sel_output_mux_16 = 68 ; 
							sel_output_mux_17 = 69 ;
							sel_output_mux_18 = 76 ; 
							sel_output_mux_19 = 77 ;
							sel_output_mux_20 = 84 ; 
							sel_output_mux_21 = 85 ;
							sel_output_mux_22 = 92 ; 
							sel_output_mux_23 = 93 ;
							sel_output_mux_24 = 100 ; 
							sel_output_mux_25 = 101 ;
							sel_output_mux_26 = 108 ; 
							sel_output_mux_27 = 109 ;
							sel_output_mux_28 = 116 ; 
							sel_output_mux_29 = 117 ;
							sel_output_mux_30 = 124 ; 
							sel_output_mux_31 = 125 ;
							ROM_addr = 5'b00000;							
						end
				2'b10: begin
							state_count_reset = 1'b1;
							write_address = 2'b10 ;
							sel_output_mux_0 = 2 ; 
							sel_output_mux_1 = 3 ;
							sel_output_mux_2 = 10 ; 
							sel_output_mux_3 = 11 ;
							sel_output_mux_4 = 18 ; 
							sel_output_mux_5 = 19 ;
							sel_output_mux_6 = 26 ; 
							sel_output_mux_7 = 27 ;
							sel_output_mux_8 = 34 ; 
							sel_output_mux_9 = 35 ;
							sel_output_mux_10 = 42 ; 
							sel_output_mux_11 = 43 ;
							sel_output_mux_12 = 50 ; 
							sel_output_mux_13 = 51 ;
							sel_output_mux_14 = 58 ; 
							sel_output_mux_15 = 59 ;
							sel_output_mux_16 = 66 ; 
							sel_output_mux_17 = 67 ;
							sel_output_mux_18 = 74 ; 
							sel_output_mux_19 = 75 ;
							sel_output_mux_20 = 82 ; 
							sel_output_mux_21 = 83 ;
							sel_output_mux_22 = 90 ; 
							sel_output_mux_23 = 91 ;
							sel_output_mux_24 = 98 ; 
							sel_output_mux_25 = 99 ;
							sel_output_mux_26 = 106 ; 
							sel_output_mux_27 = 107 ;
							sel_output_mux_28 = 114 ; 
							sel_output_mux_29 = 115 ;
							sel_output_mux_30 = 122 ; 
							sel_output_mux_31 = 123 ; 	
							ROM_addr = 5'b01000;						
						end
				2'b11: begin
							state_count_reset = 1'b0;
							write_address = 2'b11 ;
							sel_output_mux_0 = 6 ; 
							sel_output_mux_1 = 7 ;
							sel_output_mux_2 = 14 ; 
							sel_output_mux_3 = 15 ;
							sel_output_mux_4 = 22 ; 
							sel_output_mux_5 = 23 ;
							sel_output_mux_6 = 30 ; 
							sel_output_mux_7 = 31 ;
							sel_output_mux_8 = 38 ; 
							sel_output_mux_9 = 39 ;
							sel_output_mux_10 = 46 ; 
							sel_output_mux_11 = 47 ;
							sel_output_mux_12 = 54 ; 
							sel_output_mux_13 = 55 ;
							sel_output_mux_14 = 62 ; 
							sel_output_mux_15 = 63 ;
							sel_output_mux_16 = 70 ; 
							sel_output_mux_17 = 71 ;
							sel_output_mux_18 = 78 ; 
							sel_output_mux_19 = 79 ;
							sel_output_mux_20 = 86 ; 
							sel_output_mux_21 = 87 ;
							sel_output_mux_22 = 94 ; 
							sel_output_mux_23 = 95 ;
							sel_output_mux_24 = 102 ; 
							sel_output_mux_25 = 103 ;
							sel_output_mux_26 = 110 ; 
							sel_output_mux_27 = 111 ;
							sel_output_mux_28 = 118 ; 
							sel_output_mux_29 = 119 ;
							sel_output_mux_30 = 126 ; 
							sel_output_mux_31 = 127 ;
							ROM_addr = 5'b01001;
					  end
			    default: begin 
							ROM_addr = 5'b00000;
							state_count_reset = 1'b0;
							write_address = 2'b00 ;
							sel_output_mux_0 = 7'b0000000 ; 
							sel_output_mux_1 = 7'b0000000 ; 
							sel_output_mux_2 = 7'b0000000 ; 
			 				sel_output_mux_3 = 7'b0000000 ; 
							sel_output_mux_4 = 7'b0000000 ; 
			  				sel_output_mux_5 = 7'b0000000 ; 
			  				sel_output_mux_6 = 7'b0000000 ; 
			  				sel_output_mux_7 = 7'b0000000 ; 
			  				sel_output_mux_8 = 7'b0000000 ; 
			  				sel_output_mux_9 = 7'b0000000 ; 
			  				sel_output_mux_10 = 7'b0000000 ; 
			  				sel_output_mux_11 = 7'b0000000 ; 
			  				sel_output_mux_12 = 7'b0000000 ; 
			  				sel_output_mux_13 = 7'b0000000 ; 
			  				sel_output_mux_14 = 7'b0000000 ; 
			  				sel_output_mux_15 = 7'b0000000 ; 
			  				sel_output_mux_16 = 7'b0000000 ; 
			  				sel_output_mux_17 = 7'b0000000 ; 
			  				sel_output_mux_18 = 7'b0000000 ; 
			  				sel_output_mux_19 = 7'b0000000 ; 
			  				sel_output_mux_20 = 7'b0000000 ; 
			  				sel_output_mux_21 = 7'b0000000 ; 
			  				sel_output_mux_22 = 7'b0000000 ; 
			  				sel_output_mux_23 = 7'b0000000 ; 
			  				sel_output_mux_24 = 7'b0000000 ; 
			  				sel_output_mux_25 = 7'b0000000 ; 
			  				sel_output_mux_26 = 7'b0000000 ; 
			  				sel_output_mux_27 = 7'b0000000 ; 
			  				sel_output_mux_28 = 7'b0000000 ; 
			  				sel_output_mux_29 = 7'b0000000 ; 
			  				sel_output_mux_30 = 7'b0000000 ; 
			  				sel_output_mux_31 = 7'b0000000 ;
						end
			  endcase
			  // Enable the writing operation //
			  mem_write_enable = 32'b1111_1111_1111_1111_1111_1111_1111_1111 ;
			  
			  /* Enable the reading operation early (one clock cycle)*/
			  if (next_state == PASS3)
			  begin
				reg_en = 'h1111_1111_1111_1111_1111_1111_1111_1111 ;
				read_address = 2'b01 ;
			  end 
			  else
			  begin
				reg_en = 0 ;
				read_address = 0 ;
			  end
			  
          end
	PASS3:begin
			  case(state_count)
			    2'b00: begin 
							reg_en = 'h2222_2222_2222_2222_2222_2222_2222_2222 ;
							state_count_reset = 1'b1;
							read_address = 2'b10 ;
							ROM_addr = 5'b01010;
							
						end
				2'b01: begin
							reg_en = 'h4444_4444_4444_4444_4444_4444_4444_4444 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b01011;
						end
				2'b10: begin
							reg_en = 'h8888_8888_8888_8888_8888_8888_8888_8888 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b01011;
						end
				2'b11: begin
							reg_en = 0 ;
							state_count_reset = 1'b0;
							read_address = 2'b11 ;
							ROM_addr = 5'b01011;
					  end
			    default: begin 
							reg_en = 'b0 ; 
							state_count_reset = 1'b0;
							read_address = 'b0 ;
							ROM_addr = 5'b00000;
						end
			  endcase
			  correct = 'b0 ;
			  sel_mux_2_1 = 1'b1 ;
			  sel_output_4x1 = 0 ;
			  sel_output_mux_0 = 7'b0000000 ; 
			  sel_output_mux_1 = 7'b0000000 ; 
			  sel_output_mux_2 = 7'b0000000 ; 
			  sel_output_mux_3 = 7'b0000000 ; 
			  sel_output_mux_4 = 7'b0000000 ; 
			  sel_output_mux_5 = 7'b0000000 ; 
			  sel_output_mux_6 = 7'b0000000 ; 
			  sel_output_mux_7 = 7'b0000000 ; 
			  sel_output_mux_8 = 7'b0000000 ; 
			  sel_output_mux_9 = 7'b0000000 ; 
			  sel_output_mux_10 = 7'b0000000 ; 
			  sel_output_mux_11 = 7'b0000000 ; 
			  sel_output_mux_12 = 7'b0000000 ; 
			  sel_output_mux_13 = 7'b0000000 ; 
			  sel_output_mux_14 = 7'b0000000 ; 
			  sel_output_mux_15 = 7'b0000000 ; 
			  sel_output_mux_16 = 7'b0000000 ; 
			  sel_output_mux_17 = 7'b0000000 ; 
			  sel_output_mux_18 = 7'b0000000 ; 
			  sel_output_mux_19 = 7'b0000000 ; 
			  sel_output_mux_20 = 7'b0000000 ; 
			  sel_output_mux_21 = 7'b0000000 ; 
			  sel_output_mux_22 = 7'b0000000 ; 
			  sel_output_mux_23 = 7'b0000000 ; 
			  sel_output_mux_24 = 7'b0000000 ; 
			  sel_output_mux_25 = 7'b0000000 ; 
			  sel_output_mux_26 = 7'b0000000 ; 
			  sel_output_mux_27 = 7'b0000000 ; 
			  sel_output_mux_28 = 7'b0000000 ; 
			  sel_output_mux_29 = 7'b0000000 ; 
			  sel_output_mux_30 = 7'b0000000 ; 
			  sel_output_mux_31 = 7'b0000000 ;
			  write_address = 2'b00 ;
			  // Disable the writing operation //
			  mem_write_enable = 32'b0000_0000_0000_0000_0000_0000_0000_0000 ;
          end
	PASS3W:begin
			correct = 'b0 ;
			sel_mux_2_1 = 1'b1 ;
			sel_output_4x1 = 0 ;
			case(state_count)
			    2'b00: begin 
							state_count_reset = 1'b1;
							write_address = 2'b00 ;
							sel_output_mux_0 = 0 ; 
							sel_output_mux_1 = 4 ;
							sel_output_mux_2 = 1 ;
							sel_output_mux_3 = 5 ;
							sel_output_mux_4 = 16 ;
							sel_output_mux_5 = 20 ;
							sel_output_mux_6 = 17 ;
							sel_output_mux_7 = 21 ;
							sel_output_mux_8 = 32 ; 
							sel_output_mux_9 = 36 ;
							sel_output_mux_10 = 33 ;
							sel_output_mux_11 = 37 ;
							sel_output_mux_12 = 48 ;
							sel_output_mux_13 = 52 ;
							sel_output_mux_14 = 49 ;
							sel_output_mux_15 = 53 ;
							sel_output_mux_16 = 64 ; 
							sel_output_mux_17 = 68 ;
							sel_output_mux_18 = 65 ;
							sel_output_mux_19 = 69 ;
							sel_output_mux_20 = 80 ;
							sel_output_mux_21 = 84 ;
							sel_output_mux_22 = 81 ;
							sel_output_mux_23 = 85 ;
							sel_output_mux_24 = 96 ; 
							sel_output_mux_25 = 100 ;
							sel_output_mux_26 = 97 ;
							sel_output_mux_27 = 101 ;
							sel_output_mux_28 = 112 ;
							sel_output_mux_29 = 116 ;
							sel_output_mux_30 = 113 ;
							sel_output_mux_31 = 117 ;
							ROM_addr = 5'b00000;
						end
				2'b01: begin
							state_count_reset = 1'b1;
							write_address = 2'b01 ;
							sel_output_mux_0 = 8 ; 
							sel_output_mux_1 = 12 ;
							sel_output_mux_2 = 9;
							sel_output_mux_3 = 13 ;
							sel_output_mux_4 = 24 ;
							sel_output_mux_5 = 28 ;
							sel_output_mux_6 = 25 ;
							sel_output_mux_7 = 29 ;
							sel_output_mux_8 = 40 ; 
							sel_output_mux_9 = 44 ;
							sel_output_mux_10 = 41 ;
							sel_output_mux_11 = 45 ;
							sel_output_mux_12 = 56 ;
							sel_output_mux_13 = 60 ;
							sel_output_mux_14 = 57 ;
							sel_output_mux_15 = 61 ;
							sel_output_mux_16 = 72 ; 
							sel_output_mux_17 = 76 ;
							sel_output_mux_18 = 73 ;
							sel_output_mux_19 = 77 ;
							sel_output_mux_20 = 88 ;
							sel_output_mux_21 = 92 ;
							sel_output_mux_22 = 89 ;
							sel_output_mux_23 = 93 ;
							sel_output_mux_24 = 104 ; 
							sel_output_mux_25 = 108 ;
							sel_output_mux_26 = 105 ;
							sel_output_mux_27 = 109 ;
							sel_output_mux_28 = 120 ;
							sel_output_mux_29 = 124 ;
							sel_output_mux_30 = 121 ;
							sel_output_mux_31 = 125 ;	
							ROM_addr = 5'b00000;						
						end
				2'b10: begin
							state_count_reset = 1'b1;
							write_address = 2'b10 ;
							sel_output_mux_0 = 2 ; 
							sel_output_mux_1 = 6 ;
							sel_output_mux_2 = 3 ;
							sel_output_mux_3 = 7 ;
							sel_output_mux_4 = 18 ;
							sel_output_mux_5 = 22 ;
							sel_output_mux_6 = 19 ;
							sel_output_mux_7 = 23 ;
							sel_output_mux_8 = 34 ; 
							sel_output_mux_9 = 38 ;
							sel_output_mux_10 = 35 ;
							sel_output_mux_11 = 39 ;
							sel_output_mux_12 = 50 ;
							sel_output_mux_13 = 54 ;
							sel_output_mux_14 = 51 ;
							sel_output_mux_15 = 55 ;
							sel_output_mux_16 = 66 ; 
							sel_output_mux_17 = 70 ;
							sel_output_mux_18 = 67 ;
							sel_output_mux_19 = 71 ;
							sel_output_mux_20 = 82 ;
							sel_output_mux_21 = 86 ;
							sel_output_mux_22 = 83 ;
							sel_output_mux_23 = 87 ;
							sel_output_mux_24 = 98 ; 
							sel_output_mux_25 = 102 ;
							sel_output_mux_26 = 99 ;
							sel_output_mux_27 = 103 ;
							sel_output_mux_28 = 114 ;
							sel_output_mux_29 = 118 ;
							sel_output_mux_30 = 115 ;
							sel_output_mux_31 = 119 ;
							ROM_addr = 5'b01100; 							
						end
				2'b11: begin
							state_count_reset = 1'b0;
							write_address = 2'b11 ;
							sel_output_mux_0 = 10 ; 
							sel_output_mux_1 = 14 ;
							sel_output_mux_2 = 11 ;
							sel_output_mux_3 = 15 ;
							sel_output_mux_4 = 26 ;
							sel_output_mux_5 = 30 ;
							sel_output_mux_6 = 27 ;
							sel_output_mux_7 = 31 ;
							sel_output_mux_8 = 42 ; 
							sel_output_mux_9 = 46 ;
							sel_output_mux_10 = 43 ;
							sel_output_mux_11 = 47 ;
							sel_output_mux_12 = 58 ;
							sel_output_mux_13 = 62 ;
							sel_output_mux_14 = 59 ;
							sel_output_mux_15 = 63 ;
							sel_output_mux_16 = 74 ; 
							sel_output_mux_17 = 78 ;
							sel_output_mux_18 = 75 ;
							sel_output_mux_19 = 79 ;
							sel_output_mux_20 = 90 ;
							sel_output_mux_21 = 94 ;
							sel_output_mux_22 = 91 ;
							sel_output_mux_23 = 95 ;
							sel_output_mux_24 = 106 ; 
							sel_output_mux_25 = 110 ;
							sel_output_mux_26 = 107 ;
							sel_output_mux_27 = 111 ;
							sel_output_mux_28 = 122 ;
							sel_output_mux_29 = 126 ;
							sel_output_mux_30 = 123 ;
							sel_output_mux_31 = 127 ;
							ROM_addr = 5'b01101;

					  end
			    default: begin 
							ROM_addr = 5'b00000;	
							state_count_reset = 1'b0;
							write_address = 2'b00 ;
							sel_output_mux_0 = 7'b0000000 ; 
							sel_output_mux_1 = 7'b0000000 ; 
							sel_output_mux_2 = 7'b0000000 ; 
			 				sel_output_mux_3 = 7'b0000000 ; 
							sel_output_mux_4 = 7'b0000000 ; 
			  				sel_output_mux_5 = 7'b0000000 ; 
			  				sel_output_mux_6 = 7'b0000000 ; 
			  				sel_output_mux_7 = 7'b0000000 ; 
			  				sel_output_mux_8 = 7'b0000000 ; 
			  				sel_output_mux_9 = 7'b0000000 ; 
			  				sel_output_mux_10 = 7'b0000000 ; 
			  				sel_output_mux_11 = 7'b0000000 ; 
			  				sel_output_mux_12 = 7'b0000000 ; 
			  				sel_output_mux_13 = 7'b0000000 ; 
			  				sel_output_mux_14 = 7'b0000000 ; 
			  				sel_output_mux_15 = 7'b0000000 ; 
			  				sel_output_mux_16 = 7'b0000000 ; 
			  				sel_output_mux_17 = 7'b0000000 ; 
			  				sel_output_mux_18 = 7'b0000000 ; 
			  				sel_output_mux_19 = 7'b0000000 ; 
			  				sel_output_mux_20 = 7'b0000000 ; 
			  				sel_output_mux_21 = 7'b0000000 ; 
			  				sel_output_mux_22 = 7'b0000000 ; 
			  				sel_output_mux_23 = 7'b0000000 ; 
			  				sel_output_mux_24 = 7'b0000000 ; 
			  				sel_output_mux_25 = 7'b0000000 ; 
			  				sel_output_mux_26 = 7'b0000000 ; 
			  				sel_output_mux_27 = 7'b0000000 ; 
			  				sel_output_mux_28 = 7'b0000000 ; 
			  				sel_output_mux_29 = 7'b0000000 ; 
			  				sel_output_mux_30 = 7'b0000000 ; 
			  				sel_output_mux_31 = 7'b0000000 ;
						end
			  endcase
			  // Enable the writing operation //
			  mem_write_enable = 32'b1111_1111_1111_1111_1111_1111_1111_1111 ;
			  
			  /* Enable the reading operation early (one clock cycle)*/
			  if (next_state == PASS4)
			  begin
				reg_en = 'h1111_1111_1111_1111_1111_1111_1111_1111 ;
				read_address = 2'b01 ;
			  end 
			  else
			  begin
				reg_en = 0 ;
				read_address = 0 ;
			  end
			  
          end
	PASS4:begin
			  case(state_count)
			    2'b00: begin 
							
							reg_en = 'h2222_2222_2222_2222_2222_2222_2222_2222 ;
							state_count_reset = 1'b1;
							read_address = 2'b10 ;
							ROM_addr = 5'b01110;
						end
				2'b01: begin
							reg_en = 'h4444_4444_4444_4444_4444_4444_4444_4444 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b01111;
						end
				2'b10: begin
							reg_en = 'h8888_8888_8888_8888_8888_8888_8888_8888 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b01111;
							
						end
				2'b11: begin
							reg_en = 0 ;
							state_count_reset = 1'b0;
							read_address = 2'b11 ;
							ROM_addr = 5'b01111;
					  end
			    default: begin 
							ROM_addr = 5'b00000;
							reg_en = 'b0 ; 
							state_count_reset = 1'b0;
							read_address = 'b0 ;
							ROM_addr = 5'b00000;
						end
			  endcase
			  correct = 'b0 ;
			  sel_mux_2_1 = 1'b1 ;
			  sel_output_4x1 = 0 ;
			  sel_output_mux_0 = 7'b0000000 ; 
			  sel_output_mux_1 = 7'b0000000 ; 
			  sel_output_mux_2 = 7'b0000000 ; 
			  sel_output_mux_3 = 7'b0000000 ; 
			  sel_output_mux_4 = 7'b0000000 ; 
			  sel_output_mux_5 = 7'b0000000 ; 
			  sel_output_mux_6 = 7'b0000000 ; 
			  sel_output_mux_7 = 7'b0000000 ; 
			  sel_output_mux_8 = 7'b0000000 ; 
			  sel_output_mux_9 = 7'b0000000 ; 
			  sel_output_mux_10 = 7'b0000000 ; 
			  sel_output_mux_11 = 7'b0000000 ; 
			  sel_output_mux_12 = 7'b0000000 ; 
			  sel_output_mux_13 = 7'b0000000 ; 
			  sel_output_mux_14 = 7'b0000000 ; 
			  sel_output_mux_15 = 7'b0000000 ; 
			  sel_output_mux_16 = 7'b0000000 ; 
			  sel_output_mux_17 = 7'b0000000 ; 
			  sel_output_mux_18 = 7'b0000000 ; 
			  sel_output_mux_19 = 7'b0000000 ; 
			  sel_output_mux_20 = 7'b0000000 ; 
			  sel_output_mux_21 = 7'b0000000 ; 
			  sel_output_mux_22 = 7'b0000000 ; 
			  sel_output_mux_23 = 7'b0000000 ; 
			  sel_output_mux_24 = 7'b0000000 ; 
			  sel_output_mux_25 = 7'b0000000 ; 
			  sel_output_mux_26 = 7'b0000000 ; 
			  sel_output_mux_27 = 7'b0000000 ; 
			  sel_output_mux_28 = 7'b0000000 ; 
			  sel_output_mux_29 = 7'b0000000 ; 
			  sel_output_mux_30 = 7'b0000000 ; 
			  sel_output_mux_31 = 7'b0000000 ;
			  write_address = 2'b00 ;
			  // Disable the writing operation //
			  mem_write_enable = 32'b0000_0000_0000_0000_0000_0000_0000_0000 ;
          end
	PASS4W:begin
			correct = 'b0 ;
			sel_mux_2_1 = 1'b1 ;
			sel_output_4x1 = 0 ;
			case(state_count)
			    2'b00: begin 
							state_count_reset = 1'b1;
							write_address = 2'b00 ;
							sel_output_mux_0 = 0 ; 
							sel_output_mux_1 = 4 ;
							sel_output_mux_2 = 8 ;
							sel_output_mux_3 = 12 ;
							sel_output_mux_4 = 1 ;
							sel_output_mux_5 = 5 ;
							sel_output_mux_6 = 9 ;
							sel_output_mux_7 = 13 ;
							sel_output_mux_8 = 32 ; 
							sel_output_mux_9 = 36 ;
							sel_output_mux_10 = 40 ;
							sel_output_mux_11 = 44 ;
							sel_output_mux_12 = 33 ;
							sel_output_mux_13 = 37 ;
							sel_output_mux_14 = 41 ;
							sel_output_mux_15 = 45 ;
							sel_output_mux_16 = 64 ; 
							sel_output_mux_17 = 68 ;
							sel_output_mux_18 = 72 ;
							sel_output_mux_19 = 76 ;
							sel_output_mux_20 = 65 ;
							sel_output_mux_21 = 69 ;
							sel_output_mux_22 = 73 ;
							sel_output_mux_23 = 77 ;
							sel_output_mux_24 = 96 ; 
							sel_output_mux_25 = 100 ;
							sel_output_mux_26 = 104 ;
							sel_output_mux_27 = 108 ;
							sel_output_mux_28 = 97 ;
							sel_output_mux_29 = 101 ;
							sel_output_mux_30 = 105 ;
							sel_output_mux_31 = 109 ;
							ROM_addr = 5'b00000;
						end
				2'b01: begin
							state_count_reset = 1'b1;
							write_address = 2'b01 ;
							sel_output_mux_0 = 16 ; 
							sel_output_mux_1 = 20 ;
							sel_output_mux_2 = 24 ;
							sel_output_mux_3 = 28 ;
							sel_output_mux_4 = 17 ;
							sel_output_mux_5 = 21 ;
							sel_output_mux_6 = 25 ;
							sel_output_mux_7 = 29 ;
							sel_output_mux_8 = 48 ; 
							sel_output_mux_9 = 52 ;
							sel_output_mux_10 = 56 ;
							sel_output_mux_11 = 60 ;
							sel_output_mux_12 = 49 ;
							sel_output_mux_13 = 53 ;
							sel_output_mux_14 = 57 ;
							sel_output_mux_15 = 61 ;
							sel_output_mux_16 = 80 ; 
							sel_output_mux_17 = 84 ;
							sel_output_mux_18 = 88 ;
							sel_output_mux_19 = 92 ;
							sel_output_mux_20 = 81 ;
							sel_output_mux_21 = 85 ;
							sel_output_mux_22 = 89 ;
							sel_output_mux_23 = 93 ;
							sel_output_mux_24 = 112 ; 
							sel_output_mux_25 = 116 ;
							sel_output_mux_26 = 120 ;
							sel_output_mux_27 = 124 ;
							sel_output_mux_28 = 113 ;
							sel_output_mux_29 = 117 ;
							sel_output_mux_30 = 121 ;
							sel_output_mux_31 = 125 ;	
							ROM_addr = 5'b00000;						
						end
				2'b10: begin
							state_count_reset = 1'b1;
							write_address = 2'b10 ;
							sel_output_mux_0 = 2 ; 
							sel_output_mux_1 = 6 ;
							sel_output_mux_2 = 10 ;
							sel_output_mux_3 = 14;
							sel_output_mux_4 = 3 ;
							sel_output_mux_5 = 7 ;
							sel_output_mux_6 = 11 ;
							sel_output_mux_7 = 15 ;
							sel_output_mux_8 = 34 ; 
							sel_output_mux_9 = 38 ;
							sel_output_mux_10 = 42 ;
							sel_output_mux_11 = 46 ;
							sel_output_mux_12 = 35 ;
							sel_output_mux_13 = 39 ;
							sel_output_mux_14 = 43 ;
							sel_output_mux_15 = 47 ;
							sel_output_mux_16 = 66 ; 
							sel_output_mux_17 = 70 ;
							sel_output_mux_18 = 74 ;
							sel_output_mux_19 = 78 ;
							sel_output_mux_20 = 67 ;
							sel_output_mux_21 = 71 ;
							sel_output_mux_22 = 75 ;
							sel_output_mux_23 = 79 ;
							sel_output_mux_24 = 98 ; 
							sel_output_mux_25 = 102 ;
							sel_output_mux_26 = 106 ;
							sel_output_mux_27 = 110 ;
							sel_output_mux_28 = 99 ;
							sel_output_mux_29 = 103 ;
							sel_output_mux_30 = 107 ;
							sel_output_mux_31 = 111 ; 
							ROM_addr = 5'b10000;							
						end
				2'b11: begin
							state_count_reset = 1'b0;
							write_address = 2'b11 ;
							sel_output_mux_0 = 18 ; 
							sel_output_mux_1 = 22 ;
							sel_output_mux_2 = 26 ;
							sel_output_mux_3 = 30 ;
							sel_output_mux_4 = 19 ;
							sel_output_mux_5 = 23 ;
							sel_output_mux_6 = 27 ;
							sel_output_mux_7 = 31 ;
							sel_output_mux_8 = 50 ; 
							sel_output_mux_9 = 54 ;
							sel_output_mux_10 = 58 ;
							sel_output_mux_11 = 62 ;
							sel_output_mux_12 = 51 ;
							sel_output_mux_13 = 55 ;
							sel_output_mux_14 = 59 ;
							sel_output_mux_15 = 63 ;
							sel_output_mux_16 = 82 ; 
							sel_output_mux_17 = 86 ;
							sel_output_mux_18 = 90 ;
							sel_output_mux_19 = 94 ;
							sel_output_mux_20 = 83 ;
							sel_output_mux_21 = 87 ;
							sel_output_mux_22 = 91 ;
							sel_output_mux_23 = 95 ;
							sel_output_mux_24 = 114 ; 
							sel_output_mux_25 = 118 ;
							sel_output_mux_26 = 122 ;
							sel_output_mux_27 = 126 ;
							sel_output_mux_28 = 115 ;
							sel_output_mux_29 = 119 ;
							sel_output_mux_30 = 123 ;
							sel_output_mux_31 = 127 ;
							ROM_addr = 5'b10001;
					  end
			    default: begin 
							ROM_addr = 5'b00000;
							state_count_reset = 1'b0;
							write_address = 2'b00 ;
							sel_output_mux_0 = 7'b0000000 ; 
							sel_output_mux_1 = 7'b0000000 ; 
							sel_output_mux_2 = 7'b0000000 ; 
			 				sel_output_mux_3 = 7'b0000000 ; 
							sel_output_mux_4 = 7'b0000000 ; 
			  				sel_output_mux_5 = 7'b0000000 ; 
			  				sel_output_mux_6 = 7'b0000000 ; 
			  				sel_output_mux_7 = 7'b0000000 ; 
			  				sel_output_mux_8 = 7'b0000000 ; 
			  				sel_output_mux_9 = 7'b0000000 ; 
			  				sel_output_mux_10 = 7'b0000000 ; 
			  				sel_output_mux_11 = 7'b0000000 ; 
			  				sel_output_mux_12 = 7'b0000000 ; 
			  				sel_output_mux_13 = 7'b0000000 ; 
			  				sel_output_mux_14 = 7'b0000000 ; 
			  				sel_output_mux_15 = 7'b0000000 ; 
			  				sel_output_mux_16 = 7'b0000000 ; 
			  				sel_output_mux_17 = 7'b0000000 ; 
			  				sel_output_mux_18 = 7'b0000000 ; 
			  				sel_output_mux_19 = 7'b0000000 ; 
			  				sel_output_mux_20 = 7'b0000000 ; 
			  				sel_output_mux_21 = 7'b0000000 ; 
			  				sel_output_mux_22 = 7'b0000000 ; 
			  				sel_output_mux_23 = 7'b0000000 ; 
			  				sel_output_mux_24 = 7'b0000000 ; 
			  				sel_output_mux_25 = 7'b0000000 ; 
			  				sel_output_mux_26 = 7'b0000000 ; 
			  				sel_output_mux_27 = 7'b0000000 ; 
			  				sel_output_mux_28 = 7'b0000000 ; 
			  				sel_output_mux_29 = 7'b0000000 ; 
			  				sel_output_mux_30 = 7'b0000000 ; 
			  				sel_output_mux_31 = 7'b0000000 ;
						end
			  endcase
			  // Enable the writing operation //
			  mem_write_enable = 32'b1111_1111_1111_1111_1111_1111_1111_1111 ;
			  
			  /* Enable the reading operation early (one clock cycle)*/
			  if (next_state == PASS5)
			  begin
				reg_en = 'h1111_1111_1111_1111_1111_1111_1111_1111 ;
				read_address = 2'b01 ;
			  end 
			  else
			  begin
				reg_en = 0 ;
				read_address = 0 ;
			  end
			  
          end
	PASS5:begin
			  case(state_count)
			    2'b00: begin 
							
							reg_en = 'h2222_2222_2222_2222_2222_2222_2222_2222 ;
							state_count_reset = 1'b1;
							read_address = 2'b10 ;
							ROM_addr = 5'b10010;
						end
				2'b01: begin
							reg_en = 'h4444_4444_4444_4444_4444_4444_4444_4444 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b10011;
						end
				2'b10: begin
							reg_en = 'h8888_8888_8888_8888_8888_8888_8888_8888 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b10011;
						end
				2'b11: begin
							reg_en = 0 ;
							state_count_reset = 1'b0;
							read_address = 2'b11 ;
							ROM_addr = 5'b10011;
					  end
			    default: begin 
							reg_en = 'b0 ; 
							state_count_reset = 1'b0;
							read_address = 'b0 ;
							ROM_addr = 5'b00000;
						end
			  endcase
			  correct = 'b0 ;
			  sel_mux_2_1 = 1'b1 ;
			  sel_output_4x1 = 0 ;
			  sel_output_mux_0 = 7'b0000000 ; 
			  sel_output_mux_1 = 7'b0000000 ; 
			  sel_output_mux_2 = 7'b0000000 ; 
			  sel_output_mux_3 = 7'b0000000 ; 
			  sel_output_mux_4 = 7'b0000000 ; 
			  sel_output_mux_5 = 7'b0000000 ; 
			  sel_output_mux_6 = 7'b0000000 ; 
			  sel_output_mux_7 = 7'b0000000 ; 
			  sel_output_mux_8 = 7'b0000000 ; 
			  sel_output_mux_9 = 7'b0000000 ; 
			  sel_output_mux_10 = 7'b0000000 ; 
			  sel_output_mux_11 = 7'b0000000 ; 
			  sel_output_mux_12 = 7'b0000000 ; 
			  sel_output_mux_13 = 7'b0000000 ; 
			  sel_output_mux_14 = 7'b0000000 ; 
			  sel_output_mux_15 = 7'b0000000 ; 
			  sel_output_mux_16 = 7'b0000000 ; 
			  sel_output_mux_17 = 7'b0000000 ; 
			  sel_output_mux_18 = 7'b0000000 ; 
			  sel_output_mux_19 = 7'b0000000 ; 
			  sel_output_mux_20 = 7'b0000000 ; 
			  sel_output_mux_21 = 7'b0000000 ; 
			  sel_output_mux_22 = 7'b0000000 ; 
			  sel_output_mux_23 = 7'b0000000 ; 
			  sel_output_mux_24 = 7'b0000000 ; 
			  sel_output_mux_25 = 7'b0000000 ; 
			  sel_output_mux_26 = 7'b0000000 ; 
			  sel_output_mux_27 = 7'b0000000 ; 
			  sel_output_mux_28 = 7'b0000000 ; 
			  sel_output_mux_29 = 7'b0000000 ; 
			  sel_output_mux_30 = 7'b0000000 ; 
			  sel_output_mux_31 = 7'b0000000 ;
			  write_address = 2'b00 ;
			  // Disable the writing operation //
			  mem_write_enable = 32'b0000_0000_0000_0000_0000_0000_0000_0000 ;
          end
	PASS5W:begin
			correct = 'b0 ;
			sel_mux_2_1 = 1'b1 ;
			sel_output_4x1 = 0 ;
			case(state_count)
			    2'b00: begin 
							state_count_reset = 1'b1;
							write_address = 2'b00 ;
							sel_output_mux_0 = 0 ; 
							sel_output_mux_1 = 4 ;
							sel_output_mux_2 = 8 ;
							sel_output_mux_3 = 12 ;
							sel_output_mux_4 = 16 ;
							sel_output_mux_5 = 20 ;
							sel_output_mux_6 = 24 ;
							sel_output_mux_7 = 28 ;
							sel_output_mux_8 = 1 ; 
							sel_output_mux_9 = 5 ;
							sel_output_mux_10 = 9 ;
							sel_output_mux_11 = 13 ;
							sel_output_mux_12 = 17 ;
							sel_output_mux_13 = 21 ;
							sel_output_mux_14 = 25 ;
							sel_output_mux_15 = 29 ;
							sel_output_mux_16 = 64 ; 
							sel_output_mux_17 = 68 ;
							sel_output_mux_18 = 72 ;
							sel_output_mux_19 = 76 ;
							sel_output_mux_20 = 80 ;
							sel_output_mux_21 = 84 ;
							sel_output_mux_22 = 88 ;
							sel_output_mux_23 = 92 ;
							sel_output_mux_24 = 65 ; 
							sel_output_mux_25 = 69 ;
							sel_output_mux_26 = 73 ;
							sel_output_mux_27 = 77 ;
							sel_output_mux_28 = 81 ;
							sel_output_mux_29 = 85 ;
							sel_output_mux_30 = 89 ;
							sel_output_mux_31 = 93 ;
							ROM_addr = 5'b00000;
						end
				2'b01: begin
							state_count_reset = 1'b1;
							write_address = 2'b01 ;
							sel_output_mux_0 = 32 ; 
							sel_output_mux_1 = 36 ;
							sel_output_mux_2 = 40 ;
							sel_output_mux_3 = 44 ;
							sel_output_mux_4 = 48 ;
							sel_output_mux_5 = 52 ;
							sel_output_mux_6 = 56 ;
							sel_output_mux_7 = 60 ;
							sel_output_mux_8 = 33 ; 
							sel_output_mux_9 = 37 ;
							sel_output_mux_10 = 41 ;
							sel_output_mux_11 = 45 ;
							sel_output_mux_12 = 49 ;
							sel_output_mux_13 = 53 ;
							sel_output_mux_14 = 57 ;
							sel_output_mux_15 = 61 ;
							sel_output_mux_16 = 96 ; 
							sel_output_mux_17 = 100 ;
							sel_output_mux_18 = 104 ;
							sel_output_mux_19 = 108 ;
							sel_output_mux_20 = 112 ;
							sel_output_mux_21 = 116 ;
							sel_output_mux_22 = 120 ;
							sel_output_mux_23 = 124 ;
							sel_output_mux_24 = 97 ; 
							sel_output_mux_25 = 101 ;
							sel_output_mux_26 = 105 ;
							sel_output_mux_27 = 109 ;
							sel_output_mux_28 = 113 ;
							sel_output_mux_29 = 117 ;
							sel_output_mux_30 = 121 ;
							sel_output_mux_31 = 125 ;
							ROM_addr = 5'b00000;							
						end
				2'b10: begin
							state_count_reset = 1'b1;
							write_address = 2'b10 ;
							sel_output_mux_0 = 2 ; 
							sel_output_mux_1 = 6 ;
							sel_output_mux_2 = 10 ;
							sel_output_mux_3 = 14;
							sel_output_mux_4 = 18 ;
							sel_output_mux_5 = 22 ;
							sel_output_mux_6 = 26 ;
							sel_output_mux_7 = 30 ;
							sel_output_mux_8 = 3 ; 
							sel_output_mux_9 = 7 ;
							sel_output_mux_10 = 11 ;
							sel_output_mux_11 = 15 ;
							sel_output_mux_12 = 19 ;
							sel_output_mux_13 = 23 ;
							sel_output_mux_14 = 27 ;
							sel_output_mux_15 = 31 ;
							sel_output_mux_16 = 66 ; 
							sel_output_mux_17 = 70 ;
							sel_output_mux_18 = 74 ;
							sel_output_mux_19 = 78 ;
							sel_output_mux_20 = 82 ;
							sel_output_mux_21 = 86 ;
							sel_output_mux_22 = 90 ;
							sel_output_mux_23 = 94 ;
							sel_output_mux_24 = 67 ; 
							sel_output_mux_25 = 71 ;
							sel_output_mux_26 = 75 ;
							sel_output_mux_27 = 79 ;
							sel_output_mux_28 = 83 ;
							sel_output_mux_29 = 87 ;
							sel_output_mux_30 = 91 ;
							sel_output_mux_31 = 95 ;
							ROM_addr = 5'b10100; 							
						end
				2'b11: begin
							state_count_reset = 1'b0;
							write_address = 2'b11 ;
							sel_output_mux_0 = 34 ; 
							sel_output_mux_1 = 38 ;
							sel_output_mux_2 = 42 ;
							sel_output_mux_3 = 46 ;
							sel_output_mux_4 = 50 ;
							sel_output_mux_5 = 54 ;
							sel_output_mux_6 = 58 ;
							sel_output_mux_7 = 62 ;
							sel_output_mux_8 = 35 ; 
							sel_output_mux_9 = 39 ;
							sel_output_mux_10 = 43 ;
							sel_output_mux_11 = 47 ;
							sel_output_mux_12 = 51 ;
							sel_output_mux_13 = 55 ;
							sel_output_mux_14 = 59 ;
							sel_output_mux_15 = 63 ;
							sel_output_mux_16 = 98 ; 
							sel_output_mux_17 = 102 ;
							sel_output_mux_18 = 106 ;
							sel_output_mux_19 = 110 ;
							sel_output_mux_20 = 114 ;
							sel_output_mux_21 = 118 ;
							sel_output_mux_22 = 122 ;
							sel_output_mux_23 = 126 ;
							sel_output_mux_24 = 99 ; 
							sel_output_mux_25 = 103 ;
							sel_output_mux_26 = 107 ;
							sel_output_mux_27 = 111 ;
							sel_output_mux_28 = 115 ;
							sel_output_mux_29 = 119 ;
							sel_output_mux_30 = 123 ;
							sel_output_mux_31 = 127 ;
							ROM_addr = 5'b10101;
					  end
			    default: begin 
							ROM_addr = 5'b00000;
							state_count_reset = 1'b0;
							write_address = 2'b00 ;
							sel_output_mux_0 = 7'b0000000 ; 
							sel_output_mux_1 = 7'b0000000 ; 
							sel_output_mux_2 = 7'b0000000 ; 
			 				sel_output_mux_3 = 7'b0000000 ; 
							sel_output_mux_4 = 7'b0000000 ; 
			  				sel_output_mux_5 = 7'b0000000 ; 
			  				sel_output_mux_6 = 7'b0000000 ; 
			  				sel_output_mux_7 = 7'b0000000 ; 
			  				sel_output_mux_8 = 7'b0000000 ; 
			  				sel_output_mux_9 = 7'b0000000 ; 
			  				sel_output_mux_10 = 7'b0000000 ; 
			  				sel_output_mux_11 = 7'b0000000 ; 
			  				sel_output_mux_12 = 7'b0000000 ; 
			  				sel_output_mux_13 = 7'b0000000 ; 
			  				sel_output_mux_14 = 7'b0000000 ; 
			  				sel_output_mux_15 = 7'b0000000 ; 
			  				sel_output_mux_16 = 7'b0000000 ; 
			  				sel_output_mux_17 = 7'b0000000 ; 
			  				sel_output_mux_18 = 7'b0000000 ; 
			  				sel_output_mux_19 = 7'b0000000 ; 
			  				sel_output_mux_20 = 7'b0000000 ; 
			  				sel_output_mux_21 = 7'b0000000 ; 
			  				sel_output_mux_22 = 7'b0000000 ; 
			  				sel_output_mux_23 = 7'b0000000 ; 
			  				sel_output_mux_24 = 7'b0000000 ; 
			  				sel_output_mux_25 = 7'b0000000 ; 
			  				sel_output_mux_26 = 7'b0000000 ; 
			  				sel_output_mux_27 = 7'b0000000 ; 
			  				sel_output_mux_28 = 7'b0000000 ; 
			  				sel_output_mux_29 = 7'b0000000 ; 
			  				sel_output_mux_30 = 7'b0000000 ; 
			  				sel_output_mux_31 = 7'b0000000 ;
						end
			  endcase
			  // Enable the writing operation //
			  mem_write_enable = 32'b1111_1111_1111_1111_1111_1111_1111_1111 ;
			  
			  /* Enable the reading operation early (one clock cycle)*/
			  if (next_state == PASS6)
			  begin
				reg_en = 'h1111_1111_1111_1111_1111_1111_1111_1111 ;
				read_address = 2'b01 ;
			  end 
			  else
			  begin
				reg_en = 0 ;
				read_address = 0 ;
			  end
			  
          end
	PASS6:begin
			  case(state_count)
			    2'b00: begin 
							reg_en = 'h2222_2222_2222_2222_2222_2222_2222_2222 ;
							state_count_reset = 1'b1;
							read_address = 2'b10 ;
							ROM_addr = 5'b10110;
						end
				2'b01: begin
							reg_en = 'h4444_4444_4444_4444_4444_4444_4444_4444 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b10111;
						end
				2'b10: begin
							reg_en = 'h8888_8888_8888_8888_8888_8888_8888_8888 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b10111;
						end
				2'b11: begin
							reg_en = 0 ;
							state_count_reset = 1'b0;
							read_address = 2'b11 ;
							ROM_addr = 5'b10111;
					  end
			    default: begin 
							reg_en = 'b0 ; 
							state_count_reset = 1'b0;
							read_address = 'b0 ;
							ROM_addr = 5'b00000;
						end
			  endcase
			  correct = 'b0 ;
			  sel_mux_2_1 = 1'b1 ;
			  sel_output_4x1 = 0 ;
			  sel_output_mux_0 = 7'b0000000 ; 
			  sel_output_mux_1 = 7'b0000000 ; 
			  sel_output_mux_2 = 7'b0000000 ; 
			  sel_output_mux_3 = 7'b0000000 ; 
			  sel_output_mux_4 = 7'b0000000 ; 
			  sel_output_mux_5 = 7'b0000000 ; 
			  sel_output_mux_6 = 7'b0000000 ; 
			  sel_output_mux_7 = 7'b0000000 ; 
			  sel_output_mux_8 = 7'b0000000 ; 
			  sel_output_mux_9 = 7'b0000000 ; 
			  sel_output_mux_10 = 7'b0000000 ; 
			  sel_output_mux_11 = 7'b0000000 ; 
			  sel_output_mux_12 = 7'b0000000 ; 
			  sel_output_mux_13 = 7'b0000000 ; 
			  sel_output_mux_14 = 7'b0000000 ; 
			  sel_output_mux_15 = 7'b0000000 ; 
			  sel_output_mux_16 = 7'b0000000 ; 
			  sel_output_mux_17 = 7'b0000000 ; 
			  sel_output_mux_18 = 7'b0000000 ; 
			  sel_output_mux_19 = 7'b0000000 ; 
			  sel_output_mux_20 = 7'b0000000 ; 
			  sel_output_mux_21 = 7'b0000000 ; 
			  sel_output_mux_22 = 7'b0000000 ; 
			  sel_output_mux_23 = 7'b0000000 ; 
			  sel_output_mux_24 = 7'b0000000 ; 
			  sel_output_mux_25 = 7'b0000000 ; 
			  sel_output_mux_26 = 7'b0000000 ; 
			  sel_output_mux_27 = 7'b0000000 ; 
			  sel_output_mux_28 = 7'b0000000 ; 
			  sel_output_mux_29 = 7'b0000000 ; 
			  sel_output_mux_30 = 7'b0000000 ; 
			  sel_output_mux_31 = 7'b0000000 ;
			  write_address = 2'b00 ;
			  // Disable the writing operation //
			  mem_write_enable = 32'b0000_0000_0000_0000_0000_0000_0000_0000 ;
          end
	PASS6W:begin
			correct = 'b0 ;
			sel_mux_2_1 = 1'b1 ;
			sel_output_4x1 = 0 ;
			case(state_count)
			    2'b00: begin 
							state_count_reset = 1'b1;
							write_address = 2'b00 ;
							sel_output_mux_0 = 0 ; 
							sel_output_mux_1 = 4 ; 
							sel_output_mux_2 = 8 ; 
							sel_output_mux_3 = 12 ; 
							sel_output_mux_4 = 16 ; 
							sel_output_mux_5 = 20 ; 
							sel_output_mux_6 = 24 ; 
							sel_output_mux_7 = 28 ; 
							sel_output_mux_8 = 32 ; 
							sel_output_mux_9 = 36 ; 
							sel_output_mux_10 = 40 ; 
							sel_output_mux_11 = 44 ; 
							sel_output_mux_12 = 48 ; 
							sel_output_mux_13 = 52 ; 
							sel_output_mux_14 = 56 ; 
							sel_output_mux_15 = 60 ;
							sel_output_mux_16 = 1 ; 
							sel_output_mux_17 = 5 ; 
							sel_output_mux_18 = 9 ; 
							sel_output_mux_19 = 13 ; 
							sel_output_mux_20 = 17 ; 
							sel_output_mux_21 = 21 ; 
							sel_output_mux_22 = 25 ; 
							sel_output_mux_23 = 29 ; 
							sel_output_mux_24 = 33 ; 
							sel_output_mux_25 = 37 ; 
							sel_output_mux_26 = 41 ; 
							sel_output_mux_27 = 45 ; 
							sel_output_mux_28 = 49 ; 
							sel_output_mux_29 = 53 ; 
							sel_output_mux_30 = 57 ; 
							sel_output_mux_31 = 61 ;
							ROM_addr = 5'b00000;
						end
				2'b01: begin
							state_count_reset = 1'b1;
							write_address = 2'b01 ;
							sel_output_mux_0 = 64 ; 
							sel_output_mux_1 = 68 ; 
							sel_output_mux_2 = 72 ; 
							sel_output_mux_3 = 76 ; 
							sel_output_mux_4 = 80 ; 
							sel_output_mux_5 = 84 ; 
							sel_output_mux_6 = 88 ; 
							sel_output_mux_7 = 92 ; 
							sel_output_mux_8 = 96 ; 
							sel_output_mux_9 = 100 ; 
							sel_output_mux_10 = 104 ; 
							sel_output_mux_11 = 108 ; 
							sel_output_mux_12 = 112 ; 
							sel_output_mux_13 = 116 ; 
							sel_output_mux_14 = 120 ; 
							sel_output_mux_15 = 124 ;
							sel_output_mux_16 = 65 ; 
							sel_output_mux_17 = 69 ; 
							sel_output_mux_18 = 73 ; 
							sel_output_mux_19 = 77 ; 
							sel_output_mux_20 = 81 ; 
							sel_output_mux_21 = 85 ; 
							sel_output_mux_22 = 89 ; 
							sel_output_mux_23 = 93 ; 
							sel_output_mux_24 = 97 ; 
							sel_output_mux_25 = 101 ; 
							sel_output_mux_26 = 105 ; 
							sel_output_mux_27 = 109 ; 
							sel_output_mux_28 = 113 ; 
							sel_output_mux_29 = 117 ; 
							sel_output_mux_30 = 121 ; 
							sel_output_mux_31 = 125 ;
							ROM_addr = 5'b00000;							
						end
				2'b10: begin
							state_count_reset = 1'b1;
							write_address = 2'b10 ;
							sel_output_mux_0 = 2 ; 
							sel_output_mux_1 = 6 ; 
							sel_output_mux_2 = 10 ; 
							sel_output_mux_3 = 14 ; 
							sel_output_mux_4 = 18 ; 
							sel_output_mux_5 = 22 ; 
							sel_output_mux_6 = 26 ; 
							sel_output_mux_7 = 30 ; 
							sel_output_mux_8 = 34 ; 
							sel_output_mux_9 = 38 ; 
							sel_output_mux_10 = 42 ; 
							sel_output_mux_11 = 46 ; 
							sel_output_mux_12 = 50 ; 
							sel_output_mux_13 = 54 ; 
							sel_output_mux_14 = 58 ; 
							sel_output_mux_15 = 62 ;
							sel_output_mux_16 = 3 ; 
							sel_output_mux_17 = 7 ; 
							sel_output_mux_18 = 11 ; 
							sel_output_mux_19 = 15 ; 
							sel_output_mux_20 = 19 ; 
							sel_output_mux_21 = 23 ; 
							sel_output_mux_22 = 27 ; 
							sel_output_mux_23 = 31 ; 
							sel_output_mux_24 = 35 ; 
							sel_output_mux_25 = 39 ; 
							sel_output_mux_26 = 43 ; 
							sel_output_mux_27 = 47 ; 
							sel_output_mux_28 = 51 ; 
							sel_output_mux_29 = 55 ; 
							sel_output_mux_30 = 59 ; 
							sel_output_mux_31 = 63 ;
							ROM_addr = 5'b11000; 							
						end
				2'b11: begin
							state_count_reset = 1'b0;
							write_address = 2'b11 ;
							sel_output_mux_0 = 66 ; 
							sel_output_mux_1 = 70 ; 
							sel_output_mux_2 = 74 ; 
							sel_output_mux_3 = 78 ; 
							sel_output_mux_4 = 82 ; 
							sel_output_mux_5 = 86 ; 
							sel_output_mux_6 = 90 ; 
							sel_output_mux_7 = 94 ; 
							sel_output_mux_8 = 98 ; 
							sel_output_mux_9 = 102 ; 
							sel_output_mux_10 = 106 ; 
							sel_output_mux_11 = 110 ; 
							sel_output_mux_12 = 114 ; 
							sel_output_mux_13 = 118 ; 
							sel_output_mux_14 = 122 ; 
							sel_output_mux_15 = 126 ;
							sel_output_mux_16 = 67 ; 
							sel_output_mux_17 = 71 ; 
							sel_output_mux_18 = 75 ; 
							sel_output_mux_19 = 79 ; 
							sel_output_mux_20 = 83 ; 
							sel_output_mux_21 = 87 ; 
							sel_output_mux_22 = 91 ; 
							sel_output_mux_23 = 95 ; 
							sel_output_mux_24 = 99 ; 
							sel_output_mux_25 = 103 ; 
							sel_output_mux_26 = 107 ; 
							sel_output_mux_27 = 111 ; 
							sel_output_mux_28 = 115 ; 
							sel_output_mux_29 = 119 ; 
							sel_output_mux_30 = 123 ; 
							sel_output_mux_31 = 127 ;
							ROM_addr = 5'b11001;
					  end
			    default: begin 
							ROM_addr = 5'b00000;
							state_count_reset = 1'b0;
							write_address = 2'b00 ;
							sel_output_mux_0 = 7'b0000000 ; 
							sel_output_mux_1 = 7'b0000000 ; 
							sel_output_mux_2 = 7'b0000000 ; 
			 				sel_output_mux_3 = 7'b0000000 ; 
							sel_output_mux_4 = 7'b0000000 ; 
			  				sel_output_mux_5 = 7'b0000000 ; 
			  				sel_output_mux_6 = 7'b0000000 ; 
			  				sel_output_mux_7 = 7'b0000000 ; 
			  				sel_output_mux_8 = 7'b0000000 ; 
			  				sel_output_mux_9 = 7'b0000000 ; 
			  				sel_output_mux_10 = 7'b0000000 ; 
			  				sel_output_mux_11 = 7'b0000000 ; 
			  				sel_output_mux_12 = 7'b0000000 ; 
			  				sel_output_mux_13 = 7'b0000000 ; 
			  				sel_output_mux_14 = 7'b0000000 ; 
			  				sel_output_mux_15 = 7'b0000000 ; 
			  				sel_output_mux_16 = 7'b0000000 ; 
			  				sel_output_mux_17 = 7'b0000000 ; 
			  				sel_output_mux_18 = 7'b0000000 ; 
			  				sel_output_mux_19 = 7'b0000000 ; 
			  				sel_output_mux_20 = 7'b0000000 ; 
			  				sel_output_mux_21 = 7'b0000000 ; 
			  				sel_output_mux_22 = 7'b0000000 ; 
			  				sel_output_mux_23 = 7'b0000000 ; 
			  				sel_output_mux_24 = 7'b0000000 ; 
			  				sel_output_mux_25 = 7'b0000000 ; 
			  				sel_output_mux_26 = 7'b0000000 ; 
			  				sel_output_mux_27 = 7'b0000000 ; 
			  				sel_output_mux_28 = 7'b0000000 ; 
			  				sel_output_mux_29 = 7'b0000000 ; 
			  				sel_output_mux_30 = 7'b0000000 ; 
			  				sel_output_mux_31 = 7'b0000000 ;
						end
			  endcase
			  // Enable the writing operation //
			  mem_write_enable = 32'b1111_1111_1111_1111_1111_1111_1111_1111 ;
			  /* Enable the reading operation early (one clock cycle)*/
			  
			  if (next_state == PASS7)
			  begin
				reg_en = 'h1111_1111_1111_1111_1111_1111_1111_1111 ;
				read_address = 2'b01 ;
			  end 
			  else
			  begin
				reg_en = 0 ;
				read_address = 0 ;
			  end
          end
	PASS7:begin
			  case(state_count)
			    2'b00: begin 
							reg_en = 'h2222_2222_2222_2222_2222_2222_2222_2222 ;
							state_count_reset = 1'b1;
							read_address = 2'b10 ;
							ROM_addr = 5'b11010;

						end
				2'b01: begin
							reg_en = 'h4444_4444_4444_4444_4444_4444_4444_4444 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b11011;
						end
				2'b10: begin
							reg_en = 'h8888_8888_8888_8888_8888_8888_8888_8888 ;
							state_count_reset = 1'b1;
							read_address = 2'b11 ;
							ROM_addr = 5'b11011;
						end
				2'b11: begin
							reg_en = 0 ;
							state_count_reset = 1'b0;
							read_address = 2'b11 ;
							ROM_addr = 5'b11011;
					  end
			    default: begin 
							reg_en = 'b0 ; 
							state_count_reset = 1'b0;
							read_address = 'b0 ;
							ROM_addr = 5'b00000;
						end
			  endcase
			  correct = 'b0 ;
			  sel_mux_2_1 = 1'b1 ;
			  sel_output_4x1 = 0 ;
			  sel_output_mux_0 = 7'b0000000 ; 
			  sel_output_mux_1 = 7'b0000000 ; 
			  sel_output_mux_2 = 7'b0000000 ; 
			  sel_output_mux_3 = 7'b0000000 ; 
			  sel_output_mux_4 = 7'b0000000 ; 
			  sel_output_mux_5 = 7'b0000000 ; 
			  sel_output_mux_6 = 7'b0000000 ; 
			  sel_output_mux_7 = 7'b0000000 ; 
			  sel_output_mux_8 = 7'b0000000 ; 
			  sel_output_mux_9 = 7'b0000000 ; 
			  sel_output_mux_10 = 7'b0000000 ; 
			  sel_output_mux_11 = 7'b0000000 ; 
			  sel_output_mux_12 = 7'b0000000 ; 
			  sel_output_mux_13 = 7'b0000000 ; 
			  sel_output_mux_14 = 7'b0000000 ; 
			  sel_output_mux_15 = 7'b0000000 ; 
			  sel_output_mux_16 = 7'b0000000 ; 
			  sel_output_mux_17 = 7'b0000000 ; 
			  sel_output_mux_18 = 7'b0000000 ; 
			  sel_output_mux_19 = 7'b0000000 ; 
			  sel_output_mux_20 = 7'b0000000 ; 
			  sel_output_mux_21 = 7'b0000000 ; 
			  sel_output_mux_22 = 7'b0000000 ; 
			  sel_output_mux_23 = 7'b0000000 ; 
			  sel_output_mux_24 = 7'b0000000 ; 
			  sel_output_mux_25 = 7'b0000000 ; 
			  sel_output_mux_26 = 7'b0000000 ; 
			  sel_output_mux_27 = 7'b0000000 ; 
			  sel_output_mux_28 = 7'b0000000 ; 
			  sel_output_mux_29 = 7'b0000000 ; 
			  sel_output_mux_30 = 7'b0000000 ; 
			  sel_output_mux_31 = 7'b0000000 ;
			  write_address = 2'b00 ;
			  // Disable the writing operation //
			  mem_write_enable = 32'b0000_0000_0000_0000_0000_0000_0000_0000 ;
          end
	PASS7W:begin
		      reg_en = 'b0 ;
			  sel_mux_2_1 = 1'b1 ;
			  sel_output_4x1 = 0 ;
			  ROM_addr = 5'b00000;
			  case(state_count)
			  2'b00 : begin
						write_address = 2'b00 ;
                        sel_output_mux_0 = 0 ;
                        sel_output_mux_1 = 4 ;
                        sel_output_mux_2 = 8 ;
                        sel_output_mux_3 = 12 ;
                        sel_output_mux_4 = 16 ;
                        sel_output_mux_5 = 20 ;
                        sel_output_mux_6 = 24 ;
                        sel_output_mux_7 = 28 ;
                        sel_output_mux_8 = 32 ;
                        sel_output_mux_9 = 36 ;
                        sel_output_mux_10 = 40 ;
                        sel_output_mux_11 = 44 ;
                        sel_output_mux_12 = 48 ;
                        sel_output_mux_13 = 52 ;
                        sel_output_mux_14 = 56 ;
                        sel_output_mux_15 = 60 ;
                        sel_output_mux_16 = 64 ;
                        sel_output_mux_17 = 68 ;
                        sel_output_mux_18 = 72 ;
                        sel_output_mux_19 = 76 ;
                        sel_output_mux_20 = 80 ;
                        sel_output_mux_21 = 84 ;
                        sel_output_mux_22 = 88 ;
                        sel_output_mux_23 = 92 ;
                        sel_output_mux_24 = 96 ;
                        sel_output_mux_25 = 100 ;
                        sel_output_mux_26 = 104 ;
                        sel_output_mux_27 = 108 ;
                        sel_output_mux_28 = 112 ;
                        sel_output_mux_29 = 116 ;
                        sel_output_mux_30 = 120 ;
                        sel_output_mux_31 = 124 ;						
					end
			  2'b01 : begin
						write_address = 2'b01 ;
                        sel_output_mux_0 = 1 ;
                        sel_output_mux_1 = 5 ;
                        sel_output_mux_2 = 9 ;
                        sel_output_mux_3 = 13 ;
                        sel_output_mux_4 = 17 ;
                        sel_output_mux_5 = 21 ;
                        sel_output_mux_6 = 25 ;
                        sel_output_mux_7 = 29 ;
                        sel_output_mux_8 = 33 ;
                        sel_output_mux_9 = 37 ;
                        sel_output_mux_10 = 41 ;
                        sel_output_mux_11 = 45 ;
                        sel_output_mux_12 = 49 ;
                        sel_output_mux_13 = 53 ;
                        sel_output_mux_14 = 57 ;
                        sel_output_mux_15 = 61 ;
                        sel_output_mux_16 = 65 ;
                        sel_output_mux_17 = 69 ;
                        sel_output_mux_18 = 73 ;
                        sel_output_mux_19 = 77 ;
                        sel_output_mux_20 = 81 ;
                        sel_output_mux_21 = 85 ;
                        sel_output_mux_22 = 89 ;
                        sel_output_mux_23 = 93 ;
                        sel_output_mux_24 = 97 ;
                        sel_output_mux_25 = 101 ;
                        sel_output_mux_26 = 105 ;
                        sel_output_mux_27 = 109 ;
                        sel_output_mux_28 = 113 ;
                        sel_output_mux_29 = 117 ;
                        sel_output_mux_30 = 121 ;
                        sel_output_mux_31 = 125 ;						
					end
					
			  2'b10 : begin
						write_address = 2'b10;
                        sel_output_mux_0 = 2 ;
                        sel_output_mux_1 = 6 ;
                        sel_output_mux_2 = 10 ;
                        sel_output_mux_3 = 14 ;
                        sel_output_mux_4 = 18 ;
                        sel_output_mux_5 = 22 ;
                        sel_output_mux_6 = 26 ;
                        sel_output_mux_7 = 30 ;
                        sel_output_mux_8 = 34 ;
                        sel_output_mux_9 = 38 ;
                        sel_output_mux_10 = 42 ;
                        sel_output_mux_11 = 46 ;
                        sel_output_mux_12 = 50 ;
                        sel_output_mux_13 = 54 ;
                        sel_output_mux_14 = 58 ;
                        sel_output_mux_15 = 62 ;
                        sel_output_mux_16 = 66 ;
                        sel_output_mux_17 = 70 ;
                        sel_output_mux_18 = 74 ;
                        sel_output_mux_19 = 78 ;
                        sel_output_mux_20 = 82 ;
                        sel_output_mux_21 = 86 ;
                        sel_output_mux_22 = 90 ;
                        sel_output_mux_23 = 94 ;
                        sel_output_mux_24 = 98 ;
                        sel_output_mux_25 = 102 ;
                        sel_output_mux_26 = 106 ;
                        sel_output_mux_27 = 110 ;
                        sel_output_mux_28 = 114 ;
                        sel_output_mux_29 = 118 ;
                        sel_output_mux_30 = 122 ;
                        sel_output_mux_31 = 126 ;						
					end
			  2'b11 : begin
						write_address = 2'b11;
						sel_output_mux_0 = 3 ;
                        sel_output_mux_1 = 7 ;
                        sel_output_mux_2 = 11 ;
                        sel_output_mux_3 = 15 ;
                        sel_output_mux_4 = 19 ;
                        sel_output_mux_5 = 23 ;
                        sel_output_mux_6 = 27 ;
                        sel_output_mux_7 = 31 ;
                        sel_output_mux_8 = 35 ;
                        sel_output_mux_9 = 39 ;
                        sel_output_mux_10 = 43 ;
                        sel_output_mux_11 = 47 ;
                        sel_output_mux_12 = 51 ;
                        sel_output_mux_13 = 55 ;
                        sel_output_mux_14 = 59 ;
                        sel_output_mux_15 = 63 ;
                        sel_output_mux_16 = 67 ;
                        sel_output_mux_17 = 71 ;
                        sel_output_mux_18 = 75 ;
                        sel_output_mux_19 = 79 ;
                        sel_output_mux_20 = 83 ;
                        sel_output_mux_21 = 87 ;
                        sel_output_mux_22 = 91 ;
                        sel_output_mux_23 = 95 ;
                        sel_output_mux_24 = 99 ;
                        sel_output_mux_25 = 103 ;
                        sel_output_mux_26 = 107 ;
                        sel_output_mux_27 = 111 ;
                        sel_output_mux_28 = 115 ;
                        sel_output_mux_29 = 119 ;
                        sel_output_mux_30 = 123 ;
                        sel_output_mux_31 = 127 ;
					end
			  
			  
			  endcase
			  read_address = 2'b00 ;
			  mem_write_enable = 32'b1111_1111_1111_1111_1111_1111_1111_1111 ;
			  case(state_count)
			    2'b00: begin 
							state_count_reset = 1'b1;
							correct = 'b0 ;
						end
				2'b01: begin
							state_count_reset = 1'b1;
							correct = 'b0 ;
						end
				2'b10: begin
							state_count_reset = 1'b1;
							correct = 'b0 ;
						end
				2'b11: begin
							state_count_reset = 1'b0;
							correct = 'b1 ;
					  end
			    default: begin 
							state_count_reset = 1'b0;
							correct = 'b0 ;
						end
			  endcase
          end 
  endcase
end

always@(posedge clk or negedge rst)
begin
	if(!rst)
		state_count <= 0 ;
	else
		begin
		if(!state_count_reset)
			state_count <= 0 ;
		else if(((current_state == WAIT)) && (ready_inputs == 1))
			state_count <= state_count + 1 ;
		else if (current_state != RESET)
			state_count <= state_count + 1 ;
		end
end


/* always@(*)
begin
	if(next_state == PASS1W || next_state == PASS2W || next_state == PASS3W || next_state == PASS4W || next_state == PASS5W || next_state == PASS6W || next_state == PASS7W)
	begin	
		reg_en = 'b0 ; 
		ROM_addr = 'b0 ;
	end
end */

assign twiddle_reg_en = reg_en[63:0];

endmodule
