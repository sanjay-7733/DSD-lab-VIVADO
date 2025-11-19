`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 16:16:14
// Design Name: 
// Module Name: JK_ff_tb
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


module JK_ff_tb(

    );
   reg J, K, clk;
    wire Q, Qbar;

  
    JK_ff dut (J,K,clk,Q,Qbar);

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;   
    end

    
    initial begin
        J = 0; K = 0; #10;   
        J = 1; K = 0; #10;   
        J = 0; K = 1; #10;   
        J = 1; K = 1; #10;   
        J = 1; K = 1; #10;   
        J = 0; K = 0; #10;  
        $finish;
    end 
endmodule
