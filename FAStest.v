`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:12:19 11/04/2015
// Design Name:   FAS
// Module Name:   U:/MyWeb/Coursework/ENGR 230/AS3b/FAStest.v
// Project Name:  AS3b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FAS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FAStest;

	// Inputs
	reg A;
	reg B;
	reg con;
	reg Cin;

	// Outputs
	wire S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FAS uut (
		.A(A), 
		.B(B), 
		.con(con), 
		.Cin(Cin), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin

		con = 0;A = 0;B = 0;Cin = 0;#100;
		con = 0;A = 0;B = 0;Cin = 1;#100;
		con = 0;A = 0;B = 1;Cin = 0;#100;
		con = 0;A = 0;B = 1;Cin = 1;#100;
		con = 0;A = 1;B = 0;Cin = 0;#100;
		con = 0;A = 1;B = 0;Cin = 1;#100;
		con = 0;A = 1;B = 1;Cin = 0;#100;
		con = 0;A = 1;B = 1;Cin = 1;#100;
		con = 1;A = 0;B = 0;Cin = 0;#100;
		con = 1;A = 0;B = 0;Cin = 1;#100;
		con = 1;A = 0;B = 1;Cin = 0;#100;
		con = 1;A = 0;B = 1;Cin = 1;#100;
		con = 1;A = 1;B = 0;Cin = 0;#100;
		con = 1;A = 1;B = 0;Cin = 1;#100;
		con = 1;A = 1;B = 1;Cin = 0;#100;
		con = 1;A = 1;B = 1;Cin = 1;#100;
		

	end
      
endmodule

