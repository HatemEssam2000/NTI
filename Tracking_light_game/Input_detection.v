//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: FSM Edge Detector
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 

module Input_detection(
    In, detect_out , clk, rst_n
);
    
input wire [9:0]In;
input wire clk, rst_n;
output wire [9:0]detect_out ;

localparam INPUT_DETECTION = 10;


genvar i;
generate

for (i=0; i<INPUT_DETECTION; i = i + 1) begin : Edge_Detect

Mealy_Rising_Edge Input_detection (
    .In( In[i] ), 
    .Mealy_Rising_out( detect_out[i] ) ,
    .clk( clk ),
    .rst( ~rst_n )
); 
    
end

endgenerate




endmodule