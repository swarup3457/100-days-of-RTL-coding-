`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:56:51 05/25/2023
// Design Name:   sp
// Module Name:   D:/swarup/swarup/str.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module str;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	sp uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.cout(cout)
	);
	initial begin
	    $monitor("simtime=%g,A=%b,B=%b,sum=%b,cout=%b",$time,a,b,sum,cout);
		 end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;a = 0;b = 1;
        #100;a = 1;b = 0;
		  #100;a = 1;b = 1;
		// Add stimulus here

	end
      
endmodule

