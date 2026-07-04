`timescale 1ns / 1ps

module carry_save_adder(
    input  [15:0] A,
    input  [15:0] B,
    input  [15:0] C,
    output [15:0] SUM,
    output [15:0] CARRY
);

genvar i;

generate
    for(i = 0; i < 16; i = i + 1)
    begin : CSA

        full_adder FA(
            .a(A[i]),
            .b(B[i]),
            .cin(C[i]),
            .sum(SUM[i]),
            .cout(CARRY[i])
        );

    end
endgenerate

endmodule