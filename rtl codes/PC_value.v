`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2023 22:49:37
// Design Name: 
// Module Name: PC_value
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

module PC_Value(output reg [31:0] PC ,
input branch ,
input branch_ex_mem,
input zero_flag_ex_mem,
input [31:0] pc_branch_target_ex_mem,
input zero_flag ,
input reset ,
input clk,
input [31:0]X,
input jump,
input [31:0]instr_code,
input pcwrite
    );
reg PCsrc;

always@(negedge reset)
begin
if(reset == 0)
PC = 0;
end

always@(posedge clk)
begin

if(pcwrite == 1'b0)
begin 
PC = PC;
end

else
begin
if (jump == 1'b1)
PC = {4'b0000,instr_code[25:0],2'b00};

else
begin
PCsrc = (zero_flag_ex_mem) & branch_ex_mem ; //basically flush signal
if(reset == 1'b1 && PCsrc == 1'b0)
PC = PC + 4;

else if(reset == 1 && PCsrc == 1'b1)
PC = pc_branch_target_ex_mem;
end
end

end
endmodule


