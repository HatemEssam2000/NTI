//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: clock divider
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 

module counter  (
    clk , rst_n, m_tick
);


input wire clk, rst_n ;
output reg m_tick;

localparam CLK_FREQ = 100_000_000; //clk input in hz 100 mhz is 10 ns
localparam CLK_DIVIDER = 10_000_000; // 10 mhz is 100 ns
// tick every 100 ns 
localparam COUNTER_MAX = (CLK_FREQ / CLK_DIVIDER);
reg [$clog2(COUNTER_MAX) -1 :0] counter ;

always @(posedge clk or negedge rst_n) begin
    
    if ( ~rst_n ) begin
        m_tick <= 0;
        counter <= 0;
    end 
    else begin
        if (counter == (COUNTER_MAX)) begin
            counter <= 0;
            m_tick <= 1;
        end else begin
            counter <= counter +1;
            m_tick <= 0;
        end
    end

end






    
endmodule