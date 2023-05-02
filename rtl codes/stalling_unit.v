`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2023 23:40:26
// Design Name: 
// Module Name: stalling_unit
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


module stalling_unit(if_id_rs,if_id_rt,id_ex_rt,memRead_id_ex,stall,if_id_write,pcwrite);
input [4:0] if_id_rs , if_id_rt , id_ex_rt; 
input memRead_id_ex;
output reg stall , if_id_write , pcwrite ;

always@(*)
begin

if(memRead_id_ex == 1'b1)
begin
if(if_id_rs == id_ex_rt || if_id_rt == id_ex_rt )
begin
stall = 1'b1;
pcwrite = 1'b0;
if_id_write = 1'b0;
end
end

else
begin
stall = 1'b0;
pcwrite = 1'b1;
if_id_write = 1'b1;
end

end 
endmodule
