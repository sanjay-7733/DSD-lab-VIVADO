`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 15:16:01
// Design Name: 
// Module Name: SR_latch_tb
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


module SR_latch_tb(

    );
     reg S, R;
    wire Q, Qbar;

    SR_latch dut (
        S, R, Q,Qbar );

    initial begin
      
        S = 0; R = 0; #10; 

        S = 1; R = 0; #10; 

        S = 0; R = 0; #10; 

        S = 0; R = 1; #10;

        S = 0; R = 0; #10;
        
        S = 1; R = 1; #10; 
        $finish; 
    end
endmodule

