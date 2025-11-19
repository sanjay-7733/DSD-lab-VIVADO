`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 16:14:34
// Design Name: 
// Module Name: JK_ff
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


module JK_ff(
input J,K,clk,output reg Q,output Qbar
    );
   assign Qbar = ~Q;
always @(posedge clk) begin
    case ({J, K})
        2'b00: Q <= Q;       
        2'b01: Q <= 1'b0;    
        2'b10: Q <= 1'b1;    
        2'b11: Q <= ~Q;      
    endcase
end 
endmodule
