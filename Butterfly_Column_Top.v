module Butterfly_Column_Top #(
	parameter BITS = 16
	)
	(
		//input clk ,
		 input rst ,
		
		input [BITS-1:0] t0_r , input [BITS-1:0] t0_i , input [BITS-1:0] t1_r , input [BITS-1:0] t1_i ,
		input [BITS-1:0] twiddle1_r , input [BITS-1:0] twiddle1_i ,
		output [BITS-1 : 0 ] s0_r , output [BITS-1 : 0 ] s0_i , output [BITS-1 : 0 ] s1_r , output [BITS-1 : 0 ] s1_i ,
		
		input [BITS-1:0] t2_r , input [BITS-1:0] t2_i , input [BITS-1:0] t3_r , input [BITS-1:0] t3_i ,
		input [BITS-1:0] twiddle2_r , input [BITS-1:0] twiddle2_i ,
		output [BITS-1 : 0 ] s2_r , output [BITS-1 : 0 ] s2_i , output [BITS-1 : 0 ] s3_r , output [BITS-1 : 0 ] s3_i ,
		
		input [BITS-1:0] t4_r , input [BITS-1:0] t4_i , input [BITS-1:0] t5_r , input [BITS-1:0] t5_i ,
		input [BITS-1:0] twiddle3_r , input [BITS-1:0] twiddle3_i ,
		output [BITS-1 : 0 ] s4_r , output [BITS-1 : 0 ] s4_i , output [BITS-1 : 0 ] s5_r , output [BITS-1 : 0 ] s5_i ,
		
		input [BITS-1:0] t6_r , input [BITS-1:0] t6_i , input [BITS-1:0] t7_r , input [BITS-1:0] t7_i ,
		input [BITS-1:0] twiddle4_r , input [BITS-1:0] twiddle4_i ,
		output [BITS-1 : 0 ] s6_r , output [BITS-1 : 0 ] s6_i , output [BITS-1 : 0 ] s7_r , output [BITS-1 : 0 ] s7_i ,
		
		input [BITS-1:0] t8_r , input [BITS-1:0] t8_i , input [BITS-1:0] t9_r , input [BITS-1:0] t9_i ,
		input [BITS-1:0] twiddle5_r , input [BITS-1:0] twiddle5_i ,
		output [BITS-1 : 0 ] s8_r , output [BITS-1 : 0 ] s8_i , output [BITS-1 : 0 ] s9_r , output [BITS-1 : 0 ] s9_i ,
		
		input [BITS-1:0] t10_r , input [BITS-1:0] t10_i , input [BITS-1:0] t11_r , input [BITS-1:0] t11_i ,
		input [BITS-1:0] twiddle6_r , input [BITS-1:0] twiddle6_i ,
		output [BITS-1 : 0 ] s10_r , output [BITS-1 : 0 ] s10_i , output [BITS-1 : 0 ] s11_r ,output [BITS-1 : 0 ] s11_i ,
		
		input [BITS-1:0] t12_r , input [BITS-1:0] t12_i , input [BITS-1:0] t13_r , input [BITS-1:0] t13_i ,
		input [BITS-1:0] twiddle7_r , input [BITS-1:0] twiddle7_i ,
		output [BITS-1 : 0 ] s12_r , output [BITS-1 : 0 ] s12_i , output [BITS-1 : 0 ] s13_r , output [BITS-1 : 0 ] s13_i ,
		
		input [BITS-1:0] t14_r , input [BITS-1:0] t14_i , input [BITS-1:0] t15_r , input [BITS-1:0] t15_i ,
		input [BITS-1:0] twiddle8_r , input [BITS-1:0] twiddle8_i ,
		output [BITS-1 : 0 ] s14_r , output [BITS-1 : 0 ] s14_i , output [BITS-1 : 0 ] s15_r , output [BITS-1 : 0 ] s15_i ,
		
		input [BITS-1:0] t16_r , input [BITS-1:0] t16_i , input [BITS-1:0] t17_r , input [BITS-1:0] t17_i ,
		input [BITS-1:0] twiddle9_r , input [BITS-1:0] twiddle9_i ,
		output [BITS-1 : 0 ] s16_r , output [BITS-1 : 0 ] s16_i , output [BITS-1 : 0 ] s17_r , output [BITS-1 : 0 ] s17_i ,
		
		input [BITS-1:0] t18_r , input [BITS-1:0] t18_i , input [BITS-1:0] t19_r , input [BITS-1:0] t19_i ,
		input [BITS-1:0] twiddle10_r , input [BITS-1:0] twiddle10_i ,
		output [BITS-1 : 0 ] s18_r , output [BITS-1 : 0 ] s18_i , output [BITS-1 : 0 ] s19_r , output [BITS-1 : 0 ] s19_i ,
		
		input [BITS-1:0] t20_r , input [BITS-1:0] t20_i , input [BITS-1:0] t21_r , input [BITS-1:0] t21_i ,
		input [BITS-1:0] twiddle11_r , input [BITS-1:0] twiddle11_i ,
		output [BITS-1 : 0 ] s20_r , output [BITS-1 : 0 ] s20_i , output [BITS-1 : 0 ] s21_r , output [BITS-1 : 0 ] s21_i ,
		
		input [BITS-1:0] t22_r , input [BITS-1:0] t22_i , input [BITS-1:0] t23_r , input [BITS-1:0] t23_i ,
		input [BITS-1:0] twiddle12_r , input [BITS-1:0] twiddle12_i ,
		output [BITS-1 : 0 ] s22_r , output [BITS-1 : 0 ] s22_i , output [BITS-1 : 0 ] s23_r , output [BITS-1 : 0 ] s23_i ,
		
		input [BITS-1:0] t24_r , input [BITS-1:0] t24_i , input [BITS-1:0] t25_r , input [BITS-1:0] t25_i ,
		input [BITS-1:0] twiddle13_r , input [BITS-1:0] twiddle13_i ,
		output [BITS-1 : 0 ] s24_r , output [BITS-1 : 0 ] s24_i , output [BITS-1 : 0 ] s25_r , output [BITS-1 : 0 ] s25_i ,
		
		input [BITS-1:0] t26_r , input [BITS-1:0] t26_i , input [BITS-1:0] t27_r , input [BITS-1:0] t27_i ,
		input [BITS-1:0] twiddle14_r , input [BITS-1:0] twiddle14_i ,
		output [BITS-1 : 0 ] s26_r , output [BITS-1 : 0 ] s26_i , output [BITS-1 : 0 ] s27_r , output [BITS-1 : 0 ] s27_i ,
		
		input [BITS-1:0] t28_r , input [BITS-1:0] t28_i , input [BITS-1:0] t29_r , input [BITS-1:0] t29_i ,
		input [BITS-1:0] twiddle15_r , input [BITS-1:0] twiddle15_i ,
		output [BITS-1 : 0 ] s28_r , output [BITS-1 : 0 ] s28_i , output [BITS-1 : 0 ] s29_r , output [BITS-1 : 0 ] s29_i ,
		
		input [BITS-1:0] t30_r , input [BITS-1:0] t30_i , input [BITS-1:0] t31_r , input [BITS-1:0] t31_i ,
		input [BITS-1:0] twiddle16_r , input [BITS-1:0] twiddle16_i ,
		output [BITS-1 : 0 ] s30_r , output [BITS-1 : 0 ] s30_i , output [BITS-1 : 0 ] s31_r , output [BITS-1 : 0 ] s31_i ,
		
		input [BITS-1:0] t32_r , input [BITS-1:0] t32_i , input [BITS-1:0] t33_r , input [BITS-1:0] t33_i ,
		input [BITS-1:0] twiddle17_r , input [BITS-1:0] twiddle17_i ,
		output [BITS-1 : 0 ] s32_r , output [BITS-1 : 0 ] s32_i , output [BITS-1 : 0 ] s33_r , output [BITS-1 : 0 ] s33_i ,
		
		input [BITS-1:0] t34_r ,input [BITS-1:0] t34_i ,input [BITS-1:0] t35_r ,input [BITS-1:0] t35_i ,
		input [BITS-1:0] twiddle18_r ,input [BITS-1:0] twiddle18_i ,
		output [BITS-1 : 0 ] s34_r ,output [BITS-1 : 0 ] s34_i ,output [BITS-1 : 0 ] s35_r ,output [BITS-1 : 0 ] s35_i ,
		
		input [BITS-1:0] t36_r ,input [BITS-1:0] t36_i ,input [BITS-1:0] t37_r ,input [BITS-1:0] t37_i ,
		input [BITS-1:0] twiddle19_r ,input [BITS-1:0] twiddle19_i ,
		output [BITS-1 : 0 ] s36_r ,output [BITS-1 : 0 ] s36_i ,output [BITS-1 : 0 ] s37_r ,output [BITS-1 : 0 ] s37_i ,
		
		input [BITS-1:0] t38_r ,input [BITS-1:0] t38_i ,input [BITS-1:0] t39_r ,input [BITS-1:0] t39_i ,
		input [BITS-1:0] twiddle20_r ,input [BITS-1:0] twiddle20_i ,
		output [BITS-1 : 0 ] s38_r ,output [BITS-1 : 0 ] s38_i ,output [BITS-1 : 0 ] s39_r ,output [BITS-1 : 0 ] s39_i ,
		
		input [BITS-1:0] t40_r ,input [BITS-1:0] t40_i ,input [BITS-1:0] t41_r ,input [BITS-1:0] t41_i ,
		input [BITS-1:0] twiddle21_r ,input [BITS-1:0] twiddle21_i ,
		output [BITS-1 : 0 ] s40_r ,output [BITS-1 : 0 ] s40_i ,output [BITS-1 : 0 ] s41_r ,output [BITS-1 : 0 ] s41_i ,
		
		input [BITS-1:0] t42_r ,input [BITS-1:0] t42_i ,input [BITS-1:0] t43_r ,input [BITS-1:0] t43_i ,
		input [BITS-1:0] twiddle22_r ,input [BITS-1:0] twiddle22_i ,
		output [BITS-1 : 0 ] s42_r ,output [BITS-1 : 0 ] s42_i ,output [BITS-1 : 0 ] s43_r ,output [BITS-1 : 0 ] s43_i ,
		
		input [BITS-1:0] t44_r ,input [BITS-1:0] t44_i ,input [BITS-1:0] t45_r ,input [BITS-1:0] t45_i ,
		input [BITS-1:0] twiddle23_r ,input [BITS-1:0] twiddle23_i ,
		output [BITS-1 : 0 ] s44_r ,output [BITS-1 : 0 ] s44_i ,output [BITS-1 : 0 ] s45_r ,output [BITS-1 : 0 ] s45_i ,
		
		input [BITS-1:0] t46_r ,input [BITS-1:0] t46_i ,input [BITS-1:0] t47_r ,input [BITS-1:0] t47_i ,
		input [BITS-1:0] twiddle24_r ,input [BITS-1:0] twiddle24_i ,
		output [BITS-1 : 0 ] s46_r ,output [BITS-1 : 0 ] s46_i ,output [BITS-1 : 0 ] s47_r ,output [BITS-1 : 0 ] s47_i ,
		
		input [BITS-1:0] t48_r ,input [BITS-1:0] t48_i ,input [BITS-1:0] t49_r ,input [BITS-1:0] t49_i ,
		input [BITS-1:0] twiddle25_r ,input [BITS-1:0] twiddle25_i ,
		output [BITS-1 : 0 ] s48_r ,output [BITS-1 : 0 ] s48_i ,output [BITS-1 : 0 ] s49_r ,output [BITS-1 : 0 ] s49_i ,
		
		input [BITS-1:0] t50_r ,input [BITS-1:0] t50_i ,input [BITS-1:0] t51_r ,input [BITS-1:0] t51_i ,
		input [BITS-1:0] twiddle26_r ,input [BITS-1:0] twiddle26_i ,
		output [BITS-1 : 0 ] s50_r ,output [BITS-1 : 0 ] s50_i ,output [BITS-1 : 0 ] s51_r ,output [BITS-1 : 0 ] s51_i ,
		
		input [BITS-1:0] t52_r ,input [BITS-1:0] t52_i ,input [BITS-1:0] t53_r ,input [BITS-1:0] t53_i ,
		input [BITS-1:0] twiddle27_r ,input [BITS-1:0] twiddle27_i ,
		output [BITS-1 : 0 ] s52_r ,output [BITS-1 : 0 ] s52_i ,output [BITS-1 : 0 ] s53_r ,output [BITS-1 : 0 ] s53_i ,
		
		input [BITS-1:0] t54_r ,input [BITS-1:0] t54_i ,input [BITS-1:0] t55_r ,input [BITS-1:0] t55_i ,
		input [BITS-1:0] twiddle28_r ,input [BITS-1:0] twiddle28_i ,
		output [BITS-1 : 0 ] s54_r ,output [BITS-1 : 0 ] s54_i ,output [BITS-1 : 0 ] s55_r ,output [BITS-1 : 0 ] s55_i ,
		
		input [BITS-1:0] t56_r ,input [BITS-1:0] t56_i ,input [BITS-1:0] t57_r ,input [BITS-1:0] t57_i ,
		input [BITS-1:0] twiddle29_r ,input [BITS-1:0] twiddle29_i ,
		output [BITS-1 : 0 ] s56_r ,output [BITS-1 : 0 ] s56_i ,output [BITS-1 : 0 ] s57_r ,output [BITS-1 : 0 ] s57_i ,
		
		input [BITS-1:0] t58_r ,input [BITS-1:0] t58_i ,input [BITS-1:0] t59_r ,input [BITS-1:0] t59_i ,
		input [BITS-1:0] twiddle30_r ,input [BITS-1:0] twiddle30_i ,
		output [BITS-1 : 0 ] s58_r ,output [BITS-1 : 0 ] s58_i ,output [BITS-1 : 0 ] s59_r ,output [BITS-1 : 0 ] s59_i ,
		
		input [BITS-1:0] t60_r ,input [BITS-1:0] t60_i ,input [BITS-1:0] t61_r ,input [BITS-1:0] t61_i ,
		input [BITS-1:0] twiddle31_r ,input [BITS-1:0] twiddle31_i ,
		output [BITS-1 : 0 ] s60_r ,output [BITS-1 : 0 ] s60_i ,output [BITS-1 : 0 ] s61_r ,output [BITS-1 : 0 ] s61_i ,
		
		input [BITS-1:0] t62_r ,input [BITS-1:0] t62_i ,input [BITS-1:0] t63_r ,input [BITS-1:0] t63_i ,
		input [BITS-1:0] twiddle32_r ,input [BITS-1:0] twiddle32_i ,
		output [BITS-1 : 0 ] s62_r ,output [BITS-1 : 0 ] s62_i ,output [BITS-1 : 0 ] s63_r ,output [BITS-1 : 0 ] s63_i ,
		
		input [BITS-1:0] t64_r ,input [BITS-1:0] t64_i ,input [BITS-1:0] t65_r ,input [BITS-1:0] t65_i ,
		input [BITS-1:0] twiddle33_r ,input [BITS-1:0] twiddle33_i ,
		output [BITS-1 : 0 ] s64_r ,output [BITS-1 : 0 ] s64_i ,output [BITS-1 : 0 ] s65_r ,output [BITS-1 : 0 ] s65_i ,
		
		input [BITS-1:0] t66_r ,input [BITS-1:0] t66_i ,input [BITS-1:0] t67_r ,input [BITS-1:0] t67_i ,
		input [BITS-1:0] twiddle34_r ,input [BITS-1:0] twiddle34_i ,
		output [BITS-1 : 0 ] s66_r ,output [BITS-1 : 0 ] s66_i ,output [BITS-1 : 0 ] s67_r ,output [BITS-1 : 0 ] s67_i ,
		
		input [BITS-1:0] t68_r ,input [BITS-1:0] t68_i ,input [BITS-1:0] t69_r ,input [BITS-1:0] t69_i ,
		input [BITS-1:0] twiddle35_r ,input [BITS-1:0] twiddle35_i ,
		output [BITS-1 : 0 ] s68_r ,output [BITS-1 : 0 ] s68_i ,output [BITS-1 : 0 ] s69_r ,output [BITS-1 : 0 ] s69_i ,
		
		input [BITS-1:0] t70_r ,input [BITS-1:0] t70_i ,input [BITS-1:0] t71_r ,input [BITS-1:0] t71_i ,
		input [BITS-1:0] twiddle36_r ,input [BITS-1:0] twiddle36_i ,
		output [BITS-1 : 0 ] s70_r ,output [BITS-1 : 0 ] s70_i ,output [BITS-1 : 0 ] s71_r ,output [BITS-1 : 0 ] s71_i ,
		
		input [BITS-1:0] t72_r ,input [BITS-1:0] t72_i ,input [BITS-1:0] t73_r ,input [BITS-1:0] t73_i ,
		input [BITS-1:0] twiddle37_r ,input [BITS-1:0] twiddle37_i ,
		output [BITS-1 : 0 ] s72_r ,output [BITS-1 : 0 ] s72_i ,output [BITS-1 : 0 ] s73_r ,output [BITS-1 : 0 ] s73_i ,
		
		input [BITS-1:0] t74_r ,input [BITS-1:0] t74_i ,input [BITS-1:0] t75_r ,input [BITS-1:0] t75_i ,
		input [BITS-1:0] twiddle38_r ,input [BITS-1:0] twiddle38_i ,
		output [BITS-1 : 0 ] s74_r ,output [BITS-1 : 0 ] s74_i ,output [BITS-1 : 0 ] s75_r ,output [BITS-1 : 0 ] s75_i ,
		
		input [BITS-1:0] t76_r ,input [BITS-1:0] t76_i ,input [BITS-1:0] t77_r ,input [BITS-1:0] t77_i ,
		input [BITS-1:0] twiddle39_r ,input [BITS-1:0] twiddle39_i ,
		output [BITS-1 : 0 ] s76_r ,output [BITS-1 : 0 ] s76_i ,output [BITS-1 : 0 ] s77_r ,output [BITS-1 : 0 ] s77_i ,
		
		input [BITS-1:0] t78_r ,input [BITS-1:0] t78_i ,input [BITS-1:0] t79_r ,input [BITS-1:0] t79_i ,
		input [BITS-1:0] twiddle40_r ,input [BITS-1:0] twiddle40_i ,
		output [BITS-1 : 0 ] s78_r ,output [BITS-1 : 0 ] s78_i ,output [BITS-1 : 0 ] s79_r ,output [BITS-1 : 0 ] s79_i ,
		
		input [BITS-1:0] t80_r ,input [BITS-1:0] t80_i ,input [BITS-1:0] t81_r ,input [BITS-1:0] t81_i ,
		input [BITS-1:0] twiddle41_r ,input [BITS-1:0] twiddle41_i ,
		output [BITS-1 : 0 ] s80_r ,output [BITS-1 : 0 ] s80_i ,output [BITS-1 : 0 ] s81_r ,output [BITS-1 : 0 ] s81_i ,
		
		input [BITS-1:0] t82_r ,input [BITS-1:0] t82_i ,input [BITS-1:0] t83_r ,input [BITS-1:0] t83_i ,
		input [BITS-1:0] twiddle42_r ,input [BITS-1:0] twiddle42_i ,
		output [BITS-1 : 0 ] s82_r ,output [BITS-1 : 0 ] s82_i ,output [BITS-1 : 0 ] s83_r ,output [BITS-1 : 0 ] s83_i ,
		
		input [BITS-1:0] t84_r ,input [BITS-1:0] t84_i ,input [BITS-1:0] t85_r ,input [BITS-1:0] t85_i ,
		input [BITS-1:0] twiddle43_r ,input [BITS-1:0] twiddle43_i ,
		output [BITS-1 : 0 ] s84_r ,output [BITS-1 : 0 ] s84_i ,output [BITS-1 : 0 ] s85_r ,output [BITS-1 : 0 ] s85_i ,
		
		input [BITS-1:0] t86_r ,input [BITS-1:0] t86_i ,input [BITS-1:0] t87_r ,input [BITS-1:0] t87_i ,
		input [BITS-1:0] twiddle44_r ,input [BITS-1:0] twiddle44_i ,
		output [BITS-1 : 0 ] s86_r ,output [BITS-1 : 0 ] s86_i ,output [BITS-1 : 0 ] s87_r ,output [BITS-1 : 0 ] s87_i ,
		
		input [BITS-1:0] t88_r ,input [BITS-1:0] t88_i ,input [BITS-1:0] t89_r ,input [BITS-1:0] t89_i ,
		input [BITS-1:0] twiddle45_r ,input [BITS-1:0] twiddle45_i ,
		output [BITS-1 : 0 ] s88_r ,output [BITS-1 : 0 ] s88_i ,output [BITS-1 : 0 ] s89_r ,output [BITS-1 : 0 ] s89_i ,
		
		input [BITS-1:0] t90_r ,input [BITS-1:0] t90_i ,input [BITS-1:0] t91_r ,input [BITS-1:0] t91_i ,
		input [BITS-1:0] twiddle46_r ,input [BITS-1:0] twiddle46_i ,
		output [BITS-1 : 0 ] s90_r ,output [BITS-1 : 0 ] s90_i ,output [BITS-1 : 0 ] s91_r ,output [BITS-1 : 0 ] s91_i ,
		
		input [BITS-1:0] t92_r ,input [BITS-1:0] t92_i ,input [BITS-1:0] t93_r ,input [BITS-1:0] t93_i ,
		input [BITS-1:0] twiddle47_r ,input [BITS-1:0] twiddle47_i ,
		output [BITS-1 : 0 ] s92_r ,output [BITS-1 : 0 ] s92_i ,output [BITS-1 : 0 ] s93_r ,output [BITS-1 : 0 ] s93_i ,
		
		input [BITS-1:0] t94_r ,input [BITS-1:0] t94_i ,input [BITS-1:0] t95_r ,input [BITS-1:0] t95_i ,
		input [BITS-1:0] twiddle48_r ,input [BITS-1:0] twiddle48_i ,
		output [BITS-1 : 0 ] s94_r ,output [BITS-1 : 0 ] s94_i ,output [BITS-1 : 0 ] s95_r ,output [BITS-1 : 0 ] s95_i ,
		
		input [BITS-1:0] t96_r ,input [BITS-1:0] t96_i ,input [BITS-1:0] t97_r ,input [BITS-1:0] t97_i ,
		input [BITS-1:0] twiddle49_r ,input [BITS-1:0] twiddle49_i ,
		output [BITS-1 : 0 ] s96_r ,output [BITS-1 : 0 ] s96_i ,output [BITS-1 : 0 ] s97_r ,output [BITS-1 : 0 ] s97_i ,
		
		input [BITS-1:0] t98_r ,input [BITS-1:0] t98_i ,input [BITS-1:0] t99_r ,input [BITS-1:0] t99_i ,
		input [BITS-1:0] twiddle50_r ,input [BITS-1:0] twiddle50_i ,
		output [BITS-1 : 0 ] s98_r ,output [BITS-1 : 0 ] s98_i ,output [BITS-1 : 0 ] s99_r ,output [BITS-1 : 0 ] s99_i ,
		
		input [BITS-1:0] t100_r ,input [BITS-1:0] t100_i ,input [BITS-1:0] t101_r ,input [BITS-1:0] t101_i ,
		input [BITS-1:0] twiddle51_r ,input [BITS-1:0] twiddle51_i ,
		output [BITS-1 : 0 ] s100_r ,output [BITS-1 : 0 ] s100_i ,output [BITS-1 : 0 ] s101_r ,output [BITS-1 : 0 ] s101_i ,
		
		input [BITS-1:0] t102_r ,input [BITS-1:0] t102_i ,input [BITS-1:0] t103_r ,input [BITS-1:0] t103_i ,
		input [BITS-1:0] twiddle52_r ,input [BITS-1:0] twiddle52_i ,
		output [BITS-1 : 0 ] s102_r ,output [BITS-1 : 0 ] s102_i ,output [BITS-1 : 0 ] s103_r ,output [BITS-1 : 0 ] s103_i ,
		
		input [BITS-1:0] t104_r ,input [BITS-1:0] t104_i ,input [BITS-1:0] t105_r ,input [BITS-1:0] t105_i ,
		input [BITS-1:0] twiddle53_r ,input [BITS-1:0] twiddle53_i ,
		output [BITS-1 : 0 ] s104_r ,output [BITS-1 : 0 ] s104_i ,output [BITS-1 : 0 ] s105_r ,output [BITS-1 : 0 ] s105_i ,
		
		input [BITS-1:0] t106_r ,input [BITS-1:0] t106_i ,input [BITS-1:0] t107_r ,input [BITS-1:0] t107_i ,
		input [BITS-1:0] twiddle54_r ,input [BITS-1:0] twiddle54_i ,
		output [BITS-1 : 0 ] s106_r ,output [BITS-1 : 0 ] s106_i ,output [BITS-1 : 0 ] s107_r ,output [BITS-1 : 0 ] s107_i ,
		
		input [BITS-1:0] t108_r ,input [BITS-1:0] t108_i ,input [BITS-1:0] t109_r ,input [BITS-1:0] t109_i ,
		input [BITS-1:0] twiddle55_r ,input [BITS-1:0] twiddle55_i ,
		output [BITS-1 : 0 ] s108_r ,output [BITS-1 : 0 ] s108_i ,output [BITS-1 : 0 ] s109_r ,output [BITS-1 : 0 ] s109_i ,
		
		input [BITS-1:0] t110_r ,input [BITS-1:0] t110_i ,input [BITS-1:0] t111_r ,input [BITS-1:0] t111_i ,
		input [BITS-1:0] twiddle56_r ,input [BITS-1:0] twiddle56_i ,
		output [BITS-1 : 0 ] s110_r ,output [BITS-1 : 0 ] s110_i ,output [BITS-1 : 0 ] s111_r ,output [BITS-1 : 0 ] s111_i ,
		
		input [BITS-1:0] t112_r ,input [BITS-1:0] t112_i ,input [BITS-1:0] t113_r ,input [BITS-1:0] t113_i ,
		input [BITS-1:0] twiddle57_r ,input [BITS-1:0] twiddle57_i ,
		output [BITS-1 : 0 ] s112_r ,output [BITS-1 : 0 ] s112_i ,output [BITS-1 : 0 ] s113_r ,output [BITS-1 : 0 ] s113_i ,
		
		input [BITS-1:0] t114_r ,input [BITS-1:0] t114_i ,input [BITS-1:0] t115_r ,input [BITS-1:0] t115_i ,
		input [BITS-1:0] twiddle58_r ,input [BITS-1:0] twiddle58_i ,
		output [BITS-1 : 0 ] s114_r ,output [BITS-1 : 0 ] s114_i ,output [BITS-1 : 0 ] s115_r ,output [BITS-1 : 0 ] s115_i ,
		
		input [BITS-1:0] t116_r ,input [BITS-1:0] t116_i ,input [BITS-1:0] t117_r ,input [BITS-1:0] t117_i ,
		input [BITS-1:0] twiddle59_r ,input [BITS-1:0] twiddle59_i ,
		output [BITS-1 : 0 ] s116_r ,output [BITS-1 : 0 ] s116_i ,output [BITS-1 : 0 ] s117_r ,output [BITS-1 : 0 ] s117_i ,
		
		input [BITS-1:0] t118_r ,input [BITS-1:0] t118_i ,input [BITS-1:0] t119_r ,input [BITS-1:0] t119_i ,
		input [BITS-1:0] twiddle60_r ,input [BITS-1:0] twiddle60_i ,
		output [BITS-1 : 0 ] s118_r ,output [BITS-1 : 0 ] s118_i ,output [BITS-1 : 0 ] s119_r ,output [BITS-1 : 0 ] s119_i ,
		
		input [BITS-1:0] t120_r ,input [BITS-1:0] t120_i ,input [BITS-1:0] t121_r ,input [BITS-1:0] t121_i ,
		input [BITS-1:0] twiddle61_r ,input [BITS-1:0] twiddle61_i ,
		output [BITS-1 : 0 ] s120_r ,output [BITS-1 : 0 ] s120_i ,output [BITS-1 : 0 ] s121_r ,output [BITS-1 : 0 ] s121_i ,
		
		input [BITS-1:0] t122_r ,input [BITS-1:0] t122_i ,input [BITS-1:0] t123_r ,input [BITS-1:0] t123_i ,
		input [BITS-1:0] twiddle62_r ,input [BITS-1:0] twiddle62_i ,
		output [BITS-1 : 0 ] s122_r ,output [BITS-1 : 0 ] s122_i ,output [BITS-1 : 0 ] s123_r ,output [BITS-1 : 0 ] s123_i ,
		
		input [BITS-1:0] t124_r ,input [BITS-1:0] t124_i ,input [BITS-1:0] t125_r ,input [BITS-1:0] t125_i ,
		input [BITS-1:0] twiddle63_r ,input [BITS-1:0] twiddle63_i ,
		output [BITS-1 : 0 ] s124_r ,output [BITS-1 : 0 ] s124_i ,output [BITS-1 : 0 ] s125_r ,output [BITS-1 : 0 ] s125_i ,
		
		input [BITS-1:0] t126_r ,input [BITS-1:0] t126_i ,input [BITS-1:0] t127_r ,input [BITS-1:0] t127_i ,
		input [BITS-1:0] twiddle64_r ,input [BITS-1:0] twiddle64_i ,
		output [BITS-1 : 0 ] s126_r ,output [BITS-1 : 0 ] s126_i ,output [BITS-1 : 0 ] s127_r ,output [BITS-1 : 0 ] s127_i 
		
	);

Butterfly_Top U0_BU (
//.clk(clk),
.rst(rst),
.in1_r(t0_r),
.in1_i(t0_i),
.in2_r(t1_r),
.in2_i(t1_i),
.twiddle_r(twiddle1_r),
.twiddle_i(twiddle1_i),
.out1_r(s0_r),
.out1_i(s0_i),
.out2_r(s1_r),
.out2_i(s1_i)
);

Butterfly_Top U1_BU (
//.clk(clk),
.rst(rst),
.in1_r(t2_r),
.in1_i(t2_i),
.in2_r(t3_r),
.in2_i(t3_i),
.twiddle_r(twiddle2_r),
.twiddle_i(twiddle2_i),
.out1_r(s2_r),
.out1_i(s2_i),
.out2_r(s3_r),
.out2_i(s3_i)
);

Butterfly_Top U2_BU (
//.clk(clk),
.rst(rst),
.in1_r(t4_r),
.in1_i(t4_i),
.in2_r(t5_r),
.in2_i(t5_i),
.twiddle_r(twiddle3_r),
.twiddle_i(twiddle3_i),
.out1_r(s4_r),
.out1_i(s4_i),
.out2_r(s5_r),
.out2_i(s5_i)
);

Butterfly_Top U3_BU (
//.clk(clk),
.rst(rst),
.in1_r(t6_r),
.in1_i(t6_i),
.in2_r(t7_r),
.in2_i(t7_i),
.twiddle_r(twiddle4_r),
.twiddle_i(twiddle4_i),
.out1_r(s6_r),
.out1_i(s6_i),
.out2_r(s7_r),
.out2_i(s7_i)
);

Butterfly_Top U4_BU (
//.clk(clk),
.rst(rst),
.in1_r(t8_r),
.in1_i(t8_i),
.in2_r(t9_r),
.in2_i(t9_i),
.twiddle_r(twiddle5_r),
.twiddle_i(twiddle5_i),
.out1_r(s8_r),
.out1_i(s8_i),
.out2_r(s9_r),
.out2_i(s9_i)
);

Butterfly_Top U5_BU (
//.clk(clk),
.rst(rst),
.in1_r(t10_r),
.in1_i(t10_i),
.in2_r(t11_r),
.in2_i(t11_i),
.twiddle_r(twiddle6_r),
.twiddle_i(twiddle6_i),
.out1_r(s10_r),
.out1_i(s10_i),
.out2_r(s11_r),
.out2_i(s11_i)
);

Butterfly_Top U6_BU (
//.clk(clk),
.rst(rst),
.in1_r(t12_r),
.in1_i(t12_i),
.in2_r(t13_r),
.in2_i(t13_i),
.twiddle_r(twiddle7_r),
.twiddle_i(twiddle7_i),
.out1_r(s12_r),
.out1_i(s12_i),
.out2_r(s13_r),
.out2_i(s13_i)
);

Butterfly_Top U7_BU (
//.clk(clk),
.rst(rst),
.in1_r(t14_r),
.in1_i(t14_i),
.in2_r(t15_r),
.in2_i(t15_i),
.twiddle_r(twiddle8_r),
.twiddle_i(twiddle8_i),
.out1_r(s14_r),
.out1_i(s14_i),
.out2_r(s15_r),
.out2_i(s15_i)
);

Butterfly_Top U8_BU (
//.clk(clk),
.rst(rst),
.in1_r(t16_r),
.in1_i(t16_i),
.in2_r(t17_r),
.in2_i(t17_i),
.twiddle_r(twiddle9_r),
.twiddle_i(twiddle9_i),
.out1_r(s16_r),
.out1_i(s16_i),
.out2_r(s17_r),
.out2_i(s17_i)
);

Butterfly_Top U9_BU (
//.clk(clk),
.rst(rst),
.in1_r(t18_r),
.in1_i(t18_i),
.in2_r(t19_r),
.in2_i(t19_i),
.twiddle_r(twiddle10_r),
.twiddle_i(twiddle10_i),
.out1_r(s18_r),
.out1_i(s18_i),
.out2_r(s19_r),
.out2_i(s19_i)
);

Butterfly_Top U10_BU (
//.clk(clk),
.rst(rst),
.in1_r(t20_r),
.in1_i(t20_i),
.in2_r(t21_r),
.in2_i(t21_i),
.twiddle_r(twiddle11_r),
.twiddle_i(twiddle11_i),
.out1_r(s20_r),
.out1_i(s20_i),
.out2_r(s21_r),
.out2_i(s21_i)
);

Butterfly_Top U11_BU (
//.clk(clk),
.rst(rst),
.in1_r(t22_r),
.in1_i(t22_i),
.in2_r(t23_r),
.in2_i(t23_i),
.twiddle_r(twiddle12_r),
.twiddle_i(twiddle12_i),
.out1_r(s22_r),
.out1_i(s22_i),
.out2_r(s23_r),
.out2_i(s23_i)
);

Butterfly_Top U12_BU (
//.clk(clk),
.rst(rst),
.in1_r(t24_r),
.in1_i(t24_i),
.in2_r(t25_r),
.in2_i(t25_i),
.twiddle_r(twiddle13_r),
.twiddle_i(twiddle13_i),
.out1_r(s24_r),
.out1_i(s24_i),
.out2_r(s25_r),
.out2_i(s25_i)
);

Butterfly_Top U13_BU (
//.clk(clk),
.rst(rst),
.in1_r(t26_r),
.in1_i(t26_i),
.in2_r(t27_r),
.in2_i(t27_i),
.twiddle_r(twiddle14_r),
.twiddle_i(twiddle14_i),
.out1_r(s26_r),
.out1_i(s26_i),
.out2_r(s27_r),
.out2_i(s27_i)
);

Butterfly_Top U14_BU (
//.clk(clk),
.rst(rst),
.in1_r(t28_r),
.in1_i(t28_i),
.in2_r(t29_r),
.in2_i(t29_i),
.twiddle_r(twiddle15_r),
.twiddle_i(twiddle15_i),
.out1_r(s28_r),
.out1_i(s28_i),
.out2_r(s29_r),
.out2_i(s29_i)
);

Butterfly_Top U15_BU (
//.clk(clk),
.rst(rst),
.in1_r(t30_r),
.in1_i(t30_i),
.in2_r(t31_r),
.in2_i(t31_i),
.twiddle_r(twiddle16_r),
.twiddle_i(twiddle16_i),
.out1_r(s30_r),
.out1_i(s30_i),
.out2_r(s31_r),
.out2_i(s31_i)
);

Butterfly_Top U16_BU (
//.clk(clk),
.rst(rst),
.in1_r(t32_r),
.in1_i(t32_i),
.in2_r(t33_r),
.in2_i(t33_i),
.twiddle_r(twiddle17_r),
.twiddle_i(twiddle17_i),
.out1_r(s32_r),
.out1_i(s32_i),
.out2_r(s33_r),
.out2_i(s33_i)
);

Butterfly_Top U17_BU (
//.clk(clk),
.rst(rst),
.in1_r(t34_r),
.in1_i(t34_i),
.in2_r(t35_r),
.in2_i(t35_i),
.twiddle_r(twiddle18_r),
.twiddle_i(twiddle18_i),
.out1_r(s34_r),
.out1_i(s34_i),
.out2_r(s35_r),
.out2_i(s35_i)
);

Butterfly_Top U18_BU (
//.clk(clk),
.rst(rst),
.in1_r(t36_r),
.in1_i(t36_i),
.in2_r(t37_r),
.in2_i(t37_i),
.twiddle_r(twiddle19_r),
.twiddle_i(twiddle19_i),
.out1_r(s36_r),
.out1_i(s36_i),
.out2_r(s37_r),
.out2_i(s37_i)
);

Butterfly_Top U19_BU (
//.clk(clk),
.rst(rst),
.in1_r(t38_r),
.in1_i(t38_i),
.in2_r(t39_r),
.in2_i(t39_i),
.twiddle_r(twiddle20_r),
.twiddle_i(twiddle20_i),
.out1_r(s38_r),
.out1_i(s38_i),
.out2_r(s39_r),
.out2_i(s39_i)
);

Butterfly_Top U20_BU (
//.clk(clk),
.rst(rst),
.in1_r(t40_r),
.in1_i(t40_i),
.in2_r(t41_r),
.in2_i(t41_i),
.twiddle_r(twiddle21_r),
.twiddle_i(twiddle21_i),
.out1_r(s40_r),
.out1_i(s40_i),
.out2_r(s41_r),
.out2_i(s41_i)
);

Butterfly_Top U21_BU (
//.clk(clk),
.rst(rst),
.in1_r(t42_r),
.in1_i(t42_i),
.in2_r(t43_r),
.in2_i(t43_i),
.twiddle_r(twiddle22_r),
.twiddle_i(twiddle22_i),
.out1_r(s42_r),
.out1_i(s42_i),
.out2_r(s43_r),
.out2_i(s43_i)
);

Butterfly_Top U22_BU (
//.clk(clk),
.rst(rst),
.in1_r(t44_r),
.in1_i(t44_i),
.in2_r(t45_r),
.in2_i(t45_i),
.twiddle_r(twiddle23_r),
.twiddle_i(twiddle23_i),
.out1_r(s44_r),
.out1_i(s44_i),
.out2_r(s45_r),
.out2_i(s45_i)
);

Butterfly_Top U23_BU (
//.clk(clk),
.rst(rst),
.in1_r(t46_r),
.in1_i(t46_i),
.in2_r(t47_r),
.in2_i(t47_i),
.twiddle_r(twiddle24_r),
.twiddle_i(twiddle24_i),
.out1_r(s46_r),
.out1_i(s46_i),
.out2_r(s47_r),
.out2_i(s47_i)
);

Butterfly_Top U24_BU (
//.clk(clk),
.rst(rst),
.in1_r(t48_r),
.in1_i(t48_i),
.in2_r(t49_r),
.in2_i(t49_i),
.twiddle_r(twiddle25_r),
.twiddle_i(twiddle25_i),
.out1_r(s48_r),
.out1_i(s48_i),
.out2_r(s49_r),
.out2_i(s49_i)
);

Butterfly_Top U25_BU (
//.clk(clk),
.rst(rst),
.in1_r(t50_r),
.in1_i(t50_i),
.in2_r(t51_r),
.in2_i(t51_i),
.twiddle_r(twiddle26_r),
.twiddle_i(twiddle26_i),
.out1_r(s50_r),
.out1_i(s50_i),
.out2_r(s51_r),
.out2_i(s51_i)
);

Butterfly_Top U26_BU (
//.clk(clk),
.rst(rst),
.in1_r(t52_r),
.in1_i(t52_i),
.in2_r(t53_r),
.in2_i(t53_i),
.twiddle_r(twiddle27_r),
.twiddle_i(twiddle27_i),
.out1_r(s52_r),
.out1_i(s52_i),
.out2_r(s53_r),
.out2_i(s53_i)
);

Butterfly_Top U27_BU (
//.clk(clk),
.rst(rst),
.in1_r(t54_r),
.in1_i(t54_i),
.in2_r(t55_r),
.in2_i(t55_i),
.twiddle_r(twiddle28_r),
.twiddle_i(twiddle28_i),
.out1_r(s54_r),
.out1_i(s54_i),
.out2_r(s55_r),
.out2_i(s55_i)
);

Butterfly_Top U28_BU (
//.clk(clk),
.rst(rst),
.in1_r(t56_r),
.in1_i(t56_i),
.in2_r(t57_r),
.in2_i(t57_i),
.twiddle_r(twiddle29_r),
.twiddle_i(twiddle29_i),
.out1_r(s56_r),
.out1_i(s56_i),
.out2_r(s57_r),
.out2_i(s57_i)
);

Butterfly_Top U29_BU (
//.clk(clk),
.rst(rst),
.in1_r(t58_r),
.in1_i(t58_i),
.in2_r(t59_r),
.in2_i(t59_i),
.twiddle_r(twiddle30_r),
.twiddle_i(twiddle30_i),
.out1_r(s58_r),
.out1_i(s58_i),
.out2_r(s59_r),
.out2_i(s59_i)
);

Butterfly_Top U30_BU (
//.clk(clk),
.rst(rst),
.in1_r(t60_r),
.in1_i(t60_i),
.in2_r(t61_r),
.in2_i(t61_i),
.twiddle_r(twiddle31_r),
.twiddle_i(twiddle31_i),
.out1_r(s60_r),
.out1_i(s60_i),
.out2_r(s61_r),
.out2_i(s61_i)
);

Butterfly_Top U31_BU (
//.clk(clk),
.rst(rst),
.in1_r(t62_r),
.in1_i(t62_i),
.in2_r(t63_r),
.in2_i(t63_i),
.twiddle_r(twiddle32_r),
.twiddle_i(twiddle32_i),
.out1_r(s62_r),
.out1_i(s62_i),
.out2_r(s63_r),
.out2_i(s63_i)
);

Butterfly_Top U32_BU (
//.clk(clk),
.rst(rst),
.in1_r(t64_r),
.in1_i(t64_i),
.in2_r(t65_r),
.in2_i(t65_i),
.twiddle_r(twiddle33_r),
.twiddle_i(twiddle33_i),
.out1_r(s64_r),
.out1_i(s64_i),
.out2_r(s65_r),
.out2_i(s65_i)
);

Butterfly_Top U33_BU (
//.clk(clk),
.rst(rst),
.in1_r(t66_r),
.in1_i(t66_i),
.in2_r(t67_r),
.in2_i(t67_i),
.twiddle_r(twiddle34_r),
.twiddle_i(twiddle34_i),
.out1_r(s66_r),
.out1_i(s66_i),
.out2_r(s67_r),
.out2_i(s67_i)
);

Butterfly_Top U34_BU (
//.clk(clk),
.rst(rst),
.in1_r(t68_r),
.in1_i(t68_i),
.in2_r(t69_r),
.in2_i(t69_i),
.twiddle_r(twiddle35_r),
.twiddle_i(twiddle35_i),
.out1_r(s68_r),
.out1_i(s68_i),
.out2_r(s69_r),
.out2_i(s69_i)
);

Butterfly_Top U35_BU (
//.clk(clk),
.rst(rst),
.in1_r(t70_r),
.in1_i(t70_i),
.in2_r(t71_r),
.in2_i(t71_i),
.twiddle_r(twiddle36_r),
.twiddle_i(twiddle36_i),
.out1_r(s70_r),
.out1_i(s70_i),
.out2_r(s71_r),
.out2_i(s71_i)
);

Butterfly_Top U36_BU (
//.clk(clk),
.rst(rst),
.in1_r(t72_r),
.in1_i(t72_i),
.in2_r(t73_r),
.in2_i(t73_i),
.twiddle_r(twiddle37_r),
.twiddle_i(twiddle37_i),
.out1_r(s72_r),
.out1_i(s72_i),
.out2_r(s73_r),
.out2_i(s73_i)
);

Butterfly_Top U37_BU (
//.clk(clk),
.rst(rst),
.in1_r(t74_r),
.in1_i(t74_i),
.in2_r(t75_r),
.in2_i(t75_i),
.twiddle_r(twiddle38_r),
.twiddle_i(twiddle38_i),
.out1_r(s74_r),
.out1_i(s74_i),
.out2_r(s75_r),
.out2_i(s75_i)
);

Butterfly_Top U38_BU (
//.clk(clk),
.rst(rst),
.in1_r(t76_r),
.in1_i(t76_i),
.in2_r(t77_r),
.in2_i(t77_i),
.twiddle_r(twiddle39_r),
.twiddle_i(twiddle39_i),
.out1_r(s76_r),
.out1_i(s76_i),
.out2_r(s77_r),
.out2_i(s77_i)
);

Butterfly_Top U39_BU (
//.clk(clk),
.rst(rst),
.in1_r(t78_r),
.in1_i(t78_i),
.in2_r(t79_r),
.in2_i(t79_i),
.twiddle_r(twiddle40_r),
.twiddle_i(twiddle40_i),
.out1_r(s78_r),
.out1_i(s78_i),
.out2_r(s79_r),
.out2_i(s79_i)
);

Butterfly_Top U40_BU (
//.clk(clk),
.rst(rst),
.in1_r(t80_r),
.in1_i(t80_i),
.in2_r(t81_r),
.in2_i(t81_i),
.twiddle_r(twiddle41_r),
.twiddle_i(twiddle41_i),
.out1_r(s80_r),
.out1_i(s80_i),
.out2_r(s81_r),
.out2_i(s81_i)
);

Butterfly_Top U41_BU (
//.clk(clk),
.rst(rst),
.in1_r(t82_r),
.in1_i(t82_i),
.in2_r(t83_r),
.in2_i(t83_i),
.twiddle_r(twiddle42_r),
.twiddle_i(twiddle42_i),
.out1_r(s82_r),
.out1_i(s82_i),
.out2_r(s83_r),
.out2_i(s83_i)
);

Butterfly_Top U42_BU (
//.clk(clk),
.rst(rst),
.in1_r(t84_r),
.in1_i(t84_i),
.in2_r(t85_r),
.in2_i(t85_i),
.twiddle_r(twiddle43_r),
.twiddle_i(twiddle43_i),
.out1_r(s84_r),
.out1_i(s84_i),
.out2_r(s85_r),
.out2_i(s85_i)
);

Butterfly_Top U43_BU (
//.clk(clk),
.rst(rst),
.in1_r(t86_r),
.in1_i(t86_i),
.in2_r(t87_r),
.in2_i(t87_i),
.twiddle_r(twiddle44_r),
.twiddle_i(twiddle44_i),
.out1_r(s86_r),
.out1_i(s86_i),
.out2_r(s87_r),
.out2_i(s87_i)
);

Butterfly_Top U44_BU (
//.clk(clk),
.rst(rst),
.in1_r(t88_r),
.in1_i(t88_i),
.in2_r(t89_r),
.in2_i(t89_i),
.twiddle_r(twiddle45_r),
.twiddle_i(twiddle45_i),
.out1_r(s88_r),
.out1_i(s88_i),
.out2_r(s89_r),
.out2_i(s89_i)
);

Butterfly_Top U45_BU (
//.clk(clk),
.rst(rst),
.in1_r(t90_r),
.in1_i(t90_i),
.in2_r(t91_r),
.in2_i(t91_i),
.twiddle_r(twiddle46_r),
.twiddle_i(twiddle46_i),
.out1_r(s90_r),
.out1_i(s90_i),
.out2_r(s91_r),
.out2_i(s91_i)
);

Butterfly_Top U46_BU (
//.clk(clk),
.rst(rst),
.in1_r(t92_r),
.in1_i(t92_i),
.in2_r(t93_r),
.in2_i(t93_i),
.twiddle_r(twiddle47_r),
.twiddle_i(twiddle47_i),
.out1_r(s92_r),
.out1_i(s92_i),
.out2_r(s93_r),
.out2_i(s93_i)
);

Butterfly_Top U47_BU (
//.clk(clk),
.rst(rst),
.in1_r(t94_r),
.in1_i(t94_i),
.in2_r(t95_r),
.in2_i(t95_i),
.twiddle_r(twiddle48_r),
.twiddle_i(twiddle48_i),
.out1_r(s94_r),
.out1_i(s94_i),
.out2_r(s95_r),
.out2_i(s95_i)
);

Butterfly_Top U48_BU (
//.clk(clk),
.rst(rst),
.in1_r(t96_r),
.in1_i(t96_i),
.in2_r(t97_r),
.in2_i(t97_i),
.twiddle_r(twiddle49_r),
.twiddle_i(twiddle49_i),
.out1_r(s96_r),
.out1_i(s96_i),
.out2_r(s97_r),
.out2_i(s97_i)
);

Butterfly_Top U49_BU (
//.clk(clk),
.rst(rst),
.in1_r(t98_r),
.in1_i(t98_i),
.in2_r(t99_r),
.in2_i(t99_i),
.twiddle_r(twiddle50_r),
.twiddle_i(twiddle50_i),
.out1_r(s98_r),
.out1_i(s98_i),
.out2_r(s99_r),
.out2_i(s99_i)
);

Butterfly_Top U50_BU (
//.clk(clk),
.rst(rst),
.in1_r(t100_r),
.in1_i(t100_i),
.in2_r(t101_r),
.in2_i(t101_i),
.twiddle_r(twiddle51_r),
.twiddle_i(twiddle51_i),
.out1_r(s100_r),
.out1_i(s100_i),
.out2_r(s101_r),
.out2_i(s101_i)
);

Butterfly_Top U51_BU (
//.clk(clk),
.rst(rst),
.in1_r(t102_r),
.in1_i(t102_i),
.in2_r(t103_r),
.in2_i(t103_i),
.twiddle_r(twiddle52_r),
.twiddle_i(twiddle52_i),
.out1_r(s102_r),
.out1_i(s102_i),
.out2_r(s103_r),
.out2_i(s103_i)
);

Butterfly_Top U52_BU (
//.clk(clk),
.rst(rst),
.in1_r(t104_r),
.in1_i(t104_i),
.in2_r(t105_r),
.in2_i(t105_i),
.twiddle_r(twiddle53_r),
.twiddle_i(twiddle53_i),
.out1_r(s104_r),
.out1_i(s104_i),
.out2_r(s105_r),
.out2_i(s105_i)
);

Butterfly_Top U53_BU (
//.clk(clk),
.rst(rst),
.in1_r(t106_r),
.in1_i(t106_i),
.in2_r(t107_r),
.in2_i(t107_i),
.twiddle_r(twiddle54_r),
.twiddle_i(twiddle54_i),
.out1_r(s106_r),
.out1_i(s106_i),
.out2_r(s107_r),
.out2_i(s107_i)
);

Butterfly_Top U54_BU (
//.clk(clk),
.rst(rst),
.in1_r(t108_r),
.in1_i(t108_i),
.in2_r(t109_r),
.in2_i(t109_i),
.twiddle_r(twiddle55_r),
.twiddle_i(twiddle55_i),
.out1_r(s108_r),
.out1_i(s108_i),
.out2_r(s109_r),
.out2_i(s109_i)
);

Butterfly_Top U55_BU (
//.clk(clk),
.rst(rst),
.in1_r(t110_r),
.in1_i(t110_i),
.in2_r(t111_r),
.in2_i(t111_i),
.twiddle_r(twiddle56_r),
.twiddle_i(twiddle56_i),
.out1_r(s110_r),
.out1_i(s110_i),
.out2_r(s111_r),
.out2_i(s111_i)
);

Butterfly_Top U56_BU (
//.clk(clk),
.rst(rst),
.in1_r(t112_r),
.in1_i(t112_i),
.in2_r(t113_r),
.in2_i(t113_i),
.twiddle_r(twiddle57_r),
.twiddle_i(twiddle57_i),
.out1_r(s112_r),
.out1_i(s112_i),
.out2_r(s113_r),
.out2_i(s113_i)
);

Butterfly_Top U57_BU (
//.clk(clk),
.rst(rst),
.in1_r(t114_r),
.in1_i(t114_i),
.in2_r(t115_r),
.in2_i(t115_i),
.twiddle_r(twiddle58_r),
.twiddle_i(twiddle58_i),
.out1_r(s114_r),
.out1_i(s114_i),
.out2_r(s115_r),
.out2_i(s115_i)
);

Butterfly_Top U58_BU (
//.clk(clk),
.rst(rst),
.in1_r(t116_r),
.in1_i(t116_i),
.in2_r(t117_r),
.in2_i(t117_i),
.twiddle_r(twiddle59_r),
.twiddle_i(twiddle59_i),
.out1_r(s116_r),
.out1_i(s116_i),
.out2_r(s117_r),
.out2_i(s117_i)
);

Butterfly_Top U59_BU (
//.clk(clk),
.rst(rst),
.in1_r(t118_r),
.in1_i(t118_i),
.in2_r(t119_r),
.in2_i(t119_i),
.twiddle_r(twiddle60_r),
.twiddle_i(twiddle60_i),
.out1_r(s118_r),
.out1_i(s118_i),
.out2_r(s119_r),
.out2_i(s119_i)
);

Butterfly_Top U60_BU (
//.clk(clk),
.rst(rst),
.in1_r(t120_r),
.in1_i(t120_i),
.in2_r(t121_r),
.in2_i(t121_i),
.twiddle_r(twiddle61_r),
.twiddle_i(twiddle61_i),
.out1_r(s120_r),
.out1_i(s120_i),
.out2_r(s121_r),
.out2_i(s121_i)
);

Butterfly_Top U61_BU (
//.clk(clk),
.rst(rst),
.in1_r(t122_r),
.in1_i(t122_i),
.in2_r(t123_r),
.in2_i(t123_i),
.twiddle_r(twiddle62_r),
.twiddle_i(twiddle62_i),
.out1_r(s122_r),
.out1_i(s122_i),
.out2_r(s123_r),
.out2_i(s123_i)
);

Butterfly_Top U62_BU (
//.clk(clk),
.rst(rst),
.in1_r(t124_r),
.in1_i(t124_i),
.in2_r(t125_r),
.in2_i(t125_i),
.twiddle_r(twiddle63_r),
.twiddle_i(twiddle63_i),
.out1_r(s124_r),
.out1_i(s124_i),
.out2_r(s125_r),
.out2_i(s125_i)
);

Butterfly_Top U63_BU (
//.clk(clk),
.rst(rst),
.in1_r(t126_r),
.in1_i(t126_i),
.in2_r(t127_r),
.in2_i(t127_i),
.twiddle_r(twiddle64_r),
.twiddle_i(twiddle64_i),
.out1_r(s126_r),
.out1_i(s126_i),
.out2_r(s127_r),
.out2_i(s127_i)
);

endmodule