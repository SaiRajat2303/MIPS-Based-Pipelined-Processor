`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2023 22:55:59
// Design Name: 
// Module Name: data_mem
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


module data_mem(mem_addr,write_data,read_data,memRead,memWrite,reset);
output reg [31:0]read_data;
input [31:0]write_data,mem_addr;
input memWrite,memRead,reset;

reg [7:0] mem [23:0];

always@(negedge reset)
begin
if(reset==0) 
begin 
mem[3] = 0; mem[2] = 0; mem[1] = 0; mem[0] = 35;
mem[7] = 0; mem[6] = 0; mem[5] = 0; mem[4] = 14;
mem[11] = 1; mem[10] = 1; mem[9] = 1; mem[8] = 1;
mem[15] = 1; mem[14] = 1; mem[13] = 1; mem[12] = 1;
mem[19] = 1; mem[18] = 1; mem[17] = 1; mem[16] = 1;
end
end

always@(mem_addr,memRead,memWrite)
begin
if (memRead == 1 && mem_addr[1:0]==2'b00) 
    read_data = {mem[mem_addr+3],mem[mem_addr+2],mem[mem_addr+1],mem[mem_addr]};
else if (memWrite == 1 && mem_addr[1:0]==2'b00) 
    {mem[mem_addr+3],mem[mem_addr+2],mem[mem_addr+1],mem[mem_addr]} = write_data;
end

endmodule