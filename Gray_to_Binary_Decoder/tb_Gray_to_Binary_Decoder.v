/*
Project Name :Testbench Gray_to_Binary_Decoder
Editor : Hatem Essam 
Date: 22/8/2026



*/


module tb_Gray_to_Binary_Decoder();

localparam INPUT_SIZE = 4;


wire [INPUT_SIZE -1:0] out_dut;
reg  [INPUT_SIZE -1:0] in_tb;


Gray_to_Binary_Decoder #(INPUT_SIZE) Gray_to_Binary_Decoder_DUT (in_tb, out_dut);

initial begin
$display ("------------- Start -------------");

repeat (20) begin
in_tb = $random;
#1


     $display ("in= %b  out= %b  ",
                in_tb, out_dut);
    end 

#1
$display ("------------- End Sim Succ -------------");
$stop; 
end


endmodule