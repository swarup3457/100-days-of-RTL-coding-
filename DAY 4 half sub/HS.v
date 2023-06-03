`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:33 06/03/2023 
// Design Name: 
// Module Name:    HS 
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
module HS(a,b,diff,borrow
    );
	 //dataflow
	/*input a,b;
	output diff,borrow;
	assign diff=a^b;
	assign borrow=~a&b;
endmodule*/
//gate level modeling

input a,b;
output diff,borrow;
wire w1;
xor x1(diff,a,borrow);
not n1(w1,a);
and a1(borrow,w1,b);
//Behavioural modeling
/*module hs(a,b,diff,borrow);
input a,b;
output diff,borrow;
reg diff,borrow;
always@(a,b)
begin
if(a==0 && b==1)
begin
diff=1;
borrow=1;
end
else if(a==1 && b==0)
begin
diff=1;
borrow=0;
end
else
begin
diff=0;
borrow=0;
end
end
endmodule  */


endmodule
