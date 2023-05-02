`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 23:31:17
// Design Name: 
// Module Name: forwarding_mux
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


module forwarding_mux(a,b,c,sel,out);
input [31:0] a,b,c;
input [1:0] sel;
output reg [31:0] out;

always@(*)
begin
case(sel)
1'b00 : out = a;
1'b01 : out = b;
1'b10 : out = c;
default : out = a;
endcase
end
endmodule
