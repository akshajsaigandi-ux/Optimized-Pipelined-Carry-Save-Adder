`timescale 1ns / 1ps

module pcsa_tb;

reg clk;
reg rst;
reg [15:0] A;
reg [15:0] B;
reg [15:0] C;

wire [15:0] RESULT;
wire COUT;

pcsa_top DUT (
    .clk(clk),
    .rst(rst),
    .A(A),
    .B(B),
    .C(C),
    .RESULT(RESULT),
    .COUT(COUT)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    A = 0;
    B = 0;
    C = 0;

    #20;
    rst = 0;

    // Test Vector 1
    A = 16'd10;
    B = 16'd20;
    C = 16'd30;

    #20;

    // Test Vector 2
    A = 16'd100;
    B = 16'd200;
    C = 16'd300;

    #20;

    // Test Vector 3
    A = 16'd1024;
    B = 16'd2048;
    C = 16'd4096;

    #20;

    // Test Vector 4
    A = 16'hFFFF;
    B = 16'd1;
    C = 16'd0;

    #20;

    $finish;
end

endmodule