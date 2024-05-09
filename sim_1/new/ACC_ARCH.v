`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:52:52 PM
// Design Name: 
// Module Name: ACC_ARCH
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


module ACC_ARCH (AND, ADD, LDA, COM, INC, LD, CLR, T, D, B, J);
 
 output AND, ADD, LDA, LD, CLR, COM, INC;
 input [5:0] T;
 input [7:0] D;
 input [15:0] B;
 input J;
 
 wire r;
 wire Jn;
  assign Jn = ~J;
  assign r = D[7] & Jn & T[3];
  
 assign AND = D[0] & T [5]; 
 assign ADD = D[1] & T[5];
 assign LDA  = D[2] & T[5];
 assign COM = B[9] & r;
 assign INC = B[5] & r;
 assign CLR = B[11] & r;
 assign LD = (AND | ADD | LDA | COM);
 endmodule
