vlib work
vlog Mealy_Edge_Detector.v Mealy_Falling_Edge.v Mealy_Rising_Edge.v Moore_Edge_Detector.v Moore_Rising_Edge.v Moore_Falling_Edge.v tb_Edge_Detector.v
vsim -voptargs=+acc work.tb_Edge_Detector
add wave *
run -all
#quit -sim
