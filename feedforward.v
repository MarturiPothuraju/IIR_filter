`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 11:55:40
// Design Name: 
// Module Name: feedforward
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


module feedforward(in,out,clk);
input [0:31] in;
input clk;
output reg [0:31] out;
reg [0:31] b1,b2,b3;
initial begin
b1=2240;
b2=5440;
b3=9400;
end
wire [0:31] a,b,c,w;
reg [0:31] c1= 32'b0,c2= 32'b0,c3= 32'b0;
Delay_element x1 (.D(in),.clk(clk),.q(a));
Delay_element x2 (.D(a),.clk(clk),.q(b));
Delay_element x3 (.D(b),.clk(clk),.q(c));
always @ (a) c1=a;
always @ (b) c2=b;
always @ (c) c3=c;
//always @(posedge clk) out=(c1*b1)+(c2*b2)+(c3*b3);
assign w=(c1*b1)+(c2*b2)+(c3*b3);
always @(w)
begin
if (w==31'bz)
out=31'b0;
else
out=w;
end
endmodule
