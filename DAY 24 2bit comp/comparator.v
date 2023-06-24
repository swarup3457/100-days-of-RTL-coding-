`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:18 06/23/2023 
// Design Name: 
// Module Name:    comparator 
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
module comparator(
    input [1:0]a,b,
    output e,l,g
    );

reg e,l,g;
always@(a,b)
begin
if(a==b)
begin
e=1;
l=0;
g=0;
end
else if(a>b)
begin
e=0;
l=0;
g=1;
end
else
begin
e=0;
l=1;
g=0;
end
end
endmodule
