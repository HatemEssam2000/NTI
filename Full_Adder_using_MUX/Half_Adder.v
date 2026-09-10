/*

Designed by/ Hatem Essam
Date : 23/8/2026

Project Name / Half Adder

*/



///////////////////////////////////////////////////////////////////////
//////////////////  Half_Adder_using_MUX
///////////////////////////////////////////////////////////////////////


module Half_Adder_using_MUX(
    in0, in1, sum, cout
);


input wire in0, in1;
output wire  sum, cout;

XOR_using_MUX G_XOR ( .in0(in0), ,.in1(in1), .out(sum));
AND_using_MUX G_AND ( .in0(in0), .in1(in1), .out(cout));


endmodule