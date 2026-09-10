module tb_adder();


 
reg in0_tb, in1_tb;
wire OR_out_GM, AND_out_GM;
wire OR_out_DUT1,OR_out_DUT2, AND_out_DUT1,AND_out_DUT2;

wire XOR_as_Buff_GM, XOR_as_Inv_GM;
wire XOR_as_Buff_DUT, XOR_as_Inv_DUT;



assign OR_out_GM = in0_tb | in1_tb;
assign AND_out_GM = in0_tb & in1_tb;

assign XOR_as_Buff_GM = in0_tb;
assign XOR_as_Inv_GM = !in0_tb;


AND_USING_NAND G1 ( .in1(in0_tb), .in2(in1_tb), .out(AND_out_DUT1));
OR_USING_NAND G2 (  .in1(in0_tb), .in2(in1_tb), .out(OR_out_DUT1));
AND_USING_NOR G3 (.in1(in0_tb), .in2(in1_tb), .out(AND_out_DUT2));
OR_USING_NOR G4 ( .in1(in0_tb), .in2(in1_tb), .out(OR_out_DUT2));

XOR_as_Buffer G5 ( .in(in0_tb), .out(XOR_as_Buff_DUT));
XOR_as_Inverter G6 (.in(in0_tb), .out(XOR_as_Inv_DUT));



initial begin
 $display ("------------- Start -------------");

repeat (2) begin
    //case 1
    in0_tb = 1'b0;
    in1_tb = 1'b0;
    #1

    if ((AND_out_GM != AND_out_DUT1) || (AND_out_GM != AND_out_DUT2)) begin
        $display ("------------- Error in the AND gate -------------");

    end else if ((OR_out_GM != OR_out_DUT1) || (OR_out_GM != OR_out_DUT2)) begin
        $display ("------------- Error in the OR gate -------------");

    end else  begin
        $display ("------------- Succ case 1 -------------");
    end
    // case2
    in0_tb = 1'b1;
    in1_tb = 1'b0;
    #1
    if ((AND_out_GM != AND_out_DUT1) || (AND_out_GM != AND_out_DUT2)) begin
        $display ("------------- Error in the AND gate -------------");

    end else if ((OR_out_GM != OR_out_DUT1) || (OR_out_GM != OR_out_DUT2)) begin
        $display ("------------- Error in the OR gate -------------");

    end else  begin
        $display ("------------- Succ case 2 -------------");
    end

    //case 3
    in0_tb = 1'b0;
    in1_tb = 1'b1;
    #1
    if ((AND_out_GM != AND_out_DUT1) || (AND_out_GM != AND_out_DUT2)) begin
        $display ("------------- Error in the AND gate -------------");

    end else if ((OR_out_GM != OR_out_DUT1) || (OR_out_GM != OR_out_DUT2)) begin
        $display ("------------- Error in the OR gate -------------");

    end else  begin
        $display ("------------- Succ case 3 -------------");
    end

    if (XOR_as_Buff_GM != XOR_as_Buff_DUT) begin
    $display ("------------- Error XOR Buffer gate -------------");
    end
    else if (XOR_as_Inv_GM != XOR_as_Inv_DUT) begin
    $display ("------------- Error XOR Inverter gate -------------");
    end 
    else begin
    $display ("------------- Succ case XOR 1 -------------");
    end




    // case 4
    in0_tb = 1'b1;
    in1_tb = 1'b1;
    #1
    if ((AND_out_GM != AND_out_DUT1) || (AND_out_GM != AND_out_DUT2)) begin
        $display ("------------- Error in the AND gate -------------");

    end else if ((OR_out_GM != OR_out_DUT1) || (OR_out_GM != OR_out_DUT2)) begin
        $display ("------------- Error in the OR gate -------------");

    end else  begin
        $display ("------------- Succ case 4 -------------");
    end


    if (XOR_as_Buff_GM != XOR_as_Buff_DUT) begin
    $display ("------------- Error XOR Buffer gate -------------");
    end
    else if (XOR_as_Inv_GM != XOR_as_Inv_DUT) begin
    $display ("------------- Error XOR Inverter gate -------------");
    end 
    else begin
    $display ("------------- Succ case XOR 2 -------------");
    end
end


#1
$display ("------------- End Sim Succ -------------");
$stop; 
end
   
endmodule



