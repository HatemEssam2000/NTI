module Top_Module(
    bin, HE_X0, HE_X1, HE_X2
);

input wire [7:0] bin;
output wire [6:0] HE_X0;
output wire [6:0] HE_X1;
output wire [6:0] HE_X2;



wire [3:0] ones, tens, hundreds  ;

bin_to_bcd bin_to_bcd_inst (
    .bin(bin) , 
    .units_digit(ones), 
    .tens_digit(tens), 
    .hundreds_digit(hundreds)
);

Seven_Segment Seven_Segment_ones (.in(ones) , .out_segment(HE_X0));
Seven_Segment Seven_Segment_tens (.in(tens) , .out_segment(HE_X1));
Seven_Segment Seven_Segment_hundreds (.in(hundreds) , .out_segment(HE_X2));
    
endmodule