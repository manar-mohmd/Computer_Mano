`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 07:15:59 PM
// Design Name: 
// Module Name: SEQ
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

module SEQ_COUNTER (
    input CLR, INC, CLK,
    output reg [2:0] OUT
);

initial OUT = 3'b000;

always @ (posedge CLK) begin
    if (CLR)
        OUT <= 3'b000;
    else if (INC)
        OUT <= OUT + 3'b001;
end

endmodule

