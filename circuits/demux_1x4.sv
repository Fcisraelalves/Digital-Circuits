module demux_1x4(
	input logic in,
  	input logic [1:0] sel,
  	output logic [3:0] out
);

always_comb begin
  out = 4'b0000;
  case (sel)
    2'b00: out[0] = in;
    2'b01: out[1] = in;
    2'b10: out[2] = in;
    2'b11: out[3] = in;
  endcase
end
endmodule
