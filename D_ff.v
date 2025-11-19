`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 16:06:01
// Design Name: 
// Module Name: D_ff
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


module D_ff(
 input D,clk,
    output Q,Qbar
    );
    wire Dbar, S, R;

    assign Dbar = ~D;

    assign #1 S = ~(D    & clk);   // Set
    assign #1 R = ~(Dbar & clk);   // Reset

    assign #1 Q    = ~(S & Qbar);
    assign #1 Qbar = ~(R & Q);
endmodule
