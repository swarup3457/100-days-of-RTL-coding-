`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:32 05/25/2023 
// Design Name: 
// Module Name:    sp 
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
module sp(a,b,sum,cout
    );
input a,b;
output sum,cout;
assign sum= a^b;
assign cout=a&b;
/* structural
input a,b;
output sum,cout;
    xor x1(sum,a,b);
	 and A1(cout,a,b);*/
	 
/* behavioural
     input a,b;
     output sum,cout;
	  reg sum,cout;
	  always@(a,b)
	   initial begin
		 case({a,b})
		 2'b00:{sum,cout}=2'b00;
		 2'b01:{sum,cout}=2'b10;
		 2'b10:{sum,cout}=2'b10;
		 2'b11:{sum,cout}=2'b01;
		 endcase
		end
		     */
endmodule
