vlib work
vlog Counter.v Debouncing_Circuit.v tb_Debouncing_Circuit.v
vsim -voptargs=+acc work.tb_Debouncing_Circuit
add wave *
power add -r /tb/dut/*
run -all
power report -all -bsf D:\NTI\Digital_Design\5_Debouncing_Circuit\t.saif
#quit -sim
