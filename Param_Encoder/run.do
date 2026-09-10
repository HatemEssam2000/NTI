vlib work
vlog Param_Encoder.v tb_Param_Encoder.v
vsim -voptargs=+acc work.tb_Encoder
add wave *
run -all
#quit -sim