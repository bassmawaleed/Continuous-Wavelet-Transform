module FFT_Time_Share_Top_Module_tb();
	
	
	/* Parameters */
	parameter Clock_Period = 4 ;
	parameter BITS =16;
	/* FIRST : Define the testbench signals */
	///////////// Inputs /////////////
    reg ready_inputs_tb ;
    reg clk_tb;
    reg rst_tb;
    reg [BITS-1 : 0 ] x0_r_tb ;
    reg [BITS-1 : 0 ] x0_i_tb ;
    reg [BITS-1 : 0 ] x1_r_tb ;
    reg [BITS-1 : 0 ] x1_i_tb ;
    reg [BITS-1 : 0 ] x2_r_tb ;
    reg [BITS-1 : 0 ] x2_i_tb;
    reg [BITS-1 : 0 ] x3_r_tb ;
    reg [BITS-1 : 0 ] x3_i_tb ;
    reg [BITS-1 : 0 ] x4_r_tb ;
    reg [BITS-1 : 0 ] x4_i_tb ;
    reg [BITS-1 : 0 ] x5_r_tb ;
    reg [BITS-1 : 0 ] x5_i_tb ;
    reg [BITS-1 : 0 ] x6_r_tb ;
    reg [BITS-1 : 0 ] x6_i_tb ;
    reg[BITS-1 : 0 ] x7_r_tb ;
    reg [BITS-1 : 0 ] x7_i_tb;
    reg [BITS-1 : 0 ] x8_r_tb;
    reg [BITS-1 : 0 ] x8_i_tb;
    reg [BITS-1 : 0 ] x9_r_tb;
    reg [BITS-1 : 0 ] x9_i_tb;
    reg [BITS-1 : 0 ] x10_r_tb;
    reg [BITS-1 : 0 ] x10_i_tb;
    reg [BITS-1 : 0 ] x11_r_tb;
    reg [BITS-1 : 0 ] x11_i_tb;
    reg [BITS-1 : 0 ] x12_r_tb;
    reg [BITS-1 : 0 ] x12_i_tb;
    reg [BITS-1 : 0 ] x13_r_tb;
    reg [BITS-1 : 0 ] x13_i_tb;
    reg [BITS-1 : 0 ] x14_r_tb;
    reg [BITS-1 : 0 ] x14_i_tb;
    reg [BITS-1 : 0 ] x15_r_tb;
    reg [BITS-1 : 0 ] x15_i_tb;
    reg [BITS-1 : 0 ] x16_r_tb ;
    reg [BITS-1 : 0 ] x16_i_tb ;
    reg [BITS-1 : 0 ] x17_r_tb ;
    reg [BITS-1 : 0 ] x17_i_tb ;
    reg [BITS-1 : 0 ] x18_r_tb ;
    reg [BITS-1 : 0 ] x18_i_tb;
    reg [BITS-1 : 0 ] x19_r_tb ;
    reg [BITS-1 : 0 ] x19_i_tb ;
    reg [BITS-1 : 0 ] x20_r_tb ;
    reg [BITS-1 : 0 ] x20_i_tb ;
    reg [BITS-1 : 0 ] x21_r_tb ;
    reg [BITS-1 : 0 ] x21_i_tb ;
    reg [BITS-1 : 0 ] x22_r_tb ;
    reg [BITS-1 : 0 ] x22_i_tb ;
    reg [BITS-1 : 0 ] x23_r_tb ;
    reg [BITS-1 : 0 ] x23_i_tb ;
    reg[BITS-1 : 0 ] x24_r_tb ;
    reg [BITS-1 : 0 ] x24_i_tb;
    reg [BITS-1 : 0 ] x25_r_tb;
    reg [BITS-1 : 0 ] x25_i_tb;
    reg [BITS-1 : 0 ] x26_r_tb;
    reg [BITS-1 : 0 ] x26_i_tb;
    reg [BITS-1 : 0 ] x27_r_tb;
    reg [BITS-1 : 0 ] x27_i_tb;
    reg [BITS-1 : 0 ] x28_r_tb;
    reg [BITS-1 : 0 ] x28_i_tb;
    reg [BITS-1 : 0 ] x29_r_tb;
    reg [BITS-1 : 0 ] x29_i_tb;
    reg [BITS-1 : 0 ] x30_r_tb;
    reg [BITS-1 : 0 ] x30_i_tb;
    reg [BITS-1 : 0 ] x31_r_tb;
    reg[BITS-1 : 0 ] x31_i_tb;
    reg [BITS-1 : 0 ] x32_r_tb;
    reg [BITS-1 : 0 ] x32_i_tb;
    reg [BITS-1 : 0 ] x33_r_tb ;
    reg [BITS-1 : 0 ] x33_i_tb ;
    reg [BITS-1 : 0 ] x34_r_tb ;
    reg [BITS-1 : 0 ] x34_i_tb ;
    reg [BITS-1 : 0 ] x35_r_tb ;
    reg [BITS-1 : 0 ] x35_i_tb;
    reg [BITS-1 : 0 ] x36_r_tb ;
    reg [BITS-1 : 0 ] x36_i_tb ;
    reg [BITS-1 : 0 ] x37_r_tb ;
    reg [BITS-1 : 0 ] x37_i_tb ;
    reg [BITS-1 : 0 ] x38_r_tb ;
    reg [BITS-1 : 0 ] x38_i_tb ;
    reg [BITS-1 : 0 ] x39_r_tb ;
    reg [BITS-1 : 0 ] x39_i_tb ;
    reg[BITS-1 : 0 ] x40_r_tb ;
    reg [BITS-1 : 0 ] x40_i_tb;
    reg [BITS-1 : 0 ] x41_r_tb;
    reg [BITS-1 : 0 ] x41_i_tb;
    reg [BITS-1 : 0 ] x42_r_tb;
    reg [BITS-1 : 0 ] x42_i_tb;
    reg [BITS-1 : 0 ] x43_r_tb;
    reg [BITS-1 : 0 ] x43_i_tb;
    reg [BITS-1 : 0 ] x44_r_tb;
    reg [BITS-1 : 0 ] x44_i_tb;
    reg [BITS-1 : 0 ] x45_r_tb;
    reg [BITS-1 : 0 ] x45_i_tb;
    reg [BITS-1 : 0 ] x46_r_tb;
    reg [BITS-1 : 0 ] x46_i_tb;
    reg [BITS-1 : 0 ] x47_r_tb;
    reg[BITS-1 : 0 ] x47_i_tb;
    reg [BITS-1 : 0 ] x48_r_tb;
    reg [BITS-1 : 0 ] x48_i_tb;
    reg [BITS-1 : 0 ] x49_r_tb ;
    reg [BITS-1 : 0 ] x49_i_tb ;
    reg [BITS-1 : 0 ] x50_r_tb ;
    reg [BITS-1 : 0 ] x50_i_tb ;
    reg [BITS-1 : 0 ] x51_r_tb ;
    reg [BITS-1 : 0 ] x51_i_tb;
    reg [BITS-1 : 0 ] x52_r_tb ;
    reg [BITS-1 : 0 ] x52_i_tb ;
    reg [BITS-1 : 0 ] x53_r_tb ;
    reg [BITS-1 : 0 ] x53_i_tb ;
    reg [BITS-1 : 0 ] x54_r_tb ;
    reg [BITS-1 : 0 ] x54_i_tb ;
    reg [BITS-1 : 0 ] x55_r_tb ;
    reg [BITS-1 : 0 ] x55_i_tb ;
    reg[BITS-1 : 0 ] x56_r_tb ;
    reg [BITS-1 : 0 ] x56_i_tb;
    reg [BITS-1 : 0 ] x57_r_tb;
    reg [BITS-1 : 0 ] x57_i_tb;
    reg [BITS-1 : 0 ] x58_r_tb;
    reg [BITS-1 : 0 ] x58_i_tb;
    reg [BITS-1 : 0 ] x59_r_tb;
    reg [BITS-1 : 0 ] x59_i_tb;
    reg [BITS-1 : 0 ] x60_r_tb;
    reg [BITS-1 : 0 ] x60_i_tb;
    reg [BITS-1 : 0 ] x61_r_tb;
    reg [BITS-1 : 0 ] x61_i_tb;
    reg [BITS-1 : 0 ] x62_r_tb;
    reg [BITS-1 : 0 ] x62_i_tb;
    reg [BITS-1 : 0 ] x63_r_tb;
    reg [BITS-1 : 0 ] x63_i_tb;
    reg [BITS-1 : 0 ] x64_r_tb;
    reg [BITS-1 : 0 ] x64_i_tb;
    reg [BITS-1 : 0 ] x65_r_tb ;
    reg [BITS-1 : 0 ] x65_i_tb ;
    reg [BITS-1 : 0 ] x66_r_tb ;
    reg [BITS-1 : 0 ] x66_i_tb ;
    reg [BITS-1 : 0 ] x67_r_tb ;
    reg [BITS-1 : 0 ] x67_i_tb;
    reg [BITS-1 : 0 ] x68_r_tb ;
    reg  [BITS-1 : 0 ] x68_i_tb ;
    reg [BITS-1 : 0 ] x69_r_tb ;
    reg [BITS-1 : 0 ] x69_i_tb ;
    reg [BITS-1 : 0 ] x70_r_tb ;
    reg [BITS-1 : 0 ] x70_i_tb ;
    reg [BITS-1 : 0 ] x71_r_tb ;
    reg [BITS-1 : 0 ] x71_i_tb ;
    reg [BITS-1 : 0 ] x72_r_tb ;
    reg [BITS-1 : 0 ] x72_i_tb;
    reg [BITS-1 : 0 ] x73_r_tb;
    reg [BITS-1 : 0 ] x73_i_tb;
    reg [BITS-1 : 0 ] x74_r_tb;
    reg [BITS-1 : 0 ] x74_i_tb;
    reg [BITS-1 : 0 ] x75_r_tb;
    reg [BITS-1 : 0 ] x75_i_tb;
    reg [BITS-1 : 0 ] x76_r_tb;
    reg [BITS-1 : 0 ] x76_i_tb;
    reg [BITS-1 : 0 ] x77_r_tb;
    reg [BITS-1 : 0 ] x77_i_tb;
    reg [BITS-1 : 0 ] x78_r_tb;
    reg [BITS-1 : 0 ] x78_i_tb;
    reg [BITS-1 : 0 ] x79_r_tb;
    reg [BITS-1 : 0 ] x79_i_tb;
    reg [BITS-1 : 0 ] x80_r_tb;
    reg [BITS-1 : 0 ] x80_i_tb;
    reg [BITS-1 : 0 ] x81_r_tb ;
    reg [BITS-1 : 0 ] x81_i_tb ;
    reg [BITS-1 : 0 ] x82_r_tb ;
    reg [BITS-1 : 0 ] x82_i_tb ;
    reg [BITS-1 : 0 ] x83_r_tb ;
    reg [BITS-1 : 0 ] x83_i_tb;
    reg [BITS-1 : 0 ] x84_r_tb ;
    reg [BITS-1 : 0 ] x84_i_tb ;
    reg [BITS-1 : 0 ] x85_r_tb ;
    reg [BITS-1 : 0 ] x85_i_tb ;
    reg [BITS-1 : 0 ] x86_r_tb ;
    reg [BITS-1 : 0 ] x86_i_tb ;
    reg [BITS-1 : 0 ] x87_r_tb ;
    reg [BITS-1 : 0 ] x87_i_tb ;
    reg[BITS-1 : 0 ] x88_r_tb ;
    reg [BITS-1 : 0 ] x88_i_tb;
    reg [BITS-1 : 0 ] x89_r_tb;
    reg [BITS-1 : 0 ] x89_i_tb;
    reg [BITS-1 : 0 ] x90_r_tb;
    reg [BITS-1 : 0 ] x90_i_tb;
    reg [BITS-1 : 0 ] x91_r_tb;
    reg [BITS-1 : 0 ] x91_i_tb;
    reg [BITS-1 : 0 ] x92_r_tb;
    reg [BITS-1 : 0 ] x92_i_tb;
    reg [BITS-1 : 0 ] x93_r_tb;
    reg [BITS-1 : 0 ] x93_i_tb;
    reg [BITS-1 : 0 ] x94_r_tb;
    reg [BITS-1 : 0 ] x94_i_tb;
    reg [BITS-1 : 0 ] x95_r_tb;
    reg [BITS-1 : 0 ] x95_i_tb;
    reg [BITS-1 : 0 ] x96_r_tb;
    reg [BITS-1 : 0 ] x96_i_tb;
    reg [BITS-1 : 0 ] x97_r_tb ;
    reg [BITS-1 : 0 ] x97_i_tb ;
    reg [BITS-1 : 0 ] x98_r_tb ;
    reg [BITS-1 : 0 ] x98_i_tb ;
    reg [BITS-1 : 0 ] x99_r_tb ;
    reg [BITS-1 : 0 ] x99_i_tb;
    reg [BITS-1 : 0 ] x100_r_tb ;
    reg [BITS-1 : 0 ] x100_i_tb ;
    reg [BITS-1 : 0 ] x101_r_tb ;
    reg [BITS-1 : 0 ] x101_i_tb ;
    reg [BITS-1 : 0 ] x102_r_tb ;
    reg [BITS-1 : 0 ] x102_i_tb ;
    reg [BITS-1 : 0 ] x103_r_tb ;
    reg [BITS-1 : 0 ] x103_i_tb ;
    reg [BITS-1 : 0 ] x104_r_tb ;
    reg [BITS-1 : 0 ] x104_i_tb;
    reg [BITS-1 : 0 ] x105_r_tb;
    reg [BITS-1 : 0 ] x105_i_tb;
    reg [BITS-1 : 0 ] x106_r_tb;
    reg [BITS-1 : 0 ] x106_i_tb;
    reg [BITS-1 : 0 ] x107_r_tb;
    reg [BITS-1 : 0 ] x107_i_tb;
    reg [BITS-1 : 0 ] x108_r_tb;
    reg [BITS-1 : 0 ] x108_i_tb;
    reg [BITS-1 : 0 ] x109_r_tb;
    reg [BITS-1 : 0 ] x109_i_tb;
    reg [BITS-1 : 0 ] x110_r_tb;
    reg [BITS-1 : 0 ] x110_i_tb;
    reg [BITS-1 : 0 ] x111_r_tb;
    reg [BITS-1 : 0 ] x111_i_tb;
    reg [BITS-1 : 0 ] x112_r_tb;
    reg [BITS-1 : 0 ] x112_i_tb;
    reg [BITS-1 : 0 ] x113_r_tb ;
    reg [BITS-1 : 0 ] x113_i_tb ;
    reg [BITS-1 : 0 ] x114_r_tb ;
    reg [BITS-1 : 0 ] x114_i_tb ;
    reg [BITS-1 : 0 ] x115_r_tb ;
    reg [BITS-1 : 0 ] x115_i_tb;
    reg [BITS-1 : 0 ] x116_r_tb ;
    reg [BITS-1 : 0 ] x116_i_tb ;
    reg [BITS-1 : 0 ] x117_r_tb ;
    reg [BITS-1 : 0 ] x117_i_tb ;
    reg [BITS-1 : 0 ] x118_r_tb ;
    reg [BITS-1 : 0 ] x118_i_tb ;
    reg [BITS-1 : 0 ] x119_r_tb ;
    reg [BITS-1 : 0 ] x119_i_tb ;
    reg [BITS-1 : 0 ] x120_r_tb ;
    reg [BITS-1 : 0 ] x120_i_tb;
    reg [BITS-1 : 0 ] x121_r_tb;
    reg [BITS-1 : 0 ] x121_i_tb;
    reg [BITS-1 : 0 ] x122_r_tb;
    reg [BITS-1 : 0 ] x122_i_tb;
    reg [BITS-1 : 0 ] x123_r_tb;
    reg [BITS-1 : 0 ] x123_i_tb;
    reg [BITS-1 : 0 ] x124_r_tb;
    reg [BITS-1 : 0 ] x124_i_tb;
    reg [BITS-1 : 0 ] x125_r_tb;
    reg [BITS-1 : 0 ] x125_i_tb;
    reg [BITS-1 : 0 ] x126_r_tb;
    reg [BITS-1 : 0 ] x126_i_tb;
    reg [BITS-1 : 0 ] x127_r_tb;
    reg [BITS-1 : 0 ] x127_i_tb;



    wire correct;
    wire [BITS-1 : 0 ] X0_r_tb;
    wire [BITS-1 : 0 ] X0_i_tb;
    wire [BITS-1 : 0 ] X1_r_tb;
    wire [BITS-1 : 0 ] X1_i_tb;
    wire [BITS-1 : 0 ] X2_r_tb;
    wire [BITS-1 : 0 ] X2_i_tb;
    wire [BITS-1 : 0 ] X3_r_tb;
    wire [BITS-1 : 0 ] X3_i_tb;
    wire [BITS-1 : 0 ] X4_r_tb;
    wire [BITS-1 : 0 ] X4_i_tb;
    wire [BITS-1 : 0 ] X5_r_tb;
    wire [BITS-1 : 0 ] X5_i_tb;
    wire [BITS-1 : 0 ] X6_r_tb;
    wire [BITS-1 : 0 ] X6_i_tb;
    wire [BITS-1 : 0 ] X7_r_tb;
    wire [BITS-1 : 0 ] X7_i_tb;
    wire [BITS-1 : 0 ] X8_r_tb;
    wire [BITS-1 : 0 ] X8_i_tb;
    wire [BITS-1 : 0 ] X9_r_tb;
    wire [BITS-1 : 0 ] X9_i_tb;
    wire [BITS-1 : 0 ] X10_r_tb;
    wire [BITS-1 : 0 ] X10_i_tb;
    wire [BITS-1 : 0 ] X11_r_tb;
    wire [BITS-1 : 0 ] X11_i_tb;
    wire [BITS-1 : 0 ] X12_r_tb;
    wire [BITS-1 : 0 ] X12_i_tb;
    wire [BITS-1 : 0 ] X13_r_tb;
    wire [BITS-1 : 0 ] X13_i_tb;
    wire [BITS-1 : 0 ] X14_r_tb;
    wire [BITS-1 : 0 ] X14_i_tb;
    wire [BITS-1 : 0 ] X15_r_tb;
    wire [BITS-1 : 0 ] X15_i_tb;
    wire [BITS-1 : 0 ] X16_r_tb;
    wire [BITS-1 : 0 ] X16_i_tb;
    wire [BITS-1 : 0 ] X17_r_tb;
    wire [BITS-1 : 0 ] X17_i_tb;
    wire [BITS-1 : 0 ] X18_r_tb;
    wire [BITS-1 : 0 ] X18_i_tb;
    wire [BITS-1 : 0 ] X19_r_tb;
    wire [BITS-1 : 0 ] X19_i_tb;
    wire [BITS-1 : 0 ] X20_r_tb;
    wire [BITS-1 : 0 ] X20_i_tb;
    wire [BITS-1 : 0 ] X21_r_tb;
    wire [BITS-1 : 0 ] X21_i_tb;
    wire [BITS-1 : 0 ] X22_r_tb;
    wire [BITS-1 : 0 ] X22_i_tb;
    wire [BITS-1 : 0 ] X23_r_tb;
    wire [BITS-1 : 0 ] X23_i_tb;
    wire [BITS-1 : 0 ] X24_r_tb;
    wire [BITS-1 : 0 ] X24_i_tb;
    wire [BITS-1 : 0 ] X25_r_tb;
    wire [BITS-1 : 0 ] X25_i_tb;
    wire [BITS-1 : 0 ] X26_r_tb;
    wire [BITS-1 : 0 ] X26_i_tb;
    wire [BITS-1 : 0 ] X27_r_tb;
    wire [BITS-1 : 0 ] X27_i_tb;
    wire [BITS-1 : 0 ] X28_r_tb;
    wire [BITS-1 : 0 ] X28_i_tb;
    wire [BITS-1 : 0 ] X29_r_tb;
    wire [BITS-1 : 0 ] X29_i_tb;
    wire [BITS-1 : 0 ] X30_r_tb;
    wire [BITS-1 : 0 ] X30_i_tb;
    wire [BITS-1 : 0 ] X31_r_tb;
    wire [BITS-1 : 0 ] X31_i_tb;
    wire [BITS-1 : 0 ] X32_r_tb;
    wire [BITS-1 : 0 ] X32_i_tb;
    wire [BITS-1 : 0 ] X33_r_tb;
    wire [BITS-1 : 0 ] X33_i_tb;
    wire [BITS-1 : 0 ] X34_r_tb;
    wire [BITS-1 : 0 ] X34_i_tb;
    wire [BITS-1 : 0 ] X35_r_tb;
    wire [BITS-1 : 0 ] X35_i_tb;
    wire [BITS-1 : 0 ] X36_r_tb;
    wire [BITS-1 : 0 ] X36_i_tb;
    wire [BITS-1 : 0 ] X37_r_tb;
    wire [BITS-1 : 0 ] X37_i_tb;
    wire [BITS-1 : 0 ] X38_r_tb;
    wire [BITS-1 : 0 ] X38_i_tb;
    wire [BITS-1 : 0 ] X39_r_tb;
    wire [BITS-1 : 0 ] X39_i_tb;
    wire [BITS-1 : 0 ] X40_r_tb;
    wire [BITS-1 : 0 ] X40_i_tb;
    wire [BITS-1 : 0 ] X41_r_tb;
    wire [BITS-1 : 0 ] X41_i_tb;
    wire [BITS-1 : 0 ] X42_r_tb;
    wire [BITS-1 : 0 ] X42_i_tb;
    wire [BITS-1 : 0 ] X43_r_tb;
    wire [BITS-1 : 0 ] X43_i_tb;
    wire [BITS-1 : 0 ] X44_r_tb;
    wire [BITS-1 : 0 ] X44_i_tb;
    wire [BITS-1 : 0 ] X45_r_tb;
    wire [BITS-1 : 0 ] X45_i_tb;
    wire [BITS-1 : 0 ] X46_r_tb;
    wire [BITS-1 : 0 ] X46_i_tb;
    wire [BITS-1 : 0 ] X47_r_tb;
    wire [BITS-1 : 0 ] X47_i_tb;
    wire [BITS-1 : 0 ] X48_r_tb;
    wire [BITS-1 : 0 ] X48_i_tb;
    wire [BITS-1 : 0 ] X49_r_tb;
    wire [BITS-1 : 0 ] X49_i_tb;
    wire [BITS-1 : 0 ] X50_r_tb;
    wire [BITS-1 : 0 ] X50_i_tb;
    wire [BITS-1 : 0 ] X51_r_tb;
    wire [BITS-1 : 0 ] X51_i_tb;
    wire [BITS-1 : 0 ] X52_r_tb;
    wire [BITS-1 : 0 ] X52_i_tb;
    wire [BITS-1 : 0 ] X53_r_tb;
    wire [BITS-1 : 0 ] X53_i_tb;
    wire [BITS-1 : 0 ] X54_r_tb;
    wire [BITS-1 : 0 ] X54_i_tb;
    wire [BITS-1 : 0 ] X55_r_tb;
    wire [BITS-1 : 0 ] X55_i_tb;
    wire [BITS-1 : 0 ] X56_r_tb;
    wire [BITS-1 : 0 ] X56_i_tb;
    wire [BITS-1 : 0 ] X57_r_tb;
    wire [BITS-1 : 0 ] X57_i_tb;
    wire [BITS-1 : 0 ] X58_r_tb;
    wire [BITS-1 : 0 ] X58_i_tb;
    wire [BITS-1 : 0 ] X59_r_tb;
    wire [BITS-1 : 0 ] X59_i_tb;
    wire [BITS-1 : 0 ] X60_r_tb;
    wire [BITS-1 : 0 ] X60_i_tb;
    wire [BITS-1 : 0 ] X61_r_tb;
    wire [BITS-1 : 0 ] X61_i_tb;
    wire [BITS-1 : 0 ] X62_r_tb;
    wire [BITS-1 : 0 ] X62_i_tb;
    wire [BITS-1 : 0 ] X63_r_tb;
    wire [BITS-1 : 0 ] X63_i_tb;
    wire [BITS-1 : 0 ] X64_r_tb;
    wire [BITS-1 : 0 ] X64_i_tb;
    wire [BITS-1 : 0 ] X65_r_tb;
    wire [BITS-1 : 0 ] X65_i_tb;
    wire [BITS-1 : 0 ] X66_r_tb;
    wire [BITS-1 : 0 ] X66_i_tb;
    wire [BITS-1 : 0 ] X67_r_tb;
    wire [BITS-1 : 0 ] X67_i_tb;
    wire [BITS-1 : 0 ] X68_r_tb;
    wire [BITS-1 : 0 ] X68_i_tb;
    wire [BITS-1 : 0 ] X69_r_tb;
    wire [BITS-1 : 0 ] X69_i_tb;
    wire [BITS-1 : 0 ] X70_r_tb;
    wire [BITS-1 : 0 ] X70_i_tb;
    wire [BITS-1 : 0 ] X71_r_tb;
    wire [BITS-1 : 0 ] X71_i_tb;
    wire [BITS-1 : 0 ] X72_r_tb;
    wire [BITS-1 : 0 ] X72_i_tb;
    wire [BITS-1 : 0 ] X73_r_tb;
    wire [BITS-1 : 0 ] X73_i_tb;
    wire [BITS-1 : 0 ] X74_r_tb;
    wire [BITS-1 : 0 ] X74_i_tb;
    wire [BITS-1 : 0 ] X75_r_tb;
    wire [BITS-1 : 0 ] X75_i_tb;
    wire [BITS-1 : 0 ] X76_r_tb;
    wire [BITS-1 : 0 ] X76_i_tb;
    wire [BITS-1 : 0 ] X77_r_tb;
    wire [BITS-1 : 0 ] X77_i_tb;
    wire [BITS-1 : 0 ] X78_r_tb;
    wire [BITS-1 : 0 ] X78_i_tb;
    wire [BITS-1 : 0 ] X79_r_tb;
    wire [BITS-1 : 0 ] X79_i_tb;
    wire [BITS-1 : 0 ] X80_r_tb;
    wire [BITS-1 : 0 ] X80_i_tb;
    wire [BITS-1 : 0 ] X81_r_tb;
    wire [BITS-1 : 0 ] X81_i_tb;
    wire [BITS-1 : 0 ] X82_r_tb;
    wire [BITS-1 : 0 ] X82_i_tb;
    wire [BITS-1 : 0 ] X83_r_tb;
    wire [BITS-1 : 0 ] X83_i_tb;
    wire [BITS-1 : 0 ] X84_r_tb;
    wire [BITS-1 : 0 ] X84_i_tb;
    wire [BITS-1 : 0 ] X85_r_tb;
    wire [BITS-1 : 0 ] X85_i_tb;
    wire [BITS-1 : 0 ] X86_r_tb;
    wire [BITS-1 : 0 ] X86_i_tb;
    wire [BITS-1 : 0 ] X87_r_tb;
    wire [BITS-1 : 0 ] X87_i_tb;
    wire [BITS-1 : 0 ] X88_r_tb;
    wire [BITS-1 : 0 ] X88_i_tb;
    wire [BITS-1 : 0 ] X89_r_tb;
    wire [BITS-1 : 0 ] X89_i_tb;
    wire [BITS-1 : 0 ] X90_r_tb;
    wire [BITS-1 : 0 ] X90_i_tb;
    wire [BITS-1 : 0 ] X91_r_tb;
    wire [BITS-1 : 0 ] X91_i_tb;
    wire [BITS-1 : 0 ] X92_r_tb;
    wire [BITS-1 : 0 ] X92_i_tb;
    wire [BITS-1 : 0 ] X93_r_tb;
    wire [BITS-1 : 0 ] X93_i_tb;
    wire [BITS-1 : 0 ] X94_r_tb;
    wire [BITS-1 : 0 ] X94_i_tb;
    wire [BITS-1 : 0 ] X95_r_tb;
    wire [BITS-1 : 0 ] X95_i_tb;
    wire [BITS-1 : 0 ] X96_r_tb;
    wire [BITS-1 : 0 ] X96_i_tb;
    wire [BITS-1 : 0 ] X97_r_tb;
    wire [BITS-1 : 0 ] X97_i_tb;
    wire [BITS-1 : 0 ] X98_r_tb;
    wire [BITS-1 : 0 ] X98_i_tb;
    wire [BITS-1 : 0 ] X99_r_tb;
    wire [BITS-1 : 0 ] X99_i_tb;
    wire [BITS-1 : 0 ] X100_r_tb;
    wire [BITS-1 : 0 ] X100_i_tb;
    wire [BITS-1 : 0 ] X101_r_tb;
    wire [BITS-1 : 0 ] X101_i_tb;
    wire [BITS-1 : 0 ] X102_r_tb;
    wire [BITS-1 : 0 ] X102_i_tb;
    wire [BITS-1 : 0 ] X103_r_tb;
    wire [BITS-1 : 0 ] X103_i_tb;
    wire [BITS-1 : 0 ] X104_r_tb;
    wire [BITS-1 : 0 ] X104_i_tb;
    wire [BITS-1 : 0 ] X105_r_tb;
    wire [BITS-1 : 0 ] X105_i_tb;
    wire [BITS-1 : 0 ] X106_r_tb;
    wire [BITS-1 : 0 ] X106_i_tb;
    wire [BITS-1 : 0 ] X107_r_tb;
    wire [BITS-1 : 0 ] X107_i_tb;
    wire [BITS-1 : 0 ] X108_r_tb;
    wire [BITS-1 : 0 ] X108_i_tb;
    wire [BITS-1 : 0 ] X109_r_tb;
    wire [BITS-1 : 0 ] X109_i_tb;
    wire [BITS-1 : 0 ] X110_r_tb;
    wire [BITS-1 : 0 ] X110_i_tb;
    wire [BITS-1 : 0 ] X111_r_tb;
    wire [BITS-1 : 0 ] X111_i_tb;
    wire [BITS-1 : 0 ] X112_r_tb;
    wire [BITS-1 : 0 ] X112_i_tb;
    wire [BITS-1 : 0 ] X113_r_tb;
    wire [BITS-1 : 0 ] X113_i_tb;
    wire [BITS-1 : 0 ] X114_r_tb;
    wire [BITS-1 : 0 ] X114_i_tb;
    wire [BITS-1 : 0 ] X115_r_tb;
    wire [BITS-1 : 0 ] X115_i_tb;
    wire [BITS-1 : 0 ] X116_r_tb;
    wire [BITS-1 : 0 ] X116_i_tb;
    wire [BITS-1 : 0 ] X117_r_tb;
    wire [BITS-1 : 0 ] X117_i_tb;
    wire [BITS-1 : 0 ] X118_r_tb;
    wire [BITS-1 : 0 ] X118_i_tb;
    wire [BITS-1 : 0 ] X119_r_tb;
    wire [BITS-1 : 0 ] X119_i_tb;
    wire [BITS-1 : 0 ] X120_r_tb;
    wire [BITS-1 : 0 ] X120_i_tb;
    wire [BITS-1 : 0 ] X121_r_tb;
    wire [BITS-1 : 0 ] X121_i_tb;
    wire [BITS-1 : 0 ] X122_r_tb;
    wire [BITS-1 : 0 ] X122_i_tb;
    wire [BITS-1 : 0 ] X123_r_tb;
    wire [BITS-1 : 0 ] X123_i_tb;
    wire [BITS-1 : 0 ] X124_r_tb;
    wire [BITS-1 : 0 ] X124_i_tb;
    wire [BITS-1 : 0 ] X125_r_tb;
    wire [BITS-1 : 0 ] X125_i_tb;
    wire [BITS-1 : 0 ] X126_r_tb;
    wire [BITS-1 : 0 ] X126_i_tb;
    wire [BITS-1 : 0 ] X127_r_tb;
    wire [BITS-1 : 0 ] X127_i_tb;


	/* SECOND : Instantiate the DesiXn Under Test */
	FFT_Time_Share_Top_Module  DUT (
    .ready_inputs(ready_inputs_tb),
    .clk(clk_tb),
    .rst(rst_tb),
		.x0_r(x0_r_tb),
		.x0_i(x0_i_tb),
		.x1_r(x1_r_tb),
		.x1_i(x1_i_tb),
		.x2_r(x2_r_tb),
		.x2_i(x2_i_tb),
		.x3_r(x3_r_tb),
		.x3_i(x3_i_tb),
		.x4_r(x4_r_tb),
		.x4_i(x4_i_tb),
		.x5_r(x5_r_tb),
		.x5_i(x5_i_tb),
		.x6_r(x6_r_tb),
		.x6_i(x6_i_tb),
		.x7_r(x7_r_tb),
		.x7_i(x7_i_tb),
		.x8_r(x8_r_tb),
		.x8_i(x8_i_tb),
		.x9_r(x9_r_tb),
		.x9_i(x9_i_tb),
		.x10_r(x10_r_tb),
		.x10_i(x10_i_tb),
		.x11_r(x11_r_tb),
		.x11_i(x11_i_tb),
		.x12_r(x12_r_tb),
		.x12_i(x12_i_tb),
		.x13_r(x13_r_tb),
		.x13_i(x13_i_tb),
		.x14_r(x14_r_tb),
		.x14_i(x14_i_tb),
		.x15_r(x15_r_tb),
		.x15_i(x15_i_tb),
		.x16_r(x16_r_tb),
		.x16_i(x16_i_tb),
		.x17_r(x17_r_tb),
		.x17_i(x17_i_tb),
		.x18_r(x18_r_tb),
		.x18_i(x18_i_tb),
		.x19_r(x19_r_tb),
		.x19_i(x19_i_tb),
		.x20_r(x20_r_tb),
		.x20_i(x20_i_tb),
		.x21_r(x21_r_tb),
		.x21_i(x21_i_tb),
		.x22_r(x22_r_tb),
		.x22_i(x22_i_tb),
		.x23_r(x23_r_tb),
		.x23_i(x23_i_tb),
		.x24_r(x24_r_tb),
		.x24_i(x24_i_tb),
		.x25_r(x25_r_tb),
		.x25_i(x25_i_tb),
		.x26_r(x26_r_tb),
		.x26_i(x26_i_tb),
		.x27_r(x27_r_tb),
		.x27_i(x27_i_tb),
		.x28_r(x28_r_tb),
		.x28_i(x28_i_tb),
		.x29_r(x29_r_tb),
		.x29_i(x29_i_tb),
		.x30_r(x30_r_tb),
		.x30_i(x30_i_tb),
		.x31_r(x31_r_tb),
		.x31_i(x31_i_tb),
		.x32_r(x32_r_tb),
		.x32_i(x32_i_tb),
		.x33_r(x33_r_tb),
		.x33_i(x33_i_tb),
		.x34_r(x34_r_tb),
		.x34_i(x34_i_tb),
		.x35_r(x35_r_tb),
		.x35_i(x35_i_tb),
		.x36_r(x36_r_tb),
		.x36_i(x36_i_tb),
		.x37_r(x37_r_tb),
		.x37_i(x37_i_tb),
		.x38_r(x38_r_tb),
		.x38_i(x38_i_tb),
		.x39_r(x39_r_tb),
		.x39_i(x39_i_tb),
		.x40_r(x40_r_tb),
		.x40_i(x40_i_tb),
		.x41_r(x41_r_tb),
		.x41_i(x41_i_tb),
		.x42_r(x42_r_tb),
		.x42_i(x42_i_tb),
		.x43_r(x43_r_tb),
		.x43_i(x43_i_tb),
		.x44_r(x44_r_tb),
		.x44_i(x44_i_tb),
		.x45_r(x45_r_tb),
		.x45_i(x45_i_tb),
		.x46_r(x46_r_tb),
		.x46_i(x46_i_tb),
		.x47_r(x47_r_tb),
		.x47_i(x47_i_tb),
		.x48_r(x48_r_tb),
		.x48_i(x48_i_tb),
		.x49_r(x49_r_tb),
		.x49_i(x49_i_tb),
		.x50_r(x50_r_tb),
		.x50_i(x50_i_tb),
		.x51_r(x51_r_tb),
		.x51_i(x51_i_tb),
		.x52_r(x52_r_tb),
		.x52_i(x52_i_tb),
		.x53_r(x53_r_tb),
		.x53_i(x53_i_tb),
		.x54_r(x54_r_tb),
		.x54_i(x54_i_tb),
		.x55_r(x55_r_tb),
		.x55_i(x55_i_tb),
		.x56_r(x56_r_tb),
		.x56_i(x56_i_tb),
		.x57_r(x57_r_tb),
		.x57_i(x57_i_tb),
		.x58_r(x58_r_tb),
		.x58_i(x58_i_tb),
		.x59_r(x59_r_tb),
		.x59_i(x59_i_tb),
		.x60_r(x60_r_tb),
		.x60_i(x60_i_tb),
		.x61_r(x61_r_tb),
		.x61_i(x61_i_tb),
		.x62_r(x62_r_tb),
		.x62_i(x62_i_tb),
		.x63_r(x63_r_tb),
		.x63_i(x63_i_tb),
		.x64_r(x64_r_tb),
		.x64_i(x64_i_tb),
		.x65_r(x65_r_tb),
		.x65_i(x65_i_tb),
		.x66_r(x66_r_tb),
		.x66_i(x66_i_tb),
		.x67_r(x67_r_tb),
		.x67_i(x67_i_tb),
		.x68_r(x68_r_tb),
		.x68_i(x68_i_tb),
		.x69_r(x69_r_tb),
		.x69_i(x69_i_tb),
		.x70_r(x70_r_tb),
		.x70_i(x70_i_tb),
		.x71_r(x71_r_tb),
		.x71_i(x71_i_tb),
		.x72_r(x72_r_tb),
		.x72_i(x72_i_tb),
		.x73_r(x73_r_tb),
		.x73_i(x73_i_tb),
		.x74_r(x74_r_tb),
		.x74_i(x74_i_tb),
		.x75_r(x75_r_tb),
		.x75_i(x75_i_tb),
		.x76_r(x76_r_tb),
		.x76_i(x76_i_tb),
		.x77_r(x77_r_tb),
		.x77_i(x77_i_tb),
		.x78_r(x78_r_tb),
		.x78_i(x78_i_tb),
		.x79_r(x79_r_tb),
		.x79_i(x79_i_tb),
		.x80_r(x80_r_tb),
		.x80_i(x80_i_tb),
		.x81_r(x81_r_tb),
		.x81_i(x81_i_tb),
		.x82_r(x82_r_tb),
		.x82_i(x82_i_tb),
		.x83_r(x83_r_tb),
		.x83_i(x83_i_tb),
		.x84_r(x84_r_tb),
		.x84_i(x84_i_tb),
		.x85_r(x85_r_tb),
		.x85_i(x85_i_tb),
		.x86_r(x86_r_tb),
		.x86_i(x86_i_tb),
		.x87_r(x87_r_tb),
		.x87_i(x87_i_tb),
		.x88_r(x88_r_tb),
		.x88_i(x88_i_tb),
		.x89_r(x89_r_tb),
		.x89_i(x89_i_tb),
		.x90_r(x90_r_tb),
		.x90_i(x90_i_tb),
		.x91_r(x91_r_tb),
		.x91_i(x91_i_tb),
		.x92_r(x92_r_tb),
		.x92_i(x92_i_tb),
		.x93_r(x93_r_tb),
		.x93_i(x93_i_tb),
		.x94_r(x94_r_tb),
		.x94_i(x94_i_tb),
		.x95_r(x95_r_tb),
		.x95_i(x95_i_tb),
		.x96_r(x96_r_tb),
		.x96_i(x96_i_tb),
		.x97_r(x97_r_tb),
		.x97_i(x97_i_tb),
		.x98_r(x98_r_tb),
		.x98_i(x98_i_tb),
		.x99_r(x99_r_tb),
		.x99_i(x99_i_tb),
		.x100_r(x100_r_tb),
		.x100_i(x100_i_tb),
		.x101_r(x101_r_tb),
		.x101_i(x101_i_tb),
		.x102_r(x102_r_tb),
		.x102_i(x102_i_tb),
		.x103_r(x103_r_tb),
		.x103_i(x103_i_tb),
		.x104_r(x104_r_tb),
		.x104_i(x104_i_tb),
		.x105_r(x105_r_tb),
		.x105_i(x105_i_tb),
		.x106_r(x106_r_tb),
		.x106_i(x106_i_tb),
		.x107_r(x107_r_tb),
		.x107_i(x107_i_tb),
		.x108_r(x108_r_tb),
		.x108_i(x108_i_tb),
		.x109_r(x109_r_tb),
		.x109_i(x109_i_tb),
		.x110_r(x110_r_tb),
		.x110_i(x110_i_tb),
		.x111_r(x111_r_tb),
		.x111_i(x111_i_tb),
		.x112_r(x112_r_tb),
		.x112_i(x112_i_tb),
		.x113_r(x113_r_tb),
		.x113_i(x113_i_tb),
		.x114_r(x114_r_tb),
		.x114_i(x114_i_tb),
		.x115_r(x115_r_tb),
		.x115_i(x115_i_tb),
		.x116_r(x116_r_tb),
		.x116_i(x116_i_tb),
		.x117_r(x117_r_tb),
		.x117_i(x117_i_tb),
		.x118_r(x118_r_tb),
		.x118_i(x118_i_tb),
		.x119_r(x119_r_tb),
		.x119_i(x119_i_tb),
		.x120_r(x120_r_tb),
		.x120_i(x120_i_tb),
		.x121_r(x121_r_tb),
		.x121_i(x121_i_tb),
		.x122_r(x122_r_tb),
		.x122_i(x122_i_tb),
		.x123_r(x123_r_tb),
		.x123_i(x123_i_tb),
		.x124_r(x124_r_tb),
		.x124_i(x124_i_tb),
		.x125_r(x125_r_tb),
		.x125_i(x125_i_tb),
		.x126_r(x126_r_tb),
		.x126_i(x126_i_tb),
		.x127_r(x127_r_tb),
		.x127_i(x127_i_tb),
		


    .correct(correct),
    .X0_r(X0_r_tb),
    .X0_i(X0_i_tb),
    .X1_r(X1_r_tb),
    .X1_i(X1_i_tb),
    .X2_r(X2_r_tb),
    .X2_i(X2_i_tb),
    .X3_r(X3_r_tb),
    .X3_i(X3_i_tb),
    .X4_r(X4_r_tb),
    .X4_i(X4_i_tb),
    .X5_r(X5_r_tb),
    .X5_i(X5_i_tb),
    .X6_r(X6_r_tb),
    .X6_i(X6_i_tb),
    .X7_r(X7_r_tb),
    .X7_i(X7_i_tb),
    .X8_r(X8_r_tb),
    .X8_i(X8_i_tb),
    .X9_r(X9_r_tb),
    .X9_i(X9_i_tb),
    .X10_r(X10_r_tb),
    .X10_i(X10_i_tb),
    .X11_r(X11_r_tb),
    .X11_i(X11_i_tb),
    .X12_r(X12_r_tb),
    .X12_i(X12_i_tb),
    .X13_r(X13_r_tb),
    .X13_i(X13_i_tb),
    .X14_r(X14_r_tb),
    .X14_i(X14_i_tb),
    .X15_r(X15_r_tb),
    .X15_i(X15_i_tb),
    .X16_r(X16_r_tb),
    .X16_i(X16_i_tb),
    .X17_r(X17_r_tb),
    .X17_i(X17_i_tb),
    .X18_r(X18_r_tb),
    .X18_i(X18_i_tb),
    .X19_r(X19_r_tb),
    .X19_i(X19_i_tb),
    .X20_r(X20_r_tb),
    .X20_i(X20_i_tb),
    .X21_r(X21_r_tb),
    .X21_i(X21_i_tb),
    .X22_r(X22_r_tb),
    .X22_i(X22_i_tb),
    .X23_r(X23_r_tb),
    .X23_i(X23_i_tb),
    .X24_r(X24_r_tb),
    .X24_i(X24_i_tb),
    .X25_r(X25_r_tb),
    .X25_i(X25_i_tb),
    .X26_r(X26_r_tb),
    .X26_i(X26_i_tb),
    .X27_r(X27_r_tb),
    .X27_i(X27_i_tb),
    .X28_r(X28_r_tb),
    .X28_i(X28_i_tb),
    .X29_r(X29_r_tb),
    .X29_i(X29_i_tb),
    .X30_r(X30_r_tb),
    .X30_i(X30_i_tb),
    .X31_r(X31_r_tb),
    .X31_i(X31_i_tb),
    .X32_r(X32_r_tb),
    .X32_i(X32_i_tb),
    .X33_r(X33_r_tb),
    .X33_i(X33_i_tb),
    .X34_r(X34_r_tb),
    .X34_i(X34_i_tb),
    .X35_r(X35_r_tb),
    .X35_i(X35_i_tb),
    .X36_r(X36_r_tb),
    .X36_i(X36_i_tb),
    .X37_r(X37_r_tb),
    .X37_i(X37_i_tb),
    .X38_r(X38_r_tb),
    .X38_i(X38_i_tb),
    .X39_r(X39_r_tb),
    .X39_i(X39_i_tb),
    .X40_r(X40_r_tb),
    .X40_i(X40_i_tb),
    .X41_r(X41_r_tb),
    .X41_i(X41_i_tb),
    .X42_r(X42_r_tb),
    .X42_i(X42_i_tb),
    .X43_r(X43_r_tb),
    .X43_i(X43_i_tb),
    .X44_r(X44_r_tb),
    .X44_i(X44_i_tb),
    .X45_r(X45_r_tb),
    .X45_i(X45_i_tb),
    .X46_r(X46_r_tb),
    .X46_i(X46_i_tb),
    .X47_r(X47_r_tb),
    .X47_i(X47_i_tb),
    .X48_r(X48_r_tb),
    .X48_i(X48_i_tb),
    .X49_r(X49_r_tb),
    .X49_i(X49_i_tb),
    .X50_r(X50_r_tb),
    .X50_i(X50_i_tb),
    .X51_r(X51_r_tb),
    .X51_i(X51_i_tb),
    .X52_r(X52_r_tb),
    .X52_i(X52_i_tb),
    .X53_r(X53_r_tb),
    .X53_i(X53_i_tb),
    .X54_r(X54_r_tb),
    .X54_i(X54_i_tb),
    .X55_r(X55_r_tb),
    .X55_i(X55_i_tb),
    .X56_r(X56_r_tb),
    .X56_i(X56_i_tb),
    .X57_r(X57_r_tb),
    .X57_i(X57_i_tb),
    .X58_r(X58_r_tb),
    .X58_i(X58_i_tb),
    .X59_r(X59_r_tb),
    .X59_i(X59_i_tb),
    .X60_r(X60_r_tb),
    .X60_i(X60_i_tb),
    .X61_r(X61_r_tb),
    .X61_i(X61_i_tb),
    .X62_r(X62_r_tb),
    .X62_i(X62_i_tb),
    .X63_r(X63_r_tb),
    .X63_i(X63_i_tb),
    .X64_r(X64_r_tb),
    .X64_i(X64_i_tb),
    .X65_r(X65_r_tb),
    .X65_i(X65_i_tb),
    .X66_r(X66_r_tb),
    .X66_i(X66_i_tb),
    .X67_r(X67_r_tb),
    .X67_i(X67_i_tb),
    .X68_r(X68_r_tb),
    .X68_i(X68_i_tb),
    .X69_r(X69_r_tb),
    .X69_i(X69_i_tb),
    .X70_r(X70_r_tb),
    .X70_i(X70_i_tb),
    .X71_r(X71_r_tb),
    .X71_i(X71_i_tb),
    .X72_r(X72_r_tb),
    .X72_i(X72_i_tb),
    .X73_r(X73_r_tb),
    .X73_i(X73_i_tb),
    .X74_r(X74_r_tb),
    .X74_i(X74_i_tb),
    .X75_r(X75_r_tb),
    .X75_i(X75_i_tb),
    .X76_r(X76_r_tb),
    .X76_i(X76_i_tb),
    .X77_r(X77_r_tb),
    .X77_i(X77_i_tb),
    .X78_r(X78_r_tb),
    .X78_i(X78_i_tb),
    .X79_r(X79_r_tb),
    .X79_i(X79_i_tb),
    .X80_r(X80_r_tb),
    .X80_i(X80_i_tb),
    .X81_r(X81_r_tb),
    .X81_i(X81_i_tb),
    .X82_r(X82_r_tb),
    .X82_i(X82_i_tb),
    .X83_r(X83_r_tb),
    .X83_i(X83_i_tb),
    .X84_r(X84_r_tb),
    .X84_i(X84_i_tb),
    .X85_r(X85_r_tb),
    .X85_i(X85_i_tb),
    .X86_r(X86_r_tb),
    .X86_i(X86_i_tb),
    .X87_r(X87_r_tb),
    .X87_i(X87_i_tb),
    .X88_r(X88_r_tb),
    .X88_i(X88_i_tb),
    .X89_r(X89_r_tb),
    .X89_i(X89_i_tb),
    .X90_r(X90_r_tb),
    .X90_i(X90_i_tb),
    .X91_r(X91_r_tb),
    .X91_i(X91_i_tb),
    .X92_r(X92_r_tb),
    .X92_i(X92_i_tb),
    .X93_r(X93_r_tb),
    .X93_i(X93_i_tb),
    .X94_r(X94_r_tb),
    .X94_i(X94_i_tb),
    .X95_r(X95_r_tb),
    .X95_i(X95_i_tb),
    .X96_r(X96_r_tb),
    .X96_i(X96_i_tb),
    .X97_r(X97_r_tb),
    .X97_i(X97_i_tb),
    .X98_r(X98_r_tb),
    .X98_i(X98_i_tb),
    .X99_r(X99_r_tb),
    .X99_i(X99_i_tb),
    .X100_r(X100_r_tb),
    .X100_i(X100_i_tb),
    .X101_r(X101_r_tb),
    .X101_i(X101_i_tb),
    .X102_r(X102_r_tb),
    .X102_i(X102_i_tb),
    .X103_r(X103_r_tb),
    .X103_i(X103_i_tb),
    .X104_r(X104_r_tb),
    .X104_i(X104_i_tb),
    .X105_r(X105_r_tb),
    .X105_i(X105_i_tb),
    .X106_r(X106_r_tb),
    .X106_i(X106_i_tb),
    .X107_r(X107_r_tb),
    .X107_i(X107_i_tb),
    .X108_r(X108_r_tb),
    .X108_i(X108_i_tb),
    .X109_r(X109_r_tb),
    .X109_i(X109_i_tb),
    .X110_r(X110_r_tb),
    .X110_i(X110_i_tb),
    .X111_r(X111_r_tb),
    .X111_i(X111_i_tb),
    .X112_r(X112_r_tb),
    .X112_i(X112_i_tb),
    .X113_r(X113_r_tb),
    .X113_i(X113_i_tb),
    .X114_r(X114_r_tb),
    .X114_i(X114_i_tb),
    .X115_r(X115_r_tb),
    .X115_i(X115_i_tb),
    .X116_r(X116_r_tb),
    .X116_i(X116_i_tb),
    .X117_r(X117_r_tb),
    .X117_i(X117_i_tb),
    .X118_r(X118_r_tb),
    .X118_i(X118_i_tb),
    .X119_r(X119_r_tb),
    .X119_i(X119_i_tb),
    .X120_r(X120_r_tb),
    .X120_i(X120_i_tb),
    .X121_r(X121_r_tb),
    .X121_i(X121_i_tb),
    .X122_r(X122_r_tb),
    .X122_i(X122_i_tb),
    .X123_r(X123_r_tb),
    .X123_i(X123_i_tb),
    .X124_r(X124_r_tb),
    .X124_i(X124_i_tb),
    .X125_r(X125_r_tb),
    .X125_i(X125_i_tb),
    .X126_r(X126_r_tb),
    .X126_i(X126_i_tb),
    .X127_r(X127_r_tb),
    .X127_i(X127_i_tb)
	);
	
	/* THIRD : Clock SiXnal Xeneration */
	always #(Clock_Period / 2) clk_tb = ~clk_tb ;
	
	/* FOURTH : Initial Block */
	initial begin
	$dumpfile("FFT_Time_Share.vcd");
	$dumpvars;

	initialize();

 
	reset();
  
	/* TEST CASE 1 */
	//TEST_CASE_1();
	
	TEST_CASE_2();
	FFT_Operation();

	
	
	#(100 * Clock_Period)
	$stop ;

end

task initialize ;
begin
  ready_inputs_tb = 1'b0;
  clk_tb = 1'b1 ; 

x0_r_tb = 16'b00000000_00000000;
x0_i_tb = 16'b00000000_00000000;
x1_r_tb = 16'b00000000_00000000;
x1_i_tb = 16'b00000000_00000000;
x2_r_tb = 16'b00000000_00000000;
x2_i_tb = 16'b00000000_00000000;
x3_r_tb = 16'b00000000_00000000;
x3_i_tb = 16'b00000000_00000000;
x4_r_tb = 16'b00000000_00000000;
x4_i_tb = 16'b00000000_00000000;
x5_r_tb = 16'b00000000_00000000;
x5_i_tb = 16'b00000000_00000000;
x6_r_tb = 16'b00000000_00000000;
x6_i_tb = 16'b00000000_00000000;
x7_r_tb = 16'b00000000_00000000;
x7_i_tb = 16'b00000000_00000000;
x8_r_tb = 16'b00000000_00000000;
x8_i_tb = 16'b00000000_00000000;
x9_r_tb = 16'b00000000_00000000;
x9_i_tb = 16'b00000000_00000000;
x10_r_tb = 16'b00000000_00000000;
x10_i_tb = 16'b00000000_00000000;
x11_r_tb = 16'b00000000_00000000;
x11_i_tb = 16'b00000000_00000000;
x12_r_tb = 16'b00000000_00000000;
x12_i_tb = 16'b00000000_00000000;
x13_r_tb = 16'b00000000_00000000;
x13_i_tb = 16'b00000000_00000000;
x14_r_tb = 16'b00000000_00000000;
x14_i_tb = 16'b00000000_00000000;
x15_r_tb = 16'b00000000_00000000;
x15_i_tb = 16'b00000000_00000000;
x16_r_tb = 16'b00000000_00000000;
x16_i_tb = 16'b00000000_00000000;
x17_r_tb = 16'b00000000_00000000;
x17_i_tb = 16'b00000000_00000000;
x18_r_tb = 16'b00000000_00000000;
x18_i_tb = 16'b00000000_00000000;
x19_r_tb = 16'b00000000_00000000;
x19_i_tb = 16'b00000000_00000000;
x20_r_tb = 16'b00000000_00000000;
x20_i_tb = 16'b00000000_00000000;
x21_r_tb = 16'b00000000_00000000;
x21_i_tb = 16'b00000000_00000000;
x22_r_tb = 16'b00000000_00000000;
x22_i_tb = 16'b00000000_00000000;
x23_r_tb = 16'b00000000_00000000;
x23_i_tb = 16'b00000000_00000000;
x24_r_tb = 16'b00000000_00000000;
x24_i_tb = 16'b00000000_00000000;
x25_r_tb = 16'b00000000_00000000;
x25_i_tb = 16'b00000000_00000000;
x26_r_tb = 16'b00000000_00000000;
x26_i_tb = 16'b00000000_00000000;
x27_r_tb = 16'b00000000_00000000;
x27_i_tb = 16'b00000000_00000000;
x28_r_tb = 16'b00000000_00000000;
x28_i_tb = 16'b00000000_00000000;
x29_r_tb = 16'b00000000_00000000;
x29_i_tb = 16'b00000000_00000000;
x30_r_tb = 16'b00000000_00000000;
x30_i_tb = 16'b00000000_00000000;
x31_r_tb = 16'b00000000_00000000;
x31_i_tb = 16'b00000000_00000000;
x32_r_tb = 16'b00000000_00000000;
x32_i_tb = 16'b00000000_00000000;
x33_r_tb = 16'b00000000_00000000;
x33_i_tb = 16'b00000000_00000000;
x34_r_tb = 16'b00000000_00000000;
x34_i_tb = 16'b00000000_00000000;
x35_r_tb = 16'b00000000_00000000;
x35_i_tb = 16'b00000000_00000000;
x36_r_tb = 16'b00000000_00000000;
x36_i_tb = 16'b00000000_00000000;
x37_r_tb = 16'b00000000_00000000;
x37_i_tb = 16'b00000000_00000000;
x38_r_tb = 16'b00000000_00000000;
x38_i_tb = 16'b00000000_00000000;
x39_r_tb = 16'b00000000_00000000;
x39_i_tb = 16'b00000000_00000000;
x40_r_tb = 16'b00000000_00000000;
x40_i_tb = 16'b00000000_00000000;
x41_r_tb = 16'b00000000_00000000;
x41_i_tb = 16'b00000000_00000000;
x42_r_tb = 16'b00000000_00000000;
x42_i_tb = 16'b00000000_00000000;
x43_r_tb = 16'b00000000_00000000;
x43_i_tb = 16'b00000000_00000000;
x44_r_tb = 16'b00000000_00000000;
x44_i_tb = 16'b00000000_00000000;
x45_r_tb = 16'b00000000_00000000;
x45_i_tb = 16'b00000000_00000000;
x46_r_tb = 16'b00000000_00000000;
x46_i_tb = 16'b00000000_00000000;
x47_r_tb = 16'b00000000_00000000;
x47_i_tb = 16'b00000000_00000000;
x48_r_tb = 16'b00000000_00000000;
x48_i_tb = 16'b00000000_00000000;
x49_r_tb = 16'b00000000_00000000;
x49_i_tb = 16'b00000000_00000000;
x50_r_tb = 16'b00000000_00000000;
x50_i_tb = 16'b00000000_00000000;
x51_r_tb = 16'b00000000_00000000;
x51_i_tb = 16'b00000000_00000000;
x52_r_tb = 16'b00000000_00000000;
x52_i_tb = 16'b00000000_00000000;
x53_r_tb = 16'b00000000_00000000;
x53_i_tb = 16'b00000000_00000000;
x54_r_tb = 16'b00000000_00000000;
x54_i_tb = 16'b00000000_00000000;
x55_r_tb = 16'b00000000_00000000;
x55_i_tb = 16'b00000000_00000000;
x56_r_tb = 16'b00000000_00000000;
x56_i_tb = 16'b00000000_00000000;
x57_r_tb = 16'b00000000_00000000;
x57_i_tb = 16'b00000000_00000000;
x58_r_tb = 16'b00000000_00000000;
x58_i_tb = 16'b00000000_00000000;
x59_r_tb = 16'b00000000_00000000;
x59_i_tb = 16'b00000000_00000000;
x60_r_tb = 16'b00000000_00000000;
x60_i_tb = 16'b00000000_00000000;
x61_r_tb = 16'b00000000_00000000;
x61_i_tb = 16'b00000000_00000000;
x62_r_tb = 16'b00000000_00000000;
x62_i_tb = 16'b00000000_00000000;
x63_r_tb = 16'b00000000_00000000;
x63_i_tb = 16'b00000000_00000000;
x64_r_tb = 16'b00000000_00000000;
x64_i_tb = 16'b00000000_00000000;
x65_r_tb = 16'b00000000_00000000;
x65_i_tb = 16'b00000000_00000000;
x66_r_tb = 16'b00000000_00000000;
x66_i_tb = 16'b00000000_00000000;
x67_r_tb = 16'b00000000_00000000;
x67_i_tb = 16'b00000000_00000000;
x68_r_tb = 16'b00000000_00000000;
x68_i_tb = 16'b00000000_00000000;
x69_r_tb = 16'b00000000_00000000;
x69_i_tb = 16'b00000000_00000000;
x70_r_tb = 16'b00000000_00000000;
x70_i_tb = 16'b00000000_00000000;
x71_r_tb = 16'b00000000_00000000;
x71_i_tb = 16'b00000000_00000000;
x72_r_tb = 16'b00000000_00000000;
x72_i_tb = 16'b00000000_00000000;
x73_r_tb = 16'b00000000_00000000;
x73_i_tb = 16'b00000000_00000000;
x74_r_tb = 16'b00000000_00000000;
x74_i_tb = 16'b00000000_00000000;
x75_r_tb = 16'b00000000_00000000;
x75_i_tb = 16'b00000000_00000000;
x76_r_tb = 16'b00000000_00000000;
x76_i_tb = 16'b00000000_00000000;
x77_r_tb = 16'b00000000_00000000;
x77_i_tb = 16'b00000000_00000000;
x78_r_tb = 16'b00000000_00000000;
x78_i_tb = 16'b00000000_00000000;
x79_r_tb = 16'b00000000_00000000;
x79_i_tb = 16'b00000000_00000000;
x80_r_tb = 16'b00000000_00000000;
x80_i_tb = 16'b00000000_00000000;
x81_r_tb = 16'b00000000_00000000;
x81_i_tb = 16'b00000000_00000000;
x82_r_tb = 16'b00000000_00000000;
x82_i_tb = 16'b00000000_00000000;
x83_r_tb = 16'b00000000_00000000;
x83_i_tb = 16'b00000000_00000000;
x84_r_tb = 16'b00000000_00000000;
x84_i_tb = 16'b00000000_00000000;
x85_r_tb = 16'b00000000_00000000;
x85_i_tb = 16'b00000000_00000000;
x86_r_tb = 16'b00000000_00000000;
x86_i_tb = 16'b00000000_00000000;
x87_r_tb = 16'b00000000_00000000;
x87_i_tb = 16'b00000000_00000000;
x88_r_tb = 16'b00000000_00000000;
x88_i_tb = 16'b00000000_00000000;
x89_r_tb = 16'b00000000_00000000;
x89_i_tb = 16'b00000000_00000000;
x90_r_tb = 16'b00000000_00000000;
x90_i_tb = 16'b00000000_00000000;
x91_r_tb = 16'b00000000_00000000;
x91_i_tb = 16'b00000000_00000000;
x92_r_tb = 16'b00000000_00000000;
x92_i_tb = 16'b00000000_00000000;
x93_r_tb = 16'b00000000_00000000;
x93_i_tb = 16'b00000000_00000000;
x94_r_tb = 16'b00000000_00000000;
x94_i_tb = 16'b00000000_00000000;
x95_r_tb = 16'b00000000_00000000;
x95_i_tb = 16'b00000000_00000000;
x96_r_tb = 16'b00000000_00000000;
x96_i_tb = 16'b00000000_00000000;
x97_r_tb = 16'b00000000_00000000;
x97_i_tb = 16'b00000000_00000000;
x98_r_tb = 16'b00000000_00000000;
x98_i_tb = 16'b00000000_00000000;
x99_r_tb = 16'b00000000_00000000;
x99_i_tb = 16'b00000000_00000000;
x100_r_tb = 16'b00000000_00000000;
x100_i_tb = 16'b00000000_00000000;
x101_r_tb = 16'b00000000_00000000;
x101_i_tb = 16'b00000000_00000000;
x102_r_tb = 16'b00000000_00000000;
x102_i_tb = 16'b00000000_00000000;
x103_r_tb = 16'b00000000_00000000;
x103_i_tb = 16'b00000000_00000000;
x104_r_tb = 16'b00000000_00000000;
x104_i_tb = 16'b00000000_00000000;
x105_r_tb = 16'b00000000_00000000;
x105_i_tb = 16'b00000000_00000000;
x106_r_tb = 16'b00000000_00000000;
x106_i_tb = 16'b00000000_00000000;
x107_r_tb = 16'b00000000_00000000;
x107_i_tb = 16'b00000000_00000000;
x108_r_tb = 16'b00000000_00000000;
x108_i_tb = 16'b00000000_00000000;
x109_r_tb = 16'b00000000_00000000;
x109_i_tb = 16'b00000000_00000000;
x110_r_tb = 16'b00000000_00000000;
x110_i_tb = 16'b00000000_00000000;
x111_r_tb = 16'b00000000_00000000;
x111_i_tb = 16'b00000000_00000000;
x112_r_tb = 16'b00000000_00000000;
x112_i_tb = 16'b00000000_00000000;
x113_r_tb = 16'b00000000_00000000;
x113_i_tb = 16'b00000000_00000000;
x114_r_tb = 16'b00000000_00000000;
x114_i_tb = 16'b00000000_00000000;
x115_r_tb = 16'b00000000_00000000;
x115_i_tb = 16'b00000000_00000000;
x116_r_tb = 16'b00000000_00000000;
x116_i_tb = 16'b00000000_00000000;
x117_r_tb = 16'b00000000_00000000;
x117_i_tb = 16'b00000000_00000000;
x118_r_tb = 16'b00000000_00000000;
x118_i_tb = 16'b00000000_00000000;
x119_r_tb = 16'b00000000_00000000;
x119_i_tb = 16'b00000000_00000000;
x120_r_tb = 16'b00000000_00000000;
x120_i_tb = 16'b00000000_00000000;
x121_r_tb = 16'b00000000_00000000;
x121_i_tb = 16'b00000000_00000000;
x122_r_tb = 16'b00000000_00000000;
x122_i_tb = 16'b00000000_00000000;
x123_r_tb = 16'b00000000_00000000;
x123_i_tb = 16'b00000000_00000000;
x124_r_tb = 16'b00000000_00000000;
x124_i_tb = 16'b00000000_00000000;
x125_r_tb = 16'b00000000_00000000;
x125_i_tb = 16'b00000000_00000000;
x126_r_tb = 16'b00000000_00000000;
x126_i_tb = 16'b00000000_00000000;
x127_r_tb = 16'b00000000_00000000;
x127_i_tb = 16'b00000000_00000000;
end
endtask

task reset ;
  begin
	/* Reset */
    #(Clock_Period)
    rst_tb = 1'b0 ;
    #(0.5*Clock_Period) 
    rst_tb = 1'b1 ;
  end
endtask



task TEST_CASE_1;
  begin
	/* TEST CASE 2 */
  x0_r_tb = 16'b11111111_11011011;
x0_i_tb =16'b11111111_11110000;
x1_r_tb = 16'b11111111_11011011;
x1_i_tb =16'b11111111_11110000;
x2_r_tb = 16'b11111111_11011011;
x2_i_tb =16'b11111111_11110000;
x3_r_tb = 16'b11111111_11011011;
x3_i_tb =16'b11111111_11110000;
x4_r_tb = 16'b11111111_11011011;
x4_i_tb =16'b11111111_11110000;
x5_r_tb = 16'b11111111_11011011;
x5_i_tb =16'b11111111_11110000;
x6_r_tb = 16'b11111111_11011011;
x6_i_tb =16'b11111111_11110000;
x7_r_tb = 16'b11111111_11011011;
x7_i_tb =16'b11111111_11110000;
x8_r_tb = 16'b11111111_11011011;
x8_i_tb =16'b11111111_11110000;
    x9_r_tb = 16'b11111111_11100010;
   x9_i_tb = 16'b00000000_00010100;
   x10_r_tb = 16'b00000000_00100010;
   x10_i_tb = 16'b00000000_00010100;
   x11_r_tb = 16'b11111111_11011011;
   x11_i_tb = 16'b11111111_11101011;
   x12_r_tb = 16'b00000000_00100110;
   x12_i_tb = 16'b11111111_11101011;
   x13_r_tb = 16'b11111111_11011000;
   x13_i_tb = 16'b00000000_00010011;
   x14_r_tb = 16'b00000000_00100111;
   x14_i_tb = 16'b00000000_00010001;
   x15_r_tb = 16'b00000000_00101000;
   x15_i_tb = 16'b00000000_00010001;
   x16_r_tb = 16'b11111111_11010100;
   x16_i_tb = 16'b11111111_11110000;
   x17_r_tb = 16'b00000000_00101110;
   x17_i_tb = 16'b11111111_11110010;
   x18_r_tb = 16'b11111111_11010001;
   x18_i_tb = 16'b00000000_00001100;
   x19_r_tb = 16'b00000000_00101011;
   x19_i_tb = 16'b00000000_00001100;
   x20_r_tb = 16'b00000000_00100111;
   x20_i_tb = 16'b00000000_00001010;
   x21_r_tb = 16'b11111111_11010100;
   x21_i_tb = 16'b00000000_00001010;
   x22_r_tb = 16'b11111111_11010010;
   x22_i_tb = 16'b11111111_11110010;
   x23_r_tb = 16'b00000000_00110000;
   x23_i_tb = 16'b11111111_11101101;
   x24_r_tb = 16'b11111111_11010010;
   x24_i_tb = 16'b00000000_00010100;
   x25_r_tb = 16'b00000000_00100111;
   x25_i_tb = 16'b11111111_11101011;
   x26_r_tb = 16'b00000000_00100010;
   x26_i_tb = 16'b00000000_00010001;
   x27_r_tb = 16'b00000000_00100111;
   x27_i_tb = 16'b00000000_00010100;
   x28_r_tb = 16'b00000000_00110000;
   x28_i_tb = 16'b11111111_11101100;
   x29_r_tb = 16'b11111111_11001100;
   x29_i_tb = 16'b00000000_00010111;
   x30_r_tb = 16'b00000000_00111100;
   x30_i_tb = 16'b00000000_00011000;
   x31_r_tb = 16'b11111111_11000111;
   x31_i_tb = 16'b00000000_00010111; 
    x32_r_tb = 16'b11111111_11011011;
x32_i_tb =16'b11111111_11110000;
x33_r_tb = 16'b11111111_11011011;
x33_i_tb =16'b11111111_11110000;
x34_r_tb = 16'b11111111_11011011;
x34_i_tb =16'b11111111_11110000;
x35_r_tb = 16'b11111111_11011011;
x35_i_tb =16'b11111111_11110000;
x36_r_tb = 16'b11111111_11011011;
x36_i_tb =16'b11111111_11110000;
x37_r_tb = 16'b11111111_11011011;
x37_i_tb =16'b11111111_11110000;
x38_r_tb = 16'b11111111_11011011;
x38_i_tb =16'b11111111_11110000;
x39_r_tb = 16'b11111111_11011011;
x39_i_tb =16'b11111111_11110000;
x40_r_tb = 16'b11111111_11011011;
x40_i_tb =16'b11111111_11110000;
    x41_r_tb = 16'b11111111_11100010;
   x41_i_tb = 16'b00000000_00010100;
   x42_r_tb = 16'b00000000_00100010;
   x42_i_tb = 16'b00000000_00010100;
   x43_r_tb = 16'b11111111_11011011;
   x43_i_tb = 16'b11111111_11101011;
   x44_r_tb = 16'b00000000_00100110;
   x44_i_tb = 16'b11111111_11101011;
   x45_r_tb = 16'b11111111_11011000;
   x45_i_tb = 16'b00000000_00010011;
   x46_r_tb = 16'b00000000_00100111;
   x46_i_tb = 16'b00000000_00010001;
   x47_r_tb = 16'b00000000_00101000;
   x47_i_tb = 16'b00000000_00010001;
   x48_r_tb = 16'b11111111_11010100;
   x48_i_tb = 16'b11111111_11110000;
   x49_r_tb = 16'b00000000_00101110;
   x49_i_tb = 16'b11111111_11110010;
   x50_r_tb = 16'b11111111_11010001;
   x50_i_tb = 16'b00000000_00001100;
   x51_r_tb = 16'b00000000_00101011;
   x51_i_tb = 16'b00000000_00001100;
   x52_r_tb = 16'b00000000_00100111;
   x52_i_tb = 16'b00000000_00001010;
   x53_r_tb = 16'b11111111_11010100;
   x53_i_tb = 16'b00000000_00001010;
   x54_r_tb = 16'b11111111_11010010;
   x54_i_tb = 16'b11111111_11110010;
   x55_r_tb = 16'b00000000_00110000;
   x55_i_tb = 16'b11111111_11101101;
   x56_r_tb = 16'b11111111_11010010;
   x56_i_tb = 16'b00000000_00010100;
   x57_r_tb = 16'b00000000_00100111;
   x57_i_tb = 16'b11111111_11101011;
   x58_r_tb = 16'b00000000_00100010;
   x58_i_tb = 16'b00000000_00010001;
   x59_r_tb = 16'b00000000_00100111;
   x59_i_tb = 16'b00000000_00010100;
   x60_r_tb = 16'b00000000_00110000;
   x60_i_tb = 16'b11111111_11101100;
   x61_r_tb = 16'b11111111_11001100;
   x61_i_tb = 16'b00000000_00010111;
   x62_r_tb = 16'b00000000_00111100;
   x62_i_tb = 16'b00000000_00011000;
   x63_r_tb = 16'b11111111_11000111;
   x63_i_tb = 16'b00000000_00010111; 
    x64_r_tb = 16'b11111111_11011011;
x64_i_tb =16'b11111111_11110000;
x65_r_tb = 16'b11111111_11011011;
x65_i_tb =16'b11111111_11110000;
x66_r_tb = 16'b11111111_11011011;
x66_i_tb =16'b11111111_11110000;
x67_r_tb = 16'b11111111_11011011;
x67_i_tb =16'b11111111_11110000;
x68_r_tb = 16'b11111111_11011011;
x68_i_tb =16'b11111111_11110000;
x69_r_tb = 16'b11111111_11011011;
x69_i_tb =16'b11111111_11110000;
x70_r_tb = 16'b11111111_11011011;
x70_i_tb =16'b11111111_11110000;
x71_r_tb = 16'b11111111_11011011;
x71_i_tb =16'b11111111_11110000;
x72_r_tb = 16'b11111111_11011011;
x72_i_tb =16'b11111111_11110000;
    x73_r_tb = 16'b11111111_11100010;
   x73_i_tb = 16'b00000000_00010100;
   x74_r_tb = 16'b00000000_00100010;
   x74_i_tb = 16'b00000000_00010100;
   x75_r_tb = 16'b11111111_11011011;
   x75_i_tb = 16'b11111111_11101011;
   x76_r_tb = 16'b00000000_00100110;
   x76_i_tb = 16'b11111111_11101011;
   x77_r_tb = 16'b11111111_11011000;
   x77_i_tb = 16'b00000000_00010011;
   x78_r_tb = 16'b00000000_00100111;
   x78_i_tb = 16'b00000000_00010001;
   x79_r_tb = 16'b00000000_00101000;
   x79_i_tb = 16'b00000000_00010001;
   x80_r_tb = 16'b11111111_11010100;
   x80_i_tb = 16'b11111111_11110000;
   x81_r_tb = 16'b00000000_00101110;
   x81_i_tb = 16'b11111111_11110010;
   x82_r_tb = 16'b11111111_11010001;
   x82_i_tb = 16'b00000000_00001100;
   x83_r_tb = 16'b00000000_00101011;
   x83_i_tb = 16'b00000000_00001100;
   x84_r_tb = 16'b00000000_00100111;
   x84_i_tb = 16'b00000000_00001010;
   x85_r_tb = 16'b11111111_11010100;
   x85_i_tb = 16'b00000000_00001010;
   x86_r_tb = 16'b11111111_11010010;
   x86_i_tb = 16'b11111111_11110010;
   x87_r_tb = 16'b00000000_00110000;
   x87_i_tb = 16'b11111111_11101101;
   x88_r_tb = 16'b11111111_11010010;
   x88_i_tb = 16'b00000000_00010100;
   x89_r_tb = 16'b00000000_00100111;
   x89_i_tb = 16'b11111111_11101011;
   x90_r_tb = 16'b00000000_00100010;
   x90_i_tb = 16'b00000000_00010001;
   x91_r_tb = 16'b00000000_00100111;
   x91_i_tb = 16'b00000000_00010100;
   x92_r_tb = 16'b00000000_00110000;
   x92_i_tb = 16'b11111111_11101100;
   x93_r_tb = 16'b11111111_11001100;
   x93_i_tb = 16'b00000000_00010111;
   x94_r_tb = 16'b00000000_00111100;
   x94_i_tb = 16'b00000000_00011000;
   x95_r_tb = 16'b11111111_11000111;
   x95_i_tb = 16'b00000000_00010111; 
    x96_r_tb = 16'b11111111_11011011;
x96_i_tb =16'b11111111_11110000;
x97_r_tb = 16'b11111111_11011011;
x97_i_tb =16'b11111111_11110000;
x98_r_tb = 16'b11111111_11011011;
x98_i_tb =16'b11111111_11110000;
x99_r_tb = 16'b11111111_11011011;
x99_i_tb =16'b11111111_11110000;
x100_r_tb = 16'b11111111_11011011;
x100_i_tb =16'b11111111_11110000;
x101_r_tb = 16'b11111111_11011011;
x101_i_tb =16'b11111111_11110000;
x102_r_tb = 16'b11111111_11011011;
x102_i_tb =16'b11111111_11110000;
x103_r_tb = 16'b11111111_11011011;
x103_i_tb =16'b11111111_11110000;
x104_r_tb = 16'b11111111_11011011;
x104_i_tb =16'b11111111_11110000;
    x105_r_tb = 16'b11111111_11100010;
   x105_i_tb = 16'b00000000_00010100;
   x106_r_tb = 16'b00000000_00100010;
   x106_i_tb = 16'b00000000_00010100;
   x107_r_tb = 16'b11111111_11011011;
   x107_i_tb = 16'b11111111_11101011;
   x108_r_tb = 16'b00000000_00100110;
   x108_i_tb = 16'b11111111_11101011;
   x109_r_tb = 16'b11111111_11011000;
   x109_i_tb = 16'b00000000_00010011;
   x110_r_tb = 16'b00000000_00100111;
   x110_i_tb = 16'b00000000_00010001;
   x111_r_tb = 16'b00000000_00101000;
   x111_i_tb = 16'b00000000_00010001;
   x112_r_tb = 16'b11111111_11010100;
   x112_i_tb = 16'b11111111_11110000;
   x113_r_tb = 16'b00000000_00101110;
   x113_i_tb = 16'b11111111_11110010;
   x114_r_tb = 16'b11111111_11010001;
   x114_i_tb = 16'b00000000_00001100;
   x115_r_tb = 16'b00000000_00101011;
   x115_i_tb = 16'b00000000_00001100;
   x116_r_tb = 16'b00000000_00100111;
   x116_i_tb = 16'b00000000_00001010;
   x117_r_tb = 16'b11111111_11010100;
   x117_i_tb = 16'b00000000_00001010;
   x118_r_tb = 16'b11111111_11010010;
   x118_i_tb = 16'b11111111_11110010;
   x119_r_tb = 16'b00000000_00110000;
   x119_i_tb = 16'b11111111_11101101;
   x120_r_tb = 16'b11111111_11010010;
   x120_i_tb = 16'b00000000_00010100;
   x121_r_tb = 16'b00000000_00100111;
   x121_i_tb = 16'b11111111_11101011;
   x122_r_tb = 16'b00000000_00100010;
   x122_i_tb = 16'b00000000_00010001;
   x123_r_tb = 16'b00000000_00100111;
   x123_i_tb = 16'b00000000_00010100;
   x124_r_tb = 16'b00000000_00110000;
   x124_i_tb = 16'b11111111_11101100;
   x125_r_tb = 16'b11111111_11001100;
   x125_i_tb = 16'b00000000_00010111;
   x126_r_tb = 16'b00000000_00111100;
   x126_i_tb = 16'b00000000_00011000;
   x127_r_tb = 16'b11111111_11000111;
   x127_i_tb = 16'b00000000_00010111; 
 
   ready_inputs_tb = 1'b1 ;
   	/* Output is supposed to be 0010.000000000000+ i* 1011.000000000000*/
  end
endtask

task TEST_CASE_2;
  begin
	/* TEST CASE 2 */
  x0_r_tb = 16'b1111111111011010;
x0_i_tb =16'b0;
x1_r_tb = 16'b1111111111011010;
x1_i_tb =16'b0;
x2_r_tb = 16'b1111111111011010;
x2_i_tb =16'b0;
x3_r_tb = 16'b1111111111011010;
x3_i_tb =16'b0;
x4_r_tb = 16'b1111111111011010;
x4_i_tb =16'b0;
x5_r_tb = 16'b1111111111011010;
x5_i_tb =16'b0;
x6_r_tb = 16'b1111111111011010;
x6_i_tb =16'b0;
x7_r_tb = 16'b1111111111011010;
x7_i_tb =16'b0;
x8_r_tb = 16'b1111111111100001;
x8_i_tb =16'b0;
    x9_r_tb = 16'b1111111111011101;
   x9_i_tb = 16'b0;
   x10_r_tb = 16'b1111111111011010;
   x10_i_tb = 16'b0;
   x11_r_tb = 16'b1111111111011001;
   x11_i_tb = 16'b0;
   x12_r_tb = 16'b1111111111010111;
   x12_i_tb = 16'b0;
   x13_r_tb = 16'b1111111111011000;
   x13_i_tb = 16'b0;
   x14_r_tb = 16'b1111111111010111;
   x14_i_tb = 16'b0;
   x15_r_tb = 16'b1111111111010011;
   x15_i_tb = 16'b0;
   x16_r_tb = 16'b1111111111010001;
   x16_i_tb = 16'b0;
   x17_r_tb = 16'b1111111111010000;
   x17_i_tb = 16'b0;
   x18_r_tb = 16'b1111111111010100;
   x18_i_tb = 16'b0;
   x19_r_tb = 16'b1111111111011000;
   x19_i_tb = 16'b0;
   x20_r_tb = 16'b1111111111010011;
   x20_i_tb = 16'b0;
   x21_r_tb = 16'b1111111111010001;
   x21_i_tb = 16'b0;
   x22_r_tb = 16'b1111111111001111;
   x22_i_tb = 16'b0;
   x23_r_tb = 16'b1111111111010001;
   x23_i_tb = 16'b0;
   x24_r_tb = 16'b1111111111011000;
   x24_i_tb = 16'b0;
   x25_r_tb = 16'b1111111111011101;
   x25_i_tb = 16'b0;
   x26_r_tb = 16'b1111111111011000;
   x26_i_tb = 16'b0;
   x27_r_tb = 16'b1111111111001111;
   x27_i_tb = 16'b0;
   x28_r_tb = 16'b1111111111001011;
   x28_i_tb = 16'b0;
   x29_r_tb = 16'b1111111111000011;
   x29_i_tb = 16'b0;
   x30_r_tb = 16'b1111111111000110;
   x30_i_tb = 16'b0;
   x31_r_tb = 16'b1111111111000001;
   x31_i_tb = 16'b0; 
    x32_r_tb = 16'b1111111111000000;
x32_i_tb =16'b0;
x33_r_tb = 16'b1111111110111101;
x33_i_tb =16'b0;
x34_r_tb = 16'b1111111110111001;
x34_i_tb =16'b0;
x35_r_tb = 16'b1111111110111001;
x35_i_tb =16'b0;
x36_r_tb = 16'b1111111110111001;
x36_i_tb =16'b0;
x37_r_tb = 16'b1111111110111100;
x37_i_tb =16'b0;
x38_r_tb = 16'b1111111110111110;
x38_i_tb =16'b0;
x39_r_tb = 16'b1111111110111100;
x39_i_tb =16'b0;
x40_r_tb = 16'b1111111110111001;
x40_i_tb =16'b0;
    x41_r_tb = 16'b1111111110110101;
   x41_i_tb = 16'b0;
   x42_r_tb = 16'b1111111110110101;
   x42_i_tb = 16'b0;
   x43_r_tb = 16'b1111111110110101;
   x43_i_tb = 16'b0;
   x44_r_tb = 16'b1111111110110101;
   x44_i_tb = 16'b0;
   x45_r_tb = 16'b1111111110110111;
   x45_i_tb = 16'b0;
   x46_r_tb = 16'b1111111110110100;
   x46_i_tb = 16'b0;
   x47_r_tb = 16'b1111111110110001;
   x47_i_tb = 16'b0;
   x48_r_tb = 16'b1111111110110111;
   x48_i_tb = 16'b0;
   x49_r_tb = 16'b1111111110111001;
   x49_i_tb = 16'b0;
   x50_r_tb = 16'b1111111110111001;
   x50_i_tb = 16'b0;
   x51_r_tb = 16'b1111111110111000;
   x51_i_tb = 16'b0;
   x52_r_tb = 16'b1111111110110111;
   x52_i_tb = 16'b0;
   x53_r_tb = 16'b1111111110110001;
   x53_i_tb = 16'b0;
   x54_r_tb = 16'b1111111110110101;
   x54_i_tb = 16'b0;
   x55_r_tb = 16'b1111111110110011;
   x55_i_tb = 16'b0;
   x56_r_tb = 16'b1111111110111000;
   x56_i_tb = 16'b0;
   x57_r_tb = 16'b1111111110110101;
   x57_i_tb = 16'b0;
   x58_r_tb = 16'b1111111110110011;
   x58_i_tb = 16'b0;
   x59_r_tb = 16'b1111111110101111;
   x59_i_tb = 16'b0;
   x60_r_tb = 16'b1111111110101110;
   x60_i_tb = 16'b0;
   x61_r_tb = 16'b1111111110101010;
   x61_i_tb = 16'b0;
   x62_r_tb = 16'b1111111110100011;
   x62_i_tb = 16'b0;
   x63_r_tb = 16'b1111111110011101;
   x63_i_tb = 16'b0; 
    x64_r_tb = 16'b1111111110011101;
x64_i_tb =16'b0;
x65_r_tb = 16'b1111111110011000;
x65_i_tb =16'b0;
x66_r_tb = 16'b1111111110001011;
x66_i_tb =16'b0;
x67_r_tb = 16'b1111111110000011;
x67_i_tb =16'b0;
x68_r_tb = 16'b1111111110000011;
x68_i_tb =16'b0;
x69_r_tb = 16'b1111111110010011;
x69_i_tb =16'b0;
x70_r_tb = 16'b1111111110101011;
x70_i_tb =16'b0;
x71_r_tb = 16'b1111111111000111;
x71_i_tb =16'b0;
x72_r_tb = 16'b1111111111101110;
x72_i_tb =16'b0;
    x73_r_tb = 16'b0000000000011110;
   x73_i_tb = 16'b0;
   x74_r_tb = 16'b0000000001100000;
   x74_i_tb = 16'b0;
   x75_r_tb = 16'b0000000010011110;
   x75_i_tb = 16'b0;
   x76_r_tb = 16'b0000000011000111;
   x76_i_tb = 16'b0;
   x77_r_tb = 16'b0000000011010111;
   x77_i_tb = 16'b0;
   x78_r_tb = 16'b0000000011000011;
   x78_i_tb = 16'b0;
   x79_r_tb = 16'b0000000010000101;
   x79_i_tb = 16'b0;
   x80_r_tb = 16'b0000000000101011;
   x80_i_tb = 16'b0;
   x81_r_tb = 16'b1111111111010101;
   x81_i_tb = 16'b0;
   x82_r_tb = 16'b1111111110100010;
   x82_i_tb = 16'b0;
   x83_r_tb = 16'b1111111110010000;
   x83_i_tb = 16'b0;
   x84_r_tb = 16'b1111111110010011;
   x84_i_tb = 16'b0;
   x85_r_tb = 16'b1111111110100001;
   x85_i_tb = 16'b0;
   x86_r_tb = 16'b1111111110101011;
   x86_i_tb = 16'b0;
   x87_r_tb = 16'b1111111110101100;
   x87_i_tb = 16'b0;
   x88_r_tb = 16'b1111111110101010;
   x88_i_tb = 16'b0;
   x89_r_tb = 16'b1111111110100111;
   x89_i_tb = 16'b0;
   x90_r_tb = 16'b1111111110101011;
   x90_i_tb = 16'b0;
   x91_r_tb = 16'b1111111110101100;
   x91_i_tb = 16'b0;
   x92_r_tb = 16'b1111111110101111;
   x92_i_tb = 16'b0;
   x93_r_tb = 16'b1111111110110000;
   x93_i_tb = 16'b0;
   x94_r_tb = 16'b1111111110101110;
   x94_i_tb = 16'b0;
   x95_r_tb = 16'b1111111110101010;
   x95_i_tb = 16'b0; 
    x96_r_tb = 16'b1111111110101000;
x96_i_tb =16'b0;
x97_r_tb = 16'b1111111110101100;
x97_i_tb =16'b0;
x98_r_tb = 16'b1111111110100111;
x98_i_tb =16'b0;
x99_r_tb = 16'b1111111110101010;
x99_i_tb =16'b0;
x100_r_tb = 16'b1111111110101011;
x100_i_tb =16'b0;
x101_r_tb = 16'b1111111110101010;
x101_i_tb =16'b0;
x102_r_tb = 16'b1111111110101011;
x102_i_tb =16'b0;
x103_r_tb = 16'b1111111110101100;
x103_i_tb =16'b0;
x104_r_tb = 16'b1111111110101011;
x104_i_tb =16'b0;
    x105_r_tb = 16'b1111111110101011;
   x105_i_tb = 16'b0;
   x106_r_tb = 16'b1111111110100111;
   x106_i_tb = 16'b0;
   x107_r_tb = 16'b1111111110100101;
   x107_i_tb = 16'b0;
   x108_r_tb = 16'b1111111110101010;
   x108_i_tb = 16'b0;
   x109_r_tb = 16'b1111111110101100;
   x109_i_tb = 16'b0;
   x110_r_tb = 16'b1111111110110001;
   x110_i_tb = 16'b0;
   x111_r_tb = 16'b1111111110101110;
   x111_i_tb = 16'b0;
   x112_r_tb = 16'b1111111110101110;
   x112_i_tb = 16'b0;
   x113_r_tb = 16'b1111111110101011;
   x113_i_tb = 16'b0;
   x114_r_tb = 16'b1111111110101000;
   x114_i_tb = 16'b0;
   x115_r_tb = 16'b1111111110101010;
   x115_i_tb = 16'b0;
   x116_r_tb = 16'b1111111110101000;
   x116_i_tb = 16'b0;
   x117_r_tb = 16'b1111111110100111;
   x117_i_tb = 16'b0;
   x118_r_tb = 16'b1111111110100101;
   x118_i_tb = 16'b0;
   x119_r_tb = 16'b1111111110100101;
   x119_i_tb = 16'b0;
   x120_r_tb = 16'b1111111110101000;
   x120_i_tb = 16'b0;
   x121_r_tb = 16'b1111111110101011;
   x121_i_tb = 16'b0;
   x122_r_tb = 16'b1111111110101011;
   x122_i_tb = 16'b0;
   x123_r_tb = 16'b1111111110101011;
   x123_i_tb = 16'b0;
   x124_r_tb = 16'b1111111110101000;
   x124_i_tb = 16'b0;
   x125_r_tb = 16'b1111111110100110;
   x125_i_tb = 16'b0;
   x126_r_tb = 16'b1111111110101100;
   x126_i_tb = 16'b0;
   x127_r_tb = 16'b1111111110101100;
   x127_i_tb = 16'b0; 
   ready_inputs_tb = 1'b1 ;
    #(4*Clock_Period)
   ready_inputs_tb = 1'b0 ;

  end
endtask

task FFT_Operation;
begin
  wait(DUT.correct == 1) /* wait till the correct signal gets high then check the outputs */
  $display("X0 real is %b",DUT.X0_r);
end
endtask
   
endmodule

