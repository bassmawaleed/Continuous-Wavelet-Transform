module divider #(
    parameter DATA_WIDTH = 16 // Width of the input dividend
)
(
    input rst,                        // Reset signal
    input wire [DATA_WIDTH-1:0] dividend, // Input dividend
    input wire [2:0] shift_amount,   // Shift amount (log2 of the divisor)
    output reg [DATA_WIDTH-1:0] quotient // Output quotient
);

    reg [DATA_WIDTH-1:0] pre_quotient; // Intermediate quotient calculation

    always @*
    begin 
        if (!rst)
        begin
            quotient <= 0;
            pre_quotient <= 0;
        end
        else
        begin
            pre_quotient = dividend >> shift_amount; // Right shift to divide by 2^N

            // Sign extension based on the sign bit of pre_quotient
            if (dividend[DATA_WIDTH-1] == 1'b1)
                quotient <= {{DATA_WIDTH-9{1'b1}}, pre_quotient[DATA_WIDTH-8:0]}; // Sign extend with 7 bits of 1s
            else
                quotient <= {{DATA_WIDTH-9{1'b0}}, pre_quotient[DATA_WIDTH-8:0]}; // Sign extend with 7 bits of 0s
        end
    end

endmodule
