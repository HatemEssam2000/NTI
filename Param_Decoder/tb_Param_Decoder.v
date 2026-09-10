/*
Project Name :Testbench Paramater Decoder
Editor : Hatem Essam 
Date: 22/8/2026



*/


module tb_Decoder();

parameter OUT_SIZE = 4;

reg [$clog2(OUT_SIZE) - 1: 0] in_tb;
//reg out_tb;
wire [OUT_SIZE -1:0] out_dut;

Param_Decoder #(OUT_SIZE) dut_Decoder (in_tb, out_dut);


initial begin
$display ("------------- Start -------------");

repeat (20) begin
in_tb = $random;
#2


     $display ("in= %b  out= %b  ",
                in_tb, out_dut);
    end 

#1
$display ("------------- End Sim Succ -------------");
$stop; 
end


endmodule