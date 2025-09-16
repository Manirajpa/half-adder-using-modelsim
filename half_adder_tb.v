`include "half_adder_design.v"
module tb;
reg a, b;
wire sum_gate, carry_gate;
wire sum_dataflow, carry_dataflow;
wire sum_behavioral, carry_behavioral;

half_adder_gatelevel ha1(.a(a), .b(b), .sum(sum_gate), .carry(carry_gate));
half_adder_dataflow ha2(.a(a), .b(b), .sum(sum_dataflow), .carry(carry_dataflow));
half_adder_behavioral ha3(.a(a), .b(b), .sum(sum_behavioral), .carry(carry_behavioral));
initial begin
 $display("A B| Gate Dataflow Behavioral");
 repeat(10)begin
    {a,b}=$random;#10;
    $display("%b %b | sum = %b carry = %b | sum = %b carry = %b | sum = %b carry = %b", a, b, sum_gate, carry_gate, sum_dataflow, carry_dataflow, sum_behavioral, carry_behavioral);
 end
end
initial begin
 $dumpfile("dump.vcd");
 $dumpvars(1,tb);
end
endmodule 
