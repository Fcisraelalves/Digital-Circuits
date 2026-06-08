module decoder_1x2(
	input logic en,
  	input logic sel,
  output logic [1:0] out
);

always_comb begin
	out = 2'b00;
  	if (en == 1'b1) begin
      case (sel)
        1'b0: out = 2'b01;
        1'b1: out = 2'b10;
      endcase
  	end
end
endmodule
