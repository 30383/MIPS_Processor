`timescale 1ns / 1ps
module TOP_MODULE(
    input clk, rst, PC_enn
);
    //register and wire initialisations
    wire PC_en, RegDst, ALUSrcB, MemRead, MemWrite, MemtoReg, CA, CB;
    wire [1:0] ALUop;
    wire [4:0] rd_out;
    wire [31:0] pcnew, Instruction, IFID_out, Write_data, Data1, Data2, seimm, BU_A_out, BU_B_out;
    wire [31:0] ALU_A, ALU_B, correct_B_out, ALUout, Data_out;
    wire [108:0] IDEX_out;
    wire [72:0] EXMEM_out;
    wire [70:0] MEMWB_out;
    //module instantiations
    //  IF STAGE
    PC_module o1(PC_enn, rst, clk, pcnew);
    Instruction_Memory o2(rst, pcnew, Instruction);
    //IFID pipeline register
    IFID_PR o3( 1'b1, clk, rst, Instruction, IFID_out);
    // ID STAGE
    REG_FILE o4( rst, MEMWB_out[70], IFID_out[25:21], IFID_out[20:16], Write_data, MEMWB_out[4:0], Data1, Data2);
    Main_control o5(IFID_out[31:26], ALUop, RegDst, ALUSrcB, MemRead, MemWrite, MemtoReg, RegWrite);
    //IDEX pipeline register
    IDEX_PR o6({IFID_out[15:0], RegWrite, MemtoReg, MemWrite, MemRead, ALUop, RegDst, ALUSrcB, IFID_out[25:21], Data1, Data2, IFID_out[20:16], IFID_out[15:11], IFID_out[31:26]}, clk, rst, 1'b1, IDEX_out);
    //EX STAGE
    SE o7(IDEX_out[108:93], seimm);
    A_mux o8(IDEX_out[79:48], BU_A_out, CA, ALU_A);
    sw_mux o9(IDEX_out[47:16], BU_B_out, CB, correct_B_out);
    B_mux o10(correct_B_out, seimm, IDEX_out[85], ALU_B);
    rt_rd_mux o11(IDEX_out[15:11], IDEX_out[10:6], IDEX_out[86], rd_out);
    ALU o12(ALU_A, ALU_B, IDEX_out[88:87], ALUout);
    //EXMEM pipeline register
    EXMEM_PR o13( clk, rst, {IDEX_out[92:89], ALUout, correct_B_out, rd_out}, EXMEM_out);
    //MEM STAGE
    Data_Memory o14(rst, EXMEM_out[70], EXMEM_out[69], EXMEM_out[68:37], EXMEM_out[36:5], Data_out);
    //MEMWB pipeline register
    MEMWB_PR o15(clk, rst, {EXMEM_out[72], EXMEM_out[71], EXMEM_out[68:37], Data_out, EXMEM_out[4:0]}, MEMWB_out);
    //WB STAGE
    lastmux o16(MEMWB_out[68:37], MEMWB_out[36:5], MEMWB_out[69], Write_data);
    //Stalling Unit, Hazard detection unit and Data Forwarding Unit
    BIG_UNIT o17(EXMEM_out[68:37], EXMEM_out[36:5], EXMEM_out[4:0], Write_data, MEMWB_out[4:0], IDEX_out[84:80], 
        IDEX_out[15:11], IDEX_out[10:6], IDEX_out[5:0], IFID_out[25:21], IFID_out[20:16], PC_en, BU_A_out, BU_B_out, CA, CB);
endmodule