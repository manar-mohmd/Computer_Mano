`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:17:24 PM
// Design Name: 
// Module Name: SEQ_ARCH
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


module SEQ_ARCH (CLR, INC, T, D);
input [5:0] T;
input [7:0] D;
output CLR, INC;
wire   x1, x2, y1, y2;
assign x1= T[5];
assign x2 = D[0] | D[1] | D[2];
assign y1 = x1 & x2;
assign y2 = D[4] & T[4]; 
assign CLR = y1 | y2;
assign INC = ~CLR;
endmodule

















