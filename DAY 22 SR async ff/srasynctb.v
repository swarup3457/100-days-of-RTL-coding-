`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:36:28 06/22/2023
// Design Name:   srasync
// Module Name:   D:/swarup/swarup/srasynctb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: srasync
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module srasynctb;

	// Inputs
	reg clk;
	reg reset;
	reg s;
	reg r;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	srasync uut (
		.clk(clk), 
		.reset(reset), 
		.s(s), 
		.r(r), 
		.q(q)
	);

	initial begin
   $monitor("time=%g,clk=%b,reset=%b,s=%b,r=%b,q=%b",$time,clk,reset,s,r,q);
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100;reset = 0;
		s = 0;
		r = 0;
		#50;reset=1; 
      #100;
		s = 0;
		r = 1;  
		  #100;
		  reset=0;
		s = 1;
		r = 0;  
		  #100;
		s = 1;
		r = 1;  
		// Add stimulus here

	end
      always
      #50 clk=~clk;
endmodule

