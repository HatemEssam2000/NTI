//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Game senarios
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 

module Updated_Shift_Register(
    clk ,rst_n, shift_out, user_in, win_loss ,counter
);
input wire clk ,rst_n;
input wire [9:0] user_in;
output reg [1:0] win_loss; //
output reg [9:0] shift_out;
output reg [7:0] counter;

localparam ZERO = 2'b00;
localparam BOSS = 2'b01;
localparam LOSS = 2'b10;
localparam RESERVED_0 = 2'b11;


wire [9:0] check;

 Input_detection input_check(
    .In(user_in), 
    .detect_out(check) , 
    .clk(clk), 
    .rst_n(rst_n)
);

always @(posedge clk or negedge rst_n) begin

  if (~ rst_n) begin
    shift_out <= 10'b00_0000_0001;
    win_loss <= ZERO;
    counter <= 0;

  end else begin
        if ( shift_out == 10'b10_0000_0000 ) begin
            shift_out <= 10'b00_0000_0001;
        end else begin
                shift_out <= shift_out << 1;
        
                if (check == shift_out) begin
                    win_loss <= BOSS;
                    counter <= counter +1;
                end else if (check != shift_out && check) begin
                    win_loss <= LOSS;
                    counter <= 0;
                end else begin
                    win_loss <= ZERO;
                    
                end

        end
  end

end

/* always @(*) begin

        if (check == shift_out) begin
            win_loss = BOSS;
        end else if (check != shift_out) begin
            win_loss = LOSS;
        end else begin
            win_loss = ZERO;
        end

end */

    
endmodule