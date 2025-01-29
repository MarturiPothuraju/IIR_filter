`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 19:31:44
// Design Name: 
// Module Name: IIR_main_tb
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


module IIR_main_tb();
reg [0:31] x_n;
reg clk=0;
wire [0:31] y_n,div_factor;
IIR_Main x1 (x_n,y_n,clk,div_factor);
always #2 clk=~clk;
initial
begin 
x_n=31'd3;
#5 x_n=31'd6;
#5 x_n=31'd4;
#5 x_n=31'd5;
#5 x_n=31'd6;
#5 x_n=31'd7;
#10 $finish;
end
endmodule
