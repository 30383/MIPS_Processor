`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 03:31:36
// Design Name: 
// Module Name: BIG_UNIT
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


module BIG_UNIT(
    input [31:0] EM_in,
    input [31:0] EM_in_sw,
    input [4:0] EM_rd,
    input [31:0] MWB_in,
    input [4:0] MWB_rd,
    input [4:0] IDEX_rs, IDEX_rt, IDEX_rd,
    input [5:0] IDEX_opcode,
    input [4:0] IFID_rs, IFID_rt,
    output reg PC_en,
    output reg[31:0] A,
    output reg[31:0] B,
    output reg CA,
    output reg CB
    );
    always@* begin
        if (((IFID_rs==IDEX_rd)|(IFID_rt==IDEX_rd))&&(IDEX_opcode==0)) PC_en<=0;
        else PC_en<=1;
        if(IDEX_rs==EM_rd) begin
            A<=EM_in; CA<=1; 
        end
        else if(IDEX_rs==MWB_rd) begin
            A<=MWB_in; CA<=1;
        end
        else CA<=0;
        
        if((IDEX_rt==EM_rd)&&(IDEX_opcode==3)) begin
                B<=EM_in_sw; CB<=1;
            end
        else if(IDEX_rt==EM_rd) begin
                B<=EM_in; CB<=1;
        end
        else if(IDEX_rt==MWB_rd) begin
            B<=MWB_in; CB<=1;
        end
        else CB<=0; 
    end
endmodule
