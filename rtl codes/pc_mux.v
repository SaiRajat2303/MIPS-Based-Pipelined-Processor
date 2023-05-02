`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2023 00:45:54
// Design Name: 
// Module Name: pc_mux
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

//This module isnt being used

/*module pc_mux(pc4,pc_branch_target_ex_mem,branch_ex_mem,zero_flag_ex_mem,pc,reset);

input [31:0] pc4 , pc_branch_target_ex_mem;
input branch_ex_mem , zero_flag_ex_mem;
output reg [31:0] pc;

wire PcSrc;
assign PcSrc = branch_ex_mem & zero_flag_ex_mem;

always@(*)
begin
if(reset == 0)
pc = 0;
else
begin
 if(PcSrc == 1'b1)
 pc = pc_branch_target_ex_mem;
 else
 pc= pc4;
end
end
endmodule
*/