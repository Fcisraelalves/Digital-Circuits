module encoder_2x1(
  input logic [1:0] in,
  output logic out
);

always_comb begin
  out = 1'b0;
  case (in)
    2'b01: out = 1'b0;
    2'b10: out = 1'b1;
  endcase
end
endmodule
