vlog top.sv +acc
vsim -assertdebug top
add wave -r *
#do wave.do
add wave /top/TB/apnot1 /top/TB/apand1 /top/TB/apor1 /top/TB/apnand1 /top/TB/apnor1 /top/TB/apxor1 /top/TB/apxnor1
run -all
