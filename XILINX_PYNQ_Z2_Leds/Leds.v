module Leds(
    swich, tri_leds, bbutton, leds
);


input wire[1:0] swich;
output reg[5:0] tri_leds;

input wire[3:0] bbutton;
output wire [3:0] leds;


always @(*) begin

    case (swich)
    //                 R G B R G B
    2'b00: begin
            tri_leds = 6'b001_001;
        end
    2'b01: begin
            tri_leds = 6'b010_010;
        end
    2'b10: begin
            tri_leds = 6'b100_100;
        end
    2'b11: begin
            tri_leds = 6'b111_111;
        end        
        default: begin
            tri_leds = 6'b000_000;        
        end
    endcase
    
end
assign leds = bbutton;

    
endmodule