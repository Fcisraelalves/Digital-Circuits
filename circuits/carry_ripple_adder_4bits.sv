module carry_ripple_adder_4_bits(
  input logic [3:0] a,
  input logic [3:0] b,
  input logic cin,
  output logic [3:0] s,
  output logic cout
);

logic [2:0] c;

full_adder_with_half fa0(
  .a(a[0]),
  .b(b[0]),
  .cin(cin),
  .cout(c[0]),
  .s(s[0])
);
full_adder_with_half fa1(
  .a(a[1]),
  .b(b[1]),
  .cin(c[0]),
  .cout(c[1]),
  .s(s[1])
);
full_adder_with_half fa2(
  .a(a[2]),
  .b(b[2]),
  .cin(c[1]),
  .cout(c[2]),
  .s(s[2])
);
full_adder_with_half fa3(
  .a(a[3]),
  .b(b[3]),
  .cin(c[2]),
  .cout(cout),
  .s(s[3])
);
endmodule
