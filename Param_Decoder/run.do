vlib work
vlog Param_Decoder.v tb_Param_Decoder.v
vsim -voptargs=+acc work.tb_Decoder
add wave *
run -all
#quit -sim