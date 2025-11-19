`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 16:01:13
// Design Name: 
// Module Name: T_ff_tb
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


module T_ff_tb(

    );
    reg T, clk;
    wire Q, Qbar;
    T_ff dut(T,clk,Q,Qbar);
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
       
        T = 0;
        #10;

        T = 1; #10;   
        T = 1; #10;   
        T = 0; #10;   
        T = 1; #10;   
        T = 0; #10;   
        T = 1; #20;   

        $finish;
    end
endmodule
