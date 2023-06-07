`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:54:28 06/07/2023
// Design Name:   mux8
// Module Name:   D:/swarup/swarup/mux8tb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux8tb;

	// Inputs
	reg [7:0] din;
	reg [2:0] s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux8 uut (
		.din(din), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		din = 8'b10101111;
		s = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;s = 3'b001;
        #100;s = 3'b010;
        #100;s = 3'b011;
        #100;s = 3'b100;
        #100;s = 3'b101;
        #100;s = 3'b110;
        #100;s = 3'b111;
       
        
		// Add stimulus here

	end
      
endmodule

