/*
Project Name : Full Adder with the coding styles 
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



/////////// Half Adder Truth Table
Inputs                      
A       0   0   1   1  
B       0   1   0   1   
Outputs
Sum     0   1   1   0   
Cout    0   0   0   1   



*/



//////////////////////////////////////////////////////////////////////////
///////////////// Behavioral 
//////////////////////////////////////////////////////////////////////////
module Full_Adder_Behavioral (
    input A,B, Cin,
    output reg Sum, Cout
);



always @(*) begin


    {Cout,Sum} = A + B + Cin;
 /*    
    Sum = A + B + Cin;

    if ( (A&&B) || (B&&Cin) || (A&&Cin)) begin
        Cout = 1'b1;
    end 
    else begin
        Cout = 1'b0;
    end
 */
end
   
endmodule


//////////////////////////////////////////////////////////////////////////
///////////////// Data Flow
//////////////////////////////////////////////////////////////////////////

module Full_Adder_Data_Flow (
    input A,B, Cin,
    output Sum, Cout
);

/*
wire and_out, 
*/

assign Sum = A + B + Cin;
assign Cout = ((A&B) | (B&Cin) | (A&Cin));
 
/*

*/


   
endmodule



//////////////////////////////////////////////////////////////////////////
///////////////// Structrul  
//////////////////////////////////////////////////////////////////////////
module Half_Adder_Structrul ( A, B, Sum, Cout );

    input A,B;
    output reg Sum, Cout;


always @(*) begin
   
    Sum = A ^ B;
    Cout = A & B;
end
   
endmodule



module Top_Module_Full_Adder_Structrul (
                    A, B, Cin, Sum, Cout 
                    );

    input A,B, Cin;
    output Sum, Cout;

    wire Sum_HA_1, Sum_HA_2;
    wire Cout_HA_1, Cout_HA_2;

Half_Adder_Structrul Full_Adder_Structrul_1 (A, B, Sum_HA_1, Cout_HA_1);
Half_Adder_Structrul Full_Adder_Structrul_2 (Cin, Sum_HA_1, Sum_HA_2, Cout_HA_2);


assign Cout = (Cout_HA_1 | Cout_HA_2);
assign Sum  = (Sum_HA_2);




endmodule
//////////////////////////////////////////////////////////////////////////
///////////////// Gate Level  
//////////////////////////////////////////////////////////////////////////


module Full_Adder_Gate_Level (
    input A,B, Cin,
    output wire Sum, Cout
);

wire w1, w2,w3;

//sum
xor g1 (w1, A, B);
xor g2 (Sum, w1, Cin);
//Cout
and g3 (w2, A, B); 
and g4 (w3, w1, Cin); 
or  g5 (Cout, w2, w3);


/* always @(*) begin
   
    Sum = A ^ B ^ Cin;
    Cout = (A&B) | (B&Cin) | (A&Cin);

end */
   
endmodule
