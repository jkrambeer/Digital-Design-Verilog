`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:07:13 11/24/2015
// Design Name:   TrafficLightModule
// Module Name:   C:/Users/walk0106/Desktop/ENGR Lab 230/Lab 8/Lab8TrafficLight/TestTheLight.v
// Project Name:  Lab8TrafficLight
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TrafficLightModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestTheLight;

	// Inputs
	reg CLK;
	reg SW;
	reg reset;

	// Outputs
	wire out1;
	wire out2;
	wire out3;
	wire out4;
	wire out5;

	// Instantiate the Unit Under Test (UUT)
	TrafficLightModule uut (
		.CLK(CLK), 
		.SW(SW), 
		.reset(reset), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.out5(out5)
	);

	always begin 
		CLK = 0;
		#50;
		CLK = 1;
		#50;
	end

	initial begin

		SW    = 1;
		reset = 0;
	

	end
      
endmodule

