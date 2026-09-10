/*
Project Name : Paramater Encoder
Editor : Hatem Essam 
Date: 22/8/2026

*/

//////////////////////////////////////////////////////////////////////////
///////////////// Param_Encoder 
//////////////////////////////////////////////////////////////////////////


module Param_Encoder #(
    parameter INPUT_WIDTH = 4
)(
    input  [INPUT_WIDTH-1  : 0] in,
    output reg [$clog2(INPUT_WIDTH)-1: 0]    out
);

    integer i;
    reg pre_flag;

    always @(*) begin
       out = {INPUT_WIDTH{1'b0}}; //clear
       pre_flag = 1'b0;

        for (i = (INPUT_WIDTH-1); i >= 0; i = i - 1) begin
            if (in [i]  == 1'b1 && pre_flag == 1'b0 ) begin
                out = i;
                pre_flag = 1'b1;
            end
        end
    end

endmodule



