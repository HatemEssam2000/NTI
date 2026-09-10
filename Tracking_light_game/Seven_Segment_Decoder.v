//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Seven Segment Config
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 

module Decodre (
    in,  seg6_out , seg5_out , seg4_out , seg3_out
);

    localparam INPUT_SIZE = 6;


    localparam ZERO = 2'b00;
    localparam BOSS = 2'b01;
    localparam LOSS = 2'b10;
    localparam RESERVED_0 = 2'b11;


    input  wire [1:0] in;

    output wire [6:0] seg6_out , seg5_out , seg4_out , seg3_out ;

    reg [5:0] seg6 , seg5 , seg4 , seg3 ;

    always @(*) begin
        case (in)
            ZERO: begin
                seg6 = 6'b00_0000;
                seg5 = 6'b00_0000;
                seg4 = 6'b00_0000;
                seg3 = 6'b00_0000;
            end
            BOSS: begin
                seg6 = 6'b00_1011;
                seg5 = 6'b01_1001;
                seg4 = 6'b01_1101;
                seg3 = 6'b01_1101;
            end
            LOSS: begin
                seg6 = 6'b01_0110;
                seg5 = 6'b01_1001;
                seg4 = 6'b01_1101;
                seg3 = 6'b01_1101;
            end
            default: begin
                seg6 = 6'b00_0000;
                seg5 = 6'b00_0000;
                seg4 = 6'b00_0000;
                seg3 = 6'b00_0000;
            end
        endcase        
    end

Seven_Segment #(.INPUT_SIZE(6)) seg6_inst (
    .in(seg6),
    .out_segment(seg6_out)
);

Seven_Segment #(.INPUT_SIZE(6)) seg5_inst (
    .in(seg5),
    .out_segment(seg5_out)
);
Seven_Segment #(.INPUT_SIZE(6)) seg4_inst (
    .in(seg4),
    .out_segment(seg4_out)
);
Seven_Segment #(.INPUT_SIZE(6)) seg3_inst (
    .in(seg3),
    .out_segment(seg3_out)
);



endmodule


