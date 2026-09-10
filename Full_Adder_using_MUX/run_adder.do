vlib work
vlog Half_Adder.v Full_Adder.v tb_Adder.v Standard_MUX.v
vsim -voptargs=+acc work.tb_adder
add wave *
run -all
#quit -sim