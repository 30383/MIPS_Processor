`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 23:38:14
// Design Name: 
// Module Name: sw_mux
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


module sw_mux(
    input [31:0] data2,
    input [31:0] datafwd,
    input s,
    output reg [31:0] out
    );
    always@* begin
        if(s) out<=datafwd;
        else out<=data2;
    end
endmodule
