vlib work
vlog Gray_to_Binary_Decoder.v tb_Gray_to_Binary_Decoder.v
vsim -voptargs=+acc work.tb_Gray_to_Binary_Decoder
add wave *
run -all
#quit -sim