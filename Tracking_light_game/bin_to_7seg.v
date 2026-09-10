//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: binary to seven segment
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 
module bin_to_7seg(
    bin, Seg1, Seg2
);

input wire [7:0] bin;
output wire [6:0] Seg1;
output wire [6:0] Seg2;




wire [3:0] ones, tens ,hundreds;

bin_to_bcd bin_to_bcd_inst (
    .bin(bin) , 
    .units_digit(ones), 
    .tens_digit(tens), 
    .hundreds_digit(hundreds)
);

Seven_Segment #(6) Seven_Segment_ones (.in(ones) , .out_segment(Seg1));
Seven_Segment #(6) Seven_Segment_tens (.in(tens) , .out_segment(Seg2));
    
endmodule