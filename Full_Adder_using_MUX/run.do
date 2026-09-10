vlib work
vlog Standard_MUX.v tb_Standard_MUX.v
vsim -voptargs=+acc work.tb_Standard_MUX
add wave *
run -all
#quit -sim