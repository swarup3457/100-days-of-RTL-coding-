`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:08:46 06/03/2023
// Design Name:   HS
// Module Name:   D:/swarup/swarup/hstb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hstb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire diff;
	wire borrow;

	// Instantiate the Unit Under Test (UUT)
	HS uut (
		.a(a), 
		.b(b), 
		.diff(diff), 
		.borrow(borrow)
	);
	initial begin
	    $monitor("simtime=%g,A=%b,B=%b,diff=%b,borrow=%b",$time,a,b,diff,borrow);
		 end
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
	
        #100;a = 0;
		b = 1;
		#100;a = 1;
		b = 0;
		#100;a = 1;
		b = 1;
		// Add stimulus here

	end
      
endmodule

