/* Description : This verilog file tends to test the custom 128x1 MUX */
/* Author : Basma Walid - Preprocessing Team */
`timescale 1ns/1ps

module MUX_128_1_tb ();

/* Parameters */
parameter BITS = 16 ;
parameter SEL_BITS = 7 ;

parameter Clock_Period = 5 ;


/*First: Define Testbench signals */
reg [BITS-1:0] mux_input_0_tb ;
reg [BITS-1:0] mux_input_1_tb ;
reg [BITS-1:0] mux_input_2_tb ;
reg [BITS-1:0] mux_input_3_tb ;
reg [BITS-1:0] mux_input_4_tb ;
reg [BITS-1:0] mux_input_5_tb ;
reg [BITS-1:0] mux_input_6_tb ;
reg [BITS-1:0] mux_input_7_tb ;
reg [BITS-1:0] mux_input_8_tb ;
reg [BITS-1:0] mux_input_9_tb ;
reg [BITS-1:0] mux_input_10_tb ;
reg [BITS-1:0] mux_input_11_tb ;
reg [BITS-1:0] mux_input_12_tb ;
reg [BITS-1:0] mux_input_13_tb ;
reg [BITS-1:0] mux_input_14_tb ;
reg [BITS-1:0] mux_input_15_tb ;
reg [BITS-1:0] mux_input_16_tb ;
reg [BITS-1:0] mux_input_17_tb ;
reg [BITS-1:0] mux_input_18_tb ;
reg [BITS-1:0] mux_input_19_tb ;
reg [BITS-1:0] mux_input_20_tb ;
reg [BITS-1:0] mux_input_21_tb ;
reg [BITS-1:0] mux_input_22_tb ;
reg [BITS-1:0] mux_input_23_tb ;
reg [BITS-1:0] mux_input_24_tb ;
reg [BITS-1:0] mux_input_25_tb ;
reg [BITS-1:0] mux_input_26_tb ;
reg [BITS-1:0] mux_input_27_tb ;
reg [BITS-1:0] mux_input_28_tb ;
reg [BITS-1:0] mux_input_29_tb ;
reg [BITS-1:0] mux_input_30_tb ;
reg [BITS-1:0] mux_input_31_tb ;
reg [BITS-1:0] mux_input_32_tb ;
reg [BITS-1:0] mux_input_33_tb ;
reg [BITS-1:0] mux_input_34_tb ;
reg [BITS-1:0] mux_input_35_tb ;
reg [BITS-1:0] mux_input_36_tb ;
reg [BITS-1:0] mux_input_37_tb ;
reg [BITS-1:0] mux_input_38_tb ;
reg [BITS-1:0] mux_input_39_tb ;
reg [BITS-1:0] mux_input_40_tb ;
reg [BITS-1:0] mux_input_41_tb ;
reg [BITS-1:0] mux_input_42_tb ;
reg [BITS-1:0] mux_input_43_tb ;
reg [BITS-1:0] mux_input_44_tb ;
reg [BITS-1:0] mux_input_45_tb ;
reg [BITS-1:0] mux_input_46_tb ;
reg [BITS-1:0] mux_input_47_tb ;
reg [BITS-1:0] mux_input_48_tb ;
reg [BITS-1:0] mux_input_49_tb ;
reg [BITS-1:0] mux_input_50_tb ;
reg [BITS-1:0] mux_input_51_tb ;
reg [BITS-1:0] mux_input_52_tb ;
reg [BITS-1:0] mux_input_53_tb ;
reg [BITS-1:0] mux_input_54_tb ;
reg [BITS-1:0] mux_input_55_tb ;
reg [BITS-1:0] mux_input_56_tb ;
reg [BITS-1:0] mux_input_57_tb ;
reg [BITS-1:0] mux_input_58_tb ;
reg [BITS-1:0] mux_input_59_tb ;
reg [BITS-1:0] mux_input_60_tb ;
reg [BITS-1:0] mux_input_61_tb ;
reg [BITS-1:0] mux_input_62_tb ;
reg [BITS-1:0] mux_input_63_tb ;
reg [BITS-1:0] mux_input_64_tb ;
reg [BITS-1:0] mux_input_65_tb ;
reg [BITS-1:0] mux_input_66_tb ;
reg [BITS-1:0] mux_input_67_tb ;
reg [BITS-1:0] mux_input_68_tb ;
reg [BITS-1:0] mux_input_69_tb ;
reg [BITS-1:0] mux_input_70_tb ;
reg [BITS-1:0] mux_input_71_tb ;
reg [BITS-1:0] mux_input_72_tb ;
reg [BITS-1:0] mux_input_73_tb ;
reg [BITS-1:0] mux_input_74_tb ;
reg [BITS-1:0] mux_input_75_tb ;
reg [BITS-1:0] mux_input_76_tb ;
reg [BITS-1:0] mux_input_77_tb ;
reg [BITS-1:0] mux_input_78_tb ;
reg [BITS-1:0] mux_input_79_tb ;
reg [BITS-1:0] mux_input_80_tb ;
reg [BITS-1:0] mux_input_81_tb ;
reg [BITS-1:0] mux_input_82_tb ;
reg [BITS-1:0] mux_input_83_tb ;
reg [BITS-1:0] mux_input_84_tb ;
reg [BITS-1:0] mux_input_85_tb ;
reg [BITS-1:0] mux_input_86_tb ;
reg [BITS-1:0] mux_input_87_tb ;
reg [BITS-1:0] mux_input_88_tb ;
reg [BITS-1:0] mux_input_89_tb ;
reg [BITS-1:0] mux_input_90_tb ;
reg [BITS-1:0] mux_input_91_tb ;
reg [BITS-1:0] mux_input_92_tb ;
reg [BITS-1:0] mux_input_93_tb ;
reg [BITS-1:0] mux_input_94_tb ;
reg [BITS-1:0] mux_input_95_tb ;
reg [BITS-1:0] mux_input_96_tb ;
reg [BITS-1:0] mux_input_97_tb ;
reg [BITS-1:0] mux_input_98_tb ;
reg [BITS-1:0] mux_input_99_tb ;
reg [BITS-1:0] mux_input_100_tb ;
reg [BITS-1:0] mux_input_101_tb ;
reg [BITS-1:0] mux_input_102_tb ;
reg [BITS-1:0] mux_input_103_tb ;
reg [BITS-1:0] mux_input_104_tb ;
reg [BITS-1:0] mux_input_105_tb ;
reg [BITS-1:0] mux_input_106_tb ;
reg [BITS-1:0] mux_input_107_tb ;
reg [BITS-1:0] mux_input_108_tb ;
reg [BITS-1:0] mux_input_109_tb ;
reg [BITS-1:0] mux_input_110_tb ;
reg [BITS-1:0] mux_input_111_tb ;
reg [BITS-1:0] mux_input_112_tb ;
reg [BITS-1:0] mux_input_113_tb ;
reg [BITS-1:0] mux_input_114_tb ;
reg [BITS-1:0] mux_input_115_tb ;
reg [BITS-1:0] mux_input_116_tb ;
reg [BITS-1:0] mux_input_117_tb ;
reg [BITS-1:0] mux_input_118_tb ;
reg [BITS-1:0] mux_input_119_tb ;
reg [BITS-1:0] mux_input_120_tb ;
reg [BITS-1:0] mux_input_121_tb ;
reg [BITS-1:0] mux_input_122_tb ;
reg [BITS-1:0] mux_input_123_tb ;
reg [BITS-1:0] mux_input_124_tb ;
reg [BITS-1:0] mux_input_125_tb ;
reg [BITS-1:0] mux_input_126_tb ;
reg [BITS-1:0] mux_input_127_tb ;
reg [SEL_BITS-1:0] sel_input_tb ;
wire [BITS-1:0] mux_output_tb ;


/*Second : Instantiate the target module */
MUX_128_1 #(.BITS(BITS),.SEL_BITS(SEL_BITS)) DUT (
.mux_input_0(mux_input_0_tb),
.mux_input_1(mux_input_1_tb),
.mux_input_2(mux_input_2_tb),
.mux_input_3(mux_input_3_tb),
.mux_input_4(mux_input_4_tb),
.mux_input_5(mux_input_5_tb),
.mux_input_6(mux_input_6_tb),
.mux_input_7(mux_input_7_tb),
.mux_input_8(mux_input_8_tb),
.mux_input_9(mux_input_9_tb),
.mux_input_10(mux_input_10_tb),
.mux_input_11(mux_input_11_tb),
.mux_input_12(mux_input_12_tb),
.mux_input_13(mux_input_13_tb),
.mux_input_14(mux_input_14_tb),
.mux_input_15(mux_input_15_tb),
.mux_input_16(mux_input_16_tb),
.mux_input_17(mux_input_17_tb),
.mux_input_18(mux_input_18_tb),
.mux_input_19(mux_input_19_tb),
.mux_input_20(mux_input_20_tb),
.mux_input_21(mux_input_21_tb),
.mux_input_22(mux_input_22_tb),
.mux_input_23(mux_input_23_tb),
.mux_input_24(mux_input_24_tb),
.mux_input_25(mux_input_25_tb),
.mux_input_26(mux_input_26_tb),
.mux_input_27(mux_input_27_tb),
.mux_input_28(mux_input_28_tb),
.mux_input_29(mux_input_29_tb),
.mux_input_30(mux_input_30_tb),
.mux_input_31(mux_input_31_tb),
.mux_input_32(mux_input_32_tb),
.mux_input_33(mux_input_33_tb),
.mux_input_34(mux_input_34_tb),
.mux_input_35(mux_input_35_tb),
.mux_input_36(mux_input_36_tb),
.mux_input_37(mux_input_37_tb),
.mux_input_38(mux_input_38_tb),
.mux_input_39(mux_input_39_tb),
.mux_input_40(mux_input_40_tb),
.mux_input_41(mux_input_41_tb),
.mux_input_42(mux_input_42_tb),
.mux_input_43(mux_input_43_tb),
.mux_input_44(mux_input_44_tb),
.mux_input_45(mux_input_45_tb),
.mux_input_46(mux_input_46_tb),
.mux_input_47(mux_input_47_tb),
.mux_input_48(mux_input_48_tb),
.mux_input_49(mux_input_49_tb),
.mux_input_50(mux_input_50_tb),
.mux_input_51(mux_input_51_tb),
.mux_input_52(mux_input_52_tb),
.mux_input_53(mux_input_53_tb),
.mux_input_54(mux_input_54_tb),
.mux_input_55(mux_input_55_tb),
.mux_input_56(mux_input_56_tb),
.mux_input_57(mux_input_57_tb),
.mux_input_58(mux_input_58_tb),
.mux_input_59(mux_input_59_tb),
.mux_input_60(mux_input_60_tb),
.mux_input_61(mux_input_61_tb),
.mux_input_62(mux_input_62_tb),
.mux_input_63(mux_input_63_tb),
.mux_input_64(mux_input_64_tb),
.mux_input_65(mux_input_65_tb),
.mux_input_66(mux_input_66_tb),
.mux_input_67(mux_input_67_tb),
.mux_input_68(mux_input_68_tb),
.mux_input_69(mux_input_69_tb),
.mux_input_70(mux_input_70_tb),
.mux_input_71(mux_input_71_tb),
.mux_input_72(mux_input_72_tb),
.mux_input_73(mux_input_73_tb),
.mux_input_74(mux_input_74_tb),
.mux_input_75(mux_input_75_tb),
.mux_input_76(mux_input_76_tb),
.mux_input_77(mux_input_77_tb),
.mux_input_78(mux_input_78_tb),
.mux_input_79(mux_input_79_tb),
.mux_input_80(mux_input_80_tb),
.mux_input_81(mux_input_81_tb),
.mux_input_82(mux_input_82_tb),
.mux_input_83(mux_input_83_tb),
.mux_input_84(mux_input_84_tb),
.mux_input_85(mux_input_85_tb),
.mux_input_86(mux_input_86_tb),
.mux_input_87(mux_input_87_tb),
.mux_input_88(mux_input_88_tb),
.mux_input_89(mux_input_89_tb),
.mux_input_90(mux_input_90_tb),
.mux_input_91(mux_input_91_tb),
.mux_input_92(mux_input_92_tb),
.mux_input_93(mux_input_93_tb),
.mux_input_94(mux_input_94_tb),
.mux_input_95(mux_input_95_tb),
.mux_input_96(mux_input_96_tb),
.mux_input_97(mux_input_97_tb),
.mux_input_98(mux_input_98_tb),
.mux_input_99(mux_input_99_tb),
.mux_input_100(mux_input_100_tb),
.mux_input_101(mux_input_101_tb),
.mux_input_102(mux_input_102_tb),
.mux_input_103(mux_input_103_tb),
.mux_input_104(mux_input_104_tb),
.mux_input_105(mux_input_105_tb),
.mux_input_106(mux_input_106_tb),
.mux_input_107(mux_input_107_tb),
.mux_input_108(mux_input_108_tb),
.mux_input_109(mux_input_109_tb),
.mux_input_110(mux_input_110_tb),
.mux_input_111(mux_input_111_tb),
.mux_input_112(mux_input_112_tb),
.mux_input_113(mux_input_113_tb),
.mux_input_114(mux_input_114_tb),
.mux_input_115(mux_input_115_tb),
.mux_input_116(mux_input_116_tb),
.mux_input_117(mux_input_117_tb),
.mux_input_118(mux_input_118_tb),
.mux_input_119(mux_input_119_tb),
.mux_input_120(mux_input_120_tb),
.mux_input_121(mux_input_121_tb),
.mux_input_122(mux_input_122_tb),
.mux_input_123(mux_input_123_tb),
.mux_input_124(mux_input_124_tb),
.mux_input_125(mux_input_125_tb),
.mux_input_126(mux_input_126_tb),
.mux_input_127(mux_input_127_tb),
.sel_input(sel_input_tb),
.mux_output(mux_output_tb)
);

/* Third : Generate the Clock signal */
/* No Clock , since the MUX is a pure combinational circuit */

initial
begin
	$dumpfile("MUX_128_1.vcd");
	$dumpvars;
	
	INPUTS();
	
	SELECTIONS();
	
	#(10*Clock_Period)
	$stop ;
end

task INPUTS ;
begin
	mux_input_0_tb = 100 ;
	mux_input_1_tb = 101 ;
	mux_input_2_tb = 102 ;
	mux_input_3_tb = 103 ;
	mux_input_4_tb = 104 ;
	mux_input_5_tb = 105 ;
	mux_input_6_tb = 106 ;
	mux_input_7_tb = 107 ;
	mux_input_8_tb = 108 ;
	mux_input_9_tb = 109 ;
	mux_input_10_tb = 110 ;
	mux_input_11_tb = 111 ;
	mux_input_12_tb = 112 ;
	mux_input_13_tb = 113 ;
	mux_input_14_tb = 114 ;
	mux_input_15_tb = 115 ;
	mux_input_16_tb = 116 ;
	mux_input_17_tb = 117 ;
	mux_input_18_tb = 118 ;
	mux_input_19_tb = 119 ;
	mux_input_20_tb = 120 ;
	mux_input_21_tb = 121 ;
	mux_input_22_tb = 122 ;
	mux_input_23_tb = 123 ;
	mux_input_24_tb = 124 ;
	mux_input_25_tb = 125 ;
	mux_input_26_tb = 126 ;
	mux_input_27_tb = 127 ;
	mux_input_28_tb = 128 ;
	mux_input_29_tb = 129 ;
	mux_input_30_tb = 130 ;
	mux_input_31_tb = 131 ;
	mux_input_32_tb = 132 ;
	mux_input_33_tb = 133 ;
	mux_input_34_tb = 134 ;
	mux_input_35_tb = 135 ;
	mux_input_36_tb = 136 ;
	mux_input_37_tb = 137 ;
	mux_input_38_tb = 138 ;
	mux_input_39_tb = 139 ;
	mux_input_40_tb = 140 ;
	mux_input_41_tb = 141 ;
	mux_input_42_tb = 142 ;
	mux_input_43_tb = 143 ;
	mux_input_44_tb = 144 ;
	mux_input_45_tb = 145 ;
	mux_input_46_tb = 146 ;
	mux_input_47_tb = 147 ;
	mux_input_48_tb = 148 ;
	mux_input_49_tb = 149 ;
	mux_input_50_tb = 150 ;
	mux_input_51_tb = 151 ;
	mux_input_52_tb = 152 ;
	mux_input_53_tb = 153 ;
	mux_input_54_tb = 154 ;
	mux_input_55_tb = 155 ;
	mux_input_56_tb = 156 ;
	mux_input_57_tb = 157 ;
	mux_input_58_tb = 158 ;
	mux_input_59_tb = 159 ;
	mux_input_60_tb = 160 ;
	mux_input_61_tb = 161 ;
	mux_input_62_tb = 162 ;
	mux_input_63_tb = 163 ;
	mux_input_64_tb = 164 ;
	mux_input_65_tb = 165 ;
	mux_input_66_tb = 166 ;
	mux_input_67_tb = 167 ;
	mux_input_68_tb = 168 ;
	mux_input_69_tb = 169 ;
	mux_input_70_tb = 170 ;
	mux_input_71_tb = 171 ;
	mux_input_72_tb = 172 ;
	mux_input_73_tb = 173 ;
	mux_input_74_tb = 174 ;
	mux_input_75_tb = 175 ;
	mux_input_76_tb = 176 ;
	mux_input_77_tb = 177 ;
	mux_input_78_tb = 178 ;
	mux_input_79_tb = 179 ;
	mux_input_80_tb = 180 ;
	mux_input_81_tb = 181 ;
	mux_input_82_tb = 182 ;
	mux_input_83_tb = 183 ;
	mux_input_84_tb = 184 ;
	mux_input_85_tb = 185 ;
	mux_input_86_tb = 186 ;
	mux_input_87_tb = 187 ;
	mux_input_88_tb = 188 ;
	mux_input_89_tb = 189 ;
	mux_input_90_tb = 190 ;
	mux_input_91_tb = 191 ;
	mux_input_92_tb = 192 ;
	mux_input_93_tb = 193 ;
	mux_input_94_tb = 194 ;
	mux_input_95_tb = 195 ;
	mux_input_96_tb = 196 ;
	mux_input_97_tb = 197 ;
	mux_input_98_tb = 198 ;
	mux_input_99_tb = 199 ;
	mux_input_100_tb = 200 ;
	mux_input_101_tb = 201 ;
	mux_input_102_tb = 202 ;
	mux_input_103_tb = 203 ;
	mux_input_104_tb = 204 ;
	mux_input_105_tb = 205 ;
	mux_input_106_tb = 206 ;
	mux_input_107_tb = 207 ;
	mux_input_108_tb = 208 ;
	mux_input_109_tb = 209 ;
	mux_input_110_tb = 210 ;
	mux_input_111_tb = 211 ;
	mux_input_112_tb = 212 ;
	mux_input_113_tb = 213 ;
	mux_input_114_tb = 214 ;
	mux_input_115_tb = 215 ;
	mux_input_116_tb = 216 ;
	mux_input_117_tb = 217 ;
	mux_input_118_tb = 218 ;
	mux_input_119_tb = 219 ;
	mux_input_120_tb = 220 ;
	mux_input_121_tb = 221 ;
	mux_input_122_tb = 222 ;
	mux_input_123_tb = 223 ;
	mux_input_124_tb = 224 ;
	mux_input_125_tb = 225 ;
	mux_input_126_tb = 226 ;
	mux_input_127_tb = 227 ;	
end
endtask

task SELECTIONS ;
begin 
	sel_input_tb = 0 ;
	#(Clock_Period) 
	if(mux_output_tb == 100) 
		$display(" SEL_0 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 1 ;
	#(Clock_Period) 
	if(mux_output_tb == 101) 
		$display(" SEL_1 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 2 ;
	#(Clock_Period) 
	if(mux_output_tb == 102) 
		$display(" SEL_2 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 3 ;
	#(Clock_Period) 
	if(mux_output_tb == 103) 
		$display(" SEL_3 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 4 ;
	#(Clock_Period) 
	if(mux_output_tb == 104) 
		$display(" SEL_4 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 5 ;
	#(Clock_Period) 
	if(mux_output_tb == 105) 
		$display(" SEL_5 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 6 ;
	#(Clock_Period) 
	if(mux_output_tb == 106) 
		$display(" SEL_6 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 7 ;
	#(Clock_Period) 
	if(mux_output_tb == 107) 
		$display(" SEL_7 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 8 ;
	#(Clock_Period) 
	if(mux_output_tb == 108) 
		$display(" SEL_8 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 9 ;
	#(Clock_Period) 
	if(mux_output_tb == 109) 
		$display(" SEL_9 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 10 ;
	#(Clock_Period) 
	if(mux_output_tb == 110) 
		$display(" SEL_10 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 11 ;
	#(Clock_Period) 
	if(mux_output_tb == 111) 
		$display(" SEL_11 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 12 ;
	#(Clock_Period) 
	if(mux_output_tb == 112) 
		$display(" SEL_12 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 13 ;
	#(Clock_Period) 
	if(mux_output_tb == 113) 
		$display(" SEL_13 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 14 ;
	#(Clock_Period) 
	if(mux_output_tb == 114) 
		$display(" SEL_14 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 15 ;
	#(Clock_Period) 
	if(mux_output_tb == 115) 
		$display(" SEL_15 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 16 ;
	#(Clock_Period) 
	if(mux_output_tb == 116) 
		$display(" SEL_16 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 17 ;
	#(Clock_Period) 
	if(mux_output_tb == 117) 
		$display(" SEL_17 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 18 ;
	#(Clock_Period) 
	if(mux_output_tb == 118) 
		$display(" SEL_18 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 19 ;
	#(Clock_Period) 
	if(mux_output_tb == 119) 
		$display(" SEL_19 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 20 ;
	#(Clock_Period) 
	if(mux_output_tb == 120) 
		$display(" SEL_20 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 21 ;
	#(Clock_Period) 
	if(mux_output_tb == 121) 
		$display(" SEL_21 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 22 ;
	#(Clock_Period) 
	if(mux_output_tb == 122) 
		$display(" SEL_22 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 23 ;
	#(Clock_Period) 
	if(mux_output_tb == 123) 
		$display(" SEL_23 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 24 ;
	#(Clock_Period) 
	if(mux_output_tb == 124) 
		$display(" SEL_24 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 25 ;
	#(Clock_Period) 
	if(mux_output_tb == 125) 
		$display(" SEL_25 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 26 ;
	#(Clock_Period) 
	if(mux_output_tb == 126) 
		$display(" SEL_26 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 27 ;
	#(Clock_Period) 
	if(mux_output_tb == 127) 
		$display(" SEL_27 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 28 ;
	#(Clock_Period) 
	if(mux_output_tb == 128) 
		$display(" SEL_28 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 29 ;
	#(Clock_Period) 
	if(mux_output_tb == 129) 
		$display(" SEL_29 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 30 ;
	#(Clock_Period) 
	if(mux_output_tb == 130) 
		$display(" SEL_30 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 31 ;
	#(Clock_Period) 
	if(mux_output_tb == 131) 
		$display(" SEL_31 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 32 ;
	#(Clock_Period) 
	if(mux_output_tb == 132) 
		$display(" SEL_32 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 33 ;
	#(Clock_Period) 
	if(mux_output_tb == 133) 
		$display(" SEL_33 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 34 ;
	#(Clock_Period) 
	if(mux_output_tb == 134) 
		$display(" SEL_34 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 35 ;
	#(Clock_Period) 
	if(mux_output_tb == 135) 
		$display(" SEL_35 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 36 ;
	#(Clock_Period) 
	if(mux_output_tb == 136) 
		$display(" SEL_36 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 37 ;
	#(Clock_Period) 
	if(mux_output_tb == 137) 
		$display(" SEL_37 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 38 ;
	#(Clock_Period) 
	if(mux_output_tb == 138) 
		$display(" SEL_38 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 39 ;
	#(Clock_Period) 
	if(mux_output_tb == 139) 
		$display(" SEL_39 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 40 ;
	#(Clock_Period) 
	if(mux_output_tb == 140) 
		$display(" SEL_40 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 41 ;
	#(Clock_Period) 
	if(mux_output_tb == 141) 
		$display(" SEL_41 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 42 ;
	#(Clock_Period) 
	if(mux_output_tb == 142) 
		$display(" SEL_42 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 43 ;
	#(Clock_Period) 
	if(mux_output_tb == 143) 
		$display(" SEL_43 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 44 ;
	#(Clock_Period) 
	if(mux_output_tb == 144) 
		$display(" SEL_44 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 45 ;
	#(Clock_Period) 
	if(mux_output_tb == 145) 
		$display(" SEL_45 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 46 ;
	#(Clock_Period) 
	if(mux_output_tb == 146) 
		$display(" SEL_46 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 47 ;
	#(Clock_Period) 
	if(mux_output_tb == 147) 
		$display(" SEL_47 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 48 ;
	#(Clock_Period) 
	if(mux_output_tb == 148) 
		$display(" SEL_48 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 49 ;
	#(Clock_Period) 
	if(mux_output_tb == 149) 
		$display(" SEL_49 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 50 ;
	#(Clock_Period) 
	if(mux_output_tb == 150) 
		$display(" SEL_50 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 51 ;
	#(Clock_Period) 
	if(mux_output_tb == 151) 
		$display(" SEL_51 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 52 ;
	#(Clock_Period) 
	if(mux_output_tb == 152) 
		$display(" SEL_52 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 53 ;
	#(Clock_Period) 
	if(mux_output_tb == 153) 
		$display(" SEL_53 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 54 ;
	#(Clock_Period) 
	if(mux_output_tb == 154) 
		$display(" SEL_54 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 55 ;
	#(Clock_Period) 
	if(mux_output_tb == 155) 
		$display(" SEL_55 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 56 ;
	#(Clock_Period) 
	if(mux_output_tb == 156) 
		$display(" SEL_56 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 57 ;
	#(Clock_Period) 
	if(mux_output_tb == 157) 
		$display(" SEL_57 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 58 ;
	#(Clock_Period) 
	if(mux_output_tb == 158) 
		$display(" SEL_58 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 59 ;
	#(Clock_Period) 
	if(mux_output_tb == 159) 
		$display(" SEL_59 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 60 ;
	#(Clock_Period) 
	if(mux_output_tb == 160) 
		$display(" SEL_60 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 61 ;
	#(Clock_Period) 
	if(mux_output_tb == 161) 
		$display(" SEL_61 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 62 ;
	#(Clock_Period) 
	if(mux_output_tb == 162) 
		$display(" SEL_62 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 63 ;
	#(Clock_Period) 
	if(mux_output_tb == 163) 
		$display(" SEL_63 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 64 ;
	#(Clock_Period) 
	if(mux_output_tb == 164) 
		$display(" SEL_64 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 65 ;
	#(Clock_Period) 
	if(mux_output_tb == 165) 
		$display(" SEL_65 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 66 ;
	#(Clock_Period) 
	if(mux_output_tb == 166) 
		$display(" SEL_66 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 67 ;
	#(Clock_Period) 
	if(mux_output_tb == 167) 
		$display(" SEL_67 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 68 ;
	#(Clock_Period) 
	if(mux_output_tb == 168) 
		$display(" SEL_68 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 69 ;
	#(Clock_Period) 
	if(mux_output_tb == 169) 
		$display(" SEL_69 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 70 ;
	#(Clock_Period) 
	if(mux_output_tb == 170) 
		$display(" SEL_70 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 71 ;
	#(Clock_Period) 
	if(mux_output_tb == 171) 
		$display(" SEL_71 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 72 ;
	#(Clock_Period) 
	if(mux_output_tb == 172) 
		$display(" SEL_72 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 73 ;
	#(Clock_Period) 
	if(mux_output_tb == 173) 
		$display(" SEL_73 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 74 ;
	#(Clock_Period) 
	if(mux_output_tb == 174) 
		$display(" SEL_74 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 75 ;
	#(Clock_Period) 
	if(mux_output_tb == 175) 
		$display(" SEL_75 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 76 ;
	#(Clock_Period) 
	if(mux_output_tb == 176) 
		$display(" SEL_76 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 77 ;
	#(Clock_Period) 
	if(mux_output_tb == 177) 
		$display(" SEL_77 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 78 ;
	#(Clock_Period) 
	if(mux_output_tb == 178) 
		$display(" SEL_78 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 79 ;
	#(Clock_Period) 
	if(mux_output_tb == 179) 
		$display(" SEL_79 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 80 ;
	#(Clock_Period) 
	if(mux_output_tb == 180) 
		$display(" SEL_80 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 81 ;
	#(Clock_Period) 
	if(mux_output_tb == 181) 
		$display(" SEL_81 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 82 ;
	#(Clock_Period) 
	if(mux_output_tb == 182) 
		$display(" SEL_82 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 83 ;
	#(Clock_Period) 
	if(mux_output_tb == 183) 
		$display(" SEL_83 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 84 ;
	#(Clock_Period) 
	if(mux_output_tb == 184) 
		$display(" SEL_84 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 85 ;
	#(Clock_Period) 
	if(mux_output_tb == 185) 
		$display(" SEL_85 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 86 ;
	#(Clock_Period) 
	if(mux_output_tb == 186) 
		$display(" SEL_86 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 87 ;
	#(Clock_Period) 
	if(mux_output_tb == 187) 
		$display(" SEL_87 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 88 ;
	#(Clock_Period) 
	if(mux_output_tb == 188) 
		$display(" SEL_88 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 89 ;
	#(Clock_Period) 
	if(mux_output_tb == 189) 
		$display(" SEL_89 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 90 ;
	#(Clock_Period) 
	if(mux_output_tb == 190) 
		$display(" SEL_90 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 91 ;
	#(Clock_Period) 
	if(mux_output_tb == 191) 
		$display(" SEL_91 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 92 ;
	#(Clock_Period) 
	if(mux_output_tb == 192) 
		$display(" SEL_92 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 93 ;
	#(Clock_Period) 
	if(mux_output_tb == 193) 
		$display(" SEL_93 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 94 ;
	#(Clock_Period) 
	if(mux_output_tb == 194) 
		$display(" SEL_94 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 95 ;
	#(Clock_Period) 
	if(mux_output_tb == 195) 
		$display(" SEL_95 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 96 ;
	#(Clock_Period) 
	if(mux_output_tb == 196) 
		$display(" SEL_96 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 97 ;
	#(Clock_Period) 
	if(mux_output_tb == 197) 
		$display(" SEL_97 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 98 ;
	#(Clock_Period) 
	if(mux_output_tb == 198) 
		$display(" SEL_98 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 99 ;
	#(Clock_Period) 
	if(mux_output_tb == 199) 
		$display(" SEL_99 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 100 ;
	#(Clock_Period) 
	if(mux_output_tb == 200) 
		$display(" SEL_100 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 101 ;
	#(Clock_Period) 
	if(mux_output_tb == 201) 
		$display(" SEL_101 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 102 ;
	#(Clock_Period) 
	if(mux_output_tb == 202) 
		$display(" SEL_102 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 103 ;
	#(Clock_Period) 
	if(mux_output_tb == 203) 
		$display(" SEL_103 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 104 ;
	#(Clock_Period) 
	if(mux_output_tb == 204) 
		$display(" SEL_104 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 105 ;
	#(Clock_Period) 
	if(mux_output_tb == 205) 
		$display(" SEL_105 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 106 ;
	#(Clock_Period) 
	if(mux_output_tb == 206) 
		$display(" SEL_106 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 107 ;
	#(Clock_Period) 
	if(mux_output_tb == 207) 
		$display(" SEL_107 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 108 ;
	#(Clock_Period) 
	if(mux_output_tb == 208) 
		$display(" SEL_108 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 109 ;
	#(Clock_Period) 
	if(mux_output_tb == 209) 
		$display(" SEL_109 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 110 ;
	#(Clock_Period) 
	if(mux_output_tb == 210) 
		$display(" SEL_110 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 111 ;
	#(Clock_Period) 
	if(mux_output_tb == 211) 
		$display(" SEL_111 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 112 ;
	#(Clock_Period) 
	if(mux_output_tb == 212) 
		$display(" SEL_112 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 113 ;
	#(Clock_Period) 
	if(mux_output_tb == 213) 
		$display(" SEL_113 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 114 ;
	#(Clock_Period) 
	if(mux_output_tb == 214) 
		$display(" SEL_114 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 115 ;
	#(Clock_Period) 
	if(mux_output_tb == 215) 
		$display(" SEL_115 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 116 ;
	#(Clock_Period) 
	if(mux_output_tb == 216) 
		$display(" SEL_116 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 117 ;
	#(Clock_Period) 
	if(mux_output_tb == 217) 
		$display(" SEL_117 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 118 ;
	#(Clock_Period) 
	if(mux_output_tb == 218) 
		$display(" SEL_118 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 119 ;
	#(Clock_Period) 
	if(mux_output_tb == 219) 
		$display(" SEL_119 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 120 ;
	#(Clock_Period) 
	if(mux_output_tb == 220) 
		$display(" SEL_120 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 121 ;
	#(Clock_Period) 
	if(mux_output_tb == 221) 
		$display(" SEL_121 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 122 ;
	#(Clock_Period) 
	if(mux_output_tb == 222) 
		$display(" SEL_122 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 123 ;
	#(Clock_Period) 
	if(mux_output_tb == 223) 
		$display(" SEL_123 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 124 ;
	#(Clock_Period) 
	if(mux_output_tb == 224) 
		$display(" SEL_124 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 125 ;
	#(Clock_Period) 
	if(mux_output_tb == 225) 
		$display(" SEL_125 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 126 ;
	#(Clock_Period) 
	if(mux_output_tb == 226) 
		$display(" SEL_126 works well "); 
 
    #(Clock_Period) 
	sel_input_tb = 127 ;
	#(Clock_Period) 
	if(mux_output_tb == 227) 
		$display(" SEL_127 works well ");
end
endtask

endmodule


