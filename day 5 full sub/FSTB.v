`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:20:25 06/06/2023
// Design Name:   FS
// Module Name:   D:/swarup/swarup/FSTB.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FSTB;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire diff;
	wire borrow;

	// Instantiate the Unit Under Test (UUT)
	FS uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.diff(diff), 
		.borrow(borrow)
	);
initial begin
	    $monitor("simtime=%g,A=%b,B=%b,C=%b,diff=%b,borrow=%b",$time,a,b,c,diff,borrow);
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

	end
      
endmodule

