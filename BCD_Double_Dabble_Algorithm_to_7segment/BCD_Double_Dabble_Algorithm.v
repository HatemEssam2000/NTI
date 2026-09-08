/*

*/

///////////////////////////////////////////////////////////////////////////////
//bin_to_bcd
///////////////////////////////////////////////////////////////////////////////

module Cond_ADDER  (
    bin , bcd
);
input wire [3:0] bin;
output wire [3:0] bcd; 

assign bcd = (bin >= 5)?  bin +3 : bin;
    
endmodule


module bin_to_bcd (
    bin , units_digit, tens_digit, hundreds_digit
);

input wire [7:0] bin;
output wire [3:0] units_digit;
output wire [3:0] tens_digit;
output wire [3:0] hundreds_digit;

wire [3:0] C1_out , C2_out, C3_out, C4_out, C5_out, C6_out, C7_out;


Cond_ADDER C1 (.bin({1'b0 , bin[7:5]}), .bcd(C1_out));
Cond_ADDER C2 (.bin({C1_out[2:0] , bin[4]}), .bcd(C2_out));
Cond_ADDER C3 (.bin({C2_out[2:0] , bin[3]}), .bcd(C3_out));
Cond_ADDER C4 (.bin({C3_out[2:0] , bin[2]}), .bcd(C4_out));
Cond_ADDER C5 (.bin({C4_out[2:0] , bin[1]}), .bcd(C5_out));
Cond_ADDER C6 (.bin({1'b0, C1_out[3] ,C2_out[3],C3_out[3]}), .bcd(C6_out));
Cond_ADDER C7 (.bin({C6_out[2:0] , C4_out[3]}), .bcd(C7_out));

assign units_digit = { C5_out[2:0] , bin[0]};
assign tens_digit = { C7_out[2:0] , C5_out[3]};
assign hundreds_digit = {2'b00 , C6_out [3] , C7_out[3]};

endmodule















/* 
///////////////////////////////////////////////////////////////////////////////
//bin2bcd
///////////////////////////////////////////////////////////////////////////////

module bin2bcd(
   input [13:0] bin,
   output reg [15:0] bcd
   );
   
integer i;
	
always @(bin) begin
    bcd=0;		 	
    for (i=0;i<14;i=i+1) begin					//Iterate once for each bit in input number
        if (bcd[3:0] >= 5) bcd[3:0] = bcd[3:0] + 3;		//If any BCD digit is >= 5, add three
        if (bcd[7:4] >= 5) bcd[7:4] = bcd[7:4] + 3;
        if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 3;
        if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 3;
        bcd = {bcd[14:0],bin[13-i]};				//Shift one bit, and shift in proper bit from input 
    end
end
endmodule

 */


/* 
///////////////////////////////////////////////////////////////////////////////
//bcd2bin
///////////////////////////////////////////////////////////////////////////////


module bcd2bin
   (
    input wire [3:0] bcd3, 
    input wire [3:0] bcd2, 
    input wire [3:0] bcd1, 
    input wire [3:0] bcd0, 
    output wire [13:0] bin
   );

   assign bin = (bcd3 * 10'd1000) + (bcd2*7'd100) + (bcd1*4'd10) + bcd0;

endmodule */