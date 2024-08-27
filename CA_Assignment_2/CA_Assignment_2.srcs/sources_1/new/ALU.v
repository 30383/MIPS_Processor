`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 23:32:57
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] A,
    input [31:0] B,
    input [1:0] control,
    output reg [31:0] ALUout
    );
    always@* begin
        if(control==0) ALUout=A+B;
        else if(control==1) ALUout=A-B;
        else if(control==2) ALUout=A^B;
        else if(control==3) ALUout=A|B;
    end
endmodule
