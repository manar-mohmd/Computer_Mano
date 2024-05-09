`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:55:09 PM
// Design Name: 
// Module Name: IR_ARCH
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


module IR_ARCH(LD, CLR, INC, T, D);
 input [5:0]  T;
 input [7:0] D;
 output LD, CLR, INC;
 assign LD = T[1];
 assign CLR =0;
 assign INC =0;
endmodule
