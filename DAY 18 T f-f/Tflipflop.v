`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:10 06/13/2023 
// Design Name: 
// Module Name:    Tflipflop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Tflipflop(t,clk,reset,q
    );
input t,clk,reset;
output q;
reg q;
always@(posedge clk)
begin
if(reset==1)
q=0;
else
q=~q;
end
endmodule
