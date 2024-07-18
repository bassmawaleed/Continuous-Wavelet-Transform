/* This is the controller that controls the flow of CWT operation */
module Controller_FSM_CWT (
    input clk,
    input rst,
    input wire fft_correct,
    input wire ifft_correct,
    input wire fft_ready_inputs,
    output reg reg_en_ifft_rst,
    output reg [127:0] reg_en_fft,                                    /* Enable of the register file that contains the outputs of the fft*/
    output reg [6:0] sel_mux_128x1,                                   /* selection line of the 128x1 mux connected to the reg file and multiplier*/
    output reg [7:0] wavlet_rom_addr,                                 /* Address bus of the real and imag Wavelet ROM */
    output reg [127:0] reg_en_ifft,                                   /* Enables of the register file that contains the inputs of the ifft*/
    output reg [1:0] ifft_sel_mux_4x1,                                /* selection line of the 4x1 mux connected to the IFFT and RAMs*/
    output reg ifft_ready_inputs,                                     /* Ready Inputs signal of the ifft */                           
    output reg ifft_scale_ram_write_enable_1,                         /* Write enable of the 32 RAMs of Scale 1 */
    output reg ifft_scale_ram_write_enable_2,                         /* Write enable of the 32 RAMs of Scale 2 */
    output reg ifft_scale_ram_write_enable_3,                         /* Write enable of the 32 RAMs of Scale 3 */
    output reg ifft_scale_ram_write_enable_4,                         /* Write enable of the 32 RAMs of Scale 4 */
    output reg ifft_scale_ram_write_enable_5,                         /* Write enable of the 32 RAMs of Scale 5 */
    output reg ifft_scale_ram_write_enable_6,                         /* Write enable of the 32 RAMs of Scale 6 */
    output reg ifft_scale_ram_write_enable_7,                         /* Write enable of the 32 RAMs of Scale 7 */
    output reg ifft_scale_ram_write_enable_8,                         /* Write enable of the 32 RAMs of Scale 8 */
    output reg ifft_scale_ram_write_enable_9,                         /* Write enable of the 32 RAMs of Scale 9 */
    output reg ifft_scale_ram_write_enable_10,                        /* Write enable of the 32 RAMs of Scale 10 */
    output reg ifft_scale_ram_write_enable_11,                        /* Write enable of the 32 RAMs of Scale 11 */
    output reg ifft_scale_ram_write_enable_12,                        /* Write enable of the 32 RAMs of Scale 12 */
    output reg ifft_scale_ram_write_enable_13,                        /* Write enable of the 32 RAMs of Scale 13 */
    output reg ifft_scale_ram_write_enable_14,                        /* Write enable of the 32 RAMs of Scale 14 */
    output reg ifft_scale_ram_write_enable_15,                        /* Write enable of the 32 RAMs of Scale 15 */
    output reg [1:0] ifft_scale_output_ram_addr                       /* RAM address*/
);

/* Define the states */
parameter reset = 5'b0_0000;
parameter wait_state = 5'b0_0001;
parameter FFT = 5'b0_0010;
parameter scale_1 = 5'b0_0011;
parameter ifft_scale_1_and_scale_2 = 5'b0_0100;
parameter write_scale_x  = 5'b0_0101;
parameter ifft_scale_2_and_scale_3 = 5'b0_0110;
parameter ifft_scale_3_and_scale_4 = 5'b0_0111;
parameter ifft_scale_4_and_scale_5 = 5'b0_1000;
parameter ifft_scale_5_and_scale_6 = 5'b0_1001;
parameter ifft_scale_6_and_scale_7 = 5'b0_1010;
parameter ifft_scale_7_and_scale_8 = 5'b0_1011;
parameter ifft_scale_8_and_scale_9 = 5'b0_1100;
parameter ifft_scale_9_and_scale_10 = 5'b0_1101;
parameter ifft_scale_10_and_scale_11 = 5'b0_1110;
parameter ifft_scale_11_and_scale_12 = 5'b0_1111;
parameter ifft_scale_12_and_scale_13 = 5'b1_0000;
parameter ifft_scale_13_and_scale_14 = 5'b1_0001;
parameter ifft_scale_14_and_scale_15 = 5'b1_0010;
parameter ifft_scale_15 = 5'b1_0011;


reg [4:0] current_state , next_state ;

reg state_counter_reset ;
reg [4:0] state_counter;

reg correct_flag_counter_reset;
reg [3:0] correct_flag_counter;


reg [2:0] write_counter ;

/* Current State Logic */
always @ (posedge clk or negedge rst)
begin
  if( !rst )
    begin
      current_state <= reset ; 
    end 
  else
    begin
      current_state <= next_state ;
    end
end


/* Next State Logic */
always@(*)
begin
    case(current_state)

        reset: begin
            next_state <= wait_state;
        end

        wait_state: begin

            if(fft_ready_inputs == 1'b1)
                next_state <= FFT;
            else
                next_state <= wait_state;
        end

        FFT: begin

            if(fft_correct == 1'b1)
                next_state <= scale_1; 
            else
                next_state <= FFT; 
        end

        scale_1: begin
            if(state_counter == 8)
                next_state <= ifft_scale_1_and_scale_2 ; 
            else
                next_state <= scale_1;
        end

        ifft_scale_1_and_scale_2: begin

            if(ifft_correct == 1'b1)
                next_state <= write_scale_x; 
            else 
                next_state <= ifft_scale_1_and_scale_2;
        end

        write_scale_x: begin

            if(write_counter == 3) begin
                case (correct_flag_counter)
                    'b0001: next_state <= ifft_scale_2_and_scale_3; 
                    'b0010: next_state <= ifft_scale_3_and_scale_4;
                    'b0011: next_state <= ifft_scale_4_and_scale_5;
                    'b0100: next_state <= ifft_scale_5_and_scale_6;
                    'b0101: next_state <= ifft_scale_6_and_scale_7;
                    'b0110: next_state <= ifft_scale_7_and_scale_8;
                    'b0111: next_state <= ifft_scale_8_and_scale_9;
                    'b1000: next_state <= ifft_scale_9_and_scale_10;
                    'b1001: next_state <= ifft_scale_10_and_scale_11;
                    'b1010: next_state <= ifft_scale_11_and_scale_12;
                    'b1011: next_state <= ifft_scale_12_and_scale_13;
                    'b1100: next_state <= ifft_scale_13_and_scale_14;
                    'b1101: next_state <= ifft_scale_14_and_scale_15;
                    'b1110: next_state <= ifft_scale_15;
                    'b1111: next_state <= wait_state ;
                    default: next_state <= reset ;
                endcase
            end
            else 
                next_state <= write_scale_x;

        end

        ifft_scale_2_and_scale_3: begin

            if(ifft_correct == 1'b1)
                next_state <= write_scale_x; 
            else 
                next_state <= ifft_scale_2_and_scale_3;
        end

        ifft_scale_3_and_scale_4: begin

            if(ifft_correct == 1'b1)
                next_state <= write_scale_x; 
            else 
                next_state <= ifft_scale_3_and_scale_4;
        end

        ifft_scale_4_and_scale_5: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x; 
            else 
                next_state <= ifft_scale_4_and_scale_5;

        end

        ifft_scale_5_and_scale_6: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x; 
            else 
                next_state <= ifft_scale_5_and_scale_6;

        end

        ifft_scale_6_and_scale_7: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x;
            else 
                next_state <= ifft_scale_6_and_scale_7;

        end

        ifft_scale_7_and_scale_8: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x;
            else 
                next_state <= ifft_scale_7_and_scale_8;

        end

        ifft_scale_8_and_scale_9: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x;
            else 
                next_state <= ifft_scale_8_and_scale_9;


        end

        ifft_scale_9_and_scale_10: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x; 
            else 
                next_state <= ifft_scale_9_and_scale_10;

        end

        ifft_scale_10_and_scale_11: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x;
            else 
                next_state <= ifft_scale_10_and_scale_11;


        end

        ifft_scale_11_and_scale_12: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x;
            else 
                next_state <= ifft_scale_11_and_scale_12;


        end

        ifft_scale_12_and_scale_13: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x;
            else 
                next_state <= ifft_scale_12_and_scale_13;

        end

        ifft_scale_13_and_scale_14: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x;
            else 
                next_state <= ifft_scale_13_and_scale_14;

        end

        ifft_scale_14_and_scale_15: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x;
            else 
                next_state <= ifft_scale_14_and_scale_15;

        end

        ifft_scale_15: begin
            if(ifft_correct == 1'b1)
                next_state <= write_scale_x;
            else 
                next_state <= ifft_scale_15;

        end


    endcase
end


/* Output Logic */
/* Since we are designing Moore state machine , The output is a function in the current state only */
always @(*)
begin
    case(current_state)
    reset: begin
            reg_en_ifft_rst = 0;
            reg_en_fft = 0;
            sel_mux_128x1 = 0;
            wavlet_rom_addr = 0;
            reg_en_ifft = 0;
            ifft_sel_mux_4x1 = 0;
            ifft_ready_inputs = 0;
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            state_counter_reset = 0;
            correct_flag_counter_reset = 0;
        end
    wait_state: begin
            reg_en_ifft_rst = 0;
            reg_en_fft = 0;
            sel_mux_128x1 = 0;
            wavlet_rom_addr = 0;
            reg_en_ifft = 0;
            ifft_sel_mux_4x1 = 0;
            ifft_ready_inputs = 0;
            state_counter_reset =0;
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset =0;
        end
    FFT: begin
            if (next_state == scale_1) begin
                reg_en_fft = 128'hFFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF_FFFF;             /* Enable the regsiters one clock cycle early */
            end
            else 
                begin
                    reg_en_fft = 0;
                end
            reg_en_ifft_rst=0;
            sel_mux_128x1 = 0;
            wavlet_rom_addr = 0;
            state_counter_reset=0;
            reg_en_ifft = 0;
            ifft_sel_mux_4x1 = 0;
            ifft_ready_inputs = 0;
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 0;
        end
    scale_1 : begin
            reg_en_fft = 0;
            reg_en_ifft_rst = 1;
            case (state_counter)
                'b0000: begin
                    sel_mux_128x1 = 119;
                    reg_en_ifft = 'h0080_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 1;  
                    state_counter_reset = 1;           
                end
                'b0001: begin
                    sel_mux_128x1 = 120;
                    reg_en_ifft = 'h0100_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 2;
                    state_counter_reset = 1;
                end
                'b0010: begin
                    sel_mux_128x1 = 121;
                    reg_en_ifft = 'h0200_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 3;
                    state_counter_reset = 1;
                end
                'b0011: begin
                    sel_mux_128x1 = 122;
                    reg_en_ifft = 'h0400_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 4;
                    state_counter_reset = 1;
                end
                'b0100: begin
                    sel_mux_128x1 = 123;
                    reg_en_ifft = 'h0800_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 5;
                    state_counter_reset = 1;
                end
                'b0101: begin
                    sel_mux_128x1 = 124;
                    reg_en_ifft = 'h1000_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 6;
                    state_counter_reset = 1;
                end
                'b0110: begin
                    sel_mux_128x1 = 125;
                    reg_en_ifft = 'h2000_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 7;
                    state_counter_reset = 1;
                end
                'b0111: begin
                    sel_mux_128x1 = 126;
                    reg_en_ifft = 'h4000_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 8;
                    state_counter_reset = 1;
                end
                'b1000: begin
                    sel_mux_128x1 = 127;
                    reg_en_ifft = 'h8000_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 9;
                    state_counter_reset = 0;
                end
                default: begin
                    sel_mux_128x1 = 0;
                    wavlet_rom_addr = 0;
                    reg_en_ifft = 0;
                    state_counter_reset = 0;
                end
            endcase 
            ifft_sel_mux_4x1 = 0;
            ifft_ready_inputs = 0;
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 0;
        end
    ifft_scale_1_and_scale_2 : begin

            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                    wavlet_rom_addr = 9;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                    wavlet_rom_addr = 9;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                    wavlet_rom_addr = 9;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                    wavlet_rom_addr = 9;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 9;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 'h0004_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 10;
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 115;
                    reg_en_ifft = 'h0008_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 11;         
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 116;
                    reg_en_ifft = 'h0010_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 12;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 117;
                    reg_en_ifft = 'h0020_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 13;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 118;
                    reg_en_ifft = 'h0040_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 14;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 119;
                    reg_en_ifft = 'h0080_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 15;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 120;
                    reg_en_ifft = 'h0100_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 16;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 121;
                    reg_en_ifft = 'h0200_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 17;
                end
                'b1101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 122;
                    reg_en_ifft = 'h0400_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 18;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 18;
                end 
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    write_scale_x:begin
            reg_en_ifft_rst = 1;
            reg_en_fft = 0;
            sel_mux_128x1 = 0;
            reg_en_ifft = 0;
            ifft_sel_mux_4x1 = 0;
            ifft_ready_inputs = 0;
            case (correct_flag_counter)
                'b0001: begin
                        ifft_scale_ram_write_enable_1 = 1;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 18;
                end
                'b0010: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 1;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 29;
                end
                'b0011: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 1;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 40;
                end
                'b0100: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 1;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 49;
                end
                'b0101: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 1;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 58;
                end
                'b0110: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 1;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 67;
                end
                'b0111: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 1;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 76;
                end
                'b1000: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 1;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 85;
                end
                'b1001: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 1;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 94;
                end
                'b1010: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 1;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 102;
                end
                'b1011: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 1;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 110;
                end
                'b1100: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 1;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 118;
                end
                'b1101: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 1;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 126;
                end
                'b1110: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 1;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 0;
                end
                'b1111: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 1;
                        wavlet_rom_addr = 0;
                end
                default: begin
                        ifft_scale_ram_write_enable_1 = 0;
                        ifft_scale_ram_write_enable_2 = 0;
                        ifft_scale_ram_write_enable_3 = 0;
                        ifft_scale_ram_write_enable_4 = 0;
                        ifft_scale_ram_write_enable_5 = 0;
                        ifft_scale_ram_write_enable_6 = 0;
                        ifft_scale_ram_write_enable_7 = 0;
                        ifft_scale_ram_write_enable_8 = 0;
                        ifft_scale_ram_write_enable_9 = 0;
                        ifft_scale_ram_write_enable_10 = 0;
                        ifft_scale_ram_write_enable_11 = 0;
                        ifft_scale_ram_write_enable_12 = 0;
                        ifft_scale_ram_write_enable_13 = 0;
                        ifft_scale_ram_write_enable_14 = 0;
                        ifft_scale_ram_write_enable_15 = 0;
                        wavlet_rom_addr = 0;
                end
            endcase

            case (write_counter)
                3'b00: begin
                    ifft_sel_mux_4x1 = 'b00;
                    ifft_scale_output_ram_addr = 'b00;
                end
                3'b01: begin
                    ifft_sel_mux_4x1 = 'b01;
                    ifft_scale_output_ram_addr = 'b01;
                end
                3'b10:begin
                    ifft_sel_mux_4x1 = 'b10;
                    ifft_scale_output_ram_addr = 'b10;
                end
                3'b11: begin
                    ifft_sel_mux_4x1 = 'b11;
                    ifft_scale_output_ram_addr = 'b11;
                end
                default: begin
                    ifft_sel_mux_4x1 = 'b00;
                    ifft_scale_output_ram_addr = 'b00;
                end
            endcase
            state_counter_reset = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_2_and_scale_3 : begin

            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                    wavlet_rom_addr = 18;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                    wavlet_rom_addr = 18;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                    wavlet_rom_addr = 18;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                    wavlet_rom_addr = 18;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 18;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 114;
                    reg_en_ifft = 'h0004_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 19;
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 115;
                    reg_en_ifft = 'h0008_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 20;         
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 116;
                    reg_en_ifft = 'h0010_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 21;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                    sel_mux_128x1 = 117;
                    reg_en_ifft = 'h0020_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 22;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 118;
                    reg_en_ifft = 'h0040_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 23;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 119;
                    reg_en_ifft = 'h0080_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 24;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 120;
                    reg_en_ifft = 'h0100_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 25;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 121;
                    reg_en_ifft = 'h0200_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 26;
                end
                'b1101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 122;
                    reg_en_ifft = 'h0400_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 27;
                end
                'b1110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 123;
                    reg_en_ifft = 'h0800_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 28;
                end 
                'b1111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 124;
                    reg_en_ifft = 'h1000_0000_0000_0000_0000_0000_0000_0000;
                    wavlet_rom_addr = 29;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 29;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_3_and_scale_4 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;

            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     state_counter_reset = 0;
                    wavlet_rom_addr = 29;
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     state_counter_reset = 0;
                    wavlet_rom_addr = 29;
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                      state_counter_reset = 0;
                    wavlet_rom_addr = 29;
                    sel_mux_128x1 = 8;
                        reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     state_counter_reset = 0;
                    wavlet_rom_addr = 29;
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 29;
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0100;
                    wavlet_rom_addr = 30;
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 9;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0200;
                    wavlet_rom_addr = 31;        
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 10;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0400;
                    wavlet_rom_addr = 32;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 11;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0800;
                    wavlet_rom_addr = 33;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 12;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_1000;
                    wavlet_rom_addr = 34;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 13;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_2000;
                    wavlet_rom_addr = 35;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 14;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_4000;
                    wavlet_rom_addr = 36;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 15;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_8000;
                    wavlet_rom_addr = 37;
                end
                'b1101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 16;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0001_0000;
                    wavlet_rom_addr = 38;
                end
                'b1110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 17;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0002_0000;
                    wavlet_rom_addr = 39;
                end 
                'b1111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 18;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0004_0000;
                    wavlet_rom_addr = 40;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 40;
                end
            endcase
            state_counter_reset = 1;
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_4_and_scale_5 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 40;
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 40;
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 40;
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 40;
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 40;
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 41;
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0100;
                    wavlet_rom_addr = 42;        
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 9;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0200;
                    wavlet_rom_addr = 43;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 10;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0400;
                    wavlet_rom_addr = 44;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 11;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0800;
                    wavlet_rom_addr = 45;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 12;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_1000;
                    wavlet_rom_addr = 46;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 13;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_2000;
                    wavlet_rom_addr = 47;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 14;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_4000;
                    wavlet_rom_addr = 48;
                end
                'b1101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 15;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_8000;
                    wavlet_rom_addr = 49;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 49;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_5_and_scale_6 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 49;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 49;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 49;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 49;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 49;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 50;
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 51;        
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 52;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0100;
                    wavlet_rom_addr = 53;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 9;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0200;
                    wavlet_rom_addr = 54;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 10;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0400;
                    wavlet_rom_addr = 55;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 11;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0800;
                    wavlet_rom_addr = 56;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 12;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_1000;
                    wavlet_rom_addr = 57;
                end
                'b1101: begin
                    reg_en_ifft_rst = 1;
                    sel_mux_128x1 = 13;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_2000;
                    wavlet_rom_addr = 58;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 58;
                end
            endcase

            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_6_and_scale_7 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 58;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 58;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 58;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 58;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 58;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 4;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0010;
                    wavlet_rom_addr = 59;
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 60;        
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 61;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 62;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0100;
                    wavlet_rom_addr = 63;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 9;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0200;
                    wavlet_rom_addr = 64;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 10;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0400;
                    wavlet_rom_addr = 65;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 11;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0800;
                    wavlet_rom_addr = 66;
                end
                'b1101: begin
                    reg_en_ifft_rst = 1;
                    sel_mux_128x1 = 12;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_1000;
                    wavlet_rom_addr = 67;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 67;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_7_and_scale_8 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 67;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 67;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 67;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 67;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 67;
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 3;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0008;
                    wavlet_rom_addr = 68;
                    
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 4;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0010;
                    wavlet_rom_addr = 69;
                            
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 70;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 71;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 72;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0100;
                    wavlet_rom_addr = 73;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 9;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0200;
                    wavlet_rom_addr = 74;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 10;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0400;
                    wavlet_rom_addr = 75;
                end
                'b1101: begin
                    reg_en_ifft_rst = 1;
                    sel_mux_128x1 = 11;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0800;
                    wavlet_rom_addr = 76;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 76;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_8_and_scale_9 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 76;
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 76;
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 76;
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 76;
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 76;
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0004;
                    wavlet_rom_addr = 77;
                    
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 3;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0008;
                    wavlet_rom_addr = 78;
                            
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 4;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0010;
                    wavlet_rom_addr = 79;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 80;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 81;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 82;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0100;
                    wavlet_rom_addr = 83;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 9;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0200;
                    wavlet_rom_addr = 84;
                end
                'b1101: begin
                    reg_en_ifft_rst = 1;
                    sel_mux_128x1 = 10;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0400;
                    wavlet_rom_addr = 85;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 85;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_9_and_scale_10 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 85;
                sel_mux_128x1 = 1;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 85;
                sel_mux_128x1 = 1;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 85;
                    sel_mux_128x1 = 1;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 85;
                    sel_mux_128x1 = 1;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 85;
                    sel_mux_128x1 = 1;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 1;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0002;
                    wavlet_rom_addr = 86;
                    
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0004;
                    wavlet_rom_addr = 87;
                            
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 3;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0008;
                    wavlet_rom_addr = 88;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 4;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0010;
                    wavlet_rom_addr = 89;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 90;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 91;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 92;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 8;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0100;
                    wavlet_rom_addr = 93;
                end
                'b1101: begin
                    reg_en_ifft_rst = 1;
                    sel_mux_128x1 = 9;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0200;
                    wavlet_rom_addr = 94;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 94;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_10_and_scale_11 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 94;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 94;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 94;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 94;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 94;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0001;
                    wavlet_rom_addr = 95;
                    
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 1;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0002;
                    wavlet_rom_addr = 96;
                            
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0004;
                    wavlet_rom_addr = 97;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 3;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0008;
                    wavlet_rom_addr = 98;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 4;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0010;
                    wavlet_rom_addr = 99;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 100;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 101;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 102;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 102;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_11_and_scale_12 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 102;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 102;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 102;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 102;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 102;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0001;
                    wavlet_rom_addr = 103;
                    
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 1;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0002;
                    wavlet_rom_addr = 104;
                            
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0004;
                    wavlet_rom_addr = 105;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 3;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0008;
                    wavlet_rom_addr = 106;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 4;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0010;
                    wavlet_rom_addr = 107;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 108;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 109;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 110;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 110;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_12_and_scale_13 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 110;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 110;
                sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 110;
                sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 110;
                sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 110;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0001;
                    wavlet_rom_addr = 111;
                    
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 1;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0002;
                    wavlet_rom_addr = 112;
                            
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0004;
                    wavlet_rom_addr = 113;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 3;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0008;
                    wavlet_rom_addr = 114;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 4;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0010;
                    wavlet_rom_addr = 115;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 116;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 117;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 118;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 118;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_13_and_scale_14 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;


            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 118;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 118;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 118;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 118;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 118;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0001;
                    wavlet_rom_addr = 119;
                    
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 1;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0002;
                    wavlet_rom_addr = 120;
                            
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0004;
                    wavlet_rom_addr = 121;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 3;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0008;
                    wavlet_rom_addr = 122;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 4;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0010;
                    wavlet_rom_addr = 123;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 124;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 125;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 126;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 126;
                end
            endcase

            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_14_and_scale_15 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;

            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 126;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 126;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 126;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 126;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 126;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0101: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0001;
                    wavlet_rom_addr = 127;
                    
                end
                'b0110: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 1;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0002;
                    wavlet_rom_addr = 128;
                            
                end
                'b0111: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 2;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0004;
                    wavlet_rom_addr = 129;
                end
                'b1000: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 3;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0008;
                    wavlet_rom_addr = 130;
                end
                'b1001: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 4;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0010;
                    wavlet_rom_addr = 131;
                end
                'b1010: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 5;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0020;
                    wavlet_rom_addr = 132;
                end
                'b1011: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 6;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0040;
                    wavlet_rom_addr = 133;
                end
                'b1100: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 7;
                    reg_en_ifft = 'h0000_0000_0000_0000_0000_0000_0000_0080;
                    wavlet_rom_addr = 0;
                end
                default: begin
                    reg_en_ifft_rst = 1;
                    ifft_ready_inputs = 0;
                     
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 0;
                end
            endcase
            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    ifft_scale_15 : begin
            reg_en_fft = 0;
            ifft_sel_mux_4x1 = 0;
            state_counter_reset = 1;
            case (state_counter)
                'b0000:begin
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 0;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0001:begin
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 0;
                sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0010:begin
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 0;
                sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0011:begin
                    ifft_ready_inputs = 1;
                     wavlet_rom_addr = 0;
                sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                'b0100:begin
                    reg_en_ifft_rst = 0;        /* Reset the registers at the input of the ifft block */
                    ifft_ready_inputs = 0;
                    wavlet_rom_addr = 0;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                end
                default: begin
                    ifft_ready_inputs = 0;
                    reg_en_ifft_rst = 1;
                    sel_mux_128x1 = 0;
                    reg_en_ifft = 0;
                    wavlet_rom_addr = 0;
                end
            endcase

            ifft_scale_ram_write_enable_1 = 0;
            ifft_scale_ram_write_enable_2 = 0;
            ifft_scale_ram_write_enable_3 = 0;
            ifft_scale_ram_write_enable_4 = 0;
            ifft_scale_ram_write_enable_5 = 0;
            ifft_scale_ram_write_enable_6 = 0;
            ifft_scale_ram_write_enable_7 = 0;
            ifft_scale_ram_write_enable_8 = 0;
            ifft_scale_ram_write_enable_9 = 0;
            ifft_scale_ram_write_enable_10 = 0;
            ifft_scale_ram_write_enable_11 = 0;
            ifft_scale_ram_write_enable_12 = 0;
            ifft_scale_ram_write_enable_13 = 0;
            ifft_scale_ram_write_enable_14 = 0;
            ifft_scale_ram_write_enable_15 = 0;
            ifft_scale_output_ram_addr = 0;
            correct_flag_counter_reset = 1;
        end
    endcase
end

/* State Counter Logic */
always @(posedge clk or negedge rst) begin
    if(!rst)
        state_counter <= 0;
    else
        begin
            if(state_counter_reset == 0)
                state_counter <= 0;
            else begin
                if( (   current_state == ifft_scale_1_and_scale_2 
                        || current_state == ifft_scale_4_and_scale_5 
                        || current_state == ifft_scale_5_and_scale_6
                        || current_state == ifft_scale_6_and_scale_7
                        || current_state == ifft_scale_7_and_scale_8
                        || current_state == ifft_scale_8_and_scale_9
                        || current_state == ifft_scale_9_and_scale_10)
                    && state_counter > 'b1101)

                    state_counter <= 'b1110; /* Default in Case Switch*/

                else if( (   current_state == ifft_scale_10_and_scale_11 
                        || current_state == ifft_scale_11_and_scale_12
                        || current_state == ifft_scale_12_and_scale_13
                        || current_state == ifft_scale_13_and_scale_14
                        || current_state == ifft_scale_14_and_scale_15)
                    && state_counter > 'b1011)

                    state_counter <= 'b1100; /* Default in Case Switch*/

                else if( (   current_state == ifft_scale_2_and_scale_3 
                        || current_state == ifft_scale_3_and_scale_4) 
                    && state_counter > 'b1111)

                    state_counter <= 'b10000; /* Default in Case Switch*/

                else if (current_state == ifft_scale_15 && state_counter > 'b0100)

                    state_counter = 'b0101;

                else
                    state_counter <= state_counter + 1;
            end 
        end
end


/* Write Counter Logic */
always @(posedge clk or negedge rst) begin
    if(!rst)
        write_counter <= 0;
    else
    begin
        if(current_state == write_scale_x)
            write_counter <= write_counter + 1;
        else
            write_counter <= 0;
    end
end

/* Correct Flag Counter Logic */
always @(posedge clk or negedge rst) begin
    if(!rst)
        correct_flag_counter <= 0;
    else
        begin
            if(correct_flag_counter_reset == 0)
                correct_flag_counter <= 0;
            else if(ifft_correct == 1)
                correct_flag_counter <= correct_flag_counter + 1;
        end
end
endmodule