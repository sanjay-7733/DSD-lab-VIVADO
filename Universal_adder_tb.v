`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 16:31:08
// Design Name: 
// Module Name: Universal_adder_tb
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


module Universal_adder_tb(

    );
    reg  [3:0] A, B;
    reg        M;
    wire [3:0] S;
    wire       Cout, V;
    Universal_adder dut (A, B, M, S, Cout, V);
    initial begin
        
       M = 0;
        A = 4'b0101; B = 4'b0011; #10;
        A = 4'b0111; B = 4'b1001; #10;
       M = 1;
        A = 4'b1001; B = 4'b0100; #10;
        A = 4'b0011; B = 4'b1000; #10;
        $finish;
    end
endmodule
