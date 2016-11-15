`timescale 1ns / 1ps

module FAS( input A, B, con, Cin,
				output S, Cout );
	
	//There is a seperate variable for the control and Cin because,
	//when this isn't the first adder/subtractor in the design, Cin
	//and the control aren't necessarily the same values
	
	wire A_b = A^con;//this inverts A when the control is 1 (for subraction)
	assign{Cout, S} = A_b + B + Cin;//Assigns MSB of the sum of the 3 inputs to Cout and the LSB to S.
	
endmodule
