/*

Designed by/ Hatem Essam
Date : 23/8/2026

Project Name / Full Adder

*/



///////////////////////////////////////////////////////////////////////
//////////////////  Full_Adder_using_MUX
///////////////////////////////////////////////////////////////////////


module Full_Adder_using_MUX(
    A, B, cin, sum, cout
);


input wire A, B, cin;
output wire  sum, cout;

wire xor_out, xnor_out;
wire or_out, and_out;

Mux_2_1 MUX_ins1 (.Select(A), .in0(xor_out), .in1(xnor_out), .out(sum));
XOR_using_MUX G_XOR ( .in0(cin), ,.in1(B), .out(xor_out));
XNOR_using_MUX G_XNOR (.in0(cin), .in1(B), .out(xnor_out));

Mux_2_1 MUX_ins2 (.Select(A), .in0(and_out), .in1(or_out), .out(cout));
AND_using_MUX G_AND (.in0(cin), .in1(B), .out(and_out));
OR_using_MUX G_OR (.in0(cin), .in1(B), .out(or_out));

endmodule
