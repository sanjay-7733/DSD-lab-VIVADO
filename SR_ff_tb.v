`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 15:30:52
// Design Name: 
// Module Name: SR_ff_tb
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


module SR_ff_tb(

    );
  reg S, R, CLK; 
wire Q, Qbar;
SR_ff dut (S,R,CLK,Q,Qbar); 
initial begin 
CLK = 0; 
forever #5 CLK = ~CLK; 
end 
initial begin 
S = 0; R = 0;   
#12;            
S = 0; R = 1;   
#10; 
S = 0; R = 0;   
#10; 
S = 1; R = 0;   
#10; 
S = 0; R = 0;   
#10; 
S = 1; R = 1;   
#10; 
$finish; 
end 
endmodule
