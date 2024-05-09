`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:56:40 PM
// Design Name: 
// Module Name: ENCODER3x8
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


module ENCODER3x8(en, Ins);

   input [7:0] Ins;
   output [2:0] en;

   assign en =
      (Ins[7] == 1'b1) ? 3'b111:
      (Ins[6] == 1'b1) ? 3'b110:
      (Ins[5] == 1'b1) ? 3'b101:
      (Ins[4] == 1'b1) ? 3'b100:
      (Ins[3] == 1'b1) ? 3'b011:
      (Ins[2] == 1'b1) ? 3'b010:
      (Ins[1] == 1'b1) ? 3'b001:
      (Ins[0] == 1'b1) ? 3'b000: 3'bxxx;

endmodule
