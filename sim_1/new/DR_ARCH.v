`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:48:08 PM
// Design Name: 
// Module Name: DR_ARCH
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


module DR_ARCH(LD, CLR, INC, T, D);
input [5:0] T;
input [7:0] D;
output LD, CLR, INC;
wire d;
assign d = D[0] & D[1] & D[2];
assign LD = d | T[4];
assign CLR =0;
assign INC =0;
endmodule
