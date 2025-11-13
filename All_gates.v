`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 17:18:59
// Design Name: 
// Module Name: All_gates
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


module All_gates(
input a, b,
    output and_out,
    output or_out,
    output not_a,
    output not_b,
    output nand_out,
    output nor_out,
    output xor_out,
    output xnor_out
    );
    
    assign and_out  = a & b;
    assign or_out   = a | b;
    assign not_a    = ~a;
    assign not_b    = ~b;
    assign nand_out = ~(a & b);
    assign nor_out  = ~(a | b);
    assign xor_out  = a ^ b;
    assign xnor_out = ~(a ^ b);
endmodule
