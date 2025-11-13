`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 14:58:31
// Design Name: 
// Module Name: Half_subt
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


module Half_subt(
input a, b,          
    output diff, borrow  
    );
    assign diff = a ^ b;      
    assign borrow = (~a) & b;  
endmodule
