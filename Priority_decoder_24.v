`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 21:56:46
// Design Name: 
// Module Name: Priority_decoder_24
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


module Priority_decoder_24(
input a,b,
output d0,d1,d2,d3
    );
     assign d0 = ~a&(~b);
    assign d1 = ~a&b;
    assign d2 = a&(~b);
    assign d3 = a&b;

endmodule
