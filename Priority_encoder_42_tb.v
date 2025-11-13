`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2025 21:50:52
// Design Name: 
// Module Name: Priority_encoder_42_tb
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


module Priority_encoder_42_tb(

    );
    reg d0,d1,d2,d3;
    wire a,b ,v;
    
    Priority_encoder_42 dut(d0,d1,d2,d3,a,b,v);
    
    initial begin
     d0=0; d1=0;d2=0;d3=0;
     #10
    d0=1; d1=0;d2=0;d3=0;
    #10
    d0=0; d1=1;d2=0;d3=0;
    #10
    d0=0; d1=0;d2=1;d3=0;
    #10
    d0=0; d1=0;d2=0;d3=1;
    #10
    d0=1; d1=1;d2=0;d3=0;
    #10
    d0=1; d1=1;d2=1;d3=0;
    #10
    d0=1; d1=1;d2=1;d3=1;
    #10
    d0=1; d1=0;d2=1;d3=0;
    #10    
    d0=1; d1=0;d2=0;d3=1;
    #10
    d0=1; d1=0;d2=1;d3=1;
    #10
    d0=0; d1=0;d2=1;d3=1;
    #10
    d0=0; d1=1;d2=1;d3=1;
    #10
    d0=1; d1=1;d2=0;d3=1;
    #10
    d0=0; d1=1;d2=1;d3=0;
    #10
    d0=0; d1=1;d2=0;d3=1;
    #10
    
  $finish;
end
endmodule
