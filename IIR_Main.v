`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 16:40:38
// Design Name: 
// Module Name: IIR_Main
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



module IIR_Main(x_n,y_n,clk,div_factor);
input [0:31]x_n;
output [0:31] y_n;
output [0:31] div_factor;
assign div_factor=100000;
wire w2;
input clk;
wire [0:31] w;
reg [0:31] x1=32'b0;
feedforward z1 (.in(x_n),.out(w),.clk(clk));
always @(w) x1=w;
feedback z2 (.in(x1),.out(y_n),.clk(clk));
endmodule
