`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2023 22:51:28
// Design Name: 
// Module Name: mux2by1_5bit
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

module mux2by1_5bit(
input [4:0]i0,
input [4:0]i1,
input sel,
output [4:0]o
    );

assign o = sel ? i1 : i0 ;

endmodule

