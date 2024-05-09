`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2024 08:12:06 PM
// Design Name: 
// Module Name: CONTROL_UNIT
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


module CONTROL_UNIT (CLK, T, AC, IR, 
CLRSEQ, INCSEQ, LDAR, CLRAR, INCAR,
 INCPC, LDPC, CLRPC, LDDR, CLRDR, INCDR,
AND, ADD, LDA, COM, INCAC, LDAC, CLRAC,
LDIR, CLRIR, INCIR, READ, WRITE, E, Ins, J, D); 

input CLK;
	input [7:0] AC, IR;
	input [7:0] T, D;
	output LDAR, CLRAR, INCAR,
           CLRPC, INCPC, LDPC,            
           LDDR, CLRDR, INCDR,
           LDAC, CLRAC,INCAC,
           LDIR, CLRIR, INCIR, 
           READ, WRITE,
           COM, LDA, ADD, AND,
           CLRSEQ, INCSEQ, 
           E,J;
    output [7:0] Ins;
    wire [7:0] D;
        wire [3:0] B = IR [3:0];
        wire [2:0] OPCODE = IR [6:4];
        wire J = IR[7];
        wire r;
        wire Jn;
        assign Jn = ~J;
        assign r = D[7] & T [3] & Jn;
                     
                  //// DECODER   
                     
          Decoder3to8 decode( OPCODE, D[7:0]);         /// I,O   
          
          ///////// AR CONTROL
          AR_ARCH ar(LDAR, CLRAR, INCAR, T, D, J);
          
          /////////// PC CONTROL 
          PC_ARCH pc( INCPC, LDPC, CLRPC, D, T);
                 /////////// DR CONTROL 
                   DR_ARCH dr(LDDR, CLRDR, INCDR, T, D);
                   
                   /////// AC CONTROL
                   ACC_ARCH ac(AND, ADD, LDA, COM, INCAC, LDAC, CLRAC, T, D, B, J );
                   
                   ///////////////  IR CONTROL
                   IR_ARCH ir     ( LDIR, CLRIR, INCIR, T, D);
                   
                   /////////////// MEMORY CONTROL
                   MEMORY_ARCH mem( READ, WRITE, T, D, J);
                   
                   /////////////// SEQ CONTROL
                   SEQ_ARCH seq(CLRSEQ, INCSEQ, T, D);
                   
                   ///////////////// BUS CONTROL  
                  BUS_ARCH bus(Ins, D, T, J);  
                             
                            
               
                endmodule
