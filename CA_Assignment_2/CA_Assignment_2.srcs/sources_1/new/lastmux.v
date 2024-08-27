`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 00:50:12
// Design Name: 
// Module Name: lastmux
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


module lastmux(
    input [31:0] data1,
    input [31:0] data2,
    input s,
    output reg [31:0] dataout
    );
    always@* begin
        if(s) dataout<=data2;
        else dataout<=data1;
    end
endmodule
