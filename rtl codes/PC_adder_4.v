`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2023 15:58:07
// Design Name: 
// Module Name: PC_adder_4
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


module PC_adder_4(PC,PC4);
input [31:0] PC;
output reg [31:0] PC4;

always@(*)
begin
PC4 = PC + 4;
end
endmodule
