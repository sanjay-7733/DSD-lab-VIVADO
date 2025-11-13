`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 21:30:22
// Design Name: 
// Module Name: Mux_2x1_tb
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


module Mux_2x1_tb(
    );
      reg S, I0, I1;
  wire y;

  Mux_2x1 dut (S, I0, I1, y);

  initial begin
    S=0; I0=0; I1=0; #10;
    S=0; I0=0; I1=1; #10;
    S=0; I0=1; I1=0; #10;
    S=0; I0=1; I1=1; #10;
    S=1; I0=0; I1=0; #10;
    S=1; I0=0; I1=1; #10;
    S=1; I0=1; I1=0; #10;
    S=1; I0=1; I1=1; #10;
    $finish;
  end
endmodule
