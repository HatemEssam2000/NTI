/*
Project Name : Gray_to_Binary_Decoder
Editor : Hatem Essam 
Date: 22/8/2026

*/

//////////////////////////////////////////////////////////////////////////
///////////////// Gray_to_Binary_Decoder
//////////////////////////////////////////////////////////////////////////


module Gray_to_Binary_Decoder #(
    parameter INPUT_SIZE = 4

)(
    input      [INPUT_SIZE-1 : 0] B_in,
    output     [INPUT_SIZE-1 : 0] G_Out
);

genvar i ;


    generate
        for (i=0; i<INPUT_SIZE -1; i = i + 1) begin
            
            xor Gate (G_Out [i], B_in[i] ,B_in[i+1] );

        end

    endgenerate


    assign G_Out [INPUT_SIZE - 1] = B_in [INPUT_SIZE -1];

    

endmodule


