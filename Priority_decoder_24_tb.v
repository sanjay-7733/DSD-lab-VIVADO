`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 21:59:37
// Design Name: 
// Module Name: Priority_decoder_24_tb
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


module Priority_decoder_24_tb(
    );
     reg a,b;
    wire d0,d1,d2,d3;
    
    Priority_decoder_24 dut(a,b,d0,d1,d2,d3);
    
    initial begin 
    a =0; b=0;
    #10
     a =0; b=1;
    #10
     a =1; b=0;
    #10
     a =1; b=1;
    #10
    $finish;
    end
endmodule
