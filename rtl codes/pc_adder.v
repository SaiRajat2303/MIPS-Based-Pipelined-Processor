`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 21:42:07
// Design Name: 
// Module Name: pc_adder
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


module pc_adder(pc_id_ex,Y,pc_branch_target);

input [31:0] pc_id_ex , Y;
output reg [31:0] pc_branch_target;

always@(*)
begin
pc_branch_target = pc_id_ex + Y;
end

endmodule
