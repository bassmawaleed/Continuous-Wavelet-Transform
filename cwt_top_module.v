module cwt_top_module #(
    parameter BITS = 16 						/* Number of bits of the data(inputs and outputs) */

)

(
    input wire ready_inputs ,
	input wire clk ,
	input wire rst ,
    input wire [1:0] read_scale_ram_addresses,
    input wire [BITS-1:0] x0_r ,
	input wire [BITS-1:0] x0_i ,
	input wire [BITS-1:0] x1_r ,
    input wire [BITS-1:0] x1_i ,
    input wire [BITS-1:0] x2_r ,
    input wire [BITS-1:0] x2_i ,
    input wire [BITS-1:0] x3_r ,
    input wire [BITS-1:0] x3_i ,
    input wire [BITS-1:0] x4_r ,
    input wire [BITS-1:0] x4_i ,
    input wire [BITS-1:0] x5_r ,
    input wire [BITS-1:0] x5_i ,
    input wire [BITS-1:0] x6_r ,
    input wire [BITS-1:0] x6_i ,
    input wire [BITS-1:0] x7_r ,
    input wire [BITS-1:0] x7_i ,
    input wire [BITS-1:0] x8_r ,
    input wire [BITS-1:0] x8_i ,
    input wire [BITS-1:0] x9_r ,
    input wire [BITS-1:0] x9_i ,
    input wire [BITS-1:0] x10_r ,
    input wire [BITS-1:0] x10_i ,
    input wire [BITS-1:0] x11_r ,
    input wire [BITS-1:0] x11_i ,
    input wire [BITS-1:0] x12_r ,
    input wire [BITS-1:0] x12_i ,
    input wire [BITS-1:0] x13_r ,
    input wire [BITS-1:0] x13_i ,
    input wire [BITS-1:0] x14_r ,
    input wire [BITS-1:0] x14_i ,
    input wire [BITS-1:0] x15_r ,
    input wire [BITS-1:0] x15_i ,
    input wire [BITS-1:0] x16_r ,
    input wire [BITS-1:0] x16_i ,
    input wire [BITS-1:0] x17_r ,
    input wire [BITS-1:0] x17_i ,
    input wire [BITS-1:0] x18_r ,
    input wire [BITS-1:0] x18_i ,
    input wire [BITS-1:0] x19_r ,
    input wire [BITS-1:0] x19_i ,
    input wire [BITS-1:0] x20_r ,
    input wire [BITS-1:0] x20_i ,
    input wire [BITS-1:0] x21_r ,
    input wire [BITS-1:0] x21_i ,
    input wire [BITS-1:0] x22_r ,
    input wire [BITS-1:0] x22_i ,
    input wire [BITS-1:0] x23_r ,
    input wire [BITS-1:0] x23_i ,
    input wire [BITS-1:0] x24_r ,
    input wire [BITS-1:0] x24_i ,
    input wire [BITS-1:0] x25_r ,
    input wire [BITS-1:0] x25_i ,
    input wire [BITS-1:0] x26_r ,
    input wire [BITS-1:0] x26_i ,
    input wire [BITS-1:0] x27_r ,
    input wire [BITS-1:0] x27_i ,
    input wire [BITS-1:0] x28_r ,
    input wire [BITS-1:0] x28_i ,
    input wire [BITS-1:0] x29_r ,
    input wire [BITS-1:0] x29_i ,
    input wire [BITS-1:0] x30_r ,
    input wire [BITS-1:0] x30_i ,
    input wire [BITS-1:0] x31_r ,
    input wire [BITS-1:0] x31_i ,
    input wire [BITS-1:0] x32_r ,
    input wire [BITS-1:0] x32_i ,
    input wire [BITS-1:0] x33_r ,
    input wire [BITS-1:0] x33_i ,
    input wire [BITS-1:0] x34_r ,
    input wire [BITS-1:0] x34_i ,
    input wire [BITS-1:0] x35_r ,
    input wire [BITS-1:0] x35_i ,
    input wire [BITS-1:0] x36_r ,
    input wire [BITS-1:0] x36_i ,
    input wire [BITS-1:0] x37_r ,
    input wire [BITS-1:0] x37_i ,
    input wire [BITS-1:0] x38_r ,
    input wire [BITS-1:0] x38_i ,
    input wire [BITS-1:0] x39_r ,
    input wire [BITS-1:0] x39_i ,
    input wire [BITS-1:0] x40_r ,
    input wire [BITS-1:0] x40_i ,
    input wire [BITS-1:0] x41_r ,
    input wire [BITS-1:0] x41_i ,
    input wire [BITS-1:0] x42_r ,
    input wire [BITS-1:0] x42_i ,
    input wire [BITS-1:0] x43_r ,
    input wire [BITS-1:0] x43_i ,
    input wire [BITS-1:0] x44_r ,
    input wire [BITS-1:0] x44_i ,
    input wire [BITS-1:0] x45_r ,
    input wire [BITS-1:0] x45_i ,
    input wire [BITS-1:0] x46_r ,
    input wire [BITS-1:0] x46_i ,
    input wire [BITS-1:0] x47_r ,
    input wire [BITS-1:0] x47_i ,
    input wire [BITS-1:0] x48_r ,
    input wire [BITS-1:0] x48_i ,
    input wire [BITS-1:0] x49_r ,
    input wire [BITS-1:0] x49_i ,
    input wire [BITS-1:0] x50_r ,
    input wire [BITS-1:0] x50_i ,
    input wire [BITS-1:0] x51_r ,
    input wire [BITS-1:0] x51_i ,
    input wire [BITS-1:0] x52_r ,
    input wire [BITS-1:0] x52_i ,
    input wire [BITS-1:0] x53_r ,
    input wire [BITS-1:0] x53_i ,
    input wire [BITS-1:0] x54_r ,
    input wire [BITS-1:0] x54_i ,
    input wire [BITS-1:0] x55_r ,
    input wire [BITS-1:0] x55_i ,
    input wire [BITS-1:0] x56_r ,
    input wire [BITS-1:0] x56_i ,
    input wire [BITS-1:0] x57_r ,
    input wire [BITS-1:0] x57_i ,
    input wire [BITS-1:0] x58_r ,
    input wire [BITS-1:0] x58_i ,
    input wire [BITS-1:0] x59_r ,
    input wire [BITS-1:0] x59_i ,
    input wire [BITS-1:0] x60_r ,
    input wire [BITS-1:0] x60_i ,
    input wire [BITS-1:0] x61_r ,
    input wire [BITS-1:0] x61_i ,
    input wire [BITS-1:0] x62_r ,
    input wire [BITS-1:0] x62_i ,
    input wire [BITS-1:0] x63_r ,
    input wire [BITS-1:0] x63_i ,
    input wire [BITS-1:0] x64_r ,
    input wire [BITS-1:0] x64_i ,
    input wire [BITS-1:0] x65_r ,
    input wire [BITS-1:0] x65_i ,
    input wire [BITS-1:0] x66_r ,
    input wire [BITS-1:0] x66_i ,
    input wire [BITS-1:0] x67_r ,
    input wire [BITS-1:0] x67_i ,
    input wire [BITS-1:0] x68_r ,
    input wire [BITS-1:0] x68_i ,
    input wire [BITS-1:0] x69_r ,
    input wire [BITS-1:0] x69_i ,
    input wire [BITS-1:0] x70_r ,
    input wire [BITS-1:0] x70_i ,
    input wire [BITS-1:0] x71_r ,
    input wire [BITS-1:0] x71_i ,
    input wire [BITS-1:0] x72_r ,
    input wire [BITS-1:0] x72_i ,
    input wire [BITS-1:0] x73_r ,
    input wire [BITS-1:0] x73_i ,
    input wire [BITS-1:0] x74_r ,
    input wire [BITS-1:0] x74_i ,
    input wire [BITS-1:0] x75_r ,
    input wire [BITS-1:0] x75_i ,
    input wire [BITS-1:0] x76_r ,
    input wire [BITS-1:0] x76_i ,
    input wire [BITS-1:0] x77_r ,
    input wire [BITS-1:0] x77_i ,
    input wire [BITS-1:0] x78_r ,
    input wire [BITS-1:0] x78_i ,
    input wire [BITS-1:0] x79_r ,
    input wire [BITS-1:0] x79_i ,
    input wire [BITS-1:0] x80_r ,
    input wire [BITS-1:0] x80_i ,
    input wire [BITS-1:0] x81_r ,
    input wire [BITS-1:0] x81_i ,
    input wire [BITS-1:0] x82_r ,
    input wire [BITS-1:0] x82_i ,
    input wire [BITS-1:0] x83_r ,
    input wire [BITS-1:0] x83_i ,
    input wire [BITS-1:0] x84_r ,
    input wire [BITS-1:0] x84_i ,
    input wire [BITS-1:0] x85_r ,
    input wire [BITS-1:0] x85_i ,
    input wire [BITS-1:0] x86_r ,
    input wire [BITS-1:0] x86_i ,
    input wire [BITS-1:0] x87_r ,
    input wire [BITS-1:0] x87_i ,
    input wire [BITS-1:0] x88_r ,
    input wire [BITS-1:0] x88_i ,
    input wire [BITS-1:0] x89_r ,
    input wire [BITS-1:0] x89_i ,
    input wire [BITS-1:0] x90_r ,
    input wire [BITS-1:0] x90_i ,
    input wire [BITS-1:0] x91_r ,
    input wire [BITS-1:0] x91_i ,
    input wire [BITS-1:0] x92_r ,
    input wire [BITS-1:0] x92_i ,
    input wire [BITS-1:0] x93_r ,
    input wire [BITS-1:0] x93_i ,
    input wire [BITS-1:0] x94_r ,
    input wire [BITS-1:0] x94_i ,
    input wire [BITS-1:0] x95_r ,
    input wire [BITS-1:0] x95_i ,
    input wire [BITS-1:0] x96_r ,
    input wire [BITS-1:0] x96_i ,
    input wire [BITS-1:0] x97_r ,
    input wire [BITS-1:0] x97_i ,
    input wire [BITS-1:0] x98_r ,
    input wire [BITS-1:0] x98_i ,
    input wire [BITS-1:0] x99_r ,
    input wire [BITS-1:0] x99_i ,
    input wire [BITS-1:0] x100_r ,
    input wire [BITS-1:0] x100_i ,
    input wire [BITS-1:0] x101_r ,
    input wire [BITS-1:0] x101_i ,
    input wire [BITS-1:0] x102_r ,
    input wire [BITS-1:0] x102_i ,
    input wire [BITS-1:0] x103_r ,
    input wire [BITS-1:0] x103_i ,
    input wire [BITS-1:0] x104_r ,
    input wire [BITS-1:0] x104_i ,
    input wire [BITS-1:0] x105_r ,
    input wire [BITS-1:0] x105_i ,
    input wire [BITS-1:0] x106_r ,
    input wire [BITS-1:0] x106_i ,
    input wire [BITS-1:0] x107_r ,
    input wire [BITS-1:0] x107_i ,
    input wire [BITS-1:0] x108_r ,
    input wire [BITS-1:0] x108_i ,
    input wire [BITS-1:0] x109_r ,
    input wire [BITS-1:0] x109_i ,
    input wire [BITS-1:0] x110_r ,
    input wire [BITS-1:0] x110_i ,
    input wire [BITS-1:0] x111_r ,
    input wire [BITS-1:0] x111_i ,
    input wire [BITS-1:0] x112_r ,
    input wire [BITS-1:0] x112_i ,
    input wire [BITS-1:0] x113_r ,
    input wire [BITS-1:0] x113_i ,
    input wire [BITS-1:0] x114_r ,
    input wire [BITS-1:0] x114_i ,
    input wire [BITS-1:0] x115_r ,
    input wire [BITS-1:0] x115_i ,
    input wire [BITS-1:0] x116_r ,
    input wire [BITS-1:0] x116_i ,
    input wire [BITS-1:0] x117_r ,
    input wire [BITS-1:0] x117_i ,
    input wire [BITS-1:0] x118_r ,
    input wire [BITS-1:0] x118_i ,
    input wire [BITS-1:0] x119_r ,
    input wire [BITS-1:0] x119_i ,
    input wire [BITS-1:0] x120_r ,
    input wire [BITS-1:0] x120_i ,
    input wire [BITS-1:0] x121_r ,
    input wire [BITS-1:0] x121_i ,
    input wire [BITS-1:0] x122_r ,
    input wire [BITS-1:0] x122_i ,
    input wire [BITS-1:0] x123_r ,
    input wire [BITS-1:0] x123_i ,
    input wire [BITS-1:0] x124_r ,
    input wire [BITS-1:0] x124_i ,
    input wire [BITS-1:0] x125_r ,
    input wire [BITS-1:0] x125_i ,
    input wire [BITS-1:0] x126_r ,
    input wire [BITS-1:0] x126_i ,
    input wire [BITS-1:0] x127_r ,
    input wire [BITS-1:0] x127_i ,




    output wire [15:0] memory_0_scale_1_real,
    output wire [15:0] memory_1_scale_1_real,
    output wire [15:0] memory_2_scale_1_real,
    output wire [15:0] memory_3_scale_1_real,
    output wire [15:0] memory_4_scale_1_real,
    output wire [15:0] memory_5_scale_1_real,
    output wire [15:0] memory_6_scale_1_real,
    output wire [15:0] memory_7_scale_1_real,
    output wire [15:0] memory_8_scale_1_real,
    output wire [15:0] memory_9_scale_1_real,
    output wire [15:0] memory_10_scale_1_real,
    output wire [15:0] memory_11_scale_1_real,
    output wire [15:0] memory_12_scale_1_real,
    output wire [15:0] memory_13_scale_1_real,
    output wire [15:0] memory_14_scale_1_real,
    output wire [15:0] memory_15_scale_1_real,
    output wire [15:0] memory_16_scale_1_real,
    output wire [15:0] memory_17_scale_1_real,
    output wire [15:0] memory_18_scale_1_real,
    output wire [15:0] memory_19_scale_1_real,
    output wire [15:0] memory_20_scale_1_real,
    output wire [15:0] memory_21_scale_1_real,
    output wire [15:0] memory_22_scale_1_real,
    output wire [15:0] memory_23_scale_1_real,
    output wire [15:0] memory_24_scale_1_real,
    output wire [15:0] memory_25_scale_1_real,
    output wire [15:0] memory_26_scale_1_real,
    output wire [15:0] memory_27_scale_1_real,
    output wire [15:0] memory_28_scale_1_real,
    output wire [15:0] memory_29_scale_1_real,
    output wire [15:0] memory_30_scale_1_real,
    output wire [15:0] memory_31_scale_1_real,
    output wire [15:0] memory_0_scale_2_real,
    output wire [15:0] memory_1_scale_2_real,
    output wire [15:0] memory_2_scale_2_real,
    output wire [15:0] memory_3_scale_2_real,
    output wire [15:0] memory_4_scale_2_real,
    output wire [15:0] memory_5_scale_2_real,
    output wire [15:0] memory_6_scale_2_real,
    output wire [15:0] memory_7_scale_2_real,
    output wire [15:0] memory_8_scale_2_real,
    output wire [15:0] memory_9_scale_2_real,
    output wire [15:0] memory_10_scale_2_real,
    output wire [15:0] memory_11_scale_2_real,
    output wire [15:0] memory_12_scale_2_real,
    output wire [15:0] memory_13_scale_2_real,
    output wire [15:0] memory_14_scale_2_real,
    output wire [15:0] memory_15_scale_2_real,
    output wire [15:0] memory_16_scale_2_real,
    output wire [15:0] memory_17_scale_2_real,
    output wire [15:0] memory_18_scale_2_real,
    output wire [15:0] memory_19_scale_2_real,
    output wire [15:0] memory_20_scale_2_real,
    output wire [15:0] memory_21_scale_2_real,
    output wire [15:0] memory_22_scale_2_real,
    output wire [15:0] memory_23_scale_2_real,
    output wire [15:0] memory_24_scale_2_real,
    output wire [15:0] memory_25_scale_2_real,
    output wire [15:0] memory_26_scale_2_real,
    output wire [15:0] memory_27_scale_2_real,
    output wire [15:0] memory_28_scale_2_real,
    output wire [15:0] memory_29_scale_2_real,
    output wire [15:0] memory_30_scale_2_real,
    output wire [15:0] memory_31_scale_2_real,
    output wire [15:0] memory_0_scale_3_real,
    output wire [15:0] memory_1_scale_3_real,
    output wire [15:0] memory_2_scale_3_real,
    output wire [15:0] memory_3_scale_3_real,
    output wire [15:0] memory_4_scale_3_real,
    output wire [15:0] memory_5_scale_3_real,
    output wire [15:0] memory_6_scale_3_real,
    output wire [15:0] memory_7_scale_3_real,
    output wire [15:0] memory_8_scale_3_real,
    output wire [15:0] memory_9_scale_3_real,
    output wire [15:0] memory_10_scale_3_real,
    output wire [15:0] memory_11_scale_3_real,
    output wire [15:0] memory_12_scale_3_real,
    output wire [15:0] memory_13_scale_3_real,
    output wire [15:0] memory_14_scale_3_real,
    output wire [15:0] memory_15_scale_3_real,
    output wire [15:0] memory_16_scale_3_real,
    output wire [15:0] memory_17_scale_3_real,
    output wire [15:0] memory_18_scale_3_real,
    output wire [15:0] memory_19_scale_3_real,
    output wire [15:0] memory_20_scale_3_real,
    output wire [15:0] memory_21_scale_3_real,
    output wire [15:0] memory_22_scale_3_real,
    output wire [15:0] memory_23_scale_3_real,
    output wire [15:0] memory_24_scale_3_real,
    output wire [15:0] memory_25_scale_3_real,
    output wire [15:0] memory_26_scale_3_real,
    output wire [15:0] memory_27_scale_3_real,
    output wire [15:0] memory_28_scale_3_real,
    output wire [15:0] memory_29_scale_3_real,
    output wire [15:0] memory_30_scale_3_real,
    output wire [15:0] memory_31_scale_3_real,
    output wire [15:0] memory_0_scale_4_real,
    output wire [15:0] memory_1_scale_4_real,
    output wire [15:0] memory_2_scale_4_real,
    output wire [15:0] memory_3_scale_4_real,
    output wire [15:0] memory_4_scale_4_real,
    output wire [15:0] memory_5_scale_4_real,
    output wire [15:0] memory_6_scale_4_real,
    output wire [15:0] memory_7_scale_4_real,
    output wire [15:0] memory_8_scale_4_real,
    output wire [15:0] memory_9_scale_4_real,
    output wire [15:0] memory_10_scale_4_real,
    output wire [15:0] memory_11_scale_4_real,
    output wire [15:0] memory_12_scale_4_real,
    output wire [15:0] memory_13_scale_4_real,
    output wire [15:0] memory_14_scale_4_real,
    output wire [15:0] memory_15_scale_4_real,
    output wire [15:0] memory_16_scale_4_real,
    output wire [15:0] memory_17_scale_4_real,
    output wire [15:0] memory_18_scale_4_real,
    output wire [15:0] memory_19_scale_4_real,
    output wire [15:0] memory_20_scale_4_real,
    output wire [15:0] memory_21_scale_4_real,
    output wire [15:0] memory_22_scale_4_real,
    output wire [15:0] memory_23_scale_4_real,
    output wire [15:0] memory_24_scale_4_real,
    output wire [15:0] memory_25_scale_4_real,
    output wire [15:0] memory_26_scale_4_real,
    output wire [15:0] memory_27_scale_4_real,
    output wire [15:0] memory_28_scale_4_real,
    output wire [15:0] memory_29_scale_4_real,
    output wire [15:0] memory_30_scale_4_real,
    output wire [15:0] memory_31_scale_4_real,
    output wire [15:0] memory_0_scale_5_real,
    output wire [15:0] memory_1_scale_5_real,
    output wire [15:0] memory_2_scale_5_real,
    output wire [15:0] memory_3_scale_5_real,
    output wire [15:0] memory_4_scale_5_real,
    output wire [15:0] memory_5_scale_5_real,
    output wire [15:0] memory_6_scale_5_real,
    output wire [15:0] memory_7_scale_5_real,
    output wire [15:0] memory_8_scale_5_real,
    output wire [15:0] memory_9_scale_5_real,
    output wire [15:0] memory_10_scale_5_real,
    output wire [15:0] memory_11_scale_5_real,
    output wire [15:0] memory_12_scale_5_real,
    output wire [15:0] memory_13_scale_5_real,
    output wire [15:0] memory_14_scale_5_real,
    output wire [15:0] memory_15_scale_5_real,
    output wire [15:0] memory_16_scale_5_real,
    output wire [15:0] memory_17_scale_5_real,
    output wire [15:0] memory_18_scale_5_real,
    output wire [15:0] memory_19_scale_5_real,
    output wire [15:0] memory_20_scale_5_real,
    output wire [15:0] memory_21_scale_5_real,
    output wire [15:0] memory_22_scale_5_real,
    output wire [15:0] memory_23_scale_5_real,
    output wire [15:0] memory_24_scale_5_real,
    output wire [15:0] memory_25_scale_5_real,
    output wire [15:0] memory_26_scale_5_real,
    output wire [15:0] memory_27_scale_5_real,
    output wire [15:0] memory_28_scale_5_real,
    output wire [15:0] memory_29_scale_5_real,
    output wire [15:0] memory_30_scale_5_real,
    output wire [15:0] memory_31_scale_5_real,
    output wire [15:0] memory_0_scale_6_real,
    output wire [15:0] memory_1_scale_6_real,
    output wire [15:0] memory_2_scale_6_real,
    output wire [15:0] memory_3_scale_6_real,
    output wire [15:0] memory_4_scale_6_real,
    output wire [15:0] memory_5_scale_6_real,
    output wire [15:0] memory_6_scale_6_real,
    output wire [15:0] memory_7_scale_6_real,
    output wire [15:0] memory_8_scale_6_real,
    output wire [15:0] memory_9_scale_6_real,
    output wire [15:0] memory_10_scale_6_real,
    output wire [15:0] memory_11_scale_6_real,
    output wire [15:0] memory_12_scale_6_real,
    output wire [15:0] memory_13_scale_6_real,
    output wire [15:0] memory_14_scale_6_real,
    output wire [15:0] memory_15_scale_6_real,
    output wire [15:0] memory_16_scale_6_real,
    output wire [15:0] memory_17_scale_6_real,
    output wire [15:0] memory_18_scale_6_real,
    output wire [15:0] memory_19_scale_6_real,
    output wire [15:0] memory_20_scale_6_real,
    output wire [15:0] memory_21_scale_6_real,
    output wire [15:0] memory_22_scale_6_real,
    output wire [15:0] memory_23_scale_6_real,
    output wire [15:0] memory_24_scale_6_real,
    output wire [15:0] memory_25_scale_6_real,
    output wire [15:0] memory_26_scale_6_real,
    output wire [15:0] memory_27_scale_6_real,
    output wire [15:0] memory_28_scale_6_real,
    output wire [15:0] memory_29_scale_6_real,
    output wire [15:0] memory_30_scale_6_real,
    output wire [15:0] memory_31_scale_6_real,
    output wire [15:0] memory_0_scale_7_real,
    output wire [15:0] memory_1_scale_7_real,
    output wire [15:0] memory_2_scale_7_real,
    output wire [15:0] memory_3_scale_7_real,
    output wire [15:0] memory_4_scale_7_real,
    output wire [15:0] memory_5_scale_7_real,
    output wire [15:0] memory_6_scale_7_real,
    output wire [15:0] memory_7_scale_7_real,
    output wire [15:0] memory_8_scale_7_real,
    output wire [15:0] memory_9_scale_7_real,
    output wire [15:0] memory_10_scale_7_real,
    output wire [15:0] memory_11_scale_7_real,
    output wire [15:0] memory_12_scale_7_real,
    output wire [15:0] memory_13_scale_7_real,
    output wire [15:0] memory_14_scale_7_real,
    output wire [15:0] memory_15_scale_7_real,
    output wire [15:0] memory_16_scale_7_real,
    output wire [15:0] memory_17_scale_7_real,
    output wire [15:0] memory_18_scale_7_real,
    output wire [15:0] memory_19_scale_7_real,
    output wire [15:0] memory_20_scale_7_real,
    output wire [15:0] memory_21_scale_7_real,
    output wire [15:0] memory_22_scale_7_real,
    output wire [15:0] memory_23_scale_7_real,
    output wire [15:0] memory_24_scale_7_real,
    output wire [15:0] memory_25_scale_7_real,
    output wire [15:0] memory_26_scale_7_real,
    output wire [15:0] memory_27_scale_7_real,
    output wire [15:0] memory_28_scale_7_real,
    output wire [15:0] memory_29_scale_7_real,
    output wire [15:0] memory_30_scale_7_real,
    output wire [15:0] memory_31_scale_7_real,
    output wire [15:0] memory_0_scale_8_real,
    output wire [15:0] memory_1_scale_8_real,
    output wire [15:0] memory_2_scale_8_real,
    output wire [15:0] memory_3_scale_8_real,
    output wire [15:0] memory_4_scale_8_real,
    output wire [15:0] memory_5_scale_8_real,
    output wire [15:0] memory_6_scale_8_real,
    output wire [15:0] memory_7_scale_8_real,
    output wire [15:0] memory_8_scale_8_real,
    output wire [15:0] memory_9_scale_8_real,
    output wire [15:0] memory_10_scale_8_real,
    output wire [15:0] memory_11_scale_8_real,
    output wire [15:0] memory_12_scale_8_real,
    output wire [15:0] memory_13_scale_8_real,
    output wire [15:0] memory_14_scale_8_real,
    output wire [15:0] memory_15_scale_8_real,
    output wire [15:0] memory_16_scale_8_real,
    output wire [15:0] memory_17_scale_8_real,
    output wire [15:0] memory_18_scale_8_real,
    output wire [15:0] memory_19_scale_8_real,
    output wire [15:0] memory_20_scale_8_real,
    output wire [15:0] memory_21_scale_8_real,
    output wire [15:0] memory_22_scale_8_real,
    output wire [15:0] memory_23_scale_8_real,
    output wire [15:0] memory_24_scale_8_real,
    output wire [15:0] memory_25_scale_8_real,
    output wire [15:0] memory_26_scale_8_real,
    output wire [15:0] memory_27_scale_8_real,
    output wire [15:0] memory_28_scale_8_real,
    output wire [15:0] memory_29_scale_8_real,
    output wire [15:0] memory_30_scale_8_real,
    output wire [15:0] memory_31_scale_8_real,
    output wire [15:0] memory_0_scale_9_real,
    output wire [15:0] memory_1_scale_9_real,
    output wire [15:0] memory_2_scale_9_real,
    output wire [15:0] memory_3_scale_9_real,
    output wire [15:0] memory_4_scale_9_real,
    output wire [15:0] memory_5_scale_9_real,
    output wire [15:0] memory_6_scale_9_real,
    output wire [15:0] memory_7_scale_9_real,
    output wire [15:0] memory_8_scale_9_real,
    output wire [15:0] memory_9_scale_9_real,
    output wire [15:0] memory_10_scale_9_real,
    output wire [15:0] memory_11_scale_9_real,
    output wire [15:0] memory_12_scale_9_real,
    output wire [15:0] memory_13_scale_9_real,
    output wire [15:0] memory_14_scale_9_real,
    output wire [15:0] memory_15_scale_9_real,
    output wire [15:0] memory_16_scale_9_real,
    output wire [15:0] memory_17_scale_9_real,
    output wire [15:0] memory_18_scale_9_real,
    output wire [15:0] memory_19_scale_9_real,
    output wire [15:0] memory_20_scale_9_real,
    output wire [15:0] memory_21_scale_9_real,
    output wire [15:0] memory_22_scale_9_real,
    output wire [15:0] memory_23_scale_9_real,
    output wire [15:0] memory_24_scale_9_real,
    output wire [15:0] memory_25_scale_9_real,
    output wire [15:0] memory_26_scale_9_real,
    output wire [15:0] memory_27_scale_9_real,
    output wire [15:0] memory_28_scale_9_real,
    output wire [15:0] memory_29_scale_9_real,
    output wire [15:0] memory_30_scale_9_real,
    output wire [15:0] memory_31_scale_9_real,
    output wire [15:0] memory_0_scale_10_real,
    output wire [15:0] memory_1_scale_10_real,
    output wire [15:0] memory_2_scale_10_real,
    output wire [15:0] memory_3_scale_10_real,
    output wire [15:0] memory_4_scale_10_real,
    output wire [15:0] memory_5_scale_10_real,
    output wire [15:0] memory_6_scale_10_real,
    output wire [15:0] memory_7_scale_10_real,
    output wire [15:0] memory_8_scale_10_real,
    output wire [15:0] memory_9_scale_10_real,
    output wire [15:0] memory_10_scale_10_real,
    output wire [15:0] memory_11_scale_10_real,
    output wire [15:0] memory_12_scale_10_real,
    output wire [15:0] memory_13_scale_10_real,
    output wire [15:0] memory_14_scale_10_real,
    output wire [15:0] memory_15_scale_10_real,
    output wire [15:0] memory_16_scale_10_real,
    output wire [15:0] memory_17_scale_10_real,
    output wire [15:0] memory_18_scale_10_real,
    output wire [15:0] memory_19_scale_10_real,
    output wire [15:0] memory_20_scale_10_real,
    output wire [15:0] memory_21_scale_10_real,
    output wire [15:0] memory_22_scale_10_real,
    output wire [15:0] memory_23_scale_10_real,
    output wire [15:0] memory_24_scale_10_real,
    output wire [15:0] memory_25_scale_10_real,
    output wire [15:0] memory_26_scale_10_real,
    output wire [15:0] memory_27_scale_10_real,
    output wire [15:0] memory_28_scale_10_real,
    output wire [15:0] memory_29_scale_10_real,
    output wire [15:0] memory_30_scale_10_real,
    output wire [15:0] memory_31_scale_10_real,
    output wire [15:0] memory_0_scale_11_real,
    output wire [15:0] memory_1_scale_11_real,
    output wire [15:0] memory_2_scale_11_real,
    output wire [15:0] memory_3_scale_11_real,
    output wire [15:0] memory_4_scale_11_real,
    output wire [15:0] memory_5_scale_11_real,
    output wire [15:0] memory_6_scale_11_real,
    output wire [15:0] memory_7_scale_11_real,
    output wire [15:0] memory_8_scale_11_real,
    output wire [15:0] memory_9_scale_11_real,
    output wire [15:0] memory_10_scale_11_real,
    output wire [15:0] memory_11_scale_11_real,
    output wire [15:0] memory_12_scale_11_real,
    output wire [15:0] memory_13_scale_11_real,
    output wire [15:0] memory_14_scale_11_real,
    output wire [15:0] memory_15_scale_11_real,
    output wire [15:0] memory_16_scale_11_real,
    output wire [15:0] memory_17_scale_11_real,
    output wire [15:0] memory_18_scale_11_real,
    output wire [15:0] memory_19_scale_11_real,
    output wire [15:0] memory_20_scale_11_real,
    output wire [15:0] memory_21_scale_11_real,
    output wire [15:0] memory_22_scale_11_real,
    output wire [15:0] memory_23_scale_11_real,
    output wire [15:0] memory_24_scale_11_real,
    output wire [15:0] memory_25_scale_11_real,
    output wire [15:0] memory_26_scale_11_real,
    output wire [15:0] memory_27_scale_11_real,
    output wire [15:0] memory_28_scale_11_real,
    output wire [15:0] memory_29_scale_11_real,
    output wire [15:0] memory_30_scale_11_real,
    output wire [15:0] memory_31_scale_11_real,
    output wire [15:0] memory_0_scale_12_real,
    output wire [15:0] memory_1_scale_12_real,
    output wire [15:0] memory_2_scale_12_real,
    output wire [15:0] memory_3_scale_12_real,
    output wire [15:0] memory_4_scale_12_real,
    output wire [15:0] memory_5_scale_12_real,
    output wire [15:0] memory_6_scale_12_real,
    output wire [15:0] memory_7_scale_12_real,
    output wire [15:0] memory_8_scale_12_real,
    output wire [15:0] memory_9_scale_12_real,
    output wire [15:0] memory_10_scale_12_real,
    output wire [15:0] memory_11_scale_12_real,
    output wire [15:0] memory_12_scale_12_real,
    output wire [15:0] memory_13_scale_12_real,
    output wire [15:0] memory_14_scale_12_real,
    output wire [15:0] memory_15_scale_12_real,
    output wire [15:0] memory_16_scale_12_real,
    output wire [15:0] memory_17_scale_12_real,
    output wire [15:0] memory_18_scale_12_real,
    output wire [15:0] memory_19_scale_12_real,
    output wire [15:0] memory_20_scale_12_real,
    output wire [15:0] memory_21_scale_12_real,
    output wire [15:0] memory_22_scale_12_real,
    output wire [15:0] memory_23_scale_12_real,
    output wire [15:0] memory_24_scale_12_real,
    output wire [15:0] memory_25_scale_12_real,
    output wire [15:0] memory_26_scale_12_real,
    output wire [15:0] memory_27_scale_12_real,
    output wire [15:0] memory_28_scale_12_real,
    output wire [15:0] memory_29_scale_12_real,
    output wire [15:0] memory_30_scale_12_real,
    output wire [15:0] memory_31_scale_12_real,
    output wire [15:0] memory_0_scale_13_real,
    output wire [15:0] memory_1_scale_13_real,
    output wire [15:0] memory_2_scale_13_real,
    output wire [15:0] memory_3_scale_13_real,
    output wire [15:0] memory_4_scale_13_real,
    output wire [15:0] memory_5_scale_13_real,
    output wire [15:0] memory_6_scale_13_real,
    output wire [15:0] memory_7_scale_13_real,
    output wire [15:0] memory_8_scale_13_real,
    output wire [15:0] memory_9_scale_13_real,
    output wire [15:0] memory_10_scale_13_real,
    output wire [15:0] memory_11_scale_13_real,
    output wire [15:0] memory_12_scale_13_real,
    output wire [15:0] memory_13_scale_13_real,
    output wire [15:0] memory_14_scale_13_real,
    output wire [15:0] memory_15_scale_13_real,
    output wire [15:0] memory_16_scale_13_real,
    output wire [15:0] memory_17_scale_13_real,
    output wire [15:0] memory_18_scale_13_real,
    output wire [15:0] memory_19_scale_13_real,
    output wire [15:0] memory_20_scale_13_real,
    output wire [15:0] memory_21_scale_13_real,
    output wire [15:0] memory_22_scale_13_real,
    output wire [15:0] memory_23_scale_13_real,
    output wire [15:0] memory_24_scale_13_real,
    output wire [15:0] memory_25_scale_13_real,
    output wire [15:0] memory_26_scale_13_real,
    output wire [15:0] memory_27_scale_13_real,
    output wire [15:0] memory_28_scale_13_real,
    output wire [15:0] memory_29_scale_13_real,
    output wire [15:0] memory_30_scale_13_real,
    output wire [15:0] memory_31_scale_13_real,
    output wire [15:0] memory_0_scale_14_real,
    output wire [15:0] memory_1_scale_14_real,
    output wire [15:0] memory_2_scale_14_real,
    output wire [15:0] memory_3_scale_14_real,
    output wire [15:0] memory_4_scale_14_real,
    output wire [15:0] memory_5_scale_14_real,
    output wire [15:0] memory_6_scale_14_real,
    output wire [15:0] memory_7_scale_14_real,
    output wire [15:0] memory_8_scale_14_real,
    output wire [15:0] memory_9_scale_14_real,
    output wire [15:0] memory_10_scale_14_real,
    output wire [15:0] memory_11_scale_14_real,
    output wire [15:0] memory_12_scale_14_real,
    output wire [15:0] memory_13_scale_14_real,
    output wire [15:0] memory_14_scale_14_real,
    output wire [15:0] memory_15_scale_14_real,
    output wire [15:0] memory_16_scale_14_real,
    output wire [15:0] memory_17_scale_14_real,
    output wire [15:0] memory_18_scale_14_real,
    output wire [15:0] memory_19_scale_14_real,
    output wire [15:0] memory_20_scale_14_real,
    output wire [15:0] memory_21_scale_14_real,
    output wire [15:0] memory_22_scale_14_real,
    output wire [15:0] memory_23_scale_14_real,
    output wire [15:0] memory_24_scale_14_real,
    output wire [15:0] memory_25_scale_14_real,
    output wire [15:0] memory_26_scale_14_real,
    output wire [15:0] memory_27_scale_14_real,
    output wire [15:0] memory_28_scale_14_real,
    output wire [15:0] memory_29_scale_14_real,
    output wire [15:0] memory_30_scale_14_real,
    output wire [15:0] memory_31_scale_14_real,
    output wire [15:0] memory_0_scale_15_real,
    output wire [15:0] memory_1_scale_15_real,
    output wire [15:0] memory_2_scale_15_real,
    output wire [15:0] memory_3_scale_15_real,
    output wire [15:0] memory_4_scale_15_real,
    output wire [15:0] memory_5_scale_15_real,
    output wire [15:0] memory_6_scale_15_real,
    output wire [15:0] memory_7_scale_15_real,
    output wire [15:0] memory_8_scale_15_real,
    output wire [15:0] memory_9_scale_15_real,
    output wire [15:0] memory_10_scale_15_real,
    output wire [15:0] memory_11_scale_15_real,
    output wire [15:0] memory_12_scale_15_real,
    output wire [15:0] memory_13_scale_15_real,
    output wire [15:0] memory_14_scale_15_real,
    output wire [15:0] memory_15_scale_15_real,
    output wire [15:0] memory_16_scale_15_real,
    output wire [15:0] memory_17_scale_15_real,
    output wire [15:0] memory_18_scale_15_real,
    output wire [15:0] memory_19_scale_15_real,
    output wire [15:0] memory_20_scale_15_real,
    output wire [15:0] memory_21_scale_15_real,
    output wire [15:0] memory_22_scale_15_real,
    output wire [15:0] memory_23_scale_15_real,
    output wire [15:0] memory_24_scale_15_real,
    output wire [15:0] memory_25_scale_15_real,
    output wire [15:0] memory_26_scale_15_real,
    output wire [15:0] memory_27_scale_15_real,
    output wire [15:0] memory_28_scale_15_real,
    output wire [15:0] memory_29_scale_15_real,
    output wire [15:0] memory_30_scale_15_real,
    output wire [15:0] memory_31_scale_15_real,





    output wire [15:0] memory_0_scale_1_imag,
    output wire [15:0] memory_1_scale_1_imag,
    output wire [15:0] memory_2_scale_1_imag,
    output wire [15:0] memory_3_scale_1_imag,
    output wire [15:0] memory_4_scale_1_imag,
    output wire [15:0] memory_5_scale_1_imag,
    output wire [15:0] memory_6_scale_1_imag,
    output wire [15:0] memory_7_scale_1_imag,
    output wire [15:0] memory_8_scale_1_imag,
    output wire [15:0] memory_9_scale_1_imag,
    output wire [15:0] memory_10_scale_1_imag,
    output wire [15:0] memory_11_scale_1_imag,
    output wire [15:0] memory_12_scale_1_imag,
    output wire [15:0] memory_13_scale_1_imag,
    output wire [15:0] memory_14_scale_1_imag,
    output wire [15:0] memory_15_scale_1_imag,
    output wire [15:0] memory_16_scale_1_imag,
    output wire [15:0] memory_17_scale_1_imag,
    output wire [15:0] memory_18_scale_1_imag,
    output wire [15:0] memory_19_scale_1_imag,
    output wire [15:0] memory_20_scale_1_imag,
    output wire [15:0] memory_21_scale_1_imag,
    output wire [15:0] memory_22_scale_1_imag,
    output wire [15:0] memory_23_scale_1_imag,
    output wire [15:0] memory_24_scale_1_imag,
    output wire [15:0] memory_25_scale_1_imag,
    output wire [15:0] memory_26_scale_1_imag,
    output wire [15:0] memory_27_scale_1_imag,
    output wire [15:0] memory_28_scale_1_imag,
    output wire [15:0] memory_29_scale_1_imag,
    output wire [15:0] memory_30_scale_1_imag,
    output wire [15:0] memory_31_scale_1_imag,
    output wire [15:0] memory_0_scale_2_imag,
    output wire [15:0] memory_1_scale_2_imag,
    output wire [15:0] memory_2_scale_2_imag,
    output wire [15:0] memory_3_scale_2_imag,
    output wire [15:0] memory_4_scale_2_imag,
    output wire [15:0] memory_5_scale_2_imag,
    output wire [15:0] memory_6_scale_2_imag,
    output wire [15:0] memory_7_scale_2_imag,
    output wire [15:0] memory_8_scale_2_imag,
    output wire [15:0] memory_9_scale_2_imag,
    output wire [15:0] memory_10_scale_2_imag,
    output wire [15:0] memory_11_scale_2_imag,
    output wire [15:0] memory_12_scale_2_imag,
    output wire [15:0] memory_13_scale_2_imag,
    output wire [15:0] memory_14_scale_2_imag,
    output wire [15:0] memory_15_scale_2_imag,
    output wire [15:0] memory_16_scale_2_imag,
    output wire [15:0] memory_17_scale_2_imag,
    output wire [15:0] memory_18_scale_2_imag,
    output wire [15:0] memory_19_scale_2_imag,
    output wire [15:0] memory_20_scale_2_imag,
    output wire [15:0] memory_21_scale_2_imag,
    output wire [15:0] memory_22_scale_2_imag,
    output wire [15:0] memory_23_scale_2_imag,
    output wire [15:0] memory_24_scale_2_imag,
    output wire [15:0] memory_25_scale_2_imag,
    output wire [15:0] memory_26_scale_2_imag,
    output wire [15:0] memory_27_scale_2_imag,
    output wire [15:0] memory_28_scale_2_imag,
    output wire [15:0] memory_29_scale_2_imag,
    output wire [15:0] memory_30_scale_2_imag,
    output wire [15:0] memory_31_scale_2_imag,
    output wire [15:0] memory_0_scale_3_imag,
    output wire [15:0] memory_1_scale_3_imag,
    output wire [15:0] memory_2_scale_3_imag,
    output wire [15:0] memory_3_scale_3_imag,
    output wire [15:0] memory_4_scale_3_imag,
    output wire [15:0] memory_5_scale_3_imag,
    output wire [15:0] memory_6_scale_3_imag,
    output wire [15:0] memory_7_scale_3_imag,
    output wire [15:0] memory_8_scale_3_imag,
    output wire [15:0] memory_9_scale_3_imag,
    output wire [15:0] memory_10_scale_3_imag,
    output wire [15:0] memory_11_scale_3_imag,
    output wire [15:0] memory_12_scale_3_imag,
    output wire [15:0] memory_13_scale_3_imag,
    output wire [15:0] memory_14_scale_3_imag,
    output wire [15:0] memory_15_scale_3_imag,
    output wire [15:0] memory_16_scale_3_imag,
    output wire [15:0] memory_17_scale_3_imag,
    output wire [15:0] memory_18_scale_3_imag,
    output wire [15:0] memory_19_scale_3_imag,
    output wire [15:0] memory_20_scale_3_imag,
    output wire [15:0] memory_21_scale_3_imag,
    output wire [15:0] memory_22_scale_3_imag,
    output wire [15:0] memory_23_scale_3_imag,
    output wire [15:0] memory_24_scale_3_imag,
    output wire [15:0] memory_25_scale_3_imag,
    output wire [15:0] memory_26_scale_3_imag,
    output wire [15:0] memory_27_scale_3_imag,
    output wire [15:0] memory_28_scale_3_imag,
    output wire [15:0] memory_29_scale_3_imag,
    output wire [15:0] memory_30_scale_3_imag,
    output wire [15:0] memory_31_scale_3_imag,
    output wire [15:0] memory_0_scale_4_imag,
    output wire [15:0] memory_1_scale_4_imag,
    output wire [15:0] memory_2_scale_4_imag,
    output wire [15:0] memory_3_scale_4_imag,
    output wire [15:0] memory_4_scale_4_imag,
    output wire [15:0] memory_5_scale_4_imag,
    output wire [15:0] memory_6_scale_4_imag,
    output wire [15:0] memory_7_scale_4_imag,
    output wire [15:0] memory_8_scale_4_imag,
    output wire [15:0] memory_9_scale_4_imag,
    output wire [15:0] memory_10_scale_4_imag,
    output wire [15:0] memory_11_scale_4_imag,
    output wire [15:0] memory_12_scale_4_imag,
    output wire [15:0] memory_13_scale_4_imag,
    output wire [15:0] memory_14_scale_4_imag,
    output wire [15:0] memory_15_scale_4_imag,
    output wire [15:0] memory_16_scale_4_imag,
    output wire [15:0] memory_17_scale_4_imag,
    output wire [15:0] memory_18_scale_4_imag,
    output wire [15:0] memory_19_scale_4_imag,
    output wire [15:0] memory_20_scale_4_imag,
    output wire [15:0] memory_21_scale_4_imag,
    output wire [15:0] memory_22_scale_4_imag,
    output wire [15:0] memory_23_scale_4_imag,
    output wire [15:0] memory_24_scale_4_imag,
    output wire [15:0] memory_25_scale_4_imag,
    output wire [15:0] memory_26_scale_4_imag,
    output wire [15:0] memory_27_scale_4_imag,
    output wire [15:0] memory_28_scale_4_imag,
    output wire [15:0] memory_29_scale_4_imag,
    output wire [15:0] memory_30_scale_4_imag,
    output wire [15:0] memory_31_scale_4_imag,
    output wire [15:0] memory_0_scale_5_imag,
    output wire [15:0] memory_1_scale_5_imag,
    output wire [15:0] memory_2_scale_5_imag,
    output wire [15:0] memory_3_scale_5_imag,
    output wire [15:0] memory_4_scale_5_imag,
    output wire [15:0] memory_5_scale_5_imag,
    output wire [15:0] memory_6_scale_5_imag,
    output wire [15:0] memory_7_scale_5_imag,
    output wire [15:0] memory_8_scale_5_imag,
    output wire [15:0] memory_9_scale_5_imag,
    output wire [15:0] memory_10_scale_5_imag,
    output wire [15:0] memory_11_scale_5_imag,
    output wire [15:0] memory_12_scale_5_imag,
    output wire [15:0] memory_13_scale_5_imag,
    output wire [15:0] memory_14_scale_5_imag,
    output wire [15:0] memory_15_scale_5_imag,
    output wire [15:0] memory_16_scale_5_imag,
    output wire [15:0] memory_17_scale_5_imag,
    output wire [15:0] memory_18_scale_5_imag,
    output wire [15:0] memory_19_scale_5_imag,
    output wire [15:0] memory_20_scale_5_imag,
    output wire [15:0] memory_21_scale_5_imag,
    output wire [15:0] memory_22_scale_5_imag,
    output wire [15:0] memory_23_scale_5_imag,
    output wire [15:0] memory_24_scale_5_imag,
    output wire [15:0] memory_25_scale_5_imag,
    output wire [15:0] memory_26_scale_5_imag,
    output wire [15:0] memory_27_scale_5_imag,
    output wire [15:0] memory_28_scale_5_imag,
    output wire [15:0] memory_29_scale_5_imag,
    output wire [15:0] memory_30_scale_5_imag,
    output wire [15:0] memory_31_scale_5_imag,
    output wire [15:0] memory_0_scale_6_imag,
    output wire [15:0] memory_1_scale_6_imag,
    output wire [15:0] memory_2_scale_6_imag,
    output wire [15:0] memory_3_scale_6_imag,
    output wire [15:0] memory_4_scale_6_imag,
    output wire [15:0] memory_5_scale_6_imag,
    output wire [15:0] memory_6_scale_6_imag,
    output wire [15:0] memory_7_scale_6_imag,
    output wire [15:0] memory_8_scale_6_imag,
    output wire [15:0] memory_9_scale_6_imag,
    output wire [15:0] memory_10_scale_6_imag,
    output wire [15:0] memory_11_scale_6_imag,
    output wire [15:0] memory_12_scale_6_imag,
    output wire [15:0] memory_13_scale_6_imag,
    output wire [15:0] memory_14_scale_6_imag,
    output wire [15:0] memory_15_scale_6_imag,
    output wire [15:0] memory_16_scale_6_imag,
    output wire [15:0] memory_17_scale_6_imag,
    output wire [15:0] memory_18_scale_6_imag,
    output wire [15:0] memory_19_scale_6_imag,
    output wire [15:0] memory_20_scale_6_imag,
    output wire [15:0] memory_21_scale_6_imag,
    output wire [15:0] memory_22_scale_6_imag,
    output wire [15:0] memory_23_scale_6_imag,
    output wire [15:0] memory_24_scale_6_imag,
    output wire [15:0] memory_25_scale_6_imag,
    output wire [15:0] memory_26_scale_6_imag,
    output wire [15:0] memory_27_scale_6_imag,
    output wire [15:0] memory_28_scale_6_imag,
    output wire [15:0] memory_29_scale_6_imag,
    output wire [15:0] memory_30_scale_6_imag,
    output wire [15:0] memory_31_scale_6_imag,
    output wire [15:0] memory_0_scale_7_imag,
    output wire [15:0] memory_1_scale_7_imag,
    output wire [15:0] memory_2_scale_7_imag,
    output wire [15:0] memory_3_scale_7_imag,
    output wire [15:0] memory_4_scale_7_imag,
    output wire [15:0] memory_5_scale_7_imag,
    output wire [15:0] memory_6_scale_7_imag,
    output wire [15:0] memory_7_scale_7_imag,
    output wire [15:0] memory_8_scale_7_imag,
    output wire [15:0] memory_9_scale_7_imag,
    output wire [15:0] memory_10_scale_7_imag,
    output wire [15:0] memory_11_scale_7_imag,
    output wire [15:0] memory_12_scale_7_imag,
    output wire [15:0] memory_13_scale_7_imag,
    output wire [15:0] memory_14_scale_7_imag,
    output wire [15:0] memory_15_scale_7_imag,
    output wire [15:0] memory_16_scale_7_imag,
    output wire [15:0] memory_17_scale_7_imag,
    output wire [15:0] memory_18_scale_7_imag,
    output wire [15:0] memory_19_scale_7_imag,
    output wire [15:0] memory_20_scale_7_imag,
    output wire [15:0] memory_21_scale_7_imag,
    output wire [15:0] memory_22_scale_7_imag,
    output wire [15:0] memory_23_scale_7_imag,
    output wire [15:0] memory_24_scale_7_imag,
    output wire [15:0] memory_25_scale_7_imag,
    output wire [15:0] memory_26_scale_7_imag,
    output wire [15:0] memory_27_scale_7_imag,
    output wire [15:0] memory_28_scale_7_imag,
    output wire [15:0] memory_29_scale_7_imag,
    output wire [15:0] memory_30_scale_7_imag,
    output wire [15:0] memory_31_scale_7_imag,
    output wire [15:0] memory_0_scale_8_imag,
    output wire [15:0] memory_1_scale_8_imag,
    output wire [15:0] memory_2_scale_8_imag,
    output wire [15:0] memory_3_scale_8_imag,
    output wire [15:0] memory_4_scale_8_imag,
    output wire [15:0] memory_5_scale_8_imag,
    output wire [15:0] memory_6_scale_8_imag,
    output wire [15:0] memory_7_scale_8_imag,
    output wire [15:0] memory_8_scale_8_imag,
    output wire [15:0] memory_9_scale_8_imag,
    output wire [15:0] memory_10_scale_8_imag,
    output wire [15:0] memory_11_scale_8_imag,
    output wire [15:0] memory_12_scale_8_imag,
    output wire [15:0] memory_13_scale_8_imag,
    output wire [15:0] memory_14_scale_8_imag,
    output wire [15:0] memory_15_scale_8_imag,
    output wire [15:0] memory_16_scale_8_imag,
    output wire [15:0] memory_17_scale_8_imag,
    output wire [15:0] memory_18_scale_8_imag,
    output wire [15:0] memory_19_scale_8_imag,
    output wire [15:0] memory_20_scale_8_imag,
    output wire [15:0] memory_21_scale_8_imag,
    output wire [15:0] memory_22_scale_8_imag,
    output wire [15:0] memory_23_scale_8_imag,
    output wire [15:0] memory_24_scale_8_imag,
    output wire [15:0] memory_25_scale_8_imag,
    output wire [15:0] memory_26_scale_8_imag,
    output wire [15:0] memory_27_scale_8_imag,
    output wire [15:0] memory_28_scale_8_imag,
    output wire [15:0] memory_29_scale_8_imag,
    output wire [15:0] memory_30_scale_8_imag,
    output wire [15:0] memory_31_scale_8_imag,
    output wire [15:0] memory_0_scale_9_imag,
    output wire [15:0] memory_1_scale_9_imag,
    output wire [15:0] memory_2_scale_9_imag,
    output wire [15:0] memory_3_scale_9_imag,
    output wire [15:0] memory_4_scale_9_imag,
    output wire [15:0] memory_5_scale_9_imag,
    output wire [15:0] memory_6_scale_9_imag,
    output wire [15:0] memory_7_scale_9_imag,
    output wire [15:0] memory_8_scale_9_imag,
    output wire [15:0] memory_9_scale_9_imag,
    output wire [15:0] memory_10_scale_9_imag,
    output wire [15:0] memory_11_scale_9_imag,
    output wire [15:0] memory_12_scale_9_imag,
    output wire [15:0] memory_13_scale_9_imag,
    output wire [15:0] memory_14_scale_9_imag,
    output wire [15:0] memory_15_scale_9_imag,
    output wire [15:0] memory_16_scale_9_imag,
    output wire [15:0] memory_17_scale_9_imag,
    output wire [15:0] memory_18_scale_9_imag,
    output wire [15:0] memory_19_scale_9_imag,
    output wire [15:0] memory_20_scale_9_imag,
    output wire [15:0] memory_21_scale_9_imag,
    output wire [15:0] memory_22_scale_9_imag,
    output wire [15:0] memory_23_scale_9_imag,
    output wire [15:0] memory_24_scale_9_imag,
    output wire [15:0] memory_25_scale_9_imag,
    output wire [15:0] memory_26_scale_9_imag,
    output wire [15:0] memory_27_scale_9_imag,
    output wire [15:0] memory_28_scale_9_imag,
    output wire [15:0] memory_29_scale_9_imag,
    output wire [15:0] memory_30_scale_9_imag,
    output wire [15:0] memory_31_scale_9_imag,
    output wire [15:0] memory_0_scale_10_imag,
    output wire [15:0] memory_1_scale_10_imag,
    output wire [15:0] memory_2_scale_10_imag,
    output wire [15:0] memory_3_scale_10_imag,
    output wire [15:0] memory_4_scale_10_imag,
    output wire [15:0] memory_5_scale_10_imag,
    output wire [15:0] memory_6_scale_10_imag,
    output wire [15:0] memory_7_scale_10_imag,
    output wire [15:0] memory_8_scale_10_imag,
    output wire [15:0] memory_9_scale_10_imag,
    output wire [15:0] memory_10_scale_10_imag,
    output wire [15:0] memory_11_scale_10_imag,
    output wire [15:0] memory_12_scale_10_imag,
    output wire [15:0] memory_13_scale_10_imag,
    output wire [15:0] memory_14_scale_10_imag,
    output wire [15:0] memory_15_scale_10_imag,
    output wire [15:0] memory_16_scale_10_imag,
    output wire [15:0] memory_17_scale_10_imag,
    output wire [15:0] memory_18_scale_10_imag,
    output wire [15:0] memory_19_scale_10_imag,
    output wire [15:0] memory_20_scale_10_imag,
    output wire [15:0] memory_21_scale_10_imag,
    output wire [15:0] memory_22_scale_10_imag,
    output wire [15:0] memory_23_scale_10_imag,
    output wire [15:0] memory_24_scale_10_imag,
    output wire [15:0] memory_25_scale_10_imag,
    output wire [15:0] memory_26_scale_10_imag,
    output wire [15:0] memory_27_scale_10_imag,
    output wire [15:0] memory_28_scale_10_imag,
    output wire [15:0] memory_29_scale_10_imag,
    output wire [15:0] memory_30_scale_10_imag,
    output wire [15:0] memory_31_scale_10_imag,
    output wire [15:0] memory_0_scale_11_imag,
    output wire [15:0] memory_1_scale_11_imag,
    output wire [15:0] memory_2_scale_11_imag,
    output wire [15:0] memory_3_scale_11_imag,
    output wire [15:0] memory_4_scale_11_imag,
    output wire [15:0] memory_5_scale_11_imag,
    output wire [15:0] memory_6_scale_11_imag,
    output wire [15:0] memory_7_scale_11_imag,
    output wire [15:0] memory_8_scale_11_imag,
    output wire [15:0] memory_9_scale_11_imag,
    output wire [15:0] memory_10_scale_11_imag,
    output wire [15:0] memory_11_scale_11_imag,
    output wire [15:0] memory_12_scale_11_imag,
    output wire [15:0] memory_13_scale_11_imag,
    output wire [15:0] memory_14_scale_11_imag,
    output wire [15:0] memory_15_scale_11_imag,
    output wire [15:0] memory_16_scale_11_imag,
    output wire [15:0] memory_17_scale_11_imag,
    output wire [15:0] memory_18_scale_11_imag,
    output wire [15:0] memory_19_scale_11_imag,
    output wire [15:0] memory_20_scale_11_imag,
    output wire [15:0] memory_21_scale_11_imag,
    output wire [15:0] memory_22_scale_11_imag,
    output wire [15:0] memory_23_scale_11_imag,
    output wire [15:0] memory_24_scale_11_imag,
    output wire [15:0] memory_25_scale_11_imag,
    output wire [15:0] memory_26_scale_11_imag,
    output wire [15:0] memory_27_scale_11_imag,
    output wire [15:0] memory_28_scale_11_imag,
    output wire [15:0] memory_29_scale_11_imag,
    output wire [15:0] memory_30_scale_11_imag,
    output wire [15:0] memory_31_scale_11_imag,
    output wire [15:0] memory_0_scale_12_imag,
    output wire [15:0] memory_1_scale_12_imag,
    output wire [15:0] memory_2_scale_12_imag,
    output wire [15:0] memory_3_scale_12_imag,
    output wire [15:0] memory_4_scale_12_imag,
    output wire [15:0] memory_5_scale_12_imag,
    output wire [15:0] memory_6_scale_12_imag,
    output wire [15:0] memory_7_scale_12_imag,
    output wire [15:0] memory_8_scale_12_imag,
    output wire [15:0] memory_9_scale_12_imag,
    output wire [15:0] memory_10_scale_12_imag,
    output wire [15:0] memory_11_scale_12_imag,
    output wire [15:0] memory_12_scale_12_imag,
    output wire [15:0] memory_13_scale_12_imag,
    output wire [15:0] memory_14_scale_12_imag,
    output wire [15:0] memory_15_scale_12_imag,
    output wire [15:0] memory_16_scale_12_imag,
    output wire [15:0] memory_17_scale_12_imag,
    output wire [15:0] memory_18_scale_12_imag,
    output wire [15:0] memory_19_scale_12_imag,
    output wire [15:0] memory_20_scale_12_imag,
    output wire [15:0] memory_21_scale_12_imag,
    output wire [15:0] memory_22_scale_12_imag,
    output wire [15:0] memory_23_scale_12_imag,
    output wire [15:0] memory_24_scale_12_imag,
    output wire [15:0] memory_25_scale_12_imag,
    output wire [15:0] memory_26_scale_12_imag,
    output wire [15:0] memory_27_scale_12_imag,
    output wire [15:0] memory_28_scale_12_imag,
    output wire [15:0] memory_29_scale_12_imag,
    output wire [15:0] memory_30_scale_12_imag,
    output wire [15:0] memory_31_scale_12_imag,
    output wire [15:0] memory_0_scale_13_imag,
    output wire [15:0] memory_1_scale_13_imag,
    output wire [15:0] memory_2_scale_13_imag,
    output wire [15:0] memory_3_scale_13_imag,
    output wire [15:0] memory_4_scale_13_imag,
    output wire [15:0] memory_5_scale_13_imag,
    output wire [15:0] memory_6_scale_13_imag,
    output wire [15:0] memory_7_scale_13_imag,
    output wire [15:0] memory_8_scale_13_imag,
    output wire [15:0] memory_9_scale_13_imag,
    output wire [15:0] memory_10_scale_13_imag,
    output wire [15:0] memory_11_scale_13_imag,
    output wire [15:0] memory_12_scale_13_imag,
    output wire [15:0] memory_13_scale_13_imag,
    output wire [15:0] memory_14_scale_13_imag,
    output wire [15:0] memory_15_scale_13_imag,
    output wire [15:0] memory_16_scale_13_imag,
    output wire [15:0] memory_17_scale_13_imag,
    output wire [15:0] memory_18_scale_13_imag,
    output wire [15:0] memory_19_scale_13_imag,
    output wire [15:0] memory_20_scale_13_imag,
    output wire [15:0] memory_21_scale_13_imag,
    output wire [15:0] memory_22_scale_13_imag,
    output wire [15:0] memory_23_scale_13_imag,
    output wire [15:0] memory_24_scale_13_imag,
    output wire [15:0] memory_25_scale_13_imag,
    output wire [15:0] memory_26_scale_13_imag,
    output wire [15:0] memory_27_scale_13_imag,
    output wire [15:0] memory_28_scale_13_imag,
    output wire [15:0] memory_29_scale_13_imag,
    output wire [15:0] memory_30_scale_13_imag,
    output wire [15:0] memory_31_scale_13_imag,
    output wire [15:0] memory_0_scale_14_imag,
    output wire [15:0] memory_1_scale_14_imag,
    output wire [15:0] memory_2_scale_14_imag,
    output wire [15:0] memory_3_scale_14_imag,
    output wire [15:0] memory_4_scale_14_imag,
    output wire [15:0] memory_5_scale_14_imag,
    output wire [15:0] memory_6_scale_14_imag,
    output wire [15:0] memory_7_scale_14_imag,
    output wire [15:0] memory_8_scale_14_imag,
    output wire [15:0] memory_9_scale_14_imag,
    output wire [15:0] memory_10_scale_14_imag,
    output wire [15:0] memory_11_scale_14_imag,
    output wire [15:0] memory_12_scale_14_imag,
    output wire [15:0] memory_13_scale_14_imag,
    output wire [15:0] memory_14_scale_14_imag,
    output wire [15:0] memory_15_scale_14_imag,
    output wire [15:0] memory_16_scale_14_imag,
    output wire [15:0] memory_17_scale_14_imag,
    output wire [15:0] memory_18_scale_14_imag,
    output wire [15:0] memory_19_scale_14_imag,
    output wire [15:0] memory_20_scale_14_imag,
    output wire [15:0] memory_21_scale_14_imag,
    output wire [15:0] memory_22_scale_14_imag,
    output wire [15:0] memory_23_scale_14_imag,
    output wire [15:0] memory_24_scale_14_imag,
    output wire [15:0] memory_25_scale_14_imag,
    output wire [15:0] memory_26_scale_14_imag,
    output wire [15:0] memory_27_scale_14_imag,
    output wire [15:0] memory_28_scale_14_imag,
    output wire [15:0] memory_29_scale_14_imag,
    output wire [15:0] memory_30_scale_14_imag,
    output wire [15:0] memory_31_scale_14_imag,
    output wire [15:0] memory_0_scale_15_imag,
    output wire [15:0] memory_1_scale_15_imag,
    output wire [15:0] memory_2_scale_15_imag,
    output wire [15:0] memory_3_scale_15_imag,
    output wire [15:0] memory_4_scale_15_imag,
    output wire [15:0] memory_5_scale_15_imag,
    output wire [15:0] memory_6_scale_15_imag,
    output wire [15:0] memory_7_scale_15_imag,
    output wire [15:0] memory_8_scale_15_imag,
    output wire [15:0] memory_9_scale_15_imag,
    output wire [15:0] memory_10_scale_15_imag,
    output wire [15:0] memory_11_scale_15_imag,
    output wire [15:0] memory_12_scale_15_imag,
    output wire [15:0] memory_13_scale_15_imag,
    output wire [15:0] memory_14_scale_15_imag,
    output wire [15:0] memory_15_scale_15_imag,
    output wire [15:0] memory_16_scale_15_imag,
    output wire [15:0] memory_17_scale_15_imag,
    output wire [15:0] memory_18_scale_15_imag,
    output wire [15:0] memory_19_scale_15_imag,
    output wire [15:0] memory_20_scale_15_imag,
    output wire [15:0] memory_21_scale_15_imag,
    output wire [15:0] memory_22_scale_15_imag,
    output wire [15:0] memory_23_scale_15_imag,
    output wire [15:0] memory_24_scale_15_imag,
    output wire [15:0] memory_25_scale_15_imag,
    output wire [15:0] memory_26_scale_15_imag,
    output wire [15:0] memory_27_scale_15_imag,
    output wire [15:0] memory_28_scale_15_imag,
    output wire [15:0] memory_29_scale_15_imag,
    output wire [15:0] memory_30_scale_15_imag,
    output wire [15:0] memory_31_scale_15_imag
);

//internal signal from the output of the FFT Block into the input of the Register File
wire [BITS-1:0] fft_reg_real_0;
wire [BITS-1:0] fft_reg_imag_0;
wire [BITS-1:0] fft_reg_real_1;
wire [BITS-1:0] fft_reg_imag_1;
wire [BITS-1:0] fft_reg_real_2;
wire [BITS-1:0] fft_reg_imag_2;
wire [BITS-1:0] fft_reg_real_3;
wire [BITS-1:0] fft_reg_imag_3;
wire [BITS-1:0] fft_reg_real_4;
wire [BITS-1:0] fft_reg_imag_4;
wire [BITS-1:0] fft_reg_real_5;
wire [BITS-1:0] fft_reg_imag_5;
wire [BITS-1:0] fft_reg_real_6;
wire [BITS-1:0] fft_reg_imag_6;
wire [BITS-1:0] fft_reg_real_7;
wire [BITS-1:0] fft_reg_imag_7;
wire [BITS-1:0] fft_reg_real_8;
wire [BITS-1:0] fft_reg_imag_8;
wire [BITS-1:0] fft_reg_real_9;
wire [BITS-1:0] fft_reg_imag_9;
wire [BITS-1:0] fft_reg_real_10;
wire [BITS-1:0] fft_reg_imag_10;
wire [BITS-1:0] fft_reg_real_11;
wire [BITS-1:0] fft_reg_imag_11;
wire [BITS-1:0] fft_reg_real_12;
wire [BITS-1:0] fft_reg_imag_12;
wire [BITS-1:0] fft_reg_real_13;
wire [BITS-1:0] fft_reg_imag_13;
wire [BITS-1:0] fft_reg_real_14;
wire [BITS-1:0] fft_reg_imag_14;
wire [BITS-1:0] fft_reg_real_15;
wire [BITS-1:0] fft_reg_imag_15;
wire [BITS-1:0] fft_reg_real_16;
wire [BITS-1:0] fft_reg_imag_16;
wire [BITS-1:0] fft_reg_real_17;
wire [BITS-1:0] fft_reg_imag_17;
wire [BITS-1:0] fft_reg_real_18;
wire [BITS-1:0] fft_reg_imag_18;
wire [BITS-1:0] fft_reg_real_19;
wire [BITS-1:0] fft_reg_imag_19;
wire [BITS-1:0] fft_reg_real_20;
wire [BITS-1:0] fft_reg_imag_20;
wire [BITS-1:0] fft_reg_real_21;
wire [BITS-1:0] fft_reg_imag_21;
wire [BITS-1:0] fft_reg_real_22;
wire [BITS-1:0] fft_reg_imag_22;
wire [BITS-1:0] fft_reg_real_23;
wire [BITS-1:0] fft_reg_imag_23;
wire [BITS-1:0] fft_reg_real_24;
wire [BITS-1:0] fft_reg_imag_24;
wire [BITS-1:0] fft_reg_real_25;
wire [BITS-1:0] fft_reg_imag_25;
wire [BITS-1:0] fft_reg_real_26;
wire [BITS-1:0] fft_reg_imag_26;
wire [BITS-1:0] fft_reg_real_27;
wire [BITS-1:0] fft_reg_imag_27;
wire [BITS-1:0] fft_reg_real_28;
wire [BITS-1:0] fft_reg_imag_28;
wire [BITS-1:0] fft_reg_real_29;
wire [BITS-1:0] fft_reg_imag_29;
wire [BITS-1:0] fft_reg_real_30;
wire [BITS-1:0] fft_reg_imag_30;
wire [BITS-1:0] fft_reg_real_31;
wire [BITS-1:0] fft_reg_imag_31;
wire [BITS-1:0] fft_reg_real_32;
wire [BITS-1:0] fft_reg_imag_32;
wire [BITS-1:0] fft_reg_real_33;
wire [BITS-1:0] fft_reg_imag_33;
wire [BITS-1:0] fft_reg_real_34;
wire [BITS-1:0] fft_reg_imag_34;
wire [BITS-1:0] fft_reg_real_35;
wire [BITS-1:0] fft_reg_imag_35;
wire [BITS-1:0] fft_reg_real_36;
wire [BITS-1:0] fft_reg_imag_36;
wire [BITS-1:0] fft_reg_real_37;
wire [BITS-1:0] fft_reg_imag_37;
wire [BITS-1:0] fft_reg_real_38;
wire [BITS-1:0] fft_reg_imag_38;
wire [BITS-1:0] fft_reg_real_39;
wire [BITS-1:0] fft_reg_imag_39;
wire [BITS-1:0] fft_reg_real_40;
wire [BITS-1:0] fft_reg_imag_40;
wire [BITS-1:0] fft_reg_real_41;
wire [BITS-1:0] fft_reg_imag_41;
wire [BITS-1:0] fft_reg_real_42;
wire [BITS-1:0] fft_reg_imag_42;
wire [BITS-1:0] fft_reg_real_43;
wire [BITS-1:0] fft_reg_imag_43;
wire [BITS-1:0] fft_reg_real_44;
wire [BITS-1:0] fft_reg_imag_44;
wire [BITS-1:0] fft_reg_real_45;
wire [BITS-1:0] fft_reg_imag_45;
wire [BITS-1:0] fft_reg_real_46;
wire [BITS-1:0] fft_reg_imag_46;
wire [BITS-1:0] fft_reg_real_47;
wire [BITS-1:0] fft_reg_imag_47;
wire [BITS-1:0] fft_reg_real_48;
wire [BITS-1:0] fft_reg_imag_48;
wire [BITS-1:0] fft_reg_real_49;
wire [BITS-1:0] fft_reg_imag_49;
wire [BITS-1:0] fft_reg_real_50;
wire [BITS-1:0] fft_reg_imag_50;
wire [BITS-1:0] fft_reg_real_51;
wire [BITS-1:0] fft_reg_imag_51;
wire [BITS-1:0] fft_reg_real_52;
wire [BITS-1:0] fft_reg_imag_52;
wire [BITS-1:0] fft_reg_real_53;
wire [BITS-1:0] fft_reg_imag_53;
wire [BITS-1:0] fft_reg_real_54;
wire [BITS-1:0] fft_reg_imag_54;
wire [BITS-1:0] fft_reg_real_55;
wire [BITS-1:0] fft_reg_imag_55;
wire [BITS-1:0] fft_reg_real_56;
wire [BITS-1:0] fft_reg_imag_56;
wire [BITS-1:0] fft_reg_real_57;
wire [BITS-1:0] fft_reg_imag_57;
wire [BITS-1:0] fft_reg_real_58;
wire [BITS-1:0] fft_reg_imag_58;
wire [BITS-1:0] fft_reg_real_59;
wire [BITS-1:0] fft_reg_imag_59;
wire [BITS-1:0] fft_reg_real_60;
wire [BITS-1:0] fft_reg_imag_60;
wire [BITS-1:0] fft_reg_real_61;
wire [BITS-1:0] fft_reg_imag_61;
wire [BITS-1:0] fft_reg_real_62;
wire [BITS-1:0] fft_reg_imag_62;
wire [BITS-1:0] fft_reg_real_63;
wire [BITS-1:0] fft_reg_imag_63;
wire [BITS-1:0] fft_reg_real_64;
wire [BITS-1:0] fft_reg_imag_64;
wire [BITS-1:0] fft_reg_real_65;
wire [BITS-1:0] fft_reg_imag_65;
wire [BITS-1:0] fft_reg_real_66;
wire [BITS-1:0] fft_reg_imag_66;
wire [BITS-1:0] fft_reg_real_67;
wire [BITS-1:0] fft_reg_imag_67;
wire [BITS-1:0] fft_reg_real_68;
wire [BITS-1:0] fft_reg_imag_68;
wire [BITS-1:0] fft_reg_real_69;
wire [BITS-1:0] fft_reg_imag_69;
wire [BITS-1:0] fft_reg_real_70;
wire [BITS-1:0] fft_reg_imag_70;
wire [BITS-1:0] fft_reg_real_71;
wire [BITS-1:0] fft_reg_imag_71;
wire [BITS-1:0] fft_reg_real_72;
wire [BITS-1:0] fft_reg_imag_72;
wire [BITS-1:0] fft_reg_real_73;
wire [BITS-1:0] fft_reg_imag_73;
wire [BITS-1:0] fft_reg_real_74;
wire [BITS-1:0] fft_reg_imag_74;
wire [BITS-1:0] fft_reg_real_75;
wire [BITS-1:0] fft_reg_imag_75;
wire [BITS-1:0] fft_reg_real_76;
wire [BITS-1:0] fft_reg_imag_76;
wire [BITS-1:0] fft_reg_real_77;
wire [BITS-1:0] fft_reg_imag_77;
wire [BITS-1:0] fft_reg_real_78;
wire [BITS-1:0] fft_reg_imag_78;
wire [BITS-1:0] fft_reg_real_79;
wire [BITS-1:0] fft_reg_imag_79;
wire [BITS-1:0] fft_reg_real_80;
wire [BITS-1:0] fft_reg_imag_80;
wire [BITS-1:0] fft_reg_real_81;
wire [BITS-1:0] fft_reg_imag_81;
wire [BITS-1:0] fft_reg_real_82;
wire [BITS-1:0] fft_reg_imag_82;
wire [BITS-1:0] fft_reg_real_83;
wire [BITS-1:0] fft_reg_imag_83;
wire [BITS-1:0] fft_reg_real_84;
wire [BITS-1:0] fft_reg_imag_84;
wire [BITS-1:0] fft_reg_real_85;
wire [BITS-1:0] fft_reg_imag_85;
wire [BITS-1:0] fft_reg_real_86;
wire [BITS-1:0] fft_reg_imag_86;
wire [BITS-1:0] fft_reg_real_87;
wire [BITS-1:0] fft_reg_imag_87;
wire [BITS-1:0] fft_reg_real_88;
wire [BITS-1:0] fft_reg_imag_88;
wire [BITS-1:0] fft_reg_real_89;
wire [BITS-1:0] fft_reg_imag_89;
wire [BITS-1:0] fft_reg_real_90;
wire [BITS-1:0] fft_reg_imag_90;
wire [BITS-1:0] fft_reg_real_91;
wire [BITS-1:0] fft_reg_imag_91;
wire [BITS-1:0] fft_reg_real_92;
wire [BITS-1:0] fft_reg_imag_92;
wire [BITS-1:0] fft_reg_real_93;
wire [BITS-1:0] fft_reg_imag_93;
wire [BITS-1:0] fft_reg_real_94;
wire [BITS-1:0] fft_reg_imag_94;
wire [BITS-1:0] fft_reg_real_95;
wire [BITS-1:0] fft_reg_imag_95;
wire [BITS-1:0] fft_reg_real_96;
wire [BITS-1:0] fft_reg_imag_96;
wire [BITS-1:0] fft_reg_real_97;
wire [BITS-1:0] fft_reg_imag_97;
wire [BITS-1:0] fft_reg_real_98;
wire [BITS-1:0] fft_reg_imag_98;
wire [BITS-1:0] fft_reg_real_99;
wire [BITS-1:0] fft_reg_imag_99;
wire [BITS-1:0] fft_reg_real_100;
wire [BITS-1:0] fft_reg_imag_100;
wire [BITS-1:0] fft_reg_real_101;
wire [BITS-1:0] fft_reg_imag_101;
wire [BITS-1:0] fft_reg_real_102;
wire [BITS-1:0] fft_reg_imag_102;
wire [BITS-1:0] fft_reg_real_103;
wire [BITS-1:0] fft_reg_imag_103;
wire [BITS-1:0] fft_reg_real_104;
wire [BITS-1:0] fft_reg_imag_104;
wire [BITS-1:0] fft_reg_real_105;
wire [BITS-1:0] fft_reg_imag_105;
wire [BITS-1:0] fft_reg_real_106;
wire [BITS-1:0] fft_reg_imag_106;
wire [BITS-1:0] fft_reg_real_107;
wire [BITS-1:0] fft_reg_imag_107;
wire [BITS-1:0] fft_reg_real_108;
wire [BITS-1:0] fft_reg_imag_108;
wire [BITS-1:0] fft_reg_real_109;
wire [BITS-1:0] fft_reg_imag_109;
wire [BITS-1:0] fft_reg_real_110;
wire [BITS-1:0] fft_reg_imag_110;
wire [BITS-1:0] fft_reg_real_111;
wire [BITS-1:0] fft_reg_imag_111;
wire [BITS-1:0] fft_reg_real_112;
wire [BITS-1:0] fft_reg_imag_112;
wire [BITS-1:0] fft_reg_real_113;
wire [BITS-1:0] fft_reg_imag_113;
wire [BITS-1:0] fft_reg_real_114;
wire [BITS-1:0] fft_reg_imag_114;
wire [BITS-1:0] fft_reg_real_115;
wire [BITS-1:0] fft_reg_imag_115;
wire [BITS-1:0] fft_reg_real_116;
wire [BITS-1:0] fft_reg_imag_116;
wire [BITS-1:0] fft_reg_real_117;
wire [BITS-1:0] fft_reg_imag_117;
wire [BITS-1:0] fft_reg_real_118;
wire [BITS-1:0] fft_reg_imag_118;
wire [BITS-1:0] fft_reg_real_119;
wire [BITS-1:0] fft_reg_imag_119;
wire [BITS-1:0] fft_reg_real_120;
wire [BITS-1:0] fft_reg_imag_120;
wire [BITS-1:0] fft_reg_real_121;
wire [BITS-1:0] fft_reg_imag_121;
wire [BITS-1:0] fft_reg_real_122;
wire [BITS-1:0] fft_reg_imag_122;
wire [BITS-1:0] fft_reg_real_123;
wire [BITS-1:0] fft_reg_imag_123;
wire [BITS-1:0] fft_reg_real_124;
wire [BITS-1:0] fft_reg_imag_124;
wire [BITS-1:0] fft_reg_real_125;
wire [BITS-1:0] fft_reg_imag_125;
wire [BITS-1:0] fft_reg_real_126;
wire [BITS-1:0] fft_reg_imag_126;
wire [BITS-1:0] fft_reg_real_127;
wire [BITS-1:0] fft_reg_imag_127;











//internal signal from the output of the Register File into the input of 128x1 MUX
wire [BITS-1:0] reg_mux_real_0;
wire [BITS-1:0] reg_mux_imag_0;
wire [BITS-1:0] reg_mux_real_1;
wire [BITS-1:0] reg_mux_imag_1;
wire [BITS-1:0] reg_mux_real_2;
wire [BITS-1:0] reg_mux_imag_2;
wire [BITS-1:0] reg_mux_real_3;
wire [BITS-1:0] reg_mux_imag_3;
wire [BITS-1:0] reg_mux_real_4;
wire [BITS-1:0] reg_mux_imag_4;
wire [BITS-1:0] reg_mux_real_5;
wire [BITS-1:0] reg_mux_imag_5;
wire [BITS-1:0] reg_mux_real_6;
wire [BITS-1:0] reg_mux_imag_6;
wire [BITS-1:0] reg_mux_real_7;
wire [BITS-1:0] reg_mux_imag_7;
wire [BITS-1:0] reg_mux_real_8;
wire [BITS-1:0] reg_mux_imag_8;
wire [BITS-1:0] reg_mux_real_9;
wire [BITS-1:0] reg_mux_imag_9;
wire [BITS-1:0] reg_mux_real_10;
wire [BITS-1:0] reg_mux_imag_10;
wire [BITS-1:0] reg_mux_real_11;
wire [BITS-1:0] reg_mux_imag_11;
wire [BITS-1:0] reg_mux_real_12;
wire [BITS-1:0] reg_mux_imag_12;
wire [BITS-1:0] reg_mux_real_13;
wire [BITS-1:0] reg_mux_imag_13;
wire [BITS-1:0] reg_mux_real_14;
wire [BITS-1:0] reg_mux_imag_14;
wire [BITS-1:0] reg_mux_real_15;
wire [BITS-1:0] reg_mux_imag_15;
wire [BITS-1:0] reg_mux_real_16;
wire [BITS-1:0] reg_mux_imag_16;
wire [BITS-1:0] reg_mux_real_17;
wire [BITS-1:0] reg_mux_imag_17;
wire [BITS-1:0] reg_mux_real_18;
wire [BITS-1:0] reg_mux_imag_18;
wire [BITS-1:0] reg_mux_real_19;
wire [BITS-1:0] reg_mux_imag_19;
wire [BITS-1:0] reg_mux_real_20;
wire [BITS-1:0] reg_mux_imag_20;
wire [BITS-1:0] reg_mux_real_21;
wire [BITS-1:0] reg_mux_imag_21;
wire [BITS-1:0] reg_mux_real_22;
wire [BITS-1:0] reg_mux_imag_22;
wire [BITS-1:0] reg_mux_real_23;
wire [BITS-1:0] reg_mux_imag_23;
wire [BITS-1:0] reg_mux_real_24;
wire [BITS-1:0] reg_mux_imag_24;
wire [BITS-1:0] reg_mux_real_25;
wire [BITS-1:0] reg_mux_imag_25;
wire [BITS-1:0] reg_mux_real_26;
wire [BITS-1:0] reg_mux_imag_26;
wire [BITS-1:0] reg_mux_real_27;
wire [BITS-1:0] reg_mux_imag_27;
wire [BITS-1:0] reg_mux_real_28;
wire [BITS-1:0] reg_mux_imag_28;
wire [BITS-1:0] reg_mux_real_29;
wire [BITS-1:0] reg_mux_imag_29;
wire [BITS-1:0] reg_mux_real_30;
wire [BITS-1:0] reg_mux_imag_30;
wire [BITS-1:0] reg_mux_real_31;
wire [BITS-1:0] reg_mux_imag_31;
wire [BITS-1:0] reg_mux_real_32;
wire [BITS-1:0] reg_mux_imag_32;
wire [BITS-1:0] reg_mux_real_33;
wire [BITS-1:0] reg_mux_imag_33;
wire [BITS-1:0] reg_mux_real_34;
wire [BITS-1:0] reg_mux_imag_34;
wire [BITS-1:0] reg_mux_real_35;
wire [BITS-1:0] reg_mux_imag_35;
wire [BITS-1:0] reg_mux_real_36;
wire [BITS-1:0] reg_mux_imag_36;
wire [BITS-1:0] reg_mux_real_37;
wire [BITS-1:0] reg_mux_imag_37;
wire [BITS-1:0] reg_mux_real_38;
wire [BITS-1:0] reg_mux_imag_38;
wire [BITS-1:0] reg_mux_real_39;
wire [BITS-1:0] reg_mux_imag_39;
wire [BITS-1:0] reg_mux_real_40;
wire [BITS-1:0] reg_mux_imag_40;
wire [BITS-1:0] reg_mux_real_41;
wire [BITS-1:0] reg_mux_imag_41;
wire [BITS-1:0] reg_mux_real_42;
wire [BITS-1:0] reg_mux_imag_42;
wire [BITS-1:0] reg_mux_real_43;
wire [BITS-1:0] reg_mux_imag_43;
wire [BITS-1:0] reg_mux_real_44;
wire [BITS-1:0] reg_mux_imag_44;
wire [BITS-1:0] reg_mux_real_45;
wire [BITS-1:0] reg_mux_imag_45;
wire [BITS-1:0] reg_mux_real_46;
wire [BITS-1:0] reg_mux_imag_46;
wire [BITS-1:0] reg_mux_real_47;
wire [BITS-1:0] reg_mux_imag_47;
wire [BITS-1:0] reg_mux_real_48;
wire [BITS-1:0] reg_mux_imag_48;
wire [BITS-1:0] reg_mux_real_49;
wire [BITS-1:0] reg_mux_imag_49;
wire [BITS-1:0] reg_mux_real_50;
wire [BITS-1:0] reg_mux_imag_50;
wire [BITS-1:0] reg_mux_real_51;
wire [BITS-1:0] reg_mux_imag_51;
wire [BITS-1:0] reg_mux_real_52;
wire [BITS-1:0] reg_mux_imag_52;
wire [BITS-1:0] reg_mux_real_53;
wire [BITS-1:0] reg_mux_imag_53;
wire [BITS-1:0] reg_mux_real_54;
wire [BITS-1:0] reg_mux_imag_54;
wire [BITS-1:0] reg_mux_real_55;
wire [BITS-1:0] reg_mux_imag_55;
wire [BITS-1:0] reg_mux_real_56;
wire [BITS-1:0] reg_mux_imag_56;
wire [BITS-1:0] reg_mux_real_57;
wire [BITS-1:0] reg_mux_imag_57;
wire [BITS-1:0] reg_mux_real_58;
wire [BITS-1:0] reg_mux_imag_58;
wire [BITS-1:0] reg_mux_real_59;
wire [BITS-1:0] reg_mux_imag_59;
wire [BITS-1:0] reg_mux_real_60;
wire [BITS-1:0] reg_mux_imag_60;
wire [BITS-1:0] reg_mux_real_61;
wire [BITS-1:0] reg_mux_imag_61;
wire [BITS-1:0] reg_mux_real_62;
wire [BITS-1:0] reg_mux_imag_62;
wire [BITS-1:0] reg_mux_real_63;
wire [BITS-1:0] reg_mux_imag_63;
wire [BITS-1:0] reg_mux_real_64;
wire [BITS-1:0] reg_mux_imag_64;
wire [BITS-1:0] reg_mux_real_65;
wire [BITS-1:0] reg_mux_imag_65;
wire [BITS-1:0] reg_mux_real_66;
wire [BITS-1:0] reg_mux_imag_66;
wire [BITS-1:0] reg_mux_real_67;
wire [BITS-1:0] reg_mux_imag_67;
wire [BITS-1:0] reg_mux_real_68;
wire [BITS-1:0] reg_mux_imag_68;
wire [BITS-1:0] reg_mux_real_69;
wire [BITS-1:0] reg_mux_imag_69;
wire [BITS-1:0] reg_mux_real_70;
wire [BITS-1:0] reg_mux_imag_70;
wire [BITS-1:0] reg_mux_real_71;
wire [BITS-1:0] reg_mux_imag_71;
wire [BITS-1:0] reg_mux_real_72;
wire [BITS-1:0] reg_mux_imag_72;
wire [BITS-1:0] reg_mux_real_73;
wire [BITS-1:0] reg_mux_imag_73;
wire [BITS-1:0] reg_mux_real_74;
wire [BITS-1:0] reg_mux_imag_74;
wire [BITS-1:0] reg_mux_real_75;
wire [BITS-1:0] reg_mux_imag_75;
wire [BITS-1:0] reg_mux_real_76;
wire [BITS-1:0] reg_mux_imag_76;
wire [BITS-1:0] reg_mux_real_77;
wire [BITS-1:0] reg_mux_imag_77;
wire [BITS-1:0] reg_mux_real_78;
wire [BITS-1:0] reg_mux_imag_78;
wire [BITS-1:0] reg_mux_real_79;
wire [BITS-1:0] reg_mux_imag_79;
wire [BITS-1:0] reg_mux_real_80;
wire [BITS-1:0] reg_mux_imag_80;
wire [BITS-1:0] reg_mux_real_81;
wire [BITS-1:0] reg_mux_imag_81;
wire [BITS-1:0] reg_mux_real_82;
wire [BITS-1:0] reg_mux_imag_82;
wire [BITS-1:0] reg_mux_real_83;
wire [BITS-1:0] reg_mux_imag_83;
wire [BITS-1:0] reg_mux_real_84;
wire [BITS-1:0] reg_mux_imag_84;
wire [BITS-1:0] reg_mux_real_85;
wire [BITS-1:0] reg_mux_imag_85;
wire [BITS-1:0] reg_mux_real_86;
wire [BITS-1:0] reg_mux_imag_86;
wire [BITS-1:0] reg_mux_real_87;
wire [BITS-1:0] reg_mux_imag_87;
wire [BITS-1:0] reg_mux_real_88;
wire [BITS-1:0] reg_mux_imag_88;
wire [BITS-1:0] reg_mux_real_89;
wire [BITS-1:0] reg_mux_imag_89;
wire [BITS-1:0] reg_mux_real_90;
wire [BITS-1:0] reg_mux_imag_90;
wire [BITS-1:0] reg_mux_real_91;
wire [BITS-1:0] reg_mux_imag_91;
wire [BITS-1:0] reg_mux_real_92;
wire [BITS-1:0] reg_mux_imag_92;
wire [BITS-1:0] reg_mux_real_93;
wire [BITS-1:0] reg_mux_imag_93;
wire [BITS-1:0] reg_mux_real_94;
wire [BITS-1:0] reg_mux_imag_94;
wire [BITS-1:0] reg_mux_real_95;
wire [BITS-1:0] reg_mux_imag_95;
wire [BITS-1:0] reg_mux_real_96;
wire [BITS-1:0] reg_mux_imag_96;
wire [BITS-1:0] reg_mux_real_97;
wire [BITS-1:0] reg_mux_imag_97;
wire [BITS-1:0] reg_mux_real_98;
wire [BITS-1:0] reg_mux_imag_98;
wire [BITS-1:0] reg_mux_real_99;
wire [BITS-1:0] reg_mux_imag_99;
wire [BITS-1:0] reg_mux_real_100;
wire [BITS-1:0] reg_mux_imag_100;
wire [BITS-1:0] reg_mux_real_101;
wire [BITS-1:0] reg_mux_imag_101;
wire [BITS-1:0] reg_mux_real_102;
wire [BITS-1:0] reg_mux_imag_102;
wire [BITS-1:0] reg_mux_real_103;
wire [BITS-1:0] reg_mux_imag_103;
wire [BITS-1:0] reg_mux_real_104;
wire [BITS-1:0] reg_mux_imag_104;
wire [BITS-1:0] reg_mux_real_105;
wire [BITS-1:0] reg_mux_imag_105;
wire [BITS-1:0] reg_mux_real_106;
wire [BITS-1:0] reg_mux_imag_106;
wire [BITS-1:0] reg_mux_real_107;
wire [BITS-1:0] reg_mux_imag_107;
wire [BITS-1:0] reg_mux_real_108;
wire [BITS-1:0] reg_mux_imag_108;
wire [BITS-1:0] reg_mux_real_109;
wire [BITS-1:0] reg_mux_imag_109;
wire [BITS-1:0] reg_mux_real_110;
wire [BITS-1:0] reg_mux_imag_110;
wire [BITS-1:0] reg_mux_real_111;
wire [BITS-1:0] reg_mux_imag_111;
wire [BITS-1:0] reg_mux_real_112;
wire [BITS-1:0] reg_mux_imag_112;
wire [BITS-1:0] reg_mux_real_113;
wire [BITS-1:0] reg_mux_imag_113;
wire [BITS-1:0] reg_mux_real_114;
wire [BITS-1:0] reg_mux_imag_114;
wire [BITS-1:0] reg_mux_real_115;
wire [BITS-1:0] reg_mux_imag_115;
wire [BITS-1:0] reg_mux_real_116;
wire [BITS-1:0] reg_mux_imag_116;
wire [BITS-1:0] reg_mux_real_117;
wire [BITS-1:0] reg_mux_imag_117;
wire [BITS-1:0] reg_mux_real_118;
wire [BITS-1:0] reg_mux_imag_118;
wire [BITS-1:0] reg_mux_real_119;
wire [BITS-1:0] reg_mux_imag_119;
wire [BITS-1:0] reg_mux_real_120;
wire [BITS-1:0] reg_mux_imag_120;
wire [BITS-1:0] reg_mux_real_121;
wire [BITS-1:0] reg_mux_imag_121;
wire [BITS-1:0] reg_mux_real_122;
wire [BITS-1:0] reg_mux_imag_122;
wire [BITS-1:0] reg_mux_real_123;
wire [BITS-1:0] reg_mux_imag_123;
wire [BITS-1:0] reg_mux_real_124;
wire [BITS-1:0] reg_mux_imag_124;
wire [BITS-1:0] reg_mux_real_125;
wire [BITS-1:0] reg_mux_imag_125;
wire [BITS-1:0] reg_mux_real_126;
wire [BITS-1:0] reg_mux_imag_126;
wire [BITS-1:0] reg_mux_real_127;
wire [BITS-1:0] reg_mux_imag_127;




//internal signal from the output of the 128x1 MUX into the input of the complex multiplier
wire [BITS-1:0] mul_fft_real;
wire [BITS-1:0] mul_fft_imag;


//internal signal from the output of the Wavlet ROM into the input of the complex multiplier
wire [BITS-1:0] wavlet_rom_mul_real;
wire [BITS-1:0] wavlet_rom_mul_imag;


//internal signal from the output of the complex multiplier into the input of the IFFT register file
wire [BITS-1:0] mul_out_real;
wire [BITS-1:0] mul_out_imag;

    



//internal signal from the output of IFFT register file into the input of the IFFT Block
wire [BITS-1:0] reg_ifft_real_0;
wire [BITS-1:0] reg_ifft_imag_0;
wire [BITS-1:0] reg_ifft_real_1;
wire [BITS-1:0] reg_ifft_imag_1;
wire [BITS-1:0] reg_ifft_real_2;
wire [BITS-1:0] reg_ifft_imag_2;
wire [BITS-1:0] reg_ifft_real_3;
wire [BITS-1:0] reg_ifft_imag_3;
wire [BITS-1:0] reg_ifft_real_4;
wire [BITS-1:0] reg_ifft_imag_4;
wire [BITS-1:0] reg_ifft_real_5;
wire [BITS-1:0] reg_ifft_imag_5;
wire [BITS-1:0] reg_ifft_real_6;
wire [BITS-1:0] reg_ifft_imag_6;
wire [BITS-1:0] reg_ifft_real_7;
wire [BITS-1:0] reg_ifft_imag_7;
wire [BITS-1:0] reg_ifft_real_8;
wire [BITS-1:0] reg_ifft_imag_8;
wire [BITS-1:0] reg_ifft_real_9;
wire [BITS-1:0] reg_ifft_imag_9;
wire [BITS-1:0] reg_ifft_real_10;
wire [BITS-1:0] reg_ifft_imag_10;
wire [BITS-1:0] reg_ifft_real_11;
wire [BITS-1:0] reg_ifft_imag_11;
wire [BITS-1:0] reg_ifft_real_12;
wire [BITS-1:0] reg_ifft_imag_12;
wire [BITS-1:0] reg_ifft_real_13;
wire [BITS-1:0] reg_ifft_imag_13;
wire [BITS-1:0] reg_ifft_real_14;
wire [BITS-1:0] reg_ifft_imag_14;
wire [BITS-1:0] reg_ifft_real_15;
wire [BITS-1:0] reg_ifft_imag_15;
wire [BITS-1:0] reg_ifft_real_16;
wire [BITS-1:0] reg_ifft_imag_16;
wire [BITS-1:0] reg_ifft_real_17;
wire [BITS-1:0] reg_ifft_imag_17;
wire [BITS-1:0] reg_ifft_real_18;
wire [BITS-1:0] reg_ifft_imag_18;
wire [BITS-1:0] reg_ifft_real_19;
wire [BITS-1:0] reg_ifft_imag_19;
wire [BITS-1:0] reg_ifft_real_20;
wire [BITS-1:0] reg_ifft_imag_20;
wire [BITS-1:0] reg_ifft_real_21;
wire [BITS-1:0] reg_ifft_imag_21;
wire [BITS-1:0] reg_ifft_real_22;
wire [BITS-1:0] reg_ifft_imag_22;
wire [BITS-1:0] reg_ifft_real_23;
wire [BITS-1:0] reg_ifft_imag_23;
wire [BITS-1:0] reg_ifft_real_24;
wire [BITS-1:0] reg_ifft_imag_24;
wire [BITS-1:0] reg_ifft_real_25;
wire [BITS-1:0] reg_ifft_imag_25;
wire [BITS-1:0] reg_ifft_real_26;
wire [BITS-1:0] reg_ifft_imag_26;
wire [BITS-1:0] reg_ifft_real_27;
wire [BITS-1:0] reg_ifft_imag_27;
wire [BITS-1:0] reg_ifft_real_28;
wire [BITS-1:0] reg_ifft_imag_28;
wire [BITS-1:0] reg_ifft_real_29;
wire [BITS-1:0] reg_ifft_imag_29;
wire [BITS-1:0] reg_ifft_real_30;
wire [BITS-1:0] reg_ifft_imag_30;
wire [BITS-1:0] reg_ifft_real_31;
wire [BITS-1:0] reg_ifft_imag_31;
wire [BITS-1:0] reg_ifft_real_32;
wire [BITS-1:0] reg_ifft_imag_32;
wire [BITS-1:0] reg_ifft_real_33;
wire [BITS-1:0] reg_ifft_imag_33;
wire [BITS-1:0] reg_ifft_real_34;
wire [BITS-1:0] reg_ifft_imag_34;
wire [BITS-1:0] reg_ifft_real_35;
wire [BITS-1:0] reg_ifft_imag_35;
wire [BITS-1:0] reg_ifft_real_36;
wire [BITS-1:0] reg_ifft_imag_36;
wire [BITS-1:0] reg_ifft_real_37;
wire [BITS-1:0] reg_ifft_imag_37;
wire [BITS-1:0] reg_ifft_real_38;
wire [BITS-1:0] reg_ifft_imag_38;
wire [BITS-1:0] reg_ifft_real_39;
wire [BITS-1:0] reg_ifft_imag_39;
wire [BITS-1:0] reg_ifft_real_40;
wire [BITS-1:0] reg_ifft_imag_40;
wire [BITS-1:0] reg_ifft_real_41;
wire [BITS-1:0] reg_ifft_imag_41;
wire [BITS-1:0] reg_ifft_real_42;
wire [BITS-1:0] reg_ifft_imag_42;
wire [BITS-1:0] reg_ifft_real_43;
wire [BITS-1:0] reg_ifft_imag_43;
wire [BITS-1:0] reg_ifft_real_44;
wire [BITS-1:0] reg_ifft_imag_44;
wire [BITS-1:0] reg_ifft_real_45;
wire [BITS-1:0] reg_ifft_imag_45;
wire [BITS-1:0] reg_ifft_real_46;
wire [BITS-1:0] reg_ifft_imag_46;
wire [BITS-1:0] reg_ifft_real_47;
wire [BITS-1:0] reg_ifft_imag_47;
wire [BITS-1:0] reg_ifft_real_48;
wire [BITS-1:0] reg_ifft_imag_48;
wire [BITS-1:0] reg_ifft_real_49;
wire [BITS-1:0] reg_ifft_imag_49;
wire [BITS-1:0] reg_ifft_real_50;
wire [BITS-1:0] reg_ifft_imag_50;
wire [BITS-1:0] reg_ifft_real_51;
wire [BITS-1:0] reg_ifft_imag_51;
wire [BITS-1:0] reg_ifft_real_52;
wire [BITS-1:0] reg_ifft_imag_52;
wire [BITS-1:0] reg_ifft_real_53;
wire [BITS-1:0] reg_ifft_imag_53;
wire [BITS-1:0] reg_ifft_real_54;
wire [BITS-1:0] reg_ifft_imag_54;
wire [BITS-1:0] reg_ifft_real_55;
wire [BITS-1:0] reg_ifft_imag_55;
wire [BITS-1:0] reg_ifft_real_56;
wire [BITS-1:0] reg_ifft_imag_56;
wire [BITS-1:0] reg_ifft_real_57;
wire [BITS-1:0] reg_ifft_imag_57;
wire [BITS-1:0] reg_ifft_real_58;
wire [BITS-1:0] reg_ifft_imag_58;
wire [BITS-1:0] reg_ifft_real_59;
wire [BITS-1:0] reg_ifft_imag_59;
wire [BITS-1:0] reg_ifft_real_60;
wire [BITS-1:0] reg_ifft_imag_60;
wire [BITS-1:0] reg_ifft_real_61;
wire [BITS-1:0] reg_ifft_imag_61;
wire [BITS-1:0] reg_ifft_real_62;
wire [BITS-1:0] reg_ifft_imag_62;
wire [BITS-1:0] reg_ifft_real_63;
wire [BITS-1:0] reg_ifft_imag_63;
wire [BITS-1:0] reg_ifft_real_64;
wire [BITS-1:0] reg_ifft_imag_64;
wire [BITS-1:0] reg_ifft_real_65;
wire [BITS-1:0] reg_ifft_imag_65;
wire [BITS-1:0] reg_ifft_real_66;
wire [BITS-1:0] reg_ifft_imag_66;
wire [BITS-1:0] reg_ifft_real_67;
wire [BITS-1:0] reg_ifft_imag_67;
wire [BITS-1:0] reg_ifft_real_68;
wire [BITS-1:0] reg_ifft_imag_68;
wire [BITS-1:0] reg_ifft_real_69;
wire [BITS-1:0] reg_ifft_imag_69;
wire [BITS-1:0] reg_ifft_real_70;
wire [BITS-1:0] reg_ifft_imag_70;
wire [BITS-1:0] reg_ifft_real_71;
wire [BITS-1:0] reg_ifft_imag_71;
wire [BITS-1:0] reg_ifft_real_72;
wire [BITS-1:0] reg_ifft_imag_72;
wire [BITS-1:0] reg_ifft_real_73;
wire [BITS-1:0] reg_ifft_imag_73;
wire [BITS-1:0] reg_ifft_real_74;
wire [BITS-1:0] reg_ifft_imag_74;
wire [BITS-1:0] reg_ifft_real_75;
wire [BITS-1:0] reg_ifft_imag_75;
wire [BITS-1:0] reg_ifft_real_76;
wire [BITS-1:0] reg_ifft_imag_76;
wire [BITS-1:0] reg_ifft_real_77;
wire [BITS-1:0] reg_ifft_imag_77;
wire [BITS-1:0] reg_ifft_real_78;
wire [BITS-1:0] reg_ifft_imag_78;
wire [BITS-1:0] reg_ifft_real_79;
wire [BITS-1:0] reg_ifft_imag_79;
wire [BITS-1:0] reg_ifft_real_80;
wire [BITS-1:0] reg_ifft_imag_80;
wire [BITS-1:0] reg_ifft_real_81;
wire [BITS-1:0] reg_ifft_imag_81;
wire [BITS-1:0] reg_ifft_real_82;
wire [BITS-1:0] reg_ifft_imag_82;
wire [BITS-1:0] reg_ifft_real_83;
wire [BITS-1:0] reg_ifft_imag_83;
wire [BITS-1:0] reg_ifft_real_84;
wire [BITS-1:0] reg_ifft_imag_84;
wire [BITS-1:0] reg_ifft_real_85;
wire [BITS-1:0] reg_ifft_imag_85;
wire [BITS-1:0] reg_ifft_real_86;
wire [BITS-1:0] reg_ifft_imag_86;
wire [BITS-1:0] reg_ifft_real_87;
wire [BITS-1:0] reg_ifft_imag_87;
wire [BITS-1:0] reg_ifft_real_88;
wire [BITS-1:0] reg_ifft_imag_88;
wire [BITS-1:0] reg_ifft_real_89;
wire [BITS-1:0] reg_ifft_imag_89;
wire [BITS-1:0] reg_ifft_real_90;
wire [BITS-1:0] reg_ifft_imag_90;
wire [BITS-1:0] reg_ifft_real_91;
wire [BITS-1:0] reg_ifft_imag_91;
wire [BITS-1:0] reg_ifft_real_92;
wire [BITS-1:0] reg_ifft_imag_92;
wire [BITS-1:0] reg_ifft_real_93;
wire [BITS-1:0] reg_ifft_imag_93;
wire [BITS-1:0] reg_ifft_real_94;
wire [BITS-1:0] reg_ifft_imag_94;
wire [BITS-1:0] reg_ifft_real_95;
wire [BITS-1:0] reg_ifft_imag_95;
wire [BITS-1:0] reg_ifft_real_96;
wire [BITS-1:0] reg_ifft_imag_96;
wire [BITS-1:0] reg_ifft_real_97;
wire [BITS-1:0] reg_ifft_imag_97;
wire [BITS-1:0] reg_ifft_real_98;
wire [BITS-1:0] reg_ifft_imag_98;
wire [BITS-1:0] reg_ifft_real_99;
wire [BITS-1:0] reg_ifft_imag_99;
wire [BITS-1:0] reg_ifft_real_100;
wire [BITS-1:0] reg_ifft_imag_100;
wire [BITS-1:0] reg_ifft_real_101;
wire [BITS-1:0] reg_ifft_imag_101;
wire [BITS-1:0] reg_ifft_real_102;
wire [BITS-1:0] reg_ifft_imag_102;
wire [BITS-1:0] reg_ifft_real_103;
wire [BITS-1:0] reg_ifft_imag_103;
wire [BITS-1:0] reg_ifft_real_104;
wire [BITS-1:0] reg_ifft_imag_104;
wire [BITS-1:0] reg_ifft_real_105;
wire [BITS-1:0] reg_ifft_imag_105;
wire [BITS-1:0] reg_ifft_real_106;
wire [BITS-1:0] reg_ifft_imag_106;
wire [BITS-1:0] reg_ifft_real_107;
wire [BITS-1:0] reg_ifft_imag_107;
wire [BITS-1:0] reg_ifft_real_108;
wire [BITS-1:0] reg_ifft_imag_108;
wire [BITS-1:0] reg_ifft_real_109;
wire [BITS-1:0] reg_ifft_imag_109;
wire [BITS-1:0] reg_ifft_real_110;
wire [BITS-1:0] reg_ifft_imag_110;
wire [BITS-1:0] reg_ifft_real_111;
wire [BITS-1:0] reg_ifft_imag_111;
wire [BITS-1:0] reg_ifft_real_112;
wire [BITS-1:0] reg_ifft_imag_112;
wire [BITS-1:0] reg_ifft_real_113;
wire [BITS-1:0] reg_ifft_imag_113;
wire [BITS-1:0] reg_ifft_real_114;
wire [BITS-1:0] reg_ifft_imag_114;
wire [BITS-1:0] reg_ifft_real_115;
wire [BITS-1:0] reg_ifft_imag_115;
wire [BITS-1:0] reg_ifft_real_116;
wire [BITS-1:0] reg_ifft_imag_116;
wire [BITS-1:0] reg_ifft_real_117;
wire [BITS-1:0] reg_ifft_imag_117;
wire [BITS-1:0] reg_ifft_real_118;
wire [BITS-1:0] reg_ifft_imag_118;
wire [BITS-1:0] reg_ifft_real_119;
wire [BITS-1:0] reg_ifft_imag_119;
wire [BITS-1:0] reg_ifft_real_120;
wire [BITS-1:0] reg_ifft_imag_120;
wire [BITS-1:0] reg_ifft_real_121;
wire [BITS-1:0] reg_ifft_imag_121;
wire [BITS-1:0] reg_ifft_real_122;
wire [BITS-1:0] reg_ifft_imag_122;
wire [BITS-1:0] reg_ifft_real_123;
wire [BITS-1:0] reg_ifft_imag_123;
wire [BITS-1:0] reg_ifft_real_124;
wire [BITS-1:0] reg_ifft_imag_124;
wire [BITS-1:0] reg_ifft_real_125;
wire [BITS-1:0] reg_ifft_imag_125;
wire [BITS-1:0] reg_ifft_real_126;
wire [BITS-1:0] reg_ifft_imag_126;
wire [BITS-1:0] reg_ifft_real_127;
wire [BITS-1:0] reg_ifft_imag_127;





//internal signal from the output of IFFT Block  into the input of the 4x1 MUXs
wire [BITS-1:0] ifft_mux_4x1_real_0;
wire [BITS-1:0] ifft_mux_4x1_imag_0;
wire [BITS-1:0] ifft_mux_4x1_real_1;
wire [BITS-1:0] ifft_mux_4x1_imag_1;
wire [BITS-1:0] ifft_mux_4x1_real_2;
wire [BITS-1:0] ifft_mux_4x1_imag_2;
wire [BITS-1:0] ifft_mux_4x1_real_3;
wire [BITS-1:0] ifft_mux_4x1_imag_3;
wire [BITS-1:0] ifft_mux_4x1_real_4;
wire [BITS-1:0] ifft_mux_4x1_imag_4;
wire [BITS-1:0] ifft_mux_4x1_real_5;
wire [BITS-1:0] ifft_mux_4x1_imag_5;
wire [BITS-1:0] ifft_mux_4x1_real_6;
wire [BITS-1:0] ifft_mux_4x1_imag_6;
wire [BITS-1:0] ifft_mux_4x1_real_7;
wire [BITS-1:0] ifft_mux_4x1_imag_7;
wire [BITS-1:0] ifft_mux_4x1_real_8;
wire [BITS-1:0] ifft_mux_4x1_imag_8;
wire [BITS-1:0] ifft_mux_4x1_real_9;
wire [BITS-1:0] ifft_mux_4x1_imag_9;
wire [BITS-1:0] ifft_mux_4x1_real_10;
wire [BITS-1:0] ifft_mux_4x1_imag_10;
wire [BITS-1:0] ifft_mux_4x1_real_11;
wire [BITS-1:0] ifft_mux_4x1_imag_11;
wire [BITS-1:0] ifft_mux_4x1_real_12;
wire [BITS-1:0] ifft_mux_4x1_imag_12;
wire [BITS-1:0] ifft_mux_4x1_real_13;
wire [BITS-1:0] ifft_mux_4x1_imag_13;
wire [BITS-1:0] ifft_mux_4x1_real_14;
wire [BITS-1:0] ifft_mux_4x1_imag_14;
wire [BITS-1:0] ifft_mux_4x1_real_15;
wire [BITS-1:0] ifft_mux_4x1_imag_15;
wire [BITS-1:0] ifft_mux_4x1_real_16;
wire [BITS-1:0] ifft_mux_4x1_imag_16;
wire [BITS-1:0] ifft_mux_4x1_real_17;
wire [BITS-1:0] ifft_mux_4x1_imag_17;
wire [BITS-1:0] ifft_mux_4x1_real_18;
wire [BITS-1:0] ifft_mux_4x1_imag_18;
wire [BITS-1:0] ifft_mux_4x1_real_19;
wire [BITS-1:0] ifft_mux_4x1_imag_19;
wire [BITS-1:0] ifft_mux_4x1_real_20;
wire [BITS-1:0] ifft_mux_4x1_imag_20;
wire [BITS-1:0] ifft_mux_4x1_real_21;
wire [BITS-1:0] ifft_mux_4x1_imag_21;
wire [BITS-1:0] ifft_mux_4x1_real_22;
wire [BITS-1:0] ifft_mux_4x1_imag_22;
wire [BITS-1:0] ifft_mux_4x1_real_23;
wire [BITS-1:0] ifft_mux_4x1_imag_23;
wire [BITS-1:0] ifft_mux_4x1_real_24;
wire [BITS-1:0] ifft_mux_4x1_imag_24;
wire [BITS-1:0] ifft_mux_4x1_real_25;
wire [BITS-1:0] ifft_mux_4x1_imag_25;
wire [BITS-1:0] ifft_mux_4x1_real_26;
wire [BITS-1:0] ifft_mux_4x1_imag_26;
wire [BITS-1:0] ifft_mux_4x1_real_27;
wire [BITS-1:0] ifft_mux_4x1_imag_27;
wire [BITS-1:0] ifft_mux_4x1_real_28;
wire [BITS-1:0] ifft_mux_4x1_imag_28;
wire [BITS-1:0] ifft_mux_4x1_real_29;
wire [BITS-1:0] ifft_mux_4x1_imag_29;
wire [BITS-1:0] ifft_mux_4x1_real_30;
wire [BITS-1:0] ifft_mux_4x1_imag_30;
wire [BITS-1:0] ifft_mux_4x1_real_31;
wire [BITS-1:0] ifft_mux_4x1_imag_31;
wire [BITS-1:0] ifft_mux_4x1_real_32;
wire [BITS-1:0] ifft_mux_4x1_imag_32;
wire [BITS-1:0] ifft_mux_4x1_real_33;
wire [BITS-1:0] ifft_mux_4x1_imag_33;
wire [BITS-1:0] ifft_mux_4x1_real_34;
wire [BITS-1:0] ifft_mux_4x1_imag_34;
wire [BITS-1:0] ifft_mux_4x1_real_35;
wire [BITS-1:0] ifft_mux_4x1_imag_35;
wire [BITS-1:0] ifft_mux_4x1_real_36;
wire [BITS-1:0] ifft_mux_4x1_imag_36;
wire [BITS-1:0] ifft_mux_4x1_real_37;
wire [BITS-1:0] ifft_mux_4x1_imag_37;
wire [BITS-1:0] ifft_mux_4x1_real_38;
wire [BITS-1:0] ifft_mux_4x1_imag_38;
wire [BITS-1:0] ifft_mux_4x1_real_39;
wire [BITS-1:0] ifft_mux_4x1_imag_39;
wire [BITS-1:0] ifft_mux_4x1_real_40;
wire [BITS-1:0] ifft_mux_4x1_imag_40;
wire [BITS-1:0] ifft_mux_4x1_real_41;
wire [BITS-1:0] ifft_mux_4x1_imag_41;
wire [BITS-1:0] ifft_mux_4x1_real_42;
wire [BITS-1:0] ifft_mux_4x1_imag_42;
wire [BITS-1:0] ifft_mux_4x1_real_43;
wire [BITS-1:0] ifft_mux_4x1_imag_43;
wire [BITS-1:0] ifft_mux_4x1_real_44;
wire [BITS-1:0] ifft_mux_4x1_imag_44;
wire [BITS-1:0] ifft_mux_4x1_real_45;
wire [BITS-1:0] ifft_mux_4x1_imag_45;
wire [BITS-1:0] ifft_mux_4x1_real_46;
wire [BITS-1:0] ifft_mux_4x1_imag_46;
wire [BITS-1:0] ifft_mux_4x1_real_47;
wire [BITS-1:0] ifft_mux_4x1_imag_47;
wire [BITS-1:0] ifft_mux_4x1_real_48;
wire [BITS-1:0] ifft_mux_4x1_imag_48;
wire [BITS-1:0] ifft_mux_4x1_real_49;
wire [BITS-1:0] ifft_mux_4x1_imag_49;
wire [BITS-1:0] ifft_mux_4x1_real_50;
wire [BITS-1:0] ifft_mux_4x1_imag_50;
wire [BITS-1:0] ifft_mux_4x1_real_51;
wire [BITS-1:0] ifft_mux_4x1_imag_51;
wire [BITS-1:0] ifft_mux_4x1_real_52;
wire [BITS-1:0] ifft_mux_4x1_imag_52;
wire [BITS-1:0] ifft_mux_4x1_real_53;
wire [BITS-1:0] ifft_mux_4x1_imag_53;
wire [BITS-1:0] ifft_mux_4x1_real_54;
wire [BITS-1:0] ifft_mux_4x1_imag_54;
wire [BITS-1:0] ifft_mux_4x1_real_55;
wire [BITS-1:0] ifft_mux_4x1_imag_55;
wire [BITS-1:0] ifft_mux_4x1_real_56;
wire [BITS-1:0] ifft_mux_4x1_imag_56;
wire [BITS-1:0] ifft_mux_4x1_real_57;
wire [BITS-1:0] ifft_mux_4x1_imag_57;
wire [BITS-1:0] ifft_mux_4x1_real_58;
wire [BITS-1:0] ifft_mux_4x1_imag_58;
wire [BITS-1:0] ifft_mux_4x1_real_59;
wire [BITS-1:0] ifft_mux_4x1_imag_59;
wire [BITS-1:0] ifft_mux_4x1_real_60;
wire [BITS-1:0] ifft_mux_4x1_imag_60;
wire [BITS-1:0] ifft_mux_4x1_real_61;
wire [BITS-1:0] ifft_mux_4x1_imag_61;
wire [BITS-1:0] ifft_mux_4x1_real_62;
wire [BITS-1:0] ifft_mux_4x1_imag_62;
wire [BITS-1:0] ifft_mux_4x1_real_63;
wire [BITS-1:0] ifft_mux_4x1_imag_63;
wire [BITS-1:0] ifft_mux_4x1_real_64;
wire [BITS-1:0] ifft_mux_4x1_imag_64;
wire [BITS-1:0] ifft_mux_4x1_real_65;
wire [BITS-1:0] ifft_mux_4x1_imag_65;
wire [BITS-1:0] ifft_mux_4x1_real_66;
wire [BITS-1:0] ifft_mux_4x1_imag_66;
wire [BITS-1:0] ifft_mux_4x1_real_67;
wire [BITS-1:0] ifft_mux_4x1_imag_67;
wire [BITS-1:0] ifft_mux_4x1_real_68;
wire [BITS-1:0] ifft_mux_4x1_imag_68;
wire [BITS-1:0] ifft_mux_4x1_real_69;
wire [BITS-1:0] ifft_mux_4x1_imag_69;
wire [BITS-1:0] ifft_mux_4x1_real_70;
wire [BITS-1:0] ifft_mux_4x1_imag_70;
wire [BITS-1:0] ifft_mux_4x1_real_71;
wire [BITS-1:0] ifft_mux_4x1_imag_71;
wire [BITS-1:0] ifft_mux_4x1_real_72;
wire [BITS-1:0] ifft_mux_4x1_imag_72;
wire [BITS-1:0] ifft_mux_4x1_real_73;
wire [BITS-1:0] ifft_mux_4x1_imag_73;
wire [BITS-1:0] ifft_mux_4x1_real_74;
wire [BITS-1:0] ifft_mux_4x1_imag_74;
wire [BITS-1:0] ifft_mux_4x1_real_75;
wire [BITS-1:0] ifft_mux_4x1_imag_75;
wire [BITS-1:0] ifft_mux_4x1_real_76;
wire [BITS-1:0] ifft_mux_4x1_imag_76;
wire [BITS-1:0] ifft_mux_4x1_real_77;
wire [BITS-1:0] ifft_mux_4x1_imag_77;
wire [BITS-1:0] ifft_mux_4x1_real_78;
wire [BITS-1:0] ifft_mux_4x1_imag_78;
wire [BITS-1:0] ifft_mux_4x1_real_79;
wire [BITS-1:0] ifft_mux_4x1_imag_79;
wire [BITS-1:0] ifft_mux_4x1_real_80;
wire [BITS-1:0] ifft_mux_4x1_imag_80;
wire [BITS-1:0] ifft_mux_4x1_real_81;
wire [BITS-1:0] ifft_mux_4x1_imag_81;
wire [BITS-1:0] ifft_mux_4x1_real_82;
wire [BITS-1:0] ifft_mux_4x1_imag_82;
wire [BITS-1:0] ifft_mux_4x1_real_83;
wire [BITS-1:0] ifft_mux_4x1_imag_83;
wire [BITS-1:0] ifft_mux_4x1_real_84;
wire [BITS-1:0] ifft_mux_4x1_imag_84;
wire [BITS-1:0] ifft_mux_4x1_real_85;
wire [BITS-1:0] ifft_mux_4x1_imag_85;
wire [BITS-1:0] ifft_mux_4x1_real_86;
wire [BITS-1:0] ifft_mux_4x1_imag_86;
wire [BITS-1:0] ifft_mux_4x1_real_87;
wire [BITS-1:0] ifft_mux_4x1_imag_87;
wire [BITS-1:0] ifft_mux_4x1_real_88;
wire [BITS-1:0] ifft_mux_4x1_imag_88;
wire [BITS-1:0] ifft_mux_4x1_real_89;
wire [BITS-1:0] ifft_mux_4x1_imag_89;
wire [BITS-1:0] ifft_mux_4x1_real_90;
wire [BITS-1:0] ifft_mux_4x1_imag_90;
wire [BITS-1:0] ifft_mux_4x1_real_91;
wire [BITS-1:0] ifft_mux_4x1_imag_91;
wire [BITS-1:0] ifft_mux_4x1_real_92;
wire [BITS-1:0] ifft_mux_4x1_imag_92;
wire [BITS-1:0] ifft_mux_4x1_real_93;
wire [BITS-1:0] ifft_mux_4x1_imag_93;
wire [BITS-1:0] ifft_mux_4x1_real_94;
wire [BITS-1:0] ifft_mux_4x1_imag_94;
wire [BITS-1:0] ifft_mux_4x1_real_95;
wire [BITS-1:0] ifft_mux_4x1_imag_95;
wire [BITS-1:0] ifft_mux_4x1_real_96;
wire [BITS-1:0] ifft_mux_4x1_imag_96;
wire [BITS-1:0] ifft_mux_4x1_real_97;
wire [BITS-1:0] ifft_mux_4x1_imag_97;
wire [BITS-1:0] ifft_mux_4x1_real_98;
wire [BITS-1:0] ifft_mux_4x1_imag_98;
wire [BITS-1:0] ifft_mux_4x1_real_99;
wire [BITS-1:0] ifft_mux_4x1_imag_99;
wire [BITS-1:0] ifft_mux_4x1_real_100;
wire [BITS-1:0] ifft_mux_4x1_imag_100;
wire [BITS-1:0] ifft_mux_4x1_real_101;
wire [BITS-1:0] ifft_mux_4x1_imag_101;
wire [BITS-1:0] ifft_mux_4x1_real_102;
wire [BITS-1:0] ifft_mux_4x1_imag_102;
wire [BITS-1:0] ifft_mux_4x1_real_103;
wire [BITS-1:0] ifft_mux_4x1_imag_103;
wire [BITS-1:0] ifft_mux_4x1_real_104;
wire [BITS-1:0] ifft_mux_4x1_imag_104;
wire [BITS-1:0] ifft_mux_4x1_real_105;
wire [BITS-1:0] ifft_mux_4x1_imag_105;
wire [BITS-1:0] ifft_mux_4x1_real_106;
wire [BITS-1:0] ifft_mux_4x1_imag_106;
wire [BITS-1:0] ifft_mux_4x1_real_107;
wire [BITS-1:0] ifft_mux_4x1_imag_107;
wire [BITS-1:0] ifft_mux_4x1_real_108;
wire [BITS-1:0] ifft_mux_4x1_imag_108;
wire [BITS-1:0] ifft_mux_4x1_real_109;
wire [BITS-1:0] ifft_mux_4x1_imag_109;
wire [BITS-1:0] ifft_mux_4x1_real_110;
wire [BITS-1:0] ifft_mux_4x1_imag_110;
wire [BITS-1:0] ifft_mux_4x1_real_111;
wire [BITS-1:0] ifft_mux_4x1_imag_111;
wire [BITS-1:0] ifft_mux_4x1_real_112;
wire [BITS-1:0] ifft_mux_4x1_imag_112;
wire [BITS-1:0] ifft_mux_4x1_real_113;
wire [BITS-1:0] ifft_mux_4x1_imag_113;
wire [BITS-1:0] ifft_mux_4x1_real_114;
wire [BITS-1:0] ifft_mux_4x1_imag_114;
wire [BITS-1:0] ifft_mux_4x1_real_115;
wire [BITS-1:0] ifft_mux_4x1_imag_115;
wire [BITS-1:0] ifft_mux_4x1_real_116;
wire [BITS-1:0] ifft_mux_4x1_imag_116;
wire [BITS-1:0] ifft_mux_4x1_real_117;
wire [BITS-1:0] ifft_mux_4x1_imag_117;
wire [BITS-1:0] ifft_mux_4x1_real_118;
wire [BITS-1:0] ifft_mux_4x1_imag_118;
wire [BITS-1:0] ifft_mux_4x1_real_119;
wire [BITS-1:0] ifft_mux_4x1_imag_119;
wire [BITS-1:0] ifft_mux_4x1_real_120;
wire [BITS-1:0] ifft_mux_4x1_imag_120;
wire [BITS-1:0] ifft_mux_4x1_real_121;
wire [BITS-1:0] ifft_mux_4x1_imag_121;
wire [BITS-1:0] ifft_mux_4x1_real_122;
wire [BITS-1:0] ifft_mux_4x1_imag_122;
wire [BITS-1:0] ifft_mux_4x1_real_123;
wire [BITS-1:0] ifft_mux_4x1_imag_123;
wire [BITS-1:0] ifft_mux_4x1_real_124;
wire [BITS-1:0] ifft_mux_4x1_imag_124;
wire [BITS-1:0] ifft_mux_4x1_real_125;
wire [BITS-1:0] ifft_mux_4x1_imag_125;
wire [BITS-1:0] ifft_mux_4x1_real_126;
wire [BITS-1:0] ifft_mux_4x1_imag_126;
wire [BITS-1:0] ifft_mux_4x1_real_127;
wire [BITS-1:0] ifft_mux_4x1_imag_127;





//internal signal from the output of the 4x1 bank of MUXs into the input of the Bank of RAMs
wire [BITS-1:0] mux_scale_memory_real_0;
wire [BITS-1:0] mux_scale_memory_imag_0;
wire [BITS-1:0] mux_scale_memory_real_1;
wire [BITS-1:0] mux_scale_memory_imag_1;
wire [BITS-1:0] mux_scale_memory_real_2;
wire [BITS-1:0] mux_scale_memory_imag_2;
wire [BITS-1:0] mux_scale_memory_real_3;
wire [BITS-1:0] mux_scale_memory_imag_3;
wire [BITS-1:0] mux_scale_memory_real_4;
wire [BITS-1:0] mux_scale_memory_imag_4;
wire [BITS-1:0] mux_scale_memory_real_5;
wire [BITS-1:0] mux_scale_memory_imag_5;
wire [BITS-1:0] mux_scale_memory_real_6;
wire [BITS-1:0] mux_scale_memory_imag_6;
wire [BITS-1:0] mux_scale_memory_real_7;
wire [BITS-1:0] mux_scale_memory_imag_7;
wire [BITS-1:0] mux_scale_memory_real_8;
wire [BITS-1:0] mux_scale_memory_imag_8;
wire [BITS-1:0] mux_scale_memory_real_9;
wire [BITS-1:0] mux_scale_memory_imag_9;
wire [BITS-1:0] mux_scale_memory_real_10;
wire [BITS-1:0] mux_scale_memory_imag_10;
wire [BITS-1:0] mux_scale_memory_real_11;
wire [BITS-1:0] mux_scale_memory_imag_11;
wire [BITS-1:0] mux_scale_memory_real_12;
wire [BITS-1:0] mux_scale_memory_imag_12;
wire [BITS-1:0] mux_scale_memory_real_13;
wire [BITS-1:0] mux_scale_memory_imag_13;
wire [BITS-1:0] mux_scale_memory_real_14;
wire [BITS-1:0] mux_scale_memory_imag_14;
wire [BITS-1:0] mux_scale_memory_real_15;
wire [BITS-1:0] mux_scale_memory_imag_15;
wire [BITS-1:0] mux_scale_memory_real_16;
wire [BITS-1:0] mux_scale_memory_imag_16;
wire [BITS-1:0] mux_scale_memory_real_17;
wire [BITS-1:0] mux_scale_memory_imag_17;
wire [BITS-1:0] mux_scale_memory_real_18;
wire [BITS-1:0] mux_scale_memory_imag_18;
wire [BITS-1:0] mux_scale_memory_real_19;
wire [BITS-1:0] mux_scale_memory_imag_19;
wire [BITS-1:0] mux_scale_memory_real_20;
wire [BITS-1:0] mux_scale_memory_imag_20;
wire [BITS-1:0] mux_scale_memory_real_21;
wire [BITS-1:0] mux_scale_memory_imag_21;
wire [BITS-1:0] mux_scale_memory_real_22;
wire [BITS-1:0] mux_scale_memory_imag_22;
wire [BITS-1:0] mux_scale_memory_real_23;
wire [BITS-1:0] mux_scale_memory_imag_23;
wire [BITS-1:0] mux_scale_memory_real_24;
wire [BITS-1:0] mux_scale_memory_imag_24;
wire [BITS-1:0] mux_scale_memory_real_25;
wire [BITS-1:0] mux_scale_memory_imag_25;
wire [BITS-1:0] mux_scale_memory_real_26;
wire [BITS-1:0] mux_scale_memory_imag_26;
wire [BITS-1:0] mux_scale_memory_real_27;
wire [BITS-1:0] mux_scale_memory_imag_27;
wire [BITS-1:0] mux_scale_memory_real_28;
wire [BITS-1:0] mux_scale_memory_imag_28;
wire [BITS-1:0] mux_scale_memory_real_29;
wire [BITS-1:0] mux_scale_memory_imag_29;
wire [BITS-1:0] mux_scale_memory_real_30;
wire [BITS-1:0] mux_scale_memory_imag_30;
wire [BITS-1:0] mux_scale_memory_real_31;
wire [BITS-1:0] mux_scale_memory_imag_31;



//control signals 
wire reg_en_ifft_rst;
wire [127:0] reg_en_fft ;
wire [6:0] fft_sel_mux_128x1 ;
wire [7:0] wavelet_rom_addr ;
wire [127:0] reg_en_ifft ;
wire [1:0] ifft_sel_mux__4x1;
wire ifft_ready_inputs;
wire fft_ready_inputs;
wire ifft_write_enable_1 ;
wire ifft_write_enable_2 ;
wire ifft_write_enable_3 ;
wire ifft_write_enable_4 ;
wire ifft_write_enable_5 ;
wire ifft_write_enable_6 ;
wire ifft_write_enable_7 ;
wire ifft_write_enable_8 ;
wire ifft_write_enable_9 ;
wire ifft_write_enable_10 ;
wire ifft_write_enable_11 ;
wire ifft_write_enable_12 ;
wire ifft_write_enable_13 ;
wire ifft_write_enable_14 ;
wire ifft_write_enable_15 ;
wire [1:0] write_scale_ram_addresses;


//status signals
wire fft_correct;
wire ifft_correct;


Controller_FSM_CWT controller_cwt 
(
.clk(clk),
.rst(rst),
.fft_correct(fft_correct),
.ifft_correct(ifft_correct),
.fft_ready_inputs(ready_inputs),


.reg_en_ifft_rst(reg_en_ifft_rst),
.reg_en_fft(reg_en_fft),
.sel_mux_128x1(fft_sel_mux_128x1),
.wavlet_rom_addr(wavelet_rom_addr),
.reg_en_ifft(reg_en_ifft),
.ifft_sel_mux_4x1(ifft_sel_mux__4x1),
.ifft_ready_inputs(ifft_ready_inputs),
.ifft_scale_ram_write_enable_1(ifft_write_enable_1),
.ifft_scale_ram_write_enable_2(ifft_write_enable_2),
.ifft_scale_ram_write_enable_3(ifft_write_enable_3),
.ifft_scale_ram_write_enable_4(ifft_write_enable_4),                       
.ifft_scale_ram_write_enable_5(ifft_write_enable_5),                        
.ifft_scale_ram_write_enable_6(ifft_write_enable_6),                        
.ifft_scale_ram_write_enable_7(ifft_write_enable_7),                        
 .ifft_scale_ram_write_enable_8(ifft_write_enable_8),                
.ifft_scale_ram_write_enable_9(ifft_write_enable_9),                         
.ifft_scale_ram_write_enable_10(ifft_write_enable_10),                        
.ifft_scale_ram_write_enable_11(ifft_write_enable_11),                        
.ifft_scale_ram_write_enable_12(ifft_write_enable_12),                        
.ifft_scale_ram_write_enable_13(ifft_write_enable_13),                        
.ifft_scale_ram_write_enable_14(ifft_write_enable_14),                        
.ifft_scale_ram_write_enable_15(ifft_write_enable_15),                        
.ifft_scale_output_ram_addr(write_scale_ram_addresses)
);



FFT_Time_Share_Top_Module #(.BITS(BITS)) FFT
(
    .ready_inputs(ready_inputs) ,
	.clk(clk) ,
	.rst(rst) ,
    .x0_r(x0_r),
    .x0_i(x0_i),
    .X0_r(fft_reg_real_0),
    .X0_i(fft_reg_imag_0),
    .x1_r(x1_r),
    .x1_i(x1_i),
    .X1_r(fft_reg_real_1),
    .X1_i(fft_reg_imag_1),
    .x2_r(x2_r),
    .x2_i(x2_i),
    .X2_r(fft_reg_real_2),
    .X2_i(fft_reg_imag_2),
    .x3_r(x3_r),
    .x3_i(x3_i),
    .X3_r(fft_reg_real_3),
    .X3_i(fft_reg_imag_3),
    .x4_r(x4_r),
    .x4_i(x4_i),
    .X4_r(fft_reg_real_4),
    .X4_i(fft_reg_imag_4),
    .x5_r(x5_r),
    .x5_i(x5_i),
    .X5_r(fft_reg_real_5),
    .X5_i(fft_reg_imag_5),
    .x6_r(x6_r),
    .x6_i(x6_i),
    .X6_r(fft_reg_real_6),
    .X6_i(fft_reg_imag_6),
    .x7_r(x7_r),
    .x7_i(x7_i),
    .X7_r(fft_reg_real_7),
    .X7_i(fft_reg_imag_7),
    .x8_r(x8_r),
    .x8_i(x8_i),
    .X8_r(fft_reg_real_8),
    .X8_i(fft_reg_imag_8),
    .x9_r(x9_r),
    .x9_i(x9_i),
    .X9_r(fft_reg_real_9),
    .X9_i(fft_reg_imag_9),
    .x10_r(x10_r),
    .x10_i(x10_i),
    .X10_r(fft_reg_real_10),
    .X10_i(fft_reg_imag_10),
    .x11_r(x11_r),
    .x11_i(x11_i),
    .X11_r(fft_reg_real_11),
    .X11_i(fft_reg_imag_11),
    .x12_r(x12_r),
    .x12_i(x12_i),
    .X12_r(fft_reg_real_12),
    .X12_i(fft_reg_imag_12),
    .x13_r(x13_r),
    .x13_i(x13_i),
    .X13_r(fft_reg_real_13),
    .X13_i(fft_reg_imag_13),
    .x14_r(x14_r),
    .x14_i(x14_i),
    .X14_r(fft_reg_real_14),
    .X14_i(fft_reg_imag_14),
    .x15_r(x15_r),
    .x15_i(x15_i),
    .X15_r(fft_reg_real_15),
    .X15_i(fft_reg_imag_15),
    .x16_r(x16_r),
    .x16_i(x16_i),
    .X16_r(fft_reg_real_16),
    .X16_i(fft_reg_imag_16),
    .x17_r(x17_r),
    .x17_i(x17_i),
    .X17_r(fft_reg_real_17),
    .X17_i(fft_reg_imag_17),
    .x18_r(x18_r),
    .x18_i(x18_i),
    .X18_r(fft_reg_real_18),
    .X18_i(fft_reg_imag_18),
    .x19_r(x19_r),
    .x19_i(x19_i),
    .X19_r(fft_reg_real_19),
    .X19_i(fft_reg_imag_19),
    .x20_r(x20_r),
    .x20_i(x20_i),
    .X20_r(fft_reg_real_20),
    .X20_i(fft_reg_imag_20),
    .x21_r(x21_r),
    .x21_i(x21_i),
    .X21_r(fft_reg_real_21),
    .X21_i(fft_reg_imag_21),
    .x22_r(x22_r),
    .x22_i(x22_i),
    .X22_r(fft_reg_real_22),
    .X22_i(fft_reg_imag_22),
    .x23_r(x23_r),
    .x23_i(x23_i),
    .X23_r(fft_reg_real_23),
    .X23_i(fft_reg_imag_23),
    .x24_r(x24_r),
    .x24_i(x24_i),
    .X24_r(fft_reg_real_24),
    .X24_i(fft_reg_imag_24),
    .x25_r(x25_r),
    .x25_i(x25_i),
    .X25_r(fft_reg_real_25),
    .X25_i(fft_reg_imag_25),
    .x26_r(x26_r),
    .x26_i(x26_i),
    .X26_r(fft_reg_real_26),
    .X26_i(fft_reg_imag_26),
    .x27_r(x27_r),
    .x27_i(x27_i),
    .X27_r(fft_reg_real_27),
    .X27_i(fft_reg_imag_27),
    .x28_r(x28_r),
    .x28_i(x28_i),
    .X28_r(fft_reg_real_28),
    .X28_i(fft_reg_imag_28),
    .x29_r(x29_r),
    .x29_i(x29_i),
    .X29_r(fft_reg_real_29),
    .X29_i(fft_reg_imag_29),
    .x30_r(x30_r),
    .x30_i(x30_i),
    .X30_r(fft_reg_real_30),
    .X30_i(fft_reg_imag_30),
    .x31_r(x31_r),
    .x31_i(x31_i),
    .X31_r(fft_reg_real_31),
    .X31_i(fft_reg_imag_31),
    .x32_r(x32_r),
    .x32_i(x32_i),
    .X32_r(fft_reg_real_32),
    .X32_i(fft_reg_imag_32),
    .x33_r(x33_r),
    .x33_i(x33_i),
    .X33_r(fft_reg_real_33),
    .X33_i(fft_reg_imag_33),
    .x34_r(x34_r),
    .x34_i(x34_i),
    .X34_r(fft_reg_real_34),
    .X34_i(fft_reg_imag_34),
    .x35_r(x35_r),
    .x35_i(x35_i),
    .X35_r(fft_reg_real_35),
    .X35_i(fft_reg_imag_35),
    .x36_r(x36_r),
    .x36_i(x36_i),
    .X36_r(fft_reg_real_36),
    .X36_i(fft_reg_imag_36),
    .x37_r(x37_r),
    .x37_i(x37_i),
    .X37_r(fft_reg_real_37),
    .X37_i(fft_reg_imag_37),
    .x38_r(x38_r),
    .x38_i(x38_i),
    .X38_r(fft_reg_real_38),
    .X38_i(fft_reg_imag_38),
    .x39_r(x39_r),
    .x39_i(x39_i),
    .X39_r(fft_reg_real_39),
    .X39_i(fft_reg_imag_39),
    .x40_r(x40_r),
    .x40_i(x40_i),
    .X40_r(fft_reg_real_40),
    .X40_i(fft_reg_imag_40),
    .x41_r(x41_r),
    .x41_i(x41_i),
    .X41_r(fft_reg_real_41),
    .X41_i(fft_reg_imag_41),
    .x42_r(x42_r),
    .x42_i(x42_i),
    .X42_r(fft_reg_real_42),
    .X42_i(fft_reg_imag_42),
    .x43_r(x43_r),
    .x43_i(x43_i),
    .X43_r(fft_reg_real_43),
    .X43_i(fft_reg_imag_43),
    .x44_r(x44_r),
    .x44_i(x44_i),
    .X44_r(fft_reg_real_44),
    .X44_i(fft_reg_imag_44),
    .x45_r(x45_r),
    .x45_i(x45_i),
    .X45_r(fft_reg_real_45),
    .X45_i(fft_reg_imag_45),
    .x46_r(x46_r),
    .x46_i(x46_i),
    .X46_r(fft_reg_real_46),
    .X46_i(fft_reg_imag_46),
    .x47_r(x47_r),
    .x47_i(x47_i),
    .X47_r(fft_reg_real_47),
    .X47_i(fft_reg_imag_47),
    .x48_r(x48_r),
    .x48_i(x48_i),
    .X48_r(fft_reg_real_48),
    .X48_i(fft_reg_imag_48),
    .x49_r(x49_r),
    .x49_i(x49_i),
    .X49_r(fft_reg_real_49),
    .X49_i(fft_reg_imag_49),
    .x50_r(x50_r),
    .x50_i(x50_i),
    .X50_r(fft_reg_real_50),
    .X50_i(fft_reg_imag_50),
    .x51_r(x51_r),
    .x51_i(x51_i),
    .X51_r(fft_reg_real_51),
    .X51_i(fft_reg_imag_51),
    .x52_r(x52_r),
    .x52_i(x52_i),
    .X52_r(fft_reg_real_52),
    .X52_i(fft_reg_imag_52),
    .x53_r(x53_r),
    .x53_i(x53_i),
    .X53_r(fft_reg_real_53),
    .X53_i(fft_reg_imag_53),
    .x54_r(x54_r),
    .x54_i(x54_i),
    .X54_r(fft_reg_real_54),
    .X54_i(fft_reg_imag_54),
    .x55_r(x55_r),
    .x55_i(x55_i),
    .X55_r(fft_reg_real_55),
    .X55_i(fft_reg_imag_55),
    .x56_r(x56_r),
    .x56_i(x56_i),
    .X56_r(fft_reg_real_56),
    .X56_i(fft_reg_imag_56),
    .x57_r(x57_r),
    .x57_i(x57_i),
    .X57_r(fft_reg_real_57),
    .X57_i(fft_reg_imag_57),
    .x58_r(x58_r),
    .x58_i(x58_i),
    .X58_r(fft_reg_real_58),
    .X58_i(fft_reg_imag_58),
    .x59_r(x59_r),
    .x59_i(x59_i),
    .X59_r(fft_reg_real_59),
    .X59_i(fft_reg_imag_59),
    .x60_r(x60_r),
    .x60_i(x60_i),
    .X60_r(fft_reg_real_60),
    .X60_i(fft_reg_imag_60),
    .x61_r(x61_r),
    .x61_i(x61_i),
    .X61_r(fft_reg_real_61),
    .X61_i(fft_reg_imag_61),
    .x62_r(x62_r),
    .x62_i(x62_i),
    .X62_r(fft_reg_real_62),
    .X62_i(fft_reg_imag_62),
    .x63_r(x63_r),
    .x63_i(x63_i),
    .X63_r(fft_reg_real_63),
    .X63_i(fft_reg_imag_63),
    .x64_r(x64_r),
    .x64_i(x64_i),
    .X64_r(fft_reg_real_64),
    .X64_i(fft_reg_imag_64),
    .x65_r(x65_r),
    .x65_i(x65_i),
    .X65_r(fft_reg_real_65),
    .X65_i(fft_reg_imag_65),
    .x66_r(x66_r),
    .x66_i(x66_i),
    .X66_r(fft_reg_real_66),
    .X66_i(fft_reg_imag_66),
    .x67_r(x67_r),
    .x67_i(x67_i),
    .X67_r(fft_reg_real_67),
    .X67_i(fft_reg_imag_67),
    .x68_r(x68_r),
    .x68_i(x68_i),
    .X68_r(fft_reg_real_68),
    .X68_i(fft_reg_imag_68),
    .x69_r(x69_r),
    .x69_i(x69_i),
    .X69_r(fft_reg_real_69),
    .X69_i(fft_reg_imag_69),
    .x70_r(x70_r),
    .x70_i(x70_i),
    .X70_r(fft_reg_real_70),
    .X70_i(fft_reg_imag_70),
    .x71_r(x71_r),
    .x71_i(x71_i),
    .X71_r(fft_reg_real_71),
    .X71_i(fft_reg_imag_71),
    .x72_r(x72_r),
    .x72_i(x72_i),
    .X72_r(fft_reg_real_72),
    .X72_i(fft_reg_imag_72),
    .x73_r(x73_r),
    .x73_i(x73_i),
    .X73_r(fft_reg_real_73),
    .X73_i(fft_reg_imag_73),
    .x74_r(x74_r),
    .x74_i(x74_i),
    .X74_r(fft_reg_real_74),
    .X74_i(fft_reg_imag_74),
    .x75_r(x75_r),
    .x75_i(x75_i),
    .X75_r(fft_reg_real_75),
    .X75_i(fft_reg_imag_75),
    .x76_r(x76_r),
    .x76_i(x76_i),
    .X76_r(fft_reg_real_76),
    .X76_i(fft_reg_imag_76),
    .x77_r(x77_r),
    .x77_i(x77_i),
    .X77_r(fft_reg_real_77),
    .X77_i(fft_reg_imag_77),
    .x78_r(x78_r),
    .x78_i(x78_i),
    .X78_r(fft_reg_real_78),
    .X78_i(fft_reg_imag_78),
    .x79_r(x79_r),
    .x79_i(x79_i),
    .X79_r(fft_reg_real_79),
    .X79_i(fft_reg_imag_79),
    .x80_r(x80_r),
    .x80_i(x80_i),
    .X80_r(fft_reg_real_80),
    .X80_i(fft_reg_imag_80),
    .x81_r(x81_r),
    .x81_i(x81_i),
    .X81_r(fft_reg_real_81),
    .X81_i(fft_reg_imag_81),
    .x82_r(x82_r),
    .x82_i(x82_i),
    .X82_r(fft_reg_real_82),
    .X82_i(fft_reg_imag_82),
    .x83_r(x83_r),
    .x83_i(x83_i),
    .X83_r(fft_reg_real_83),
    .X83_i(fft_reg_imag_83),
    .x84_r(x84_r),
    .x84_i(x84_i),
    .X84_r(fft_reg_real_84),
    .X84_i(fft_reg_imag_84),
    .x85_r(x85_r),
    .x85_i(x85_i),
    .X85_r(fft_reg_real_85),
    .X85_i(fft_reg_imag_85),
    .x86_r(x86_r),
    .x86_i(x86_i),
    .X86_r(fft_reg_real_86),
    .X86_i(fft_reg_imag_86),
    .x87_r(x87_r),
    .x87_i(x87_i),
    .X87_r(fft_reg_real_87),
    .X87_i(fft_reg_imag_87),
    .x88_r(x88_r),
    .x88_i(x88_i),
    .X88_r(fft_reg_real_88),
    .X88_i(fft_reg_imag_88),
    .x89_r(x89_r),
    .x89_i(x89_i),
    .X89_r(fft_reg_real_89),
    .X89_i(fft_reg_imag_89),
    .x90_r(x90_r),
    .x90_i(x90_i),
    .X90_r(fft_reg_real_90),
    .X90_i(fft_reg_imag_90),
    .x91_r(x91_r),
    .x91_i(x91_i),
    .X91_r(fft_reg_real_91),
    .X91_i(fft_reg_imag_91),
    .x92_r(x92_r),
    .x92_i(x92_i),
    .X92_r(fft_reg_real_92),
    .X92_i(fft_reg_imag_92),
    .x93_r(x93_r),
    .x93_i(x93_i),
    .X93_r(fft_reg_real_93),
    .X93_i(fft_reg_imag_93),
    .x94_r(x94_r),
    .x94_i(x94_i),
    .X94_r(fft_reg_real_94),
    .X94_i(fft_reg_imag_94),
    .x95_r(x95_r),
    .x95_i(x95_i),
    .X95_r(fft_reg_real_95),
    .X95_i(fft_reg_imag_95),
    .x96_r(x96_r),
    .x96_i(x96_i),
    .X96_r(fft_reg_real_96),
    .X96_i(fft_reg_imag_96),
    .x97_r(x97_r),
    .x97_i(x97_i),
    .X97_r(fft_reg_real_97),
    .X97_i(fft_reg_imag_97),
    .x98_r(x98_r),
    .x98_i(x98_i),
    .X98_r(fft_reg_real_98),
    .X98_i(fft_reg_imag_98),
    .x99_r(x99_r),
    .x99_i(x99_i),
    .X99_r(fft_reg_real_99),
    .X99_i(fft_reg_imag_99),
    .x100_r(x100_r),
    .x100_i(x100_i),
    .X100_r(fft_reg_real_100),
    .X100_i(fft_reg_imag_100),
    .x101_r(x101_r),
    .x101_i(x101_i),
    .X101_r(fft_reg_real_101),
    .X101_i(fft_reg_imag_101),
    .x102_r(x102_r),
    .x102_i(x102_i),
    .X102_r(fft_reg_real_102),
    .X102_i(fft_reg_imag_102),
    .x103_r(x103_r),
    .x103_i(x103_i),
    .X103_r(fft_reg_real_103),
    .X103_i(fft_reg_imag_103),
    .x104_r(x104_r),
    .x104_i(x104_i),
    .X104_r(fft_reg_real_104),
    .X104_i(fft_reg_imag_104),
    .x105_r(x105_r),
    .x105_i(x105_i),
    .X105_r(fft_reg_real_105),
    .X105_i(fft_reg_imag_105),
    .x106_r(x106_r),
    .x106_i(x106_i),
    .X106_r(fft_reg_real_106),
    .X106_i(fft_reg_imag_106),
    .x107_r(x107_r),
    .x107_i(x107_i),
    .X107_r(fft_reg_real_107),
    .X107_i(fft_reg_imag_107),
    .x108_r(x108_r),
    .x108_i(x108_i),
    .X108_r(fft_reg_real_108),
    .X108_i(fft_reg_imag_108),
    .x109_r(x109_r),
    .x109_i(x109_i),
    .X109_r(fft_reg_real_109),
    .X109_i(fft_reg_imag_109),
    .x110_r(x110_r),
    .x110_i(x110_i),
    .X110_r(fft_reg_real_110),
    .X110_i(fft_reg_imag_110),
    .x111_r(x111_r),
    .x111_i(x111_i),
    .X111_r(fft_reg_real_111),
    .X111_i(fft_reg_imag_111),
    .x112_r(x112_r),
    .x112_i(x112_i),
    .X112_r(fft_reg_real_112),
    .X112_i(fft_reg_imag_112),
    .x113_r(x113_r),
    .x113_i(x113_i),
    .X113_r(fft_reg_real_113),
    .X113_i(fft_reg_imag_113),
    .x114_r(x114_r),
    .x114_i(x114_i),
    .X114_r(fft_reg_real_114),
    .X114_i(fft_reg_imag_114),
    .x115_r(x115_r),
    .x115_i(x115_i),
    .X115_r(fft_reg_real_115),
    .X115_i(fft_reg_imag_115),
    .x116_r(x116_r),
    .x116_i(x116_i),
    .X116_r(fft_reg_real_116),
    .X116_i(fft_reg_imag_116),
    .x117_r(x117_r),
    .x117_i(x117_i),
    .X117_r(fft_reg_real_117),
    .X117_i(fft_reg_imag_117),
    .x118_r(x118_r),
    .x118_i(x118_i),
    .X118_r(fft_reg_real_118),
    .X118_i(fft_reg_imag_118),
    .x119_r(x119_r),
    .x119_i(x119_i),
    .X119_r(fft_reg_real_119),
    .X119_i(fft_reg_imag_119),
    .x120_r(x120_r),
    .x120_i(x120_i),
    .X120_r(fft_reg_real_120),
    .X120_i(fft_reg_imag_120),
    .x121_r(x121_r),
    .x121_i(x121_i),
    .X121_r(fft_reg_real_121),
    .X121_i(fft_reg_imag_121),
    .x122_r(x122_r),
    .x122_i(x122_i),
    .X122_r(fft_reg_real_122),
    .X122_i(fft_reg_imag_122),
    .x123_r(x123_r),
    .x123_i(x123_i),
    .X123_r(fft_reg_real_123),
    .X123_i(fft_reg_imag_123),
    .x124_r(x124_r),
    .x124_i(x124_i),
    .X124_r(fft_reg_real_124),
    .X124_i(fft_reg_imag_124),
    .x125_r(x125_r),
    .x125_i(x125_i),
    .X125_r(fft_reg_real_125),
    .X125_i(fft_reg_imag_125),
    .x126_r(x126_r),
    .x126_i(x126_i),
    .X126_r(fft_reg_real_126),
    .X126_i(fft_reg_imag_126),
    .x127_r(x127_r),
    .x127_i(x127_i),
    .X127_r(fft_reg_real_127),
    .X127_i(fft_reg_imag_127),
    .correct(fft_correct)


);












Reg_File #(.BITS(BITS)) FFT_REAL_REGISTER_FILE
(
    .WrEn(reg_en_fft),
    .clk(clk),
    .rst(rst),
    .WrData_0(fft_reg_real_0),
    .RdData_0(reg_mux_real_0),
    .WrData_1(fft_reg_real_1),
    .RdData_1(reg_mux_real_1),
    .WrData_2(fft_reg_real_2),
    .RdData_2(reg_mux_real_2),
    .WrData_3(fft_reg_real_3),
    .RdData_3(reg_mux_real_3),
    .WrData_4(fft_reg_real_4),
    .RdData_4(reg_mux_real_4),
    .WrData_5(fft_reg_real_5),
    .RdData_5(reg_mux_real_5),
    .WrData_6(fft_reg_real_6),
    .RdData_6(reg_mux_real_6),
    .WrData_7(fft_reg_real_7),
    .RdData_7(reg_mux_real_7),
    .WrData_8(fft_reg_real_8),
    .RdData_8(reg_mux_real_8),
    .WrData_9(fft_reg_real_9),
    .RdData_9(reg_mux_real_9),
    .WrData_10(fft_reg_real_10),
    .RdData_10(reg_mux_real_10),
    .WrData_11(fft_reg_real_11),
    .RdData_11(reg_mux_real_11),
    .WrData_12(fft_reg_real_12),
    .RdData_12(reg_mux_real_12),
    .WrData_13(fft_reg_real_13),
    .RdData_13(reg_mux_real_13),
    .WrData_14(fft_reg_real_14),
    .RdData_14(reg_mux_real_14),
    .WrData_15(fft_reg_real_15),
    .RdData_15(reg_mux_real_15),
    .WrData_16(fft_reg_real_16),
    .RdData_16(reg_mux_real_16),
    .WrData_17(fft_reg_real_17),
    .RdData_17(reg_mux_real_17),
    .WrData_18(fft_reg_real_18),
    .RdData_18(reg_mux_real_18),
    .WrData_19(fft_reg_real_19),
    .RdData_19(reg_mux_real_19),
    .WrData_20(fft_reg_real_20),
    .RdData_20(reg_mux_real_20),
    .WrData_21(fft_reg_real_21),
    .RdData_21(reg_mux_real_21),
    .WrData_22(fft_reg_real_22),
    .RdData_22(reg_mux_real_22),
    .WrData_23(fft_reg_real_23),
    .RdData_23(reg_mux_real_23),
    .WrData_24(fft_reg_real_24),
    .RdData_24(reg_mux_real_24),
    .WrData_25(fft_reg_real_25),
    .RdData_25(reg_mux_real_25),
    .WrData_26(fft_reg_real_26),
    .RdData_26(reg_mux_real_26),
    .WrData_27(fft_reg_real_27),
    .RdData_27(reg_mux_real_27),
    .WrData_28(fft_reg_real_28),
    .RdData_28(reg_mux_real_28),
    .WrData_29(fft_reg_real_29),
    .RdData_29(reg_mux_real_29),
    .WrData_30(fft_reg_real_30),
    .RdData_30(reg_mux_real_30),
    .WrData_31(fft_reg_real_31),
    .RdData_31(reg_mux_real_31),
    .WrData_32(fft_reg_real_32),
    .RdData_32(reg_mux_real_32),
    .WrData_33(fft_reg_real_33),
    .RdData_33(reg_mux_real_33),
    .WrData_34(fft_reg_real_34),
    .RdData_34(reg_mux_real_34),
    .WrData_35(fft_reg_real_35),
    .RdData_35(reg_mux_real_35),
    .WrData_36(fft_reg_real_36),
    .RdData_36(reg_mux_real_36),
    .WrData_37(fft_reg_real_37),
    .RdData_37(reg_mux_real_37),
    .WrData_38(fft_reg_real_38),
    .RdData_38(reg_mux_real_38),
    .WrData_39(fft_reg_real_39),
    .RdData_39(reg_mux_real_39),
    .WrData_40(fft_reg_real_40),
    .RdData_40(reg_mux_real_40),
    .WrData_41(fft_reg_real_41),
    .RdData_41(reg_mux_real_41),
    .WrData_42(fft_reg_real_42),
    .RdData_42(reg_mux_real_42),
    .WrData_43(fft_reg_real_43),
    .RdData_43(reg_mux_real_43),
    .WrData_44(fft_reg_real_44),
    .RdData_44(reg_mux_real_44),
    .WrData_45(fft_reg_real_45),
    .RdData_45(reg_mux_real_45),
    .WrData_46(fft_reg_real_46),
    .RdData_46(reg_mux_real_46),
    .WrData_47(fft_reg_real_47),
    .RdData_47(reg_mux_real_47),
    .WrData_48(fft_reg_real_48),
    .RdData_48(reg_mux_real_48),
    .WrData_49(fft_reg_real_49),
    .RdData_49(reg_mux_real_49),
    .WrData_50(fft_reg_real_50),
    .RdData_50(reg_mux_real_50),
    .WrData_51(fft_reg_real_51),
    .RdData_51(reg_mux_real_51),
    .WrData_52(fft_reg_real_52),
    .RdData_52(reg_mux_real_52),
    .WrData_53(fft_reg_real_53),
    .RdData_53(reg_mux_real_53),
    .WrData_54(fft_reg_real_54),
    .RdData_54(reg_mux_real_54),
    .WrData_55(fft_reg_real_55),
    .RdData_55(reg_mux_real_55),
    .WrData_56(fft_reg_real_56),
    .RdData_56(reg_mux_real_56),
    .WrData_57(fft_reg_real_57),
    .RdData_57(reg_mux_real_57),
    .WrData_58(fft_reg_real_58),
    .RdData_58(reg_mux_real_58),
    .WrData_59(fft_reg_real_59),
    .RdData_59(reg_mux_real_59),
    .WrData_60(fft_reg_real_60),
    .RdData_60(reg_mux_real_60),
    .WrData_61(fft_reg_real_61),
    .RdData_61(reg_mux_real_61),
    .WrData_62(fft_reg_real_62),
    .RdData_62(reg_mux_real_62),
    .WrData_63(fft_reg_real_63),
    .RdData_63(reg_mux_real_63),
    .WrData_64(fft_reg_real_64),
    .RdData_64(reg_mux_real_64),
    .WrData_65(fft_reg_real_65),
    .RdData_65(reg_mux_real_65),
    .WrData_66(fft_reg_real_66),
    .RdData_66(reg_mux_real_66),
    .WrData_67(fft_reg_real_67),
    .RdData_67(reg_mux_real_67),
    .WrData_68(fft_reg_real_68),
    .RdData_68(reg_mux_real_68),
    .WrData_69(fft_reg_real_69),
    .RdData_69(reg_mux_real_69),
    .WrData_70(fft_reg_real_70),
    .RdData_70(reg_mux_real_70),
    .WrData_71(fft_reg_real_71),
    .RdData_71(reg_mux_real_71),
    .WrData_72(fft_reg_real_72),
    .RdData_72(reg_mux_real_72),
    .WrData_73(fft_reg_real_73),
    .RdData_73(reg_mux_real_73),
    .WrData_74(fft_reg_real_74),
    .RdData_74(reg_mux_real_74),
    .WrData_75(fft_reg_real_75),
    .RdData_75(reg_mux_real_75),
    .WrData_76(fft_reg_real_76),
    .RdData_76(reg_mux_real_76),
    .WrData_77(fft_reg_real_77),
    .RdData_77(reg_mux_real_77),
    .WrData_78(fft_reg_real_78),
    .RdData_78(reg_mux_real_78),
    .WrData_79(fft_reg_real_79),
    .RdData_79(reg_mux_real_79),
    .WrData_80(fft_reg_real_80),
    .RdData_80(reg_mux_real_80),
    .WrData_81(fft_reg_real_81),
    .RdData_81(reg_mux_real_81),
    .WrData_82(fft_reg_real_82),
    .RdData_82(reg_mux_real_82),
    .WrData_83(fft_reg_real_83),
    .RdData_83(reg_mux_real_83),
    .WrData_84(fft_reg_real_84),
    .RdData_84(reg_mux_real_84),
    .WrData_85(fft_reg_real_85),
    .RdData_85(reg_mux_real_85),
    .WrData_86(fft_reg_real_86),
    .RdData_86(reg_mux_real_86),
    .WrData_87(fft_reg_real_87),
    .RdData_87(reg_mux_real_87),
    .WrData_88(fft_reg_real_88),
    .RdData_88(reg_mux_real_88),
    .WrData_89(fft_reg_real_89),
    .RdData_89(reg_mux_real_89),
    .WrData_90(fft_reg_real_90),
    .RdData_90(reg_mux_real_90),
    .WrData_91(fft_reg_real_91),
    .RdData_91(reg_mux_real_91),
    .WrData_92(fft_reg_real_92),
    .RdData_92(reg_mux_real_92),
    .WrData_93(fft_reg_real_93),
    .RdData_93(reg_mux_real_93),
    .WrData_94(fft_reg_real_94),
    .RdData_94(reg_mux_real_94),
    .WrData_95(fft_reg_real_95),
    .RdData_95(reg_mux_real_95),
    .WrData_96(fft_reg_real_96),
    .RdData_96(reg_mux_real_96),
    .WrData_97(fft_reg_real_97),
    .RdData_97(reg_mux_real_97),
    .WrData_98(fft_reg_real_98),
    .RdData_98(reg_mux_real_98),
    .WrData_99(fft_reg_real_99),
    .RdData_99(reg_mux_real_99),
    .WrData_100(fft_reg_real_100),
    .RdData_100(reg_mux_real_100),
    .WrData_101(fft_reg_real_101),
    .RdData_101(reg_mux_real_101),
    .WrData_102(fft_reg_real_102),
    .RdData_102(reg_mux_real_102),
    .WrData_103(fft_reg_real_103),
    .RdData_103(reg_mux_real_103),
    .WrData_104(fft_reg_real_104),
    .RdData_104(reg_mux_real_104),
    .WrData_105(fft_reg_real_105),
    .RdData_105(reg_mux_real_105),
    .WrData_106(fft_reg_real_106),
    .RdData_106(reg_mux_real_106),
    .WrData_107(fft_reg_real_107),
    .RdData_107(reg_mux_real_107),
    .WrData_108(fft_reg_real_108),
    .RdData_108(reg_mux_real_108),
    .WrData_109(fft_reg_real_109),
    .RdData_109(reg_mux_real_109),
    .WrData_110(fft_reg_real_110),
    .RdData_110(reg_mux_real_110),
    .WrData_111(fft_reg_real_111),
    .RdData_111(reg_mux_real_111),
    .WrData_112(fft_reg_real_112),
    .RdData_112(reg_mux_real_112),
    .WrData_113(fft_reg_real_113),
    .RdData_113(reg_mux_real_113),
    .WrData_114(fft_reg_real_114),
    .RdData_114(reg_mux_real_114),
    .WrData_115(fft_reg_real_115),
    .RdData_115(reg_mux_real_115),
    .WrData_116(fft_reg_real_116),
    .RdData_116(reg_mux_real_116),
    .WrData_117(fft_reg_real_117),
    .RdData_117(reg_mux_real_117),
    .WrData_118(fft_reg_real_118),
    .RdData_118(reg_mux_real_118),
    .WrData_119(fft_reg_real_119),
    .RdData_119(reg_mux_real_119),
    .WrData_120(fft_reg_real_120),
    .RdData_120(reg_mux_real_120),
    .WrData_121(fft_reg_real_121),
    .RdData_121(reg_mux_real_121),
    .WrData_122(fft_reg_real_122),
    .RdData_122(reg_mux_real_122),
    .WrData_123(fft_reg_real_123),
    .RdData_123(reg_mux_real_123),
    .WrData_124(fft_reg_real_124),
    .RdData_124(reg_mux_real_124),
    .WrData_125(fft_reg_real_125),
    .RdData_125(reg_mux_real_125),
    .WrData_126(fft_reg_real_126),
    .RdData_126(reg_mux_real_126),
    .WrData_127(fft_reg_real_127),
    .RdData_127(reg_mux_real_127)

);




Reg_File #(.BITS(BITS)) FFT_IMAG_REGISTER_FILE
(
    .WrEn(reg_en_fft),
    .clk(clk),
    .rst(rst),
    .WrData_0(fft_reg_imag_0),
    .RdData_0(reg_mux_imag_0),
    .WrData_1(fft_reg_imag_1),
    .RdData_1(reg_mux_imag_1),
    .WrData_2(fft_reg_imag_2),
    .RdData_2(reg_mux_imag_2),
    .WrData_3(fft_reg_imag_3),
    .RdData_3(reg_mux_imag_3),
    .WrData_4(fft_reg_imag_4),
    .RdData_4(reg_mux_imag_4),
    .WrData_5(fft_reg_imag_5),
    .RdData_5(reg_mux_imag_5),
    .WrData_6(fft_reg_imag_6),
    .RdData_6(reg_mux_imag_6),
    .WrData_7(fft_reg_imag_7),
    .RdData_7(reg_mux_imag_7),
    .WrData_8(fft_reg_imag_8),
    .RdData_8(reg_mux_imag_8),
    .WrData_9(fft_reg_imag_9),
    .RdData_9(reg_mux_imag_9),
    .WrData_10(fft_reg_imag_10),
    .RdData_10(reg_mux_imag_10),
    .WrData_11(fft_reg_imag_11),
    .RdData_11(reg_mux_imag_11),
    .WrData_12(fft_reg_imag_12),
    .RdData_12(reg_mux_imag_12),
    .WrData_13(fft_reg_imag_13),
    .RdData_13(reg_mux_imag_13),
    .WrData_14(fft_reg_imag_14),
    .RdData_14(reg_mux_imag_14),
    .WrData_15(fft_reg_imag_15),
    .RdData_15(reg_mux_imag_15),
    .WrData_16(fft_reg_imag_16),
    .RdData_16(reg_mux_imag_16),
    .WrData_17(fft_reg_imag_17),
    .RdData_17(reg_mux_imag_17),
    .WrData_18(fft_reg_imag_18),
    .RdData_18(reg_mux_imag_18),
    .WrData_19(fft_reg_imag_19),
    .RdData_19(reg_mux_imag_19),
    .WrData_20(fft_reg_imag_20),
    .RdData_20(reg_mux_imag_20),
    .WrData_21(fft_reg_imag_21),
    .RdData_21(reg_mux_imag_21),
    .WrData_22(fft_reg_imag_22),
    .RdData_22(reg_mux_imag_22),
    .WrData_23(fft_reg_imag_23),
    .RdData_23(reg_mux_imag_23),
    .WrData_24(fft_reg_imag_24),
    .RdData_24(reg_mux_imag_24),
    .WrData_25(fft_reg_imag_25),
    .RdData_25(reg_mux_imag_25),
    .WrData_26(fft_reg_imag_26),
    .RdData_26(reg_mux_imag_26),
    .WrData_27(fft_reg_imag_27),
    .RdData_27(reg_mux_imag_27),
    .WrData_28(fft_reg_imag_28),
    .RdData_28(reg_mux_imag_28),
    .WrData_29(fft_reg_imag_29),
    .RdData_29(reg_mux_imag_29),
    .WrData_30(fft_reg_imag_30),
    .RdData_30(reg_mux_imag_30),
    .WrData_31(fft_reg_imag_31),
    .RdData_31(reg_mux_imag_31),
    .WrData_32(fft_reg_imag_32),
    .RdData_32(reg_mux_imag_32),
    .WrData_33(fft_reg_imag_33),
    .RdData_33(reg_mux_imag_33),
    .WrData_34(fft_reg_imag_34),
    .RdData_34(reg_mux_imag_34),
    .WrData_35(fft_reg_imag_35),
    .RdData_35(reg_mux_imag_35),
    .WrData_36(fft_reg_imag_36),
    .RdData_36(reg_mux_imag_36),
    .WrData_37(fft_reg_imag_37),
    .RdData_37(reg_mux_imag_37),
    .WrData_38(fft_reg_imag_38),
    .RdData_38(reg_mux_imag_38),
    .WrData_39(fft_reg_imag_39),
    .RdData_39(reg_mux_imag_39),
    .WrData_40(fft_reg_imag_40),
    .RdData_40(reg_mux_imag_40),
    .WrData_41(fft_reg_imag_41),
    .RdData_41(reg_mux_imag_41),
    .WrData_42(fft_reg_imag_42),
    .RdData_42(reg_mux_imag_42),
    .WrData_43(fft_reg_imag_43),
    .RdData_43(reg_mux_imag_43),
    .WrData_44(fft_reg_imag_44),
    .RdData_44(reg_mux_imag_44),
    .WrData_45(fft_reg_imag_45),
    .RdData_45(reg_mux_imag_45),
    .WrData_46(fft_reg_imag_46),
    .RdData_46(reg_mux_imag_46),
    .WrData_47(fft_reg_imag_47),
    .RdData_47(reg_mux_imag_47),
    .WrData_48(fft_reg_imag_48),
    .RdData_48(reg_mux_imag_48),
    .WrData_49(fft_reg_imag_49),
    .RdData_49(reg_mux_imag_49),
    .WrData_50(fft_reg_imag_50),
    .RdData_50(reg_mux_imag_50),
    .WrData_51(fft_reg_imag_51),
    .RdData_51(reg_mux_imag_51),
    .WrData_52(fft_reg_imag_52),
    .RdData_52(reg_mux_imag_52),
    .WrData_53(fft_reg_imag_53),
    .RdData_53(reg_mux_imag_53),
    .WrData_54(fft_reg_imag_54),
    .RdData_54(reg_mux_imag_54),
    .WrData_55(fft_reg_imag_55),
    .RdData_55(reg_mux_imag_55),
    .WrData_56(fft_reg_imag_56),
    .RdData_56(reg_mux_imag_56),
    .WrData_57(fft_reg_imag_57),
    .RdData_57(reg_mux_imag_57),
    .WrData_58(fft_reg_imag_58),
    .RdData_58(reg_mux_imag_58),
    .WrData_59(fft_reg_imag_59),
    .RdData_59(reg_mux_imag_59),
    .WrData_60(fft_reg_imag_60),
    .RdData_60(reg_mux_imag_60),
    .WrData_61(fft_reg_imag_61),
    .RdData_61(reg_mux_imag_61),
    .WrData_62(fft_reg_imag_62),
    .RdData_62(reg_mux_imag_62),
    .WrData_63(fft_reg_imag_63),
    .RdData_63(reg_mux_imag_63),
    .WrData_64(fft_reg_imag_64),
    .RdData_64(reg_mux_imag_64),
    .WrData_65(fft_reg_imag_65),
    .RdData_65(reg_mux_imag_65),
    .WrData_66(fft_reg_imag_66),
    .RdData_66(reg_mux_imag_66),
    .WrData_67(fft_reg_imag_67),
    .RdData_67(reg_mux_imag_67),
    .WrData_68(fft_reg_imag_68),
    .RdData_68(reg_mux_imag_68),
    .WrData_69(fft_reg_imag_69),
    .RdData_69(reg_mux_imag_69),
    .WrData_70(fft_reg_imag_70),
    .RdData_70(reg_mux_imag_70),
    .WrData_71(fft_reg_imag_71),
    .RdData_71(reg_mux_imag_71),
    .WrData_72(fft_reg_imag_72),
    .RdData_72(reg_mux_imag_72),
    .WrData_73(fft_reg_imag_73),
    .RdData_73(reg_mux_imag_73),
    .WrData_74(fft_reg_imag_74),
    .RdData_74(reg_mux_imag_74),
    .WrData_75(fft_reg_imag_75),
    .RdData_75(reg_mux_imag_75),
    .WrData_76(fft_reg_imag_76),
    .RdData_76(reg_mux_imag_76),
    .WrData_77(fft_reg_imag_77),
    .RdData_77(reg_mux_imag_77),
    .WrData_78(fft_reg_imag_78),
    .RdData_78(reg_mux_imag_78),
    .WrData_79(fft_reg_imag_79),
    .RdData_79(reg_mux_imag_79),
    .WrData_80(fft_reg_imag_80),
    .RdData_80(reg_mux_imag_80),
    .WrData_81(fft_reg_imag_81),
    .RdData_81(reg_mux_imag_81),
    .WrData_82(fft_reg_imag_82),
    .RdData_82(reg_mux_imag_82),
    .WrData_83(fft_reg_imag_83),
    .RdData_83(reg_mux_imag_83),
    .WrData_84(fft_reg_imag_84),
    .RdData_84(reg_mux_imag_84),
    .WrData_85(fft_reg_imag_85),
    .RdData_85(reg_mux_imag_85),
    .WrData_86(fft_reg_imag_86),
    .RdData_86(reg_mux_imag_86),
    .WrData_87(fft_reg_imag_87),
    .RdData_87(reg_mux_imag_87),
    .WrData_88(fft_reg_imag_88),
    .RdData_88(reg_mux_imag_88),
    .WrData_89(fft_reg_imag_89),
    .RdData_89(reg_mux_imag_89),
    .WrData_90(fft_reg_imag_90),
    .RdData_90(reg_mux_imag_90),
    .WrData_91(fft_reg_imag_91),
    .RdData_91(reg_mux_imag_91),
    .WrData_92(fft_reg_imag_92),
    .RdData_92(reg_mux_imag_92),
    .WrData_93(fft_reg_imag_93),
    .RdData_93(reg_mux_imag_93),
    .WrData_94(fft_reg_imag_94),
    .RdData_94(reg_mux_imag_94),
    .WrData_95(fft_reg_imag_95),
    .RdData_95(reg_mux_imag_95),
    .WrData_96(fft_reg_imag_96),
    .RdData_96(reg_mux_imag_96),
    .WrData_97(fft_reg_imag_97),
    .RdData_97(reg_mux_imag_97),
    .WrData_98(fft_reg_imag_98),
    .RdData_98(reg_mux_imag_98),
    .WrData_99(fft_reg_imag_99),
    .RdData_99(reg_mux_imag_99),
    .WrData_100(fft_reg_imag_100),
    .RdData_100(reg_mux_imag_100),
    .WrData_101(fft_reg_imag_101),
    .RdData_101(reg_mux_imag_101),
    .WrData_102(fft_reg_imag_102),
    .RdData_102(reg_mux_imag_102),
    .WrData_103(fft_reg_imag_103),
    .RdData_103(reg_mux_imag_103),
    .WrData_104(fft_reg_imag_104),
    .RdData_104(reg_mux_imag_104),
    .WrData_105(fft_reg_imag_105),
    .RdData_105(reg_mux_imag_105),
    .WrData_106(fft_reg_imag_106),
    .RdData_106(reg_mux_imag_106),
    .WrData_107(fft_reg_imag_107),
    .RdData_107(reg_mux_imag_107),
    .WrData_108(fft_reg_imag_108),
    .RdData_108(reg_mux_imag_108),
    .WrData_109(fft_reg_imag_109),
    .RdData_109(reg_mux_imag_109),
    .WrData_110(fft_reg_imag_110),
    .RdData_110(reg_mux_imag_110),
    .WrData_111(fft_reg_imag_111),
    .RdData_111(reg_mux_imag_111),
    .WrData_112(fft_reg_imag_112),
    .RdData_112(reg_mux_imag_112),
    .WrData_113(fft_reg_imag_113),
    .RdData_113(reg_mux_imag_113),
    .WrData_114(fft_reg_imag_114),
    .RdData_114(reg_mux_imag_114),
    .WrData_115(fft_reg_imag_115),
    .RdData_115(reg_mux_imag_115),
    .WrData_116(fft_reg_imag_116),
    .RdData_116(reg_mux_imag_116),
    .WrData_117(fft_reg_imag_117),
    .RdData_117(reg_mux_imag_117),
    .WrData_118(fft_reg_imag_118),
    .RdData_118(reg_mux_imag_118),
    .WrData_119(fft_reg_imag_119),
    .RdData_119(reg_mux_imag_119),
    .WrData_120(fft_reg_imag_120),
    .RdData_120(reg_mux_imag_120),
    .WrData_121(fft_reg_imag_121),
    .RdData_121(reg_mux_imag_121),
    .WrData_122(fft_reg_imag_122),
    .RdData_122(reg_mux_imag_122),
    .WrData_123(fft_reg_imag_123),
    .RdData_123(reg_mux_imag_123),
    .WrData_124(fft_reg_imag_124),
    .RdData_124(reg_mux_imag_124),
    .WrData_125(fft_reg_imag_125),
    .RdData_125(reg_mux_imag_125),
    .WrData_126(fft_reg_imag_126),
    .RdData_126(reg_mux_imag_126),
    .WrData_127(fft_reg_imag_127),
    .RdData_127(reg_mux_imag_127)

);


MUX_128_1 #(.BITS(BITS)) REAL_MUX_128x1
(
.sel_input(fft_sel_mux_128x1),
.mux_input_0(reg_mux_real_0),
.mux_input_1(reg_mux_real_1),
.mux_input_2(reg_mux_real_2),
.mux_input_3(reg_mux_real_3),
.mux_input_4(reg_mux_real_4),
.mux_input_5(reg_mux_real_5),
.mux_input_6(reg_mux_real_6),
.mux_input_7(reg_mux_real_7),
.mux_input_8(reg_mux_real_8),
.mux_input_9(reg_mux_real_9),
.mux_input_10(reg_mux_real_10),
.mux_input_11(reg_mux_real_11),
.mux_input_12(reg_mux_real_12),
.mux_input_13(reg_mux_real_13),
.mux_input_14(reg_mux_real_14),
.mux_input_15(reg_mux_real_15),
.mux_input_16(reg_mux_real_16),
.mux_input_17(reg_mux_real_17),
.mux_input_18(reg_mux_real_18),
.mux_input_19(reg_mux_real_19),
.mux_input_20(reg_mux_real_20),
.mux_input_21(reg_mux_real_21),
.mux_input_22(reg_mux_real_22),
.mux_input_23(reg_mux_real_23),
.mux_input_24(reg_mux_real_24),
.mux_input_25(reg_mux_real_25),
.mux_input_26(reg_mux_real_26),
.mux_input_27(reg_mux_real_27),
.mux_input_28(reg_mux_real_28),
.mux_input_29(reg_mux_real_29),
.mux_input_30(reg_mux_real_30),
.mux_input_31(reg_mux_real_31),
.mux_input_32(reg_mux_real_32),
.mux_input_33(reg_mux_real_33),
.mux_input_34(reg_mux_real_34),
.mux_input_35(reg_mux_real_35),
.mux_input_36(reg_mux_real_36),
.mux_input_37(reg_mux_real_37),
.mux_input_38(reg_mux_real_38),
.mux_input_39(reg_mux_real_39),
.mux_input_40(reg_mux_real_40),
.mux_input_41(reg_mux_real_41),
.mux_input_42(reg_mux_real_42),
.mux_input_43(reg_mux_real_43),
.mux_input_44(reg_mux_real_44),
.mux_input_45(reg_mux_real_45),
.mux_input_46(reg_mux_real_46),
.mux_input_47(reg_mux_real_47),
.mux_input_48(reg_mux_real_48),
.mux_input_49(reg_mux_real_49),
.mux_input_50(reg_mux_real_50),
.mux_input_51(reg_mux_real_51),
.mux_input_52(reg_mux_real_52),
.mux_input_53(reg_mux_real_53),
.mux_input_54(reg_mux_real_54),
.mux_input_55(reg_mux_real_55),
.mux_input_56(reg_mux_real_56),
.mux_input_57(reg_mux_real_57),
.mux_input_58(reg_mux_real_58),
.mux_input_59(reg_mux_real_59),
.mux_input_60(reg_mux_real_60),
.mux_input_61(reg_mux_real_61),
.mux_input_62(reg_mux_real_62),
.mux_input_63(reg_mux_real_63),
.mux_input_64(reg_mux_real_64),
.mux_input_65(reg_mux_real_65),
.mux_input_66(reg_mux_real_66),
.mux_input_67(reg_mux_real_67),
.mux_input_68(reg_mux_real_68),
.mux_input_69(reg_mux_real_69),
.mux_input_70(reg_mux_real_70),
.mux_input_71(reg_mux_real_71),
.mux_input_72(reg_mux_real_72),
.mux_input_73(reg_mux_real_73),
.mux_input_74(reg_mux_real_74),
.mux_input_75(reg_mux_real_75),
.mux_input_76(reg_mux_real_76),
.mux_input_77(reg_mux_real_77),
.mux_input_78(reg_mux_real_78),
.mux_input_79(reg_mux_real_79),
.mux_input_80(reg_mux_real_80),
.mux_input_81(reg_mux_real_81),
.mux_input_82(reg_mux_real_82),
.mux_input_83(reg_mux_real_83),
.mux_input_84(reg_mux_real_84),
.mux_input_85(reg_mux_real_85),
.mux_input_86(reg_mux_real_86),
.mux_input_87(reg_mux_real_87),
.mux_input_88(reg_mux_real_88),
.mux_input_89(reg_mux_real_89),
.mux_input_90(reg_mux_real_90),
.mux_input_91(reg_mux_real_91),
.mux_input_92(reg_mux_real_92),
.mux_input_93(reg_mux_real_93),
.mux_input_94(reg_mux_real_94),
.mux_input_95(reg_mux_real_95),
.mux_input_96(reg_mux_real_96),
.mux_input_97(reg_mux_real_97),
.mux_input_98(reg_mux_real_98),
.mux_input_99(reg_mux_real_99),
.mux_input_100(reg_mux_real_100),
.mux_input_101(reg_mux_real_101),
.mux_input_102(reg_mux_real_102),
.mux_input_103(reg_mux_real_103),
.mux_input_104(reg_mux_real_104),
.mux_input_105(reg_mux_real_105),
.mux_input_106(reg_mux_real_106),
.mux_input_107(reg_mux_real_107),
.mux_input_108(reg_mux_real_108),
.mux_input_109(reg_mux_real_109),
.mux_input_110(reg_mux_real_110),
.mux_input_111(reg_mux_real_111),
.mux_input_112(reg_mux_real_112),
.mux_input_113(reg_mux_real_113),
.mux_input_114(reg_mux_real_114),
.mux_input_115(reg_mux_real_115),
.mux_input_116(reg_mux_real_116),
.mux_input_117(reg_mux_real_117),
.mux_input_118(reg_mux_real_118),
.mux_input_119(reg_mux_real_119),
.mux_input_120(reg_mux_real_120),
.mux_input_121(reg_mux_real_121),
.mux_input_122(reg_mux_real_122),
.mux_input_123(reg_mux_real_123),
.mux_input_124(reg_mux_real_124),
.mux_input_125(reg_mux_real_125),
.mux_input_126(reg_mux_real_126),
.mux_input_127(reg_mux_real_127),
.mux_output(mul_fft_real)
);




MUX_128_1 #(.BITS(BITS)) IMAG_MUX_128x1
(

.sel_input(fft_sel_mux_128x1),
.mux_input_0(reg_mux_imag_0),
.mux_input_1(reg_mux_imag_1),
.mux_input_2(reg_mux_imag_2),
.mux_input_3(reg_mux_imag_3),
.mux_input_4(reg_mux_imag_4),
.mux_input_5(reg_mux_imag_5),
.mux_input_6(reg_mux_imag_6),
.mux_input_7(reg_mux_imag_7),
.mux_input_8(reg_mux_imag_8),
.mux_input_9(reg_mux_imag_9),
.mux_input_10(reg_mux_imag_10),
.mux_input_11(reg_mux_imag_11),
.mux_input_12(reg_mux_imag_12),
.mux_input_13(reg_mux_imag_13),
.mux_input_14(reg_mux_imag_14),
.mux_input_15(reg_mux_imag_15),
.mux_input_16(reg_mux_imag_16),
.mux_input_17(reg_mux_imag_17),
.mux_input_18(reg_mux_imag_18),
.mux_input_19(reg_mux_imag_19),
.mux_input_20(reg_mux_imag_20),
.mux_input_21(reg_mux_imag_21),
.mux_input_22(reg_mux_imag_22),
.mux_input_23(reg_mux_imag_23),
.mux_input_24(reg_mux_imag_24),
.mux_input_25(reg_mux_imag_25),
.mux_input_26(reg_mux_imag_26),
.mux_input_27(reg_mux_imag_27),
.mux_input_28(reg_mux_imag_28),
.mux_input_29(reg_mux_imag_29),
.mux_input_30(reg_mux_imag_30),
.mux_input_31(reg_mux_imag_31),
.mux_input_32(reg_mux_imag_32),
.mux_input_33(reg_mux_imag_33),
.mux_input_34(reg_mux_imag_34),
.mux_input_35(reg_mux_imag_35),
.mux_input_36(reg_mux_imag_36),
.mux_input_37(reg_mux_imag_37),
.mux_input_38(reg_mux_imag_38),
.mux_input_39(reg_mux_imag_39),
.mux_input_40(reg_mux_imag_40),
.mux_input_41(reg_mux_imag_41),
.mux_input_42(reg_mux_imag_42),
.mux_input_43(reg_mux_imag_43),
.mux_input_44(reg_mux_imag_44),
.mux_input_45(reg_mux_imag_45),
.mux_input_46(reg_mux_imag_46),
.mux_input_47(reg_mux_imag_47),
.mux_input_48(reg_mux_imag_48),
.mux_input_49(reg_mux_imag_49),
.mux_input_50(reg_mux_imag_50),
.mux_input_51(reg_mux_imag_51),
.mux_input_52(reg_mux_imag_52),
.mux_input_53(reg_mux_imag_53),
.mux_input_54(reg_mux_imag_54),
.mux_input_55(reg_mux_imag_55),
.mux_input_56(reg_mux_imag_56),
.mux_input_57(reg_mux_imag_57),
.mux_input_58(reg_mux_imag_58),
.mux_input_59(reg_mux_imag_59),
.mux_input_60(reg_mux_imag_60),
.mux_input_61(reg_mux_imag_61),
.mux_input_62(reg_mux_imag_62),
.mux_input_63(reg_mux_imag_63),
.mux_input_64(reg_mux_imag_64),
.mux_input_65(reg_mux_imag_65),
.mux_input_66(reg_mux_imag_66),
.mux_input_67(reg_mux_imag_67),
.mux_input_68(reg_mux_imag_68),
.mux_input_69(reg_mux_imag_69),
.mux_input_70(reg_mux_imag_70),
.mux_input_71(reg_mux_imag_71),
.mux_input_72(reg_mux_imag_72),
.mux_input_73(reg_mux_imag_73),
.mux_input_74(reg_mux_imag_74),
.mux_input_75(reg_mux_imag_75),
.mux_input_76(reg_mux_imag_76),
.mux_input_77(reg_mux_imag_77),
.mux_input_78(reg_mux_imag_78),
.mux_input_79(reg_mux_imag_79),
.mux_input_80(reg_mux_imag_80),
.mux_input_81(reg_mux_imag_81),
.mux_input_82(reg_mux_imag_82),
.mux_input_83(reg_mux_imag_83),
.mux_input_84(reg_mux_imag_84),
.mux_input_85(reg_mux_imag_85),
.mux_input_86(reg_mux_imag_86),
.mux_input_87(reg_mux_imag_87),
.mux_input_88(reg_mux_imag_88),
.mux_input_89(reg_mux_imag_89),
.mux_input_90(reg_mux_imag_90),
.mux_input_91(reg_mux_imag_91),
.mux_input_92(reg_mux_imag_92),
.mux_input_93(reg_mux_imag_93),
.mux_input_94(reg_mux_imag_94),
.mux_input_95(reg_mux_imag_95),
.mux_input_96(reg_mux_imag_96),
.mux_input_97(reg_mux_imag_97),
.mux_input_98(reg_mux_imag_98),
.mux_input_99(reg_mux_imag_99),
.mux_input_100(reg_mux_imag_100),
.mux_input_101(reg_mux_imag_101),
.mux_input_102(reg_mux_imag_102),
.mux_input_103(reg_mux_imag_103),
.mux_input_104(reg_mux_imag_104),
.mux_input_105(reg_mux_imag_105),
.mux_input_106(reg_mux_imag_106),
.mux_input_107(reg_mux_imag_107),
.mux_input_108(reg_mux_imag_108),
.mux_input_109(reg_mux_imag_109),
.mux_input_110(reg_mux_imag_110),
.mux_input_111(reg_mux_imag_111),
.mux_input_112(reg_mux_imag_112),
.mux_input_113(reg_mux_imag_113),
.mux_input_114(reg_mux_imag_114),
.mux_input_115(reg_mux_imag_115),
.mux_input_116(reg_mux_imag_116),
.mux_input_117(reg_mux_imag_117),
.mux_input_118(reg_mux_imag_118),
.mux_input_119(reg_mux_imag_119),
.mux_input_120(reg_mux_imag_120),
.mux_input_121(reg_mux_imag_121),
.mux_input_122(reg_mux_imag_122),
.mux_input_123(reg_mux_imag_123),
.mux_input_124(reg_mux_imag_124),
.mux_input_125(reg_mux_imag_125),
.mux_input_126(reg_mux_imag_126),
.mux_input_127(reg_mux_imag_127),


.mux_output(mul_fft_imag)
);

cwt_fft_ROM_real ROM_REAL 
(
.clk(clk),
.addr(wavelet_rom_addr),
.read_data(wavlet_rom_mul_real)
);

cwt_fft_ROM_real ROM_IMAG  
(
.clk(clk),
.addr(wavelet_rom_addr),
.read_data(wavlet_rom_mul_imag)
);

Complex_Multiplier_Top #(.BITS(BITS)) CWT_COMPLEX_MULRIPLIER
(
.rst(rst),
.A_r(mul_fft_real) ,
.A_i(mul_fft_imag) ,
.B_r(wavlet_rom_mul_real) ,
.B_i(wavlet_rom_mul_imag) ,
.out_r(mul_out_real),
.out_i(mul_out_imag)
);



Reg_File #(.BITS(BITS)) IFFT_REAL_REGISTER_FILE
(
    .WrEn(reg_en_ifft),
    .clk(clk),
    .rst(reg_en_ifft_rst),

    .WrData_0(mul_out_real),
    .RdData_0(reg_ifft_real_0),
    .WrData_1(mul_out_real),
    .RdData_1(reg_ifft_real_1),
    .WrData_2(mul_out_real),
    .RdData_2(reg_ifft_real_2),
    .WrData_3(mul_out_real),
    .RdData_3(reg_ifft_real_3),
    .WrData_4(mul_out_real),
    .RdData_4(reg_ifft_real_4),
    .WrData_5(mul_out_real),
    .RdData_5(reg_ifft_real_5),
    .WrData_6(mul_out_real),
    .RdData_6(reg_ifft_real_6),
    .WrData_7(mul_out_real),
    .RdData_7(reg_ifft_real_7),
    .WrData_8(mul_out_real),
    .RdData_8(reg_ifft_real_8),
    .WrData_9(mul_out_real),
    .RdData_9(reg_ifft_real_9),
    .WrData_10(mul_out_real),
    .RdData_10(reg_ifft_real_10),
    .WrData_11(mul_out_real),
    .RdData_11(reg_ifft_real_11),
    .WrData_12(mul_out_real),
    .RdData_12(reg_ifft_real_12),
    .WrData_13(mul_out_real),
    .RdData_13(reg_ifft_real_13),
    .WrData_14(mul_out_real),
    .RdData_14(reg_ifft_real_14),
    .WrData_15(mul_out_real),
    .RdData_15(reg_ifft_real_15),
    .WrData_16(mul_out_real),
    .RdData_16(reg_ifft_real_16),
    .WrData_17(mul_out_real),
    .RdData_17(reg_ifft_real_17),
    .WrData_18(mul_out_real),
    .RdData_18(reg_ifft_real_18),
    .WrData_19(mul_out_real),
    .RdData_19(reg_ifft_real_19),
    .WrData_20(mul_out_real),
    .RdData_20(reg_ifft_real_20),
    .WrData_21(mul_out_real),
    .RdData_21(reg_ifft_real_21),
    .WrData_22(mul_out_real),
    .RdData_22(reg_ifft_real_22),
    .WrData_23(mul_out_real),
    .RdData_23(reg_ifft_real_23),
    .WrData_24(mul_out_real),
    .RdData_24(reg_ifft_real_24),
    .WrData_25(mul_out_real),
    .RdData_25(reg_ifft_real_25),
    .WrData_26(mul_out_real),
    .RdData_26(reg_ifft_real_26),
    .WrData_27(mul_out_real),
    .RdData_27(reg_ifft_real_27),
    .WrData_28(mul_out_real),
    .RdData_28(reg_ifft_real_28),
    .WrData_29(mul_out_real),
    .RdData_29(reg_ifft_real_29),
    .WrData_30(mul_out_real),
    .RdData_30(reg_ifft_real_30),
    .WrData_31(mul_out_real),
    .RdData_31(reg_ifft_real_31),
    .WrData_32(mul_out_real),
    .RdData_32(reg_ifft_real_32),
    .WrData_33(mul_out_real),
    .RdData_33(reg_ifft_real_33),
    .WrData_34(mul_out_real),
    .RdData_34(reg_ifft_real_34),
    .WrData_35(mul_out_real),
    .RdData_35(reg_ifft_real_35),
    .WrData_36(mul_out_real),
    .RdData_36(reg_ifft_real_36),
    .WrData_37(mul_out_real),
    .RdData_37(reg_ifft_real_37),
    .WrData_38(mul_out_real),
    .RdData_38(reg_ifft_real_38),
    .WrData_39(mul_out_real),
    .RdData_39(reg_ifft_real_39),
    .WrData_40(mul_out_real),
    .RdData_40(reg_ifft_real_40),
    .WrData_41(mul_out_real),
    .RdData_41(reg_ifft_real_41),
    .WrData_42(mul_out_real),
    .RdData_42(reg_ifft_real_42),
    .WrData_43(mul_out_real),
    .RdData_43(reg_ifft_real_43),
    .WrData_44(mul_out_real),
    .RdData_44(reg_ifft_real_44),
    .WrData_45(mul_out_real),
    .RdData_45(reg_ifft_real_45),
    .WrData_46(mul_out_real),
    .RdData_46(reg_ifft_real_46),
    .WrData_47(mul_out_real),
    .RdData_47(reg_ifft_real_47),
    .WrData_48(mul_out_real),
    .RdData_48(reg_ifft_real_48),
    .WrData_49(mul_out_real),
    .RdData_49(reg_ifft_real_49),
    .WrData_50(mul_out_real),
    .RdData_50(reg_ifft_real_50),
    .WrData_51(mul_out_real),
    .RdData_51(reg_ifft_real_51),
    .WrData_52(mul_out_real),
    .RdData_52(reg_ifft_real_52),
    .WrData_53(mul_out_real),
    .RdData_53(reg_ifft_real_53),
    .WrData_54(mul_out_real),
    .RdData_54(reg_ifft_real_54),
    .WrData_55(mul_out_real),
    .RdData_55(reg_ifft_real_55),
    .WrData_56(mul_out_real),
    .RdData_56(reg_ifft_real_56),
    .WrData_57(mul_out_real),
    .RdData_57(reg_ifft_real_57),
    .WrData_58(mul_out_real),
    .RdData_58(reg_ifft_real_58),
    .WrData_59(mul_out_real),
    .RdData_59(reg_ifft_real_59),
    .WrData_60(mul_out_real),
    .RdData_60(reg_ifft_real_60),
    .WrData_61(mul_out_real),
    .RdData_61(reg_ifft_real_61),
    .WrData_62(mul_out_real),
    .RdData_62(reg_ifft_real_62),
    .WrData_63(mul_out_real),
    .RdData_63(reg_ifft_real_63),
    .WrData_64(mul_out_real),
    .RdData_64(reg_ifft_real_64),
    .WrData_65(mul_out_real),
    .RdData_65(reg_ifft_real_65),
    .WrData_66(mul_out_real),
    .RdData_66(reg_ifft_real_66),
    .WrData_67(mul_out_real),
    .RdData_67(reg_ifft_real_67),
    .WrData_68(mul_out_real),
    .RdData_68(reg_ifft_real_68),
    .WrData_69(mul_out_real),
    .RdData_69(reg_ifft_real_69),
    .WrData_70(mul_out_real),
    .RdData_70(reg_ifft_real_70),
    .WrData_71(mul_out_real),
    .RdData_71(reg_ifft_real_71),
    .WrData_72(mul_out_real),
    .RdData_72(reg_ifft_real_72),
    .WrData_73(mul_out_real),
    .RdData_73(reg_ifft_real_73),
    .WrData_74(mul_out_real),
    .RdData_74(reg_ifft_real_74),
    .WrData_75(mul_out_real),
    .RdData_75(reg_ifft_real_75),
    .WrData_76(mul_out_real),
    .RdData_76(reg_ifft_real_76),
    .WrData_77(mul_out_real),
    .RdData_77(reg_ifft_real_77),
    .WrData_78(mul_out_real),
    .RdData_78(reg_ifft_real_78),
    .WrData_79(mul_out_real),
    .RdData_79(reg_ifft_real_79),
    .WrData_80(mul_out_real),
    .RdData_80(reg_ifft_real_80),
    .WrData_81(mul_out_real),
    .RdData_81(reg_ifft_real_81),
    .WrData_82(mul_out_real),
    .RdData_82(reg_ifft_real_82),
    .WrData_83(mul_out_real),
    .RdData_83(reg_ifft_real_83),
    .WrData_84(mul_out_real),
    .RdData_84(reg_ifft_real_84),
    .WrData_85(mul_out_real),
    .RdData_85(reg_ifft_real_85),
    .WrData_86(mul_out_real),
    .RdData_86(reg_ifft_real_86),
    .WrData_87(mul_out_real),
    .RdData_87(reg_ifft_real_87),
    .WrData_88(mul_out_real),
    .RdData_88(reg_ifft_real_88),
    .WrData_89(mul_out_real),
    .RdData_89(reg_ifft_real_89),
    .WrData_90(mul_out_real),
    .RdData_90(reg_ifft_real_90),
    .WrData_91(mul_out_real),
    .RdData_91(reg_ifft_real_91),
    .WrData_92(mul_out_real),
    .RdData_92(reg_ifft_real_92),
    .WrData_93(mul_out_real),
    .RdData_93(reg_ifft_real_93),
    .WrData_94(mul_out_real),
    .RdData_94(reg_ifft_real_94),
    .WrData_95(mul_out_real),
    .RdData_95(reg_ifft_real_95),
    .WrData_96(mul_out_real),
    .RdData_96(reg_ifft_real_96),
    .WrData_97(mul_out_real),
    .RdData_97(reg_ifft_real_97),
    .WrData_98(mul_out_real),
    .RdData_98(reg_ifft_real_98),
    .WrData_99(mul_out_real),
    .RdData_99(reg_ifft_real_99),
    .WrData_100(mul_out_real),
    .RdData_100(reg_ifft_real_100),
    .WrData_101(mul_out_real),
    .RdData_101(reg_ifft_real_101),
    .WrData_102(mul_out_real),
    .RdData_102(reg_ifft_real_102),
    .WrData_103(mul_out_real),
    .RdData_103(reg_ifft_real_103),
    .WrData_104(mul_out_real),
    .RdData_104(reg_ifft_real_104),
    .WrData_105(mul_out_real),
    .RdData_105(reg_ifft_real_105),
    .WrData_106(mul_out_real),
    .RdData_106(reg_ifft_real_106),
    .WrData_107(mul_out_real),
    .RdData_107(reg_ifft_real_107),
    .WrData_108(mul_out_real),
    .RdData_108(reg_ifft_real_108),
    .WrData_109(mul_out_real),
    .RdData_109(reg_ifft_real_109),
    .WrData_110(mul_out_real),
    .RdData_110(reg_ifft_real_110),
    .WrData_111(mul_out_real),
    .RdData_111(reg_ifft_real_111),
    .WrData_112(mul_out_real),
    .RdData_112(reg_ifft_real_112),
    .WrData_113(mul_out_real),
    .RdData_113(reg_ifft_real_113),
    .WrData_114(mul_out_real),
    .RdData_114(reg_ifft_real_114),
    .WrData_115(mul_out_real),
    .RdData_115(reg_ifft_real_115),
    .WrData_116(mul_out_real),
    .RdData_116(reg_ifft_real_116),
    .WrData_117(mul_out_real),
    .RdData_117(reg_ifft_real_117),
    .WrData_118(mul_out_real),
    .RdData_118(reg_ifft_real_118),
    .WrData_119(mul_out_real),
    .RdData_119(reg_ifft_real_119),
    .WrData_120(mul_out_real),
    .RdData_120(reg_ifft_real_120),
    .WrData_121(mul_out_real),
    .RdData_121(reg_ifft_real_121),
    .WrData_122(mul_out_real),
    .RdData_122(reg_ifft_real_122),
    .WrData_123(mul_out_real),
    .RdData_123(reg_ifft_real_123),
    .WrData_124(mul_out_real),
    .RdData_124(reg_ifft_real_124),
    .WrData_125(mul_out_real),
    .RdData_125(reg_ifft_real_125),
    .WrData_126(mul_out_real),
    .RdData_126(reg_ifft_real_126),
    .WrData_127(mul_out_real),
    .RdData_127(reg_ifft_real_127)
);




Reg_File #(.BITS(BITS)) IFFT_IMAG_REGISTER_FILE
(
    .WrEn(reg_en_ifft),
    .clk(clk),
    .rst(reg_en_ifft_rst),

    .WrData_0(mul_out_imag),
    .RdData_0(reg_ifft_imag_0),
    .WrData_1(mul_out_imag),
    .RdData_1(reg_ifft_imag_1),
    .WrData_2(mul_out_imag),
    .RdData_2(reg_ifft_imag_2),
    .WrData_3(mul_out_imag),
    .RdData_3(reg_ifft_imag_3),
    .WrData_4(mul_out_imag),
    .RdData_4(reg_ifft_imag_4),
    .WrData_5(mul_out_imag),
    .RdData_5(reg_ifft_imag_5),
    .WrData_6(mul_out_imag),
    .RdData_6(reg_ifft_imag_6),
    .WrData_7(mul_out_imag),
    .RdData_7(reg_ifft_imag_7),
    .WrData_8(mul_out_imag),
    .RdData_8(reg_ifft_imag_8),
    .WrData_9(mul_out_imag),
    .RdData_9(reg_ifft_imag_9),
    .WrData_10(mul_out_imag),
    .RdData_10(reg_ifft_imag_10),
    .WrData_11(mul_out_imag),
    .RdData_11(reg_ifft_imag_11),
    .WrData_12(mul_out_imag),
    .RdData_12(reg_ifft_imag_12),
    .WrData_13(mul_out_imag),
    .RdData_13(reg_ifft_imag_13),
    .WrData_14(mul_out_imag),
    .RdData_14(reg_ifft_imag_14),
    .WrData_15(mul_out_imag),
    .RdData_15(reg_ifft_imag_15),
    .WrData_16(mul_out_imag),
    .RdData_16(reg_ifft_imag_16),
    .WrData_17(mul_out_imag),
    .RdData_17(reg_ifft_imag_17),
    .WrData_18(mul_out_imag),
    .RdData_18(reg_ifft_imag_18),
    .WrData_19(mul_out_imag),
    .RdData_19(reg_ifft_imag_19),
    .WrData_20(mul_out_imag),
    .RdData_20(reg_ifft_imag_20),
    .WrData_21(mul_out_imag),
    .RdData_21(reg_ifft_imag_21),
    .WrData_22(mul_out_imag),
    .RdData_22(reg_ifft_imag_22),
    .WrData_23(mul_out_imag),
    .RdData_23(reg_ifft_imag_23),
    .WrData_24(mul_out_imag),
    .RdData_24(reg_ifft_imag_24),
    .WrData_25(mul_out_imag),
    .RdData_25(reg_ifft_imag_25),
    .WrData_26(mul_out_imag),
    .RdData_26(reg_ifft_imag_26),
    .WrData_27(mul_out_imag),
    .RdData_27(reg_ifft_imag_27),
    .WrData_28(mul_out_imag),
    .RdData_28(reg_ifft_imag_28),
    .WrData_29(mul_out_imag),
    .RdData_29(reg_ifft_imag_29),
    .WrData_30(mul_out_imag),
    .RdData_30(reg_ifft_imag_30),
    .WrData_31(mul_out_imag),
    .RdData_31(reg_ifft_imag_31),
    .WrData_32(mul_out_imag),
    .RdData_32(reg_ifft_imag_32),
    .WrData_33(mul_out_imag),
    .RdData_33(reg_ifft_imag_33),
    .WrData_34(mul_out_imag),
    .RdData_34(reg_ifft_imag_34),
    .WrData_35(mul_out_imag),
    .RdData_35(reg_ifft_imag_35),
    .WrData_36(mul_out_imag),
    .RdData_36(reg_ifft_imag_36),
    .WrData_37(mul_out_imag),
    .RdData_37(reg_ifft_imag_37),
    .WrData_38(mul_out_imag),
    .RdData_38(reg_ifft_imag_38),
    .WrData_39(mul_out_imag),
    .RdData_39(reg_ifft_imag_39),
    .WrData_40(mul_out_imag),
    .RdData_40(reg_ifft_imag_40),
    .WrData_41(mul_out_imag),
    .RdData_41(reg_ifft_imag_41),
    .WrData_42(mul_out_imag),
    .RdData_42(reg_ifft_imag_42),
    .WrData_43(mul_out_imag),
    .RdData_43(reg_ifft_imag_43),
    .WrData_44(mul_out_imag),
    .RdData_44(reg_ifft_imag_44),
    .WrData_45(mul_out_imag),
    .RdData_45(reg_ifft_imag_45),
    .WrData_46(mul_out_imag),
    .RdData_46(reg_ifft_imag_46),
    .WrData_47(mul_out_imag),
    .RdData_47(reg_ifft_imag_47),
    .WrData_48(mul_out_imag),
    .RdData_48(reg_ifft_imag_48),
    .WrData_49(mul_out_imag),
    .RdData_49(reg_ifft_imag_49),
    .WrData_50(mul_out_imag),
    .RdData_50(reg_ifft_imag_50),
    .WrData_51(mul_out_imag),
    .RdData_51(reg_ifft_imag_51),
    .WrData_52(mul_out_imag),
    .RdData_52(reg_ifft_imag_52),
    .WrData_53(mul_out_imag),
    .RdData_53(reg_ifft_imag_53),
    .WrData_54(mul_out_imag),
    .RdData_54(reg_ifft_imag_54),
    .WrData_55(mul_out_imag),
    .RdData_55(reg_ifft_imag_55),
    .WrData_56(mul_out_imag),
    .RdData_56(reg_ifft_imag_56),
    .WrData_57(mul_out_imag),
    .RdData_57(reg_ifft_imag_57),
    .WrData_58(mul_out_imag),
    .RdData_58(reg_ifft_imag_58),
    .WrData_59(mul_out_imag),
    .RdData_59(reg_ifft_imag_59),
    .WrData_60(mul_out_imag),
    .RdData_60(reg_ifft_imag_60),
    .WrData_61(mul_out_imag),
    .RdData_61(reg_ifft_imag_61),
    .WrData_62(mul_out_imag),
    .RdData_62(reg_ifft_imag_62),
    .WrData_63(mul_out_imag),
    .RdData_63(reg_ifft_imag_63),
    .WrData_64(mul_out_imag),
    .RdData_64(reg_ifft_imag_64),
    .WrData_65(mul_out_imag),
    .RdData_65(reg_ifft_imag_65),
    .WrData_66(mul_out_imag),
    .RdData_66(reg_ifft_imag_66),
    .WrData_67(mul_out_imag),
    .RdData_67(reg_ifft_imag_67),
    .WrData_68(mul_out_imag),
    .RdData_68(reg_ifft_imag_68),
    .WrData_69(mul_out_imag),
    .RdData_69(reg_ifft_imag_69),
    .WrData_70(mul_out_imag),
    .RdData_70(reg_ifft_imag_70),
    .WrData_71(mul_out_imag),
    .RdData_71(reg_ifft_imag_71),
    .WrData_72(mul_out_imag),
    .RdData_72(reg_ifft_imag_72),
    .WrData_73(mul_out_imag),
    .RdData_73(reg_ifft_imag_73),
    .WrData_74(mul_out_imag),
    .RdData_74(reg_ifft_imag_74),
    .WrData_75(mul_out_imag),
    .RdData_75(reg_ifft_imag_75),
    .WrData_76(mul_out_imag),
    .RdData_76(reg_ifft_imag_76),
    .WrData_77(mul_out_imag),
    .RdData_77(reg_ifft_imag_77),
    .WrData_78(mul_out_imag),
    .RdData_78(reg_ifft_imag_78),
    .WrData_79(mul_out_imag),
    .RdData_79(reg_ifft_imag_79),
    .WrData_80(mul_out_imag),
    .RdData_80(reg_ifft_imag_80),
    .WrData_81(mul_out_imag),
    .RdData_81(reg_ifft_imag_81),
    .WrData_82(mul_out_imag),
    .RdData_82(reg_ifft_imag_82),
    .WrData_83(mul_out_imag),
    .RdData_83(reg_ifft_imag_83),
    .WrData_84(mul_out_imag),
    .RdData_84(reg_ifft_imag_84),
    .WrData_85(mul_out_imag),
    .RdData_85(reg_ifft_imag_85),
    .WrData_86(mul_out_imag),
    .RdData_86(reg_ifft_imag_86),
    .WrData_87(mul_out_imag),
    .RdData_87(reg_ifft_imag_87),
    .WrData_88(mul_out_imag),
    .RdData_88(reg_ifft_imag_88),
    .WrData_89(mul_out_imag),
    .RdData_89(reg_ifft_imag_89),
    .WrData_90(mul_out_imag),
    .RdData_90(reg_ifft_imag_90),
    .WrData_91(mul_out_imag),
    .RdData_91(reg_ifft_imag_91),
    .WrData_92(mul_out_imag),
    .RdData_92(reg_ifft_imag_92),
    .WrData_93(mul_out_imag),
    .RdData_93(reg_ifft_imag_93),
    .WrData_94(mul_out_imag),
    .RdData_94(reg_ifft_imag_94),
    .WrData_95(mul_out_imag),
    .RdData_95(reg_ifft_imag_95),
    .WrData_96(mul_out_imag),
    .RdData_96(reg_ifft_imag_96),
    .WrData_97(mul_out_imag),
    .RdData_97(reg_ifft_imag_97),
    .WrData_98(mul_out_imag),
    .RdData_98(reg_ifft_imag_98),
    .WrData_99(mul_out_imag),
    .RdData_99(reg_ifft_imag_99),
    .WrData_100(mul_out_imag),
    .RdData_100(reg_ifft_imag_100),
    .WrData_101(mul_out_imag),
    .RdData_101(reg_ifft_imag_101),
    .WrData_102(mul_out_imag),
    .RdData_102(reg_ifft_imag_102),
    .WrData_103(mul_out_imag),
    .RdData_103(reg_ifft_imag_103),
    .WrData_104(mul_out_imag),
    .RdData_104(reg_ifft_imag_104),
    .WrData_105(mul_out_imag),
    .RdData_105(reg_ifft_imag_105),
    .WrData_106(mul_out_imag),
    .RdData_106(reg_ifft_imag_106),
    .WrData_107(mul_out_imag),
    .RdData_107(reg_ifft_imag_107),
    .WrData_108(mul_out_imag),
    .RdData_108(reg_ifft_imag_108),
    .WrData_109(mul_out_imag),
    .RdData_109(reg_ifft_imag_109),
    .WrData_110(mul_out_imag),
    .RdData_110(reg_ifft_imag_110),
    .WrData_111(mul_out_imag),
    .RdData_111(reg_ifft_imag_111),
    .WrData_112(mul_out_imag),
    .RdData_112(reg_ifft_imag_112),
    .WrData_113(mul_out_imag),
    .RdData_113(reg_ifft_imag_113),
    .WrData_114(mul_out_imag),
    .RdData_114(reg_ifft_imag_114),
    .WrData_115(mul_out_imag),
    .RdData_115(reg_ifft_imag_115),
    .WrData_116(mul_out_imag),
    .RdData_116(reg_ifft_imag_116),
    .WrData_117(mul_out_imag),
    .RdData_117(reg_ifft_imag_117),
    .WrData_118(mul_out_imag),
    .RdData_118(reg_ifft_imag_118),
    .WrData_119(mul_out_imag),
    .RdData_119(reg_ifft_imag_119),
    .WrData_120(mul_out_imag),
    .RdData_120(reg_ifft_imag_120),
    .WrData_121(mul_out_imag),
    .RdData_121(reg_ifft_imag_121),
    .WrData_122(mul_out_imag),
    .RdData_122(reg_ifft_imag_122),
    .WrData_123(mul_out_imag),
    .RdData_123(reg_ifft_imag_123),
    .WrData_124(mul_out_imag),
    .RdData_124(reg_ifft_imag_124),
    .WrData_125(mul_out_imag),
    .RdData_125(reg_ifft_imag_125),
    .WrData_126(mul_out_imag),
    .RdData_126(reg_ifft_imag_126),
    .WrData_127(mul_out_imag),
    .RdData_127(reg_ifft_imag_127)
);




IFFT_Time_Share_Top_Module #(.BITS(BITS)) IFFT
(
    .ready_inputs(ifft_ready_inputs),
    .clk(clk),
    .rst(rst),
    .x0_r(reg_ifft_real_0),
    .x0_i(reg_ifft_imag_0),
    .ifft_output0_r(ifft_mux_4x1_real_0),
    .ifft_output0_i(ifft_mux_4x1_imag_0),
    .x1_r(reg_ifft_real_1),
    .x1_i(reg_ifft_imag_1),
    .ifft_output1_r(ifft_mux_4x1_real_1),
    .ifft_output1_i(ifft_mux_4x1_imag_1),
    .x2_r(reg_ifft_real_2),
    .x2_i(reg_ifft_imag_2),
    .ifft_output2_r(ifft_mux_4x1_real_2),
    .ifft_output2_i(ifft_mux_4x1_imag_2),
    .x3_r(reg_ifft_real_3),
    .x3_i(reg_ifft_imag_3),
    .ifft_output3_r(ifft_mux_4x1_real_3),
    .ifft_output3_i(ifft_mux_4x1_imag_3),
    .x4_r(reg_ifft_real_4),
    .x4_i(reg_ifft_imag_4),
    .ifft_output4_r(ifft_mux_4x1_real_4),
    .ifft_output4_i(ifft_mux_4x1_imag_4),
    .x5_r(reg_ifft_real_5),
    .x5_i(reg_ifft_imag_5),
    .ifft_output5_r(ifft_mux_4x1_real_5),
    .ifft_output5_i(ifft_mux_4x1_imag_5),
    .x6_r(reg_ifft_real_6),
    .x6_i(reg_ifft_imag_6),
    .ifft_output6_r(ifft_mux_4x1_real_6),
    .ifft_output6_i(ifft_mux_4x1_imag_6),
    .x7_r(reg_ifft_real_7),
    .x7_i(reg_ifft_imag_7),
    .ifft_output7_r(ifft_mux_4x1_real_7),
    .ifft_output7_i(ifft_mux_4x1_imag_7),
    .x8_r(reg_ifft_real_8),
    .x8_i(reg_ifft_imag_8),
    .ifft_output8_r(ifft_mux_4x1_real_8),
    .ifft_output8_i(ifft_mux_4x1_imag_8),
    .x9_r(reg_ifft_real_9),
    .x9_i(reg_ifft_imag_9),
    .ifft_output9_r(ifft_mux_4x1_real_9),
    .ifft_output9_i(ifft_mux_4x1_imag_9),
    .x10_r(reg_ifft_real_10),
    .x10_i(reg_ifft_imag_10),
    .ifft_output10_r(ifft_mux_4x1_real_10),
    .ifft_output10_i(ifft_mux_4x1_imag_10),
    .x11_r(reg_ifft_real_11),
    .x11_i(reg_ifft_imag_11),
    .ifft_output11_r(ifft_mux_4x1_real_11),
    .ifft_output11_i(ifft_mux_4x1_imag_11),
    .x12_r(reg_ifft_real_12),
    .x12_i(reg_ifft_imag_12),
    .ifft_output12_r(ifft_mux_4x1_real_12),
    .ifft_output12_i(ifft_mux_4x1_imag_12),
    .x13_r(reg_ifft_real_13),
    .x13_i(reg_ifft_imag_13),
    .ifft_output13_r(ifft_mux_4x1_real_13),
    .ifft_output13_i(ifft_mux_4x1_imag_13),
    .x14_r(reg_ifft_real_14),
    .x14_i(reg_ifft_imag_14),
    .ifft_output14_r(ifft_mux_4x1_real_14),
    .ifft_output14_i(ifft_mux_4x1_imag_14),
    .x15_r(reg_ifft_real_15),
    .x15_i(reg_ifft_imag_15),
    .ifft_output15_r(ifft_mux_4x1_real_15),
    .ifft_output15_i(ifft_mux_4x1_imag_15),
    .x16_r(reg_ifft_real_16),
    .x16_i(reg_ifft_imag_16),
    .ifft_output16_r(ifft_mux_4x1_real_16),
    .ifft_output16_i(ifft_mux_4x1_imag_16),
    .x17_r(reg_ifft_real_17),
    .x17_i(reg_ifft_imag_17),
    .ifft_output17_r(ifft_mux_4x1_real_17),
    .ifft_output17_i(ifft_mux_4x1_imag_17),
    .x18_r(reg_ifft_real_18),
    .x18_i(reg_ifft_imag_18),
    .ifft_output18_r(ifft_mux_4x1_real_18),
    .ifft_output18_i(ifft_mux_4x1_imag_18),
    .x19_r(reg_ifft_real_19),
    .x19_i(reg_ifft_imag_19),
    .ifft_output19_r(ifft_mux_4x1_real_19),
    .ifft_output19_i(ifft_mux_4x1_imag_19),
    .x20_r(reg_ifft_real_20),
    .x20_i(reg_ifft_imag_20),
    .ifft_output20_r(ifft_mux_4x1_real_20),
    .ifft_output20_i(ifft_mux_4x1_imag_20),
    .x21_r(reg_ifft_real_21),
    .x21_i(reg_ifft_imag_21),
    .ifft_output21_r(ifft_mux_4x1_real_21),
    .ifft_output21_i(ifft_mux_4x1_imag_21),
    .x22_r(reg_ifft_real_22),
    .x22_i(reg_ifft_imag_22),
    .ifft_output22_r(ifft_mux_4x1_real_22),
    .ifft_output22_i(ifft_mux_4x1_imag_22),
    .x23_r(reg_ifft_real_23),
    .x23_i(reg_ifft_imag_23),
    .ifft_output23_r(ifft_mux_4x1_real_23),
    .ifft_output23_i(ifft_mux_4x1_imag_23),
    .x24_r(reg_ifft_real_24),
    .x24_i(reg_ifft_imag_24),
    .ifft_output24_r(ifft_mux_4x1_real_24),
    .ifft_output24_i(ifft_mux_4x1_imag_24),
    .x25_r(reg_ifft_real_25),
    .x25_i(reg_ifft_imag_25),
    .ifft_output25_r(ifft_mux_4x1_real_25),
    .ifft_output25_i(ifft_mux_4x1_imag_25),
    .x26_r(reg_ifft_real_26),
    .x26_i(reg_ifft_imag_26),
    .ifft_output26_r(ifft_mux_4x1_real_26),
    .ifft_output26_i(ifft_mux_4x1_imag_26),
    .x27_r(reg_ifft_real_27),
    .x27_i(reg_ifft_imag_27),
    .ifft_output27_r(ifft_mux_4x1_real_27),
    .ifft_output27_i(ifft_mux_4x1_imag_27),
    .x28_r(reg_ifft_real_28),
    .x28_i(reg_ifft_imag_28),
    .ifft_output28_r(ifft_mux_4x1_real_28),
    .ifft_output28_i(ifft_mux_4x1_imag_28),
    .x29_r(reg_ifft_real_29),
    .x29_i(reg_ifft_imag_29),
    .ifft_output29_r(ifft_mux_4x1_real_29),
    .ifft_output29_i(ifft_mux_4x1_imag_29),
    .x30_r(reg_ifft_real_30),
    .x30_i(reg_ifft_imag_30),
    .ifft_output30_r(ifft_mux_4x1_real_30),
    .ifft_output30_i(ifft_mux_4x1_imag_30),
    .x31_r(reg_ifft_real_31),
    .x31_i(reg_ifft_imag_31),
    .ifft_output31_r(ifft_mux_4x1_real_31),
    .ifft_output31_i(ifft_mux_4x1_imag_31),
    .x32_r(reg_ifft_real_32),
    .x32_i(reg_ifft_imag_32),
    .ifft_output32_r(ifft_mux_4x1_real_32),
    .ifft_output32_i(ifft_mux_4x1_imag_32),
    .x33_r(reg_ifft_real_33),
    .x33_i(reg_ifft_imag_33),
    .ifft_output33_r(ifft_mux_4x1_real_33),
    .ifft_output33_i(ifft_mux_4x1_imag_33),
    .x34_r(reg_ifft_real_34),
    .x34_i(reg_ifft_imag_34),
    .ifft_output34_r(ifft_mux_4x1_real_34),
    .ifft_output34_i(ifft_mux_4x1_imag_34),
    .x35_r(reg_ifft_real_35),
    .x35_i(reg_ifft_imag_35),
    .ifft_output35_r(ifft_mux_4x1_real_35),
    .ifft_output35_i(ifft_mux_4x1_imag_35),
    .x36_r(reg_ifft_real_36),
    .x36_i(reg_ifft_imag_36),
    .ifft_output36_r(ifft_mux_4x1_real_36),
    .ifft_output36_i(ifft_mux_4x1_imag_36),
    .x37_r(reg_ifft_real_37),
    .x37_i(reg_ifft_imag_37),
    .ifft_output37_r(ifft_mux_4x1_real_37),
    .ifft_output37_i(ifft_mux_4x1_imag_37),
    .x38_r(reg_ifft_real_38),
    .x38_i(reg_ifft_imag_38),
    .ifft_output38_r(ifft_mux_4x1_real_38),
    .ifft_output38_i(ifft_mux_4x1_imag_38),
    .x39_r(reg_ifft_real_39),
    .x39_i(reg_ifft_imag_39),
    .ifft_output39_r(ifft_mux_4x1_real_39),
    .ifft_output39_i(ifft_mux_4x1_imag_39),
    .x40_r(reg_ifft_real_40),
    .x40_i(reg_ifft_imag_40),
    .ifft_output40_r(ifft_mux_4x1_real_40),
    .ifft_output40_i(ifft_mux_4x1_imag_40),
    .x41_r(reg_ifft_real_41),
    .x41_i(reg_ifft_imag_41),
    .ifft_output41_r(ifft_mux_4x1_real_41),
    .ifft_output41_i(ifft_mux_4x1_imag_41),
    .x42_r(reg_ifft_real_42),
    .x42_i(reg_ifft_imag_42),
    .ifft_output42_r(ifft_mux_4x1_real_42),
    .ifft_output42_i(ifft_mux_4x1_imag_42),
    .x43_r(reg_ifft_real_43),
    .x43_i(reg_ifft_imag_43),
    .ifft_output43_r(ifft_mux_4x1_real_43),
    .ifft_output43_i(ifft_mux_4x1_imag_43),
    .x44_r(reg_ifft_real_44),
    .x44_i(reg_ifft_imag_44),
    .ifft_output44_r(ifft_mux_4x1_real_44),
    .ifft_output44_i(ifft_mux_4x1_imag_44),
    .x45_r(reg_ifft_real_45),
    .x45_i(reg_ifft_imag_45),
    .ifft_output45_r(ifft_mux_4x1_real_45),
    .ifft_output45_i(ifft_mux_4x1_imag_45),
    .x46_r(reg_ifft_real_46),
    .x46_i(reg_ifft_imag_46),
    .ifft_output46_r(ifft_mux_4x1_real_46),
    .ifft_output46_i(ifft_mux_4x1_imag_46),
    .x47_r(reg_ifft_real_47),
    .x47_i(reg_ifft_imag_47),
    .ifft_output47_r(ifft_mux_4x1_real_47),
    .ifft_output47_i(ifft_mux_4x1_imag_47),
    .x48_r(reg_ifft_real_48),
    .x48_i(reg_ifft_imag_48),
    .ifft_output48_r(ifft_mux_4x1_real_48),
    .ifft_output48_i(ifft_mux_4x1_imag_48),
    .x49_r(reg_ifft_real_49),
    .x49_i(reg_ifft_imag_49),
    .ifft_output49_r(ifft_mux_4x1_real_49),
    .ifft_output49_i(ifft_mux_4x1_imag_49),
    .x50_r(reg_ifft_real_50),
    .x50_i(reg_ifft_imag_50),
    .ifft_output50_r(ifft_mux_4x1_real_50),
    .ifft_output50_i(ifft_mux_4x1_imag_50),
    .x51_r(reg_ifft_real_51),
    .x51_i(reg_ifft_imag_51),
    .ifft_output51_r(ifft_mux_4x1_real_51),
    .ifft_output51_i(ifft_mux_4x1_imag_51),
    .x52_r(reg_ifft_real_52),
    .x52_i(reg_ifft_imag_52),
    .ifft_output52_r(ifft_mux_4x1_real_52),
    .ifft_output52_i(ifft_mux_4x1_imag_52),
    .x53_r(reg_ifft_real_53),
    .x53_i(reg_ifft_imag_53),
    .ifft_output53_r(ifft_mux_4x1_real_53),
    .ifft_output53_i(ifft_mux_4x1_imag_53),
    .x54_r(reg_ifft_real_54),
    .x54_i(reg_ifft_imag_54),
    .ifft_output54_r(ifft_mux_4x1_real_54),
    .ifft_output54_i(ifft_mux_4x1_imag_54),
    .x55_r(reg_ifft_real_55),
    .x55_i(reg_ifft_imag_55),
    .ifft_output55_r(ifft_mux_4x1_real_55),
    .ifft_output55_i(ifft_mux_4x1_imag_55),
    .x56_r(reg_ifft_real_56),
    .x56_i(reg_ifft_imag_56),
    .ifft_output56_r(ifft_mux_4x1_real_56),
    .ifft_output56_i(ifft_mux_4x1_imag_56),
    .x57_r(reg_ifft_real_57),
    .x57_i(reg_ifft_imag_57),
    .ifft_output57_r(ifft_mux_4x1_real_57),
    .ifft_output57_i(ifft_mux_4x1_imag_57),
    .x58_r(reg_ifft_real_58),
    .x58_i(reg_ifft_imag_58),
    .ifft_output58_r(ifft_mux_4x1_real_58),
    .ifft_output58_i(ifft_mux_4x1_imag_58),
    .x59_r(reg_ifft_real_59),
    .x59_i(reg_ifft_imag_59),
    .ifft_output59_r(ifft_mux_4x1_real_59),
    .ifft_output59_i(ifft_mux_4x1_imag_59),
    .x60_r(reg_ifft_real_60),
    .x60_i(reg_ifft_imag_60),
    .ifft_output60_r(ifft_mux_4x1_real_60),
    .ifft_output60_i(ifft_mux_4x1_imag_60),
    .x61_r(reg_ifft_real_61),
    .x61_i(reg_ifft_imag_61),
    .ifft_output61_r(ifft_mux_4x1_real_61),
    .ifft_output61_i(ifft_mux_4x1_imag_61),
    .x62_r(reg_ifft_real_62),
    .x62_i(reg_ifft_imag_62),
    .ifft_output62_r(ifft_mux_4x1_real_62),
    .ifft_output62_i(ifft_mux_4x1_imag_62),
    .x63_r(reg_ifft_real_63),
    .x63_i(reg_ifft_imag_63),
    .ifft_output63_r(ifft_mux_4x1_real_63),
    .ifft_output63_i(ifft_mux_4x1_imag_63),
    .x64_r(reg_ifft_real_64),
    .x64_i(reg_ifft_imag_64),
    .ifft_output64_r(ifft_mux_4x1_real_64),
    .ifft_output64_i(ifft_mux_4x1_imag_64),
    .x65_r(reg_ifft_real_65),
    .x65_i(reg_ifft_imag_65),
    .ifft_output65_r(ifft_mux_4x1_real_65),
    .ifft_output65_i(ifft_mux_4x1_imag_65),
    .x66_r(reg_ifft_real_66),
    .x66_i(reg_ifft_imag_66),
    .ifft_output66_r(ifft_mux_4x1_real_66),
    .ifft_output66_i(ifft_mux_4x1_imag_66),
    .x67_r(reg_ifft_real_67),
    .x67_i(reg_ifft_imag_67),
    .ifft_output67_r(ifft_mux_4x1_real_67),
    .ifft_output67_i(ifft_mux_4x1_imag_67),
    .x68_r(reg_ifft_real_68),
    .x68_i(reg_ifft_imag_68),
    .ifft_output68_r(ifft_mux_4x1_real_68),
    .ifft_output68_i(ifft_mux_4x1_imag_68),
    .x69_r(reg_ifft_real_69),
    .x69_i(reg_ifft_imag_69),
    .ifft_output69_r(ifft_mux_4x1_real_69),
    .ifft_output69_i(ifft_mux_4x1_imag_69),
    .x70_r(reg_ifft_real_70),
    .x70_i(reg_ifft_imag_70),
    .ifft_output70_r(ifft_mux_4x1_real_70),
    .ifft_output70_i(ifft_mux_4x1_imag_70),
    .x71_r(reg_ifft_real_71),
    .x71_i(reg_ifft_imag_71),
    .ifft_output71_r(ifft_mux_4x1_real_71),
    .ifft_output71_i(ifft_mux_4x1_imag_71),
    .x72_r(reg_ifft_real_72),
    .x72_i(reg_ifft_imag_72),
    .ifft_output72_r(ifft_mux_4x1_real_72),
    .ifft_output72_i(ifft_mux_4x1_imag_72),
    .x73_r(reg_ifft_real_73),
    .x73_i(reg_ifft_imag_73),
    .ifft_output73_r(ifft_mux_4x1_real_73),
    .ifft_output73_i(ifft_mux_4x1_imag_73),
    .x74_r(reg_ifft_real_74),
    .x74_i(reg_ifft_imag_74),
    .ifft_output74_r(ifft_mux_4x1_real_74),
    .ifft_output74_i(ifft_mux_4x1_imag_74),
    .x75_r(reg_ifft_real_75),
    .x75_i(reg_ifft_imag_75),
    .ifft_output75_r(ifft_mux_4x1_real_75),
    .ifft_output75_i(ifft_mux_4x1_imag_75),
    .x76_r(reg_ifft_real_76),
    .x76_i(reg_ifft_imag_76),
    .ifft_output76_r(ifft_mux_4x1_real_76),
    .ifft_output76_i(ifft_mux_4x1_imag_76),
    .x77_r(reg_ifft_real_77),
    .x77_i(reg_ifft_imag_77),
    .ifft_output77_r(ifft_mux_4x1_real_77),
    .ifft_output77_i(ifft_mux_4x1_imag_77),
    .x78_r(reg_ifft_real_78),
    .x78_i(reg_ifft_imag_78),
    .ifft_output78_r(ifft_mux_4x1_real_78),
    .ifft_output78_i(ifft_mux_4x1_imag_78),
    .x79_r(reg_ifft_real_79),
    .x79_i(reg_ifft_imag_79),
    .ifft_output79_r(ifft_mux_4x1_real_79),
    .ifft_output79_i(ifft_mux_4x1_imag_79),
    .x80_r(reg_ifft_real_80),
    .x80_i(reg_ifft_imag_80),
    .ifft_output80_r(ifft_mux_4x1_real_80),
    .ifft_output80_i(ifft_mux_4x1_imag_80),
    .x81_r(reg_ifft_real_81),
    .x81_i(reg_ifft_imag_81),
    .ifft_output81_r(ifft_mux_4x1_real_81),
    .ifft_output81_i(ifft_mux_4x1_imag_81),
    .x82_r(reg_ifft_real_82),
    .x82_i(reg_ifft_imag_82),
    .ifft_output82_r(ifft_mux_4x1_real_82),
    .ifft_output82_i(ifft_mux_4x1_imag_82),
    .x83_r(reg_ifft_real_83),
    .x83_i(reg_ifft_imag_83),
    .ifft_output83_r(ifft_mux_4x1_real_83),
    .ifft_output83_i(ifft_mux_4x1_imag_83),
    .x84_r(reg_ifft_real_84),
    .x84_i(reg_ifft_imag_84),
    .ifft_output84_r(ifft_mux_4x1_real_84),
    .ifft_output84_i(ifft_mux_4x1_imag_84),
    .x85_r(reg_ifft_real_85),
    .x85_i(reg_ifft_imag_85),
    .ifft_output85_r(ifft_mux_4x1_real_85),
    .ifft_output85_i(ifft_mux_4x1_imag_85),
    .x86_r(reg_ifft_real_86),
    .x86_i(reg_ifft_imag_86),
    .ifft_output86_r(ifft_mux_4x1_real_86),
    .ifft_output86_i(ifft_mux_4x1_imag_86),
    .x87_r(reg_ifft_real_87),
    .x87_i(reg_ifft_imag_87),
    .ifft_output87_r(ifft_mux_4x1_real_87),
    .ifft_output87_i(ifft_mux_4x1_imag_87),
    .x88_r(reg_ifft_real_88),
    .x88_i(reg_ifft_imag_88),
    .ifft_output88_r(ifft_mux_4x1_real_88),
    .ifft_output88_i(ifft_mux_4x1_imag_88),
    .x89_r(reg_ifft_real_89),
    .x89_i(reg_ifft_imag_89),
    .ifft_output89_r(ifft_mux_4x1_real_89),
    .ifft_output89_i(ifft_mux_4x1_imag_89),
    .x90_r(reg_ifft_real_90),
    .x90_i(reg_ifft_imag_90),
    .ifft_output90_r(ifft_mux_4x1_real_90),
    .ifft_output90_i(ifft_mux_4x1_imag_90),
    .x91_r(reg_ifft_real_91),
    .x91_i(reg_ifft_imag_91),
    .ifft_output91_r(ifft_mux_4x1_real_91),
    .ifft_output91_i(ifft_mux_4x1_imag_91),
    .x92_r(reg_ifft_real_92),
    .x92_i(reg_ifft_imag_92),
    .ifft_output92_r(ifft_mux_4x1_real_92),
    .ifft_output92_i(ifft_mux_4x1_imag_92),
    .x93_r(reg_ifft_real_93),
    .x93_i(reg_ifft_imag_93),
    .ifft_output93_r(ifft_mux_4x1_real_93),
    .ifft_output93_i(ifft_mux_4x1_imag_93),
    .x94_r(reg_ifft_real_94),
    .x94_i(reg_ifft_imag_94),
    .ifft_output94_r(ifft_mux_4x1_real_94),
    .ifft_output94_i(ifft_mux_4x1_imag_94),
    .x95_r(reg_ifft_real_95),
    .x95_i(reg_ifft_imag_95),
    .ifft_output95_r(ifft_mux_4x1_real_95),
    .ifft_output95_i(ifft_mux_4x1_imag_95),
    .x96_r(reg_ifft_real_96),
    .x96_i(reg_ifft_imag_96),
    .ifft_output96_r(ifft_mux_4x1_real_96),
    .ifft_output96_i(ifft_mux_4x1_imag_96),
    .x97_r(reg_ifft_real_97),
    .x97_i(reg_ifft_imag_97),
    .ifft_output97_r(ifft_mux_4x1_real_97),
    .ifft_output97_i(ifft_mux_4x1_imag_97),
    .x98_r(reg_ifft_real_98),
    .x98_i(reg_ifft_imag_98),
    .ifft_output98_r(ifft_mux_4x1_real_98),
    .ifft_output98_i(ifft_mux_4x1_imag_98),
    .x99_r(reg_ifft_real_99),
    .x99_i(reg_ifft_imag_99),
    .ifft_output99_r(ifft_mux_4x1_real_99),
    .ifft_output99_i(ifft_mux_4x1_imag_99),
    .x100_r(reg_ifft_real_100),
    .x100_i(reg_ifft_imag_100),
    .ifft_output100_r(ifft_mux_4x1_real_100),
    .ifft_output100_i(ifft_mux_4x1_imag_100),
    .x101_r(reg_ifft_real_101),
    .x101_i(reg_ifft_imag_101),
    .ifft_output101_r(ifft_mux_4x1_real_101),
    .ifft_output101_i(ifft_mux_4x1_imag_101),
    .x102_r(reg_ifft_real_102),
    .x102_i(reg_ifft_imag_102),
    .ifft_output102_r(ifft_mux_4x1_real_102),
    .ifft_output102_i(ifft_mux_4x1_imag_102),
    .x103_r(reg_ifft_real_103),
    .x103_i(reg_ifft_imag_103),
    .ifft_output103_r(ifft_mux_4x1_real_103),
    .ifft_output103_i(ifft_mux_4x1_imag_103),
    .x104_r(reg_ifft_real_104),
    .x104_i(reg_ifft_imag_104),
    .ifft_output104_r(ifft_mux_4x1_real_104),
    .ifft_output104_i(ifft_mux_4x1_imag_104),
    .x105_r(reg_ifft_real_105),
    .x105_i(reg_ifft_imag_105),
    .ifft_output105_r(ifft_mux_4x1_real_105),
    .ifft_output105_i(ifft_mux_4x1_imag_105),
    .x106_r(reg_ifft_real_106),
    .x106_i(reg_ifft_imag_106),
    .ifft_output106_r(ifft_mux_4x1_real_106),
    .ifft_output106_i(ifft_mux_4x1_imag_106),
    .x107_r(reg_ifft_real_107),
    .x107_i(reg_ifft_imag_107),
    .ifft_output107_r(ifft_mux_4x1_real_107),
    .ifft_output107_i(ifft_mux_4x1_imag_107),
    .x108_r(reg_ifft_real_108),
    .x108_i(reg_ifft_imag_108),
    .ifft_output108_r(ifft_mux_4x1_real_108),
    .ifft_output108_i(ifft_mux_4x1_imag_108),
    .x109_r(reg_ifft_real_109),
    .x109_i(reg_ifft_imag_109),
    .ifft_output109_r(ifft_mux_4x1_real_109),
    .ifft_output109_i(ifft_mux_4x1_imag_109),
    .x110_r(reg_ifft_real_110),
    .x110_i(reg_ifft_imag_110),
    .ifft_output110_r(ifft_mux_4x1_real_110),
    .ifft_output110_i(ifft_mux_4x1_imag_110),
    .x111_r(reg_ifft_real_111),
    .x111_i(reg_ifft_imag_111),
    .ifft_output111_r(ifft_mux_4x1_real_111),
    .ifft_output111_i(ifft_mux_4x1_imag_111),
    .x112_r(reg_ifft_real_112),
    .x112_i(reg_ifft_imag_112),
    .ifft_output112_r(ifft_mux_4x1_real_112),
    .ifft_output112_i(ifft_mux_4x1_imag_112),
    .x113_r(reg_ifft_real_113),
    .x113_i(reg_ifft_imag_113),
    .ifft_output113_r(ifft_mux_4x1_real_113),
    .ifft_output113_i(ifft_mux_4x1_imag_113),
    .x114_r(reg_ifft_real_114),
    .x114_i(reg_ifft_imag_114),
    .ifft_output114_r(ifft_mux_4x1_real_114),
    .ifft_output114_i(ifft_mux_4x1_imag_114),
    .x115_r(reg_ifft_real_115),
    .x115_i(reg_ifft_imag_115),
    .ifft_output115_r(ifft_mux_4x1_real_115),
    .ifft_output115_i(ifft_mux_4x1_imag_115),
    .x116_r(reg_ifft_real_116),
    .x116_i(reg_ifft_imag_116),
    .ifft_output116_r(ifft_mux_4x1_real_116),
    .ifft_output116_i(ifft_mux_4x1_imag_116),
    .x117_r(reg_ifft_real_117),
    .x117_i(reg_ifft_imag_117),
    .ifft_output117_r(ifft_mux_4x1_real_117),
    .ifft_output117_i(ifft_mux_4x1_imag_117),
    .x118_r(reg_ifft_real_118),
    .x118_i(reg_ifft_imag_118),
    .ifft_output118_r(ifft_mux_4x1_real_118),
    .ifft_output118_i(ifft_mux_4x1_imag_118),
    .x119_r(reg_ifft_real_119),
    .x119_i(reg_ifft_imag_119),
    .ifft_output119_r(ifft_mux_4x1_real_119),
    .ifft_output119_i(ifft_mux_4x1_imag_119),
    .x120_r(reg_ifft_real_120),
    .x120_i(reg_ifft_imag_120),
    .ifft_output120_r(ifft_mux_4x1_real_120),
    .ifft_output120_i(ifft_mux_4x1_imag_120),
    .x121_r(reg_ifft_real_121),
    .x121_i(reg_ifft_imag_121),
    .ifft_output121_r(ifft_mux_4x1_real_121),
    .ifft_output121_i(ifft_mux_4x1_imag_121),
    .x122_r(reg_ifft_real_122),
    .x122_i(reg_ifft_imag_122),
    .ifft_output122_r(ifft_mux_4x1_real_122),
    .ifft_output122_i(ifft_mux_4x1_imag_122),
    .x123_r(reg_ifft_real_123),
    .x123_i(reg_ifft_imag_123),
    .ifft_output123_r(ifft_mux_4x1_real_123),
    .ifft_output123_i(ifft_mux_4x1_imag_123),
    .x124_r(reg_ifft_real_124),
    .x124_i(reg_ifft_imag_124),
    .ifft_output124_r(ifft_mux_4x1_real_124),
    .ifft_output124_i(ifft_mux_4x1_imag_124),
    .x125_r(reg_ifft_real_125),
    .x125_i(reg_ifft_imag_125),
    .ifft_output125_r(ifft_mux_4x1_real_125),
    .ifft_output125_i(ifft_mux_4x1_imag_125),
    .x126_r(reg_ifft_real_126),
    .x126_i(reg_ifft_imag_126),
    .ifft_output126_r(ifft_mux_4x1_real_126),
    .ifft_output126_i(ifft_mux_4x1_imag_126),
    .x127_r(reg_ifft_real_127),
    .x127_i(reg_ifft_imag_127),
    .ifft_output127_r(ifft_mux_4x1_real_127),
    .ifft_output127_i(ifft_mux_4x1_imag_127),

    .correct(ifft_correct)

);




MUX_4_1 #( .BITS(BITS) ) UNT0_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_0),
    .in_1(ifft_mux_4x1_real_1),
    .in_2(ifft_mux_4x1_real_2),
    .in_3(ifft_mux_4x1_real_3),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_0)
);
MUX_4_1 #(.BITS(BITS)) UNT1_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_4),
    .in_1(ifft_mux_4x1_real_5),
    .in_2(ifft_mux_4x1_real_6),
    .in_3(ifft_mux_4x1_real_7),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_1)
);
MUX_4_1 #(.BITS(BITS)) UNT2_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_8),
    .in_1(ifft_mux_4x1_real_9),
    .in_2(ifft_mux_4x1_real_10),
    .in_3(ifft_mux_4x1_real_11),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_2)
);
MUX_4_1 #(.BITS(BITS)) UNT3_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_12),
    .in_1(ifft_mux_4x1_real_13),
    .in_2(ifft_mux_4x1_real_14),
    .in_3(ifft_mux_4x1_real_15),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_3)
);
MUX_4_1 #(.BITS(BITS)) UNT4_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_16),
    .in_1(ifft_mux_4x1_real_17),
    .in_2(ifft_mux_4x1_real_18),
    .in_3(ifft_mux_4x1_real_19),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_4)
);
MUX_4_1 #(.BITS(BITS)) UNT5_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_20),
    .in_1(ifft_mux_4x1_real_21),
    .in_2(ifft_mux_4x1_real_22),
    .in_3(ifft_mux_4x1_real_23),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_5)
);
MUX_4_1 #(.BITS(BITS)) UNT6_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_24),
    .in_1(ifft_mux_4x1_real_25),
    .in_2(ifft_mux_4x1_real_26),
    .in_3(ifft_mux_4x1_real_27),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_6)
);
MUX_4_1 #(.BITS(BITS)) UNT7_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_28),
    .in_1(ifft_mux_4x1_real_29),
    .in_2(ifft_mux_4x1_real_30),
    .in_3(ifft_mux_4x1_real_31),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_7)
);
MUX_4_1 #(.BITS(BITS)) UNT8_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_32),
    .in_1(ifft_mux_4x1_real_33),
    .in_2(ifft_mux_4x1_real_34),
    .in_3(ifft_mux_4x1_real_35),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_8)
);
MUX_4_1 #(.BITS(BITS)) UNT9_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_36),
    .in_1(ifft_mux_4x1_real_37),
    .in_2(ifft_mux_4x1_real_38),
    .in_3(ifft_mux_4x1_real_39),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_9)
);
MUX_4_1 #(.BITS(BITS)) UNT10_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_40),
    .in_1(ifft_mux_4x1_real_41),
    .in_2(ifft_mux_4x1_real_42),
    .in_3(ifft_mux_4x1_real_43),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_10)
);
MUX_4_1 #(.BITS(BITS)) UNT11_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_44),
    .in_1(ifft_mux_4x1_real_45),
    .in_2(ifft_mux_4x1_real_46),
    .in_3(ifft_mux_4x1_real_47),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_11)
);
MUX_4_1 #(.BITS(BITS)) UNT12_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_48),
    .in_1(ifft_mux_4x1_real_49),
    .in_2(ifft_mux_4x1_real_50),
    .in_3(ifft_mux_4x1_real_51),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_12)
);
MUX_4_1 #(.BITS(BITS)) UNT13_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_52),
    .in_1(ifft_mux_4x1_real_53),
    .in_2(ifft_mux_4x1_real_54),
    .in_3(ifft_mux_4x1_real_55),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_13)
);
MUX_4_1 #(.BITS(BITS)) UNT14_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_56),
    .in_1(ifft_mux_4x1_real_57),
    .in_2(ifft_mux_4x1_real_58),
    .in_3(ifft_mux_4x1_real_59),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_14)
);
MUX_4_1 #(.BITS(BITS)) UNT15_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_60),
    .in_1(ifft_mux_4x1_real_61),
    .in_2(ifft_mux_4x1_real_62),
    .in_3(ifft_mux_4x1_real_63),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_15)
);
MUX_4_1 #(.BITS(BITS)) UNT16_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_64),
    .in_1(ifft_mux_4x1_real_65),
    .in_2(ifft_mux_4x1_real_66),
    .in_3(ifft_mux_4x1_real_67),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_16)
);
MUX_4_1 #(.BITS(BITS)) UNT17_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_68),
    .in_1(ifft_mux_4x1_real_69),
    .in_2(ifft_mux_4x1_real_70),
    .in_3(ifft_mux_4x1_real_71),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_17)
);
MUX_4_1 #(.BITS(BITS)) UNT18_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_72),
    .in_1(ifft_mux_4x1_real_73),
    .in_2(ifft_mux_4x1_real_74),
    .in_3(ifft_mux_4x1_real_75),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_18)
);
MUX_4_1 #(.BITS(BITS)) UNT19_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_76),
    .in_1(ifft_mux_4x1_real_77),
    .in_2(ifft_mux_4x1_real_78),
    .in_3(ifft_mux_4x1_real_79),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_19)
);
MUX_4_1 #(.BITS(BITS)) UNT20_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_80),
    .in_1(ifft_mux_4x1_real_81),
    .in_2(ifft_mux_4x1_real_82),
    .in_3(ifft_mux_4x1_real_83),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_20)
);
MUX_4_1 #(.BITS(BITS)) UNT21_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_84),
    .in_1(ifft_mux_4x1_real_85),
    .in_2(ifft_mux_4x1_real_86),
    .in_3(ifft_mux_4x1_real_87),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_21)
);
MUX_4_1 #(.BITS(BITS)) UNT22_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_88),
    .in_1(ifft_mux_4x1_real_89),
    .in_2(ifft_mux_4x1_real_90),
    .in_3(ifft_mux_4x1_real_91),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_22)
);
MUX_4_1 #(.BITS(BITS)) UNT23_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_92),
    .in_1(ifft_mux_4x1_real_93),
    .in_2(ifft_mux_4x1_real_94),
    .in_3(ifft_mux_4x1_real_95),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_23)
);
MUX_4_1 #(.BITS(BITS)) UNT24_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_96),
    .in_1(ifft_mux_4x1_real_97),
    .in_2(ifft_mux_4x1_real_98),
    .in_3(ifft_mux_4x1_real_99),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_24)
);
MUX_4_1 #(.BITS(BITS)) UNT25_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_100),
    .in_1(ifft_mux_4x1_real_101),
    .in_2(ifft_mux_4x1_real_102),
    .in_3(ifft_mux_4x1_real_103),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_25)
);
MUX_4_1 #(.BITS(BITS)) UNT26_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_104),
    .in_1(ifft_mux_4x1_real_105),
    .in_2(ifft_mux_4x1_real_106),
    .in_3(ifft_mux_4x1_real_107),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_26)
);
MUX_4_1 #(.BITS(BITS)) UNT27_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_108),
    .in_1(ifft_mux_4x1_real_109),
    .in_2(ifft_mux_4x1_real_110),
    .in_3(ifft_mux_4x1_real_111),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_27)
);
MUX_4_1 #(.BITS(BITS)) UNT28_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_112),
    .in_1(ifft_mux_4x1_real_113),
    .in_2(ifft_mux_4x1_real_114),
    .in_3(ifft_mux_4x1_real_115),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_28)
);
MUX_4_1 #(.BITS(BITS)) UNT29_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_116),
    .in_1(ifft_mux_4x1_real_117),
    .in_2(ifft_mux_4x1_real_118),
    .in_3(ifft_mux_4x1_real_119),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_29)
);
MUX_4_1 #(.BITS(BITS)) UNT30_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_120),
    .in_1(ifft_mux_4x1_real_121),
    .in_2(ifft_mux_4x1_real_122),
    .in_3(ifft_mux_4x1_real_123),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_30)
);
MUX_4_1 #(.BITS(BITS)) UNT31_CWT_MUX_4x1_REAL
(
    .in_0(ifft_mux_4x1_real_124),
    .in_1(ifft_mux_4x1_real_125),
    .in_2(ifft_mux_4x1_real_126),
    .in_3(ifft_mux_4x1_real_127),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_real_31)
);




MUX_4_1 #(.BITS(BITS)) UNT0_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_0),
    .in_1(ifft_mux_4x1_imag_1),
    .in_2(ifft_mux_4x1_imag_2),
    .in_3(ifft_mux_4x1_imag_3),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_0)
);
MUX_4_1 #(.BITS(BITS)) UNT1_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_4),
    .in_1(ifft_mux_4x1_imag_5),
    .in_2(ifft_mux_4x1_imag_6),
    .in_3(ifft_mux_4x1_imag_7),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_1)
);
MUX_4_1 #(.BITS(BITS)) UNT2_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_8),
    .in_1(ifft_mux_4x1_imag_9),
    .in_2(ifft_mux_4x1_imag_10),
    .in_3(ifft_mux_4x1_imag_11),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_2)
);
MUX_4_1 #(.BITS(BITS)) UNT3_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_12),
    .in_1(ifft_mux_4x1_imag_13),
    .in_2(ifft_mux_4x1_imag_14),
    .in_3(ifft_mux_4x1_imag_15),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_3)
);
MUX_4_1 #(.BITS(BITS)) UNT4_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_16),
    .in_1(ifft_mux_4x1_imag_17),
    .in_2(ifft_mux_4x1_imag_18),
    .in_3(ifft_mux_4x1_imag_19),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_4)
);
MUX_4_1 #(.BITS(BITS)) UNT5_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_20),
    .in_1(ifft_mux_4x1_imag_21),
    .in_2(ifft_mux_4x1_imag_22),
    .in_3(ifft_mux_4x1_imag_23),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_5)
);
MUX_4_1 #(.BITS(BITS)) UNT6_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_24),
    .in_1(ifft_mux_4x1_imag_25),
    .in_2(ifft_mux_4x1_imag_26),
    .in_3(ifft_mux_4x1_imag_27),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_6)
);
MUX_4_1 #(.BITS(BITS)) UNT7_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_28),
    .in_1(ifft_mux_4x1_imag_29),
    .in_2(ifft_mux_4x1_imag_30),
    .in_3(ifft_mux_4x1_imag_31),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_7)
);
MUX_4_1 #(.BITS(BITS)) UNT8_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_32),
    .in_1(ifft_mux_4x1_imag_33),
    .in_2(ifft_mux_4x1_imag_34),
    .in_3(ifft_mux_4x1_imag_35),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_8)
);
MUX_4_1 #(.BITS(BITS)) UNT9_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_36),
    .in_1(ifft_mux_4x1_imag_37),
    .in_2(ifft_mux_4x1_imag_38),
    .in_3(ifft_mux_4x1_imag_39),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_9)
);
MUX_4_1 #(.BITS(BITS)) UNT10_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_40),
    .in_1(ifft_mux_4x1_imag_41),
    .in_2(ifft_mux_4x1_imag_42),
    .in_3(ifft_mux_4x1_imag_43),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_10)
);
MUX_4_1 #(.BITS(BITS)) UNT11_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_44),
    .in_1(ifft_mux_4x1_imag_45),
    .in_2(ifft_mux_4x1_imag_46),
    .in_3(ifft_mux_4x1_imag_47),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_11)
);
MUX_4_1 #(.BITS(BITS)) UNT12_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_48),
    .in_1(ifft_mux_4x1_imag_49),
    .in_2(ifft_mux_4x1_imag_50),
    .in_3(ifft_mux_4x1_imag_51),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_12)
);
MUX_4_1 #(.BITS(BITS)) UNT13_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_52),
    .in_1(ifft_mux_4x1_imag_53),
    .in_2(ifft_mux_4x1_imag_54),
    .in_3(ifft_mux_4x1_imag_55),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_13)
);
MUX_4_1 #(.BITS(BITS)) UNT14_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_56),
    .in_1(ifft_mux_4x1_imag_57),
    .in_2(ifft_mux_4x1_imag_58),
    .in_3(ifft_mux_4x1_imag_59),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_14)
);
MUX_4_1 #(.BITS(BITS)) UNT15_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_60),
    .in_1(ifft_mux_4x1_imag_61),
    .in_2(ifft_mux_4x1_imag_62),
    .in_3(ifft_mux_4x1_imag_63),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_15)
);
MUX_4_1 #(.BITS(BITS)) UNT16_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_64),
    .in_1(ifft_mux_4x1_imag_65),
    .in_2(ifft_mux_4x1_imag_66),
    .in_3(ifft_mux_4x1_imag_67),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_16)
);
MUX_4_1 #(.BITS(BITS)) UNT17_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_68),
    .in_1(ifft_mux_4x1_imag_69),
    .in_2(ifft_mux_4x1_imag_70),
    .in_3(ifft_mux_4x1_imag_71),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_17)
);
MUX_4_1 #(.BITS(BITS)) UNT18_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_72),
    .in_1(ifft_mux_4x1_imag_73),
    .in_2(ifft_mux_4x1_imag_74),
    .in_3(ifft_mux_4x1_imag_75),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_18)
);
MUX_4_1 #(.BITS(BITS)) UNT19_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_76),
    .in_1(ifft_mux_4x1_imag_77),
    .in_2(ifft_mux_4x1_imag_78),
    .in_3(ifft_mux_4x1_imag_79),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_19)
);
MUX_4_1 #(.BITS(BITS)) UNT20_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_80),
    .in_1(ifft_mux_4x1_imag_81),
    .in_2(ifft_mux_4x1_imag_82),
    .in_3(ifft_mux_4x1_imag_83),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_20)
);
MUX_4_1 #(.BITS(BITS)) UNT21_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_84),
    .in_1(ifft_mux_4x1_imag_85),
    .in_2(ifft_mux_4x1_imag_86),
    .in_3(ifft_mux_4x1_imag_87),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_21)
);
MUX_4_1 #(.BITS(BITS)) UNT22_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_88),
    .in_1(ifft_mux_4x1_imag_89),
    .in_2(ifft_mux_4x1_imag_90),
    .in_3(ifft_mux_4x1_imag_91),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_22)
);
MUX_4_1 #(.BITS(BITS)) UNT23_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_92),
    .in_1(ifft_mux_4x1_imag_93),
    .in_2(ifft_mux_4x1_imag_94),
    .in_3(ifft_mux_4x1_imag_95),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_23)
);
MUX_4_1 #(.BITS(BITS)) UNT24_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_96),
    .in_1(ifft_mux_4x1_imag_97),
    .in_2(ifft_mux_4x1_imag_98),
    .in_3(ifft_mux_4x1_imag_99),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_24)
);
MUX_4_1 #(.BITS(BITS)) UNT25_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_100),
    .in_1(ifft_mux_4x1_imag_101),
    .in_2(ifft_mux_4x1_imag_102),
    .in_3(ifft_mux_4x1_imag_103),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_25)
);
MUX_4_1 #(.BITS(BITS)) UNT26_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_104),
    .in_1(ifft_mux_4x1_imag_105),
    .in_2(ifft_mux_4x1_imag_106),
    .in_3(ifft_mux_4x1_imag_107),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_26)
);
MUX_4_1 #(.BITS(BITS)) UNT27_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_108),
    .in_1(ifft_mux_4x1_imag_109),
    .in_2(ifft_mux_4x1_imag_110),
    .in_3(ifft_mux_4x1_imag_111),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_27)
);
MUX_4_1 #(.BITS(BITS)) UNT28_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_112),
    .in_1(ifft_mux_4x1_imag_113),
    .in_2(ifft_mux_4x1_imag_114),
    .in_3(ifft_mux_4x1_imag_115),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_28)
);
MUX_4_1 #(.BITS(BITS)) UNT29_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_116),
    .in_1(ifft_mux_4x1_imag_117),
    .in_2(ifft_mux_4x1_imag_118),
    .in_3(ifft_mux_4x1_imag_119),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_29)
);
MUX_4_1 #(.BITS(BITS)) UNT30_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_120),
    .in_1(ifft_mux_4x1_imag_121),
    .in_2(ifft_mux_4x1_imag_122),
    .in_3(ifft_mux_4x1_imag_123),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_30)
);
MUX_4_1 #(.BITS(BITS)) UNT31_CWT_MUX_4x1_IMAG
(
    .in_0(ifft_mux_4x1_imag_124),
    .in_1(ifft_mux_4x1_imag_125),
    .in_2(ifft_mux_4x1_imag_126),
    .in_3(ifft_mux_4x1_imag_127),
    .selection_line(ifft_sel_mux__4x1),
    .out(mux_scale_memory_imag_31)
);


















Memory #(.BITS(16)) U0_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_0_scale_1_real)
);

Memory #(.BITS(16)) U1_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_1_scale_1_real)
);

Memory #(.BITS(16)) U2_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_2_scale_1_real)
);

Memory #(.BITS(16)) U3_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_3_scale_1_real)
);

Memory #(.BITS(16)) U4_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_4_scale_1_real)
);

Memory #(.BITS(16)) U5_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_5_scale_1_real)
);

Memory #(.BITS(16)) U6_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_6_scale_1_real)
);

Memory #(.BITS(16)) U7_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_7_scale_1_real)
);

Memory #(.BITS(16)) U8_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_8_scale_1_real)
);

Memory #(.BITS(16)) U9_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_9_scale_1_real)
);

Memory #(.BITS(16)) U10_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_10_scale_1_real)
);

Memory #(.BITS(16)) U11_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_11_scale_1_real)
);

Memory #(.BITS(16)) U12_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_12_scale_1_real)
);

Memory #(.BITS(16)) U13_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_13_scale_1_real)
);

Memory #(.BITS(16)) U14_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_14_scale_1_real)
);

Memory #(.BITS(16)) U15_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_15_scale_1_real)
);

Memory #(.BITS(16)) U16_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_16_scale_1_real)
);

Memory #(.BITS(16)) U17_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_17_scale_1_real)
);

Memory #(.BITS(16)) U18_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_18_scale_1_real)
);

Memory #(.BITS(16)) U19_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_19_scale_1_real)
);

Memory #(.BITS(16)) U20_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_20_scale_1_real)
);

Memory #(.BITS(16)) U21_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_21_scale_1_real)
);

Memory #(.BITS(16)) U22_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_22_scale_1_real)
);

Memory #(.BITS(16)) U23_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_23_scale_1_real)
);

Memory #(.BITS(16)) U24_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_24_scale_1_real)
);

Memory #(.BITS(16)) U25_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_25_scale_1_real)
);

Memory #(.BITS(16)) U26_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_26_scale_1_real)
);

Memory #(.BITS(16)) U27_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_27_scale_1_real)
);

Memory #(.BITS(16)) U28_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_28_scale_1_real)
);

Memory #(.BITS(16)) U29_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_29_scale_1_real)
);

Memory #(.BITS(16)) U30_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_30_scale_1_real)
);

Memory #(.BITS(16)) U31_SCALE_1_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_31_scale_1_real)
);

Memory #(.BITS(16)) U0_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_0_scale_2_real)
);

Memory #(.BITS(16)) U1_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_1_scale_2_real)
);

Memory #(.BITS(16)) U2_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_2_scale_2_real)
);

Memory #(.BITS(16)) U3_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_3_scale_2_real)
);

Memory #(.BITS(16)) U4_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_4_scale_2_real)
);

Memory #(.BITS(16)) U5_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_5_scale_2_real)
);

Memory #(.BITS(16)) U6_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_6_scale_2_real)
);

Memory #(.BITS(16)) U7_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_7_scale_2_real)
);

Memory #(.BITS(16)) U8_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_8_scale_2_real)
);

Memory #(.BITS(16)) U9_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_9_scale_2_real)
);

Memory #(.BITS(16)) U10_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_10_scale_2_real)
);

Memory #(.BITS(16)) U11_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_11_scale_2_real)
);

Memory #(.BITS(16)) U12_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_12_scale_2_real)
);

Memory #(.BITS(16)) U13_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_13_scale_2_real)
);

Memory #(.BITS(16)) U14_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_14_scale_2_real)
);

Memory #(.BITS(16)) U15_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_15_scale_2_real)
);

Memory #(.BITS(16)) U16_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_16_scale_2_real)
);

Memory #(.BITS(16)) U17_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_17_scale_2_real)
);

Memory #(.BITS(16)) U18_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_18_scale_2_real)
);

Memory #(.BITS(16)) U19_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_19_scale_2_real)
);

Memory #(.BITS(16)) U20_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_20_scale_2_real)
);

Memory #(.BITS(16)) U21_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_21_scale_2_real)
);

Memory #(.BITS(16)) U22_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_22_scale_2_real)
);

Memory #(.BITS(16)) U23_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_23_scale_2_real)
);

Memory #(.BITS(16)) U24_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_24_scale_2_real)
);

Memory #(.BITS(16)) U25_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_25_scale_2_real)
);

Memory #(.BITS(16)) U26_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_26_scale_2_real)
);

Memory #(.BITS(16)) U27_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_27_scale_2_real)
);

Memory #(.BITS(16)) U28_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_28_scale_2_real)
);

Memory #(.BITS(16)) U29_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_29_scale_2_real)
);

Memory #(.BITS(16)) U30_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_30_scale_2_real)
);

Memory #(.BITS(16)) U31_SCALE_2_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_31_scale_2_real)
);

Memory #(.BITS(16)) U0_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_0_scale_3_real)
);

Memory #(.BITS(16)) U1_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_1_scale_3_real)
);

Memory #(.BITS(16)) U2_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_2_scale_3_real)
);

Memory #(.BITS(16)) U3_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_3_scale_3_real)
);

Memory #(.BITS(16)) U4_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_4_scale_3_real)
);

Memory #(.BITS(16)) U5_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_5_scale_3_real)
);

Memory #(.BITS(16)) U6_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_6_scale_3_real)
);

Memory #(.BITS(16)) U7_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_7_scale_3_real)
);

Memory #(.BITS(16)) U8_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_8_scale_3_real)
);

Memory #(.BITS(16)) U9_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_9_scale_3_real)
);

Memory #(.BITS(16)) U10_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_10_scale_3_real)
);

Memory #(.BITS(16)) U11_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_11_scale_3_real)
);

Memory #(.BITS(16)) U12_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_12_scale_3_real)
);

Memory #(.BITS(16)) U13_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_13_scale_3_real)
);

Memory #(.BITS(16)) U14_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_14_scale_3_real)
);

Memory #(.BITS(16)) U15_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_15_scale_3_real)
);

Memory #(.BITS(16)) U16_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_16_scale_3_real)
);

Memory #(.BITS(16)) U17_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_17_scale_3_real)
);

Memory #(.BITS(16)) U18_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_18_scale_3_real)
);

Memory #(.BITS(16)) U19_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_19_scale_3_real)
);

Memory #(.BITS(16)) U20_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_20_scale_3_real)
);

Memory #(.BITS(16)) U21_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_21_scale_3_real)
);

Memory #(.BITS(16)) U22_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_22_scale_3_real)
);

Memory #(.BITS(16)) U23_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_23_scale_3_real)
);

Memory #(.BITS(16)) U24_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_24_scale_3_real)
);

Memory #(.BITS(16)) U25_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_25_scale_3_real)
);

Memory #(.BITS(16)) U26_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_26_scale_3_real)
);

Memory #(.BITS(16)) U27_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_27_scale_3_real)
);

Memory #(.BITS(16)) U28_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_28_scale_3_real)
);

Memory #(.BITS(16)) U29_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_29_scale_3_real)
);

Memory #(.BITS(16)) U30_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_30_scale_3_real)
);

Memory #(.BITS(16)) U31_SCALE_3_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_31_scale_3_real)
);

Memory #(.BITS(16)) U0_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_0_scale_4_real)
);

Memory #(.BITS(16)) U1_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_1_scale_4_real)
);

Memory #(.BITS(16)) U2_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_2_scale_4_real)
);

Memory #(.BITS(16)) U3_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_3_scale_4_real)
);

Memory #(.BITS(16)) U4_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_4_scale_4_real)
);

Memory #(.BITS(16)) U5_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_5_scale_4_real)
);

Memory #(.BITS(16)) U6_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_6_scale_4_real)
);

Memory #(.BITS(16)) U7_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_7_scale_4_real)
);

Memory #(.BITS(16)) U8_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_8_scale_4_real)
);

Memory #(.BITS(16)) U9_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_9_scale_4_real)
);

Memory #(.BITS(16)) U10_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_10_scale_4_real)
);

Memory #(.BITS(16)) U11_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_11_scale_4_real)
);

Memory #(.BITS(16)) U12_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_12_scale_4_real)
);

Memory #(.BITS(16)) U13_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_13_scale_4_real)
);

Memory #(.BITS(16)) U14_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_14_scale_4_real)
);

Memory #(.BITS(16)) U15_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_15_scale_4_real)
);

Memory #(.BITS(16)) U16_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_16_scale_4_real)
);

Memory #(.BITS(16)) U17_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_17_scale_4_real)
);

Memory #(.BITS(16)) U18_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_18_scale_4_real)
);

Memory #(.BITS(16)) U19_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_19_scale_4_real)
);

Memory #(.BITS(16)) U20_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_20_scale_4_real)
);

Memory #(.BITS(16)) U21_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_21_scale_4_real)
);

Memory #(.BITS(16)) U22_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_22_scale_4_real)
);

Memory #(.BITS(16)) U23_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_23_scale_4_real)
);

Memory #(.BITS(16)) U24_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_24_scale_4_real)
);

Memory #(.BITS(16)) U25_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_25_scale_4_real)
);

Memory #(.BITS(16)) U26_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_26_scale_4_real)
);

Memory #(.BITS(16)) U27_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_27_scale_4_real)
);

Memory #(.BITS(16)) U28_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_28_scale_4_real)
);

Memory #(.BITS(16)) U29_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_29_scale_4_real)
);

Memory #(.BITS(16)) U30_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_30_scale_4_real)
);

Memory #(.BITS(16)) U31_SCALE_4_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_31_scale_4_real)
);

Memory #(.BITS(16)) U0_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_0_scale_5_real)
);

Memory #(.BITS(16)) U1_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_1_scale_5_real)
);

Memory #(.BITS(16)) U2_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_2_scale_5_real)
);

Memory #(.BITS(16)) U3_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_3_scale_5_real)
);

Memory #(.BITS(16)) U4_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_4_scale_5_real)
);

Memory #(.BITS(16)) U5_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_5_scale_5_real)
);

Memory #(.BITS(16)) U6_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_6_scale_5_real)
);

Memory #(.BITS(16)) U7_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_7_scale_5_real)
);

Memory #(.BITS(16)) U8_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_8_scale_5_real)
);

Memory #(.BITS(16)) U9_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_9_scale_5_real)
);

Memory #(.BITS(16)) U10_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_10_scale_5_real)
);

Memory #(.BITS(16)) U11_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_11_scale_5_real)
);

Memory #(.BITS(16)) U12_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_12_scale_5_real)
);

Memory #(.BITS(16)) U13_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_13_scale_5_real)
);

Memory #(.BITS(16)) U14_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_14_scale_5_real)
);

Memory #(.BITS(16)) U15_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_15_scale_5_real)
);

Memory #(.BITS(16)) U16_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_16_scale_5_real)
);

Memory #(.BITS(16)) U17_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_17_scale_5_real)
);

Memory #(.BITS(16)) U18_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_18_scale_5_real)
);

Memory #(.BITS(16)) U19_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_19_scale_5_real)
);

Memory #(.BITS(16)) U20_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_20_scale_5_real)
);

Memory #(.BITS(16)) U21_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_21_scale_5_real)
);

Memory #(.BITS(16)) U22_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_22_scale_5_real)
);

Memory #(.BITS(16)) U23_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_23_scale_5_real)
);

Memory #(.BITS(16)) U24_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_24_scale_5_real)
);

Memory #(.BITS(16)) U25_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_25_scale_5_real)
);

Memory #(.BITS(16)) U26_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_26_scale_5_real)
);

Memory #(.BITS(16)) U27_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_27_scale_5_real)
);

Memory #(.BITS(16)) U28_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_28_scale_5_real)
);

Memory #(.BITS(16)) U29_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_29_scale_5_real)
);

Memory #(.BITS(16)) U30_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_30_scale_5_real)
);

Memory #(.BITS(16)) U31_SCALE_5_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_31_scale_5_real)
);

Memory #(.BITS(16)) U0_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_0_scale_6_real)
);

Memory #(.BITS(16)) U1_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_1_scale_6_real)
);

Memory #(.BITS(16)) U2_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_2_scale_6_real)
);

Memory #(.BITS(16)) U3_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_3_scale_6_real)
);

Memory #(.BITS(16)) U4_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_4_scale_6_real)
);

Memory #(.BITS(16)) U5_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_5_scale_6_real)
);

Memory #(.BITS(16)) U6_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_6_scale_6_real)
);

Memory #(.BITS(16)) U7_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_7_scale_6_real)
);

Memory #(.BITS(16)) U8_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_8_scale_6_real)
);

Memory #(.BITS(16)) U9_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_9_scale_6_real)
);

Memory #(.BITS(16)) U10_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_10_scale_6_real)
);

Memory #(.BITS(16)) U11_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_11_scale_6_real)
);

Memory #(.BITS(16)) U12_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_12_scale_6_real)
);

Memory #(.BITS(16)) U13_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_13_scale_6_real)
);

Memory #(.BITS(16)) U14_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_14_scale_6_real)
);

Memory #(.BITS(16)) U15_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_15_scale_6_real)
);

Memory #(.BITS(16)) U16_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_16_scale_6_real)
);

Memory #(.BITS(16)) U17_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_17_scale_6_real)
);

Memory #(.BITS(16)) U18_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_18_scale_6_real)
);

Memory #(.BITS(16)) U19_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_19_scale_6_real)
);

Memory #(.BITS(16)) U20_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_20_scale_6_real)
);

Memory #(.BITS(16)) U21_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_21_scale_6_real)
);

Memory #(.BITS(16)) U22_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_22_scale_6_real)
);

Memory #(.BITS(16)) U23_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_23_scale_6_real)
);

Memory #(.BITS(16)) U24_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_24_scale_6_real)
);

Memory #(.BITS(16)) U25_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_25_scale_6_real)
);

Memory #(.BITS(16)) U26_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_26_scale_6_real)
);

Memory #(.BITS(16)) U27_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_27_scale_6_real)
);

Memory #(.BITS(16)) U28_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_28_scale_6_real)
);

Memory #(.BITS(16)) U29_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_29_scale_6_real)
);

Memory #(.BITS(16)) U30_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_30_scale_6_real)
);

Memory #(.BITS(16)) U31_SCALE_6_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_31_scale_6_real)
);

Memory #(.BITS(16)) U0_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_0_scale_7_real)
);

Memory #(.BITS(16)) U1_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_1_scale_7_real)
);

Memory #(.BITS(16)) U2_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_2_scale_7_real)
);

Memory #(.BITS(16)) U3_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_3_scale_7_real)
);

Memory #(.BITS(16)) U4_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_4_scale_7_real)
);

Memory #(.BITS(16)) U5_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_5_scale_7_real)
);

Memory #(.BITS(16)) U6_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_6_scale_7_real)
);

Memory #(.BITS(16)) U7_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_7_scale_7_real)
);

Memory #(.BITS(16)) U8_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_8_scale_7_real)
);

Memory #(.BITS(16)) U9_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_9_scale_7_real)
);

Memory #(.BITS(16)) U10_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_10_scale_7_real)
);

Memory #(.BITS(16)) U11_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_11_scale_7_real)
);

Memory #(.BITS(16)) U12_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_12_scale_7_real)
);

Memory #(.BITS(16)) U13_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_13_scale_7_real)
);

Memory #(.BITS(16)) U14_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_14_scale_7_real)
);

Memory #(.BITS(16)) U15_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_15_scale_7_real)
);

Memory #(.BITS(16)) U16_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_16_scale_7_real)
);

Memory #(.BITS(16)) U17_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_17_scale_7_real)
);

Memory #(.BITS(16)) U18_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_18_scale_7_real)
);

Memory #(.BITS(16)) U19_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_19_scale_7_real)
);

Memory #(.BITS(16)) U20_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_20_scale_7_real)
);

Memory #(.BITS(16)) U21_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_21_scale_7_real)
);

Memory #(.BITS(16)) U22_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_22_scale_7_real)
);

Memory #(.BITS(16)) U23_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_23_scale_7_real)
);

Memory #(.BITS(16)) U24_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_24_scale_7_real)
);

Memory #(.BITS(16)) U25_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_25_scale_7_real)
);

Memory #(.BITS(16)) U26_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_26_scale_7_real)
);

Memory #(.BITS(16)) U27_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_27_scale_7_real)
);

Memory #(.BITS(16)) U28_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_28_scale_7_real)
);

Memory #(.BITS(16)) U29_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_29_scale_7_real)
);

Memory #(.BITS(16)) U30_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_30_scale_7_real)
);

Memory #(.BITS(16)) U31_SCALE_7_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_31_scale_7_real)
);

Memory #(.BITS(16)) U0_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_0_scale_8_real)
);

Memory #(.BITS(16)) U1_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_1_scale_8_real)
);

Memory #(.BITS(16)) U2_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_2_scale_8_real)
);

Memory #(.BITS(16)) U3_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_3_scale_8_real)
);

Memory #(.BITS(16)) U4_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_4_scale_8_real)
);

Memory #(.BITS(16)) U5_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_5_scale_8_real)
);

Memory #(.BITS(16)) U6_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_6_scale_8_real)
);

Memory #(.BITS(16)) U7_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_7_scale_8_real)
);

Memory #(.BITS(16)) U8_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_8_scale_8_real)
);

Memory #(.BITS(16)) U9_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_9_scale_8_real)
);

Memory #(.BITS(16)) U10_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_10_scale_8_real)
);

Memory #(.BITS(16)) U11_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_11_scale_8_real)
);

Memory #(.BITS(16)) U12_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_12_scale_8_real)
);

Memory #(.BITS(16)) U13_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_13_scale_8_real)
);

Memory #(.BITS(16)) U14_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_14_scale_8_real)
);

Memory #(.BITS(16)) U15_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_15_scale_8_real)
);

Memory #(.BITS(16)) U16_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_16_scale_8_real)
);

Memory #(.BITS(16)) U17_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_17_scale_8_real)
);

Memory #(.BITS(16)) U18_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_18_scale_8_real)
);

Memory #(.BITS(16)) U19_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_19_scale_8_real)
);

Memory #(.BITS(16)) U20_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_20_scale_8_real)
);

Memory #(.BITS(16)) U21_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_21_scale_8_real)
);

Memory #(.BITS(16)) U22_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_22_scale_8_real)
);

Memory #(.BITS(16)) U23_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_23_scale_8_real)
);

Memory #(.BITS(16)) U24_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_24_scale_8_real)
);

Memory #(.BITS(16)) U25_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_25_scale_8_real)
);

Memory #(.BITS(16)) U26_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_26_scale_8_real)
);

Memory #(.BITS(16)) U27_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_27_scale_8_real)
);

Memory #(.BITS(16)) U28_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_28_scale_8_real)
);

Memory #(.BITS(16)) U29_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_29_scale_8_real)
);

Memory #(.BITS(16)) U30_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_30_scale_8_real)
);

Memory #(.BITS(16)) U31_SCALE_8_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_31_scale_8_real)
);

Memory #(.BITS(16)) U0_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_0_scale_9_real)
);

Memory #(.BITS(16)) U1_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_1_scale_9_real)
);

Memory #(.BITS(16)) U2_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_2_scale_9_real)
);

Memory #(.BITS(16)) U3_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_3_scale_9_real)
);

Memory #(.BITS(16)) U4_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_4_scale_9_real)
);

Memory #(.BITS(16)) U5_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_5_scale_9_real)
);

Memory #(.BITS(16)) U6_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_6_scale_9_real)
);

Memory #(.BITS(16)) U7_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_7_scale_9_real)
);

Memory #(.BITS(16)) U8_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_8_scale_9_real)
);

Memory #(.BITS(16)) U9_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_9_scale_9_real)
);

Memory #(.BITS(16)) U10_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_10_scale_9_real)
);

Memory #(.BITS(16)) U11_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_11_scale_9_real)
);

Memory #(.BITS(16)) U12_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_12_scale_9_real)
);

Memory #(.BITS(16)) U13_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_13_scale_9_real)
);

Memory #(.BITS(16)) U14_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_14_scale_9_real)
);

Memory #(.BITS(16)) U15_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_15_scale_9_real)
);

Memory #(.BITS(16)) U16_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_16_scale_9_real)
);

Memory #(.BITS(16)) U17_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_17_scale_9_real)
);

Memory #(.BITS(16)) U18_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_18_scale_9_real)
);

Memory #(.BITS(16)) U19_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_19_scale_9_real)
);

Memory #(.BITS(16)) U20_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_20_scale_9_real)
);

Memory #(.BITS(16)) U21_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_21_scale_9_real)
);

Memory #(.BITS(16)) U22_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_22_scale_9_real)
);

Memory #(.BITS(16)) U23_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_23_scale_9_real)
);

Memory #(.BITS(16)) U24_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_24_scale_9_real)
);

Memory #(.BITS(16)) U25_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_25_scale_9_real)
);

Memory #(.BITS(16)) U26_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_26_scale_9_real)
);

Memory #(.BITS(16)) U27_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_27_scale_9_real)
);

Memory #(.BITS(16)) U28_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_28_scale_9_real)
);

Memory #(.BITS(16)) U29_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_29_scale_9_real)
);

Memory #(.BITS(16)) U30_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_30_scale_9_real)
);

Memory #(.BITS(16)) U31_SCALE_9_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_31_scale_9_real)
);

Memory #(.BITS(16)) U0_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_0_scale_10_real)
);

Memory #(.BITS(16)) U1_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_1_scale_10_real)
);

Memory #(.BITS(16)) U2_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_2_scale_10_real)
);

Memory #(.BITS(16)) U3_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_3_scale_10_real)
);

Memory #(.BITS(16)) U4_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_4_scale_10_real)
);

Memory #(.BITS(16)) U5_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_5_scale_10_real)
);

Memory #(.BITS(16)) U6_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_6_scale_10_real)
);

Memory #(.BITS(16)) U7_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_7_scale_10_real)
);

Memory #(.BITS(16)) U8_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_8_scale_10_real)
);

Memory #(.BITS(16)) U9_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_9_scale_10_real)
);

Memory #(.BITS(16)) U10_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_10_scale_10_real)
);

Memory #(.BITS(16)) U11_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_11_scale_10_real)
);

Memory #(.BITS(16)) U12_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_12_scale_10_real)
);

Memory #(.BITS(16)) U13_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_13_scale_10_real)
);

Memory #(.BITS(16)) U14_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_14_scale_10_real)
);

Memory #(.BITS(16)) U15_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_15_scale_10_real)
);

Memory #(.BITS(16)) U16_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_16_scale_10_real)
);

Memory #(.BITS(16)) U17_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_17_scale_10_real)
);

Memory #(.BITS(16)) U18_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_18_scale_10_real)
);

Memory #(.BITS(16)) U19_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_19_scale_10_real)
);

Memory #(.BITS(16)) U20_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_20_scale_10_real)
);

Memory #(.BITS(16)) U21_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_21_scale_10_real)
);

Memory #(.BITS(16)) U22_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_22_scale_10_real)
);

Memory #(.BITS(16)) U23_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_23_scale_10_real)
);

Memory #(.BITS(16)) U24_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_24_scale_10_real)
);

Memory #(.BITS(16)) U25_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_25_scale_10_real)
);

Memory #(.BITS(16)) U26_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_26_scale_10_real)
);

Memory #(.BITS(16)) U27_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_27_scale_10_real)
);

Memory #(.BITS(16)) U28_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_28_scale_10_real)
);

Memory #(.BITS(16)) U29_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_29_scale_10_real)
);

Memory #(.BITS(16)) U30_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_30_scale_10_real)
);

Memory #(.BITS(16)) U31_SCALE_10_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_31_scale_10_real)
);

Memory #(.BITS(16)) U0_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_0_scale_11_real)
);

Memory #(.BITS(16)) U1_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_1_scale_11_real)
);

Memory #(.BITS(16)) U2_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_2_scale_11_real)
);

Memory #(.BITS(16)) U3_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_3_scale_11_real)
);

Memory #(.BITS(16)) U4_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_4_scale_11_real)
);

Memory #(.BITS(16)) U5_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_5_scale_11_real)
);

Memory #(.BITS(16)) U6_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_6_scale_11_real)
);

Memory #(.BITS(16)) U7_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_7_scale_11_real)
);

Memory #(.BITS(16)) U8_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_8_scale_11_real)
);

Memory #(.BITS(16)) U9_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_9_scale_11_real)
);

Memory #(.BITS(16)) U10_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_10_scale_11_real)
);

Memory #(.BITS(16)) U11_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_11_scale_11_real)
);

Memory #(.BITS(16)) U12_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_12_scale_11_real)
);

Memory #(.BITS(16)) U13_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_13_scale_11_real)
);

Memory #(.BITS(16)) U14_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_14_scale_11_real)
);

Memory #(.BITS(16)) U15_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_15_scale_11_real)
);

Memory #(.BITS(16)) U16_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_16_scale_11_real)
);

Memory #(.BITS(16)) U17_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_17_scale_11_real)
);

Memory #(.BITS(16)) U18_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_18_scale_11_real)
);

Memory #(.BITS(16)) U19_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_19_scale_11_real)
);

Memory #(.BITS(16)) U20_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_20_scale_11_real)
);

Memory #(.BITS(16)) U21_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_21_scale_11_real)
);

Memory #(.BITS(16)) U22_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_22_scale_11_real)
);

Memory #(.BITS(16)) U23_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_23_scale_11_real)
);

Memory #(.BITS(16)) U24_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_24_scale_11_real)
);

Memory #(.BITS(16)) U25_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_25_scale_11_real)
);

Memory #(.BITS(16)) U26_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_26_scale_11_real)
);

Memory #(.BITS(16)) U27_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_27_scale_11_real)
);

Memory #(.BITS(16)) U28_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_28_scale_11_real)
);

Memory #(.BITS(16)) U29_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_29_scale_11_real)
);

Memory #(.BITS(16)) U30_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_30_scale_11_real)
);

Memory #(.BITS(16)) U31_SCALE_11_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_31_scale_11_real)
);

Memory #(.BITS(16)) U0_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_0_scale_12_real)
);

Memory #(.BITS(16)) U1_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_1_scale_12_real)
);

Memory #(.BITS(16)) U2_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_2_scale_12_real)
);

Memory #(.BITS(16)) U3_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_3_scale_12_real)
);

Memory #(.BITS(16)) U4_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_4_scale_12_real)
);

Memory #(.BITS(16)) U5_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_5_scale_12_real)
);

Memory #(.BITS(16)) U6_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_6_scale_12_real)
);

Memory #(.BITS(16)) U7_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_7_scale_12_real)
);

Memory #(.BITS(16)) U8_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_8_scale_12_real)
);

Memory #(.BITS(16)) U9_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_9_scale_12_real)
);

Memory #(.BITS(16)) U10_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_10_scale_12_real)
);

Memory #(.BITS(16)) U11_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_11_scale_12_real)
);

Memory #(.BITS(16)) U12_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_12_scale_12_real)
);

Memory #(.BITS(16)) U13_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_13_scale_12_real)
);

Memory #(.BITS(16)) U14_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_14_scale_12_real)
);

Memory #(.BITS(16)) U15_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_15_scale_12_real)
);

Memory #(.BITS(16)) U16_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_16_scale_12_real)
);

Memory #(.BITS(16)) U17_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_17_scale_12_real)
);

Memory #(.BITS(16)) U18_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_18_scale_12_real)
);

Memory #(.BITS(16)) U19_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_19_scale_12_real)
);

Memory #(.BITS(16)) U20_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_20_scale_12_real)
);

Memory #(.BITS(16)) U21_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_21_scale_12_real)
);

Memory #(.BITS(16)) U22_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_22_scale_12_real)
);

Memory #(.BITS(16)) U23_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_23_scale_12_real)
);

Memory #(.BITS(16)) U24_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_24_scale_12_real)
);

Memory #(.BITS(16)) U25_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_25_scale_12_real)
);

Memory #(.BITS(16)) U26_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_26_scale_12_real)
);

Memory #(.BITS(16)) U27_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_27_scale_12_real)
);

Memory #(.BITS(16)) U28_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_28_scale_12_real)
);

Memory #(.BITS(16)) U29_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_29_scale_12_real)
);

Memory #(.BITS(16)) U30_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_30_scale_12_real)
);

Memory #(.BITS(16)) U31_SCALE_12_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_31_scale_12_real)
);

Memory #(.BITS(16)) U0_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_0_scale_13_real)
);

Memory #(.BITS(16)) U1_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_1_scale_13_real)
);

Memory #(.BITS(16)) U2_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_2_scale_13_real)
);

Memory #(.BITS(16)) U3_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_3_scale_13_real)
);

Memory #(.BITS(16)) U4_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_4_scale_13_real)
);

Memory #(.BITS(16)) U5_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_5_scale_13_real)
);

Memory #(.BITS(16)) U6_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_6_scale_13_real)
);

Memory #(.BITS(16)) U7_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_7_scale_13_real)
);

Memory #(.BITS(16)) U8_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_8_scale_13_real)
);

Memory #(.BITS(16)) U9_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_9_scale_13_real)
);

Memory #(.BITS(16)) U10_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_10_scale_13_real)
);

Memory #(.BITS(16)) U11_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_11_scale_13_real)
);

Memory #(.BITS(16)) U12_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_12_scale_13_real)
);

Memory #(.BITS(16)) U13_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_13_scale_13_real)
);

Memory #(.BITS(16)) U14_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_14_scale_13_real)
);

Memory #(.BITS(16)) U15_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_15_scale_13_real)
);

Memory #(.BITS(16)) U16_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_16_scale_13_real)
);

Memory #(.BITS(16)) U17_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_17_scale_13_real)
);

Memory #(.BITS(16)) U18_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_18_scale_13_real)
);

Memory #(.BITS(16)) U19_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_19_scale_13_real)
);

Memory #(.BITS(16)) U20_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_20_scale_13_real)
);

Memory #(.BITS(16)) U21_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_21_scale_13_real)
);

Memory #(.BITS(16)) U22_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_22_scale_13_real)
);

Memory #(.BITS(16)) U23_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_23_scale_13_real)
);

Memory #(.BITS(16)) U24_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_24_scale_13_real)
);

Memory #(.BITS(16)) U25_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_25_scale_13_real)
);

Memory #(.BITS(16)) U26_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_26_scale_13_real)
);

Memory #(.BITS(16)) U27_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_27_scale_13_real)
);

Memory #(.BITS(16)) U28_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_28_scale_13_real)
);

Memory #(.BITS(16)) U29_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_29_scale_13_real)
);

Memory #(.BITS(16)) U30_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_30_scale_13_real)
);

Memory #(.BITS(16)) U31_SCALE_13_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_31_scale_13_real)
);

Memory #(.BITS(16)) U0_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_0_scale_14_real)
);

Memory #(.BITS(16)) U1_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_1_scale_14_real)
);

Memory #(.BITS(16)) U2_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_2_scale_14_real)
);

Memory #(.BITS(16)) U3_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_3_scale_14_real)
);

Memory #(.BITS(16)) U4_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_4_scale_14_real)
);

Memory #(.BITS(16)) U5_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_5_scale_14_real)
);

Memory #(.BITS(16)) U6_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_6_scale_14_real)
);

Memory #(.BITS(16)) U7_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_7_scale_14_real)
);

Memory #(.BITS(16)) U8_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_8_scale_14_real)
);

Memory #(.BITS(16)) U9_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_9_scale_14_real)
);

Memory #(.BITS(16)) U10_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_10_scale_14_real)
);

Memory #(.BITS(16)) U11_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_11_scale_14_real)
);

Memory #(.BITS(16)) U12_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_12_scale_14_real)
);

Memory #(.BITS(16)) U13_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_13_scale_14_real)
);

Memory #(.BITS(16)) U14_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_14_scale_14_real)
);

Memory #(.BITS(16)) U15_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_15_scale_14_real)
);

Memory #(.BITS(16)) U16_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_16_scale_14_real)
);

Memory #(.BITS(16)) U17_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_17_scale_14_real)
);

Memory #(.BITS(16)) U18_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_18_scale_14_real)
);

Memory #(.BITS(16)) U19_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_19_scale_14_real)
);

Memory #(.BITS(16)) U20_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_20_scale_14_real)
);

Memory #(.BITS(16)) U21_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_21_scale_14_real)
);

Memory #(.BITS(16)) U22_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_22_scale_14_real)
);

Memory #(.BITS(16)) U23_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_23_scale_14_real)
);

Memory #(.BITS(16)) U24_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_24_scale_14_real)
);

Memory #(.BITS(16)) U25_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_25_scale_14_real)
);

Memory #(.BITS(16)) U26_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_26_scale_14_real)
);

Memory #(.BITS(16)) U27_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_27_scale_14_real)
);

Memory #(.BITS(16)) U28_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_28_scale_14_real)
);

Memory #(.BITS(16)) U29_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_29_scale_14_real)
);

Memory #(.BITS(16)) U30_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_30_scale_14_real)
);

Memory #(.BITS(16)) U31_SCALE_14_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_31_scale_14_real)
);

Memory #(.BITS(16)) U0_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_0),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_0_scale_15_real)
);

Memory #(.BITS(16)) U1_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_1),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_1_scale_15_real)
);

Memory #(.BITS(16)) U2_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_2),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_2_scale_15_real)
);

Memory #(.BITS(16)) U3_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_3),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_3_scale_15_real)
);

Memory #(.BITS(16)) U4_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_4),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_4_scale_15_real)
);

Memory #(.BITS(16)) U5_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_5),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_5_scale_15_real)
);

Memory #(.BITS(16)) U6_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_6),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_6_scale_15_real)
);

Memory #(.BITS(16)) U7_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_7),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_7_scale_15_real)
);

Memory #(.BITS(16)) U8_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_8),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_8_scale_15_real)
);

Memory #(.BITS(16)) U9_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_9),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_9_scale_15_real)
);

Memory #(.BITS(16)) U10_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_10),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_10_scale_15_real)
);

Memory #(.BITS(16)) U11_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_11),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_11_scale_15_real)
);

Memory #(.BITS(16)) U12_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_12),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_12_scale_15_real)
);

Memory #(.BITS(16)) U13_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_13),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_13_scale_15_real)
);

Memory #(.BITS(16)) U14_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_14),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_14_scale_15_real)
);

Memory #(.BITS(16)) U15_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_15),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_15_scale_15_real)
);

Memory #(.BITS(16)) U16_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_16),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_16_scale_15_real)
);

Memory #(.BITS(16)) U17_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_17),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_17_scale_15_real)
);

Memory #(.BITS(16)) U18_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_18),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_18_scale_15_real)
);

Memory #(.BITS(16)) U19_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_19),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_19_scale_15_real)
);

Memory #(.BITS(16)) U20_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_20),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_20_scale_15_real)
);

Memory #(.BITS(16)) U21_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_21),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_21_scale_15_real)
);

Memory #(.BITS(16)) U22_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_22),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_22_scale_15_real)
);

Memory #(.BITS(16)) U23_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_23),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_23_scale_15_real)
);

Memory #(.BITS(16)) U24_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_24),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_24_scale_15_real)
);

Memory #(.BITS(16)) U25_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_25),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_25_scale_15_real)
);

Memory #(.BITS(16)) U26_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_26),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_26_scale_15_real)
);

Memory #(.BITS(16)) U27_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_27),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_27_scale_15_real)
);

Memory #(.BITS(16)) U28_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_28),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_28_scale_15_real)
);

Memory #(.BITS(16)) U29_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_29),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_29_scale_15_real)
);

Memory #(.BITS(16)) U30_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_30),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_30_scale_15_real)
);

Memory #(.BITS(16)) U31_SCALE_15_REAL_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_real_31),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_31_scale_15_real)
);










Memory #(.BITS(16)) U0_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_0_scale_1_imag)
);

Memory #(.BITS(16)) U1_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_1_scale_1_imag)
);

Memory #(.BITS(16)) U2_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_2_scale_1_imag)
);

Memory #(.BITS(16)) U3_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_3_scale_1_imag)
);

Memory #(.BITS(16)) U4_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_4_scale_1_imag)
);

Memory #(.BITS(16)) U5_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_5_scale_1_imag)
);

Memory #(.BITS(16)) U6_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_6_scale_1_imag)
);

Memory #(.BITS(16)) U7_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_7_scale_1_imag)
);

Memory #(.BITS(16)) U8_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_8_scale_1_imag)
);

Memory #(.BITS(16)) U9_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_9_scale_1_imag)
);

Memory #(.BITS(16)) U10_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_10_scale_1_imag)
);

Memory #(.BITS(16)) U11_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_11_scale_1_imag)
);

Memory #(.BITS(16)) U12_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_12_scale_1_imag)
);

Memory #(.BITS(16)) U13_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_13_scale_1_imag)
);

Memory #(.BITS(16)) U14_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_14_scale_1_imag)
);

Memory #(.BITS(16)) U15_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_15_scale_1_imag)
);

Memory #(.BITS(16)) U16_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_16_scale_1_imag)
);

Memory #(.BITS(16)) U17_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_17_scale_1_imag)
);

Memory #(.BITS(16)) U18_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_18_scale_1_imag)
);

Memory #(.BITS(16)) U19_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_19_scale_1_imag)
);

Memory #(.BITS(16)) U20_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_20_scale_1_imag)
);

Memory #(.BITS(16)) U21_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_21_scale_1_imag)
);

Memory #(.BITS(16)) U22_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_22_scale_1_imag)
);

Memory #(.BITS(16)) U23_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_23_scale_1_imag)
);

Memory #(.BITS(16)) U24_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_24_scale_1_imag)
);

Memory #(.BITS(16)) U25_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_25_scale_1_imag)
);

Memory #(.BITS(16)) U26_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_26_scale_1_imag)
);

Memory #(.BITS(16)) U27_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_27_scale_1_imag)
);

Memory #(.BITS(16)) U28_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_28_scale_1_imag)
);

Memory #(.BITS(16)) U29_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_29_scale_1_imag)
);

Memory #(.BITS(16)) U30_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_30_scale_1_imag)
);

Memory #(.BITS(16)) U31_SCALE_1_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_1),
    .read_data(memory_31_scale_1_imag)
);

Memory #(.BITS(16)) U0_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_0_scale_2_imag)
);

Memory #(.BITS(16)) U1_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_1_scale_2_imag)
);

Memory #(.BITS(16)) U2_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_2_scale_2_imag)
);

Memory #(.BITS(16)) U3_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_3_scale_2_imag)
);

Memory #(.BITS(16)) U4_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_4_scale_2_imag)
);

Memory #(.BITS(16)) U5_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_5_scale_2_imag)
);

Memory #(.BITS(16)) U6_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_6_scale_2_imag)
);

Memory #(.BITS(16)) U7_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_7_scale_2_imag)
);

Memory #(.BITS(16)) U8_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_8_scale_2_imag)
);

Memory #(.BITS(16)) U9_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_9_scale_2_imag)
);

Memory #(.BITS(16)) U10_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_10_scale_2_imag)
);

Memory #(.BITS(16)) U11_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_11_scale_2_imag)
);

Memory #(.BITS(16)) U12_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_12_scale_2_imag)
);

Memory #(.BITS(16)) U13_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_13_scale_2_imag)
);

Memory #(.BITS(16)) U14_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_14_scale_2_imag)
);

Memory #(.BITS(16)) U15_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_15_scale_2_imag)
);

Memory #(.BITS(16)) U16_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_16_scale_2_imag)
);

Memory #(.BITS(16)) U17_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_17_scale_2_imag)
);

Memory #(.BITS(16)) U18_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_18_scale_2_imag)
);

Memory #(.BITS(16)) U19_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_19_scale_2_imag)
);

Memory #(.BITS(16)) U20_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_20_scale_2_imag)
);

Memory #(.BITS(16)) U21_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_21_scale_2_imag)
);

Memory #(.BITS(16)) U22_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_22_scale_2_imag)
);

Memory #(.BITS(16)) U23_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_23_scale_2_imag)
);

Memory #(.BITS(16)) U24_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_24_scale_2_imag)
);

Memory #(.BITS(16)) U25_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_25_scale_2_imag)
);

Memory #(.BITS(16)) U26_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_26_scale_2_imag)
);

Memory #(.BITS(16)) U27_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_27_scale_2_imag)
);

Memory #(.BITS(16)) U28_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_28_scale_2_imag)
);

Memory #(.BITS(16)) U29_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_29_scale_2_imag)
);

Memory #(.BITS(16)) U30_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_30_scale_2_imag)
);

Memory #(.BITS(16)) U31_SCALE_2_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_2),
    .read_data(memory_31_scale_2_imag)
);

Memory #(.BITS(16)) U0_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_0_scale_3_imag)
);

Memory #(.BITS(16)) U1_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_1_scale_3_imag)
);

Memory #(.BITS(16)) U2_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_2_scale_3_imag)
);

Memory #(.BITS(16)) U3_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_3_scale_3_imag)
);

Memory #(.BITS(16)) U4_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_4_scale_3_imag)
);

Memory #(.BITS(16)) U5_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_5_scale_3_imag)
);

Memory #(.BITS(16)) U6_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_6_scale_3_imag)
);

Memory #(.BITS(16)) U7_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_7_scale_3_imag)
);

Memory #(.BITS(16)) U8_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_8_scale_3_imag)
);

Memory #(.BITS(16)) U9_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_9_scale_3_imag)
);

Memory #(.BITS(16)) U10_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_10_scale_3_imag)
);

Memory #(.BITS(16)) U11_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_11_scale_3_imag)
);

Memory #(.BITS(16)) U12_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_12_scale_3_imag)
);

Memory #(.BITS(16)) U13_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_13_scale_3_imag)
);

Memory #(.BITS(16)) U14_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_14_scale_3_imag)
);

Memory #(.BITS(16)) U15_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_15_scale_3_imag)
);

Memory #(.BITS(16)) U16_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_16_scale_3_imag)
);

Memory #(.BITS(16)) U17_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_17_scale_3_imag)
);

Memory #(.BITS(16)) U18_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_18_scale_3_imag)
);

Memory #(.BITS(16)) U19_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_19_scale_3_imag)
);

Memory #(.BITS(16)) U20_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_20_scale_3_imag)
);

Memory #(.BITS(16)) U21_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_21_scale_3_imag)
);

Memory #(.BITS(16)) U22_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_22_scale_3_imag)
);

Memory #(.BITS(16)) U23_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_23_scale_3_imag)
);

Memory #(.BITS(16)) U24_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_24_scale_3_imag)
);

Memory #(.BITS(16)) U25_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_25_scale_3_imag)
);

Memory #(.BITS(16)) U26_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_26_scale_3_imag)
);

Memory #(.BITS(16)) U27_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_27_scale_3_imag)
);

Memory #(.BITS(16)) U28_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_28_scale_3_imag)
);

Memory #(.BITS(16)) U29_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_29_scale_3_imag)
);

Memory #(.BITS(16)) U30_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_30_scale_3_imag)
);

Memory #(.BITS(16)) U31_SCALE_3_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_3),
    .read_data(memory_31_scale_3_imag)
);

Memory #(.BITS(16)) U0_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_0_scale_4_imag)
);

Memory #(.BITS(16)) U1_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_1_scale_4_imag)
);

Memory #(.BITS(16)) U2_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_2_scale_4_imag)
);

Memory #(.BITS(16)) U3_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_3_scale_4_imag)
);

Memory #(.BITS(16)) U4_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_4_scale_4_imag)
);

Memory #(.BITS(16)) U5_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_5_scale_4_imag)
);

Memory #(.BITS(16)) U6_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_6_scale_4_imag)
);

Memory #(.BITS(16)) U7_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_7_scale_4_imag)
);

Memory #(.BITS(16)) U8_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_8_scale_4_imag)
);

Memory #(.BITS(16)) U9_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_9_scale_4_imag)
);

Memory #(.BITS(16)) U10_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_10_scale_4_imag)
);

Memory #(.BITS(16)) U11_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_11_scale_4_imag)
);

Memory #(.BITS(16)) U12_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_12_scale_4_imag)
);

Memory #(.BITS(16)) U13_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_13_scale_4_imag)
);

Memory #(.BITS(16)) U14_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_14_scale_4_imag)
);

Memory #(.BITS(16)) U15_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_15_scale_4_imag)
);

Memory #(.BITS(16)) U16_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_16_scale_4_imag)
);

Memory #(.BITS(16)) U17_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_17_scale_4_imag)
);

Memory #(.BITS(16)) U18_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_18_scale_4_imag)
);

Memory #(.BITS(16)) U19_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_19_scale_4_imag)
);

Memory #(.BITS(16)) U20_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_20_scale_4_imag)
);

Memory #(.BITS(16)) U21_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_21_scale_4_imag)
);

Memory #(.BITS(16)) U22_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_22_scale_4_imag)
);

Memory #(.BITS(16)) U23_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_23_scale_4_imag)
);

Memory #(.BITS(16)) U24_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_24_scale_4_imag)
);

Memory #(.BITS(16)) U25_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_25_scale_4_imag)
);

Memory #(.BITS(16)) U26_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_26_scale_4_imag)
);

Memory #(.BITS(16)) U27_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_27_scale_4_imag)
);

Memory #(.BITS(16)) U28_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_28_scale_4_imag)
);

Memory #(.BITS(16)) U29_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_29_scale_4_imag)
);

Memory #(.BITS(16)) U30_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_30_scale_4_imag)
);

Memory #(.BITS(16)) U31_SCALE_4_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_4),
    .read_data(memory_31_scale_4_imag)
);

Memory #(.BITS(16)) U0_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_0_scale_5_imag)
);

Memory #(.BITS(16)) U1_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_1_scale_5_imag)
);

Memory #(.BITS(16)) U2_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_2_scale_5_imag)
);

Memory #(.BITS(16)) U3_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_3_scale_5_imag)
);

Memory #(.BITS(16)) U4_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_4_scale_5_imag)
);

Memory #(.BITS(16)) U5_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_5_scale_5_imag)
);

Memory #(.BITS(16)) U6_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_6_scale_5_imag)
);

Memory #(.BITS(16)) U7_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_7_scale_5_imag)
);

Memory #(.BITS(16)) U8_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_8_scale_5_imag)
);

Memory #(.BITS(16)) U9_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_9_scale_5_imag)
);

Memory #(.BITS(16)) U10_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_10_scale_5_imag)
);

Memory #(.BITS(16)) U11_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_11_scale_5_imag)
);

Memory #(.BITS(16)) U12_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_12_scale_5_imag)
);

Memory #(.BITS(16)) U13_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_13_scale_5_imag)
);

Memory #(.BITS(16)) U14_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_14_scale_5_imag)
);

Memory #(.BITS(16)) U15_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_15_scale_5_imag)
);

Memory #(.BITS(16)) U16_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_16_scale_5_imag)
);

Memory #(.BITS(16)) U17_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_17_scale_5_imag)
);

Memory #(.BITS(16)) U18_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_18_scale_5_imag)
);

Memory #(.BITS(16)) U19_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_19_scale_5_imag)
);

Memory #(.BITS(16)) U20_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_20_scale_5_imag)
);

Memory #(.BITS(16)) U21_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_21_scale_5_imag)
);

Memory #(.BITS(16)) U22_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_22_scale_5_imag)
);

Memory #(.BITS(16)) U23_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_23_scale_5_imag)
);

Memory #(.BITS(16)) U24_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_24_scale_5_imag)
);

Memory #(.BITS(16)) U25_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_25_scale_5_imag)
);

Memory #(.BITS(16)) U26_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_26_scale_5_imag)
);

Memory #(.BITS(16)) U27_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_27_scale_5_imag)
);

Memory #(.BITS(16)) U28_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_28_scale_5_imag)
);

Memory #(.BITS(16)) U29_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_29_scale_5_imag)
);

Memory #(.BITS(16)) U30_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_30_scale_5_imag)
);

Memory #(.BITS(16)) U31_SCALE_5_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_5),
    .read_data(memory_31_scale_5_imag)
);

Memory #(.BITS(16)) U0_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_0_scale_6_imag)
);

Memory #(.BITS(16)) U1_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_1_scale_6_imag)
);

Memory #(.BITS(16)) U2_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_2_scale_6_imag)
);

Memory #(.BITS(16)) U3_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_3_scale_6_imag)
);

Memory #(.BITS(16)) U4_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_4_scale_6_imag)
);

Memory #(.BITS(16)) U5_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_5_scale_6_imag)
);

Memory #(.BITS(16)) U6_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_6_scale_6_imag)
);

Memory #(.BITS(16)) U7_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_7_scale_6_imag)
);

Memory #(.BITS(16)) U8_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_8_scale_6_imag)
);

Memory #(.BITS(16)) U9_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_9_scale_6_imag)
);

Memory #(.BITS(16)) U10_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_10_scale_6_imag)
);

Memory #(.BITS(16)) U11_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_11_scale_6_imag)
);

Memory #(.BITS(16)) U12_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_12_scale_6_imag)
);

Memory #(.BITS(16)) U13_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_13_scale_6_imag)
);

Memory #(.BITS(16)) U14_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_14_scale_6_imag)
);

Memory #(.BITS(16)) U15_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_15_scale_6_imag)
);

Memory #(.BITS(16)) U16_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_16_scale_6_imag)
);

Memory #(.BITS(16)) U17_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_17_scale_6_imag)
);

Memory #(.BITS(16)) U18_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_18_scale_6_imag)
);

Memory #(.BITS(16)) U19_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_19_scale_6_imag)
);

Memory #(.BITS(16)) U20_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_20_scale_6_imag)
);

Memory #(.BITS(16)) U21_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_21_scale_6_imag)
);

Memory #(.BITS(16)) U22_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_22_scale_6_imag)
);

Memory #(.BITS(16)) U23_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_23_scale_6_imag)
);

Memory #(.BITS(16)) U24_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_24_scale_6_imag)
);

Memory #(.BITS(16)) U25_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_25_scale_6_imag)
);

Memory #(.BITS(16)) U26_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_26_scale_6_imag)
);

Memory #(.BITS(16)) U27_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_27_scale_6_imag)
);

Memory #(.BITS(16)) U28_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_28_scale_6_imag)
);

Memory #(.BITS(16)) U29_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_29_scale_6_imag)
);

Memory #(.BITS(16)) U30_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_30_scale_6_imag)
);

Memory #(.BITS(16)) U31_SCALE_6_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_6),
    .read_data(memory_31_scale_6_imag)
);

Memory #(.BITS(16)) U0_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_0_scale_7_imag)
);

Memory #(.BITS(16)) U1_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_1_scale_7_imag)
);

Memory #(.BITS(16)) U2_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_2_scale_7_imag)
);

Memory #(.BITS(16)) U3_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_3_scale_7_imag)
);

Memory #(.BITS(16)) U4_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_4_scale_7_imag)
);

Memory #(.BITS(16)) U5_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_5_scale_7_imag)
);

Memory #(.BITS(16)) U6_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_6_scale_7_imag)
);

Memory #(.BITS(16)) U7_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_7_scale_7_imag)
);

Memory #(.BITS(16)) U8_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_8_scale_7_imag)
);

Memory #(.BITS(16)) U9_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_9_scale_7_imag)
);

Memory #(.BITS(16)) U10_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_10_scale_7_imag)
);

Memory #(.BITS(16)) U11_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_11_scale_7_imag)
);

Memory #(.BITS(16)) U12_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_12_scale_7_imag)
);

Memory #(.BITS(16)) U13_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_13_scale_7_imag)
);

Memory #(.BITS(16)) U14_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_14_scale_7_imag)
);

Memory #(.BITS(16)) U15_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_15_scale_7_imag)
);

Memory #(.BITS(16)) U16_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_16_scale_7_imag)
);

Memory #(.BITS(16)) U17_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_17_scale_7_imag)
);

Memory #(.BITS(16)) U18_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_18_scale_7_imag)
);

Memory #(.BITS(16)) U19_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_19_scale_7_imag)
);

Memory #(.BITS(16)) U20_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_20_scale_7_imag)
);

Memory #(.BITS(16)) U21_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_21_scale_7_imag)
);

Memory #(.BITS(16)) U22_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_22_scale_7_imag)
);

Memory #(.BITS(16)) U23_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_23_scale_7_imag)
);

Memory #(.BITS(16)) U24_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_24_scale_7_imag)
);

Memory #(.BITS(16)) U25_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_25_scale_7_imag)
);

Memory #(.BITS(16)) U26_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_26_scale_7_imag)
);

Memory #(.BITS(16)) U27_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_27_scale_7_imag)
);

Memory #(.BITS(16)) U28_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_28_scale_7_imag)
);

Memory #(.BITS(16)) U29_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_29_scale_7_imag)
);

Memory #(.BITS(16)) U30_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_30_scale_7_imag)
);

Memory #(.BITS(16)) U31_SCALE_7_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_7),
    .read_data(memory_31_scale_7_imag)
);

Memory #(.BITS(16)) U0_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_0_scale_8_imag)
);

Memory #(.BITS(16)) U1_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_1_scale_8_imag)
);

Memory #(.BITS(16)) U2_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_2_scale_8_imag)
);

Memory #(.BITS(16)) U3_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_3_scale_8_imag)
);

Memory #(.BITS(16)) U4_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_4_scale_8_imag)
);

Memory #(.BITS(16)) U5_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_5_scale_8_imag)
);

Memory #(.BITS(16)) U6_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_6_scale_8_imag)
);

Memory #(.BITS(16)) U7_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_7_scale_8_imag)
);

Memory #(.BITS(16)) U8_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_8_scale_8_imag)
);

Memory #(.BITS(16)) U9_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_9_scale_8_imag)
);

Memory #(.BITS(16)) U10_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_10_scale_8_imag)
);

Memory #(.BITS(16)) U11_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_11_scale_8_imag)
);

Memory #(.BITS(16)) U12_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_12_scale_8_imag)
);

Memory #(.BITS(16)) U13_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_13_scale_8_imag)
);

Memory #(.BITS(16)) U14_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_14_scale_8_imag)
);

Memory #(.BITS(16)) U15_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_15_scale_8_imag)
);

Memory #(.BITS(16)) U16_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_16_scale_8_imag)
);

Memory #(.BITS(16)) U17_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_17_scale_8_imag)
);

Memory #(.BITS(16)) U18_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_18_scale_8_imag)
);

Memory #(.BITS(16)) U19_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_19_scale_8_imag)
);

Memory #(.BITS(16)) U20_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_20_scale_8_imag)
);

Memory #(.BITS(16)) U21_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_21_scale_8_imag)
);

Memory #(.BITS(16)) U22_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_22_scale_8_imag)
);

Memory #(.BITS(16)) U23_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_23_scale_8_imag)
);

Memory #(.BITS(16)) U24_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_24_scale_8_imag)
);

Memory #(.BITS(16)) U25_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_25_scale_8_imag)
);

Memory #(.BITS(16)) U26_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_26_scale_8_imag)
);

Memory #(.BITS(16)) U27_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_27_scale_8_imag)
);

Memory #(.BITS(16)) U28_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_28_scale_8_imag)
);

Memory #(.BITS(16)) U29_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_29_scale_8_imag)
);

Memory #(.BITS(16)) U30_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_30_scale_8_imag)
);

Memory #(.BITS(16)) U31_SCALE_8_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_8),
    .read_data(memory_31_scale_8_imag)
);

Memory #(.BITS(16)) U0_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_0_scale_9_imag)
);

Memory #(.BITS(16)) U1_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_1_scale_9_imag)
);

Memory #(.BITS(16)) U2_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_2_scale_9_imag)
);

Memory #(.BITS(16)) U3_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_3_scale_9_imag)
);

Memory #(.BITS(16)) U4_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_4_scale_9_imag)
);

Memory #(.BITS(16)) U5_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_5_scale_9_imag)
);

Memory #(.BITS(16)) U6_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_6_scale_9_imag)
);

Memory #(.BITS(16)) U7_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_7_scale_9_imag)
);

Memory #(.BITS(16)) U8_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_8_scale_9_imag)
);

Memory #(.BITS(16)) U9_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_9_scale_9_imag)
);

Memory #(.BITS(16)) U10_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_10_scale_9_imag)
);

Memory #(.BITS(16)) U11_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_11_scale_9_imag)
);

Memory #(.BITS(16)) U12_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_12_scale_9_imag)
);

Memory #(.BITS(16)) U13_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_13_scale_9_imag)
);

Memory #(.BITS(16)) U14_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_14_scale_9_imag)
);

Memory #(.BITS(16)) U15_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_15_scale_9_imag)
);

Memory #(.BITS(16)) U16_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_16_scale_9_imag)
);

Memory #(.BITS(16)) U17_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_17_scale_9_imag)
);

Memory #(.BITS(16)) U18_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_18_scale_9_imag)
);

Memory #(.BITS(16)) U19_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_19_scale_9_imag)
);

Memory #(.BITS(16)) U20_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_20_scale_9_imag)
);

Memory #(.BITS(16)) U21_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_21_scale_9_imag)
);

Memory #(.BITS(16)) U22_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_22_scale_9_imag)
);

Memory #(.BITS(16)) U23_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_23_scale_9_imag)
);

Memory #(.BITS(16)) U24_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_24_scale_9_imag)
);

Memory #(.BITS(16)) U25_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_25_scale_9_imag)
);

Memory #(.BITS(16)) U26_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_26_scale_9_imag)
);

Memory #(.BITS(16)) U27_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_27_scale_9_imag)
);

Memory #(.BITS(16)) U28_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_28_scale_9_imag)
);

Memory #(.BITS(16)) U29_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_29_scale_9_imag)
);

Memory #(.BITS(16)) U30_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_30_scale_9_imag)
);

Memory #(.BITS(16)) U31_SCALE_9_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_9),
    .read_data(memory_31_scale_9_imag)
);

Memory #(.BITS(16)) U0_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_0_scale_10_imag)
);

Memory #(.BITS(16)) U1_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_1_scale_10_imag)
);

Memory #(.BITS(16)) U2_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_2_scale_10_imag)
);

Memory #(.BITS(16)) U3_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_3_scale_10_imag)
);

Memory #(.BITS(16)) U4_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_4_scale_10_imag)
);

Memory #(.BITS(16)) U5_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_5_scale_10_imag)
);

Memory #(.BITS(16)) U6_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_6_scale_10_imag)
);

Memory #(.BITS(16)) U7_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_7_scale_10_imag)
);

Memory #(.BITS(16)) U8_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_8_scale_10_imag)
);

Memory #(.BITS(16)) U9_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_9_scale_10_imag)
);

Memory #(.BITS(16)) U10_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_10_scale_10_imag)
);

Memory #(.BITS(16)) U11_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_11_scale_10_imag)
);

Memory #(.BITS(16)) U12_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_12_scale_10_imag)
);

Memory #(.BITS(16)) U13_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_13_scale_10_imag)
);

Memory #(.BITS(16)) U14_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_14_scale_10_imag)
);

Memory #(.BITS(16)) U15_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_15_scale_10_imag)
);

Memory #(.BITS(16)) U16_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_16_scale_10_imag)
);

Memory #(.BITS(16)) U17_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_17_scale_10_imag)
);

Memory #(.BITS(16)) U18_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_18_scale_10_imag)
);

Memory #(.BITS(16)) U19_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_19_scale_10_imag)
);

Memory #(.BITS(16)) U20_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_20_scale_10_imag)
);

Memory #(.BITS(16)) U21_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_21_scale_10_imag)
);

Memory #(.BITS(16)) U22_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_22_scale_10_imag)
);

Memory #(.BITS(16)) U23_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_23_scale_10_imag)
);

Memory #(.BITS(16)) U24_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_24_scale_10_imag)
);

Memory #(.BITS(16)) U25_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_25_scale_10_imag)
);

Memory #(.BITS(16)) U26_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_26_scale_10_imag)
);

Memory #(.BITS(16)) U27_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_27_scale_10_imag)
);

Memory #(.BITS(16)) U28_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_28_scale_10_imag)
);

Memory #(.BITS(16)) U29_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_29_scale_10_imag)
);

Memory #(.BITS(16)) U30_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_30_scale_10_imag)
);

Memory #(.BITS(16)) U31_SCALE_10_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_10),
    .read_data(memory_31_scale_10_imag)
);

Memory #(.BITS(16)) U0_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_0_scale_11_imag)
);

Memory #(.BITS(16)) U1_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_1_scale_11_imag)
);

Memory #(.BITS(16)) U2_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_2_scale_11_imag)
);

Memory #(.BITS(16)) U3_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_3_scale_11_imag)
);

Memory #(.BITS(16)) U4_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_4_scale_11_imag)
);

Memory #(.BITS(16)) U5_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_5_scale_11_imag)
);

Memory #(.BITS(16)) U6_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_6_scale_11_imag)
);

Memory #(.BITS(16)) U7_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_7_scale_11_imag)
);

Memory #(.BITS(16)) U8_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_8_scale_11_imag)
);

Memory #(.BITS(16)) U9_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_9_scale_11_imag)
);

Memory #(.BITS(16)) U10_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_10_scale_11_imag)
);

Memory #(.BITS(16)) U11_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_11_scale_11_imag)
);

Memory #(.BITS(16)) U12_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_12_scale_11_imag)
);

Memory #(.BITS(16)) U13_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_13_scale_11_imag)
);

Memory #(.BITS(16)) U14_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_14_scale_11_imag)
);

Memory #(.BITS(16)) U15_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_15_scale_11_imag)
);

Memory #(.BITS(16)) U16_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_16_scale_11_imag)
);

Memory #(.BITS(16)) U17_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_17_scale_11_imag)
);

Memory #(.BITS(16)) U18_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_18_scale_11_imag)
);

Memory #(.BITS(16)) U19_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_19_scale_11_imag)
);

Memory #(.BITS(16)) U20_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_20_scale_11_imag)
);

Memory #(.BITS(16)) U21_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_21_scale_11_imag)
);

Memory #(.BITS(16)) U22_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_22_scale_11_imag)
);

Memory #(.BITS(16)) U23_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_23_scale_11_imag)
);

Memory #(.BITS(16)) U24_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_24_scale_11_imag)
);

Memory #(.BITS(16)) U25_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_25_scale_11_imag)
);

Memory #(.BITS(16)) U26_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_26_scale_11_imag)
);

Memory #(.BITS(16)) U27_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_27_scale_11_imag)
);

Memory #(.BITS(16)) U28_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_28_scale_11_imag)
);

Memory #(.BITS(16)) U29_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_29_scale_11_imag)
);

Memory #(.BITS(16)) U30_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_30_scale_11_imag)
);

Memory #(.BITS(16)) U31_SCALE_11_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_11),
    .read_data(memory_31_scale_11_imag)
);

Memory #(.BITS(16)) U0_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_0_scale_12_imag)
);

Memory #(.BITS(16)) U1_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_1_scale_12_imag)
);

Memory #(.BITS(16)) U2_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_2_scale_12_imag)
);

Memory #(.BITS(16)) U3_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_3_scale_12_imag)
);

Memory #(.BITS(16)) U4_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_4_scale_12_imag)
);

Memory #(.BITS(16)) U5_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_5_scale_12_imag)
);

Memory #(.BITS(16)) U6_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_6_scale_12_imag)
);

Memory #(.BITS(16)) U7_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_7_scale_12_imag)
);

Memory #(.BITS(16)) U8_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_8_scale_12_imag)
);

Memory #(.BITS(16)) U9_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_9_scale_12_imag)
);

Memory #(.BITS(16)) U10_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_10_scale_12_imag)
);

Memory #(.BITS(16)) U11_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_11_scale_12_imag)
);

Memory #(.BITS(16)) U12_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_12_scale_12_imag)
);

Memory #(.BITS(16)) U13_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_13_scale_12_imag)
);

Memory #(.BITS(16)) U14_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_14_scale_12_imag)
);

Memory #(.BITS(16)) U15_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_15_scale_12_imag)
);

Memory #(.BITS(16)) U16_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_16_scale_12_imag)
);

Memory #(.BITS(16)) U17_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_17_scale_12_imag)
);

Memory #(.BITS(16)) U18_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_18_scale_12_imag)
);

Memory #(.BITS(16)) U19_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_19_scale_12_imag)
);

Memory #(.BITS(16)) U20_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_20_scale_12_imag)
);

Memory #(.BITS(16)) U21_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_21_scale_12_imag)
);

Memory #(.BITS(16)) U22_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_22_scale_12_imag)
);

Memory #(.BITS(16)) U23_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_23_scale_12_imag)
);

Memory #(.BITS(16)) U24_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_24_scale_12_imag)
);

Memory #(.BITS(16)) U25_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_25_scale_12_imag)
);

Memory #(.BITS(16)) U26_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_26_scale_12_imag)
);

Memory #(.BITS(16)) U27_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_27_scale_12_imag)
);

Memory #(.BITS(16)) U28_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_28_scale_12_imag)
);

Memory #(.BITS(16)) U29_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_29_scale_12_imag)
);

Memory #(.BITS(16)) U30_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_30_scale_12_imag)
);

Memory #(.BITS(16)) U31_SCALE_12_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_12),
    .read_data(memory_31_scale_12_imag)
);

Memory #(.BITS(16)) U0_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_0_scale_13_imag)
);

Memory #(.BITS(16)) U1_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_1_scale_13_imag)
);

Memory #(.BITS(16)) U2_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_2_scale_13_imag)
);

Memory #(.BITS(16)) U3_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_3_scale_13_imag)
);

Memory #(.BITS(16)) U4_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_4_scale_13_imag)
);

Memory #(.BITS(16)) U5_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_5_scale_13_imag)
);

Memory #(.BITS(16)) U6_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_6_scale_13_imag)
);

Memory #(.BITS(16)) U7_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_7_scale_13_imag)
);

Memory #(.BITS(16)) U8_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_8_scale_13_imag)
);

Memory #(.BITS(16)) U9_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_9_scale_13_imag)
);

Memory #(.BITS(16)) U10_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_10_scale_13_imag)
);

Memory #(.BITS(16)) U11_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_11_scale_13_imag)
);

Memory #(.BITS(16)) U12_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_12_scale_13_imag)
);

Memory #(.BITS(16)) U13_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_13_scale_13_imag)
);

Memory #(.BITS(16)) U14_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_14_scale_13_imag)
);

Memory #(.BITS(16)) U15_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_15_scale_13_imag)
);

Memory #(.BITS(16)) U16_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_16_scale_13_imag)
);

Memory #(.BITS(16)) U17_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_17_scale_13_imag)
);

Memory #(.BITS(16)) U18_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_18_scale_13_imag)
);

Memory #(.BITS(16)) U19_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_19_scale_13_imag)
);

Memory #(.BITS(16)) U20_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_20_scale_13_imag)
);

Memory #(.BITS(16)) U21_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_21_scale_13_imag)
);

Memory #(.BITS(16)) U22_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_22_scale_13_imag)
);

Memory #(.BITS(16)) U23_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_23_scale_13_imag)
);

Memory #(.BITS(16)) U24_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_24_scale_13_imag)
);

Memory #(.BITS(16)) U25_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_25_scale_13_imag)
);

Memory #(.BITS(16)) U26_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_26_scale_13_imag)
);

Memory #(.BITS(16)) U27_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_27_scale_13_imag)
);

Memory #(.BITS(16)) U28_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_28_scale_13_imag)
);

Memory #(.BITS(16)) U29_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_29_scale_13_imag)
);

Memory #(.BITS(16)) U30_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_30_scale_13_imag)
);

Memory #(.BITS(16)) U31_SCALE_13_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_13),
    .read_data(memory_31_scale_13_imag)
);

Memory #(.BITS(16)) U0_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_0_scale_14_imag)
);

Memory #(.BITS(16)) U1_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_1_scale_14_imag)
);

Memory #(.BITS(16)) U2_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_2_scale_14_imag)
);

Memory #(.BITS(16)) U3_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_3_scale_14_imag)
);

Memory #(.BITS(16)) U4_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_4_scale_14_imag)
);

Memory #(.BITS(16)) U5_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_5_scale_14_imag)
);

Memory #(.BITS(16)) U6_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_6_scale_14_imag)
);

Memory #(.BITS(16)) U7_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_7_scale_14_imag)
);

Memory #(.BITS(16)) U8_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_8_scale_14_imag)
);

Memory #(.BITS(16)) U9_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_9_scale_14_imag)
);

Memory #(.BITS(16)) U10_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_10_scale_14_imag)
);

Memory #(.BITS(16)) U11_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_11_scale_14_imag)
);

Memory #(.BITS(16)) U12_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_12_scale_14_imag)
);

Memory #(.BITS(16)) U13_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_13_scale_14_imag)
);

Memory #(.BITS(16)) U14_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_14_scale_14_imag)
);

Memory #(.BITS(16)) U15_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_15_scale_14_imag)
);

Memory #(.BITS(16)) U16_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_16_scale_14_imag)
);

Memory #(.BITS(16)) U17_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_17_scale_14_imag)
);

Memory #(.BITS(16)) U18_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_18_scale_14_imag)
);

Memory #(.BITS(16)) U19_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_19_scale_14_imag)
);

Memory #(.BITS(16)) U20_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_20_scale_14_imag)
);

Memory #(.BITS(16)) U21_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_21_scale_14_imag)
);

Memory #(.BITS(16)) U22_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_22_scale_14_imag)
);

Memory #(.BITS(16)) U23_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_23_scale_14_imag)
);

Memory #(.BITS(16)) U24_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_24_scale_14_imag)
);

Memory #(.BITS(16)) U25_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_25_scale_14_imag)
);

Memory #(.BITS(16)) U26_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_26_scale_14_imag)
);

Memory #(.BITS(16)) U27_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_27_scale_14_imag)
);

Memory #(.BITS(16)) U28_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_28_scale_14_imag)
);

Memory #(.BITS(16)) U29_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_29_scale_14_imag)
);

Memory #(.BITS(16)) U30_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_30_scale_14_imag)
);

Memory #(.BITS(16)) U31_SCALE_14_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_14),
    .read_data(memory_31_scale_14_imag)
);

Memory #(.BITS(16)) U0_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_0),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_0_scale_15_imag)
);

Memory #(.BITS(16)) U1_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_1),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_1_scale_15_imag)
);

Memory #(.BITS(16)) U2_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_2),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_2_scale_15_imag)
);

Memory #(.BITS(16)) U3_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_3),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_3_scale_15_imag)
);

Memory #(.BITS(16)) U4_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_4),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_4_scale_15_imag)
);

Memory #(.BITS(16)) U5_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_5),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_5_scale_15_imag)
);

Memory #(.BITS(16)) U6_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_6),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_6_scale_15_imag)
);

Memory #(.BITS(16)) U7_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_7),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_7_scale_15_imag)
);

Memory #(.BITS(16)) U8_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_8),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_8_scale_15_imag)
);

Memory #(.BITS(16)) U9_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_9),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_9_scale_15_imag)
);

Memory #(.BITS(16)) U10_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_10),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_10_scale_15_imag)
);

Memory #(.BITS(16)) U11_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_11),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_11_scale_15_imag)
);

Memory #(.BITS(16)) U12_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_12),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_12_scale_15_imag)
);

Memory #(.BITS(16)) U13_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_13),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_13_scale_15_imag)
);

Memory #(.BITS(16)) U14_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_14),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_14_scale_15_imag)
);

Memory #(.BITS(16)) U15_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_15),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_15_scale_15_imag)
);

Memory #(.BITS(16)) U16_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_16),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_16_scale_15_imag)
);

Memory #(.BITS(16)) U17_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_17),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_17_scale_15_imag)
);

Memory #(.BITS(16)) U18_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_18),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_18_scale_15_imag)
);

Memory #(.BITS(16)) U19_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_19),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_19_scale_15_imag)
);

Memory #(.BITS(16)) U20_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_20),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_20_scale_15_imag)
);

Memory #(.BITS(16)) U21_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_21),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_21_scale_15_imag)
);

Memory #(.BITS(16)) U22_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_22),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_22_scale_15_imag)
);

Memory #(.BITS(16)) U23_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_23),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_23_scale_15_imag)
);

Memory #(.BITS(16)) U24_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_24),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_24_scale_15_imag)
);

Memory #(.BITS(16)) U25_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_25),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_25_scale_15_imag)
);

Memory #(.BITS(16)) U26_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_26),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_26_scale_15_imag)
);

Memory #(.BITS(16)) U27_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_27),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_27_scale_15_imag)
);

Memory #(.BITS(16)) U28_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_28),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_28_scale_15_imag)
);

Memory #(.BITS(16)) U29_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_29),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_29_scale_15_imag)
);

Memory #(.BITS(16)) U30_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_30),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_30_scale_15_imag)
);

Memory #(.BITS(16)) U31_SCALE_15_IMAG_MEMORY
(
    .clk(clk),
    .rst(rst),
    .read_address(read_scale_ram_addresses),
    .write_address(write_scale_ram_addresses),
    .write_data(mux_scale_memory_imag_31),
    .write_enable(ifft_write_enable_15),
    .read_data(memory_31_scale_15_imag)
);






endmodule
