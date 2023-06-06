`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:02 06/06/2023
// Design Name:   mux4
// Module Name:   D:/swarup/swarup/mux4tb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4tb;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg s0;
	reg s1;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux4 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.s0(s0), 
		.s1(s1), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 0;
		c = 1;
		d = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;s1 = 0;s0 = 1;
        		#100;s1 = 1;s0 = 0;
		#100;s1 = 1;s0 = 1;

		// Add stimulus here

	end
      
endmodule

