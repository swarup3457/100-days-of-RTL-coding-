`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:18:01 06/11/2023
// Design Name:   ALU
// Module Name:   D:/swarup/swarup/alutb.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alutb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg en;
	reg [2:0] op;

	// Outputs
	wire [31:0] res;
	wire ack;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.en(en), 
		.res(res), 
		.op(op), 
		.ack(ack)
	);

	initial begin
	$monitor("$time=%g,a=%b,b=%b,en=%b,res=%b,op=%b,ack=%b",$time,a,b,en,res,op,ack);
	end

	initial begin
		// Initialize Inputs

		en = 0;
		

		// Wait 100 ns for global reset to finish
		#20;a =32'h000000ff;
		b = 32'h0000000f;
		en = 1;
		op = 3'b000;
		#20;op = 3'b001;
		#20;op = 3'b010;
		#20;op = 3'b011;
		#20;op = 3'b100;
		#20;op = 3'b101;
		#20;op = 3'b110;
		#20;op = 3'b111;
		// Add stimulus here

	end
      
endmodule

