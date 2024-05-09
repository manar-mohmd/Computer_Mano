`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:40:44 PM
// Design Name: 
// Module Name: PROG_COUNTER
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PROG_COUNTER(Q, INC, LD, CLR, Data, CLK);

	output reg [3:0] Q;
	input [3:0] Data;
	input INC, CLK, LD, CLR;
	
	initial Q = 0;
	
	always @(posedge CLK)
	
	begin
		 if(INC)
			Q = Q + 1;
			else if(LD)
			Q = Data;
			else if (CLR)
			Q =0;
	end
	
endmodule
