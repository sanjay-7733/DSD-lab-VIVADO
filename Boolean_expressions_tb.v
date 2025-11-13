`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 16:38:05
// Design Name: 
// Module Name: Boolean_expressions_tb
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


module Boolean_expressions_tb(

    );
    reg A, B, C;
    wire F1, F2, F3;
    Boolean_expressions dut (A, B, C, F1, F2, F3);

    initial begin
       A=0; B=0; C=0; #10;
        A=0; B=0; C=1; #10;
       A=0; B=1; C=0; #10;
       A=0; B=1; C=1; #10; 
       A=1; B=0; C=0; #10;
       A=1; B=0; C=1; #10;
       A=1; B=1; C=0; #10;
       A=1; B=1; C=1; #10;
        
        $finish;
    end
endmodule
