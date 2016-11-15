`timescale 1ns / 1ps

module RCAS_3(	input [2:0] A, B, input con,
					output [2:0] S, output Cout );
					
	//This modules takes two 3-bit inputs (B and A) and performs B+A (con = 0) or B-A (con = 1)
	wire c1, c2;//to take values from first two adders/subtractors to the next adder/subtractor
	FAS fas0(A[0], B[0], con, con, S[0], c1); //1st adder/subtractor
	FAS fas1(A[1], B[1], con, c1, S[1], c2);  //2nd adder/subtractor
	FAS fas2(A[2], B[2], con, c2, S[2], Cout);//3rd adder/subtractor

endmodule
