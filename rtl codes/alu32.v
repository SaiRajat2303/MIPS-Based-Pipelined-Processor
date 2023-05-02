`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2023 22:55:17
// Design Name: 
// Module Name: alu32
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

module alu32(
input [3:0]alu_control,
input [31:0]A,
input [31:0]B,
output reg [31:0]result,
output reg zero_flag
    );

always@(A,B,alu_control)
begin
case(alu_control)
4'b0000: result = A&B;
4'b0001: result = A|B;
4'b0010: result = A+B;
4'b0110: result = A-B;
4'b0111: begin
if (A<B) 
result = 1'b1;
else 
result = 1'b0;
end
endcase
end

always@(result)
begin
if (result==0)
zero_flag = 1'b1;
else
zero_flag = 1'b0;
end

endmodule



