module mux2x1(
	input logic a,
	input logic b,
	input logic sel,
	output logic y
);
always_comb begin
	if(sel == 0)
		y = a;
	else
		y = b;
	end
endmodule
