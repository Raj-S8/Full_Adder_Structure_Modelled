module full_adder_tb;

    // Declare testbench signals for the DUT's inputs and outputs
    reg a, b, cin;       // Inputs are declared as 'reg'
    wire sum, cout;      // Outputs are declared as 'wire'

    // Instantiate the DUT (Design Under Test)

    fulladd DUT (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Initial block to apply stimulus and run the simulation
    initial begin
        // Open the waveform dump file for GTKWave
        $dumpfile("full_adder.vcd");
        // Dump all signals in the DUT for viewing
        $dumpvars(0, DUT);

        // Apply all 8 possible input combinations (2^3 = 8)

        a = 0; b = 0; cin = 0;
        #10;
        a = 0; b = 0; cin = 1;
        #10;
       a = 0; b = 1; cin = 0;
        #10;
        a = 0; b = 1; cin = 1;
        #10;
        a = 1; b = 0; cin = 0;
        #10;
        a = 1; b = 0; cin = 1;
        #10;
        a = 1; b = 1; cin = 0;
        #10;
       a = 1; b = 1; cin = 1;
        #10;
    
        $monitor("Time = %0t, a = %b, b = %b, sum = %b, carry = %b", $time, a, b, sum, cout);

        $finish;

    end
endmodule