`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 23:21:00
// Design Name: 
// Module Name: SE
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


module SE(
    input [15:0] imm,
    output reg [31:0] seimm
    );
    always@* begin
        if(imm[15]==0) assign seimm={16'b0000_0000_0000_0000, imm};
        else if(imm[15]==1) assign seimm={16'b1111_1111_1111_1111, imm};
    end
endmodule
