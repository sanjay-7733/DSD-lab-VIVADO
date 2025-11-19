`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2025 15:45:30
// Design Name: 
// Module Name: T_ff
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


module T_ff(
input T,clk,
output reg Q,
output Qbar
    );
    assign Qbar=~Q; 
    initial Q = 0;
    always @(posedge clk) begin
        case(T)
            1'b0: Q <= Q;       
            1'b1: Q <= ~Q;    
        endcase
    end
endmodule
