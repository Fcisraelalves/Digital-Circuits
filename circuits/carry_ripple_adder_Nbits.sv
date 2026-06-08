module parametrizable_ripple_carry_adder #(parameter N = 2) (
    input  logic [N-1:0] a,
    input  logic [N-1:0] b,
    input  logic         cin,
    output logic [N-1:0] sum,
    output logic         cout
);

  	logic [N:0] carry_wire;
    assign carry_wire[0] = cin;

    assign cout = carry_wire[N];

    genvar i;

    generate
        for (i = 0; i < N; i++) begin : rca_loop
            full_adder_with_half fa_inst (
                .a(a[i]),
                .b(b[i]),
                .cin(carry_wire[i]),
                .cout(carry_wire[i+1]),
                .sum(sum[i])
            );
        end
    endgenerate

endmodule
