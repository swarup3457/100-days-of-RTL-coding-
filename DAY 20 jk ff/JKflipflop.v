`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:55 06/14/2023 
// Design Name: 
// Module Name:    JKflipflop 
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
module JKflipflop(j,k,rst,q,clk
    );
input j,k,rst,clk;
output q;
reg q;
always@(posedge clk)
begin
 if(rst)
  q=0;
 else
  case({j,k})
   2'b00:q=q;
   2'b01:q=0;
   2'b10:q=1;
   2'b11:q=~q;
  endcase
end
endmodule
