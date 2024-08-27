`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 01:29:05
// Design Name: 
// Module Name: TOP_MODULE_tb
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


module TOP_MODULE_tb();
reg clk, rst, PC_enn;
TOP_MODULE DUT(clk, rst, PC_enn);
initial begin
    clk=1; rst=1; PC_enn=1;
    #2 rst=0; #13 PC_enn=0;
    #10 PC_enn=1;
end
initial begin
    repeat(20) begin
        #5clk=~clk;
    end
    $finish;
end
endmodule
