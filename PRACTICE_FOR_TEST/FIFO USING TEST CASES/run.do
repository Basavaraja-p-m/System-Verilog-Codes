vlog top.sv +acc
vsim -assertdebug top
add wave -r *
run -all
