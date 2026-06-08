module adder_subtractor #(parameter N = 4) (
    input  logic [N-1:0] a,
    input  logic [N-1:0] b,
    input  logic         op,
    output logic [N-1:0] sum,
    output logic         cout
);

    logic [N-1:0] b_xor;
    genvar i;

    generate
        for (i = 0; i < N; i++) begin : loop_xor
            assign b_xor[i] = b[i] ^ op;
        end
    endgenerate
    parametrizable_ripple_carry_adder #(.N(N)) meu_rca (
        .a(a),
        .b(b_xor),
        .cin(op),
        .sum(sum),
        .cout(cout)
    );

endmodule
