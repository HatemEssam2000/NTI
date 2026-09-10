//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Shift Register
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 

module Shift_Register(
    clk ,rst_n, shift_out
);
input wire clk ,rst_n;
output reg [9:0] shift_out;


always @(posedge clk or negedge rst_n) begin

  if (~ rst_n) begin
    shift_out = 10'b00_0000_0001;
  end else begin
        if ( shift_out == 10'b10_0000_0000 ) begin
            shift_out = 10'b00_0000_0001;
        end else begin
                shift_out <= shift_out << 1;
        end
  end

end

    
endmodule