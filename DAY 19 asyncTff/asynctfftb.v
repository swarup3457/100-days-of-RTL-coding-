`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:24:06 06/13/2023
// Design Name:   AsyncTff
// Module Name:   D:/swarup/swarup/asynctfftb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AsyncTff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module asynctfftb;

	// Inputs
	reg t;
	reg clk;
	reg reset;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	AsyncTff uut (
		.t(t), 
		.clk(clk), 
		.reset(reset), 
		.q(q)
	);

	initial begin
	$monitor("time=%g,t=%b,reset=%b,clk=%b,q=%b",$time,t,reset,clk,q);
	end

	initial begin
		// Initialize Inputs
		reset = 1;
		clk=0;

		// Wait 100 ns for global reset to finish
		#100;t=0;reset=0;
		#100;t=1;
	#100;t=0;reset=1;
		#100;t=1;reset=0;
		
        
		// Add stimulus here

	end
	always
	#50 clk=~clk;
endmodule

