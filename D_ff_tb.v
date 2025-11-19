`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 16:07:38
// Design Name: 
// Module Name: D_ff_tb
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


module D_ff_tb(

    );
     reg D, clk;
    wire Q, Qbar;
    
    D_ff dut (D,clk,Q,Qbar);

  
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

    
    initial begin
        

       
        D = 0;
        #10;

        
        D = 1;  #10;  
        D = 0;  #10;  
        D = 1;  #10;  
        D = 0;  #10;  

       
        D = 1;  #20;  

        $finish;
    end
endmodule
