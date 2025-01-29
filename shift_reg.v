`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 12:44:06
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(in,out,clk);
input [0:16] in;
input clk;
output [0:16]out;
wire [0:16] a,b,c;
Delay_element x1 (.D(in),.clk(clk),.q(a));
Delay_element x2 (.D(a),.clk(clk),.q(b));
Delay_element x3 (.D(b),.clk(clk),.q(c));
Delay_element x4 (.D(c),.clk(clk),.q(out));
endmodule
