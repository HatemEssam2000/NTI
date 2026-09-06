//////////////////////////////////////////////////////////////////////////////// 
// Author: Hatem Essam 
// Course: NTI HireReady Digital IC 
// 
// Description: Simple testbench for depouncing circuit for observing waveform
// Referance : 
//
//////////////////////////////////////////////////////////////////////////////// 

module tb_Debouncing_Circuit ();

reg rst_n, clk;
reg sw_signal;
wire db;


Debouncing_Circuit Debouncing_Circuit_UUT (
    .sw_signal(sw_signal), 
    .db(db) , 
    .clk(clk),
    .rst_n(rst_n)
);


//initial begin

/* 
    initial begin
    // 1. Specify the output waveform file name
    $dumpfile("waveform.vcd");
    
    // 2. Dump all signals from the testbench downward recursively
    $dumpvars(0, tb_top); 
    
    // Alternatively, to dump ONLY the DUT and its immediate contents:
    // $dumpvars(1, dut); 
    
    // Alternatively, to dump only specific signals:
    // $dumpvars(0, clk, reset);
    end */



    //$dumpfile ("Debouncing_Circuit.vcd");
    //$dumpvars (level, list_of_modules_or_variables);
    //level is 
    //$dumpvars (0, tb_Debouncing_Circuit);

//end 



    initial begin
        clk =0;
        forever begin 
            #5 clk = ~clk;
        end 
    end 




initial begin


    sw_signal = 0;
    rst_n = 0;
    @(negedge clk);  
    rst_n = 1;
    #1;


    repeat (20) begin
    sw_signal = 1;
    #1;
    sw_signal = 0;
    #1;
    end


    sw_signal = 1;
    repeat (40) @(negedge clk);  

    repeat (20) begin
    sw_signal = 0;
    #1;
    sw_signal = 1;
    #1;
    end



    sw_signal = 0;
    repeat (40) @(negedge clk);  

$display ("End of simulation"); 
$stop;
end




endmodule





