//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Simple testbench for shift register
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 
module tb_shift_reg;

reg clk , rst_n;
wire [9:0] shift_reg_out;



Shift_Register shft_reg_inst (clk ,rst_n, shift_reg_out);

    initial begin
        clk =0;
        forever begin 
            #1 clk = ~clk;
        end 
    end 

initial begin

rst_n = 0; 
@(negedge clk)
rst_n = 1;

repeat (20) @(negedge clk);

$stop;
end
    
endmodule