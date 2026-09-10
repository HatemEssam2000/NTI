//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Clock Divider
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 
module Clock_Divider(
    clk_ref, nrst, clk
);
    parameter N = 10_000_000; // Must be an even number

    input  wire clk_ref;
    input  wire nrst;
    output reg  clk;


    // Calculate required bit width for the counter
    reg [$clog2(N)-1:0] counter;

    always @(posedge clk_ref or negedge nrst) begin
        if (!nrst) begin
            counter <= 0;
            clk <= 0;
        end else begin
            if (counter >= (N - 1)) begin
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end

            // Toggle output halfway to maintain 50% duty cycle
            if (counter < (N / 2)) begin
                clk <= 1'b1;
            end else begin
                clk <= 1'b0;
            end
        end
    end
endmodule




    
