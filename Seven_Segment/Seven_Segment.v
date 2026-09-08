/*
Project Name : Seven Segment configration
Editor : Hatem Essam 
Date: 22/8/2026

*/

//////////////////////////////////////////////////////////////////////////
///////////////// Seven_Segment
//////////////////////////////////////////////////////////////////////////


module Seven_Segment #(
    parameter INPUT_SIZE = 4

)(
    input  [INPUT_SIZE-1 : 0] in,
    output reg A, B, C, D, E, F, G
);

    localparam ZERO  = 4'b0000;
    localparam ONE   = 4'b0001;
    localparam TWO   = 4'b0010;
    localparam THREE = 4'b0011;
    localparam FOUR  = 4'b0100;
    localparam FIVE  = 4'b0101;
    localparam SIX   = 4'b0110;
    localparam SEVEN = 4'b0111;
    localparam EIGHT = 4'b1000;
    localparam NINE  = 4'b1001;
    localparam HEX_A = 4'b1010;
    localparam HEX_B = 4'b1011;
    localparam HEX_C = 4'b1100;
    localparam HEX_D = 4'b1101;
    localparam HEX_E = 4'b1110;
    localparam HEX_F = 4'b1111;


    always @(*) begin
        case (in)
            ZERO:  {A, B, C, D, E, F, G} = ~7'b111_1110;  //ONLY G LOW
            ONE:   {A, B, C, D, E, F, G} = ~7'b011_0000;  //B,C
            TWO:   {A, B, C, D, E, F, G} = ~7'b110_1101;  //A,B,G,E,D
            THREE: {A, B, C, D, E, F, G} = ~7'b111_1001;  //A,B,G,C,D
            FOUR:  {A, B, C, D, E, F, G} = ~7'b011_0011;  //F,G,B,C
            FIVE:  {A, B, C, D, E, F, G} = ~7'b101_1011;  //A,F,G,C,D
            SIX:   {A, B, C, D, E, F, G} = ~7'b101_1111;  //ONLY B LOW
            SEVEN: {A, B, C, D, E, F, G} = ~7'b111_0000;  //A, B,C
            EIGHT: {A, B, C, D, E, F, G} = ~7'b111_1111;  //ALL HIGH
            NINE:  {A, B, C, D, E, F, G} = ~7'b111_1011;  //ONLY E LOW
            HEX_A: {A, B, C, D, E, F, G} = ~7'b111_0111;  //ONLY D LOW 
            HEX_B: {A, B, C, D, E, F, G} = ~7'b001_1111;  //ONLY A, B LOW 
            HEX_C: {A, B, C, D, E, F, G} = ~7'b100_1110;  //ONLY G, B, C LOW
            HEX_D: {A, B, C, D, E, F, G} = ~7'b011_1101;  //ONLY A, F LOW
            HEX_E: {A, B, C, D, E, F, G} = ~7'b100_1111;  //ONLY B, C LOW
            HEX_F: {A, B, C, D, E, F, G} = ~7'b100_0111;  //ONLY B, C, D LOW

            default: begin
                {A, B, C, D, E, F, G} = 7'b000_0000;
            end
        endcase
    end

endmodule


