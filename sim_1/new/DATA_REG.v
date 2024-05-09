`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:46:26 PM
// Design Name: 
// Module Name: DATA_REG
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


module DATA_REG(Q, Data, LD, CLR, INC, CLK);

    initial Q = 0;
 
	output reg [7:0] Q;
	input [7:0] Data;
	input LD, CLR, INC, CLK;
	
	always @(posedge CLK)
	begin
		 if(LD)
			Q = Data;
		end	
endmodule

