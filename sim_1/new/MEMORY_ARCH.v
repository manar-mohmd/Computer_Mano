`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 08:09:27 PM
// Design Name: 
// Module Name: MEMORY_ARCH
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


module MEMORY_ARCH ( READ, WRITE, T, D, J);

	input  J;
	input [7:0] D;
	input [5:0] T;
	output  READ, WRITE;

	wire D7n;
	wire M1, M2, M3,M4, M5;

	assign D7n = ~D[7];

	assign M1 =  T[1];
	assign M2 = D7n & J & T[3];
	assign M3= D[0] | D[1] | D[2];
	assign M4= M3 & T[4];
	
	assign READ = M1 | M2 | M4;
    
endmodule
