`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 23:15:39
// Design Name: 
// Module Name: B_mux
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

module B_mux(
    input [31:0] D1,
    input [31:0] D2,
    input s,
    output reg [31:0] ALU_B
    );
    always@* begin
        if(s==0) ALU_B<=D1;
        else if(s==1) ALU_B<=D2;
    end
endmodule