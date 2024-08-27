`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 23:25:09
// Design Name: 
// Module Name: rt_rd_mux
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


module rt_rd_mux(
    input [4:0] rt,
    input [4:0] rd,
    input RegDst,
    output reg [4:0] rd_out
    );
    always@* begin
        if(RegDst) rd_out<=rd;
        else rd_out<=rt;
    end
endmodule
