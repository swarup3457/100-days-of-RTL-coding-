`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:02:54 06/12/2023
// Design Name:   Dflipflop
// Module Name:   D:/swarup/swarup/Dflipfloptb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dflipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Dflipfloptb;

	// Inputs
	reg clk;
	reg rst;
	reg d;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	Dflipflop uut (
		.clk(clk), 
		.rst(rst), 
		.d(d), 
		.q(q)
	);
initial begin
	$monitor("$time=%g,d=%b,rst=%b,q=%b,clk=%b",$time,d,rst,q,clk);
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;d=0;
		#100;d=1;
        
		// Add stimulus here

	end
	always 
	#50 clk=~clk;
      
endmodule

