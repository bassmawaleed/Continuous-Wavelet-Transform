/* Description: Memory for storing numbers */
/* The memory contains 4 locations . It shall be instantiated as many time as it's needed */
/* Author : Basma Walid - Preprocessing Team */

module Memory #(parameter BITS = 16 , parameter ADDRESS_BITS = 2, parameter NUMBER_OF_LOCATIONS = 4)
(
	input clk ,
	input rst ,
	input wire [ADDRESS_BITS-1:0] read_address ,
	input wire [ADDRESS_BITS-1:0] write_address ,
	input wire 		[BITS-1:0]    write_data ,
	input wire		 	          write_enable ,
	output reg 		[BITS-1:0]    read_data
);

reg [BITS-1:0]  locations [NUMBER_OF_LOCATIONS-1:0] ;

integer i;

always@(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		/* At rst , reset the output and reset the memory */
		read_data <= 'b0;
		for(i=0 ; i<NUMBER_OF_LOCATIONS ; i = i + 1)
		begin
			locations[i] <= 'b0;
		end
		/* locations[0] <= 'b0 ;
		locations[1] <= 'b0 ;
		locations[2] <= 'b0 ;
		locations[3] <= 'b0 ; */
	end
	else
	begin
		/* There's always data on the read bus */
		read_data <= locations[read_address];
		
		/* If there is a write operation , write the data in the desired memory location */
		if(write_enable)
		begin
			locations[write_address] <= write_data ;
		end
		
	end
end

//assign read_data = locations[read_address]; 

endmodule

