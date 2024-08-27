`timescale 1ns / 1ps
module Main_control(
    input [5:0] Opcode,
    output reg [1:0] ALUop,
    output reg RegDst, ALUSrcB, MemRead, MemWrite, MemtoReg, RegWrite
);
    always@* begin
        if(Opcode==0) begin
            ALUop<=0; RegDst<=0; ALUSrcB<=1; MemRead<=1; MemWrite<=0; MemtoReg<=1; RegWrite<=1;
        end
        else if(Opcode==1) begin
            ALUop<=1; RegDst<=1; ALUSrcB<=0; MemRead<=0; MemWrite<=0; MemtoReg<=0; RegWrite<=1;
        end
        else if(Opcode==2) begin
            ALUop<=0; RegDst<=0; ALUSrcB<=1; MemRead<=0; MemWrite<=1; MemtoReg<=0; RegWrite<=0;
        end
        else if(Opcode==3) begin
            ALUop<=2; RegDst<=1; ALUSrcB<=0; MemRead<=0; MemWrite<=0; MemtoReg<=0; RegWrite<=1;
        end
        else if(Opcode==4) begin
            ALUop<=3; RegDst<=0; ALUSrcB<=1; MemRead<=0; MemWrite<=0; MemtoReg<=0; RegWrite<=1;
        end
    end
endmodule