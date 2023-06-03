`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:19 06/03/2023
// Design Name:   full_adder
// Module Name:   D:/swarup/swarup/fa2haatb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fa2haatb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire Sum;
	wire Carry;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.Sum(Sum), 
		.Carry(Carry)
	);
initial begin
	    $monitor("simtime=%g,A=%b,B=%b,C=%b,sum=%b,cout=%b",$time,a,b,c,Sum,Carry);
		 end
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;a=0;b=0;c=1;
		#100;a=0;b=1;c=0;
		#100;a=0;b=1;c=1;
		#100;a=1;b=0;c=0;
		#100;a=1;b=0;c=1;
      #100;a=1;b=1;c=0;
		#100;a=1;b=1;c=1;
        
		// Add stimulus here
        
		// Add stimulus here

	end
      
endmodule

