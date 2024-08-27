`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 23:14:04
// Design Name: 
// Module Name: A_mux
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


module A_mux(
    input [31:0] D1,
    input [31:0] D2,
    input s,
    output reg [31:0] ALU_A
    );
    always@* begin
        if(s) ALU_A<=D2;
        else ALU_A<=D1;
    end
endmodule
