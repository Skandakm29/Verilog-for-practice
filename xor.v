`timescale 1ns/1ps

module xor_gate(a, b, f);  // Ensure this matches the name used in the testbench
  input a, b;
  output f;
  wire t1, t2, t3;
  
  nand #5 G(t1, a, b);
  nand #5 G1(t2, t1, a);
  nand #5 G2(t3, t1, b);
  nand #5 G3(f, t2, t3);

endmodule
