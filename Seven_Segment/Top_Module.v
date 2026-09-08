module Top_Module(
    grey_in,seg_out_n
);

localparam INPUT_SIZE = 4;

input [INPUT_SIZE-1:0] grey_in;
wire [INPUT_SIZE-1:0] binary;
output [6:0] seg_out_n;

    



Gray_to_Binary_Decoder #(.INPUT_SIZE(INPUT_SIZE)) Gray_to_Binary_Decoder_inst1 (.G_in(grey_in), .B_Out(binary));
Seven_Segment #(.INPUT_SIZE(INPUT_SIZE)) Seven_Segment_inst1 (.in(binary), .A(seg_out_n[0]), .B(seg_out_n[1]), .C(seg_out_n[2]), .D(seg_out_n[3]), .E(seg_out_n[4]), .F(seg_out_n[5]), .G(seg_out_n[6]));

endmodule