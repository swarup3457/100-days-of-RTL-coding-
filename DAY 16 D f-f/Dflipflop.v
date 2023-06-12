`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:50 06/12/2023 
// Design Name: 
// Module Name:    Dflipflop 
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
module Dflipflop(clk,rst,d,q
    );
input rst,clk,d;
output q;
reg q;
always@(posedge clk)
begin
if(rst==1)
q=0;
else
case(d)
1'b0:q=1'b0;
1'b1:q=1'b1;
endcase
end
endmodule
