`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 23:08:05
// Design Name: 
// Module Name: IDEX_PR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module IDEX_PR(
    input [108:0] IDEX_in,
    input clk, rst, en,
    output reg [108:0] IDEX_out
    );
    reg [108:0] PR_reg;
    always@(posedge rst) begin
        if(rst) PR_reg<=0;
    end
    always@(posedge clk) begin
        IDEX_out<=PR_reg;
    end
    always@(negedge clk) begin
        PR_reg<=IDEX_in;
    end
endmodule
