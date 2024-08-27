`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 00:46:44
// Design Name: 
// Module Name: MEMWB_PR
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


module MEMWB_PR(
    input clk, rst,
    input [70:0] MEMWB_in,
    output reg [70:0] MEMWB_out
    );
    reg [70:0] PR_reg;
    always@(posedge clk or rst) begin
        if(rst) PR_reg<=0;
        else MEMWB_out<=PR_reg;
    end
    always@(negedge clk) begin
        PR_reg<=MEMWB_in;
    end
endmodule
