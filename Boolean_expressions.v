`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 16:32:36
// Design Name: 
// Module Name: Boolean_expressions
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


module Boolean_expressions(
input A, B, C, 
output F1,F2,F3
    );
       assign F1 = (A & B) | (~C);
 assign F2 = (A | B) & C;
 assign F3 = ~(A ^ B);
endmodule
