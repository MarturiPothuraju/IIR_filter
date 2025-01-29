`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 12:16:52
// Design Name: 
// Module Name: feedback
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


module feedback(in,out,clk);
input [0:31] in;
input clk;
output reg [0:31] out=32'b0;
reg [0:31] a1,a2,a3,a4;
initial begin
a1=22290;
a2=-21831;
a3=9770;
a4=-1713;
end
reg [0:31] c4= 32'b0,c5= 32'b0,c6= 32'b0,c7= 32'b0;
wire [0:31] d,e,f,g,w;
Delay_element x1 (.D(out),.clk(clk),.q(d));
Delay_element x2 (.D(d),.clk(clk),.q(e));
Delay_element x3 (.D(e),.clk(clk),.q(f));
Delay_element x4 (.D(f),.clk(clk),.q(g));
always @ (d) c4=d;
always @ (e) c5=e;
always @ (f) c6=f;
always @ (g) c7=g;
//always @(posedge clk) out=(c4*a1)+(c5*a2)+(c6*a3)+(c7*a4)+in;
assign w=(c4*a1)+(c5*a2)+(c6*a3)+(c7*a4)+in;
always @(w)
begin
if (w==31'bz)
out=in;
else
out=w;
end
endmodule
