//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Seven Segment
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 
module Seven_Segment #(
    parameter INPUT_SIZE = 6

)(
    input  wire [INPUT_SIZE-1 : 0] in,
    output wire [6:0] out_segment
);

reg A, B, C, D, E, F, G;

    localparam ZERO  =  6'b00_0000;
    localparam ONE   =  6'b00_0001;
    localparam TWO   =  6'b00_0010;
    localparam THREE =  6'b00_0011;
    localparam FOUR  =  6'b00_0100;
    localparam FIVE  =  6'b00_0101;
    localparam SIX   =  6'b00_0110;
    localparam SEVEN =  6'b00_0111;
    localparam EIGHT =  6'b00_1000;
    localparam NINE  =  6'b00_1001;
    localparam HEX_A =  6'b00_1010;
    localparam HEX_B =  6'b00_1011;
    localparam HEX_C =  6'b00_1100;
    localparam HEX_D =  6'b00_1101;
    localparam HEX_E =  6'b00_1110;
    localparam HEX_F =  6'b00_1111;

    localparam LTR_G =  6'b01_0001;  //
    localparam LTR_H =  6'b01_0010;  //
    localparam LTR_I =  6'b01_0011;  //
    localparam LTR_J =  6'b01_0100;  //
    localparam LTR_K =  6'b01_0101;  //
    localparam LTR_L =  6'b01_0110;  //
    localparam LTR_M =  6'b01_0111;  //
    localparam LTR_N =  6'b01_1000;  //
    localparam LTR_O =  6'b01_1001;  //
    localparam LTR_P =  6'b01_1010;  //
    localparam LTR_Q =  6'b01_1011;  //
    localparam LTR_R =  6'b01_1100;  //
    localparam LTR_S =  6'b01_1101;  //
    localparam LTR_T =  6'b01_1110;  //
    localparam LTR_U =  6'b01_1111;  //
    localparam LTR_V =  6'b10_0001;  //
    localparam LTR_W =  6'b10_0010;  //
    localparam LTR_X =  6'b10_0011;  //
    localparam LTR_Y =  6'b10_0100;  //
    localparam LTR_Z =  6'b10_0111;  //



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

            LTR_G: {A, B, C, D, E, F, G} = ~7'b111_1011;  //ONLY E LOW
            LTR_H: {A, B, C, D, E, F, G} = ~7'b001_0111;  //ONLY A B D LOW
            LTR_I: {A, B, C, D, E, F, G} = ~7'b000_0110;  //F E HIGH
            LTR_J: {A, B, C, D, E, F, G} = ~7'b011_1000;  //B C D HIGH 
            LTR_K: {A, B, C, D, E, F, G} = ~7'b011_0111;  //A D LOW
            LTR_L: {A, B, C, D, E, F, G} = ~7'b000_1110;  //F E D HIGH
            LTR_M: {A, B, C, D, E, F, G} = ~7'b000_1101;  //G E D HIGH
            LTR_N: {A, B, C, D, E, F, G} = ~7'b100_0111;  //G E C HIGH
            LTR_O: {A, B, C, D, E, F, G} = ~7'b001_1101;  //G E C D HIGH
            LTR_P: {A, B, C, D, E, F, G} = ~7'b110_0111;  // C D LOW
            LTR_Q: {A, B, C, D, E, F, G} = ~7'b111_0011;  //E D LOW 
            LTR_R: {A, B, C, D, E, F, G} = ~7'b111_0111;  // D LOW
            LTR_S: {A, B, C, D, E, F, G} = ~7'b101_1011;  //A,F,G,C,D HIGH
            LTR_T: {A, B, C, D, E, F, G} = ~7'b100_0110;  // F E A HIGH
            LTR_U: {A, B, C, D, E, F, G} = ~7'b011_1110;  //A G LOW
            LTR_V: {A, B, C, D, E, F, G} = ~7'b011_1110;  //A G LOW
            LTR_W: {A, B, C, D, E, F, G} = ~7'b011_1110;  //A G LOW
            LTR_X: {A, B, C, D, E, F, G} = ~7'b011_0111;  //A D LOW
            LTR_Y: {A, B, C, D, E, F, G} = ~7'b011_1011;  //A E LOW
            LTR_Z: {A, B, C, D, E, F, G} = ~7'b110_1101;  //F C LOW


            default: begin
                {A, B, C, D, E, F, G} = 7'b000_0000;
            end
        endcase
    end

    assign out_segment = {G, F, E, D, C, B, A};

endmodule
