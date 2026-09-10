/*

Designed by/ Hatem Essam
Date : 23/8/2026

Project Name / Standard Mux

*/

///////////////////////////////////////////////////////////////////////
//////////////////  MUX 2*1
///////////////////////////////////////////////////////////////////////

//for inst 
// Mux_2_1 MUX_ins1 (.Select(), .in0(), .in1(), .out());

module Mux_2_1(
    Select, in0, in1 , out
);

input wire in0, in1, Select;
output reg out;

always @(*) begin
        if (Select) begin
            out = in1;
        end
        else begin
            out = in1;
        end     
end
   
endmodule

///////////////////////////////////////////////////////////////////////
//////////////////  MUX Paramter
///////////////////////////////////////////////////////////////////////

//for inst 
// Mux_Parmater MUX_ins1 (.Select(), .in0(), .in1(), .out());

/* module Mux_Parmater(
    Select, in0, in1 , out
);

Paramter MUX_SIZE  = 2;

input wire [MUX_SIZE -1 :0] in0, 
input wire [$logc (MUX_SIZE) -1 :0] Select;
output reg out;

always @(*) begin
        if (Select) begin
            out = in1;
        end
        else begin
            out = in1;
        end     
end
   
endmodule */


///////////////////////////////////////////////////////////////////////
//////////////////  NAND Gate using Mux
///////////////////////////////////////////////////////////////////////


module NAND_using_MUX (
    in0, in1, out
);
    input in0, in1;
    output out;

    wire Out_MUX_ins1;

Mux_2_1 MUX_ins1 (.Select(in0), .in0(1), .in1(0), .out(Out_MUX_ins1));
Mux_2_1 MUX_ins2 (.Select(in1), .in0(1), .in1(Out_MUX_ins1), .out(out));


endmodule

///////////////////////////////////////////////////////////////////////
//////////////////  OR Gate using Mux
///////////////////////////////////////////////////////////////////////


module OR_using_MUX (
    in0, in1, out
);
    input in0, in1;
    output out;


Mux_2_1 MUX_ins1 (.Select(in1), .in0(in0), .in1(1), .out(out));


endmodule

///////////////////////////////////////////////////////////////////////
//////////////////  AND Gate using Mux
///////////////////////////////////////////////////////////////////////


module AND_using_MUX (
    in0, in1, out
);
    input in0, in1;
    output out;


Mux_2_1 MUX_ins1 (.Select(in1), .in0(0), .in1(in0), .out(out));


endmodule



///////////////////////////////////////////////////////////////////////
//////////////////  XOR Gate using Mux
///////////////////////////////////////////////////////////////////////


module XOR_using_MUX (
    in0, in1, out
);
    input in0, in1;
    output out;

    wire Out_MUX_ins1;

Mux_2_1 MUX_ins1 (.Select(in0), .in0(1), .in1(0), .out(Out_MUX_ins1));
Mux_2_1 MUX_ins2 (.Select(in1), .in0(in0), .in1(Out_MUX_ins1), .out(out));


endmodule


///////////////////////////////////////////////////////////////////////
//////////////////  XNOR Gate using Mux
///////////////////////////////////////////////////////////////////////


module XNOR_using_MUX (
    in0, in1, out
);
    input in0, in1;
    output out;

    wire Out_MUX_ins1;

Mux_2_1 MUX_ins1 (.Select(in0), .in0(1), .in1(0), .out(Out_MUX_ins1));
Mux_2_1 MUX_ins2 (.Select(in1), .in0(Out_MUX_ins1), .in1(in0), .out(out));


endmodule




