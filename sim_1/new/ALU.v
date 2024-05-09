`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 08:06:08 PM
// Design Name: 
// Module Name: ALU
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


module ALU(AND, ADD, LDA, COM,E, cout, AC, DR, ACDATA);
    input AND, ADD, LDA, COM, E;  //instructions signals 
    input [7:0] AC, DR;
    
    output cout ;
    output [7:0]  ACDATA;   
    wire [7:0] and8, add8, lda8, com8;   // turning the instructions signals into 16-bit signal to be anded 
    wire [7:0] AND1, AND2, AND3, AND4, SUM;         //AND gate of each instruction 
    wire CARRY;
    
    //AND OPERATION
    assign and8 = (AND ? 16'hff :16'b0);
	assign AND1 = AC & and8 & DR;
	
	//ADD OPERTION , {CARRY,SUM} is the result of a full-adder
	assign {CARRY,SUM} = AC + DR ;
	assign cout = CARRY;
	
	assign add8 = (ADD ? 8'hff :8'b0);
	assign AND2 = SUM & add8 ;
	
	//LDA OPERATION (load AC with DR content )
	assign lda8 = (LDA ? 8'hff :8'b0);
	assign AND3 = lda8 & DR ;
	
	//CMA OPERATION (Complement AC content)
	assign com8 = (COM? 8'hff : 8'b0);
	assign AND4 = (~AC) & com8;
    assign ACDATA = AND1 | AND2| AND3| AND4;   // all and gates into OR gate its result in AC
endmodule
