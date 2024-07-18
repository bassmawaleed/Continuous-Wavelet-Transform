/* This verilog file describes the content of ROM which --*/
/*-- stores the frequency samples of the wavelet transform*/
/* Multiple ROMs are used. This ROM describes different values of scales */
/* Authors : Basma Walid - Preprocessing Team */

module cwt_fft_ROM_real (
input clk,
input wire [7:0] addr ,
output reg [15:0] read_data 
);


always@(posedge clk)
begin
	case(addr)
	/* First Scale --> 1000 Hz*/
	8'b0000_0000: read_data <= 16'hFFE4; 
	8'b0000_0001: read_data <= 16'h011A; 
	8'b0000_0010: read_data <= 16'hF9EC; 
	8'b0000_0011: read_data <= 16'h121C; 
	8'b0000_0100: read_data <= 16'hE2D1; 
	8'b0000_0101: read_data <= 16'h196C;
	8'b0000_0110: read_data <= 16'hF406;
	8'b0000_0111: read_data <= 16'h030D;
	8'b0000_1000: read_data <= 16'hFF94;
	
	/* Second Scale --> 193.1 Hz*/
	8'b0000_1001: read_data <= 16'h0009;
	8'b0000_1010: read_data <= 16'hFF9C;
	8'b0000_1011: read_data <= 16'h0218;
	8'b0000_1100: read_data <= 16'hF9DD;
	8'b0000_1101: read_data <= 16'h09B4;
	8'b0000_1110: read_data <= 16'hF7B3;
	8'b0000_1111: read_data <= 16'h03D5;
	8'b0001_0000: read_data <= 16'hFF0A;
	8'b0001_0001: read_data <= 16'h0021;
	
	/* Third Scale --> 93 Hz*/
	8'b0001_0010: read_data <= 16'h000A;
	8'b0001_0011: read_data <= 16'hFF81;
	8'b0001_0100: read_data <= 16'h0347;
	8'b0001_0101: read_data <= 16'hF44F;
	8'b0001_0110: read_data <= 16'h168D;
	8'b0001_0111: read_data <= 16'hE87A;
	8'b0001_1000: read_data <= 16'h0D43;
	8'b0001_1001: read_data <= 16'hFBF4;
	8'b0001_1010: read_data <= 16'h00AA;
	8'b0001_1011: read_data <= 16'hFFF0;
	8'b0001_1100: read_data <= 16'h0000;
	
	/* Fourth scale -->  10.4 Hz*/
	8'b0001_1101: read_data <= 16'h0001;
	8'b0001_1110: read_data <= 16'hFFE1;
	8'b0001_1111: read_data <= 16'h0134;
	8'b0010_0000: read_data <= 16'hF989;
	8'b0010_0001: read_data <= 16'h12C8;
	8'b0010_0010: read_data <= 16'hE27E;
	8'b0010_0011: read_data <= 16'h1910;
	8'b0010_0100: read_data <= 16'hF47D;
	8'b0010_0101: read_data <= 16'h02DC;
	8'b0010_0110: read_data <= 16'hFF9E;
	8'b0010_0111: read_data <= 16'h0000;
	
	/* Fifth Scale --> 8.6 Hz*/
	8'b0010_1000: read_data <= 16'hFFCB;
	8'b0010_1001: read_data <= 16'h01CE;
	8'b0010_1010: read_data <= 16'hF77B;
	8'b0010_1011: read_data <= 16'h15C0;
	8'b0010_1100: read_data <= 16'hE1FA;
	8'b0010_1101: read_data <= 16'h166A;
	8'b0010_1110: read_data <= 16'hF6F4;
	8'b0010_1111: read_data <= 16'h01F9;
	8'b0011_0000: read_data <= 16'hFFC4;
	
	/* Sixth Scale --> 7.2 Hz*/
	8'b0011_0001: read_data <= 16'hFFDC;
	8'b0011_0010: read_data <= 16'h0155;
	8'b0011_0011: read_data <= 16'hF910;
	8'b0011_0100: read_data <= 16'h1388;
	8'b0011_0101: read_data <= 16'hE244;
	8'b0011_0110: read_data <= 16'h1879;
	8'b0011_0111: read_data <= 16'hF51C;
	8'b0011_1000: read_data <= 16'h029F;
	8'b0011_1001: read_data <= 16'hFFA9;
	
	/* Seventh Scale --> 6 Hz*/
	8'b0011_1010: read_data <= 16'h007F;
	8'b0011_1011: read_data <= 16'hFC87;
	8'b0011_1100: read_data <= 16'h0D03;
	8'b0011_1101: read_data <= 16'hE59A;
	8'b0011_1110: read_data <= 16'h1CF0;
	8'b0011_1111: read_data <= 16'hEED7;
	8'b0100_0000: read_data <= 16'h057F;
	8'b0100_0001: read_data <= 16'hFF0C;
	8'b0100_0010: read_data <= 16'h0016;
	
	/* Eigth Scale --> 5 Hz*/
	8'b0100_0011: read_data <= 16'hFF16;
	8'b0100_0100: read_data <= 16'h0554;
	8'b0100_0101: read_data <= 16'hEF26;
	8'b0100_0110: read_data <= 16'h1CCE;
	8'b0100_0111: read_data <= 16'hE55E;
	8'b0100_1000: read_data <= 16'h0D4F;
	8'b0100_1001: read_data <= 16'hFC66;
	8'b0100_1010: read_data <= 16'h0086;
	8'b0100_1011: read_data <= 16'hFFF5;
	
	/*Ninth Scale --> 4.2 Hz*/
	8'b0100_1100: read_data <= 16'h010A;
	8'b0100_1101: read_data <= 16'hFA27;
	8'b0100_1110: read_data <= 16'h11C4;
	8'b0100_1111: read_data <= 16'hE2CC;
	8'b0101_0000: read_data <= 16'h19F3;
	8'b0101_0001: read_data <= 16'hF388;
	8'b0101_0010: read_data <= 16'h033D;
	8'b0101_0011: read_data <= 16'hFF8B;
	8'b0101_0100: read_data <= 16'h0009;

	/*Tenth Scale --> 3.5 Hz*/
	8'b0101_0101: read_data <= 16'hFF2D;
	8'b0101_0110: read_data <= 16'h04F4;
	8'b0101_0111: read_data <= 16'hEFD8;
	8'b0101_1000: read_data <= 16'h1C78;
	8'b0101_1001: read_data <= 16'hE4DE;
	8'b0101_1010: read_data <= 16'h0DFA;
	8'b0101_1011: read_data <= 16'hFC1A;
	8'b0101_1100: read_data <= 16'h95;
	8'b0101_1101: read_data <= 16'hFFF3;
	
	/*Eleventh Scale --> 2.9 Hz*/
	8'b0101_1110: read_data <= 16'h0076;
	8'b0101_1111: read_data <= 16'hFCB6;
	8'b0110_0000: read_data <= 16'h0C95;
	8'b0110_0001: read_data <= 16'hE5F2;
	8'b0110_0010: read_data <= 16'h1D28;
	8'b0110_0011: read_data <= 16'hEE5A;
	8'b0110_0100: read_data <= 16'h05C5;
	8'b0110_0101: read_data <= 16'hFEFA;
	
	/*Twelveth scale --> 2.4 Hz*/
	8'b0110_0110: read_data <= 16'h01AA;
	8'b0110_0111: read_data <= 16'hF7ED;	
	8'b0110_1000: read_data <= 16'h152D;
	8'b0110_1001: read_data <= 16'hE1F8;
	8'b0110_1010: read_data <= 16'h1707;
	8'b0110_1011: read_data <= 16'hF674;
	8'b0110_1100: read_data <= 16'h224;
	8'b0110_1101: read_data <= 16'hFFBD;
	
	/*Thirthenth Scale --> 2 Hz*/
	8'b0110_1110: read_data <= 16'h0409;
	8'b0110_1111: read_data <= 16'hF1B6;
	8'b0111_0000: read_data <= 16'h1B59;
	8'b0111_0001: read_data <= 16'hE3B2;
	8'b0111_0010: read_data <= 16'h0FD6;
	8'b0111_0011: read_data <= 16'hFB35;
	8'b0111_0100: read_data <= 16'h00C8;
	8'b0111_0101: read_data <= 16'hFFEE;
	
	/* Fourteenth Scale --> 1.7 Hz*/
	8'b0111_0110: read_data <= 16'h0776;
	8'b0111_0111: read_data <= 16'hEBAC;
	8'b0111_1000: read_data <= 16'h1DEB;
	8'b0111_1001: read_data <= 16'hE82E;
	8'b0111_1010: read_data <= 16'h0A3F;
	8'b0111_1011: read_data <= 16'hFD9C;
	8'b0111_1100: read_data <= 16'h004C;
	8'b0111_1101: read_data <= 16'hFFFA;
	
	/*Fifteenth Scale --> 1.4 Hz*/
	8'b0111_1110: read_data <= 16'h0B6F;
	8'b0111_1111: read_data <= 16'hE6F9;
	8'b1000_0000: read_data <= 16'h1D9A;
	8'b1000_0001: read_data <= 16'hED0F;
	8'b1000_0010: read_data <= 16'h068C;
	8'b1000_0011: read_data <= 16'hFEC6;
	8'b1000_0100: read_data <= 16'h001F;
	8'b1000_0101: read_data <= 16'hFFFE;
	
	default : read_data <= 16'h0000;
	endcase
end


endmodule
