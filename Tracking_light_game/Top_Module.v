//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Game Top module
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 
module Top_Module(
    clk_ref , rst_n, leds_out, in_user, 
    seg6_out_display , seg5_out_display , seg4_out_display , seg3_out_display, seg2_out_display, seg1_out_display 
);

input wire  clk_ref , rst_n;
output [9:0] leds_out;
input [9:0] in_user;
output wire [6:0] seg6_out_display , seg5_out_display , seg4_out_display , seg3_out_display, seg2_out_display, seg1_out_display ;

wire clk, clk_pll;
wire [1:0] display;
wire [7:0] counter;

PLL pll_inst (
		.refclk   (clk_ref),   //  refclk.clk
		.rst      (~rst_n),      //   reset.reset
		.outclk_0 (clk_pll)
        );


Clock_Divider clock_divider_inst (
    .clk_ref(clk_pll), 
    .nrst(rst_n), 
    .clk(clk)
);

Updated_Shift_Register shift_and_check (
    .clk(clk) ,
    .rst_n(rst_n), 
    .shift_out(leds_out), 
    .user_in(in_user), 
    .win_loss(display),
    .counter(counter)
);


Decodre display_decoder (
    .in(display),  
    .seg6_out(seg6_out_display) , 
    .seg5_out(seg5_out_display) , 
    .seg4_out(seg4_out_display) , 
    .seg3_out(seg3_out_display) 
);


bin_to_7seg bin_to_7seg_inst(
    .bin(counter), 
    .Seg1(seg1_out_display), 
    .Seg2(seg2_out_display)
);




endmodule