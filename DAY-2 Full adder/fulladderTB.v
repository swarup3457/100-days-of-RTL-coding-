`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:45:59 05/26/2023
// Design Name:   fulladder
// Module Name:   D:/swarup/swarup/fulladderTB.v
// Project Name:  swarup
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladderTB;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);
	initial begin
	    $monitor("simtime=%g,A=%b,B=%b,Cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
		 end

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;a=0;b=0;cin=1;
       #100;a=0;b=1;cin=0;
        #100;a=0;b=1;cin=1;
        #100;a=1;b=0;cin=0;
        #100;a=1;b=0;cin=1;
        #100;a=1;b=1;cin=0;
        #100;a=1;b=1;cin=1;
        
         
		// Add stimulus here

	end
      
endmodule

