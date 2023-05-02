`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 20:51:15
// Design Name: 
// Module Name: if_id
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


module if_id(PC4,instr_code,pc_if_id,instr_code_if_id,if_id_write,flush,clk,reset);

//modifying if_id pipeline register with if_id_write for stall purposes

//modifying using flush for branch prediction

input clk;
input reset;
input if_id_write;
input [31:0] PC4;
input [31:0] instr_code;
input flush;
output reg [31:0] pc_if_id;
output reg [31:0] instr_code_if_id;

always@(posedge clk or negedge reset)
begin
if(reset == 1'b0 || flush == 1'b1)
begin
pc_if_id = 0;
instr_code_if_id = 0;
end

else if(if_id_write == 1'b0)
begin
pc_if_id = pc_if_id;
instr_code_if_id = instr_code_if_id; // Actions to be taken while stalling the pipeline
end

else
begin
pc_if_id = PC4 ;
instr_code_if_id = instr_code;
end
end
endmodule
