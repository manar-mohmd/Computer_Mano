`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:19:03 PM
// Design Name: 
// Module Name: AR_REG
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


module AR_REG(Q, Data, LD, CLR, INC, CLK);

	output reg [3:0] Q;
	input [3:0] Data;
	input LD, CLR, INC, CLK;
	
	initial Q = 0;
	
	always @(posedge CLK)
	
	begin
		if(LD)
			Q = Data;
			else if (CLR) 
			Q = 0;
		end
endmodule
