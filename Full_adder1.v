`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 14:52:29
// Design Name: 
// Module Name: Full_adder1
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


module Full_adder1(
input a, b, cin,      
    output sum, carry
    );
    assign sum = a ^ b ^ cin;                
    assign carry = (a & b) | (b & cin) | (a & cin);  
endmodule
