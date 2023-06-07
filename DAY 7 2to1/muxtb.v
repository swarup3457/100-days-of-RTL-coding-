`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:45:24 06/07/2023
// Design Name:   mux2
// Module Name:   D:/swarup/swarup/muxtb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxtb;

	// Inputs
	reg a;
	reg b;
	reg s0;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux2 uut (
		.a(a), 
		.b(b), 
		.s0(s0), 
		.y(y)
	);
initial begin
	    $monitor("simtime=%g,A=%b,B=%b,y=%b",$time,a,b,y);
		 end
	initial begin
		// Initialize Inputs
		a = 1;
		b = 0;
		s0 = 0;

		// Wait 100 ns for global reset to finish
		#100;s0=1;
        
		// Add stimulus here

	end
      
endmodule

