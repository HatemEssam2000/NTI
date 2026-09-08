/*
Edited by / Hatem Essam
Project Name : FSM Edge Detector using Moore
*/

module Moore_Edge_Detector(
    In, Moore_Edge_out , clk,rst
);
    

localparam S0 = 2'b00;
localparam S1 = 2'b10;
localparam S2 = 2'b01;

input wire In;
input wire clk,rst;
output reg Moore_Edge_out ;

reg [1:0] current_state, next_state;

    // -------------------------------------------------------------
    // 1. Combinational Logic: Next State Logic
    // -------------------------------------------------------------
    always @(*) begin
        case (current_state)

            S0: begin
                if (In) begin
                    next_state = S1;
                end 
                else begin
                    next_state = S0;
                end
            end
            S1: begin
                if (In) begin
                    next_state = S2;
                end 
                else begin
                    next_state = S0;
                end
            end
            S2: begin
                if (In) begin
                    next_state = S2;
                end 
                else begin
                    next_state = S1;
                end
            end
        endcase
    
    end



    // -------------------------------------------------------------
    // 2. Sequential Logic: State Register
    // -------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
            if (rst) begin
                current_state <= S0;
            end else begin
                current_state <= next_state;
            end
    end
    

    // -------------------------------------------------------------
    // 3. Output block
    // -------------------------------------------------------------

    always @(*) begin
        Moore_Edge_out = 1'b0;
        // The Moore FSM Output Logic depend on the current state
        if (rst) begin
        Moore_Edge_out = 1'b0;
        end else begin
            if (current_state == S1)
                Moore_Edge_out = 1'b1;
            else
                Moore_Edge_out = 1'b0;
        end

    end
endmodule