vlib work
vlog Standard_gates.v tb_Standard_Gate.v
vsim -voptargs=+acc work.tb_Standard_Gate
add wave *
run -all
#quit -sim