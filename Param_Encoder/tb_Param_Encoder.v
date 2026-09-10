/*
Project Name :Testbench Paramater Encoder
Editor : Hatem Essam 
Date: 22/8/2026



*/


module tb_Encoder();

parameter IN_SIZE = 4;

reg [IN_SIZE- 1: 0] in_tb;
//reg out_tb;
wire [$clog2(IN_SIZE) -1:0] out_dut;

Param_Encoder #(IN_SIZE) dut_Decoder (in_tb, out_dut);


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