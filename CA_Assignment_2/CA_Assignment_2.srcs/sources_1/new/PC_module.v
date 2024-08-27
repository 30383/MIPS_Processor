`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 22:15:10
// Design Name: 
// Module Name: PC_module
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


module PC_module(
    input en,
    input rst, 
    input clk,
    output [31:0] PC_out
    );
    reg [31:0] PC;
    assign PC_out = PC;
    always@(posedge clk or posedge rst) begin
        if(rst) PC<=0;
        else if(en) PC<=PC+4;
    end
endmodule
