//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Digital Clock Implementation
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 
module Digital_Clock(
    clk, nrst, ss, mm, hh
);

input wire clk, nrst;
output reg [5:0] ss, mm, hh;



always @(posedge clk or negedge nrst) begin
    if (~nrst) begin
        ss <= 0;
        mm <= 0;
        hh <= 0;
    end else begin

        if (ss == 59) begin
            ss <= 0;
                if (mm == 59) begin
                    mm <= 0;
                        if (hh == 23) begin
                            hh <= 0;
                        end else begin
                            hh <= hh +1 ; 
                        end
                end
                else begin
                    mm <= mm +1 ;
                end
        end
        else begin
            ss <= ss +1 ;
        end
    end   
end
    
endmodule