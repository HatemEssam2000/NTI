/*
Project Name : Paramater Decoder
Editor : Hatem Essam 
Date: 22/8/2026

*/

//////////////////////////////////////////////////////////////////////////
///////////////// Param_Decoder 
//////////////////////////////////////////////////////////////////////////


module Param_Decoder #(
    parameter OUTPUT_WIDTH = 4
)(
    input  [$clog2(OUTPUT_WIDTH)-1 : 0] in,
    output reg [OUTPUT_WIDTH-1 : 0]    out
);

    integer i;

    always @(*) begin
        out = {OUTPUT_WIDTH{1'b0}}; 
        for (i = 0; i < OUTPUT_WIDTH; i = i + 1) begin
            if (in == i) begin
                out[i] = 1'b1;
            end
        end
    end

endmodule



