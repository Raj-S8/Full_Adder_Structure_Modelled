
// half_adder module: This module computes the sum and carry-out of two single-bit inputs.

module half(
    input a,b,
    output sum, carry
);

    assign sum = a^b;
    assign carry = a&b;

endmodule

// full_adder module: This module computes the sum and carry-out of three single-bit inputs (a, b, and cin) by using two half-adder modules and an OR gate.

module fulladd(
    input a,b, cin,
    output sum, cout
);

    // Wires to connect the outputs of the first half-adder to the inputs of the second half-adder and the final OR gate.

    wire sum1, c2, c1;

    half ha1(.a(a), .b(b), .sum(sum1), .carry(c1));

    half ha2(.a(sum1), .b(cin), .sum(sum), .carry(c2));

    or(cout,c1,c2);

endmodule

