vlog top.sv +acc
vsim -assertdebug top
add wave -r *
add wave /top/DUT/aa /top/DUT/bb /top/DUT/cc /top/DUT/dd /top/DUT/ee /top/DUT/ff /top/DUT/gg /top/DUT/hh /top/DUT/ii /top/DUT/jj /top/DUT/kk
run -all
