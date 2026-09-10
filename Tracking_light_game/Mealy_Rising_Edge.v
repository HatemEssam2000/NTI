//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Rising Edge Detector FSM
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 

module Mealy_Rising_Edge(
    In, Mealy_Rising_out , clk,rst
);
    

localparam S0 = 1'b0;
localparam S1 = 1'b1;


input wire In;
input wire clk,rst;
output reg Mealy_Rising_out ;

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


    // The Mealy FSM Output Logic depend on input and current state
    always @(*) begin
        Mealy_Rising_out = 1'b0;
        if (rst) begin
        Mealy_Rising_out = 1'b0;
        end else begin
            if ((current_state == S0) && (In))
            Mealy_Rising_out = 1'b1;
            else
            Mealy_Rising_out = 1'b0;


        end

    end
endmodule