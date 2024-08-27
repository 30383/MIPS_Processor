`timescale 1ns / 1ps
module EXMEM_PR(
    input clk, rst,
    input [72:0] EXMEM_in,
    output reg [72:0] EXMEM_out
);
reg [72:0] PR_reg;
always@(posedge clk or rst) begin
    if(rst) PR_reg<=0;
    else EXMEM_out<=PR_reg;
end
always@(negedge clk) begin
    PR_reg<=EXMEM_in;
end
endmodule