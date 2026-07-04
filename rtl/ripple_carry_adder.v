`timescale 1ns / 1ps

module ripple_carry_adder(
    input  [15:0] A,
    input  [15:0] B,
    output [15:0] SUM,
    output COUT
);

wire [16:0] carry;

assign carry[0] = 1'b0;

genvar i;

generate
    for(i = 0; i < 16; i = i + 1)
    begin : RCA

        full_adder FA(
            .a(A[i]),
            .b(B[i]),
            .cin(carry[i]),
            .sum(SUM[i]),
            .cout(carry[i+1])
        );

    end
endgenerate

assign COUT = carry[16];

endmodule