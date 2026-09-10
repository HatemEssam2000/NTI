vlib work
vlog Shift_Register.v tb_shift_reg.v 
vsim -voptargs=+acc work.tb_shift_reg
add wave *
run -all
#quit -sim