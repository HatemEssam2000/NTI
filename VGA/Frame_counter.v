//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: fram Counter
// Referance : Anaas Salah
//
//////////////////////////////////////////////////////////////////////////////// 

module Frame_counter
#(parameter HMAX = 640,  // max horizontal count
            VMAX = 480   // max vertical count
)
(
    input  wire clk,
    input  wire reset,
    input  wire e_inc,           //enable signal to increment
    input  wire sync_clr,
    output wire [10:0] hcount,
    output wire [10:0] vcount,
    output wire frame_start,
    output wire frame_end
);

// signal declaration
reg [10:0] hc_counter;
reg [10:0] vc_counter;



// horizontal and vertical pixel counters
// register
always @(posedge clk, posedge reset) begin
    if (reset) begin
        vc_counter <= 0;
        hc_counter <= 0;
    end
    else if (sync_clr) begin
        vc_counter <= 0;
        hc_counter <= 0;
    end
    else begin

        // counter generation
        if (hc_counter == (HMAX - 1)) begin
            hc_counter = 0;

                if (vc_counter == (VMAX - 1))
                    vc_counter = 0;
                else
                    vc_counter = vc_counter + 1;
        end
        else begin
            hc_counter = hc_counter + 1;
        end 
    end
    
end 

// output
assign hcount = hc_counter;
assign vcount = vc_counter;
assign frame_start = (vc_counter==0) && (hc_counter==0);
assign frame_end = (vc_counter==(VMAX-1)) && (hc_counter==(HMAX-1));
endmodule