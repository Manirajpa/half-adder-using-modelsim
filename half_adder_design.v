module half_adder_gatelevel(input a, b, output sum, carry);
     xor(sum, a, b);
     and(carry, a, b);
endmodule

module half_adder_dataflow(input a, b, output sum, carry);
     assign sum = a ^ b;
     assign carry = a & b;
endmodule

module half_adder_behavioral(input a, b, output reg sum, carry);
always @(*)begin
	sum = a ^ b;
	carry = a & b;
end
endmodule
