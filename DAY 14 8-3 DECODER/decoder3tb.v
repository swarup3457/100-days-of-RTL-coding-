`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:58:38 06/11/2023
// Design Name:   decoder3
// Module Name:   D:/swarup/swarup/decoder3tb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder3tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire [7:0] dout;

	// Instantiate the Unit Under Test (UUT)
	decoder3 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.dout(dout)
	);

	initial begin
	$monitor("$time=%g,a=%b,b=%b,c=%b,dout=%dout",$time,a,b,c,dout);
	end
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;a = 0;
		b = 0;
		c = 1;
		#100;a = 0;
		b = 1;
		c = 0;
		#100;a = 0;
		b = 1;
		c = 1;
		#100;a = 1;
		b = 0;
		c = 0;
		#100;a = 1;
		b = 0;
		c = 1;
		#100;a = 1;
		b = 1;
		c = 0;
		#100;a = 1;
		b = 1;
		c = 1;  
        
		// Add stimulus here

	end
      
endmodule

