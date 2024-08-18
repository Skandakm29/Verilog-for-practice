`timescale 1ns/1ps
`include "xor.v"  // This line should include the definition of xor_gate

module xor_tb;

  reg a;
  reg b;
  wire f;

  // Instantiate the XOR module
  xor_gate DUT (
    .a(a), 
    .b(b), 
    .f(f)
  );

  initial begin
    $monitor("a = %b, b = %b, f = %b", a, b, f);
    
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    
    $finish;
  end

endmodule
