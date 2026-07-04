`timescale 1ns / 1ps

module pipeline_register(
    input clk,
    input rst,
    input [15:0] sum_in,
    input [15:0] carry_in,
    output reg [15:0] sum_out,
    output reg [15:0] carry_out
);

always @(posedge clk or posedge rst)
begin
    if (rst)
    begin
        sum_out   <= 16'b0;
        carry_out <= 16'b0;
    end
    else
    begin
        sum_out   <= sum_in;
        carry_out <= carry_in;
    end
end

endmodule