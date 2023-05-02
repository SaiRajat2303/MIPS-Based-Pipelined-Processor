`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 21:06:05
// Design Name: 
// Module Name: id_ex
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


module id_ex
(pc_if_id, read_data_1,read_data_2,X,rt,rd,
RegDst,aluOp,aluSrc, branch , memRead , memWrite ,regwrite,MemtoReg,
pc_id_ex,A_id_ex,B_id_ex,X_id_ex,rt_id_ex,rd_id_ex,
if_id_rs,if_id_rt,if_id_rd,
RegDst_id_ex,aluOp_id_ex,aluSrc_id_ex,branch_id_ex,memRead_id_ex,memWrite_id_ex,
regwrite_id_ex,MemtoReg_id_ex,
id_ex_rs, id_ex_rt, id_ex_rd,
stall,flush,
reset,clk);

//stall has been inserted after placing stalling unit
//flush has been inserted for branch prediction

input [31:0] pc_if_id, read_data_1 , read_data_2 , X;
input [4:0] rt,rd;
input RegDst,aluSrc, branch , memRead , memWrite ,regwrite,MemtoReg;
input [1:0] aluOp;
input reset,clk;
input if_id_rs;
input if_id_rt;
input if_id_rd;
input stall;
input flush;
//funct field is the first 6 bits of the immediate data , remember this point
output reg [31:0] pc_id_ex, A_id_ex, B_id_ex;
output reg [31:0] X_id_ex ; 
output reg [4:0] rt_id_ex , rd_id_ex;
output reg RegDst_id_ex,aluSrc_id_ex,branch_id_ex,memRead_id_ex,memWrite_id_ex,
regwrite_id_ex,MemtoReg_id_ex;
output reg [1:0] aluOp_id_ex;
output reg [4:0] id_ex_rs , id_ex_rt , id_ex_rd;

always@(posedge clk or negedge reset)
begin
if(reset == 1'b0 || stall == 1'b1 || flush == 1'b1)
begin
pc_id_ex = 0;
A_id_ex = 0;
B_id_ex = 0;
X_id_ex = 0;
rt_id_ex = 0;
rd_id_ex =0;
RegDst_id_ex =0 ; aluSrc_id_ex =0; 
aluOp_id_ex =0;
branch_id_ex = 0 ; memRead_id_ex = 0 ; memWrite_id_ex =0;
regwrite_id_ex = 0 ; MemtoReg_id_ex = 0;
id_ex_rs = 0 ;
id_ex_rt = 0 ;
id_ex_rd = 0 ;
end

else
begin
pc_id_ex = pc_if_id;
A_id_ex = read_data_1;
B_id_ex = read_data_2;
X_id_ex = X;
rt_id_ex = rt;
rd_id_ex = rd;
RegDst_id_ex = RegDst ; aluSrc_id_ex = aluSrc; 
aluOp_id_ex = aluOp;
branch_id_ex = branch ; memRead_id_ex = memRead ; memWrite_id_ex = memWrite;
regwrite_id_ex = regwrite ; MemtoReg_id_ex = MemtoReg ;
id_ex_rs = if_id_rs ;
id_ex_rt = if_id_rt ;
id_ex_rd = if_id_rd ;
end
end
endmodule
