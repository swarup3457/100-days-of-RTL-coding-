`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:32:24 05/26/2023 
// Design Name: 
// Module Name:    fulladder 
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
module fulladder(a,b,cin,sum,cout
    );
	 /* data flow
input a,b,cin;
output sum,cout;
assign sum =a^b^cin;
assign cout= (a&b)|(a&cin)|(b&cin);
     */
    //behavioural
	    input a,b,cin;
       output sum,cout;
	    reg sum,cout;
        always@(a,b,cin)
		  begin
		   case({a,b,cin})
			3'b000:{sum,cout}=2'b00;
			3'b001:{sum,cout}=2'b10;
			3'b010:{sum,cout}=2'b10;
			3'b011:{sum,cout}=2'b01;
			3'b100:{sum,cout}=2'b10;
			3'b101:{sum,cout}=2'b01;
			3'b110:{sum,cout}=2'b01;
			3'b111:{sum,cout}=2'b11;
			endcase
		end
	/*structural
	      input a,b,cin;
          output sum,cout;
			 xor x1(sum,a,b,cin);
	       and A1(i1,a,b);
        	 and A1(i2,cin,b);
          and A1(i3,a,cin);
          or o1(cout,i1,i2,i3);
       			 
                     */
endmodule
