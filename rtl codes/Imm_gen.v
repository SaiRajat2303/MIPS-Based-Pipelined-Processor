`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2023 22:53:22
// Design Name: 
// Module Name: Imm_gen
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
module Imm_gen(
input [31:0]instr_code , output reg[31:0]X
    );

always@(*)
begin
X = {{16{instr_code[15]}},instr_code[15:0]};
X = X<<2;
end

endmodule


