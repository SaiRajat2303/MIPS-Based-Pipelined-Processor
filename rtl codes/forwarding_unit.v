`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2023 22:54:35
// Design Name: 
// Module Name: forwarding_unit
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

module forwarding_unit(id_ex_rs, id_ex_rt , 
Reg_dest_op_ex_mem , Reg_dest_op_mem_wb ,
regwrite_ex_mem, regwrite_mem_wb,
forward_A , forward_B);

input [4:0] id_ex_rs , id_ex_rt;
input [4:0] Reg_dest_op_ex_mem , Reg_dest_op_mem_wb;
input regwrite_ex_mem , regwrite_mem_wb;

output reg [1:0] forward_A , forward_B ;

always@(*) //always statement for calculating forward_A
begin
if(regwrite_ex_mem == 1'b1)
begin
if(Reg_dest_op_ex_mem == id_ex_rs ) //not putting Reg_dest_op_ex_mem != 0 because our 0th reg is s0 and not zero register 
forward_A =2'b01;
end

else if( regwrite_mem_wb == 1'b1 && regwrite_ex_mem != 1'b1)
begin
if(Reg_dest_op_mem_wb == id_ex_rs && Reg_dest_op_ex_mem != id_ex_rs)
forward_A = 2'b10;
end

else
forward_A = 2'b00;

end

always@(*) //always block for calculating forward_B
begin
if(regwrite_ex_mem == 1'b1)
begin
if(Reg_dest_op_ex_mem == id_ex_rt ) //not putting Reg_dest_op_ex_mem != 0 because our 0th reg is s0 and not zero register 
forward_B =2'b01;
end

else if( regwrite_mem_wb == 1'b1 && regwrite_ex_mem != 1'b1)
begin
if(Reg_dest_op_mem_wb == id_ex_rt && Reg_dest_op_ex_mem != id_ex_rt)
forward_B = 2'b10;
end

else
forward_B = 2'b00;

end

endmodule
