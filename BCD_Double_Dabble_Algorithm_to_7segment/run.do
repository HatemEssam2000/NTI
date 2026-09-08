vlib work
vlog BCD_Double_Dabble_Algorithm.v Seven_Segment.v Top_Module.v
vsim -voptargs=+acc work.BCD_to_seven_segment
add wave *
run -all
#quit -sim
