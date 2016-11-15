`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:26 11/24/2015 
// Design Name: 
// Module Name:    TrafficLightVerilog 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define S1 2'b00
`define S2 2'b01
`define S3 2'b10
`define S4 2'b11
module TrafficLightModule(input CLK, SW, reset,output reg out1,out2,out3,out4,out5);

reg[1:0] state;
reg[1:0] nextState;

always @(posedge CLK) 
begin
	if(reset) state = `S1;
	else      state = nextState;
end //end posedge CLK

always @(state or SW)
begin
	case(state)
	
		`S1: 
		begin
			if(SW) nextState <= `S2;
			else   nextState <= `S1;
		end
		
		`S2:
		begin
			if(SW) nextState <= `S3;
			else   nextState <= `S1;
		end
		
		`S3:
		begin
			if(SW) nextState <= `S4;
			else   nextState <= `S1;
		end
		
		`S4:
		begin
			if(SW) nextState <= `S1;
			else   nextState <= `S1;
		end
		
		default:
		begin
			nextState <= `S1;
		end
				
	endcase
end//always @ state or SW

always @(state)
begin
	case(state)
		`S1: begin out1=0; out2=0; out3=0; out4=0; out5=0; end
		`S2: begin out1=1; out2=1; out3=0; out4=0; out5=0; end
		`S3: begin out1=1; out2=1; out3=1; out4=1; out5=0; end
		`S4: begin out1=1; out2=1; out3=1; out4=1; out5=1; end
		default : begin out1=0; out2=0; out3=0; out4=0; out5=0; end
	endcase
end

endmodule
