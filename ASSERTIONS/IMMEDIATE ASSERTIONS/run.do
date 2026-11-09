vlog top.sv +acc
vsim -assertdebug top
add wave -r *
#do wave.do
#add wave /top/TB/a1 /top/TB/a2 /top/TB/a3 /top/TB/a4 /top/TB/a5 /top/TB/a6 /top/TB/a7
run -all
