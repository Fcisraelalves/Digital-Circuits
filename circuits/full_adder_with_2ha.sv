module full_adder_with_half(
	input logic a, b, cin,
  	output logic cout, s
);
logic s1, c1, c2;
half_adder ha0(
  .a(a),
  .b(b),
  .cout(c1),
  .s(s1)
);
half_adder ha1(
  .a(s1),
  .b(cin),
  .cout(c2),
  .s(s)
);

assign cout = c1 | c2;

endmodule
