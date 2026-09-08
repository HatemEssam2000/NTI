/*
Edited by / Hatem Essam
Project Name : FSM Falling Edge Detector
*/

module Mealy_Falling_Edge(
    In, Mealy_Fall_out , clk,rst
);
    

localparam S0 = 1'b0;
localparam S1 = 1'b1;


input wire In;
input wire clk,rst;
output reg Mealy_Fall_out ;

reg current_state, next_state;

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
                    next_state = S1;
                end 
                else begin
                    next_state = S0;
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
        Mealy_Fall_out = 1'b0;
        // The Mealy FSM Output Logic depend on input and current state
        if (rst) begin
            Mealy_Fall_out = 1'b0;
        end else begin
            if ((current_state == S1) && (~In))
                Mealy_Fall_out = 1'b1;
            else
                Mealy_Fall_out = 1'b0;

        end

    end
endmodule