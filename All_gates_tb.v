`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2025 17:19:33
// Design Name: 
// Module Name: All_gates_tb
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


module All_gates_tb(

    );
    
 
    reg a, b;

  
    wire and_out, or_out, not_a, not_b, nand_out, nor_out, xor_out, xnor_out;

    
    All_gates dut (
        a,  b,and_out,or_out,not_a,not_b,nand_out,nor_out,xor_out,xnor_out
    );

    initial begin
        a = 0; b = 0; #10;
        
        a = 0; b = 1; #10;
        
        a = 1; b = 0; #10;

        a = 1; b = 1; #10;

        $finish;
    end

endmodule
