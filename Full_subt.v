`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 15:06:01
// Design Name: 
// Module Name: Full_subt
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


module Full_subt(
input a, b, bin,          
    output diff, bout 
    );
    assign diff = a ^ b ^ bin;                       
    assign bout = (~a & b) | (b & bin) | (~a & bin); 
endmodule
