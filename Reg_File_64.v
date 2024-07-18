module Reg_File_64 #(

parameter NUMBER_OF_REGISTERS = 64 ,
parameter BITS = 16
)
( 
	input wire    [NUMBER_OF_REGISTERS - 1 : 0] WrEn , 
	input wire    clk ,
	input wire    rst , 

	input wire [BITS - 1 : 0] WrData_0,
	input wire [BITS - 1 : 0] WrData_1,
	input wire [BITS - 1 : 0] WrData_2,
	input wire [BITS - 1 : 0] WrData_3,
	input wire [BITS - 1 : 0] WrData_4,
	input wire [BITS - 1 : 0] WrData_5,
	input wire [BITS - 1 : 0] WrData_6,
	input wire [BITS - 1 : 0] WrData_7,
	input wire [BITS - 1 : 0] WrData_8,
	input wire [BITS - 1 : 0] WrData_9,
	input wire [BITS - 1 : 0] WrData_10,
	input wire [BITS - 1 : 0] WrData_11,
	input wire [BITS - 1 : 0] WrData_12,
	input wire [BITS - 1 : 0] WrData_13,
	input wire [BITS - 1 : 0] WrData_14,
	input wire [BITS - 1 : 0] WrData_15,
	input wire [BITS - 1 : 0] WrData_16,
	input wire [BITS - 1 : 0] WrData_17,
	input wire [BITS - 1 : 0] WrData_18,
	input wire [BITS - 1 : 0] WrData_19,
	input wire [BITS - 1 : 0] WrData_20,
	input wire [BITS - 1 : 0] WrData_21,
	input wire [BITS - 1 : 0] WrData_22,
	input wire [BITS - 1 : 0] WrData_23,
	input wire [BITS - 1 : 0] WrData_24,
	input wire [BITS - 1 : 0] WrData_25,
	input wire [BITS - 1 : 0] WrData_26,
	input wire [BITS - 1 : 0] WrData_27,
	input wire [BITS - 1 : 0] WrData_28,
	input wire [BITS - 1 : 0] WrData_29,
	input wire [BITS - 1 : 0] WrData_30,
	input wire [BITS - 1 : 0] WrData_31,
	input wire [BITS - 1 : 0] WrData_32,
	input wire [BITS - 1 : 0] WrData_33,
	input wire [BITS - 1 : 0] WrData_34,
	input wire [BITS - 1 : 0] WrData_35,
	input wire [BITS - 1 : 0] WrData_36,
	input wire [BITS - 1 : 0] WrData_37,
	input wire [BITS - 1 : 0] WrData_38,
	input wire [BITS - 1 : 0] WrData_39,
	input wire [BITS - 1 : 0] WrData_40,
	input wire [BITS - 1 : 0] WrData_41,
	input wire [BITS - 1 : 0] WrData_42,
	input wire [BITS - 1 : 0] WrData_43,
	input wire [BITS - 1 : 0] WrData_44,
	input wire [BITS - 1 : 0] WrData_45,
	input wire [BITS - 1 : 0] WrData_46,
	input wire [BITS - 1 : 0] WrData_47,
	input wire [BITS - 1 : 0] WrData_48,
	input wire [BITS - 1 : 0] WrData_49,
	input wire [BITS - 1 : 0] WrData_50,
	input wire [BITS - 1 : 0] WrData_51,
	input wire [BITS - 1 : 0] WrData_52,
	input wire [BITS - 1 : 0] WrData_53,
	input wire [BITS - 1 : 0] WrData_54,
	input wire [BITS - 1 : 0] WrData_55,
	input wire [BITS - 1 : 0] WrData_56,
	input wire [BITS - 1 : 0] WrData_57,
	input wire [BITS - 1 : 0] WrData_58,
	input wire [BITS - 1 : 0] WrData_59,
	input wire [BITS - 1 : 0] WrData_60,
	input wire [BITS - 1 : 0] WrData_61,
	input wire [BITS - 1 : 0] WrData_62,
	input wire [BITS - 1 : 0] WrData_63,



	output reg [BITS - 1 : 0] RdData_0,
	output reg [BITS - 1 : 0] RdData_1,
	output reg [BITS - 1 : 0] RdData_2,
	output reg [BITS - 1 : 0] RdData_3,
	output reg [BITS - 1 : 0] RdData_4,
	output reg [BITS - 1 : 0] RdData_5,
	output reg [BITS - 1 : 0] RdData_6,
	output reg [BITS - 1 : 0] RdData_7,
	output reg [BITS - 1 : 0] RdData_8,
	output reg [BITS - 1 : 0] RdData_9,
	output reg [BITS - 1 : 0] RdData_10,
	output reg [BITS - 1 : 0] RdData_11,
	output reg [BITS - 1 : 0] RdData_12,
	output reg [BITS - 1 : 0] RdData_13,
	output reg [BITS - 1 : 0] RdData_14,
	output reg [BITS - 1 : 0] RdData_15,
	output reg [BITS - 1 : 0] RdData_16,
	output reg [BITS - 1 : 0] RdData_17,
	output reg [BITS - 1 : 0] RdData_18,
	output reg [BITS - 1 : 0] RdData_19,
	output reg [BITS - 1 : 0] RdData_20,
	output reg [BITS - 1 : 0] RdData_21,
	output reg [BITS - 1 : 0] RdData_22,
	output reg [BITS - 1 : 0] RdData_23,
	output reg [BITS - 1 : 0] RdData_24,
	output reg [BITS - 1 : 0] RdData_25,
	output reg [BITS - 1 : 0] RdData_26,
	output reg [BITS - 1 : 0] RdData_27,
	output reg [BITS - 1 : 0] RdData_28,
	output reg [BITS - 1 : 0] RdData_29,
	output reg [BITS - 1 : 0] RdData_30,
	output reg [BITS - 1 : 0] RdData_31,
	output reg [BITS - 1 : 0] RdData_32,
	output reg [BITS - 1 : 0] RdData_33,
	output reg [BITS - 1 : 0] RdData_34,
	output reg [BITS - 1 : 0] RdData_35,
	output reg [BITS - 1 : 0] RdData_36,
	output reg [BITS - 1 : 0] RdData_37,
	output reg [BITS - 1 : 0] RdData_38,
	output reg [BITS - 1 : 0] RdData_39,
	output reg [BITS - 1 : 0] RdData_40,
	output reg [BITS - 1 : 0] RdData_41,
	output reg [BITS - 1 : 0] RdData_42,
	output reg [BITS - 1 : 0] RdData_43,
	output reg [BITS - 1 : 0] RdData_44,
	output reg [BITS - 1 : 0] RdData_45,
	output reg [BITS - 1 : 0] RdData_46,
	output reg [BITS - 1 : 0] RdData_47,
	output reg [BITS - 1 : 0] RdData_48,
	output reg [BITS - 1 : 0] RdData_49,
	output reg [BITS - 1 : 0] RdData_50,
	output reg [BITS - 1 : 0] RdData_51,
	output reg [BITS - 1 : 0] RdData_52,
	output reg [BITS - 1 : 0] RdData_53,
	output reg [BITS - 1 : 0] RdData_54,
	output reg [BITS - 1 : 0] RdData_55,
	output reg [BITS - 1 : 0] RdData_56,
	output reg [BITS - 1 : 0] RdData_57,
	output reg [BITS - 1 : 0] RdData_58,
	output reg [BITS - 1 : 0] RdData_59,
	output reg [BITS - 1 : 0] RdData_60,
	output reg [BITS - 1 : 0] RdData_61,
	output reg [BITS - 1 : 0] RdData_62,
	output reg [BITS - 1 : 0] RdData_63
  
  );
 
/* For Loop Counter */
integer i ;


always @ (posedge clk or negedge rst)
begin
  if ( !rst )
    begin
		RdData_0  <= 'b0;   RdData_1  <= 'b0;   RdData_2  <= 'b0;   RdData_3  <= 'b0;   RdData_4  <= 'b0;   RdData_5  <= 'b0;
		RdData_6  <= 'b0;   RdData_7  <= 'b0;   RdData_8  <= 'b0;   RdData_9  <= 'b0;   RdData_10 <= 'b0;   RdData_11 <= 'b0;
		RdData_12 <= 'b0;   RdData_13 <= 'b0;   RdData_14 <= 'b0;   RdData_15 <= 'b0;   RdData_16 <= 'b0;   RdData_17 <= 'b0;
		RdData_18 <= 'b0;   RdData_19 <= 'b0;   RdData_20 <= 'b0;   RdData_21 <= 'b0;   RdData_22 <= 'b0;   RdData_23 <= 'b0;
		RdData_24 <= 'b0;   RdData_25 <= 'b0;   RdData_26 <= 'b0;   RdData_27 <= 'b0;   RdData_28 <= 'b0;   RdData_29 <= 'b0;
		RdData_30 <= 'b0;   RdData_31 <= 'b0;   RdData_32 <= 'b0;   RdData_33 <= 'b0;   RdData_34 <= 'b0;   RdData_35 <= 'b0;
		RdData_36 <= 'b0;   RdData_37 <= 'b0;   RdData_38 <= 'b0;   RdData_39 <= 'b0;   RdData_40 <= 'b0;   RdData_41 <= 'b0;
		RdData_42 <= 'b0;   RdData_43 <= 'b0;   RdData_44 <= 'b0;   RdData_45 <= 'b0;   RdData_46 <= 'b0;   RdData_47 <= 'b0;
		RdData_48 <= 'b0;   RdData_49 <= 'b0;   RdData_50 <= 'b0;   RdData_51 <= 'b0;   RdData_52 <= 'b0;   RdData_53 <= 'b0;
		RdData_54 <= 'b0;   RdData_55 <= 'b0;

		RdData_56 <= 'b0;   RdData_57 <= 'b0;   RdData_58 <= 'b0;   RdData_59 <= 'b0;   RdData_60 <= 'b0;   RdData_61 <= 'b0;
		RdData_62 <= 'b0;   RdData_63 <= 'b0; 
    end
  else
    begin
		if(WrEn[0] == 1)
		begin
			RdData_0 <= WrData_0 ;
		end
		
		if(WrEn[1] == 1)
		begin
			RdData_1 <= WrData_1 ;
		end
		
		if(WrEn[2] == 1)
		begin
			RdData_2 <= WrData_2 ;
		end
		
		if(WrEn[3] == 1)
		begin
			RdData_3 <= WrData_3 ;
		end
		
		if(WrEn[4] == 1)
		begin
			RdData_4 <= WrData_4 ;
		end
		
		if(WrEn[5] == 1)
		begin
			RdData_5 <= WrData_5 ;
		end
		
		if(WrEn[6] == 1)
		begin
			RdData_6 <= WrData_6 ;
		end
		
		if(WrEn[7] == 1)
		begin
			RdData_7 <= WrData_7 ;
		end
		
		if(WrEn[8] == 1)
		begin
			RdData_8 <= WrData_8 ;
		end
		
		if(WrEn[9] == 1)
		begin
			RdData_9 <= WrData_9 ;
		end
		
		if(WrEn[10] == 1)
		begin
			RdData_10 <= WrData_10 ;
		end
		
		if(WrEn[11] == 1)
		begin
			RdData_11 <= WrData_11 ;
		end
		
		if(WrEn[12] == 1)
		begin
			RdData_12 <= WrData_12 ;
		end
		
		if(WrEn[13] == 1)
		begin
			RdData_13 <= WrData_13 ;
		end
		
		if(WrEn[14] == 1)
		begin
			RdData_14 <= WrData_14 ;
		end
		
		if(WrEn[15] == 1)
		begin
			RdData_15 <= WrData_15 ;
		end
		
		if(WrEn[16] == 1)
		begin
			RdData_16 <= WrData_16 ;
		end
		
		if(WrEn[17] == 1)
		begin
			RdData_17 <= WrData_17 ;
		end
		
		if(WrEn[18] == 1)
		begin
			RdData_18 <= WrData_18 ;
		end
		
		if(WrEn[19] == 1)
		begin
			RdData_19 <= WrData_19 ;
		end
		
		if(WrEn[20] == 1)
		begin
			RdData_20 <= WrData_20 ;
		end
		
		if(WrEn[21] == 1)
		begin
			RdData_21 <= WrData_21 ;
		end
		
		if(WrEn[22] == 1)
		begin
			RdData_22 <= WrData_22 ;
		end
		
		if(WrEn[23] == 1)
		begin
			RdData_23 <= WrData_23 ;
		end
		
		if(WrEn[24] == 1)
		begin
			RdData_24 <= WrData_24 ;
		end
		
		if(WrEn[25] == 1)
		begin
			RdData_25 <= WrData_25 ;
		end
		
		if(WrEn[26] == 1)
		begin
			RdData_26 <= WrData_26 ;
		end
		
		if(WrEn[27] == 1)
		begin
			RdData_27 <= WrData_27 ;
		end
		
		if(WrEn[28] == 1)
		begin
			RdData_28 <= WrData_28 ;
		end
		
		if(WrEn[29] == 1)
		begin
			RdData_29 <= WrData_29 ;
		end
		
		if(WrEn[30] == 1)
		begin
			RdData_30 <= WrData_30 ;
		end
		
		if(WrEn[31] == 1)
		begin
			RdData_31 <= WrData_31 ;
		end
		
		if(WrEn[32] == 1)
		begin
			RdData_32 <= WrData_32 ;
		end
		
		if(WrEn[33] == 1)
		begin
			RdData_33 <= WrData_33 ;
		end
		
		if(WrEn[34] == 1)
		begin
			RdData_34 <= WrData_34 ;
		end
		
		if(WrEn[35] == 1)
		begin
			RdData_35 <= WrData_35 ;
		end
		
		if(WrEn[36] == 1)
		begin
			RdData_36 <= WrData_36 ;
		end
		
		if(WrEn[37] == 1)
		begin
			RdData_37 <= WrData_37 ;
		end
		
		if(WrEn[38] == 1)
		begin
			RdData_38 <= WrData_38 ;
		end
		
		if(WrEn[39] == 1)
		begin
			RdData_39 <= WrData_39 ;
		end
		
		if(WrEn[40] == 1)
		begin
			RdData_40 <= WrData_40 ;
		end
		
		if(WrEn[41] == 1)
		begin
			RdData_41 <= WrData_41 ;
		end
		
		if(WrEn[42] == 1)
		begin
			RdData_42 <= WrData_42 ;
		end
		
		if(WrEn[43] == 1)
		begin
			RdData_43 <= WrData_43 ;
		end
		
		if(WrEn[44] == 1)
		begin
			RdData_44 <= WrData_44 ;
		end
		
		if(WrEn[45] == 1)
		begin
			RdData_45 <= WrData_45 ;
		end
		
		if(WrEn[46] == 1)
		begin
			RdData_46 <= WrData_46 ;
		end
		
		if(WrEn[47] == 1)
		begin
			RdData_47 <= WrData_47 ;
		end
		
		if(WrEn[48] == 1)
		begin
			RdData_48 <= WrData_48 ;
		end
		
		if(WrEn[49] == 1)
		begin
			RdData_49 <= WrData_49 ;
		end
		
		if(WrEn[50] == 1)
		begin
			RdData_50 <= WrData_50 ;
		end
		
		if(WrEn[51] == 1)
		begin
			RdData_51 <= WrData_51 ;
		end
		
		if(WrEn[52] == 1)
		begin
			RdData_52 <= WrData_52 ;
		end
		
		if(WrEn[53] == 1)
		begin
			RdData_53 <= WrData_53 ;
		end
		
		if(WrEn[54] == 1)
		begin
			RdData_54 <= WrData_54 ;
		end
		
		if(WrEn[55] == 1)
		begin
			RdData_55 <= WrData_55 ;
		end
		
		if(WrEn[56] == 1)
		begin
			RdData_56 <= WrData_56 ;
		end
		
		if(WrEn[57] == 1)
		begin
			RdData_57 <= WrData_57 ;
		end
		
		if(WrEn[58] == 1)
		begin
			RdData_58 <= WrData_58 ;
		end
		
		if(WrEn[59] == 1)
		begin
			RdData_59 <= WrData_59 ;
		end
		
		if(WrEn[60] == 1)
		begin
			RdData_60 <= WrData_60 ;
		end
		
		if(WrEn[61] == 1)
		begin
			RdData_61 <= WrData_61 ;
		end
		
		if(WrEn[62] == 1)
		begin
			RdData_62 <= WrData_62 ;
		end
		
		if(WrEn[63] == 1)
		begin
			RdData_63 <= WrData_63 ;
		end
		
	end
end

endmodule
