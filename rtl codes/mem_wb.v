`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 22:08:23
// Design Name: 
// Module Name: mem_wb
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


module mem_wb(read_data,
regwrite_ex_mem,MemtoReg_ex_mem,
result_ex_mem,
Reg_dest_op_ex_mem,
regwrite_mem_wb,MemtoReg_mem_wb,
read_data_mem_wb,
result_mem_wb,
Reg_dest_op_mem_wb,
reset, clk);

input [31:0] read_data, result_ex_mem;
input regwrite_ex_mem,MemtoReg_ex_mem;
input [4:0] Reg_dest_op_ex_mem;
input reset,clk;

output reg regwrite_mem_wb, MemtoReg_mem_wb;
output reg [31:0] read_data_mem_wb , result_mem_wb;
output reg [4:0] Reg_dest_op_mem_wb;

always@(posedge clk or negedge reset)
begin

if(reset == 1'b0)
begin
regwrite_mem_wb = 0;
MemtoReg_mem_wb = 0;
read_data_mem_wb = 0;
result_mem_wb = 0;
Reg_dest_op_mem_wb = 0;
end

else
begin
regwrite_mem_wb = regwrite_ex_mem;
MemtoReg_mem_wb = MemtoReg_ex_mem;
read_data_mem_wb = read_data;
result_mem_wb = result_ex_mem;
Reg_dest_op_mem_wb = Reg_dest_op_ex_mem;
end

end

endmodule
