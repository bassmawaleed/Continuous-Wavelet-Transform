/* This verilog file describes the content of ROM which --*/
/*-- stores the frequency samples of the wavelet transform*/
/* Multiple ROMs are used. This ROM describes different values of scales */
/* Authors : Basma Walid - Preprocessing Team */

module cwt_fft_ROM_imag (
input clk,
input wire [7:0] addr ,
output reg [15:0] read_data 
);


always@(posedge clk)
begin
	case(addr)
	/* First Scale --> 1000 Hz*/
	8'b0000_0000: read_data <= 16'hFFFD; 
	8'b0000_0001: read_data <= 16'h001C; 
	8'b0000_0010: read_data <= 16'hFF5B; 
	8'b0000_0011: read_data <= 16'h202; 
	8'b0000_0100: read_data <= 16'hFC9D; 
	8'b0000_0101: read_data <= 16'h313;
	8'b0000_0110: read_data <= 16'hFE7D;
	8'b0000_0111: read_data <= 16'h66;
	8'b0000_1000: read_data <= 16'hFFF1;
	
	/* Second Scale --> 193.1 Hz*/
	8'b0000_1001: read_data <= 16'h001A;
	8'b0000_1010: read_data <= 16'hFEF1;
	8'b0000_1011: read_data <= 16'h05CF;
	8'b0000_1100: read_data <= 16'hEEB8;
	8'b0000_1101: read_data <= 16'h1BC4;
	8'b0000_1110: read_data <= 16'hE7DE;
	8'b0000_1111: read_data <= 16'h0B56;
	8'b0001_0000: read_data <= 16'hFD1E;
	8'b0001_0001: read_data <= 16'h0064;
	
	/* Third Scale --> 93 Hz*/
	8'b0001_0010: read_data <= 16'h0006;
	8'b0001_0011: read_data <= 16'hFFAD;
	8'b0001_0100: read_data <= 16'h0228;
	8'b0001_0101: read_data <= 16'hF838;
	8'b0001_0110: read_data <= 16'h0F2B;
	8'b0001_0111: read_data <= 16'hF001;
	8'b0001_1000: read_data <= 16'h091E;
	8'b0001_1001: read_data <= 16'hFD30;
	8'b0001_1010: read_data <= 16'h0077;
	8'b0001_1011: read_data <= 16'hFFF5;
	8'b0001_1100: read_data <= 16'h0000;
	
	/* Fourth scale -->  10.4 Hz*/
	8'b0001_1101: read_data <= 16'h0000;
	8'b0001_1110: read_data <= 16'hFFFE;
	8'b0001_1111: read_data <= 16'h000F;
	8'b0010_0000: read_data <= 16'hFFA4;
	8'b0010_0001: read_data <= 16'h0121;
	8'b0010_0010: read_data <= 16'hFE12;
	8'b0010_0011: read_data <= 16'h01C3;
	8'b0010_0100: read_data <= 16'hFF21;
	8'b0010_0101: read_data <= 16'h003A;
	8'b0010_0110: read_data <= 16'hFFF7;
	8'b0010_0111: read_data <= 16'h0000;
	
	/* Fifth Scale --> 8.6 Hz*/
	8'b0010_1000: read_data <= 16'hFFFE;
	8'b0010_1001: read_data <= 16'h0012;
	8'b0010_1010: read_data <= 16'hFF9D;
	8'b0010_1011: read_data <= 16'h0117;
	8'b0010_1100: read_data <= 16'hFE57;
	8'b0010_1101: read_data <= 16'h0159;
	8'b0010_1110: read_data <= 16'hFF68;
	8'b0010_1111: read_data <= 16'h0023;
	8'b0011_0000: read_data <= 16'hFFFB;
	
	/* Sixth Scale --> 7.2 Hz*/
	8'b0011_0001: read_data <= 16'hFFFF;
	8'b0011_0010: read_data <= 16'h000A;
	8'b0011_0011: read_data <= 16'hFFC1;
	8'b0011_0100: read_data <= 16'h00C8;
	8'b0011_0101: read_data <= 16'hFEA7;
	8'b0011_0110: read_data <= 16'h013A;
	8'b0011_0111: read_data <= 16'hFF65;
	8'b0011_1000: read_data <= 16'h0028;
	8'b0011_1001: read_data <= 16'hFFFA;
	
	/* Seventh Scale --> 6 Hz*/
	8'b0011_1010: read_data <= 16'h0002;
	8'b0011_1011: read_data <= 16'hFFE9;
	8'b0011_1100: read_data <= 16'h0064;
	8'b0011_1101: read_data <= 16'hFF12;
	8'b0011_1110: read_data <= 16'h0129;
	8'b0011_1111: read_data <= 16'hFF39;
	8'b0100_0000: read_data <= 16'h0046;
	8'b0100_0001: read_data <= 16'hFFF2;
	8'b0100_0010: read_data <= 16'h0001;
	
	/* Eigth Scale --> 5 Hz*/
	8'b0100_0011: read_data <= 16'hFFFC;
	8'b0100_0100: read_data <= 16'h001B;
	8'b0100_0101: read_data <= 16'hFF93;
	8'b0100_0110: read_data <= 16'h00DE;
	8'b0100_0111: read_data <= 16'hFF10;
	8'b0100_1000: read_data <= 16'h0088;
	8'b0100_1001: read_data <= 16'hFFD6;
	8'b0100_1010: read_data <= 16'h0006;
	8'b0100_1011: read_data <= 16'hFFFF;
	
	/*Ninth Scale --> 4.2 Hz*/
	8'b0100_1100: read_data <= 16'h0002;
	8'b0100_1101: read_data <= 16'hFFE9;
	8'b0100_1110: read_data <= 16'h005B;
	8'b0100_1111: read_data <= 16'hFF44;
	8'b0101_0000: read_data <= 16'h00C8;
	8'b0101_0001: read_data <= 16'hFF8F;
	8'b0101_0010: read_data <= 16'h0021;
	8'b0101_0011: read_data <= 16'hFFFA;
	8'b0101_0100: read_data <= 16'h0000;

	/*Tenth Scale --> 3.5 Hz*/
	8'b0101_0101: read_data <= 16'hFFFE;
	8'b0101_0110: read_data <= 16'h000C;
	8'b0101_0111: read_data <= 16'hFFC1;
	8'b0101_1000: read_data <= 16'h0092;
	8'b0101_1001: read_data <= 16'hFF51;
	8'b0101_1010: read_data <= 16'h006B;
	8'b0101_1011: read_data <= 16'hFFDC;
	8'b0101_1100: read_data <= 16'h0005;
	8'b0101_1101: read_data <= 16'hFFFF;
	
	/*Eleventh Scale --> 2.9 Hz*/
	8'b0101_1110: read_data <= 16'h0000;
	8'b0101_1111: read_data <= 16'hFFFB;
	8'b0110_0000: read_data <= 16'h0020;
	8'b0110_0001: read_data <= 16'hFF9B;
	8'b0110_0010: read_data <= 16'h0095;
	8'b0110_0011: read_data <= 16'hFF8E;
	8'b0110_0100: read_data <= 16'h002C;
	8'b0110_0101: read_data <= 16'hFFF6;
	
	/*Twelveth scale --> 2.4 Hz*/
	8'b0110_0110: read_data <= 16'h0000;
	8'b0110_0111: read_data <= 16'hFFF5;	
	8'b0110_1000: read_data <= 16'h0036;
	8'b0110_1001: read_data <= 16'hFF8C;
	8'b0110_1010: read_data <= 16'h0076;
	8'b0110_1011: read_data <= 16'hFFC2;
	8'b0110_1100: read_data <= 16'h0010;
	8'b0110_1101: read_data <= 16'hFFFD;
	
	/*Thirthenth Scale --> 2 Hz*/
	8'b0110_1110: read_data <= 16'hFFFF;
	8'b0110_1111: read_data <= 16'hFFED;
	8'b0111_0000: read_data <= 16'h0046;
	8'b0111_0001: read_data <= 16'hFF92;
	8'b0111_0010: read_data <= 16'h0051;
	8'b0111_0011: read_data <= 16'hFFE1;
	8'b0111_0100: read_data <= 16'h0005;
	8'b0111_0101: read_data <= 16'hFFFF;
	
	/* Fourteenth Scale --> 1.7 Hz*/
	8'b0111_0110: read_data <= 16'hFFFF;
	8'b0111_0111: read_data <= 16'hFFE5;
	8'b0111_1000: read_data <= 16'h004C;
	8'b0111_1001: read_data <= 16'hFFA4;
	8'b0111_1010: read_data <= 16'h0034;
	8'b0111_1011: read_data <= 16'hFFF0;
	8'b0111_1100: read_data <= 16'h0002;
	8'b0111_1101: read_data <= 16'hFFFF;
	
	/*Fifteenth Scale --> 1.4 Hz*/
	8'b0111_1110: read_data <= 16'h0000;
	8'b0111_1111: read_data <= 16'hFFDF;
	8'b1000_0000: read_data <= 16'h004C;
	8'b1000_0001: read_data <= 16'hFFB7;
	8'b1000_0010: read_data <= 16'h0021;
	8'b1000_0011: read_data <= 16'hFFF8;
	8'b1000_0100: read_data <= 16'h0000;
	8'b1000_0101: read_data <= 16'hFFFF;
	
	default : read_data <= 16'h0000;
	endcase
end


endmodule
