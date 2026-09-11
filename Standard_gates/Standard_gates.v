/*

Designed by/ Hatem Essam
Date : 23/8/2026

Project Name / Standard gates

*/

//AND, and OR gate using NAND

///////////////////////////////////////////////////////////////////////
//////////////////  AND_USING_NAND
///////////////////////////////////////////////////////////////////////
module AND_USING_NAND  (
    in1, in2, out
);

   input wire in1, in2;
   output wire out;

   wire out_nand1, out_nand2;


    nand (out_nand1,in1,in2);
    nand (out_nand2,in1,in2);

    nand (out,out_nand1,out_nand2);

endmodule
///////////////////////////////////////////////////////////////////////
//////////////////  OR_USING_NAND
///////////////////////////////////////////////////////////////////////
module OR_USING_NAND  (
    in1, in2, out
);

   input wire in1, in2;
   output wire out;

   wire out_nand1, out_nand2;


    nand (out_nand1,in1,in1);
    nand (out_nand2,in2,in2);

    nand (out,out_nand1,out_nand2);

endmodule
///////////////////////////////////////////////////////////////////////
////////////////// AND gate using NOR gate
///////////////////////////////////////////////////////////////////////

module AND_USING_NOR  (
    in1, in2, out
);

   input wire in1, in2;
   output wire out;

   wire out_nand1, out_nand2;


    nor (out_nand1,in1,in1);
    nor (out_nand2,in2,in2);

    nor (out,out_nand1,out_nand2);

endmodule

///////////////////////////////////////////////////////////////////////
////////////////// OR gate using NOR gate
///////////////////////////////////////////////////////////////////////

module OR_USING_NOR  (
    in1, in2, out
);

   input wire in1, in2;
   output wire out;

   wire out_nand1, out_nand2;


    nor (out_nand1,in1,in2);
    nor (out_nand2,in1,in2);

    nand (out,out_nand1,out_nand2);


endmodule


///////////////////////////////////////////////////////////////////////
////////////////// XOR gate as Buffer
///////////////////////////////////////////////////////////////////////

module XOR_as_Buffer(
     in, out
);


   input wire in;
   output wire out;

   xor (out,in,0);
  
endmodule

///////////////////////////////////////////////////////////////////////
////////////////// XOR gate as Inverter
///////////////////////////////////////////////////////////////////////

module XOR_as_Inverter(
     in, out
);


   input wire in;
   output wire out;

   xor (out,in,1);
  
endmodule


