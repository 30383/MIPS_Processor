`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 22:32:15
// Design Name: 
// Module Name: IDIX_PR
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


module IFID_PR(
    input en, clk, rst,
    input [31:0] IDIX_PR_in,
    output reg [31:0] IDIX_PR_out
    );
    reg [31:0] PC_reg;
    
    always@(posedge rst or posedge clk) begin
        if(rst) PC_reg<=0; 
        else IDIX_PR_out<=PC_reg;
    end
    always@(negedge clk) begin
        PC_reg<=IDIX_PR_in;
    end
endmodule
