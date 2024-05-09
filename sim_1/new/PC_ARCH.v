`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:44:22 PM
// Design Name: 
// Module Name: PC_ARCH
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


module PC_ARCH ( INC, LD, CLR, D, T);
output  LD, INC, CLR;
input [7:0]  D;
input [5:0] T;

 assign LD = D[4] & T [4];
 assign INC = T[1];
 assign CLR =0;
 endmodule
 

