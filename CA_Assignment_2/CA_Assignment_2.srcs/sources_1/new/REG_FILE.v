`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2024 22:44:19
// Design Name: 
// Module Name: REG_FILE
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


module REG_FILE(
    input rst,
    input RegWrite,
    input [4:0] rs,
    input [4:0] rt,
    input [31:0] Write_data,
    input [4:0] rd,
    output [31:0] Data1,
    output [31:0] Data2
    );
    reg [31:0] Registers [31:0];
    assign Data1 = Registers[rs];
    assign Data2 = Registers[rt];
    
    always@* begin
        if(rst) begin
            Registers[0]<=0; Registers[1]<=0; Registers[2]<=6; Registers[3]<=0; Registers[4]<=32'h0E311;
            Registers[5]<=32'h964EB; Registers[6]<=1; Registers[7]<=32'h964DA; Registers[8]<=32'h113E4; Registers[9]<=0;
            Registers[10]<=32'h1230B; Registers[11]<=0; Registers[12]<=0; Registers[13]<=0; Registers[14]<=0;
            Registers[15]<=0; Registers[16]<=0; Registers[17]<=0; Registers[18]<=0; Registers[19]<=0;
            Registers[20]<=0; Registers[21]<=0; Registers[22]<=0; Registers[23]<=0; Registers[24]<=0;
            Registers[25]<=0; Registers[26]<=0; Registers[27]<=0; Registers[28]<=0; Registers[29]<=0;
            Registers[30]<=0; Registers[31]<=0;
        end
        if(RegWrite) Registers[rd]<=Write_data;
    end
endmodule
