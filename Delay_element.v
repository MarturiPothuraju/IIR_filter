`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 16:33:32
// Design Name: 
// Module Name: Delay_element
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


module Delay_element(D,clk,q);
input [0:31] D;
input clk;
output reg [0:31] q;
always @(posedge clk)
begin
q<=D;
end
endmodule
