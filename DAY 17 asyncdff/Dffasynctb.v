`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:12:50 06/12/2023
// Design Name:   Dffasync
// Module Name:   D:/swarup/swarup/Dffasynctb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Dffasync
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Dffasynctb;

	// Inputs
	reg clk;
	reg rst;
	reg d;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	Dffasync uut (
		.clk(clk), 
		.rst(rst), 
		.d(d), 
		.q(q)
	);

	initial begin
	$monitor("$time=%g,clk=%b,rst=%b,d=%b,q=%b",$time,clk,rst,d,q);
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;rst=0;d=0;
		#100;d=1;
		#100;rst=1;d=1;
		#100;rst=0;d=1;
		end
		always
		#50 clk=~clk;
      
endmodule

