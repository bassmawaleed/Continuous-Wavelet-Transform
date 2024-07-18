/* Description : This verilog file tends to construct a 128x1 MUX */
/* Author : Basma Walid - Preprocessing Team */

module MUX_128_1 #(parameter BITS = 16 , parameter SEL_BITS = 7)(

	input wire [BITS-1:0] mux_input_0 ,
	input wire [BITS-1:0] mux_input_1 ,
	input wire [BITS-1:0] mux_input_2 ,
	input wire [BITS-1:0] mux_input_3 ,
	input wire [BITS-1:0] mux_input_4 ,
	input wire [BITS-1:0] mux_input_5 ,
	input wire [BITS-1:0] mux_input_6 ,
	input wire [BITS-1:0] mux_input_7 ,
	input wire [BITS-1:0] mux_input_8 ,
	input wire [BITS-1:0] mux_input_9 ,
	input wire [BITS-1:0] mux_input_10 ,
	input wire [BITS-1:0] mux_input_11 ,
	input wire [BITS-1:0] mux_input_12 ,
	input wire [BITS-1:0] mux_input_13 ,
	input wire [BITS-1:0] mux_input_14 ,
	input wire [BITS-1:0] mux_input_15 ,
	input wire [BITS-1:0] mux_input_16 ,
	input wire [BITS-1:0] mux_input_17 ,
	input wire [BITS-1:0] mux_input_18 ,
	input wire [BITS-1:0] mux_input_19 ,
	input wire [BITS-1:0] mux_input_20 ,
	input wire [BITS-1:0] mux_input_21 ,
	input wire [BITS-1:0] mux_input_22 ,
	input wire [BITS-1:0] mux_input_23 ,
	input wire [BITS-1:0] mux_input_24 ,
	input wire [BITS-1:0] mux_input_25 ,
	input wire [BITS-1:0] mux_input_26 ,
	input wire [BITS-1:0] mux_input_27 ,
	input wire [BITS-1:0] mux_input_28 ,
	input wire [BITS-1:0] mux_input_29 ,
	input wire [BITS-1:0] mux_input_30 ,
	input wire [BITS-1:0] mux_input_31 ,
	input wire [BITS-1:0] mux_input_32 ,
	input wire [BITS-1:0] mux_input_33 ,
	input wire [BITS-1:0] mux_input_34 ,
	input wire [BITS-1:0] mux_input_35 ,
	input wire [BITS-1:0] mux_input_36 ,
	input wire [BITS-1:0] mux_input_37 ,
	input wire [BITS-1:0] mux_input_38 ,
	input wire [BITS-1:0] mux_input_39 ,
	input wire [BITS-1:0] mux_input_40 ,
	input wire [BITS-1:0] mux_input_41 ,
	input wire [BITS-1:0] mux_input_42 ,
	input wire [BITS-1:0] mux_input_43 ,
	input wire [BITS-1:0] mux_input_44 ,
	input wire [BITS-1:0] mux_input_45 ,
	input wire [BITS-1:0] mux_input_46 ,
	input wire [BITS-1:0] mux_input_47 ,
	input wire [BITS-1:0] mux_input_48 ,
	input wire [BITS-1:0] mux_input_49 ,
	input wire [BITS-1:0] mux_input_50 ,
	input wire [BITS-1:0] mux_input_51 ,
	input wire [BITS-1:0] mux_input_52 ,
	input wire [BITS-1:0] mux_input_53 ,
	input wire [BITS-1:0] mux_input_54 ,
	input wire [BITS-1:0] mux_input_55 ,
	input wire [BITS-1:0] mux_input_56 ,
	input wire [BITS-1:0] mux_input_57 ,
	input wire [BITS-1:0] mux_input_58 ,
	input wire [BITS-1:0] mux_input_59 ,
	input wire [BITS-1:0] mux_input_60 ,
	input wire [BITS-1:0] mux_input_61 ,
	input wire [BITS-1:0] mux_input_62 ,
	input wire [BITS-1:0] mux_input_63 ,
	input wire [BITS-1:0] mux_input_64 ,
	input wire [BITS-1:0] mux_input_65 ,
	input wire [BITS-1:0] mux_input_66 ,
	input wire [BITS-1:0] mux_input_67 ,
	input wire [BITS-1:0] mux_input_68 ,
	input wire [BITS-1:0] mux_input_69 ,
	input wire [BITS-1:0] mux_input_70 ,
	input wire [BITS-1:0] mux_input_71 ,
	input wire [BITS-1:0] mux_input_72 ,
	input wire [BITS-1:0] mux_input_73 ,
	input wire [BITS-1:0] mux_input_74 ,
	input wire [BITS-1:0] mux_input_75 ,
	input wire [BITS-1:0] mux_input_76 ,
	input wire [BITS-1:0] mux_input_77 ,
	input wire [BITS-1:0] mux_input_78 ,
	input wire [BITS-1:0] mux_input_79 ,
	input wire [BITS-1:0] mux_input_80 ,
	input wire [BITS-1:0] mux_input_81 ,
	input wire [BITS-1:0] mux_input_82 ,
	input wire [BITS-1:0] mux_input_83 ,
	input wire [BITS-1:0] mux_input_84 ,
	input wire [BITS-1:0] mux_input_85 ,
	input wire [BITS-1:0] mux_input_86 ,
	input wire [BITS-1:0] mux_input_87 ,
	input wire [BITS-1:0] mux_input_88 ,
	input wire [BITS-1:0] mux_input_89 ,
	input wire [BITS-1:0] mux_input_90 ,
	input wire [BITS-1:0] mux_input_91 ,
	input wire [BITS-1:0] mux_input_92 ,
	input wire [BITS-1:0] mux_input_93 ,
	input wire [BITS-1:0] mux_input_94 ,
	input wire [BITS-1:0] mux_input_95 ,
	input wire [BITS-1:0] mux_input_96 ,
	input wire [BITS-1:0] mux_input_97 ,
	input wire [BITS-1:0] mux_input_98 ,
	input wire [BITS-1:0] mux_input_99 ,
	input wire [BITS-1:0] mux_input_100 ,
	input wire [BITS-1:0] mux_input_101 ,
	input wire [BITS-1:0] mux_input_102 ,
	input wire [BITS-1:0] mux_input_103 ,
	input wire [BITS-1:0] mux_input_104 ,
	input wire [BITS-1:0] mux_input_105 ,
	input wire [BITS-1:0] mux_input_106 ,
	input wire [BITS-1:0] mux_input_107 ,
	input wire [BITS-1:0] mux_input_108 ,
	input wire [BITS-1:0] mux_input_109 ,
	input wire [BITS-1:0] mux_input_110 ,
	input wire [BITS-1:0] mux_input_111 ,
	input wire [BITS-1:0] mux_input_112 ,
	input wire [BITS-1:0] mux_input_113 ,
	input wire [BITS-1:0] mux_input_114 ,
	input wire [BITS-1:0] mux_input_115 ,
	input wire [BITS-1:0] mux_input_116 ,
	input wire [BITS-1:0] mux_input_117 ,
	input wire [BITS-1:0] mux_input_118 ,
	input wire [BITS-1:0] mux_input_119 ,
	input wire [BITS-1:0] mux_input_120 ,
	input wire [BITS-1:0] mux_input_121 ,
	input wire [BITS-1:0] mux_input_122 ,
	input wire [BITS-1:0] mux_input_123 ,
	input wire [BITS-1:0] mux_input_124 ,
	input wire [BITS-1:0] mux_input_125 ,
	input wire [BITS-1:0] mux_input_126 ,
	input wire [BITS-1:0] mux_input_127 ,
	input wire [SEL_BITS-1:0] sel_input ,
	output reg [BITS-1:0] mux_output
);

always@(*)
begin
	case(sel_input)
		0 : mux_output = mux_input_0 ;
		1 : mux_output = mux_input_1 ;
		2 : mux_output = mux_input_2 ;
		3 : mux_output = mux_input_3 ;
		4 : mux_output = mux_input_4 ;
		5 : mux_output = mux_input_5 ;
		6 : mux_output = mux_input_6 ;
		7 : mux_output = mux_input_7 ;
		8 : mux_output = mux_input_8 ;
		9 : mux_output = mux_input_9 ;
		10 : mux_output = mux_input_10 ;
		11 : mux_output = mux_input_11 ;
		12 : mux_output = mux_input_12 ;
		13 : mux_output = mux_input_13 ;
		14 : mux_output = mux_input_14 ;
		15 : mux_output = mux_input_15 ;
		16 : mux_output = mux_input_16 ;
		17 : mux_output = mux_input_17 ;
		18 : mux_output = mux_input_18 ;
		19 : mux_output = mux_input_19 ;
		20 : mux_output = mux_input_20 ;
		21 : mux_output = mux_input_21 ;
		22 : mux_output = mux_input_22 ;
		23 : mux_output = mux_input_23 ;
		24 : mux_output = mux_input_24 ;
		25 : mux_output = mux_input_25 ;
		26 : mux_output = mux_input_26 ;
		27 : mux_output = mux_input_27 ;
		28 : mux_output = mux_input_28 ;
		29 : mux_output = mux_input_29 ;
		30 : mux_output = mux_input_30 ;
		31 : mux_output = mux_input_31 ;
		32 : mux_output = mux_input_32 ;
		33 : mux_output = mux_input_33 ;
		34 : mux_output = mux_input_34 ;
		35 : mux_output = mux_input_35 ;
		36 : mux_output = mux_input_36 ;
		37 : mux_output = mux_input_37 ;
		38 : mux_output = mux_input_38 ;
		39 : mux_output = mux_input_39 ;
		40 : mux_output = mux_input_40 ;
		41 : mux_output = mux_input_41 ;
		42 : mux_output = mux_input_42 ;
		43 : mux_output = mux_input_43 ;
		44 : mux_output = mux_input_44 ;
		45 : mux_output = mux_input_45 ;
		46 : mux_output = mux_input_46 ;
		47 : mux_output = mux_input_47 ;
		48 : mux_output = mux_input_48 ;
		49 : mux_output = mux_input_49 ;
		50 : mux_output = mux_input_50 ;
		51 : mux_output = mux_input_51 ;
		52 : mux_output = mux_input_52 ;
		53 : mux_output = mux_input_53 ;
		54 : mux_output = mux_input_54 ;
		55 : mux_output = mux_input_55 ;
		56 : mux_output = mux_input_56 ;
		57 : mux_output = mux_input_57 ;
		58 : mux_output = mux_input_58 ;
		59 : mux_output = mux_input_59 ;
		60 : mux_output = mux_input_60 ;
		61 : mux_output = mux_input_61 ;
		62 : mux_output = mux_input_62 ;
		63 : mux_output = mux_input_63 ;
		64 : mux_output = mux_input_64 ;
		65 : mux_output = mux_input_65 ;
		66 : mux_output = mux_input_66 ;
		67 : mux_output = mux_input_67 ;
		68 : mux_output = mux_input_68 ;
		69 : mux_output = mux_input_69 ;
		70 : mux_output = mux_input_70 ;
		71 : mux_output = mux_input_71 ;
		72 : mux_output = mux_input_72 ;
		73 : mux_output = mux_input_73 ;
		74 : mux_output = mux_input_74 ;
		75 : mux_output = mux_input_75 ;
		76 : mux_output = mux_input_76 ;
		77 : mux_output = mux_input_77 ;
		78 : mux_output = mux_input_78 ;
		79 : mux_output = mux_input_79 ;
		80 : mux_output = mux_input_80 ;
		81 : mux_output = mux_input_81 ;
		82 : mux_output = mux_input_82 ;
		83 : mux_output = mux_input_83 ;
		84 : mux_output = mux_input_84 ;
		85 : mux_output = mux_input_85 ;
		86 : mux_output = mux_input_86 ;
		87 : mux_output = mux_input_87 ;
		88 : mux_output = mux_input_88 ;
		89 : mux_output = mux_input_89 ;
		90 : mux_output = mux_input_90 ;
		91 : mux_output = mux_input_91 ;
		92 : mux_output = mux_input_92 ;
		93 : mux_output = mux_input_93 ;
		94 : mux_output = mux_input_94 ;
		95 : mux_output = mux_input_95 ;
		96 : mux_output = mux_input_96 ;
		97 : mux_output = mux_input_97 ;
		98 : mux_output = mux_input_98 ;
		99 : mux_output = mux_input_99 ;
		100 : mux_output = mux_input_100 ;
		101 : mux_output = mux_input_101 ;
		102 : mux_output = mux_input_102 ;
		103 : mux_output = mux_input_103 ;
		104 : mux_output = mux_input_104 ;
		105 : mux_output = mux_input_105 ;
		106 : mux_output = mux_input_106 ;
		107 : mux_output = mux_input_107 ;
		108 : mux_output = mux_input_108 ;
		109 : mux_output = mux_input_109 ;
		110 : mux_output = mux_input_110 ;
		111 : mux_output = mux_input_111 ;
		112 : mux_output = mux_input_112 ;
		113 : mux_output = mux_input_113 ;
		114 : mux_output = mux_input_114 ;
		115 : mux_output = mux_input_115 ;
		116 : mux_output = mux_input_116 ;
		117 : mux_output = mux_input_117 ;
		118 : mux_output = mux_input_118 ;
		119 : mux_output = mux_input_119 ;
		120 : mux_output = mux_input_120 ;
		121 : mux_output = mux_input_121 ;
		122 : mux_output = mux_input_122 ;
		123 : mux_output = mux_input_123 ;
		124 : mux_output = mux_input_124 ;
		125 : mux_output = mux_input_125 ;
		126 : mux_output = mux_input_126 ;
		127 : mux_output = mux_input_127 ;		
		default : mux_output = mux_input_0 ;
	endcase
end

endmodule 

