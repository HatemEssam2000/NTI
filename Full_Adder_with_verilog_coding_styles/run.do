vlib work
vlog Full_Adder.v tb_Full_Adder.v
vsim -voptargs=+acc work.tb_Full_Adder
add wave *
run -all
#quit -sim