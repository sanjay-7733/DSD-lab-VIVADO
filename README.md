# DSD-lab-VIVADO
All_gates
CODE:-
<pre>
`timescale 1ns / 1ps
module All_gates(
input a, b,
    output and_out,
    output or_out,
    output not_a,
    output not_b,
    output nand_out,
    output nor_out,
    output xor_out,
    output xnor_out
    );
    
    assign and_out  = a & b;
    assign or_out   = a | b;
    assign not_a    = ~a;
    assign not_b    = ~b;
    assign nand_out = ~(a & b);
    assign nor_out  = ~(a | b);
    assign xor_out  = a ^ b;
    assign xnor_out = ~(a ^ b);
endmodule
</pre>
Test bench code:-
<pre>
  `timescale 1ns / 1ps
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
</pre>
<img width="864" height="627" alt="Screenshot 2025-11-13 172811" src="https://github.com/user-attachments/assets/8b3333f0-ae7a-440d-85ab-eafadcba3214" />
