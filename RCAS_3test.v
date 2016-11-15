`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:35:55 11/03/2015
// Design Name:   RCAS_3
// Module Name:   U:/MyWeb/Coursework/ENGR 230/AS3b/RCAS_3test.v
// Project Name:  AS3b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RCAS_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCAS_3test;

	// Inputs
	reg [2:0] A;
	reg [2:0] B;
	reg con;

	// Outputs
	wire [2:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	RCAS_3 uut (
		.A(A), 
		.B(B), 
		.con(con), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		con=0;A=0;B=0;#100;
		con=0;A=0;B=1;#100;
		con=0;A=0;B=2;#100;
		con=0;A=0;B=3;#100;
		con=0;A=1;B=0;#100;
		con=0;A=1;B=1;#100;
		con=0;A=1;B=2;#100;
		con=0;A=1;B=3;#100;
		con=0;A=2;B=0;#100;
		con=0;A=2;B=1;#100;
		con=0;A=2;B=2;#100;
		con=0;A=2;B=3;#100;
		con=0;A=3;B=0;#100;
		con=0;A=3;B=1;#100;
		con=0;A=3;B=2;#100;
		con=0;A=3;B=3;#100;
		con=1;A=0;B=3;#100;
		con=1;A=1;B=3;#100;
		con=1;A=2;B=3;#100;
		con=1;A=3;B=3;#100;
		con=1;A=4;B=3;#100;
		con=1;A=0;B=2;#100;
		con=1;A=1;B=2;#100;
		con=1;A=2;B=2;#100;
		con=1;A=3;B=2;#100;
		con=1;A=4;B=2;#100;
		con=1;A=0;B=1;#100;
		con=1;A=1;B=1;#100;
		con=1;A=2;B=1;#100;
		con=1;A=3;B=1;#100;
		con=1;A=4;B=1;#100;
		con=1;A=0;B=0;#100;
		con=1;A=1;B=0;#100;
		con=1;A=2;B=0;#100;
		con=1;A=3;B=0;#100;
		con=1;A=4;B=0;#100;

	end
      
endmodule

