`timescale 1ns / 1ps

module pcsa_top(
    input clk,
    input rst,
    input  [15:0] A,
    input  [15:0] B,
    input  [15:0] C,
    output [15:0] RESULT,
    output COUT
);

wire [15:0] sum_wire;
wire [15:0] carry_wire;

wire [15:0] sum_pipe;
wire [15:0] carry_pipe;

//--------------------------------------------------
// Carry Save Adder
//--------------------------------------------------

carry_save_adder CSA (
    .A(A),
    .B(B),
    .C(C),
    .SUM(sum_wire),
    .CARRY(carry_wire)
);

//--------------------------------------------------
// Pipeline Register
//--------------------------------------------------

pipeline_register PIPE (
    .clk(clk),
    .rst(rst),
    .sum_in(sum_wire),
    .carry_in(carry_wire),
    .sum_out(sum_pipe),
    .carry_out(carry_pipe)
);

//--------------------------------------------------
// Ripple Carry Adder
//--------------------------------------------------

ripple_carry_adder RCA (
    .A(sum_pipe),
    .B({carry_pipe[14:0],1'b0}),   // Left shift carry by 1
    .SUM(RESULT),
    .COUT(COUT)
);

endmodule