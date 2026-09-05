/*


*/

module Debouncing_Circuit(
    sw_signal, db , clk,rst_n
);
    
    // -------------------------------------------------------------
    // STATES
    // -------------------------------------------------------------
        localparam ZERO    = 4'b0000;
        localparam WAIT1_1 = 4'b0001;
        localparam WAIT1_2 = 4'b0011;
        localparam WAIT1_3 = 4'b0010;

        localparam ONE     = 4'b1000;
        localparam WAIT0_1 = 4'b1001;
        localparam WAIT0_2 = 4'b1011;
        localparam WAIT0_3 = 4'b1010;


input wire sw_signal;
input wire clk,rst_n;
output reg db;

reg [3:0] current_state, next_state;
wire m_tick;


    // -------------------------------------------------------------
    // counter inst
    // -------------------------------------------------------------
counter  counter (
    .clk(clk) , 
    .rst_n(rst_n), 
    .m_tick(m_tick)
);

    // -------------------------------------------------------------
    // 1. Combinational Logic: Next State Logic
    // -------------------------------------------------------------
    always @(*) begin
        case (current_state)
        ///////////////////////////////
        //zERO to ONE
        //////////////////////////////
            ZERO: begin
                if ( ~ sw_signal) begin
                    next_state = ZERO;
                end 
                else begin
                    next_state = WAIT1_1;
                end
            end
            WAIT1_1: begin
                if ( ~ sw_signal) begin
                    next_state = ZERO;
                end 
                else if (sw_signal && (~m_tick)) begin
                    next_state = WAIT1_1;
                end else if (sw_signal && m_tick) begin
                    next_state = WAIT1_2;
                end else begin
                    next_state = WAIT1_1; // just for closing the branch
                end
            end
            WAIT1_2: begin
                if ( ~ sw_signal) begin
                    next_state = ZERO;
                end 
                else if (sw_signal && (~m_tick)) begin
                    next_state = WAIT1_2;
                end else if (sw_signal && m_tick) begin
                    next_state = WAIT1_3;
                end else begin
                    next_state = WAIT1_2; // just for closing the branch
                end
            end
            WAIT1_3: begin
                if ( ~ sw_signal) begin
                    next_state = ZERO;
                end 
                else if (sw_signal && (~m_tick)) begin
                    next_state = WAIT1_3;
                end else if (sw_signal && m_tick) begin
                    next_state = ONE;
                end else begin
                    next_state = WAIT1_3; // just for closing the branch
                end
            end

        ///////////////////////////////
        //ONE to ZERO
        //////////////////////////////
            ONE: begin
                if ( sw_signal) begin
                    next_state = ONE;
                end 
                else begin
                    next_state = WAIT0_1;
                end
            end
            WAIT0_1: begin
                if ( sw_signal) begin
                    next_state = ONE;
                end 
                else if ( (~sw_signal) && (~m_tick)) begin
                    next_state = WAIT0_1;
                end else if ( (~sw_signal) && m_tick) begin
                    next_state = WAIT0_2;
                end else begin
                    next_state = WAIT0_1; // just for closing the branch
                end
            end
            WAIT0_2: begin
                if ( sw_signal) begin
                    next_state = ONE;
                end 
                else if ((~sw_signal) && (~m_tick)) begin
                    next_state = WAIT0_2;
                end else if ((~sw_signal) && m_tick) begin
                    next_state = WAIT0_3;
                end else begin
                    next_state = WAIT0_2; // just for closing the branch
                end
            end
            WAIT0_3: begin
                if ( sw_signal) begin
                    next_state = ONE;
                end 
                else if ((~sw_signal) && (~m_tick)) begin
                    next_state = WAIT0_3;
                end else if ((~sw_signal) && m_tick) begin
                    next_state = ZERO;
                end else begin
                    next_state = WAIT0_3; // just for closing the branch
                end
            end

            //////////////////////////////////////////////////////////
            default: begin // for unvalid opcodes
                next_state = ZERO;
            end
        endcase
    
    end



    // -------------------------------------------------------------
    // 2. Sequential Logic: State Register
    // -------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
            if (~ rst_n) begin
                current_state <= ZERO;
            end else begin
                current_state <= next_state;
            end
    end
    

    // -------------------------------------------------------------
    // 3. Output block
    // -------------------------------------------------------------

    always @(*) begin


    // The Moore FSM Output Logic depend on  current state

        if ((current_state == ZERO) || (current_state == WAIT1_1) || (current_state == WAIT1_2) || (current_state == WAIT1_3))
            db = 1'b0;
        else if ((current_state == ONE) || (current_state == WAIT0_1) || (current_state == WAIT0_2) || (current_state == WAIT0_3))
            db = 1'b1;
        else  db = 1'b0;  // just for closing the branch

    end




endmodule