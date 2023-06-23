`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:05:46 06/23/2023
// Design Name:   jkasync
// Module Name:   D:/swarup/swarup/jkasynctb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jkasync
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jkasynctb;

	// Inputs
	reg reset;
	reg clk;
	reg j;
	reg k;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	jkasync uut (
		.reset(reset), 
		.clk(clk), 
		.j(j), 
		.k(k), 
		.q(q)
	);

	initial begin
	$monitor("time=%g,clk=%b,reset=%b,j=%b,k=%b,q=%b",$time,clk,reset,j,k,q);
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		// Wait 100 ns for global reset to finish
		#100;reset = 0;j = 0;k = 0;
		#100;j = 0;k = 1;
		#100;j = 1;k = 0;
		#100;j = 1;k = 1;  
		#50;reset=1;
		#100;j = 1;k = 0;
		#100;j = 1;k = 1;  
		// Add stimulus here

	end
	always
	#50 clk=~clk;
      
endmodule

