module demux_1x2 (
    input  logic       in,
    input  logic       sel,
    output logic [1:0] out
);

    always_comb begin
        out = 2'b00;

        case (sel)
            1'b0: out[0] = in;
            1'b1: out[1] = in;
        endcase
    end

endmodule
