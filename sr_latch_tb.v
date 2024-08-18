module sr_latch_tb;
    reg s, r;   // Inputs to the SR latch
    wire q, qn; // Outputs from the SR latch

  

    initial begin
        // Monitor the inputs and outputs
        $monitor("At time %t: s=%b, r=%b, q=%b, qn=%b", $time, s, r, q, qn);

        // Test vector 1: Set the latch
        s = 0; r = 1;
        #10;

        // Test vector 2: Reset the latch
        s = 1; r = 0;
        #10;

        // Test vector 3: Hold state
        s = 1; r = 1;
        #10;

        // Test vector 4: Invalid state (to see how it behaves, but should be avoided)
        s = 0; r = 0;
        #10;

        $stop; // Stop the simulation
    end
endmodule
