`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 08:01:29 PM
// Design Name: 
// Module Name: D_FF_reset
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


module D_FF_reset(Q, D, CLK,RESET);

	output reg Q;
	input D, CLK, RESET;

	always @(posedge CLK or posedge RESET) begin
		if(RESET)
			Q <= 1'b0;
		else 
			Q <= D;
	end	
endmodule

