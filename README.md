# DSD-lab-VIVADO
1.All_gates
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
<img width="879" height="610" alt="image" src="https://github.com/user-attachments/assets/29da6f69-d02b-42e7-93f1-10be6f1e5ce7" />

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

2.Boolean expressions
CODE:-
<pre>
`timescale 1ns / 1ps
module Boolean_expressions(
input A, B, C, 
output F1,F2,F3
    );
       assign F1 = (A & B) | (~C);
 assign F2 = (A | B) & C;
 assign F3 = ~(A ^ B);
endmodule
</pre>
Test bench code:-
<pre>
    `timescale 1ns / 1ps
module Boolean_expressions_tb(

    );
    reg A, B, C;
    wire F1, F2, F3;
    Boolean_expressions dut (A, B, C, F1, F2, F3);

    initial begin
       A=0; B=0; C=0; #10;
        A=0; B=0; C=1; #10;
       A=0; B=1; C=0; #10;
       A=0; B=1; C=1; #10; 
       A=1; B=0; C=0; #10;
       A=1; B=0; C=1; #10;
       A=1; B=1; C=0; #10;
       A=1; B=1; C=1; #10;
        
        $finish;
    end
endmodule
</pre>
<img width="859" height="635" alt="Screenshot 2025-11-13 173003" src="https://github.com/user-attachments/assets/b615213d-c81f-4bcc-ab73-c7b682dba70a" />
<img width="733" height="487" alt="image" src="https://github.com/user-attachments/assets/ade9f873-6575-43fc-8b0c-5f4cae6e9d6d" />

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
3.D_flipflop
CODE:-
<pre>
    `timescale 1ns / 1ps
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
</pre> 
Test bench code:-
<pre>
    `timescale 1ns / 1ps
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
</pre> 
<img width="861" height="625" alt="Screenshot 2025-11-19 161135" src="https://github.com/user-attachments/assets/8a210e00-259a-4fad-8e69-0595e915b769" />
<img width="737" height="440" alt="image" src="https://github.com/user-attachments/assets/b2b2c6a2-5965-4cde-8661-e14e0c9b4cb5" />

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

4.Full_adder
CODE:-
<pre>
    `timescale 1ns / 1ps
module Full_adder1(
input a, b, cin,      
    output sum, carry
    );
    assign sum = a ^ b ^ cin;                
    assign carry = (a & b) | (b & cin) | (a & cin);  
endmodule
</pre>
Test bench code:-
<pre>
`timescale 1ns / 1ps
module Full_adder1_tb(
    );
     reg a, b, cin;
    wire sum, carry;

    Full_adder1 dut (
        a, b, cin,sum,carry
    );
    initial begin
      
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $finish; 
    end
endmodule
</pre>
<img width="874" height="647" alt="Screenshot 2025-11-13 173211" src="https://github.com/user-attachments/assets/f4116008-12d8-4f46-92b4-9da9fdfd6075" />
<img width="737" height="368" alt="image" src="https://github.com/user-attachments/assets/8aa95ed3-64ba-4a17-8a58-a46f37040f11" />

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

5.Full_subtractor
CODE:-
<pre>
`timescale 1ns / 1ps
module Full_subt(
input a, b, bin,          
    output diff, bout 
    );
    assign diff = a ^ b ^ bin;                       
    assign bout = (~a & b) | (b & bin) | (~a & bin); 
endmodule
</pre>
Test bench code:-
<pre>
    `timescale 1ns / 1ps
module Full_subt_tb(

    );
    reg a, b, bin;
    wire diff, bout;

    Full_subt dut (
        a, b, bin, diff, bout
    );

    initial begin
      
        a=0; b=0; bin=0; #10;
        a=0; b=0; bin=1; #10;
        a=0; b=1; bin=0; #10;
        a=0; b=1; bin=1; #10;
        a=1; b=0; bin=0; #10;
        a=1; b=0; bin=1; #10;
        a=1; b=1; bin=0; #10;
        a=1; b=1; bin=1; #10;

        $finish; 
    end
endmodule
   </pre> 
   <img width="873" height="632" alt="Screenshot 2025-11-13 173406" src="https://github.com/user-attachments/assets/693496f0-c338-4015-b7d0-e2e96bf3c666" />
   <img width="834" height="379" alt="image" src="https://github.com/user-attachments/assets/22018273-f69a-4407-b4be-49793621ea24" />

   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

6.Half_adder
CODE:-
<pre>
`timescale 1ns / 1ps
module Half_adder(
input a,b,
output sum,carry
    );
    assign sum=a^b;
    assign carry=a&b;
endmodule
   </pre> 
Test bench code:-
<pre>
    `timescale 1ns / 1ps
module Half_adder_tb(

    );
    reg a, b;
    wire sum, carry;
    
    Half_adder dut (
        a,b,sum,carry
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
   <img width="862" height="630" alt="Screenshot 2025-11-13 173551" src="https://github.com/user-attachments/assets/e28de06e-5c17-4bc3-9534-f53eed83af3b" />
<img width="785" height="446" alt="image" src="https://github.com/user-attachments/assets/f121798b-eed5-4bfe-a5c7-c9aac2578527" />

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

7.Half_subtractor
CODE:-
<pre>
`timescale 1ns / 1ps
module Half_subt(
input a, b,          
    output diff, borrow  
    );
    assign diff = a ^ b;      
    assign borrow = (~a) & b;  
endmodule
  </pre> 
Test bench code:-
  <pre>
 `timescale 1ns / 1ps
module Half_subt_tb(
    );
     reg a, b;
    wire diff, borrow;
    Half_subt dut (
        a,b,diff,borrow
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
<img width="851" height="621" alt="Screenshot 2025-11-13 173832" src="https://github.com/user-attachments/assets/d7a8a8e7-20e5-4006-be80-f095b04d7325" />
<img width="562" height="355" alt="image" src="https://github.com/user-attachments/assets/9a7a740d-271e-4540-844a-a5f8f5a349a6" />

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

8.Mux_2x1
CODE:-
 <pre>
   `timescale 1ns / 1ps
module Mux_2x1(
input S,I0,I1,
output y          
    );
  assign y=(~S & I0) | (S & I1);  
endmodule  
  </pre> 
  Test bench code:-
  <pre>
`timescale 1ns / 1ps
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
     </pre> 
<img width="994" height="628" alt="Screenshot 2025-11-13 213329" src="https://github.com/user-attachments/assets/f7f821d1-890a-4e2b-9db8-83b349bf11fb" />
<img width="811" height="364" alt="image" src="https://github.com/user-attachments/assets/230a9b52-552e-4004-bb41-6cfb1f33649c" />

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

9.Mux_4x1
CODE:-
<pre>
   `timescale 1ns / 1ps
module Mux_4x1(
 input S1, S0, I0, I1, I2, I3,
    output y
    );
    assign y = (~S1 & ~S0 & I0) |(~S1 &  S0 & I1) |( S1 & ~S0 & I2) |( S1 &  S0 & I3);
endmodule 
  </pre>
  Test bench code:-
 <pre>
  `timescale 1ns / 1ps
module Mux_4x1_tb(
    );
     reg S1, S0, I0, I1, I2, I3;
    wire y;

    Mux_4x1 dut (S1, S0, I0, I1, I2, I3, y);

  initial begin
    S1=0; S0=0; I0=0; I1=0; I2=0; I3=0; #10;
    S1=0; S0=0; I0=0; I1=0; I2=0; I3=1; #10;
    S1=0; S0=0; I0=0; I1=0; I2=1; I3=0; #10;
    S1=0; S0=0; I0=0; I1=0; I2=1; I3=1; #10;
    S1=0; S0=0; I0=0; I1=1; I2=0; I3=0; #10;
    S1=0; S0=0; I0=0; I1=1; I2=0; I3=1; #10;
    S1=0; S0=0; I0=0; I1=1; I2=1; I3=0; #10;
    S1=0; S0=0; I0=0; I1=1; I2=1; I3=1; #10;
    S1=0; S0=0; I0=1; I1=0; I2=0; I3=0; #10;
    S1=0; S0=0; I0=1; I1=0; I2=0; I3=1; #10;
    S1=0; S0=0; I0=1; I1=0; I2=1; I3=0; #10;
    S1=0; S0=0; I0=1; I1=0; I2=1; I3=1; #10;
    S1=0; S0=0; I0=1; I1=1; I2=0; I3=0; #10;
    S1=0; S0=0; I0=1; I1=1; I2=0; I3=1; #10;
    S1=0; S0=0; I0=1; I1=1; I2=1; I3=0; #10;
    S1=0; S0=0; I0=1; I1=1; I2=1; I3=1; #10;
    S1=0; S0=1; I0=0; I1=0; I2=0; I3=0; #10;
    S1=0; S0=1; I0=0; I1=0; I2=0; I3=1; #10;
    S1=0; S0=1; I0=0; I1=0; I2=1; I3=0; #10;
    S1=0; S0=1; I0=0; I1=0; I2=1; I3=1; #10;
    S1=0; S0=1; I0=0; I1=1; I2=0; I3=0; #10;
    S1=0; S0=1; I0=0; I1=1; I2=0; I3=1; #10;
    S1=0; S0=1; I0=0; I1=1; I2=1; I3=0; #10;
    S1=0; S0=1; I0=0; I1=1; I2=1; I3=1; #10;
    S1=0; S0=1; I0=1; I1=0; I2=0; I3=0; #10;
    S1=0; S0=1; I0=1; I1=0; I2=0; I3=1; #10;
    S1=0; S0=1; I0=1; I1=0; I2=1; I3=0; #10;
    S1=0; S0=1; I0=1; I1=0; I2=1; I3=1; #10;
    S1=0; S0=1; I0=1; I1=1; I2=0; I3=0; #10;
    S1=0; S0=1; I0=1; I1=1; I2=0; I3=1; #10;
    S1=0; S0=1; I0=1; I1=1; I2=1; I3=0; #10;
    S1=0; S0=1; I0=1; I1=1; I2=1; I3=1; #10;
    S1=1; S0=0; I0=0; I1=0; I2=0; I3=0; #10;
    S1=1; S0=0; I0=0; I1=0; I2=0; I3=1; #10;
    S1=1; S0=0; I0=0; I1=0; I2=1; I3=0; #10;
    S1=1; S0=0; I0=0; I1=0; I2=1; I3=1; #10;
    S1=1; S0=0; I0=0; I1=1; I2=0; I3=0; #10;
    S1=1; S0=0; I0=0; I1=1; I2=0; I3=1; #10;
    S1=1; S0=0; I0=0; I1=1; I2=1; I3=0; #10;
    S1=1; S0=0; I0=0; I1=1; I2=1; I3=1; #10;
    S1=1; S0=0; I0=1; I1=0; I2=0; I3=0; #10;
    S1=1; S0=0; I0=1; I1=0; I2=0; I3=1; #10;
    S1=1; S0=0; I0=1; I1=0; I2=1; I3=0; #10;
    S1=1; S0=0; I0=1; I1=0; I2=1; I3=1; #10;
    S1=1; S0=0; I0=1; I1=1; I2=0; I3=0; #10;
    S1=1; S0=0; I0=1; I1=1; I2=0; I3=1; #10;
    S1=1; S0=0; I0=1; I1=1; I2=1; I3=0; #10;
    S1=1; S0=0; I0=1; I1=1; I2=1; I3=1; #10;
    S1=1; S0=1; I0=0; I1=0; I2=0; I3=0; #10;
    S1=1; S0=1; I0=0; I1=0; I2=0; I3=1; #10;
    S1=1; S0=1; I0=0; I1=0; I2=1; I3=0; #10;
    S1=1; S0=1; I0=0; I1=0; I2=1; I3=1; #10;
    S1=1; S0=1; I0=0; I1=1; I2=0; I3=0; #10;
    S1=1; S0=1; I0=0; I1=1; I2=0; I3=1; #10;
    S1=1; S0=1; I0=0; I1=1; I2=1; I3=0; #10;
    S1=1; S0=1; I0=0; I1=1; I2=1; I3=1; #10;
    S1=1; S0=1; I0=1; I1=0; I2=0; I3=0; #10;
    S1=1; S0=1; I0=1; I1=0; I2=0; I3=1; #10;
    S1=1; S0=1; I0=1; I1=0; I2=1; I3=0; #10;
    S1=1; S0=1; I0=1; I1=0; I2=1; I3=1; #10;
    S1=1; S0=1; I0=1; I1=1; I2=0; I3=0; #10;
    S1=1; S0=1; I0=1; I1=1; I2=0; I3=1; #10;
    S1=1; S0=1; I0=1; I1=1; I2=1; I3=0; #10;
    S1=1; S0=1; I0=1; I1=1; I2=1; I3=1; #10;
    $finish;
  end
endmodule   
  </pre>   
<img width="868" height="634" alt="Screenshot 2025-11-13 214310" src="https://github.com/user-attachments/assets/67391d65-e81e-46d7-b891-97a61f0107ff" />
<img width="815" height="425" alt="image" src="https://github.com/user-attachments/assets/8e9d67a6-fb6a-440e-878a-94ed90ef9135" />

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

10.Mux_8x1
CODE:-
<pre>
`timescale 1ns / 1ps
module Mux_8x1(
input I0, I1, I2, I3, I4, I5, I6, I7,
    input S0, S1, S2,
    output Y
    );
    assign Y =(~S2 & ~S1 & ~S0 & I0) |(~S2 & ~S1 &  S0 & I1) |(~S2 &  S1 & ~S0 & I2) |
              (~S2 &  S1 &  S0 & I3) |( S2 & ~S1 & ~S0 & I4) |( S2 & ~S1 &  S0 & I5) |
              ( S2 &  S1 & ~S0 & I6) |( S2 &  S1 &  S0 & I7);
endmodule    
</pre>
Test bench code:-
<pre>
`timescale 1ns / 1ps
module Mux_8x1_tb(

    );
    reg I0, I1, I2, I3, I4, I5, I6, I7;
reg S0, S1, S2;
wire Y;
Mux_8x1 dut (I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, Y);
initial begin
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 0; S1 = 0; S0 = 0;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1; S2 = 0; S1 = 0; S0 = 1;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1; S2 = 0; S1 = 1; S0 = 0;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 0; S1 = 1; S0 = 1;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 0; S0 = 0;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 0; S0 = 1;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 1; S0 = 0;  
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 1; S0 = 1;   
    #10;
$finish;
end
endmodule
</pre>    
<img width="922" height="623" alt="Screenshot 2025-11-19 162552" src="https://github.com/user-attachments/assets/4410332c-0223-4cff-bff5-87e114fa6c73" />
<img width="1058" height="452" alt="image" src="https://github.com/user-attachments/assets/aa44c3cf-ce44-40cf-af9b-51a32e873477" />

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

11.Priority encoder
CODE:-
<pre>
`timescale 1ns / 1ps
module Priority_encoder_42(
input d0,d1,d2,d3,
output a,b,v

    );
     assign a = d2|d3;
    assign b=( d1 &(~d2))|d3;
    assign v = d3|d2|d1|d0;
endmodule
</pre>
Test bench code:-
<pre>
`timescale 1ns / 1ps
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
</pre>
<img width="935" height="636" alt="Screenshot 2025-11-13 215507" src="https://github.com/user-attachments/assets/68d00a81-ce92-4939-ba7a-2bc1d8af0efa" />
<img width="713" height="496" alt="image" src="https://github.com/user-attachments/assets/e73e8857-231b-4f53-bc13-c097b30d2139" />

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

12.Priority decoder
CODE:-
<pre>
`timescale 1ns / 1ps
module Priority_decoder_24(
input a,b,
output d0,d1,d2,d3
    );
     assign d0 = ~a&(~b);
    assign d1 = ~a&b;
    assign d2 = a&(~b);
    assign d3 = a&b;

endmodule
</pre>
Test bench code:-
<pre>
`timescale 1ns / 1ps
module Priority_decoder_24_tb(
    );
     reg a,b;
    wire d0,d1,d2,d3;
    
    Priority_decoder_24 dut(a,b,d0,d1,d2,d3);
    
    initial begin 
    a =0; b=0;
    #10
     a =0; b=1;
    #10
     a =1; b=0;
    #10
     a =1; b=1;
    #10
    $finish;
    end
endmodule
</pre>
<img width="876" height="617" alt="Screenshot 2025-11-13 220243" src="https://github.com/user-attachments/assets/d093d1ae-3e46-4cd9-bca5-9e3e89f43447" />
<img width="714" height="501" alt="image" src="https://github.com/user-attachments/assets/160a393d-f8a1-4d15-85a9-d02109a59250" />

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

13.Universal_adder
CODE:-
<pre>
`timescale 1ns / 1ps
module full_adder(
    input  A, B, Cin,
    output Sum, Cout
);
    assign {Cout, Sum} = A + B + Cin;
endmodule

module Universal_adder(
 input  [3:0] A, B,
    input        M,         
    output [3:0] S,         
    output       Cout,      
    output       V     
    );
    wire [3:0] B_mod;
    wire c1, c2, c3, c4;
    assign B_mod = B ^ {4{M}};

    full_adder FA0 (A[0], B_mod[0], M,  S[0], c1);  
    full_adder FA1 (A[1], B_mod[1], c1, S[1], c2);
    full_adder FA2 (A[2], B_mod[2], c2, S[2], c3);
    full_adder FA3 (A[3], B_mod[3], c3, S[3], c4);

    assign Cout = c4;
    assign V = c4 ^ c3;
endmodule
</pre>
Test bench code:-
<pre>
`timescale 1ns / 1ps
module Universal_adder_tb(

    );
    reg  [3:0] A, B;
    reg        M;
    wire [3:0] S;
    wire       Cout, V;
    Universal_adder dut (A, B, M, S, Cout, V);
    initial begin
        
       M = 0;
        A = 4'b0101; B = 4'b0011; #10;
        A = 4'b0111; B = 4'b1001; #10;
       M = 1;
        A = 4'b1001; B = 4'b0100; #10;
        A = 4'b0011; B = 4'b1000; #10;
        $finish;
    end
endmodule
</pre>
<img width="932" height="636" alt="Screenshot 2025-11-19 163304" src="https://github.com/user-attachments/assets/a1e4ebd1-7a97-4ec2-8701-c3e984b541be" />
<img width="814" height="504" alt="image" src="https://github.com/user-attachments/assets/fa56f6dc-11a9-4ed8-b2a2-79c7bebd037c" />

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

14.SR_latch
CODE:-
<pre>
`timescale 1ns / 1ps
module SR_latch(
 input S, R,       
    output Q, Qbar  
    );
    assign Q     = ~(R | Qbar); 
    assign Qbar  = ~(S | Q);    
endmodule
</pre>
Test bench code:-
<pre>
`timescale 1ns / 1ps
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
</pre>
<img width="856" height="604" alt="Screenshot 2025-11-13 182403" src="https://github.com/user-attachments/assets/7b32cf1b-a0cd-4aff-8d05-09f7254d8d9a" />
<img width="710" height="384" alt="image" src="https://github.com/user-attachments/assets/3c6cdac9-9900-4319-bd71-1a4c839ed2d3" />

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

15.SR_flipflop
CODE:-
<pre>
`timescale 1ns / 1ps
module SR_ff(
    input S,R,CLK,
    output reg Q,
    output Qbar
    );
assign Qbar = ~Q; 
always @(posedge CLK) begin 
case ({S, R}) 
2'b10: Q <= 1'b1;   
2'b01: Q <= 1'b0;   
2'b00: Q <= Q;       
2'b11: Q <= 1'bx;    
endcase 
end 
endmodule
</pre>
Test bench code:-
<pre>
`timescale 1ns / 1ps
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
</pre>
<img width="925" height="630" alt="Screenshot 2025-11-17 153340" src="https://github.com/user-attachments/assets/a1e8d2ca-5aff-4689-b021-fe41e953945b" />
<img width="804" height="453" alt="image" src="https://github.com/user-attachments/assets/fee82ca0-05a5-4e81-b2a4-299d77fba4e9" />

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

16.T_flipflop
CODE:-
<pre>
`timescale 1ns / 1ps
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
</pre>
Test bench code:-
<pre>
`timescale 1ns / 1ps
module T_ff_tb(

    );
    reg T, clk;
    wire Q, Qbar;
    T_ff dut(T,clk,Q,Qbar);
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        T = 0;
        #10;
        T = 1; #10;   
        T = 1; #10;   
        T = 0; #10;   
        T = 1; #10;   
        T = 0; #10;   
        T = 1; #20;   

        $finish;
    end
endmodule
</pre>
<img width="998" height="646" alt="Screenshot 2025-11-19 160254" src="https://github.com/user-attachments/assets/85aecd95-2fcc-40fa-8f11-2c7090627e78" />
<img width="630" height="338" alt="image" src="https://github.com/user-attachments/assets/2b9e51c1-0487-4109-99c5-5c0050ec0376" />

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

17.JK_flipflop
CODE:-
<pre>
`timescale 1ns / 1ps
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
</pre>
Test bench code:-
<pre>
`timescale 1ns / 1ps
module JK_ff_tb(

    );
   reg J, K, clk;
    wire Q, Qbar;
    JK_ff dut (J,K,clk,Q,Qbar);  
    initial begin
        clk = 0;
        forever #5 clk = ~clk;   
    end
    initial begin
        J = 0; K = 0; #10;   
        J = 1; K = 0; #10;   
        J = 0; K = 1; #10;   
        J = 1; K = 1; #10;   
        J = 1; K = 1; #10;   
        J = 0; K = 0; #10;  
        $finish;
    end 
endmodule
</pre>
<img width="917" height="617" alt="Screenshot 2025-11-19 161801" src="https://github.com/user-attachments/assets/77c533be-1bfb-4deb-b817-3359008878f2" />
<img width="715" height="505" alt="image" src="https://github.com/user-attachments/assets/9635ee6a-d328-47ed-9951-21c74ee1561f" />

