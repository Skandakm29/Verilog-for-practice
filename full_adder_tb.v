`timescale 1ns/1ps
`include "full_adder.v"
module full_adder_tb;

  // Declare inputs as reg and outputs as wire
  reg a;
  reg b;
  reg c;
  wire s;
  wire cy;

  // Instantiate the full adder module
  full_adder uut (
    .a(a),
    .b(b),
    .c(c),
    .s(s),
    .cy(cy)
  );

  // Testbench procedure
  initial begin
    // VCD file generation
    $dumpfile("full_adder.vcd");  // Specify the name of the VCD file
    $dumpvars(0, full_adder_tb);  // Dump all variables in the testbench

    // Monitor the changes in inputs and outputs
    $monitor("a = %b, b = %b, c = %b, s = %b, cy = %b", a, b, c, s, cy);
    
    // Apply all possible input combinations
    a = 0; b = 0; c = 0; #10;  // Wait for 10 time units
    a = 0; b = 0; c = 1; #10;
    a = 0; b = 1; c = 0; #10;
    a = 0; b = 1; c = 1; #10;
    a = 1; b = 0; c = 0; #10;
    a = 1; b = 0; c = 1; #10;
    a = 1; b = 1; c = 0; #10;
    a = 1; b = 1; c = 1; #10;
    
    // Finish the simulation
    $finish;
  end

endmodule
