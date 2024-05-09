`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:20:48 PM
// Design Name: 
// Module Name: AR_ARCH
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


module AR_ARCH(LD, CLR, INC, T, D, J);
input J;
input [5:0] T;
input [7:0] D;
output LD, CLR, INC;
wire D7n;
wire a1, a2, a3;
assign D7n = ~D[7];
assign a1 =  T[0];
assign a2 = D7n & J & T[3];
assign a3 = T[2]; 
assign LD = a1 | a2 | a3;
assign CLR =0;
assign INC = 0;
endmodule
