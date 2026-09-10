/*
Project Name :Testbench Full Adder with the coding styles 
Editor : Hatem Essam 
Date: 19/8/2026

/////////// Full Adder Truth Table
Inputs                      
A       0   0   0   0   1   1   1   1     
B       0   0   1   1   0   0   1   1
Cin     0   1   0   1   0   1   0   1
Outputs
Sum     0   1   1   0   1   0   0   1
Cout    0   0   0   1   0   1   1   1

*/


module tb_Full_Adder();

reg A, B, Cin;
wire Cout_Behavioral, Sum_Behavioral;
wire Cout_Data_flow, Sum_Data_flow;
wire Cout_Structrul, Sum_Structrul;
wire Cout_Gate_Level, Sum_Gate_Level;




Full_Adder_Behavioral tb_Behavioral (A, B, Cin, Sum_Behavioral, Cout_Behavioral);
Full_Adder_Data_Flow tb_Data_flow   (A, B, Cin, Sum_Data_flow, Cout_Data_flow);
Top_Module_Full_Adder_Structrul tb_Structrul (A, B, Cin, Sum_Structrul, Cout_Structrul);
Full_Adder_Gate_Level tb_Gate_Level (A, B, Cin, Sum_Gate_Level, Cout_Gate_Level);


initial begin
$display ("------------- Start -------------");

repeat (20) begin
A = $random;
B = $random;
Cin =$random;
    #1

if ( (Sum_Behavioral ^ Sum_Data_flow ^ Sum_Structrul ^ Sum_Gate_Level)) begin

    $display ("---------- ERROR -------------");
    $display ("A= %b + B= %b + Cin= %b-> Sum_Behavioral %b Sum_Data_flow %b Sum_Structrul %b Sum_Gate_Level %b ",
                A, B, Cin, Sum_Behavioral, Sum_Data_flow, Sum_Structrul, Sum_Gate_Level);
    $stop;
end
else if ((Cout_Behavioral ^ Cout_Data_flow ^ Cout_Structrul ^ Cout_Gate_Level)) begin
    $display ("---------- ERROR -------------");
    $display ("A= %b + B= %b + Cin= %b-> Cout_Behavioral %b Cout_Data_flow %b Cout_Structrul %b Sum_Gate_Level %b ",
                A, B, Cin, Cout_Behavioral, Cout_Data_flow, Cout_Structrul, Cout_Gate_Level);
    $stop; 
end
else begin
    $display ("A= %b + B= %b + Cin= %b-> Sum_Behavioral %b Sum_Data_flow %b Sum_Structrul %b Sum_Gate_Level %b ",
            A, B, Cin, Sum_Behavioral, Sum_Data_flow, Sum_Structrul, Sum_Gate_Level);

    $display ("A= %b + B= %b + Cin= %b-> Cout_Behavioral %b Cout_Data_flow %b Cout_Structrul %b Sum_Gate_Level %b ",
                A, B, Cin, Cout_Behavioral, Cout_Data_flow, Cout_Structrul, Cout_Gate_Level);

end


    end 
    
#1
$display ("------------- End Sim Succ -------------");
$stop; 
end


endmodule