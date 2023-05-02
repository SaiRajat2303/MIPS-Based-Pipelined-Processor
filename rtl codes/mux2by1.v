`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2023 22:52:02
// Design Name: 
// Module Name: mux2by1
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
module mux2by1(
input [31:0]i0,
input [31:0]i1,
input sel,
output [31:0]o
    );

assign o = sel ? i1 : i0 ;

endmodule


