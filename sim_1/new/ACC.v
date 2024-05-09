`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:51:36 PM
// Design Name: 
// Module Name: ACC
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


module ACC(Q, INC, Data, LD, CLK, CLR);

 	output reg [7:0] Q;
	input [7:0] Data;
	input INC, LD, CLK, CLR;
	
	 initial Q = 0;
	
	always @(posedge CLK)
	begin
		if(CLR)
			Q = 8'b0;
		else if(LD)
			Q = Data;
		else if(INC)
			Q = Q + 1;
	end	
endmodule
