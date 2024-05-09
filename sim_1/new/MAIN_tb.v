`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 08:28:39 PM
// Design Name: 
// Module Name: MAIN_tb
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


module MAIN_tb();
wire [7:0] DR, AC, IR, MEM;
wire [3:0] PC, AR;
wire [7:0] Timer,D;

wire [2:0] OUTSEQ;
wire [2:0] en;
wire [7:0] Ins;
wire J;
wire E;
reg CLK;

MAIN mano (CLK, DR, AC, IR, MEM, PC, AR,
Timer, D,
OUTSEQ,  en,
Ins,
J,
E
);
always #5 CLK =  #5 ~CLK;
initial CLK =0;
always begin 
   CLK = 0; #5; CLK=1; #5;
   end
   
endmodule