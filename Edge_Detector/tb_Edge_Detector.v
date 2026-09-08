module tb_Edge_Detector();
/*
Directed Sequance testbench for the different edge detectors 
*/
        reg In_tb;
        reg rst, clk;
        wire Mealy_Edge_out,Mealy_Fall_out,Mealy_Rising_out;
        wire Moore_Edge_out,Moore_Fall_out,Moore_Rising_out;

        //wire y_expected;


Mealy_Edge_Detector Mealy_Edge_Detector_DUT (.In(In_tb), .Mealy_Edge_out(Mealy_Edge_out) , .clk(clk),.rst(rst));
Mealy_Falling_Edge Mealy_Falling_Edge_DUTS (.In(In_tb), .Mealy_Fall_out(Mealy_Fall_out) , .clk(clk),.rst(rst));
Mealy_Rising_Edge Mealy_Rising_Edge_DUT (.In(In_tb), .Mealy_Rising_out(Mealy_Rising_out) , .clk(clk),.rst(rst));


Moore_Edge_Detector Moore_Edge_Detector_DUT (.In(In_tb), .Moore_Edge_out(Moore_Edge_out) , .clk(clk),.rst(rst));
Moore_Falling_Edge Moore_Falling_Edge_DUT(.In(In_tb), .Moore_Fall_out(Moore_Fall_out) , .clk(clk),.rst(rst));
Moore_Rising_Edge Moore_Rising_Edge (.In(In_tb), .Moore_Rising_out(Moore_Rising_out) , .clk(clk),.rst(rst));
        /////////////////////////////////////////////////////////
            //clk generation
            initial begin
                clk =0;
                forever begin 
                    #1 clk = ~clk;
                end 
            end 
            //reset generation 
            initial begin
                rst =1;
                @(negedge clk);
                @(negedge clk);
                rst = 0;
            end 


        initial begin
        $display ("-----------Start Simulation--------------"); 
        //
        In_tb = 0;
                @(negedge clk);
                $display ("DISPLAY: %b, ", In_tb);

        //
        In_tb = 1;
                @(negedge clk);
                $display ("DISPLAY: %b, ", In_tb);
        //
        In_tb = 1;

                @(negedge clk);
                $display ("DISPLAY: %b, ", In_tb);
        //
        In_tb = 1;

                @(negedge clk);
                $display ("DISPLAY: %b, ", In_tb);

        //
        In_tb = 0;

                @(negedge clk);
                $display ("DISPLAY: %b, ", In_tb);
        In_tb = 1;

                @(negedge clk);
                $display ("DISPLAY: %b, ", In_tb);
        In_tb = 0;

                @(negedge clk);
                $display ("DISPLAY: %b, ", In_tb);
        In_tb = 1;

                @(negedge clk);
                @(negedge clk);
                $display ("DISPLAY: %b, ", In_tb);
        In_tb = 0;

                @(negedge clk);
                @(negedge clk);
                $display ("DISPLAY: %b, ", In_tb);



        @(negedge clk);
        $display ("End of simulation"); 
        $stop;
        end

        initial begin
                $monitor ("MONITOR: %b,", In_tb);
        end 

            
endmodule