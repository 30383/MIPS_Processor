`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 22:20:00
// Design Name: 
// Module Name: Instruction_Memory
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


module Instruction_Memory(
    input rst,
    input [31:0] Address,
    output [31:0] Instruction
    );
    reg [7:0] Memory[39:0];
    integer i;
    assign Instruction = {Memory[Address+3], Memory[Address+2], Memory[Address+1], Memory[Address]};
    always@* begin
        if(rst) begin
            Memory[3]<= 8'b0000_0000; Memory[2]<= 8'b0100_0001; Memory[1]<= 8'b0000_0000; Memory[0]<= 8'b0000_0010;
            Memory[7]<= 8'b0000_0100; Memory[6]<= 8'b0010_0001; Memory[5]<= 8'b0011_0000; Memory[4]<= 8'b0000_0000;
            Memory[11]<= 8'b0000_1000; Memory[10]<= 8'b0010_0110; Memory[9]<= 8'b0000_0000; Memory[8]<= 8'b0000_0010;
            Memory[15]<= 8'b0000_1100; Memory[14]<= 8'b1110_0110; Memory[13]<= 8'b0100_0000; Memory[12]<= 8'b0000_0000;
            Memory[19]<= 8'b0001_0001; Memory[18]<= 8'b0100_1001; Memory[17]<= 8'b0000_0000; Memory[16]<= 8'b0001_0110;
            for(i=20; i<40; i=i+1) begin
                Memory[i] <=0;
            end
        end
    end
    
endmodule
