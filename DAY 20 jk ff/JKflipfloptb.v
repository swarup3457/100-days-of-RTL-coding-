`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:31 06/14/2023
// Design Name:   JKflipflop
// Module Name:   D:/swarup/swarup/JKflipfloptb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JKflipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JKflipfloptb;

	// Inputs
	reg j;
	reg k;
	reg rst;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	JKflipflop uut (
		.j(j), 
		.k(k), 
		.rst(rst), 
		.q(q), 
		.clk(clk)
	);
initial begin
	$monitor("time =%g,clk=%b,rst=%b,j=%b,k=%b,q=%b",$time,clk,rst,j,k,q);
	end
	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;rst=0;
		j = 0;
		k = 0;
    	#100;
		j = 0;
		k = 1;
      #100;
		j = 1;
		k = 0;
      #100;
		j = 1;
		k = 1;		
		// Add stimulus here

	end
     always
     #50 clk = ~clk;	  
endmodule

