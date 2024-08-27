`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 00:19:49
// Design Name: 
// Module Name: Data_Memory
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


module Data_Memory(
    input rst,
    input MemWrite, MemRead,
    input [31:0] Address,
    input [31:0] Write_data,
    output reg [31:0] Data_out
    );
    reg [7:0] MEM [15:0];
    integer i, j;
    always@* begin
        if(rst) begin
            for(i=0; i<8; i=i+1) begin
                MEM[i]<=0;
            end
            for(j=13; j<16; j=j+1) begin
                MEM[j]<=0;
            end
            MEM[8]<=8'b0000_1010; MEM[9]<=8'b0000_0000;
            MEM[10]<=8'b0000_0000; MEM[11]<=8'b0000_0000;
            MEM[12]<=8'b0000_0011;
        end
        if(MemRead) Data_out<={MEM[Address+3], MEM[Address+2], MEM[Address+1], MEM[Address]};
        if(MemWrite) {MEM[Address+3], MEM[Address+2], MEM[Address+1], MEM[Address]}<=Write_data;
    end
endmodule
