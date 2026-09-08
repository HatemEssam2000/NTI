//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Integration of the Digital Clock 
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 
module Digital_Clock_Top_Module(
    clk_ref, nrst, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
);

input wire clk_ref, nrst;
output wire [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;



wire [5:0] ss, mm, hh  ;
wire clk, clk_PLL;

PLL dot1 (
		.refclk   (clk_ref),   //  refclk.clk
		.rst      (~nrst),      //   reset.reset
		.outclk_0 (clk_PLL)
		);

Clock_Divider Clock_Divider_inst ( .clk_ref(clk_PLL), .nrst(nrst), .clk(clk));

Digital_Clock Digital_Clock_inst (.clk(clk), .nrst(nrst), .ss(ss), .mm(mm), .hh(hh));



bin_to_7seg Seven_Segment_ss1 (.bin(ss) , .Seg1(HEX0), .Seg2(HEX1));
bin_to_7seg Seven_Segment_mm1 (.bin(mm) ,  .Seg1(HEX2), .Seg2(HEX3));
bin_to_7seg Seven_Segment_hh1 (.bin(hh) ,  .Seg1(HEX4), .Seg2(HEX5));





endmodule

